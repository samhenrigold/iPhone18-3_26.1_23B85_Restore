uint64_t fe_unixlit_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62345, 984) & 0x80000000) != 0)
  {
    return 2321555464;
  }

  v3 = *(a1 + 56);

  return synstrmaux_CloseStreams((a1 + 64), v3);
}

uint64_t fe_unixlit_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2321555457;
  }

  result = 0;
  *a2 = &IFeUnixlit;
  return result;
}

uint64_t LhpuCreate(uint64_t a1)
{
  result = heap_Alloc(a1, 52);
  if (result)
  {
    *result = 0;
    *(result + 12) = 0;
    *(result + 18) = 0;
  }

  return result;
}

uint64_t LhpuRemove(void *a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      heap_Free(a1, v3);
      *a2 = 0;
    }
  }

  return 0;
}

uint64_t LhpuSetSymbol(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 9)
  {
    return 4294967294;
  }

  __strncpy_chk();
  result = 0;
  *(a1 + a3) = 0;
  *(a1 + 12) = 0;
  *(a1 + 18) = 0;
  return result;
}

uint64_t LhpuSetDurValue(uint64_t a1, char *a2)
{
  v4 = atoi(a2);
  *(a1 + 16) = v4;
  *(a1 + 12) = 1;
  v5 = *a2;
  if (!v4)
  {
    v7 = 0;
    if (v5 == 48)
    {
      return 0;
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  result = 0;
  v7 = 2;
  if (v5 == 45 || v5 == 43)
  {
LABEL_8:
    *(a1 + 12) = v7;
  }

  return result;
}

uint64_t LhpuAddBpTime(uint64_t a1, char *a2)
{
  v2 = *(a1 + 18);
  if (v2 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = atoi(a2);
  result = 0;
  v6 = a1 + 4 * v2;
  *(v6 + 22) = v4;
  *(v6 + 20) = 0;
  *(a1 + 18) = v2 + 1;
  return result;
}

uint64_t phonmapmrk_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2322604033;
  }

  result = 0;
  *a2 = &IPhonmapmrk;
  return result;
}

uint64_t phonmapmrk_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 2322604039;
  v18 = 0;
  v19 = 0;
  if (a5)
  {
    inited = InitRsrcFunction(a3, a4, &v19);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      log_OutText(*(v19 + 32), "PHONMAP", 4, 0, "Entering phonmapmrk_ObjOpen");
      v10 = heap_Calloc(*(v19 + 8), 1, 912);
      if (v10)
      {
        v11 = v10;
        v12 = v19;
        v10[1] = a4;
        v10[2] = v12;
        *v10 = a3;
        Object = objc_GetObject(*(v19 + 48), "SYNTHSTREAM", &v18);
        if ((Object & 0x80000000) != 0)
        {
          v5 = Object;
          log_OutPublic(*(v11[2] + 32), "PHONMAP", 45101, 0);
          *a5 = v11;
          *(a5 + 8) = 29349;
          phonmapmrk_ObjClose(v11, *(a5 + 8));
          v11 = 0;
          v16 = 0;
        }

        else
        {
          v11[109] = *(v18 + 8);
          v14 = objc_GetObject(*(v19 + 48), "PHONMAP", &v18);
          if ((v14 & 0x80000000) != 0)
          {
            log_OutPublic(*(v11[2] + 32), "PHONMAP", 45102, 0);
            v5 = 0;
          }

          else
          {
            v5 = v14;
            v15 = v18;
            v11[3] = *(v18 + 8);
            *(v11 + 2) = *(v15 + 16);
          }

          v16 = 29349;
        }

        *a5 = v11;
        *(a5 + 8) = v16;
        log_OutText(*(v19 + 32), "PHONMAP", 4, 0, "Leaving phonmapmrk_ObjOpen: %x", v5);
      }

      else
      {
        return 2322604042;
      }
    }
  }

  return v5;
}

uint64_t phonmapmrk_ObjClose(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 29349, 912);
  if ((v3 & 0x80000000) != 0)
  {
    return 2322604040;
  }

  v4 = v3;
  v5 = a1[2];
  log_OutText(*(v5 + 32), "PHONMAP", 4, 0, "Entering phonmapmrk_ObjClose");
  if (a1[109])
  {
    v6 = objc_ReleaseObject(*(v5 + 48), "SYNTHSTREAM");
    if (v6 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v6;
    }
  }

  if (a1[3])
  {
    v7 = objc_ReleaseObject(*(v5 + 48), "PHONMAP");
    if (v7 >= 0 || v4 <= -1)
    {
      v4 = v4;
    }

    else
    {
      v4 = v7;
    }
  }

  heap_Free(*(v5 + 8), a1);
  log_OutText(*(v5 + 32), "PHONMAP", 4, 0, "Leaving phonmapmrk_ObjClose: %x", v4);
  return v4;
}

uint64_t phonmapmrk_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 1;
  v9 = 0;
  if ((safeh_HandleCheck(a1, a2, 29349, 912) & 0x80000000) != 0)
  {
    return 2322604040;
  }

  synstrmaux_InitStreamOpener(a1 + 48, *(*(a1 + 16) + 32), "PHONMAP");
  if (!*(a1 + 32))
  {
    return 0;
  }

  result = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "markermode", &v9);
  if ((result & 0x80000000) == 0)
  {
    if ((v9 & 4) == 0 || (paramc_ParamGetInt(*(*(a1 + 16) + 40), "phonmapmrkenabled", &v8) & 0x80000000) == 0 && !v8)
    {
      return 0;
    }

    synstrmaux_RegisterInStream((a1 + 48), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 880);
    synstrmaux_RegisterOutStream((a1 + 48), "application/x-realspeak-markers-pp;version=4.0", a1 + 896);
    return synstrmaux_OpenStreams((a1 + 48), *(a1 + 872), a3, a4);
  }

  return result;
}

uint64_t phonmapmrk_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v7 = safeh_HandleCheck(a1, a2, 29349, 912);
  if ((v7 & 0x80000000) != 0)
  {
    return 2322604040;
  }

  v8 = v7;
  *a5 = 1;
  v9 = *(a1 + 880);
  if (v9)
  {
    v8 = (*(*(a1 + 872) + 144))(v9, *(a1 + 888), &v28 + 4, &v28);
    if ((v8 & 0x80000000) != 0)
    {
LABEL_10:
      log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45105, "%s%x", "lhError", v8);
      return v8;
    }

    if (HIDWORD(v28))
    {
      v10 = (*(*(a1 + 872) + 88))(*(a1 + 880), *(a1 + 888), &v27, &v28 + 4);
      if ((v10 & 0x80000000) != 0)
      {
        v8 = v10;
        log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45105, "%s%x", "lhError", v10);
        return v8;
      }

      v11 = (*(*(a1 + 872) + 112))(*(a1 + 896), *(a1 + 904), &v26, HIDWORD(v28));
      if ((v11 & 0x80000000) != 0)
      {
        v8 = v11;
        log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45106, "%s%x", "lhError", v11);
        (*(*(a1 + 872) + 96))(*(a1 + 880), *(a1 + 888), 0);
        return v8;
      }

      v12 = HIDWORD(v28);
      v13 = HIDWORD(v28) >> 5;
      HIDWORD(v28) >>= 5;
      if (v12 >= 0x20)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = (v26 + v14);
          v17 = (v27 + v14);
          v18 = *(v27 + v14 + 16);
          *v16 = *(v27 + v14);
          v16[1] = v18;
          if (*v17 == 33)
          {
            v24 = 0;
            *v16 = 38;
            v25[0] = v17[6];
            v25[1] = 0;
            v19 = (*(*(a1 + 24) + 64))(*(a1 + 32), *(a1 + 40), 0, v25, &v24, 0);
            if (v19 < 0)
            {
              log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45107, "%s%u%s%x", "phonemeID", *(v27 + v14 + 24), "lhError", v19);
              v20 = &szEMPTY;
            }

            else
            {
              v20 = v24;
            }

            *(v26 + v14 + 24) = v20;
            v13 = HIDWORD(v28);
          }

          ++v15;
          v14 += 32;
        }

        while (v15 < v13);
      }

      else
      {
        v14 = 0;
      }

      v21 = (*(*(a1 + 872) + 120))(*(a1 + 896), *(a1 + 904), v14);
      if ((v21 & 0x80000000) != 0)
      {
        v22 = v21;
        log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45106, "%s%x", "lhError", v21);
        (*(*(a1 + 872) + 96))(*(a1 + 880), *(a1 + 888), 0);
        return v22;
      }

      v8 = (*(*(a1 + 872) + 96))(*(a1 + 880), *(a1 + 888), v14);
      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_10;
      }
    }

    else if (v28)
    {
      return synstrmaux_CloseOutStreamsOnly((a1 + 48), *(a1 + 872));
    }

    else
    {
      *a5 = 0;
    }
  }

  return v8;
}

uint64_t phonmapmrk_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 29349, 912) & 0x80000000) != 0)
  {
    return 2322604040;
  }

  v3 = *(a1 + 872);

  return synstrmaux_CloseStreams((a1 + 48), v3);
}

uint64_t LhplGetSymbol(unsigned __int8 *a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v7 = a1;
  v8 = 0;
  k = a1;
  v10 = "0123456789+-";
  v11 = a1;
  v12 = "0123456789";
LABEL_2:
  v13 = k;
  while (1)
  {
    while (v8 > 1)
    {
      if (v8 == 2)
      {
        v14 = *v13;
        if (v14 <= 0x20)
        {
          if (v14 > 0xC)
          {
            if (v14 != 13 && v14 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            result = 0xFFFFFFFFLL;
            if (v14 < 9 || v14 == 12)
            {
              return result;
            }
          }

          v25 = v13 + 1;
          v24 = v13[1];
          if (v24 > 0x20)
          {
            if (v24 > 0x2C)
            {
              if (v24 != 45)
              {
LABEL_108:
                if (v24 - 48 >= 0xA)
                {
                  return 0xFFFFFFFFLL;
                }

                goto LABEL_109;
              }

LABEL_107:
              v32 = *++v25;
              v24 = v32;
              goto LABEL_108;
            }
          }

          else
          {
            if (v24 > 0xC)
            {
              if (v24 != 32 && v24 != 13)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else
            {
              result = 0xFFFFFFFFLL;
              if (v24 < 9 || v24 == 12)
              {
                return result;
              }
            }

            v25 = v13 + 2;
            v24 = v13[2];
            if (v24 <= 0x20)
            {
              do
              {
                if (v24 > 0xC)
                {
                  if (v24 != 13 && v24 != 32)
                  {
                    return 0xFFFFFFFFLL;
                  }
                }

                else
                {
                  result = 0xFFFFFFFFLL;
                  if (v24 < 9 || v24 == 12)
                  {
                    return result;
                  }
                }

                v31 = *++v25;
                v24 = v31;
              }

              while (v31 < 0x21);
            }

            if (v24 > 0x2C)
            {
              if (v24 != 45)
              {
                if (v24 - 48 > 9)
                {
                  return 0xFFFFFFFFLL;
                }

LABEL_109:
                ++v25;
                while (1)
                {
                  v24 = *v25;
                  if (v24 <= 0x1F)
                  {
                    break;
                  }

                  if (v24 <= 0x2C)
                  {
                    goto LABEL_154;
                  }

                  ++v25;
                  if (v24 - 48 >= 0xA)
                  {
                    return 0xFFFFFFFFLL;
                  }
                }

LABEL_85:
                if (v24 <= 0xB)
                {
                  if (v24 >= 9)
                  {
                    goto LABEL_213;
                  }

                  return 0xFFFFFFFFLL;
                }

                v29 = v24 == 13;
                goto LABEL_221;
              }

              goto LABEL_107;
            }
          }

          if (v24 != 43)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_107;
        }

        if (v14 <= 0x2C)
        {
          if (v14 != 43)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_57:
          v25 = v13;
          goto LABEL_107;
        }

        if (v14 == 45)
        {
          goto LABEL_57;
        }

        if (v14 - 48 >= 0xA)
        {
          return 0xFFFFFFFFLL;
        }

        v25 = v13 + 1;
        v24 = v13[1];
        if (v24 <= 0x1F)
        {
          goto LABEL_85;
        }

        if (v24 > 0x2C)
        {
          goto LABEL_108;
        }

LABEL_154:
        if (v24 == 32)
        {
          while (1)
          {
LABEL_213:
            while (1)
            {
              v24 = *++v25;
              if (v24 > 0xD)
              {
                break;
              }

              if (v24 < 9 || v24 == 12)
              {
                return 0xFFFFFFFFLL;
              }
            }

            v29 = v24 == 32;
            if (v24 > 0x20)
            {
              break;
            }

LABEL_221:
            if (!v29)
            {
              return 0xFFFFFFFFLL;
            }
          }
        }

        if (v24 != 44)
        {
          return 0xFFFFFFFFLL;
        }

        v52 = (v13 - 1);
        do
        {
          v53 = *++v52;
        }

        while (!memchr(v10, v53, 0xDuLL));
        v13 = v25 + 1;
        LhpuAddBpTime(a2, v52);
        v8 = 3;
      }

      else
      {
        v17 = *v13;
        if (v17 <= 0xD)
        {
          v18 = v17 < 9 || v17 == 12;
          if (v18)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_28:
          i = v13 + 1;
          v20 = v13[1];
          if (v20 > 0xD)
          {
            if (v20 > 0x20)
            {
LABEL_131:
              if (v20 - 48 >= 0xA)
              {
                return 0xFFFFFFFFLL;
              }

              goto LABEL_132;
            }

            if (v20 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            result = 0xFFFFFFFFLL;
            if (v20 < 9 || v20 == 12)
            {
              return result;
            }
          }

          for (i = v13 + 2; ; ++i)
          {
            v22 = *i;
            if (v22 > 0xD)
            {
              if (v22 > 0x20)
              {
                if (v22 - 48 > 9)
                {
                  return 0xFFFFFFFFLL;
                }

LABEL_132:
                ++i;
                while (1)
                {
                  v20 = *i;
                  if (v20 <= 0x1F)
                  {
                    break;
                  }

                  if (v20 <= 0x29)
                  {
                    goto LABEL_129;
                  }

                  ++i;
                  if (v20 - 48 >= 0xA)
                  {
                    return 0xFFFFFFFFLL;
                  }
                }

LABEL_60:
                if (v20 <= 0xB)
                {
                  if (v20 < 9)
                  {
                    return 0xFFFFFFFFLL;
                  }

                  goto LABEL_188;
                }

                v28 = v20 == 13;
                goto LABEL_196;
              }

              if (v22 != 32)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else if (v22 < 9 || v22 == 12)
            {
              return 0xFFFFFFFFLL;
            }
          }
        }

        if (v17 <= 0x20)
        {
          if (v17 != 32)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_28;
        }

        if (v17 - 48 >= 0xA)
        {
          return 0xFFFFFFFFLL;
        }

        i = v13 + 1;
        v20 = v13[1];
        if (v20 <= 0x1F)
        {
          goto LABEL_60;
        }

        if (v20 > 0x29)
        {
          goto LABEL_131;
        }

LABEL_129:
        if (v20 == 32)
        {
          while (1)
          {
LABEL_188:
            while (1)
            {
              v20 = *++i;
              if (v20 > 0xD)
              {
                break;
              }

              if (v20 < 9 || v20 == 12)
              {
                return 0xFFFFFFFFLL;
              }
            }

            v28 = v20 == 32;
            if (v20 > 0x20)
            {
              break;
            }

LABEL_196:
            if (!v28)
            {
              return 0xFFFFFFFFLL;
            }
          }
        }

        if (v20 != 41)
        {
          return 0xFFFFFFFFLL;
        }

        for (j = i + 2; ; ++j)
        {
          v48 = *(j - 1);
          if (v48 <= 0x1F)
          {
            if (v48 > 0xB)
            {
              if (v48 != 13)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else if (v48 < 9)
            {
              return 0xFFFFFFFFLL;
            }

            continue;
          }

          if (v48 > 0x28)
          {
            if (v48 != 93)
            {
              return 0xFFFFFFFFLL;
            }

            --v13;
            do
            {
              v75 = *++v13;
            }

            while (!memchr("0123456789", v75, 0xBuLL));
            LhpuSetBpPitch(a2, v13);
            LOBYTE(v13) = v11;
            goto LABEL_408;
          }

          if (v48 != 32)
          {
            break;
          }
        }

        if (v48 != 40)
        {
          return 0xFFFFFFFFLL;
        }

        v49 = (v13 - 1);
        do
        {
          v50 = *++v49;
        }

        while (!memchr(v12, v50, 0xBuLL));
        LhpuSetBpPitch(a2, v49);
        v8 = 2;
        v13 = j;
      }
    }

    if (v8 != 1)
    {
      v54 = *v13;
      if (v54 > 0x2D)
      {
        if (v54 > 0x4A)
        {
          result = 0xFFFFFFFFLL;
          if (v54 > 0x5D)
          {
            if (v54 == 96 || v54 > 0x7A)
            {
              return result;
            }
          }

          else if (v54 == 75 || v54 > 0x5A)
          {
            return result;
          }
        }

        else if (v54 > 0x39)
        {
          result = 0xFFFFFFFFLL;
          if (v54 < 0x3F || v54 == 70)
          {
            return result;
          }
        }

        else if (v54 != 46 && v54 < 0x37)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (v54 <= 0x20)
        {
          if (v54 > 0xB)
          {
            if (v54 != 13 && v54 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            if (!*v13)
            {
              return 1;
            }

            if (v54 < 9)
            {
              return 0xFFFFFFFFLL;
            }
          }

          for (k = v13 + 1; ; ++k)
          {
            v55 = *k;
            if (v55 > 0xC)
            {
              if (v55 != 32 && v55 != 13)
              {
LABEL_262:
                v8 = 0;
                v11 = v13;
                goto LABEL_2;
              }
            }

            else if (v55 < 9 || v55 == 12)
            {
              goto LABEL_262;
            }
          }
        }

        if (v54 > 0x26)
        {
          if (v54 != 39)
          {
            if (v54 != 42)
            {
              return 0xFFFFFFFFLL;
            }

            j = v13 + 1;
            v76 = v13[1];
            if (v76 > 0x2D)
            {
              if (v76 > 0x3B)
              {
                v77 = v76 == 63;
                goto LABEL_424;
              }

              if (v76 != 46 && v76 <= 0x39)
              {
                return 0xFFFFFFFFLL;
              }

LABEL_427:
              ++j;
            }

            else
            {
              v77 = v76 == 33;
              if (v76 > 0x21)
              {
                if (v76 != 44)
                {
                  return 0xFFFFFFFFLL;
                }

                goto LABEL_427;
              }

LABEL_424:
              if (!v77)
              {
                return 0xFFFFFFFFLL;
              }

              j = v13 + 2;
              if (v13[2] == 92)
              {
                goto LABEL_427;
              }
            }

LABEL_428:
            LhpuSetSymbol(a2, v13, j - v13);
LABEL_408:
            result = 0;
            *a3 = v13 - v7;
            *a4 = j + ~v7;
            return result;
          }
        }

        else
        {
          result = 0xFFFFFFFFLL;
          if (v54 == 33 || v54 > 0x24)
          {
            return result;
          }
        }
      }

      for (j = v13 + 1; ; ++j)
      {
        v58 = *j;
        if (v58 > 0x3C)
        {
          if (v58 > 0x5B)
          {
            if (v58 > 0x7A)
            {
              if (v58 == 124 || v58 >= 0x7F)
              {
                goto LABEL_428;
              }
            }

            else if (v58 != 96 && v58 != 92)
            {
              goto LABEL_428;
            }
          }

          else if (v58 > 0x46)
          {
            if (v58 != 75)
            {
              goto LABEL_398;
            }
          }

          else if (v58 != 62 && v58 != 70)
          {
            goto LABEL_428;
          }
        }

        else if (v58 > 0x2B)
        {
          if (v58 > 0x36)
          {
            if (v58 != 58 && v58 != 60)
            {
              goto LABEL_428;
            }
          }

          else if (v58 != 45 && v58 < 0x30)
          {
            goto LABEL_428;
          }
        }

        else if (v58 > 0x24)
        {
          if (v58 == 37)
          {
            do
            {
              v59 = j[1];
              if (v59 > 0x22)
              {
                if (v59 == 37)
                {
                  goto LABEL_428;
                }

                v62 = j;
                if (v59 >= 0x7F)
                {
                  goto LABEL_428;
                }
              }

              else
              {
                if (v59 < 0x21)
                {
                  goto LABEL_428;
                }

                if (v59 == 34)
                {
                  v60 = j + 2;
                  v61 = j[2];
                  if (v61 > 0x22)
                  {
                    if (v61 == 37 || v61 > 0x7E)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v61 != 33)
                  {
                    goto LABEL_428;
                  }

                  do
                  {
                    while (1)
                    {
                      v63 = v60[1];
                      if (v63 <= 0x22)
                      {
                        break;
                      }

                      if (v63 != 37)
                      {
                        ++v60;
                        if (v63 < 0x7F)
                        {
                          continue;
                        }
                      }

                      goto LABEL_428;
                    }

                    if (v63 < 0x21)
                    {
                      goto LABEL_428;
                    }

                    v62 = v60++;
                  }

                  while (v63 != 34);
                }

                else
                {
                  v62 = j;
                }
              }

              v58 = v62[2];
              j = v62 + 2;
              if (v58 > 0x26)
              {
                goto LABEL_398;
              }

              if (v58 < 0x25)
              {
                goto LABEL_428;
              }
            }

            while (v58 != 38);
LABEL_384:
            while (2)
            {
              v69 = j[1];
              if (v69 > 0x3E)
              {
                if (v69 > 0x5A)
                {
                  if (v69 > 0x5F)
                  {
                    if (v69 == 96 || v69 > 0x7A)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v69 < 0x5E)
                  {
                    goto LABEL_428;
                  }
                }

                else
                {
                  v71 = v69 == 70;
                  if (v69 > 0x46)
                  {
                    v71 = v69 == 75;
                  }

                  if (v71)
                  {
                    goto LABEL_428;
                  }
                }
              }

              else if (v69 > 0x27)
              {
                v70 = v69 == 46;
                if (v69 <= 0x2E)
                {
                  goto LABEL_396;
                }

                if (v69 - 55 >= 3)
                {
                  goto LABEL_428;
                }
              }

              else
              {
                if (v69 < 0x22)
                {
                  goto LABEL_428;
                }

                if (v69 >= 0x25)
                {
                  v70 = v69 == 39;
LABEL_396:
                  if (!v70)
                  {
                    goto LABEL_428;
                  }
                }
              }

              j += 2;
              while (2)
              {
                v58 = *j;
                if (v58 > 0x3C)
                {
                  if (v58 > 0x5B)
                  {
                    if (v58 > 0x7A)
                    {
                      if (v58 == 124 || v58 >= 0x7F)
                      {
                        goto LABEL_428;
                      }
                    }

                    else if (v58 != 92 && v58 != 96)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v58 > 0x46)
                  {
                    if (v58 != 75)
                    {
                      goto LABEL_398;
                    }
                  }

                  else if (v58 != 62 && v58 != 70)
                  {
                    goto LABEL_428;
                  }

                  goto LABEL_361;
                }

                if (v58 > 0x2B)
                {
                  if (v58 > 0x36)
                  {
                    if (v58 != 58 && v58 != 60)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v58 != 45 && v58 < 0x30)
                  {
                    goto LABEL_428;
                  }

                  goto LABEL_361;
                }

                if (v58 <= 0x24)
                {
                  if (v58 != 33)
                  {
                    goto LABEL_428;
                  }

LABEL_361:
                  ++j;
                  continue;
                }

                break;
              }

              if (v58 != 37)
              {
                if (v58 < 0x27)
                {
                  continue;
                }

                if (v58 != 43)
                {
                  goto LABEL_428;
                }

                goto LABEL_361;
              }

              break;
            }

            while (1)
            {
              v67 = j[1];
              if (v67 > 0x22)
              {
                if (v67 == 37)
                {
                  goto LABEL_428;
                }

                v65 = j;
                if (v67 > 0x7E)
                {
                  goto LABEL_428;
                }
              }

              else
              {
                if (v67 < 0x21)
                {
                  goto LABEL_428;
                }

                if (v67 == 34)
                {
                  v66 = j + 2;
                  v68 = j[2];
                  if (v68 > 0x22)
                  {
                    if (v68 == 37 || v68 > 0x7E)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v68 != 33)
                  {
                    goto LABEL_428;
                  }

                  do
                  {
                    while (1)
                    {
                      v64 = v66[1];
                      if (v64 <= 0x22)
                      {
                        break;
                      }

                      if (v64 != 37)
                      {
                        ++v66;
                        if (v64 < 0x7F)
                        {
                          continue;
                        }
                      }

                      goto LABEL_428;
                    }

                    if (v64 < 0x21)
                    {
                      goto LABEL_428;
                    }

                    v65 = v66++;
                  }

                  while (v64 != 34);
                }

                else
                {
                  v65 = j;
                }
              }

              v58 = v65[2];
              j = v65 + 2;
              if (v58 > 0x26)
              {
                break;
              }

              if (v58 < 0x25)
              {
                goto LABEL_428;
              }

              if (v58 == 38)
              {
                goto LABEL_384;
              }
            }

LABEL_398:
            if (v58 != 91)
            {
              goto LABEL_428;
            }

            k = j + 1;
            LhpuSetSymbol(a2, v13, j - v13);
            v8 = 1;
            v11 = v13;
            goto LABEL_2;
          }

          if (v58 < 0x27)
          {
            goto LABEL_384;
          }

          if (v58 != 43)
          {
            goto LABEL_428;
          }
        }

        else if (v58 != 33)
        {
          goto LABEL_428;
        }
      }
    }

    v16 = *v13;
    if (v16 > 0x27)
    {
      break;
    }

    if (v16 > 0xC)
    {
      if (v16 != 13 && v16 != 32)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      result = 0xFFFFFFFFLL;
      if (v16 < 9 || v16 == 12)
      {
        return result;
      }
    }

    v21 = v13 + 1;
    v26 = v13[1];
    if (v26 > 0x27)
    {
      if (v26 > 0x2C)
      {
        if (v26 != 45)
        {
          if (v26 - 48 >= 0xA)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_165;
        }

        goto LABEL_141;
      }
    }

    else
    {
      if (v26 > 0xC)
      {
        if (v26 != 32 && v26 != 13)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        result = 0xFFFFFFFFLL;
        if (v26 < 9 || v26 == 12)
        {
          return result;
        }
      }

      v21 = v13 + 2;
      v26 = v13[2];
      if (v26 <= 0x27)
      {
        do
        {
          if (v26 > 0xC)
          {
            if (v26 != 13 && v26 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            result = 0xFFFFFFFFLL;
            if (v26 < 9 || v26 == 12)
            {
              return result;
            }
          }

          v33 = *++v21;
          v26 = v33;
        }

        while (v33 < 0x28);
      }

      if (v26 > 0x2C)
      {
        if (v26 != 45)
        {
          if (v26 - 48 > 9)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_165;
        }

        goto LABEL_141;
      }
    }

    if (v26 != 40)
    {
      if (v26 != 43)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_141:
      v34 = v21[1];
      v27 = v21 + 1;
      if ((v34 - 48) > 9)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_142:
      v21 = v27 + 1;
      while (1)
      {
        v30 = *v21;
        if (v30 <= 0x20)
        {
          break;
        }

        if (v30 <= 0x2F)
        {
          goto LABEL_157;
        }

        ++v21;
        if (v30 >= 0x3A)
        {
          goto LABEL_400;
        }
      }

      if (v30 > 0xC)
      {
        if (v30 != 32 && v30 != 13)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_179;
      }

      goto LABEL_171;
    }

LABEL_158:
    v78 = v11;
    v36 = v10;
    v37 = v7;
    v38 = v12;
    v39 = a2;
    v40 = a3;
    v41 = a4;
    v42 = (v13 - 1);
    do
    {
      v44 = *++v42;
      v43 = v44;
    }

    while (!memchr("0123456789+-(", v44, 0xEuLL));
    v13 = v21 + 1;
    v8 = 2;
    v18 = v43 == 40;
    a4 = v41;
    a3 = v40;
    a2 = v39;
    v12 = v38;
    v7 = v37;
    v10 = v36;
    v11 = v78;
    if (!v18)
    {
      LhpuSetDurValue(a2, v42);
      v8 = 2;
    }
  }

  if (v16 <= 0x2C)
  {
    v21 = v13;
    if (v16 != 40)
    {
      if (v16 != 43)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_71:
      v27 = v13 + 1;
      if (v13[1] - 48 >= 0xA)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_142;
    }

    goto LABEL_158;
  }

  if (v16 == 45)
  {
    goto LABEL_71;
  }

  if (v16 - 48 >= 0xA)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = v13 + 1;
  v30 = v13[1];
  if (v30 <= 0x20)
  {
    if (v30 <= 0xC)
    {
      result = 0xFFFFFFFFLL;
      if (v30 < 9 || v30 == 12)
      {
        return result;
      }

      goto LABEL_179;
    }

    goto LABEL_177;
  }

  if (v30 <= 0x2F)
  {
LABEL_157:
    if (v30 != 40)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_158;
  }

  if (v30 >= 0x3A)
  {
    goto LABEL_402;
  }

LABEL_165:
  ++v21;
  while (1)
  {
    v30 = *v21;
    if (v30 <= 0x20)
    {
      break;
    }

    if (v30 <= 0x2F)
    {
      goto LABEL_157;
    }

    ++v21;
    if (v30 >= 0x3A)
    {
LABEL_400:
      if (v30 != 93)
      {
        return 0xFFFFFFFFLL;
      }

      LOBYTE(v21) = v21 - 1;
LABEL_403:
      v72 = (v13 - 1);
      do
      {
        v74 = *++v72;
        v73 = v74;
      }

      while (!memchr("0123456789+-]", v74, 0xEuLL));
      LOBYTE(j) = v21 + 1;
      if (v73 != 93)
      {
        LhpuSetDurValue(a2, v72);
      }

      LOBYTE(v13) = v11;
      goto LABEL_408;
    }
  }

  if (v30 > 0xC)
  {
LABEL_177:
    if (v30 != 13 && v30 != 32)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_179;
  }

LABEL_171:
  if (v30 < 9 || v30 == 12)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
LABEL_179:
    while (1)
    {
      v30 = *++v21;
      if (v30 > 0x1F)
      {
        break;
      }

      if (v30 > 0xB)
      {
        if (v30 != 13)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (v30 < 9)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (v30 > 0x28)
    {
      break;
    }

    if (v30 != 32)
    {
      goto LABEL_157;
    }
  }

LABEL_402:
  if (v30 == 93)
  {
    goto LABEL_403;
  }

  return 0xFFFFFFFFLL;
}

uint64_t phonmap_GetLanguagesInVoiceMaps(uint64_t a1, int a2, _WORD *a3, unsigned __int16 *a4, char *a5)
{
  v5 = 2322604039;
  if (!a3 || !a4)
  {
    return 2322604039;
  }

  v10 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v10 & 0x80000000) == 0)
  {
    Size = ssftmap_GetSize(*(a1 + 56));
    *a3 = Size;
    if (!a5)
    {
      *a4 = 4 * Size;
      return v10;
    }

    v12 = *a4;
    if (v12 < 4)
    {
      return 2322604041;
    }

    v14 = *(a1 + 56);
    v24 = 0;
    if (v14)
    {
      *a5 = 0;
      *a4 = 1;
      if ((ssftmap_IteratorOpen(v14, 0, 1, &v24) & 0x80000000) == 0)
      {
        v22 = 0;
        __s = 0;
        if ((ssftmap_IteratorNext(v24, &__s, &v22) & 0x80000000) != 0)
        {
          v18 = 0;
        }

        else
        {
          v15 = strlen(a5);
          v16 = __s;
          if (v15 + strlen(__s) + 1 > v12)
          {
            v17 = 0;
LABEL_19:
            a5[v17 - 1] = 0;
            ssftmap_IteratorClose(v24);
            return 2322604041;
          }

          while (1)
          {
            v19 = strcat(a5, v16);
            *&a5[strlen(v19)] = 44;
            v20 = strlen(a5);
            *a4 = v20;
            if ((ssftmap_IteratorNext(v24, &__s, &v22) & 0x80000000) != 0)
            {
              break;
            }

            v21 = strlen(a5);
            v16 = __s;
            if (v21 + strlen(__s) + 1 > v12)
            {
              v17 = v20;
              goto LABEL_19;
            }
          }

          v18 = v20;
        }

        a5[v18 - 1] = 0;
        ssftmap_IteratorClose(v24);
      }

      return 0;
    }

    return v5;
  }

  return v10;
}

uint64_t phonmap_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 2)
  {
    return 2322604033;
  }

  result = 0;
  *a2 = &IPhonmap;
  return result;
}

uint64_t phonmap_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Data = 2322604038;
  v20 = 0;
  v21 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v21);
    if ((inited & 0x80000000) == 0)
    {
      log_OutText(*(v21 + 32), "PHONMAP", 4, 0, "PHONMAP ObjOpen: Begin");
      v10 = heap_Calloc(*(v21 + 8), 1, 624);
      if (v10)
      {
        v11 = v10;
        *v10 = a3;
        v10[1] = a4;
        v12 = v21;
        v10[2] = v21;
        if ((paramc_ParamGetStr(*(v12 + 40), "fevoice", &v20) & 0x80000000) != 0 && (Str = paramc_ParamGetStr(*(v21 + 40), "voice", &v20), (Str & 0x80000000) != 0))
        {
          Data = Str;
        }

        else
        {
          Data = phonmap_loc_LoadData(v11, v20);
          if (v20)
          {
            paramc_ParamRelease(*(v21 + 40));
          }

          if ((Data & 0x80000000) == 0)
          {
            v14 = *(v11[2] + 8);
            *&v16 = ssftmap_ElemCopyString;
            *(&v16 + 1) = ssftmap_ElemFreeString;
            v17 = ssftmap_ElemCompareKeysString;
            v18 = stringmap_loc_ElemCopyPtr_0;
            v19 = stringmap_loc_ElemFreeNoOp_0;
            Data = ssftmap_ObjOpen(v14, 0, &v16, v11 + 77);
            if ((Data & 0x80000000) == 0)
            {
              *a5 = v11;
              *(a5 + 8) = 29348;
LABEL_15:
              log_OutText(*(v21 + 32), "PHONMAP", 4, 0, "PHONMAP ObjOpen: End (%x)", Data);
              return Data;
            }
          }
        }

        *a5 = v11;
        *(a5 + 8) = 29348;
        phonmap_ObjClose(v11, *(a5 + 8));
        *a5 = 0;
        *(a5 + 8) = 0;
        goto LABEL_15;
      }

      log_OutPublic(*(v21 + 32), "PHONMAP", 29000, 0);
      Data = 2322604042;
      goto LABEL_15;
    }

    return inited;
  }

  return Data;
}

uint64_t phonmap_ObjClose(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 29348, 624);
  v4 = v3;
  if (v3 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v6 = a1[2];
    log_OutText(*(v6 + 32), "PHONMAP", 4, 0, "PHONMAP ObjClose : Begin");
    v7 = a1[3];
    if (v7)
    {
      v4 = stringmap_reader_ObjClose(v7);
    }

    v8 = a1[4];
    if (v8)
    {
      v4 = stringmap_reader_ObjClose(v8);
    }

    v9 = a1[5];
    if (v9)
    {
      v4 = stringmap_reader_ObjClose(v9);
    }

    v10 = a1[6];
    if (v10)
    {
      v4 = stringmap_reader_ObjClose(v10);
    }

    v11 = a1[7];
    if (v11)
    {
      v21 = 0;
      if ((ssftmap_IteratorOpen(v11, 0, 1, &v21) & 0x80000000) == 0)
      {
        v19 = 0;
        v20 = 0;
        while ((ssftmap_IteratorNext(v21, &v20, &v19) & 0x80000000) == 0)
        {
          v4 = stringmap_reader_ObjClose(v19);
        }

        ssftmap_IteratorClose(v21);
      }

      ssftmap_ObjClose(a1[7]);
    }

    v12 = v5[9];
    if (v12)
    {
      v21 = 0;
      if ((ssftmap_IteratorOpen(v12, 0, 1, &v21) & 0x80000000) == 0)
      {
        v19 = 0;
        v20 = 0;
        while ((ssftmap_IteratorNext(v21, &v20, &v19) & 0x80000000) == 0)
        {
          v4 = stringmap_reader_ObjClose(v19);
        }

        ssftmap_IteratorClose(v21);
      }

      ssftmap_ObjClose(v5[9]);
    }

    v13 = v5[8];
    if (v13)
    {
      v21 = 0;
      if ((ssftmap_IteratorOpen(v13, 0, 1, &v21) & 0x80000000) == 0)
      {
        v19 = 0;
        v20 = 0;
        while ((ssftmap_IteratorNext(v21, &v20, &v19) & 0x80000000) == 0)
        {
          v4 = stringmap_reader_ObjClose(v19);
        }

        ssftmap_IteratorClose(v21);
      }

      ssftmap_ObjClose(v5[8]);
    }

    v14 = v5[10];
    if (v14)
    {
      v21 = 0;
      if ((ssftmap_IteratorOpen(v14, 0, 1, &v21) & 0x80000000) == 0)
      {
        v19 = 0;
        v20 = 0;
        while ((ssftmap_IteratorNext(v21, &v20, &v19) & 0x80000000) == 0)
        {
          v4 = stringmap_reader_ObjClose(v19);
        }

        ssftmap_IteratorClose(v21);
      }

      ssftmap_ObjClose(v5[10]);
    }

    v15 = v5[75];
    if (v15)
    {
      v4 = stringmap_reader_ObjClose(v15);
    }

    v16 = v5[76];
    if (v16)
    {
      v4 = stringmap_reader_ObjClose(v16);
    }

    v17 = v5[77];
    if (v17)
    {
      v21 = 0;
      if ((ssftmap_IteratorOpen(v17, 0, 1, &v21) & 0x80000000) == 0)
      {
        v19 = 0;
        v20 = 0;
        while ((ssftmap_IteratorNext(v21, &v20, &v19) & 0x80000000) == 0)
        {
          v4 = stringmap_reader_ObjClose(v19);
        }

        ssftmap_IteratorClose(v21);
      }

      ssftmap_ObjClose(v5[77]);
    }

    heap_Free(*(v6 + 8), v5);
    log_OutText(*(v6 + 32), "PHONMAP", 4, 0, "PHONMAP ObjClose : End (%x)", v4);
  }

  return v4;
}

