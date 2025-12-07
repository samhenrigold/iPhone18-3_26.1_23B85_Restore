uint64_t p_xcoder_ObjOpen(uint64_t a1)
{
  v5 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v5);
  if ((inited & 0x80000000) == 0)
  {
    v3 = heap_Alloc(*(v5 + 8), 4);
    *(a1 + 280) = v3;
    if (v3)
    {
      *v3 = 0;
    }

    else
    {
      log_OutPublic(*(v5 + 32), "XCODER", 15000, 0);
      return 2282758154;
    }
  }

  return inited;
}

uint64_t p_xcoder_ObjClose(uint64_t a1)
{
  v4 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v4);
  if ((inited & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), *(a1 + 280));
    *(a1 + 280) = 0;
  }

  return inited;
}

uint64_t p_xcoder_OpenXCoder(uint64_t a1)
{
  v5 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v5);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (*(a1 + 16) || *(a1 + 144))
  {
    **(a1 + 280) = 0;
    if (LH_stricmp((a1 + 16), "UTF-16"))
    {
      v3 = 2282758145;
      log_OutPublic(*(v5 + 32), "XCODER", 15004, "%s%s%s%s", "charsetIn", (a1 + 16), "charsetOut", (a1 + 144));
    }

    else
    {
      v3 = 0;
      **(a1 + 280) = 2;
    }
  }

  else
  {
    log_OutPublic(*(v5 + 32), "XCODER", 15002, 0);
    v3 = 2282758151;
  }

  *(a1 + 272) = v3;
  return v3;
}

uint64_t p_xcoder_Convert(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, uint64_t a5, unsigned int a6, unsigned int *a7, _DWORD *a8)
{
  v20 = 0;
  *a4 = 0;
  *a7 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v20);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v17 = 2282758158;
  if (**(a1 + 280) == 2)
  {
    if (a3)
    {
      v17 = 2282758405;
      goto LABEL_10;
    }

    v17 = utf8_Utf16ToUtf8(a2, a3 >> 1, a4, a5, a6, a7, a8);
    v18 = v17 & 0x1FFF;
    if ((v17 & 0x1FFF) != 0 && v18 != 7)
    {
      if (v18 == 9)
      {
        log_OutPublic(*(v20 + 32), "XCODER", 15015, 0);
        return v17;
      }

LABEL_10:
      log_OutPublic(*(v20 + 32), "XCODER", 15016, "%s%s%s%s%s%x", "input", "UTF-16");
    }
  }

  return v17;
}

uint64_t xcoder_mrksync_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2282758145;
  }

  result = 0;
  *a2 = &IXCoderMrkSync;
  return result;
}

uint64_t xcoder_mrksync_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Object = 2282758151;
  v15 = 0;
  v16 = 0;
  NullHandle = safeh_GetNullHandle();
  v11 = safeh_HandlesEqual(a3, a4, NullHandle, v10);
  if (a5)
  {
    if (!v11)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      if ((InitRsrcFunction(a3, a4, &v16) & 0x80000000) == 0)
      {
        v12 = heap_Calloc(*(v16 + 8), 1, 72);
        if (v12)
        {
          v13 = v12;
          *v12 = a3;
          v12[1] = a4;
          Object = objc_GetObject(*(v16 + 48), "SYNTHSTREAM", &v15);
          if ((Object & 0x80000000) != 0)
          {
            log_OutPublic(*(v16 + 32), "XCODER", 15024, 0);
            heap_Free(*(v16 + 8), v13);
          }

          else
          {
            *(v13 + 16) = *(v15 + 8);
            *a5 = v13;
            *(a5 + 8) = 854;
          }
        }

        else
        {
          log_OutPublic(*(v16 + 32), "XCODER", 15000, 0);
          return 2282758154;
        }
      }
    }
  }

  return Object;
}

uint64_t xcoder_mrksync_ObjClose(void *a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  v2 = p_xcoder_mrksync_BeginFunction(a1, a2, &v6, &v5);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v3 = objc_ReleaseObject(*(v6 + 48), "SYNTHSTREAM");
  if ((v3 & 0x80000000) == 0)
  {
    heap_Free(*(v6 + 8), v5);
  }

  return v3;
}

uint64_t xcoder_mrksync_ProcessStart(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = 0;
  v6 = p_xcoder_mrksync_BeginFunction(a1, a2, &v13, &v12);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v7 = v12;
  if (((*(*(v12 + 16) + 64))(a3, a4, 129, "application/x-realspeak-xcoder-sync;version=5.0", 0, 0, v12 + 24) & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = (*(*(v7 + 16) + 64))(a3, a4, 129, "application/x-realspeak-markers-pp;version=4.0", 0, 0, v7 + 40);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = v8;
    v10 = 15026;
    goto LABEL_9;
  }

  v9 = (*(*(v7 + 16) + 64))(a3, a4, 129, "application/x-realspeak-markers-pp;version=4.0", 0, 1, v7 + 56);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 15027;
LABEL_9:
    log_OutPublic(*(v13 + 32), "XCODER", v10, "%s%s", "contentType", "application/x-realspeak-markers-pp;version=4.0");
  }

  return v9;
}

uint64_t xcoder_mrksync_Process(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v36 = 0;
  __n = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v6 = p_xcoder_mrksync_BeginFunction(a1, a2, &v35, &v36);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  *a5 = 1;
  v7 = v36;
  if (!v36[7])
  {
    return 0;
  }

  v8 = (*(v36[2] + 144))(v36[5], v36[6], &__n, &__n + 4);
  if ((v8 & 0x80000000) != 0)
  {
    log_OutPublic(*(v35 + 32), "XCODER", 15028, "%s%s%s%x", "stream", "marker input", "lhError", v8);
    return v8;
  }

  if (__n)
  {
    v9 = (*(v7[2] + 88))(v7[5], v7[6], &v33, &__n);
    if ((v9 & 0x80000000) != 0)
    {
      v8 = v9;
      v17 = *(v35 + 32);
    }

    else
    {
      v10 = (*(v7[2] + 136))(v7[3], v7[4], &v31 + 4);
      if ((v10 & 0x80000000) != 0)
      {
        v8 = v10;
        log_OutPublic(*(v35 + 32), "XCODER", 15029, "%s%s%s%x");
        return v8;
      }

      v11 = (*(v7[2] + 88))(v7[3], v7[4], &v30, &v31);
      if ((v11 & 0x80000000) == 0)
      {
        v8 = (*(v7[2] + 112))(v7[7], v7[8], &v32, __n);
        if ((v8 & 0x80000000) != 0)
        {
          log_OutPublic(*(v35 + 32), "XCODER", 15031, "%s%s%s%x", "stream", "marker output", "lhError", v8);
          (*(v7[2] + 96))(v7[5], v7[6], 0);
        }

        else
        {
          memcpy(v32, v33, __n);
          v12 = v31 >> 2;
          LODWORD(v31) = v31 >> 2;
          HIDWORD(v31) >>= 2;
          v13 = __n;
          if (__n >= 0x20)
          {
            v19 = 0;
            v20 = 0;
            v14 = 0;
            v21 = v33;
            do
            {
              v22 = *&v21[v19];
              v23 = v22 > 0x1D || ((1 << v22) & 0x215F0112) == 0;
              if (!v23 || v22 == 0x4000)
              {
                p_xcoder_GetRefPosition(v35, HIDWORD(v31), v30, v31, *&v21[v19 + 4], &v32[v19 + 4]);
                p_xcoder_GetRefPosition(v35, HIDWORD(v31), v30, v31, *&v33[v19 + 8] + *&v33[v19 + 4], &v32[v19 + 8]);
                LODWORD(v8) = 0;
                *&v32[v19 + 8] -= *&v32[v19 + 4];
                v21 = v33;
                if (*&v33[v19 + 4] > v14)
                {
                  v14 = *&v33[v19 + 4];
                }

                v13 = __n;
              }

              ++v20;
              v19 += 32;
            }

            while (v20 < v13 >> 5);
            v12 = v31;
          }

          else
          {
            v14 = 0;
          }

          if (v14 >= v12)
          {
            v14 = v12 - 1;
          }

          v24 = (*(v7[2] + 120))(v7[7], v7[8]);
          if (v24 < 0)
          {
            LODWORD(v8) = v24;
          }

          v25 = (*(v7[2] + 96))(v7[5], v7[6], __n);
          if (v25 < 0 && v8 > -1)
          {
            LODWORD(v8) = v25;
          }

          if (v14 <= HIDWORD(v31))
          {
            v27 = 0;
          }

          else
          {
            v27 = 4 * (v14 - HIDWORD(v31));
          }

          v28 = (*(v7[2] + 96))(v7[3], v7[4], v27);
          if (v28 >= 0 || v8 <= -1)
          {
            return v8;
          }

          else
          {
            return v28;
          }
        }

        return v8;
      }

      v8 = v11;
      v17 = *(v35 + 32);
    }

    log_OutPublic(v17, "XCODER", 15030, "%s%s%s%x");
    return v8;
  }

  if (HIDWORD(__n))
  {
    v15 = v7[7];
    if (v15)
    {
      v8 = (*(v7[2] + 72))(v15, v7[8]);
      v7[7] = safeh_GetNullHandle();
      v7[8] = v16;
    }
  }

  else
  {
    *a5 = 1;
  }

  return v8;
}

uint64_t xcoder_mrksync_ProcessEnd(void *a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  v2 = p_xcoder_mrksync_BeginFunction(a1, a2, &v12, &v11);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v11;
    v4 = v11[3];
    if (v4)
    {
      (*(v11[2] + 72))(v4, v11[4]);
      v3[3] = safeh_GetNullHandle();
      v3[4] = v5;
    }

    v6 = v3[5];
    if (v6)
    {
      (*(v3[2] + 72))(v6, v3[6]);
      v3[5] = safeh_GetNullHandle();
      v3[6] = v7;
    }

    v8 = v3[7];
    if (v8)
    {
      (*(v3[2] + 72))(v8, v3[8]);
      v3[7] = safeh_GetNullHandle();
      v3[8] = v9;
    }
  }

  return v2;
}

uint64_t p_xcoder_mrksync_BeginFunction(void *a1, int a2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  LODWORD(result) = safeh_HandleCheck(a1, a2, 854, 72);
  if ((result & 0x80000000) != 0)
  {
    if ((result & 0x1FFF) == 8)
    {
      return 2282758152;
    }

    else
    {
      return result;
    }
  }

  else
  {
    *a4 = a1;
    v8 = *a1;
    v9 = a1[1];

    return InitRsrcFunction(v8, v9, a3);
  }
}

uint64_t p_xcoder_GetRefPosition(uint64_t result, unsigned int a2, int *a3, int a4, unsigned int a5, int *a6)
{
  if (a5 >= a2)
  {
    if (a4 + a2 >= a5)
    {
      if (a4 + a2 == a5)
      {
        v6 = a3[a4 - 1] + 2;
      }

      else
      {
        v6 = a3[a5 - a2];
      }

      *a6 = v6;
    }

    else
    {
      *a6 = a3[a4 - 1] + 2;
      return log_OutText(*(result + 32), "XCODER", 3, 0, "Marker text position is beyond the end of the sync object, charPos=%u, maxSyncPos=%u, return position=%u");
    }
  }

  else
  {
    *a6 = *a3;
    return log_OutText(*(result + 32), "XCODER", 3, 0, "Marker text position is before the synch object, charPos=%u, syncPos=%u, return position=%u");
  }

  return result;
}

uint64_t xcoder_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2282758145;
  }

  result = 0;
  *a2 = &IXCoder;
  return result;
}

uint64_t xcoder_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v8 = 2282758151;
  v15 = 0;
  v16 = 0;
  NullHandle = safeh_GetNullHandle();
  v11 = safeh_HandlesEqual(a3, a4, NullHandle, v10);
  if (a5)
  {
    if (!v11)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      if ((InitRsrcFunction(a3, a4, &v16) & 0x80000000) == 0)
      {
        v12 = heap_Calloc(*(v16 + 8), 1, 344);
        if (v12)
        {
          v13 = v12;
          *v12 = a3;
          *(v12 + 8) = a4;
          *(v12 + 272) = -2012209145;
          strcpy((v12 + 144), "UTF-8");
          if ((objc_GetObject(*(v16 + 48), "SYNTHSTREAM", &v15) & 0x80000000) != 0)
          {
            log_OutPublic(*(v16 + 32), "XCODER", 15024, 0);
          }

          else
          {
            *(v13 + 288) = *(v15 + 8);
          }

          v8 = p_xcoder_ObjOpen(v13);
          if ((v8 & 0x80000000) != 0)
          {
            heap_Free(*(v16 + 8), v13);
            if (v15)
            {
              objc_ReleaseObject(*(v16 + 48), "SYNTHSTREAM");
            }
          }

          else
          {
            *a5 = v13;
            *(a5 + 8) = 852;
          }
        }

        else
        {
          log_OutPublic(*(v16 + 32), "XCODER", 15000, 0);
          return 2282758154;
        }
      }
    }
  }

  return v8;
}

uint64_t xcoder_ObjClose(void *a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  v2 = p_xcoder_BeginFunction(a1, a2, &v7, &v6);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v3 = v6;
  v2 = p_xcoder_ObjClose(v6);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v4 = objc_ReleaseObject(*(v7 + 48), "SYNTHSTREAM");
  if ((v4 & 0x80000000) == 0)
  {
    heap_Free(*(v7 + 8), v3);
  }

  return v4;
}

uint64_t xcoder_ProcessStart(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  v18 = 0;
  __s1 = 0;
  v6 = p_xcoder_BeginFunction(a1, a2, &v21, &v20);
  if ((v6 & 0x80000000) == 0)
  {
    v22[0] = 0;
    if ((paramc_ParamGetStr(*(v21 + 40), "inputmimetype", &__s1) & 0x80000000) == 0 && (v7 = __s1) != 0 && *__s1)
    {
      if (!strcmp(__s1, "text/plain"))
      {
        if ((paramc_ParamGetStr(*(v21 + 40), "nativetypeofchar", &v18) & 0x80000000) != 0 || !v18 || !*v18)
        {
          v18 = "UTF-8";
        }

        __strcpy_chk();
      }

      else
      {
        if (strncmp(v7, "text/plain;", 0xBuLL))
        {
          return 0;
        }

        v8 = strstr(v7, ";charset=");
        if (!v8)
        {
          return 0;
        }

        v9 = v8[9];
        if (v8[9])
        {
          v10 = 0;
          while (v10 <= 0x7E && v9 != 59)
          {
            v22[v10] = v9;
            v11 = v10 + 1;
            v9 = v8[v10++ + 10];
            if (!v9)
            {
              goto LABEL_43;
            }
          }

          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

LABEL_43:
        v22[v11] = 0;
      }
    }

    else
    {
      if ((paramc_ParamGetStr(*(v21 + 40), "nativetypeofchar", &v18) & 0x80000000) != 0 || !v18 || !*v18)
      {
        v18 = "UTF-8";
      }

      __strcpy_chk();
      strcpy(v23, "text/plain;charset=");
      __strcat_chk();
      __s1 = v23;
    }

    if (LH_stricmp(v22, "UTF-8"))
    {
      v12 = v20;
      if (*(v20 + 272) || LH_stricmp(v22, (v20 + 16)))
      {
        __strcpy_chk();
        v13 = p_xcoder_OpenXCoder(v12);
        if ((v13 & 0x1FFF) == 1)
        {
          return 0;
        }

        v6 = v13;
        if ((v13 & 0x80000000) != 0)
        {
          return v6;
        }
      }

      else
      {
        IsUpdatable = kaldi::nnet1::Component::IsUpdatable(v12);
        if ((IsUpdatable & 0x80000000) != 0)
        {
          return IsUpdatable;
        }
      }

      v15 = (*(*(v12 + 36) + 64))(a3, a4, 129, __s1, 0, 0, v12 + 37);
      if ((v15 & 0x80000000) != 0)
      {
        v6 = v15;
        log_OutPublic(*(v21 + 32), "XCODER", 15026, "%s%s");
        return v6;
      }

      v16 = (*(*(v12 + 36) + 64))(a3, a4, 129, "text/plain;charset=utf-8", 0, 1, v12 + 39);
      if ((v16 & 0x80000000) != 0)
      {
        v6 = v16;
      }

      else
      {
        v6 = (*(*(v12 + 36) + 64))(a3, a4, 129, "application/x-realspeak-xcoder-sync;version=5.0", 0, 1, v12 + 41);
        if ((v6 & 0x80000000) == 0)
        {
          return v6;
        }
      }

      log_OutPublic(*(v21 + 32), "XCODER", 15027, "%s%s");
    }
  }

  return v6;
}

uint64_t xcoder_Process(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  __b = 0;
  v6 = p_xcoder_BeginFunction(a1, a2, &v37, &v36);
  if ((v6 & 0x80000000) == 0)
  {
    *a5 = 1;
    v7 = v36;
    if (v36[39])
    {
      v6 = (*(v36[36] + 144))(v36[37], v36[38], &v34, &v35 + 4);
      if ((v6 & 0x80000000) != 0)
      {
        log_OutPublic(*(v37 + 32), "XCODER", 15028, "%s%s%s%x", "stream", "input text", "lhError", v6);
      }

      else if (v34)
      {
        v8 = (*(v7[36] + 136))(v7[37], v7[38], &v35);
        if ((v8 & 0x80000000) != 0)
        {
          v6 = v8;
          log_OutPublic(*(v37 + 32), "XCODER", 15029, "%s%s%s%x");
        }

        else
        {
          v9 = (*(v7[36] + 88))(v7[37], v7[38], &v32, &v34);
          if ((v9 & 0x80000000) != 0)
          {
            v6 = v9;
            log_OutPublic(*(v37 + 32), "XCODER", 15030, "%s%s%s%x");
          }

          else
          {
            v10 = (*(v7[36] + 112))(v7[39], v7[40], &v31, 4 * v34);
            if ((v10 & 0x80000000) != 0)
            {
              v6 = v10;
              log_OutPublic(*(v37 + 32), "XCODER", 15031, "%s%s%s%x");
            }

            else
            {
              v11 = (*(v7[36] + 112))(v7[41], v7[42], &__b, 16 * v34);
              if ((v11 & 0x80000000) != 0)
              {
                v6 = v11;
                log_OutPublic(*(v37 + 32), "XCODER", 15031, "%s%s%s%x", "stream", "sync output", "lhError", v11);
                (*(v7[36] + 96))(v7[37], v7[38], 0);
              }

              else if (!v35 && p_xcoder_CheckBom(v7, v32, v34) && (v23 = p_xcoder_OpenXCoder(v7), (v23 & 0x80000000) != 0))
              {
                return v23;
              }

              else
              {
                v12 = 4 * v34;
                v33 = 4 * v34;
                memset(__b, 255, 16 * v34);
                v13 = p_xcoder_Convert(v7, v32, v34, &v34, v31, v12, &v33, __b);
                if (v13 < 0 && ((LODWORD(v6) = v13, (v13 & 0x1FFF) != 7) || HIDWORD(v35)))
                {
                  v14 = 0;
                  v33 = 0;
                  v34 = 0;
                }

                else
                {
                  LODWORD(v6) = 0;
                  v14 = v33;
                  if (v35 && v33)
                  {
                    v15 = 0;
                    v16 = __b;
                    do
                    {
                      v16[v15++] += v35;
                      v14 = v33;
                    }

                    while (v15 < v33);
                    LODWORD(v6) = 0;
                  }
                }

                v24 = (*(v7[36] + 120))(v7[41], v7[42], 4 * v14);
                if (v24 < 0 && v6 > -1)
                {
                  LODWORD(v6) = v24;
                }

                v26 = (*(v7[36] + 120))(v7[39], v7[40], v33);
                if (v26 < 0 && v6 > -1)
                {
                  LODWORD(v6) = v26;
                }

                v28 = (*(v7[36] + 96))(v7[37], v7[38], v34);
                if (v28 >= 0 || v6 <= -1)
                {
                  return v6;
                }

                else
                {
                  return v28;
                }
              }
            }
          }
        }
      }

      else if (HIDWORD(v35))
      {
        v17 = v7[39];
        if (v17)
        {
          LODWORD(v6) = (*(v7[36] + 72))(v17, v7[40]);
          v7[39] = safeh_GetNullHandle();
          v7[40] = v18;
          v19 = (*(v7[36] + 72))(v7[41], v7[42]);
          v7[41] = safeh_GetNullHandle();
          v7[42] = v20;
          if (v19 >= 0 || v6 <= -1)
          {
            return v6;
          }

          else
          {
            return v19;
          }
        }
      }

      else
      {
        *a5 = 0;
      }
    }
  }

  return v6;
}

uint64_t xcoder_ProcessEnd(void *a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  v2 = p_xcoder_BeginFunction(a1, a2, &v12, &v11);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v11;
    v4 = v11[37];
    if (v4)
    {
      (*(v11[36] + 72))(v4, v11[38]);
      v3[37] = safeh_GetNullHandle();
      v3[38] = v5;
    }

    v6 = v3[39];
    if (v6)
    {
      (*(v3[36] + 72))(v6, v3[40]);
      v3[39] = safeh_GetNullHandle();
      v3[40] = v7;
    }

    v8 = v3[41];
    if (v8)
    {
      (*(v3[36] + 72))(v8, v3[42]);
      v3[41] = safeh_GetNullHandle();
      v3[42] = v9;
    }
  }

  return v2;
}

uint64_t p_xcoder_BeginFunction(void *a1, int a2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  LODWORD(result) = safeh_HandleCheck(a1, a2, 852, 344);
  if ((result & 0x80000000) != 0)
  {
    if ((result & 0x1FFF) == 8)
    {
      return 2282758152;
    }

    else
    {
      return result;
    }
  }

  else
  {
    *a4 = a1;
    v8 = *a1;
    v9 = a1[1];

    return InitRsrcFunction(v8, v9, a3);
  }
}

uint64_t p_xcoder_CheckBom(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    return 0;
  }

  if (LH_stricmp((a1 + 16), "UTF-16") && LH_stricmp((a1 + 16), "UCS-2"))
  {
    return 0;
  }

  if (*a2 == 254 && a2[1] == 255)
  {
    strcpy((a1 + 16), "UTF-16BE");
    return 1;
  }

  else
  {
    result = 0;
    strcpy((a1 + 16), "UTF-16");
  }

  return result;
}

uint64_t synthstream_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2297438209;
  }

  result = 0;
  *a2 = &ISynthStream;
  return result;
}

uint64_t synthstream_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 2297438214;
  v16 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v16);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v16 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ObjOpen: Begin");
      v10 = heap_Calloc(*(v16 + 8), 1, 48);
      if (v10)
      {
        v11 = v10;
        *v10 = a3;
        *(v10 + 8) = a4;
        if ((paramc_ParamGetUInt(*(v16 + 40), "synthstreamminmemalloc", (v10 + 32)) & 0x80000000) != 0 || !*(v11 + 32))
        {
          *(v11 + 32) = 1024;
        }

        if ((paramc_ParamGetUInt(*(v16 + 40), "synthstreamminmemmove", (v11 + 36)) & 0x80000000) != 0 || !*(v11 + 36))
        {
          *(v11 + 36) = 128;
        }

        if ((paramc_ParamGetUInt(*(v16 + 40), "synthstreamminmemfree", (v11 + 40)) & 0x80000000) != 0 || !*(v11 + 40))
        {
          *(v11 + 40) = 4097;
        }

        paramc_ParamGetInt(*(v16 + 40), "loginputtext", (v11 + 44));
        v12 = *(v16 + 8);
        v14[0] = xmmword_1F42D6138;
        v14[1] = *&off_1F42D6148;
        v15 = off_1F42D6158;
        v5 = ssftmap_ObjOpen(v12, 0, v14, (v11 + 24));
        if ((v5 & 0x80000000) != 0)
        {
          heap_Free(*(v16 + 8), v11);
        }

        else
        {
          *a5 = v11;
          *(a5 + 8) = 18397;
        }
      }

      else
      {
        log_OutPublic(*(v16 + 32), "SYNTHSTREAM", 22000, 0);
        v5 = 2297438218;
      }

      log_OutText(*(v16 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ObjOpen: End (%x)", v5);
    }
  }

  return v5;
}

