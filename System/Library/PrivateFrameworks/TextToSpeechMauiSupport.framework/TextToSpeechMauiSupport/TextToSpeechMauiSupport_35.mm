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

uint64_t LhpuSetSymbol(uint64_t a1, const char *a2, size_t a3)
{
  if (a3 > 9)
  {
    return 4294967294;
  }

  cstdlib_strncpy(a1, a2, a3);
  result = 0;
  *(a1 + a3) = 0;
  *(a1 + 12) = 0;
  *(a1 + 18) = 0;
  return result;
}

uint64_t LhpuSetDurValue(uint64_t a1, unsigned __int8 *a2)
{
  v4 = cstdlib_atoi(a2);
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

uint64_t LhpuAddBpTime(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 18) > 6u)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = cstdlib_atoi(a2);
  result = 0;
  v5 = *(a1 + 18);
  v6 = a1 + 4 * v5;
  *(v6 + 22) = v3;
  *(v6 + 20) = 0;
  *(a1 + 18) = v5 + 1;
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
  v28 = 0;
  v29 = 0;
  v27 = 0;
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
    v8 = (*(*(a1 + 872) + 144))(v9, *(a1 + 888), &v29 + 4, &v29);
    if ((v8 & 0x80000000) != 0)
    {
LABEL_10:
      log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45105, "%s%x", "lhError", v8);
      return v8;
    }

    if (HIDWORD(v29))
    {
      v10 = (*(*(a1 + 872) + 88))(*(a1 + 880), *(a1 + 888), &v28, &v29 + 4);
      if ((v10 & 0x80000000) != 0)
      {
        v8 = v10;
        log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45105, "%s%x", "lhError", v10);
        return v8;
      }

      v11 = (*(*(a1 + 872) + 112))(*(a1 + 896), *(a1 + 904), &v27, HIDWORD(v29));
      if ((v11 & 0x80000000) != 0)
      {
        v8 = v11;
        log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45106, "%s%x", "lhError", v11);
        (*(*(a1 + 872) + 96))(*(a1 + 880), *(a1 + 888), 0);
        return v8;
      }

      v12 = HIDWORD(v29);
      v13 = HIDWORD(v29) >> 5;
      HIDWORD(v29) >>= 5;
      if (v12 >= 0x20)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = (v27 + v14);
          v17 = (v28 + v14);
          v18 = *(v28 + v14 + 16);
          *v16 = *(v28 + v14);
          v16[1] = v18;
          if (*v17 == 33)
          {
            v25 = 0;
            *v16 = 38;
            v26[0] = v17[6];
            v26[1] = 0;
            v19 = (*(*(a1 + 24) + 64))(*(a1 + 32), *(a1 + 40), 0, v26, &v25, 0);
            if (v19 < 0)
            {
              log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45107, "%s%u%s%x", "phonemeID", *(v28 + v14 + 24), "lhError", v19);
              v25 = &szEMPTY;
              v20 = &szEMPTY;
            }

            else
            {
              v20 = v25;
            }

            v21 = strhelper_Strdup(*(*(a1 + 16) + 8), v20);
            *(v27 + v14 + 24) = v21;
            v13 = HIDWORD(v29);
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

      v22 = (*(*(a1 + 872) + 120))(*(a1 + 896), *(a1 + 904), v14);
      if ((v22 & 0x80000000) != 0)
      {
        v23 = v22;
        log_OutPublic(*(*(a1 + 16) + 32), "PHONMAP", 45106, "%s%x", "lhError", v22);
        (*(*(a1 + 872) + 96))(*(a1 + 880), *(a1 + 888), 0);
        return v23;
      }

      v8 = (*(*(a1 + 872) + 96))(*(a1 + 880), *(a1 + 888), v14);
      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_10;
      }
    }

    else if (v29)
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