uint64_t phonmap_ObjReopen(uint64_t *a1, int a2)
{
  v8 = 0;
  v3 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  v4 = a1[2];
  log_OutText(*(v4 + 32), "PHONMAP", 4, 0, "PHONMAP ObjReopen : Begin");
  if ((paramc_ParamGetStr(*(v4 + 40), "fevoice", &v8) & 0x80000000) != 0 && (Str = paramc_ParamGetStr(*(v4 + 40), "voice", &v8), (Str & 0x80000000) != 0))
  {
    Data = Str;
  }

  else
  {
    Data = phonmap_loc_LoadData(a1, v8);
    if (v8)
    {
      paramc_ParamRelease(*(v4 + 40));
    }
  }

  log_OutText(*(v4 + 32), "PHONMAP", 4, 0, "PHONMAP ObjReopen : End (%x)", Data);
  return Data;
}

uint64_t phonmap_LhTtsToLhPSym(uint64_t *a1, int a2, int a3, char *a4, uint64_t *a5, char *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0;
  if (!a4 || !a5 || !*a4)
  {
    return 2322604039;
  }

  v11 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v12 = a1[2];
  v13 = strlen(a4);
  v14 = Utf8_DepesLengthInBytesUtf8(a4, v13);
  v15 = heap_Alloc(*(v12 + 8), v14 + 1);
  if (!v15)
  {
    log_OutPublic(*(v12 + 32), "PHONMAP", 29000, 0);
    return 2322604042;
  }

  v16 = v15;
  StrMap = utf8_DepesToUtf8(a4, v13, 0, v15, v14, 0, 0);
  if ((StrMap & 0x80000000) != 0)
  {
LABEL_17:
    v19 = StrMap;
    goto LABEL_18;
  }

  v16[v14] = 0;
  log_OutText(*(v12 + 32), "PHONMAP", 4, 0, "PHONMAP LhTtsToLhPSym : Begin (%s)", v16);
  if (a3)
  {
    if (a3 != 1)
    {
      v21 = *(v12 + 32);
      v22 = "";
      v19 = 2322604039;
      goto LABEL_30;
    }

    if (!a6 || !*a6)
    {
      MapTroughLng = a1[3];
      v25 = MapTroughLng;
      goto LABEL_25;
    }

    strcpy(v26, "phonmap/");
    __strcat_chk();
    StrMap = phonmap_loc_GetStrMap(a1, v26, "LANG", &v25, 0);
    if ((StrMap & 0x80000000) == 0)
    {
      MapTroughLng = v25;
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (!a6 || !*a6)
  {
    v23 = phonmap_reader_Maps(a1[7], 1, a4, a5);
LABEL_27:
    v19 = v23;
    v21 = *(v12 + 32);
    if ((v19 & 0x80000000) != 0)
    {
      v22 = "";
    }

    else
    {
      v22 = *a5;
    }

LABEL_30:
    log_OutText(v21, "PHONMAP", 4, 0, "PHONMAP LhTtsToLhPSym : End (%x, %s)", v19, v22);
    heap_Free(*(v12 + 8), v16);
    if ((v19 & 0x80000000) == 0)
    {
      return v19;
    }

    goto LABEL_31;
  }

  MapTroughLng = phonmap_findMapTroughLng(a1[7], a6);
  if (MapTroughLng)
  {
LABEL_25:
    v23 = stringmap_reader_ReverseMap(MapTroughLng, a4, a5);
    goto LABEL_27;
  }

  v19 = 2322604052;
LABEL_18:
  heap_Free(*(v12 + 8), v16);
LABEL_31:
  if ((v19 & 0x1FFFu) <= 0x14 && ((1 << v19) & 0x10001A) != 0)
  {
    return (v19 & 0x1FFF) - 1972363264;
  }

  return v19;
}

uint64_t phonmap_LhPToLhTtsSequence(uint64_t *a1, uint64_t a2, int a3, char *a4, uint64_t a5, char *a6, char *a7)
{
  v7 = phonmap_LhPToLhTtsSequenceLng(a1, a2, a3, a4, a5, a6, a7);
  v8 = v7 & 0x1FFF | 0x8A702000;
  if (((1 << v7) & 0x10001A) == 0)
  {
    v8 = v7;
  }

  if ((v7 & 0x1FFFu) <= 0x14)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v7 >= 0)
  {
    v9 = v7;
  }

  if (v7 == 1)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t phonmap_LhPToLhTtsSequenceWithCheck(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char *a6)
{
  LODWORD(result) = phonmap_LhPToLhTtsSequenceLng(a1, a2, a3, a4, a5, a6, 0);
  v7 = (result & 0x1FFFu) > 0x14 || ((1 << result) & 0x10001A) == 0;
  v8 = result & 0x1FFF | 0x8A702000;
  if (v7)
  {
    v8 = result;
  }

  if (result < 0)
  {
    return v8;
  }

  else
  {
    return result;
  }
}

uint64_t phonmap_LhPToIpaSym(uint64_t a1, int a2, char *a3, uint64_t *a4)
{
  v4 = 2322604039;
  if (a3 && a4 && *a3)
  {
    v8 = safeh_HandleCheck(a1, a2, 29348, 624);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP LhPToIpaSym : Begin");
      v9 = *(a1 + 600);
      if (v9)
      {
        v10 = stringmap_reader_WReverseMap(v9, a3, a4);
      }

      else
      {
        v10 = -1972363263;
      }

      log_OutText(*(*(a1 + 16) + 32), "PHONMAP", 4, 0, "PHONMAP LhPToIpaSym : End (%x)", v10);
      if (((1 << v10) & 0x10001A) != 0)
      {
        v11 = (v10 & 0x1FFF) - 1972363264;
      }

      else
      {
        v11 = v10;
      }

      if ((v10 & 0x1FFFu) <= 0x14)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      if (v10 < 0)
      {
        return v12;
      }

      else
      {
        return v10;
      }
    }
  }

  return v4;
}

uint64_t phonmap_IpaToLhPSequence(uint64_t *a1, int a2, _WORD *a3, unsigned int a4, _WORD *a5, char *a6, _BYTE *a7)
{
  v37 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v31 = 0;
  v32 = 0;
  memset(v36, 0, sizeof(v36));
  memset(v35, 0, sizeof(v35));
  __s = 0;
  if (!a3)
  {
    return 2322604039;
  }

  StrMap = 2322604039;
  if (a5 && a4 && *a3)
  {
    *a5 = 0;
    v14 = safeh_HandleCheck(a1, a2, 29348, 624);
    StrMap = v14;
    v15 = v14 >= 0 ? a1 : 0;
    if ((v14 & 0x80000000) == 0)
    {
      log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : Begin");
      if (a6 && a7 && *a6 && *a7)
      {
        strcpy(v35, "phonmap_ipa/");
        __strcat_chk();
        paramc_ParamGetStr(*(a1[2] + 40), "fedataprefix", &__s);
        if (__s && *__s && (v16 = strlen(__s) - 1, __s[v16] == 47))
        {
          __strcpy_chk();
          v34[v16] = 0;
          v17 = 1;
          do
          {
            if (v17 == 1)
            {
              v18 = 1;
            }

            else
            {
              v18 = 2;
            }

            v19 = brokeraux_ComposeBrokerString(a1[2], v35, v18, 1, a6, v34, 0, v36, 0x80uLL);
            if (v19 < 0)
            {
              StrMap = v19 | 0x8A702000;
            }

            else
            {
              StrMap = phonmap_loc_GetStrMap(v15, v36, "IPA ", &v31, v17 == 1);
            }

            if (v17 > 1)
            {
              break;
            }

            ++v17;
          }

          while ((StrMap & 0x80000000) != 0);
        }

        else
        {
          v22 = brokeraux_ComposeBrokerString(a1[2], v35, 0, 1, a6, 0, 0, v36, 0x80uLL);
          if (v22 < 0)
          {
            StrMap = v22 | 0x8A702000;
          }

          else
          {
            StrMap = phonmap_loc_GetStrMap(a1, v36, "IPA ", &v31, 0);
          }
        }

        v20 = v31 != 0;
      }

      else
      {
        if (!a1[75])
        {
          log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", -1972363263);
          v21 = 1;
          return v21 | 0x8A702000;
        }

        v31 = a1[75];
        v20 = 1;
      }

      v23 = StrMap >= 0;
      if ((StrMap & 0x80000000) != 0 || !v20)
      {
LABEL_45:
        log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", StrMap);
        if (v23)
        {
          return StrMap;
        }
      }

      else
      {
        v24 = 0;
        v25 = 0;
        while (1)
        {
          if (LH_wcslen(a3) <= v25)
          {
            log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", StrMap);
            return StrMap;
          }

          v26 = &a3[v25];
          if (*v26 == 32)
          {
            v27 = 1;
            v33 = 1;
            v32 = &phonmap_IpaToLhPSequence_szWordBnd;
            v28 = &phonmap_IpaToLhPSequence_szWordBnd;
          }

          else
          {
            StrMap = stringmap_reader_WMapToken(v31, v26, &v33, &v32);
            if ((StrMap & 0x80000000) != 0)
            {
              goto LABEL_49;
            }

            v27 = v33;
            v28 = v32;
          }

          if (LH_wcslen(v28) + v24 + 1 >= a4)
          {
            break;
          }

          v25 += v27;
          LH_wcscpy(&a5[v24], v32);
          v24 += LH_wcslen(v32);
          if (!v31)
          {
            v23 = 1;
            goto LABEL_45;
          }
        }

        StrMap = 2322604041;
LABEL_49:
        log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", StrMap);
      }

      v21 = StrMap & 0x1FFF;
      if (v21 <= 0x14 && ((1 << StrMap) & 0x10001A) != 0)
      {
        return v21 | 0x8A702000;
      }
    }
  }

  return StrMap;
}

uint64_t phonmap_LhPToSapi5Sym(void *a1, int a2, char *a3, uint64_t *a4)
{
  v4 = 2322604039;
  if (a3 && a4 && *a3)
  {
    v8 = safeh_HandleCheck(a1, a2, 29348, 624);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    else
    {
      log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP LhPToSapi5Sym : Begin");
      v9 = a1[76];
      if (v9 || (v9 = a1[75]) != 0)
      {
        v10 = stringmap_reader_WReverseMap(v9, a3, a4);
      }

      else
      {
        v10 = -1972363263;
      }

      log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP LhPToSapi5Sym : End (%x)", v10);
      if (((1 << v10) & 0x10001A) != 0)
      {
        v11 = (v10 & 0x1FFF) - 1972363264;
      }

      else
      {
        v11 = v10;
      }

      if ((v10 & 0x1FFFu) <= 0x14)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      if (v10 < 0)
      {
        return v12;
      }

      else
      {
        return v10;
      }
    }
  }

  return v4;
}

uint64_t phonmap_Sapi5ToLhPSequence(void *a1, int a2, _WORD *a3, unsigned int a4, _WORD *a5)
{
  v20 = 0;
  v19 = 0;
  v5 = 2322604039;
  if (!a3 || !a5 || !a4 || !*a3)
  {
    return v5;
  }

  *a5 = 0;
  v10 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP Sapi5ToLhPSequence : Begin");
  v11 = a1[76];
  if (!v11)
  {
    v11 = a1[75];
  }

  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = -1972363263;
  }

  if ((v12 & 0x80000000) == 0)
  {
    if (LH_wcslen(a3))
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      do
      {
        v10 = stringmap_reader_WMapToken(v11, &a3[v13], &v20, &v19);
        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_20;
        }

        v16 = v20;
        if (LH_wcslen(v19) + v15 + 1 >= a4)
        {
          v5 = 2322604041;
          log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP Sapi5ToLhPSequence : End (%x)", -1972363255);
          return v5;
        }

        v13 = (v14 + v16);
        LH_wcscpy(&a5[v15], v19);
        v15 += LH_wcslen(v19);
        v14 = v13;
      }

      while (LH_wcslen(a3) > v13);
    }

    log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP Sapi5ToLhPSequence : End (%x)", v10);
    return v10;
  }

  LODWORD(v10) = v12;
LABEL_20:
  log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP Sapi5ToLhPSequence : End (%x)", v10);
  if (((1 << v10) & 0x10001A) != 0)
  {
    v17 = (v10 & 0x1FFF) - 1972363264;
  }

  else
  {
    v17 = v10;
  }

  if ((v10 & 0x1FFFu) <= 0x14)
  {
    return v17;
  }

  else
  {
    return v10;
  }
}