uint64_t synthstream_ObjClose(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v2 = synthstream_loc_BeginFunction(a1, a2, &v14, &v15);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  log_OutText(*(v14 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ObjClose : Begin");
  v3 = v15;
  v4 = ssftmap_IteratorOpen(*(v15 + 24), 0, 1, &v13);
  if ((v4 & 0x80000000) == 0)
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
    while ((ssftmap_IteratorNext(v13, &v12, &v11) & 0x80000000) == 0)
    {
      v5 = v11;
      if (!*(v11 + 108))
      {
        log_OutPublic(*(v14 + 32), "SYNTHSTREAM", 22001, "%s%u%s%s%s%u", "writer", *(v11 + 44), "contentType", *v12, "version", *(v12 + 4));
        v5 = v11;
      }

      v6 = *(v5 + 16);
      if (v6)
      {
        log_OutPublic(*(v14 + 32), "SYNTHSTREAM", 22001, "%s%u%s%s%s%u", "module", *(v6 + 4), "contentType", *v12, "version", *(v12 + 4));
        heap_Free(*(v14 + 8), *(v11 + 16));
        v5 = v11;
        *(v11 + 16) = 0;
      }

      if (vector_GetElemAt(*(v5 + 24), 0, &v10) == 1)
      {
        v7 = 1;
        do
        {
          log_OutPublic(*(v14 + 32), "SYNTHSTREAM", 22001, "%s%u%s%s%s%u", "module", *(*v10 + 4), "contentType", *v12, "version", *(v12 + 4));
          heap_Free(*(v14 + 8), *v10);
          ElemAt = vector_GetElemAt(*(v11 + 24), v7++, &v10);
        }

        while (ElemAt == 1);
      }

      if (*(v11 + 42) >= 2u)
      {
        *(v11 + 42) = 1;
      }
    }

    ssftmap_IteratorClose(v13);
  }

  if ((v4 & 0x80000000) == 0 || (v4 & 0x1FFF) == 0x14)
  {
    v4 = ssftmap_ObjClose(*(v3 + 24));
    if ((v4 & 0x80000000) == 0)
    {
      heap_Free(*(v14 + 8), v3);
    }
  }

  log_OutText(*(v14 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ObjClose : End (%x)", v4);
  return v4;
}

uint64_t synthstream_SetPipelinePos(uint64_t a1, uint64_t a2, int a3)
{
  v7 = 0;
  v8 = 0;
  v4 = synthstream_loc_BeginFunction(a1, a2, &v7, &v8);
  if ((v4 & 0x80000000) == 0)
  {
    log_OutText(*(v7 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM SetPipelinePos : Begin (%u)", a3);
    v5 = v7;
    *(v8 + 16) = a3;
    log_OutText(*(v5 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM SetPipelinePos : End (%x)", v4);
  }

  return v4;
}

uint64_t synthstream_StreamOpen(uint64_t a1, uint64_t a2, int a3, const char *a4, __int128 *a5, int a6, const void **a7)
{
  v63 = *MEMORY[0x1E69E9840];
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v12 = synthstream_loc_BeginFunction(a1, a2, &v58, &v60);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = "";
  }

  v14 = v60;
  log_OutText(*(v58 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM StreamOpen : Begin (%u, %s, %p, %d, %u)", a3, v13, a5, a6, *(v60 + 16));
  if (!a4 || !a7 || !*a4 || strlen(a4) >= 0x80)
  {
    log_OutPublic(*(v58 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p", "function", "StreamOpen", "module", a3, "contentType", v13, "phStream", a7);
    return 2297438215;
  }

  *a7 = 0;
  *(a7 + 2) = 0;
  p_s1 = 0;
  v57 = 0;
  v55 = 0;
  if (*a4)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      v62[v16 - 16] = __tolower(a4[v16]);
      v16 = v17;
    }

    while (strlen(a4) > v17++);
  }

  else
  {
    v16 = 0;
  }

  v62[v16 - 16] = 0;
  p_s1 = &__s1;
  LOWORD(v57) = 0;
  v15 = ssftmap_IteratorOpen(*(v14 + 24), &p_s1, 1, &v55);
  if ((v15 & 0x80000000) != 0)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    *&v52 = 0;
    v54 = 0;
    if ((ssftmap_IteratorNext(v55, &v52, &v54) & 0x80000000) == 0 && (v19 = v52, !strcmp(&__s1, *v52)))
    {
      v25 = 0;
      v21 = 0;
      do
      {
        v20 = v25;
        v26 = a6 == 0;
        v27 = *(v54 + 40);
        v28 = *(v14 + 16);
        if (v27 != v28)
        {
          v26 = 0;
        }

        if (v27 >= v28 && !v26)
        {
          break;
        }

        v25 = v19;
        v21 = v54;
        if ((ssftmap_IteratorNext(v55, &v52, &v54) & 0x80000000) != 0)
        {
          v20 = v19;
          break;
        }

        v19 = v52;
        v20 = v25;
      }

      while (!strcmp(&__s1, *v52));
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    ssftmap_IteratorClose(v55);
  }

  if ((v15 & 0x1FFF) == 0x14)
  {
    v22 = 0;
  }

  else
  {
    v22 = v15;
  }

  if ((v22 & 0x80000000) == 0)
  {
    if ((a6 - 1) < 2)
    {
      if (v21)
      {
        v23 = *(v21 + 40);
        if (v23 == *(v14 + 16))
        {
          log_OutText(*(v58 + 32), "SYNTHSTREAM", 3, 0, "SYNTHSTREAM ObjOpen for write failed for %s %u, already present", &__s1, v23);
          v15 = 2297438210;
          goto LABEL_112;
        }
      }

      if (v20)
      {
        v24 = *(v20 + 8) + 1;
      }

      else
      {
        v24 = 0;
      }

      LOWORD(v57) = v24;
      v30 = heap_Calloc(*(v58 + 8), 1, 120);
      v31 = v58;
      if (!v30)
      {
        v15 = 2297438218;
LABEL_111:
        log_OutPublic(*(v31 + 32), "SYNTHSTREAM", 22000, 0);
        goto LABEL_112;
      }

      v21 = v30;
      v32 = *(v58 + 8);
      v52 = xmmword_1C37F9FC0;
      v53 = 0;
      if (vector_ObjOpen(v32, &v52, 1, (v21 + 24)) == 1)
      {
        v33 = strlen(&__s1);
        v34 = heap_Alloc(*(v58 + 8), (v33 + 1));
        *(v21 + 32) = v34;
        if (v34)
        {
          if (!a5)
          {
            if (!strcmp(&__s1, "application/x-realspeak-markers-pp;version=4.0"))
            {
              a5 = &IElemMarkerT;
            }

            else if (!strcmp(&__s1, "application/x-realspeak-int-markers-pp;version=4.0"))
            {
              a5 = &IElemIntMarkerT;
            }

            else if (!strcmp(&__s1, "application/x-tnplus-words;version=1.0"))
            {
              a5 = &IElemGeeneWordT;
            }

            else
            {
              a5 = 0;
            }
          }

          *v21 = v14;
          *(v21 + 8) = v58;
          strcpy(v34, &__s1);
          *(v21 + 40) = *(v14 + 16);
          *(v21 + 42) = 1;
          *(v21 + 44) = a3;
          if (a5 && *a5)
          {
            v35 = *a5;
            *(v21 + 64) = *(a5 + 2);
            *(v21 + 48) = v35;
          }

          *(v21 + 72) = a6 == 2;
          v36 = p_s1;
          v37 = !strncmp(p_s1, "text/", 5uLL) && strstr(v36, "charset=wchar_t") == 0;
          *(v21 + 73) = v37;
          if (*(v14 + 44))
          {
            v38 = __s1 == 0x616C702F74786574 && *(&__s1 + 1) == 0x73726168633B6E69;
            v39 = v38 && *v62 == 0x312D6674753D7465;
            v40 = v39 && *&v62[8] == 54;
            if (v40 || !(__s1 ^ 0x616C702F74786574 | *(&__s1 + 1) ^ 0x73726168633B6E69 | *v62 ^ 0x382D6674753D7465 | v62[8]) || (__s1 == 0x746163696C707061 ? (v41 = *(&__s1 + 1) == 0x746E79732F6E6F69) : (v41 = 0), v41 ? (v42 = *v62 == 0x73732B7369736568) : (v42 = 0), v42 ? (v43 = *&v62[3] == 0x6C6D73732B7369) : (v43 = 0), v43 || (__s1 == 0x6D74682F74786574 ? (v44 = WORD4(__s1) == 108) : (v44 = 0), v44 || (__s1 == 0x616D652F74786574 ? (v45 = *(&__s1 + 3) == 0x6C69616D652F74) : (v45 = 0), v45 || !(__s1 ^ 0x6C6D782F74786574 | BYTE8(__s1))))))
            {
              *(v14 + 44) = 0;
              *(v21 + 72) = 1;
              *(v21 + 74) = 1;
            }
          }

          v15 = ssftmap_Insert(*(v14 + 24), &p_s1, v21);
          if ((v15 & 0x80000000) != 0)
          {
            log_OutPublic(*(v58 + 32), "SYNTHSTREAM", 22002, "%s%u%s%s%s%u", "module", a3, "contentType", p_s1, "version", v57);
          }

          synthstream_loc_ElemReleaseStreamImpl(v21);
          if ((v15 & 0x80000000) != 0)
          {
            goto LABEL_112;
          }

LABEL_103:
          v46 = heap_Calloc(*(v58 + 8), 1, 24);
          v59 = v46;
          if (v46)
          {
            v47 = v46;
            if (a6 || (v48 = vector_Add(*(v21 + 24), &v59), v47 = v59, v48))
            {
              *v47 = a6;
              v47[2] = a3;
              *(v47 + 1) = v21;
              *(v47 + 4) = *(v21 + 80);
              ++*(v21 + 42);
              if ((a6 - 1) <= 1)
              {
                *(v21 + 16) = v47;
              }

              *a7 = v47;
              *(a7 + 2) = 18398;
              goto LABEL_112;
            }

            v15 = 2297438218;
            heap_Free(*(v58 + 8), v59);
            v59 = 0;
          }

          else
          {
            v15 = 2297438218;
          }

          v31 = v58;
          goto LABEL_111;
        }

        v15 = 2297438218;
        log_OutPublic(*(v58 + 32), "SYNTHSTREAM", 22000, 0);
        vector_ObjClose(*(v21 + 24));
      }

      else
      {
        v15 = 2297438218;
        log_OutPublic(*(v58 + 32), "SYNTHSTREAM", 22000, 0);
      }

      heap_Free(*(v58 + 8), v21);
      goto LABEL_112;
    }

    if (a6)
    {
      log_OutPublic(*(v58 + 32), "SYNTHSTREAM", 22007, "%s%d%s%u%s%s", "openMode", a6, "module", a3, "contentType", &__s1);
      v15 = 2297438215;
      goto LABEL_112;
    }

    if (!v21)
    {
      log_OutText(*(v58 + 32), "SYNTHSTREAM", 3, 0, "SYNTHSTREAM ObjOpen for read failed for %s %u, not found", &__s1, *(v14 + 16));
      v15 = 2297438228;
      goto LABEL_112;
    }

    v15 = v22;
    goto LABEL_103;
  }

LABEL_112:
  v49 = 0;
  v50 = 0;
  if (*a7 && v59)
  {
    v50 = v59[1];
    v49 = v50[22];
  }

  log_OutText(*(v58 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM StreamOpen : End (%x, %p, %p, %u)", v15, *a7, v50, v49);
  return v15;
}

uint64_t synthstream_StreamClose(_DWORD *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(*(a1 + 1) + 8);
    log_OutText(*(v4 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM StreamClose : Begin (%u, %p, %d)", *(a1 + 2), a1, *a1);
    if (*a1)
    {
      v5 = *(a1 + 1);
      *(v5 + 16) = 0;
      *(v5 + 108) = 1;
      synthstream_loc_StreamImplDump(v5, 0, 0);
    }

    else
    {
      v8 = 0;
      v6 = 0;
      if (vector_GetElemAt(*(*(a1 + 1) + 24), 0, &v8) == 1)
      {
        v6 = 0;
        do
        {
          if (*v8 == a1)
          {
            break;
          }

          ++v6;
        }

        while (vector_GetElemAt(*(*(a1 + 1) + 24), v6, &v8) == 1);
      }

      if (*v8 == a1)
      {
        vector_Remove(*(*(a1 + 1) + 24), v6);
      }

      else
      {
        log_OutPublic(*(v4 + 32), "SYNTHSTREAM", 22003, 0);
      }
    }

    synthstream_loc_ElemReleaseStreamImpl(*(a1 + 1));
    heap_Free(*(v4 + 8), a1);
    log_OutText(*(v4 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM StreamClose : End (%x)", v3);
  }

  return v3;
}

uint64_t synthstream_Read(_DWORD *a1, int a2, void *a3, uint64_t a4, unsigned int *a5)
{
  v9 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = *(*(a1 + 1) + 8);
    log_OutText(*(v10 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Read : Begin (%u, %p, %lu bytes)", *(a1 + 2), a1, a4);
    if (a3 && a4 && a5)
    {
      if (*a1)
      {
        v9 = 2297438215;
        log_OutPublic(*(v10 + 32), "SYNTHSTREAM", 22009, "%s%s%s%u%s%s", "function", "Read", "module", *(a1 + 2), "contentType", *(*(a1 + 1) + 32));
      }

      else
      {
        v11 = a1[4];
        v12 = *(a1 + 1);
        v13 = *(v12 + 88);
        v14 = v11 - v13;
        if (v11 >= v13)
        {
          v16 = *(v12 + 76);
          if (v16 - v11 >= a4)
          {
            v17 = a4;
          }

          else
          {
            v17 = v16 - v11;
          }

          *a5 = v17;
          if (v16 != v11)
          {
            memcpy(a3, (*(v12 + 96) + v14), v17);
            v18 = a1[4] + *a5;
            a1[4] = v18;
            v19 = *(a1 + 1);
            if (v18 > *(v19 + 80))
            {
              *(v19 + 80) = v18;
            }

            if (*(v19 + 56))
            {
              log_OutPublic(*(v10 + 32), "SYNTHSTREAM", 22014, "%s%s%s%u%s%s", "function", "Read", "module", *(a1 + 2), "contentType", *(v19 + 32));
            }

            else
            {
              synthstream_loc_StreamImplRecoverExcessBuffer(v19, 0);
            }
          }

          goto LABEL_12;
        }

        log_OutPublic(*(v10 + 32), "SYNTHSTREAM", 22011, "%s%s%s%u%s%s%s%u%s%u", "function", "Read", "module", *(a1 + 2), "contentType", *(v12 + 32), "readPosition", v11, "bufferPosition", v13);
        v9 = 2297438212;
      }
    }

    else
    {
      v9 = 2297438215;
      log_OutPublic(*(v10 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p%s%d%s%p", "function", "Read", "module", *(a1 + 2), "contentType", *(*(a1 + 1) + 32), "pBuf", a3, "cBuf", a4, "pcRead", a5);
      if (!a5)
      {
        return v9;
      }
    }

    *a5 = 0;
LABEL_12:
    log_OutText(*(v10 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Read : End (%x, %lu bytes)", v9, *a5);
  }

  return v9;
}

uint64_t synthstream_ReadDirectStart(_DWORD *a1, int a2, void *a3, unsigned int *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = 2297438215;
    v9 = *(*(a1 + 1) + 8);
    log_OutText(*(v9 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ReadDirectStart : Begin (%u, %p)", *(a1 + 2), a1);
    if (a3 && a4)
    {
      if (*a1)
      {
        log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22009, "%s%s%s%u%s%s", "function", "ReadDirectStart", "module", *(a1 + 2), "contentType", *(*(a1 + 1) + 32));
      }

      else
      {
        v11 = a1[4];
        v12 = *(a1 + 1);
        v13 = *(v12 + 88);
        v14 = v11 - v13;
        if (v11 >= v13)
        {
          v10 = *(v12 + 76) - v11;
          *a4 = v10;
          v15 = *(v12 + 96);
          *a3 = v15 + v14;
          if (v10)
          {
            v16 = v15 == 0;
          }

          else
          {
            v16 = 0;
          }

          if (!v16)
          {
            goto LABEL_9;
          }

          v8 = 2297438218;
        }

        else
        {
          log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22011, "%s%s%s%u%s%s%s%u%s%u", "function", "ReadDirectStart", "module", *(a1 + 2), "contentType", *(v12 + 32), "readPosition", v11, "bufferPosition", v13);
          v8 = 2297438212;
        }
      }
    }

    else
    {
      log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p%s%p", "function", "ReadDirectStart", "module", *(a1 + 2), "contentType", *(*(a1 + 1) + 32), "ppBuf", a3, "pcAvailable", a4);
      if (!a3)
      {
        if (!a4)
        {
          return v8;
        }

        goto LABEL_8;
      }
    }

    *a3 = 0;
    if (!a4)
    {
      return v8;
    }

LABEL_8:
    v10 = 0;
    *a4 = 0;
    v7 = v8;
LABEL_9:
    log_OutText(*(v9 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ReadDirectStart : End (%x, %lu bytes)", v7, v10);
  }

  return v7;
}

uint64_t synthstream_ReadDirectEnd(_DWORD *a1, int a2, unsigned int a3)
{
  v5 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(*(a1 + 1) + 8);
    log_OutText(*(v6 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ReadDirectEnd : Begin (%u, %p, %lu bytes)", *(a1 + 2), a1, a3);
    if (*a1)
    {
      v5 = 2297438215;
      log_OutPublic(*(v6 + 32), "SYNTHSTREAM", 22009, "%s%s%s%u%s%s", "function", "ReadDirectEnd", "module", *(a1 + 2), "contentType", *(*(a1 + 1) + 32));
    }

    else
    {
      v7 = *(a1 + 1);
      v8 = a1[4];
      v9 = *(v7 + 76) - v8;
      if (v9 >= a3)
      {
        v10 = v8 + a3;
      }

      else
      {
        v5 = 2297438215;
        log_OutPublic(*(v6 + 32), "SYNTHSTREAM", 22004, "%s%u%s%s%s%u%s%u", "module", *(a1 + 2), "contentType", *(v7 + 32), "bytesAvailable", v9, "bytesRead", a3);
        v10 = a1[4] + v9;
        v7 = *(a1 + 1);
      }

      a1[4] = v10;
      if (v10 > *(v7 + 80))
      {
        *(v7 + 80) = v10;
      }

      synthstream_loc_StreamImplRecoverExcessBuffer(v7, 0);
    }

    log_OutText(*(v6 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ReadDirectEnd : End (%x)", v5);
  }

  return v5;
}

uint64_t synthstream_Write(_DWORD *a1, int a2, char *a3, unsigned int a4)
{
  v23 = 1;
  v7 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = *(*(a1 + 1) + 8);
    log_OutText(*(v8 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Write : Begin (%u, %p, %lu bytes)", *(a1 + 2), a1, a4);
    if (!a3 || !a4)
    {
      v12 = 2297438215;
      log_OutText(*(v8 + 32), "SYNTHSTREAM", 4, 0, "%s%u%s%s%s%p%s%u", "function=Write|module=", *(a1 + 2), "|contentType=", *(*(a1 + 1) + 32), "|pBuf=", a3, "|cWrite=", a4);
      goto LABEL_22;
    }

    if ((*a1 - 1) >= 2)
    {
      v12 = 2297438215;
      log_OutPublic(*(v8 + 32), "SYNTHSTREAM", 22008, "%s%s%s%u%s%s", "function", "Write", "module", *(a1 + 2), "contentType", *(*(a1 + 1) + 32));
      goto LABEL_22;
    }

    v9 = *(a1 + 1);
    v10 = *(v9 + 76);
    v11 = *(v9 + 88);
    if (v10 < v11)
    {
      log_OutPublic(*(v8 + 32), "SYNTHSTREAM", 22012, "%s%s%s%u%s%s%s%u%s%u", "function", "Write", "module", *(a1 + 2), "contentType", *(v9 + 32), "writePosition", v10, "bufferPosition", v11);
      v12 = 2297438213;
LABEL_22:
      log_OutText(*(v8 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Write : End (%x)", v12);
      return v12;
    }

    v13 = synthstream_loc_StreamImplGrowBuf(v9, a4, &v23);
    if ((v13 & 0x80000000) != 0)
    {
      v12 = v13;
      goto LABEL_22;
    }

    v14 = *(a1 + 1);
    if (v23 == 1)
    {
      v15 = *(v14 + 76);
      v16 = *(v14 + 88);
      v17 = v15 - v16;
      if (v15 >= v16)
      {
        memcpy((*(v14 + 96) + v17), a3, a4);
        v14 = *(a1 + 1);
        if (*(v14 + 56))
        {
          v18 = 0;
          while (1)
          {
            v19 = (*(v14 + 56))(&a3[v18], *(*(v14 + 8) + 8), *(v14 + 96) + v18 + v17);
            v14 = *(a1 + 1);
            if (!v19)
            {
              break;
            }

            v18 += *(v14 + 48);
            if (v18 >= a4)
            {
              goto LABEL_21;
            }
          }

          if (*(v14 + 64))
          {
            v21 = v18 == 0;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            v22 = 0;
            do
            {
              (*(v14 + 64))(*(v14 + 96) + v22 + v17, *(*(v14 + 8) + 8));
              v14 = *(a1 + 1);
              v22 += *(v14 + 48);
            }

            while (v22 < v18);
          }

          v12 = 2297438218;
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v16 = *(v14 + 88);
    }

    *(v14 + 88) = v16 + a4;
LABEL_21:
    *(v14 + 76) += a4;
    synthstream_loc_StreamImplDump(v14, a3, a4);
    v12 = 0;
    goto LABEL_22;
  }

  return v7;
}

uint64_t synthstream_WriteDirectStart(_DWORD *a1, int a2, void *a3, unsigned int a4)
{
  v7 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = *(*(a1 + 1) + 8);
    log_OutText(*(v8 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteDirectStart : Begin (%u, %p, %lu bytes)", *(a1 + 2), a1, a4);
    if (a3 && a4)
    {
      if ((*a1 - 1) >= 2)
      {
        v12 = 2297438215;
        log_OutPublic(*(v8 + 32), "SYNTHSTREAM", 22008, "%s%s%s%u%s%s", "function", "WriteDirectStart", "module", *(a1 + 2), "contentType", *(*(a1 + 1) + 32));
      }

      else
      {
        v9 = *(a1 + 1);
        v10 = *(v9 + 76);
        v11 = *(v9 + 88);
        if (v10 >= v11)
        {
          v14 = synthstream_loc_StreamImplGrowBuf(v9, a4, 0);
          if ((v14 & 0x80000000) == 0)
          {
            v15 = (*(*(a1 + 1) + 96) + (*(*(a1 + 1) + 76) - *(*(a1 + 1) + 88)));
            *a3 = v15;
            bzero(v15, a4);
            v12 = 0;
            goto LABEL_12;
          }

          v12 = v14;
        }

        else
        {
          log_OutPublic(*(v8 + 32), "SYNTHSTREAM", 22012, "%s%s%s%u%s%s%s%u%s%u", "function", "WriteDirectStart", "module", *(a1 + 2), "contentType", *(v9 + 32), "writePosition", v10, "bufferPosition", v11);
          v12 = 2297438213;
        }
      }
    }

    else
    {
      v12 = 2297438215;
      log_OutPublic(*(v8 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p%s%u", "function", "WriteDirectStart", "module", *(a1 + 2), "contentType", *(*(a1 + 1) + 32), "ppBuf", a3, "cWrite", a4);
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    *a3 = 0;
LABEL_12:
    log_OutText(*(v8 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteDirectStart : End (%x)", v12);
    return v12;
  }

  return v7;
}

uint64_t synthstream_WriteDirectEnd(_DWORD *a1, int a2, unsigned int a3)
{
  v5 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(*(a1 + 1) + 8);
    log_OutText(*(v6 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteDirectEnd : Begin (%u, %p, %lu bytes)", *(a1 + 2), a1, a3);
    if ((*a1 - 1) >= 2)
    {
      v5 = 2297438215;
      log_OutPublic(*(v6 + 32), "SYNTHSTREAM", 22008, "%s%s%s%u%s%s", "function", "WriteDirectEnd");
      goto LABEL_6;
    }

    v7 = *(a1 + 1);
    v8 = *(v7 + 76);
    v9 = *(v7 + 88);
    v10 = v8 - v9;
    if (v8 < v9)
    {
      log_OutPublic(*(v6 + 32), "SYNTHSTREAM", 22012, "%s%s%s%u%s%s%s%u%s%u", "function", "WriteDirectEnd", "module", *(a1 + 2), "contentType", *(v7 + 32), "writePosition", v8, "bufferPosition", v9);
      v5 = 2297438213;
LABEL_6:
      log_OutText(*(v6 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteDirectEnd : End (%x)", v5);
      return v5;
    }

    v12 = v10 + a3;
    if (v10 + a3 > *(v7 + 104))
    {
      v5 = 2297438215;
      log_OutPublic(*(v6 + 32), "SYNTHSTREAM", 22005, "%s%u%s%s%s%u%s%u", "module", *(a1 + 2), "contentType", *(v7 + 32));
      goto LABEL_6;
    }

    if (*(v7 + 56))
    {
      if (a3)
      {
        v13 = 0;
        while (1)
        {
          v14 = *(v7 + 96) + v13 + v10;
          v15 = (*(v7 + 56))(v14, *(*(v7 + 8) + 8), v14);
          v7 = *(a1 + 1);
          if (!v15)
          {
            break;
          }

          v13 += *(v7 + 48);
          if (v13 >= a3)
          {
            goto LABEL_15;
          }
        }

        if (*(v7 + 64))
        {
          v19 = v13 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          v20 = 0;
          do
          {
            (*(v7 + 64))(*(v7 + 96) + v20 + v10, *(*(v7 + 8) + 8));
            v7 = *(a1 + 1);
            v20 += *(v7 + 48);
          }

          while (v20 < v13);
        }

        v5 = 2297438218;
        goto LABEL_6;
      }

LABEL_15:
      v8 = *(v7 + 76);
    }

    *(v7 + 76) = v8 + a3;
    synthstream_loc_StreamImplDump(v7, (*(v7 + 96) + v10), a3);
    v16 = *(a1 + 1);
    if ((*(v16 + 104) - v12) >= *(*v16 + 40))
    {
      *(v16 + 104) = v12;
      v17 = *(v16 + 96);
      if (v12)
      {
        v18 = heap_Realloc(*(*(v16 + 8) + 8), v17, (v12 + 1));
        v16 = *(a1 + 1);
        if (!v18)
        {
          goto LABEL_29;
        }
      }

      else
      {
        heap_Free(*(*(v16 + 8) + 8), v17);
        v18 = 0;
        v16 = *(a1 + 1);
      }

      *(v16 + 96) = v18;
    }

LABEL_29:
    synthstream_loc_StreamImplRecoverExcessBuffer(v16, 0);
    goto LABEL_6;
  }

  return v5;
}

uint64_t synthstream_WriteCopy(_DWORD *a1, int a2, _DWORD *a3, int a4, unsigned int a5, unsigned int *a6)
{
  v12 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = 2297438215;
    v14 = *(*(a1 + 1) + 8);
    log_OutText(*(v14 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteCopy : Begin (%u, %p, %p, %lu bytes)", *(a1 + 2), a1, a3, a5);
    if (a5 && a6)
    {
      if ((*a1 - 1) < 2)
      {
        v19 = 0;
        v18 = 0;
        *a6 = 0;
        v13 = synthstream_ReadDirectStart(a3, a4, &v19, &v18);
        if ((v13 & 0x80000000) == 0 && v18)
        {
          if (v18 < a5)
          {
            a5 = v18;
          }

          v15 = synthstream_Write(a1, a2, v19, a5);
          if ((v15 & 0x80000000) != 0)
          {
            v13 = v15;
            a5 = 0;
          }

          else
          {
            v13 = 0;
            *a6 = a5;
          }

          synthstream_ReadDirectEnd(a3, a4, a5);
        }

        v16 = *a6;
        goto LABEL_19;
      }

      log_OutPublic(*(v14 + 32), "SYNTHSTREAM", 22008, "%s%s%s%u%s%s", "function", "WriteCopy", "module", *(a1 + 2), "contentType", *(*(a1 + 1) + 32));
    }

    else
    {
      log_OutPublic(*(v14 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%u%s%p", "function", "WriteCopy", "module", *(a1 + 2), "contentType", *(*(a1 + 1) + 32), "cWrite", a5, "pcWritten", a6);
      if (!a6)
      {
        return v13;
      }
    }

    v16 = 0;
    *a6 = 0;
LABEL_19:
    log_OutText(*(v14 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteCopy : End (%x, %lu bytes)", v13, v16);
    return v13;
  }

  return v12;
}

uint64_t synthstream_GetPosition(_DWORD *a1, int a2, _DWORD *a3)
{
  v5 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(*(a1 + 1) + 8);
    log_OutText(*(v6 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM GetPosition : Begin (%u, %p)", *(a1 + 2), a1);
    if (a3)
    {
      if (*a1)
      {
        v7 = (*(a1 + 1) + 76);
      }

      else
      {
        v7 = a1 + 4;
      }

      v8 = *v7;
      *a3 = v8;
      log_OutText(*(v6 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM GetPosition : End (%x, %lu)", v5, v8);
    }

    else
    {
      log_OutPublic(*(v6 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p", "function", "GetPosition", "module", *(a1 + 2), "contentType", *(*(a1 + 1) + 32), "pu32CurPos", 0);
      return 2297438215;
    }
  }

  return v5;
}

uint64_t synthstream_GetRemaining(_DWORD *a1, int a2, unsigned int *a3, _DWORD *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = *(*(a1 + 1) + 8);
    log_OutText(*(v8 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM GetRemaining : Begin (%u, %p)", *(a1 + 2), a1);
    if (a3)
    {
      if (!*a1)
      {
        v9 = *(a1 + 1);
        *a3 = *(v9 + 76) - a1[4];
        if (a4)
        {
          *a4 = *(v9 + 108);
        }

LABEL_12:
        log_OutText(*(v8 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM GetRemaining : End (%x, %lu)", v7, *a3);
        return v7;
      }

      log_OutPublic(*(v8 + 32), "SYNTHSTREAM", 22009, "%s%s%s%u%s%s", "function", "GetRemaining", "module", *(a1 + 2), "contentType", *(*(a1 + 1) + 32));
      *a3 = 0;
      if (a4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      log_OutPublic(*(v8 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p", "function", "GetRemaining", "module", *(a1 + 2), "contentType", *(*(a1 + 1) + 32), "pu32Remaining", 0);
      if (a4)
      {
LABEL_5:
        *a4 = 1;
      }
    }

    v7 = 2297438215;
    if (!a3)
    {
      return v7;
    }

    goto LABEL_12;
  }

  return v7;
}

uint64_t synthstream_Reset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v4 = synthstream_loc_BeginFunction(a1, a2, &v19, &v20);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  log_OutText(*(v19 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Reset : Begin (%u)", a3);
  Str = paramc_ParamGetStr(*(v19 + 40), "clcpppipelinemode", &v17);
  v6 = ssftmap_IteratorOpen(*(v20 + 24), 0, 1, &v18);
  LODWORD(v7) = v6;
  if (Str < 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      v14 = 0;
      v15 = 0;
      while ((ssftmap_IteratorNext(v18, &v15, &v14) & 0x80000000) == 0)
      {
        if (*(v14 + 42) == 1)
        {
          v11 = *(v14 + 40);
          if (v11 >= a3)
          {
            v12 = "Clear";
          }

          else
          {
            v12 = "Keep";
          }

          log_OutText(*(v19 + 32), "SYNTHSTREAM", 3, 0, "%s stream %s %u", v12, *v15, *(v15 + 4));
          if (v11 >= a3)
          {
            ssftmap_IteratorRemove(v18);
          }
        }

        else
        {
          log_OutText(*(v19 + 32), "SYNTHSTREAM", 3, 0, "%s stream %s %u", "Keep", *v15, *(v15 + 4));
        }
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    v14 = 0;
    v15 = 0;
    while ((ssftmap_IteratorNext(v18, &v15, &v14) & 0x80000000) == 0)
    {
      v8 = v14;
      *(v14 + 84) = 0;
      *(v8 + 76) = 0;
      if (vector_GetElemAt(*(v8 + 24), 0, &v16) == 1)
      {
        v9 = 1;
        do
        {
          *(*v16 + 16) = 0;
          ElemAt = vector_GetElemAt(*(v14 + 24), v9++, &v16);
        }

        while (ElemAt == 1);
      }
    }

LABEL_21:
    ssftmap_IteratorClose(v18);
  }

  if ((v7 & 0x1FFF) == 0x14)
  {
    v7 = 0;
  }

  else
  {
    v7 = v7;
  }

  log_OutText(*(v19 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Reset : End (%x)", v7);
  return v7;
}

uint64_t synthstream_SetRulRes(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  v7 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = *(a1 + 8);
    v9 = *(v8 + 8);
    if (a4)
    {
      v10 = 0;
      v11 = a4;
      v12 = a3;
      do
      {
        v13 = *v12++;
        if ((v13 - 1) < 0x1F)
        {
          ++v10;
        }

        --v11;
      }

      while (v11);
      v14 = 4 * v10;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v8 + 112);
    if (v15)
    {
      heap_Free(*(v9 + 8), v15);
      v16 = *(a1 + 8);
      *(v16 + 112) = 0;
      v9 = *(v16 + 8);
    }

    v17 = heap_Alloc(*(v9 + 8), a4 + v14 + 1);
    *(*(a1 + 8) + 112) = v17;
    if (v17)
    {
      v18 = v7;
    }

    else
    {
      v18 = 2297438218;
    }

    if (v17)
    {
      v19 = a4 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = a4;
      while (1)
      {
        v22 = *a3++;
        v21 = v22;
        if ((v22 - 1) > 0x1E)
        {
          *v17 = v21;
          v23 = 1;
        }

        else
        {
          if (v21 > 10)
          {
            if (v21 > 12)
            {
              if (v21 != 13)
              {
                if (v21 == 27)
                {
                  strcpy(v17, "<ESC>");
                }

                else
                {
LABEL_40:
                  strcpy(v17, "<SPC>");
                }

                v23 = 5;
                goto LABEL_42;
              }

              strcpy(v17, "\\r");
            }

            else if (v21 == 11)
            {
              strcpy(v17, "\\v");
            }

            else
            {
              strcpy(v17, "\\f");
            }
          }

          else if (v21 > 8)
          {
            if (v21 == 9)
            {
              strcpy(v17, "\\t");
            }

            else
            {
              strcpy(v17, "\\n");
            }
          }

          else if (v21 == 7)
          {
            strcpy(v17, "\\a");
          }

          else
          {
            if (v21 != 8)
            {
              goto LABEL_40;
            }

            strcpy(v17, "\\b");
          }

          v23 = 2;
        }

LABEL_42:
        v17 += v23;
        if (!--v20)
        {
          return v7;
        }
      }
    }

    return v18;
  }

  return v7;
}

uint64_t synthstream_loc_ElemCopyMapKey(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = 2297438215;
  if (a1 && a2 && a3)
  {
    v7 = heap_Calloc(a2, 1, 16);
    if (v7)
    {
      v8 = v7;
      *(v7 + 8) = *(a1 + 8);
      v3 = ssftmap_ElemCopyString(*a1, a2, v7);
      if ((v3 & 0x80000000) != 0)
      {
        heap_Free(a2, v8);
      }

      else
      {
        *a3 = v8;
      }
    }

    else
    {
      return 2297438218;
    }
  }

  return v3;
}

uint64_t *synthstream_loc_ElemFreeMapKey(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (*result)
    {
      heap_Free(a2, *result);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t synthstream_loc_ElemCompareKeysMapKey(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      if (!a2)
      {
        return 1;
      }

      v5 = *a2;
      if (!*a2)
      {
        return 1;
      }

LABEL_13:
      result = strcmp(v4, v5);
      if (!result)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 + 8);
        v9 = v7 >= v8;
        v10 = v7 > v8;
        if (v9)
        {
          return v10;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      return result;
    }
  }

  if (!a2)
  {
    return 0;
  }

  v5 = *a2;
  if (*a2)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  if (a1 && v5)
  {
    v4 = *a1;
    if (!*a1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t synthstream_loc_ElemCopyStreamImpl(uint64_t a1, uint64_t a2, void *a3)
{
  result = 2297438215;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      ++*(a1 + 42);
      *a3 = a1;
    }
  }

  return result;
}

void *synthstream_loc_ElemReleaseStreamImpl(void *result)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 21);
  if (v2 >= 2)
  {
    *(result + 21) = v2 - 1;
    return result;
  }

  v3 = result[1];
  if (*(result + 74))
  {
    v19 = 0;
    v20 = 0;
    v4 = result[4];
    v21[0] = 0;
    __strcpy_chk();
    if (!strcmp(v4, "application/synthesis+ssml") || !strcmp(v4, "text/html") || !strcmp(v4, "text/email") || !strcmp(v4, "text/xml"))
    {
      if ((paramc_ParamGetStr(*(v1[1] + 40), "ssmldocumentencoding", &v20) & 0x80000000) == 0 && v20 && *v20)
      {
        __strcat_chk();
        __strcat_chk();
      }
    }

    else
    {
      if ((paramc_ParamGetStr(*(v1[1] + 40), "inputmimetype", &v20) & 0x80000000) == 0)
      {
        v5 = v20;
        if (v20)
        {
          if (*v20)
          {
            goto LABEL_19;
          }
        }
      }

      v20 = strstr(v4, ";charset=");
      if (v20)
      {
        v5 = v22;
        __strcpy_chk();
        v22[v20 - v4] = 0;
LABEL_19:
        if ((ssftstring_ObjOpen(*(v1[1] + 8), &v19) & 0x80000000) == 0)
        {
          log_OutBinary(*(v1[1] + 32), "SYNTHSTREAM", 0, 0, "input text", v23, v1[12], *(v1 + 19), v19);
          v6 = ssftstring_CStr(v19);
          v20 = v6;
          v7 = *(v1[1] + 32);
          v8 = *(v1 + 19);
          if (v6)
          {
            log_OutEvent(v7, 17, "%s%s%s%s%s%u", "MIME", v5, "TXID", v6, "TXSZ", v8);
            __strcpy_chk();
          }

          else
          {
            log_OutEvent(v7, 17, "%s%s%s%u", "MIME", v5, "TXSZ", v8);
          }

          ssftstring_ObjClose(v19);
          if (v21[0])
          {
            v9 = v1[14];
            if (v9)
            {
              log_OutEvent(*(v1[1] + 32), 20, "%s%s%s%s", "TXID", v21, "P_TEXT", v9);
            }
          }
        }

        goto LABEL_26;
      }
    }

    v5 = v4;
    goto LABEL_19;
  }

LABEL_26:
  v10 = v1[4];
  if (v10)
  {
    heap_Free(*(v3 + 8), v10);
  }

  v11 = v1[14];
  if (v11)
  {
    heap_Free(*(v3 + 8), v11);
    v1[14] = 0;
  }

  v12 = v1[3];
  if (v12)
  {
    vector_ObjClose(v12);
  }

  v13 = v1[12];
  if (v13)
  {
    if (v1[8])
    {
      v14 = *(v1 + 22);
      v15 = *(v1 + 21) - v14;
      if (v15 < *(v1 + 19) - v14)
      {
        v16 = v13 + v15;
        do
        {
          (v1[8])(v16, *(v1[1] + 8));
          v17 = *(v1 + 24);
          v18 = *(v1 + 22);
          *(v1 + 21) += v17;
          v16 += v17;
          v13 = v1[12];
        }

        while (v16 < v13 + (*(v1 + 19) - v18));
      }
    }

    heap_Free(*(v3 + 8), v13);
  }

  return heap_Free(*(v3 + 8), v1);
}

uint64_t synthstream_loc_BeginFunction(uint64_t a1, int a2, void *a3, uint64_t *a4)
{
  *a4 = 0;
  result = safeh_HandleCheck(a1, a2, 18397, 48);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*a1, *(a1 + 8), a3);
    if ((result & 0x80000000) == 0)
    {
      *a4 = a1;
    }
  }

  return result;
}

uint64_t synthstream_loc_StreamImplDump(uint64_t a1, const char *a2, unsigned int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  result = log_GetLogLevel(*(*(a1 + 8) + 32));
  if (result >= 6)
  {
    if (a2 && a3)
    {
      v7 = *(*(a1 + 8) + 32);
      v8 = *(a1 + 44);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      if (*(a1 + 73))
      {
        log_OutText(v7, "SYNTHSTREAM", 6, 0, "writerID=%u, szContentType=%s, pipelinePos=%u, refCount=%u, writePos=%u, bufPos=%u, eos=%d, writing %u bytes [%.*s]", v8, v9, v10, *(a1 + 42), *(a1 + 76), *(a1 + 88), *(a1 + 108), a3, a3, a2);
        LH_utoa(*(a1 + 44), v11, 0xAu);
        return log_OutBinary(*(*(a1 + 8) + 32), "SYNTHSTREAM", 99, 0, v11, *(a1 + 32), a2, a3, 0);
      }

      else
      {
        return log_OutText(v7, "SYNTHSTREAM", 6, 0, "writerID=%u, szContentType=%s, pipelinePos=%u, refCount=%u, writePos=%u, bufPos=%u, eos=%d, writing %u bytes", v8, v9, v10);
      }
    }

    else
    {
      return log_OutText(*(*(a1 + 8) + 32), "SYNTHSTREAM", 6, 0, "writerID=%u, szContentType=%s, pipelinePos=%u, refCount=%u, writePos=%u, bufPos=%u, eos=%d", *(a1 + 44), *(a1 + 32));
    }
  }

  return result;
}

uint64_t synthstream_loc_StreamImplRecoverExcessBuffer(uint64_t result, unsigned int a2)
{
  v2 = *(result + 76);
  v17 = 0;
  if (!*(result + 96))
  {
    return result;
  }

  v3 = result;
  if (*(result + 72))
  {
    return result;
  }

  result = vector_GetElemAt(*(result + 24), 0, &v17);
  if (result == 1)
  {
    v5 = 1;
    do
    {
      if (*(*v17 + 16) < v2)
      {
        v2 = *(*v17 + 16);
      }

      result = vector_GetElemAt(*(v3 + 24), v5++, &v17);
    }

    while (result == 1);
  }

  v6 = *(v3 + 88);
  v7 = v2 - v6;
  v8 = *(v3 + 48);
  if (v8 >= 2)
  {
    v7 = v7 / v8 * v8;
  }

  if (*(v3 + 64))
  {
    if (v7)
    {
      v9 = *(v3 + 84) - v6;
      if (v9 < v7)
      {
        v10 = *(v3 + 96) + v9;
        do
        {
          result = (*(v3 + 64))(v10, *(*(v3 + 8) + 8));
          v11 = *(v3 + 48);
          *(v3 + 84) += v11;
          v10 += v11;
        }

        while (v10 < *(v3 + 96) + v7);
      }
    }
  }

  if (a2)
  {
    if (v7 >= a2)
    {
      goto LABEL_21;
    }

    v12 = *(*v3 + 36);
  }

  else
  {
    v12 = *(*v3 + 40);
  }

  if (v7 < v12)
  {
    return result;
  }

LABEL_21:
  v13 = *(v3 + 76);
  if (v13 != v2)
  {
    result = memmove(*(v3 + 96), (*(v3 + 96) + v7), v13 - v2);
  }

  *(v3 + 88) += v7;
  if (!a2)
  {
    v14 = *(v3 + 104);
    if (v14 == v7)
    {
      v15 = *(v3 + 96);
    }

    else
    {
      v15 = *(v3 + 96);
      if (v2 != *(v3 + 76))
      {
        result = heap_Realloc(*(*(v3 + 8) + 8), v15, v14 - v7);
        if (!result)
        {
          return result;
        }

        *(v3 + 96) = result;
        v16 = *(v3 + 104) - v7;
LABEL_28:
        *(v3 + 104) = v16;
        return result;
      }
    }

    result = heap_Free(*(*(v3 + 8) + 8), v15);
    v16 = 0;
    *(v3 + 96) = 0;
    goto LABEL_28;
  }

  return result;
}

uint64_t synthstream_loc_StreamImplGrowBuf(uint64_t a1, int a2, _DWORD *a3)
{
  if (!a3)
  {
    v6 = *(a1 + 76) - *(a1 + 88) + a2;
    v7 = *(a1 + 104);
    if (v6 > v7)
    {
      goto LABEL_7;
    }

    return 0;
  }

  *a3 = 1;
  v6 = *(a1 + 76) - *(a1 + 88) + a2;
  v7 = *(a1 + 104);
  if (v6 <= v7)
  {
    return 0;
  }

  if (!*(a1 + 72))
  {
    result = vector_GetSize(*(a1 + 24));
    if (!result)
    {
      *a3 = 0;
      return result;
    }

    v7 = *(a1 + 104);
  }

LABEL_7:
  synthstream_loc_StreamImplRecoverExcessBuffer(a1, v6 - v7);
  v9 = *(a1 + 76) - *(a1 + 88) + a2;
  if (v9 <= *(a1 + 104))
  {
    return 0;
  }

  if (v9 <= *(*a1 + 32))
  {
    v10 = *(*a1 + 32);
  }

  else
  {
    v10 = *(a1 + 76) - *(a1 + 88) + a2;
  }

  v11 = *(a1 + 96);
  v12 = *(*(a1 + 8) + 8);
  v13 = (v10 + 1);
  if (v11)
  {
    v14 = heap_Realloc(v12, v11, v13);
  }

  else
  {
    v14 = heap_Calloc(v12, 1, v13);
  }

  v15 = v14;
  if (v14)
  {
    result = 0;
    *(a1 + 96) = v15;
    *(a1 + 104) = v10;
  }

  else
  {
    log_OutPublic(*(*(a1 + 8) + 32), "SYNTHSTREAM", 22000, 0);
    return 2297438218;
  }

  return result;
}

uint64_t DecoAddr(void *a1, int a2)
{
  v3 = a1[2];
  v4 = *v3;
  v5 = *(*v3 + 19);
  v6 = v5 * a2;
  v7 = (v5 * a2) >> 3;
  v8 = a1[6];
  if (v8)
  {
    a1[1] = v8 + v3[34] + v7;
  }

  else
  {
    v15 = *(v4 + 54);
    v16 = *(v4 + 68);
    if (v7 + v15 <= v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16 - v7;
    }

    v18 = brk_DataMap(a1[3], a1[4], v3[34] + v7, v17, (a1 + 1));
    if ((v18 & 0x1FFF) == 0xA)
    {
      return 4294967294;
    }

    if (v18)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v9 = (v6 & 7) + v5;
  v10 = a1[1];
  v11 = *v10;
  if (v9 < 9)
  {
    v19 = (v11 >> (8 - v9)) & (0xFFFFFFFF >> -v5);
  }

  else
  {
    v12 = ((0xFFu >> (v6 & 7)) & v11) << (v9 - 8);
    if (v9 < 0x11)
    {
      v14 = 16;
      v13 = 1;
    }

    else
    {
      LOBYTE(v13) = 1;
      v14 = 16;
      do
      {
        v12 += v10[v13] << (v9 - v14);
        LOBYTE(v13) = v13 + 1;
        v14 = 8 * v13 + 8;
      }

      while (v9 > (v14 & 0xF8u));
      v13 = v13;
    }

    v19 = (v10[v13] >> (v14 - v9)) + v12;
  }

  if (!a1[6])
  {
    brk_DataUnmap(a1[3], a1[4], v10);
  }

  return v19;
}

uint64_t WordToHashOpt(uint64_t a1, uint64_t a2, unsigned int a3, __int16 a4, int a5, unsigned __int16 *a6)
{
  v34 = 0;
  v12 = *a6;
  if (*a6)
  {
    v13 = 0;
    goto LABEL_3;
  }

  v23 = *(a1 + 16);
  v24 = v23[1];
  v25 = *(a2 + a3);
  if (a5)
  {
    LODWORD(v25) = depes_tolower(v25);
    v23 = *(a1 + 16);
  }

  v26 = *v23;
  v27 = *(v24 - *(*v23 + 4) + v25);
  v28 = *(*v23 + 46);
  if (*(*v23 + 46))
  {
    v29 = 0;
    v30 = 0;
    while (v27 > *(v23[3] + v29))
    {
      v30 += *(v23[5] + 4 * v29++);
      if (v28 == v29)
      {
        return 0xFFFFFFFFLL;
      }
    }

    LODWORD(v29) = v29;
  }

  else
  {
    v30 = 0;
    LODWORD(v29) = 0;
  }

  v34 = v30;
  if (v29 != v28 && v27 == *(v23[3] + v29))
  {
    *(a6 + 1) = v30;
    v12 = *(v23[4] + 4 * v29);
    if (v12 <= *(v26 + 18))
    {
      v32 = *(v26 + 56);
      *a1 = v32;
      v33 = *(v26 + 17);
      *(a1 + 4) = v33;
      v12 = v33 + 8 * v32;
    }

    *a6 = v12;
    v13 = 1;
LABEL_3:
    v14 = a4 - a3 + 1;
    v15 = a2 + a3;
    while (v13 != v14)
    {
      v16 = *(a1 + 16);
      v17 = v16[1];
      v18 = *(v15 + v13);
      if (a5)
      {
        v19 = depes_tolower(v18) - *(**(a1 + 16) + 4);
        v12 = *a6;
      }

      else
      {
        v19 = v18 - *(*v16 + 4);
      }

      v20 = *(v17 + v19);
      if ((SearchEntry(a1, v12, v20, a6 + 4, &v34, a6) & 0x1FFF) == 0xA)
      {
        return 4294967294;
      }

      v12 = *a6;
      if (!*a6)
      {
        result = 0xFFFFFFFFLL;
        *(a6 + 1) = -1;
        return result;
      }

      v21 = *(a6 + 1) + v34;
      *(a6 + 1) = v21;
      ++v13;
      if (v20 == *(**(a1 + 16) + 16))
      {
        if (v12 == 1)
        {
          return v21;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    v36 = 0;
    v31 = *(**(a1 + 16) + 16);
    v35 = a6[4];
    if ((SearchEntry(a1, v12, v31, &v35, &v34, &v36) & 0x1FFF) == 0xA)
    {
      return 4294967294;
    }

    if (v36 == 1)
    {
      return v34 + *(a6 + 1);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t SearchEntry(int *a1, unsigned int a2, unsigned int a3, unsigned __int16 *a4, _DWORD *a5, unsigned int *a6)
{
  v6 = a6;
  SourceAddress = a2;
  v12 = a2 >> 3;
  v13 = *(a1 + 6);
  if (v13)
  {
    v45 = a6;
    v14 = *(a1 + 2);
    *(a1 + 1) = v13 + *(v14 + 128) + v12;
  }

  else
  {
    result = brk_DataMap(*(a1 + 3), *(a1 + 4), *(*(a1 + 2) + 128) + v12, *(**(a1 + 2) + 50), (a1 + 2));
    if (result)
    {
      SourceAddress = 0;
      goto LABEL_73;
    }

    v45 = v6;
    v14 = *(a1 + 2);
  }

  *a1 = 0;
  *(a1 + 4) = SourceAddress & 7;
  *a5 = 0;
  v15 = *(v14 + 88);
  v16 = *(v15 + 2 * HuffDecode(a1, *(v14 + 48), *(*v14 + 26)));
  v17 = *(a1 + 2);
  v18 = *(*v17 + 24);
  v19 = v16 - v18;
  if (v16 > v18)
  {
    v20 = 0;
    do
    {
      v21 = *(a1 + 2);
      v22 = v21[12];
      v23 = HuffDecode(a1, v21[7], *(*v21 + 28));
      ++v20;
      v24 = *a4;
    }

    while (v24 >= v20);
    if (*(v22 + v23) == a3)
    {
      *a5 = 0;
      v25 = v24 + 1;
      *a4 = v25;
      v6 = v45;
      if (v25 < v19)
      {
        goto LABEL_70;
      }

      *a4 = 0;
      if (*(**(a1 + 2) + 16) == a3)
      {
        SourceAddress = 1;
        if (!*(a1 + 6))
        {
          goto LABEL_71;
        }

LABEL_72:
        result = 0;
        goto LABEL_73;
      }

      v37 = DecodeSourceLink(a1);
      if (!v37)
      {
        SourceAddress = GetSourceAddress(a1);
        goto LABEL_70;
      }

      SourceAddress = v37;
      v38 = **(a1 + 2);
      if (v37 > *(v38 + 18))
      {
        goto LABEL_70;
      }

      v39 = *(a1 + 4);
      v40 = *(v38 + 15);
      if ((v40 & v39) == 0)
      {
LABEL_67:
        v44 = *a1;
        if (v39 == 8)
        {
          LOBYTE(v39) = 0;
          *(a1 + 4) = 0;
          *a1 = ++v44;
        }

        SourceAddress = 8 * (v44 + v12) + v39;
LABEL_70:
        if (*(a1 + 6))
        {
          goto LABEL_72;
        }

LABEL_71:
        brk_DataUnmap(*(a1 + 3), *(a1 + 4), *(a1 + 1));
        goto LABEL_72;
      }

      do
      {
        ++v39;
      }

      while ((v40 & v39) != 0);
LABEL_63:
      *(a1 + 4) = v39;
      goto LABEL_67;
    }

    goto LABEL_40;
  }

  v26 = v17[12];
  v27 = *(v26 + HuffDecode(a1, v17[7], *(*v17 + 28)));
  if (v27 == *(**(a1 + 2) + 16))
  {
    SourceAddress = 0;
    if (v27 == a3)
    {
      goto LABEL_21;
    }

    v28 = 1;
    goto LABEL_20;
  }

  SourceAddress = DecodeSourceLink(a1);
  if (!SourceAddress)
  {
    SourceAddress = GetSourceAddress(a1);
  }

  if (v27 != a3)
  {
    v28 = DecodeSourceHash(a1);
LABEL_20:
    *a5 += v28;
  }

LABEL_21:
  v30 = v16 > 1;
  v31 = 1;
  if (v27 < a3 && v16 >= 2)
  {
    do
    {
      v33 = *(a1 + 2);
      v34 = v33[13];
      LOBYTE(v27) = *(v34 + HuffDecode(a1, v33[8], *(*v33 + 30))) + v27;
      if (*(**(a1 + 2) + 16) == v27)
      {
        if (a3 == v27)
        {
          goto LABEL_34;
        }

        v35 = 1;
      }

      else
      {
        SourceAddress = DecodeSourceLink(a1);
        if (!SourceAddress)
        {
          SourceAddress = GetSourceAddress(a1);
        }

        if (a3 == v27)
        {
          goto LABEL_34;
        }

        v35 = DecodeSourceHash(a1);
      }

      *a5 += v35;
LABEL_34:
      v30 = v16 > ++v31;
    }

    while (a3 > v27 && v16 > v31);
  }

  if (a3 != v27)
  {
LABEL_40:
    SourceAddress = 0;
    result = 0;
    v6 = v45;
    if (!*(a1 + 6))
    {
      goto LABEL_71;
    }

    goto LABEL_73;
  }

  v36 = **(a1 + 2);
  if (*(v36 + 16) == a3)
  {
    SourceAddress = 1;
    v6 = v45;
    if (!*(a1 + 6))
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  if (SourceAddress <= *(v36 + 18))
  {
    if (v30)
    {
      DecodeSourceHash(a1);
    }

    while (v16 > v31)
    {
      v41 = *(a1 + 2);
      v42 = v41[13];
      LOBYTE(a3) = *(v42 + HuffDecode(a1, v41[8], *(*v41 + 30))) + a3;
      if (*(**(a1 + 2) + 16) != a3)
      {
        if (!DecodeSourceLink(a1))
        {
          GetSourceAddress(a1);
        }

        if (v31 < (v16 - 1))
        {
          DecodeSourceHash(a1);
        }
      }

      ++v31;
    }

    v39 = *(a1 + 4);
    v43 = *(**(a1 + 2) + 15);
    if ((v43 & v39) == 0)
    {
      v6 = v45;
      goto LABEL_67;
    }

    v6 = v45;
    do
    {
      ++v39;
    }

    while ((v43 & v39) != 0);
    goto LABEL_63;
  }

  if (!*(a1 + 6))
  {
    v6 = v45;
    goto LABEL_71;
  }

  result = 0;
  v6 = v45;
LABEL_73:
  *v6 = SourceAddress;
  return result;
}

uint64_t open_DctRom(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v11 = 0;
  v5 = a1[6];
  if (v5)
  {
    v11 = a1[6];
  }

  else
  {
    v8 = brk_DataOpenEx(a1[3], a2, 1, (a1 + 4));
    if (v8)
    {
      v6 = v8;
      a1[4] = 0;
      return v6;
    }

    v9 = brk_DataMap(a1[3], a1[4], 0, 40, &v11);
    if (v9)
    {
      v6 = v9;
      brk_DataClose(a1[3], a1[4]);
      a1[4] = 0;
      return v6;
    }

    v5 = v11;
  }

  v6 = 2306875417;
  if (*v5 == 65279 && !LH_strnicmp((v5 + 1), "SCANSOFT", 8uLL) && !LH_strnicmp((v11 + 3), "SYS_DCT", 7uLL))
  {
    v7 = v11[5];
    if (!a1[6])
    {
      brk_DataUnmap(a1[3], a1[4], v11);
    }

    v6 = 0;
    *a3 = v7 - 40;
  }

  return v6;
}

uint64_t close_DctRom(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    brk_DataClose(*(a1 + 24), v1);
  }

  return 0;
}

uint64_t query_DctRom(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = a3;
  v15 = 0;
  *a5 = 0;
  v9 = brk_DataMap(*(a1 + 24), *(a1 + 32), 40, a3, &v15);
  if (v9)
  {
    v10 = v9;
    brk_DataClose(*(a1 + 24), *(a1 + 32));
    *(a1 + 32) = 0;
  }

  else
  {
    v11 = v15;
    if (v6)
    {
      v12 = 0;
      while (LH_stricmp((v11 + v12), a2))
      {
        v11 = v15;
        v13 = strlen((v15 + v12));
        v12 += v13 + ((~v13 - v12) & 3) + 5;
        if (v12 >= v6)
        {
          goto LABEL_9;
        }
      }

      *a5 = 1;
      v11 = v15;
    }

LABEL_9:
    brk_DataUnmap(*(a1 + 24), *(a1 + 32), v11);
    return 0;
  }

  return v10;
}

uint64_t init_DctRom(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v36 = 0;
  v8 = *(a1 + 48);
  if (v8)
  {
    v36 = (v8 + 40);
  }

  else
  {
    v15 = brk_DataMap(*(a1 + 24), *(a1 + 32), 40, a3, &v36);
    if (v15)
    {
LABEL_10:
      v14 = v15;
      brk_DataClose(*(a1 + 24), *(a1 + 32));
      *(a1 + 32) = 0;
      return v14;
    }
  }

  if (v5)
  {
    v9 = 0;
    v10 = v36;
    while (1)
    {
      v11 = LH_stricmp(&v10[v9], a2);
      v10 = v36;
      v12 = strlen(&v36[v9]);
      v13 = (~v12 - v9) & 3;
      if (!v11)
      {
        break;
      }

      v9 += v13 + v12 + 5;
      if (v9 >= v5)
      {
        goto LABEL_7;
      }
    }

    v16 = *&v36[v12 + 1 + v9 + v13];
    v17 = *(a1 + 48);
    if (v17 || (brk_DataUnmap(*(a1 + 24), *(a1 + 32), v36), (v17 = *(a1 + 48)) != 0))
    {
      if (v16 > *(a1 + 56))
      {
        return 2306875412;
      }

      LODWORD(v18) = *(v17 + v16);
      goto LABEL_16;
    }

    v15 = brk_DataMap(*(a1 + 24), *(a1 + 32), v16, 4, &v36);
    if (!v15)
    {
      v17 = *(a1 + 48);
      v18 = *v36;
      if (!v17)
      {
        brk_DataUnmap(*(a1 + 24), *(a1 + 32), v36);
        v14 = brk_DataMap(*(a1 + 24), a4, v16, v18, *(a1 + 16));
        if (v14)
        {
          return v14;
        }

        v20 = *(a1 + 16);
        v19 = *v20;
        goto LABEL_17;
      }

LABEL_16:
      v19 = v17 + v16;
      v20 = *(a1 + 16);
      *v20 = v19;
LABEL_17:
      v14 = 0;
      v21 = v19 + 72 + ((*(v19 + 5) - *(v19 + 4) + 4) & 0xFFFFFFFC);
      v20[1] = v19 + 72;
      v20[2] = v21;
      v22 = v21 + ((2 * (*(v19 + 7) - *(v19 + 6)) + 5) & 0xFFFFFFFC);
      LODWORD(v21) = *(v19 + 46);
      v23 = v22 + ((v21 + 3) & 0x1FFFC);
      v20[3] = v22;
      v20[4] = v23;
      v24 = v23 + 4 * v21;
      v25 = v24 + 4 * v21;
      v20[5] = v24;
      v20[6] = v25;
      v26 = v25 + 4 * *(v19 + 26) + 4;
      v27 = v26 + 4 * *(v19 + 28) + 4;
      v20[7] = v26;
      v20[8] = v27;
      v28 = v27 + 4 * *(v19 + 30) + 4;
      v29 = v28 + 4 * *(v19 + 32) + 4;
      v20[9] = v28;
      v20[10] = v29;
      v30 = v29 + 4 * *(v19 + 34) + 4;
      v31 = v30 + ((2 * *(v19 + 36) + 3) & 0x3FFFC);
      v20[11] = v30;
      v20[12] = v31;
      v32 = v31 + ((*(v19 + 38) + 3) & 0x1FFFC);
      v33 = v32 + ((*(v19 + 40) + 3) & 0x1FFFC);
      v20[13] = v32;
      v20[14] = v33;
      v20[15] = v33 + ((2 * *(v19 + 42) + 3) & 0x3FFFC);
      LODWORD(v33) = *(v19 + 60);
      v34 = *(v19 + 64);
      LODWORD(v33) = ((v33 + 3) & 0xFFFFFFFC) + v18 + v16;
      *(v20 + 32) = v18 + v16;
      *(v20 + 33) = v33;
      *(v20 + 34) = ((v34 + 3) & 0xFFFFFFFC) + v33;
      return v14;
    }

    goto LABEL_10;
  }

LABEL_7:
  v14 = 2306875412;
  if (!*(a1 + 48))
  {
    brk_DataUnmap(*(a1 + 24), *(a1 + 32), v36);
  }

  return v14;
}

uint64_t exit_DctRom(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    brk_DataUnmap(*(a1 + 24), a2, **(a1 + 16));
  }

  return 0;
}

BOOL test_DCT(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a3 > a4)
  {
    return a4 >= a3;
  }

  LOWORD(v10) = a3;
  while (1)
  {
    v11 = *(a2 + v10);
    if (a5)
    {
      LODWORD(v11) = depes_tolower(v11);
    }

    v12 = **(a1 + 16);
    if (v11 < *(v12 + 4) || v11 > *(v12 + 5))
    {
      break;
    }

    v10 = (v10 + 1);
    if (v10 > a4)
    {
      return a4 >= a3;
    }
  }

  return 0;
}

uint64_t DctLookup(uint64_t a1, uint64_t a2, unsigned __int16 *a3, __int16 *a4, int a5, _WORD *a6, unsigned __int16 *a7)
{
  v62 = *MEMORY[0x1E69E9840];
  memset(v61, 0, 41);
  v9 = *a4;
  v10 = *a3;
  if ((v9 - v10) > 0x7FFEu || *(**(a1 + 16) + 22) <= (v9 - v10) || !test_DCT(a1, a2, v10, v9, a5))
  {
    return 20;
  }

  v16 = WordToHashOpt(a1, a2, *a3, *a4, a5, a7);
  if (v16 == -2)
  {
    return 10;
  }

  if (v16 < 0)
  {
    return 20;
  }

  v17 = DecoAddr(a1, v16);
  if (v17 == -2)
  {
    return 10;
  }

  if ((v17 & 0x80000000) != 0)
  {
    return 20;
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    v20 = (v19 + *(*(a1 + 16) + 132) + v17);
    *(a1 + 8) = v20;
  }

  else
  {
    result = brk_DataMap(*(a1 + 24), *(a1 + 32), *(*(a1 + 16) + 132) + v17, *(**(a1 + 16) + 52), a1 + 8);
    if (result)
    {
      return result;
    }

    v20 = *(a1 + 8);
  }

  v21 = 0;
  LOWORD(v22) = 0;
  v23 = 0;
  LOBYTE(v24) = *v20;
  v25 = *(a1 + 40);
  do
  {
    v25[v23++] = v24;
    v26 = *(a1 + 16);
    v25 = *(a1 + 40);
    v27 = *v26;
    do
    {
      v22 = v22;
      v28 = v26[2][2 * (v25[v22] - v27[6])];
      if (v28)
      {
        v29 = v23 - 1;
        do
        {
          if (v22 < (v23 - 1))
          {
            v30 = v29;
            do
            {
              *(*(a1 + 40) + v30 + 1) = *(*(a1 + 40) + v30);
              --v30;
            }

            while (v30 > v22);
            v26 = *(a1 + 16);
            v25 = *(a1 + 40);
            v27 = *v26;
          }

          ++v23;
          v25[v22 + 1] = v26[2][2 * (v25[v22] - v27[6]) + 1];
          *(*(a1 + 40) + v22) = v28;
          v26 = *(a1 + 16);
          v25 = *(a1 + 40);
          v27 = *v26;
          v28 = v26[2][2 * (v25[v22] - (*v26)[6])];
          ++v29;
        }

        while (v28);
      }

      LODWORD(v22) = (v22 + 1);
    }

    while (v22 < v23);
    ++v21;
    v24 = *(*(a1 + 8) + v21);
    v31 = v27[10];
  }

  while (v24 != v27[8] && (v24 < v31 || v24 > v27[11]));
  v32 = *v25;
  if (v32 >= v31)
  {
    do
    {
      v33 = v32;
      v34 = v27[11];
      if (v32 > v34)
      {
        break;
      }

      v35 = *(a1 + 8);
      v36 = v27[8];
      v37 = *(v35 + v21);
      if (v37 == v36)
      {
        v38 = 1;
      }

      else
      {
        v39 = (v35 + v21 + 1);
        while (1)
        {
          v40 = v37 < v31 || v37 > v34;
          v38 = v40;
          if (v38 != 1)
          {
            break;
          }

          LODWORD(v21) = v21 + 1;
          v41 = *v39++;
          LOBYTE(v37) = v41;
          if (v41 == v36)
          {
            goto LABEL_42;
          }
        }

        LOBYTE(v36) = v37;
      }

LABEL_42:
      LODWORD(v21) = v21 + v38;
      v42 = v31;
      v43 = v31 - 1;
      if (v36 <= v34 && v36 >= v42)
      {
        v43 = v36;
      }

      if (v43 >= v32)
      {
        LODWORD(v21) = v21 + 1;
      }

      else
      {
        LOWORD(v45) = 0;
        v46 = 0;
        v47 = v26[2];
        v48 = v27[6];
        v21 = v21;
        do
        {
          v49 = v46++;
          *(v61 + v49) = *(v35 + v21);
          do
          {
            v45 = v45;
            v50 = *(v61 + v45);
            if (v47[2 * (v50 - v48)])
            {
              v51 = v46 - 1;
              do
              {
                if (v45 < (v46 - 1))
                {
                  v52 = v61 + v51 + 1;
                  v53 = v51;
                  v54 = v52;
                  do
                  {
                    v55 = *--v54;
                    *v52 = v55;
                    --v53;
                    v52 = v54;
                  }

                  while (v53 > v45);
                  v50 = *(v61 + v45);
                }

                v56 = &v47[2 * (v50 - v48)];
                *(v61 + v45 + 1) = v56[1];
                v50 = *v56;
                *(v61 + v45) = v50;
                ++v46;
                ++v51;
              }

              while (v47[2 * (v50 - v48)]);
            }

            LODWORD(v45) = (v45 + 1);
            LOBYTE(v32) = v32 - 1;
          }

          while (v45 < v46 && v32 >= v43);
          ++v21;
        }

        while (v32 >= v43);
        v57 = v33 - v43;
        if (v23 >= 2)
        {
          v58 = v23 - 1;
          v59 = (v23 + v33 - v43) - 1;
          do
          {
            *(*(a1 + 40) + v59--) = *(*(a1 + 40) + v58--);
          }

          while (v58);
        }

        if ((v57 & 0x80000000) == 0)
        {
          v60 = 0;
          do
          {
            *(*(a1 + 40) + v60) = *(v61 + v60);
            ++v60;
          }

          while (v57 >= v60);
        }

        LOWORD(v23) = v23 + v57;
        LOBYTE(v32) = v43;
      }

      v26 = *(a1 + 16);
      v27 = *v26;
      v31 = (*v26)[10];
    }

    while (v31 <= v32);
  }

  if (!*(a1 + 48))
  {
    brk_DataUnmap(*(a1 + 24), *(a1 + 32), *(a1 + 8));
  }

  result = 0;
  *a6 = v23;
  return result;
}

uint64_t HuffDecode(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  v3 = (a2 + 4 * a3);
  if (*v3 != -1)
  {
    v4 = *(a1 + 1);
    v5 = *a1;
    v6 = *(v4 + v5);
    v7 = *(a1 + 4);
    while (v7)
    {
      v8 = v3[(v6 & (1 << v7)) == 0];
      if (v7 <= 6)
      {
        goto LABEL_7;
      }

      v7 = 0;
      *(a1 + 4) = 0;
      LODWORD(v5) = v5 + 1;
      *a1 = v5;
LABEL_8:
      v3 = (a2 + 4 * v8);
      if (*v3 == -1)
      {
        return v8;
      }
    }

    v6 = *(v4 + v5);
    v8 = *(v3 + (~(2 * v6) & 2));
LABEL_7:
    *(a1 + 4) = ++v7;
    goto LABEL_8;
  }

  return a3;
}

uint64_t DecodeSourceLink(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*v2 + 12);
  v4 = HuffDecode(a1, v2[10], *(*v2 + 34));
  v5 = (v4 * v3) & 0xF;
  v6 = 16 - v5;
  v7 = *(a1 + 16);
  v8 = (v7[15] + 2 * ((v4 * v3) >> 4));
  v9 = *v8 >> ((v4 * v3) & 0xF);
  if (16 - v5 >= v3)
  {
    result = v9 & (0xFFFFu >> (16 - v3));
  }

  else
  {
    v10 = v8[1];
    if (32 - v5 >= v3)
    {
      result = (((0xFFFFu >> (-v3 - v5)) & v10) << v6) + v9;
    }

    else
    {
      result = (v10 << v6) + v9 + (((0xFFFFu >> (48 - v3 - v5)) & v8[2]) << (32 - v5));
    }
  }

  v12 = *v7;
  if (result > *(v12 + 18))
  {
    return (result << *(v12 + 14));
  }

  return result;
}

uint64_t GetSourceAddress(unsigned int *a1)
{
  v1 = *(a1 + 1);
  v2 = **(a1 + 2);
  v3 = *(v2 + 12);
  v4 = *(a1 + 4);
  v5 = v4 + v3;
  v6 = *a1;
  v7 = *(v1 + v6) >> v4;
  if ((v4 + v3) < 9)
  {
    v12 = v7 & (0xFFu >> (8 - v3));
  }

  else
  {
    if (v5 < 0x11)
    {
      v11 = 16;
      LOBYTE(v9) = 8;
      v8 = 1;
    }

    else
    {
      v8 = 1;
      LOBYTE(v9) = 8;
      v10 = 1;
      do
      {
        v7 += *(v1 + (v8 + v6)) << (v9 - v4);
        v8 = ++v10;
        v9 = 8 * v10;
        v11 = 8 * v10 + 8;
      }

      while (v5 > v9 + 8);
    }

    v12 = (((0xFFu >> (v11 - v5)) & *(v1 + (v8 + v6))) << (v9 - v4)) + v7;
  }

  v13 = v4 + v3;
  *a1 = v6 + ((v13 >> 3) & 7);
  *(a1 + 4) = v13 & 7;
  return v12 << *(v2 + 14);
}

uint64_t DecodeSourceHash(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*v2 + 13);
  v4 = HuffDecode(a1, v2[9], *(*v2 + 32));
  if (v3 <= 0x10)
  {
    return *(*(*(a1 + 16) + 112) + 2 * v4);
  }

  v6 = (v4 * v3) & 0xF;
  v7 = (*(*(a1 + 16) + 112) + 2 * ((v4 * v3) >> 4));
  v8 = *v7 >> ((v4 * v3) & 0xF);
  v9 = v7[1];
  if (32 - v6 >= v3)
  {
    return (((0xFFFFu >> (-v3 - v6)) & v9) << (16 - v6)) + v8;
  }

  else
  {
    return (v9 << (16 - v6)) + v8 + (((0xFFFFu >> (48 - v3 - v6)) & v7[2]) << (32 - v6));
  }
}

uint64_t try_flipped(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*a1 != 1163019088)
  {
    return 0;
  }

  v4 = *a1;
  v5 = a1[2];
  *(a2 + 16) = a1[1];
  *(a2 + 32) = v5;
  *a2 = v4;
  *(a2 + 4) = vrev32_s8(*(a1 + 4));
  *(a2 + 16) = vrev16_s8(a1[1]);
  *(a2 + 24) = bswap32(*(a1 + 12)) >> 16;
  *(a2 + 26) = bswap32(*(a1 + 13)) >> 16;
  *(a2 + 28) = bswap32(*(a1 + 14)) >> 16;
  if (a3)
  {
    v6 = *a3;
    v7 = a3[1];
    *(a4 + 32) = *(a3 + 4);
    *a4 = v6;
    *(a4 + 16) = v7;
    *a4 = vrev32_s8(*a3);
  }

  return a2;
}

uint64_t nuance_pcre_fullinfo(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  result = 4294967294;
  if (a1 && a4)
  {
    if (a2 && (*a2 & 1) != 0)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    memset(v14, 0, sizeof(v14));
    memset(v15, 0, sizeof(v15));
    v16 = 0;
    if (*a1 != 1346589253)
    {
      v10 = try_flipped(a1, v14, v9, v15);
      if (!v10)
      {
        return 4294967292;
      }

      a1 = v10;
      if (v9)
      {
        v9 = v15;
      }

      else
      {
        v9 = 0;
      }
    }

    result = 4294967293;
    if (a3 > 5)
    {
      if (a3 > 8)
      {
        if (a3 == 9)
        {
          result = 0;
          v12 = a1 + *(a1 + 24);
          goto LABEL_47;
        }

        if (a3 != 10)
        {
          if (a3 != 11)
          {
            return result;
          }

          result = 0;
          v12 = &pcre_default_tables;
          goto LABEL_47;
        }

        if (v9)
        {
          v12 = *v9;
          goto LABEL_46;
        }

LABEL_45:
        v12 = 0;
        goto LABEL_46;
      }

      if (a3 != 6)
      {
        result = 0;
        if (a3 == 7)
        {
          v11 = *(a1 + 26);
        }

        else
        {
          v11 = *(a1 + 28);
        }

        goto LABEL_51;
      }

      if ((*(a1 + 11) & 0x20) != 0)
      {
        v11 = *(a1 + 22);
      }

      else
      {
        v11 = -1;
      }
    }

    else
    {
      if (a3 <= 2)
      {
        if (a3)
        {
          if (a3 != 1)
          {
            if (a3 != 2)
            {
              return result;
            }

            result = 0;
            v11 = *(a1 + 16);
            goto LABEL_51;
          }

          result = 0;
          v12 = *(a1 + 4);
        }

        else
        {
          result = 0;
          v12 = *(a1 + 8) & 0x7A7FLL;
        }

LABEL_47:
        *a4 = v12;
        return result;
      }

      if (a3 == 3)
      {
        result = 0;
        v11 = *(a1 + 18);
LABEL_51:
        *a4 = v11;
        return result;
      }

      if (a3 != 4)
      {
        if (v9 && (*(v9 + 4) & 1) != 0)
        {
          v12 = *(a2 + 8) + 8;
LABEL_46:
          result = 0;
          goto LABEL_47;
        }

        goto LABEL_45;
      }

      v13 = *(a1 + 8);
      if ((v13 & 0x40000000) != 0)
      {
        v11 = *(a1 + 20);
      }

      else if ((v13 & 0x10000000) != 0)
      {
        v11 = -1;
      }

      else
      {
        v11 = -2;
      }
    }

    result = 0;
    goto LABEL_51;
  }

  return result;
}

uint64_t nuance_pcre_compile(uint64_t a1, int a2, char *a3, uint64_t a4, const char **a5, _DWORD *a6, char *a7)
{
  v195[126] = *MEMORY[0x1E69E9840];
  v195[0] = 0;
  v194 = 0;
  v193 = 0;
  if ((safeh_HandleCheck(a1, a2, 56663, 32) & 0x80000000) != 0 || !a5)
  {
    return 0;
  }

  *a5 = 0;
  if (!a6)
  {
    v14 = 0;
    v15 = "erroffset passed as NULL";
    goto LABEL_11;
  }

  *a6 = 0;
  if ((a4 & 0x2800) == 0x800)
  {
    valid = valid_utf8(a3, 0xFFFFFFFF);
    *a6 = valid;
    if ((valid & 0x80000000) == 0)
    {
      v14 = 0;
      v15 = "invalid UTF-8 string";
LABEL_11:
      *a5 = v15;
      return v14;
    }
  }

  if ((a4 & 0xFFFF8580) != 0)
  {
    v14 = 0;
    v15 = "unknown option bit(s) set";
    goto LABEL_11;
  }

  v176 = 0;
  v177 = 0;
  v17 = 0;
  v18 = 0;
  v190 = 0u;
  v191 = 0u;
  v189 = 0u;
  if (a7)
  {
    v19 = a7;
  }

  else
  {
    v19 = &pcre_default_tables;
  }

  v185 = v19;
  v186 = v19 + 256;
  v175 = v19;
  v178 = a3;
  v187 = v19 + 512;
  v188 = v19 + 832;
  *&v191 = 0;
  v192 = (a3 - 1);
  v20 = digitab;
  v21 = -1;
  v22 = 3;
  v23 = a4;
  while (1)
  {
    v24 = v192;
    v25 = v192 + 1;
    v26 = *++v192;
    if (!v26)
    {
LABEL_414:
      if ((v23 & 0x4000) != 0)
      {
        v151 = 10;
      }

      else
      {
        v151 = 4;
      }

      v152 = v151 + v22;
      if (v151 + v22 > 0x10000)
      {
        v14 = 0;
        v15 = "regular expression too large";
        goto LABEL_11;
      }

      v153 = v23;
      v154 = heap_Calloc(*(*a1 + 8), 1, (v152 + (v176 + 3) * HIDWORD(v176) + 48));
      v14 = v154;
      if (!v154)
      {
        v15 = "failed to get memory";
        goto LABEL_11;
      }

      *v154 = 1346589253;
      *(v154 + 4) = v152 + (v176 + 3) * HIDWORD(v176) + 48;
      *(v154 + 30) = 0;
      *(v154 + 8) = v153;
      *(v154 + 12) = 0;
      *(v154 + 24) = 48;
      *(v154 + 26) = v176 + 3;
      *(v154 + 28) = WORD2(v176);
      if (v175 == &pcre_default_tables)
      {
        v155 = 0;
      }

      else
      {
        v155 = v175;
      }

      *(v154 + 32) = v155;
      *(v154 + 40) = 0;
      DWORD2(v190) = 0;
      HIDWORD(v190) = v176 + 3;
      *&v190 = v154 + 48;
      v156 = (v154 + 48 + (v176 + 3) * WORD2(v176));
      *&v189 = v156;
      *(&v189 + 1) = v178;
      *(&v191 + 1) = 0;
      v192 = v178;
      v193 = v156;
      *v156 = 80;
      v194 = 0;
      compile_regex_0(v153, v153 & 7, &v194, &v193, &v192, a5, 0, 0, v195 + 1, v195, 0, &v185);
      *(v14 + 16) = v194;
      v157 = HIDWORD(v191);
      *(v14 + 18) = v191;
      if (v157)
      {
        *(v14 + 8) |= 0x4000000u;
      }

      if (!*a5 && *v192)
      {
        *a5 = "unmatched parentheses";
      }

      v158 = v193;
      *v193 = 0;
      if (v158 - v156 + 1 > v152)
      {
        *a5 = "internal error: code overflow";
      }

      if (*(v14 + 18) > *(v14 + 16))
      {
        *a5 = "reference to non-existent subpattern";
LABEL_434:
        heap_Free(*(*a1 + 8), v14);
        goto LABEL_437;
      }

      if (*a5)
      {
        goto LABEL_434;
      }

      if ((v153 & 0x10) == 0)
      {
        v183 = v153;
        v160 = DWORD1(v191);
        if (is_anchored_0(v14 + 48 + (v176 + 3) * WORD2(v176), &v183, 0, DWORD1(v191)))
        {
          v161 = 16;
        }

        else
        {
          LOWORD(firstassertedchar) = WORD2(v195[0]);
          if ((v195[0] & 0x8000000000000000) != 0 && (firstassertedchar = find_firstassertedchar(v14 + 48 + (v176 + 3) * WORD2(v176), &v183, 0), firstassertedchar < 0))
          {
            if (!is_startline_0(v14 + 48 + (v176 + 3) * WORD2(v176), 0, v160))
            {
              goto LABEL_448;
            }

            v161 = 0x10000000;
          }

          else
          {
            if ((firstassertedchar & 0x100) == 0 || (v163 = firstassertedchar, v186[firstassertedchar] != firstassertedchar))
            {
              v163 = firstassertedchar;
            }

            *(v14 + 20) = v163;
            v161 = 0x40000000;
          }
        }

        *(v14 + 8) |= v161;
      }

LABEL_448:
      v164 = v195[0];
      if ((v195[0] & 0x80000000) == 0)
      {
        v165 = *(v14 + 8);
        if ((v195[0] & 0x200) != 0 || (v165 & 0x10) == 0)
        {
          if ((v195[0] & 0x100) != 0 && v186[LOBYTE(v195[0])] == LOBYTE(v195[0]))
          {
            v164 = v195[0] & 0xFEFF;
          }

          *(v14 + 22) = v164;
          *(v14 + 8) = v165 | 0x20000000;
        }
      }

      return v14;
    }

    v184 = 0;
    if (v18)
    {
      if ((v23 & 0x4000) != 0)
      {
        v22 += 6;
      }

      if (v26 == 92)
      {
        v28 = v24[2];
        v27 = v24 + 2;
        if (v28 != 69)
        {
          v22 += 2;
LABEL_70:
          v36 = 2;
          v17 = 1;
          goto LABEL_400;
        }

        v18 = 0;
        v192 = v27;
LABEL_67:
        v36 = 2;
        goto LABEL_400;
      }

      goto LABEL_71;
    }

    if ((v23 & 8) != 0)
    {
      if (v188[v26])
      {
        goto LABEL_60;
      }

      if (v26 == 35)
      {
        while (1)
        {
          v32 = *++v25;
          v31 = v32;
          if (v32 == 10)
          {
            break;
          }

          if (!v31)
          {
            goto LABEL_414;
          }
        }

        v18 = 0;
        goto LABEL_66;
      }
    }

    ++v21;
    v180 = v23;
    if ((v23 & 0x4000) != 0 && (v26 - 42) >= 2 && v26 != 63)
    {
      if (v26 == 123)
      {
        v174 = v21;
        v29 = is_counted_repeat(v24 + 2);
        v21 = v174;
        v20 = digitab;
        v23 = v180;
        if (v29)
        {
          goto LABEL_88;
        }
      }

      v22 += 6;
    }

    if (v26 > 62)
    {
      if (v26 > 93)
      {
        switch(v26)
        {
          case '^':
            goto LABEL_69;
          case '{':
            v174 = v21;
LABEL_88:
            if (!is_counted_repeat(v24 + 2))
            {
              v18 = 0;
              v22 += 2;
              v36 = 2;
              v17 = 1;
              goto LABEL_99;
            }

            repeat_counts_0 = read_repeat_counts_0(v24 + 2, &v184 + 1, &v184, a5);
            v192 = repeat_counts_0;
            if (*a5)
            {
              goto LABEL_437;
            }

            v25 = repeat_counts_0;
            if (HIDWORD(v184))
            {
              v49 = v184;
              v23 = v180;
              if (v184 != 0x1FFFFFFFFLL)
              {
                if (SHIDWORD(v184) <= 0)
                {
                  v50 = -v17;
                }

                else
                {
                  v50 = 3;
                }

                if (HIDWORD(v184) == 1)
                {
                  v51 = 0;
                }

                else
                {
                  v51 = v50;
                }

LABEL_262:
                v78 = v49 < 1;
                v103 = v22 + v17 + v51;
                if (v78)
                {
                  v22 = v103 + 1;
                }

                else
                {
                  v22 = v103 + 3;
                }

LABEL_265:
                v20 = digitab;
                v21 = v174;
                if (repeat_counts_0[1] == 63)
                {
                  v192 = repeat_counts_0 + 1;
                  v25 = repeat_counts_0 + 1;
                }

                goto LABEL_58;
              }
            }

            else
            {
              v49 = v184;
              v23 = v180;
              if (v184 != -1 && v184 != 1)
              {
                v51 = -v17;
                goto LABEL_262;
              }
            }

            ++v22;
            goto LABEL_265;
          case '|':
            v18 = 0;
            v22 += v177 + 3;
            goto LABEL_67;
        }
      }

      else
      {
        switch(v26)
        {
          case '?':
            goto LABEL_57;
          case '[':
            v45 = v24 + 2;
            v46 = v24[2];
            v192 = v24 + 2;
            if (v46 == 94)
            {
              v46 = v24[3];
              v192 = v24 + 3;
              v47 = 10;
              v45 = v24 + 3;
            }

            else
            {
              v47 = 0;
            }

            if (!v46)
            {
LABEL_435:
              v159 = "missing terminating ] for character class";
              goto LABEL_436;
            }

            v172 = v47;
            v174 = v21;
            v55 = 0;
            v167 = v188;
            v179 = v194;
            v168 = v23 & 1;
            if (v23)
            {
              v56 = 127;
            }

            else
            {
              v56 = 255;
            }

            v169 = v56;
            v170 = 0;
            v57 = 1;
LABEL_111:
            v58 = v55;
            while (v57)
            {
              if (v46 != 92)
              {
                if (v46 == 91)
                {
                  v60 = v45 + 2;
                  if (v45[2] == 94)
                  {
                    v60 = v45 + 3;
                  }

                  do
                  {
                    v62 = *v60++;
                    v61 = v62;
                  }

                  while ((v167[v62] & 2) != 0);
                  if (v61 == v45[1] && *v60 == 93)
                  {
                    v58 = 0;
                    v192 = v60;
                    goto LABEL_195;
                  }
                }

                goto LABEL_131;
              }

              v59 = check_escape(&v192, a5, v179, v23, 1);
              if (*a5)
              {
                goto LABEL_437;
              }

              v46 = v59;
              if (v59 != -19)
              {
                v23 = v180;
                if (v59 == -15)
                {
                  v46 = 88;
                }

                else
                {
                  if (v59 == -4)
                  {
                    v46 = 8;
                    goto LABEL_147;
                  }

                  if (v59 < 0)
                  {
                    if ((v59 & 0xFFFFFFFE) == 0xFFFFFFF2)
                    {
                      v58 = 0;
                      v68 = v22 + 4;
                      if (v170)
                      {
                        v68 = v22;
                      }

                      v22 = v68 + 2;
LABEL_193:
                      v170 = 1;
                      v172 = 10;
                      goto LABEL_196;
                    }

                    v58 = 0;
LABEL_195:
                    v172 = 10;
                    goto LABEL_196;
                  }
                }

LABEL_147:
                v69 = v192;
                if (v192[1] == 45)
                {
                  v70 = v192 + 2;
                  v71 = v192[2];
                  if (v192[2] && v71 != 93)
                  {
                    if (v71 == 92)
                    {
                      v192 += 2;
                      v72 = check_escape(&v192, a5, v179, v23, 1);
                      if (*a5)
                      {
                        goto LABEL_437;
                      }

                      v71 = v72;
                      if (v72 == -15)
                      {
                        v71 = 88;
                        v23 = v180;
                        goto LABEL_170;
                      }

                      v23 = v180;
                      if (v72 == -4)
                      {
                        v71 = 8;
LABEL_170:
                        if (v71 >= v46)
                        {
                          if ((a4 & 0x800) != 0)
                          {
                            v78 = v168 && v71 > 0x7F;
                            v79 = v78;
                            if (v71 > 0xFF || v79)
                            {
                              if (!v170)
                              {
                                v22 += 4;
                              }

                              if (!v168)
                              {
LABEL_221:
                                v92 = ord2utf8(v46, &v183);
                                v22 += v92 + ord2utf8(v71, &v183) + 1;
                                v170 = 1;
                                v172 = 10;
                                v23 = v180;
                                goto LABEL_196;
                              }

                              v182 = 0;
                              v84 = v71;
                              v181 = v46;
LABEL_201:
                              v166 = v84 + 1;
                              v173 = v84;
                              while (1)
                              {
                                for (i = v22; ; i += v89 + v90 + 1)
                                {
                                  do
                                  {
                                    if (!get_othercase_range(&v181, v71, &v182 + 1, &v182))
                                    {
                                      v22 = i;
                                      v71 = v173;
                                      goto LABEL_221;
                                    }

                                    v86 = v182;
                                    v85 = HIDWORD(v182);
                                  }

                                  while (SHIDWORD(v182) >= v46 && v182 <= v173);
                                  if (SHIDWORD(v182) < v46 && v182 >= v46 - 1)
                                  {
                                    break;
                                  }

                                  if (v182 > v173 && SHIDWORD(v182) <= v166)
                                  {
                                    v84 = v182;
                                    v22 = i;
                                    goto LABEL_201;
                                  }

                                  v89 = ord2utf8(SHIDWORD(v182), &v183);
                                  if (v85 == v86)
                                  {
                                    v90 = 0;
                                  }

                                  else
                                  {
                                    v91 = v89;
                                    v90 = ord2utf8(v86, &v183);
                                    v89 = v91;
                                  }
                                }

                                v46 = HIDWORD(v182);
                                v22 = i;
                              }
                            }
                          }

                          goto LABEL_195;
                        }

LABEL_456:
                        v159 = "range out of order in character class";
                        goto LABEL_436;
                      }
                    }

                    else
                    {
                      v192 += 2;
                      if ((a4 & 0x800) == 0)
                      {
                        if (v46 <= v71)
                        {
                          goto LABEL_195;
                        }

                        goto LABEL_456;
                      }

                      if ((~v71 & 0xC0) != 0)
                      {
                        v73 = 0;
                      }

                      else
                      {
                        v73 = utf8_table4[v71 & 0x3F];
                        v71 = (utf8_table3[v73] & v71) << (6 * v73);
                        v74 = (v69 + 3);
                        if (v73 <= 1)
                        {
                          v75 = 1;
                        }

                        else
                        {
                          v75 = v73;
                        }

                        v76 = 6 * v73 - 6;
                        do
                        {
                          v77 = *v74++;
                          v71 |= (v77 & 0x3F) << v76;
                          v76 -= 6;
                          --v75;
                        }

                        while (v75);
                      }

                      v192 = &v70[v73];
                    }

                    if ((v71 & 0x80000000) == 0)
                    {
                      goto LABEL_170;
                    }
                  }

                  v192 = v69;
                }

                if ((a4 & 0x800) != 0 && v46 > v169)
                {
                  if (v170)
                  {
                    v81 = v22;
                  }

                  else
                  {
                    v81 = v22 + 4;
                  }

                  v82 = ord2utf8(v46, &v183);
                  v23 = v180;
                  v22 = ((v82 + 1) << v168) + v81;
                  goto LABEL_193;
                }

                ++v172;
LABEL_196:
                v83 = v192;
                v45 = v192 + 1;
                v46 = *++v192;
                if (!v46)
                {
                  goto LABEL_435;
                }

                v57 = v58 == 0;
                v55 = 1;
                if (!v58)
                {
                  v55 = 0;
                  if (v46 == 93)
                  {
                    if (v172 == 1)
                    {
                      v18 = 0;
                      v22 += 3;
                      v36 = 2;
                      goto LABEL_100;
                    }

                    if (v83[2] == 123 && is_counted_repeat(v83 + 3))
                    {
                      v126 = read_repeat_counts_0(v83 + 3, &v184 + 1, &v184, a5);
                      v192 = v126;
                      if (*a5)
                      {
                        goto LABEL_437;
                      }

                      if (HIDWORD(v184))
                      {
                        v127 = HIDWORD(v184) == 1 && v184 == -1;
                      }

                      else
                      {
                        v127 = ((v184 + 1) & 0xFFFFFFFD) == 0;
                      }

                      if (v127)
                      {
                        v147 = 34;
                      }

                      else
                      {
                        v147 = 38;
                      }

                      v22 += v147;
                      v150 = v126[1];
                      v148 = v126 + 1;
                      v149 = v150;
                      if (v150 == 63)
                      {
                        v18 = 0;
                        v192 = v148;
                      }

                      else
                      {
                        v18 = 0;
                        if (v149 == 43)
                        {
                          v192 = v148;
                          v22 += 6;
                        }
                      }

                      v36 = 2;
                    }

                    else
                    {
                      v18 = 0;
                      v36 = 2;
                      v22 += 33;
                    }

LABEL_99:
                    v23 = v180;
LABEL_100:
                    v20 = digitab;
                    v21 = v174;
                    goto LABEL_400;
                  }
                }

                goto LABEL_111;
              }

              v57 = 0;
              v45 = v192 + 1;
              v46 = *++v192;
              v58 = 1;
              v23 = v180;
              if (!v46)
              {
                goto LABEL_435;
              }
            }

            if (v46 == 92 && v45[1] == 69)
            {
              v58 = 0;
              v192 = v45 + 1;
              goto LABEL_196;
            }

LABEL_131:
            if ((a4 & 0x800) != 0)
            {
              if ((~v46 & 0xC0) != 0)
              {
                v63 = 0;
              }

              else
              {
                v63 = utf8_table4[v46 & 0x3F];
                v46 = (utf8_table3[v63] & v46) << (6 * v63);
                v64 = (v45 + 1);
                if (v63 <= 1)
                {
                  v65 = 1;
                }

                else
                {
                  v65 = v63;
                }

                v66 = 6 * v63 - 6;
                do
                {
                  v67 = *v64++;
                  v46 |= (v67 & 0x3F) << v66;
                  v66 -= 6;
                  --v65;
                }

                while (v65);
              }

              v192 = &v45[v63];
            }

            goto LABEL_147;
          case '\\':
            v33 = v21;
            v34 = v20;
            v35 = check_escape(&v192, a5, v194, v23, 0);
            if (*a5)
            {
              goto LABEL_437;
            }

            if ((v35 & 0x80000000) == 0)
            {
              v18 = 0;
              v22 += 2;
              v36 = 2;
              v17 = 1;
              v23 = v180;
              if ((a4 & 0x800) != 0)
              {
                v20 = v34;
                v21 = v33;
                if (v35 < 0x80)
                {
                  goto LABEL_400;
                }

                for (j = 0; j != 6; ++j)
                {
                  if (v35 <= utf8_table1[j])
                  {
                    break;
                  }
                }

                v18 = 0;
                v22 += j;
                v17 = j + 1;
                goto LABEL_67;
              }

LABEL_244:
              v20 = v34;
              v21 = v33;
              goto LABEL_400;
            }

            if (v35 + 14 < 2)
            {
              if ((get_ucp_0(&v192, &v183, a5) & 0x80000000) != 0)
              {
                goto LABEL_437;
              }

              v18 = 0;
              v22 += 2;
              v17 = 2;
              goto LABEL_242;
            }

            v23 = v180;
            v20 = v34;
            v21 = v33;
            if (v35 == -19)
            {
              v36 = 2;
              v17 = 1;
              v18 = 1;
              goto LABEL_400;
            }

            v17 = 1;
            if (v35 > 0xFFFFFFEC)
            {
              v18 = 0;
              ++v22;
              goto LABEL_67;
            }

            v105 = -20 - v35;
            v106 = 1 << (-20 - v35);
            if (v35 <= 0xFFFFFFCC)
            {
              v106 = 1;
            }

            v107 = DWORD1(v191) | v106;
            if (v105 <= v191)
            {
              v105 = v191;
            }

            *&v191 = __PAIR64__(v107, v105);
            v108 = v192;
            if (v192[1] != 123)
            {
              v18 = 0;
              v36 = 2;
              v22 += 3;
              goto LABEL_244;
            }

            if (is_counted_repeat(v192 + 2))
            {
              v109 = read_repeat_counts_0(v108 + 2, &v184 + 1, &v184, a5);
              v192 = v109;
              if (*a5)
              {
                goto LABEL_437;
              }

              if (HIDWORD(v184))
              {
                v110 = HIDWORD(v184) == 1 && v184 == -1;
              }

              else
              {
                v110 = ((v184 + 1) & 0xFFFFFFFD) == 0;
              }

              if (v110)
              {
                v143 = 4;
              }

              else
              {
                v143 = 8;
              }

              v22 += v143;
              v145 = v109[1];
              v144 = v109 + 1;
              v18 = 0;
              if (v145 == 63)
              {
                v192 = v144;
              }

LABEL_242:
              v36 = 2;
            }

            else
            {
              v18 = 0;
              v36 = 2;
              v22 += 3;
            }

            v23 = v180;
            goto LABEL_244;
        }
      }

      goto LABEL_71;
    }

    if (v26 > 41)
    {
      if ((v26 - 42) < 2)
      {
LABEL_57:
        ++v22;
        goto LABEL_58;
      }

      if (v26 == 46)
      {
LABEL_69:
        v18 = 0;
        ++v22;
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    if (v26 == 36)
    {
      goto LABEL_69;
    }

    if (v26 == 40)
    {
      break;
    }

    if (v26 == 41)
    {
      v22 += 3;
      if (HIDWORD(v177))
      {
        v30 = v22 - *(&v195[26] + (HIDWORD(v177) - 1));
        LODWORD(v177) = *(&v195[1] + --HIDWORD(v177));
      }

      else
      {
        HIDWORD(v177) = 0;
        v30 = 0;
      }

LABEL_226:
      v93 = v25 + 1;
      v94 = v25[1];
      if (v94 <= 0x3E)
      {
        if (v94 == 42)
        {
          v184 = 0xFFFFFFFFLL;
          ++v22;
          goto LABEL_249;
        }

        if (v94 == 43)
        {
          v184 = 0x1FFFFFFFFLL;
LABEL_249:
          ++v25;
          v192 = v93;
          goto LABEL_58;
        }

LABEL_245:
        v184 = 0x100000001;
        goto LABEL_58;
      }

      if (v94 == 63)
      {
        v99 = 1;
        v184 = 1;
        v192 = v25 + 1;
        ++v22;
        ++v25;
      }

      else
      {
        if (v94 != 123)
        {
          goto LABEL_245;
        }

        v95 = v20;
        v96 = v21;
        v97 = is_counted_repeat(v25 + 2);
        v21 = v96;
        v20 = v95;
        v23 = v180;
        if (!v97)
        {
          goto LABEL_245;
        }

        v98 = read_repeat_counts_0(v25 + 2, &v184 + 1, &v184, a5);
        v192 = v98;
        if (*a5)
        {
          goto LABEL_437;
        }

        v25 = v98;
        v99 = v184;
        if (HIDWORD(v184))
        {
          if (v184 > SHIDWORD(v184))
          {
            v22 = v22 + (HIDWORD(v184) - 1) * v30 + (v184 - HIDWORD(v184)) * (v30 + 7) - 6;
          }

          else
          {
            v22 += (HIDWORD(v184) - 1) * v30;
          }

          v23 = v180;
          v20 = v95;
          v21 = v96;
          goto LABEL_58;
        }

        ++v22;
        v23 = v180;
        v20 = v95;
        v21 = v96;
        if (v184 < 1)
        {
LABEL_58:
          v39 = v25[1];
          v38 = v25 + 1;
          if (v39 == 43)
          {
            v18 = 0;
            v192 = v38;
            v22 += 6;
          }

          else
          {
LABEL_60:
            v18 = 0;
          }

          goto LABEL_67;
        }
      }

      v22 += (v99 - 1) * (v30 + 7);
      goto LABEL_58;
    }

LABEL_71:
    v22 += 2;
    v36 = 2;
    v17 = 1;
    if ((a4 & 0x800) != 0 && v26 >= 0xC0)
    {
      v40 = v24[2] & 0xC0;
      while (v40 == 128)
      {
        ++v17;
        ++v22;
        v40 = v25[2] & 0xC0;
        ++v25;
      }

LABEL_66:
      v192 = v25;
      goto LABEL_67;
    }

LABEL_400:
    if (v36 != 2)
    {
      goto LABEL_437;
    }
  }

  if (v24[2] != 63)
  {
    v52 = 0;
    if ((v23 & 0x1000) != 0)
    {
      v54 = 3;
    }

    else
    {
      v53 = v194++;
      if (v53 <= 99)
      {
        v54 = 3;
      }

      else
      {
        v54 = 6;
      }
    }

    v100 = HIDWORD(v177);
    goto LABEL_296;
  }

  HIDWORD(v182) = 0;
  v183 = 0;
  v25 = v24 + 3;
  v41 = v24[3];
  if (v41 > 0x39)
  {
    if (v24[3] <= 0x42u)
    {
      if (v41 - 61 < 2 || v41 == 58)
      {
LABEL_293:
        v52 = 0;
        v192 = v24 + 3;
        goto LABEL_294;
      }

      if (v41 == 60)
      {
        v102 = v24[4];
        v101 = v102;
        v192 = v24 + 4;
        if (v102 == 61 || v101 == 33)
        {
          v22 += 3;
          v52 = 3;
          goto LABEL_294;
        }

        v104 = "unrecognized character after (?<";
        goto LABEL_268;
      }

      goto LABEL_314;
    }

    if (v41 == 82)
    {
      v42 = v24[4];
      v25 = v24 + 4;
      goto LABEL_80;
    }

    if (v41 != 80)
    {
      if (v41 == 67)
      {
        do
        {
          v112 = *++v25;
          v111 = v112;
        }

        while ((v20[v112] & 4) != 0);
        v192 = v25;
        if (v111 == 41)
        {
          v22 += 6;
          goto LABEL_350;
        }

        v104 = "closing) for (?C expected";
        goto LABEL_268;
      }

      goto LABEL_314;
    }

    v119 = v24[4];
    v118 = v24 + 4;
    v117 = v119;
    v192 = v118;
    if ((v119 - 61) >= 2)
    {
      v128 = v21;
      if (v117 == 60)
      {
        v129 = -1;
        do
        {
          v131 = *++v118;
          v130 = v131;
          ++v129;
        }

        while ((v188[v131] & 0x10) != 0);
        v192 = v118;
        if (v130 == 62)
        {
          v52 = 0;
          v132 = v176;
          if (v129 > v176)
          {
            v132 = v129;
          }

          v176 = __PAIR64__(HIDWORD(v176), v132) + 0x100000000;
          goto LABEL_382;
        }

        v138 = "syntax error after (?P";
      }

      else
      {
        v138 = "unrecognized character after (?P";
      }

      goto LABEL_398;
    }

    do
    {
      v121 = *++v118;
      v120 = v121;
    }

    while ((v188[v121] & 0x10) != 0);
    v192 = v118;
    if (v120 == 41)
    {
      v52 = 0;
      v23 = v180;
      goto LABEL_294;
    }

    v137 = "syntax error after (?P";
LABEL_384:
    *a5 = v137;
    v36 = 8;
LABEL_385:
    v23 = v180;
    goto LABEL_399;
  }

  if (v24[3] > 0x2Fu)
  {
    do
    {
      v43 = *++v25;
      v42 = v43;
    }

    while ((v20[v43] & 4) != 0);
LABEL_80:
    v192 = v25;
    if (v42 == 41)
    {
      v44 = v25[1];
      if ((v44 - 42) < 2 || v44 == 63 || v44 == 123)
      {
        v22 += 9;
        v30 = 11;
        goto LABEL_226;
      }

      v22 += 3;
LABEL_350:
      v36 = 2;
LABEL_399:
      v18 = 0;
      goto LABEL_400;
    }

    v104 = "(?R or (?digits must be followed by)";
LABEL_268:
    *a5 = v104;
    v36 = 8;
    goto LABEL_399;
  }

  switch(v41)
  {
    case '!':
      goto LABEL_293;
    case '#':
      for (k = v24 + 4; *k; ++k)
      {
        if (*k == 41)
        {
          v192 = k;
          goto LABEL_350;
        }
      }

      v192 = k;
      v104 = "missing) after comment";
      goto LABEL_268;
    case '(':
      v113 = v24 + 4;
      v114 = v24[4];
      if (v114 == 82)
      {
        v116 = v24[5];
        v115 = v24 + 5;
        if (v116 == 41)
        {
          v52 = 0;
          v192 = v115;
          v22 += 3;
          goto LABEL_294;
        }

LABEL_366:
        v192 = v113;
        v104 = "assertion expected after (?(";
        goto LABEL_268;
      }

      v128 = v21;
      if ((v20[v24[4]] & 4) == 0)
      {
        v192 = v24 + 2;
        v23 = v180;
        if (v114 == 63)
        {
          v133 = v24[5];
          if (v133 <= 0x3D && ((1 << v133) & 0x3000000200000000) != 0)
          {
            v52 = 0;
            goto LABEL_294;
          }
        }

        goto LABEL_366;
      }

      v139 = v24 + 4;
      do
      {
        v141 = *++v139;
        v140 = v141;
      }

      while ((v20[v141] & 4) != 0);
      v22 += 3;
      v192 = v139;
      if (v140 == 41)
      {
        v52 = 0;
LABEL_382:
        v23 = v180;
        v100 = HIDWORD(v177);
        v21 = v128;
        goto LABEL_295;
      }

      v138 = "malformed number after (?(";
LABEL_398:
      *a5 = v138;
      v36 = 8;
      v23 = v180;
      v21 = v128;
      goto LABEL_399;
  }

LABEL_314:
  v183 = 0;
  v123 = &v183;
  while (2)
  {
    if (v41 > 0x68u)
    {
      if (v41 > 0x72u)
      {
        if (v41 == 115)
        {
          v124 = 4;
        }

        else
        {
          if (v41 != 120)
          {
            goto LABEL_383;
          }

          v124 = 8;
        }
      }

      else if (v41 == 105)
      {
        v124 = 1;
      }

      else
      {
        if (v41 != 109)
        {
          goto LABEL_383;
        }

        v124 = 2;
      }

LABEL_332:
      *v123 |= v124;
LABEL_333:
      v125 = *++v25;
      LOBYTE(v41) = v125;
      continue;
    }

    break;
  }

  if (v41 > 0x54u)
  {
    if (v41 == 85)
    {
      v124 = 512;
    }

    else
    {
      if (v41 != 88)
      {
        goto LABEL_383;
      }

      v124 = 64;
    }

    goto LABEL_332;
  }

  if (v41 == 45)
  {
    v123 = &v182 + 1;
    goto LABEL_333;
  }

  if (v41 == 41)
  {
    v192 = v25;
    v134 = BYTE4(v182);
    v135 = v183;
    if (!v21)
    {
      v180 = (v183 | v180) & ~HIDWORD(v182);
      HIDWORD(v182) = 0;
      v183 = 0;
      v21 = -1;
      v134 = 0;
      v135 = 0;
    }

    v136 = v134 | v135;
    if ((v136 & 7) != 0)
    {
      v22 += 4;
      v180 |= (v136 & 1) << 27;
      if (v177 == 3 || !v177)
      {
        LODWORD(v177) = v177 + 2;
      }
    }

    v36 = 2;
    goto LABEL_385;
  }

  if (v41 != 58)
  {
LABEL_383:
    v192 = v25;
    v137 = "unrecognized character after (?";
    goto LABEL_384;
  }

  v192 = v25;
  if (((BYTE4(v182) | v183) & 7) != 0)
  {
    v52 = 2;
  }

  else
  {
    v52 = 0;
  }

  if (((BYTE4(v182) | v183) & 7) != 0)
  {
    v22 += 4;
    v23 = (((BYTE4(v182) | v183) & 1) << 27) | v180;
  }

  else
  {
    v23 = v180;
  }

LABEL_294:
  v100 = HIDWORD(v177);
LABEL_295:
  v54 = 3;
LABEL_296:
  if (v100 <= 0xC7)
  {
    v18 = 0;
    *(&v195[1] + v100) = v177;
    *(&v195[26] + v100) = v22;
    v22 += v54;
    v36 = 2;
    LODWORD(v177) = v52;
    HIDWORD(v177) = v100 + 1;
    goto LABEL_400;
  }

  v159 = "parentheses nested too deeply";
LABEL_436:
  *a5 = v159;
LABEL_437:
  v14 = 0;
  *a6 = v192 - v178;
  return v14;
}

uint64_t valid_utf8(char *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    a2 = -1;
    v2 = a1;
    do
    {
      v3 = *v2++;
      ++a2;
    }

    while (v3);
  }

  if (a2 >= 1)
  {
    v4 = a1;
    do
    {
      v5 = a2 - 1;
      if (*v4 < 0)
      {
        v7 = *v4;
        if ((~v7 & 0xC0) != 0)
        {
          return (v4 - a1);
        }

        v8 = utf8_table4[*v4 & 0x3F];
        if (a2 <= v8)
        {
          return (v4 - a1);
        }

        v6 = v4 + 1;
        if ((v4[1] & 0xC0) != 0x80)
        {
          return (v6 - a1);
        }

        v5 -= v8;
        if (utf8_table4[*v4 & 0x3F] > 2u)
        {
          if (v8 == 3)
          {
            if (v7 == 240 && (v4[1] & 0x30) == 0)
            {
              return (v6 - a1);
            }
          }

          else if (v8 == 4)
          {
            if (v7 == 248 && (v4[1] & 0x38) == 0)
            {
              return (v6 - a1);
            }
          }

          else if (v8 == 5 && (v7 > 0xFD || v7 == 252 && (v4[1] & 0x3C) == 0))
          {
            return (v6 - a1);
          }

LABEL_31:
          LODWORD(v4) = 1 - a1 + v4;
          while (1)
          {
            v9 = __OFSUB__(v8--, 1);
            if ((v8 < 0) ^ v9 | (v8 == 0))
            {
              break;
            }

            v10 = *++v6;
            v4 = (v4 + 1);
            if ((v10 & 0xC0) != 0x80)
            {
              return v4;
            }
          }

          goto LABEL_8;
        }

        if (v8 != 1)
        {
          if (v8 == 2 && v7 == 224 && (v4[1] & 0x20) == 0)
          {
            return (v6 - a1);
          }

          goto LABEL_31;
        }

        if ((v7 & 0x3E) == 0)
        {
          return (v6 - a1);
        }
      }

      else
      {
        v6 = v4;
      }

LABEL_8:
      v4 = v6 + 1;
      a2 = v5;
    }

    while (v5 >= 1);
  }

  return 0xFFFFFFFFLL;
}

BOOL is_counted_repeat(unsigned __int8 *a1)
{
  if ((digitab[*a1] & 4) == 0)
  {
    return 0;
  }

  do
  {
    v2 = a1;
    v4 = *++a1;
    v3 = v4;
  }

  while ((digitab[v4] & 4) != 0);
  if (v3 != 44)
  {
    return v3 == 125;
  }

  v5 = v2[2];
  if (v5 == 125)
  {
    return 1;
  }

  if ((digitab[v5] & 4) == 0)
  {
    return 0;
  }

  v6 = 2;
  do
  {
    v7 = a1[v6++];
  }

  while ((digitab[v7] & 4) != 0);
  return v7 == 125;
}

uint64_t check_escape(void *a1, const char **a2, int a3, __int16 a4, int a5)
{
  v5 = *a1;
  v7 = (*a1 + 1);
  v6 = *v7;
  if (!*v7)
  {
    v9 = "\\ at end of pattern";
    goto LABEL_6;
  }

  if ((v6 - 123) >= 0xFFFFFFB5)
  {
    v8 = v6 - 48;
    if (escapes_0[(v6 - 48)])
    {
      v6 = escapes_0[v8];
      goto LABEL_7;
    }

    if ((v6 - 49) < 9)
    {
      if (a5)
      {
        goto LABEL_24;
      }

      v11 = v5[2];
      v12 = *a1 + 1;
      v13 = v6 - 48;
      if ((digitab[v5[2]] & 4) != 0)
      {
        v12 = *a1 + 1;
        v13 = v6 - 48;
        do
        {
          v13 = v11 + 10 * v13 - 48;
          v11 = *(v12 + 2);
          v14 = digitab[*(v12 + 2)];
          ++v12;
        }

        while ((v14 & 4) != 0);
      }

      if (v13 >= 10 && v13 > a3)
      {
LABEL_24:
        if (v6 > 0x37)
        {
          v6 = 0;
LABEL_26:
          v7 = v5;
          goto LABEL_7;
        }

LABEL_34:
        v19 = v5 + 3;
        v20 = 2;
        v21 = *a1 + 1;
        while (1)
        {
          v23 = *++v21;
          v22 = v23;
          if ((v23 & 0xF8) != 0x30)
          {
            break;
          }

          LOBYTE(v8) = v22 + 8 * v8 - 48;
          v7 = v21;
          if (!--v20)
          {
            v7 = v19;
            break;
          }
        }

        v6 = v8;
        goto LABEL_7;
      }

      v6 = (-20 - v13);
LABEL_20:
      v7 = v12;
      goto LABEL_7;
    }

    v16 = (v6 - 76);
    if (v16 <= 0x2C)
    {
      if (((1 << (v6 - 76)) & 0x20100000205) != 0)
      {
        v9 = "PCRE does not support \\L, \\l, \\N, \\U, or \\u";
        goto LABEL_6;
      }

      if (v16 == 23)
      {
        v24 = v5[2];
        v5 += 2;
        v6 = v24;
        if (!v24)
        {
          *a2 = "\\c at end of pattern";
          return v6;
        }

        if ((v6 - 97) < 0x1A)
        {
          LODWORD(v6) = v6 - 32;
        }

        v6 = v6 ^ 0x40;
        goto LABEL_26;
      }

      if (v16 == 44)
      {
        if ((a4 & 0x800) == 0 || v5[2] != 123)
        {
          goto LABEL_57;
        }

        v12 = (v5 + 3);
        v17 = v5[3];
        if ((digitab[v5[3]] & 8) != 0)
        {
          LODWORD(v6) = 0;
          v25 = -1;
          do
          {
            if (v17 > 0x60)
            {
              v17 -= 32;
            }

            v27 = *++v12;
            v26 = v27;
            v28 = v17 + 16 * v6;
            if (v17 >= 65)
            {
              v29 = -55;
            }

            else
            {
              v29 = -48;
            }

            v6 = (v28 + v29);
            v17 = v26;
            ++v25;
          }

          while ((digitab[v26] & 8) != 0);
          v18 = v25 > 7;
        }

        else
        {
          v6 = 0;
          v18 = 0;
        }

        if (v17 != 125)
        {
LABEL_57:
          v6 = 0;
          v5 += 3;
          v30 = 2;
          v31 = *a1 + 1;
          while (1)
          {
            v33 = *++v31;
            v32 = v33;
            if ((digitab[v33] & 8) == 0)
            {
              goto LABEL_7;
            }

            v34 = v32 - 32;
            if (v32 <= 0x60)
            {
              v34 = v32;
            }

            v35 = v34 + 16 * v6;
            if (v34 >= 65)
            {
              v36 = -55;
            }

            else
            {
              v36 = -48;
            }

            v6 = (v35 + v36);
            v7 = v31;
            if (!--v30)
            {
              goto LABEL_26;
            }
          }
        }

        if (v6 < 0 || v18)
        {
          *a2 = "character value in \\x{...} sequence is too large";
        }

        goto LABEL_20;
      }
    }

    if (v6 == 48)
    {
      goto LABEL_34;
    }

    if ((a4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    v9 = "unrecognized character follows \"";
LABEL_6:
    *a2 = v9;
  }

LABEL_7:
  *a1 = v7;
  return v6;
}

uint64_t get_ucp_0(void *a1, _DWORD *a2, const char **a3)
{
  v5 = *a1;
  v7 = (*a1 + 1);
  v6 = *v7;
  if (!*v7)
  {
LABEL_13:
    v15 = "malformed \\P or \\p sequence";
LABEL_22:
    *a3 = v15;
    *a1 = v7;
    return 0xFFFFFFFFLL;
  }

  *a2 = 0;
  if (v6 == 123)
  {
    v9 = *(v5 + 2);
    v8 = (v5 + 2);
    if (v9 == 94)
    {
      *a2 = 1;
      v7 = v8;
    }

    ++v7;
    p_s1 = &__s1;
    v11 = 3;
    while (1)
    {
      v12 = *v7;
      if (!*v7)
      {
        goto LABEL_13;
      }

      if (v12 == 125)
      {
        goto LABEL_15;
      }

      *p_s1++ = v12;
      ++v7;
      if (!--v11)
      {
        --v7;
        while (1)
        {
          v14 = *++v7;
          v13 = v14;
          if (!v14)
          {
            goto LABEL_13;
          }

          if (v13 == 125)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  __s1 = v6;
  p_s1 = v23;
LABEL_15:
  v16 = 0;
  *p_s1 = 0;
  *a1 = v7;
  v17 = 37;
  while (1)
  {
    v18 = (v17 + v16) / 2;
    v19 = &(&utt)[2 * v18];
    v20 = strcmp(&__s1, *v19);
    if (!v20)
    {
      return *(v19 + 2);
    }

    if (v20 <= 0)
    {
      v17 = (v17 + v16) / 2;
    }

    else
    {
      v16 = v18 + 1;
    }

    if (v16 >= v17)
    {
LABEL_21:
      v15 = "unknown property name after \\P or \\p";
      goto LABEL_22;
    }
  }
}

unsigned __int8 *read_repeat_counts_0(unsigned __int8 *result, int *a2, int *a3, const char **a4)
{
  v4 = *result;
  if ((digitab[*result] & 4) != 0)
  {
    v5 = 0;
    v6 = *result;
    do
    {
      v7 = *++result;
      v4 = v7;
      v5 = v6 + 10 * v5 - 48;
      v6 = v7;
    }

    while ((digitab[v7] & 4) != 0);
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 125)
  {
    v8 = v5;
  }

  else
  {
    v10 = *++result;
    v9 = v10;
    if (v10 == 125)
    {
      v8 = -1;
    }

    else
    {
      if ((digitab[v9] & 4) != 0)
      {
        v8 = 0;
        do
        {
          v11 = v9 + 10 * v8;
          v12 = *++result;
          v9 = v12;
          v8 = v11 - 48;
        }

        while ((digitab[v12] & 4) != 0);
      }

      else
      {
        v8 = 0;
      }

      if (v8 < v5)
      {
        v13 = "numbers out of order in {} quantifier";
        goto LABEL_19;
      }
    }
  }

  if (v5 < 0x10000 && v8 < 0x10000)
  {
    *a2 = v5;
    *a3 = v8;
    return result;
  }

  v13 = "number too big in {} quantifier";
LABEL_19:
  *a4 = v13;
  return result;
}

uint64_t get_othercase_range(int *a1, int a2, _DWORD *a3, unsigned int *a4)
{
  v16 = 0;
  v4 = *a1;
  if (*a1 > a2)
  {
    return 0;
  }

  v9 = a2 + 1;
  while (1)
  {
    v10 = ucp_findchar(v4, &v17, &v16);
    v11 = v16;
    if (v10 == 1 && v16 != 0)
    {
      break;
    }

    if (v9 == ++v4)
    {
      return 0;
    }
  }

  *a3 = v16;
  do
  {
    v14 = v11;
    v15 = v4 + 1;
    if (v4 >= a2)
    {
      break;
    }

    if (ucp_findchar(v4 + 1, &v17, &v16) != 1)
    {
      break;
    }

    v11 = v14 + 1;
    ++v4;
  }

  while (v14 + 1 == v16);
  *a4 = v14;
  *a1 = v15;
  return 1;
}

uint64_t ord2utf8(int a1, uint64_t a2)
{
  v2 = 0;
  v3 = utf8_table1;
  while (1)
  {
    v4 = *v3++;
    if (v4 >= a1)
    {
      break;
    }

    if (--v2 == -6)
    {
      v5 = (a2 + 6);
      v6 = 6;
      LODWORD(v7) = 6;
      goto LABEL_7;
    }
  }

  v6 = -v2;
  v5 = (a2 - v2);
  if (!v2)
  {
    LODWORD(v7) = 0;
    goto LABEL_9;
  }

  v7 = -v2;
LABEL_7:
  v8 = v7 + 1;
  do
  {
    *v5-- = a1 & 0x3F | 0x80;
    a1 >>= 6;
    --v8;
  }

  while (v8 > 1);
LABEL_9:
  *v5 = utf8_table2[4 * v6] | a1;
  return (v7 + 1);
}

uint64_t compile_regex_0(uint64_t a1, int a2, int *a3, unsigned __int8 **a4, unsigned __int8 **a5, const char **a6, int a7, int a8, int *a9, int *a10, uint64_t a11, uint64_t a12)
{
  v12 = a7;
  v13 = a2;
  v15 = 0;
  v379 = *MEMORY[0x1E69E9840];
  v16 = *a4;
  v17 = &(*a4)[a8];
  v18 = *a5;
  v365 = a11;
  v366 = v16;
  *(v16 + 1) = 0;
  v316 = v16;
  v323 = v16;
  v321 = -2;
  v322 = -2;
  while (2)
  {
    if ((a1 & 7) == v13)
    {
      v19 = v17 + 3;
    }

    else
    {
      v17[3] = 18;
      v19 = v17 + 5;
      v17[4] = a1 & 7;
    }

    if (v12)
    {
      v320 = v19 + 1;
      *v19 = 73;
      v19[2] = 0;
      v19 += 3;
    }

    else
    {
      v320 = v15;
    }

    v17 = 0;
    v20 = 0;
    v328 = 0;
    v363 = 0;
    v352 = 0;
    v373 = 0;
    v374 = 0;
    v21 = a1 & 0x800;
    v326 = (a1 >> 11) & 1;
    v372 = v18;
    v371 = 0;
    v336 = (a1 >> 9) & 1;
    v337 = 0;
    v329 = (a1 & 0x200) == 0;
    v356 = (a1 & 1) << 8;
    v22 = 4294967294;
    __src = 0;
    v23 = 4294967294;
    v361 = -2;
    v24 = 4294967294;
    v25 = a12;
    v355 = v21;
    while (1)
    {
      v369 = 0;
      v26 = *v18;
      if (v363 && *v18)
      {
        if (v26 == 92 && v18[1] == 69)
        {
          v363 = 0;
          v372 = v18 + 1;
          goto LABEL_569;
        }

        if (v17)
        {
          *(v17 + 2) = bswap32(v18 - *(v25 + 40) - (bswap32(*(v17 + 1)) >> 16)) >> 16;
        }

        if ((a1 & 0x4000) != 0)
        {
          v31 = v372;
          *v19 = -192;
          v19[2] = (v31 - *(v25 + 40)) >> 8;
          v19[3] = v31 - *(v25 + 40);
          *(v19 + 2) = 0;
          v17 = v19;
          v19 += 6;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_27;
      }

      v27 = 1;
      v357 = v24;
      if ((v26 - 42) >= 2 && v26 != 63)
      {
        if (v26 == 123)
        {
          v28 = v22;
          v29 = v23;
          v30 = is_counted_repeat(v18 + 1);
          v24 = v357;
          v21 = v355;
          v69 = !v30;
          v23 = v29;
          v22 = v28;
          v27 = !v69;
          if (v27)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v27 = 0;
        }

        if (v17)
        {
          if (v352 <= 0)
          {
            v27 = 0;
            *(v17 + 2) = bswap32(v18 - *(v25 + 40) - (bswap32(*(v17 + 1)) >> 16)) >> 16;
            --v352;
            v17 = 0;
            if ((a1 & 8) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_96;
          }

          v27 = 0;
          --v352;
        }
      }

LABEL_62:
      if ((a1 & 8) == 0)
      {
        goto LABEL_63;
      }

LABEL_96:
      if (*(*(v25 + 24) + v26))
      {
        goto LABEL_569;
      }

      if (v26 == 35)
      {
        v55 = v372;
        do
        {
          v57 = *++v55;
          v56 = v57;
          if (v57 == 10)
          {
            v372 = v55;
            goto LABEL_569;
          }
        }

        while (v56);
        v26 = 0;
        v372 = v55;
      }

LABEL_63:
      v45 = (a1 & 0x4000) != 0 ? v27 : 1;
      if (v45)
      {
        v362 = v17;
        v17 = v19;
      }

      else
      {
        v46 = v372;
        *v19 = -192;
        v19[2] = (v46 - *(v25 + 40)) >> 8;
        v19[3] = v46 - *(v25 + 40);
        *(v19 + 2) = 0;
        v17 = v19 + 6;
        v362 = v19;
      }

      if (v26 > 62)
      {
        break;
      }

      if (v26 > 41)
      {
        switch(v26)
        {
          case '*':
            HIDWORD(v374) = 0;
            break;
          case '+':
            HIDWORD(v374) = 1;
            break;
          case '.':
            if (v24 == -2)
            {
              v22 = 0xFFFFFFFFLL;
            }

            else
            {
              v22 = v24;
            }

            *v17 = 11;
            v19 = v17 + 1;
            goto LABEL_535;
          default:
            goto LABEL_421;
        }

        LODWORD(v374) = -1;
        goto LABEL_303;
      }

      if (v26 <= 39)
      {
        if (v26 == 36)
        {
          v20 = 0;
          v51 = 20;
LABEL_117:
          *v17++ = v51;
          goto LABEL_118;
        }

        if (v26)
        {
          goto LABEL_421;
        }

        goto LABEL_675;
      }

      if (v26 != 40)
      {
        goto LABEL_675;
      }

      v58 = v372;
      v59 = *++v372;
      if (v59 != 63)
      {
        if ((a1 & 0x1000) == 0)
        {
          goto LABEL_342;
        }

        v160 = 0;
        v161 = 80;
LABEL_386:
        v178 = a1;
        goto LABEL_449;
      }

      v368 = 0;
      v61 = v58 + 2;
      v60 = v58[2];
      v372 = v58 + 2;
      if (v60 <= 57)
      {
        if (v60 > 47)
        {
          goto LABEL_107;
        }

        switch(v60)
        {
          case '!':
            v160 = 0;
            v372 = v58 + 3;
            v161 = 70;
            goto LABEL_447;
          case '#':
            v269 = v58 + 2;
            do
            {
              v270 = *++v269;
            }

            while (v270 != 41);
            v372 = v269;
            v216 = 4;
            goto LABEL_496;
          case '(':
            v222 = v58 + 3;
            v223 = v58[3];
            if (v223 == 82)
            {
              *(v17 + 3) = -180;
              v17[5] = -1;
              v372 += 3;
              goto LABEL_654;
            }

            if (!digitab[v223])
            {
              v160 = 0;
              v161 = 75;
              goto LABEL_447;
            }

            v287 = v223 - 48;
            v289 = v58 + 4;
            v288 = v58[4];
            if (v288 != 41)
            {
              v222 = v58 + 3;
              do
              {
                v287 = v288 + 10 * v287 - 48;
                v288 = v222[2];
                ++v222;
              }

              while (v288 != 41);
              v289 = v222 + 1;
            }

            v372 = v289;
            if (v287)
            {
              v372 = v222 + 2;
              v17[3] = 76;
              v17[4] = BYTE1(v287);
              v17[5] = v287;
LABEL_654:
              v161 = 75;
              v160 = 3;
              goto LABEL_447;
            }

            *a6 = "invalid condition (?(0)";
            v337 = 75;
            v216 = 9;
LABEL_496:
            v19 = v17;
            v17 = v362;
            goto LABEL_581;
        }

        goto LABEL_609;
      }

      if (v60 <= 61)
      {
        switch(v60)
        {
          case ':':
            v160 = 0;
            v372 = v58 + 3;
            v161 = 80;
            goto LABEL_447;
          case '<':
            v268 = v58[3];
            v372 = v58 + 3;
            if (v268 != 33)
            {
              if (v268 == 61)
              {
                v160 = 0;
                v372 = v58 + 4;
                v161 = 71;
                goto LABEL_447;
              }

              v160 = 0;
              v178 = a1;
LABEL_659:
              v161 = v337;
LABEL_448:
              if (v161 < 74)
              {
                v20 = 0;
              }

              else
              {
LABEL_449:
                v20 = v17;
              }

              *v17 = v161;
              v373 = v17;
              v203 = *(v25 + 72);
              v337 = v161;
              v204 = compile_regex_0(v178, a1 & 7, a3, &v373, &v372, a6, (v161 - 71) < 2, v160, &v369, &v369 + 1, &v365, v25);
              v21 = v355;
              v205 = v357;
              if (!v204)
              {
                goto LABEL_710;
              }

              if (v337 == 75)
              {
                v206 = 1;
                do
                {
                  v17 += __rev16(*(v17 + 1));
                  --v206;
                }

                while (*v17 != 66);
                if (-v206 != 1 && v206 != 0)
                {
                  v309 = "conditional group contains more than two branches";
                  goto LABEL_709;
                }

                if (!v206)
                {
                  v369 = -1;
                }
              }

              if (v337 > 79 || (v337 & 0xFFFFFFFE) == 0x4A)
              {
                v17 = v362;
                if (v357 == -2)
                {
                  v207 = v369 >= 0;
                  if (v369 < 0)
                  {
                    v210 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v210 = v369;
                  }

                  v205 = 0xFFFFFFFFLL;
                  v209 = HIDWORD(v369);
                }

                else
                {
                  v207 = 0;
                  v209 = HIDWORD(v369);
                  if ((v369 & 0x80000000) == 0 && v369 < 0)
                  {
                    v207 = 0;
                    v209 = v369 | v203;
                    HIDWORD(v369) = v369 | v203;
                  }

                  v210 = v357;
                }

                if (v209 < 0)
                {
                  v209 = v361;
                }
              }

              else
              {
                v207 = 0;
                v208 = SHIDWORD(v369) > -1 && v337 == 69;
                v209 = v361;
                if (v208)
                {
                  v209 = HIDWORD(v369);
                }

                v210 = v357;
                v17 = v362;
              }

              if (*v372 == 41)
              {
                v328 = v207;
                v19 = v373;
                v22 = v205;
                v23 = v361;
                v361 = v209;
                v24 = v210;
                goto LABEL_569;
              }

              v309 = "missing)";
LABEL_709:
              *a6 = v309;
              goto LABEL_710;
            }

            v160 = 0;
            v372 = v58 + 4;
            v161 = 72;
LABEL_447:
            v178 = a1;
            goto LABEL_448;
          case '=':
            v160 = 0;
            v372 = v58 + 3;
            v161 = 69;
            goto LABEL_447;
        }

        goto LABEL_609;
      }

      if (v60 <= 79)
      {
        if (v60 == 62)
        {
          v160 = 0;
          v372 = v58 + 3;
          v161 = 74;
          goto LABEL_447;
        }

        if (v60 == 67)
        {
          *v17 = 64;
          v189 = v17 + 1;
          v190 = v372 + 1;
          v191 = v372[1];
          if ((digitab[v191] & 4) == 0)
          {
            LOBYTE(v192) = 0;
            ++v372;
LABEL_646:
            v20 = 0;
            v17[1] = v192;
            v17[2] = (v372 - *(v25 + 40) + 1) >> 8;
            v17[3] = v372 - *(v25 + 40) + 1;
            *(v17 + 2) = 0;
            v19 = v17 + 6;
            v352 = 1;
            v216 = 4;
            goto LABEL_581;
          }

          v192 = 0;
          do
          {
            v192 = v191 + 10 * v192 - 48;
            v286 = *++v190;
            LODWORD(v191) = v286;
          }

          while ((digitab[v286] & 4) != 0);
          v372 = v190;
          if (v192 < 256)
          {
            goto LABEL_646;
          }

          *a6 = "number after (?C is > 255";
          v352 = 1;
          v216 = 9;
          v362 = v17;
LABEL_670:
          v17 = v189;
          goto LABEL_496;
        }

        goto LABEL_609;
      }

      if (v60 == 80)
      {
        v260 = v58[3];
        v372 = v58 + 3;
        if ((v260 - 61) < 2)
        {
          v335 = v23;
          v350 = v22;
          v261 = a1;
          v262 = *(a12 + 48);
          v263 = v58 + 3;
          v264 = 0xFFFFFFFF00000000;
          do
          {
            v265 = *++v263;
            v264 += 0x100000000;
          }

          while (v265 != 41);
          v372 = v263;
          v266 = *(a12 + 56);
          if (v266 < 1)
          {
LABEL_600:
            *a6 = "reference to non-existent subpattern";
            v216 = 9;
            a1 = v261;
            v25 = a12;
            v21 = v355;
            v24 = v357;
            v22 = v350;
            v23 = v335;
            goto LABEL_496;
          }

          v267 = v264 >> 32;
          while (strncmp(v58 + 4, v262 + 2, v267))
          {
            v262 += *(a12 + 60);
            if (!--v266)
            {
              goto LABEL_600;
            }
          }

          v290 = *v262;
          v291 = *(v262 + 1);
          v62 = v291 | (v290 << 8);
          if (v260 != 62)
          {
            *v17 = 62;
            v17[1] = v290;
            v17[2] = v291;
            v189 = v17 + 3;
            v292 = 1 << v62;
            if (v62 >= 0x20)
            {
              v292 = 1;
            }

            v25 = a12;
            v293 = *(a12 + 64);
            *(a12 + 68) |= v292;
            a1 = v261;
            v21 = v355;
            v24 = v357;
            v22 = v350;
            v23 = v335;
            if (v62 > v293)
            {
              *(a12 + 64) = v62;
            }

            v216 = 4;
            v20 = v17;
            goto LABEL_670;
          }

          a1 = v261;
          v25 = a12;
          v21 = v355;
          v24 = v357;
          v22 = v350;
          v23 = v335;
LABEL_427:
          *v17 = 0;
          v197 = *(v25 + 32);
          if (v62)
          {
            for (i = *v197; i; v197 = v201)
            {
              if (i < 0x51)
              {
                v200 = OP_lengths[i];
                v201 = &v197[v200];
                if (v21)
                {
                  if (i - 24 < 9 || i - 21 < 2)
                  {
                    v201 = &v197[v200 - 1];
                    do
                    {
                      v202 = *++v201;
                      i = v202;
                    }

                    while ((v202 & 0xC0) == 0x80);
                    continue;
                  }

                  if (i == 61)
                  {
                    v201 += __rev16(*(v201 + 1)) + 1;
                  }
                }
              }

              else
              {
                if (i < 0xB5)
                {
                  v199 = i - 80;
                }

                else
                {
                  v199 = __rev16(*(v197 + 2));
                }

                if (v199 == v62)
                {
                  goto LABEL_493;
                }

                v201 = v197 + 3;
              }

              i = *v201;
            }

LABEL_495:
            *a6 = "reference to non-existent subpattern";
            v216 = 9;
            v20 = v17;
            goto LABEL_496;
          }

          if (!v197)
          {
            goto LABEL_495;
          }

LABEL_493:
          v331 = v23;
          v346 = v22;
          if (__rev16(*(v197 + 1)))
          {
LABEL_494:
            *v17 = 63;
            v17[1] = (v197 - *(v25 + 32)) >> 8;
            v17[2] = v197 - *(v25 + 32);
            v19 = v17 + 3;
            v216 = 4;
            v20 = v17;
          }

          else
          {
            v257 = &v365;
            do
            {
              v258 = v257[1];
              if (v258 < v197)
              {
                break;
              }

              v259 = could_be_empty_branch(v258, v17, v326);
              v24 = v357;
              v21 = v355;
              if (!v259)
              {
                goto LABEL_494;
              }

              v257 = *v257;
            }

            while (v257);
            *a6 = "recursive call could loop indefinitely";
            v216 = 9;
            v20 = v17;
            v19 = v17;
          }

          v17 = v362;
LABEL_580:
          v22 = v346;
          v23 = v331;
          goto LABEL_581;
        }

        if (v260 != 60)
        {
          v160 = 0;
          v178 = a1;
          v25 = a12;
          goto LABEL_659;
        }

        v341 = a1;
        v276 = *(a12 + 48);
        v277 = v58 + 4;
        v278 = 0x100000000;
        v279 = 0xFFFFFFFF00000000;
        v280 = v277;
        do
        {
          v281 = *v280++;
          v278 += 0x100000000;
          v279 += 0x100000000;
        }

        while (v281 != 62);
        v372 = v280;
        v282 = *(a12 + 56);
        v283 = v279 >> 32;
        v284 = v278 >> 32;
        if (v282 >= 1)
        {
          v331 = v23;
          v346 = v22;
          while (1)
          {
            v285 = memcmp(v277, v276 + 2, v283);
            if (!v285)
            {
              break;
            }

            if (v285 < 0)
            {
              goto LABEL_672;
            }

            v276 += *(a12 + 60);
            if (!--v282)
            {
              goto LABEL_673;
            }
          }

          if (!v276[v284])
          {
            *a6 = "two named groups have the same name";
            v216 = 9;
            v19 = v17;
            a1 = v341;
            v25 = a12;
            v21 = v355;
            v17 = v362;
            v24 = v357;
            goto LABEL_580;
          }

LABEL_672:
          memmove(&v276[*(a12 + 60)], v276, *(a12 + 60) * v282);
        }

LABEL_673:
        *v276 = (*a3 + 1) >> 8;
        v276[1] = *a3 + 1;
        memcpy(v276 + 2, v277, v283);
        v276[v284] = 0;
        v25 = a12;
        ++*(a12 + 56);
        a1 = v341;
LABEL_342:
        v159 = (*a3)++;
        if (v159 < 100)
        {
          v160 = 0;
          v161 = v159 + 81;
          goto LABEL_447;
        }

        v17[3] = 79;
        v17[4] = BYTE1(*a3);
        v17[5] = *a3;
        v160 = 3;
        v161 = 181;
        goto LABEL_386;
      }

      if (v60 == 82)
      {
        v60 = v58[3];
        v61 = v58 + 3;
LABEL_107:
        if ((digitab[v60] & 4) != 0)
        {
          v62 = 0;
          do
          {
            v195 = 10 * v62 + v60;
            v196 = *++v61;
            LOBYTE(v60) = v196;
            v62 = v195 - 48;
          }

          while ((digitab[v196] & 4) != 0);
        }

        else
        {
          v62 = 0;
        }

        v372 = v61;
        goto LABEL_427;
      }

LABEL_609:
      HIDWORD(v368) = 0;
      v271 = v58 + 3;
      v272 = &v368 + 1;
      while (v60 != 41 && v60 != 58)
      {
        if (v60 <= 104)
        {
          switch(v60)
          {
            case '-':
              v272 = &v368;
              goto LABEL_629;
            case 'U':
              v273 = *v272 | 0x200;
              break;
            case 'X':
              v273 = *v272 | 0x40;
              break;
            default:
              goto LABEL_629;
          }
        }

        else if (v60 > 114)
        {
          if (v60 == 115)
          {
            v273 = *v272 | 4;
          }

          else
          {
            if (v60 != 120)
            {
              goto LABEL_629;
            }

            v273 = *v272 | 8;
          }
        }

        else if (v60 == 105)
        {
          v273 = *v272 | 1;
        }

        else
        {
          if (v60 != 109)
          {
            goto LABEL_629;
          }

          v273 = *v272 | 2;
        }

        *v272 = v273;
LABEL_629:
        v274 = *v271++;
        v60 = v274;
      }

      v275 = v23;
      v372 = v271 - 1;
      v178 = (HIDWORD(v368) | a1) & ~v368;
      if (v60 != 41)
      {
        v160 = 0;
        v372 = v271;
        v161 = 80;
        goto LABEL_448;
      }

      if ((a1 & 7) != ((BYTE4(v368) | a1) & ~v368 & 7))
      {
        *v17 = 18;
        v17[1] = v178 & 7;
        v17 += 2;
      }

      v20 = 0;
      v336 = (v178 >> 9) & 1;
      v329 = (v178 & 0x200) == 0;
      v356 = (v178 & 1) << 8;
      v216 = 4;
      a1 = v178;
      v19 = v17;
      v17 = v362;
      v23 = v275;
LABEL_581:
      if (v216 != 4)
      {
LABEL_710:
        result = 0;
        *a5 = v372;
        return result;
      }

LABEL_569:
      v18 = ++v372;
    }

    if (v26 <= 93)
    {
      if (v26 != 63)
      {
        if (v26 != 91)
        {
          if (v26 == 92)
          {
            v47 = v23;
            v48 = v22;
            v49 = check_escape(&v372, a6, *a3, a1, 0);
            v50 = v49;
            if ((v49 & 0x80000000) == 0)
            {
              v21 = v355;
              if (v355 && v49 >= 0x80)
              {
                v34 = ord2utf8(v49, &v375);
                v21 = v355;
                v19 = v17;
                v17 = v362;
                v24 = v357;
                goto LABEL_33;
              }

              v375 = v49;
              v24 = v357;
              goto LABEL_39;
            }

            v21 = v355;
            v24 = v357;
            if (v49 != -19)
            {
              if (v49 + 15 >= 0xB)
              {
                v188 = -2;
              }

              else
              {
                v188 = -1;
              }

              if (v357 == -2)
              {
                v22 = v188;
              }

              else
              {
                v22 = v357;
              }

              if (v49 <= 0xFFFFFFEC)
              {
                *v17 = 62;
                v17[1] = (-20 - v49) >> 8;
                v17[2] = -20 - v49;
                v19 = v17 + 3;
                goto LABEL_535;
              }

              if ((v49 & 0xFFFFFFFE) == 0xFFFFFFF2)
              {
                HIDWORD(v368) = 0;
                v219 = v22;
                ucp_0 = get_ucp_0(&v372, &v368 + 1, a6);
                v21 = v355;
                if (HIDWORD(v368) == (v50 == -14))
                {
                  v221 = 13;
                }

                else
                {
                  v221 = 14;
                }

                *v17 = v221;
                v19 = v17 + 2;
                v17[1] = ucp_0;
                v22 = v219;
                v20 = v17;
                v23 = v361;
                v24 = v219;
                goto LABEL_537;
              }

              if (v49 + 15 >= 0xB)
              {
                v20 = 0;
              }

              else
              {
                v20 = v17;
              }

              *v17 = -v49;
              v19 = v17 + 1;
              goto LABEL_536;
            }

            if (v372[1] != 92)
            {
              v363 = 1;
              v19 = v17;
              v17 = v362;
              v22 = v48;
              v23 = v47;
              goto LABEL_569;
            }

            v22 = v48;
            v23 = v47;
            if (v372[2] == 69)
            {
              v372 += 2;
            }

            else
            {
              v363 = 1;
            }

LABEL_118:
            v19 = v17;
            goto LABEL_537;
          }

LABEL_421:
          v19 = v17;
          v17 = v362;
LABEL_27:
          v375 = v26;
          if (!v21 || (v26 & 0xC0) != 0xC0)
          {
            v362 = v17;
            v17 = v19;
            goto LABEL_39;
          }

          v32 = v372;
          v33 = v372[1];
          v34 = 1;
          if ((v33 & 0xC0) == 0x80)
          {
            v35 = v376;
            do
            {
              *v35++ = v33;
              v33 = v32[2];
              ++v34;
              ++v32;
            }

            while ((v33 & 0xC0) == 0x80);
          }

          v372 = v32;
LABEL_33:
          if (a1)
          {
            v36 = 22;
          }

          else
          {
            v36 = 21;
          }

          *v19 = v36;
          v37 = v19 + 1;
          if (v34 >= 1)
          {
            goto LABEL_43;
          }

          v38 = 0;
          goto LABEL_46;
        }

        v64 = v372;
        v67 = v372[1];
        v65 = v372 + 1;
        v66 = v67;
        v68 = (1 << v67) & 0x2400400000000000;
        v69 = v67 > 0x3D || v68 == 0;
        if (!v69)
        {
          v70 = v372 + 2;
          if (v372[2] == 94)
          {
            v70 = v372 + 3;
          }

          do
          {
            v72 = *v70++;
            v71 = v72;
          }

          while ((*(*(v25 + 24) + v72) & 2) != 0);
          if (v71 == v66 && *v70 == 93)
          {
            v309 = "POSIX collating elements are not supported";
            if (v66 == 58)
            {
              v309 = "POSIX named classes are supported only within a class";
            }

            goto LABEL_709;
          }
        }

        ++v372;
        LODWORD(v73) = v66;
        v330 = v66;
        if (v66 == 94)
        {
          LODWORD(v73) = v64[2];
          v372 = v64 + 2;
          v65 = v64 + 2;
        }

        v343 = 0;
        v74 = 0;
        v19 = v17 + 2;
        v75 = (v17 + 36);
        v377 = 0u;
        v378 = 0u;
        v76 = -1;
        v324 = v17 + 36;
        v338 = a1;
        while (2)
        {
          if (v21 && v73 < 0 && (v73 & 0xC0) == 0xC0)
          {
            v77 = utf8_table4[v73 & 0x3F];
            LODWORD(v73) = (utf8_table3[v77] & v73) << (6 * v77);
            v78 = (v65 + 1);
            if (v77 <= 1)
            {
              v79 = 1;
            }

            else
            {
              v79 = v77;
            }

            v80 = 6 * v77 - 6;
            do
            {
              v81 = *v78++;
              LODWORD(v73) = ((v81 & 0x3F) << v80) | v73;
              v80 -= 6;
              --v79;
            }

            while (v79);
            v65 += v77;
            v372 = v65;
          }

          if (v363)
          {
            if (v73 == 92)
            {
              v83 = v65[1];
              v82 = v65 + 1;
              if (v83 == 69)
              {
                goto LABEL_143;
              }

              LODWORD(v73) = 92;
              goto LABEL_188;
            }

LABEL_185:
            if (v21 && (v73 > 255 || (a1 & (v73 > 127)) != 0))
            {
              v343 = 1;
              *v75 = 1;
              v75 += ord2utf8(v73, (v75 + 1)) + 1;
              if ((a1 & 1) == 0)
              {
                goto LABEL_198;
              }

              LODWORD(v368) = 0;
              if ((ucp_findchar(v73, &v368 + 1, &v368) & 0x80000000) == 0 && v368 >= 1)
              {
                *v75 = 1;
                v75 += ord2utf8(v368, (v75 + 1)) + 1;
              }

              v24 = v357;
              v343 = 1;
LABEL_203:
              v21 = v355;
              goto LABEL_191;
            }

LABEL_188:
            v377.i8[v73 / 8] |= 1 << (v73 & 7);
            if (a1)
            {
              v73 = *(*(a12 + 8) + v73);
              v377.i8[v73 >> 3] |= 1 << (v73 & 7);
            }

            ++v74;
            v76 = v73;
LABEL_191:
            v105 = v372[1];
            v65 = v372 + 1;
            LODWORD(v73) = v105;
            ++v372;
            if (v105 == 93 && v363 == 0)
            {
              if (v74 == 1)
              {
                if (!v21 || (v330 == 94 ? (v157 = v76 < 128) : (v157 = 1), !v157 ? (v158 = 0) : (v158 = 1), !v343 && v158))
                {
                  if (v330 != 94)
                  {
                    v25 = a12;
                    if (v21 && v76 >= 128)
                    {
                      v34 = ord2utf8(v76, &v375);
                      v24 = v357;
                      v21 = v355;
                      v363 = 0;
                      v19 = v17;
                      v17 = v362;
                      goto LABEL_33;
                    }

                    v363 = 0;
                    v375 = v76;
LABEL_39:
                    if (a1)
                    {
                      v39 = 22;
                    }

                    else
                    {
                      v39 = 21;
                    }

                    *v17 = v39;
                    v37 = v17 + 1;
                    v34 = 1;
                    v19 = v17;
                    v17 = v362;
LABEL_43:
                    v40 = &v375;
                    v41 = v34;
                    do
                    {
                      v42 = *v40++;
                      v36 = v42;
                      *v37++ = v42;
                      --v41;
                    }

                    while (v41);
                    v38 = v34 == 1;
LABEL_46:
                    if (v356)
                    {
                      v43 = v38;
                    }

                    else
                    {
                      v43 = 1;
                    }

                    if (v24 == -2)
                    {
                      if (!v43)
                      {
                        v22 = 0xFFFFFFFFLL;
                        v20 = v19;
                        v19 = v37;
                        v23 = v361;
                        v361 = -1;
                        v24 = 0xFFFFFFFFLL;
                        goto LABEL_569;
                      }

                      v24 = v356 | v375;
                      if (!v38)
                      {
                        v23 = v361;
                        v44 = *(v25 + 72) | v36;
                        v22 = 0xFFFFFFFFLL;
                        v20 = v19;
                        v19 = v37;
                        goto LABEL_52;
                      }

                      v22 = 0xFFFFFFFFLL;
                      v20 = v19;
                      v19 = v37;
                    }

                    else
                    {
                      if (v43)
                      {
                        v23 = v361;
                        v44 = *(v25 + 72) | v356 | v36;
                        v20 = v19;
                        v19 = v37;
                        v22 = v24;
LABEL_52:
                        v361 = v44;
                        goto LABEL_569;
                      }

                      v20 = v19;
                      v19 = v37;
                      v22 = v24;
                    }

                    v23 = v361;
                    goto LABEL_569;
                  }

                  v363 = 0;
                  if (v24 == -2)
                  {
                    v22 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v22 = v24;
                  }

                  *v17 = 23;
                  v17[1] = v76;
                  v20 = v17;
                  v23 = v361;
                  v24 = v22;
                  v25 = a12;
LABEL_537:
                  v17 = v362;
                  goto LABEL_569;
                }
              }

              if (v24 == -2)
              {
                v22 = 0xFFFFFFFFLL;
              }

              else
              {
                v22 = v24;
              }

              if (v343)
              {
                *v75 = 0;
                v176 = (v75 + 1);
                *v17 = 61;
                v17[3] = v330 == 94;
                if (v74 < 1)
                {
                  v217 = v176 - v324;
                  v218 = v22;
                  memmove(v17 + 4, v324, v217);
                  v22 = v218;
                  v21 = v355;
                  v19 = &v17[v217 + 1 + 3];
                }

                else
                {
                  v17[3] = (v330 == 94) | 2;
                  v177 = v377;
                  *(v17 + 20) = v378;
                  *(v17 + 4) = v177;
                  v19 = v176;
                }

                v25 = a12;
                v363 = 0;
                *(v17 + 1) = bswap32(v19 - v17) >> 16;
              }

              else
              {
                v193 = (v17 + 1);
                v25 = a12;
                if (v330 == 94)
                {
                  v237 = 0;
                  *v17 = 60;
                  do
                  {
                    v193->i8[v237] = ~v377.i8[v237];
                    ++v237;
                  }

                  while (v237 != 32);
                }

                else
                {
                  *v17 = 59;
                  v194 = v378;
                  *v193 = v377;
                  *(v17 + 17) = v194;
                }

                v363 = 0;
                v19 = v17 + 33;
              }

LABEL_535:
              v20 = v17;
LABEL_536:
              v23 = v361;
              v24 = v22;
              goto LABEL_537;
            }

            continue;
          }

          break;
        }

        if (v73 != 92)
        {
          if (v73 == 91)
          {
            v84 = v65[1];
            LODWORD(v73) = 91;
            if (v84 <= 0x3D && ((1 << v84) & 0x2400400000000000) != 0)
            {
              v85 = 0;
              v88 = v65[2];
              v86 = v65 + 2;
              v87 = v88;
              if (v88 == 94)
              {
                v89 = v86 + 1;
              }

              else
              {
                v89 = v86;
              }

              do
              {
                v90 = v89[v85];
                v91 = *(*(a12 + 24) + v89[v85++]);
              }

              while ((v91 & 2) != 0);
              if (v90 == v84 && v89[v85] == 93)
              {
                if (v84 != 58)
                {
                  v309 = "POSIX collating elements are not supported";
                  goto LABEL_709;
                }

                v92 = 0;
                v93 = 0;
                v364 = *(a12 + 16);
                v372 = v89;
                while (posix_name_lengths_0[v93] + 1 != v85 || strncmp(v89, posix_names_0[v93], (v85 - 1)))
                {
                  ++v93;
                  v92 += 3;
                  if (v93 == 14)
                  {
                    v309 = "unknown POSIX class name";
                    goto LABEL_709;
                  }
                }

                v116 = strncmp(v89, "blank", 5uLL);
                v24 = v357;
                v21 = v355;
                v117 = 0;
                if ((v338 & (v93 < 3)) != 0)
                {
                  v118 = 0;
                }

                else
                {
                  v118 = v92;
                }

                while (2)
                {
                  if ((0x36DB6DB41B4uLL >> (v117 + v118)))
                  {
LABEL_250:
                    v363 = 0;
                    v372 = &v89[v85];
                    v74 = 10;
                    a1 = v338;
                    goto LABEL_191;
                  }

                  v119 = posix_class_maps_0[v117 + v118];
                  if (v87 == 94)
                  {
                    v120 = v364 + v119;
                    v121 = 0;
                    if (v117)
                    {
                      do
                      {
                        *(&v377 + v121) = vbicq_s8(*(&v377 + v121), *(v120 + v121));
                        v121 += 16;
                      }

                      while (v121 != 32);
                    }

                    else
                    {
                      do
                      {
                        *(&v377 + v121) = vornq_s8(*(&v377 + v121), *(v120 + v121));
                        v121 += 16;
                      }

                      while (v121 != 32);
                    }

                    if (!v116)
                    {
                      v122 = v377.i8[1] | 0x3C;
                      goto LABEL_248;
                    }
                  }

                  else
                  {
                    v123 = 0;
                    v124 = v364 + v119;
                    do
                    {
                      *(&v377 + v123) = vorrq_s8(*(&v377 + v123), *(v124 + v123));
                      v123 += 16;
                    }

                    while (v123 != 32);
                    if (!v116)
                    {
                      v122 = v377.i8[1] & 0xC3;
LABEL_248:
                      v377.i8[1] = v122;
                    }
                  }

                  if (++v117 == 3)
                  {
                    goto LABEL_250;
                  }

                  continue;
                }
              }

              LODWORD(v73) = 91;
              a1 = v338;
            }
          }

          goto LABEL_171;
        }

        v94 = check_escape(&v372, a6, *a3, a1, 1);
        if (v94 == -19)
        {
          v24 = v357;
          if (v372[1] == 92)
          {
            v82 = v372 + 2;
            v21 = v355;
            if (v372[2] != 69)
            {
              v363 = 1;
              goto LABEL_191;
            }

LABEL_143:
            v363 = 0;
            v372 = v82;
            goto LABEL_191;
          }

          v363 = 1;
          goto LABEL_203;
        }

        LODWORD(v73) = v94;
        v24 = v357;
        if (v94 == -4)
        {
          LODWORD(v73) = 8;
          v21 = v355;
          goto LABEL_171;
        }

        v21 = v355;
        if (v94 == -15)
        {
          LODWORD(v73) = 88;
          goto LABEL_171;
        }

        if ((v94 & 0x80000000) == 0)
        {
LABEL_171:
          v95 = v372;
          if (v372[1] != 45)
          {
            goto LABEL_185;
          }

          v353 = v75;
          v96 = a1;
          v98 = v372 + 2;
          v97 = v372[2];
          if (v97 != 93)
          {
            v372 += 2;
            if (v21 && (v97 & 0xC0) == 0xC0)
            {
              v99 = utf8_table4[v97 & 0x3F];
              LODWORD(v97) = (utf8_table3[v99] & v97) << (6 * v99);
              v100 = (v95 + 3);
              if (v99 <= 1)
              {
                v101 = 1;
              }

              else
              {
                v101 = v99;
              }

              v102 = 6 * v99 - 6;
              do
              {
                v103 = *v100++;
                v97 = ((v103 & 0x3F) << v102) | v97;
                v102 -= 6;
                --v101;
              }

              while (v101);
              v98 += v99;
              v372 = v98;
            }

            if (v97 != 92)
            {
              goto LABEL_183;
            }

            v104 = check_escape(&v372, a6, *a3, v96, 1);
            v24 = v357;
            v21 = v355;
            v97 = v104;
            if ((v104 & 0x80000000) == 0)
            {
              goto LABEL_183;
            }

            if (v104 == -4)
            {
              v97 = 8;
              goto LABEL_183;
            }

            if (v104 == -15)
            {
              v97 = 88;
LABEL_183:
              if (v97 != v73)
              {
                a1 = v96;
                if (v21)
                {
                  if (v97 > 255 || (v96 & (v97 > 127)) != 0)
                  {
                    if ((v96 & 1) == 0)
                    {
                      LODWORD(v108) = v97;
                      goto LABEL_278;
                    }

                    v368 = 0;
                    v108 = v97;
                    v367 = v73;
LABEL_259:
                    v127 = v108;
LABEL_260:
                    v108 = v127;
                    while (get_othercase_range(&v367, v97, &v368 + 1, &v368))
                    {
                      v127 = v368;
                      if (SHIDWORD(v368) < v73 || v368 > v108)
                      {
                        if (SHIDWORD(v368) < v73 && v368 >= v73 - 1)
                        {
                          LODWORD(v73) = HIDWORD(v368);
                          goto LABEL_259;
                        }

                        if (v368 <= v108 || SHIDWORD(v368) > v108 + 1)
                        {
                          v130 = (v353 + 1);
                          if (HIDWORD(v368) == v368)
                          {
                            *v353 = 1;
                          }

                          else
                          {
                            *v353 = 2;
                            v130 += ord2utf8(SHIDWORD(v368), v130);
                          }

                          v353 = (v130 + ord2utf8(v368, v130));
                          goto LABEL_259;
                        }

                        goto LABEL_260;
                      }
                    }

                    a1 = v96;
LABEL_278:
                    *v353 = 2;
                    v131 = &v353[ord2utf8(v73, (v353 + 1)) + 1];
                    v363 = 0;
                    v75 = (v131 + ord2utf8(v108, v131));
                    v343 = 1;
LABEL_198:
                    v21 = v355;
                    v24 = v357;
                    goto LABEL_191;
                  }
                }

                if (v73 <= v97)
                {
                  v109 = v73;
                  v76 = v73 - 1;
                  do
                  {
                    v110 = v76++;
                    if (v76 >= 0)
                    {
                      v111 = v110 + 1;
                    }

                    else
                    {
                      v111 = v110 + 8;
                    }

                    v377.i8[v111 >> 3] |= 1 << (v76 & 7);
                    if (v96)
                    {
                      v112 = *(*(a12 + 8) + v109);
                      v377.i8[v112 >> 3] |= 1 << (v112 & 7);
                    }

                    ++v109;
                  }

                  while (v97 != v76);
                  v363 = 0;
                  v74 = v97 + v74 + 1 - v73;
                }

                else
                {
                  v363 = 0;
                }

                v75 = v353;
                goto LABEL_191;
              }
            }

            else
            {
              v372 = v98 - 2;
            }
          }

          a1 = v96;
          v75 = v353;
          goto LABEL_185;
        }

        v113 = *(a12 + 16);
        if (v94 > -9)
        {
          if (v94 > -7)
          {
            if (v94 == -6)
            {
              v363 = 0;
              v137 = v113[4];
              v138 = v113[5];
              goto LABEL_295;
            }

            if (v94 != -5)
            {
              goto LABEL_297;
            }

            v132 = 0;
            v133 = v113 + 4;
            do
            {
              *(&v377 + v132 * 16) = vornq_s8(*(&v377 + v132 * 16), v133[v132]);
              ++v132;
            }

            while (v132 != 2);
LABEL_283:
            v363 = 0;
          }

          else
          {
            if (v94 == -8)
            {
              for (j = 0; j != 2; ++j)
              {
                *(&v377 + j * 16) = vorrq_s8(*(&v377 + j * 16), v113[j]);
              }

              v363 = 0;
              v126 = v377.i8[1] & 0xF7;
            }

            else
            {
              for (k = 0; k != 2; ++k)
              {
                *(&v377 + k * 16) = vornq_s8(*(&v377 + k * 16), v113[k]);
              }

              v363 = 0;
              v126 = v377.i8[1] | 8;
            }

            v377.i8[1] = v126;
          }
        }

        else
        {
          if ((v94 + 14) < 2)
          {
            HIDWORD(v368) = 0;
            v134 = get_ucp_0(&v372, &v368 + 1, a6);
            if (v134 < 0)
            {
              goto LABEL_710;
            }

            v363 = 0;
            if (HIDWORD(v368) == (v73 == -14))
            {
              v135 = 4;
            }

            else
            {
              v135 = 3;
            }

            *v75 = v135;
            v75[1] = v134;
            v75 += 2;
            v343 = 1;
            goto LABEL_198;
          }

          if (v94 != -10)
          {
            if (v94 == -9)
            {
              v114 = 0;
              v115 = v113 + 10;
              do
              {
                *(&v377 + v114 * 16) = vornq_s8(*(&v377 + v114 * 16), v115[v114]);
                ++v114;
              }

              while (v114 != 2);
              goto LABEL_283;
            }

LABEL_297:
            if ((a1 & 0x40) != 0)
            {
              v309 = "invalid escape sequence in character class";
              goto LABEL_709;
            }

            LODWORD(v73) = *v372;
            goto LABEL_171;
          }

          v363 = 0;
          v137 = v113[10];
          v138 = v113[11];
LABEL_295:
          v377 = vorrq_s8(v377, v137);
          v378 = vorrq_s8(v378, v138);
        }

        v74 += 2;
        goto LABEL_191;
      }

      v374 = 1;
LABEL_303:
      if (!v20)
      {
        v309 = "nothing to repeat";
        goto LABEL_709;
      }

      v139 = HIDWORD(v374) != v374;
      v140 = v361;
      if (!HIDWORD(v374))
      {
        v140 = v23;
      }

      v361 = v140;
      if (HIDWORD(v374))
      {
        v24 = v24;
      }

      else
      {
        v24 = v22;
      }

      v373 = v20;
      v141 = v372[1];
      if (v141 == 43)
      {
        v142 = 0;
        ++v372;
      }

      else
      {
        v142 = v336;
        if (v141 == 63)
        {
          ++v372;
          v142 = v329;
        }
      }

      v143 = *v20;
      if (v143 == 63)
      {
        *(v20 + 3) = *v20;
        v20[5] = v20[2];
        *v20 = 80;
        v144 = v17 + 3 - v20;
        v20[1] = HIBYTE(v144);
        v20[2] = v144;
        v17[3] = 66;
        v17[4] = HIBYTE(v144);
        v17[5] = v144;
        v17 += 6;
        v143 = *v20;
      }

      if (v143 - 21 < 2)
      {
        if (v21 && *(v17 - 1) < 0)
        {
          v339 = a1;
          v145 = v142;
          v146 = v141;
          v147 = v139;
          v148 = v23;
          v149 = v22;
          v150 = v24;
          v151 = 0;
          v152 = v17;
          do
          {
            v153 = *--v152;
            ++v151;
          }

          while ((v153 & 0xC0) == 0x80);
          __memcpy_chk();
          v154 = 0;
          v155 = v151 | 0x80;
          v143 = *v20;
          v21 = v355;
          v24 = v150;
          v22 = v149;
          v23 = v148;
          v139 = v147;
          v141 = v146;
          v142 = v145;
          a1 = v339;
        }

        else
        {
          v155 = *(v17 - 1);
          v154 = 0;
          if (SHIDWORD(v374) >= 2)
          {
            v361 = *(a12 + 72) | v155 | v356;
          }
        }

LABEL_345:
        if (v143 - 13 > 1)
        {
          v156 = -1;
        }

        else
        {
          v156 = v20[1];
        }

LABEL_348:
        v162 = v374;
        if (v374)
        {
          if (v374 != 1)
          {
            *(a12 + 76) = 1;
          }

          v163 = v154 + v142;
          if (HIDWORD(v374) != 1)
          {
            v354 = v139;
            if (!HIDWORD(v374))
            {
              v164 = v20 + 1;
              v17 = v362;
              if (v162 == 1)
              {
                v165 = v163 + 28;
LABEL_391:
                *v20 = v165;
                if (!v21)
                {
                  goto LABEL_562;
                }
              }

              else
              {
                if (v162 == -1)
                {
                  v165 = v163 + 24;
                  goto LABEL_391;
                }

                *v20 = v163 + 30;
                v20[1] = BYTE1(v374);
                v20[2] = v374;
                v164 = v20 + 3;
                if (!v21)
                {
LABEL_562:
                  *v164 = v155;
                  v175 = v164 + 1;
                  if ((v156 & 0x80000000) == 0)
                  {
                    goto LABEL_563;
                  }

                  goto LABEL_564;
                }
              }

LABEL_489:
              if (v155 < 128)
              {
                goto LABEL_562;
              }

              v211 = v155 & 7;
              v212 = v22;
              v213 = v141;
              v214 = v23;
              v215 = v24;
              memcpy(v164, &__src, v211);
              v23 = v214;
              v141 = v213;
              v22 = v212;
              v24 = v215;
              v21 = v355;
              v175 = &v164[v211];
              if ((v156 & 0x80000000) == 0)
              {
LABEL_563:
                *v175++ = v156;
              }

LABEL_564:
              if (v141 == 43)
              {
                v247 = v373;
                v248 = v175 - v373;
                v249 = v22;
                v250 = v23;
                v251 = v24;
                memmove(v373 + 3, v373, v175 - v373);
                v23 = v250;
                v22 = v249;
                v24 = v251;
                v21 = v355;
                *v247 = 74;
                v175[3] = 66;
                v175[4] = (v248 + 3) >> 8;
                v175[5] = v248 + 3;
                v20 = v175 + 6;
                *(v373 + 1) = bswap32(v248 + 3) >> 16;
              }

              else
              {
                v20 = v175;
              }

              v25 = a12;
              v139 = v354;
LABEL_568:
              v19 = v20;
              *(v25 + 72) |= v139 << 9;
              v20 = 0;
              goto LABEL_569;
            }

            *v20 = v154 | 0x20;
            v20[1] = BYTE5(v374);
            v20[2] = BYTE4(v374);
            v164 = v20 + 3;
            v17 = v362;
            if ((v374 & 0x80000000) != 0)
            {
              if (v21 && v155 >= 128)
              {
                v179 = v155 & 7;
                v345 = v22;
                v180 = v141;
                v181 = v23;
                v182 = v20 + 3;
                v183 = v24;
                v184 = v155;
                memcpy(v182, &__src, v179);
                v155 = v184;
                v23 = v181;
                v141 = v180;
                v22 = v345;
                v24 = v183;
                v21 = v355;
                v185 = &v164[v179];
              }

              else
              {
                v20[3] = v155;
                if (v156 < 0)
                {
                  v185 = v20 + 4;
                }

                else
                {
                  v185 = v20 + 5;
                  v20[4] = v156;
                }
              }

              *v185 = v163 + 24;
              v164 = v185 + 1;
              if (!v21)
              {
                goto LABEL_562;
              }

              goto LABEL_489;
            }

            if (v374 != HIDWORD(v374))
            {
              if (v21 && v155 >= 128)
              {
                v166 = v155 & 7;
                v344 = v22;
                v167 = v141;
                v168 = v23;
                v169 = v20 + 3;
                v170 = v24;
                v171 = v155;
                memcpy(v169, &__src, v166);
                v155 = v171;
                v23 = v168;
                v141 = v167;
                v22 = v344;
                v24 = v170;
                v21 = v355;
                v172 = &v164[v166];
                if (v156 < 0)
                {
LABEL_487:
                  LODWORD(v374) = v374 - HIDWORD(v374);
                  *v172 = v163 + 30;
                  v172[1] = BYTE1(v374);
                  v172[2] = v374;
                  v164 = v172 + 3;
                  goto LABEL_488;
                }
              }

              else
              {
                v172 = v20 + 4;
                v20[3] = v155;
                if (v156 < 0)
                {
                  goto LABEL_487;
                }
              }

              *v172++ = v156;
              goto LABEL_487;
            }

LABEL_488:
            if (!v21)
            {
              goto LABEL_562;
            }

            goto LABEL_489;
          }

          if (v162 != 1)
          {
            v354 = v139;
            if (v162 == -1)
            {
              *v20 = v163 + 26;
              v164 = v20 + 1;
            }

            else
            {
              *v17 = v163 + 30;
              v17[1] = (v374 - 1) >> 8;
              v17[2] = v374 - 1;
              v164 = v17 + 3;
            }

            v17 = v362;
            if (!v21)
            {
              goto LABEL_562;
            }

            goto LABEL_489;
          }

          v20 = v17;
        }

LABEL_394:
        v25 = a12;
        v17 = v362;
        goto LABEL_568;
      }

      if (v143 == 23)
      {
        v155 = v20[1];
        v156 = -1;
        v154 = 9;
        goto LABEL_348;
      }

      if (v143 <= 0xF)
      {
        v154 = 18;
        v155 = v143;
        goto LABEL_345;
      }

      if (v143 - 59 <= 3)
      {
        v173 = v374;
        if (!v374)
        {
          goto LABEL_394;
        }

        v354 = v139;
        if (v374 == 1)
        {
          if (HIDWORD(v374))
          {
            goto LABEL_369;
          }

          v238 = v142 + 55;
LABEL_587:
          *v17 = v238;
          v175 = v17 + 1;
        }

        else
        {
          *(a12 + 76) = 1;
          if (v173 == -1 && !HIDWORD(v374))
          {
            v238 = v142 + 51;
            goto LABEL_587;
          }

          if (v173 == -1 && HIDWORD(v374) == 1)
          {
            v238 = v142 + 53;
            goto LABEL_587;
          }

LABEL_369:
          *v17 = v142 + 57;
          v17[1] = BYTE5(v374);
          v17[2] = BYTE4(v374);
          v174 = v374;
          if (v374 == -1)
          {
            v174 = 0;
          }

          LODWORD(v374) = v174;
          v17[3] = BYTE1(v174);
          v17[4] = v374;
          v175 = v17 + 5;
        }

LABEL_591:
        v17 = v362;
        goto LABEL_564;
      }

      if (v143 <= 0x4F && (v143 & 0xFE) != 0x4A)
      {
        v309 = "internal error: unexpected repeat";
        goto LABEL_709;
      }

      v186 = v374;
      if (v374 == -1)
      {
        v224 = v20;
        do
        {
          v224 += __rev16(*(v224 + 1));
        }

        while (*v224 != 66);
        v187 = v224 - v17;
      }

      else
      {
        v187 = 0;
      }

      v225 = v17 - v20;
      v226 = HIDWORD(v374);
      if (HIDWORD(v374))
      {
        v354 = v139;
        v340 = a1;
        v175 = v17;
        if (SHIDWORD(v374) > 1)
        {
          v358 = v187;
          v332 = v142;
          v227 = v23;
          v347 = v22;
          v228 = v361;
          v229 = (v361 & 0x80000000) == 0 || !v328;
          v230 = v24;
          if (!v229)
          {
            v228 = v24;
          }

          v361 = v228;
          v231 = v225;
          v232 = 1;
          v175 = v17;
          do
          {
            memcpy(v175, v20, v231);
            v175 += v231;
            ++v232;
            v226 = HIDWORD(v374);
          }

          while (v232 < SHIDWORD(v374));
          v186 = v374;
          v21 = v355;
          v24 = v230;
          v22 = v347;
          v23 = v227;
          v142 = v332;
          v187 = v358;
          v225 = v17 - v20;
        }

        v233 = 0;
        if (v186 >= 1)
        {
          v186 -= v226;
          LODWORD(v374) = v186;
        }

        v239 = v20;
        if ((v186 & 0x80000000) == 0)
        {
          goto LABEL_546;
        }

LABEL_590:
        v175[v187] = v142 + 67;
        a1 = v340;
        goto LABEL_591;
      }

      if (!v374)
      {
        goto LABEL_394;
      }

      v359 = v187;
      v354 = v139;
      v333 = v23;
      v348 = v22;
      v234 = v24;
      v340 = a1;
      *v17 = 0;
      v235 = v225;
      if (v186 > 1)
      {
        adjust_recurse(v20, 4, v326, a12);
        v236 = v20 + 4;
        memmove(v20 + 4, v20, v235);
        v175 = v17 + 4;
        v233 = (v20 + 2);
        *(v20 + 1) = 80;
        v20[3] = 0;
      }

      else
      {
        adjust_recurse(v20, 1, v326, a12);
        v236 = v20 + 1;
        memmove(v20 + 1, v20, v235);
        v233 = 0;
        v175 = v17 + 1;
      }

      *v20 = v142 + 77;
      v186 = v374 - 1;
      LODWORD(v374) = v186;
      v21 = v355;
      v24 = v234;
      v22 = v348;
      v23 = v333;
      v187 = v359;
      v225 = v17 - v20;
      v239 = v236;
      if (v186 < 0)
      {
        goto LABEL_590;
      }

LABEL_546:
      if (v186)
      {
        v325 = v141;
        v334 = v23;
        v349 = v22;
        v360 = v24;
        v240 = v225;
        *v175 = v142 + 77;
        v241 = v175 + 1;
        v242 = v186 - 1;
        if (v186 != 1)
        {
          v243 = v175 + 2;
          v244 = v17 - v20 + 4;
          do
          {
            v245 = v243 - v233;
            if (!v233)
            {
              v245 = 0;
            }

            v241[1] = HIBYTE(v245);
            v233 = (v241 + 1);
            *v241 = 80;
            v241[2] = v245;
            v246 = v239;
            memcpy(v241 + 3, v239, v240);
            v239 = v246;
            v241 += v240 + 4;
            *(v241 - 1) = v142 + 77;
            v243 += v244;
            --v242;
          }

          while (v242);
          v233 = &v241[-v240 - 3];
        }

        memcpy(v241, v239, v240);
        v175 = &v241[v240];
        v21 = v355;
        v17 = v362;
        v24 = v360;
        v22 = v349;
        v23 = v334;
        v141 = v325;
        if (!v233)
        {
          goto LABEL_573;
        }

LABEL_571:
        v252 = v175 + 1;
        do
        {
          v253 = v252 - v233;
          v254 = &v175[-(v252 - v233)];
          v255 = *(v254 + 1);
          *v175 = 66;
          v256 = __rev16(v255);
          v175[1] = (v252 - v233) >> 8;
          v233 -= v256;
          v175[2] = v253;
          v175 += 3;
          v254[1] = HIBYTE(v253);
          v254[2] = v253;
          v252 += 3;
        }

        while (v256);
      }

      else
      {
        v17 = v362;
        if (v233)
        {
          goto LABEL_571;
        }
      }

LABEL_573:
      a1 = v340;
      goto LABEL_564;
    }

    if (v26 == 94)
    {
      v20 = 0;
      if (v24 == -2)
      {
        v63 = -1;
      }

      else
      {
        v63 = v24;
      }

      if ((a1 & 2) != 0)
      {
        v24 = v63;
      }

      else
      {
        v24 = v24;
      }

      v51 = 19;
      goto LABEL_117;
    }

    if (v26 == 123)
    {
      if ((v27 & 1) == 0)
      {
        v375 = 123;
        goto LABEL_39;
      }

      v52 = v22;
      v53 = v23;
      repeat_counts_0 = read_repeat_counts_0(v372 + 1, &v374 + 1, &v374, a6);
      LODWORD(v24) = v357;
      v21 = v355;
      v372 = repeat_counts_0;
      v23 = v53;
      v22 = v52;
      if (*a6)
      {
        goto LABEL_710;
      }

      goto LABEL_303;
    }

    if (v26 != 124)
    {
      goto LABEL_421;
    }

LABEL_675:
    v294 = v372;
    v295 = *v323;
    v297 = v321 < 0 || v321 == v24;
    if (v322 >= 0)
    {
      v298 = v322;
    }

    else
    {
      v298 = v321;
    }

    v299 = !v297;
    if (v297)
    {
      v300 = v321;
    }

    else
    {
      v300 = -1;
    }

    if (!v299)
    {
      v298 = v322;
    }

    if (v24 > -1 && (v300 & v361 & 0x80000000) != 0)
    {
      v302 = v24;
    }

    else
    {
      v302 = v361;
    }

    v303 = v302 ^ v298;
    v304 = v302 | v298;
    if ((v303 & 0xFFFFFDFF) != 0)
    {
      v304 = -1;
    }

    if (v295 == 65)
    {
      v305 = v300;
    }

    else
    {
      v305 = v24;
    }

    if (v295 == 65)
    {
      v306 = v304;
    }

    else
    {
      v306 = v361;
    }

    v321 = v305;
    v322 = v306;
    v12 = a7;
    v13 = a2;
    v15 = v320;
    if (!a7)
    {
LABEL_706:
      if (*v294 != 124)
      {
        v311 = v323;
        v312 = v17 - v323;
        do
        {
          v313 = __rev16(*(v311 + 1));
          *(v311 + 1) = bswap32(v312) >> 16;
          v311 -= v313;
          v312 = v313;
        }

        while (v313);
        *v17 = 66;
        v17[1] = (v17 - v316) >> 8;
        v17[2] = v17 - v316;
        v314 = v17 + 3;
        if ((a1 & 7) != a2 && *v294 == 41)
        {
          v17[3] = 18;
          v314 = v17 + 5;
          v17[4] = a2;
        }

        *a4 = v314;
        *a5 = v294;
        *a9 = v321;
        result = 1;
        *a10 = v322;
        return result;
      }

      *v17 = 65;
      v17[1] = (v17 - v323) >> 8;
      v17[2] = v17 - v323;
      v366 = v17;
      v18 = v294 + 1;
      v323 = v17;
      continue;
    }

    break;
  }

  *v17 = 0;
  fixedlength = find_fixedlength(v323, a1);
  v308 = fixedlength;
  if ((fixedlength & 0x80000000) == 0)
  {
    *v320 = bswap32(fixedlength) >> 16;
    goto LABEL_706;
  }

  result = 0;
  if (v308 == -2)
  {
    v315 = "\\C not allowed in lookbehind assertion";
  }

  else
  {
    v315 = "lookbehind assertion is not fixed length";
  }

  *a6 = v315;
  *a5 = v294;
  return result;
}

uint64_t is_anchored_0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = a4 & a3;
  while (1)
  {
    significant_code_0 = first_significant_code_0((a1 + 3), a2, 2, 0);
    v10 = *significant_code_0;
    v11 = *significant_code_0;
    if (v11 < 0x51)
    {
      break;
    }

    if (v11 < 0xB5)
    {
      v12 = v11 - 80;
    }

    else
    {
      v12 = __rev16(*(significant_code_0 + 2));
    }

    if (v12 >= 0x20)
    {
      v15 = 1;
    }

    else
    {
      v15 = 1 << v12;
    }

    v14 = v15 | a3;
    v13 = a2;
LABEL_14:
    if (!is_anchored_0(significant_code_0, v13, v14, a4))
    {
      return 0;
    }

LABEL_15:
    a1 += __rev16(*(a1 + 1));
    if (*a1 != 65)
    {
      return 1;
    }
  }

  if ((v10 & 0x7E) == 0x4A || *significant_code_0 == 80 || *significant_code_0 == 69)
  {
    v13 = a2;
    v14 = a3;
    goto LABEL_14;
  }

  if ((v10 & 0x7E) != 0x2A)
  {
    if ((v10 - 3) <= 0xFDu)
    {
      v16 = 0;
      if (*significant_code_0 != 19 || (*a2 & 2) != 0)
      {
        return v16;
      }
    }

    goto LABEL_15;
  }

  if ((*a2 & 4) != 0)
  {
    v16 = 0;
    if (v8 || significant_code_0[1] != 11)
    {
      return v16;
    }

    goto LABEL_15;
  }

  return 0;
}

uint64_t find_firstassertedchar(uint64_t a1, _DWORD *a2, int a3)
{
  v6 = 0xFFFFFFFFLL;
  do
  {
    significant_code_0 = first_significant_code_0((a1 + 3), a2, 1, 1);
    v8 = *significant_code_0;
    v9 = v8 >= 0x50 ? 80 : *significant_code_0;
    result = 0xFFFFFFFFLL;
    v11 = (v9 - 21);
    if (v11 > 0x3B)
    {
      break;
    }

    if (((1 << v11) & 0x63) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << v11) & 0x861000000000000) == 0)
    {
      if (v11 != 11)
      {
        return result;
      }

      significant_code_0 += 2;
LABEL_15:
      if (!a3)
      {
        return result;
      }

      v13 = significant_code_0[1];
      if ((v6 & 0x80000000) != 0)
      {
        v6 = v13 & 0xFFFFFEFF | ((*a2 & 1) << 8);
      }

      else if (v6 != v13)
      {
        return result;
      }

      goto LABEL_20;
    }

    firstassertedchar = find_firstassertedchar(significant_code_0, a2, v8 == 69);
    if ((firstassertedchar & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    if ((v6 & 0x80000000) != 0)
    {
      v6 = firstassertedchar;
    }

    else if (v6 != firstassertedchar)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_20:
    a1 += __rev16(*(a1 + 1));
    result = v6;
  }

  while (*a1 == 65);
  return result;
}

uint64_t is_startline_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & a2;
  while (1)
  {
    significant_code_0 = first_significant_code_0((a1 + 3), 0, 0, 0);
    v8 = *significant_code_0;
    v9 = *significant_code_0;
    if (v9 >= 0x51)
    {
      if (v9 < 0xB5)
      {
        v10 = v9 - 80;
      }

      else
      {
        v10 = __rev16(*(significant_code_0 + 2));
      }

      if (v10 >= 0x20)
      {
        v12 = 1;
      }

      else
      {
        v12 = 1 << v10;
      }

      v11 = v12 | a2;
LABEL_14:
      if (!is_startline_0(significant_code_0, v11, a3))
      {
        return 0;
      }

      goto LABEL_15;
    }

    if ((v8 & 0x7E) == 0x4A || *significant_code_0 == 80 || *significant_code_0 == 69)
    {
      v11 = a2;
      goto LABEL_14;
    }

    if ((v8 & 0x7E) == 0x2A)
    {
      v13 = 0;
      if (v6 || significant_code_0[1] != 11)
      {
        return v13;
      }

      goto LABEL_15;
    }

    if (*significant_code_0 != 19)
    {
      return 0;
    }

LABEL_15:
    a1 += __rev16(*(a1 + 1));
    if (*a1 != 65)
    {
      return 1;
    }
  }
}