uint64_t LhplGetSymbol(const char *a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  cstdlib_strlen(a1);
  v8 = 0;
  k = a1;
  v10 = a1;
LABEL_2:
  v11 = k;
  while (1)
  {
    while (v8 > 1)
    {
      if (v8 == 2)
      {
        v12 = *v11;
        if (v12 <= 0x20)
        {
          if (v12 > 0xC)
          {
            if (v12 != 13 && v12 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            result = 0xFFFFFFFFLL;
            if (v12 < 9 || v12 == 12)
            {
              return result;
            }
          }

          v23 = v11 + 1;
          v22 = *(v11 + 1);
          if (v22 > 0x20)
          {
            if (v22 > 0x2C)
            {
              if (v22 != 45)
              {
LABEL_108:
                if (v22 - 48 >= 0xA)
                {
                  return 0xFFFFFFFFLL;
                }

LABEL_109:
                ++v23;
                while (1)
                {
                  v22 = *v23;
                  if (v22 <= 0x1F)
                  {
                    break;
                  }

                  if (v22 <= 0x2C)
                  {
                    goto LABEL_154;
                  }

                  ++v23;
                  if (v22 - 48 >= 0xA)
                  {
                    return 0xFFFFFFFFLL;
                  }
                }

LABEL_85:
                if (v22 > 0xB)
                {
                  v27 = v22 == 13;
                  goto LABEL_221;
                }

                if (v22 >= 9)
                {
                  goto LABEL_213;
                }

                return 0xFFFFFFFFLL;
              }

LABEL_107:
              v30 = *++v23;
              v22 = v30;
              goto LABEL_108;
            }
          }

          else
          {
            if (v22 > 0xC)
            {
              if (v22 != 32 && v22 != 13)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else
            {
              result = 0xFFFFFFFFLL;
              if (v22 < 9 || v22 == 12)
              {
                return result;
              }
            }

            v23 = v11 + 2;
            v22 = *(v11 + 2);
            if (v22 <= 0x20)
            {
              do
              {
                if (v22 > 0xC)
                {
                  if (v22 != 13 && v22 != 32)
                  {
                    return 0xFFFFFFFFLL;
                  }
                }

                else
                {
                  result = 0xFFFFFFFFLL;
                  if (v22 < 9 || v22 == 12)
                  {
                    return result;
                  }
                }

                v29 = *++v23;
                v22 = v29;
              }

              while (v29 < 0x21);
            }

            if (v22 > 0x2C)
            {
              if (v22 != 45)
              {
                if (v22 - 48 > 9)
                {
                  return 0xFFFFFFFFLL;
                }

                goto LABEL_109;
              }

              goto LABEL_107;
            }
          }

          if (v22 != 43)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_107;
        }

        if (v12 <= 0x2C)
        {
          if (v12 != 43)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_57:
          v23 = v11;
          goto LABEL_107;
        }

        if (v12 == 45)
        {
          goto LABEL_57;
        }

        if (v12 - 48 >= 0xA)
        {
          return 0xFFFFFFFFLL;
        }

        v23 = v11 + 1;
        v22 = *(v11 + 1);
        if (v22 <= 0x1F)
        {
          goto LABEL_85;
        }

        if (v22 > 0x2C)
        {
          goto LABEL_108;
        }

LABEL_154:
        if (v22 == 32)
        {
          while (1)
          {
LABEL_213:
            while (1)
            {
              v22 = *++v23;
              if (v22 > 0xD)
              {
                break;
              }

              if (v22 < 9 || v22 == 12)
              {
                return 0xFFFFFFFFLL;
              }
            }

            v27 = v22 == 32;
            if (v22 > 0x20)
            {
              break;
            }

LABEL_221:
            if (!v27)
            {
              return 0xFFFFFFFFLL;
            }
          }
        }

        if (v22 != 44)
        {
          return 0xFFFFFFFFLL;
        }

        v43 = (v11 - 1);
        do
        {
          v44 = *++v43;
        }

        while (!cstdlib_strchr("0123456789+-", v44));
        v11 = v23 + 1;
        LhpuAddBpTime(a2, v43);
        v8 = 3;
      }

      else
      {
        v15 = *v11;
        if (v15 <= 0xD)
        {
          if (v15 < 9 || v15 == 12)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_28:
          i = (v11 + 1);
          v18 = *(v11 + 1);
          if (v18 > 0xD)
          {
            if (v18 > 0x20)
            {
LABEL_131:
              if (v18 - 48 >= 0xA)
              {
                return 0xFFFFFFFFLL;
              }

              goto LABEL_132;
            }

            if (v18 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            result = 0xFFFFFFFFLL;
            if (v18 < 9 || v18 == 12)
            {
              return result;
            }
          }

          for (i = (v11 + 2); ; ++i)
          {
            v20 = *i;
            if (v20 > 0xD)
            {
              if (v20 > 0x20)
              {
                if (v20 - 48 > 9)
                {
                  return 0xFFFFFFFFLL;
                }

LABEL_132:
                ++i;
                while (1)
                {
                  v18 = *i;
                  if (v18 <= 0x1F)
                  {
                    break;
                  }

                  if (v18 <= 0x29)
                  {
                    goto LABEL_129;
                  }

                  ++i;
                  if (v18 - 48 >= 0xA)
                  {
                    return 0xFFFFFFFFLL;
                  }
                }

LABEL_60:
                if (v18 <= 0xB)
                {
                  if (v18 < 9)
                  {
                    return 0xFFFFFFFFLL;
                  }

                  goto LABEL_188;
                }

                v26 = v18 == 13;
                goto LABEL_196;
              }

              if (v20 != 32)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else if (v20 < 9 || v20 == 12)
            {
              return 0xFFFFFFFFLL;
            }
          }
        }

        if (v15 <= 0x20)
        {
          if (v15 != 32)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_28;
        }

        if (v15 - 48 >= 0xA)
        {
          return 0xFFFFFFFFLL;
        }

        i = (v11 + 1);
        v18 = *(v11 + 1);
        if (v18 <= 0x1F)
        {
          goto LABEL_60;
        }

        if (v18 > 0x29)
        {
          goto LABEL_131;
        }

LABEL_129:
        if (v18 == 32)
        {
          while (1)
          {
LABEL_188:
            while (1)
            {
              v18 = *++i;
              if (v18 > 0xD)
              {
                break;
              }

              if (v18 < 9 || v18 == 12)
              {
                return 0xFFFFFFFFLL;
              }
            }

            v26 = v18 == 32;
            if (v18 > 0x20)
            {
              break;
            }

LABEL_196:
            if (!v26)
            {
              return 0xFFFFFFFFLL;
            }
          }
        }

        if (v18 != 41)
        {
          return 0xFFFFFFFFLL;
        }

        for (j = i + 2; ; ++j)
        {
          v39 = *(j - 1);
          if (v39 <= 0x1F)
          {
            if (v39 > 0xB)
            {
              if (v39 != 13)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else if (v39 < 9)
            {
              return 0xFFFFFFFFLL;
            }

            continue;
          }

          if (v39 > 0x28)
          {
            if (v39 == 93)
            {
              v65 = (v11 - 1);
              do
              {
                v66 = *++v65;
              }

              while (!cstdlib_strchr("0123456789", v66));
              LhpuSetBpPitch(a2, v65);
              goto LABEL_411;
            }

            return 0xFFFFFFFFLL;
          }

          if (v39 != 32)
          {
            break;
          }
        }

        if (v39 != 40)
        {
          return 0xFFFFFFFFLL;
        }

        v40 = (v11 - 1);
        do
        {
          v41 = *++v40;
        }

        while (!cstdlib_strchr("0123456789", v41));
        LhpuSetBpPitch(a2, v40);
        v8 = 2;
        v11 = j;
      }
    }

    if (v8 != 1)
    {
      v45 = *v11;
      if (v45 > 0x2D)
      {
        if (v45 > 0x4A)
        {
          result = 0xFFFFFFFFLL;
          if (v45 > 0x5D)
          {
            if (v45 == 96 || v45 > 0x7A)
            {
              return result;
            }
          }

          else if (v45 == 75 || v45 > 0x5A)
          {
            return result;
          }
        }

        else if (v45 > 0x39)
        {
          result = 0xFFFFFFFFLL;
          if (v45 < 0x3F || v45 == 70)
          {
            return result;
          }
        }

        else if (v45 != 46 && v45 < 0x37)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (v45 <= 0x20)
        {
          if (v45 > 0xB)
          {
            if (v45 != 13 && v45 != 32)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            if (!*v11)
            {
              return 1;
            }

            if (v45 < 9)
            {
              return 0xFFFFFFFFLL;
            }
          }

          for (k = v11 + 1; ; ++k)
          {
            v46 = *k;
            if (v46 > 0xC)
            {
              if (v46 != 32 && v46 != 13)
              {
LABEL_262:
                v8 = 0;
                v10 = v11;
                goto LABEL_2;
              }
            }

            else if (v46 < 9 || v46 == 12)
            {
              goto LABEL_262;
            }
          }
        }

        if (v45 > 0x26)
        {
          if (v45 != 39)
          {
            if (v45 != 42)
            {
              return 0xFFFFFFFFLL;
            }

            j = (v11 + 1);
            v67 = *(v11 + 1);
            if (v67 > 0x2D)
            {
              if (v67 <= 0x3B)
              {
                if (v67 != 46 && v67 <= 0x39)
                {
                  return 0xFFFFFFFFLL;
                }

                goto LABEL_427;
              }

              v68 = v67 == 63;
            }

            else
            {
              v68 = v67 == 33;
              if (v67 > 0x21)
              {
                if (v67 != 44)
                {
                  return 0xFFFFFFFFLL;
                }

LABEL_427:
                ++j;
LABEL_428:
                LhpuSetSymbol(a2, v11, j - v11);
                goto LABEL_412;
              }
            }

            if (!v68)
            {
              return 0xFFFFFFFFLL;
            }

            j = (v11 + 2);
            if (v11[2] == 92)
            {
              goto LABEL_427;
            }

            goto LABEL_428;
          }
        }

        else
        {
          result = 0xFFFFFFFFLL;
          if (v45 == 33 || v45 > 0x24)
          {
            return result;
          }
        }
      }

      for (j = (v11 + 1); ; ++j)
      {
        v49 = *j;
        if (v49 > 0x3C)
        {
          if (v49 > 0x5B)
          {
            if (v49 > 0x7A)
            {
              if (v49 == 124 || v49 >= 0x7F)
              {
                goto LABEL_428;
              }
            }

            else if (v49 != 96 && v49 != 92)
            {
              goto LABEL_428;
            }
          }

          else if (v49 > 0x46)
          {
            if (v49 != 75)
            {
              goto LABEL_398;
            }
          }

          else if (v49 != 62 && v49 != 70)
          {
            goto LABEL_428;
          }
        }

        else if (v49 > 0x2B)
        {
          if (v49 > 0x36)
          {
            if (v49 != 58 && v49 != 60)
            {
              goto LABEL_428;
            }
          }

          else if (v49 != 45 && v49 < 0x30)
          {
            goto LABEL_428;
          }
        }

        else if (v49 > 0x24)
        {
          if (v49 == 37)
          {
            do
            {
              v50 = j[1];
              if (v50 > 0x22)
              {
                if (v50 == 37)
                {
                  goto LABEL_428;
                }

                v53 = j;
                if (v50 >= 0x7F)
                {
                  goto LABEL_428;
                }
              }

              else
              {
                if (v50 < 0x21)
                {
                  goto LABEL_428;
                }

                if (v50 == 34)
                {
                  v51 = j + 2;
                  v52 = j[2];
                  if (v52 > 0x22)
                  {
                    if (v52 == 37 || v52 > 0x7E)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v52 != 33)
                  {
                    goto LABEL_428;
                  }

                  do
                  {
                    while (1)
                    {
                      v54 = v51[1];
                      if (v54 <= 0x22)
                      {
                        break;
                      }

                      if (v54 != 37)
                      {
                        ++v51;
                        if (v54 < 0x7F)
                        {
                          continue;
                        }
                      }

                      goto LABEL_428;
                    }

                    if (v54 < 0x21)
                    {
                      goto LABEL_428;
                    }

                    v53 = v51++;
                  }

                  while (v54 != 34);
                }

                else
                {
                  v53 = j;
                }
              }

              v49 = v53[2];
              j = v53 + 2;
              if (v49 > 0x26)
              {
                goto LABEL_398;
              }

              if (v49 < 0x25)
              {
                goto LABEL_428;
              }
            }

            while (v49 != 38);
LABEL_384:
            while (2)
            {
              v60 = j[1];
              if (v60 > 0x3E)
              {
                if (v60 > 0x5A)
                {
                  if (v60 > 0x5F)
                  {
                    if (v60 == 96 || v60 > 0x7A)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v60 < 0x5E)
                  {
                    goto LABEL_428;
                  }
                }

                else
                {
                  v62 = v60 == 70;
                  if (v60 > 0x46)
                  {
                    v62 = v60 == 75;
                  }

                  if (v62)
                  {
                    goto LABEL_428;
                  }
                }
              }

              else if (v60 > 0x27)
              {
                v61 = v60 == 46;
                if (v60 <= 0x2E)
                {
                  goto LABEL_396;
                }

                if (v60 - 55 >= 3)
                {
                  goto LABEL_428;
                }
              }

              else
              {
                if (v60 < 0x22)
                {
                  goto LABEL_428;
                }

                if (v60 >= 0x25)
                {
                  v61 = v60 == 39;
LABEL_396:
                  if (!v61)
                  {
                    goto LABEL_428;
                  }
                }
              }

              j += 2;
              while (2)
              {
                v49 = *j;
                if (v49 > 0x3C)
                {
                  if (v49 > 0x5B)
                  {
                    if (v49 > 0x7A)
                    {
                      if (v49 == 124 || v49 >= 0x7F)
                      {
                        goto LABEL_428;
                      }
                    }

                    else if (v49 != 92 && v49 != 96)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v49 > 0x46)
                  {
                    if (v49 != 75)
                    {
                      goto LABEL_398;
                    }
                  }

                  else if (v49 != 62 && v49 != 70)
                  {
                    goto LABEL_428;
                  }

                  goto LABEL_361;
                }

                if (v49 > 0x2B)
                {
                  if (v49 > 0x36)
                  {
                    if (v49 != 58 && v49 != 60)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v49 != 45 && v49 < 0x30)
                  {
                    goto LABEL_428;
                  }

                  goto LABEL_361;
                }

                if (v49 <= 0x24)
                {
                  if (v49 != 33)
                  {
                    goto LABEL_428;
                  }

LABEL_361:
                  ++j;
                  continue;
                }

                break;
              }

              if (v49 != 37)
              {
                if (v49 < 0x27)
                {
                  continue;
                }

                if (v49 != 43)
                {
                  goto LABEL_428;
                }

                goto LABEL_361;
              }

              break;
            }

            while (1)
            {
              v58 = j[1];
              if (v58 > 0x22)
              {
                if (v58 == 37)
                {
                  goto LABEL_428;
                }

                v56 = j;
                if (v58 > 0x7E)
                {
                  goto LABEL_428;
                }
              }

              else
              {
                if (v58 < 0x21)
                {
                  goto LABEL_428;
                }

                if (v58 == 34)
                {
                  v57 = j + 2;
                  v59 = j[2];
                  if (v59 > 0x22)
                  {
                    if (v59 == 37 || v59 > 0x7E)
                    {
                      goto LABEL_428;
                    }
                  }

                  else if (v59 != 33)
                  {
                    goto LABEL_428;
                  }

                  do
                  {
                    while (1)
                    {
                      v55 = v57[1];
                      if (v55 <= 0x22)
                      {
                        break;
                      }

                      if (v55 != 37)
                      {
                        ++v57;
                        if (v55 < 0x7F)
                        {
                          continue;
                        }
                      }

                      goto LABEL_428;
                    }

                    if (v55 < 0x21)
                    {
                      goto LABEL_428;
                    }

                    v56 = v57++;
                  }

                  while (v55 != 34);
                }

                else
                {
                  v56 = j;
                }
              }

              v49 = v56[2];
              j = v56 + 2;
              if (v49 > 0x26)
              {
                break;
              }

              if (v49 < 0x25)
              {
                goto LABEL_428;
              }

              if (v49 == 38)
              {
                goto LABEL_384;
              }
            }

LABEL_398:
            if (v49 != 91)
            {
              goto LABEL_428;
            }

            k = (j + 1);
            LhpuSetSymbol(a2, v11, j - v11);
            v8 = 1;
            v10 = v11;
            goto LABEL_2;
          }

          if (v49 < 0x27)
          {
            goto LABEL_384;
          }

          if (v49 != 43)
          {
            goto LABEL_428;
          }
        }

        else if (v49 != 33)
        {
          goto LABEL_428;
        }
      }
    }

    v14 = *v11;
    if (v14 > 0x27)
    {
      break;
    }

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

    v19 = v11 + 1;
    v24 = *(v11 + 1);
    if (v24 > 0x27)
    {
      if (v24 > 0x2C)
      {
        if (v24 != 45)
        {
          if (v24 - 48 >= 0xA)
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

      v19 = v11 + 2;
      v24 = *(v11 + 2);
      if (v24 <= 0x27)
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

          v31 = *++v19;
          v24 = v31;
        }

        while (v31 < 0x28);
      }

      if (v24 > 0x2C)
      {
        if (v24 != 45)
        {
          if (v24 - 48 > 9)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_165;
        }

        goto LABEL_141;
      }
    }

    if (v24 != 40)
    {
      if (v24 != 43)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_141:
      v32 = *(v19 + 1);
      v25 = (v19 + 1);
      if ((v32 - 48) > 9)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_142:
      v19 = (v25 + 1);
      while (1)
      {
        v28 = *v19;
        if (v28 <= 0x20)
        {
          break;
        }

        if (v28 <= 0x2F)
        {
          goto LABEL_157;
        }

        ++v19;
        if (v28 >= 0x3A)
        {
          goto LABEL_400;
        }
      }

      if (v28 > 0xC)
      {
        if (v28 != 32 && v28 != 13)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_179;
      }

      goto LABEL_171;
    }

LABEL_158:
    v34 = (v11 - 1);
    do
    {
      v35 = *++v34;
    }

    while (!cstdlib_strchr("0123456789+-(", v35));
    v11 = v19 + 1;
    v8 = 2;
    if (*v34 != 40)
    {
      LhpuSetDurValue(a2, v34);
      v8 = 2;
    }
  }

  if (v14 <= 0x2C)
  {
    v19 = v11;
    if (v14 != 40)
    {
      if (v14 != 43)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_71:
      v25 = (v11 + 1);
      if (*(v11 + 1) - 48 >= 0xA)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_142;
    }

    goto LABEL_158;
  }

  if (v14 == 45)
  {
    goto LABEL_71;
  }

  if (v14 - 48 >= 0xA)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = v11 + 1;
  v28 = *(v11 + 1);
  if (v28 <= 0x20)
  {
    if (v28 <= 0xC)
    {
      result = 0xFFFFFFFFLL;
      if (v28 < 9 || v28 == 12)
      {
        return result;
      }

      goto LABEL_179;
    }

    goto LABEL_177;
  }

  if (v28 <= 0x2F)
  {
LABEL_157:
    if (v28 != 40)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_158;
  }

  if (v28 >= 0x3A)
  {
    goto LABEL_402;
  }

LABEL_165:
  ++v19;
  while (1)
  {
    v28 = *v19;
    if (v28 <= 0x20)
    {
      break;
    }

    if (v28 <= 0x2F)
    {
      goto LABEL_157;
    }

    ++v19;
    if (v28 >= 0x3A)
    {
LABEL_400:
      if (v28 == 93)
      {
        LOBYTE(v19) = v19 - 1;
        goto LABEL_403;
      }

      return 0xFFFFFFFFLL;
    }
  }

  if (v28 > 0xC)
  {
LABEL_177:
    if (v28 != 13 && v28 != 32)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_179;
  }

LABEL_171:
  if (v28 < 9 || v28 == 12)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
LABEL_179:
    while (1)
    {
      v28 = *++v19;
      if (v28 > 0x1F)
      {
        break;
      }

      if (v28 > 0xB)
      {
        if (v28 != 13)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (v28 < 9)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (v28 > 0x28)
    {
      break;
    }

    if (v28 != 32)
    {
      goto LABEL_157;
    }
  }

LABEL_402:
  if (v28 != 93)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_403:
  v63 = (v11 - 1);
  do
  {
    v64 = *++v63;
  }

  while (!cstdlib_strchr("0123456789+-]", v64));
  LOBYTE(j) = v19 + 1;
  if (*v63 != 93)
  {
    LhpuSetDurValue(a2, v63);
  }

LABEL_411:
  LOBYTE(v11) = v10;
LABEL_412:
  result = 0;
  *a3 = v11 - a1;
  *a4 = j + ~a1;
  return result;
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
          v15 = cstdlib_strlen(a5);
          v16 = cstdlib_strlen(__s);
          if (v16 + v15 + cstdlib_strlen(",") > v12)
          {
            v17 = 0;
LABEL_19:
            a5[v17 - 1] = 0;
            ssftmap_IteratorClose(v24);
            return 2322604041;
          }

          while (1)
          {
            cstdlib_strcat(a5, __s);
            cstdlib_strcat(a5, ",");
            v19 = cstdlib_strlen(a5);
            *a4 = v19;
            if ((ssftmap_IteratorNext(v24, &__s, &v22) & 0x80000000) != 0)
            {
              break;
            }

            v20 = cstdlib_strlen(a5);
            v21 = cstdlib_strlen(__s);
            if (v21 + v20 + cstdlib_strlen(",") > v12)
            {
              v17 = v19;
              goto LABEL_19;
            }
          }

          v18 = v19;
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
  v21 = 0;
  v22 = 0;
  if (a5)
  {
    v20 = 0;
    __b = 0u;
    v19 = 0u;
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v22);
    if ((inited & 0x80000000) == 0)
    {
      log_OutText(*(v22 + 32), "PHONMAP", 4, 0, "PHONMAP ObjOpen: Begin");
      v10 = heap_Calloc(*(v22 + 8), 1, 624);
      if (v10)
      {
        v11 = v10;
        *v10 = a3;
        v10[1] = a4;
        v12 = v22;
        v10[2] = v22;
        if ((paramc_ParamGetStr(*(v12 + 40), "fevoice", &v21) & 0x80000000) != 0 && (Str = paramc_ParamGetStr(*(v22 + 40), "voice", &v21), (Str & 0x80000000) != 0))
        {
          Data = Str;
        }

        else
        {
          Data = phonmap_loc_LoadData(v11, v21);
          if (v21)
          {
            paramc_ParamRelease(*(v22 + 40));
          }

          if ((Data & 0x80000000) == 0)
          {
            cstdlib_memset(&__b, 0, 0x28uLL);
            *&__b = ssftmap_ElemCopyString;
            *(&v19 + 1) = stringmap_loc_ElemCopyPtr_0;
            *(&__b + 1) = ssftmap_ElemFreeString;
            v20 = stringmap_loc_ElemFreeNoOp_0;
            *&v19 = ssftmap_ElemCompareKeysString;
            v14 = *(v11[2] + 8);
            v16[0] = __b;
            v16[1] = v19;
            v17 = stringmap_loc_ElemFreeNoOp_0;
            Data = ssftmap_ObjOpen(v14, 0, v16, v11 + 77);
            if ((Data & 0x80000000) == 0)
            {
              *a5 = v11;
              *(a5 + 8) = 29348;
LABEL_15:
              log_OutText(*(v22 + 32), "PHONMAP", 4, 0, "PHONMAP ObjOpen: End (%x)", Data);
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

      log_OutPublic(*(v22 + 32), "PHONMAP", 29000, 0);
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

uint64_t phonmap_ObjReopen(uint64_t a1, int a2)
{
  v8 = 0;
  v3 = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  v4 = *(a1 + 16);
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
  v27 = *MEMORY[0x277D85DE8];
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
  v13 = cstdlib_strlen(a4);
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

    cstdlib_strcpy(__dst, "phonmap/");
    cstdlib_strcat(__dst, a6);
    StrMap = phonmap_loc_GetStrMap(a1, __dst, "LANG", &v25, 0);
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

uint64_t phonmap_LhPToLhTtsSequence(uint64_t *a1, uint64_t a2, int a3, const char *a4, uint64_t a5, char *a6, char *a7)
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

uint64_t phonmap_LhPToLhTtsSequenceWithCheck(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, char *a6)
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
  v45 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v32 = 0;
  v33 = 0;
  memset(v44, 0, sizeof(v44));
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  *__dst = 0u;
  v37 = 0u;
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
        cstdlib_strcpy(__dst, "phonmap_ipa/");
        cstdlib_strcat(__dst, a6);
        paramc_ParamGetStr(*(a1[2] + 40), "fedataprefix", &__s);
        v16 = __s;
        if (__s && *__s && (v17 = cstdlib_strlen(__s) - 1, v16[v17] == 47))
        {
          cstdlib_strcpy(v35, __s);
          v35[v17] = 0;
          v18 = 1;
          do
          {
            if (v18 == 1)
            {
              v19 = 1;
            }

            else
            {
              v19 = 2;
            }

            v20 = brokeraux_ComposeBrokerString(a1[2], __dst, v19, 1, a6, v35, 0, v44, 0x80uLL);
            if (v20 < 0)
            {
              StrMap = v20 | 0x8A702000;
            }

            else
            {
              StrMap = phonmap_loc_GetStrMap(v15, v44, "IPA ", &v32, v18 == 1);
            }

            if (v18 > 1)
            {
              break;
            }

            ++v18;
          }

          while ((StrMap & 0x80000000) != 0);
        }

        else
        {
          v23 = brokeraux_ComposeBrokerString(a1[2], __dst, 0, 1, a6, 0, 0, v44, 0x80uLL);
          if (v23 < 0)
          {
            StrMap = v23 | 0x8A702000;
          }

          else
          {
            StrMap = phonmap_loc_GetStrMap(a1, v44, "IPA ", &v32, 0);
          }
        }

        v21 = v32 != 0;
      }

      else
      {
        if (!a1[75])
        {
          log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", -1972363263);
          v22 = 1;
          return v22 | 0x8A702000;
        }

        v32 = a1[75];
        v21 = 1;
      }

      v24 = StrMap >= 0;
      if ((StrMap & 0x80000000) != 0 || !v21)
      {
LABEL_45:
        log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", StrMap);
        if (v24)
        {
          return StrMap;
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
        while (1)
        {
          if (LH_wcslen(a3) <= v26)
          {
            log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", StrMap);
            return StrMap;
          }

          v27 = &a3[v26];
          if (*v27 == 32)
          {
            v28 = 1;
            v34 = 1;
            v33 = &phonmap_IpaToLhPSequence_szWordBnd;
            v29 = &phonmap_IpaToLhPSequence_szWordBnd;
          }

          else
          {
            StrMap = stringmap_reader_WMapToken(v32, v27, &v34, &v33);
            if ((StrMap & 0x80000000) != 0)
            {
              goto LABEL_49;
            }

            v28 = v34;
            v29 = v33;
          }

          if (LH_wcslen(v29) + v25 + 1 >= a4)
          {
            break;
          }

          v26 += v28;
          LH_wcscpy(&a5[v25], v33);
          v25 += LH_wcslen(v33);
          if (!v32)
          {
            v24 = 1;
            goto LABEL_45;
          }
        }

        StrMap = 2322604041;
LABEL_49:
        log_OutText(*(a1[2] + 32), "PHONMAP", 4, 0, "PHONMAP IpaToLhPSequence : End (%x)", StrMap);
      }

      v22 = StrMap & 0x1FFF;
      if (v22 <= 0x14 && ((1 << StrMap) & 0x10001A) != 0)
      {
        return v22 | 0x8A702000;
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
        v25 = *(a1 + 72);
        goto LABEL_39;
      }

      v27 = *(a1 + 72);
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
        v25 = *(a1 + 56);
LABEL_39:
        MapTroughLng = phonmap_findMapTroughLng(v25, a7);
        if (MapTroughLng)
        {
          goto LABEL_40;
        }

        v14 = 2322604052;
        goto LABEL_47;
      }

      v27 = *(a1 + 56);
    }

    LhPAlphabetCore = phonmap_reader_MapsGetGetLhPAlphabetCore(v27, a5, a6);
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
        v21 = *a5;
        v22 = cstdlib_strlen((a1 + 88));
        if (v21)
        {
          if (v22 < *a5)
          {
            v23 = (a1 + 88);
LABEL_28:
            cstdlib_strcpy(a6, v23);
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

    v24 = *a5;
    v22 = cstdlib_strlen((a1 + 344));
    if (v24)
    {
      if (v22 < *a5)
      {
        v23 = (a1 + 344);
        goto LABEL_28;
      }

      goto LABEL_31;
    }

LABEL_29:
    *a5 = v22 + 1;
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
        v23 = 1;
LABEL_14:
        v12 = a1[2];
        v13 = *a4;
        v14 = cstdlib_strlen(*a4);
        v15 = *a4;
        log_OutText(*(v12 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhPSequence : Begin (%s)", *a4);
        v29 = LhpuCreate(*(v12 + 8));
        if (!v29)
        {
          log_OutPublic(*(v12 + 32), "PHONMAP", 29000, 0);
          return 2322604042;
        }

        v16 = &v13[v14];
        v28 = 0;
        v27 = 0;
        if (v15 < &v13[v14])
        {
          do
          {
            if (*v15 == 18)
            {
              ++v15;
            }

            else if (LhplGetSymbol(v15, v29, &v28 + 1, &v28))
            {
              cstdlib_memmove(v15, v15 + 1, (v16 + ~v15));
              *--v16 = 0;
              log_OutText(*(v12 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme");
            }

            else
            {
              if (a5)
              {
                v27 = 0;
                LhpuGetSymbol();
                stringmap_reader_Map(a5, v17, &v27);
                if (v27 || (LhpuGetSymbol(), !cstdlib_strcmp(v18, "_")))
                {
                  v15 += v28 + 1;
                }

                else
                {
                  cstdlib_memmove(v15, &v15[v28 + 1], (~(v28 + v15) + v16));
                  v16 += ~v28;
                  *v16 = 0;
                  log_OutText(*(v12 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme");
                }
              }

              if (!v23)
              {
                v26 = 0;
                if ((ssftmap_IteratorOpen(a1[7], 0, 1, &v26) & 0x80000000) == 0)
                {
                  v24 = 0;
                  v25 = 0;
                  v27 = 0;
                  while ((ssftmap_IteratorNext(v26, &v25, &v24) & 0x80000000) == 0)
                  {
                    v27 = 0;
                    v19 = v24;
                    LhpuGetSymbol();
                    stringmap_reader_Map(v19, v20, &v27);
                    if (v27)
                    {
                      v15 += v28 + 1;
                      goto LABEL_34;
                    }
                  }

                  if (!v27)
                  {
                    LhpuGetSymbol();
                    if (cstdlib_strcmp(v21, "_"))
                    {
                      cstdlib_memmove(v15, &v15[v28 + 1], (~(v28 + v15) + v16));
                      v16 += ~v28;
                      *v16 = 0;
                      log_OutText(*(v12 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme");
                    }
                  }

LABEL_34:
                  ssftmap_IteratorClose(v26);
                }
              }
            }
          }

          while (v15 < v16);
        }

        LhpuRemove(*(v12 + 8), &v29);
        log_OutText(*(v12 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhPSequence : End (%s)", *a4);
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
          v23 = *a5 != 0;
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
          v23 = 0;
        }

        goto LABEL_14;
      }

      return 2322604052;
    }
  }

  return v5;
}

uint64_t phonmap_LhPToLhTtsSequenceWithCheckEx(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, char *a6, char *a7)
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

uint64_t phonmap_loc_LoadData(_WORD **a1, const char *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  *v67 = 0;
  v66 = 0;
  v64 = 0;
  *__s1 = 0;
  __s2 = 0;
  *v63 = 0;
  v61 = 0;
  v59 = 0;
  v77[0] = 0;
  v76[0] = 0;
  v75[0] = 0;
  v60[0] = 0;
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

  v58 = 0;
  __b = 0u;
  v57 = 0u;
  v10 = (a1 + 7);
  v9 = a1[7];
  if (v9)
  {
    *&__dst = 0;
    if ((ssftmap_IteratorOpen(v9, 0, 1, &__dst) & 0x80000000) == 0)
    {
      v69[0] = 0;
      *__src = 0;
      while ((ssftmap_IteratorNext(__dst, v69, __src) & 0x80000000) == 0)
      {
        stringmap_reader_ObjClose(*__src);
      }

      ssftmap_IteratorClose(__dst);
    }

    ssftmap_ObjClose(*v10);
    *v10 = 0;
  }

  cstdlib_memset(&__b, 0, 0x28uLL);
  *&__b = ssftmap_ElemCopyString;
  *(&v57 + 1) = stringmap_loc_ElemCopyPtr_0;
  *(&__b + 1) = ssftmap_ElemFreeString;
  v58 = stringmap_loc_ElemFreeNoOp_0;
  *&v57 = ssftmap_ElemCompareKeysString;
  v11 = *(a1[2] + 1);
  __dst = __b;
  v71 = v57;
  v72 = stringmap_loc_ElemFreeNoOp_0;
  v12 = ssftmap_ObjOpen(v11, 0, &__dst, a1 + 7);
  if ((v12 & 0x80000000) == 0)
  {
    v14 = (a1 + 8);
    v13 = a1[8];
    if (v13)
    {
      *&__dst = 0;
      if ((ssftmap_IteratorOpen(v13, 0, 1, &__dst) & 0x80000000) == 0)
      {
        v69[0] = 0;
        *__src = 0;
        while ((ssftmap_IteratorNext(__dst, v69, __src) & 0x80000000) == 0)
        {
          stringmap_reader_ObjClose(*__src);
        }

        ssftmap_IteratorClose(__dst);
      }

      ssftmap_ObjClose(*v14);
      *v14 = 0;
    }

    v15 = *(a1[2] + 1);
    __dst = __b;
    v71 = v57;
    v72 = v58;
    v12 = ssftmap_ObjOpen(v15, 0, &__dst, a1 + 8);
    if ((v12 & 0x80000000) == 0)
    {
      v17 = (a1 + 9);
      v16 = a1[9];
      if (v16)
      {
        *&__dst = 0;
        if ((ssftmap_IteratorOpen(v16, 0, 1, &__dst) & 0x80000000) == 0)
        {
          v69[0] = 0;
          *__src = 0;
          while ((ssftmap_IteratorNext(__dst, v69, __src) & 0x80000000) == 0)
          {
            stringmap_reader_ObjClose(*__src);
          }

          ssftmap_IteratorClose(__dst);
        }

        ssftmap_ObjClose(*v17);
        *v17 = 0;
      }

      v18 = *(a1[2] + 1);
      __dst = __b;
      v71 = v57;
      v72 = v58;
      v12 = ssftmap_ObjOpen(v18, 0, &__dst, a1 + 9);
      if ((v12 & 0x80000000) == 0)
      {
        v20 = (a1 + 10);
        v19 = a1[10];
        if (v19)
        {
          *&__dst = 0;
          if ((ssftmap_IteratorOpen(v19, 0, 1, &__dst) & 0x80000000) == 0)
          {
            v69[0] = 0;
            *__src = 0;
            while ((ssftmap_IteratorNext(__dst, v69, __src) & 0x80000000) == 0)
            {
              stringmap_reader_ObjClose(*__src);
            }

            ssftmap_IteratorClose(__dst);
          }

          ssftmap_ObjClose(*v20);
          *v20 = 0;
        }

        v21 = *(a1[2] + 1);
        __dst = __b;
        v71 = v57;
        v72 = v58;
        v12 = ssftmap_ObjOpen(v21, 0, &__dst, a1 + 10);
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

          if ((paramc_ParamGetStr(*(a1[2] + 5), "langcode", &__s2) & 0x80000000) != 0)
          {
            __s2 = "";
          }

          v52 = v5;
          if ((paramc_ParamGetStr(*(a1[2] + 5), "voicemodel", &v61) & 0x80000000) != 0)
          {
            v61 = 0;
          }

          cstdlib_strcpy(&__dst, "phonmap/");
          cstdlib_strcat(&__dst, __s2);
          cstdlib_strcat(&__dst, "/");
          cstdlib_strcat(&__dst, a2);
          brokeraux_ComposeBrokerString(a1[2], &__dst, 1, 1, __s2, a2, v61, v75, 0x80uLL);
          cstdlib_strcpy(v73, "phonmap_ipa/");
          cstdlib_strcat(v73, __s2);
          brokeraux_ComposeBrokerString(a1[2], v73, 1, 1, __s2, 0, 0, v76, 0x80uLL);
          cstdlib_strcpy(v74, &__dst);
          brokeraux_ComposeBrokerString(a1[2], v74, 1, 1, __s2, a2, 0, v77, 0x80uLL);
          v24 = 0;
          while (1)
          {
            if (*(a1[2] + 3))
            {
              v25 = 2;
              goto LABEL_58;
            }

            for (i = &v75[128 * v24]; *i == 47; ++i)
            {
              *i = 95;
LABEL_57:
              ;
            }

            if (*i)
            {
              goto LABEL_57;
            }

            cstdlib_strcat(&v75[128 * v24], ".dat");
            v25 = 3;
LABEL_58:
            *(&v69[32] + ++v24) = v25;
            if (v24 == 3)
            {
              v27 = 0;
              v53 = 0;
              v28 = 0;
              v29 = 1;
              while (1)
              {
                v54 = &v75[128 * v28];
                v30 = v28;
                v31 = ssftriff_reader_ObjOpen(*a1, a1[1], *(&v69[32] + v28 + 1), v54, "PHMP", 1031, v67);
                if ((v31 & 0x80000000) != 0)
                {
                  if (!v29 && !v27)
                  {
                    return v31;
                  }

                  v49 = v30;
                  v31 = 0;
                }

                else
                {
                  v32 = v53;
                  if (!v30)
                  {
                    v32 = 1;
                  }

                  v53 = v32;
                  v51 = v30;
                  if ((ssftriff_reader_OpenChunk(*v67, __s1, &v64, v63) & 0x80000000) == 0)
                  {
                    v33 = v30 | 2;
                    while (1)
                    {
                      if (!cstdlib_strcmp(__s1, "LINF") || !cstdlib_strcmp(__s1, "VINF"))
                      {
                        if ((v31 & 0x80000000) == 0)
                        {
                          v39 = v64;
                          if (v64)
                          {
                            v40 = 0;
                            do
                            {
                              __src[0] = 0;
                              LOBYTE(v69[0]) = 0;
                              v55 = 256;
                              LODWORD(v31) = ssftriff_reader_ReadStringZ(*v67, *v63, v39, v40, v69, &v55);
                              if ((v31 & 0x80000000) == 0 && v40 < v64)
                              {
                                v40 += v55;
                                v55 = 256;
                                LODWORD(v31) = ssftriff_reader_ReadStringZ(*v67, *v63, v64, v40, __src, &v55);
                              }

                              if ((v31 & 0x80000000) != 0)
                              {
                                break;
                              }

                              v41 = v55;
                              if (!LH_stricmp(v69, "version"))
                              {
                                v42 = (a1 + 11);
                                if (v33 != 2)
                                {
                                  v42 = (a1 + 43);
                                }

                                cstdlib_strcpy(v42, __src);
                              }

                              if (!cstdlib_strcmp(__s1, "VINF") && !LH_stricmp(v69, "language"))
                              {
                                cstdlib_strcpy(v60, __src);
                              }

                              if (!cstdlib_strcmp(__s1, "VINF") && !LH_stricmp(v69, "version"))
                              {
                                cstdlib_strcpy(a1 + 344, __src);
                              }

                              v40 += v41;
                              v39 = v64;
                            }

                            while (v40 < v64);
                          }
                        }

                        goto LABEL_103;
                      }

                      if (!cstdlib_strcmp(__s1, "LANG"))
                      {
                        v34 = *v67;
                        v35 = v54;
                        v36 = *a1;
                        v37 = a1[1];
                        v38 = v52;
                        goto LABEL_101;
                      }

                      if (!cstdlib_strcmp(__s1, "LEXA"))
                      {
                        v34 = *v67;
                        v35 = v54;
                        v36 = *a1;
                        v37 = a1[1];
                        v38 = a1 + 4;
                        goto LABEL_101;
                      }

                      if (!cstdlib_strcmp(__s1, "SLAN"))
                      {
                        v34 = *v67;
                        v35 = v54;
                        v36 = *a1;
                        v37 = a1[1];
                        v38 = a1 + 5;
                        goto LABEL_101;
                      }

                      if (!cstdlib_strcmp(__s1, "SLEX"))
                      {
                        v34 = *v67;
                        v35 = v54;
                        v36 = *a1;
                        v37 = a1[1];
                        v38 = a1 + 6;
                        goto LABEL_101;
                      }

                      if (!cstdlib_strcmp(__s1, "VOIC"))
                      {
                        break;
                      }

                      if (!cstdlib_strcmp(__s1, "VEXA"))
                      {
                        v43 = ssftmap_Find(a1[8], v60, &v59);
                        if (v43 < 0)
                        {
                          v43 = stringmap_reader_ObjOpen(*a1, a1[1], v54, *v67, &v59);
                          if ((v43 & 0x80000000) == 0)
                          {
                            v46 = (a1 + 8);
                            goto LABEL_125;
                          }
                        }

                        goto LABEL_102;
                      }

                      if (!cstdlib_strcmp(__s1, "SVOI"))
                      {
                        v43 = ssftmap_Find(a1[9], v60, &v59);
                        if (v43 < 0)
                        {
                          v43 = stringmap_reader_ObjOpen(*a1, a1[1], v54, *v67, &v59);
                          if ((v43 & 0x80000000) == 0)
                          {
                            v46 = (a1 + 9);
                            goto LABEL_125;
                          }
                        }

                        goto LABEL_102;
                      }

                      if (!cstdlib_strcmp(__s1, "SVEX"))
                      {
                        v43 = ssftmap_Find(a1[10], v60, &v59);
                        if (v43 < 0)
                        {
                          v43 = stringmap_reader_ObjOpen(*a1, a1[1], v54, *v67, &v59);
                          if ((v43 & 0x80000000) == 0)
                          {
                            v46 = (a1 + 10);
LABEL_125:
                            LODWORD(v31) = ssftmap_Insert(*v46, v60, v59);
                            if ((v31 & 0x80000000) != 0)
                            {
                              stringmap_reader_ObjClose(v59);
                            }

                            goto LABEL_103;
                          }
                        }

                        goto LABEL_102;
                      }

                      if (!cstdlib_strcmp(__s1, "IPA "))
                      {
                        v34 = *v67;
                        v35 = v54;
                        v36 = *a1;
                        v37 = a1[1];
                        v38 = a1 + 75;
LABEL_101:
                        v43 = stringmap_reader_ObjOpen(v36, v37, v35, v34, v38);
LABEL_102:
                        LODWORD(v31) = v43;
                        goto LABEL_103;
                      }

                      if (!cstdlib_strcmp(__s1, "SAPI"))
                      {
                        v34 = *v67;
                        v35 = v54;
                        v36 = *a1;
                        v37 = a1[1];
                        v38 = a1 + 76;
                        goto LABEL_101;
                      }

LABEL_103:
                      v44 = ssftriff_reader_CloseChunk(*v67);
                      if (v31 > -1 && v44 < 0)
                      {
                        v31 = v44;
                      }

                      else
                      {
                        v31 = v31;
                      }

                      if ((ssftriff_reader_OpenChunk(*v67, __s1, &v64, v63) & 0x80000000) != 0)
                      {
                        goto LABEL_128;
                      }
                    }

                    if (!v60[0])
                    {
                      cstdlib_strcpy(v60, __s2);
                    }

                    v43 = ssftmap_Find(a1[7], v60, &v59);
                    if (v43 < 0)
                    {
                      v43 = stringmap_reader_ObjOpen(*a1, a1[1], v54, *v67, &v59);
                      if ((v43 & 0x80000000) == 0)
                      {
                        v46 = (a1 + 7);
                        goto LABEL_125;
                      }
                    }

                    goto LABEL_102;
                  }

LABEL_128:
                  if (*v67)
                  {
                    v47 = ssftriff_reader_ObjClose(*v67);
                    *v67 = 0;
                    if (v31 > -1 && v47 < 0)
                    {
                      v31 = v47;
                    }

                    else
                    {
                      v31 = v31;
                    }
                  }

                  v49 = v51;
                }

                v28 = v49 + 1;
                if (v28 != 3)
                {
                  v27 = v53 != 0;
                  v29 = v28 != 2;
                  if (v28 != 2 || !v53)
                  {
                    continue;
                  }
                }

                return v31;
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
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v18 = 0;
  v17 = 0;
  *a4 = 0;
  cstdlib_strcpy(__dst, a2);
  cstdlib_strcat(__dst, "/");
  cstdlib_strcat(__dst, a3);
  v10 = 0;
  if ((ssftmap_Find(a1[77], __dst, a4) & 0x80000000) != 0)
  {
    Chunk = ssftriff_reader_ObjOpen(*a1, a1[1], 2 * (a5 != 0), a2, "PHMP", 1031, &v19);
    if ((Chunk & 0x80000000) != 0 || (Chunk = ssftriff_reader_FindChunk(v19, a3, 1, &v18, &v17), (Chunk & 0x80000000) != 0) || (Chunk = stringmap_reader_ObjOpen(*a1, a1[1], a2, v19, a4), (Chunk & 0x80000000) != 0))
    {
      v10 = Chunk;
    }

    else
    {
      v10 = ssftmap_Insert(a1[77], __dst, *a4);
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

uint64_t phonmap_LhPToLhTtsSequenceLng(uint64_t *a1, uint64_t a2, int a3, const char *a4, uint64_t a5, char *a6, char *a7)
{
  v99 = *MEMORY[0x277D85DE8];
  v7 = 2322604039;
  v90 = 0;
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
  if (!a5)
  {
    return 2322604039;
  }

  v10 = a4;
  if (!*a4)
  {
    return 2322604039;
  }

  v13 = a2;
  StrMap = safeh_HandleCheck(a1, a2, 29348, 624);
  if ((StrMap & 0x80000000) != 0)
  {
    return StrMap;
  }

  v86 = a1[2];
  if (a3)
  {
    if (a3 == 1)
    {
      if (a7 && *a7)
      {
        cstdlib_strcpy(__dst, "phonmap/");
        cstdlib_strcat(__dst, a7);
        StrMap = phonmap_loc_GetStrMap(a1, __dst, "LANG", &v90, 0);
        if ((StrMap & 0x80000000) != 0)
        {
          return StrMap;
        }

        v16 = v90;
      }

      else
      {
        v16 = a1[3];
        v90 = v16;
      }

      v19 = v16;
      if (!v16)
      {
        goto LABEL_97;
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
    v19 = MapTroughLng;
    v90 = MapTroughLng;
LABEL_20:
    if (*v10)
    {
      v7 = safeh_HandleCheck(a1, v13, 29348, 624);
      if ((v7 & 0x80000000) == 0)
      {
        v20 = a1[2];
        v21 = cstdlib_strlen(v10);
        *v8 = 0;
        log_OutText(*(v20 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : Begin (%s)", v10);
        v93 = LhpuCreate(*(v20 + 8));
        if (v93)
        {
          v92 = 0;
          __s = 0;
          if (v21 >= 1)
          {
            v22 = 0;
            v23 = &v10[v21];
            v83 = v9;
            v24 = v19;
            v25 = v23;
            v81 = v23;
            v82 = v24;
            v85 = v8;
            while (1)
            {
              v87 = v7;
              v26 = v93;
              Symbol = LhplGetSymbol(v10, v93, &v92 + 1, &v92);
              v88 = v10;
              if (!Symbol)
              {
                break;
              }

              if (Symbol == 1)
              {
                v8 = v85;
                v7 = v87;
                goto LABEL_94;
              }

              v28 = 1;
              v29 = 1;
              v8 = v85;
              v7 = v87;
LABEL_87:
              if (v29)
              {
                v10 = &v88[v28];
                if (&v88[v28] < v25)
                {
                  continue;
                }
              }

              goto LABEL_94;
            }

            __s1[0] = 0;
            __s = 0;
            LhpuGetSymbol();
            stringmap_reader_Map(v24, v30, &__s);
            if (__s)
            {
              if (!LhpuHasDurSpec(v26) && !LhpuGetcBp(v26))
              {
                cstdlib_strcpy(__s1, __s);
                v65 = cstdlib_strchr(__s1, 124);
                v8 = v85;
                if (v65)
                {
                  *v65 = 0;
                }

                v7 = v87;
                goto LABEL_84;
              }

              v31 = cstdlib_strchr(__s, 124);
              if (v31)
              {
                v32 = 0;
                do
                {
                  v33 = v32;
                  v34 = &__s[v32++];
                }

                while (v34 < v31);
              }

              else
              {
                v33 = cstdlib_strlen(__s);
              }

              if (v33 < 2u)
              {
                cstdlib_strcpy(__s1, __s);
                if (LhpuHasDurSpec(v26))
                {
                  DurValue = LhpuGetDurValue(v26);
                  __s2[0] = 91;
                  IsAbs = LhpuDurSpecIsAbs(v26);
                  v48 = &__s2[1];
                  if (!IsAbs)
                  {
                    v48 = &__s2[1];
                    if (DurValue >= 1)
                    {
                      __s2[1] = 43;
                      v48 = v97;
                    }
                  }

                  LH_itoa(DurValue, v48, 0xAu);
                  cstdlib_strcat(__s1, __s2);
                  if (LhpuGetcBp(v26))
                  {
                    v49 = 0;
                    v50 = 0;
                    do
                    {
                      __s2[0] = 40;
                      v51 = LhpuGetpBp(v26);
                      LH_itoa(*(v51 + v49 + 2), &__s2[1], 0xAu);
                      cstdlib_strcat(__s2, ",");
                      v52 = *(LhpuGetpBp(v26) + v49);
                      v53 = cstdlib_strlen(__s2);
                      LH_itoa(v52, &__s2[v53], 0xAu);
                      cstdlib_strcat(__s2, ")");
                      cstdlib_strcat(__s1, __s2);
                      ++v50;
                      v49 += 4;
                    }

                    while (v50 < LhpuGetcBp(v26));
                  }

                  cstdlib_strcat(__s1, "]");
                  v8 = v85;
                  v7 = v87;
                  v24 = v82;
                  goto LABEL_84;
                }

                cstdlib_strcat(__s1, "[");
                if (LhpuGetcBp(v26))
                {
                  v60 = 0;
                  v61 = 0;
                  do
                  {
                    __s2[0] = 40;
                    v62 = LhpuGetpBp(v26);
                    LH_itoa(*(v62 + v60 + 2), &__s2[1], 0xAu);
                    cstdlib_strcat(__s2, ",");
                    v63 = *(LhpuGetpBp(v26) + v60);
                    v64 = cstdlib_strlen(__s2);
                    LH_itoa(v63, &__s2[v64], 0xAu);
                    cstdlib_strcat(__s2, ")");
                    cstdlib_strcat(__s1, __s2);
                    ++v61;
                    v60 += 4;
                  }

                  while (v61 < LhpuGetcBp(v26));
                }

                cstdlib_strcat(__s1, "]");
                v8 = v85;
                v7 = v87;
              }

              else
              {
                v35 = 0;
                v95 = 0;
                v36 = v33;
                do
                {
                  if (v31)
                  {
                    __s2[v35 - 8] = cstdlib_atoi(v31 + 1);
                    v31 = cstdlib_strchr(v31 + 1, 58);
                  }

                  ++v35;
                }

                while (v36 != v35);
                v37 = v93;
                if (LhpuHasDurSpec(v93))
                {
                  if (LhpuDurSpecIsAbs(v37))
                  {
                    v38 = 0;
                    LODWORD(v39) = 0;
                    v40 = 0;
                    v84 = v36;
                    do
                    {
                      *__s2 = __s[v38];
                      cstdlib_strcat(__s1, __s2);
                      v41 = 1374389535 * (__s2[v38 - 8] * LhpuGetDurValue(v37) + 50);
                      __s2[0] = 91;
                      v89 = (v41 >> 37) + (v41 >> 63);
                      LH_itoa(v89, &__s2[1], 0xAu);
                      cstdlib_strcat(__s1, __s2);
                      if (v39 < LhpuGetcBp(v37))
                      {
                        v42 = 4 * v39;
                        v39 = v39;
                        do
                        {
                          if (v89 + v40 < *(LhpuGetpBp(v37) + v42 + 2))
                          {
                            break;
                          }

                          __s2[0] = 40;
                          v43 = LhpuGetpBp(v37);
                          LH_itoa(*(v43 + v42 + 2) - v40, &__s2[1], 0xAu);
                          cstdlib_strcat(__s2, ",");
                          v44 = *(LhpuGetpBp(v37) + v42);
                          v45 = cstdlib_strlen(__s2);
                          LH_itoa(v44, &__s2[v45], 0xAu);
                          cstdlib_strcat(__s2, ")");
                          cstdlib_strcat(__s1, __s2);
                          ++v39;
                          v42 += 4;
                        }

                        while (v39 < LhpuGetcBp(v37));
                        LODWORD(v39) = v39;
                        v36 = v84;
                      }

                      cstdlib_strcat(__s1, "]");
                      v40 += v89;
                      ++v38;
                    }

                    while (v38 != v36);
                  }

                  else
                  {
                    *__s2 = *__s;
                    cstdlib_strcat(__s1, __s2);
                    __s2[0] = 91;
                    v66 = LhpuGetDurValue(v37);
                    v67 = 1374389535 * (v95 * v66 + 50);
                    v68 = ((v67 >> 37) + (v67 >> 63));
                    v69 = &__s2[1];
                    if (v68 >= 1)
                    {
                      __s2[1] = 43;
                      v69 = v97;
                    }

                    LH_itoa(v68, v69, 0xAu);
                    cstdlib_strcat(__s1, __s2);
                    if (LhpuGetcBp(v37))
                    {
                      v70 = 0;
                      v71 = 0;
                      do
                      {
                        __s2[0] = 40;
                        v72 = LhpuGetpBp(v37);
                        LH_itoa(*(v72 + v70 + 2), &__s2[1], 0xAu);
                        cstdlib_strcat(__s2, ",");
                        v73 = *(LhpuGetpBp(v37) + v70);
                        v74 = cstdlib_strlen(__s2);
                        LH_itoa(v73, &__s2[v74], 0xAu);
                        cstdlib_strcat(__s2, ")");
                        cstdlib_strcat(__s1, __s2);
                        ++v71;
                        v70 += 4;
                      }

                      while (v71 < LhpuGetcBp(v37));
                    }

                    cstdlib_strcat(__s1, "]");
                    v75 = 1;
                    do
                    {
                      *__s2 = __s[v75];
                      cstdlib_strcat(__s1, __s2);
                      __s2[0] = 91;
                      v76 = 1374389535 * (__s2[v75 - 8] * LhpuGetDurValue(v37) + 50);
                      v77 = ((v76 >> 37) + (v76 >> 63));
                      v78 = &__s2[1];
                      if (v77 >= 1)
                      {
                        __s2[1] = 43;
                        v78 = v97;
                      }

                      LH_itoa(v77, v78, 0xAu);
                      cstdlib_strcat(__s1, __s2);
                      cstdlib_strcat(__s1, "]");
                      ++v75;
                    }

                    while (v36 != v75);
                  }
                }

                else
                {
                  *__s2 = *__s;
                  cstdlib_strcat(__s1, __s2);
                  cstdlib_strcat(__s1, "[");
                  if (LhpuGetcBp(v37))
                  {
                    v54 = 0;
                    v55 = 0;
                    do
                    {
                      __s2[0] = 40;
                      v56 = LhpuGetpBp(v37);
                      LH_itoa(*(v56 + v54 + 2), &__s2[1], 0xAu);
                      cstdlib_strcat(__s2, ",");
                      v57 = *(LhpuGetpBp(v37) + v54);
                      v58 = cstdlib_strlen(__s2);
                      LH_itoa(v57, &__s2[v58], 0xAu);
                      cstdlib_strcat(__s2, ")");
                      cstdlib_strcat(__s1, __s2);
                      ++v55;
                      v54 += 4;
                    }

                    while (v55 < LhpuGetcBp(v37));
                  }

                  cstdlib_strcat(__s1, "]");
                  v59 = 1;
                  do
                  {
                    *__s2 = __s[v59];
                    cstdlib_strcat(__s1, __s2);
                    ++v59;
                  }

                  while (v36 != v59);
                }

                v8 = v85;
                v7 = v87;
                v24 = v82;
              }

              v25 = v81;
            }

            else
            {
              v7 = 1;
              v8 = v85;
            }

LABEL_84:
            v79 = cstdlib_strlen(__s1) + v22;
            v29 = v79 < v83;
            if (v79 < v83)
            {
              cstdlib_strcat(v8, __s1);
              v22 += cstdlib_strlen(__s1);
            }

            v28 = v92 + 1;
            goto LABEL_87;
          }

LABEL_94:
          LhpuRemove(*(v20 + 8), &v93);
          log_OutText(*(v20 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : End (%x, %s)", v7, v8);
          if (v7 == 1)
          {
            log_OutText(*(v20 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme");
            v7 = 1;
          }
        }

        else
        {
          log_OutPublic(*(v20 + 32), "PHONMAP", 29000, 0);
          v7 = 2322604042;
        }
      }
    }

    StrMap = v7;
    goto LABEL_97;
  }

  StrMap = phonmap_LhPToLhTtsSequenceLngMoreMaps(a1, v13, a1[7], v10, v9, v8);
LABEL_97:
  v80 = "";
  if (StrMap >= 0)
  {
    v80 = v8;
  }

  log_OutText(*(v86 + 32), "PHONMAP", 4, 0, "PHONMAP LhPToLhTtsSequence : End (%x, %s)", StrMap, v80);
  if (StrMap == 1)
  {
    log_OutText(*(v86 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme");
    return 1;
  }

  else if ((StrMap & 0x80000000) != 0 && (StrMap & 0x1FFFu) <= 0x14 && ((1 << StrMap) & 0x10001A) != 0)
  {
    return (StrMap & 0x1FFF) - 1972363264;
  }

  return StrMap;
}

uint64_t phonmap_LhPToLhTtsSequenceLngMoreMaps(uint64_t a1, int a2, uint64_t a3, const char *a4, unsigned int a5, char *a6)
{
  v98 = *MEMORY[0x277D85DE8];
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
        v82 = v12;
        v13 = *(a1 + 16);
        v14 = cstdlib_strlen(v7);
        *a6 = 0;
        log_OutText(*(v13 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : Begin (%s)", v7);
        v92 = LhpuCreate(*(v13 + 8));
        if (v92)
        {
          v78 = v13;
          v91 = 0;
          __src = 0;
          if (v14 >= 1)
          {
            v15 = &v7[v14];
            v16 = 0;
            v85 = a5;
            v79 = a3;
            v80 = a6;
            v81 = v15;
            do
            {
              Symbol = LhplGetSymbol(v7, v92, &v91 + 1, &v91);
              if (Symbol)
              {
                if (Symbol == 1)
                {
                  break;
                }

                ++v7;
                v18 = 1;
              }

              else
              {
                v89 = 0;
                v18 = 1;
                if ((ssftmap_IteratorOpen(a3, 0, 1, &v89) & 0x80000000) == 0)
                {
                  v87 = 0;
                  v88 = 0;
                  __src = 0;
                  if ((ssftmap_IteratorNext(v89, &v88, &v87) & 0x80000000) != 0)
                  {
                    v22 = 0;
                  }

                  else
                  {
                    v19 = v92;
                    __s[0] = 0;
                    __src = 0;
                    v20 = v87;
                    LhpuGetSymbol();
                    stringmap_reader_Map(v20, v21, &__src);
                    if (__src)
                    {
                      v22 = 0;
LABEL_22:
                      if (LhpuHasDurSpec(v19) || LhpuGetcBp(v19))
                      {
                        v25 = cstdlib_strchr(__src, 124);
                        if (v25)
                        {
                          v26 = 0;
                          do
                          {
                            v27 = v26;
                            v28 = &__src[v26++];
                          }

                          while (v28 < v25);
                        }

                        else
                        {
                          v27 = cstdlib_strlen(__src);
                        }

                        v83 = v16;
                        if (v27 < 2u)
                        {
                          cstdlib_strcpy(__s, __src);
                          if (LhpuHasDurSpec(v19))
                          {
                            DurValue = LhpuGetDurValue(v19);
                            __s2 = 91;
                            IsAbs = LhpuDurSpecIsAbs(v19);
                            v46 = &v95;
                            if (!IsAbs)
                            {
                              v46 = &v95;
                              if (DurValue >= 1)
                              {
                                v95 = 43;
                                v46 = v96;
                              }
                            }

                            LH_itoa(DurValue, v46, 0xAu);
                            cstdlib_strcat(__s, &__s2);
                            if (LhpuGetcBp(v19))
                            {
                              v47 = 0;
                              v48 = 0;
                              do
                              {
                                __s2 = 40;
                                v49 = LhpuGetpBp(v19);
                                LH_itoa(*(v49 + v47 + 2), &v95, 0xAu);
                                cstdlib_strcat(&__s2, ",");
                                v50 = *(LhpuGetpBp(v19) + v47);
                                v51 = cstdlib_strlen(&__s2);
                                LH_itoa(v50, &__s2 + v51, 0xAu);
                                cstdlib_strcat(&__s2, ")");
                                cstdlib_strcat(__s, &__s2);
                                ++v48;
                                v47 += 4;
                              }

                              while (v48 < LhpuGetcBp(v19));
                            }
                          }

                          else
                          {
                            cstdlib_strcat(__s, "[");
                            if (LhpuGetcBp(v19))
                            {
                              v58 = 0;
                              v59 = 0;
                              do
                              {
                                __s2 = 40;
                                v60 = LhpuGetpBp(v19);
                                LH_itoa(*(v60 + v58 + 2), &v95, 0xAu);
                                cstdlib_strcat(&__s2, ",");
                                v61 = *(LhpuGetpBp(v19) + v58);
                                v62 = cstdlib_strlen(&__s2);
                                LH_itoa(v61, &__s2 + v62, 0xAu);
                                cstdlib_strcat(&__s2, ")");
                                cstdlib_strcat(__s, &__s2);
                                ++v59;
                                v58 += 4;
                              }

                              while (v59 < LhpuGetcBp(v19));
                            }
                          }

                          cstdlib_strcat(__s, "]");
                          a3 = v79;
                          a6 = v80;
                        }

                        else
                        {
                          v29 = 0;
                          v93 = 0;
                          v30 = v27;
                          do
                          {
                            if (v25)
                            {
                              *(&v93 + v29) = cstdlib_atoi(v25 + 1);
                              v25 = cstdlib_strchr(v25 + 1, 58);
                            }

                            ++v29;
                          }

                          while (v30 != v29);
                          v31 = v92;
                          v86 = v30;
                          if (LhpuHasDurSpec(v92))
                          {
                            if (LhpuDurSpecIsAbs(v31))
                            {
                              v32 = 0;
                              LODWORD(v33) = 0;
                              v34 = 0;
                              v35 = 50;
                              v84 = v7;
                              do
                              {
                                __s2 = __src[v32];
                                v95 = 0;
                                cstdlib_strcat(__s, &__s2);
                                v36 = LhpuGetDurValue(v31);
                                v37 = v35;
                                v38 = v35 + *(&v93 + v32) * v36;
                                v39 = (v35 + *(&v93 + v32) * v36) / 100;
                                __s2 = 91;
                                LH_itoa((v38 / 100), &v95, 0xAu);
                                cstdlib_strcat(__s, &__s2);
                                v31 = v92;
                                if (v33 < LhpuGetcBp(v92))
                                {
                                  v40 = 4 * v33;
                                  v33 = v33;
                                  do
                                  {
                                    if ((v38 / 100) + v34 < *(LhpuGetpBp(v31) + v40 + 2))
                                    {
                                      break;
                                    }

                                    __s2 = 40;
                                    v41 = LhpuGetpBp(v31);
                                    LH_itoa(*(v41 + v40 + 2) - v34, &v95, 0xAu);
                                    cstdlib_strcat(&__s2, ",");
                                    v42 = *(LhpuGetpBp(v31) + v40);
                                    v43 = cstdlib_strlen(&__s2);
                                    LH_itoa(v42, &__s2 + v43, 0xAu);
                                    cstdlib_strcat(&__s2, ")");
                                    cstdlib_strcat(__s, &__s2);
                                    ++v33;
                                    v40 += 4;
                                  }

                                  while (v33 < LhpuGetcBp(v31));
                                  LODWORD(v33) = v33;
                                  v7 = v84;
                                }

                                cstdlib_strcat(__s, "]");
                                v34 += v39;
                                ++v32;
                                v35 = v37;
                              }

                              while (v32 != v86);
                            }

                            else
                            {
                              __s2 = *__src;
                              v95 = 0;
                              cstdlib_strcat(__s, &__s2);
                              __s2 = 91;
                              v64 = LhpuGetDurValue(v31);
                              v65 = 1374389535 * (v93 * v64 + 50);
                              v66 = ((v65 >> 37) + (v65 >> 63));
                              v67 = &v95;
                              if (v66 >= 1)
                              {
                                v95 = 43;
                                v67 = v96;
                              }

                              LH_itoa(v66, v67, 0xAu);
                              cstdlib_strcat(__s, &__s2);
                              if (LhpuGetcBp(v31))
                              {
                                v68 = 0;
                                v69 = 0;
                                do
                                {
                                  __s2 = 40;
                                  v70 = LhpuGetpBp(v31);
                                  LH_itoa(*(v70 + v68 + 2), &v95, 0xAu);
                                  cstdlib_strcat(&__s2, ",");
                                  v71 = *(LhpuGetpBp(v31) + v68);
                                  v72 = cstdlib_strlen(&__s2);
                                  LH_itoa(v71, &__s2 + v72, 0xAu);
                                  cstdlib_strcat(&__s2, ")");
                                  cstdlib_strcat(__s, &__s2);
                                  ++v69;
                                  v68 += 4;
                                }

                                while (v69 < LhpuGetcBp(v31));
                              }

                              cstdlib_strcat(__s, "]");
                              v73 = 1;
                              do
                              {
                                __s2 = __src[v73];
                                v95 = 0;
                                cstdlib_strcat(__s, &__s2);
                                __s2 = 91;
                                v74 = 1374389535 * (*(&v93 + v73) * LhpuGetDurValue(v31) + 50);
                                v75 = ((v74 >> 37) + (v74 >> 63));
                                v76 = &v95;
                                if (v75 >= 1)
                                {
                                  v95 = 43;
                                  v76 = v96;
                                }

                                LH_itoa(v75, v76, 0xAu);
                                cstdlib_strcat(__s, &__s2);
                                cstdlib_strcat(__s, "]");
                                ++v73;
                              }

                              while (v86 != v73);
                            }
                          }

                          else
                          {
                            __s2 = *__src;
                            v95 = 0;
                            cstdlib_strcat(__s, &__s2);
                            cstdlib_strcat(__s, "[");
                            if (LhpuGetcBp(v31))
                            {
                              v52 = 0;
                              v53 = 0;
                              do
                              {
                                __s2 = 40;
                                v54 = LhpuGetpBp(v31);
                                LH_itoa(*(v54 + v52 + 2), &v95, 0xAu);
                                cstdlib_strcat(&__s2, ",");
                                v55 = *(LhpuGetpBp(v31) + v52);
                                v56 = cstdlib_strlen(&__s2);
                                LH_itoa(v55, &__s2 + v56, 0xAu);
                                cstdlib_strcat(&__s2, ")");
                                cstdlib_strcat(__s, &__s2);
                                ++v53;
                                v52 += 4;
                              }

                              while (v53 < LhpuGetcBp(v31));
                            }

                            cstdlib_strcat(__s, "]");
                            v57 = 1;
                            do
                            {
                              __s2 = __src[v57];
                              v95 = 0;
                              cstdlib_strcat(__s, &__s2);
                              ++v57;
                            }

                            while (v86 != v57);
                          }

                          a3 = v79;
                          a6 = v80;
                          v16 = v83;
                        }
                      }

                      else
                      {
                        cstdlib_strcpy(__s, __src);
                        v63 = cstdlib_strchr(__s, 124);
                        if (v63)
                        {
                          *v63 = 0;
                        }
                      }

                      v15 = v81;
                      if (cstdlib_strlen(__s) + v16 >= v85)
                      {
                        v22 = 1;
                      }

                      else
                      {
                        cstdlib_strcat(a6, __s);
                        v16 = v16 + cstdlib_strlen(__s);
                      }

                      v7 += v91 + 1;
                    }

                    else
                    {
                      v22 = 0;
                      while (1)
                      {
                        if (cstdlib_strlen(__s) + v16 >= v85)
                        {
                          v22 = 1;
                        }

                        else
                        {
                          cstdlib_strcat(a6, __s);
                          v16 = v16 + cstdlib_strlen(__s);
                        }

                        v7 += v91 + 1;
                        if ((ssftmap_IteratorNext(v89, &v88, &v87) & 0x80000000) != 0)
                        {
                          break;
                        }

                        __s[0] = 0;
                        __src = 0;
                        v23 = v87;
                        LhpuGetSymbol();
                        stringmap_reader_Map(v23, v24, &__src);
                        if (__src)
                        {
                          v82 = 1;
                          goto LABEL_22;
                        }
                      }

                      v82 = 1;
                      v15 = v81;
                    }
                  }

                  ssftmap_IteratorClose(v89);
                  v18 = v22 == 0;
                }
              }
            }

            while (v18 && v7 < v15);
          }

          LhpuRemove(*(v78 + 8), &v92);
          log_OutText(*(v78 + 32), "PHONMAP", 4, 0, "PHONMAP phonmap_LhPToLhTtsSequenceLngOneMap : End (%x, %s)", v82, a6);
          v6 = v82;
          if (v82 == 1)
          {
            log_OutText(*(v78 + 32), "PHONMAP", 4, 0, "Wrong L&H+ phoneme");
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
      if (utf8_BelongsToSet(4, a1, v4, a2))
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
  v19 = xmmword_287EECEF8;
  *&v20 = off_287EECF08;
  v14 = vector_ObjOpen(v13, &v19, 1, v11 + 3);
  v15 = v22;
  if (!v14)
  {
LABEL_11:
    log_OutPublic(*(v15 + 32), "CHARCOUNT", 16000, 0);
    return v5;
  }

  v16 = *(v22 + 8);
  v19 = xmmword_287EECF10;
  v20 = *off_287EECF20;
  v21 = off_287EECF30;
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

  v17[0] = 0;
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
    v12 = cstdlib_strlen(__s);
    v13 = cstdlib_strlen(__s2);
    v14 = heap_Calloc(*(v8 + 8), 1, (v12 + v13 + 2));
    if (v14)
    {
      v15 = v14;
      cstdlib_strcpy(v14, __s);
      cstdlib_strcat(v15, "_");
      cstdlib_strcat(v15, __s2);
      LODWORD(v17[0]) = v10;
      v17[1] = v15;
      if (!vector_Add(*(a1 + 24), v17))
      {
        v11 = 2709528586;
        log_OutPublic(*(v8 + 32), "CHARCOUNT", 16000, 0);
      }

      heap_Free(*(v8 + 8), v15);
    }

    else
    {
      v11 = 2709528586;
      log_OutPublic(*(v8 + 32), "CHARCOUNT", 16000, 0, v17[0]);
    }
  }

  return v11;
}

uint64_t charcount_ReportCharcounts(void *a1, int a2)
{
  v25 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
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
    v26 = 0;
    v6 = a1[2];
    Size = vector_GetSize(a1[3]);
    if (Size)
    {
      v8 = Size;
      v9 = 0;
      while (vector_GetElemAt(a1[3], v9, &v26))
      {
        if ((ssftmap_Find(a1[4], *(v26 + 8), &v25) & 0x80000000) != 0)
        {
          v10 = v26;
          v24 = *v26;
        }

        else
        {
          v24 = *v26 + *v25;
          ssftmap_Remove(a1[4], *(v26 + 8));
          v10 = v26;
        }

        v4 = ssftmap_Insert(a1[4], *(v10 + 8), &v24);
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
      if ((ssftmap_IteratorOpen(v5[4], 0, 0, &v23) & 0x80000000) == 0)
      {
        while ((ssftmap_IteratorNext(v23, &v22, &v25) & 0x80000000) == 0)
        {
          log_OutEvent(*(v6 + 32), 31, "%s%s%s%u", v16, v17, v18, v19, v20, "VOICE_VOP");
          log_OutText(*(v6 + 32), "CHARCOUNT", 5, 0, "Number of utf-8 characters processed for voice_model%s=%d", v22, *v25);
        }

        ssftmap_IteratorClose(v23);
      }

      log_OutEvent(*(v6 + 32), 30, "%s%u", v11, v12, v13, v14, v15, "CHARS");
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
          v11 = cstdlib_strlen(__s);
          v12 = cstdlib_strlen(__s2);
          v13 = heap_Calloc(*(v8 + 8), 1, (v11 + v12 + 2));
          if (v13)
          {
            v14 = v13;
            cstdlib_strcpy(v13, __s);
            cstdlib_strcat(v14, "_");
            cstdlib_strcat(v14, __s2);
            Size = vector_GetSize(*(a1 + 24));
            if (vector_GetElemAt(*(a1 + 24), Size - 1, &v21))
            {
              if (cstdlib_strcmp(*(v21 + 8), v14))
              {
                v16 = *(v8 + 8);
                v17 = *(v21 + 8);
                v18 = cstdlib_strlen(v14);
                v19 = heap_Realloc(v16, v17, v18 + 1);
                if (!v19)
                {
                  log_OutPublic(*(v8 + 32), "CHARCOUNT", 16000, 0);
                  goto LABEL_15;
                }

                *(v21 + 8) = v19;
                cstdlib_strcpy(v19, v14);
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
    v7 = cstdlib_strlen(*(a1 + 8));
    result = heap_Alloc(a2, v7 + 1);
    *(a3 + 8) = result;
    if (result)
    {
      *a3 = *a1;
      cstdlib_strcpy(result, *(a1 + 8));
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

uint64_t charcount_IElemValueCopy(const void *a1, uint64_t a2, void *a3)
{
  v5 = heap_Alloc(a2, 4);
  if (!v5)
  {
    return 2709528586;
  }

  v6 = v5;
  cstdlib_memcpy(v5, a1, 4uLL);
  result = 0;
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
  if ((v7 & 0x80000000) != 0 || (v7 = (*(*(a1 + 32) + 120))(*(a1 + 16), *(a1 + 24), 0, &unk_26ECDB47D, 0), (v7 & 0x80000000) != 0))
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
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  if ((safeh_HandleCheck(a1, a2, 86237, 1208) & 0x80000000) != 0)
  {
    return 2359304200;
  }

  __src = 0;
  *a5 = 1;
  v7 = (*(*(a1 + 8) + 88))(*(a1 + 888), *(a1 + 896), &v102, &v101 + 4);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = HIDWORD(v101);
  v9 = (*(*(a1 + 8) + 144))(*(a1 + 904), *(a1 + 912), &v100 + 4, &v100);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  if (!HIDWORD(v101))
  {
    v52 = v100;
    if (!v100)
    {
      v95 = 0;
      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v95) & 0x80000000) != 0 || !v95 || !*v95)
      {
        *a5 = 0;
      }

      return v9;
    }

    if (HIDWORD(v100))
    {
      v7 = (*(*(a1 + 8) + 88))(*(a1 + 904), *(a1 + 912), &__src, &v101);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v7 = (*(*(a1 + 8) + 104))(*(a1 + 936), *(a1 + 944), __src, v101);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v9 = (*(*(a1 + 8) + 96))(*(a1 + 904), *(a1 + 912), v101);
      if ((v9 & 0x80000000) != 0)
      {
        return v9;
      }

      v52 = v100;
    }

    if (!v52)
    {
      return v9;
    }

    return synstrmaux_CloseOutStreamsOnly((a1 + 64), *(a1 + 8));
  }

  *(a1 + 1188) = log_GetLogLevel(*(*a1 + 32)) > 4;
  log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Processing Sentence=%s", v102);
  v7 = (*(*(a1 + 8) + 88))(*(a1 + 904), *(a1 + 912), &__src, &v101);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v10 = v101;
  *(a1 + 1040) = v101 >> 5;
  *(a1 + 1042) = v10 >> 5;
  v11 = heap_Alloc(*(*a1 + 8), v10);
  *(a1 + 1032) = v11;
  if (!v11 || (cstdlib_memcpy(v11, __src, v101), v12 = heap_Calloc(*(*a1 + 8), 1, (HIDWORD(v101) + 33)), (*(a1 + 1016) = v12) == 0))
  {
    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0);
    v9 = 2359304202;
    goto LABEL_130;
  }

  *(a1 + 1024) = WORD2(v101) + 32;
  cstdlib_strcpy(v12, v102);
  v13 = cstdlib_strlen(*(a1 + 1016));
  v14 = Utf8_LengthInUtf8chars(*(a1 + 1016), v13);
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 1000), v14);
  if ((NewCharStr & 0x80000000) != 0 || (cstdlib_memset(*(a1 + 1000), 110, v14), *(*(a1 + 1000) + v14) = 0, NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 1008), v14), (NewCharStr & 0x80000000) != 0))
  {
    v9 = NewCharStr;
    goto LABEL_130;
  }

  v93 = (a1 + 1000);
  cstdlib_memset(*(a1 + 1008), 32, v14);
  v16 = 0;
  *(*(a1 + 1008) + v14) = 0;
  if (*(a1 + 1040) < 2u)
  {
    goto LABEL_86;
  }

  v91 = v10;
  v92 = v8;
  v16 = 0;
  v17 = 1;
  v18 = 88;
  v19 = 3;
  do
  {
    v20 = (*(*(a1 + 1032) + 32 * v17 + 12) - *(*(a1 + 1032) + 12));
    v21 = Utf8_LengthInUtf8chars(*(a1 + 1016), v20);
    v22 = *(a1 + 1032);
    v23 = (v22 + 32 * v17);
    v24 = *v23;
    if (*v23 != 34)
    {
      if (v24 != 21)
      {
        if (v24 == 1)
        {
          ++v16;
        }

        goto LABEL_37;
      }

      if (!*(v23 + 3))
      {
        goto LABEL_37;
      }
    }

    v25 = *(a1 + 1040);
    LOWORD(v26) = v13;
    if (v17 + 1 < v25)
    {
      v27 = (v22 + v18);
      v28 = v19;
      while (1)
      {
        v29 = *(v27 - 6);
        if (v29 == 21)
        {
          if (*v27)
          {
LABEL_27:
            v26 = *(v27 - 3) - *(v22 + 12);
            break;
          }
        }

        else if (v29 == 34)
        {
          goto LABEL_27;
        }

        v27 += 4;
        if (v25 == v28++)
        {
          LOWORD(v26) = v13;
          break;
        }
      }
    }

    if (v24 == 34)
    {
      v31 = 112;
    }

    else if (wordSeg_stricmp(*(v23 + 3), "normal"))
    {
      if (wordSeg_stricmp(*(*(a1 + 1032) + 32 * v17 + 24), "spell"))
      {
        v31 = 110;
      }

      else
      {
        v31 = 115;
      }
    }

    else
    {
      v31 = 110;
    }

    for (; v20 < v26; v20 = (utf8_determineUTF8CharLength(*(*(a1 + 1016) + v20)) + v20))
    {
      *(*(a1 + 1000) + v21++) = v31;
    }

LABEL_37:
    ++v17;
    v32 = *(a1 + 1040);
    v18 += 32;
    ++v19;
  }

  while (v17 < v32);
  if (v32 >= 2)
  {
    v33 = 2;
    v34 = 1;
    v35 = 88;
    while (1)
    {
      v36 = *(a1 + 1032);
      v37 = *(v36 + 32 * v34 + 12);
      LODWORD(v36) = *(v36 + 12);
      v38 = v37 - v36;
      v39 = Utf8_LengthInUtf8chars(*(a1 + 1016), (v37 - v36));
      v40 = *(a1 + 1032);
      v41 = v40 + 32 * v34;
      if (*v41 != 7)
      {
        if (*v41 == 36)
        {
          v42 = *(v41 + 24);
          if (v42)
          {
            v43 = *(a1 + 1040);
            LOWORD(v44) = v13;
            if (v34 + 1 < v43)
            {
              v45 = (v40 + v35);
              v46 = v33;
              while (*(v45 - 6) != 36 || !*v45)
              {
                ++v46;
                v45 += 4;
                if (v43 == v46)
                {
                  LOWORD(v44) = v13;
                  goto LABEL_63;
                }
              }

              v51 = v40 + 32 * v46;
              LOWORD(v44) = v13;
              if (*v51 == 36)
              {
                LOWORD(v44) = v13;
                if (*(v51 + 24))
                {
                  v44 = *(v51 + 12) - *(v40 + 12);
                }
              }
            }

LABEL_63:
            if (!wordSeg_stricmp(v42, "latin") && v44 > v38)
            {
              do
              {
                *(*(a1 + 1000) + v39) = 108;
                v38 += utf8_determineUTF8CharLength(*(*(a1 + 1016) + v38));
                ++v39;
              }

              while (v38 < v44);
            }
          }
        }

        goto LABEL_66;
      }

      v47 = *(v41 + 24);
      if (v47)
      {
        v48 = *(v41 + 16) + v38;
        if (v13 >= v48)
        {
          v49 = v48;
        }

        else
        {
          v49 = v13;
        }

        if (v47 == 43)
        {
          v50 = 112;
LABEL_57:
          while (v38 < v49)
          {
            *(*(a1 + 1000) + v39) = v50;
            v38 += utf8_determineUTF8CharLength(*(*(a1 + 1016) + v38));
            ++v39;
          }

          goto LABEL_66;
        }

        if (v47 == 16)
        {
          v50 = 116;
          goto LABEL_57;
        }
      }

LABEL_66:
      ++v34;
      ++v33;
      v35 += 32;
      if (v34 >= *(a1 + 1040))
      {
        v8 = v92;
        v10 = v91;
        goto LABEL_86;
      }
    }
  }

  v8 = v92;
  v10 = v91;
LABEL_86:
  if (!v13)
  {
    goto LABEL_105;
  }

  v54 = v10;
  v55 = v8;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  do
  {
    v59 = v58;
    if (*(*(a1 + 1016) + v58) == 32)
    {
      v60 = v57;
      *(*v93 + v57) = 32;
      *(*(a1 + 1008) + v57) = 32;
    }

    else
    {
      v60 = v57;
    }

    v61 = *(*v93 + v60);
    if (v61 == 115 || v61 == 110)
    {
      v56 = 1;
    }

    v58 = v59 + utf8_determineUTF8CharLength(*(*(a1 + 1016) + v59));
    ++v57;
  }

  while (v58 < v13);
  v10 = v54;
  if (v56 != 1)
  {
    v67 = 0;
    v69 = 0;
    v8 = v55;
    goto LABEL_107;
  }

  LODWORD(v95) = 0;
  wordSeg_logMarkers(a1, "Start of Chinese Word Segmentation");
  v8 = v55;
  if (*(a1 + 1188) == 1)
  {
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Orth   =%s", *(a1 + 1016));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Region =%s", *(a1 + 1000));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Hex    =%s", *(a1 + 1008));
  }

  WordDefs = wordSeg_GetWordDefs(a1, &v98, &v97, v16);
  if ((WordDefs & 0x80000000) != 0)
  {
    v9 = WordDefs;
    v69 = 0;
    goto LABEL_128;
  }

  v63 = v98;
  v64 = v97;
  wordSeg_ParseOutPOSAndAttributes(a1, v98, v97);
  if (*(a1 + 1188) == 1)
  {
    wordSeg_logMarkers(a1, "After POS and ATTRIBUTE processing");
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER POS   =%s", *(a1 + 1016));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER POS   =%s", *(a1 + 1000));
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER POS   =%s", *(a1 + 1008));
  }

  if (*(a1 + 1192) != 1)
  {
LABEL_105:
    v67 = 0;
    v69 = 0;
    goto LABEL_107;
  }

  v65 = cstdlib_strlen(*(a1 + 1016));
  HIDWORD(v101) = v65 + 1;
  v66 = heap_Calloc(*(*a1 + 8), 1, (v65 + 2));
  v67 = v66;
  if (!v66)
  {
    v69 = 0;
    goto LABEL_115;
  }

  cstdlib_strcpy(v66, *(a1 + 1016));
  v68 = heap_Alloc(*(*a1 + 8), v101);
  v69 = v68;
  if (!v68)
  {
LABEL_115:
    v70 = 0;
    goto LABEL_116;
  }

  cstdlib_memcpy(v68, *(a1 + 1032), v101);
  v70 = 1;
LABEL_116:
  v72 = wordSeg_setDepesLayers(a1, v63, v64);
  if ((v72 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  v72 = wordSeg_execDepesLayers(a1, &v95);
  if ((v72 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  if (v95)
  {
    goto LABEL_124;
  }

  v94 = 0;
  v72 = wordSeg_processDepesOutput(a1, v63, v64, &v94);
  if ((v72 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  if (v94 != 1)
  {
    goto LABEL_123;
  }

  v73 = *(*a1 + 32);
  if (v70)
  {
    log_OutPublic(v73, "FE_WORDSEG", 61005, 0);
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "!! Restoring backup as post-processing fails !!");
    cstdlib_strcpy(*(a1 + 1016), v67);
    cstdlib_memcpy(*(a1 + 1032), v69, v101);
    heap_Free(*(*a1 + 8), v67);
    heap_Free(*(*a1 + 8), v69);
    v67 = 0;
    v69 = 0;
    v10 = v54;
LABEL_123:
    wordSeg_logMarkers(a1, "After DEPES result processing");
LABEL_124:
    v8 = v55;
    if (*(a1 + 1188) == 1)
    {
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER DEPES =%s", *(a1 + 1016));
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER DEPES =%s", *(a1 + 1000));
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER DEPES =%s", *(a1 + 1008));
    }

LABEL_107:
    v71 = cstdlib_strlen(*(a1 + 1016));
    LODWORD(v101) = 32 * *(a1 + 1040);
    HIDWORD(v101) = v71 + 1;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "Final Sentence %s", *(a1 + 1016));
    v72 = (*(*(a1 + 8) + 104))(*(a1 + 920), *(a1 + 928), *(a1 + 1016), HIDWORD(v101));
    if ((v72 & 0x80000000) == 0)
    {
      v72 = (*(*(a1 + 8) + 104))(*(a1 + 936), *(a1 + 944), *(a1 + 1032), v101);
      if ((v72 & 0x80000000) == 0)
      {
        v72 = (*(*(a1 + 8) + 96))(*(a1 + 888), *(a1 + 896), v8);
        if ((v72 & 0x80000000) == 0)
        {
          v72 = (*(*(a1 + 8) + 96))(*(a1 + 904), *(a1 + 912), v10);
          if ((v72 & 0x80000000) == 0)
          {
            v72 = (*(*(a1 + 32) + 112))(*(a1 + 16), *(a1 + 24), &v96, 0);
            if ((v72 & 0x80000000) == 0)
            {
              v96 += HIDWORD(v101) - v8;
              v72 = (*(*(a1 + 32) + 104))(*(a1 + 16), *(a1 + 24));
            }
          }
        }
      }
    }

LABEL_126:
    v9 = v72;
    if (v67)
    {
LABEL_127:
      heap_Free(*(*a1 + 8), v67);
    }
  }

  else
  {
    log_OutPublic(v73, "FE_WORDSEG", 61005, "%s%s", "ABORT", "no backup available");
    v9 = 2359304192;
    if (v67)
    {
      goto LABEL_127;
    }
  }

LABEL_128:
  if (v69)
  {
    heap_Free(*(*a1 + 8), v69);
  }

LABEL_130:
  if (*(a1 + 1056))
  {
    v74 = 0;
    do
    {
      heap_Free(*(*a1 + 8), *(*(a1 + 1048) + 8 * v74));
      *(*(a1 + 1048) + 8 * v74++) = 0;
    }

    while (v74 < *(a1 + 1056));
  }

  *(a1 + 1056) = 0;
  v75 = *(a1 + 1048);
  if (v75)
  {
    heap_Free(*(*a1 + 8), v75);
    *(a1 + 1048) = 0;
  }

  *(a1 + 1058) = 0;
  v76 = *(a1 + 1032);
  if (v76)
  {
    heap_Free(*(*a1 + 8), v76);
    *(a1 + 1032) = 0;
    *(a1 + 1040) = 0;
  }

  v77 = *(a1 + 952);
  if (v77)
  {
    heap_Free(*(*a1 + 8), v77);
    *(a1 + 952) = 0;
  }

  v78 = *(a1 + 960);
  if (v78)
  {
    heap_Free(*(*a1 + 8), v78);
    *(a1 + 960) = 0;
  }

  v79 = *(a1 + 968);
  if (v79)
  {
    heap_Free(*(*a1 + 8), v79);
    *(a1 + 968) = 0;
  }

  v80 = *(a1 + 976);
  if (v80)
  {
    heap_Free(*(*a1 + 8), v80);
    *(a1 + 976) = 0;
  }

  v81 = *(a1 + 1000);
  if (v81)
  {
    heap_Free(*(*a1 + 8), v81);
    *(a1 + 1000) = 0;
  }

  v82 = *(a1 + 1008);
  if (v82)
  {
    heap_Free(*(*a1 + 8), v82);
    *(a1 + 1008) = 0;
  }

  v83 = *(a1 + 1016);
  if (v83)
  {
    heap_Free(*(*a1 + 8), v83);
    *(a1 + 1016) = 0;
    *(a1 + 1024) = 0;
  }

  v84 = v98;
  if (v98)
  {
    v85 = v97;
    if (v97)
    {
      v86 = (v98 + 32);
      do
      {
        v87 = *(v86 - 3);
        if (v87)
        {
          heap_Free(*(*a1 + 8), v87);
          *(v86 - 3) = 0;
        }

        v88 = *(v86 - 2);
        if (v88)
        {
          heap_Free(*(*a1 + 8), v88);
          *(v86 - 2) = 0;
        }

        v89 = *(v86 - 1);
        if (v89)
        {
          heap_Free(*(*a1 + 8), v89);
          *(v86 - 1) = 0;
        }

        if (*v86)
        {
          heap_Free(*(*a1 + 8), *v86);
          *v86 = 0;
        }

        v90 = v86[3];
        if (v90)
        {
          heap_Free(*(*a1 + 8), v90);
          v86[3] = 0;
        }

        v86 += 9;
        --v85;
      }

      while (v85);
    }

    heap_Free(*(*a1 + 8), v84);
  }

  return v9;
}

_DWORD *wordSeg_logMarkers(_DWORD *result, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
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
        v19 = 0;
        hasCharPtrArg = marker_hasCharPtrArg(*(*(v2 + 129) + 32 * v3));
        v6 = *(v2 + 129);
        if (hasCharPtrArg && (v7 = *(v6 + 32 * v3 + 24)) != 0)
        {
          v8 = cstdlib_strlen(v7);
          v6 = *(v2 + 129);
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
            v10 = *(v6 + 32 * v3 + 24);
            v11 = 1 - v9;
            v12 = &v20;
            while (1)
            {
              v13 = *v10;
              *(v12 - 1) = v13;
              if (!v13)
              {
                break;
              }

              ++v10;
              ++v11;
              ++v12;
              if (v11 == 1)
              {
                goto LABEL_17;
              }
            }

            if (v11)
            {
              bzero(v12, -v11);
            }
          }

LABEL_17:
          *(&v19 + v9) = 0;
        }

        else
        {
          v19 = 0;
        }

        v14 = (v6 + 32 * v3);
        v15 = *v14;
        if (*v14 == 32)
        {
          v19 = 48;
          if (v14[6] == 1)
          {
            v16 = 49;
          }

          else
          {
            v16 = 48;
          }

          v19 = v16;
          v20 = 0;
          v15 = *v14;
          v17 = &v19;
          v18 = "ARG=";
        }

        else
        {
          if (v19)
          {
            v18 = "ARG=";
          }

          else
          {
            v18 = &unk_26ECDB47D;
          }

          v17 = &v19;
          if (!v19)
          {
            v17 = &unk_26ECDB47D;
          }
        }

        result = log_OutText(*(*v2 + 32), "FE_WORDSEG", 5, 0, "marker[%d] %d(%s) %u,%u %u,%u %s%s", v3++, v15, String, v14[1], v14[2], v14[3], v14[4], v18, v17);
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
    v17 = 2359304202;
    log_OutPublic(*(*v5 + 32), "FE_WORDSEG", 61000, 0);
    return v17;
  }

  v7 = v6;
  v77 = a2;
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
            v17 = NewCharStr;
            goto LABEL_117;
          }

          cstdlib_strncpy(*v14, (*(v5 + 1016) + (*(*(v5 + 1032) + v8 + 44) - *(*(v5 + 1032) + 12))), *(*(v5 + 1032) + v8 + 48));
          ++v9;
        }
      }

      ++v10;
      v8 += 32;
    }

    while (v10 < *(v5 + 1040));
  }

  *a3 = v9;
  v78 = v7;
  v81 = v5;
  if (*(v5 + 1040) >= 2u)
  {
    v79 = (v7 + 16);
    v18 = 1;
    while (1)
    {
      v19 = *(v5 + 1032);
      v20 = (v19 + 32 * v18);
      if (*v20 == 37)
      {
        v21 = *(v5 + 1000);
        if (*(v21 + Utf8_LengthInUtf8chars(*(v5 + 1016), v20[3] - *(v19 + 12))) == 110)
        {
          break;
        }
      }

LABEL_55:
      if (++v18 >= *(v5 + 1040))
      {
        v9 = *a3;
        v7 = v78;
        goto LABEL_81;
      }
    }

    v22 = *(v5 + 1040);
    v23 = v77;
    v7 = v78;
    if (v22 < 2)
    {
      goto LABEL_79;
    }

    v24 = *a3;
    v25 = *(v81 + 1032);
    v26 = v25 + 32 * v18;
    v27 = (v25 + 44);
    v28 = 1;
    while (*(v27 - 3) != 1 || *v27 != *(v26 + 12))
    {
      ++v28;
      v27 += 8;
      if (v22 == v28)
      {
        goto LABEL_79;
      }
    }

    if (!*a3)
    {
LABEL_79:
      log_OutPublic(*(*v81 + 32), "FE_WORDSEG", 61005, 0);
      v17 = 0;
      goto LABEL_118;
    }

    v29 = v79;
    while (*(v29 - 8) != v28)
    {
      v29 += 9;
      if (!--v24)
      {
        goto LABEL_79;
      }
    }

    v30 = cstdlib_strlen(*(v26 + 24));
    v31 = wordSeg_GetNewCharStr(v81, v29, v30);
    if ((v31 & 0x80000000) != 0)
    {
      v17 = v31;
      v7 = v78;
      goto LABEL_118;
    }

    if (v30)
    {
      v32 = *(*(v81 + 1032) + 32 * v18 + 24);
      v33 = 1 - v30;
      v34 = (*v29 + 1);
      while (1)
      {
        v35 = *v32;
        *(v34 - 1) = v35;
        if (!v35)
        {
          break;
        }

        ++v32;
        ++v33;
        ++v34;
        if (v33 == 1)
        {
          goto LABEL_35;
        }
      }

      if (v33)
      {
        bzero(v34, -v33);
      }
    }

LABEL_35:
    v5 = v81;
    v36 = *(v81 + 1032);
    v37 = v36 + 32 * *(v29 - 8);
    LODWORD(v36) = *(v36 + 12);
    v38 = *(v37 + 12);
    v39 = v38 - v36;
    v40 = v38 - v36 + *(v37 + 16);
    v41 = (v38 - v36);
    v42 = Utf8_LengthInUtf8chars(*(v81 + 1016), v41);
    if (v41 >= v40)
    {
      goto LABEL_120;
    }

    v43 = v42;
    LODWORD(v44) = v39;
    do
    {
      v45 = *(v81 + 1016);
      v46 = *(v45 + v44);
      if (v44 && v46 == 92 && *(v45 + v44 - 1) != 32)
      {
        break;
      }

      LODWORD(v44) = v44 + utf8_determineUTF8CharLength(v46);
    }

    while (v44 < v40);
    v5 = v81;
    if (v44 == v39)
    {
LABEL_120:
      log_OutPublic(*(*v5 + 32), "FE_WORDSEG", 61013, "%s%d", "at input position", (*(*(v5 + 1032) + 32 * *(v29 - 8) + 12) - *(*(v5 + 1032) + 12)));
      v17 = 2359304192;
      v23 = v77;
      v7 = v78;
      goto LABEL_118;
    }

    log_OutText(*(*v81 + 32), "FE_WORDSEG", 5, 0, "word _%s_", *(v29 - 1));
    if (v44 > v39)
    {
      v47 = v43;
      do
      {
        v48 = *(*(v81 + 1016) + v39);
        if (*(*(v81 + 1016) + v39) >= 48 && v48 <= *(v81 + 1196))
        {
          *(*(v81 + 1008) + v47) = 120;
          v48 = *(*(v81 + 1016) + v39);
        }

        LOWORD(v39) = v39 + utf8_determineUTF8CharLength(v48);
        ++v47;
      }

      while (v39 < v44);
    }

    if (v41 + 1 == v40 && *v29)
    {
      *(*(v81 + 1008) + v43) = 120;
    }

    v49 = *(v81 + 1016);
    if (*(v49 + v44) == 92 && *(v49 + v44 - 1) != 32)
    {
      v50 = v44 + 1;
      if ((v44 + 1) >= v40)
      {
LABEL_54:
        v5 = v81;
        if (v50 != v40)
        {
          goto LABEL_120;
        }

        goto LABEL_55;
      }

      v51 = (v44 + 1);
      v52 = 1;
      v44 = v51;
      while (!v44 || *(v49 + v44) != 92 || *(v49 + (v44 - 1)) == 32)
      {
        v52 = ++v44 < v40;
        if (v44 == v40)
        {
          LOWORD(v44) = v40;
          break;
        }
      }

      v53 = v44 - v50;
      if (v44 == v50)
      {
        if (v52)
        {
          goto LABEL_69;
        }

        goto LABEL_54;
      }

      v5 = v81;
      if ((wordSeg_GetNewCharStr(v81, v29 + 1, (v44 - v50)) & 0x80000000) != 0)
      {
        goto LABEL_120;
      }

      cstdlib_strncpy(v29[1], (*(v81 + 1016) + v51), v53);
      log_OutText(*(*v81 + 32), "FE_WORDSEG", 5, 0, "pos _%s_", v29[1]);
      if (v52)
      {
LABEL_69:
        v54 = v44 + 1;
        LOWORD(v55) = v54;
        if (v54 < v40)
        {
          v56 = *(v81 + 1016);
          v55 = v54;
          while (*(v56 + v55) != 92 || *(v56 + (v55 - 1)) == 32)
          {
            ++v55;
            v5 = v81;
            if (v55 == v40)
            {
              goto LABEL_76;
            }
          }
        }

        v5 = v81;
        if (v55 != v40)
        {
          goto LABEL_120;
        }

LABEL_76:
        if (v54 != v40)
        {
          v57 = v40 - v54;
          if ((wordSeg_GetNewCharStr(v5, v29 + 2, v57) & 0x80000000) != 0)
          {
            goto LABEL_120;
          }

          cstdlib_strncpy(v29[2], (*(v5 + 1016) + v54), v57);
          log_OutText(*(*v5 + 32), "FE_WORDSEG", 5, 0, "attr _%s_", v29[2]);
        }

        goto LABEL_55;
      }
    }

    v50 = v44;
    goto LABEL_54;
  }

LABEL_81:
  if (!v9)
  {
LABEL_115:
    v17 = 0;
    goto LABEL_117;
  }

  v58 = 0;
  v59 = (v5 + 1060);
  while (1)
  {
    v60 = v7 + 72 * v58;
    v61 = *(v60 + 16);
    if (v61)
    {
      break;
    }

LABEL_114:
    if (++v58 >= *a3)
    {
      goto LABEL_115;
    }
  }

  v62 = *(v60 + 8);
  v63 = cstdlib_strlen(v62);
  v64 = cstdlib_strlen(v61);
  *(v60 + 44) = 0;
  v83 = 0;
  cstdlib_memset(v59, 0, 0x80uLL);
  v80 = v64;
  v65 = v64;
  if (v64 >= 3u)
  {
    v68 = 0;
    while (1)
    {
      v69 = &v61[v68];
      v85[0] = *v69;
      v85[1] = v69[1];
      v85[2] = 0;
      v70 = cstdlib_strtol(v85, &v83, 16);
      v84[0] = v69[2];
      v84[1] = v69[3];
      v84[2] = 0;
      if (cstdlib_strtol(v84, &v83, 16) == 49 && (v70 - 5) <= 0x28)
      {
        break;
      }

      v68 += 4;
      if (v65 <= v68 || (v68 | 3u) > v65)
      {
        goto LABEL_85;
      }
    }

    *v59 = v63;
    v7 = v78;
    v71 = (v60 + 44);
    v67 = v81;
    goto LABEL_108;
  }

LABEL_85:
  if (v63)
  {
    v66 = 0;
    v67 = v81;
    while (!v66 || v62[v66] != 92 || v62[(v66 - 1)] == 32)
    {
      if (v63 == ++v66)
      {
        LOWORD(v66) = v63;
        goto LABEL_101;
      }
    }

    v63 = v66;
  }

  else
  {
    LOWORD(v66) = 0;
    v67 = v81;
  }

LABEL_101:
  v86 = v66;
  OrthPinyinWords = wordSeg_GetOrthPinyinWords(v67, v63, v62, &v86);
  if (!OrthPinyinWords)
  {
    v7 = v78;
    if (v63 != 1)
    {
LABEL_109:
      OrthPinyinWords = *(v60 + 48) != 1;
      goto LABEL_110;
    }

    v71 = (v60 + 48);
LABEL_108:
    OrthPinyinWords = 1;
    *v71 = 1;
    goto LABEL_110;
  }

  v7 = v78;
  if (!v65 || (v80 & 3) != 0 || v65 >> 2 != OrthPinyinWords)
  {
    goto LABEL_109;
  }

LABEL_110:
  *(v60 + 40) = OrthPinyinWords;
  v73 = (v60 + 40);
  v74 = heap_Calloc(*(*v67 + 8), 1, 2 * OrthPinyinWords + 2);
  *(v60 + 56) = v74;
  if (v74)
  {
    if (*v73 >= 2u)
    {
      v75 = 0;
      do
      {
        *(v74 + 2 * v75) = v59[v75];
        ++v75;
      }

      while (v75 < *v73);
    }

    goto LABEL_114;
  }

  v17 = 2359304202;
  log_OutPublic(*(*v67 + 32), "FE_WORDSEG", 61000, 0);
LABEL_117:
  v23 = v77;
LABEL_118:
  *v23 = v7;
  return v17;
}

size_t wordSeg_ParseOutPOSAndAttributes(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = cstdlib_strlen(*(a1 + 1016));
  v6 = Utf8_LengthInUtf8chars(*(a1 + 1016), v5);
  result = cstdlib_strlen(*(a1 + 1016));
  if (!v5)
  {
    goto LABEL_64;
  }

  v50 = v6;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v52 = 0;
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

      v52 = v12;
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
      if (v5 <= v12)
      {
        goto LABEL_64;
      }
    }

    if (!*(a2 + 72 * v10 + 16) || v15[v11] != 110)
    {
      goto LABEL_30;
    }

LABEL_32:
    v48 = v9;
    v49 = a3;
    v25 = v12;
    v26 = v11;
    v27 = v12;
    if (v5 > v12)
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
        if (v5 <= v29)
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
      v50 = v50 + v11 - v26;
    }

    else
    {
      v47 = v27;
      cstdlib_memmove((*(a1 + 1016) + v12), (*(a1 + 1016) + v25), (v5 - v27));
      *(*(a1 + 1016) + (v14 + v5 - v47)) = 0;
      v30 = v50 - v26;
      cstdlib_memmove((*(a1 + 1000) + v11), (*(a1 + 1000) + v26), v30);
      v31 = v11 + v50 - v26;
      *(*(a1 + 1000) + v31) = 0;
      result = cstdlib_memmove((*(a1 + 1008) + v11), (*(a1 + 1008) + v26), v30);
      v27 = v47;
      v8 = v12;
      v50 = v11 + v50 - v26;
      *(*(a1 + 1008) + v31) = 0;
    }

    v9 = v48;
    a3 = v49;
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
        if (*(v36 - 4) == 1 && v39 == v52)
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
      v43 = *(v41 + 8);
      v42 = (v41 + 8);
      result = v43;
      if (v43)
      {
        v44 = v27 - v14;
        result = cstdlib_strlen(result);
        LOWORD(v32) = v44;
        v8 = v12;
        if (result)
        {
          v45 = 0;
          v46 = *v42;
          do
          {
            if (v45 && *(v46 + v45) == 92 && *(v46 + (v45 - 1)) != 32)
            {
              break;
            }

            ++v45;
          }

          while (v45 < result);
          if (*(v46 + v45) == 92 && *(v46 + (v45 - 1)) != 32)
          {
            *(v46 + v45) = 0;
          }
        }
      }
    }

    v5 = (v5 - v32);
  }

  while (v5 > v8);
LABEL_64:
  *(*(a1 + 1032) + 16) = v5;
  return result;
}

uint64_t wordSeg_setDepesLayers(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = cstdlib_strlen(*(a1 + 1016));
  v7 = cstdlib_strlen(*(a1 + 1000));
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 952), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    return NewCharStr;
  }

  cstdlib_strcpy(*(a1 + 952), &unk_26ECDB47D);
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 960), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    return NewCharStr;
  }

  cstdlib_strcpy(*(a1 + 960), &unk_26ECDB47D);
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 968), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    return NewCharStr;
  }

  cstdlib_strcpy(*(a1 + 968), &unk_26ECDB47D);
  NewCharStr = wordSeg_GetNewCharStr(a1, (a1 + 976), (v6 + 32));
  if ((NewCharStr & 0x80000000) != 0)
  {
    return NewCharStr;
  }

  v39 = v7;
  v36 = v6;
  cstdlib_strcpy(*(a1 + 976), &unk_26ECDB47D);
  v47 = v6 + 32;
  if (a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v37 = a3;
    v38 = a2;
    while (1)
    {
      v13 = (a2 + 72 * v9);
      v14 = *(*(a1 + 1032) + 32 * *v13 + 12) - *(*(a1 + 1032) + 12);
      v15 = Utf8_LengthInUtf8chars(*(a1 + 1016), v14);
      if (v15 > v11)
      {
        v16 = v15;
        v10 = wordSeg_GrowDepesLayers(a1, &v47, v12, v11, &unk_26ECDB47D, &unk_26ECDB47D, &unk_26ECDB47D, &unk_26ECDB47D, v14 - v12, v15 - v11, 1);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v12 = v14;
        v11 = v16;
      }

      v40 = v9;
      if (v13[20])
      {
        break;
      }

LABEL_47:
      v9 = v40 + 1;
      a2 = v38;
      if (v40 + 1 == v37)
      {
        goto LABEL_50;
      }
    }

    v17 = 0;
    v41 = 0;
    v18 = v13[20] == 1;
    while (1)
    {
      if (v17)
      {
        v19 = *(*(v13 + 7) + 2 * v17 - 2);
        v46 = Utf8_LengthInUtf8chars(*(v13 + 1), v19);
        v20 = *(*(v13 + 7) + 2 * v17) - *(*(v13 + 7) + 2 * v17 - 2);
        v21 = Utf8_LengthInUtf8chars(*(v13 + 1), v20);
      }

      else
      {
        if (v18)
        {
          v20 = cstdlib_strlen(*(v13 + 1));
          v21 = Utf8_LengthInUtf8chars(*(v13 + 1), v20);
        }

        else
        {
          v20 = **(v13 + 7);
          v21 = Utf8_LengthInUtf8chars(*(v13 + 1), v20);
        }

        v19 = 0;
        v46 = 0;
      }

      if (v20 >= 0x40u)
      {
        break;
      }

      v42 = v21;
      cstdlib_strncpy(__dst, (*(v13 + 1) + v19), v20);
      __dst[v20] = 0;
      v44 = v11;
      v45 = v19;
      if (*(v13 + 11) == 1 || *(v13 + 12) == 1)
      {
        v22 = *(v13 + 2);
      }

      else
      {
        v31 = *(v13 + 2);
        if (v31)
        {
          v22 = v48;
          cstdlib_strncpy(v48, (v31 + v41), 4uLL);
          v48[4] = 0;
          v41 += 4;
        }

        else
        {
          v22 = &unk_26ECDB47D;
        }
      }

      v23 = cstdlib_strlen(v22);
      v24 = cstdlib_strlen(__dst);
      v25 = Utf8_LengthInUtf8chars(__dst, v24);
      v43 = v12;
      if (v17)
      {
        v26 = 0;
        v27 = 0;
        v28 = &unk_26ECDB47D;
        v29 = &unk_26ECDB47D;
      }

      else
      {
        v29 = *(v13 + 3);
        if (v29)
        {
          v30 = cstdlib_strlen(*(v13 + 3));
          v26 = Utf8_LengthInUtf8chars(v29, v30);
        }

        else
        {
          v26 = 0;
          v29 = &unk_26ECDB47D;
        }

        v28 = *(v13 + 4);
        if (v28)
        {
          v32 = cstdlib_strlen(*(v13 + 4));
          v27 = Utf8_LengthInUtf8chars(v28, v32);
        }

        else
        {
          v27 = 0;
          v28 = &unk_26ECDB47D;
        }
      }

      LOWORD(v33) = v25;
      if (v25 <= v23)
      {
        LOWORD(v33) = v23;
      }

      if (*(a1 + 1200))
      {
        LOWORD(v33) = v25;
      }

      v33 = v33;
      if (v33 <= v26)
      {
        v33 = v26;
      }

      if (v33 <= v27)
      {
        LOWORD(v33) = v27;
      }

      v10 = wordSeg_GrowDepesLayers(a1, &v47, v45, v46, v22, __dst, v29, v28, v33, v33, 0);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      ++v17;
      v34 = v13[20];
      if (v17 < v34)
      {
        NewCharStr = wordSeg_GrowDepesLayers(a1, &v47, v45, v46, "*", "*", "~", "~", 1u, 1u, 0);
        if ((NewCharStr & 0x80000000) != 0)
        {
          return NewCharStr;
        }

        v10 = 0;
        v34 = v13[20];
      }

      v18 = 0;
      v12 = v20 + v43;
      v11 = v44 + v42;
      if (v17 >= v34)
      {
        goto LABEL_47;
      }
    }

    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61011, "%s%d%s%d", "trying to handle pinyin word length", v20, "chinese word", v40);
    return 2359304192;
  }

  LOWORD(v12) = 0;
  LOWORD(v11) = 0;
  v10 = 0;
LABEL_50:
  if (v39 > v11)
  {
    return wordSeg_GrowDepesLayers(a1, &v47, v12, v11, &unk_26ECDB47D, &unk_26ECDB47D, &unk_26ECDB47D, &unk_26ECDB47D, v36 - v12, v39 - v11, 1);
  }

  return v10;
}

uint64_t wordSeg_execDepesLayers(uint64_t a1, _DWORD *a2)
{
  v28 = 0;
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

  v4 = *(*(a1 + 32) + 120);
  v5 = *(a1 + 952);
  v6 = cstdlib_strlen(v5);
  v7 = v4(*(a1 + 16), *(a1 + 24), 0, v5, v6);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = *(*(a1 + 32) + 120);
  v9 = *(a1 + 960);
  v10 = cstdlib_strlen(v9);
  v7 = v8(*(a1 + 16), *(a1 + 24), 1, v9, v10);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v11 = *(*(a1 + 32) + 120);
  v12 = *(a1 + 968);
  v13 = cstdlib_strlen(v12);
  v7 = v11(*(a1 + 16), *(a1 + 24), 2, v12, v13);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (!*(a1 + 1200))
  {
    v14 = *(*(a1 + 32) + 120);
    v15 = *(a1 + 976);
    v16 = cstdlib_strlen(v15);
    v7 = v14(*(a1 + 16), *(a1 + 24), 3, v15, v16);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }
  }

  v17 = (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), "word_segmentation");
  if ((v17 & 0x80000000) != 0)
  {
    v18 = v17;
    log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61006, "%s%s", "functionName", "word_segmentation");
    return v18;
  }

  v18 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, a1 + 984, &v28 + 2);
  if ((v18 & 0x80000000) == 0)
  {
    *(*(a1 + 984) + HIWORD(v28)) = 0;
    if (!*(a1 + 1200))
    {
      v19 = (a1 + 992);
      v18 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 1, a1 + 992, &v28);
      if ((v18 & 0x80000000) == 0)
      {
        *(*(a1 + 992) + v28) = 0;
        if (*(a1 + 1188) == 1)
        {
          log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "OUT L1: %s", *(a1 + 984));
          log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "OUT L2: %s", *(a1 + 992));
        }

        v20 = HIWORD(v28);
        if (v20 != Utf8_LengthInUtf8chars(*v19, v28))
        {
          v26 = *(*a1 + 32);
          v27 = 61008;
          goto LABEL_30;
        }

        if (HIWORD(v28))
        {
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = *(*(a1 + 984) + v21);
            v24 = (*v19)[v22];
            if (v23 == 42)
            {
              if (v24 != 42)
              {
                goto LABEL_29;
              }
            }

            else if (v23 == 32 && v24 != 32)
            {
LABEL_29:
              v26 = *(*a1 + 32);
              v27 = 61009;
LABEL_30:
              log_OutPublic(v26, "FE_WORDSEG", v27, 0);
              *a2 = 1;
              return v18;
            }

            ++v21;
            v22 += utf8_determineUTF8CharLength(v24);
          }

          while (v21 < HIWORD(v28));
        }
      }
    }
  }

  return v18;
}

uint64_t wordSeg_processDepesOutput(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  v275 = *MEMORY[0x277D85DE8];
  v271 = 0;
  *__s2 = 0;
  v269 = 0;
  *__dst = 0;
  v7 = cstdlib_strlen(*(a1 + 952));
  v8 = cstdlib_strlen(*(a1 + 984));
  v235 = a4;
  *a4 = 0;
  v248 = a3;
  if (a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v258 = v7;
    v253 = v8;
    v249 = (a1 + 1000);
    v251 = (a1 + 1016);
    while (1)
    {
      v15 = (a2 + 72 * v9);
      v16 = *(v15 + 2);
      v266 = v10;
      if (v16)
      {
        if (!*(v15 + 11))
        {
          v18 = cstdlib_strlen(v16);
          v19 = *(*(a1 + 1032) + 32 * *v15 + 12) - *(*(a1 + 1032) + 12);
          log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "DOING hexStr=%s posInSentStr=%d", *(v15 + 2), (*(*(a1 + 1032) + 32 * *v15 + 12) - *(*(a1 + 1032) + 12)));
          if ((*&v18 & 0x3FFFCLL) != 0)
          {
            break;
          }
        }
      }

      v17 = v11;
LABEL_6:
      ++v9;
      v11 = v17;
      v10 = v266;
      if (v9 == v248)
      {
        goto LABEL_159;
      }
    }

    v260 = v19;
    v246 = a2 + 72 * v9;
    v20 = 0;
    v256 = 0;
    v244 = (v18 >> 2);
    v238 = v9;
    while (1)
    {
      v21 = (4 * v20);
      if (*(a1 + 1200))
      {
        v263 = v13;
        v22 = utf8_determineUTF8CharLength(*(*(v246 + 8) + v256));
        cstdlib_strncpy(__dst, (*(v246 + 8) + v256), v22);
        __s2[v22] = 0;
        cstdlib_strncpy(__s2, (*(v246 + 16) + v21), 4uLL);
        v271 = 0;
        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "\tthisOrthStr=%s", __dst);
        v23 = v14 + 1;
        v24 = v258;
        while (v23 < v258 && cstdlib_strncmp((*(a1 + 952) + v14), __dst, v22))
        {
          v14 += utf8_determineUTF8CharLength(*(*(a1 + 952) + v14));
          v23 = v14 + 1;
        }

        if (cstdlib_strncmp((*(a1 + 952) + v14), __dst, v22))
        {
          v228 = *(*a1 + 32);
          v229 = *(a1 + 952) + v14;
          v230 = "orth1";
          goto LABEL_316;
        }

        v256 += v22;
        v266 = v22;
      }

      else
      {
        cstdlib_strncpy(__s2, (*(v246 + 16) + v21), 4uLL);
        v271 = 0;
        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "\tthisHexStr=%s", __s2);
        v24 = v258;
        if (v14 + 4 < v258)
        {
          while (cstdlib_strncmp((*(a1 + 952) + v14), __s2, 4uLL))
          {
            v25 = v14 + 1;
            v13 = v13 + utf8_determineUTF8CharLength(*(*(a1 + 960) + v13));
            v26 = v14++ + 5;
            if (v26 >= v258)
            {
              goto LABEL_22;
            }
          }
        }

        v25 = v14;
LABEL_22:
        v263 = v13;
        v14 = v25;
        if (cstdlib_strncmp((*(a1 + 952) + v25), __s2, 4uLL))
        {
          v228 = *(*a1 + 32);
          v229 = *(a1 + 952) + v25;
LABEL_315:
          v230 = "hex1(first 4 chars)";
LABEL_316:
          log_OutPublic(v228, "FE_WORDSEG", 61012, "%s%s%s%s%s%s", v230, v229);
LABEL_317:
          v226 = 0;
          *v235 = 1;
          return v226;
        }
      }

      v27 = v14;
      v28 = v14;
      do
      {
        v29 = ++v28;
        if (v24 <= v28)
        {
          break;
        }

        v30 = *(*(a1 + 952) + v28);
        if (v30 == 42)
        {
          break;
        }
      }

      while (v30 != 32);
      v31 = v28 - v14;
      v32 = v253;
      if (v31 > 63)
      {
        v227 = *(*a1 + 32);
        goto LABEL_305;
      }

      v33 = *(a1 + 1200);
      if (v31 < 1)
      {
        v40 = 0;
        v36 = v266;
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v36 = v266;
        v37 = v263;
        do
        {
          if (v33)
          {
            v38 = *(*(a1 + 952) + v27);
          }

          else
          {
            v38 = *(*(a1 + 960) + v37);
          }

          if (v38 != 126)
          {
            v39 = v34++;
            __s1[v39] = v38;
          }

          ++v35;
          ++v37;
          ++v27;
        }

        while (v31 > v35);
        v40 = v34;
      }

      __s1[v40] = 0;
      v41 = v12;
      v254 = v20;
      if (v33)
      {
        while (v41 + 1 < v253 && cstdlib_strncmp((*(a1 + 984) + v12), __dst, v36))
        {
          v12 += utf8_determineUTF8CharLength(*(*(a1 + 984) + v12));
          v41 = v12;
        }

        v42 = v12;
        v43 = (*(a1 + 984) + v12);
        v44 = __dst;
        v45 = v36;
      }

      else
      {
        if (v12 + 4 < v253)
        {
          v46 = v12;
          while (cstdlib_strncmp((*(a1 + 984) + v46), __s2, 4uLL))
          {
            v12 = v46 + 1;
            v11 = v11 + utf8_determineUTF8CharLength(*(*(a1 + 992) + v11));
            v47 = v46++ + 5;
            if (v47 >= v253)
            {
              goto LABEL_49;
            }
          }

          v12 = v46;
        }

LABEL_49:
        v42 = v12;
        v43 = (*(a1 + 984) + v12);
        v44 = __s2;
        v45 = 4;
      }

      if (cstdlib_strncmp(v43, v44, v45))
      {
        v228 = *(*a1 + 32);
        v229 = *(a1 + 984) + v42;
        goto LABEL_315;
      }

      if (cstdlib_strncmp("d700", __s2, 4uLL) && cstdlib_strncmp("0aff", __s2, 4uLL))
      {
        v48 = v12;
        if (v253 <= v12)
        {
          v49 = v12;
        }

        else
        {
          v49 = v12;
          do
          {
            v50 = *(*(a1 + 984) + v49);
            if (v50 == 32)
            {
              break;
            }

            if (v50 == 42)
            {
              break;
            }

            ++v49;
          }

          while (v253 > v49);
        }
      }

      else
      {
        v49 = v12 + 4;
        v48 = v12;
      }

      v51 = v49 - v48;
      if (v51 > 63)
      {
        v227 = *(*a1 + 32);
        goto LABEL_305;
      }

      if (v51 < 1)
      {
        v52 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        v54 = *(a1 + 1200);
        v55 = v11;
        do
        {
          if (v54)
          {
            v56 = *(*(a1 + 984) + v48);
          }

          else
          {
            v56 = *(*(a1 + 992) + v55);
          }

          if (v56 != 32 && v56 != 126)
          {
            __s[v52++] = v56;
          }

          ++v53;
          ++v55;
          ++v48;
        }

        while (v51 > v53);
      }

      __s[v52] = 0;
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "processing words IN=_%s_ OUT=_%s_", __s1, __s);
      if (cstdlib_strcmp(__s1, __s))
      {
        if (*(a1 + 1200))
        {
          v231 = *(*a1 + 32);
LABEL_313:
          log_OutPublic(v231, "FE_WORDSEG", 61002, "%s%s%s%s");
          goto LABEL_317;
        }

        v57 = cstdlib_strlen(__s);
        v58 = cstdlib_strlen(__s1);
        v272 = 0;
        if (!wordSeg_GetOrthPinyinWords(a1, v52, __s, &v272))
        {
          v231 = *(*a1 + 32);
          goto LABEL_313;
        }

        v59 = v57 - v58;
        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "updating pinyin from %s to %s", __s1, __s);
        v60 = cstdlib_strlen(*(a1 + 1016));
        v61 = cstdlib_strlen(__s1);
        v242 = cstdlib_strlen(__s);
        v62 = v59;
        v237 = v61;
        v239 = cstdlib_strlen(*(a1 + 1000));
        v240 = v59;
        if (v59 < 1)
        {
          if (v59 < 0)
          {
            v67 = v260;
            v72 = v260 - v59;
            if (v260 - v62 > v60)
            {
              log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61005, "%s%d%s%d%s%d", "incorrect position detected : pos", v260);
LABEL_310:
              v226 = 2359304192;
LABEL_311:
              log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61010, 0);
              return v226;
            }

            cstdlib_memmove((*v251 + v260), (*v251 + v260 - v62), (v60 - (v260 - v62)));
            v73 = v60 + v62;
            *(*v251 + v73) = 0;
            v9 = v238;
            cstdlib_memmove((*v249 + v260), (*v249 + v72), (v60 - v72));
            v70 = v260;
            *(*v249 + v73) = 0;
          }

          else
          {
            v70 = v260;
            v67 = v260;
          }

          v71 = (a1 + 1016);
        }

        else
        {
          v63 = *(a1 + 1024);
          if (v60 + v59 > v63)
          {
            if (v59 <= 0x20)
            {
              v64 = 32;
            }

            else
            {
              v64 = v59;
            }

            v65 = v63 + v64;
            MrkMemory = wordSeg_ReallocCharStr(a1, v251, (v63 + v64));
            if ((MrkMemory & 0x80000000) != 0 || (MrkMemory = wordSeg_ReallocCharStr(a1, v249, v65), (MrkMemory & 0x80000000) != 0))
            {
LABEL_301:
              v226 = MrkMemory;
              goto LABEL_311;
            }

            *(a1 + 1024) = v65;
          }

          v67 = v260;
          v68 = v60 + v59;
          __len = v59 + v260;
          v69 = v60 - v260;
          cstdlib_memmove((*v251 + __len), (*v251 + v260), v69);
          *(*v251 + v68) = 0;
          cstdlib_memmove((*v249 + __len), (*v249 + v260), v69);
          v70 = v260;
          *(*v249 + v68) = 0;
          v71 = (a1 + 1016);
          v9 = v238;
        }

        v74 = v242;
        cstdlib_memmove((*v71 + v70), __s, v242);
        v32 = v253;
        if (v242)
        {
          v75 = v67;
          LODWORD(v76) = v239 - v67;
          if (v239 >= v67)
          {
            v76 = v76;
          }

          else
          {
            v76 = 0;
          }

          do
          {
            if (!v76)
            {
              break;
            }

            *(*v249 + v75++) = 88;
            --v76;
            --v74;
          }

          while (v74);
        }

        v77 = *(a1 + 1040);
        if (v77 >= 2)
        {
          v78 = *(a1 + 1032);
          v79 = *(v78 + 12);
          v80 = v77 - 1;
          v81 = (v78 + 48);
          do
          {
            if (*(v81 - 4) == 1)
            {
              v82 = *(v81 - 1);
              v83 = v82 - v79;
              if (v82 - v79 == v67)
              {
                *v81 = v240 + v237;
                v83 = v67;
              }
            }

            else
            {
              v82 = *(v81 - 1);
              v83 = v82 - v79;
            }

            if (v83 >= v67 + v237)
            {
              *(v81 - 1) = v82 + v240;
            }

            v81 += 8;
            --v80;
          }

          while (v80);
        }

        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "AFTER pinyin rule      =%s", *(a1 + 1016));
      }

      if (*(a1 + 1200))
      {
        v84 = v12 + v266;
        for (i = v260; v32 > v84; v84 += utf8_determineUTF8CharLength(0x7Eu))
        {
          if (*(*(a1 + 984) + v84) != 126)
          {
            break;
          }
        }

        v17 = v11;
      }

      else
      {
        v84 = v12 + 4;
        v17 = (v11 + 4);
        for (i = v260; v32 > v84; v17 = v17 + utf8_determineUTF8CharLength(*(*(a1 + 992) + v17)))
        {
          if (*(*(a1 + 984) + v84) != 126)
          {
            break;
          }

          ++v84;
        }
      }

      v86 = cstdlib_strlen(__s);
      v87 = i + v86;
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "posInSentStr=%d", (i + v86));
      if (v258 > v29)
      {
        v88 = *(*(a1 + 952) + v29);
        v89 = *(*(a1 + 984) + v84);
        if (v88 != v89)
        {
          break;
        }
      }

      v13 = v263;
LABEL_154:
      v260 = v87;
      if (*(a1 + 1200))
      {
        v125 = utf8_determineUTF8CharLength(*(*(a1 + 952) + v14));
        v126 = utf8_determineUTF8CharLength(*(*(a1 + 984) + v84));
      }

      else
      {
        v13 = v13 + utf8_determineUTF8CharLength(*(*(a1 + 960) + v13));
        v17 = v17 + utf8_determineUTF8CharLength(*(*(a1 + 992) + v17));
        v125 = 1;
        v126 = 1;
      }

      v12 = v126 + v84;
      v14 += v125;
      v20 = v254 + 1;
      v11 = v17;
      if (v254 + 1 >= v244)
      {
        goto LABEL_6;
      }
    }

    v261 = i + v86;
    v90 = (i + v86);
    if (v88 == 42 && v89 == 32)
    {
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "insert boundary at position %d", (i + v86));
      v91 = cstdlib_strlen(*(a1 + 1016));
      v92 = Utf8_LengthInUtf8chars(*(a1 + 1016), (i + v86));
      v93 = Utf8_LengthInUtf8chars(*(a1 + 1016), v91);
      v94 = *(a1 + 1024);
      if (v91 >= v94)
      {
        MrkMemory = wordSeg_ReallocCharStr(a1, v251, (v94 + 32));
        if ((MrkMemory & 0x80000000) != 0)
        {
          goto LABEL_301;
        }

        MrkMemory = wordSeg_ReallocCharStr(a1, v249, (*(a1 + 1024) + 32));
        if ((MrkMemory & 0x80000000) != 0)
        {
          goto LABEL_301;
        }

        *(a1 + 1024) += 32;
      }

      cstdlib_memmove((*(a1 + 1016) + v87 + 1), (*(a1 + 1016) + v87), (v91 - v90));
      *(*(a1 + 1016) + v87) = 32;
      *(*(a1 + 1016) + v91 + 1) = 0;
      v95 = v92 + 1;
      v96 = v93 - v92;
      cstdlib_memmove((*(a1 + 1000) + v95), (*(a1 + 1000) + v92), v96);
      *(*(a1 + 1000) + v92) = 88;
      v97 = v93 + 1;
      *(*(a1 + 1000) + v97) = 0;
      cstdlib_memmove((*(a1 + 1008) + v95), (*(a1 + 1008) + v92), v96);
      *(*(a1 + 1008) + v92) = 32;
      *(*(a1 + 1008) + v97) = 0;
      v98 = *(a1 + 1040);
      if (v98 >= 2)
      {
        v99 = *(a1 + 1032);
        v100 = *(v99 + 12);
        v101 = v98 - 1;
        v102 = (v99 + 44);
        v9 = v238;
        v103 = v261;
        v13 = v263;
        do
        {
          if (*v102 - v100 >= v90)
          {
            ++*v102;
          }

          v102 += 8;
          --v101;
        }

        while (v101);
        v104 = 1;
        v105 = "AFTER insert rule      =%s posInSentStr=%d";
        goto LABEL_153;
      }

      v104 = 1;
      v105 = "AFTER insert rule      =%s posInSentStr=%d";
    }

    else
    {
      v106 = *(*a1 + 32);
      if (v88 != 32 || v89 != 42)
      {
        log_OutPublic(v106, "FE_WORDSEG", 61010, 0, v233, v234);
        goto LABEL_317;
      }

      log_OutText(v106, "FE_WORDSEG", 5, 0, "delete boundary at position %d", v90);
      v107 = cstdlib_strlen(*v251);
      if (!(i + v86) || (i + v86) == v107)
      {
        goto LABEL_319;
      }

      v108 = (i + v86 - 1);
      v109 = i + v86 - 1;
      do
      {
        v110 = v108;
        if (!v109)
        {
          break;
        }

        v111 = *(*v251 + v109);
        --v108;
        --v109;
      }

      while (v111 != 32);
      v112 = v107;
      if ((i + v86 + 1) > v107)
      {
        v112 = i + v86 + 1;
      }

      v113 = i + v86;
      while (++v113 < v107)
      {
        if (*(*v251 + v113) == 32)
        {
          goto LABEL_144;
        }
      }

      v113 = v112;
LABEL_144:
      if (v113 - v110 >= 65)
      {
LABEL_319:
        v227 = *(*a1 + 32);
LABEL_305:
        log_OutPublic(v227, "FE_WORDSEG", 61011, "%s%d%s%d");
        goto LABEL_317;
      }

      v114 = cstdlib_strlen(*(a1 + 1016));
      v115 = Utf8_LengthInUtf8chars(*(a1 + 1016), v90);
      v116 = Utf8_LengthInUtf8chars(*(a1 + 1016), v114);
      cstdlib_memmove((*(a1 + 1016) + v261), (*(a1 + 1016) + v90 + 1), (v114 - (v90 + 1)));
      *(*(a1 + 1016) + v114 - 1) = 0;
      v117 = v115 + 1;
      v118 = v116 - v117;
      cstdlib_memmove((*(a1 + 1000) + v115), (*(a1 + 1000) + v117), v118);
      *(*(a1 + 1000) + v115) = 88;
      v119 = v116 - 1;
      *(*(a1 + 1000) + v119) = 0;
      cstdlib_memmove((*(a1 + 1008) + v115), (*(a1 + 1008) + v117), v118);
      *(*(a1 + 1008) + v115) = 32;
      *(*(a1 + 1008) + v119) = 0;
      v120 = *(a1 + 1040);
      if (v120 >= 2)
      {
        v121 = *(a1 + 1032);
        v122 = *(v121 + 12);
        v123 = v120 - 1;
        v124 = (v121 + 44);
        v9 = v238;
        v103 = v261;
        v13 = v263;
        do
        {
          if (*v124 - v122 >= v90)
          {
            --*v124;
          }

          v124 += 8;
          --v123;
        }

        while (v123);
        v104 = 0xFFFF;
        v105 = "AFTER delete rule      =%s posInSentStr=%d";
        goto LABEL_153;
      }

      v104 = 0xFFFF;
      v105 = "AFTER delete rule      =%s posInSentStr=%d";
    }

    v9 = v238;
    v103 = v261;
    v13 = v263;
LABEL_153:
    v87 = v103 + v104;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, v105, *(a1 + 1016), (v103 + v104));
    goto LABEL_154;
  }

LABEL_159:
  v127 = cstdlib_strlen(*(a1 + 1016));
  v128 = cstdlib_strlen(*(a1 + 1000));
  v129 = v127;
  v130 = v128;
  if (!v128)
  {
    goto LABEL_300;
  }

  v131 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v252 = 0;
  LODWORD(v135) = 0;
  if (v129 >= v128)
  {
    v136 = v128;
  }

  else
  {
    v136 = v129;
  }

  v264 = 0;
  v245 = v129;
  v243 = v128;
  v241 = v136;
  do
  {
    v137 = *(a1 + 1000);
    v138 = *(v137 + v133);
    if (v138 != 110 && v138 != 88 || v136 <= v133)
    {
      goto LABEL_190;
    }

    v139 = 0;
    v140 = v133;
    do
    {
      v141 = *(v137 + v140);
      if (v141 == 88)
      {
        v139 = 1;
      }

      else if (v141 == 32)
      {
        break;
      }

      ++v140;
    }

    while (v136 > v140);
    if (v139 != 1)
    {
LABEL_190:
      LODWORD(v140) = v133;
      goto LABEL_191;
    }

    v250 = v134;
    v142 = Utf8_LengthInBytes(*(a1 + 1016), v131);
    v247 = Utf8_LengthInBytes(*(a1 + 1016), v140);
    v143 = v247;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "processing modified region from %d to %d (last region processed %d,%d)", v142, v247, v264, v132);
    v144 = v142;
    if (v142 <= v132)
    {
      goto LABEL_210;
    }

    if (v132 >= v133)
    {
      v145 = 0;
    }

    else
    {
      v145 = 0;
      v146 = *(a1 + 1000);
      do
      {
        v147 = v132;
        v148 = *(v146 + v132);
        if ((v148 == 110 || v148 == 88) && v132 < v133)
        {
          while (1)
          {
            v149 = *(v146 + v147);
            if (v149 != 110 && v149 != 88)
            {
              break;
            }

            if (*(*(a1 + 1008) + v147) == 120)
            {
              v145 = (v145 + 1);
            }

            else
            {
              v145 = v145;
            }

            if (v133 == ++v147)
            {
              v132 = v133;
              goto LABEL_188;
            }
          }

          v132 = v147;
        }

LABEL_188:
        ++v132;
      }

      while (v132 < v133);
    }

    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "skipping %d pinyin words in region (%d,%d)", v145, v264, v142);
    v150 = v252;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "START curWordDef=%d curHexCount=%d", v135, v252);
    v151 = 0;
    if (v248 <= v135 || !v145)
    {
      goto LABEL_209;
    }

    v151 = 0;
    v152 = v135 + 1;
    v153 = (a2 + 16 + 72 * v135);
    v154 = v252;
    while (1)
    {
      if (!*v153)
      {
        ++v151;
        goto LABEL_204;
      }

      v155 = cstdlib_strlen(*v153) >> 2;
      if (v154)
      {
        v156 = v145 - v155 + v154;
        if (v156 < 0)
        {
          v154 = (v154 + v145);
          goto LABEL_208;
        }

        goto LABEL_203;
      }

      v156 = v145 - v155;
      if (v156 < 0)
      {
        break;
      }

LABEL_203:
      v154 = 0;
      LODWORD(v135) = v135 + 1;
      v145 = v156;
LABEL_204:
      if (v152 < v248)
      {
        ++v152;
        v153 += 9;
        if (v145)
        {
          continue;
        }
      }

      goto LABEL_208;
    }

    v154 = v145;
LABEL_208:
    v252 = v154;
    v150 = v154;
LABEL_209:
    LODWORD(v135) = v151 + v135;
    log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "END curWordDef=%d curHexCount=%d", v135, v150);
    v143 = v247;
    v144 = v142;
LABEL_210:
    v157 = *(a1 + 1040);
    if (v157 < 2)
    {
      goto LABEL_241;
    }

    v158 = 1;
    while (2)
    {
      v159 = *(a1 + 1032);
      v160 = v158;
      v161 = (v159 + 32 * v158);
      while (2)
      {
        v162 = v161[3];
        v163 = (v162 - *(v159 + 12));
        if (v163 > v143)
        {
          if (*v161 == 1 || *v161 == 37)
          {
            goto LABEL_241;
          }

          goto LABEL_219;
        }

        if (v163 < v144 || *v161 != 37)
        {
LABEL_219:
          ++v160;
          v161 += 8;
          if (v160 >= v157)
          {
            goto LABEL_241;
          }

          continue;
        }

        break;
      }

      if (v157 < 2u)
      {
        v166 = v144;
        LOWORD(v157) = 1;
      }

      else
      {
        v164 = (v159 + 44);
        v165 = 1;
        while (*(v164 - 3) != 1 || *v164 != v162)
        {
          ++v165;
          v164 += 8;
          if (v157 == v165)
          {
            v166 = v144;
            goto LABEL_229;
          }
        }

        v166 = v144;
        LOWORD(v157) = v165;
      }

LABEL_229:
      v167 = v157;
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "invalidate (WORD and HEX) markers %d and %d", v160, v157);
      if (v167 <= v160)
      {
        v168 = v160;
      }

      else
      {
        v168 = v167;
      }

      if (v167 >= v160)
      {
        v169 = v160;
      }

      else
      {
        v169 = v167;
      }

      v170 = (v168 + 1);
      v171 = *(a1 + 1040);
      if (v171 > v170)
      {
        cstdlib_memmove((*(a1 + 1032) + 32 * v168), (*(a1 + 1032) + 32 * v170), 32 * (v171 - v170));
        LOWORD(v171) = *(a1 + 1040);
      }

      v172 = v171 - 1;
      *(a1 + 1040) = v171 - 1;
      v173 = (v169 + 1);
      v174 = (v171 - 1);
      v175 = v174 >= v173;
      v176 = v174 - v173;
      if (v176 != 0 && v175)
      {
        cstdlib_memmove((*(a1 + 1032) + 32 * v169), (*(a1 + 1032) + 32 * v173), 32 * v176);
        v172 = *(a1 + 1040);
      }

      LOWORD(v157) = v172 - 1;
      *(a1 + 1040) = v157;
      v158 = v169 - 1;
      v144 = v166;
      if ((v169 - 1) < v157)
      {
        continue;
      }

      break;
    }

LABEL_241:
    if (v143 <= v144)
    {
      goto LABEL_299;
    }

    while (2)
    {
      v177 = v142;
      if (v143 <= v142)
      {
        v180 = v142;
      }

      else
      {
        v178 = *(a1 + 1016);
        v179 = v142;
        v180 = v142;
        if (*(v178 + v142) == 32)
        {
          v181 = v178 + 1;
          while (v143 > v179 + 1)
          {
            v182 = *(v181 + v179++);
            if (v182 != 32)
            {
              v180 = v179;
              v177 = v179;
              goto LABEL_250;
            }
          }

          v180 = v247;
          v177 = v143;
        }
      }

LABEL_250:
      LODWORD(v142) = v180;
      do
      {
        v142 = (v142 + 1);
      }

      while (v143 > v142 && *(*(a1 + 1016) + v142) != 32);
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "processing word from %d to %d", v177, v142);
      v272 = 0;
      v257 = v142 - v180;
      OrthPinyinWords = wordSeg_GetOrthPinyinWords(a1, (v142 - v180), *(a1 + 1016) + v180, &v272);
      if (!OrthPinyinWords)
      {
        log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61002, "%s%s");
        goto LABEL_310;
      }

      v184 = OrthPinyinWords;
      log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "got %d words", OrthPinyinWords);
      v185 = *(a1 + 1048);
      if (v185)
      {
        v186 = *(a1 + 1058);
        if (*(a1 + 1056) + 1 >= v186)
        {
          v187 = heap_Realloc(*(*a1 + 8), v185, 8 * v186 + 136);
          if (!v187)
          {
            goto LABEL_306;
          }

          *(a1 + 1048) = v187;
          v188 = *(a1 + 1058) + 16;
          goto LABEL_260;
        }
      }

      else
      {
        v189 = heap_Calloc(*(*a1 + 8), 1, 136);
        *(a1 + 1048) = v189;
        if (!v189)
        {
          goto LABEL_306;
        }

        v188 = 16;
LABEL_260:
        *(a1 + 1058) = v188;
      }

      v190 = heap_Calloc(*(*a1 + 8), 1, (4 * v184) | 1);
      if (!v190)
      {
LABEL_306:
        v226 = 2359304202;
        log_OutPublic(*(*a1 + 32), "FE_WORDSEG", 61000, 0);
        goto LABEL_311;
      }

      v255 = v177;
      v250 = v180;
      v191 = *(a1 + 1056);
      *(*(a1 + 1048) + 8 * v191) = v190;
      *(a1 + 1056) = v191 + 1;
      if (v248 <= v135)
      {
        v265 = 0;
        goto LABEL_282;
      }

      v262 = v190;
      v265 = 0;
      v259 = 0;
      v192 = 0;
      v193 = 0;
      v135 = v135;
      v194 = v252;
      while (2)
      {
        v195 = a2 + 72 * v135;
        v198 = *(v195 + 16);
        v197 = (v195 + 16);
        v196 = v198;
        if (!v198)
        {
LABEL_278:
          if (++v135 >= v248 || (v194 = 0, v192 = v193, v184 <= v193))
          {
            v252 = 0;
            v177 = v255;
            goto LABEL_282;
          }

          continue;
        }

        break;
      }

      v199 = cstdlib_strlen(v196);
      if (!v265)
      {
        if (v259)
        {
          v265 = 0;
        }

        else
        {
          v200 = a2 + 72 * v135;
          v259 = *(v200 + 68);
          v265 = *(v200 + 64) + 2 * v194;
        }
      }

      v201 = (v199 >> 2) - v194;
      v202 = v184 - v192;
      if (v201 < v202)
      {
        v203 = 4 * ((v199 >> 2) - v194);
        if (v203)
        {
          v204 = (*v197 + (4 * v194));
          v205 = (v262 + (4 * v192));
          v206 = 1 - v203;
          while (1)
          {
            v207 = *v204;
            *v205 = v207;
            if (!v207)
            {
              break;
            }

            ++v205;
            ++v204;
            if (++v206 == 1)
            {
              goto LABEL_277;
            }
          }

          if (v206)
          {
            bzero(v205, -v206);
          }
        }

LABEL_277:
        v193 += v201;
        goto LABEL_278;
      }

      v221 = (v262 + (4 * v192));
      v222 = (*(a2 + 72 * v135 + 16) + (4 * v194));
      v223 = 1 - 4 * v202;
      v177 = v255;
      while (1)
      {
        v224 = *v222;
        *v221 = v224;
        if (!v224)
        {
          break;
        }

        ++v221;
        ++v222;
        if (++v223 == 1)
        {
          goto LABEL_296;
        }
      }

      if (v223)
      {
        v225 = v202;
        bzero(v221, -v223);
        v202 = v225;
      }