uint64_t phonmap_GetLhPAlphabetInfoEx(uint64_t a1, int a2, int a3, char *a4, __int16 *a5, char *a6, char *a7)
{
  v14 = 2322604039;
  if (!LH_stricmp(a4, "alphabet"))
  {
    if (!a5)
    {
      return 2322604039;
    }

    v17 = safeh_HandleCheck(a1, a2, 29348, 624);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }

    v18 = *(a1 + 16);
    log_OutText(*(v18 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabet : Begin");
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        if (a3 == 3)
        {
          MapTroughLng = *(a1 + 40);
          goto LABEL_40;
        }

LABEL_47:
        log_OutText(*(v18 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabet : End (%x)", v14);
        v15 = v14;
LABEL_48:
        if ((v15 & 0x1FFFu) <= 0x14)
        {
          if (((1 << v15) & 0x10001A) != 0)
          {
            return (v15 & 0x1FFF) - 1972363264;
          }

          else
          {
            return v15;
          }
        }

        return v15;
      }

      if (a7 && *a7)
      {
        v23 = *(a1 + 72);
        goto LABEL_39;
      }

      v25 = *(a1 + 72);
    }

    else
    {
      if (a3)
      {
        if (a3 == 1)
        {
          MapTroughLng = *(a1 + 24);
LABEL_40:
          LhPAlphabetCore = phonmap_GetLhPAlphabetCore(MapTroughLng, a5, a6);
          goto LABEL_44;
        }

        goto LABEL_47;
      }

      if (a7 && *a7)
      {
        v23 = *(a1 + 56);
LABEL_39:
        MapTroughLng = phonmap_findMapTroughLng(v23, a7);
        if (MapTroughLng)
        {
          goto LABEL_40;
        }

        v14 = 2322604052;
        goto LABEL_47;
      }

      v25 = *(a1 + 56);
    }

    LhPAlphabetCore = phonmap_reader_MapsGetGetLhPAlphabetCore(v25, a5, a6);
LABEL_44:
    v15 = LhPAlphabetCore;
    log_OutText(*(v18 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabet : End (%x)", LhPAlphabetCore);
    if ((v15 & 0x80000000) == 0)
    {
      return v15;
    }

    goto LABEL_48;
  }

  if (LH_stricmp(a4, "version"))
  {
    return 2322604039;
  }

  v15 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v15 & 0x80000000) == 0)
  {
    v16 = *(a1 + 16);
    log_OutText(*(v16 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabetInfo : Begin (%s)", a4);
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        if (a3 != 3)
        {
LABEL_32:
          log_OutText(*(v16 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabetInfo : End (%x, %s)", v14, a4);
          return v14;
        }

LABEL_19:
        v21 = strlen((a1 + 88));
        if (*a5)
        {
          if (v21 < *a5)
          {
            v22 = (a1 + 88);
LABEL_28:
            strcpy(a6, v22);
LABEL_30:
            log_OutText(*(v16 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPAlphabetInfo : End (%x, %s)", v15, a4);
            return v15;
          }

LABEL_31:
          v14 = 2322604041;
          goto LABEL_32;
        }

        goto LABEL_29;
      }
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    v21 = strlen((a1 + 344));
    if (*a5)
    {
      if (v21 < *a5)
      {
        v22 = (a1 + 344);
        goto LABEL_28;
      }

      goto LABEL_31;
    }

LABEL_29:
    *a5 = v21 + 1;
    goto LABEL_30;
  }

  return v15;
}

uint64_t phonmap_GetLhPSampleEx(void *a1, int a2, int a3, char *a4, const char **a5, char *a6)
{
  v6 = 2322604039;
  if (!a4 || !a5 || !*a4)
  {
    return v6;
  }

  v12 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = a1[2];
  log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "PHONMAP GetLhPSample : Begin (%s)", a4);
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        MapTroughLng = a1[4];
LABEL_20:
        v16 = stringmap_reader_Map(MapTroughLng, a4, a5);
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    if (a6 && *a6)
    {
      v15 = a1[8];
LABEL_19:
      MapTroughLng = phonmap_findMapTroughLng(v15, a6);
      if (MapTroughLng)
      {
        goto LABEL_20;
      }

      LODWORD(v6) = -1972363244;
      goto LABEL_27;
    }

    v17 = a1[8];
    goto LABEL_23;
  }

  if (a3 == 2)
  {
    if (a6 && *a6)
    {
      v15 = a1[10];
      goto LABEL_19;
    }

    v17 = a1[10];
LABEL_23:
    v16 = phonmap_reader_Maps(v17, 0, a4, a5);
LABEL_24:
    v6 = v16;
    v18 = *(v13 + 32);
    if ((v6 & 0x80000000) == 0)
    {
      log_OutText(v18, "PHONMAP", 4, 0, "PHONMAP phonmap_GetLhPSample : End (%x, %s)", v6, *a5);
      return v6;
    }

    goto LABEL_28;
  }

  if (a3 == 3)
  {
    MapTroughLng = a1[6];
    goto LABEL_20;
  }

LABEL_27:
  v18 = *(v13 + 32);
LABEL_28:
  log_OutText(v18, "PHONMAP", 4, 0, "PHONMAP phonmap_GetLhPSample : End (%x, %s)", v6, "");
  if (((1 << v6) & 0x10001A) != 0)
  {
    v19 = (v6 & 0x1FFF) - 1972363264;
  }

  else
  {
    v19 = v6;
  }

  if ((v6 & 0x1FFFu) <= 0x14)
  {
    return v19;
  }

  else
  {
    return v6;
  }
}

uint64_t phonmap_LhPToLhTtsSymEx(void *a1, int a2, int a3, char *a4, const char **a5, char *a6)
{
  v6 = 2322604039;
  if (!a4 || !a5 || !*a4)
  {
    return v6;
  }

  v12 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = a1[2];
  log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhTtsSym : Begin (%s)", a4);
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        MapTroughLng = a1[3];
LABEL_20:
        v16 = stringmap_reader_Map(MapTroughLng, a4, a5);
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    if (a6 && *a6)
    {
      v15 = a1[7];
LABEL_19:
      MapTroughLng = phonmap_findMapTroughLng(v15, a6);
      if (MapTroughLng)
      {
        goto LABEL_20;
      }

      LODWORD(v6) = -1972363244;
      goto LABEL_27;
    }

    v17 = a1[7];
    goto LABEL_23;
  }

  if (a3 == 2)
  {
    if (a6 && *a6)
    {
      v15 = a1[9];
      goto LABEL_19;
    }

    v17 = a1[9];
LABEL_23:
    v16 = phonmap_reader_Maps(v17, 0, a4, a5);
LABEL_24:
    v6 = v16;
    v18 = *(v13 + 32);
    if ((v6 & 0x80000000) == 0)
    {
      log_OutText(v18, "PHONMAP", 4, 0, "PHONMAP LhPToLhTtsSym : End (%x, %s)", v6, *a5);
      return v6;
    }

    goto LABEL_28;
  }

  if (a3 == 3)
  {
    MapTroughLng = a1[5];
    goto LABEL_20;
  }

LABEL_27:
  v18 = *(v13 + 32);
LABEL_28:
  log_OutText(v18, "PHONMAP", 4, 0, "PHONMAP LhPToLhTtsSym : End (%x, %s)", v6, "");
  if (((1 << v6) & 0x10001A) != 0)
  {
    v19 = (v6 & 0x1FFF) - 1972363264;
  }

  else
  {
    v19 = v6;
  }

  if ((v6 & 0x1FFFu) <= 0x14)
  {
    return v19;
  }

  else
  {
    return v6;
  }
}

uint64_t phonmap_LhPToLhPSequenceEx(void *a1, int a2, int a3, const char **a4, char *a5)
{
  v5 = 2322604039;
  if (a4 && *a4)
  {
    v10 = safeh_HandleCheck(a1, a2, 29348, 624);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        a5 = a1[3];
        v11 = 1;
LABEL_14:
        v13 = a1[2];
        v14 = *a4;
        v15 = strlen(*a4);
        log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhPSequence : Begin (%s)", *a4);
        v28 = LhpuCreate(*(v13 + 8));
        if (!v28)
        {
          log_OutPublic(*(v13 + 32), "PHONMAP", 29000, 0);
          return 2322604042;
        }

        v27 = 0;
        v26 = 0;
        if (v15 >= 1)
        {
          v16 = &v14[v15];
          while (1)
          {
            if (*v14 == 18)
            {
              ++v14;
              goto LABEL_39;
            }

            if (LhplGetSymbol(v14, v28, &v27 + 1, &v27))
            {
              memmove(v14, v14 + 1, (v16 + ~v14));
              *--v16 = 0;
              log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme");
              goto LABEL_39;
            }

            if (!a5)
            {
              goto LABEL_24;
            }

            v26 = 0;
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            stringmap_reader_Map(a5, v17, &v26);
            if (v26)
            {
              break;
            }

            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            if (*v20 == 95 && !v20[1])
            {
              break;
            }

            memmove(v14, &v14[v27 + 1], (~(v27 + v14) + v16));
            v16 += ~v27;
            *v16 = 0;
            log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme");
            if (!v11)
            {
LABEL_25:
              v25 = 0;
              if ((ssftmap_IteratorOpen(a1[7], 0, 1, &v25) & 0x80000000) == 0)
              {
                v23 = 0;
                v24 = 0;
                v26 = 0;
                while ((ssftmap_IteratorNext(v25, &v24, &v23) & 0x80000000) == 0)
                {
                  v26 = 0;
                  v18 = v23;
                  kaldi::CuMatrixBase<float>::~CuMatrixBase();
                  stringmap_reader_Map(v18, v19, &v26);
                  if (v26)
                  {
                    v14 += v27 + 1;
                    goto LABEL_38;
                  }
                }

                if (!v26)
                {
                  kaldi::CuMatrixBase<float>::~CuMatrixBase();
                  if (*v21 != 95 || v21[1])
                  {
                    memmove(v14, &v14[v27 + 1], (~(v27 + v14) + v16));
                    v16 += ~v27;
                    *v16 = 0;
                    log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme");
                  }
                }

LABEL_38:
                ssftmap_IteratorClose(v25);
              }
            }

LABEL_39:
            if (v14 >= v16)
            {
              goto LABEL_40;
            }
          }

          v14 += v27 + 1;
LABEL_24:
          if (!v11)
          {
            goto LABEL_25;
          }

          goto LABEL_39;
        }

LABEL_40:
        LhpuRemove(*(v13 + 8), &v28);
        log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhPSequence : End (%s)", *a4);
        return v10;
      }
    }

    else
    {
      MapTroughLng = phonmap_findMapTroughLng(a1[7], a5);
      if (MapTroughLng)
      {
        if (a5)
        {
          v11 = *a5 != 0;
          if (*a5)
          {
            a5 = MapTroughLng;
          }

          else
          {
            a5 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_14;
      }

      return 2322604052;
    }
  }

  return v5;
}

uint64_t phonmap_LhPToLhTtsSequenceWithCheckEx(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char *a6, char *a7)
{
  LODWORD(result) = phonmap_LhPToLhTtsSequenceLng(a1, a2, a3, a4, a5, a6, a7);
  v8 = (result & 0x1FFFu) > 0x14 || ((1 << result) & 0x10001A) == 0;
  v9 = result & 0x1FFF | 0x8A702000;
  if (v8)
  {
    v9 = result;
  }

  if (result < 0)
  {
    return v9;
  }

  else
  {
    return result;
  }
}

uint64_t phonmap_loc_LoadData(uint64_t *a1, const char *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  *v63 = 0;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  *v58 = 0;
  *v59 = 0;
  v57 = 0;
  v55 = 0;
  v74[0] = 0;
  v73[0] = 0;
  v72[0] = 0;
  v56[0] = 0;
  v5 = a1 + 3;
  v4 = a1[3];
  if (v4)
  {
    stringmap_reader_ObjClose(v4);
    *v5 = 0;
  }

  v6 = a1[4];
  if (v6)
  {
    stringmap_reader_ObjClose(v6);
    a1[4] = 0;
  }

  v7 = a1[5];
  if (v7)
  {
    stringmap_reader_ObjClose(v7);
    a1[5] = 0;
  }

  v8 = a1[6];
  if (v8)
  {
    stringmap_reader_ObjClose(v8);
    a1[6] = 0;
  }

  v10 = a1 + 7;
  v9 = a1[7];
  if (v9)
  {
    *&v66 = 0;
    if ((ssftmap_IteratorOpen(v9, 0, 1, &v66) & 0x80000000) == 0)
    {
      __dst[0] = 0;
      v64[0] = 0;
      while ((ssftmap_IteratorNext(v66, __dst, v64) & 0x80000000) == 0)
      {
        stringmap_reader_ObjClose(v64[0]);
      }

      ssftmap_IteratorClose(v66);
    }

    ssftmap_ObjClose(*v10);
    *v10 = 0;
  }

  v11 = *(a1[2] + 8);
  *&v66 = ssftmap_ElemCopyString;
  *(&v66 + 1) = ssftmap_ElemFreeString;
  v67 = ssftmap_ElemCompareKeysString;
  v68 = stringmap_loc_ElemCopyPtr_0;
  v69 = stringmap_loc_ElemFreeNoOp_0;
  v12 = ssftmap_ObjOpen(v11, 0, &v66, a1 + 7);
  if ((v12 & 0x80000000) == 0)
  {
    v14 = a1 + 8;
    v13 = a1[8];
    if (v13)
    {
      *&v66 = 0;
      if ((ssftmap_IteratorOpen(v13, 0, 1, &v66) & 0x80000000) == 0)
      {
        __dst[0] = 0;
        v64[0] = 0;
        while ((ssftmap_IteratorNext(v66, __dst, v64) & 0x80000000) == 0)
        {
          stringmap_reader_ObjClose(v64[0]);
        }

        ssftmap_IteratorClose(v66);
      }

      ssftmap_ObjClose(*v14);
      *v14 = 0;
    }

    v15 = *(a1[2] + 8);
    *&v66 = ssftmap_ElemCopyString;
    *(&v66 + 1) = ssftmap_ElemFreeString;
    v67 = ssftmap_ElemCompareKeysString;
    v68 = stringmap_loc_ElemCopyPtr_0;
    v69 = stringmap_loc_ElemFreeNoOp_0;
    v12 = ssftmap_ObjOpen(v15, 0, &v66, a1 + 8);
    if ((v12 & 0x80000000) == 0)
    {
      v17 = a1 + 9;
      v16 = a1[9];
      if (v16)
      {
        *&v66 = 0;
        if ((ssftmap_IteratorOpen(v16, 0, 1, &v66) & 0x80000000) == 0)
        {
          __dst[0] = 0;
          v64[0] = 0;
          while ((ssftmap_IteratorNext(v66, __dst, v64) & 0x80000000) == 0)
          {
            stringmap_reader_ObjClose(v64[0]);
          }

          ssftmap_IteratorClose(v66);
        }

        ssftmap_ObjClose(*v17);
        *v17 = 0;
      }

      v18 = *(a1[2] + 8);
      *&v66 = ssftmap_ElemCopyString;
      *(&v66 + 1) = ssftmap_ElemFreeString;
      v67 = ssftmap_ElemCompareKeysString;
      v68 = stringmap_loc_ElemCopyPtr_0;
      v69 = stringmap_loc_ElemFreeNoOp_0;
      v12 = ssftmap_ObjOpen(v18, 0, &v66, a1 + 9);
      if ((v12 & 0x80000000) == 0)
      {
        v20 = a1 + 10;
        v19 = a1[10];
        if (v19)
        {
          *&v66 = 0;
          if ((ssftmap_IteratorOpen(v19, 0, 1, &v66) & 0x80000000) == 0)
          {
            __dst[0] = 0;
            v64[0] = 0;
            while ((ssftmap_IteratorNext(v66, __dst, v64) & 0x80000000) == 0)
            {
              stringmap_reader_ObjClose(v64[0]);
            }

            ssftmap_IteratorClose(v66);
          }

          ssftmap_ObjClose(*v20);
          *v20 = 0;
        }

        v21 = *(a1[2] + 8);
        *&v66 = ssftmap_ElemCopyString;
        *(&v66 + 1) = ssftmap_ElemFreeString;
        v67 = ssftmap_ElemCompareKeysString;
        v68 = stringmap_loc_ElemCopyPtr_0;
        v69 = stringmap_loc_ElemFreeNoOp_0;
        v12 = ssftmap_ObjOpen(v21, 0, &v66, a1 + 10);
        if ((v12 & 0x80000000) == 0)
        {
          v22 = a1[75];
          if (v22)
          {
            stringmap_reader_ObjClose(v22);
            a1[75] = 0;
          }

          v23 = a1[76];
          if (v23)
          {
            stringmap_reader_ObjClose(v23);
            a1[76] = 0;
          }

          if ((paramc_ParamGetStr(*(a1[2] + 40), "langcode", v58) & 0x80000000) != 0)
          {
            *v58 = "";
          }

          if ((paramc_ParamGetStr(*(a1[2] + 40), "voicemodel", &v57) & 0x80000000) != 0)
          {
            v57 = 0;
          }

          strcpy(&v66, "phonmap/");
          __strcat_chk();
          __strcat_chk();
          __strcat_chk();
          brokeraux_ComposeBrokerString(a1[2], &v66, 1, 1, *v58, a2, v57, v72, 0x80uLL);
          strcpy(v70, "phonmap_ipa/");
          __strcat_chk();
          brokeraux_ComposeBrokerString(a1[2], v70, 1, 1, *v58, 0, 0, v73, 0x80uLL);
          __strcpy_chk();
          brokeraux_ComposeBrokerString(a1[2], v71, 1, 1, *v58, a2, 0, v74, 0x80uLL);
          v24 = 0;
          v25 = a1[2];
          while (1)
          {
            if (*(v25 + 24))
            {
              v26 = 2;
              goto LABEL_58;
            }

            for (i = &v72[128 * v24]; *i == 47; ++i)
            {
              *i = 95;
LABEL_57:
              ;
            }

            if (*i)
            {
              goto LABEL_57;
            }

            strcat(&v72[128 * v24], ".dat");
            v26 = 3;
LABEL_58:
            *(&__dst[32] + ++v24) = v26;
            if (v24 == 3)
            {
              v28 = 0;
              v52 = 0;
              v29 = 0;
              v30 = 1;
              while (1)
              {
                v53 = &v72[128 * v29];
                v31 = v29;
                v32 = ssftriff_reader_ObjOpen(*a1, a1[1], *(&__dst[32] + v29 + 1), v53, "PHMP", 1031, v63);
                if ((v32 & 0x80000000) != 0)
                {
                  if (!v30 && !v28)
                  {
                    return v32;
                  }

                  v49 = v31;
                  v32 = 0;
                }

                else
                {
                  v33 = v52;
                  if (!v31)
                  {
                    v33 = 1;
                  }

                  v52 = v33;
                  v51 = v31;
                  if ((ssftriff_reader_OpenChunk(*v63, &v61, &v60, v59) & 0x80000000) == 0)
                  {
                    v34 = a1 + 76;
                    while (1)
                    {
                      if (!(v61 ^ 0x464E494C | v62) || !(v61 ^ 0x464E4956 | v62))
                      {
                        if ((v32 & 0x80000000) == 0)
                        {
                          v40 = v60;
                          if (v60)
                          {
                            v41 = 0;
                            do
                            {
                              LOBYTE(v64[0]) = 0;
                              LOBYTE(__dst[0]) = 0;
                              v54 = 256;
                              LODWORD(v32) = ssftriff_reader_ReadStringZ(*v63, *v59, v40, v41, __dst, &v54);
                              if ((v32 & 0x80000000) == 0 && v41 < v60)
                              {
                                v41 += v54;
                                v54 = 256;
                                LODWORD(v32) = ssftriff_reader_ReadStringZ(*v63, *v59, v60, v41, v64, &v54);
                              }

                              if ((v32 & 0x80000000) != 0)
                              {
                                break;
                              }

                              v42 = v54;
                              if (!LH_stricmp(__dst, "version"))
                              {
                                __strcpy_chk();
                              }

                              if (!(v61 ^ 0x464E4956 | v62) && !LH_stricmp(__dst, "language"))
                              {
                                __strcpy_chk();
                              }

                              if (!(v61 ^ 0x464E4956 | v62) && !LH_stricmp(__dst, "version"))
                              {
                                __strcpy_chk();
                              }

                              v41 += v42;
                              v40 = v60;
                            }

                            while (v41 < v60);
                          }
                        }

                        v34 = a1 + 76;
                        goto LABEL_101;
                      }

                      if (!(v61 ^ 0x474E414C | v62))
                      {
                        v35 = *v63;
                        v36 = v53;
                        v37 = *a1;
                        v38 = a1[1];
                        v39 = v5;
                        goto LABEL_99;
                      }

                      if (!(v61 ^ 0x4158454C | v62))
                      {
                        v35 = *v63;
                        v36 = v53;
                        v37 = *a1;
                        v38 = a1[1];
                        v39 = a1 + 4;
                        goto LABEL_99;
                      }

                      if (!(v61 ^ 0x4E414C53 | v62))
                      {
                        v35 = *v63;
                        v36 = v53;
                        v37 = *a1;
                        v38 = a1[1];
                        v39 = a1 + 5;
                        goto LABEL_99;
                      }

                      if (!(v61 ^ 0x58454C53 | v62))
                      {
                        v35 = *v63;
                        v36 = v53;
                        v37 = *a1;
                        v38 = a1[1];
                        v39 = a1 + 6;
                        goto LABEL_99;
                      }

                      if (!(v61 ^ 0x43494F56 | v62))
                      {
                        break;
                      }

                      if (!(v61 ^ 0x41584556 | v62))
                      {
                        ReadOnly = ssftmap_FindReadOnly(a1[8], v56, &v55);
                        if (ReadOnly < 0)
                        {
                          ReadOnly = stringmap_reader_ObjOpen(*a1, a1[1], v53, *v63, &v55);
                          if ((ReadOnly & 0x80000000) == 0)
                          {
                            v46 = a1 + 8;
                            goto LABEL_123;
                          }
                        }

                        goto LABEL_100;
                      }

                      if (!(v61 ^ 0x494F5653 | v62))
                      {
                        ReadOnly = ssftmap_FindReadOnly(a1[9], v56, &v55);
                        if (ReadOnly < 0)
                        {
                          ReadOnly = stringmap_reader_ObjOpen(*a1, a1[1], v53, *v63, &v55);
                          if ((ReadOnly & 0x80000000) == 0)
                          {
                            v46 = a1 + 9;
                            goto LABEL_123;
                          }
                        }

                        goto LABEL_100;
                      }

                      if (!(v61 ^ 0x58455653 | v62))
                      {
                        ReadOnly = ssftmap_FindReadOnly(a1[10], v56, &v55);
                        if (ReadOnly < 0)
                        {
                          ReadOnly = stringmap_reader_ObjOpen(*a1, a1[1], v53, *v63, &v55);
                          if ((ReadOnly & 0x80000000) == 0)
                          {
                            v46 = a1 + 10;
LABEL_123:
                            LODWORD(v32) = ssftmap_Insert(*v46, v56, v55);
                            if ((v32 & 0x80000000) != 0)
                            {
                              stringmap_reader_ObjClose(v55);
                            }

                            goto LABEL_101;
                          }
                        }

                        goto LABEL_100;
                      }

                      if (!(v61 ^ 0x20415049 | v62))
                      {
                        v35 = *v63;
                        v36 = v53;
                        v37 = *a1;
                        v38 = a1[1];
                        v39 = a1 + 75;
LABEL_99:
                        ReadOnly = stringmap_reader_ObjOpen(v37, v38, v36, v35, v39);
LABEL_100:
                        LODWORD(v32) = ReadOnly;
                        goto LABEL_101;
                      }

                      if (!(v61 ^ 0x49504153 | v62))
                      {
                        v35 = *v63;
                        v36 = v53;
                        v37 = *a1;
                        v38 = a1[1];
                        v39 = v34;
                        goto LABEL_99;
                      }

LABEL_101:
                      v44 = ssftriff_reader_CloseChunk(*v63);
                      if (v32 > -1 && v44 < 0)
                      {
                        v32 = v44;
                      }

                      else
                      {
                        v32 = v32;
                      }

                      if ((ssftriff_reader_OpenChunk(*v63, &v61, &v60, v59) & 0x80000000) != 0)
                      {
                        goto LABEL_126;
                      }
                    }

                    if (!v56[0])
                    {
                      __strcpy_chk();
                    }

                    ReadOnly = ssftmap_FindReadOnly(a1[7], v56, &v55);
                    if (ReadOnly < 0)
                    {
                      ReadOnly = stringmap_reader_ObjOpen(*a1, a1[1], v53, *v63, &v55);
                      if ((ReadOnly & 0x80000000) == 0)
                      {
                        v46 = a1 + 7;
                        goto LABEL_123;
                      }
                    }

                    goto LABEL_100;
                  }

LABEL_126:
                  if (*v63)
                  {
                    v47 = ssftriff_reader_ObjClose(*v63);
                    *v63 = 0;
                    if (v32 > -1 && v47 < 0)
                    {
                      v32 = v47;
                    }

                    else
                    {
                      v32 = v32;
                    }
                  }

                  v49 = v51;
                }

                v29 = v49 + 1;
                if (v29 != 3)
                {
                  v28 = v52 != 0;
                  v30 = v29 != 2;
                  if (v29 != 2 || !v52)
                  {
                    continue;
                  }
                }

                return v32;
              }
            }
          }
        }
      }
    }
  }

  return v12;
}

uint64_t phonmap_loc_GetStrMap(uint64_t *a1, const char *a2, const char *a3, uint64_t *a4, int a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v18 = 0;
  v17 = 0;
  *a4 = 0;
  __strcpy_chk();
  __strcat_chk();
  __strcat_chk();
  v10 = 0;
  if ((ssftmap_FindReadOnly(a1[77], v20, a4) & 0x80000000) != 0)
  {
    Chunk = ssftriff_reader_ObjOpen(*a1, a1[1], 2 * (a5 != 0), a2, "PHMP", 1031, &v19);
    if ((Chunk & 0x80000000) != 0 || (Chunk = ssftriff_reader_FindChunk(v19, a3, 1, &v18, &v17), (Chunk & 0x80000000) != 0) || (Chunk = stringmap_reader_ObjOpen(*a1, a1[1], a2, v19, a4), (Chunk & 0x80000000) != 0))
    {
      v10 = Chunk;
    }

    else
    {
      v10 = ssftmap_Insert(a1[77], v20, *a4);
      if ((v10 & 0x80000000) != 0)
      {
        stringmap_reader_ObjClose(*a4);
        *a4 = 0;
      }
    }

    if (v17)
    {
      v12 = ssftriff_reader_CloseChunk(v19);
      if (v12 >= 0 || v10 <= -1)
      {
        v10 = v10;
      }

      else
      {
        v10 = v12;
      }
    }

    if (v19)
    {
      v14 = ssftriff_reader_ObjClose(v19);
      if (v14 >= 0 || v10 <= -1)
      {
        v10 = v10;
      }

      else
      {
        v10 = v14;
      }
    }

    if ((v10 & 0x80000000) == 0)
    {
      if (*a4)
      {
        return v10;
      }

      else
      {
        return 2322604033;
      }
    }
  }

  return v10;
}

uint64_t phonmap_findMapTroughLng(uint64_t result, char *a2)
{
  if (result)
  {
    v5 = 0;
    if ((ssftmap_IteratorOpen(result, 0, 1, &v5) & 0x80000000) == 0)
    {
      v3 = 0;
      v4 = 0;
      while ((ssftmap_IteratorNext(v5, &v4, &v3) & 0x80000000) == 0)
      {
        if (!a2 || !LH_stricmp(v4, a2))
        {
          ssftmap_IteratorClose(v5);
          return v3;
        }
      }

      ssftmap_IteratorClose(v5);
    }

    return 0;
  }

  return result;
}

uint64_t phonmap_reader_Maps(uint64_t a1, int a2, char *a3, uint64_t *a4)
{
  v12 = 0;
  v4 = 2322604052;
  if (!a1)
  {
    return 2322604039;
  }

  if ((ssftmap_IteratorOpen(a1, 0, 1, &v12) & 0x80000000) == 0)
  {
    *v10 = 0;
    v11 = 0;
    while ((ssftmap_IteratorNext(v12, &v11, v10) & 0x80000000) == 0)
    {
      if (a2)
      {
        v8 = stringmap_reader_ReverseMap(*v10, a3, a4);
      }

      else
      {
        v8 = stringmap_reader_Map(*v10, a3, a4);
      }

      v4 = v8;
      if ((v8 & 0x80000000) == 0)
      {
        v4 = 0;
        break;
      }
    }

    ssftmap_IteratorClose(v12);
  }

  return v4;
}

uint64_t phonmap_LhPToLhTtsSequenceLng(uint64_t *a1, uint64_t a2, int a3, char *a4, uint64_t a5, char *a6, char *a7)
{
  v100 = *MEMORY[0x1E69E9840];
  v7 = 2322604039;
  v91 = 0;
  if (!a4)
  {
    return 2322604039;
  }

  v8 = a6;
  if (!a6)
  {
    return 2322604039;
  }

  v9 = a5;
  if (!a5 || !*a4)
  {
    return 2322604039;
  }

  v12 = a2;
  StrMap = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((StrMap & 0x80000000) != 0)
  {
    return StrMap;
  }

  v89 = a1[2];
  if (a3)
  {
    if (a3 == 1)
    {
      if (a7 && *a7)
      {
        strcpy(v95, "phonmap/");
        __strcat_chk();
        StrMap = phonmap_loc_GetStrMap(a1, v95, "LANG", &v91, 0);
        if ((StrMap & 0x80000000) != 0)
        {
          return StrMap;
        }

        v16 = v91;
      }

      else
      {
        v16 = a1[3];
        v91 = v16;
      }

      v87 = v16;
      v19 = v89;
      if (!v16)
      {
        goto LABEL_95;
      }

      goto LABEL_20;
    }

    return 2322604039;
  }

  MapTroughLng = phonmap_findMapTroughLng(a1[7], a7);
  if (!MapTroughLng)
  {
    return 2322604052;
  }

  if (a7 && *a7)
  {
    v87 = MapTroughLng;
    v91 = MapTroughLng;
    v19 = v89;
LABEL_20:
    if (*a4)
    {
      v20 = a4;
      v7 = safeh_HandleCheck(a1, v12, 29348, 624);
      if ((v7 & 0x80000000) == 0)
      {
        v21 = a1[2];
        v22 = strlen(a4);
        *v8 = 0;
        log_OutText(*(v21 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : Begin (%s)", a4);
        v94 = LhpuCreate(*(v21 + 8));
        if (v94)
        {
          v93 = 0;
          __s = 0;
          if (v22 >= 1)
          {
            v23 = 0;
            v24 = &a4[v22];
            v86 = v9;
            v25 = v87;
            v83 = v24;
            v84 = v8;
            while (1)
            {
              v26 = v94;
              Symbol = LhplGetSymbol(v20, v94, &v93 + 1, &v93);
              if (Symbol)
              {
                if (Symbol == 1)
                {
                  goto LABEL_92;
                }

                v88 = v7;
                v28 = 1;
                v29 = 1;
              }

              else
              {
                __s2[0] = 0;
                __s = 0;
                kaldi::CuMatrixBase<float>::~CuMatrixBase();
                stringmap_reader_Map(v25, v30, &__s);
                if (__s)
                {
                  v88 = v7;
                  if (LhpuHasDurSpec(v26) || LhpuGetcBp(v26))
                  {
                    v85 = v23;
                    v31 = __s;
                    v32 = strchr(__s, 124);
                    if (v32)
                    {
                      v33 = 0;
                      do
                      {
                        v34 = v33;
                        v35 = &v31[v33++];
                      }

                      while (v35 < v32);
                    }

                    else
                    {
                      v34 = strlen(v31);
                    }

                    if (v34 < 2u)
                    {
                      __strcpy_chk();
                      if (LhpuHasDurSpec(v26))
                      {
                        DurValue = LhpuGetDurValue(v26);
                        v97[0] = 91;
                        IsAbs = LhpuDurSpecIsAbs(v26);
                        v50 = &v97[1];
                        v8 = v84;
                        if (!IsAbs)
                        {
                          v50 = &v97[1];
                          if (DurValue >= 1)
                          {
                            v97[1] = 43;
                            v50 = v98;
                          }
                        }

                        LH_itoa(DurValue, v50, 0xAu);
                        __strcat_chk();
                        if (LhpuGetcBp(v26))
                        {
                          v51 = 0;
                          v52 = 0;
                          do
                          {
                            v97[0] = 40;
                            v53 = LhpuGetpBp(v26);
                            LH_itoa(*(v53 + v51 + 2), &v97[1], 0xAu);
                            __strcat_chk();
                            v54 = *(LhpuGetpBp(v26) + v51);
                            v55 = strlen(v97);
                            LH_itoa(v54, &v97[v55], 0xAu);
                            __strcat_chk();
                            __strcat_chk();
                            ++v52;
                            v51 += 4;
                          }

                          while (v52 < LhpuGetcBp(v26));
                        }
                      }

                      else
                      {
                        __strcat_chk();
                        v8 = v84;
                        if (LhpuGetcBp(v26))
                        {
                          v62 = 0;
                          v63 = 0;
                          do
                          {
                            v97[0] = 40;
                            v64 = LhpuGetpBp(v26);
                            LH_itoa(*(v64 + v62 + 2), &v97[1], 0xAu);
                            __strcat_chk();
                            v65 = *(LhpuGetpBp(v26) + v62);
                            v66 = strlen(v97);
                            LH_itoa(v65, &v97[v66], 0xAu);
                            __strcat_chk();
                            __strcat_chk();
                            ++v63;
                            v62 += 4;
                          }

                          while (v63 < LhpuGetcBp(v26));
                        }
                      }

                      __strcat_chk();
                      v24 = v83;
                      v19 = v89;
                      v25 = v87;
                      v23 = v85;
                    }

                    else
                    {
                      v36 = 0;
                      v96 = 0;
                      v37 = v34;
                      do
                      {
                        if (v32)
                        {
                          v97[v36 - 8] = atoi(v32 + 1);
                          v32 = strchr(v32 + 1, 58);
                        }

                        ++v36;
                      }

                      while (v37 != v36);
                      v90 = v37;
                      if (LhpuHasDurSpec(v26))
                      {
                        if (LhpuDurSpecIsAbs(v26))
                        {
                          v38 = 0;
                          LODWORD(v39) = 0;
                          v40 = 0;
                          v41 = v94;
                          do
                          {
                            *v97 = __s[v38];
                            __strcat_chk();
                            v42 = 1374389535 * (v97[v38 - 8] * LhpuGetDurValue(v26) + 50);
                            v43 = (v42 >> 37) + (v42 >> 63);
                            v97[0] = 91;
                            LH_itoa(v43, &v97[1], 0xAu);
                            __strcat_chk();
                            if (v39 < LhpuGetcBp(v41))
                            {
                              v44 = 4 * v39;
                              v39 = v39;
                              do
                              {
                                if (v43 + v40 < *(LhpuGetpBp(v41) + v44 + 2))
                                {
                                  break;
                                }

                                v97[0] = 40;
                                v45 = LhpuGetpBp(v41);
                                LH_itoa(*(v45 + v44 + 2) - v40, &v97[1], 0xAu);
                                __strcat_chk();
                                v46 = *(LhpuGetpBp(v41) + v44);
                                v47 = strlen(v97);
                                LH_itoa(v46, &v97[v47], 0xAu);
                                __strcat_chk();
                                __strcat_chk();
                                ++v39;
                                v44 += 4;
                              }

                              while (v39 < LhpuGetcBp(v41));
                              LODWORD(v39) = v39;
                            }

                            __strcat_chk();
                            v40 += v43;
                            ++v38;
                            v26 = v41;
                          }

                          while (v38 != v90);
                        }

                        else
                        {
                          *v97 = *__s;
                          __strcat_chk();
                          v97[0] = 91;
                          v68 = LhpuGetDurValue(v26);
                          v69 = 1374389535 * (v96 * v68 + 50);
                          v70 = ((v69 >> 37) + (v69 >> 63));
                          v71 = &v97[1];
                          if (v70 >= 1)
                          {
                            v97[1] = 43;
                            v71 = v98;
                          }

                          LH_itoa(v70, v71, 0xAu);
                          __strcat_chk();
                          if (LhpuGetcBp(v26))
                          {
                            v72 = 0;
                            v73 = 0;
                            do
                            {
                              v97[0] = 40;
                              v74 = LhpuGetpBp(v26);
                              LH_itoa(*(v74 + v72 + 2), &v97[1], 0xAu);
                              __strcat_chk();
                              v75 = *(LhpuGetpBp(v26) + v72);
                              v76 = strlen(v97);
                              LH_itoa(v75, &v97[v76], 0xAu);
                              __strcat_chk();
                              __strcat_chk();
                              ++v73;
                              v72 += 4;
                            }

                            while (v73 < LhpuGetcBp(v26));
                          }

                          __strcat_chk();
                          v77 = 1;
                          do
                          {
                            *v97 = __s[v77];
                            __strcat_chk();
                            v97[0] = 91;
                            v78 = 1374389535 * (v97[v77 - 8] * LhpuGetDurValue(v26) + 50);
                            v79 = ((v78 >> 37) + (v78 >> 63));
                            v80 = &v97[1];
                            if (v79 >= 1)
                            {
                              v97[1] = 43;
                              v80 = v98;
                            }

                            LH_itoa(v79, v80, 0xAu);
                            __strcat_chk();
                            __strcat_chk();
                            ++v77;
                          }

                          while (v90 != v77);
                        }
                      }

                      else
                      {
                        *v97 = *__s;
                        __strcat_chk();
                        __strcat_chk();
                        if (LhpuGetcBp(v26))
                        {
                          v56 = 0;
                          v57 = 0;
                          do
                          {
                            v97[0] = 40;
                            v58 = LhpuGetpBp(v26);
                            LH_itoa(*(v58 + v56 + 2), &v97[1], 0xAu);
                            __strcat_chk();
                            v59 = *(LhpuGetpBp(v26) + v56);
                            v60 = strlen(v97);
                            LH_itoa(v59, &v97[v60], 0xAu);
                            __strcat_chk();
                            __strcat_chk();
                            ++v57;
                            v56 += 4;
                          }

                          while (v57 < LhpuGetcBp(v26));
                        }

                        __strcat_chk();
                        v61 = 1;
                        do
                        {
                          *v97 = __s[v61];
                          __strcat_chk();
                          ++v61;
                        }

                        while (v90 != v61);
                      }

                      v8 = v84;
                      v23 = v85;
                      v19 = v89;
                      v24 = v83;
                      v25 = v87;
                    }
                  }

                  else
                  {
                    __strcpy_chk();
                    v67 = strchr(__s2, 124);
                    if (v67)
                    {
                      *v67 = 0;
                    }
                  }
                }

                else
                {
                  v88 = 1;
                }

                v81 = strlen(__s2) + v23;
                v29 = v81 < v86;
                if (v81 < v86)
                {
                  strcat(v8, __s2);
                  v23 = v23 + strlen(__s2);
                }

                v28 = v93 + 1;
              }

              if (!v29)
              {
                break;
              }

              v20 += v28;
              v7 = v88;
              if (v20 >= v24)
              {
                goto LABEL_92;
              }
            }

            v7 = v88;
          }

LABEL_92:
          LhpuRemove(*(v21 + 8), &v94);
          log_OutText(*(v21 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : End (%x, %s)", v7, v8);
          if (v7 == 1)
          {
            log_OutText(*(v21 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme");
            v7 = 1;
          }
        }

        else
        {
          log_OutPublic(*(v21 + 32), "PHONMAP", 29000, 0);
          v7 = 2322604042;
        }
      }
    }

    StrMap = v7;
    goto LABEL_95;
  }

  StrMap = phonmap_LhPToLhTtsSequenceLngMoreMaps(a1, v12, a1[7], a4, v9, v8);
  v19 = v89;
LABEL_95:
  v82 = "";
  if (StrMap >= 0)
  {
    v82 = v8;
  }

  log_OutText(*(v19 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhTtsSequence : End (%x, %s)", StrMap, v82);
  if (StrMap == 1)
  {
    log_OutText(*(v19 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme");
    return 1;
  }

  else if ((StrMap & 0x80000000) != 0 && (StrMap & 0x1FFFu) <= 0x14 && ((1 << StrMap) & 0x10001A) != 0)
  {
    return (StrMap & 0x1FFF) - 1972363264;
  }

  return StrMap;
}

uint64_t phonmap_LhPToLhTtsSequenceLngMoreMaps(uint64_t a1, int a2, uint64_t a3, char *a4, unsigned int a5, char *a6)
{
  v95 = *MEMORY[0x1E69E9840];
  v6 = 2322604039;
  if (a5)
  {
    v7 = a4;
    if (*a4)
    {
      v12 = safeh_HandleCheck(a1, a2, 29348, 624);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      else
      {
        v79 = v12;
        v13 = *(a1 + 16);
        v14 = strlen(v7);
        *a6 = 0;
        log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : Begin (%s)", v7);
        v89 = LhpuCreate(*(v13 + 8));
        if (v89)
        {
          v88 = 0;
          v87 = 0;
          if (v14 >= 1)
          {
            v15 = &v7[v14];
            v16 = a5;
            v17 = 0;
            v75 = v13;
            v76 = a6;
            v77 = v15;
            v78 = a3;
            do
            {
              Symbol = LhplGetSymbol(v7, v89, &v88 + 1, &v88);
              if (Symbol)
              {
                if (Symbol == 1)
                {
                  break;
                }

                ++v7;
                v19 = 1;
              }

              else
              {
                v86 = 0;
                v19 = 1;
                if ((ssftmap_IteratorOpen(a3, 0, 1, &v86) & 0x80000000) == 0)
                {
                  v84 = 0;
                  v85 = 0;
                  v87 = 0;
                  if ((ssftmap_IteratorNext(v86, &v85, &v84) & 0x80000000) != 0)
                  {
                    v23 = 0;
                  }

                  else
                  {
                    v20 = v89;
                    __s[0] = 0;
                    v87 = 0;
                    v21 = v84;
                    kaldi::CuMatrixBase<float>::~CuMatrixBase();
                    stringmap_reader_Map(v21, v22, &v87);
                    if (v87)
                    {
                      v23 = 0;
LABEL_22:
                      if (LhpuHasDurSpec(v20) || LhpuGetcBp(v20))
                      {
                        v80 = v17;
                        v26 = v87;
                        v27 = strchr(v87, 124);
                        if (v27)
                        {
                          v28 = 0;
                          do
                          {
                            v29 = v28;
                            v30 = &v26[v28++];
                          }

                          while (v30 < v27);
                        }

                        else
                        {
                          v29 = strlen(v26);
                        }

                        v81 = v7;
                        if (v29 < 2u)
                        {
                          __strcpy_chk();
                          if (LhpuHasDurSpec(v20))
                          {
                            DurValue = LhpuGetDurValue(v20);
                            v91 = 91;
                            IsAbs = LhpuDurSpecIsAbs(v20);
                            v43 = &v92;
                            if (!IsAbs)
                            {
                              v43 = &v92;
                              if (DurValue >= 1)
                              {
                                v92 = 43;
                                v43 = v93;
                              }
                            }

                            LH_itoa(DurValue, v43, 0xAu);
                            __strcat_chk();
                            if (LhpuGetcBp(v20))
                            {
                              v44 = 0;
                              v45 = 0;
                              do
                              {
                                v91 = 40;
                                v46 = LhpuGetpBp(v20);
                                LH_itoa(*(v46 + v44 + 2), &v92, 0xAu);
                                __strcat_chk();
                                v47 = *(LhpuGetpBp(v20) + v44);
                                v48 = strlen(&v91);
                                LH_itoa(v47, &v91 + v48, 0xAu);
                                __strcat_chk();
                                __strcat_chk();
                                ++v45;
                                v44 += 4;
                              }

                              while (v45 < LhpuGetcBp(v20));
                            }
                          }

                          else
                          {
                            __strcat_chk();
                            if (LhpuGetcBp(v20))
                            {
                              v55 = 0;
                              v56 = 0;
                              do
                              {
                                v91 = 40;
                                v57 = LhpuGetpBp(v20);
                                LH_itoa(*(v57 + v55 + 2), &v92, 0xAu);
                                __strcat_chk();
                                v58 = *(LhpuGetpBp(v20) + v55);
                                v59 = strlen(&v91);
                                LH_itoa(v58, &v91 + v59, 0xAu);
                                __strcat_chk();
                                __strcat_chk();
                                ++v56;
                                v55 += 4;
                              }

                              while (v56 < LhpuGetcBp(v20));
                            }
                          }

                          __strcat_chk();
                          v17 = v80;
                          v7 = v81;
                          v13 = v75;
                          a6 = v76;
                          a3 = v78;
                        }

                        else
                        {
                          v31 = 0;
                          v90 = 0;
                          v83 = v29;
                          do
                          {
                            if (v27)
                            {
                              *(&v90 + v31) = atoi(v27 + 1);
                              v27 = strchr(v27 + 1, 58);
                            }

                            ++v31;
                          }

                          while (v83 != v31);
                          if (LhpuHasDurSpec(v20))
                          {
                            if (LhpuDurSpecIsAbs(v20))
                            {
                              v32 = 0;
                              LODWORD(v33) = 0;
                              v34 = 0;
                              v82 = v16;
                              do
                              {
                                v91 = v87[v32];
                                v92 = 0;
                                __strcat_chk();
                                v35 = 1374389535 * (*(&v90 + v32) * LhpuGetDurValue(v20) + 50);
                                v36 = (v35 >> 37) + (v35 >> 63);
                                v91 = 91;
                                LH_itoa(v36, &v92, 0xAu);
                                __strcat_chk();
                                v20 = v89;
                                if (v33 < LhpuGetcBp(v89))
                                {
                                  v37 = 4 * v33;
                                  v33 = v33;
                                  do
                                  {
                                    if (v36 + v34 < *(LhpuGetpBp(v20) + v37 + 2))
                                    {
                                      break;
                                    }

                                    v91 = 40;
                                    v38 = LhpuGetpBp(v20);
                                    LH_itoa(*(v38 + v37 + 2) - v34, &v92, 0xAu);
                                    __strcat_chk();
                                    v39 = *(LhpuGetpBp(v20) + v37);
                                    v40 = strlen(&v91);
                                    LH_itoa(v39, &v91 + v40, 0xAu);
                                    __strcat_chk();
                                    __strcat_chk();
                                    ++v33;
                                    v37 += 4;
                                  }

                                  while (v33 < LhpuGetcBp(v20));
                                  LODWORD(v33) = v33;
                                  v16 = v82;
                                }

                                __strcat_chk();
                                v34 += v36;
                                ++v32;
                              }

                              while (v32 != v83);
                            }

                            else
                            {
                              v91 = *v87;
                              v92 = 0;
                              __strcat_chk();
                              v91 = 91;
                              v61 = LhpuGetDurValue(v20);
                              v62 = 1374389535 * (v90 * v61 + 50);
                              v63 = ((v62 >> 37) + (v62 >> 63));
                              v64 = &v92;
                              if (v63 >= 1)
                              {
                                v92 = 43;
                                v64 = v93;
                              }

                              LH_itoa(v63, v64, 0xAu);
                              __strcat_chk();
                              if (LhpuGetcBp(v20))
                              {
                                v65 = 0;
                                v66 = 0;
                                do
                                {
                                  v91 = 40;
                                  v67 = LhpuGetpBp(v20);
                                  LH_itoa(*(v67 + v65 + 2), &v92, 0xAu);
                                  __strcat_chk();
                                  v68 = *(LhpuGetpBp(v20) + v65);
                                  v69 = strlen(&v91);
                                  LH_itoa(v68, &v91 + v69, 0xAu);
                                  __strcat_chk();
                                  __strcat_chk();
                                  ++v66;
                                  v65 += 4;
                                }

                                while (v66 < LhpuGetcBp(v20));
                              }

                              __strcat_chk();
                              v70 = 1;
                              do
                              {
                                v91 = v87[v70];
                                v92 = 0;
                                __strcat_chk();
                                v91 = 91;
                                v71 = 1374389535 * (*(&v90 + v70) * LhpuGetDurValue(v20) + 50);
                                v72 = ((v71 >> 37) + (v71 >> 63));
                                v73 = &v92;
                                if (v72 >= 1)
                                {
                                  v92 = 43;
                                  v73 = v93;
                                }

                                LH_itoa(v72, v73, 0xAu);
                                __strcat_chk();
                                __strcat_chk();
                                ++v70;
                              }

                              while (v83 != v70);
                            }
                          }

                          else
                          {
                            v91 = *v87;
                            v92 = 0;
                            __strcat_chk();
                            __strcat_chk();
                            if (LhpuGetcBp(v20))
                            {
                              v49 = 0;
                              v50 = 0;
                              do
                              {
                                v91 = 40;
                                v51 = LhpuGetpBp(v20);
                                LH_itoa(*(v51 + v49 + 2), &v92, 0xAu);
                                __strcat_chk();
                                v52 = *(LhpuGetpBp(v20) + v49);
                                v53 = strlen(&v91);
                                LH_itoa(v52, &v91 + v53, 0xAu);
                                __strcat_chk();
                                __strcat_chk();
                                ++v50;
                                v49 += 4;
                              }

                              while (v50 < LhpuGetcBp(v20));
                            }

                            __strcat_chk();
                            v54 = 1;
                            do
                            {
                              v91 = v87[v54];
                              v92 = 0;
                              __strcat_chk();
                              ++v54;
                            }

                            while (v83 != v54);
                          }

                          v13 = v75;
                          a6 = v76;
                          a3 = v78;
                          v17 = v80;
                          v7 = v81;
                        }
                      }

                      else
                      {
                        __strcpy_chk();
                        v60 = strchr(__s, 124);
                        a3 = v78;
                        if (v60)
                        {
                          *v60 = 0;
                        }
                      }

                      v15 = v77;
                      if (strlen(__s) + v17 >= v16)
                      {
                        v23 = 1;
                      }

                      else
                      {
                        strcat(a6, __s);
                        v17 = v17 + strlen(__s);
                      }

                      v7 += v88 + 1;
                    }

                    else
                    {
                      v23 = 0;
                      while (1)
                      {
                        if (strlen(__s) + v17 >= v16)
                        {
                          v23 = 1;
                        }

                        else
                        {
                          strcat(a6, __s);
                          v17 = v17 + strlen(__s);
                        }

                        v7 += v88 + 1;
                        if ((ssftmap_IteratorNext(v86, &v85, &v84) & 0x80000000) != 0)
                        {
                          break;
                        }

                        __s[0] = 0;
                        v87 = 0;
                        v24 = v84;
                        kaldi::CuMatrixBase<float>::~CuMatrixBase();
                        stringmap_reader_Map(v24, v25, &v87);
                        if (v87)
                        {
                          v79 = 1;
                          goto LABEL_22;
                        }
                      }

                      v79 = 1;
                      v15 = v77;
                      a3 = v78;
                    }
                  }

                  ssftmap_IteratorClose(v86);
                  v19 = v23 == 0;
                }
              }
            }

            while (v19 && v7 < v15);
          }

          LhpuRemove(*(v13 + 8), &v89);
          log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : End (%x, %s)", v79, a6);
          v6 = v79;
          if (v79 == 1)
          {
            log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme");
          }
        }

        else
        {
          log_OutPublic(*(v13 + 32), "PHONMAP", 29000, 0);
          return 2322604042;
        }
      }
    }
  }

  return v6;
}

uint64_t phonmap_GetLhPAlphabetCore(uint64_t a1, _WORD *a2, uint64_t a3)
{
  v13 = 0;
  v12 = 0;
  result = stringmap_reader_MapGetRawData(a1, &v13, &v12);
  if ((result & 0x80000000) == 0)
  {
    v6 = v13;
    if (v13)
    {
      v7 = 0;
      v8 = 0;
      v9 = v12;
      v10 = 1;
      while (1)
      {
        if (*(v9 + v7))
        {
          if (v6 > v7)
          {
            while (*(v9 + v7))
            {
              if (v10)
              {
                v11 = *a2;
                if (*a2)
                {
                  if (v11 <= v8)
                  {
                    goto LABEL_26;
                  }

                  *(a3 + v8) = *(v9 + v7);
                }

                ++v8;
              }

              if (++v7 >= v6)
              {
                v7 = v6;
                if (v10)
                {
                  goto LABEL_19;
                }

                goto LABEL_23;
              }
            }
          }

          v7 = v7;
          if (v10)
          {
LABEL_19:
            v11 = *a2;
            if (*a2)
            {
              if (v11 <= v8)
              {
                goto LABEL_26;
              }

              *(a3 + v8) = 32;
            }

            ++v8;
          }

LABEL_23:
          v10 ^= 1u;
        }

        else
        {
          ++v7;
        }

        if (v7 >= v6)
        {
          goto LABEL_25;
        }
      }
    }
  }

  LOWORD(v8) = 0;
LABEL_25:
  v11 = *a2;
  if (*a2)
  {
LABEL_26:
    if (v11 <= v8)
    {
      result = 2322604041;
    }

    else
    {
      *(a3 + v8) = 0;
    }
  }

  *a2 = v8 + 1;
  return result;
}

uint64_t phonmap_reader_MapsGetGetLhPAlphabetCore(uint64_t a1, __int16 *a2, uint64_t a3)
{
  LhPAlphabetCore = 2322604052;
  v14 = 0;
  v4 = 2322604039;
  if (a1 && a3)
  {
    v7 = *a2;
    v13 = *a2;
    if ((ssftmap_IteratorOpen(a1, 0, 1, &v14) & 0x80000000) != 0)
    {
      return 2322604052;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      if ((ssftmap_IteratorNext(v14, &v12, &v11) & 0x80000000) == 0)
      {
        v8 = 0;
        v9 = v7;
        while (1)
        {
          LhPAlphabetCore = phonmap_GetLhPAlphabetCore(v11, &v13, a3 + v8);
          if ((LhPAlphabetCore & 0x80000000) != 0)
          {
            break;
          }

          v9 -= v13 - 1;
          v8 += v13 - 1;
          v13 = v9;
          if ((ssftmap_IteratorNext(v14, &v12, &v11) & 0x80000000) != 0)
          {
            v7 = v7 - v9 + 1;
            break;
          }
        }
      }

      *a2 = v7;
      ssftmap_IteratorClose(v14);
      return LhPAlphabetCore;
    }
  }

  return v4;
}

uint64_t charcount_CountBlanks(uint64_t a1, unsigned int a2)
{
  if (a1 && a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (utf8_BelongsToSet(4u, a1, v4, a2))
      {
        ++v5;
      }

      v4 = (utf8_determineUTF8CharLength(*(a1 + v4)) + v4);
    }

    while (v4 < a2);
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t charcount_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 2)
  {
    return 2709528577;
  }

  result = 0;
  *a2 = &ICharcount;
  return result;
}

uint64_t charcount_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 2709528586;
  v22 = 0;
  if (!a5)
  {
    return 2709528582;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v22);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(*(v22 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjOpen: Begin");
  v10 = heap_Calloc(*(v22 + 8), 1, 48);
  if (!v10)
  {
    v15 = v22;
    goto LABEL_11;
  }

  v11 = v10;
  *v10 = a3;
  v10[1] = a4;
  v12 = v22;
  v10[2] = v22;
  v13 = *(v12 + 8);
  v19 = xmmword_1F42D3BC0;
  *&v20 = off_1F42D3BD0;
  v14 = vector_ObjOpen(v13, &v19, 1, v11 + 3);
  v15 = v22;
  if (!v14)
  {
LABEL_11:
    log_OutPublic(*(v15 + 32), "CHARCOUNT", 16000, 0);
    return v5;
  }

  v16 = *(v22 + 8);
  v19 = xmmword_1F42D3BD8;
  v20 = *off_1F42D3BE8;
  v21 = off_1F42D3BF8;
  v5 = ssftmap_ObjOpen(v16, 0, &v19, v11 + 4);
  v17 = 29350;
  if ((v5 & 0x80000000) != 0)
  {
    *a5 = v11;
    *(a5 + 8) = 29350;
    charcount_ObjClose(v11, *(a5 + 8));
    v11 = 0;
    v17 = 0;
  }

  *a5 = v11;
  *(a5 + 8) = v17;
  log_OutText(*(v22 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjOpen: End (%x)", v5);
  return v5;
}

uint64_t charcount_ObjClose(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 29350, 48);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = a1[2];
    log_OutText(*(v4 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjClose : Begin");
    vector_ObjClose(a1[3]);
    ssftmap_ObjClose(a1[4]);
    heap_Free(*(v4 + 8), a1);
    log_OutText(*(v4 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjClose : End (%x)", v3);
  }

  return v3;
}

uint64_t charcount_ObjReopen(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 29350, 48);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 16);
    log_OutText(*(v4 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjReopen : Begin");
    log_OutText(*(v4 + 32), "CHARCOUNT", 4, 0, "CHARCOUNT ObjReopen : End (%x)", v3);
  }

  return v3;
}

uint64_t charcount_AddCharcountEvent(uint64_t a1, int a2, unsigned __int8 *a3, unsigned __int16 a4)
{
  __s2 = 0;
  __s = 0;
  Str = safeh_HandleCheck(a1, a2, 29350, 48);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v18[0] = 0;
  v8 = *(a1 + 16);
  v9 = Utf8_LengthInUtf8chars(a3, a4);
  v10 = v9 - charcount_CountBlanks(a3, a4);
  *(a1 + 40) += v10;
  Str = paramc_ParamGetStr(*(v8 + 40), "voice", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v11 = paramc_ParamGetStr(*(v8 + 40), "voiceoperatingpoint", &__s2);
  if ((v11 & 0x80000000) == 0 || (v11 = paramc_ParamGetStr(*(v8 + 40), "voicemodel", &__s2), (v11 & 0x80000000) == 0))
  {
    v12 = strlen(__s);
    v13 = strlen(__s2);
    v14 = heap_Calloc(*(v8 + 8), 1, (v12 + v13 + 2));
    if (v14)
    {
      v15 = v14;
      v16 = strcpy(v14, __s);
      *&v15[strlen(v16)] = 95;
      strcat(v15, __s2);
      LODWORD(v18[0]) = v10;
      v18[1] = v15;
      if (!vector_Add(*(a1 + 24), v18))
      {
        v11 = 2709528586;
        log_OutPublic(*(v8 + 32), "CHARCOUNT", 16000, 0);
      }

      heap_Free(*(v8 + 8), v15);
    }

    else
    {
      v11 = 2709528586;
      log_OutPublic(*(v8 + 32), "CHARCOUNT", 16000, 0, v18[0]);
    }
  }

  return v11;
}

uint64_t charcount_ReportCharcounts(void *a1, int a2)
{
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v3 = safeh_HandleCheck(a1, a2, 29350, 48);
  v4 = v3;
  if (v3 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v16 = 0;
    v6 = a1[2];
    Size = vector_GetSize(a1[3]);
    if (Size)
    {
      v8 = Size;
      v9 = 0;
      while (vector_GetElemAt(a1[3], v9, &v16))
      {
        if ((ssftmap_FindReadOnly(a1[4], *(v16 + 8), &v15) & 0x80000000) != 0)
        {
          v10 = v16;
          v14 = *v16;
        }

        else
        {
          v14 = *v16 + *v15;
          ssftmap_Remove(a1[4], *(v16 + 8));
          v10 = v16;
        }

        v4 = ssftmap_Insert(a1[4], *(v10 + 8), &v14);
        if ((v4 & 0x80000000) != 0)
        {
          return v4;
        }

        if (v8 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v4 = 2709528576;
    }

    else
    {
LABEL_13:
      if ((ssftmap_IteratorOpen(v5[4], 0, 0, &v13) & 0x80000000) == 0)
      {
        while ((ssftmap_IteratorNext(v13, &v12, &v15) & 0x80000000) == 0)
        {
          log_OutEvent(*(v6 + 32), 31, "%s%s%s%u", "VOICE_VOP", v12, "CHARS", *v15);
          log_OutText(*(v6 + 32), "CHARCOUNT", 5, 0, "Number of utf-8 characters processed for voice_model%s=%d", v12, *v15);
        }

        ssftmap_IteratorClose(v13);
      }

      log_OutEvent(*(v6 + 32), 30, "%s%u", "CHARS", *(v5 + 10));
      log_OutText(*(v6 + 32), "CHARCOUNT", 5, 0, "Total number of utf-8 characters processed %d", *(v5 + 10));
    }

    vector_Clear(a1[3]);
    ssftmap_Clear(v5[4]);
    *(v5 + 10) = 0;
  }

  return v4;
}

uint64_t charcount_CheckAndModifyLastCharcountEvent(uint64_t a1, int a2, uint64_t a3, unsigned __int16 a4)
{
  __s2 = 0;
  __s = 0;
  v7 = safeh_HandleCheck(a1, a2, 29350, 48);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = *(a1 + 16);
    if (charcount_CountBlanks(a3, a4) != a4)
    {
      v21 = 0;
      Str = paramc_ParamGetStr(*(v8 + 40), "voice", &__s);
      if ((Str & 0x80000000) != 0)
      {
        return Str;
      }

      else
      {
        v10 = paramc_ParamGetStr(*(v8 + 40), "voiceoperatingpoint", &__s2);
        if ((v10 & 0x80000000) == 0 || (v10 = paramc_ParamGetStr(*(v8 + 40), "voicemodel", &__s2), v7 = v10, (v10 & 0x80000000) == 0))
        {
          v7 = 2709528586;
          v11 = strlen(__s);
          v12 = strlen(__s2);
          v13 = heap_Calloc(*(v8 + 8), 1, (v11 + v12 + 2));
          if (v13)
          {
            v14 = v13;
            v15 = strcpy(v13, __s);
            *&v14[strlen(v15)] = 95;
            strcat(v14, __s2);
            Size = vector_GetSize(*(a1 + 24));
            if (vector_GetElemAt(*(a1 + 24), Size - 1, &v21))
            {
              v17 = *(v21 + 8);
              if (strcmp(v17, v14))
              {
                v18 = strlen(v14);
                v19 = heap_Realloc(*(v8 + 8), v17, v18 + 1);
                if (!v19)
                {
                  log_OutPublic(*(v8 + 32), "CHARCOUNT", 16000, 0);
                  goto LABEL_15;
                }

                *(v21 + 8) = v19;
                strcpy(v19, v14);
              }

              v7 = v10;
            }

            else
            {
              v7 = 2709528576;
            }

LABEL_15:
            heap_Free(*(v8 + 8), v14);
          }
        }
      }
    }
  }

  return v7;
}

uint64_t charcount_ElemCopyParts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a3)
  {
    v7 = strlen(*(a1 + 8));
    result = heap_Alloc(a2, v7 + 1);
    *(a3 + 8) = result;
    if (result)
    {
      *a3 = *a1;
      strcpy(result, *(a1 + 8));
      return 1;
    }
  }

  return result;
}

void *charcount_ElemFreeParts(void *result, void *a2)
{
  if (result)
  {
    v2 = result[1];
    if (v2)
    {
      return heap_Free(a2, v2);
    }
  }

  return result;
}

uint64_t charcount_IElemValueCopy(_DWORD *a1, uint64_t a2, void *a3)
{
  v5 = heap_Alloc(a2, 4);
  if (!v5)
  {
    return 2709528586;
  }

  v6 = v5;
  result = 0;
  *v6 = *a1;
  *a3 = v6;
  return result;
}

uint64_t wordSeg_stricmp(char *a1, unsigned __int8 *a2)
{
  LOBYTE(v2) = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = a2;
  do
  {
    v5 = *a1;
    v6 = v5 - v2;
    if (v5 == v2)
    {
      ++a1;
      ++v3;
    }

    else if (v5 >= 1 && ssft_tolower(v2) == v5)
    {
      ++a1;
      ++v3;
      v6 = 0;
    }

    v2 = *v3;
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v2 == 0;
    }
  }

  while (!v7);
  result = v6 != 0;
  if (v6 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t fe_word_seg_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v23 = 0;
  v24 = 0;
  v5 = 2359304199;
  v21 = 0;
  v22 = 0;
  if (a5)
  {
    v20 = 0;
    v18 = 0;
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v24);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = objc_GetObject(v24[6], "SYNTHSTREAM", &v23);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    Object = objc_GetObject(v24[6], "FE_DEPES", &v22);
    v9 = v24[6];
    if ((Object & 0x80000000) != 0)
    {
      v16 = "SYNTHSTREAM";
    }

    else
    {
      v10 = objc_GetObject(v9, "FE_DCTLKP", &v21);
      if ((v10 & 0x80000000) == 0)
      {
        v11 = heap_Alloc(v24[1], 1208);
        if (v11)
        {
          v12 = v11;
          *v11 = v24;
          *(v11 + 8) = *(v23 + 8);
          v13 = v21;
          v14 = v22;
          *(v11 + 32) = *(v22 + 8);
          *(v11 + 16) = *(v14 + 16);
          v15 = *(v13 + 8);
          *(v11 + 56) = v15;
          *(v11 + 40) = *(v13 + 16);
          *(v11 + 1032) = 0;
          *(v11 + 1040) = 0;
          *(v11 + 1048) = 0;
          *(v11 + 1056) = 0;
          *(v11 + 1188) = 0x100000000;
          *(v11 + 952) = 0u;
          *(v11 + 968) = 0u;
          *(v11 + 984) = 0u;
          *(v11 + 1000) = 0u;
          *(v11 + 1010) = 0u;
          v19 = -1;
          v5 = (*(v15 + 96))(*(v11 + 40), *(v11 + 48), "fecfg", "backtrans", &v20, &v19, &v18);
          if ((v5 & 0x80000000) != 0)
          {
            heap_Free(v24[1], v12);
          }

          else
          {
            *(v12 + 1200) = v19 != 0;
            *a5 = v12;
            *(a5 + 8) = 86237;
          }
        }

        else
        {
          log_OutPublic(v24[4], "FE_WORDSEG", 61000, 0);
          objc_ReleaseObject(v24[6], "SYNTHSTREAM");
          objc_ReleaseObject(v24[6], "FE_DEPES");
          objc_ReleaseObject(v24[6], "FE_DCTLKP");
          return 2359304202;
        }

        return v5;
      }

      Object = v10;
      objc_ReleaseObject(v24[6], "SYNTHSTREAM");
      v9 = v24[6];
      v16 = "FE_DEPES";
    }

    objc_ReleaseObject(v9, v16);
    return Object;
  }

  return v5;
}

uint64_t fe_word_seg_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 86237, 1208);
  if ((result & 0x80000000) != 0)
  {
    return 2359304200;
  }

  if (a1)
  {
    objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_word_seg_ObjReopen(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 86237, 1208);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2359304200;
  }
}

uint64_t fe_word_seg_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 86237, 1208) & 0x80000000) != 0)
  {
    return 2359304200;
  }

  synstrmaux_InitStreamOpener(a1 + 64, *(*a1 + 32), "FE_WORDSEG");
  synstrmaux_RegisterInStream((a1 + 64), "text/plain;charset=utf-8", 0, a1 + 888);
  synstrmaux_RegisterInStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 904);
  synstrmaux_RegisterOutStream((a1 + 64), "text/plain;charset=utf-8", a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 64), "application/x-realspeak-markers-pp;version=4.0", a1 + 936);
  v7 = synstrmaux_OpenStreams((a1 + 64), *(a1 + 8), a3, a4);
  if ((v7 & 0x80000000) != 0 || (v7 = (*(*(a1 + 32) + 120))(*(a1 + 16), *(a1 + 24), 0, &unk_1C37BDF1D, 0), (v7 & 0x80000000) != 0))
  {
    v8 = v7;
    *(a1 + 1196) = 54;
    synstrmaux_CloseStreams((a1 + 64), *(a1 + 8));
  }

  else
  {
    v8 = (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), "word_segmentation");
    if ((v8 & 0x80000000) != 0)
    {
      *(a1 + 1192) = 0;
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "depes grammar %s not present", "word_segmentation");
      v8 = 0;
    }

    *(a1 + 1196) = 54;
  }

  return v8;
}

uint64_t fe_word_seg_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v103 = 0;
  v104 = 0;
  v102 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  if ((safeh_HandleCheck(a1, a2, 86237, 1208) & 0x80000000) != 0)
  {
    return 2359304200;
  }

  __src = 0;
  *a5 = 1;
  v7 = (*(*(a1 + 8) + 88))(*(a1 + 888), *(a1 + 896), &v104, &v103 + 4);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = HIDWORD(v103);
  v9 = (*(*(a1 + 8) + 144))(*(a1 + 904), *(a1 + 912), &v102 + 4, &v102);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  if (!HIDWORD(v103))
  {
    v69 = v102;
    if (!v102)
    {
      v97 = 0;
      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v97) & 0x80000000) != 0 || !v97 || !*v97)
      {
        *a5 = 0;
      }

      return v9;
    }

    if (HIDWORD(v102))
    {
      v7 = (*(*(a1 + 8) + 88))(*(a1 + 904), *(a1 + 912), &__src, &v103);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v7 = (*(*(a1 + 8) + 104))(*(a1 + 936), *(a1 + 944), __src, v103);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v9 = (*(*(a1 + 8) + 96))(*(a1 + 904), *(a1 + 912), v103);
      if ((v9 & 0x80000000) != 0)
      {
        return v9;
      }

      v69 = v102;
    }

    if (!v69)
    {
      return v9;
    }

    return synstrmaux_CloseOutStreamsOnly((a1 + 64), *(a1 + 8));
  }

  *(a1 + 1188) = log_GetLogLevel(*(*a1 + 32)) > 4;
  log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Processing Sentence=%s", v104);
  v7 = (*(*(a1 + 8) + 88))(*(a1 + 904), *(a1 + 912), &__src, &v103);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v10 = v103;
  *(a1 + 1040) = v103 >> 5;
  *(a1 + 1042) = v10 >> 5;
  v11 = heap_Alloc(*(*a1 + 8), v10);
  *(a1 + 1032) = v11;
  if (!v11 || (memcpy(v11, __src, v103), v12 = heap_Calloc(*(*a1 + 8), 1, (HIDWORD(v103) + 33)), (*(a1 + 1016) = v12) == 0))
  {
    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0);
    v9 = 2359304202;
    goto LABEL_130;
  }

  *(a1 + 1024) = WORD2(v103) + 32;
  strcpy(v12, v104);
  v13 = strlen(*(a1 + 1016));
  v14 = v13;
  v15 = Utf8_LengthInUtf8chars(*(a1 + 1016), v13);
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 1000), v15);
  if ((NewCharStr & 0x80000000) != 0 || (v95 = (a1 + 1000), memset(*(a1 + 1000), 110, v15), *(*(a1 + 1000) + v15) = 0, NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 1008), v15), (NewCharStr & 0x80000000) != 0))
  {
    v9 = NewCharStr;
    goto LABEL_130;
  }

  v93 = v10;
  v94 = v8;
  memset(*(a1 + 1008), 32, v15);
  LOWORD(v17) = 0;
  *(*(a1 + 1008) + v15) = 0;
  if (*(a1 + 1040) < 2u)
  {
    goto LABEL_70;
  }

  v17 = 0;
  v18 = 1;
  v19 = 88;
  v20 = 3;
  do
  {
    v21 = (*(*(a1 + 1032) + 32 * v18 + 12) - *(*(a1 + 1032) + 12));
    v22 = Utf8_LengthInUtf8chars(*(a1 + 1016), v21);
    v23 = *(a1 + 1032);
    v24 = (v23 + 32 * v18);
    v25 = *v24;
    if (*v24 != 34)
    {
      if (v25 != 21)
      {
        if (v25 == 1)
        {
          v17 = (v17 + 1);
        }

        else
        {
          v17 = v17;
        }

        goto LABEL_38;
      }

      if (!*(v24 + 3))
      {
        goto LABEL_38;
      }
    }

    v26 = *(a1 + 1040);
    LOWORD(v27) = v13;
    if (v18 + 1 >= v26)
    {
      goto LABEL_28;
    }

    v28 = (v23 + v19);
    v29 = v20;
    while (1)
    {
      v30 = *(v28 - 6);
      if (v30 == 21)
      {
        break;
      }

      if (v30 == 34)
      {
        goto LABEL_27;
      }

LABEL_24:
      v28 += 4;
      if (v26 == v29++)
      {
        LOWORD(v27) = v13;
        goto LABEL_28;
      }
    }

    if (!*v28)
    {
      goto LABEL_24;
    }

LABEL_27:
    v27 = *(v28 - 3) - *(v23 + 12);
LABEL_28:
    v32 = v17;
    if (v25 == 34)
    {
      v33 = 112;
    }

    else if (wordSeg_stricmp(*(v24 + 3), "normal"))
    {
      if (wordSeg_stricmp(*(*(a1 + 1032) + 32 * v18 + 24), "spell"))
      {
        v33 = 110;
      }

      else
      {
        v33 = 115;
      }
    }

    else
    {
      v33 = 110;
    }

    for (; v21 < v27; v21 = (utf8_determineUTF8CharLength(*(*(a1 + 1016) + v21)) + v21))
    {
      *(*(a1 + 1000) + v22++) = v33;
    }

    v17 = v32;
LABEL_38:
    ++v18;
    v34 = *(a1 + 1040);
    v19 += 32;
    ++v20;
  }

  while (v18 < v34);
  if (v34 < 2)
  {
    goto LABEL_69;
  }

  v92 = v17;
  v35 = 2;
  v36 = 1;
  v37 = 88;
  while (2)
  {
    v38 = *(a1 + 1032);
    v39 = *(v38 + 32 * v36 + 12);
    LODWORD(v38) = *(v38 + 12);
    v40 = v39 - v38;
    v41 = Utf8_LengthInUtf8chars(*(a1 + 1016), (v39 - v38));
    v42 = *(a1 + 1032);
    v43 = v42 + 32 * v36;
    if (*v43 == 7)
    {
      v49 = *(v43 + 24);
      if (!v49)
      {
        goto LABEL_67;
      }

      v50 = *(v43 + 16) + v40;
      if (v13 >= v50)
      {
        v51 = v50;
      }

      else
      {
        v51 = v13;
      }

      if (v49 == 43)
      {
        v52 = 112;
      }

      else
      {
        if (v49 != 16)
        {
          goto LABEL_67;
        }

        v52 = 116;
      }

      for (; v40 < v51; ++v41)
      {
        *(*(a1 + 1000) + v41) = v52;
        v40 += utf8_determineUTF8CharLength(*(*(a1 + 1016) + v40));
      }
    }

    else if (*v43 == 36)
    {
      v44 = *(v43 + 24);
      if (v44)
      {
        v45 = *(a1 + 1040);
        LOWORD(v46) = v13;
        if (v36 + 1 < v45)
        {
          v47 = (v42 + v37);
          v48 = v35;
          while (*(v47 - 6) != 36 || !*v47)
          {
            ++v48;
            v47 += 4;
            if (v45 == v48)
            {
              LOWORD(v46) = v13;
              goto LABEL_64;
            }
          }

          v53 = v42 + 32 * v48;
          LOWORD(v46) = v13;
          if (*v53 == 36)
          {
            LOWORD(v46) = v13;
            if (*(v53 + 24))
            {
              v46 = *(v53 + 12) - *(v42 + 12);
            }
          }
        }

LABEL_64:
        if (!wordSeg_stricmp(v44, "latin") && v46 > v40)
        {
          do
          {
            *(*(a1 + 1000) + v41) = 108;
            v40 += utf8_determineUTF8CharLength(*(*(a1 + 1016) + v40));
            ++v41;
          }

          while (v40 < v46);
        }
      }
    }

LABEL_67:
    ++v36;
    ++v35;
    v37 += 32;
    if (v36 < *(a1 + 1040))
    {
      continue;
    }

    break;
  }

  LOWORD(v17) = v92;
LABEL_69:
  v14 = v13;
LABEL_70:
  if (!v14)
  {
    goto LABEL_106;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  do
  {
    v57 = v56;
    if (*(*(a1 + 1016) + v56) == 32)
    {
      v58 = v55;
      *(*v95 + v55) = 32;
      *(*(a1 + 1008) + v55) = 32;
    }

    else
    {
      v58 = v55;
    }

    v59 = *(*v95 + v58);
    if (v59 == 115 || v59 == 110)
    {
      v54 = 1;
    }

    v56 = v57 + utf8_determineUTF8CharLength(*(*(a1 + 1016) + v57));
    ++v55;
  }

  while (v56 < v13);
  if (v54 != 1)
  {
    goto LABEL_106;
  }

  LODWORD(v97) = 0;
  wordSeg_logMarkers(a1, "Start of Chinese Word Segmentation");
  if (*(a1 + 1188) == 1)
  {
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Orth   =%s", *(a1 + 1016));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Region =%s", *(a1 + 1000));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Hex    =%s", *(a1 + 1008));
  }

  WordDefs = wordSeg_GetWordDefs(a1, &v100, &v99, v17);
  if ((WordDefs & 0x80000000) != 0)
  {
    v9 = WordDefs;
    v67 = 0;
    goto LABEL_128;
  }

  v61 = v100;
  v62 = v99;
  wordSeg_ParseOutPOSAndAttributes(a1, v100, v99);
  if (*(a1 + 1188) == 1)
  {
    wordSeg_logMarkers(a1, "After POS and ATTRIBUTE processing");
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER POS   =%s", *(a1 + 1016));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER POS   =%s", *(a1 + 1000));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER POS   =%s", *(a1 + 1008));
  }

  if (*(a1 + 1192) != 1)
  {
LABEL_106:
    v65 = 0;
    v67 = 0;
    goto LABEL_107;
  }

  v63 = strlen(*(a1 + 1016));
  HIDWORD(v103) = v63 + 1;
  v64 = heap_Calloc(*(*a1 + 8), 1, (v63 + 2));
  v65 = v64;
  if (!v64)
  {
    v67 = 0;
    goto LABEL_115;
  }

  strcpy(v64, *(a1 + 1016));
  v66 = heap_Alloc(*(*a1 + 8), v103);
  v67 = v66;
  if (!v66)
  {
LABEL_115:
    v68 = 0;
    goto LABEL_116;
  }

  memcpy(v66, *(a1 + 1032), v103);
  v68 = 1;