LABEL_296:
      if (v201 == v202)
      {
        v252 = 0;
        LODWORD(v135) = v135 + 1;
      }

      else
      {
        v252 = v202;
      }

LABEL_282:
      v208 = *(*(a1 + 1032) + 12) + v177;
      MrkInsertPos = wordSeg_GetMrkInsertPos(a1, v208, v208 + v257);
      if (*(a1 + 1188) == 1)
      {
        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "add WORD marker at index %d (spos=%d, epos=%d)", MrkInsertPos, v208, v208 + v257);
      }

      MrkMemory = wordSeg_GetMrkMemory(a1, MrkInsertPos);
      if ((MrkMemory & 0x80000000) != 0)
      {
        goto LABEL_301;
      }

      v210 = v177;
      v211 = 4 * v184;
      v212 = *(a1 + 1032);
      v213 = (v212 + 32 * MrkInsertPos);
      v213[3] = *(v212 + 12) + v210;
      v213[4] = v257;
      *v213 = 1;
      v214 = (4 * v184) >> 1;
      v213[1] = v265;
      v213[2] = v214;
      v215 = *(v212 + 12) + v210;
      v216 = wordSeg_GetMrkInsertPos(a1, v215, v215 + v211);
      if (*(a1 + 1188) == 1)
      {
        log_OutText(*(*a1 + 32), "FE_WORDSEG", 5, 0, "add HEX marker at index %d (spos=%d, epos=%d)", v216, v215, v215 + v257);
      }

      MrkMemory = wordSeg_GetMrkMemory(a1, v216);
      if ((MrkMemory & 0x80000000) != 0)
      {
        goto LABEL_301;
      }

      v217 = *(a1 + 1032) + 32 * v216;
      *v217 = 37;
      *(v217 + 24) = *(*(a1 + 1048) + 8 * *(a1 + 1056) - 8);
      v218 = *(a1 + 1032);
      v219 = *(v218 + 12) + v255;
      v220 = (v218 + 32 * v216);
      v220[3] = v219;
      v220[4] = 2 * v211;
      v220[1] = v265;
      v220[2] = v214;
      v143 = v247;
      if (v247 > v142)
      {
        continue;
      }

      break;
    }