LABEL_116:
  v73 = wordSeg_setDepesLayers(a1, v61, v62);
  if ((v73 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  v73 = wordSeg_execDepesLayers(a1, &v97);
  if ((v73 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  if (v97)
  {
    goto LABEL_124;
  }

  v96 = 0;
  v73 = wordSeg_processDepesOutput(a1, v61, v62, &v96);
  if ((v73 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  if (v96 != 1)
  {
    goto LABEL_123;
  }

  v74 = *(*a1 + 32);
  if (v68)
  {
    log_OutPublic(v74, "FE_WORDSEG", 61005, 0);
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "!! Restoring backup as post-processing fails !!");
    strcpy(*(a1 + 1016), v65);
    memcpy(*(a1 + 1032), v67, v103);
    heap_Free(*(*a1 + 8), v65);
    heap_Free(*(*a1 + 8), v67);
    v65 = 0;
    v67 = 0;
LABEL_123:
    wordSeg_logMarkers(a1, "After DEPES result processing");
LABEL_124:
    if (*(a1 + 1188) == 1)
    {
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER DEPES =%s", *(a1 + 1016));
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER DEPES =%s", *(a1 + 1000));
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER DEPES =%s", *(a1 + 1008));
    }

LABEL_107:
    v71 = *(a1 + 1016);
    v72 = strlen(v71);
    LODWORD(v103) = 32 * *(a1 + 1040);
    HIDWORD(v103) = v72 + 1;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Final Sentence %s", v71);
    v73 = (*(*(a1 + 8) + 104))(*(a1 + 920), *(a1 + 928), *(a1 + 1016), HIDWORD(v103));
    if ((v73 & 0x80000000) == 0)
    {
      v73 = (*(*(a1 + 8) + 104))(*(a1 + 936), *(a1 + 944), *(a1 + 1032), v103);
      if ((v73 & 0x80000000) == 0)
      {
        v73 = (*(*(a1 + 8) + 96))(*(a1 + 888), *(a1 + 896), v94);
        if ((v73 & 0x80000000) == 0)
        {
          v73 = (*(*(a1 + 8) + 96))(*(a1 + 904), *(a1 + 912), v93);
          if ((v73 & 0x80000000) == 0)
          {
            v73 = (*(*(a1 + 32) + 112))(*(a1 + 16), *(a1 + 24), &v98, 0);
            if ((v73 & 0x80000000) == 0)
            {
              v98 += HIDWORD(v103) - v94;
              v73 = (*(*(a1 + 32) + 104))(*(a1 + 16), *(a1 + 24));
            }
          }
        }
      }
    }

LABEL_126:
    v9 = v73;
    if (v65)
    {
LABEL_127:
      heap_Free(*(*a1 + 8), v65);
    }
  }

  else
  {
    log_OutPublic(v74, "FE_WORDSEG", 61005, "%s%s", "ABORT", "no backup available");
    v9 = 2359304192;
    if (v65)
    {
      goto LABEL_127;
    }
  }

LABEL_128:
  if (v67)
  {
    heap_Free(*(*a1 + 8), v67);
  }

LABEL_130:
  if (*(a1 + 1056))
  {
    v75 = 0;
    do
    {
      heap_Free(*(*a1 + 8), *(*(a1 + 1048) + 8 * v75));
      *(*(a1 + 1048) + 8 * v75++) = 0;
    }

    while (v75 < *(a1 + 1056));
  }

  *(a1 + 1056) = 0;
  v76 = *(a1 + 1048);
  if (v76)
  {
    heap_Free(*(*a1 + 8), v76);
    *(a1 + 1048) = 0;
  }

  *(a1 + 1058) = 0;
  v77 = *(a1 + 1032);
  if (v77)
  {
    heap_Free(*(*a1 + 8), v77);
    *(a1 + 1032) = 0;
    *(a1 + 1040) = 0;
  }

  v78 = *(a1 + 952);
  if (v78)
  {
    heap_Free(*(*a1 + 8), v78);
    *(a1 + 952) = 0;
  }

  v79 = *(a1 + 960);
  if (v79)
  {
    heap_Free(*(*a1 + 8), v79);
    *(a1 + 960) = 0;
  }

  v80 = *(a1 + 968);
  if (v80)
  {
    heap_Free(*(*a1 + 8), v80);
    *(a1 + 968) = 0;
  }

  v81 = *(a1 + 976);
  if (v81)
  {
    heap_Free(*(*a1 + 8), v81);
    *(a1 + 976) = 0;
  }

  v82 = *(a1 + 1000);
  if (v82)
  {
    heap_Free(*(*a1 + 8), v82);
    *(a1 + 1000) = 0;
  }

  v83 = *(a1 + 1008);
  if (v83)
  {
    heap_Free(*(*a1 + 8), v83);
    *(a1 + 1008) = 0;
  }

  v84 = *(a1 + 1016);
  if (v84)
  {
    heap_Free(*(*a1 + 8), v84);
    *(a1 + 1016) = 0;
    *(a1 + 1024) = 0;
  }

  v85 = v100;
  if (v100)
  {
    v86 = v99;
    if (v99)
    {
      v87 = (v100 + 32);
      do
      {
        v88 = *(v87 - 3);
        if (v88)
        {
          heap_Free(*(*a1 + 8), v88);
          *(v87 - 3) = 0;
        }

        v89 = *(v87 - 2);
        if (v89)
        {
          heap_Free(*(*a1 + 8), v89);
          *(v87 - 2) = 0;
        }

        v90 = *(v87 - 1);
        if (v90)
        {
          heap_Free(*(*a1 + 8), v90);
          *(v87 - 1) = 0;
        }

        if (*v87)
        {
          heap_Free(*(*a1 + 8), *v87);
          *v87 = 0;
        }

        v91 = v87[3];
        if (v91)
        {
          heap_Free(*(*a1 + 8), v91);
          v87[3] = 0;
        }

        v87 += 9;
        --v86;
      }

      while (v86);
    }

    heap_Free(*(*a1 + 8), v85);
  }

  return v9;
}

_DWORD *wordSeg_logMarkers(_DWORD *result, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result[297])
  {
    v2 = result;
    result = log_OutText(*(*result + 32), "FE_WORDSEG", 5, 0, "%s", a2);
    if (*(v2 + 520))
    {
      v3 = 0;
      do
      {
        String = marker_getString(*(*(v2 + 129) + 32 * v3));
        v17 = 0;
        hasCharPtrArg = marker_hasCharPtrArg(*(*(v2 + 129) + 32 * v3));
        v6 = *(v2 + 129) + 32 * v3;
        if (hasCharPtrArg && (v7 = *(v6 + 24)) != 0)
        {
          v8 = strlen(*(v6 + 24));
          if (v8 <= 0x40uLL)
          {
            v9 = v8;
          }

          else
          {
            v9 = 63;
          }

          if (v9)
          {
            v10 = 1 - v9;
            v11 = &v18;
            while (1)
            {
              v12 = *v7;
              *(v11 - 1) = v12;
              if (!v12)
              {
                break;
              }

              ++v7;
              ++v10;
              ++v11;
              if (v10 == 1)
              {
                goto LABEL_17;
              }
            }

            if (v10)
            {
              bzero(v11, -v10);
            }
          }

LABEL_17:
          *(&v17 + v9) = 0;
        }

        else
        {
          v17 = 0;
        }

        v13 = *v6;
        if (*v6 == 32)
        {
          v17 = 48;
          if (*(v6 + 24) == 1)
          {
            v14 = 49;
          }

          else
          {
            v14 = 48;
          }

          v17 = v14;
          v18 = 0;
          v13 = *v6;
          v15 = &v17;
          v16 = "ARG=";
        }

        else
        {
          if (v17)
          {
            v16 = "ARG=";
          }

          else
          {
            v16 = &unk_1C37BDF1D;
          }

          if (v17)
          {
            v15 = &v17;
          }

          else
          {
            v15 = &unk_1C37BDF1D;
          }
        }

        result = log_OutText(*(*v2 + 32), "FE_WORDSEG", 5, 0, "marker[%d] %d(%s) %u,%u %u,%u %s%s", v3++, v13, String, *(v6 + 4), *(v6 + 8), *(v6 + 12), *(v6 + 16), v16, v15);
      }

      while (v3 < *(v2 + 520));
    }
  }

  return result;
}

uint64_t wordSeg_GetWordDefs(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, unsigned int a4)
{
  v5 = a1;
  v6 = heap_Calloc(*(*a1 + 8), 1, 72 * a4 + 72);
  if (!v6)
  {
    v17 = v5;
    v18 = 2359304202;
    log_OutPublic(*(*v17 + 32), "FE_WORDSEG", 61000, 0);
    return v18;
  }

  v7 = v6;
  if (*(v5 + 1040) < 2u)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = *(v5 + 1032);
      if (*(v11 + v8 + 32) == 1)
      {
        v12 = *(v5 + 1000);
        if (*(v12 + Utf8_LengthInUtf8chars(*(v5 + 1016), *(v11 + v8 + 44) - *(v11 + 12))) == 110)
        {
          v13 = v7 + 72 * v9;
          *v13 = v10;
          *(v13 + 8) = 0u;
          v14 = (v13 + 8);
          *(v13 + 44) = 0;
          *(v13 + 48) = 0;
          *(v13 + 24) = 0u;
          *(v13 + 40) = 1;
          *(v13 + 56) = 0;
          v15 = *(v5 + 1032) + v8;
          *(v13 + 64) = *(v15 + 36);
          NewCharStr = wordSeg_GetNewCharStr(v5, (v13 + 8), *(v15 + 48));
          if ((NewCharStr & 0x80000000) != 0)
          {
            v18 = NewCharStr;
            goto LABEL_120;
          }

          strncpy(*v14, (*(v5 + 1016) + (*(*(v5 + 1032) + v8 + 44) - *(*(v5 + 1032) + 12))), *(*(v5 + 1032) + v8 + 48));
          ++v9;
        }
      }

      ++v10;
      v8 += 32;
    }

    while (v10 < *(v5 + 1040));
  }

  *a3 = v9;
  v79 = v7;
  v83 = v5;
  if (*(v5 + 1040) >= 2u)
  {
    v19 = a2;
    v80 = (v7 + 16);
    v20 = 1;
    while (1)
    {
      v21 = *(v5 + 1032);
      v22 = (v21 + 32 * v20);
      if (*v22 == 37)
      {
        v23 = *(v5 + 1000);
        if (*(v23 + Utf8_LengthInUtf8chars(*(v5 + 1016), v22[3] - *(v21 + 12))) == 110)
        {
          break;
        }
      }

LABEL_55:
      if (++v20 >= *(v5 + 1040))
      {
        v9 = *a3;
        a2 = v19;
        v7 = v79;
        goto LABEL_82;
      }
    }

    v24 = *(v5 + 1040);
    a2 = v19;
    if (v24 < 2)
    {
      goto LABEL_79;
    }

    v25 = *a3;
    v26 = *(v5 + 1032);
    v27 = v26 + 32 * v20;
    v28 = (v26 + 44);
    v29 = 1;
    while (*(v28 - 3) != 1 || *v28 != *(v27 + 12))
    {
      ++v29;
      v28 += 8;
      if (v24 == v29)
      {
        goto LABEL_79;
      }
    }

    if (!*a3)
    {
LABEL_79:
      log_OutPublic(*(*v5 + 32), "FE_WORDSEG", 61005, 0);
      v18 = 0;
LABEL_80:
      v7 = v79;
      goto LABEL_120;
    }

    v30 = v80;
    while (*(v30 - 8) != v29)
    {
      v30 += 9;
      if (!--v25)
      {
        goto LABEL_79;
      }
    }

    v31 = strlen(*(v27 + 24));
    v32 = wordSeg_GetNewCharStr(v5, v30, v31);
    if ((v32 & 0x80000000) != 0)
    {
      v18 = v32;
      goto LABEL_124;
    }

    v5 = v83;
    if (v31)
    {
      v33 = *(*(v83 + 1032) + 32 * v20 + 24);
      v34 = 1 - v31;
      v35 = (*v30 + 1);
      while (1)
      {
        v36 = *v33;
        *(v35 - 1) = v36;
        if (!v36)
        {
          break;
        }

        ++v33;
        ++v34;
        ++v35;
        if (v34 == 1)
        {
          goto LABEL_35;
        }
      }

      if (v34)
      {
        bzero(v35, -v34);
      }
    }

LABEL_35:
    v37 = *(v83 + 1032);
    v38 = v37 + 32 * *(v30 - 8);
    LODWORD(v37) = *(v37 + 12);
    v39 = *(v38 + 12);
    v40 = v39 - v37;
    v41 = v39 - v37 + *(v38 + 16);
    v42 = (v39 - v37);
    v43 = Utf8_LengthInUtf8chars(*(v83 + 1016), v42);
    if (v42 >= v41)
    {
      goto LABEL_122;
    }

    v44 = v43;
    LODWORD(v45) = v40;
    do
    {
      v46 = *(v83 + 1016);
      v47 = *(v46 + v45);
      if (v45 && v47 == 92 && *(v46 + v45 - 1) != 32)
      {
        break;
      }

      LODWORD(v45) = v45 + utf8_determineUTF8CharLength(v47);
    }

    while (v45 < v41);
    v5 = v83;
    if (v45 == v40)
    {
LABEL_122:
      log_OutPublic(*(*v5 + 32), "FE_WORDSEG", 61013, "%s%d", "at input position", (*(*(v5 + 1032) + 32 * *(v30 - 8) + 12) - *(*(v5 + 1032) + 12)));
      v18 = 2359304192;
LABEL_124:
      a2 = v19;
      goto LABEL_80;
    }

    log_OutText(*(*v83 + 32), "FE_WORDSEG", 5, 0, "word _%s_", *(v30 - 1));
    if (v45 > v40)
    {
      v48 = v44;
      do
      {
        v49 = *(*(v83 + 1016) + v40);
        if (*(*(v83 + 1016) + v40) >= 48 && v49 <= *(v83 + 1196))
        {
          *(*(v83 + 1008) + v48) = 120;
          v49 = *(*(v83 + 1016) + v40);
        }

        LOWORD(v40) = v40 + utf8_determineUTF8CharLength(v49);
        ++v48;
      }

      while (v40 < v45);
    }

    if (v42 + 1 == v41 && *v30)
    {
      *(*(v83 + 1008) + v44) = 120;
    }

    v50 = *(v83 + 1016);
    if (*(v50 + v45) == 92 && *(v50 + v45 - 1) != 32)
    {
      v51 = v45 + 1;
      if ((v45 + 1) >= v41)
      {
LABEL_54:
        v5 = v83;
        if (v51 != v41)
        {
          goto LABEL_122;
        }

        goto LABEL_55;
      }

      v52 = (v45 + 1);
      v53 = 1;
      v45 = v52;
      while (!v45 || *(v50 + v45) != 92 || *(v50 + (v45 - 1)) == 32)
      {
        v53 = ++v45 < v41;
        if (v45 == v41)
        {
          LOWORD(v45) = v41;
          break;
        }
      }

      v54 = v45 - v51;
      if (v45 == v51)
      {
        if (v53)
        {
          goto LABEL_69;
        }

        goto LABEL_54;
      }

      v5 = v83;
      if ((wordSeg_GetNewCharStr(v83, v30 + 1, (v45 - v51)) & 0x80000000) != 0)
      {
        goto LABEL_122;
      }

      strncpy(v30[1], (*(v83 + 1016) + v52), v54);
      log_OutText(*(*v83 + 32), "FE_WORDSEG", 5, 0, "pos _%s_", v30[1]);
      if (v53)
      {
LABEL_69:
        v55 = v45 + 1;
        LOWORD(v56) = v55;
        if (v55 < v41)
        {
          v57 = *(v83 + 1016);
          v56 = v55;
          while (*(v57 + v56) != 92 || *(v57 + (v56 - 1)) == 32)
          {
            ++v56;
            v5 = v83;
            if (v56 == v41)
            {
              goto LABEL_76;
            }
          }
        }

        v5 = v83;
        if (v56 != v41)
        {
          goto LABEL_122;
        }

LABEL_76:
        if (v55 != v41)
        {
          v58 = v41 - v55;
          if ((wordSeg_GetNewCharStr(v5, v30 + 2, v58) & 0x80000000) != 0)
          {
            goto LABEL_122;
          }

          strncpy(v30[2], (*(v5 + 1016) + v55), v58);
          log_OutText(*(*v5 + 32), "FE_WORDSEG", 5, 0, "attr _%s_", v30[2]);
        }

        goto LABEL_55;
      }
    }

    v51 = v45;
    goto LABEL_54;
  }

LABEL_82:
  if (!v9)
  {
    v18 = 0;
    goto LABEL_120;
  }

  v78 = a2;
  v59 = 0;
  v60 = (v5 + 1060);
  while (1)
  {
    v61 = v7 + 72 * v59;
    v62 = *(v61 + 16);
    if (v62)
    {
      break;
    }

LABEL_115:
    if (++v59 >= *a3)
    {
      v18 = 0;
      goto LABEL_119;
    }
  }

  v63 = *(v61 + 8);
  v64 = strlen(v63);
  v65 = strlen(v62);
  *(v61 + 44) = 0;
  v81 = v65;
  __endptr = 0;
  *v60 = 0u;
  v60[1] = 0u;
  v60[2] = 0u;
  v60[3] = 0u;
  v60[4] = 0u;
  v60[5] = 0u;
  v66 = v65;
  v60[6] = 0u;
  v60[7] = 0u;
  if (v65 >= 3u)
  {
    v68 = 0;
    while (1)
    {
      v69 = &v62[v68];
      __str[0] = *v69;
      __str[1] = v69[1];
      __str[2] = 0;
      v70 = strtol(__str, &__endptr, 16);
      v85[0] = v69[2];
      v85[1] = v69[3];
      v85[2] = 0;
      if (strtol(v85, &__endptr, 16) == 49 && (v70 - 5) <= 0x28)
      {
        break;
      }

      v68 += 4;
      if (v66 <= v68 || (v68 | 3u) > v66)
      {
        goto LABEL_86;
      }
    }

    *v60 = v64;
    v7 = v79;
    v71 = (v61 + 44);
    v72 = v83;
    goto LABEL_109;
  }

LABEL_86:
  if (v64)
  {
    v67 = 0;
    while (!v67 || v63[v67] != 92 || v63[(v67 - 1)] == 32)
    {
      if (v64 == ++v67)
      {
        LOWORD(v67) = v64;
        goto LABEL_102;
      }
    }

    v64 = v67;
  }

  else
  {
    LOWORD(v67) = 0;
  }

LABEL_102:
  v87 = v67;
  OrthPinyinWords = wordSeg_GetOrthPinyinWords(v83, v64, v63, &v87);
  if (!OrthPinyinWords)
  {
    v7 = v79;
    v72 = v83;
    if (v64 != 1)
    {
LABEL_110:
      OrthPinyinWords = *(v61 + 48) != 1;
      goto LABEL_111;
    }

    v71 = (v61 + 48);
LABEL_109:
    OrthPinyinWords = 1;
    *v71 = 1;
    goto LABEL_111;
  }

  v7 = v79;
  v72 = v83;
  if (!v66 || (v81 & 3) != 0 || v66 >> 2 != OrthPinyinWords)
  {
    goto LABEL_110;
  }

LABEL_111:
  *(v61 + 40) = OrthPinyinWords;
  v74 = (v61 + 40);
  v75 = heap_Calloc(*(*v72 + 8), 1, 2 * OrthPinyinWords + 2);
  *(v61 + 56) = v75;
  if (v75)
  {
    if (*v74 >= 2u)
    {
      v76 = 0;
      do
      {
        *(v75 + 2 * v76) = *(v60 + v76);
        ++v76;
      }

      while (v76 < *v74);
    }

    goto LABEL_115;
  }

  v18 = 2359304202;
  log_OutPublic(*(*v72 + 32), "FE_WORDSEG", 61000, 0);
LABEL_119:
  a2 = v78;
LABEL_120:
  *a2 = v7;
  return v18;
}

size_t wordSeg_ParseOutPOSAndAttributes(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 1016);
  v6 = strlen(v5);
  result = Utf8_LengthInUtf8chars(v5, v6);
  if (!v6)
  {
    goto LABEL_64;
  }

  v47 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v49 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a3;
  do
  {
    v14 = v8;
    while (1)
    {
      v15 = *(a1 + 1000);
      if (v11)
      {
        v16 = &v15[v11];
        v17 = *v16;
        if (v17 != 110 && v17 != 115 || *(v16 - 1) != 32)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v18 = *v15;
        if (v18 != 110 && v18 != 115)
        {
          goto LABEL_22;
        }
      }

      if (v10 >= a3)
      {
LABEL_19:
        v9 = 0;
      }

      else
      {
        v19 = v10;
        v20 = (a2 + 72 * v10);
        while (1)
        {
          v21 = *v20;
          v20 += 36;
          v22 = *(*(a1 + 1032) + 32 * v21 + 12) - *(*(a1 + 1032) + 12);
          if (v22 == v14)
          {
            break;
          }

          ++v19;
          if (v22 > v14 || v19 >= v13)
          {
            goto LABEL_19;
          }
        }

        v10 = v19;
        v9 = 1;
      }

      v49 = v12;
LABEL_22:
      v24 = *(a1 + 1016);
      result = *(v24 + v12);
      if (!v12 || result != 92 || *(v24 + v12 - 1) == 32)
      {
        goto LABEL_30;
      }

      if (v9 == 1)
      {
        break;
      }

      if (v15[v11] == 115)
      {
        goto LABEL_32;
      }

LABEL_30:
      result = utf8_determineUTF8CharLength(result);
      v12 += result;
      ++v11;
      v14 = v12;
      if (v6 <= v12)
      {
        goto LABEL_64;
      }
    }

    if (!*(a2 + 72 * v10 + 16) || v15[v11] != 110)
    {
      goto LABEL_30;
    }

LABEL_32:
    v45 = v9;
    v46 = a3;
    v25 = v12;
    v26 = v11;
    v27 = v12;
    if (v6 > v12)
    {
      v28 = *(*(a1 + 1016) + v12);
      v29 = v12;
      v26 = v11;
      v25 = v12;
      v27 = v12;
      while (v28 != 32)
      {
        result = utf8_determineUTF8CharLength(v28);
        v29 += result;
        ++v26;
        v27 = v29;
        if (v6 <= v29)
        {
          v25 = v29;
          break;
        }

        v28 = *(*(a1 + 1016) + v29);
        v25 = v29;
      }
    }

    v8 = v12;
    if (v12 == v25)
    {
      v47 = v47 + v11 - v26;
    }

    else
    {
      v44 = v27;
      memmove((*(a1 + 1016) + v12), (*(a1 + 1016) + v25), (v6 - v27));
      *(*(a1 + 1016) + (v14 + v6 - v44)) = 0;
      v30 = v47 - v26;
      memmove((*(a1 + 1000) + v11), (*(a1 + 1000) + v26), v30);
      v31 = v11 + v47 - v26;
      *(*(a1 + 1000) + v31) = 0;
      result = memmove((*(a1 + 1008) + v11), (*(a1 + 1008) + v26), v30);
      v27 = v44;
      v8 = v12;
      v47 = v11 + v47 - v26;
      *(*(a1 + 1008) + v31) = 0;
    }

    v9 = v45;
    a3 = v46;
    v32 = v27 - v14;
    v33 = *(a1 + 1040);
    if (v33 >= 2)
    {
      v34 = *(a1 + 1032);
      v35 = *(v34 + 12);
      v36 = (v34 + 48);
      v37 = v33 - 1;
      do
      {
        v38 = *(v36 - 1);
        if (v38 >= v35 + v14)
        {
          v38 -= v32;
          *(v36 - 1) = v38;
        }

        v39 = v38 - v35;
        if (*(v36 - 4) == 1 && v39 == v49)
        {
          *v36 -= v32;
        }

        v36 += 8;
        --v37;
      }

      while (v37);
    }

    if (*(*(a1 + 1000) + v11 - 1) == 110)
    {
      v41 = a2 + 72 * v10;
      v42 = *(v41 + 8);
      if (v42)
      {
        result = strlen(*(v41 + 8));
        v8 = v12;
        if (result)
        {
          v43 = 0;
          do
          {
            if (v43 && *(v42 + v43) == 92 && *(v42 + (v43 - 1)) != 32)
            {
              break;
            }

            ++v43;
          }

          while (v43 < result);
          if (*(v42 + v43) == 92 && *(v42 + (v43 - 1)) != 32)
          {
            *(v42 + v43) = 0;
          }
        }
      }
    }

    v6 = (v6 - v32);
  }

  while (v6 > v8);
LABEL_64:
  *(*(a1 + 1032) + 16) = v6;
  return result;
}