LABEL_299:
    v134 = v250;
    v264 = Utf8_LengthInUtf8chars(*(a1 + 1016), v250);
    v132 = v140;
    v129 = v245;
    v130 = v243;
    v136 = v241;
LABEL_191:
    v133 = v140 + 1;
    v131 = (v140 + 1);
  }

  while (v130 > v131);
LABEL_300:
  v226 = 0;
  *(*(a1 + 1032) + 16) = v129;
  return v226;
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
      if (!cstdlib_strchr("|-=*()&%^@#$", v13))
      {
        return 0;
      }
    }
  }

  return v9;
}

uint64_t wordSeg_GrowDepesLayers(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned int a4, const char *a5, char *a6, char *a7, char *a8, unsigned __int16 a9, unsigned __int16 a10, int a11)
{
  v11 = a7;
  if (!*(a1 + 1200))
  {
    v37 = (a1 + 960);
    v38 = cstdlib_strlen(*(a1 + 960));
    v39 = (a1 + 952);
    v76 = cstdlib_strlen(*(a1 + 952));
    v73 = a2;
    v40 = *a2;
    v41 = v38 + a9;
    if (v41 > v40)
    {
      if (a9 <= 0x20u)
      {
        v42 = 32;
      }

      else
      {
        v42 = a9;
      }

      __n = v40 + v42;
      v43 = (v40 + v42);
      result = wordSeg_ReallocCharStr(a1, (a1 + 952), v43);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v44 = (v43 - v38);
      cstdlib_memset((*(a1 + 952) + v76), 0, v44);
      result = wordSeg_ReallocCharStr(a1, (a1 + 960), v43);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      cstdlib_memset((*(a1 + 960) + v38), 0, v44);
      result = wordSeg_ReallocCharStr(a1, (a1 + 968), __n);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      cstdlib_memset((*(a1 + 968) + v76), 0, v44);
      result = wordSeg_ReallocCharStr(a1, (a1 + 976), __n);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      cstdlib_memset((*(a1 + 976) + v76), 0, v44);
      *v73 = __n;
      v11 = a7;
    }

    if (a11 == 1)
    {
      cstdlib_strncat(*(a1 + 952), (*(a1 + 1000) + a4), a10);
      *(*(a1 + 952) + v76 + a10) = 0;
      cstdlib_strncat(*(a1 + 960), (*(a1 + 1016) + a3), a9);
      *(*(a1 + 960) + v41) = 0;
      if (a10)
      {
        for (i = 0; i < a10; ++i)
        {
          cstdlib_strcat(*(a1 + 968), " ");
        }

        for (j = 0; j < a10; ++j)
        {
          cstdlib_strcat(*(a1 + 976), " ");
        }
      }
    }

    else
    {
      v47 = v11;
      v48 = cstdlib_strlen(a5);
      v49 = cstdlib_strlen(a6);
      v50 = cstdlib_strlen(v47);
      v81 = cstdlib_strlen(a8);
      cstdlib_strcat(*v39, a5);
      v51 = a10 - v48;
      if (v51 >= 1)
      {
        v52 = 0;
        do
        {
          cstdlib_strcat(*v39, "~");
          ++v52;
        }

        while (v51 > v52);
      }

      cstdlib_strcat(*v37, a6);
      v53 = a10 - v49;
      if (v53 >= 1)
      {
        v54 = 0;
        do
        {
          cstdlib_strcat(*v37, "~");
          ++v54;
        }

        while (v53 > v54);
      }

      cstdlib_strcat(*(a1 + 968), a7);
      v55 = a10 - v50;
      if (v55 >= 1)
      {
        v56 = 0;
        do
        {
          cstdlib_strcat(*(a1 + 968), "~");
          ++v56;
        }

        while (v55 > v56);
      }

      cstdlib_strcat(*(a1 + 976), a8);
      v57 = a10 - v81;
      if (v57 >= 1)
      {
        v58 = 0;
        do
        {
          cstdlib_strcat(*(a1 + 976), "~");
          ++v58;
        }

        while (v57 > v58);
      }
    }

    return 0;
  }

  v16 = (a1 + 952);
  v17 = cstdlib_strlen(*(a1 + 952));
  v75 = (a1 + 960);
  v18 = cstdlib_strlen(*(a1 + 960));
  v72 = (a1 + 968);
  v19 = cstdlib_strlen(*(a1 + 968));
  v20 = cstdlib_strlen(a6);
  v21 = v11;
  v22 = v20;
  v23 = cstdlib_strlen(v21);
  v24 = cstdlib_strlen(a8);
  v25 = *a2;
  if (a9 + v17 + v22 < v25 && a9 + v18 + v23 < v25 && a9 + v19 + v24 < v25)
  {
LABEL_21:
    if (a11 == 1)
    {
      cstdlib_strncat(*(a1 + 952), (*(a1 + 1000) + a4), a10);
      *(*(a1 + 952) + v17 + a10) = 0;
      if (a10)
      {
        for (k = 0; k < a10; ++k)
        {
          cstdlib_strcat(*v75, " ");
        }

        for (m = 0; m < a10; ++m)
        {
          cstdlib_strcat(*v72, " ");
        }
      }
    }

    else
    {
      v59 = cstdlib_strlen(a6);
      v60 = Utf8_LengthInUtf8chars(a6, v59);
      v61 = cstdlib_strlen(a7);
      v62 = Utf8_LengthInUtf8chars(a7, v61);
      v63 = cstdlib_strlen(a8);
      v64 = Utf8_LengthInUtf8chars(a8, v63);
      cstdlib_strcat(*v16, a6);
      v65 = a10 - v60;
      if (v65 >= 1)
      {
        v66 = 0;
        do
        {
          cstdlib_strcat(*v16, "~");
          ++v66;
        }

        while (v65 > v66);
      }

      cstdlib_strcat(*v75, a7);
      v67 = a10 - v62;
      if (v67 >= 1)
      {
        v68 = 0;
        do
        {
          cstdlib_strcat(*v75, "~");
          ++v68;
        }

        while (v67 > v68);
      }

      cstdlib_strcat(*v72, a8);
      v69 = a10 - v64;
      if (v69 >= 1)
      {
        v70 = 0;
        do
        {
          cstdlib_strcat(*v72, "~");
          ++v70;
        }

        while (v69 > v70);
      }
    }

    return 0;
  }

  v28 = v23;
  if (v22 > v23)
  {
    v28 = v22;
  }

  if (v28 <= v24)
  {
    v28 = v24;
  }

  v29 = v28 + a9;
  v30 = v25 + a9 + v28;
  v31 = v25 + 32;
  if (v29 <= 0x20)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  result = wordSeg_ReallocCharStr(a1, (a1 + 952), v32);
  if ((result & 0x80000000) == 0)
  {
    cstdlib_memset((*(a1 + 952) + v17), 0, v32 - v17);
    result = wordSeg_ReallocCharStr(a1, v75, v32);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_memset((*(a1 + 960) + v18), 0, v32 - v18);
      result = wordSeg_ReallocCharStr(a1, v72, v32);
      if ((result & 0x80000000) == 0)
      {
        cstdlib_memset(&(*v72)[v19], 0, v32 - v19);
        *a2 = v32;
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
    cstdlib_memmove((v5 + 32 * a2 + 32), (v5 + 32 * a2), 32 * (v4 - a2));
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
  v180 = *MEMORY[0x277D85DE8];
  v167 = 0;
  v168 = a8;
  v166 = 0;
  LogLevel = log_GetLogLevel(*(a1 + 32));
  if (a7)
  {
    v15 = 0;
    v16 = a7;
    v17 = (a6 + 8);
    do
    {
      v18 = *(v17 - 1);
      if (cstdlib_strcmp(*v17, "non"))
      {
        *v14 = 0;
      }

      v15 += cstdlib_strlen(v18);
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

  v155 = a2;
  v20 = 2586845194;
  v21 = heap_Calloc(*(v13 + 8), v19, 8);
  if (!v21)
  {
    return v20;
  }

  v22 = v21;
  v23 = heap_Calloc(*(v13 + 8), v19, 8);
  v24 = *(v13 + 8);
  v156 = v23;
  if (!v23)
  {
    v117 = v22;
LABEL_196:
    heap_Free(v24, v117);
    return v20;
  }

  v25 = heap_Calloc(v24, v19, 8);
  if (!v25)
  {
    heap_Free(*(v13 + 8), v22);
    v24 = *(v13 + 8);
    v117 = v156;
    goto LABEL_196;
  }

  v26 = v25;
  if (!a7)
  {
    goto LABEL_182;
  }

  v157 = v22;
  v27 = 0;
  v28 = 0;
  v150 = a7;
  v151 = a6;
  v153 = v13;
  v154 = v25;
  do
  {
    v152 = v27;
    v29 = (a6 + 40 * v27);
    v30 = *v29;
    if (cstdlib_strlen(*v29))
    {
      v31 = 0;
      v158 = 0;
      v32 = 0;
      do
      {
        v33 = 83;
        __s2 = 83;
        v178 = 0u;
        memset(v179, 0, sizeof(v179));
        v177 = 0u;
        *__s = 0u;
        v174 = 0u;
        memset(v175, 0, sizeof(v175));
        *__s1 = 0u;
        v173 = 0u;
        v34 = utf8_determineUTF8CharLength(v30[v31]);
        v35 = v34;
        if (cstdlib_strlen(*v29) != v34)
        {
          if (cstdlib_strlen(*v29) - v34 == v31)
          {
            v33 = 69;
          }

          else if (v32)
          {
            v33 = 77;
          }

          else
          {
            v33 = 66;
          }
        }

        v164 = v28;
        __s2 = v33;
        __c[0] = 0;
        v169 = 0;
        cstdlib_strncpy(&__c[1], &v30[v31], v34 + 1);
        __c[v34 + 1] = 0;
        v170 = 0;
        if (((*(a3 + 96))(a4, a5, "wpcrf", &__c[1], &v169, &v170, __c) & 0x80000000) == 0)
        {
          if (v170)
          {
            v36 = 0;
            v37 = (v156 + 8 * v28);
            while (1)
            {
              v38 = cstdlib_strchr(*(v169 + 8 * v36), __c[0]);
              if (v38)
              {
                break;
              }

              if (++v36 >= v170)
              {
                goto LABEL_69;
              }
            }

            v41 = v38;
            v42 = *(v169 + 8 * v36);
            v43 = v38 - v42;
            if (v38 == v42 && v43 < 1)
            {
              v45 = &__c[1];
            }

            else
            {
              if (v43 < 0)
              {
                LODWORD(v43) = v42 - v38;
              }

              v45 = __s1;
              cstdlib_strncat(__s1, v42, v43);
            }

            cstdlib_strcat(__s, v45);
            v46 = v41 + 1;
            v47 = cstdlib_strchr(v41 + 1, __c[0]);
            if (v47)
            {
              v48 = v47;
              v49 = 0;
              do
              {
                cstdlib_strcat(__s, " ");
                v50 = v48 - v46;
                if (v48 - v46 < 0)
                {
                  v50 = v46 - v48;
                }

                v51 = v50;
                cstdlib_strncat(__s, v46, v50);
                if (!v49)
                {
                  v52 = v51 == 1 && *v46 == 49;
                  *v37 = v52;
                }

                v46 = v48 + 1;
                v48 = cstdlib_strchr(v48 + 1, __c[0]);
                --v49;
              }

              while (v48);
            }

LABEL_68:
            cstdlib_strcat(__s, " ");
            cstdlib_strncat(__s, &__s2, 1uLL);
            v13 = v153;
            v26 = v154;
            goto LABEL_69;
          }

          if (((*(a3 + 96))(a4, a5, "wpcrf", "NULL", &v169, &v170, __c) & 0x80000000) == 0 && v170)
          {
            v39 = 0;
            while (1)
            {
              v40 = cstdlib_strchr(*(v169 + 8 * v39), __c[0]);
              if (v40)
              {
                break;
              }

              if (++v39 >= v170)
              {
                goto LABEL_69;
              }
            }

            v53 = v40;
            v54 = *(v169 + 8 * v39);
            v55 = v40 - v54;
            if (v40 == v54 && v55 < 1)
            {
              v57 = &__c[1];
            }

            else
            {
              if (v55 < 0)
              {
                LODWORD(v55) = v54 - v40;
              }

              v57 = __s1;
              cstdlib_strncat(__s1, v54, v55);
            }

            cstdlib_strcat(__s, v57);
            v58 = v53 + 1;
            v59 = cstdlib_strchr(v58, __c[0]);
            if (v59)
            {
              v60 = v59;
              do
              {
                cstdlib_strcat(__s, " ");
                v61 = v60 - v58;
                if (v60 - v58 < 0)
                {
                  v61 = v58 - v60;
                }

                cstdlib_strncat(__s, v58, v61);
                v58 = v60 + 1;
                v60 = cstdlib_strchr(v60 + 1, __c[0]);
              }

              while (v60);
            }

            goto LABEL_68;
          }
        }

LABEL_69:
        if (LogLevel >= 5)
        {
          log_OutText(*(v13 + 32), "FE_PW", 5, 0, "[PWCRF] Feat: %s", __s);
        }

        v62 = heap_Calloc(*(v13 + 8), 1, 69);
        v28 = v164;
        *(v26 + 8 * v164) = v62;
        if (!v62)
        {
LABEL_175:
          v20 = 2584748042;
          v22 = v157;
          goto LABEL_176;
        }

        if (!cstdlib_strlen(__s1))
        {
          cstdlib_strncpy(*(v26 + 8 * v164), &v30[v31], v35);
          goto LABEL_76;
        }

        if (cstdlib_strcmp(__s1, "NULL"))
        {
          cstdlib_strcpy(*(v26 + 8 * v164), __s1);
LABEL_76:
          v63 = *(v13 + 8);
          v64 = cstdlib_strlen(__s);
          v65 = heap_Calloc(v63, 1, v64 + 1);
          v157[v164] = v65;
          if (!v65)
          {
            goto LABEL_175;
          }

          cstdlib_strcpy(v65, __s);
          if (v158)
          {
            if (__s2 == 69)
            {
              v66 = 83;
            }

            else
            {
              v66 = 66;
            }

            v67 = v157[v164];
            v67[cstdlib_strlen(v67) - 1] = v66;
          }

          v158 = 0;
          v28 = v164 + 1;
          goto LABEL_93;
        }

        if (__s2 == 69 && v164)
        {
          v68 = v157[v164 - 1];
          if (v68[cstdlib_strlen(v68) - 1] == 66)
          {
            v69 = 83;
          }

          else
          {
            v69 = 69;
          }

          v70 = v157[v164 - 1];
          v70[cstdlib_strlen(v70) - 1] = v69;
          v28 = v164;
        }

        else
        {
          v71 = v158;
          if (__s2 == 66)
          {
            v71 = 1;
          }

          v158 = v71;
        }

        heap_Free(*(v13 + 8), *(v26 + 8 * v28));
        *(v26 + 8 * v28) = 0;
LABEL_93:
        v32 += v35;
        v31 = v32;
      }

      while (cstdlib_strlen(*v29) > v32);
    }

    a6 = v151;
    v27 = v152 + 1;
  }

  while (v152 + 1 != v150);
  v22 = v157;
  if (!v28)
  {
LABEL_182:
    v118 = 0;
    v20 = 2584748040;
    a9 = 0;
    v74 = v167;
    v121 = 1;
    LODWORD(v73) = v166;
    goto LABEL_184;
  }

  v164 = v28;
  v72 = crf_Process(v155, v157, v28, &v167, &v166);
  v73 = v166;
  v74 = v167;
  if (!v166)
  {
    v20 = v72;
    goto LABEL_177;
  }

  v75 = 1;
  v76 = v167;
  v77 = v156;
  v78 = v166;
  do
  {
    v79 = *v77;
    v77 += 2;
    if (!v79)
    {
      goto LABEL_115;
    }

    if (v75 == 1)
    {
      if (v73 != 1)
      {
        **v74 = 66;
        v80 = *(v74 + 8);
        v81 = *v80;
        if (v81 == 83)
        {
          *v80 = 69;
        }

        else if (v81 == 66)
        {
          *v80 = 77;
        }
      }

      goto LABEL_115;
    }

    **v76 = 69;
    v82 = *(v76 - 8);
    v83 = *v82;
    if (v83 == 83)
    {
      v84 = 66;
    }

    else
    {
      if (v83 != 69)
      {
        goto LABEL_109;
      }

      v84 = 77;
    }

    *v82 = v84;
LABEL_109:
    if (v75 < v73)
    {
      v85 = *(v76 + 8);
      v86 = *v85;
      if (v86 == 69)
      {
        *v85 = 83;
      }

      else if (v86 == 77)
      {
        *v85 = 66;
      }
    }

LABEL_115:
    ++v75;
    v76 += 8;
    --v78;
  }

  while (v78);
  v87 = (v74 + 8);
  v88 = v73;
  do
  {
    v89 = *(v87 - 1);
    v90 = *v89;
    if (v88 == 1)
    {
      if (v90 == 77)
      {
        LOBYTE(v91) = 69;
      }

      else
      {
        if (v90 != 66)
        {
          break;
        }

        LOBYTE(v91) = 83;
      }

      goto LABEL_135;
    }

    if (*v89 <= 0x4Cu)
    {
      if (v90 != 66)
      {
        if (v90 == 69)
        {
          v91 = **v87 | 8;
          if (v91 == 77)
          {
            goto LABEL_135;
          }
        }

        goto LABEL_136;
      }

      v92 = **v87;
      LOBYTE(v91) = 83;
      goto LABEL_133;
    }

    if (v90 == 77)
    {
      v92 = **v87;
      LOBYTE(v91) = 69;
LABEL_133:
      if (v92 == 66 || v92 == 83)
      {
        goto LABEL_135;
      }

      goto LABEL_136;
    }

    if (v90 == 83 && (**v87 | 8) == 0x4D)
    {
      LOBYTE(v91) = 66;
LABEL_135:
      *v89 = v91;
    }

LABEL_136:
    ++v87;
    --v88;
  }

  while (v88);
  if (LogLevel >= 5)
  {
    do
    {
      v93 = *v74;
      v74 += 8;
      log_OutText(*(v13 + 32), "FE_PW", 5, 0, "[PWCRF] Predicted Tag: %s", v93);
      --v73;
    }

    while (v73);
  }

  v94 = v166;
  v95 = v167;
  if (!v166)
  {
    v26 = v154;
    goto LABEL_247;
  }

  v96 = 0;
  v97 = v166 - 1;
  v163 = v166 - 1;
  while (2)
  {
    v98 = cstdlib_strlen(v157[v96]) - 1;
    v99 = v95[v96];
    v100 = *v99;
    if (v100 == 83)
    {
      if (*(v157[v96] + v98) != 83)
      {
        *v99 = 66;
        v109 = v96 + 1;
        if (v109 < v94)
        {
          v110 = *(v157[v109] + cstdlib_strlen(v157[v109]) - 1);
          v111 = v96;
          while (v110 != 69)
          {
            *v95[v109] = 77;
            if (v97 == v109)
            {
              goto LABEL_157;
            }

            v110 = *(v157[v109 + 1] + cstdlib_strlen(v157[v109 + 1]) - 1);
            ++v111;
            ++v109;
          }

          *v95[v109] = 69;
          v112 = v111 + 2;
          if (v111 + 2 >= v94)
          {
            goto LABEL_170;
          }

          v113 = v95[v112];
          v114 = *v113;
          if (v114 == 77)
          {
            goto LABEL_167;
          }

          if (v114 != 69)
          {
            goto LABEL_170;
          }

          goto LABEL_168;
        }
      }

      goto LABEL_157;
    }

    if (v100 != 69 || (v101 = *(v157[v96] + v98), v101 == 69) || v101 == 83 || (*v99 = 77, v102 = v96 + 1, v96 + 1 >= v94))
    {
LABEL_157:
      ++v96;
      goto LABEL_158;
    }

    v103 = &v95[v102];
    v104 = -2 - v96;
    v105 = v163 - v96;
    v106 = &v157[v102];
    while (1)
    {
      v107 = (*v106)[cstdlib_strlen(*v106) - 1];
      if (v107 == 83 || v107 == 69)
      {
        break;
      }

      v108 = *v103++;
      *v108 = 77;
      --v104;
      ++v106;
      if (!--v105)
      {
        goto LABEL_157;
      }
    }

    **v103 = 69;
    v112 = -v104;
    if (-v104 >= v94)
    {
      goto LABEL_171;
    }

    v113 = v95[v112];
    v115 = *v113;
    if (v115 != 69)
    {
      if (v115 == 77)
      {
LABEL_167:
        v116 = 66;
        goto LABEL_169;
      }

      goto LABEL_170;
    }

LABEL_168:
    v116 = 83;
LABEL_169:
    *v113 = v116;
LABEL_170:
    if (v112 < 2)
    {
      v96 += v112;
    }

    else
    {
LABEL_171:
      v96 = v112;
    }

LABEL_158:
    if (v96 < v94)
    {
      continue;
    }

    break;
  }

  v94 = v166;
  v95 = v167;
  if (v166)
  {
    v126 = 0;
    v127 = 0;
    v26 = v154;
    while (2)
    {
      v128 = (v151 + 40 * v126);
      if (cstdlib_strcmp(v128[2], "latin"))
      {
        v22 = v157;
        do
        {
          v129 = v127 + 1;
          if (v127 + 1 >= v94)
          {
            break;
          }

          v130 = v157[v127];
          if (v130[cstdlib_strlen(v130) - 1] == 69)
          {
            break;
          }

          v131 = v157[v127++];
        }

        while (v131[cstdlib_strlen(v131) - 1] != 83);
        v127 = v129;
        goto LABEL_232;
      }

      v132 = Utf8_Utf8NbrOfSymbols(*v128);
      if (!v126)
      {
        goto LABEL_223;
      }

      if (!v127)
      {
        goto LABEL_223;
      }

      if (!cstdlib_strlen(v157[v127]))
      {
        goto LABEL_223;
      }

      v133 = v127 - 1;
      if (!cstdlib_strlen(v157[v127 - 1]))
      {
        goto LABEL_223;
      }

      if (!cstdlib_strcmp(*(v128 - 3), "latin"))
      {
        goto LABEL_223;
      }

      v134 = v157[v127];
      if (v134[cstdlib_strlen(v134) - 1] == 77)
      {
        goto LABEL_223;
      }

      v135 = v157[v133];
      if (v135[cstdlib_strlen(v135) - 1] == 77)
      {
        goto LABEL_223;
      }

      v136 = v95[v133];
      v137 = *v136;
      if (v137 == 77)
      {
        v138 = 69;
LABEL_217:
        *v136 = v138;
      }

      else if (v137 == 66)
      {
        v138 = 83;
        goto LABEL_217;
      }

      v139 = v95[v127];
      v140 = *v139;
      if (v140 == 69)
      {
        v141 = 83;
      }

      else
      {
        if (v140 != 77)
        {
          goto LABEL_223;
        }

        v141 = 66;
      }

      *v139 = v141;
LABEL_223:
      v127 = v127 + v132 - 1;
      if (v127 >= v94)
      {
        v26 = v154;
LABEL_231:
        v22 = v157;
        goto LABEL_232;
      }

      v26 = v154;
      if (!cstdlib_strcmp(v128[7], "latin"))
      {
        goto LABEL_231;
      }

      v22 = v157;
      v142 = v157[v127 - 1];
      if (v142[cstdlib_strlen(v142) - 1] == 77)
      {
        goto LABEL_232;
      }

      v143 = v157[v127];
      if (v143[cstdlib_strlen(v143) - 1] == 77)
      {
        goto LABEL_232;
      }

      v144 = v95[v127 - 1];
      v145 = *v144;
      if (v145 == 77)
      {
        v146 = 69;
      }

      else
      {
        if (v145 != 66)
        {
          goto LABEL_237;
        }

        v146 = 83;
      }

      *v144 = v146;
LABEL_237:
      v147 = v95[v127];
      v148 = *v147;
      if (v148 == 69)
      {
        v149 = 83;
      }

      else
      {
        if (v148 != 77)
        {
          goto LABEL_232;
        }

        v149 = 66;
      }

      *v147 = v149;
LABEL_232:
      if (++v126 >= v150 || v127 >= v94)
      {
        v94 = v166;
        v95 = v167;
        v13 = v153;
        goto LABEL_246;
      }

      continue;
    }
  }

  v13 = v153;
  v26 = v154;
  v22 = v157;
LABEL_246:
  a6 = v151;
LABEL_247:
  v20 = pw_crf_alginWS(v13, v94, a6, v22, v95, &v168, &a9);
LABEL_176:
  v74 = v167;
  LODWORD(v73) = v166;
  if (v164)
  {
LABEL_177:
    v118 = v164;
    v119 = v22;
    v120 = v164;
    do
    {
      if (*v119)
      {
        heap_Free(*(v13 + 8), *v119);
      }

      ++v119;
      --v120;
    }

    while (v120);
    v121 = 0;
  }

  else
  {
    v118 = 0;
    v121 = 1;
  }

LABEL_184:
  heap_Free(*(v13 + 8), v22);
  heap_Free(*(v13 + 8), v156);
  if ((v121 & 1) == 0)
  {
    v122 = v26;
    do
    {
      if (*v122)
      {
        heap_Free(*(v13 + 8), *v122);
      }

      ++v122;
      --v118;
    }

    while (v118);
  }

  heap_Free(*(v13 + 8), v26);
  if (v74)
  {
    if (v73)
    {
      v123 = v73;
      v124 = v74;
      do
      {
        if (*v124)
        {
          heap_Free(*(v13 + 8), *v124);
        }

        ++v124;
        --v123;
      }

      while (v123);
    }

    v24 = *(v13 + 8);
    v117 = v74;
    goto LABEL_196;
  }

  return v20;
}