uint64_t wordSeg_setDepesLayers(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = strlen(*(a1 + 1016));
  v7 = strlen(*(a1 + 1000));
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 952), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    return NewCharStr;
  }

  **(a1 + 952) = 0;
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 960), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    return NewCharStr;
  }

  **(a1 + 960) = 0;
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 968), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    return NewCharStr;
  }

  **(a1 + 968) = 0;
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 976), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    return NewCharStr;
  }

  v41 = v7;
  v38 = v6;
  **(a1 + 976) = 0;
  v49 = v6 + 32;
  if (a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v39 = a3;
    v40 = a2;
    while (1)
    {
      v13 = (a2 + 72 * v9);
      v14 = *(*(a1 + 1032) + 32 * *v13 + 12) - *(*(a1 + 1032) + 12);
      v15 = Utf8_LengthInUtf8chars(*(a1 + 1016), v14);
      if (v15 > v11)
      {
        v16 = v15;
        v10 = wordSeg_GrowDepesLayers(a1, &v49, v12, v11, &unk_1C37BDF1D, &unk_1C37BDF1D, &unk_1C37BDF1D, &unk_1C37BDF1D, v14 - v12, v15 - v11, 1);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v12 = v14;
        v11 = v16;
      }

      v42 = v9;
      if (v13[20])
      {
        break;
      }

LABEL_47:
      v9 = v42 + 1;
      a2 = v40;
      if (v42 + 1 == v39)
      {
        goto LABEL_50;
      }
    }

    v17 = 0;
    v43 = 0;
    v18 = v13[20] == 1;
    while (1)
    {
      if (v17)
      {
        v19 = *(*(v13 + 7) + 2 * v17 - 2);
        v20 = Utf8_LengthInUtf8chars(*(v13 + 1), v19);
        v21 = *(*(v13 + 7) + 2 * v17) - *(*(v13 + 7) + 2 * v17 - 2);
        v22 = Utf8_LengthInUtf8chars(*(v13 + 1), v21);
      }

      else
      {
        if (v18)
        {
          v21 = strlen(*(v13 + 1));
          v22 = Utf8_LengthInUtf8chars(*(v13 + 1), v21);
        }

        else
        {
          v21 = **(v13 + 7);
          v22 = Utf8_LengthInUtf8chars(*(v13 + 1), v21);
        }

        v19 = 0;
        v20 = 0;
      }

      if (v21 >= 0x40u)
      {
        break;
      }

      v45 = v22;
      __strncpy_chk();
      __s[v21] = 0;
      v47 = v11;
      v48 = v19;
      if (*(v13 + 11) == 1 || *(v13 + 12) == 1)
      {
        v23 = *(v13 + 2);
      }

      else
      {
        v33 = *(v13 + 2);
        if (v33)
        {
          v23 = __dst;
          strncpy(__dst, (v33 + v43), 4uLL);
          __dst[4] = 0;
          v43 += 4;
        }

        else
        {
          v23 = &unk_1C37BDF1D;
        }
      }

      v44 = v21;
      v46 = v12;
      v24 = strlen(v23);
      v25 = strlen(__s);
      v26 = Utf8_LengthInUtf8chars(__s, v25);
      v27 = v20;
      if (v17)
      {
        v28 = 0;
        v29 = 0;
        v30 = &unk_1C37BDF1D;
        v31 = &unk_1C37BDF1D;
      }

      else
      {
        v31 = *(v13 + 3);
        if (v31)
        {
          v32 = strlen(*(v13 + 3));
          v28 = Utf8_LengthInUtf8chars(v31, v32);
        }

        else
        {
          v28 = 0;
          v31 = &unk_1C37BDF1D;
        }

        v30 = *(v13 + 4);
        if (v30)
        {
          v34 = strlen(*(v13 + 4));
          v29 = Utf8_LengthInUtf8chars(v30, v34);
        }

        else
        {
          v29 = 0;
          v30 = &unk_1C37BDF1D;
        }
      }

      LOWORD(v35) = v26;
      if (v26 <= v24)
      {
        LOWORD(v35) = v24;
      }

      if (*(a1 + 1200))
      {
        LOWORD(v35) = v26;
      }

      v35 = v35;
      if (v35 <= v28)
      {
        v35 = v28;
      }

      if (v35 <= v29)
      {
        LOWORD(v35) = v29;
      }

      v10 = wordSeg_GrowDepesLayers(a1, &v49, v48, v27, v23, __s, v31, v30, v35, v35, 0);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      ++v17;
      v36 = v13[20];
      if (v17 < v36)
      {
        NewCharStr = wordSeg_GrowDepesLayers(a1, &v49, v48, v27, "*", "*", "~", "~", 1u, 1u, 0);
        if ((NewCharStr & 0x80000000) != 0)
        {
          return NewCharStr;
        }

        v10 = 0;
        v36 = v13[20];
      }

      v18 = 0;
      v12 = v44 + v46;
      v11 = v47 + v45;
      if (v17 >= v36)
      {
        goto LABEL_47;
      }
    }

    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61011, "%s%d%s%d", "trying to handle pinyin word length", v21, "chinese word", v42);
    return 2359304192;
  }

  LOWORD(v12) = 0;
  LOWORD(v11) = 0;
  v10 = 0;
LABEL_50:
  if (v41 > v11)
  {
    return wordSeg_GrowDepesLayers(a1, &v49, v12, v11, &unk_1C37BDF1D, &unk_1C37BDF1D, &unk_1C37BDF1D, &unk_1C37BDF1D, v38 - v12, v41 - v11, 1);
  }

  return v10;
}

uint64_t wordSeg_execDepesLayers(uint64_t a1, _DWORD *a2)
{
  v20 = 0;
  *a2 = 0;
  if (*(a1 + 1188) == 1)
  {
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "IN  L1: %s", *(a1 + 952));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "IN  L2: %s", *(a1 + 960));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "IN  L3: %s", *(a1 + 968));
    if (!*(a1 + 1200))
    {
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "IN  L4: %s", *(a1 + 976));
    }
  }

  v4 = strlen(*(a1 + 952));
  v5 = (*(*(a1 + 32) + 120))(*(a1 + 16), *(a1 + 24), 0, *(a1 + 952), v4);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  v6 = strlen(*(a1 + 960));
  v5 = (*(*(a1 + 32) + 120))(*(a1 + 16), *(a1 + 24), 1, *(a1 + 960), v6);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  v7 = strlen(*(a1 + 968));
  v5 = (*(*(a1 + 32) + 120))(*(a1 + 16), *(a1 + 24), 2, *(a1 + 968), v7);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  if (!*(a1 + 1200))
  {
    v8 = strlen(*(a1 + 976));
    v5 = (*(*(a1 + 32) + 120))(*(a1 + 16), *(a1 + 24), 3, *(a1 + 976), v8);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }
  }

  v9 = (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), "word_segmentation");
  if ((v9 & 0x80000000) != 0)
  {
    v10 = v9;
    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61006, "%s%s", "functionName", "word_segmentation");
    return v10;
  }

  v10 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, a1 + 984, &v20 + 2);
  if ((v10 & 0x80000000) == 0)
  {
    *(*(a1 + 984) + HIWORD(v20)) = 0;
    if (!*(a1 + 1200))
    {
      v11 = (a1 + 992);
      v10 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 1, a1 + 992, &v20);
      if ((v10 & 0x80000000) == 0)
      {
        *(*(a1 + 992) + v20) = 0;
        if (*(a1 + 1188) == 1)
        {
          log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "OUT L1: %s", *(a1 + 984));
          log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "OUT L2: %s", *(a1 + 992));
        }

        v12 = HIWORD(v20);
        if (v12 != Utf8_LengthInUtf8chars(*v11, v20))
        {
          v18 = *(*a1 + 32);
          v19 = 61008;
          goto LABEL_30;
        }

        if (HIWORD(v20))
        {
          v13 = 0;
          v14 = 0;
          do
          {
            v15 = *(*(a1 + 984) + v13);
            v16 = (*v11)[v14];
            if (v15 == 42)
            {
              if (v16 != 42)
              {
                goto LABEL_29;
              }
            }

            else if (v15 == 32 && v16 != 32)
            {
LABEL_29:
              v18 = *(*a1 + 32);
              v19 = 61009;
LABEL_30:
              log_OutPublic(v18, "FE_WORDSEG", v19, 0);
              *a2 = 1;
              return v10;
            }

            ++v13;
            v14 += utf8_determineUTF8CharLength(v16);
          }

          while (v13 < HIWORD(v20));
        }
      }
    }
  }

  return v10;
}

uint64_t wordSeg_processDepesOutput(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  v288 = *MEMORY[0x1E69E9840];
  v284 = 0;
  *__dst = 0;
  v282 = 0;
  *__s2 = 0;
  v7 = strlen(*(a1 + 952));
  v8 = strlen(*(a1 + 984));
  v248 = a4;
  *a4 = 0;
  v263 = a3;
  if (!a3)
  {
LABEL_162:
    v139 = strlen(*(a1 + 1016));
    v140 = strlen(*(a1 + 1000));
    v141 = v139;
    v142 = v140;
    if (v140)
    {
      v143 = 0;
      v144 = 0;
      v277 = 0;
      v145 = 0;
      v146 = 0;
      v269 = 0;
      LODWORD(v147) = 0;
      if (v139 >= v140)
      {
        v148 = v140;
      }

      else
      {
        v148 = v139;
      }

      v257 = v139;
      v253 = v148;
      v255 = v140;
      do
      {
        v149 = *(a1 + 1000);
        v150 = *(v149 + v145);
        if ((v150 == 110 || v150 == 88) && v148 > v145)
        {
          v151 = 0;
          v152 = v145;
          while (1)
          {
            v153 = v152;
            v154 = *(v149 + v152);
            if (v154 == 88)
            {
              v151 = 1;
            }

            else if (v154 == 32)
            {
              goto LABEL_177;
            }

            ++v152;
            if (v148 <= v153 + 1)
            {
              LOWORD(v153) = v153 + 1;
LABEL_177:
              if (v151 != 1)
              {
                break;
              }

              v262 = v153;
              v155 = Utf8_LengthInBytes(*(a1 + 1016), v143);
              v260 = Utf8_LengthInBytes(*(a1 + 1016), v152);
              v156 = v260;
              log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "processing modified region from %d to %d (last region processed %d,%d)", v155, v260, v277, v144);
              v271 = v146;
              if (v155 <= v144)
              {
                goto LABEL_213;
              }

              if (v144 >= v145)
              {
                v157 = 0;
              }

              else
              {
                v157 = 0;
                v158 = *(a1 + 1000);
                do
                {
                  v159 = v144;
                  v160 = *(v158 + v144);
                  if ((v160 == 110 || v160 == 88) && v144 < v145)
                  {
                    while (1)
                    {
                      v161 = *(v158 + v159);
                      if (v161 != 110 && v161 != 88)
                      {
                        break;
                      }

                      if (*(*(a1 + 1008) + v159) == 120)
                      {
                        v157 = (v157 + 1);
                      }

                      else
                      {
                        v157 = v157;
                      }

                      if (v145 == ++v159)
                      {
                        v144 = v145;
                        goto LABEL_192;
                      }
                    }

                    v144 = v159;
                  }

LABEL_192:
                  ++v144;
                }

                while (v144 < v145);
              }

              log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "skipping %d pinyin words in region (%d,%d)", v157, v277, v155);
              v162 = v269;
              log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "START curWordDef=%d curHexCount=%d", v147, v269);
              v163 = 0;
              if (v263 <= v147 || !v157)
              {
                goto LABEL_212;
              }

              v163 = 0;
              v164 = v147 + 1;
              v165 = (a2 + 16 + 72 * v147);
              v166 = v269;
              while (1)
              {
                if (*v165)
                {
                  v167 = v166;
                  v168 = strlen(*v165) >> 2;
                  if (v167)
                  {
                    v169 = v157 - v168 + v167;
                    if (v169 < 0)
                    {
                      v166 = (v167 + v157);
                      goto LABEL_211;
                    }
                  }

                  else
                  {
                    v169 = v157 - v168;
                    if (v169 < 0)
                    {
                      v166 = v157;
LABEL_211:
                      v269 = v166;
                      v162 = v166;
LABEL_212:
                      LODWORD(v147) = v163 + v147;
                      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "END curWordDef=%d curHexCount=%d", v147, v162);
                      v156 = v260;
LABEL_213:
                      v170 = *(a1 + 1040);
                      if (v170 < 2)
                      {
                        goto LABEL_244;
                      }

                      v171 = 1;
LABEL_215:
                      v172 = *(a1 + 1032);
                      v173 = v171;
                      v174 = (v172 + 32 * v171);
                      while (1)
                      {
                        v175 = v174[3];
                        v176 = (v175 - *(v172 + 12));
                        if (v176 <= v156)
                        {
                          if (v176 >= v155 && *v174 == 37)
                          {
                            if (v170 < 2u)
                            {
                              LOWORD(v170) = 1;
                            }

                            else
                            {
                              v177 = (v172 + 44);
                              v178 = 1;
                              while (*(v177 - 3) != 1 || *v177 != v175)
                              {
                                ++v178;
                                v177 += 8;
                                if (v170 == v178)
                                {
                                  goto LABEL_232;
                                }
                              }

                              LOWORD(v170) = v178;
                            }

LABEL_232:
                            v179 = v170;
                            log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "invalidate (WORD and HEX) markers %d and %d", v173, v170);
                            if (v179 <= v173)
                            {
                              v180 = v173;
                            }

                            else
                            {
                              v180 = v179;
                            }

                            if (v179 >= v173)
                            {
                              v173 = v173;
                            }

                            else
                            {
                              v173 = v179;
                            }

                            v181 = (v180 + 1);
                            v182 = *(a1 + 1040);
                            if (v182 > v181)
                            {
                              memmove((*(a1 + 1032) + 32 * v180), (*(a1 + 1032) + 32 * v181), 32 * (v182 - v181));
                              LOWORD(v182) = *(a1 + 1040);
                            }

                            v183 = v182 - 1;
                            *(a1 + 1040) = v182 - 1;
                            v184 = (v173 + 1);
                            v185 = (v182 - 1);
                            v186 = v185 >= v184;
                            v187 = v185 - v184;
                            if (v187 != 0 && v186)
                            {
                              memmove((*(a1 + 1032) + 32 * v173), (*(a1 + 1032) + 32 * v184), 32 * v187);
                              v183 = *(a1 + 1040);
                            }

                            LOWORD(v170) = v183 - 1;
                            *(a1 + 1040) = v170;
                            v171 = v173 - 1;
                            if ((v173 - 1) < v170)
                            {
                              goto LABEL_215;
                            }

LABEL_244:
                            if (v156 <= v155)
                            {
                              goto LABEL_301;
                            }

LABEL_245:
                            v188 = v155;
                            if (v156 <= v155)
                            {
                              v191 = v155;
                            }

                            else
                            {
                              v189 = *(a1 + 1016);
                              v190 = v155;
                              v191 = v155;
                              if (*(v189 + v155) == 32)
                              {
                                v192 = v189 + 1;
                                while (v156 > v190 + 1)
                                {
                                  v193 = *(v192 + v190++);
                                  if (v193 != 32)
                                  {
                                    v191 = v190;
                                    v188 = v190;
                                    goto LABEL_253;
                                  }
                                }

                                v191 = v260;
                                v188 = v156;
                              }
                            }

LABEL_253:
                            LODWORD(v155) = v191;
                            do
                            {
                              v155 = (v155 + 1);
                            }

                            while (v156 > v155 && *(*(a1 + 1016) + v155) != 32);
                            log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "processing word from %d to %d", v188, v155);
                            v285 = 0;
                            v194 = v155 - v191;
                            OrthPinyinWords = wordSeg_GetOrthPinyinWords(a1, (v155 - v191), *(a1 + 1016) + v191, &v285);
                            if (!OrthPinyinWords)
                            {
                              log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61002, "%s%s");
                              goto LABEL_312;
                            }

                            v196 = OrthPinyinWords;
                            log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "got %d words", OrthPinyinWords);
                            v197 = *(a1 + 1048);
                            if (v197)
                            {
                              v198 = *(a1 + 1058);
                              if (*(a1 + 1056) + 1 >= v198)
                              {
                                v199 = heap_Realloc(*(*a1 + 8), v197, 8 * v198 + 136);
                                if (!v199)
                                {
                                  goto LABEL_308;
                                }

                                *(a1 + 1048) = v199;
                                v200 = *(a1 + 1058) + 16;
                                goto LABEL_263;
                              }
                            }

                            else
                            {
                              v201 = heap_Calloc(*(*a1 + 8), 1, 136);
                              *(a1 + 1048) = v201;
                              if (!v201)
                              {
                                goto LABEL_308;
                              }

                              v200 = 16;
LABEL_263:
                              *(a1 + 1058) = v200;
                            }

                            v271 = v191;
                            v202 = heap_Calloc(*(*a1 + 8), 1, (4 * v196) | 1);
                            if (!v202)
                            {
LABEL_308:
                              v239 = 2359304202;
                              log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0);
                              goto LABEL_313;
                            }

                            v203 = v202;
                            v204 = *(a1 + 1056);
                            *(*(a1 + 1048) + 8 * v204) = v202;
                            *(a1 + 1056) = v204 + 1;
                            if (v263 <= v147)
                            {
                              v218 = v188;
                              v278 = 0;
                              goto LABEL_294;
                            }

                            v265 = v155 - v191;
                            v266 = v188;
                            v278 = 0;
                            v275 = 0;
                            v205 = 0;
                            v206 = 0;
                            v147 = v147;
                            v207 = v269;
                            while (1)
                            {
                              v208 = a2 + 72 * v147;
                              v209 = *(v208 + 16);
                              if (v209)
                              {
                                v210 = strlen(*(v208 + 16));
                                if (!v278)
                                {
                                  if (v275)
                                  {
                                    v278 = 0;
                                  }

                                  else
                                  {
                                    v278 = *(v208 + 64) + 2 * v207;
                                    v275 = *(a2 + 72 * v147 + 68);
                                  }
                                }

                                v211 = (v210 >> 2) - v207;
                                v212 = v196 - v205;
                                if (v211 >= v212)
                                {
                                  v219 = (v203 + (4 * v205));
                                  v220 = (v209 + (4 * v207));
                                  v221 = 1 - 4 * v212;
                                  v194 = v265;
                                  while (1)
                                  {
                                    v222 = *v220;
                                    *v219 = v222;
                                    if (!v222)
                                    {
                                      break;
                                    }

                                    ++v219;
                                    ++v220;
                                    if (++v221 == 1)
                                    {
                                      goto LABEL_291;
                                    }
                                  }

                                  if (v221)
                                  {
                                    bzero(v219, -v221);
                                    v212 = v196 - v205;
                                  }

LABEL_291:
                                  v218 = v266;
                                  if (v211 == v212)
                                  {
                                    v269 = 0;
                                    LODWORD(v147) = v147 + 1;
                                  }

                                  else
                                  {
                                    v269 = v212;
                                  }

LABEL_294:
                                  v223 = v218;
                                  v224 = *(*(a1 + 1032) + 12) + v218;
                                  v225 = v194;
                                  v226 = v224 + v194;
                                  MrkInsertPos = wordSeg_GetMrkInsertPos(a1, v224, v226);
                                  if (*(a1 + 1188) == 1)
                                  {
                                    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "add WORD marker at index %d (spos=%d, epos=%d)", MrkInsertPos, v224, v226);
                                  }

                                  MrkMemory = wordSeg_GetMrkMemory(a1, MrkInsertPos);
                                  if ((MrkMemory & 0x80000000) != 0)
                                  {
                                    goto LABEL_303;
                                  }

                                  v228 = 4 * v196;
                                  v229 = *(a1 + 1032);
                                  v230 = (v229 + 32 * MrkInsertPos);
                                  v231 = v223;
                                  v230[3] = *(v229 + 12) + v223;
                                  v230[4] = v225;
                                  *v230 = 1;
                                  v232 = (4 * v196) >> 1;
                                  v230[1] = v278;
                                  v230[2] = v232;
                                  v233 = *(v229 + 12) + v231;
                                  v234 = wordSeg_GetMrkInsertPos(a1, v233, v233 + v228);
                                  if (*(a1 + 1188) == 1)
                                  {
                                    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "add HEX marker at index %d (spos=%d, epos=%d)", v234, v233, v233 + v225);
                                  }

                                  MrkMemory = wordSeg_GetMrkMemory(a1, v234);
                                  if ((MrkMemory & 0x80000000) != 0)
                                  {
                                    goto LABEL_303;
                                  }

                                  v235 = *(a1 + 1032) + 32 * v234;
                                  *v235 = 37;
                                  *(v235 + 24) = *(*(a1 + 1048) + 8 * *(a1 + 1056) - 8);
                                  v236 = *(a1 + 1032);
                                  v237 = *(v236 + 12) + v231;
                                  v238 = (v236 + 32 * v234);
                                  v238[3] = v237;
                                  v238[4] = 2 * v228;
                                  v238[1] = v278;
                                  v238[2] = v232;
                                  v156 = v260;
                                  if (v260 <= v155)
                                  {
LABEL_301:
                                    v146 = v271;
                                    v277 = Utf8_LengthInUtf8chars(*(a1 + 1016), v271);
                                    v145 = v262;
                                    v144 = v262;
                                    v141 = v257;
                                    v148 = v253;
                                    v142 = v255;
                                    goto LABEL_194;
                                  }

                                  goto LABEL_245;
                                }

                                v213 = 4 * ((v210 >> 2) - v207);
                                if (v213)
                                {
                                  v214 = (v209 + (4 * v207));
                                  v215 = (v203 + (4 * v205));
                                  v216 = 1 - v213;
                                  while (1)
                                  {
                                    v217 = *v214;
                                    *v215 = v217;
                                    if (!v217)
                                    {
                                      break;
                                    }

                                    ++v215;
                                    ++v214;
                                    if (++v216 == 1)
                                    {
                                      goto LABEL_280;
                                    }
                                  }

                                  if (v216)
                                  {
                                    bzero(v215, -v216);
                                  }
                                }

LABEL_280:
                                v206 += v211;
                              }

                              if (++v147 < v263)
                              {
                                v207 = 0;
                                v205 = v206;
                                if (v196 > v206)
                                {
                                  continue;
                                }
                              }

                              v269 = 0;
                              v218 = v266;
                              v194 = v265;
                              goto LABEL_294;
                            }
                          }
                        }

                        else if (*v174 == 1 || *v174 == 37)
                        {
                          goto LABEL_244;
                        }

                        ++v173;
                        v174 += 8;
                        if (v173 >= v170)
                        {
                          goto LABEL_244;
                        }
                      }
                    }
                  }

                  v166 = 0;
                  LODWORD(v147) = v147 + 1;
                  v157 = v169;
                }

                else
                {
                  ++v163;
                }

                if (v164 < v263)
                {
                  ++v164;
                  v165 += 9;
                  if (v157)
                  {
                    continue;
                  }
                }

                goto LABEL_211;
              }
            }
          }
        }

LABEL_194:
        v143 = ++v145;
      }

      while (v142 > v145);
    }

    v239 = 0;
    *(*(a1 + 1032) + 16) = v141;
    return v239;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v272 = 0;
  v256 = (a1 + 1016);
  v267 = v8;
  v264 = (a1 + 1000);
  v280 = v7;
  while (1)
  {
    v14 = (a2 + 72 * v9);
    v15 = *(v14 + 2);
    v276 = v10;
    if (v15)
    {
      if (!*(v14 + 11))
      {
        v17 = strlen(v15);
        v273 = *(*(a1 + 1032) + 32 * *v14 + 12) - *(*(a1 + 1032) + 12);
        v18 = (*(*(a1 + 1032) + 32 * *v14 + 12) - *(*(a1 + 1032) + 12));
        v19 = Utf8_LengthInUtf8chars(*(a1 + 1016), v18);
        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "DOING hexStr=%s posInSentStr=%d", *(v14 + 2), v18);
        if ((*&v17 & 0x3FFFCLL) != 0)
        {
          break;
        }
      }
    }

    v16 = v12;
LABEL_6:
    ++v9;
    v12 = v16;
    v10 = v276;
    if (v9 == v263)
    {
      goto LABEL_162;
    }
  }

  v261 = a2 + 72 * v9;
  v20 = 0;
  v270 = 0;
  v250 = v19;
  v252 = (v17 >> 2);
  v254 = v9;
  v21 = v280;
  while (1)
  {
    v22 = (4 * v20);
    if (!*(a1 + 1200))
    {
      break;
    }

    v23 = v21;
    v24 = utf8_determineUTF8CharLength(*(*(v261 + 8) + v270));
    __strncpy_chk();
    __dst[v24] = 0;
    strncpy(__dst, (*(v261 + 16) + v22), 4uLL);
    v284 = 0;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "\tthisOrthStr=%s", __s2);
    if (v11 + 1 >= v23)
    {
      v25 = v11;
    }

    else
    {
      v25 = v11;
      do
      {
        v26 = (*(a1 + 952) + v25);
        if (!strncmp(v26, __s2, v24))
        {
          break;
        }

        v25 += utf8_determineUTF8CharLength(*v26);
      }

      while (v25 + 1 < v280);
    }

    v29 = *(a1 + 952);
    v30 = (v29 + v25);
    if (strncmp(v30, __s2, v24))
    {
      v241 = *(*a1 + 32);
      v242 = "orth1";
      goto LABEL_318;
    }

    v270 += v24;
    v276 = v24;
    v21 = v280;
LABEL_27:
    v31 = v25;
    v32 = v25;
    do
    {
      v33 = ++v32;
      if (v21 <= v32)
      {
        break;
      }

      v34 = *(v29 + v32);
      if (v34 == 42)
      {
        break;
      }
    }

    while (v34 != 32);
    v35 = v32 - v25;
    if (v35 > 63)
    {
      v240 = *(*a1 + 32);
      goto LABEL_307;
    }

    v36 = *(a1 + 1200);
    if (v35 < 1)
    {
      v43 = 0;
      v40 = v267;
    }

    else
    {
      v37 = 0;
      v38 = 0;
      v39 = v272;
      v40 = v267;
      do
      {
        if (v36)
        {
          v41 = *(v29 + v31);
        }

        else
        {
          v41 = *(*(a1 + 960) + v39);
        }

        if (v41 != 126)
        {
          v42 = v37++;
          __s1[v42] = v41;
        }

        ++v38;
        ++v39;
        ++v31;
      }

      while (v35 > v38);
      v43 = v37;
    }

    __s1[v43] = 0;
    v44 = v13;
    v268 = v20;
    if (v36)
    {
      while (v44 + 1 < v40)
      {
        v45 = (*(a1 + 984) + v13);
        if (!strncmp(v45, __s2, v276))
        {
          break;
        }

        v13 += utf8_determineUTF8CharLength(*v45);
        v44 = v13;
      }

      v46 = *(a1 + 984);
      v30 = (v46 + v13);
      v47 = __s2;
      v48 = v276;
      v49 = v30;
    }

    else
    {
      if (v13 + 4 < v40)
      {
        v50 = v13;
        while (strncmp((*(a1 + 984) + v50), __dst, 4uLL))
        {
          v13 = v50 + 1;
          v12 = v12 + utf8_determineUTF8CharLength(*(*(a1 + 992) + v12));
          v51 = v50++ + 5;
          if (v51 >= v40)
          {
            goto LABEL_53;
          }
        }

        v13 = v50;
      }

LABEL_53:
      v46 = *(a1 + 984);
      v30 = (v46 + v13);
      v47 = __dst;
      v49 = v30;
      v48 = 4;
    }

    if (strncmp(v49, v47, v48))
    {
      v241 = *(*a1 + 32);
      goto LABEL_317;
    }

    if (*__dst == 808466276 || *__dst == 1717985584)
    {
      v53 = v13 + 4;
      v52 = v13;
    }

    else
    {
      v52 = v13;
      v53 = v13;
      if (v40 <= v13)
      {
        v53 = v13;
      }

      else
      {
        do
        {
          v54 = *(v46 + v53);
          if (v54 == 32)
          {
            break;
          }

          if (v54 == 42)
          {
            break;
          }

          ++v53;
        }

        while (v40 > v53);
      }
    }

    v55 = v53 - v52;
    if (v55 > 63)
    {
      v240 = *(*a1 + 32);
      goto LABEL_307;
    }

    if (v55 < 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = 0;
      v57 = 0;
      v58 = *(a1 + 1200);
      v59 = v12;
      do
      {
        if (v58)
        {
          v60 = *(v46 + v52);
        }

        else
        {
          v60 = *(*(a1 + 992) + v59);
        }

        if (v60 != 32 && v60 != 126)
        {
          __s[v56++] = v60;
        }

        ++v57;
        ++v59;
        ++v52;
      }

      while (v55 > v57);
    }

    __s[v56] = 0;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "processing words IN=_%s_ OUT=_%s_", __s1, __s);
    if (strcmp(__s1, __s))
    {
      if (*(a1 + 1200))
      {
        v243 = *(*a1 + 32);
      }

      else
      {
        v61 = strlen(__s);
        v62 = strlen(__s1);
        v285 = 0;
        if (wordSeg_GetOrthPinyinWords(a1, v56, __s, &v285))
        {
          v63 = v61 - v62;
          log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "updating pinyin from %s to %s", __s1, __s);
          v64 = *(a1 + 1016);
          v65 = strlen(v64);
          v66 = strlen(__s1);
          v67 = strlen(__s);
          v258 = strlen(*(a1 + 1000));
          v249 = v66;
          v251 = v67;
          if (v63 < 1)
          {
            if ((v63 & 0x80000000) == 0)
            {
              v75 = v273;
              v73 = v273;
              v76 = (a1 + 1016);
              goto LABEL_92;
            }

            v73 = v273;
            v77 = v273 - v63;
            if (v77 <= v65)
            {
              __len = (v65 - v77);
              memmove(&v64[v273], &v64[v77], __len);
              v78 = v65 + v63;
              *(*v256 + v78) = 0;
              memmove((*v264 + v250), (*v264 + (v250 - v63)), __len);
              v75 = v273;
              *(*v264 + v78) = 0;
              v76 = (a1 + 1016);
              goto LABEL_92;
            }

            log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61005, "%s%d%s%d%s%d", "incorrect position detected : pos", v273);
LABEL_312:
            v239 = 2359304192;
          }

          else
          {
            v68 = v65 + v63;
            v69 = *(a1 + 1024);
            if (v68 <= v69)
            {
              goto LABEL_87;
            }

            if (v63 <= 0x20)
            {
              v70 = 32;
            }

            else
            {
              v70 = v63;
            }

            v71 = v69 + v70;
            MrkMemory = wordSeg_ReallocCharStr(a1, v256, (v69 + v70));
            if ((MrkMemory & 0x80000000) == 0)
            {
              MrkMemory = wordSeg_ReallocCharStr(a1, v264, v71);
              if ((MrkMemory & 0x80000000) == 0)
              {
                *(a1 + 1024) = v71;
                v64 = *(a1 + 1016);
LABEL_87:
                v73 = v273;
                v74 = v65 - v273;
                memmove(&v64[v63 + v273], &v64[v273], v74);
                *(*v256 + v68) = 0;
                memmove((*v264 + (v250 + v63)), (*v264 + v250), v74);
                v75 = v273;
                *(*v264 + v258 + v63) = 0;
                v76 = (a1 + 1016);
LABEL_92:
                v79 = v251;
                memmove((*v76 + v75), __s, v251);
                v40 = v267;
                if (v251)
                {
                  LODWORD(v80) = v258 - v73;
                  if (v258 >= v73)
                  {
                    v80 = v80;
                  }

                  else
                  {
                    v80 = 0;
                  }

                  v81 = v250;
                  do
                  {
                    if (!v80)
                    {
                      break;
                    }

                    *(*v264 + v81++) = 88;
                    --v80;
                    --v79;
                  }

                  while (v79);
                }

                v82 = *(a1 + 1040);
                if (v82 >= 2)
                {
                  v83 = *(a1 + 1032);
                  v84 = *(v83 + 12);
                  v85 = v82 - 1;
                  v86 = (v83 + 48);
                  do
                  {
                    if (*(v86 - 4) == 1)
                    {
                      v87 = *(v86 - 1);
                      v88 = v87 - v84;
                      if (v87 - v84 == v73)
                      {
                        *v86 = v63 + v249;
                        v88 = v73;
                      }
                    }

                    else
                    {
                      v87 = *(v86 - 1);
                      v88 = v87 - v84;
                    }

                    if (v88 >= v73 + v249)
                    {
                      *(v86 - 1) = v87 + v63;
                    }

                    v86 += 8;
                    --v85;
                  }

                  while (v85);
                }

                log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER pinyin rule      =%s", *(a1 + 1016));
                goto LABEL_109;
              }
            }

LABEL_303:
            v239 = MrkMemory;
          }

LABEL_313:
          log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61010, 0);
          return v239;
        }

        v243 = *(*a1 + 32);
      }

      log_OutPublic(v243, "FE_WORDSEG", 61002, "%s%s%s%s");
      goto LABEL_319;
    }

LABEL_109:
    if (*(a1 + 1200))
    {
      j = v273;
      for (i = v13 + v276; v40 > i; i += utf8_determineUTF8CharLength(0x7Eu))
      {
        if (*(*(a1 + 984) + i) != 126)
        {
          break;
        }
      }

      v16 = v12;
    }

    else
    {
      i = v13 + 4;
      v16 = (v12 + 4);
      for (j = v273; v40 > i; v16 = v16 + utf8_determineUTF8CharLength(*(*(a1 + 992) + v16)))
      {
        if (*(*(a1 + 984) + i) != 126)
        {
          break;
        }

        ++i;
      }
    }

    v91 = strlen(__s);
    v92 = j + v91;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "posInSentStr=%d", (j + v91));
    if (v280 > v33)
    {
      v93 = *(*(a1 + 952) + v33);
      v94 = *(*(a1 + 984) + i);
      if (v93 != v94)
      {
        v96 = (j + v91);
        v274 = j + v91;
        if (v93 == 42 && v94 == 32)
        {
          log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "insert boundary at position %d", (j + v91));
          v97 = strlen(*(a1 + 1016));
          v98 = Utf8_LengthInUtf8chars(*(a1 + 1016), (j + v91));
          v99 = v97;
          v100 = Utf8_LengthInUtf8chars(*(a1 + 1016), v97);
          v101 = *(a1 + 1024);
          if (v97 >= v101)
          {
            v259 = v97;
            v102 = v98;
            v103 = v100;
            MrkMemory = wordSeg_ReallocCharStr(a1, v256, (v101 + 32));
            if ((MrkMemory & 0x80000000) != 0)
            {
              goto LABEL_303;
            }

            MrkMemory = wordSeg_ReallocCharStr(a1, v264, (*(a1 + 1024) + 32));
            if ((MrkMemory & 0x80000000) != 0)
            {
              goto LABEL_303;
            }

            *(a1 + 1024) += 32;
            v100 = v103;
            v98 = v102;
            v97 = v259;
          }

          v104 = (v99 - v96);
          v105 = v100;
          memmove((*(a1 + 1016) + v92 + 1), (*(a1 + 1016) + v92), v104);
          *(*(a1 + 1016) + v92) = 32;
          *(*(a1 + 1016) + v97 + 1) = 0;
          v106 = v98 + 1;
          v107 = v105;
          v108 = v105 - v98;
          memmove((*(a1 + 1000) + v106), (*(a1 + 1000) + v98), v108);
          *(*(a1 + 1000) + v98) = 88;
          ++v107;
          *(*(a1 + 1000) + v107) = 0;
          memmove((*(a1 + 1008) + v106), (*(a1 + 1008) + v98), v108);
          *(*(a1 + 1008) + v98) = 32;
          *(*(a1 + 1008) + v107) = 0;
          v109 = *(a1 + 1040);
          if (v109 >= 2)
          {
            v110 = *(a1 + 1032);
            v111 = *(v110 + 12);
            v112 = v109 - 1;
            v113 = (v110 + 44);
            v9 = v254;
            v21 = v280;
            v114 = v274;
            do
            {
              if (*v113 - v111 >= v96)
              {
                ++*v113;
              }

              v113 += 8;
              --v112;
            }

            while (v112);
            v115 = 1;
            v116 = "AFTER insert rule      =%s posInSentStr=%d";
            goto LABEL_156;
          }

          v115 = 1;
          v116 = "AFTER insert rule      =%s posInSentStr=%d";
        }

        else
        {
          v117 = *(*a1 + 32);
          if (v93 != 32 || v94 != 42)
          {
            log_OutPublic(v117, "FE_WORDSEG", 61010, 0, v245, v246);
            goto LABEL_319;
          }

          log_OutText(v117, "FE_WORDSEG", 5, 0, "delete boundary at position %d", (j + v91));
          if (!(j + v91))
          {
            goto LABEL_321;
          }

          v118 = *v256;
          v119 = strlen(*v256);
          if ((j + v91) == v119)
          {
            goto LABEL_321;
          }

          v120 = (j + v91 - 1);
          v121 = j + v91 - 1;
          do
          {
            v122 = v120;
            if (!v121)
            {
              break;
            }

            v123 = v118[v121];
            --v120;
            --v121;
          }

          while (v123 != 32);
          v124 = v119;
          if ((j + v91 + 1) > v119)
          {
            v124 = j + v91 + 1;
          }

          v125 = j + v91;
          while (++v125 < v119)
          {
            if (v118[v125] == 32)
            {
              goto LABEL_147;
            }
          }

          v125 = v124;
LABEL_147:
          if (v125 - v122 >= 65)
          {
LABEL_321:
            v240 = *(*a1 + 32);
LABEL_307:
            log_OutPublic(v240, "FE_WORDSEG", 61011, "%s%d%s%d");
            goto LABEL_319;
          }

          v126 = strlen(v118);
          v127 = Utf8_LengthInUtf8chars(v118, v92);
          v128 = Utf8_LengthInUtf8chars(*(a1 + 1016), v126);
          memmove((*(a1 + 1016) + v92), (*(a1 + 1016) + v96 + 1), (v126 - (v96 + 1)));
          *(*(a1 + 1016) + v126 - 1) = 0;
          v129 = v127 + 1;
          v130 = v128 - v129;
          memmove((*(a1 + 1000) + v127), (*(a1 + 1000) + v129), v130);
          *(*(a1 + 1000) + v127) = 88;
          v131 = v128 - 1;
          *(*(a1 + 1000) + v131) = 0;
          memmove((*(a1 + 1008) + v127), (*(a1 + 1008) + v129), v130);
          *(*(a1 + 1008) + v127) = 32;
          *(*(a1 + 1008) + v131) = 0;
          v132 = *(a1 + 1040);
          if (v132 >= 2)
          {
            v133 = *(a1 + 1032);
            v134 = *(v133 + 12);
            v135 = v132 - 1;
            v136 = (v133 + 44);
            v9 = v254;
            v21 = v280;
            v114 = v274;
            do
            {
              if (*v136 - v134 >= v96)
              {
                --*v136;
              }

              v136 += 8;
              --v135;
            }

            while (v135);
            v115 = 0xFFFF;
            v116 = "AFTER delete rule      =%s posInSentStr=%d";
            goto LABEL_156;
          }

          v115 = 0xFFFF;
          v116 = "AFTER delete rule      =%s posInSentStr=%d";
        }

        v9 = v254;
        v21 = v280;
        v114 = v274;
LABEL_156:
        v95 = v114 + v115;
        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, v116, *(a1 + 1016), (v114 + v115));
        goto LABEL_157;
      }
    }

    v95 = j + v91;
    v9 = v254;
    v21 = v280;
LABEL_157:
    v273 = v95;
    if (*(a1 + 1200))
    {
      v137 = utf8_determineUTF8CharLength(*(*(a1 + 952) + v25));
      v138 = utf8_determineUTF8CharLength(*(*(a1 + 984) + i));
    }

    else
    {
      v272 = v272 + utf8_determineUTF8CharLength(*(*(a1 + 960) + v272));
      v16 = v16 + utf8_determineUTF8CharLength(*(*(a1 + 992) + v16));
      v138 = 1;
      v137 = 1;
    }

    v11 = v137 + v25;
    v13 = v138 + i;
    v20 = v268 + 1;
    v12 = v16;
    if (v268 + 1 >= v252)
    {
      goto LABEL_6;
    }
  }

  strncpy(__dst, (*(v261 + 16) + v22), 4uLL);
  v284 = 0;
  log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "\tthisHexStr=%s", __dst);
  if (v11 + 4 >= v21)
  {
    v25 = v11;
    v27 = v272;
  }

  else
  {
    v27 = v272;
    while (strncmp((*(a1 + 952) + v11), __dst, 4uLL))
    {
      v25 = v11 + 1;
      v27 = v27 + utf8_determineUTF8CharLength(*(*(a1 + 960) + v27));
      v28 = v11++ + 5;
      if (v28 >= v21)
      {
        goto LABEL_26;
      }
    }

    v25 = v11;
  }

LABEL_26:
  v272 = v27;
  v29 = *(a1 + 952);
  v30 = (v29 + v25);
  if (!strncmp(v30, __dst, 4uLL))
  {
    goto LABEL_27;
  }

  v241 = *(*a1 + 32);
LABEL_317:
  v242 = "hex1(first 4 chars)";
LABEL_318:
  log_OutPublic(v241, "FE_WORDSEG", 61012, "%s%s%s%s%s%s", v242, v30);
LABEL_319:
  v239 = 0;
  *v248 = 1;
  return v239;
}

uint64_t fe_word_seg_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 86237, 1208) & 0x80000000) != 0)
  {
    return 2359304200;
  }

  v3 = *(a1 + 8);

  return synstrmaux_CloseStreams((a1 + 64), v3);
}

uint64_t fe_word_seg_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2359304193;
  }

  result = 0;
  *a2 = &IWordSeg;
  return result;
}

uint64_t wordSeg_GetNewCharStr(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = *a2;
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
    *a2 = 0;
  }

  v7 = heap_Calloc(*(*a1 + 8), 1, a3 + 1);
  *a2 = v7;
  if (v7)
  {
    return 0;
  }

  log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0);
  return 2359304202;
}

uint64_t wordSeg_GetOrthPinyinWords(uint64_t a1, unsigned int a2, uint64_t a3, unsigned __int16 *a4)
{
  v7 = *(a1 + 1200);
  *a4 = 0;
  if (v7)
  {
    if (a2)
    {
      LOWORD(v8) = 0;
      v9 = 0;
      v10 = a1 + 1060;
      do
      {
        v11 = *a4 + utf8_determineUTF8CharLength(*(a3 + v8));
        *a4 = v11;
        *(v10 + 2 * v9++) = v11;
        v8 = *a4;
      }

      while (v8 < a2);
      return v9;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = 0;
  for (i = 0; i < a2; *a4 = i)
  {
    while (1)
    {
      v13 = *(a3 + i);
      if (v13 - 97 > 0x19)
      {
        break;
      }

      *a4 = ++i;
      if (a2 <= i)
      {
        if (a2 == i)
        {
          return 0;
        }

        goto LABEL_17;
      }
    }

    if ((v13 < 0x31 || v13 > *(a1 + 1196)) && (!i || v13 != 39 || *(a3 + i - 1) != 114))
    {
      goto LABEL_27;
    }

LABEL_17:
    *(a1 + 1060 + 2 * v9++) = i + 1;
    i = *a4 + 1;
  }

  if (a2 == i)
  {
    v14 = i;
    v15 = *(a3 + i - 1);
    if ((v15 < 0x31 || v15 > *(a1 + 1196)) && (a2 < 3 || v15 != 39 || *(a3 + v14 - 2) != 114))
    {
      LOBYTE(v13) = *(a3 + v14);
LABEL_27:
      if (!memchr("|-=*()&%^@#$", v13, 0xDuLL))
      {
        return 0;
      }
    }
  }

  return v9;
}

uint64_t wordSeg_GrowDepesLayers(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned int a4, const char *a5, char *a6, char *a7, char *a8, unsigned __int16 a9, unsigned __int16 a10, int a11)
{
  v11 = a8;
  if (!*(a1 + 1200))
  {
    v34 = (a1 + 960);
    v35 = strlen(*(a1 + 960));
    v36 = (a1 + 952);
    v73 = strlen(*(a1 + 952));
    __n = a2;
    v37 = *a2;
    v38 = v35 + a9;
    if (v38 > v37)
    {
      if (a9 <= 0x20u)
      {
        v39 = 32;
      }

      else
      {
        v39 = a9;
      }

      v40 = v37 + v39;
      v41 = (v37 + v39);
      result = wordSeg_ReallocCharStr(a1, (a1 + 952), v41);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v42 = (v41 - v35);
      bzero((*(a1 + 952) + v73), v42);
      result = wordSeg_ReallocCharStr(a1, (a1 + 960), v41);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      bzero((*(a1 + 960) + v35), v42);
      result = wordSeg_ReallocCharStr(a1, (a1 + 968), v40);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      bzero((*(a1 + 968) + v73), v42);
      result = wordSeg_ReallocCharStr(a1, (a1 + 976), v40);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      bzero((*(a1 + 976) + v73), v42);
      *__n = v40;
      v11 = a8;
    }

    if (a11 == 1)
    {
      strncat(*(a1 + 952), (*(a1 + 1000) + a4), a10);
      *(*(a1 + 952) + v73 + a10) = 0;
      strncat(*(a1 + 960), (*(a1 + 1016) + a3), a9);
      *(*(a1 + 960) + v38) = 0;
      if (a10)
      {
        for (i = 0; i < a10; ++i)
        {
          *(*(a1 + 968) + strlen(*(a1 + 968))) = 32;
        }

        for (j = 0; j < a10; ++j)
        {
          *(*(a1 + 976) + strlen(*(a1 + 976))) = 32;
        }
      }
    }

    else
    {
      v45 = strlen(a5);
      v46 = strlen(a6);
      v47 = strlen(a7);
      v77 = strlen(v11);
      strcat(*v36, a5);
      v48 = a10 - v45;
      if (v48 >= 1)
      {
        v49 = 0;
        do
        {
          *&(*v36)[strlen(*v36)] = 126;
          ++v49;
        }

        while (v48 > v49);
      }

      strcat(*v34, a6);
      v50 = a10 - v46;
      if (v50 >= 1)
      {
        v51 = 0;
        do
        {
          *&(*v34)[strlen(*v34)] = 126;
          ++v51;
        }

        while (v50 > v51);
      }

      strcat(*(a1 + 968), a7);
      v52 = a10 - v47;
      if (v52 >= 1)
      {
        v53 = 0;
        do
        {
          *(*(a1 + 968) + strlen(*(a1 + 968))) = 126;
          ++v53;
        }

        while (v52 > v53);
      }

      strcat(*(a1 + 976), a8);
      v54 = a10 - v77;
      if (v54 >= 1)
      {
        v55 = 0;
        do
        {
          *(*(a1 + 976) + strlen(*(a1 + 976))) = 126;
          ++v55;
        }

        while (v54 > v55);
      }
    }

    return 0;
  }

  v16 = (a1 + 952);
  v17 = strlen(*(a1 + 952));
  v72 = (a1 + 960);
  v18 = strlen(*(a1 + 960));
  v69 = (a1 + 968);
  v19 = strlen(*(a1 + 968));
  v20 = strlen(a6);
  v21 = strlen(a7);
  v22 = strlen(v11);
  v23 = *a2;
  if (a9 + v17 + v20 < v23 && a9 + v18 + v21 < v23 && a9 + v19 + v22 < v23)
  {
LABEL_21:
    if (a11 == 1)
    {
      strncat(*(a1 + 952), (*(a1 + 1000) + a4), a10);
      *(*(a1 + 952) + v17 + a10) = 0;
      if (a10)
      {
        for (k = 0; k < a10; ++k)
        {
          *&(*v72)[strlen(*v72)] = 32;
        }

        for (m = 0; m < a10; ++m)
        {
          *&(*v69)[strlen(*v69)] = 32;
        }
      }
    }

    else
    {
      v56 = strlen(a6);
      v57 = Utf8_LengthInUtf8chars(a6, v56);
      v58 = strlen(a7);
      v59 = Utf8_LengthInUtf8chars(a7, v58);
      v60 = strlen(a8);
      v61 = Utf8_LengthInUtf8chars(a8, v60);
      strcat(*v16, a6);
      v62 = a10 - v57;
      if (v62 >= 1)
      {
        v63 = 0;
        do
        {
          *&(*v16)[strlen(*v16)] = 126;
          ++v63;
        }

        while (v62 > v63);
      }

      strcat(*v72, a7);
      v64 = a10 - v59;
      if (v64 >= 1)
      {
        v65 = 0;
        do
        {
          *&(*v72)[strlen(*v72)] = 126;
          ++v65;
        }

        while (v64 > v65);
      }

      strcat(*v69, a8);
      v66 = a10 - v61;
      if (v66 >= 1)
      {
        v67 = 0;
        do
        {
          *&(*v69)[strlen(*v69)] = 126;
          ++v67;
        }

        while (v66 > v67);
      }
    }

    return 0;
  }

  v26 = v21;
  if (v20 > v21)
  {
    v26 = v20;
  }

  if (v26 <= v22)
  {
    v26 = v22;
  }

  v27 = v26 + a9;
  v28 = v23 + a9 + v26;
  v29 = v23 + 32;
  if (v27 <= 0x20)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  result = wordSeg_ReallocCharStr(a1, (a1 + 952), v30);
  if ((result & 0x80000000) == 0)
  {
    bzero((*(a1 + 952) + v17), v30 - v17);
    result = wordSeg_ReallocCharStr(a1, v72, v30);
    if ((result & 0x80000000) == 0)
    {
      bzero((*(a1 + 960) + v18), v30 - v18);
      result = wordSeg_ReallocCharStr(a1, v69, v30);
      if ((result & 0x80000000) == 0)
      {
        bzero(&(*v69)[v19], v30 - v19);
        *a2 = v30;
        goto LABEL_21;
      }
    }
  }

  return result;
}

uint64_t wordSeg_ReallocCharStr(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = heap_Realloc(*(*a1 + 8), *a2, a3 + 1);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *a2 = v6;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0);
    return 2359304202;
  }

  return result;
}

uint64_t wordSeg_GetMrkInsertPos(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 1040);
  if (v3 < 2)
  {
    return 1;
  }

  v4 = (*(a1 + 1032) + 48);
  v5 = 1;
  while (*(v4 - 1) <= a2)
  {
    ++v5;
    v4 += 8;
    if (v3 == v5)
    {
      return v3;
    }
  }

  result = v5;
  if (*(v4 - 1) == a2 && v3 > v5)
  {
    while (*(v4 - 1) == a2 && *v4 + a2 <= a3)
    {
      ++v5;
      v4 += 8;
      if (v3 == v5)
      {
        return v3;
      }
    }

    return v5;
  }

  return result;
}

uint64_t wordSeg_GetMrkMemory(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 1040);
  if (v4 < *(a1 + 1042))
  {
    v5 = *(a1 + 1032);
LABEL_5:
    memmove((v5 + 32 * a2 + 32), (v5 + 32 * a2), 32 * (v4 - a2));
    result = 0;
    ++*(a1 + 1040);
    return result;
  }

  v6 = v4 + 1;
  *(a1 + 1042) = v6;
  v5 = heap_Realloc(*(*a1 + 8), *(a1 + 1032), 32 * v6);
  if (v5)
  {
    *(a1 + 1032) = v5;
    v4 = *(a1 + 1040);
    goto LABEL_5;
  }

  log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0);
  return 2359304202;
}

uint64_t tryLoadingCrfModel(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, void *a6, const char *a7, int a8)
{
  log_OutText(*(a5 + 32), "FE_PW", 5, 0, "looking for CRF PW model at %s", a7);
  Only_ReferenceCnt = crf_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, a6, 2, a7, "CRPH", a8, (a8 & 0xFFFFFFu) >> 16, 0);
  if ((Only_ReferenceCnt & 0x80000000) != 0)
  {
    log_OutText(*(a5 + 32), "FE_PW", 5, 0, "no CRF PW model found", a7);
  }

  return Only_ReferenceCnt;
}

uint64_t pw_crf_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t *a8, uint64_t a9, _DWORD *a10)
{
  v13 = a1;
  v14 = a10;
  v184 = *MEMORY[0x1E69E9840];
  v170 = 0;
  v171 = a8;
  v169 = 0;
  LogLevel = log_GetLogLevel(*(a1 + 32));
  if (a7)
  {
    v15 = 0;
    v16 = a7;
    v17 = (a6 + 8);
    do
    {
      v18 = *(v17 - 1);
      if (strcmp(*v17, "non"))
      {
        *v14 = 0;
      }

      v15 += strlen(v18);
      v17 += 5;
      --v16;
    }

    while (v16);
    v19 = v15;
  }

  else
  {
    v19 = 0;
  }

  if (*v14)
  {
    return 0;
  }

  v20 = 2586845194;
  v159 = heap_Calloc(*(v13 + 8), v19, 8);
  if (!v159)
  {
    return v20;
  }

  v21 = heap_Calloc(*(v13 + 8), v19, 8);
  v22 = *(v13 + 8);
  v153 = v21;
  if (!v21)
  {
    v113 = v159;
    goto LABEL_188;
  }

  v23 = heap_Calloc(v22, v19, 8);
  if (!v23)
  {
    heap_Free(*(v13 + 8), v159);
    v22 = *(v13 + 8);
    v113 = v153;
    goto LABEL_188;
  }

  v24 = v23;
  if (!a7)
  {
    goto LABEL_174;
  }

  v25 = 0;
  v26 = 0;
  v149 = a2;
  v150 = a7;
  v155 = v13;
  v156 = v23;
  v151 = a6;
  do
  {
    v152 = v25;
    v27 = (a6 + 40 * v25);
    v28 = *v27;
    if (**v27)
    {
      v29 = 0;
      v158 = 0;
      v30 = 0;
      v154 = (a6 + 40 * v25);
      v157 = *v27;
      do
      {
        v31 = v26;
        v32 = 83;
        v182 = 0u;
        memset(v183, 0, sizeof(v183));
        v181 = 0u;
        *__s = 0u;
        v178 = 0u;
        memset(v179, 0, sizeof(v179));
        *__src = 0u;
        v177 = 0u;
        v33 = utf8_determineUTF8CharLength(v28[v29]);
        v34 = strlen(*v27);
        v35 = v33;
        if (v34 != v33)
        {
          if (v34 - v33 == v29)
          {
            v32 = 69;
          }

          else if (v30)
          {
            v32 = 77;
          }

          else
          {
            v32 = 66;
          }
        }

        v168 = v32;
        __c = 0;
        v172 = 0;
        __strncpy_chk();
        __c_1[v33] = 0;
        v173 = 0;
        if (((*(a3 + 96))(a4, a5, "wpcrf", __c_1, &v172, &v173, &__c) & 0x80000000) == 0)
        {
          v36 = v173;
          if (v173)
          {
            v37 = v172;
            v38 = __c;
            while (1)
            {
              v39 = *v37;
              v40 = strchr(*v37, v38);
              if (v40)
              {
                break;
              }

              ++v37;
              if (!--v36)
              {
                goto LABEL_61;
              }
            }

            v46 = v40;
            if (v40 != v39 || v40 - v39 >= 1)
            {
              __strncat_chk();
            }

            __strcat_chk();
            v48 = v46 + 1;
            v49 = strchr(v48, __c);
            if (v49)
            {
              v50 = v49;
              v51 = 0;
              do
              {
                __strcat_chk();
                v52 = v50 - v48;
                if (v50 - v48 < 0)
                {
                  v52 = v48 - v50;
                }

                v53 = v52;
                __strncat_chk();
                if (!v51)
                {
                  v54 = v53 == 1 && *v48 == 49;
                  *(v153 + 8 * v31) = v54;
                }

                v48 = v50 + 1;
                v50 = strchr(v50 + 1, __c);
                --v51;
              }

              while (v50);
            }

LABEL_60:
            __strcat_chk();
            __strncat_chk();
            goto LABEL_61;
          }

          if (((*(a3 + 96))(a4, a5, "wpcrf", "NULL", &v172, &v173, &__c) & 0x80000000) == 0)
          {
            v41 = v173;
            if (v173)
            {
              v42 = v172;
              v43 = __c;
              while (1)
              {
                v44 = *v42;
                v45 = strchr(*v42, v43);
                if (v45)
                {
                  break;
                }

                ++v42;
                if (!--v41)
                {
                  goto LABEL_61;
                }
              }

              v55 = v45;
              if (v45 != v44 || v45 - v44 >= 1)
              {
                __strncat_chk();
              }

              __strcat_chk();
              v57 = strchr(v55 + 1, __c);
              if (v57)
              {
                v58 = v57;
                do
                {
                  __strcat_chk();
                  __strncat_chk();
                  v58 = strchr(v58 + 1, __c);
                }

                while (v58);
              }

              goto LABEL_60;
            }
          }
        }

LABEL_61:
        v13 = v155;
        if (LogLevel >= 5)
        {
          log_OutText(*(v155 + 32), "FE_PW", 5, 0, "[PWCRF] Feat: %s", __s);
        }

        v59 = heap_Calloc(*(v155 + 8), 1, 69);
        v24 = v156;
        v28 = v157;
        v26 = v31;
        *(v156 + 8 * v31) = v59;
        if (!v59)
        {
LABEL_167:
          v20 = 2584748042;
          goto LABEL_168;
        }

        v60 = v59;
        if (!__src[0])
        {
          strncpy(v59, &v157[v29], v35);
          goto LABEL_68;
        }

        if (*__src ^ 0x4C4C554E | __src[4])
        {
          strcpy(v59, __src);
LABEL_68:
          v61 = strlen(__s);
          v62 = heap_Calloc(*(v155 + 8), 1, v61 + 1);
          v159[v31] = v62;
          if (!v62)
          {
            goto LABEL_167;
          }

          strcpy(v62, __s);
          if (v158)
          {
            if (v168 == 69)
            {
              v63 = 83;
            }

            else
            {
              v63 = 66;
            }

            *(v159[v31] + strlen(v159[v31]) - 1) = v63;
          }

          v158 = 0;
          v26 = (v31 + 1);
          goto LABEL_85;
        }

        if (v31 && v168 == 69)
        {
          v64 = v159[(v31 - 1)];
          v65 = strlen(v64);
          if (v64[v65 - 1] == 66)
          {
            v66 = 83;
          }

          else
          {
            v66 = 69;
          }

          v64[v65 - 1] = v66;
          v60 = *(v156 + 8 * v31);
        }

        else
        {
          v67 = v158;
          if (v168 == 66)
          {
            v67 = 1;
          }

          v158 = v67;
        }

        heap_Free(*(v155 + 8), v60);
        *(v156 + 8 * v31) = 0;
LABEL_85:
        v27 = v154;
        v30 += v35;
        v29 = v30;
      }

      while (strlen(*v154) > v30);
    }

    a6 = v151;
    v25 = v152 + 1;
  }

  while (v152 + 1 != v150);
  if (!v26)
  {
LABEL_174:
    v114 = 0;
    v20 = 2584748040;
    a9 = 0;
    v70 = v170;
    v117 = 1;
    LODWORD(v69) = v169;
    goto LABEL_176;
  }

  v68 = crf_Process(v149, v159, v26, &v170, &v169);
  v69 = v169;
  v70 = v170;
  if (!v169)
  {
    v20 = v68;
    goto LABEL_169;
  }

  v71 = 1;
  v72 = v170;
  v73 = v153;
  v74 = v169;
  while (2)
  {
    v75 = *v73;
    v73 += 2;
    if (v75)
    {
      if (v71 == 1)
      {
        if (v69 != 1)
        {
          **v70 = 66;
          v76 = v70[1];
          v77 = *v76;
          if (v77 == 83)
          {
            *v76 = 69;
          }

          else if (v77 == 66)
          {
            *v76 = 77;
          }
        }

        goto LABEL_107;
      }

      **v72 = 69;
      v78 = *(v72 - 1);
      v79 = *v78;
      if (v79 == 83)
      {
        v80 = 66;
LABEL_100:
        *v78 = v80;
      }

      else if (v79 == 69)
      {
        v80 = 77;
        goto LABEL_100;
      }

      if (v71 < v69)
      {
        v81 = v72[1];
        v82 = *v81;
        if (v82 == 69)
        {
          *v81 = 83;
        }

        else if (v82 == 77)
        {
          *v81 = 66;
        }
      }
    }

LABEL_107:
    ++v71;
    ++v72;
    if (--v74)
    {
      continue;
    }

    break;
  }

  v83 = v70 + 1;
  v84 = v69;
  while (2)
  {
    v85 = *(v83 - 1);
    v86 = *v85;
    if (v84 == 1)
    {
      if (v86 == 77)
      {
        LOBYTE(v87) = 69;
      }

      else
      {
        if (v86 != 66)
        {
          break;
        }

        LOBYTE(v87) = 83;
      }

LABEL_127:
      *v85 = v87;
    }

    else
    {
      if (*v85 > 0x4Cu)
      {
        if (v86 != 77)
        {
          if (v86 == 83 && (**v83 | 8) == 0x4D)
          {
            LOBYTE(v87) = 66;
            goto LABEL_127;
          }

          goto LABEL_128;
        }

        v88 = **v83;
        LOBYTE(v87) = 69;
      }

      else
      {
        if (v86 != 66)
        {
          if (v86 == 69)
          {
            v87 = **v83 | 8;
            if (v87 == 77)
            {
              goto LABEL_127;
            }
          }

          goto LABEL_128;
        }

        v88 = **v83;
        LOBYTE(v87) = 83;
      }

      if (v88 == 66 || v88 == 83)
      {
        goto LABEL_127;
      }
    }

LABEL_128:
    ++v83;
    if (--v84)
    {
      continue;
    }

    break;
  }

  v163 = v26;
  if (LogLevel >= 5)
  {
    do
    {
      v89 = *v70++;
      log_OutText(*(v13 + 32), "FE_PW", 5, 0, "[PWCRF] Predicted Tag: %s", v89);
      --v69;
    }

    while (v69);
  }

  v90 = v169;
  if (!v169)
  {
    goto LABEL_233;
  }

  v91 = 0;
  v92 = v170;
  v166 = v169 - 1;
  v161 = v169 - 1;
  while (2)
  {
    v93 = v159[v91];
    v94 = strlen(v93) - 1;
    v95 = v92[v91];
    v96 = *v95;
    if (v96 == 83)
    {
      if (v93[v94] != 83)
      {
        *v95 = 66;
        v105 = v91 + 1;
        if (v105 < v90)
        {
          v106 = *(v159[v105] + strlen(v159[v105]) - 1);
          v107 = v91;
          while (v106 != 69)
          {
            *v92[v105] = 77;
            if (v166 == v105)
            {
              goto LABEL_149;
            }

            v106 = *(v159[v105 + 1] + strlen(v159[v105 + 1]) - 1);
            ++v107;
            ++v105;
          }

          *v92[v105] = 69;
          v108 = v107 + 2;
          if (v107 + 2 >= v90)
          {
            goto LABEL_162;
          }

          v109 = v92[v108];
          v110 = *v109;
          if (v110 == 77)
          {
            goto LABEL_159;
          }

          if (v110 != 69)
          {
            goto LABEL_162;
          }

          goto LABEL_160;
        }
      }

      goto LABEL_149;
    }

    if (v96 != 69 || (v97 = v93[v94], v97 == 69) || v97 == 83 || (*v95 = 77, v98 = v91 + 1, v91 + 1 >= v90))
    {
LABEL_149:
      ++v91;
      goto LABEL_150;
    }

    v99 = &v92[v98];
    v100 = -2 - v91;
    v101 = v161 - v91;
    v102 = &v159[v98];
    while (1)
    {
      v103 = (*v102)[strlen(*v102) - 1];
      if (v103 == 83 || v103 == 69)
      {
        break;
      }

      v104 = *v99++;
      *v104 = 77;
      --v100;
      ++v102;
      if (!--v101)
      {
        goto LABEL_149;
      }
    }

    **v99 = 69;
    v108 = -v100;
    if (-v100 >= v90)
    {
      goto LABEL_163;
    }

    v109 = v92[v108];
    v111 = *v109;
    if (v111 != 69)
    {
      if (v111 == 77)
      {
LABEL_159:
        v112 = 66;
        goto LABEL_161;
      }

      goto LABEL_162;
    }

LABEL_160:
    v112 = 83;
LABEL_161:
    *v109 = v112;
LABEL_162:
    if (v108 < 2)
    {
      v91 += v108;
    }

    else
    {
LABEL_163:
      v91 = v108;
    }

LABEL_150:
    if (v91 < v90)
    {
      continue;
    }

    break;
  }

  v122 = v169;
  LODWORD(v26) = v163;
  if (!v169)
  {
    goto LABEL_233;
  }

  v123 = 0;
  v124 = 0;
  v167 = v170;
  v125 = "latin";
  while (2)
  {
    v126 = (v151 + 40 * v123);
    if (!strcmp(v126[2], v125))
    {
      v129 = v125;
      v130 = Utf8_Utf8NbrOfSymbols(*v126);
      if (!v123)
      {
        goto LABEL_215;
      }

      if (!v124)
      {
        goto LABEL_215;
      }

      v131 = v159[v124];
      v132 = strlen(v131);
      if (!v132)
      {
        goto LABEL_215;
      }

      v133 = v132;
      v134 = v159[v124 - 1];
      v135 = strlen(v134);
      if (!v135)
      {
        goto LABEL_215;
      }

      v136 = v135;
      if (!strcmp(*(v126 - 3), v129) || v131[v133 - 1] == 77 || v134[v136 - 1] == 77)
      {
        goto LABEL_215;
      }

      v137 = v167[v124 - 1];
      v138 = *v137;
      if (v138 == 77)
      {
        v139 = 69;
      }

      else
      {
        if (v138 != 66)
        {
LABEL_210:
          v140 = v167[v124];
          v141 = *v140;
          if (v141 == 69)
          {
            v142 = 83;
          }

          else
          {
            if (v141 != 77)
            {
              goto LABEL_215;
            }

            v142 = 66;
          }

          *v140 = v142;
LABEL_215:
          v124 = v124 + v130 - 1;
          if (v124 >= v122)
          {
            goto LABEL_230;
          }

          v125 = v129;
          if (!strcmp(v126[7], v129) || *(v159[v124 - 1] + strlen(v159[v124 - 1]) - 1) == 77 || *(v159[v124] + strlen(v159[v124]) - 1) == 77)
          {
            LODWORD(v26) = v163;
LABEL_231:
            if (++v123 >= v150 || v124 >= v122)
            {
              goto LABEL_233;
            }

            continue;
          }

          v143 = v167[v124 - 1];
          v144 = *v143;
          if (v144 == 77)
          {
            v145 = 69;
          }

          else
          {
            if (v144 != 66)
            {
LABEL_225:
              v146 = v167[v124];
              v147 = *v146;
              if (v147 == 69)
              {
                v148 = 83;
                goto LABEL_229;
              }

              if (v147 == 77)
              {
                v148 = 66;
LABEL_229:
                *v146 = v148;
              }

LABEL_230:
              LODWORD(v26) = v163;
              v125 = v129;
              goto LABEL_231;
            }

            v145 = 83;
          }

          *v143 = v145;
          goto LABEL_225;
        }

        v139 = 83;
      }

      *v137 = v139;
      goto LABEL_210;
    }

    break;
  }

  v127 = v124;
  while (1)
  {
    v124 = v127 + 1;
    if (v127 + 1 >= v122)
    {
      break;
    }

    v128 = *(v159[v127] + strlen(v159[v127]) - 1);
    if (v128 != 83)
    {
      v127 = v124;
      if (v128 != 69)
      {
        continue;
      }
    }

    goto LABEL_231;
  }

LABEL_233:
  v13 = v155;
  v20 = pw_crf_alginWS(v155, v169, v151, v159, v170, &v171, &a9);
  v24 = v156;
LABEL_168:
  v70 = v170;
  LODWORD(v69) = v169;
  if (v26)
  {
LABEL_169:
    v114 = v26;
    v115 = v159;
    v116 = v114;
    do
    {
      if (*v115)
      {
        heap_Free(*(v13 + 8), *v115);
      }

      ++v115;
      --v116;
    }

    while (v116);
    v117 = 0;
  }

  else
  {
    v114 = 0;
    v117 = 1;
  }

LABEL_176:
  heap_Free(*(v13 + 8), v159);
  heap_Free(*(v13 + 8), v153);
  if ((v117 & 1) == 0)
  {
    v118 = v24;
    do
    {
      if (*v118)
      {
        heap_Free(*(v13 + 8), *v118);
      }

      ++v118;
      --v114;
    }

    while (v114);
  }

  heap_Free(*(v13 + 8), v24);
  if (v70)
  {
    if (v69)
    {
      v119 = v69;
      v120 = v70;
      do
      {
        if (*v120)
        {
          heap_Free(*(v13 + 8), *v120);
        }

        ++v120;
        --v119;
      }

      while (v119);
    }

    v22 = *(v13 + 8);
    v113 = v70;
LABEL_188:
    heap_Free(v22, v113);
  }

  return v20;
}