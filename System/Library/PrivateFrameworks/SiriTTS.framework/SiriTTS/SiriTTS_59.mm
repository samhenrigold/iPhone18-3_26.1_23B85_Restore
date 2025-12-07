const char *hlp_AdjustMarkersToWordBoundaries(const char *result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = result;
    v4 = *(a2 + 12);
    v5 = (a2 + 44);
    v6 = a3 - 1;
    do
    {
      result = hlp_PositionToWordBoundary(v3, *v5 - v4);
      *v5 = result + v4;
      v5 += 8;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t hlp_AdjustUserTnToWordBoundaries(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  result = (*(a4 + 104))(a2, a3, 1, 0, &v13 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a4 + 152))(a2, a3, 3, HIWORD(v13), &v9);
    if ((result & 0x80000000) == 0)
    {
      if (v9)
      {
        for (result = (*(a4 + 104))(a2, a3, 3, HIWORD(v13), &v13); (result & 0x80000000) == 0; result = (*(a4 + 120))(a2, a3, v13, &v13))
        {
          if (!v13)
          {
            break;
          }

          result = (*(a4 + 168))(a2, a3, v13, 0, 1, &v10, &v12 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v10 == 5)
          {
            result = (*(a4 + 168))(a2, a3, v13, 1, 1, &v12, &v12 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            LOWORD(v12) = hlp_PositionToWordBoundary(a1, v12);
            result = (*(a4 + 160))(a2, a3, v13, 1, 1, &v12, &v12 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = (*(a4 + 168))(a2, a3, v13, 2, 1, &v11, &v12 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            v11 = hlp_PositionToWordBoundary(a1, v11);
            result = (*(a4 + 160))(a2, a3, v13, 2, 1, &v11, &v12 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_UpdateLingDBTokensForDeletion(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  result = (*(a3 + 104))(a1, a2, 1, 0, &v14 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a3 + 152))(a1, a2, 3, HIWORD(v14), &v12);
    if ((result & 0x80000000) == 0)
    {
      if (v12)
      {
        result = (*(a3 + 104))(a1, a2, 3, HIWORD(v14), &v14);
        if ((result & 0x80000000) == 0)
        {
          while (v14)
          {
            result = (*(a3 + 168))(a1, a2, v14, 1, 1, &v13, &v13 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (v13 > a4)
            {
              LOWORD(v13) = v13 - 1;
              result = (*(a3 + 160))(a1, a2, v14, 1, 1, &v13, &v13 + 2);
              if ((result & 0x80000000) != 0)
              {
                break;
              }
            }

            result = (*(a3 + 168))(a1, a2, v14, 2, 1, &v12 + 2, &v13 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            v9 = HIWORD(v12);
            if (HIWORD(v12) > a4)
            {
              --HIWORD(v12);
              result = (*(a3 + 160))(a1, a2, v14, 2, 1, &v12 + 2, &v13 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v9 = HIWORD(v12);
            }

            if (v13 == v9)
            {
              v11 = 0;
              result = (*(a3 + 168))(a1, a2, v14, 0, 1, &v11, &v13 + 2);
              if (v11 == 5)
              {
                v10 = v14;
              }

              else
              {
                v10 = 0;
              }

              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            else
            {
              v10 = 0;
            }

            result = (*(a3 + 120))(a1, a2);
            if ((result & 0x80000000) == 0)
            {
              if (!v10)
              {
                continue;
              }

              result = (*(a3 + 192))(a1, a2, v10);
              if ((result & 0x80000000) == 0)
              {
                continue;
              }
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_UpdateMarkersForDeletion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2)
  {
    v3 = a2;
    v4 = (result + 16);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(result + 12);
      if (*v4)
      {
        v8 = v5 - v7;
        if (v5 >= v7 && v8 <= a3 && v5 + v6 > v7 && v5 + v6 - v7 > a3)
        {
          *v4 = v6 - 1;
        }
      }

      else
      {
        v8 = v5 - v7;
      }

      if (v5 > v7 && v8 > a3)
      {
        *(v4 - 1) = v5 - 1;
      }

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

size_t hlp_AdjustPuncMarkers(const char *a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = *(a2 + 12);
  result = strlen(a1);
  if (v3)
  {
    v8 = result;
    v3 = v3;
    v9 = (a2 + 12);
    do
    {
      v10 = *v9 - v6;
      if (*v9 != v6 && v10 < v8 && a1[v10 - 1] != 32)
      {
        result = a1[v10];
        if (result != 32)
        {
          result = utf8_determineUTF8CharLength(result);
          if (a1[result + v10] == 32 && *(v9 - 3) != 99)
          {
            *v9 += result;
          }
        }
      }

      v9 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t fe_puncsptn_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62339, 168);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2311069704;
  }
}

uint64_t fe_puncsptn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2311069697;
  }

  result = 0;
  *a2 = &IFePuncsptn;
  return result;
}

uint64_t dumpLingDB(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, const char *a7)
{
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "%s", a7);
  result = (*(a1[3] + 104))(a2, a3, 3, a4, &v25 + 2);
  if ((result & 0x80000000) == 0)
  {
    for (i = HIWORD(v25); HIWORD(v25); i = HIWORD(v25))
    {
      result = (*(a1[3] + 168))(a2, a3, i, 1, 1, &v25, &v23);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = (*(a1[3] + 168))(a2, a3, HIWORD(v25), 2, 1, &v24, &v23);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = (*(a1[3] + 168))(a2, a3, HIWORD(v25), 0, 1, &v22, &v23);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (v22 - 5 <= 1)
      {
        result = (*(a1[3] + 176))(a2, a3, HIWORD(v25), 4, &v19, &v23);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (v22 == 6)
        {
          result = (*(a1[3] + 176))(a2, a3, HIWORD(v25), 3, &v18, &v23);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (((*(a1[3] + 184))(a2, a3, HIWORD(v25), 6, &v21 + 2) & 0x80000000) == 0 && HIWORD(v21) == 1)
          {
            result = (*(a1[3] + 176))(a2, a3, HIWORD(v25), 6, &v20, &v21);
            if ((result & 0x80000000) != 0)
            {
              break;
            }
          }
        }
      }

      v15 = v24;
      strncpy(a6, (a5 + v25), v24 - v25);
      v16 = v25;
      a6[v15 - v25] = 0;
      if (v22 > 4)
      {
        if (v22 == 5)
        {
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "[dbId=%d] %3d,%3d ESC(%-9s) %s", HIWORD(v25), v16);
        }

        else if (v22 == 6)
        {
          log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "[dbId=%d] %3d,%3d %-15s %s %s", HIWORD(v25), v16, v15);
        }
      }

      else
      {
        v17 = 0;
        (*(a1[3] + 264))(a2, a3, v22, &v17);
        log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "[dbId=%d] %3d,%3d %-15s %s", HIWORD(v25), v25);
      }

      result = (*(a1[3] + 120))(a2, a3, HIWORD(v25), &v25 + 2);
      if (result)
      {
        break;
      }
    }
  }

  return result;
}

void *dumpTokDB(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5)
  {
    v7 = result;
    v8 = 0;
    v9 = a5;
    v10 = a4 + 12;
    do
    {
      v13 = 0;
      (*(v7[3] + 264))(a2, a3, *(v10 - 4), &v13);
      v11 = *(*v7 + 32);
      v12 = *(v10 - 12);
      if (*(v10 - 4) == 5)
      {
        result = log_OutText(v11, "FE_PUNCSPTN", 5, 0, "%d : [%d] %d,%d %s %s %c %s", v8, v12, *(v10 - 10), *(v10 - 8), v13);
      }

      else
      {
        result = log_OutText(v11, "FE_PUNCSPTN", 5, 0, "%d : [%d] %d,%d %s", v8, v12);
      }

      ++v8;
      v10 += 28;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t modifyTokenLangMaps(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v35 = 0;
  __src = 0;
  __s = 0;
  v32 = 0;
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    v13 = a5;
    v31 = a5;
    while (1)
    {
      v14 = (a4 + 28 * v11);
      if (*(v14 + 2) == 6)
      {
        v12 = (*(a1[3] + 184))(a2, a3, *v14, 6, &v35);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        if (v35 == 1)
        {
          v15 = (*(a1[3] + 176))(a2, a3, *v14, 6, &__s, &v32);
          if ((v15 & 0x80000000) != 0)
          {
            return v15;
          }

          v12 = (*(a1[3] + 176))(a2, a3, *v14, 3, &__src, &v32);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          if (v11)
          {
            v16 = 0;
            while (1)
            {
              v17 = a4 + 28 * v16;
              if (*(v17 + 8) == 5 && v14[1] >= *(v17 + 2))
              {
                v18 = v14[2];
                v19 = *(v17 + 4);
                if (v18 < v19)
                {
                  v20 = v14[2];
                  while (*(a6 + v20) == 32)
                  {
                    if (v19 == ++v20)
                    {
                      LODWORD(v20) = *(v17 + 4);
                      goto LABEL_18;
                    }
                  }

                  LODWORD(v20) = v20;
LABEL_18:
                  if (v20 != v18 && v20 == v19)
                  {
                    break;
                  }
                }
              }

              if (++v16 == v11)
              {
                v13 = v31;
                goto LABEL_22;
              }
            }

            *(v14 + 5) = 1;
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "spaced region found...adjust token end from %d to %d", v18, v19);
            v22 = *(v17 + 4);
            v21 = (v17 + 4);
            v29 = (v22 + strlen(__s) - v14[2]) + 1;
            v23 = heap_Calloc(*(*a1 + 8), 1, v29);
            if (!v23)
            {
              log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0);
              return 2311069706;
            }

            v24 = v23;
            v25 = strcpy(v23, __s);
            strncat(v25, (a6 + v14[2]), *v21 - v14[2]);
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "modify LD_T_LANGMAP field from %s to %s", __s, v24);
            __dst = v24;
            v26 = (*(a1[3] + 160))(a2, a3, *v14, 6, v29, v24, &v32);
            if ((v26 & 0x80000000) != 0)
            {
              goto LABEL_34;
            }

            v12 = 2311069696;
            if (v32 != v29)
            {
              goto LABEL_35;
            }

            strcpy(__dst, __src);
            strncat(__dst, (a6 + v14[2]), *v21 - v14[2]);
            log_OutText(*(*a1 + 32), "FE_PUNCSPTN", 5, 0, "modify LD_T_NORM field from %s to %s", __src, __dst);
            v26 = (*(a1[3] + 160))(a2, a3, *v14, 3, v29, __dst, &v32);
            if ((v26 & 0x80000000) != 0)
            {
LABEL_34:
              v12 = v26;
LABEL_35:
              v27 = __dst;
LABEL_36:
              heap_Free(*(*a1 + 8), v27);
              return v12;
            }

            v27 = __dst;
            if (v32 != v29)
            {
              goto LABEL_36;
            }

            heap_Free(*(*a1 + 8), __dst);
            v14[2] = *v21;
            v12 = (*(a1[3] + 160))(a2, a3, *v14, 2, 1, v21, &v32);
            v13 = v31;
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }
          }
        }
      }

LABEL_22:
      if (++v11 == v13)
      {
        return v12;
      }
    }
  }

  return 0;
}

double insertDomainAndLang(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, unsigned int a4, uint64_t a5, int a6, unsigned int a7, int a8, uint64_t a9, __int16 *a10, __int16 *a11, _WORD *a12)
{
  v19 = *a2;
  v20 = *a3;
  if (*a3)
  {
    v21 = 0;
    v22 = (v19 + 40);
    while (1)
    {
      if (*(v22 - 7) != 3)
      {
        v23 = *(v22 - 19);
        if (v23 > a7)
        {
          goto LABEL_14;
        }

        if (v23 == a7)
        {
          break;
        }
      }

      ++v21;
      v22 += 7;
      if (v20 == v21)
      {
        v24 = 0;
        LOWORD(v21) = *a3;
        goto LABEL_16;
      }
    }

    if (v21 + 1 < v20)
    {
      while (*(v22 - 5) == a7 && *v22 != 3)
      {
        v24 = v21 + 1;
        v25 = v21 + 2;
        v22 += 7;
        LOWORD(v21) = v21 + 1;
        if (v25 >= v20)
        {
          LOWORD(v21) = v24;
          goto LABEL_16;
        }
      }

LABEL_14:
      v24 = v21;
      goto LABEL_16;
    }

    v24 = *a3;
  }

  else
  {
    LOWORD(v21) = 0;
    v24 = 0;
  }

LABEL_16:
  v26 = heap_Realloc(*(*a1 + 8), v19, 28 * *a3 + 56);
  if (v26)
  {
    v27 = v26;
    *a2 = v26;
    v28 = *(*a1 + 32);
    v29 = *(a9 + 8 * a4);
    if (*a3 == v21)
    {
      log_OutText(v28, "FE_PUNCSPTN", 5, 0, "insert %d,%d, [%s_%c] at end", a7, a8, v29, a5);
      v30 = v21;
      v31 = a6;
    }

    else
    {
      v30 = v24;
      v33 = (v27 + 28 * v24);
      log_OutText(v28, "FE_PUNCSPTN", 5, 0, "insert %d,%d, [%s_%c] before rec %d", a7, a8, v29, a5, *v33);
      if ((*a3 + 1) > v24)
      {
        v34 = (*a3 + 1) + 0xFFFFFFFFLL;
        v35 = (v27 + 28 * (*a3 + 1));
        v36 = (*a3 + 1) - 1;
        do
        {
          v37 = (v27 + 28 * v34);
          v38 = *v37;
          *(v35 + 12) = *(v37 + 12);
          *v35 = v38;
          v35 = (v35 - 28);
          --v34;
        }

        while (v24 < v36--);
      }

      *v33 = 0;
      *(v33 + 1) = 0;
      *(v33 + 6) = 0;
      *(v33 + 2) = 0;
      v40 = *a10;
      v31 = a6;
      if (v40 >= v24)
      {
        *a10 = v40 + 1;
      }

      v41 = *a11;
      if (v41 >= v24)
      {
        *a11 = v41 + 1;
      }

      LOWORD(v21) = v24;
    }

    v42 = v27 + 28 * v30;
    *v42 = 0;
    *(v42 + 2) = a7;
    *(v42 + 4) = a8;
    *(v42 + 16) = a4;
    *(v42 + 18) = a5;
    *&result = 0x200000005;
    *(v42 + 8) = 0x200000005;
    *(v42 + 24) = v31;
    *a12 = v21;
    ++*a3;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN", 33000, 0);
  }

  return result;
}

uint64_t ToNorm(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = *a1;
  if (v2 != 32 && v2 < 0x41 || (*a1 - 91) < 6u)
  {
    return 1;
  }

  if (v2 < 0x7B || ((result = 1, v7 = v1 - 130, v8 = v7 > 8, v9 = (1 << v7) & 0x149, !v8) ? (v10 = v9 == 0) : (v10 = 1), !v10))
  {
    v11 = a1[1];
    if (!v11)
    {
      return 0;
    }

    v12 = a1 + 2;
    result = 1;
    while (v11 > 0x40u || v11 == 32)
    {
      if ((v11 - 65) > 0x19u)
      {
        if ((v11 - 91) < 6u)
        {
          return 1;
        }

        if (v11 > 0x7Au)
        {
          v13 = v11 - 130;
          if (v13 > 8 || ((1 << v13) & 0x149) == 0)
          {
            return result;
          }
        }
      }

      else if (*(v12 - 2) != 32)
      {
        return 1;
      }

      v14 = *v12++;
      v11 = v14;
      if (!v14)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t hlp_updateBytePositions(int a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, _WORD *a5, _WORD *a6)
{
  *a5 = Utf8_LengthInBytes(a2, a1);
  if (a1)
  {
    v10 = 0;
    v11 = a1;
    do
    {
      v12 = *a3++;
      v10 += v12;
      --v11;
    }

    while (v11);
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  result = Utf8_LengthInBytes(a4, v13);
  *a6 = result;
  return result;
}

uint64_t hlp_updateMarkerPosition(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, int a4, int a5, int a6, _DWORD *a7)
{
  v13 = Utf8_LengthInUtf8chars(a1, *a7 - a4);
  if (a5)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v15 += *(a2 + v14);
      if (v13 < v15)
      {
        break;
      }

      if (a5 == ++v14)
      {
        goto LABEL_7;
      }
    }

    LOWORD(a5) = v14;
  }

LABEL_7:
  result = Utf8_LengthInBytes(a3, a5);
  *a7 = a6 + a4 + result;
  return result;
}

uint64_t hlp_PositionToWordBoundary(const char *a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = strlen(a1);
  v5 = v4 - v2;
  if (v4 > v2)
  {
    v2 = v2;
    while (1)
    {
      v6 = a1[v2];
      if (a1[v2])
      {
        if (v6 != 32 && v6 != 95)
        {
          break;
        }
      }

      ++v2;
      if (!--v5)
      {
        LODWORD(v2) = v4;
        break;
      }
    }
  }

  if (!v2)
  {
    return 0;
  }

  result = v2;
  do
  {
    v8 = a1[result];
    if (v8 <= 0x2B)
    {
      if (v8 != 32)
      {
        return result;
      }
    }

    else if (v8 != 95)
    {
      return result;
    }

    --result;
  }

  while (result);
  return result;
}

uint64_t fe_puncsptn_v2_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v24 = 0;
  v5 = 2702188551;
  v22 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v24);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = objc_GetObject(v24[6], "LINGDB", &v23);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    Object = objc_GetObject(v24[6], "FE_DCTLKP", &v22);
    if ((Object & 0x80000000) != 0)
    {
      v21 = Object;
      objc_ReleaseObject(v24[6], "LINGDB");
      return v21;
    }

    v11 = heap_Alloc(v24[1], 176);
    if (!v11)
    {
      log_OutPublic(v24[4], "FE_PUNCSPTN_V2", 76000, 0);
      objc_ReleaseObject(v24[6], "LINGDB");
      objc_ReleaseObject(v24[6], "FE_DCTLKP");
      return 2702188554;
    }

    v12 = v11;
    *v11 = v24;
    *(v11 + 8) = a3;
    *(v11 + 16) = a4;
    *(v11 + 24) = *(v23 + 8);
    v13 = v22;
    v14 = *(v22 + 8);
    *(v11 + 48) = v14;
    v15 = *(v13 + 16);
    *(v11 + 160) = 0;
    v16 = (v11 + 160);
    *(v11 + 32) = v15;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    *(v11 + 144) = 0;
    *(v11 + 168) = "FE_PUNCSPTN_V2";
    v25 = 0;
    v17 = (*(v14 + 88))(*(v11 + 32), *(v11 + 40), &v25 + 4, &v25);
    if ((v17 & 0x80000000) != 0 || (v17 = loc_reload_statpunc_data(v12), (v17 & 0x80000000) != 0))
    {
      v5 = v17;
    }

    else
    {
      v12[9] = heap_Alloc;
      v12[10] = heap_Calloc;
      v12[11] = heap_Realloc;
      v12[12] = heap_Free;
      v18 = OOCAllocator_Con((v12 + 13), v12 + 9, *(*v12 + 8));
      v19 = LH_ERROR_to_VERROR(v18);
      if ((v19 & 0x80000000) != 0)
      {
        v5 = v19;
        log_OutPublic(v24[4], "FE_PUNCSPTN_V2", 76002, 0);
      }

      else
      {
        v5 = puncsptn_v2_reload_lua_code(v12[1], v12[2], v12[21], (v12 + 13), v16, v12 + 38);
        if ((v5 & 0x80000000) == 0)
        {
          *a5 = v12;
          *(a5 + 8) = 73449;
          return v5;
        }
      }
    }

    loc_cleanup_on_close(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
  }

  return v5;
}

uint64_t loc_reload_statpunc_data(uint64_t *a1)
{
  v13 = 0;
  v11 = 0;
  loc_deallocate_statpunc_v2_data(a1);
  v12 = 0;
  IGTree = (*(a1[6] + 96))(a1[4], a1[5], "fecfg", "statpunc", &v11, &v12, &v13);
  if ((IGTree & 0x80000000) == 0 && v12)
  {
    v3 = heap_Alloc(*(*a1 + 8), 48 * v12);
    a1[7] = v3;
    if (v3)
    {
      if (v12)
      {
        for (i = 0; i < v12; ++i)
        {
          v5 = strchr(*(v11 + 8 * i), 124);
          if (v5)
          {
            *v5 = 0;
            v6 = v5 + 1;
            __strcpy_chk();
            v7 = strchr(v6, 124);
            if (v7)
            {
              *v7 = 0;
              v8 = v7 + 1;
              __strcpy_chk();
              v9 = strchr(v8, 124);
              if (v9)
              {
                *v9 = 0;
                IGTree = statpunc_v2_readIGTree(a1[1], a1[2], *a1, v8, a1[7] + 48 * *(a1 + 32));
                if ((IGTree & 0x80000000) != 0)
                {
                  return IGTree;
                }

                ++*(a1 + 32);
              }
            }
          }
        }
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_PUNCSPTN_V2", 76000, 0, v11);
      return 2702188554;
    }
  }

  return IGTree;
}

uint64_t loc_cleanup_on_close(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 73449, 176);
  if ((v3 & 0x80000000) != 0)
  {
    return 2702188552;
  }

  v4 = v3;
  if (a1)
  {
    loc_deallocate_statpunc_v2_data(a1);
    luavmldoutil_destroy_lua_vm((a1 + 13), a1 + 20);
    kaldi::nnet1::Component::IsUpdatable((a1 + 13));
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    heap_Free(*(*a1 + 8), a1);
  }

  return v4;
}

uint64_t fe_puncsptn_v2_ObjReopen(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 73449, 176);
  if ((result & 0x80000000) != 0)
  {
    return 2702188552;
  }

  if (a1)
  {
    v4 = 0;
    result = (*(a1[6] + 88))(a1[4], a1[5], &v4 + 4, &v4);
    if ((result & 0x80000000) == 0)
    {
      result = loc_reload_statpunc_data(a1);
      if ((result & 0x80000000) == 0)
      {
        return puncsptn_v2_reload_lua_code(a1[1], a1[2], a1[21], (a1 + 13), a1 + 20, a1 + 38);
      }
    }
  }

  return result;
}

uint64_t fe_puncsptn_v2_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 73449, 176);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2702188552;
  }
}

uint64_t fe_puncsptn_v2_Process(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v15 = 0;
  if ((safeh_HandleCheck(a1, a2, 73449, 176) & 0x80000000) != 0)
  {
    return 2702188552;
  }

  *a5 = 1;
  v9 = LingDBHasSentence(a1[3], a3, a4, &v15);
  if ((v9 & 0x80000000) == 0)
  {
    if (v15 == 1)
    {
      inited = initLDO((a1 + 13), a1 + 18);
      if ((inited & 0x80000000) != 0)
      {
LABEL_14:
        v9 = inited;
        goto LABEL_17;
      }

      v9 = importFromLingDB(*a1, a1[3], a3, a4, a1 + 18);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      if (a1[18])
      {
        if (*(a1 + 32))
        {
          v11 = 0;
          v12 = 0;
          while (1)
          {
            inited = statpunc_v2_Process(*a1, a1[18], (a1 + 13), a1[7] + v11);
            if ((inited & 0x80000000) != 0)
            {
              break;
            }

            ++v12;
            v11 += 48;
            if (v12 >= *(a1 + 32))
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          if (*(a1 + 38) != 1 || (log_OutText(*(*a1 + 32), a1[21], 5, 0, "Lua code available: process LDO with Lua code", 0), inited = puncsptn_v2_process_ldo_with_lua(*a1, a1[21], a1[18], (a1 + 13), a1[20]), (inited & 0x80000000) == 0))
          {
            inited = exportToLingDB(*a1, a1[3], a3, a4, (a1 + 13), a1[18], 0, 0);
          }
        }

        goto LABEL_14;
      }

      log_OutText(*(*a1 + 32), a1[21], 5, 0, "Imported LDO is NULL, returning", 0);
    }

    else
    {
      log_OutText(*(*a1 + 32), a1[21], 5, 0, "LingDB has no sentence, returning", 0);
    }
  }

LABEL_17:
  v13 = a1[18];
  if (v13)
  {
    deinitLDO((a1 + 13), v13);
    a1[18] = 0;
  }

  return v9;
}

uint64_t fe_puncsptn_v2_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 73449, 176);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2702188552;
  }
}

uint64_t fe_puncsptn_v2_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2702188545;
  }

  result = 0;
  *a2 = &IFePuncsptnV2;
  return result;
}

uint64_t *loc_deallocate_statpunc_v2_data(uint64_t *result)
{
  v1 = result;
  v2 = result[7];
  if (*(result + 32))
  {
    v3 = 0;
    v4 = 8;
    do
    {
      statpunc_freeIGTree(*v1, *(v2 + v4));
      v2 = v1[7];
      *(v2 + v4) = 0;
      ++v3;
      v4 += 48;
    }

    while (v3 < *(v1 + 32));
    goto LABEL_6;
  }

  if (v2)
  {
LABEL_6:
    result = heap_Free(*(*v1 + 8), v2);
    v1[7] = 0;
  }

  *(v1 + 32) = 0;
  return result;
}

uint64_t loc_extractFeatures(uint64_t a1, uint64_t a2, char *a3, char *a4, const char *a5, uint64_t a6)
{
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = strchr(*(a1 + 16), 124);
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      do
      {
        *v12 = 0;
        v14 = strstr(a3, v10);
        if (v14)
        {
          if (v14 < a4)
          {
            v13 = loc_setFeature(*(a1 + 8), a2, "collocation", a6, "left");
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }
          }
        }

        *v12 = 124;
        v10 = v12 + 1;
        v12 = strchr(v12 + 1, 124);
      }

      while (v12);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }
    }
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = strchr(*(a1 + 24), 124);
    if (v16)
    {
      v17 = v16;
      v13 = 0;
      do
      {
        *v17 = 0;
        if (strstr(a3, v15) > a4)
        {
          v13 = loc_setFeature(*(a1 + 8), a2, "collocation", a6, "right");
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }
        }

        *v17 = 124;
        v15 = v17 + 1;
        v17 = strchr(v17 + 1, 124);
      }

      while (v17);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }
    }
  }

  v18 = a4;
  if (a4 > a3)
  {
    v18 = a4;
    while (*v18 != 32)
    {
      if (--v18 <= a3)
      {
        v18 = a3;
        break;
      }
    }
  }

  if (v18 > a3)
  {
    while (*v18 == 32)
    {
      if (--v18 <= a3)
      {
        v18 = a3;
        break;
      }
    }
  }

  v19 = *v18;
  if (strchr(*(a1 + 40), v19))
  {
    v20 = "punc";
  }

  else
  {
    if (!memchr("0123456789", v19, 0xBuLL))
    {
      goto LABEL_30;
    }

    v20 = "digit";
  }

  v21 = loc_setFeature(*(a1 + 8), a2, "lwordendchar", a6, v20);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

LABEL_30:
    ;
  }

  do
  {
    v24 = *i++;
    v23 = v24;
  }

  while (v24 == 32);
  v25 = *(a1 + 40);
  if (strchr(v25, v23))
  {
    v26 = "punc";
  }

  else
  {
    if (!memchr("0123456789", v23, 0xBuLL))
    {
      goto LABEL_40;
    }

    v26 = "digit";
  }

  v21 = loc_setFeature(*(a1 + 8), a2, "rwordbegchar", a6, v26);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v25 = *(a1 + 40);
LABEL_40:
  if (a4 <= a3)
  {
    goto LABEL_47;
  }

  v27 = *(a4 - 1);
  if (strchr(v25, v27))
  {
    v28 = "punc";
  }

  else
  {
    if (!memchr("0123456789", v27, 0xBuLL))
    {
      goto LABEL_47;
    }

    v28 = "digit";
  }

  v21 = loc_setFeature(*(a1 + 8), a2, "lchar", a6, v28);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v25 = *(a1 + 40);
LABEL_47:
  v29 = a4[1];
  if (strchr(v25, v29))
  {
    v30 = "punc";
  }

  else
  {
    if (!memchr("0123456789", v29, 0xBuLL))
    {
      goto LABEL_53;
    }

    v30 = "digit";
  }

  v21 = loc_setFeature(*(a1 + 8), a2, "rchar", a6, v30);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v25 = *(a1 + 40);
LABEL_53:
  if (a4 == a3)
  {
    goto LABEL_59;
  }

  v31 = a4 - 1;
  v32 = a4 - 1;
  do
  {
    v33 = *v32--;
    v34 = strchr(v25, v33);
    if (v31 <= a3)
    {
      break;
    }

    v31 = v32;
  }

  while (v34);
  if (v32 + 1 == a3 && v34)
  {
LABEL_59:
    v35 = a4 + 1;
    v36 = "isolated";
    do
    {
      v38 = *v35++;
      v37 = v38;
      if (!v38)
      {
        goto LABEL_70;
      }
    }

    while (strchr(v25, v37));
    if (!strcmp(a5, a1))
    {
      v36 = "start";
      goto LABEL_70;
    }
  }

  else
  {
    v39 = a4 + 1;
    while (1)
    {
      v41 = *v39++;
      v40 = v41;
      if (!v41)
      {
        break;
      }

      if (!strchr(v25, v40))
      {
        goto LABEL_72;
      }
    }

    if (!strcmp(a5, (a1 + 4)))
    {
      v36 = "end";
LABEL_70:
      v21 = loc_setFeature(*(a1 + 8), a2, "sentpos", a6, v36);
      if ((v21 & 0x80000000) == 0)
      {
        v25 = *(a1 + 40);
        goto LABEL_72;
      }

      return v21;
    }
  }

LABEL_72:
  if (!bstartword(v25, a3, a4))
  {
    v57 = a4 + 1;
    do
    {
      v59 = *v57++;
      v58 = v59;
      if (!v59)
      {
        goto LABEL_103;
      }
    }

    while (strchr(v25, v58));
    if ((v58 & 0xFFFFFFDF) == 0)
    {
LABEL_103:
      if (!strcmp(a5, (a1 + 4)))
      {
        v54 = "pos";
        v55 = "end";
LABEL_95:
        v56 = *(a1 + 8);
        goto LABEL_96;
      }
    }

    return 0;
  }

  v42 = 1;
  do
  {
    v43 = a4[v42];
    if (!a4[v42])
    {
      goto LABEL_94;
    }
  }

  while (strchr(v25, a4[v42++]));
  if ((v43 & 0xFFFFFFDF) == 0)
  {
LABEL_94:
    v54 = "pos";
    v55 = "isolated";
    goto LABEL_95;
  }

  if (strcmp(a5, a1))
  {
    return 0;
  }

  v13 = loc_setFeature(*(a1 + 8), a2, "pos", a6, "start");
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v45 = strstr(a4 + 1, (a1 + 4));
  if (!v45)
  {
    return v13;
  }

  v46 = v45;
  v47 = *(a1 + 40);
  if (bstartword(v47, a3, v45))
  {
    return v13;
  }

  v48 = 1;
  while (1)
  {
    v49 = *(v46 + v48);
    if (!*(v46 + v48))
    {
      break;
    }

    if (!strchr(v47, *(v46 + v48++)))
    {
      if ((v49 & 0xFFFFFFDF) != 0)
      {
        return v13;
      }

      break;
    }
  }

  if (v46 <= a4)
  {
    v51 = 0;
  }

  else
  {
    v51 = 0;
    do
    {
      if (*a4 == 32)
      {
        ++v51;
        do
        {
          v52 = *++a4;
        }

        while (v52 == 32);
      }

      ++a4;
    }

    while (a4 < v46);
  }

  if (*(a1 + 32) > v51)
  {
    v54 = "dist2end";
    v55 = "short";
    goto LABEL_95;
  }

  v56 = *(a1 + 8);
  v54 = "dist2end";
  if (*(a1 + 34) <= v51)
  {
    v55 = "long";
  }

  else
  {
    v55 = "medium";
  }

LABEL_96:

  return loc_setFeature(v56, a2, v54, a6, v55);
}

uint64_t loc_insertMarker(uint64_t a1, uint64_t a2, unsigned int a3, char *a4)
{
  v45 = 0;
  v44 = 0;
  v42 = 0;
  __s = 0;
  v5 = *(a1 + 32);
  v7 = *(v5 + 24);
  v6 = *(v5 + 32);
  if (v7 >= v6)
  {
    v13 = 0;
    v10 = 0;
    v9 = 0;
LABEL_16:
    if (v7 >= v6)
    {
LABEL_28:
      if (v9)
      {
        HIDWORD(v45) = LDOLabel_GetAbsoluteFrom(v9);
        v33 = *(v9 + 96);
        v32 = *(v9 + 100);
        v34 = LDO_AddLabelOnSubstring(a1, "MARKER", "MARKER_NLU", &v45 + 1, &v45 + 1, &v42);
        v25 = LH_ERROR_to_VERROR(v34);
        if ((v25 & 0x80000000) == 0)
        {
          v35 = LDOLabel_SetReferenceFrom(v42, v33);
          v25 = LH_ERROR_to_VERROR(v35);
          if ((v25 & 0x80000000) == 0)
          {
            v36 = LDOLabel_SetReferenceTo(v42, v32);
            v25 = LH_ERROR_to_VERROR(v36);
            if ((v25 & 0x80000000) == 0)
            {
              v37 = LDOObject_SetStringAttribute(v42, "STRARGS", a4);
              v25 = LH_ERROR_to_VERROR(v37);
              if ((v25 & 0x80000000) == 0)
              {
                LDOObject_SetU32Attribute(v42, "_MTYPE", 51);
                return LH_ERROR_to_VERROR(v38);
              }
            }
          }
        }

        return v25;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = *v7;
        U32Attribute = LDOObject_GetU32Attribute(*v7, "_MTYPE", &v44, &v45);
        v13 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v13 & 0x80000000) != 0)
        {
          break;
        }

        if (v44 == 1)
        {
          v23 = v45;
          HIDWORD(v45) = LDOLabel_GetAbsoluteFrom(v21);
          if (v23 == 51 && HIDWORD(v45) == v10)
          {
            v20 = 1;
            v19 = v21;
          }
        }

        if (++v7 >= *(*(a1 + 32) + 32))
        {
          if (!v20)
          {
            goto LABEL_28;
          }

          StringAttribute = LDOObject_GetStringAttribute(v19, "STRARGS", &v44, &__s);
          v25 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v25 & 0x80000000) == 0)
          {
            if (v44)
            {
              v26 = strlen(a4);
              v27 = strlen(__s);
              v28 = heap_Alloc(*(a2 + 8), (v26 + v27 + 2));
              if (v28)
              {
                v29 = v28;
                v30 = strcpy(v28, __s);
                *&v29[strlen(v30)] = 59;
                strcat(v29, a4);
                v31 = LDOObject_SetStringAttribute(v19, "STRARGS", v29);
                v13 = LH_ERROR_to_VERROR(v31);
                heap_Free(*(a2 + 8), v29);
              }

              else
              {
                log_OutPublic(*(a2 + 32), "FE_PUNCSPTN_V2", 76000, 0);
                return 2702188554;
              }
            }

            else
            {
              v13 = 2702188544;
              log_OutPublic(*(a2 + 32), "FE_PUNCSPTN_V2", 76003, 0);
            }

            return v13;
          }

          return v25;
        }
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *v7;
      v12 = LDOObject_GetU32Attribute(*v7, "_MTYPE", &v44, &v45);
      v13 = LH_ERROR_to_VERROR(v12);
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      if (v44 == 1)
      {
        v14 = v45;
        AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v11);
        HIDWORD(v45) = AbsoluteFrom;
        if (v14 == 1 && AbsoluteFrom <= a3)
        {
          v10 = AbsoluteFrom;
          v9 = v11;
        }
      }

      ++v7;
      v18 = *(a1 + 32);
      v6 = *(v18 + 32);
      if (v7 >= v6)
      {
        v7 = *(v18 + 24);
        goto LABEL_16;
      }
    }
  }

  return v13;
}

uint64_t statpunc_v2_readIGTree(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  *v20 = 0;
  *v21 = 0;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v21);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  strcpy(v23, "statpunc_");
  __strcat_chk();
  v10 = brokeraux_ComposeBrokerString(a3, v23, 0, 1, *v21, 0, 0, v22, 0x100uLL);
  if (v10 < 0)
  {
    return v10 | 0xA1102000;
  }

  Str = ssftriff_reader_ObjOpen(a1, a2, 2, v22, "IGTR", 1031, v20);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v11 = heap_Calloc(*(a3 + 8), 1, 1600);
  *(a5 + 8) = v11;
  if (!v11)
  {
    log_OutPublic(*(a3 + 32), "FE_PUNCSPTN_V2", 76000, 0);
    return 2702188554;
  }

  Str = igtree_Init(a1, a2, *v20, v11);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v12 = ssftriff_reader_ObjClose(*v20);
  if ((v12 & 0x80000000) == 0)
  {
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 393219;
    *(a5 + 40) = ":;.!?()[]{}#',-<>";
    v13 = *(a5 + 8);
    v14 = *(v13 + 1336);
    if (v14)
    {
      v15 = 0;
      v16 = *(v13 + 1328);
      do
      {
        v17 = (v16 + 16 * v15);
        v18 = *v17;
        if (!strcmp(*v17, "leftcollocation"))
        {
          *(a5 + 16) = v17[1];
        }

        else if (!strcmp(v18, "rightcollocation"))
        {
          *(a5 + 24) = v17[1];
        }

        else if (!strcmp(v18, "dist2endmaxshort"))
        {
          *(a5 + 32) = atoi(v17[1]);
        }

        else if (!strcmp(v18, "dist2endminlong"))
        {
          *(a5 + 34) = atoi(v17[1]);
        }

        else if (!strcmp(v18, "punctuation"))
        {
          *(a5 + 40) = v17[1];
        }

        ++v15;
      }

      while (v14 > v15);
    }
  }

  return v12;
}

uint64_t statpunc_v2_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v38 = *MEMORY[0x1E69E9840];
  v35 = 0;
  __src = 0;
  v34 = 0;
  v8 = LDO_ComputeText(a2, &v34);
  inserted = LH_ERROR_to_VERROR(v8);
  if ((inserted & 0x80000000) == 0)
  {
    v10 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v34);
    v11 = statpunc_Strpunc(v10, a4, (a4 + 4), &v35);
    if (v11)
    {
      v12 = 0;
      do
      {
        ++v12;
        v11 = statpunc_Strpunc(v11 + 1, a4, (a4 + 4), &v35);
      }

      while (v11);
      if (v12)
      {
        v13 = statpunc_Strpunc(v10, a4, (a4 + 4), &v35);
        if (v13)
        {
          v14 = v13;
          v31 = a3;
          v32 = v10;
          v33 = 0;
          v15 = 0;
          while (1)
          {
            if (!v15)
            {
              log_OutText(*(a1 + 32), "FE_PUNCSPTN_V2", 5, 0, "traceFeatureVector %s", v10);
              v15 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(a4 + 8) + 1296) - 8);
              if (!v15)
              {
                inserted = 2702188554;
                log_OutPublic(*(a1 + 32), "FE_PUNCSPTN_V2", 76000, 0);
                goto LABEL_39;
              }
            }

            v16 = *(a4 + 8);
            if (*(v16 + 1296) != 1)
            {
              v17 = v6;
              v18 = 0;
              v19 = 8 * (*(v16 + 1296) - 1) - 8;
              do
              {
                if (!v15[v18 / 8])
                {
                  v20 = heap_Calloc(*(a1 + 8), 1, 65);
                  v15[v18 / 8] = v20;
                  if (!v20)
                  {
                    inserted = 2702188554;
                    log_OutPublic(*(a1 + 32), "FE_PUNCSPTN_V2", 76000, 0);
                    goto LABEL_33;
                  }
                }

                v21 = loc_setFeature(v16, a1, *(*(v16 + 1312) + v18), v15, "_");
                inserted = v21;
                if ((v21 & 0x80000000) != 0)
                {
                  break;
                }

                v22 = v19 == v18;
                v18 += 8;
              }

              while (!v22);
              v6 = v17;
              v10 = v32;
              if ((v21 & 0x80000000) != 0)
              {
                goto LABEL_33;
              }
            }

            Features = loc_extractFeatures(a4, a1, v10, v14, v35, v15);
            if ((Features & 0x80000000) != 0)
            {
              break;
            }

            v24 = v33;
            if (v33)
            {
              Features = loc_setFeature(*(a4 + 8), a1, "startpred", v15, v33);
              if ((Features & 0x80000000) != 0)
              {
                break;
              }
            }

            Features = igtree_Process(*(a4 + 8), v15, &__src);
            if ((Features & 0x80000000) != 0)
            {
              break;
            }

            if (!strcmp(*v15, "start"))
            {
              v24 = __src;
            }

            v33 = v24;
            v25 = *(a4 + 8);
            strncpy(__dst, __src, 0x100uLL);
            __dst[255] = 0;
            if (*(v25 + 1296) >= 2u)
            {
              v26 = 0;
              do
              {
                v27 = strlen(v15[v26]);
                if (v27 + strlen(__dst) + 2 > 0xFF)
                {
                  break;
                }

                __strcat_chk();
                __strcat_chk();
                ++v26;
              }

              while (*(v25 + 1296) - 1 > v26);
            }

            log_OutText(*(a1 + 32), "FE_PUNCSPTN_V2", 5, 0, "traceFeatureVector %s", __dst);
            inserted = loc_insertMarker(v6, a1, (v14 - v10), __src);
            if ((inserted & 0x80000000) == 0)
            {
              v14 = statpunc_Strpunc(v14 + 1, a4, (a4 + 4), &v35);
              if (v14)
              {
                continue;
              }
            }

            goto LABEL_33;
          }

          inserted = Features;
LABEL_33:
          if (*(*(a4 + 8) + 1296) != 1)
          {
            v28 = (*(*(a4 + 8) + 1296) - 1);
            v29 = v15;
            do
            {
              if (*v29)
              {
                heap_Free(*(a1 + 8), *v29);
              }

              ++v29;
              --v28;
            }

            while (v28);
          }

          heap_Free(*(a1 + 8), v15);
LABEL_39:
          a3 = v31;
        }
      }
    }
  }

  if (v34)
  {
    OOC_PlacementDeleteObject(a3, v34);
  }

  return inserted;
}

uint64_t loc_setFeature(uint64_t a1, uint64_t a2, char *__s1, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 1296);
  if (v5 < 2)
  {
    return 0;
  }

  v10 = 0;
  v11 = *(a1 + 1312);
  v12 = (v5 - 1);
  while (1)
  {
    v13 = v10;
    if (!strcmp(__s1, *(v11 + 8 * v10)))
    {
      break;
    }

    v10 = v13 + 1;
    if (v12 <= (v13 + 1))
    {
      return 0;
    }
  }

  if (!*a5)
  {
    result = 0;
    **(a4 + 8 * v13) = 95;
    return result;
  }

  if (strlen(a5) <= 0x40)
  {
    v16 = *(a4 + 8 * v13);
    goto LABEL_13;
  }

  v15 = strlen(a5);
  v16 = heap_Realloc(*(a2 + 8), *(a4 + 8 * v13), v15 + 1);
  if (v16)
  {
    *(a4 + 8 * v13) = v16;
LABEL_13:
    strcpy(v16, a5);
    return 0;
  }

  log_OutPublic(*(a2 + 32), "FE_PUNCSPTN_V2", 76000, 0);
  return 2702188554;
}

uint64_t puncsptn_v2_dump_ldo(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = 0;
  v7 = LDO_ToString(a3, &v11);
  v8 = LH_ERROR_to_VERROR(v7);
  if ((v8 & 0x80000000) != 0)
  {
    log_OutText(a1, a2, 5, 0, "Call to MSG_LDO_ToString failed, returning", 0);
  }

  else
  {
    log_OutText(a1, a2, 5, 0, "LDO contents: begin", 0);
    v9 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v11);
    log_OutText(a1, a2, 5, 0, "%s", v9);
    log_OutText(a1, a2, 5, 0, "LDO contents: end", 0);
  }

  if (v11)
  {
    OOC_PlacementDeleteObject(a4, v11);
  }

  return v8;
}

uint64_t puncsptn_v2_process_ldo_with_lua(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  log_OutText(*(a1 + 32), a2, 5, 0, "LDO before calling %s in LuaVM", "runPuncsptnV2");
  v10 = puncsptn_v2_dump_ldo(*(a1 + 32), a2, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = LuaVMLDO_RunFunction(a5, "runPuncsptnV2", a3);
  v12 = LH_ERROR_to_VERROR(v11);
  v13 = *(a1 + 32);
  if ((v12 & 0x80000000) != 0)
  {
    log_OutPublic(v13, a2, 76002, 0);
    return v12;
  }

  log_OutText(v13, a2, 5, 0, "LDO after calling %s in LuaVM", "runPuncsptnV2");
  v14 = *(a1 + 32);

  return puncsptn_v2_dump_ldo(v14, a2, a3, a4);
}

uint64_t puncsptn_v2_reload_lua_code(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, _DWORD *a6)
{
  v22 = 0;
  *a6 = 0;
  inited = InitRsrcFunction(a1, a2, &v22);
  if ((inited & 0x80000000) != 0)
  {
    v14 = inited;
  }

  else
  {
    if (*a5)
    {
      OOC_PlacementDeleteObject(a4, *a5);
      *a5 = 0;
    }

    IsLuaCodeAvailable = LuaVMLDO_IsLuaCodeAvailable(a1, a2, 0, a6);
    v14 = LH_ERROR_to_VERROR(IsLuaCodeAvailable);
    if ((v14 & 0x80000000) == 0)
    {
      if (*a6 != 1)
      {
        v20 = *(v22 + 32);
        goto LABEL_13;
      }

      *a6 = 0;
      v15 = PNEW_LuaVMLDO_Con(a4, a4, a1, a2, puncsptn_v2_hlp_lua_log_callback, a5);
      v16 = LH_ERROR_to_VERROR(v15);
      if ((v16 & 0x80000000) != 0)
      {
        v14 = v16;
        log_OutText(*(v22 + 32), a3, 5, 0, "Unable to create LuaVM", 0);
      }

      else
      {
        ScriptFromRIFF = LuaVMLDO_LoadScriptFromRIFF(*a5, 0);
        v18 = LH_ERROR_to_VERROR(ScriptFromRIFF);
        if ((v18 & 0x80000000) != 0)
        {
          v14 = v18;
          log_OutText(*(v22 + 32), a3, 5, 0, "Unable to load Lua code from RIFF", 0);
        }

        else
        {
          IsLuaFunctionAvailable = LuaVMLDO_IsLuaFunctionAvailable(*a5, "runPuncsptnV2", a6);
          v14 = LH_ERROR_to_VERROR(IsLuaFunctionAvailable);
          if ((v14 & 0x80000000) == 0)
          {
            v20 = *(v22 + 32);
            if (*a6 == 1)
            {
              log_OutText(v20, a3, 5, 0, "Lua code found and loaded", 0);
              goto LABEL_14;
            }

LABEL_13:
            log_OutText(v20, a3, 5, 0, "No Lua code found", 0);
LABEL_14:
            if (*a6)
            {
              return v14;
            }

            goto LABEL_19;
          }

          log_OutText(*(v22 + 32), a3, 5, 0, "Unable to determine if Lua entry point function is present", 0);
        }
      }
    }
  }

LABEL_19:
  if (*a5)
  {
    OOC_PlacementDeleteObject(a4, *a5);
    *a5 = 0;
  }

  return v14;
}

uint64_t initSolutionList(uint64_t a1)
{
  v2 = heap_Calloc(*(*a1 + 8), 1, 48);
  *(a1 + 360) = v2;
  if (v2)
  {
    *(a1 + 368) = 3;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

    return TOKENTNERROR(10);
  }
}

void *freeSolutionList(void *result)
{
  v1 = result;
  v2 = result[45];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[45] = 0;
  }

  *(v1 + 92) = 0;
  return result;
}

uint64_t resetSolutionList(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v3 = a2;
  if (a2 <= 3 && (a2 != 3 || *(a1 + 368) < 4u))
  {
    goto LABEL_7;
  }

  v4 = heap_Realloc(*(*a1 + 8), *(a1 + 360), 12 * a2 + 12);
  if (v4)
  {
    *(a1 + 360) = v4;
    *(a1 + 368) = v3;
LABEL_7:
    *(a1 + 370) = 0;
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

  return TOKENTNERROR(10);
}

uint64_t initMatchList(uint64_t a1)
{
  v2 = heap_Calloc(*(*a1 + 8), 1, 32);
  *(a1 + 376) = v2;
  if (v2)
  {
    *(a1 + 384) = 3;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

    return TOKENTNERROR(10);
  }
}

void *freeMatchList(void *result)
{
  v1 = result;
  v2 = result[47];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[47] = 0;
  }

  *(v1 + 96) = 0;
  return result;
}

uint64_t resetMatchList(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v3 = a2;
  if (a2 <= 3 && (a2 != 3 || *(a1 + 384) < 4u))
  {
    goto LABEL_7;
  }

  v4 = heap_Realloc(*(*a1 + 8), *(a1 + 376), 8 * a2 + 8);
  if (v4)
  {
    *(a1 + 376) = v4;
    *(a1 + 384) = v3;
LABEL_7:
    *(a1 + 386) = 0;
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

  return TOKENTNERROR(10);
}

uint64_t initAlignmentData(uint64_t a1)
{
  v2 = heap_Calloc(*(*a1 + 8), 1, 2 * *(a1 + 314) + 2);
  *(a1 + 536) = v2;
  if (v2 && (*(a1 + 544) = 0, v3 = heap_Calloc(*(*a1 + 8), 1, 2 * *(a1 + 314) + 2), (*(a1 + 520) = v3) != 0))
  {
    *(a1 + 528) = 0;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

    return TOKENTNERROR(10);
  }
}

void *freeAlignmentData(void *result)
{
  v1 = result;
  v2 = result[67];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[67] = 0;
  }

  *(v1 + 272) = 0;
  v3 = v1[65];
  if (v3)
  {
    result = heap_Free(*(*v1 + 8), v3);
    v1[65] = 0;
  }

  *(v1 + 264) = 0;
  return result;
}

uint64_t resetAlignmentData(uint64_t result)
{
  *(result + 528) = 0;
  *(result + 544) = 0;
  return result;
}

uint64_t initStrRes(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 280);
  *(a2 + 12) = v4;
  v5 = heap_Calloc(*(*a1 + 8), 1, v4);
  *a2 = v5;
  if (v5)
  {
    *v5 = 0;
    *(a2 + 8) = *(a2 + 12);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

    return TOKENTNERROR(10);
  }
}

uint64_t resetStrRes(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 12);
  if (*(a2 + 8) <= v3)
  {
    result = 0;
  }

  else
  {
    result = reallocStrRes(a1, a2, v3);
  }

  if (*a2)
  {
    **a2 = 0;
    *(a2 + 10) = 0;
  }

  return result;
}

uint64_t reallocStrRes(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v6 = heap_Realloc(*(*a1 + 8), *a2, a3 + 1);
  if (v6)
  {
    *a2 = v6;
    *(a2 + 8) = v3;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);

    return TOKENTNERROR(10);
  }
}

uint64_t growStrRes(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8) <= a3)
  {
    return reallocStrRes(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

void *clearStrRes(void *result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = *a2;
    if (*a2)
    {
      result = heap_Free(result[1], v3);
      *a2 = 0;
    }
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t add2StringV2(uint64_t *a1, uint64_t a2, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  if (!*__s)
  {
    return 0;
  }

  v6 = strlen(__s);
  v7 = v6;
  v8 = *(a2 + 8);
  if (*(a2 + 10) + v6 >= v8)
  {
    result = reallocStrRes(a1, a2, (v8 + v6));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(a2 + 10))
    {
      **a2 = 0;
    }
  }

  strcat(*a2, __s);
  result = 0;
  *(a2 + 10) += v7;
  return result;
}

uint64_t add2StringV3(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 10);
  if (!*(a3 + 10))
  {
    return 0;
  }

  v6 = *(a2 + 8);
  if (*(a2 + 10) + v3 >= v6)
  {
    result = reallocStrRes(a1, a2, (v6 + v3));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(a2 + 10))
    {
      **a2 = 0;
    }
  }

  strcat(*a2, *a3);
  result = 0;
  *(a2 + 10) += *(a3 + 10);
  return result;
}

uint64_t add2StringV4(uint64_t *a1, uint64_t a2, unsigned int a3, __int16 a4)
{
  v7 = a4 - a3;
  if (*(a2 + 10) + (a4 - a3) >= *(a2 + 8))
  {
    result = reallocStrRes(a1, a2, (*(a2 + 10) + a4 - a3));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(a2 + 10))
    {
      **a2 = 0;
    }
  }

  strncat(*a2, (a1[38] + a3), v7);
  result = 0;
  *(a2 + 10) += v7;
  return result;
}

uint64_t add2StringV5(uint64_t *a1, uint64_t a2, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  if (!*__s)
  {
    return 0;
  }

  v6 = strlen(__s);
  v7 = *(a2 + 10);
  if (v7 + v6 + 1 >= *(a2 + 8))
  {
    result = reallocStrRes(a1, a2, (v7 + v6 + 1));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = *(a2 + 10);
    if (!*(a2 + 10))
    {
      **a2 = 0;
      v7 = *(a2 + 10);
    }
  }

  memcpy((*a2 + v7), __s, v6);
  result = 0;
  *(*a2 + *(a2 + 10) + v6) = 0;
  *(a2 + 10) += v6 + 1;
  return result;
}

uint64_t TOK_IS_PUNCT(unsigned __int8 *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = utf8_determineUTF8CharLength(*a1);
  __strncpy_chk();
  v4[v1] = 0;
  v2 = strlen(v4);
  result = utf8_BelongsToSet(0xAu, v4, 0, v2);
  if (result != 1)
  {
    result = utf8_BelongsToSet(0xBu, v4, 0, v2);
    if (result != 1)
    {
      result = utf8_BelongsToSet(0xCu, v4, 0, v2);
      if (result != 1)
      {
        return utf8_BelongsToSet(0xDu, v4, 0, v2) == 1;
      }
    }
  }

  return result;
}

uint64_t TOK_IS_ALPHANUM(unsigned __int8 *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = utf8_determineUTF8CharLength(*a1);
  __strncpy_chk();
  v4[v1] = 0;
  v2 = strlen(v4);
  if (utf8_strchr(g_szSpace_0, v4))
  {
    return 0;
  }

  result = utf8_BelongsToSet(9u, v4, 0, v2);
  if (result != 1)
  {
    return 0;
  }

  return result;
}

uint64_t TOK_COUNT_SP_WORDS(const char *a1)
{
  if (a1 && (v2 = strlen(a1)) != 0)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (utf8_strchr(g_szSpace_0, &a1[v3]))
      {
        while (v3 < v2 && utf8_strchr(g_szSpace_0, &a1[v3]))
        {
          v3 += utf8_determineUTF8CharLength(a1[v3]);
        }
      }

      else
      {
        ++v4;
        while (v3 < v2 && !utf8_strchr(g_szSpace_0, &a1[v3]))
        {
          v3 += utf8_determineUTF8CharLength(a1[v3]);
        }
      }
    }

    while (v3 < v2);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t tokenRecordReadFieldLD_T_FROMPOS(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v6 = (*(a1[8] + 184))(a1[9], a1[10], a2, 1, &v9 + 2);
  v7 = 24031;
  if ((v6 & 0x80000000) == 0 && HIWORD(v9) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 1, 1, a3, &v9);
    if (v9 == 1)
    {
      return 0;
    }

    v7 = 24030;
  }

  log_OutPublic(*(*a1 + 32), a1[23], v7, 0);
  return TOKENTNERROR(0);
}

uint64_t tokenRecordReadFieldLD_T_TOPOS(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v6 = (*(a1[8] + 184))(a1[9], a1[10], a2, 2, &v9 + 2);
  v7 = 24030;
  if ((v6 & 0x80000000) == 0 && HIWORD(v9) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 2, 1, a3, &v9);
    if (v9 == 1)
    {
      return 0;
    }

    v7 = 24031;
  }

  log_OutPublic(*(*a1 + 32), a1[23], v7, 0);
  return TOKENTNERROR(0);
}

uint64_t tokenRecordReadFieldLD_T_TYPE(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v6 = (*(a1[8] + 184))(a1[9], a1[10], a2, 0, &v8 + 2);
  result = 0;
  if ((v6 & 0x80000000) == 0 && HIWORD(v8) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 0, 1, a3, &v8);
    result = 0;
    if (v8 != 1)
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24032, 0);
      return TOKENTNERROR(0);
    }
  }

  return result;
}

uint64_t tokenRecordReadFieldLD_T_TNTAG(void *a1, uint64_t a2, _BYTE *a3)
{
  v7 = 0;
  *a3 = 0;
  if (((*(a1[8] + 184))(a1[9], a1[10], a2, 4, &v7 + 2) & 0x80000000) == 0 && HIWORD(v7) == 1)
  {
    (*(a1[8] + 168))(a1[9], a1[10], a2, 4, 32, a3, &v7);
  }

  return 0;
}

uint64_t tokenRecordReadFieldLD_T_LANGMAP(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (((*(a1[8] + 184))(a1[9], a1[10], a2, 6, &v7 + 2) & 0x80000000) == 0 && HIWORD(v7) == 1)
  {
    (*(a1[8] + 176))(a1[9], a1[10], a2, 6, a3, &v7);
  }

  return 0;
}

uint64_t tokenRecordDirectReadFieldLD_T_NORM(void *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  *a3 = 0;
  if (((*(a1[8] + 184))(a1[9], a1[10], a2, 3, &v7 + 2) & 0x80000000) == 0 && HIWORD(v7) == 1)
  {
    (*(a1[8] + 176))(a1[9], a1[10], a2, 3, a3, &v7);
  }

  return 0;
}

uint64_t dumpTokenRecordsInLingDB(void *a1, const char *a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (!a1[38])
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0);
LABEL_6:

    return TOKENTNERROR(7);
  }

  if (a3 == 1)
  {
    strcpy(v15, "<LOGFE> ");
  }

  else
  {
    v15[0] = 0;
  }

  log_OutText(*(*a1 + 32), a1[23], 4, 0, "%stokentn : dumpTokenRecordsInLingDB : Begin : %s", v15, a2);
  FieldLD_T_FROMPOS = (*(a1[8] + 104))(a1[9], a1[10], 1, 0, &v14 + 2);
  if ((FieldLD_T_FROMPOS & 0x80000000) != 0)
  {
LABEL_31:
    FieldLD_T_TYPE = FieldLD_T_FROMPOS;
  }

  else
  {
    FieldLD_T_TYPE = (*(a1[8] + 104))(a1[9], a1[10], 3, HIWORD(v14), &v14);
    if (!FieldLD_T_TYPE)
    {
      v7 = v14;
      if (v14)
      {
        while (1)
        {
          FieldLD_T_FROMPOS = tokenRecordReadFieldLD_T_FROMPOS(a1, v7, &v10 + 2);
          if ((FieldLD_T_FROMPOS & 0x80000000) != 0)
          {
            goto LABEL_31;
          }

          FieldLD_T_FROMPOS = tokenRecordReadFieldLD_T_TOPOS(a1, v14, &v10);
          if ((FieldLD_T_FROMPOS & 0x80000000) != 0)
          {
            goto LABEL_31;
          }

          FieldLD_T_TYPE = tokenRecordReadFieldLD_T_TYPE(a1, v14, &v11);
          if ((FieldLD_T_TYPE & 0x80000000) != 0)
          {
            goto LABEL_32;
          }

          if (v11 - 5 <= 1)
          {
            tokenRecordReadFieldLD_T_TNTAG(a1, v14, v16);
            if (v11 == 6)
            {
              tokenRecordDirectReadFieldLD_T_NORM(a1, v14, &v12);
              tokenRecordReadFieldLD_T_LANGMAP(a1, v14, &v13);
            }

            FieldLD_T_TYPE = 0;
          }

          if (v10 < HIWORD(v10))
          {
            break;
          }

          v8 = *(a1 + 156);
          if (v10 > v8)
          {
            log_OutPublic(*(*a1 + 32), a1[23], 24055, "%s%d%s%d", "toPos=", v10, " sentLen=", v8);
            return TOKENTNERROR(0);
          }

          strncpy(a1[69], (a1[38] + HIWORD(v10)), v10 - HIWORD(v10));
          *(a1[69] - HIWORD(v10) + v10) = 0;
          if (v11 > 4)
          {
            if (v11 == 5)
            {
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "%s[dbId=%d] %3d,%3d ESC(%-9s) %s ", v15, v14, HIWORD(v10));
            }

            else if (v11 == 6)
            {
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "%s[dbId=%d] %3d,%3d %-15s %s %s langMap=%s", v15, v14, HIWORD(v10), v10, v16);
            }
          }

          else
          {
            v9 = 0;
            (*(a1[8] + 264))(a1[9], a1[10], v11, &v9);
            log_OutText(*(*a1 + 32), a1[23], 5, 0, "%s[dbId=%d] %3d,%3d %-15s %s", v15, v14, HIWORD(v10));
          }

          if (!(*(a1[8] + 120))(a1[9], a1[10], v14, &v14))
          {
            v7 = v14;
            if (v14)
            {
              continue;
            }
          }

          goto LABEL_32;
        }

        log_OutPublic(*(*a1 + 32), a1[23], 24055, "%s%d%s%d", "fromPos=", HIWORD(v10), " toPos=", v10);
        return TOKENTNERROR(0);
      }
    }
  }

LABEL_32:
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "%stokentn : dumpTokenRecordsInLingDB End (%x)", v15, FieldLD_T_TYPE);
  return FieldLD_T_TYPE;
}

uint64_t dumpTokenLDO(uint64_t a1, const char *a2, int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = 0;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (!*(a1 + 304))
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0);
LABEL_6:

    return TOKENTNERROR(7);
  }

  if (a3 == 1)
  {
    strcpy(v36, "<LOGFE> ");
  }

  else
  {
    v36[0] = 0;
  }

  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%stokentn : dumpTokenLDO : Begin : %s", v36, a2);
  v5 = *(*(a1 + 264) + 16);
  LDOObject_GetCategory(v5, &v35);
  v6 = 0;
  v7 = *(v5 + 80);
  v8 = *(v5 + 88);
  if (v7 >= v8)
  {
LABEL_14:
    LDO_GetLabels(*(a1 + 264), &v32);
    v18 = v32.n128_u64[1];
    v19 = v33;
    if (v32.n128_u64[1] >= v33)
    {
LABEL_29:
      log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%stokentn : dumpTokenLDO End (%x)", v36, v6);
    }

    else
    {
      while (1)
      {
        v31 = 0;
        v32.n128_u64[0] = 0;
        v34 = 0;
        v29 = 0;
        v30 = 0;
        U32Attribute = LDOObject_GetU32Attribute(*v18, "_TTYPE", &v29, &v29 + 1);
        v6 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v6 & 0x80000000) != 0)
        {
          break;
        }

        if (v29 == 1 && HIDWORD(v29) == 6)
        {
          AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v18);
          AbsoluteTo = LDOLabel_GetAbsoluteTo(*v18);
          StringAttribute = LDOObject_GetStringAttribute(*v18, "TNTAG", &v29, &v32);
          v25 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v25 & 0x80000000) != 0)
          {
            return v25;
          }

          v26 = LDOObject_GetStringAttribute(*v18, "NORM", &v29, &v34);
          v25 = LH_ERROR_to_VERROR(v26);
          if ((v25 & 0x80000000) != 0)
          {
            return v25;
          }

          v27 = LDOObject_GetStringAttribute(*v18, "REGEXSUBMATCHES", &v29, &v31);
          v6 = LH_ERROR_to_VERROR(v27);
          if ((v6 & 0x80000000) != 0)
          {
            return v6;
          }

          if (*(a1 + 960) == 1)
          {
            log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%s%3d,%3d : type=TOKEN_INT_TN TNTAG=%-15s NORM=%s REGEXSUBMATCHES=%s", v36, AbsoluteFrom, AbsoluteTo);
          }

          else
          {
            v28 = LDOObject_GetStringAttribute(*v18, "DCTMATCHES", &v29, &v30);
            v6 = LH_ERROR_to_VERROR(v28);
            if ((v6 & 0x80000000) != 0)
            {
              return v6;
            }

            log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "%s%3d,%3d : type=TOKEN_INT_TN TNTAG=%-15s NORM=%s REGEXSUBMATCHES=%s DCTMATCHES=%s", v36, AbsoluteFrom, AbsoluteTo, v32.n128_u64[0]);
          }
        }

        if (++v18 >= v19)
        {
          goto LABEL_29;
        }
      }
    }
  }

  else
  {
    v9 = 0;
    while (1)
    {
      v32.n128_u64[0] = 0;
      v34 = 0;
      LODWORD(v31) = 0;
      LODWORD(v30) = 0;
      LDOObject_GetType(*v7, &v32);
      v10 = LDOTreeNode_ComputeText(*v7, &v34);
      v6 = LH_ERROR_to_VERROR(v10);
      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      ++v9;
      LDOTreeNode_ComputeAbsoluteFrom(*v7, &v31);
      v11 = *v7++;
      LDOTreeNode_ComputeAbsoluteTo(v11, &v30);
      v12 = *(*a1 + 32);
      v13 = *(a1 + 184);
      v14 = v32.n128_u64[0];
      v15 = v31;
      v16 = v30;
      v17 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v34);
      log_OutText(v12, v13, 4, 0, "%sToken[%d] %d,%d : %s %s", v36, v9, v15, v16, v14, v17);
      OOC_PlacementDeleteObject(a1 + 224, v34);
      if (v7 >= v8)
      {
        goto LABEL_14;
      }
    }
  }

  return v6;
}

uint64_t saveExpansionInLDO(uint64_t a1, char *a2, const char *a3, char *a4, char *a5, char *a6, unsigned int a7, unsigned __int16 *a8)
{
  v39 = 0;
  v8 = *a8;
  v37 = a8[1];
  v38 = v8;
  if (a1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokentn : saveExpansionInLingDB Begin (%s)", a3);
    v16 = LDO_AddLabelOnSubstring(*(a1 + 264), "TOKEN", "TOKEN", &v38, &v37, &v39);
    v17 = LH_ERROR_to_VERROR(v16);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    LDOObject_SetU32Attribute(v39, "_TTYPE", 6);
    v17 = LH_ERROR_to_VERROR(v18);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    v19 = LDOObject_SetStringAttribute(v39, "TNTAG", a2);
    v17 = LH_ERROR_to_VERROR(v19);
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    v20 = LDOObject_SetStringAttribute(v39, "NORM", &a3[a7]);
    v21 = LH_ERROR_to_VERROR(v20);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    if (a6)
    {
      v22 = LDOObject_SetStringAttribute(v39, "PATTERN", a6);
      v21 = LH_ERROR_to_VERROR(v22);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    if (a4)
    {
      v23 = LDOObject_SetStringAttribute(v39, "REGEXSUBMATCHES", a4);
      v21 = LH_ERROR_to_VERROR(v23);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    if (a5)
    {
      v24 = LDOObject_SetStringAttribute(v39, "DCTMATCHES", a5);
      v21 = LH_ERROR_to_VERROR(v24);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    v25 = *(a1 + 544);
    if (v25 >= 2)
    {
      LDOObject_SetU32Attribute(v39, "_MRKRD", v25);
      v17 = LH_ERROR_to_VERROR(v26);
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      v27 = heap_Calloc(*(*a1 + 8), *(a1 + 544), 4);
      if (!v27)
      {
        v21 = 10;
        goto LABEL_22;
      }

      v28 = v27;
      v29 = *(a1 + 544);
      if (*(a1 + 544))
      {
        v30 = *(a1 + 520);
        v31 = *(a1 + 544);
        v32 = v27;
        do
        {
          v33 = *v30++;
          *v32++ = v33;
          --v31;
        }

        while (v31);
      }

      v34 = LDOObject_SetListU32Attribute(v39, "_MRK", v27, v29);
      v21 = LH_ERROR_to_VERROR(v34);
      heap_Free(*(*a1 + 8), v28);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    if (!*(a1 + 418))
    {
LABEL_22:
      log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokentn : saveExpansionInLingDB End (%x) ", v21);
      return v21;
    }

    v35 = LDOObject_SetStringAttribute(v39, "LANGMAP", (*(a1 + 408) + a7));
    v17 = LH_ERROR_to_VERROR(v35);
LABEL_21:
    v21 = v17;
    goto LABEL_22;
  }

  return TOKENTNERROR(7);
}

uint64_t setDomainsOnSentence(uint64_t *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  if (a1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : setDomainsOnSentence Begin");
    DomainDefBlockInfo = dumpTokenRecordsInLingDB(a1, "TRACE", 1);
    if ((DomainDefBlockInfo & 0x80000000) == 0)
    {
      FEData_blockData_getDomains2SearchIn(a1, *(a1 + 168), a1[43], v46, &v44, 0);
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : %d block(s) to search in", v44);
      if (v44)
      {
        for (i = 0; i < v44; ++i)
        {
          FEData_blockData_newGetDomainDefBlockInfo(a1, v46[i], &v43);
          v4 = v43;
          if (*(v43 + 12))
          {
            v5 = 0;
            v6 = 0;
            do
            {
              v7 = &v4[2][v5];
              v8 = *(v7 + 6);
              v9 = (*(v7 + 6) + *v7);
              if (*(v7 + 15) == 1)
              {
                v10 = "(remapped to normal)";
              }

              else
              {
                v10 = "";
              }

              if (*&v4[4][16 * v8 + 8])
              {
                v11 = "";
              }

              else
              {
                v11 = "(VIRTUAL)";
              }

              log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : domain[%d,%d,%s,type=%d] marker %s%s %s", i, v6++, *v4, *(v4 + 2), v9, v10, v11);
              v4 = v43;
              v5 += 72;
            }

            while (v6 < *(v43 + 12));
          }
        }

        v12 = *(a1[33] + 32);
        v13 = *(v12 + 24);
        if (v13 < *(v12 + 32))
        {
          do
          {
            __s2 = 0;
            v40 = 0;
            StringAttribute = LDOObject_GetStringAttribute(*v13, "TNTAG", &v40, &__s2);
            DomainDefBlockInfo = LH_ERROR_to_VERROR(StringAttribute);
            if ((DomainDefBlockInfo & 0x80000000) != 0)
            {
              return DomainDefBlockInfo;
            }

            if (v40)
            {
              v39 = 0;
              v38 = 0;
              AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v13);
              v35 = v13;
              AbsoluteTo = LDOLabel_GetAbsoluteTo(*v13);
              log_OutText(*(*a1 + 32), a1[23], 5, 0, "doing DB token %s %d,%d", __s2, AbsoluteFrom, AbsoluteTo);
              if (v44)
              {
                v17 = 0;
                v37 = AbsoluteFrom;
                v36 = AbsoluteFrom;
                do
                {
                  FEData_blockData_newGetDomainDefBlockInfo(a1, v46[v17], &v43);
                  IsRemappable = FEData_blockData_IsRemappable(a1, __s2, &v39, &v38 + 1, &v38);
                  v42 = 0;
                  v19 = __s2;
                  if (IsRemappable == 1)
                  {
                    log_OutText(*(*a1 + 32), a1[23], 5, 0, "domain %s is remappable to %s", __s2, v39);
                    v20 = HIWORD(v38);
                    v21 = v38;
                    DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v38, &v42);
                    if ((DomainDefBlockInfo & 0x80000000) != 0)
                    {
                      return DomainDefBlockInfo;
                    }

                    v22 = v42;
                    if (v42)
                    {
                      goto LABEL_30;
                    }

                    log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%s", "skipping undefined remapped domain:", v39);
                  }

                  else
                  {
                    v22 = v43;
                    v23 = *(v43 + 12);
                    if (*(v43 + 12))
                    {
                      v24 = 0;
                      v25 = v43[2];
                      while (strcmp((*(v25 + 6) + *v25), v19))
                      {
                        ++v24;
                        v25 += 72;
                        if (v23 == v24)
                        {
                          goto LABEL_41;
                        }
                      }

                      v21 = v46[v17];
                      v42 = v22;
                      v20 = v24;
LABEL_30:
                      v26 = v22[2];
                      DomainDefBlockInfo = FERuntimeData_AddDomainRange(a1, &v45);
                      if ((DomainDefBlockInfo & 0x80000000) != 0)
                      {
                        return DomainDefBlockInfo;
                      }

                      v27 = &v26[72 * v20];
                      v28 = v45;
                      *(v45 + 6) = v21;
                      *(v28 + 4) = v20;
                      *v28 = v37;
                      *(v28 + 2) = AbsoluteTo;
                      *(v28 + 8) = 1;
                      log_OutText(*(*a1 + 32), a1[23], 5, 0, "Set Active Domain[%s:%s] range %d,%d", *v42, (*(v27 + 6) + *v27), v36, AbsoluteTo);
                      if (!strcmp((*(v27 + 6) + *v27), a1[36]) || *(v27 + 15) == 1)
                      {
                        log_OutText(*(*a1 + 32), a1[23], 5, 0, "normal domain OR was remapped to EscNormal - set additional domains, if any");
                        v29 = v43;
                        if (*(v43 + 12))
                        {
                          v30 = 0;
                          v31 = 48;
                          do
                          {
                            if (v20 != v30)
                            {
                              v32 = v29[2];
                              if (!strcmp((*&v32[v31] + *&v32[v31 - 48]), a1[36]) || *&v32[v31 + 12] == 1)
                              {
                                DomainDefBlockInfo = FERuntimeData_AddDomainRange(a1, &v45);
                                if ((DomainDefBlockInfo & 0x80000000) != 0)
                                {
                                  return DomainDefBlockInfo;
                                }

                                v33 = v45;
                                *(v45 + 6) = v46[v17];
                                *(v33 + 4) = v30;
                                *v33 = v37;
                                *(v33 + 2) = AbsoluteTo;
                                *(v33 + 8) = 1;
                                log_OutText(*(*a1 + 32), a1[23], 5, 0, "Set (as mapped to normal) Active Domain[%s:%s] range %d,%d", *v43, (*&v32[v31] + *&v32[v31 - 48]), v36, AbsoluteTo);
                                v29 = v43;
                              }
                            }

                            ++v30;
                            v31 += 72;
                          }

                          while (v30 < *(v29 + 12));
                        }
                      }
                    }
                  }

LABEL_41:
                  ++v17;
                }

                while (v17 < v44);
              }

              v13 = v35;
            }

            ++v13;
          }

          while (v13 < *(*(a1[33] + 32) + 32));
        }

        log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : setDomainsOnSentence End (%x)", DomainDefBlockInfo);
      }

      else
      {
        return 0;
      }
    }

    return DomainDefBlockInfo;
  }

  else
  {

    return TOKENTNERROR(7);
  }
}

uint64_t mergeDomainsOnSentence(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  if (a1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : mergeDomainsOnSentence Begin");
    v28 = 0;
    FERuntimeData_GetActiveDomains(a1, v31, &v28, 0, *(a1 + 156), 1);
    if (v28)
    {
      v2 = 0;
      v3 = 1;
      do
      {
        FERuntimeData_GetDomainRange(a1, v31[v2], &v30);
        DomainBlockIndex = FERuntimeData_GetDomainBlockIndex(a1, v31[v2++], &v27, &v26 + 1);
        v5 = v28;
        v6 = v3;
        if (v2 < v28)
        {
          while (1)
          {
            FERuntimeData_GetDomainRange(a1, v31[v6], &v29);
            v7 = FERuntimeData_GetDomainBlockIndex(a1, v31[v6], &v26, &v25);
            if (*(v29 + 2) == 1 && v26 == v27)
            {
              v8 = v25;
              if (v25 == HIWORD(v26))
              {
                v9 = *v30;
                if (v9 == *v29)
                {
                  v10 = v30[1];
                  if (v10 == v29[1])
                  {
                    *(v29 + 2) = 0;
                    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : Remove duplicate domain %d,%d RANGE %d,%d ?", 1, v8, v9, v10);
                  }
                }
              }
            }

            if ((v7 & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            ++v6;
            v5 = v28;
            if (v6 >= v28)
            {
              goto LABEL_15;
            }
          }
        }

        v7 = DomainBlockIndex;
LABEL_15:
        ++v3;
      }

      while (v2 < v5);
      if (v5)
      {
        v11 = 0;
        while (1)
        {
          FERuntimeData_GetDomainRange(a1, v31[v11], &v30);
          DomainDefBlockInfo = FERuntimeData_GetDomainBlockIndex(a1, v31[v11], &v27, &v26 + 1);
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v27, &v24);
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          v13 = (*(v24 + 16) + 72 * HIWORD(v26));
          if (*(*(v24 + 32) + 16 * v13[6] + 8) && *(v30 + 2) == 1)
          {
            v14 = v30[1];
            log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : Modify domain %s RANGE %d,%d ?", (*(v13 + 6) + *v13), *v30, v14);
            if (v11 < v28)
            {
              v15 = v11;
              do
              {
                FERuntimeData_GetDomainRange(a1, v31[v15], &v29);
                DomainDefBlockInfo = FERuntimeData_GetDomainBlockIndex(a1, v31[v15], &v26, &v25);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_43;
                }

                DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v26, &v23);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_43;
                }

                v17 = v29;
                v16 = v30;
                if (v29 != v30 && *(v29 + 2) == 1)
                {
                  v18 = *v29;
                  if (v18 == v14 || v18 == *v30 && v29[1] == v30[1])
                  {
                    v19 = (*(v23 + 16) + 72 * v25);
                    v20 = (*(v13 + 6) + *v13);
                    v21 = (*(v19 + 6) + *v19);
                    if (!strcmp(v20, v21))
                    {
                      v14 = v17[1];
                      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : Modify domain %s RANGE %d,%d -> %d %d (merge with %s)", v20, *v16, v16[1], *v16, v14, v21);
                      *(v29 + 2) = 0;
                    }
                  }
                }
              }

              while (++v15 < v28);
            }

            if (v30[1] != v14)
            {
              DomainDefBlockInfo = FERuntimeData_UpdateDomainRange(a1, v11, v14);
              if ((DomainDefBlockInfo & 0x80000000) != 0)
              {
                goto LABEL_43;
              }
            }
          }

          if (++v11 >= v28)
          {
            goto LABEL_42;
          }
        }
      }

      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_44;
      }
    }

LABEL_42:
    DomainDefBlockInfo = FERuntimeData_PruneAndDumpActiveDomains(a1);
LABEL_43:
    v7 = DomainDefBlockInfo;
LABEL_44:
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokentn : mergeDomainsOnSentence End (%x)", v7);
    return v7;
  }

  else
  {

    return TOKENTNERROR(7);
  }
}

uint64_t tokentn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2304778241;
  }

  result = 0;
  *a2 = &ITokenizer_0;
  return result;
}

uint64_t tokenTN_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2304778247;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t tokenTN_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v5 = 2304778250;
  v33 = 0;
  v34 = 0;
  if (!a5)
  {
    return 2304778247;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v38);
  if ((inited & 0x80000000) == 0)
  {
    inited = InitRsrcFunction(a1, a2, &v37);
    if ((inited & 0x80000000) == 0)
    {
      log_OutText(*(v38 + 32), "TOKENTN", 4, 0, "tokentn : ObjOpen Begin");
      v12 = heap_Calloc(*(v38 + 8), 1, 16);
      if (!v12)
      {
        log_OutPublic(*(v38 + 32), "TOKENTN", 21000, 0);
LABEL_43:
        log_OutText(*(v38 + 32), "TOKENTN", 4, 0, "tokentn : ObjOpen End (%x)", v5);
        return v5;
      }

      v13 = v12;
      *v12 = 0;
      *(v12 + 8) = 0;
      v14 = heap_Calloc(*(v38 + 8), 1, 968);
      if (v14)
      {
        v15 = v14;
        *v13 = v14;
        *(v13 + 8) = 58765;
        v16 = v38;
        *v14 = v38;
        *(v14 + 8) = a3;
        v17 = v37;
        *(v14 + 16) = a4;
        *(v14 + 24) = v17;
        *(v14 + 96) = 0;
        v18 = (v14 + 96);
        *(v14 + 32) = a1;
        *(v14 + 40) = a2;
        *(v14 + 104) = 0;
        *(v14 + 120) = 0;
        v19 = (v14 + 120);
        *(v14 + 128) = 0;
        *(v14 + 152) = 0;
        *(v14 + 160) = 0;
        *(v14 + 176) = 0;
        *(v14 + 184) = "TOKENTN";
        *(v14 + 336) = 0;
        *(v14 + 344) = 0;
        *(v14 + 352) = 0;
        *(v14 + 548) = 0;
        *(v14 + 552) = 0;
        *(v14 + 520) = 0;
        *(v14 + 528) = 0;
        *(v14 + 536) = 0;
        *(v14 + 544) = 0;
        *(v14 + 288) = 0;
        *(v14 + 296) = 0;
        *(v14 + 608) = 257;
        v20 = (v14 + 612);
        *(v14 + 612) = 0;
        *(v14 + 960) = 0;
        *(v14 + 280) = 32;
        if ((paramc_ParamGetUInt(*(v16 + 40), "tokentninitstrlen", &v33 + 1) & 0x80000000) == 0)
        {
          *(v15 + 280) = WORD2(v33);
        }

        *(v15 + 282) = 5;
        if ((paramc_ParamGetUInt(*(v38 + 40), "tokentnmaxpcreframeblocks", &v33 + 1) & 0x80000000) == 0)
        {
          *(v15 + 282) = WORD2(v33);
        }

        *(v15 + 284) = 20;
        if ((paramc_ParamGetUInt(*(v38 + 40), "tokentnnumframesinblock", &v33 + 1) & 0x80000000) == 0)
        {
          *(v15 + 284) = WORD2(v33);
        }

        v21 = nuance_pcre_ObjOpen(a3, a4, v15 + 136);
        if ((v21 & 0x80000000) != 0)
        {
          v31 = v21;
          log_OutPublic(*(*v15 + 32), *(v15 + 184), 24021, 0);
          v5 = v31;
        }

        else
        {
          Object = addIdentifier2List_0(v15, "x");
          if ((Object & 0x80000000) == 0)
          {
            if ((objc_GetObject(*(v38 + 48), "FE_DCTLKP", &v35) & 0x80000000) != 0)
            {
              v5 = 0;
              v30 = 24022;
              goto LABEL_47;
            }

            v23 = v35;
            *(v15 + 88) = *(v35 + 8);
            *v18 = *(v23 + 16);
            if ((objc_GetObject(*(v38 + 48), "FE_DEPES", &v34) & 0x80000000) != 0)
            {
              v5 = 0;
              v30 = 24023;
              goto LABEL_47;
            }

            v24 = v34;
            *(v15 + 112) = *(v34 + 8);
            *v19 = *(v24 + 16);
            Object = objc_GetObject(*(v38 + 48), "LINGDB", &v36);
            if ((Object & 0x80000000) == 0)
            {
              *(v15 + 64) = *(v36 + 8);
              Object = FEData_ObjOpen(a3, a4, v15);
              if ((Object & 0x80000000) == 0)
              {
                Object = FERuntimeData_ObjOpen(v15);
                if ((Object & 0x80000000) == 0)
                {
                  Object = FEFunctionMap_ObjOpen(v15);
                  if ((Object & 0x80000000) == 0)
                  {
                    Object = tokenizer_ObjOpen(v15);
                    if ((Object & 0x80000000) == 0)
                    {
                      Object = textnormalizer_ObjOpen(v15);
                      if ((Object & 0x80000000) == 0)
                      {
                        Object = createIDStrings_0(v15);
                        if ((Object & 0x80000000) == 0)
                        {
                          if (!*(v15 + 336))
                          {
                            goto LABEL_49;
                          }

                          v25 = 0;
                          do
                          {
                            log_OutText(*(*v15 + 32), *(v15 + 184), 5, 0, "tokentn : identifier=%s", *(*(v15 + 344) + 8 * v25++));
                            v26 = *(v15 + 336);
                          }

                          while (v25 < v26);
                          if (!*(v15 + 336))
                          {
LABEL_49:
                            log_OutPublic(*(*v15 + 32), "TOKENTN", 24024, 0);
                            v5 = 2304778240;
                            goto LABEL_42;
                          }

                          Object = FEData_blockData_loadDataFiles(v15, v26, *(v15 + 344), (v15 + 616));
                          if ((Object & 0x80000000) == 0)
                          {
                            Object = getFECFGInfo_0(v15);
                            if ((Object & 0x80000000) == 0)
                            {
                              Object = nn_tn_checkIfActive(a3, a4, v38, *(v15 + 184), v20);
                              if ((Object & 0x80000000) == 0)
                              {
                                if (*v20 != 1 || (Object = nn_tn_Load(a3, a4, *(v15 + 32), *(v15 + 40), v38, *(v15 + 184), *(v15 + 88), v27, *(v15 + 96), *(v15 + 104), v15 + 640), (Object & 0x80000000) == 0))
                                {
                                  *(v15 + 192) = heap_Alloc;
                                  *(v15 + 200) = heap_Calloc;
                                  *(v15 + 208) = heap_Realloc;
                                  *(v15 + 216) = heap_Free;
                                  v28 = OOCAllocator_Con(v15 + 224, (v15 + 192), *(*v15 + 8));
                                  v5 = LH_ERROR_to_VERROR(v28);
                                  if ((v5 & 0x80000000) != 0)
                                  {
                                    log_OutPublic(*(*v15 + 32), "TOKENTN", 24024, 0);
                                  }

                                  else
                                  {
                                    *(v15 + 264) = 0;
                                    if (*(v15 + 616) != 1)
                                    {
LABEL_48:
                                      *a5 = v13;
                                      *(a5 + 8) = 58764;
                                      goto LABEL_43;
                                    }

                                    v29 = load_lua_code_0(v15, &v33);
                                    v5 = v29;
                                    if ((v29 & 0x80000000) == 0 && !v33)
                                    {
                                      v30 = 24071;
LABEL_47:
                                      log_OutPublic(*(*v15 + 32), *(v15 + 184), v30, 0);
                                      goto LABEL_48;
                                    }

                                    if ((v29 & 0x80000000) == 0)
                                    {
                                      goto LABEL_48;
                                    }
                                  }

                                  goto LABEL_42;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v5 = Object;
        }
      }

LABEL_42:
      tokenTN_loc_ObjClose(v38, v13);
      goto LABEL_43;
    }
  }

  return inited;
}

uint64_t tokenTN_ObjClose(uint64_t **a1, int a2)
{
  v3 = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v4 = *a1;
    v5 = (*a1)[23];
    log_OutText(*(**a1 + 32), v5, 4, 0, "tokentn : ObjClose Begin");
    v6 = *v4;
    v3 = FEData_blockData_unloadDataFiles(v4);
    v7 = v4[34];
    if (v7)
    {
      OOC_PlacementDeleteObject((v4 + 28), v7);
      v4[34] = 0;
    }

    kaldi::nnet1::Component::IsUpdatable((v4 + 28));
    tokenTN_loc_ObjClose(v6, a1);
    log_OutText(*(v6 + 32), v5, 4, 0, "tokentn : ObjClose End (%x)", v3);
  }

  return v3;
}

uint64_t tokenTN_ObjReopen(uint64_t *a1, int a2)
{
  v3 = 2304778248;
  v15 = 0;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v4 = *a1;
    v5 = *(v4 + 344);
    if (v5)
    {
      if (*(v4 + 336))
      {
        v6 = 0;
        do
        {
          heap_Free(*(*v4 + 8), *(*(v4 + 344) + 8 * v6));
          *(*(v4 + 344) + 8 * v6++) = 0;
        }

        while (v6 < *(v4 + 336));
        v5 = *(v4 + 344);
      }

      heap_Free(*(*v4 + 8), v5);
      *(v4 + 344) = 0;
      *(v4 + 336) = 0;
      *(v4 + 352) = 0;
      *(v4 + 608) = 257;
    }

    IDStrings_0 = addIdentifier2List_0(v4, "x");
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    IDStrings_0 = createIDStrings_0(v4);
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    if (!*(v4 + 344))
    {
      return 6;
    }

    if (*(v4 + 336))
    {
      v8 = 0;
      do
      {
        log_OutText(*(*v4 + 32), *(v4 + 184), 5, 0, "tokentn : identifier=%s", *(*(v4 + 344) + 8 * v8++));
      }

      while (v8 < *(v4 + 336));
    }

    IDStrings_0 = getFECFGInfo_0(v4);
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    v9 = *(v4 + 288);
    if (v9)
    {
      heap_Free(*(*v4 + 8), v9);
      *(v4 + 288) = 0;
    }

    IDStrings_0 = FEData_blockData_unloadUnusedDataFiles(v4);
    if ((IDStrings_0 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    *(v4 + 960) = 0;
    v10 = *(v4 + 336);
    if (!*(v4 + 336))
    {
      log_OutPublic(*(*v4 + 32), "TOKENTN", 24024, 0);
      return 2304778240;
    }

    *(v4 + 616) = 0;
    IDStrings_0 = FEData_blockData_loadDataFiles(v4, v10, *(v4 + 344), (v4 + 616));
    if ((IDStrings_0 & 0x80000000) != 0 || *(v4 + 612) == 1 && (IDStrings_0 = nn_tn_UnLoad(*v4, *(v4 + 24), v4 + 640), (IDStrings_0 & 0x80000000) != 0))
    {
LABEL_30:
      v3 = IDStrings_0;
    }

    else
    {
      *(v4 + 612) = 0;
      v3 = nn_tn_checkIfActive(*(v4 + 8), *(v4 + 16), *v4, *(v4 + 184), (v4 + 612));
      if ((v3 & 0x80000000) == 0)
      {
        if (*(v4 + 612) != 1 || (v3 = nn_tn_Load(*(v4 + 8), *(v4 + 16), *(v4 + 32), *(v4 + 40), *v4, *(v4 + 184), *(v4 + 88), v11, *(v4 + 96), *(v4 + 104), v4 + 640), (v3 & 0x80000000) == 0))
        {
          if (*(v4 + 616) != 1)
          {
            return v3;
          }

          v12 = load_lua_code_0(v4, &v15);
          v3 = v12;
          if ((v12 & 0x80000000) == 0 && !v15)
          {
            log_OutPublic(*(*v4 + 32), *(v4 + 184), 24071, 0);
            return v3;
          }

          if ((v12 & 0x80000000) == 0)
          {
            return v3;
          }
        }
      }
    }

    v13 = *(v4 + 272);
    if (v13)
    {
      OOC_PlacementDeleteObject(v4 + 224, v13);
      *(v4 + 272) = 0;
    }

    kaldi::nnet1::Component::IsUpdatable((v4 + 224));
  }

  return v3;
}

uint64_t tokenTN_ProcessStart(uint64_t *a1, int a2)
{
  v3 = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v4 = *a1;
    log_OutText(*(*v4 + 32), *(v4 + 184), 4, 0, "tokentn : ProcessStart Begin");
    if (*(v4 + 336))
    {
      v3 = nuance_pcre_Init(*(v4 + 136), *(v4 + 144), *(v4 + 282), *(v4 + 284));
      if ((v3 & 0x80000000) != 0)
      {
        log_OutPublic(*(*v4 + 32), *(v4 + 184), 24051, 0);
      }

      log_OutText(*(*v4 + 32), *(v4 + 184), 4, 0, "tokentn : ProcessStart End (%x)", v3);
    }

    else
    {
      log_OutPublic(*(*v4 + 32), "TOKENTN", 24024, 0);
      return 2304778240;
    }
  }

  return v3;
}

uint64_t tokenTN_Process(uint64_t *a1, int a2, void *a3, int a4, _DWORD *a5)
{
  v24 = 0;
  v23 = 0;
  matched = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0)
  {
    return matched;
  }

  if ((safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {
    return matched;
  }

  v10 = *a1;
  log_OutText((*v10)[4], v10[23], 4, 0, "tokentn : Process Begin");
  v10[9] = a3;
  *(v10 + 20) = a4;
  *(v10 + 137) = log_GetLogLevel((*v10)[4]) > 4;
  v10[33] = 0;
  matched = LingDBHasSentence(v10[8], v10[9], v10[10], &v24);
  if ((matched & 0x80000000) != 0)
  {
    return matched;
  }

  if (!v24)
  {
    goto LABEL_32;
  }

  inited = initLDO((v10 + 28), v10 + 33);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  matched = importFromLingDB(*v10, v10[8], v10[9], v10[10], v10 + 33);
  if ((matched & 0x80000000) == 0)
  {
    v12 = v10[33];
    if (!v12)
    {
      goto LABEL_32;
    }

    v13 = LDO_ComputeText(v12, &v23);
    matched = LH_ERROR_to_VERROR(v13);
    if ((matched & 0x80000000) == 0)
    {
      v10[38] = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v23);
      *(v10 + 156) = LHString_Length(v23);
      if (!v10[38])
      {
        goto LABEL_18;
      }

      log_OutText((*v10)[4], v10[23], 5, 0, "<LOGFE> processing sentence : _%s_", v10[38]);
      inited = tokenTN_init_ProcessData(v10);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      if (*(v10 + 240) == 1 && *(v10 + 154) == 1)
      {
        inited = tokentn_AllInOneLoop(v10, 1);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_33;
        }

        if (*(v10 + 137) == 1)
        {
          inited = dumpTokenLDO(v10, "At End of btok Processing", 1);
          if ((inited & 0x80000000) != 0)
          {
            goto LABEL_33;
          }
        }
      }

      inited = tokentn_AllInOneLoop(v10, 0);
      if ((inited & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      matched = clearBTokMatchList(v10);
      if ((matched & 0x80000000) == 0)
      {
LABEL_18:
        v14 = v10[33];
        if (v14)
        {
          if (*(v10 + 154) != 1 || (v15 = v10[34]) == 0)
          {
LABEL_27:
            v17 = v10[33];
            if (v17)
            {
              matched = exportToLingDB(*v10, v10[8], v10[9], v10[10], (v10 + 28), v17, 1, 0);
              if ((matched & 0x80000000) != 0)
              {
                goto LABEL_34;
              }

              if (v10[38])
              {
                if (*(v10 + 137) == 1)
                {
                  matched = dumpTokenRecordsInLingDB(v10, "LINGDB At End of Processing", 1);
                  if ((matched & 0x80000000) != 0)
                  {
                    goto LABEL_34;
                  }
                }
              }
            }

            goto LABEL_32;
          }

          if (*(v10 + 137) != 1)
          {
LABEL_24:
            v16 = LuaVMLDO_RunFunction(v15, "run", v14);
            matched = LH_ERROR_to_VERROR(v16);
            if ((matched & 0x80000000) != 0)
            {
              log_OutPublic((*v10)[4], v10[23], 24072, 0);
              goto LABEL_34;
            }

            if (*(v10 + 137) == 1)
            {
              matched = dumpTokenLDO(v10, "At End of Processing; after Lua", 1);
              if ((matched & 0x80000000) != 0)
              {
                goto LABEL_34;
              }
            }

            goto LABEL_27;
          }

          inited = dumpTokenLDO(v10, "At End of Processing; before Lua", 1);
          if ((inited & 0x80000000) == 0)
          {
            v14 = v10[33];
            v15 = v10[34];
            goto LABEL_24;
          }

LABEL_33:
          matched = inited;
          goto LABEL_34;
        }

LABEL_32:
        *a5 = 1;
      }
    }
  }

LABEL_34:
  if (v23)
  {
    OOC_PlacementDeleteObject((v10 + 28), v23);
    v23 = 0;
  }

  v18 = v10[33];
  if (v18)
  {
    deinitLDO((v10 + 28), v18);
    v10[33] = 0;
  }

  v19 = v10[69];
  if (v19)
  {
    heap_Free((*v10)[1], v19);
    v10[69] = 0;
  }

  clearStrRes(*v10, (v10 + 49));
  clearStrRes(*v10, (v10 + 51));
  clearStrRes(*v10, (v10 + 61));
  clearStrRes(*v10, (v10 + 70));
  clearStrRes(*v10, (v10 + 72));
  clearStrRes(*v10, (v10 + 74));
  clearStrRes(*v10, (v10 + 63));
  clearStrRes(*v10, (v10 + 53));
  clearStrRes(*v10, (v10 + 59));
  clearStrRes(*v10, (v10 + 55));
  clearStrRes(*v10, (v10 + 57));
  freeAlignmentData(v10);
  freeMatchList(v10);
  freeSolutionList(v10);
  v20 = v10[40];
  if (v20)
  {
    heap_Free((*v10)[1], v20);
    v10[40] = 0;
  }

  v21 = v10[41];
  if (v21)
  {
    heap_Free((*v10)[1], v21);
    v10[41] = 0;
  }

  log_OutText((*v10)[4], v10[23], 4, 0, "tokentn : Process End (%x)", matched);
  return matched;
}

uint64_t tokenTN_ProcessEnd(uint64_t *a1, int a2)
{
  v3 = 2304778248;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v4 = *a1;
    log_OutText(*(**a1 + 32), *(*a1 + 184), 4, 0, "tokentn : ProcessEnd Begin");
    v5 = nuance_pcre_DeInit(*(v4 + 136), *(v4 + 144));
    log_OutText(*(*v4 + 32), *(v4 + 184), 4, 0, "tokentn : ProcessEnd End (%x)", v5);
    return 0;
  }

  return v3;
}

uint64_t addIdentifier2List_0(uint64_t a1, char *__s2)
{
  v4 = *(a1 + 336);
  if (*(a1 + 336))
  {
    v5 = *(a1 + 344);
    v6 = *(a1 + 336);
    v7 = v5;
    do
    {
      if (v5 && !strcmp(*v7, __s2))
      {
        return 0;
      }

      ++v7;
      --v6;
    }

    while (v6);
    v8 = heap_Realloc(*(*a1 + 8), *(a1 + 344), 8 * v4 + 8);
    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v8 = heap_Calloc(*(*a1 + 8), 1, 8);
  if (!v8)
  {
LABEL_11:
    v13 = 2304778250;
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);
    return v13;
  }

LABEL_9:
  *(a1 + 344) = v8;
  v9 = strlen(__s2);
  v10 = heap_Calloc(*(*a1 + 8), 1, (v9 + 1));
  v11 = *(a1 + 336);
  *(*(a1 + 344) + 8 * v11) = v10;
  v12 = *(*(a1 + 344) + 8 * v11);
  if (!v12)
  {
    goto LABEL_11;
  }

  strcpy(v12, __s2);
  v13 = 0;
  ++*(a1 + 336);
  return v13;
}

uint64_t createIDStrings_0(_BYTE *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  __s = 0;
  *__s2 = 0u;
  v20 = 0u;
  *v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  result = paramc_ParamGet(*(*a1 + 40), "langcode", &__s, 0);
  if ((result & 0x80000000) == 0)
  {
    v3 = __s;
    if (*__s)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = v3[v4];
        v17[v4] = v6;
        __s2[v4] = v6;
        v4 = ++v5;
      }

      while (strlen(v3) > v5);
    }

    strcpy(&__s2[2], "x");
    v17[3] = 0;
    result = paramc_ParamGet(*(*a1 + 40), "voice", &__s, 0);
    if ((result & 0x80000000) == 0)
    {
      v7 = __s;
      v8 = strlen(__s);
      if (v8 <= 0x1A)
      {
        if (v8)
        {
          v9 = 0;
          v10 = 0;
          do
          {
            v15[v9] = v7[v9];
            v9 = ++v10;
            v8 = strlen(v7);
          }

          while (v8 > v10);
        }

        v15[v8] = 0;
        if (strlen(__s2) >= 1)
        {
          v11 = 0;
          do
          {
            __s2[v11] = ssft_tolower(__s2[v11]);
            ++v11;
          }

          while (strlen(__s2) > v11);
        }

        if (strlen(v17) >= 1)
        {
          v12 = 0;
          do
          {
            v17[v12] = ssft_tolower(v17[v12]);
            ++v12;
          }

          while (strlen(v17) > v12);
        }

        if (strlen(v15) >= 1)
        {
          v13 = 0;
          do
          {
            v15[v13] = ssft_tolower(v15[v13]);
            ++v13;
          }

          while (strlen(v15) > v13);
        }

        result = addIdentifier2List_0(a1, __s2);
        if ((result & 0x80000000) == 0)
        {
          a1[352] = a1[336];
          result = addIdentifier2List_0(a1, v17);
          if ((result & 0x80000000) == 0)
          {
            return addIdentifier2List_0(a1, v15);
          }
        }
      }

      else
      {
        return 2304778240;
      }
    }
  }

  return result;
}

uint64_t getFECFGInfo_0(uint64_t a1)
{
  v2 = 2304778240;
  v13 = -1;
  __c_1 = 0;
  __c = 0;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_g2p", &__c_1, &v13, &__c) & 0x80000000) == 0)
  {
    if (v13 == 1 && __c_1 != 0)
    {
      v4 = *__c_1;
      v5 = strchr(*__c_1, __c);
      if (v5)
      {
        *v5 = 0;
        v4 = *__c_1;
      }

      *(a1 + 608) = atoi(v4);
    }

    v13 = -1;
    v6 = (*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_tn", &__c_1, &v13, &__c);
    if ((v6 & 0x80000000) == 0)
    {
      v7 = v6;
      if (v13 == 1 && __c_1)
      {
        v8 = *__c_1;
        v9 = strchr(*__c_1, __c);
        if (v9)
        {
          *v9 = 0;
          v8 = *__c_1;
        }

        *(a1 + 609) = atoi(v8);
      }

      return v7;
    }
  }

  return v2;
}

uint64_t load_lua_code_0(uint64_t *a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = a1[34];
  if (v4)
  {
    OOC_PlacementDeleteObject((a1 + 28), v4);
    a1[34] = 0;
  }

  kaldi::nnet1::Component::IsUpdatable((a1 + 28));
  IsLuaCodeAvailable = LuaVMLDO_IsLuaCodeAvailable(a1[1], a1[2], 0, a2);
  v6 = LH_ERROR_to_VERROR(IsLuaCodeAvailable);
  if ((v6 & 0x80000000) == 0)
  {
    if (*a2 != 1)
    {
      return v6;
    }

    *a2 = 0;
    v7 = OOCAllocator_Con((a1 + 28), a1 + 12, *(*a1 + 8));
    v8 = LH_ERROR_to_VERROR(v7);
    if ((v8 & 0x80000000) != 0 || (v9 = PNEW_LuaVMLDO_Con((a1 + 28), (a1 + 28), a1[1], a1[2], hlp_lua_log_callback_3, a1 + 34), v8 = LH_ERROR_to_VERROR(v9), (v8 & 0x80000000) != 0))
    {
      v6 = v8;
    }

    else
    {
      ScriptFromRIFF = LuaVMLDO_LoadScriptFromRIFF(a1[34], 0);
      v6 = LH_ERROR_to_VERROR(ScriptFromRIFF);
      if ((v6 & 0x80000000) == 0)
      {
        *a2 = 1;
        return v6;
      }
    }
  }

  v11 = a1[34];
  if (v11)
  {
    OOC_PlacementDeleteObject((a1 + 28), v11);
    a1[34] = 0;
  }

  kaldi::nnet1::Component::IsUpdatable((a1 + 28));
  return v6;
}

uint64_t tokenTN_loc_ObjClose(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    log_OutText(*(result + 32), "TOKENTN", 4, 0, "tokentn : loc ObjClose Begin");
    NullHandle = safeh_GetNullHandle();
    v6 = 0;
    if (!safeh_HandlesEqual(*a2, a2[1], NullHandle, v5))
    {
      result = safeh_HandleCheck(*a2, a2[1], 58765, 968);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v6 = result;
      v7 = *a2;
      v8 = tokenizer_ObjClose(*a2);
      if (v8 < 0)
      {
        v6 = v8;
      }

      v9 = textnormalizer_ObjClose(v7);
      if (v9 < 0)
      {
        v6 = v9;
      }

      v10 = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(v7 + 136), *(v7 + 144), v10, v11))
      {
        v12 = nuance_pcre_ObjClose(*(v7 + 136), *(v7 + 144));
        if (v12 < 0)
        {
          v6 = v12;
        }
      }

      v13 = FEData_ObjClose(v7);
      if (v13 < 0)
      {
        v6 = v13;
      }

      *(v7 + 152) = 0;
      v14 = FERuntimeData_ObjClose(v7);
      if (v14 < 0)
      {
        v6 = v14;
      }

      *(v7 + 176) = 0;
      v15 = FEFunctionMap_ObjClose(v7);
      if (v15 < 0)
      {
        v6 = v15;
      }

      *(v7 + 160) = 0;
      if (*(v7 + 88))
      {
        objc_ReleaseObject(*(v3 + 48), "FE_DCTLKP");
      }

      if (*(v7 + 112))
      {
        objc_ReleaseObject(*(v3 + 48), "FE_DEPES");
      }

      if (*(v7 + 64))
      {
        objc_ReleaseObject(*(v3 + 48), "LINGDB");
      }

      v16 = *(v7 + 344);
      if (v16)
      {
        if (*(v7 + 336))
        {
          v17 = 0;
          do
          {
            heap_Free(*(v3 + 8), *(*(v7 + 344) + 8 * v17));
            *(*(v7 + 344) + 8 * v17++) = 0;
          }

          while (v17 < *(v7 + 336));
          v16 = *(v7 + 344);
        }

        heap_Free(*(v3 + 8), v16);
      }

      v18 = *(v7 + 288);
      if (v18)
      {
        heap_Free(*(v3 + 8), v18);
      }

      if (*(v7 + 612) == 1)
      {
        v19 = nn_tn_UnLoad(*v7, *(v7 + 24), v7 + 640);
        if (v19 < 0)
        {
          v6 = v19;
        }
      }

      heap_Free(*(v3 + 8), v7);
    }

    heap_Free(*(v3 + 8), a2);
    return log_OutText(*(v3 + 32), "TOKENTN", 4, 0, "tokentn : loc ObjClose End (%x)", v6);
  }

  return result;
}

uint64_t tokenTN_init_ProcessData(uint64_t *a1)
{
  v2 = 2304778250;
  v3 = heap_Calloc(*(*a1 + 8), 1, *(a1 + 156) + 1);
  a1[69] = v3;
  if (v3)
  {
    *(a1 + 157) = 1;
    if (*(a1 + 156))
    {
      v4 = 0;
      while (utf8_strchr(g_szSpace_1, (a1[38] + v4)))
      {
        v4 += utf8_determineUTF8CharLength(*(a1[38] + v4));
        v5 = *(a1 + 156);
        if (v5 <= v4)
        {
          goto LABEL_8;
        }
      }

      v5 = *(a1 + 156);
LABEL_8:
      if (v5 > v4)
      {
        do
        {
          v4 = v4;
          if (utf8_strchr(g_szSpace_1, (a1[38] + v4)))
          {
            ++*(a1 + 157);
            for (i = *(a1[38] + v4); ; i = *(a1[38] + v4))
            {
              v4 += utf8_determineUTF8CharLength(i);
              if (*(a1 + 156) <= v4 || !utf8_strchr(g_szSpace_1, (a1[38] + v4)))
              {
                break;
              }
            }
          }

          else
          {
            LOWORD(v4) = v4 + utf8_determineUTF8CharLength(*(a1[38] + v4));
          }
        }

        while (*(a1 + 156) > v4);
      }
    }

    inited = initStrRes(a1, (a1 + 49));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 51));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 61));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 70));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 72));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 74));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 63));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 53));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 59));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 55));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initStrRes(a1, (a1 + 57));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initAlignmentData(a1);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = initMatchList(a1);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v2 = initSolutionList(a1);
    if ((v2 & 0x80000000) == 0)
    {
      v8 = heap_Calloc(*(*a1 + 8), 1, 40);
      a1[40] = v8;
      v9 = *a1;
      if (!v8)
      {
LABEL_33:
        log_OutPublic(*(v9 + 32), a1[23], 24048, 0);
        return 2304778250;
      }

      v10 = heap_Calloc(*(v9 + 8), 1, 48);
      a1[41] = v10;
      if (!v10)
      {
        v9 = *a1;
        goto LABEL_33;
      }
    }
  }

  return v2;
}

BOOL filteredTriggerType(int a1, unsigned int a2)
{
  if (!a1 || a1 == 1 && a2 == 2 || a1 == 2 && a2 == 1 || a1 == 3 && !a2 || a1 == 4 && a2 < 2)
  {
    return 1;
  }

  if (a1 == 6)
  {
    if (a2 - 1 < 2)
    {
      return 1;
    }
  }

  else if (a1 == 5)
  {
    return (a2 & 0xFFFFFFFD) == 0;
  }

  return 0;
}

uint64_t tokentn_ApplyOneRule(uint64_t *a1, uint64_t *a2, int a3, unsigned int a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8)
{
  if (!filteredTriggerType(a3, a4))
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "rule %s (token %s, %d,%d) blocked by triggerType %s", *(*a2 + 24), TOKENTSTR_1[a4]);
    return 0;
  }

  if (*(a1 + 240) == 1 && blockedByBtok(a1, a5, a6) == 1)
  {
    log_OutText(*(*a1 + 32), a1[23], 5, 0, "rule %s (token %s, %d,%d) blocked by prior btok", *(*a2 + 24));
    return 0;
  }

  v15 = *a2;
  v16 = *(*a2 + 8);
  v17 = *v16;
  *(v17 + 82) = 0;
  *(v17 + 40) = 0;
  v18 = *(v15 + 24);
  v16[2] = a1[38];
  v16[3] = v18;
  *(v17 + 88) = *(v15 + 48);
  *(v17 + 104) = a7;
  *(v17 + 106) = a8;
  *(v16 + 20) = *(v15 + 40);
  *(v16 + 26) = *(v15 + 44);
  *(v16 + 27) = *(v15 + 46);
  *(v16 + 11) = 0;
  *(v16 + 12) = 0;
  result = tokenizer_apply_regex_LongestMatch(a1, v15);
  if ((result & 0x80000000) == 0)
  {
    v20 = *(*a2 + 8);
    **(v20 + 8) = 0;
    *(v20 + 44) = 0;
  }

  return result;
}

uint64_t tokentn_AllInOneLoop(uint64_t a1, int a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v55 = 0;
  bzero(v61, 0x3E8uLL);
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v4 = *(*a1 + 32);
  v5 = *(a1 + 184);
  if (*(a1 + 960) == 1)
  {
    log_OutText(v4, v5, 4, 0, "tokentn : AllInOneLoop Begin (btok=%d)");
  }

  else
  {
    log_OutText(v4, v5, 4, 0, "tokentn : AllInOneLoop Begin");
  }

  if ((paramc_ParamGetInt(*(*a1 + 40), "maxTNNNcallspersent", &v52) & 0x80000000) == 0)
  {
    v6 = v52;
    *(a1 + 728) = v52;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "set maxNNCallsPerSent to %d", v6);
  }

  *(a1 + 730) = 0;
  v7 = *(a1 + 168);
  *(*(*v7 + 8) + 32) = a1;
  v8 = setDomainsOnSentence(a1);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = mergeDomainsOnSentence(a1);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = *v7;
    *(*(*v7 + 8) + 16) = *(a1 + 304);
    *(v10 + 64) = 16;
    *(v10 + 42) = *(a1 + 312);
    v11 = *(*(a1 + 264) + 16);
    NumberChildren = LDOTreeNode_GetNumberChildren(v11);
    v13 = *(*a1 + 32);
    v14 = *(a1 + 184);
    if (NumberChildren)
    {
      v49 = a2;
      log_OutText(v13, v14, 4, 0, "tokentn : start loop...");
      v16 = *(v11 + 80);
      v15 = *(v11 + 88);
      if (v16 < v15)
      {
        v48 = v15;
        while (1)
        {
          v50 = 0;
          __s1 = 0;
          v17 = *v16;
          v18 = LDOTreeNode_ComputeAbsoluteFrom(*v16, &v50 + 1);
          ActiveDomains = LH_ERROR_to_VERROR(v18);
          if ((ActiveDomains & 0x80000000) != 0 || (v20 = LDOTreeNode_ComputeAbsoluteTo(v17, &v50), ActiveDomains = LH_ERROR_to_VERROR(v20), (ActiveDomains & 0x80000000) != 0))
          {
LABEL_66:
            v9 = ActiveDomains;
            goto LABEL_67;
          }

          Type = LDOObject_GetType(v17, &__s1);
          v9 = LH_ERROR_to_VERROR(Type);
          if ((v9 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          v22 = WORD2(v50);
          v23 = v50;
          v24 = __s1;
          if (!strcmp(__s1, "TOKEN_ALPHA"))
          {
            v25 = 0;
          }

          else if (!strcmp(v24, "TOKEN_DIGIT"))
          {
            v25 = 1;
          }

          else
          {
            if (strcmp(v24, "TOKEN_PUNCT"))
            {
              goto LABEL_58;
            }

            v25 = 2;
          }

          v54 = 0;
          ActiveDomains = FERuntimeData_GetActiveDomains(a1, v61, &v54, v22, v23, 0);
          if ((ActiveDomains & 0x80000000) != 0)
          {
            goto LABEL_66;
          }

          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "START basic token %d,%d ... %d active domains", v22, v23, v54);
          if (v54)
          {
            for (i = 0; i < v54; ++i)
            {
              v27 = v61[i];
              v60 = 0;
              v59 = 0;
              v58 = 0;
              v57 = 0;
              v56 = 0;
              v28 = *(a1 + 168);
              v29 = *v28;
              *(v29 + 46) = 0;
              *(v29 + 44) = v22;
              *(v29 + 48) = 0;
              if ((FERuntimeData_GetDomainRange(a1, v27, &v59) & 0x80000000) == 0)
              {
                log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "Domain %d : range %d,%d", i, *v59, v59[1]);
                *(*v28 + 46) = v59[1];
                if ((FERuntimeData_GetDomainBlockIndex(a1, v27, &v58, &v60) & 0x80000000) == 0 && (FEData_blockData_newGetDomainDefBlockInfo(a1, v58, &v57) & 0x80000000) == 0)
                {
                  v30 = *(v57 + 24);
                  if (v60 <= v30)
                  {
                    v31 = (*(v57 + 16) + 72 * v60);
                    if (v49 == 1 && *(a1 + 960) == 1)
                    {
                      if (v31[21])
                      {
                        v32 = 0;
                        v33 = 0;
                        do
                        {
                          v34 = *(v31 + 4);
                          v35 = *v28;
                          *(v35 + 40) = 0;
                          v35 += 40;
                          v36 = v34 + v32;
                          *(v35 + 8) = v36;
                          if ((FEData_blockData_getBTokAndRegexData(a1, *(v36 + 2), *(v36 + 4), (v35 - 8), v35, (v35 - 16), &v56) & 0x80000000) != 0)
                          {
                            break;
                          }

                          if ((tokentn_ApplyOneRule(a1, v28, v56, v25, v22, v23, v58, v60) & 0x80000000) != 0)
                          {
                            break;
                          }

                          ++v33;
                          v32 += 12;
                        }

                        while (v33 < v31[21]);
                      }
                    }

                    else
                    {
                      v37 = *(v57 + 32) + 16 * v31[6];
                      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "doing domain %d, Domain[%s:%s] (applying %d rules)", i, *v57, (*(v31 + 6) + *v31), *(v37 + 8));
                      if (*(v37 + 8))
                      {
                        v38 = 0;
                        v39 = 0;
                        do
                        {
                          v40 = *v37 + v38;
                          v41 = *v28;
                          *(v41 + 40) = 0;
                          v41 += 40;
                          *(v41 + 8) = v40;
                          if ((FEData_blockData_getTokenAndRegexData(a1, v40, (v41 - 8), v41, (v41 - 16), &v56) & 0x80000000) != 0)
                          {
                            break;
                          }

                          if ((tokentn_ApplyOneRule(a1, v28, v56, v25, v22, v23, v58, v60) & 0x80000000) != 0)
                          {
                            break;
                          }

                          ++v39;
                          v38 += 12;
                        }

                        while (v39 < *(v37 + 8));
                      }
                    }
                  }

                  else
                  {
                    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24028, "%s%d%s%d", "domain", v60, "numDomains", v30);
                    TOKENTNERROR(0);
                  }
                }
              }
            }
          }

          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "END of loop for basic token %d,%d", v22, v23);
          v9 = tokenizer_ResolveMatches(a1);
          if ((v9 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          if (!FERuntimeData_GetNumMatches(a1))
          {
            break;
          }

          v9 = textnormalizer_DoExpansionActions(a1, &v55);
          v15 = v48;
          if ((v9 & 0x80000000) != 0)
          {
            log_OutPublic(*(*a1 + 32), *(a1 + 184), 24029, 0);
            goto LABEL_67;
          }

          v42 = HIDWORD(v50);
          v43 = v55;
          if (HIDWORD(v50) >= v55)
          {
            v44 = HIDWORD(v50);
            v45 = v55;
          }

          else
          {
            ++v16;
            v44 = HIDWORD(v50);
            v45 = v55;
            while (v16 != v48)
            {
              v46 = LDOTreeNode_ComputeAbsoluteFrom(*v16, &v50 + 1);
              v9 = LH_ERROR_to_VERROR(v46);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_67;
              }

              v44 = HIDWORD(v50);
              v45 = v55;
              if (HIDWORD(v50) >= v55)
              {
                break;
              }

              ++v16;
            }
          }

          if (v44 > v45)
          {
            log_OutPublic(*(*a1 + 32), *(a1 + 184), 24063, 0);
          }

          FERuntimeData_FreeMatches(a1, 0);
          if (v42 >= v43)
          {
            goto LABEL_58;
          }

LABEL_59:
          if (v16 >= v15)
          {
            goto LABEL_60;
          }
        }

        FERuntimeData_FreeMatches(a1, 0);
        v15 = v48;
LABEL_58:
        ++v16;
        goto LABEL_59;
      }

LABEL_60:
      if ((paramc_ParamGetStr(*(*a1 + 40), "spaceInPYT", &v53) & 0x80000000) != 0 || LH_stricmp(v53, "yes") || (v9 = nntn_write_LD_T_INPUTSPACETAG(a1), (v9 & 0x80000000) == 0))
      {
LABEL_67:
        FERuntimeData_FreeMatches(a1, 1);
        log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokentn : AllInOneLoop End (%x)");
      }
    }

    else
    {
      log_OutText(v13, v14, 5, 0, "no basic token records to process");
    }
  }

  return v9;
}

uint64_t FEData_domainDefs_ObjOpen(uint64_t *a1, void *a2)
{
  v4 = *(*a1 + 32);
  v5 = a1[23];
  if (a2)
  {
    log_OutText(v4, v5, 4, 0, "domainDefs : ObjOpen Begin");
    *a2 = 0;
    v6 = heap_Calloc(*(*a1 + 8), 1, 2);
    if (v6)
    {
      *v6 = 0;
      *a2 = v6;
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "domainDefs : ObjOpen End (%x)", 0);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
    v8 = 10;
  }

  else
  {
    log_OutPublic(v4, v5, 24049, 0);
    v8 = 7;
  }

  return FEDATA_ERROR(v8);
}

uint64_t FEData_domainDefs_ObjClose(uint64_t *a1)
{
  v2 = *(a1[19] + 8);
  v3 = *(*a1 + 32);
  v4 = a1[23];
  if (v2)
  {
    log_OutText(v3, v4, 4, 0, "domainDefs : ObjClose Begin");
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "domainDefs : ObjClose End (%x)", 0);
    heap_Free(*(*a1 + 8), v2);
    return 0;
  }

  else
  {
    log_OutPublic(v3, v4, 24049, 0);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_ObjOpen(uint64_t *a1, uint64_t *a2)
{
  v4 = *(*a1 + 32);
  v5 = a1[23];
  if (a2)
  {
    log_OutText(v4, v5, 4, 0, "blockData : ObjOpen Begin");
    *a2 = 0;
    v6 = heap_Calloc(*(*a1 + 8), 1, 144);
    if (v6)
    {
      *(v6 + 112) = 0u;
      *(v6 + 128) = 0u;
      *(v6 + 80) = 0u;
      *(v6 + 96) = 0u;
      *(v6 + 48) = 0u;
      *(v6 + 64) = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *v6 = 0u;
      *v6 = 0;
      *(v6 + 136) = 0;
      *a2 = v6;
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "blockData : ObjOpen End (%x)", 0);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
    v8 = 10;
  }

  else
  {
    log_OutPublic(v4, v5, 24049, 0);
    v8 = 7;
  }

  return FEDATA_ERROR(v8);
}

uint64_t FEData_blockData_IsRemappable(void *a1, char *__s2, void *a3, _WORD *a4, _WORD *a5)
{
  v5 = *(a1[19] + 16);
  if (!v5)
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5);
    return 0;
  }

  if (!*v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(*(v5 + 17) + 8);
  while (1)
  {
    v9 = *(*(v8 + 8 * v7) + 24);
    if (v9)
    {
      if (!*v9)
      {
        v10 = *(v9 + 16);
        if (*(v9 + 16))
        {
          break;
        }
      }
    }

LABEL_6:
    if (++v7 >= *v5)
    {
      return 0;
    }
  }

  v11 = 0;
  v20 = *(v9 + 8);
  while (1)
  {
    v12 = *(v20 + 8 * v11);
    v13 = *(v12 + 12);
    if (*(v12 + 12))
    {
      break;
    }

LABEL_14:
    if (++v11 >= v10)
    {
      goto LABEL_6;
    }
  }

  v14 = 0;
  v15 = *(v12 + 16);
  while (strcmp(*(v15 + 8 * v14), __s2))
  {
    if (++v14 >= v13)
    {
      goto LABEL_14;
    }
  }

  *a3 = *v12;
  *a4 = *(v12 + 8);
  *a5 = *(v12 + 10);
  return 1;
}

uint64_t FEData_blockData_newGetDomainDefBlockInfo(void *a1, unsigned int a2, void *a3)
{
  v3 = *(a1[19] + 16);
  if (v3)
  {
    v4 = *v3;
    if (v4 > a2)
    {
      *a3 = *(*(*(*(v3 + 17) + 8) + 8 * a2) + 16);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%d%s%d", "domain", a2, "max", v4);
    v6 = 25;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0);
    v6 = 7;
  }

  return FEDATA_ERROR(v6);
}

uint64_t FEData_blockData_newGetDomainEntry(void *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a1[19] + 16);
  if (v4)
  {
    if (*v4 <= a2)
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%d%s%d");
    }

    else
    {
      v5 = *(*(*(*(v4 + 17) + 8) + 8 * a2) + 16);
      if (*(v5 + 24) > a3)
      {
        *a4 = *(v5 + 16) + 72 * a3;
        return 0;
      }

      log_OutPublic(*(*a1 + 32), a1[23], 24042, "%s%d%s%d");
    }

    v7 = 25;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0);
    v7 = 7;
  }

  return FEDATA_ERROR(v7);
}

uint64_t FEData_blockData_newGetPriorityList(void *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a1[19] + 16);
  if (v4)
  {
    if (*v4 <= a2)
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24041, "%s%d%s%d");
    }

    else
    {
      v5 = *(*(*(*(v4 + 17) + 8) + 8 * a2) + 16);
      if (*(v5 + 48) > a3)
      {
        *a4 = *(v5 + 32) + 16 * a3;
        return 0;
      }

      log_OutPublic(*(*a1 + 32), a1[23], 24043, "%s%d%s%d");
    }

    v7 = 25;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0);
    v7 = 7;
  }

  return FEDATA_ERROR(v7);
}

uint64_t FEData_blockData_getDomains2SearchIn(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, _WORD *a5, uint64_t a6)
{
  v6 = *(a1[19] + 16);
  if (v6)
  {
    v9 = *v6;
    if (a6 == 1)
    {
      if (*v6)
      {
        v10 = 0;
        v11 = *(*(v6 + 17) + 8);
        do
        {
          if (*(*(v11 + 8 * v10) + 16))
          {
            v12 = *a5;
            if (v12 <= 0x1F2)
            {
              *(a4 + 2 * v12) = v10;
              ++*a5;
              v9 = *v6;
            }
          }

          ++v10;
        }

        while (v10 < v9);
      }
    }

    else if (*v6)
    {
      v16 = 0;
      v17 = *(*(v6 + 17) + 8);
      v18 = a2;
      do
      {
        v19 = *(*(v17 + 8 * v16) + 16);
        if (v19)
        {
          v20 = a2 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          v21 = 0;
          v22 = *v19;
          do
          {
            if (!strcmp(*(a3 + 8 * v21), v22))
            {
              v23 = *a5;
              if (v23 <= 0x1F2)
              {
                *(a4 + 2 * v23) = v16;
                ++*a5;
              }
            }

            ++v21;
          }

          while (v21 < v18);
          v9 = *v6;
        }

        ++v16;
      }

      while (v16 < v9);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndCheckData(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5)
{
  v7 = *(a1[19] + 16);
  if (v7)
  {
    v8 = *(*(*(*(v7 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    v9 = *(v8 + 48) + 32 * *(a2 + 4);
    *a3 = *(v8 + 24) + *(v9 + 4);
    v10 = *(v9 + 24);
    if (a4)
    {
      *a4 = v10;
    }

    if (v10)
    {
      v11 = *(v9 + 8);
    }

    else
    {
      v11 = 0;
    }

    *a5 = v11;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, v5);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenData(void *a1, uint64_t a2, void *a3)
{
  v5 = *(a1[19] + 16);
  if (v5)
  {
    v6 = *(*(*(*(v5 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    *a3 = *(v6 + 24) + *(*(v6 + 48) + 32 * *(a2 + 4) + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, v3);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndExpansionData(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5)
{
  v7 = *(a1[19] + 16);
  if (v7)
  {
    v8 = *(*(*(*(v7 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    v9 = *(v8 + 48) + 32 * *(a2 + 4);
    *a3 = *(v8 + 24) + *(v9 + 4);
    LODWORD(v8) = *(v9 + 26);
    *a4 = v8;
    if (v8)
    {
      v10 = *(v9 + 16);
    }

    else
    {
      v10 = 0;
    }

    *a5 = v10;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, v5);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndRegexData(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5, _DWORD *a6)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    v9 = *(*(*(*(v8 + 136) + 8) + 8 * *(a2 + 2)) + 8);
    v10 = v9[6] + 32 * *(a2 + 4);
    v11 = v9[8] + 16 * *(v10 + 6);
    *a4 = *(v11 + 10);
    *a6 = *(v11 + 12);
    *a3 = v9[4] + *(v11 + 4);
    *a5 = v9[3] + *(v10 + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, v6);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getBTokAndRegexData(void *a1, unsigned int a2, unsigned int a3, void *a4, _WORD *a5, void *a6, _DWORD *a7)
{
  v9 = *(a1[19] + 16);
  if (v9)
  {
    v10 = *(*(*(*(v9 + 136) + 8) + 8 * a2) + 8);
    v11 = v10[6] + 32 * a3;
    v12 = v10[8] + 16 * *(v11 + 6);
    *a5 = *(v12 + 10);
    *a7 = *(v12 + 12);
    *a4 = v10[4] + *(v12 + 4);
    *a6 = v10[3] + *(v11 + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, a6, a7, v7);

    return FEDATA_ERROR(7);
  }
}

uint64_t readDataBlockFromFileRefCntBase(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v12 = *(a1[19] + 16);
  v13 = heap_Calloc(*(*a1 + 8), 1, 16);
  *a6 = v13;
  v14 = *a1;
  if (!v13)
  {
LABEL_140:
    log_OutPublic(*(v14 + 32), a1[23], 24048, 0);
    v20 = FEDATA_ERROR(10);
    if ((v20 & 0x80000000) != 0)
    {
LABEL_141:
      log_OutPublic(*(*a1 + 32), a1[23], 24052, 0);
    }

    return v20;
  }

  *(*a6 + 8) = heap_Calloc(*(v14 + 8), 1, (8 * *v12) | 1);
  if (!*(*a6 + 8))
  {
LABEL_139:
    v14 = *a1;
    goto LABEL_140;
  }

  v15 = *v12;
  **a6 = v15;
  if (v15)
  {
    v146 = a4;
    v145 = a5;
    v16 = 0;
    v147 = v12;
    while (1)
    {
      *(*(*a6 + 8) + 8 * v16) = heap_Calloc(*(*a1 + 8), 1, 48);
      v17 = *(*(*a6 + 8) + 8 * v16);
      if (!v17)
      {
        goto LABEL_139;
      }

      *v149 = 0;
      v150 = 0;
      v148 = 0;
      Chunk = ssftriff_reader_FindChunk(a2, "HEAD", 1, &v150 + 1, v149);
      if ((Chunk & 0x80000000) != 0)
      {
LABEL_95:
        v20 = Chunk;
LABEL_96:
        v31 = 0;
LABEL_97:
        log_OutPublic(*(*a1 + 32), a1[23], 24052, 0);
        goto LABEL_98;
      }

      LODWORD(v150) = 0;
      v19 = **v149;
      LODWORD(v150) = 2;
      *v17 = v19;
      v20 = ssftriff_reader_CloseChunk(a2);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_96;
      }

      v21 = *v17;
      if ((*v17 - 3) <= 2)
      {
        v22 = heap_Calloc(*(*a1 + 8), 1, 24);
        *(v17 + 24) = v22;
        if (!v22)
        {
          goto LABEL_103;
        }

        Chunk = ssftriff_reader_FindChunk(a2, "REMP", 1, &v150 + 1, v149);
        if ((Chunk & 0x80000000) != 0)
        {
          goto LABEL_95;
        }

        LODWORD(v150) = 0;
        v23 = *v149;
        v24 = **v149;
        LODWORD(v150) = 2;
        v25 = *(v17 + 24);
        *v25 = v24;
        if (!v24)
        {
          v120 = v150;
          *(v25 + 16) = *(v23 + v150);
          LODWORD(v150) = v120 + 2;
          if (*(*(v17 + 24) + 16))
          {
            v121 = heap_Calloc(*(*a1 + 8), 1, 8 * *(*(v17 + 24) + 16));
            v122 = *(v17 + 24);
            *(v122 + 8) = v121;
            if (!v121)
            {
              log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
              *(*(v17 + 24) + 16) = 0;
              goto LABEL_130;
            }

            if (*(v122 + 16))
            {
              v123 = 0;
              while (1)
              {
                *(*(*(v17 + 24) + 8) + 8 * v123) = heap_Calloc(*(*a1 + 8), 1, 24);
                v124 = *(v17 + 24);
                if (!*(*(v124 + 8) + 8 * v123))
                {
                  goto LABEL_128;
                }

                if (++v123 >= *(v124 + 16))
                {
                  v12 = v147;
                  if (!*(v124 + 16))
                  {
                    break;
                  }

                  v125 = 0;
                  while (1)
                  {
                    v143 = v125;
                    v126 = *(*(v124 + 8) + 8 * v125);
                    v127 = *(*v149 + v150);
                    LODWORD(v150) = v150 + 2;
                    v128 = v127 + 1;
                    v129 = heap_Calloc(*(*a1 + 8), 1, (v127 + 1));
                    *v126 = v129;
                    if (!v129)
                    {
                      goto LABEL_128;
                    }

                    v144 = v126;
                    v148 = v128;
                    v20 = ssftriff_reader_ReadStringZ(a2, *v149, HIDWORD(v150), v150, v129, &v148);
                    v31 = 1;
                    if ((v20 & 0x80000000) != 0 || v148 != v128)
                    {
                      goto LABEL_105;
                    }

                    v130 = v150 + v128;
                    LODWORD(v150) = v130;
                    v131 = *v149;
                    v132 = v144;
                    *(v144 + 4) = *(*v149 + v130);
                    LODWORD(v150) = v130 + 2;
                    *(v144 + 5) = *(v131 + v130 + 2);
                    LODWORD(v150) = v130 + 4;
                    v133 = *(v131 + v130 + 4);
                    *(v144 + 6) = v133;
                    LODWORD(v150) = v130 + 6;
                    if (v133)
                    {
                      v134 = heap_Calloc(*(*a1 + 8), 1, 8 * v133);
                      v144[2] = v134;
                      if (!v134)
                      {
                        log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
                        *(v144 + 6) = 0;
                        goto LABEL_130;
                      }

                      if (*(v144 + 6))
                      {
                        v135 = 0;
                        v136 = v150;
                        do
                        {
                          v137 = *(*v149 + v136);
                          LODWORD(v150) = v136 + 2;
                          v138 = v137 + 1;
                          *(v132[2] + 8 * v135) = heap_Calloc(*(*a1 + 8), 1, (v137 + 1));
                          v139 = *(v132[2] + 8 * v135);
                          if (!v139)
                          {
                            goto LABEL_128;
                          }

                          v148 = v138;
                          v20 = ssftriff_reader_ReadStringZ(a2, *v149, HIDWORD(v150), v150, v139, &v148);
                          v31 = 1;
                          if ((v20 & 0x80000000) != 0 || v148 != v138)
                          {
                            goto LABEL_105;
                          }

                          v136 = v150 + v138;
                          LODWORD(v150) = v136;
                          ++v135;
                          v132 = v144;
                        }

                        while (v135 < *(v144 + 6));
                      }
                    }

                    v125 = v143 + 1;
                    v124 = *(v17 + 24);
                    v12 = v147;
                    if (v143 + 1 >= *(v124 + 16))
                    {
                      goto LABEL_12;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_12:
        v20 = ssftriff_reader_CloseChunk(a2);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_96;
        }

        v21 = *v17;
      }

      if (v21 <= 5 && ((1 << v21) & 0x2D) != 0)
      {
        v26 = heap_Calloc(*(*a1 + 8), 1, 72);
        *(v17 + 8) = v26;
        if (!v26)
        {
          goto LABEL_103;
        }

        v21 = *v17;
      }

      if (v21 <= 5 && ((1 << v21) & 0x36) != 0)
      {
        v27 = heap_Calloc(*(*a1 + 8), 1, 64);
        *(v17 + 16) = v27;
        if (!v27)
        {
LABEL_103:
          log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
          v119 = FEDATA_ERROR(10);
          goto LABEL_104;
        }

        v21 = *v17;
      }

      if (v21 <= 5 && ((1 << v21) & 0x2D) != 0)
      {
        Chunk = ssftriff_reader_FindChunk(a2, "TDAT", 1, &v150 + 1, v149);
        if ((Chunk & 0x80000000) != 0)
        {
          goto LABEL_95;
        }

        LODWORD(v150) = 0;
        v28 = *v149;
        *(v17 + 40) = *v149;
        LOWORD(v28) = *v28;
        LODWORD(v150) = 2;
        v29 = v28 + 1;
        v30 = heap_Calloc(*(*a1 + 8), 1, (v28 + 1));
        **(v17 + 8) = v30;
        if (!v30)
        {
          goto LABEL_128;
        }

        v148 = v29;
        v20 = ssftriff_reader_ReadStringZ(a2, *v149, HIDWORD(v150), v150, v30, &v148);
        v31 = 1;
        if ((v20 & 0x80000000) != 0 || v148 != v29)
        {
          goto LABEL_105;
        }

        v32 = v150 + v29;
        LODWORD(v150) = v32;
        v33 = *v149;
        *(*(v17 + 8) + 8) = *(*v149 + v32);
        LODWORD(v150) = v32 + 2;
        *(*(v17 + 8) + 12) = *(v33 + v32 + 2);
        LODWORD(v150) = v32 + 4;
        v34 = *(v33 + v32 + 4);
        LODWORD(v150) = v32 + 8;
        v35 = *(v33 + v32 + 8);
        v36 = v32 + 12;
        v37 = *(v17 + 8);
        *(v37 + 16) = v36;
        *(v37 + 24) = v33 + v36;
        LODWORD(v150) = v34 + v36;
        v38 = (v34 + v36 + *(v33 + (v34 + v36)) + 4);
        *(v37 + 40) = v38;
        *(v37 + 32) = v33 + v38;
        LODWORD(v150) = v38 + v35;
        if (*(v37 + 8))
        {
          v39 = heap_Calloc(*(*a1 + 8), 1, 32 * *(v37 + 8));
          v37 = *(v17 + 8);
          *(v37 + 48) = v39;
          if (!v39)
          {
            goto LABEL_132;
          }

          if (*(v37 + 8))
          {
            v40 = 0;
            v41 = 0;
            while (1)
            {
              v42 = *(v37 + 48) + v40;
              v43 = *v149;
              v44 = *(*v149 + v150);
              LODWORD(v150) = v150 + 2;
              *v42 = v44;
              *(v42 + 4) = *(v43 + v150);
              LODWORD(v150) = v150 + 2;
              *(v42 + 6) = *(*v149 + v150);
              LODWORD(v150) = v150 + 2;
              LODWORD(v43) = *(*v149 + v150);
              *(v42 + 24) = v43;
              LODWORD(v150) = v150 + 2;
              *(v42 + 26) = *(*v149 + v150);
              LODWORD(v150) = v150 + 2;
              *(v42 + 28) = *(*v149 + v150);
              LODWORD(v150) = v150 + 2;
              *(v42 + 8) = 0;
              if (v43)
              {
                v45 = heap_Calloc(*(*a1 + 8), 1, 56);
                v46 = v45;
                *(v42 + 8) = v45;
                if (!v45)
                {
                  goto LABEL_134;
                }

                *v45 = &StaticIntPointers_1;
                *(v45 + 24) = 0;
                *(v45 + 16) = 0;
                *(v45 + 40) = 0;
                *(v45 + 48) = 0;
                *(v45 + 32) = 0;
                FunctionDataFromBinaryFile = FEData_readFunctionDataFromBinaryFile(a1, a2, *a1, v45, *v149, &v150, HIDWORD(v150));
                if ((FunctionDataFromBinaryFile & 0x80000000) != 0)
                {
                  break;
                }
              }

              *(v42 + 16) = 0;
              if (*(v42 + 26))
              {
                v48 = heap_Calloc(*(*a1 + 8), 1, 56);
                v46 = v48;
                *(v42 + 16) = v48;
                if (!v48)
                {
LABEL_134:
                  v140 = *(*a1 + 32);
                  v141 = a1[23];
                  goto LABEL_129;
                }

                *v48 = &StaticIntPointers_1;
                *(v48 + 24) = 0;
                *(v48 + 16) = 0;
                *(v48 + 40) = 0;
                *(v48 + 48) = 0;
                *(v48 + 32) = 0;
                FunctionDataFromBinaryFile = FEData_readFunctionDataFromBinaryFile(a1, a2, *a1, v48, *v149, &v150, HIDWORD(v150));
                if ((FunctionDataFromBinaryFile & 0x80000000) != 0)
                {
                  break;
                }
              }

              ++v41;
              v37 = *(v17 + 8);
              v40 += 32;
              if (v41 >= *(v37 + 8))
              {
                goto LABEL_39;
              }
            }

            v20 = FunctionDataFromBinaryFile;
            v31 = 1;
            v12 = v147;
            goto LABEL_97;
          }
        }

LABEL_39:
        v49 = *(v37 + 12);
        if (v49)
        {
          v50 = heap_Calloc(*(*a1 + 8), 1, 16 * v49);
          v51 = *(v17 + 8);
          *(v51 + 64) = v50;
          if (!v50)
          {
            goto LABEL_128;
          }

          if (*(v51 + 12))
          {
            v52 = 0;
            v53 = 0;
            do
            {
              v54 = *(v51 + 64);
              if (a3 == 1)
              {
                *(v54 + v52 + 4) = *(*v149 + v150);
                v55 = v150 + 4;
                LODWORD(v150) = v150 + 4;
                v56 = *v149;
              }

              else
              {
                v56 = *v149;
                v57 = *(*v149 + v150);
                LODWORD(v150) = v150 + 2;
                *(v54 + v52 + 4) = v57;
                v55 = v150;
              }

              v58 = v54 + v52;
              *(v58 + 8) = *(v56 + v55);
              LODWORD(v150) = v150 + 2;
              *(v58 + 10) = *(*v149 + v150);
              LODWORD(v150) = v150 + 2;
              *v58 = *(*v149 + v150);
              v59 = v150;
              LODWORD(v150) = v150 + 2;
              v60 = *(*v149 + v150);
              LODWORD(v150) = v59 + 4;
              *(v58 + 12) = v60;
              ++v53;
              v51 = *(v17 + 8);
              v52 += 16;
            }

            while (v53 < *(v51 + 12));
          }
        }

        v61 = ssftriff_reader_DetachChunkData(a2, (v17 + 32), v149);
        if ((v61 & 0x80000000) != 0)
        {
          v20 = v61;
          v31 = 1;
          v12 = v147;
          goto LABEL_97;
        }

        v62 = *v149;
        *(v17 + 40) = *v149;
        v63 = *(v17 + 8);
        v64 = v62 + *(v63 + 16);
        v65 = v62 + *(v63 + 40);
        *(v63 + 24) = v64;
        *(v63 + 32) = v65;
        v20 = ssftriff_reader_CloseChunk(a2);
        v12 = v147;
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_96;
        }

        v21 = *v17;
      }

      if (v21 > 5 || ((1 << v21) & 0x36) == 0)
      {
        goto LABEL_101;
      }

      Chunk = ssftriff_reader_FindChunk(a2, "DDAT", 1, &v150 + 1, v149);
      if ((Chunk & 0x80000000) != 0)
      {
        goto LABEL_95;
      }

      LODWORD(v150) = 0;
      v66 = **v149;
      LODWORD(v150) = 2;
      v67 = v66 + 1;
      v68 = heap_Calloc(*(*a1 + 8), 1, (v66 + 1));
      **(v17 + 16) = v68;
      if (!v68)
      {
        goto LABEL_128;
      }

      v148 = v67;
      v20 = ssftriff_reader_ReadStringZ(a2, *v149, HIDWORD(v150), v150, v68, &v148);
      v31 = 1;
      if ((v20 & 0x80000000) == 0 && v148 == v67)
      {
        v69 = v150 + v67;
        LODWORD(v150) = v69;
        v70 = *v149;
        v71 = *(*v149 + v69);
        LODWORD(v150) = v69 + 2;
        v72 = *(v17 + 16);
        *(v72 + 8) = v71;
        *(v72 + 24) = *(v70 + v69 + 2);
        LODWORD(v150) = v69 + 4;
        *(*(v17 + 16) + 50) = *(v70 + v69 + 4);
        LODWORD(v150) = v69 + 6;
        v73 = *(v17 + 16);
        *(v73 + 56) = 0;
        if (*(v73 + 50))
        {
          v74 = heap_Calloc(*(*a1 + 8), 1, 8 * *(v73 + 50));
          v73 = *(v17 + 16);
          *(v73 + 56) = v74;
          v75 = v146;
          if (v74)
          {
            if (*(v73 + 50))
            {
              v76 = 0;
              v77 = v150;
              while (1)
              {
                v78 = *(*v149 + v77);
                LODWORD(v150) = v77 + 2;
                v79 = v78 + 1;
                *(*(*(v17 + 16) + 56) + 8 * v76) = heap_Calloc(*(*a1 + 8), 1, (v78 + 1));
                v80 = *(*(*(v17 + 16) + 56) + 8 * v76);
                if (!v80)
                {
                  goto LABEL_128;
                }

                v81 = v79;
                v148 = v79;
                v20 = ssftriff_reader_ReadStringZ(a2, *v149, HIDWORD(v150), v150, v80, &v148);
                v31 = 1;
                if ((v20 & 0x80000000) != 0 || v148 != v81)
                {
                  goto LABEL_105;
                }

                v77 = v150 + v81;
                LODWORD(v150) = v150 + v81;
                ++v76;
                v73 = *(v17 + 16);
                if (v76 >= *(v73 + 50))
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_65;
          }
        }

        else
        {
LABEL_64:
          v75 = v146;
LABEL_65:
          if (!*(v73 + 24))
          {
            goto LABEL_82;
          }

          v82 = heap_Calloc(*(*a1 + 8), 1, 72 * *(v73 + 24));
          v73 = *(v17 + 16);
          *(v73 + 16) = v82;
          if (v82)
          {
            if (*(v73 + 24))
            {
              v83 = 0;
              while (1)
              {
                v84 = *(*v149 + v150);
                v85 = *(v73 + 16) + 72 * v83;
                LODWORD(v150) = v150 + 2;
                *(v85 + 56) = v84;
                v86 = heap_Calloc(*(*a1 + 8), 1, v84 + 1);
                *(v85 + 48) = v86;
                if (!v86)
                {
                  break;
                }

                memcpy(v86, (*v149 + v150), v84);
                *(*(v85 + 48) + v84) = 0;
                LODWORD(v150) = v150 + *(v85 + 56);
                *v85 = *(*v149 + v150);
                LODWORD(v150) = v150 + 2;
                *(v85 + 2) = *(*v149 + v150);
                v87 = v150;
                LODWORD(v150) = v150 + 2;
                v88 = *v149;
                v89 = *(*v149 + v150);
                LODWORD(v150) = v87 + 4;
                *(v85 + 60) = v89;
                v90 = *(v88 + v150);
                LODWORD(v150) = v150 + 2;
                *(v85 + 64) = v90;
                v91 = *(v88 + v150);
                LODWORD(v150) = v150 + 2;
                *(v85 + 8) = v91;
                if (v91 == 1)
                {
                  *(v85 + 4) = *(v88 + v150);
                  LODWORD(v150) = v150 + 2;
                  *(v85 + 12) = *(*v149 + v150);
                  LODWORD(v150) = v150 + 2;
                }

                v75 = v146;
                if (!v146)
                {
                  v92 = *(*v149 + v150);
                  *(v85 + 40) = v92;
                  v93 = v150;
                  LODWORD(v150) = v150 + 2;
                  if (v92)
                  {
                    LODWORD(v150) = v93 + 4 * (v92 - 1) + 6;
                  }
                }

                if (v145 == 1)
                {
                  v94 = *(*v149 + v150);
                  *(v85 + 42) = v94;
                  LODWORD(v150) = v150 + 2;
                  if (v94)
                  {
                    v95 = heap_Calloc(*(*a1 + 8), 1, 12 * v94);
                    *(v85 + 32) = v95;
                    if (!v95)
                    {
                      log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
                      v20 = FEDATA_ERROR(10);
                      v12 = v147;
                      if ((v20 & 0x80000000) == 0)
                      {
                        goto LABEL_101;
                      }

                      goto LABEL_138;
                    }

                    v96 = *(v85 + 42);
                    if (*(v85 + 42))
                    {
                      v97 = *v149;
                      v98 = (v95 + 8);
                      do
                      {
                        v99 = v150;
                        v100 = *(v97 + v150);
                        LODWORD(v150) = v150 + 2;
                        v101 = v150;
                        *(v98 - 4) = v100;
                        v102 = *(v97 + v101);
                        LODWORD(v150) = v99 + 4;
                        *(v98 - 2) = v102;
                        *v98 = 1;
                        v98 += 3;
                        --v96;
                      }

                      while (v96);
                    }
                  }
                }

                ++v83;
                v73 = *(v17 + 16);
                if (v83 >= *(v73 + 24))
                {
                  goto LABEL_82;
                }
              }
            }

            else
            {
LABEL_82:
              v103 = v150;
              *(v73 + 48) = *(*v149 + v150);
              LODWORD(v150) = v103 + 2;
              if (!*(*(v17 + 16) + 48))
              {
                goto LABEL_94;
              }

              v104 = heap_Calloc(*(a1[3] + 8), 1, 16 * *(*(v17 + 16) + 48));
              v105 = *(v17 + 16);
              *(v105 + 32) = v104;
              if (v104)
              {
                if (!*(v105 + 48))
                {
LABEL_94:
                  v119 = ssftriff_reader_CloseChunk(a2);
LABEL_104:
                  v20 = v119;
                  v31 = 0;
                  goto LABEL_105;
                }

                v106 = 0;
                while (1)
                {
                  v107 = *(v105 + 32) + 16 * v106;
                  v108 = *(*v149 + v150);
                  *(v107 + 8) = v108;
                  LODWORD(v150) = v150 + 2;
                  v109 = heap_Calloc(*(*a1 + 8), 1, 12 * v108);
                  *v107 = v109;
                  if (!v109)
                  {
                    break;
                  }

                  v110 = *(v107 + 8);
                  if (v110)
                  {
                    v111 = 0;
                    for (i = 0; i < v110; ++i)
                    {
                      v113 = *v107;
                      v114 = *v107 + v111;
                      *(v114 + 2) = 0;
                      if (v75)
                      {
                        v115 = *v149;
                        v116 = v150;
                        v117 = *(*v149 + v150);
                        LODWORD(v150) = v150 + 1;
                        v118 = v150;
                        *(v114 + 2) = v117;
                        *(v114 + 4) = *(v115 + v118);
                      }

                      else
                      {
                        *(v113 + v111) = *(*v149 + v150);
                        LODWORD(v150) = v150 + 2;
                        *(*v107 + v111 + 4) = *(*v149 + v150);
                        v116 = v150;
                        v110 = *(v107 + 8);
                      }

                      LODWORD(v150) = v116 + 2;
                      v111 += 12;
                    }
                  }

                  ++v106;
                  v105 = *(v17 + 16);
                  if (v106 >= *(v105 + 48))
                  {
                    goto LABEL_94;
                  }
                }
              }
            }

LABEL_128:
            v140 = *(*a1 + 32);
            v141 = a1[23];
            v46 = 0;
LABEL_129:
            log_OutPublic(v140, v141, 24048, v46);
LABEL_130:
            v20 = FEDATA_ERROR(10);
            v31 = 1;
            goto LABEL_105;
          }
        }

LABEL_132:
        log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
        v20 = FEDATA_ERROR(10);
      }

LABEL_105:
      v12 = v147;
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_97;
      }

LABEL_98:
      if (v31)
      {
        ssftriff_reader_CloseChunk(a2);
      }

      if ((v20 & 0x80000000) != 0)
      {
LABEL_138:
        *(*(*a6 + 8) + 8 * v16) = 0;
        log_OutPublic(*(*a1 + 32), a1[23], 24044, 0);
        goto LABEL_141;
      }

LABEL_101:
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "loaded data block %d", v16);
      v16 = v16 + 1;
      if (v16 >= *v12)
      {
        return v20;
      }
    }
  }

  return 0;
}

uint64_t readDataBlockFromFileRefCnt_0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  result = InitRsrcFunction(*(a1 + 8), *(a1 + 16), &v21);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a1 + 32), *(a1 + 40), &v20);
    if ((result & 0x80000000) == 0)
    {
      v15[0] = a1;
      v15[1] = a2;
      v16 = a3;
      v17 = a4;
      LODWORD(v18) = a5;
      ObjcForThisApi = getObjcForThisApi(v21, v20);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a6, readDataBlockFromFile_ObjcLoad_0, readDataBlockFromFile_ObjcClose_0, v15, &v19);
      if ((result & 0x80000000) != 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v19 + 32);
      }

      *(*(*(a1 + 152) + 16) + 136) = v14;
    }
  }

  return result;
}

uint64_t readDataBlockFromFile_ObjcLoad_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = readDataBlockFromFileRefCntBase(*a5, a5[1], *(a5 + 4), *(a5 + 5), *(a5 + 6), a4 + 32);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v8 = *a5;
  v9 = *(a4 + 32);
  v10 = *(*(*a5 + 152) + 16);
  if (*v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(*(v9 + 8) + 8 * v11);
      if (v14)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          if (*(v15 + 24))
          {
            v16 = 0;
            do
            {
              v17 = *(v15 + 16) + 72 * v16;
              if (*(v17 + 8) == 1)
              {
                v18 = *(v15 + 48);
                if (*(v15 + 48))
                {
                  v19 = 0;
                  v20 = *(v15 + 32);
                  do
                  {
                    v21 = v20 + 16 * v19;
                    if (*(v21 + 8))
                    {
                      v22 = 0;
                      do
                      {
                        if (*(v17 + 42))
                        {
                          v23 = (*v21 + 12 * v22);
                          v24 = (*(v17 + 32) + 4);
                          v25 = *(v17 + 42);
                          while (*(v24 - 2) != *v23 || *(v24 - 1) != v23[1] || *v24 != v23[2])
                          {
                            v24 += 6;
                            if (!--v25)
                            {
                              goto LABEL_21;
                            }
                          }

                          v12 = 1;
                        }

LABEL_21:
                        ++v22;
                      }

                      while (v22 != *(v21 + 8));
                    }

                    ++v19;
                  }

                  while (v19 != v18);
                  v13 = v20 + 16 * (v18 - 1);
                }
              }

              ++v16;
            }

            while (v16 != *(v15 + 24));
          }
        }
      }

      ++v11;
    }

    while (v11 != *v10);
    v26 = v12 == 0;
  }

  else
  {
    v13 = 0;
    v26 = 1;
  }

  v80 = v13;
  if (*(v8 + 616) && v26)
  {
    v27 = 1;
    *(v8 + 960) = 1;
  }

  else
  {
    v27 = *(v8 + 960);
  }

  log_OutText(*(*v8 + 32), *(v8 + 184), 4, 0, "btok twoloop data=%d", v27);
  v28 = *v10;
  if (!v28)
  {
    return 0;
  }

  v29 = 0;
  v30 = 0;
  v31 = *(v9 + 8);
  v79 = v8;
  v82 = v28;
  while (1)
  {
    v32 = *(v31 + 8 * v29);
    if (!v32)
    {
      v34 = v80;
      goto LABEL_92;
    }

    v33 = *(v32 + 16);
    v34 = v80;
    if (v33)
    {
      if (*(v33 + 24))
      {
        break;
      }
    }

LABEL_92:
    v78 = v30;
    v80 = v34;
    for (i = 0; i != v82; ++i)
    {
      v62 = *(v31 + 8 * i);
      if (v62)
      {
        v63 = *(v62 + 24);
        if (v63)
        {
          v64 = *(v63 + 16);
          if (*(v63 + 16))
          {
            v65 = 0;
            v84 = *(v63 + 8);
            do
            {
              v66 = v32;
              if (v32)
              {
                v67 = *(v32 + 16);
                if (v67)
                {
                  v68 = *(v67 + 24);
                  if (*(v67 + 24))
                  {
                    v69 = *(v84 + 8 * v65);
                    v70 = *(v67 + 16);
                    v71 = *v69;
                    do
                    {
                      if (!strcmp(v71, (*(v70 + 6) + *v70)))
                      {
                        *(v69 + 10) = v29;
                      }

                      v70 += 36;
                      --v68;
                    }

                    while (v68);
                  }
                }
              }

              ++v65;
              v32 = v66;
            }

            while (v65 != v64);
          }
        }
      }

      v28 = v82;
    }

    ++v29;
    v30 = v78;
    if (v29 == v82)
    {
      return 0;
    }
  }

  v35 = 0;
  v36 = *(v33 + 16);
  v73 = *(v33 + 24);
  v74 = *(v31 + 8 * v29);
  v72 = v36;
  while (1)
  {
    v75 = v35;
    v37 = v36 + 72 * v35;
    v38 = *(v37 + 42);
    v83 = v37;
    if (*(v37 + 42))
    {
      v39 = 0;
      while (1)
      {
        v40 = 0;
        while (1)
        {
          v41 = *(v31 + 8 * v40);
          if (*v41 == 1 || *v41 == 4)
          {
            goto LABEL_46;
          }

          v43 = *(v33 + 50);
          if (!*(v33 + 50))
          {
            goto LABEL_46;
          }

          if (*(v79 + 960) != 1 || v34 == 0)
          {
            v45 = *(v37 + 32);
            goto LABEL_57;
          }

          v45 = *(v37 + 32);
          if (v43 > *(*v34 + 12 * v39))
          {
            break;
          }

LABEL_57:
          v46 = *(v45 + 12 * v39);
          if (v43 > v46)
          {
            goto LABEL_58;
          }

LABEL_46:
          if (v28 == ++v40)
          {
            goto LABEL_108;
          }
        }

        v46 = *(v45 + 12 * v39);
LABEL_58:
        v47 = v34;
        v48 = strcmp(**(v41 + 8), *(*(v33 + 56) + 8 * v46));
        v37 = v83;
        v34 = v47;
        if (v48)
        {
          goto LABEL_46;
        }

        *(v45 + 12 * v39++ + 2) = v40;
        if (v39 == v38)
        {
          v30 = 1;
          break;
        }
      }
    }

    if (*(v37 + 8) == 1)
    {
      v77 = *(v33 + 48);
      if (*(v33 + 48))
      {
        break;
      }
    }

LABEL_89:
    v32 = v74;
    v35 = v75 + 1;
    v36 = v72;
    if (v75 + 1 == v73)
    {
      goto LABEL_92;
    }
  }

  v49 = 0;
  v76 = *(v33 + 32);
  while (1)
  {
    v81 = v49;
    v34 = v76 + 16 * v49;
    v50 = *(v34 + 8);
    if (*(v34 + 8))
    {
      v51 = 0;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          v53 = *(v31 + 8 * j);
          if (*v53 != 1 && *v53 != 4)
          {
            if (*(v33 + 50))
            {
              v55 = (*v34 + 12 * v51);
              if (*(v33 + 50) > *v55)
              {
                v56 = v34;
                v57 = strcmp(**(v53 + 8), *(*(v33 + 56) + 8 * *v55));
                v34 = v56;
                if (!v57)
                {
                  v55[1] = j;
                  v30 = 1;
                  if (!v38)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_80;
                }
              }
            }
          }
        }

        v30 = 0;
        if (!v38)
        {
          goto LABEL_86;
        }

LABEL_80:
        v58 = *v34 + 12 * v51;
        v59 = (*(v83 + 32) + 4);
        v60 = v38;
        while (*(v59 - 1) != *(v58 + 2) || *v59 != *(v58 + 4))
        {
          v59 += 6;
          if (!--v60)
          {
            goto LABEL_86;
          }
        }

        *(v58 + 8) = 1;
LABEL_86:
        ++v51;
      }

      while (v51 != v50);
    }

    if (!v30)
    {
      break;
    }

    v49 = v81 + 1;
    v30 = 1;
    if (v81 + 1 == v77)
    {
      goto LABEL_89;
    }
  }

LABEL_108:
  log_OutPublic(*(*v79 + 32), *(v79 + 184), 24045, 0);
  return 0;
}

uint64_t readDataBlockFromFile_ObjcClose_0(_WORD *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v50 = 0;
  inited = InitRsrcFunction(a1, a2, &v50);
  v5 = inited;
  if ((inited & 0x80000000) == 0)
  {
    if (v3)
    {
      v6 = *(v3 + 1);
      if (v6)
      {
        v7 = *v3;
        if (*v3)
        {
          v49 = inited;
          v8 = 0;
          v48 = v3;
          while (1)
          {
            v9 = *(*(v3 + 1) + 8 * v8);
            if (v9)
            {
              v11 = (v9 + 32);
              v10 = *(v9 + 32);
              if (v10)
              {
                v49 = ssftriff_reader_ReleaseChunkData(v10);
                if ((v49 & 0x80000000) != 0)
                {
                  return v49;
                }

                *v11 = 0;
                *(v9 + 40) = 0;
              }

              v12 = v50;
              v14 = *(v9 + 8);
              v13 = *(v9 + 16);
              v15 = *(v9 + 24);
              if (v14)
              {
                if (*v9 <= 5u && ((1 << *v9) & 0x2D) != 0)
                {
                  heap_Free(*(v50 + 8), *v14);
                  *v14 = 0;
                  v17 = *(v14 + 48);
                  if (v17)
                  {
                    if (*(v14 + 8))
                    {
                      v18 = 0;
                      v19 = 0;
                      do
                      {
                        v20 = *(v14 + 48) + v18;
                        v21 = *(v20 + 8);
                        if (v21)
                        {
                          FEData_freeEntry(v12, v21, 1);
                          heap_Free(*(v12 + 8), *(v20 + 8));
                          *(v20 + 8) = 0;
                        }

                        v22 = *(v20 + 16);
                        if (v22)
                        {
                          FEData_freeEntry(v12, v22, 1);
                          heap_Free(*(v12 + 8), *(v20 + 16));
                          *(v20 + 16) = 0;
                        }

                        ++v19;
                        v18 += 32;
                      }

                      while (v19 < *(v14 + 8));
                      v17 = *(v14 + 48);
                      v3 = v48;
                    }

                    heap_Free(*(v12 + 8), v17);
                    *(v14 + 48) = 0;
                  }

                  v23 = *(v14 + 64);
                  if (v23)
                  {
                    heap_Free(*(v12 + 8), v23);
                    *(v14 + 64) = 0;
                  }

                  heap_Free(*(v12 + 8), *(v9 + 8));
                  *(v9 + 8) = 0;
                }
              }

              if (v13)
              {
                if (*v9 <= 5u && ((1 << *v9) & 0x36) != 0)
                {
                  if (*v13)
                  {
                    heap_Free(*(v12 + 8), *v13);
                    *v13 = 0;
                  }

                  v25 = *(v13 + 56);
                  if (v25)
                  {
                    if (*(v13 + 50))
                    {
                      v26 = 0;
                      do
                      {
                        heap_Free(*(v12 + 8), *(*(v13 + 56) + 8 * v26));
                        *(*(v13 + 56) + 8 * v26++) = 0;
                      }

                      while (v26 < *(v13 + 50));
                      v25 = *(v13 + 56);
                    }

                    heap_Free(*(v12 + 8), v25);
                    *(v13 + 56) = 0;
                  }

                  if (*(v13 + 16))
                  {
                    if (*(v13 + 24))
                    {
                      v27 = 0;
                      v28 = 0;
                      do
                      {
                        v29 = (*(v13 + 16) + v27);
                        heap_Free(*(v12 + 8), v29[6]);
                        v29[6] = 0;
                        v30 = v29[2];
                        if (v30)
                        {
                          heap_Free(*(v12 + 8), v30);
                          v29[2] = 0;
                        }

                        v31 = v29[4];
                        if (v31)
                        {
                          heap_Free(*(v12 + 8), v31);
                          v29[4] = 0;
                        }

                        ++v28;
                        v27 += 72;
                      }

                      while (v28 < *(v13 + 24));
                    }

                    v32 = *(v13 + 32);
                    v3 = v48;
                    if (v32)
                    {
                      v33 = *(v13 + 48);
                      if (v33)
                      {
                        v34 = 0;
                        for (i = 0; i < v33; ++i)
                        {
                          v36 = *(v13 + 32);
                          v37 = *(v36 + v34);
                          if (v37)
                          {
                            heap_Free(*(v12 + 8), v37);
                            *(v36 + v34) = 0;
                            v33 = *(v13 + 48);
                          }

                          v34 += 16;
                        }

                        v32 = *(v13 + 32);
                        v3 = v48;
                      }

                      heap_Free(*(v12 + 8), v32);
                      *(v13 + 32) = 0;
                    }

                    heap_Free(*(v12 + 8), *(v13 + 16));
                    *(v13 + 16) = 0;
                  }

                  heap_Free(*(v12 + 8), *(v9 + 16));
                  *(v9 + 16) = 0;
                }
              }

              if (v15)
              {
                v38 = *(v15 + 8);
                if (v38)
                {
                  v39 = *(v15 + 16);
                  if (v39)
                  {
                    for (j = 0; j < v39; ++j)
                    {
                      v41 = *(v15 + 8);
                      v42 = *(v41 + 8 * j);
                      if (v42)
                      {
                        if (*v42)
                        {
                          heap_Free(*(v12 + 8), *v42);
                          v41 = *(v15 + 8);
                          **(v41 + 8 * j) = 0;
                          v42 = *(v41 + 8 * j);
                        }

                        v43 = *(v42 + 16);
                        if (v43)
                        {
                          if (*(v42 + 12))
                          {
                            v44 = 0;
                            do
                            {
                              v45 = *(*(v42 + 16) + 8 * v44);
                              if (v45)
                              {
                                heap_Free(*(v12 + 8), v45);
                                *(*(*(*(v15 + 8) + 8 * j) + 16) + 8 * v44) = 0;
                                v41 = *(v15 + 8);
                              }

                              ++v44;
                              v42 = *(v41 + 8 * j);
                            }

                            while (v44 < *(v42 + 12));
                            v43 = *(v42 + 16);
                          }

                          heap_Free(*(v12 + 8), v43);
                          v46 = *(v15 + 8);
                          *(*(v46 + 8 * j) + 16) = 0;
                          v42 = *(v46 + 8 * j);
                        }

                        *(v42 + 12) = 0;
                        heap_Free(*(v12 + 8), v42);
                        *(*(v15 + 8) + 8 * j) = 0;
                        v39 = *(v15 + 16);
                      }
                    }

                    v38 = *(v15 + 8);
                  }

                  heap_Free(*(v12 + 8), v38);
                  *(v15 + 8) = 0;
                }

                *(v15 + 16) = 0;
                heap_Free(*(v12 + 8), v15);
              }

              if (*v11)
              {
                ssftriff_reader_ReleaseChunkData(*v11);
                *v11 = 0;
                *(v9 + 40) = 0;
              }

              heap_Free(*(v12 + 8), v9);
              v7 = *v3;
            }

            if (++v8 >= v7)
            {
              v6 = *(v3 + 1);
              v5 = v49;
              break;
            }
          }
        }

        heap_Free(*(v50 + 8), v6);
        heap_Free(*(v50 + 8), v3);
      }
    }
  }

  return v5;
}

uint64_t FEData_blockData_loadDataFiles(uint64_t *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a1[19];
  v47 = 0;
  memset(v49, 0, 128);
  memset(v48, 0, sizeof(v48));
  v46 = 0;
  v44 = 0;
  v45 = 0;
  *v43 = 0;
  *a4 = 0;
  v6 = *(v5 + 16);
  if (!v6)
  {
    v7 = *(*a1 + 32);
    v8 = a1[23];
    v9 = 24049;
    goto LABEL_5;
  }

  if (!*v6)
  {
    v12 = *(a1 + 352);
    v13 = *(a1 + 168);
    v14 = *a1;
    if (v12 > v13)
    {
      log_OutPublic(*(v14 + 32), a1[23], 24056, "%s%d%s%d", "invalid language identifier index", v12, "max=", v13);
      v10 = 0;
      goto LABEL_6;
    }

    if ((paramc_ParamGetStr(*(v14 + 40), "langcode", v43) & 0x80000000) != 0)
    {
      *v43 = "";
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "fecfg", &v44) & 0x80000000) == 0)
    {
      strcpy(v48, "tokentn/");
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      v16 = brokeraux_ComposeBrokerString(*a1, v48, 1, 1, *v43, 0, 0, v49, 0x80uLL);
      if (v16 < 0)
      {
        return FEDATA_ERROR(v16);
      }

      RsrcHandleForThisApi = getRsrcHandleForThisApi(*a1, a1[1], a1[2], a1[4]);
      if ((ssftriff_reader_ObjOpen(RsrcHandleForThisApi, v18, 2, v49, "TOKN", 1031, &v47) & 0x80000000) == 0)
      {
LABEL_18:
        Chunk = ssftriff_reader_FindChunk(v47, "CFIG", 0, &v46, &v45);
        v22 = Chunk & 0x1FFF;
        if ((Chunk & 0x80000000) != 0 && v22 != 20)
        {
          goto LABEL_65;
        }

        if (v22 == 20)
        {
          v23 = 0;
          v24 = 0;
LABEL_32:
          Chunk = ssftriff_reader_FindChunk(v47, "FILE", 0, &v46, &v45);
          if ((Chunk & 0x80000000) == 0)
          {
            *v6 = *v45;
            Chunk = ssftriff_reader_CloseChunk(v47);
            if ((Chunk & 0x80000000) == 0)
            {
              __strcpy_chk();
              DataBlockFromFileRefCnt_0 = readDataBlockFromFileRefCnt_0(a1, v47, v23, v24, *a4, v49);
              if ((DataBlockFromFileRefCnt_0 & 0x80000000) == 0)
              {
                ssftriff_reader_ObjClose(v47);
                v47 = 0;
                v27 = *v6;
                if (*v6)
                {
                  v28 = 0;
                  do
                  {
                    v29 = *(*(*(v6 + 17) + 8) + 8 * v28);
                    if (v29)
                    {
                      v30 = *(v29 + 16);
                      if (v30)
                      {
                        v31 = 0;
                        v32 = 0;
                        while (v32 < *(v30 + 24))
                        {
                          v33 = *(v30 + 16);
                          if (*(v33 + v31 + 64) == 1)
                          {
                            if (a1[36])
                            {
                              if (strcmp(a1[36], (*(v33 + v31 + 48) + *(v33 + v31))))
                              {
                                log_OutPublic(*(*a1 + 32), a1[23], 24053, "%s%s%s%s");
                                goto LABEL_70;
                              }
                            }

                            else
                            {
                              v34 = strlen((*(v33 + v31 + 48) + *(v33 + v31)));
                              v35 = heap_Calloc(*(*a1 + 8), 1, (v34 + 1));
                              a1[36] = v35;
                              if (!v35)
                              {
                                log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
                                v16 = 10;
                                return FEDATA_ERROR(v16);
                              }

                              strcpy(v35, (*(v33 + v31 + 48) + *(v33 + v31)));
                              *(a1 + 148) = v28;
                              *(a1 + 149) = v32;
                            }
                          }

                          ++v32;
                          v30 = *(v29 + 16);
                          v31 += 72;
                          if (!v30)
                          {
                            break;
                          }
                        }
                      }

                      v27 = *v6;
                    }

                    ++v28;
                  }

                  while (v28 < v27);
                  if (v27)
                  {
                    for (i = 0; i < v27; ++i)
                    {
                      v37 = *(*(*(v6 + 17) + 8) + 8 * i);
                      if (v37)
                      {
                        v38 = *(v37 + 16);
                        if (v38)
                        {
                          v39 = 0;
                          v40 = -1;
                          do
                          {
                            if (++v40 >= *(v38 + 24))
                            {
                              break;
                            }

                            v41 = *(v38 + 16) + v39;
                            if (*(v41 + 40) && (!*(v41 + 8) || !*(v38 + 48)))
                            {
                              log_OutPublic(*(*a1 + 32), a1[23], 24062, 0);
                            }

                            v39 += 72;
                            v38 = *(v37 + 16);
                          }

                          while (v38);
                        }

                        v27 = *v6;
                      }
                    }
                  }
                }

                if (!a1[36])
                {
                  log_OutPublic(*(*a1 + 32), a1[23], 24054, 0, v42);
LABEL_70:
                  v16 = 0;
                  return FEDATA_ERROR(v16);
                }

LABEL_67:
                if (v47)
                {
                  ssftriff_reader_ObjClose(v47);
                }

                return DataBlockFromFileRefCnt_0;
              }

LABEL_66:
              log_OutPublic(*(*a1 + 32), a1[23], 24052, 0);
              goto LABEL_67;
            }
          }

LABEL_65:
          DataBlockFromFileRefCnt_0 = Chunk;
          goto LABEL_66;
        }

        v26 = *v45;
        if (*v45)
        {
          v23 = v45[1] == 1;
          if (v26 != 1)
          {
            v24 = v45[2] == 1;
            if (v26 >= 3 && v45[3] == 1)
            {
              *a4 = 1;
            }

LABEL_31:
            Chunk = ssftriff_reader_CloseChunk(v47);
            if ((Chunk & 0x80000000) != 0)
            {
              goto LABEL_65;
            }

            goto LABEL_32;
          }
        }

        else
        {
          v23 = 0;
        }

        v24 = 0;
        goto LABEL_31;
      }
    }

    strcpy(v48, "tokentn/");
    __strcat_chk();
    v16 = brokeraux_ComposeBrokerString(*a1, v48, 1, 1, *v43, 0, 0, v49, 0x80uLL);
    if ((v16 & 0x80000000) == 0)
    {
      v19 = getRsrcHandleForThisApi(*a1, a1[1], a1[2], a1[4]);
      if ((ssftriff_reader_ObjOpen(v19, v20, 0, v49, "TOKN", 1031, &v47) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      log_OutPublic(*(*a1 + 32), a1[23], 24057, "%s%s", "Missing broker header file", v49);
      v16 = 3;
    }

    return FEDATA_ERROR(v16);
  }

  v7 = *(*a1 + 32);
  v8 = a1[23];
  v9 = 24055;
LABEL_5:
  log_OutPublic(v7, v8, v9, 0);
  v10 = 7;
LABEL_6:

  return FEDATA_ERROR(v10);
}

uint64_t readDataBlockFromFileDeRefCnt(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  result = InitRsrcFunction(*(a1 + 8), *(a1 + 16), &v5);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*(a1 + 32), *(a1 + 40), &v4);
    if ((result & 0x80000000) == 0)
    {
      ObjcForThisApi = getObjcForThisApi(v5, v4);
      return objc_ReleaseObject(ObjcForThisApi, *(*(a1 + 152) + 16) + 2);
    }
  }

  return result;
}

uint64_t FEData_blockData_unloadDataFiles(void *a1)
{
  if (*(a1[19] + 16))
  {

    return readDataBlockFromFileDeRefCnt(a1);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, v1);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_unloadUnusedDataFiles(void *a1)
{
  v1 = *(a1[19] + 16);
  if (v1)
  {
    result = readDataBlockFromFileDeRefCnt(a1);
    *v1 = 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0);

    return FEDATA_ERROR(7);
  }

  return result;
}

uint64_t FEData_ObjOpen(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  log_OutText(*(*a3 + 32), a3[23], 4, 0, "fe_data : ObjOpen Begin");
  v4 = heap_Calloc(*(*a3 + 8), 1, 24);
  if (v4)
  {
    v5 = v4;
    a3[19] = v4;
    v6 = FEData_functionData_ObjOpen(a3, v4);
    if ((v6 & 0x80000000) != 0 || (v6 = FEData_domainDefs_ObjOpen(a3, v5 + 1), (v6 & 0x80000000) != 0))
    {
      v7 = v6;
    }

    else
    {
      v7 = FEData_blockData_ObjOpen(a3, v5 + 2);
      if ((v7 & 0x80000000) == 0)
      {
LABEL_8:
        log_OutText(*(*a3 + 32), a3[23], 4, 0, "fe_data : ObjOpen End (%x)", v7);
        return v7;
      }
    }

    FEData_ObjClose(a3);
    goto LABEL_8;
  }

  log_OutPublic(*(*a3 + 32), a3[23], 24048, 0);

  return TOKENTNERROR(10);
}

uint64_t FEData_ObjClose(uint64_t *a1)
{
  v1 = a1[19];
  if (v1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_data : ObjClose Begin");
    v3 = FEData_functionData_ObjClose(a1);
    LODWORD(v4) = v3 & (v3 >> 31);
    v5 = FEData_blockData_ObjClose_NNTN(a1);
    if (v5 < 0)
    {
      LODWORD(v4) = v5;
    }

    v6 = FEData_domainDefs_ObjClose(a1);
    if (v6 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v6;
    }

    heap_Free(*(*a1 + 8), v1);
    a1[19] = 0;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_data : ObjClose End (%x)", v4);
    return v4;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

void *FEData_freeEntry(void *result, uint64_t a2, int a3)
{
  if (a2)
  {
    v5 = result;
    v6 = *(a2 + 40);
    if (v6)
    {
      result = heap_Free(result[1], v6);
      *(a2 + 40) = 0;
    }

    v7 = *(a2 + 32);
    if (v7)
    {
      result = heap_Free(v5[1], v7);
      *(a2 + 32) = 0;
    }

    v8 = *(a2 + 48);
    if (v8)
    {
      result = heap_Free(v5[1], v8);
      *(a2 + 48) = 0;
    }

    v9 = *(a2 + 16);
    if (v9)
    {
      v10 = *(a2 + 24);
      if (*(a2 + 24))
      {
        v11 = 0;
        do
        {
          v12 = *(a2 + 16);
          if (a3 == 1)
          {
            FEData_freeEntry(v5, *(v12 + 8 * v11), 1);
            heap_Free(v5[1], *(*(a2 + 16) + 8 * v11));
            v12 = *(a2 + 16);
            v10 = *(a2 + 24);
          }

          *(v12 + 8 * v11++) = 0;
        }

        while (v11 < v10);
        v9 = *(a2 + 16);
      }

      result = heap_Free(v5[1], v9);
      *(a2 + 24) = 0;
      *(a2 + 16) = 0;
    }
  }

  return result;
}

uint64_t freeFunctions(void **a1, unsigned __int16 *a2)
{
  if (*a2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 1) + 8 * v4);
      FEData_freeEntry(*a1, v5, 0);
      heap_Free((*a1)[1], v5);
      ++v4;
    }

    while (v4 < *a2);
  }

  v6 = *(a2 + 1);
  if (v6)
  {
    heap_Free((*a1)[1], v6);
    *(a2 + 1) = 0;
  }

  *a2 = 0;
  return 0;
}

uint64_t FEData_functionData_ObjOpen(uint64_t *a1, void *a2)
{
  v4 = *(*a1 + 32);
  v5 = a1[23];
  if (a2)
  {
    log_OutText(v4, v5, 4, 0, "functionData : ObjOpen Begin");
    *a2 = 0;
    v6 = heap_Calloc(*(*a1 + 8), 1, 16);
    if (v6)
    {
      *v6 = 0;
      v6[1] = 0;
      *v6 = 0;
      *a2 = v6;
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "functionData : ObjOpen End (%x)", 0);
      return 0;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
    v8 = 10;
  }

  else
  {
    log_OutPublic(v4, v5, 24049, 0);
    v8 = 7;
  }

  return FEDATA_ERROR(v8);
}

uint64_t FEData_functionData_ObjClose(void *a1)
{
  v1 = a1[19];
  if (v1 && (v2 = *v1) != 0)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "functionData : ObjClose Begin");
    freeFunctions(a1, v2);
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "functionData : ObjClose End (%x)", 0);
    heap_Free(*(*a1 + 8), v2);
    return 0;
  }

  else
  {

    return FEDATA_ERROR(8);
  }
}

uint64_t FEData_readFunctionDataFromBinaryFile(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, unsigned int a7)
{
  FunctionDataFromBinaryFile = 0;
  v40 = 0;
  v15 = *a6;
  v16 = *(a5 + v15);
  v17 = v15 + 2;
  *a6 = v15 + 2;
  if (v16 > 5)
  {
    if (v16 <= 8)
    {
      if (v16 == 6)
      {
        FunctionDataFromBinaryFile = 0;
        v18 = &unk_1C37BDC74;
      }

      else
      {
        FunctionDataFromBinaryFile = 0;
        if (v16 == 7)
        {
          v18 = &unk_1C37BDC78;
        }

        else
        {
          v18 = &unk_1C37BDC7C;
        }
      }

      goto LABEL_28;
    }

    switch(v16)
    {
      case 9:
        FunctionDataFromBinaryFile = 0;
        v18 = &unk_1C37BDC80;
        break;
      case 10:
        FunctionDataFromBinaryFile = 0;
        v18 = &unk_1C37BDC84;
        break;
      case 11:
        FunctionDataFromBinaryFile = 0;
        v18 = &unk_1C37BDC88;
        break;
      default:
        goto LABEL_29;
    }

LABEL_28:
    *a4 = v18;
    goto LABEL_29;
  }

  if (v16 <= 2)
  {
    if (v16)
    {
      FunctionDataFromBinaryFile = 0;
      if (v16 == 1)
      {
        v18 = &unk_1C37BDC60;
      }

      else
      {
        v18 = &unk_1C37BDC64;
      }
    }

    else
    {
      FunctionDataFromBinaryFile = 0;
      v18 = &StaticIntPointers_2;
    }

    goto LABEL_28;
  }

  if (v16 != 3)
  {
    FunctionDataFromBinaryFile = 0;
    if (v16 == 4)
    {
      v18 = &unk_1C37BDC6C;
    }

    else
    {
      v18 = &unk_1C37BDC70;
    }

    goto LABEL_28;
  }

  *a4 = &unk_1C37BDC68;
  v19 = *(a5 + v17);
  *a6 = v15 + 4;
  v20 = v19 + 1;
  v21 = heap_Calloc(*(a3 + 8), 1, (v19 + 1));
  *(a4 + 48) = v21;
  if (v21)
  {
    v22 = v20;
    v40 = v20;
    v23 = ssftriff_reader_ReadStringZ(a2, a5, a7, *a6, v21, &v40);
    if ((v23 & 0x80000000) != 0 || v40 != v20)
    {
      goto LABEL_45;
    }

    FunctionDataFromBinaryFile = v23;
    v17 = *a6 + v22;
    *a6 = v17;
LABEL_29:
    v24 = *(a5 + v17);
    v25 = v17 + 2;
    *a6 = v25;
    if (!v24)
    {
      *(a4 + 40) = 0;
      goto LABEL_35;
    }

    v26 = v24 + 1;
    v27 = heap_Calloc(*(a3 + 8), 1, (v24 + 1));
    *(a4 + 40) = v27;
    if (!v27)
    {
      goto LABEL_43;
    }

    v28 = v26;
    v40 = v26;
    v29 = ssftriff_reader_ReadStringZ(a2, a5, a7, *a6, v27, &v40);
    if ((v29 & 0x80000000) == 0 && v40 == v26)
    {
      FunctionDataFromBinaryFile = v29;
      v25 = *a6 + v28;
      *a6 = v25;
LABEL_35:
      *(a4 + 8) = *(a5 + v25);
      v30 = *a6;
      v31 = *a6 + 2;
      *a6 = v31;
      v32 = *(a5 + v31);
      *a6 = v30 + 4;
      *(a4 + 24) = v32;
      if (!v32)
      {
        return FunctionDataFromBinaryFile;
      }

      v33 = heap_Calloc(*(a3 + 8), 1, 8 * v32);
      *(a4 + 16) = v33;
      if (v33)
      {
        if (*(a4 + 24))
        {
          v34 = 0;
          while (1)
          {
            v35 = heap_Calloc(*(a3 + 8), 1, 56);
            if (!v35)
            {
              break;
            }

            *(*(a4 + 16) + 8 * v34) = v35;
            *v35 = &StaticIntPointers_2;
            *(v35 + 24) = 0;
            *(v35 + 16) = 0;
            *(v35 + 40) = 0;
            *(v35 + 48) = 0;
            *(v35 + 32) = 0;
            FunctionDataFromBinaryFile = FEData_readFunctionDataFromBinaryFile(a1, a2, a3, v35, a5, a6, a7);
            if ((FunctionDataFromBinaryFile & 0x80000000) == 0 && ++v34 < *(a4 + 24))
            {
              continue;
            }

            return FunctionDataFromBinaryFile;
          }

          v36 = *(*a1 + 32);
          v37 = a1[23];
          goto LABEL_44;
        }

        return FunctionDataFromBinaryFile;
      }

LABEL_43:
      v36 = *(*a1 + 32);
      v37 = a1[23];
LABEL_44:
      log_OutPublic(v36, v37, 24048, 0);
      v38 = 10;
      return FEDATA_ERROR(v38);
    }

LABEL_45:
    v38 = 0;
    return FEDATA_ERROR(v38);
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);

  return FEDATA_ERROR(10);
}

uint64_t FEFunctionMap_ObjOpen(uint64_t *a1)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_functionmap : ObjOpen Begin");
  v2 = heap_Calloc(*(*a1 + 8), 1, 16);
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
    a1[20] = v2;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_functionmap : ObjOpen End (%x)", 0);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);

    return TOKENTNERROR(10);
  }
}

uint64_t FEFunctionMap_ObjClose(void *a1)
{
  v1 = a1[20];
  if (v1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_functionmap : ObjClose Begin");
    v3 = 0;
    v4 = *a1;
    v5 = 1;
    do
    {
      v6 = v5;
      v7 = *(v1 + 8 * v3);
      if (v7)
      {
        ssftmap_ObjClose(v7);
        *(v1 + 8 * v3) = 0;
      }

      v5 = 0;
      v3 = 1;
    }

    while ((v6 & 1) != 0);
    log_OutText(*(v4 + 32), a1[23], 4, 0, "fe_functionmap : ObjClose End (%x)", 0);
    heap_Free(*(*a1 + 8), v1);
    return 0;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

uint64_t FEFunctionMap_GetMap(uint64_t *a1, uint64_t *a2)
{
  v3 = *(*a1 + 8);
  v6[0] = xmmword_1F42D3870;
  v6[1] = *off_1F42D3880;
  v7 = off_1F42D3890;
  v4 = ssftmap_ObjOpen(v3, 0, v6, a2);
  result = 0;
  if ((v4 & 0x80000000) != 0)
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24039, 0);
    return v4;
  }

  return result;
}

uint64_t action2FunctionMap_CopyMapKey(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1 || !a2 || !a3)
  {
    return TOKENTNERROR(7);
  }

  *a3 = a1;
  return 0;
}

uint64_t action2FunctionMap_CompareKeys(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  if (*a1 == *a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t action2FunctionMap_CopyFunctionData(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1 || !a2 || !a3)
  {
    return TOKENTNERROR(7);
  }

  *a3 = a1;
  return 0;
}

uint64_t FEFunctionMap_GetFunction(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 160);
  *a4 = 0;
  ssftmap_FindReadOnly(*(v4 + 8 * a2), a3, a4);
  return 0;
}

uint64_t FERuntimeData_ObjOpen(uint64_t *a1)
{
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjOpen Begin");
  v2 = heap_Calloc(*(*a1 + 8), 1, 88);
  if (v2)
  {
    v3 = v2;
    a1[22] = v2;
    v4 = *(*a1 + 8);
    v11 = xmmword_1C37BDC98;
    v12 = 0;
    if (vector_ObjOpen(v4, &v11, 5, v3))
    {
      v5 = 0;
    }

    else
    {
      log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
      v5 = TOKENTNERROR(10);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_12;
      }
    }

    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 40) = 50;
    *(v3 + 32) = 0x8800050000;
    v7 = heap_Calloc(*(*a1 + 8), 1, 816);
    *(v3 + 24) = v7;
    if (v7)
    {
      v8 = (v7 + 16 * *(v3 + 32));
      v9 = *(v3 + 34) * *(v3 + 36) + 1;
      v8[1] = v9;
      *v8 = 0;
      v10 = heap_Calloc(*(*a1 + 8), 1, v9);
      *v8 = v10;
      if (v10)
      {
        ++*(v3 + 32);
LABEL_13:
        log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjOpen End (%x)", v5);
        return v5;
      }
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
    v5 = TOKENTNERROR(10);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    FERuntimeData_ObjClose(a1);
    goto LABEL_13;
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);

  return TOKENTNERROR(10);
}

uint64_t FERuntimeData_ObjClose(void *a1)
{
  v1 = a1[22];
  if (v1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjClose Begin");
    v3 = a1[22];
    if (*v3)
    {
      vector_ObjClose(*v3);
      *v3 = 0;
    }

    node_clearMem(a1);
    v4 = *(v1 + 24);
    if (v4)
    {
      if (*v4)
      {
        heap_Free(*(*a1 + 8), *v4);
        v4 = *(v1 + 24);
        *v4 = 0;
      }

      heap_Free(*(*a1 + 8), v4);
      *(v1 + 24) = 0;
    }

    *(v1 + 16) = 0;
    heap_Free(*(*a1 + 8), v1);
    a1[22] = 0;
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : ObjClose End (%x)", 0);
    return 0;
  }

  else
  {

    return TOKENTNERROR(8);
  }
}

void node_clearMem(void *a1)
{
  v1 = a1[22];
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);
    if (v3 >= 2)
    {
      v5 = 1;
      v6 = 16;
      do
      {
        v7 = *(v2 + v6);
        if (v7)
        {
          heap_Free(*(*a1 + 8), v7);
          v2 = *(v1 + 24);
          *(v2 + v6) = 0;
          v3 = *(v1 + 32);
        }

        ++v5;
        v6 += 16;
      }

      while (v5 < v3);
      if (v3 >= 2)
      {
        bzero((v2 + 16), (16 * v3 + 0xFFFFFFFF0) & 0xFFFFFFFF0);
        *(v1 + 32) = 1;
      }
    }

    *(v1 + 38) = 0;
  }
}

uint64_t FERuntimeData_DumpMatch(uint64_t a1, uint64_t a2, __int16 *a3, int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  if (*(a1 + 176))
  {
    if (a4 == 1)
    {
      strcpy(v17, "<LOGFE> ");
    }

    else
    {
      v17[0] = 0;
    }

    FEData_blockData_getTokenData(a1, *(a2 + 88), &v16);
    strncpy(*(a1 + 552), (*(a1 + 304) + *a3), (a3[1] - *a3));
    *(*(a1 + 552) - *a3 + a3[1]) = 0;
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s%20s [%d,%d] _%s_ (domainBlockID=%d, domainNum=%d)", v17, *(a1 + 552), *a3, a3[1], *(a1 + 552), *(a2 + 104), *(a2 + 106));
    if (*(a2 + 82))
    {
      v8 = 0;
      v9 = (a2 + 44);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        if (v10 == -1 && v11 == 0xFFFF)
        {
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] [%d,%d] _NULL_", "MATCH");
        }

        else
        {
          strncpy(*(a1 + 552), (*(a1 + 304) + v10), (v11 - v10));
          *(*(a1 + 552) - *(v9 - 1) + *v9) = 0;
          log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] [%d,%d] _%s_", "MATCH", v8 + 1);
        }

        ++v8;
        v9 += 2;
      }

      while (v8 < *(a2 + 82));
    }

    if (*(a2 + 40))
    {
      v13 = 0;
      v14 = (a2 + 2);
      do
      {
        v15 = *v14;
        v14 += 2;
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%30s[%d] %s", "EXPANDEDORTH", v13++, (*(a1 + 504) + v15));
      }

      while (v13 < *(a2 + 40));
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0);

    return TOKENTNERROR(7);
  }
}

uint64_t FERuntimeData_DumpMatches(uint64_t a1, const char *a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 548))
  {
    return 0;
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    if (a3 == 1)
    {
      strcpy(v8, "<LOGFE> ");
    }

    else
    {
      v8[0] = 0;
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%sfe_runtimedata : DumpMatches Begin %s", v8, a2);
    if (*(v4 + 16))
    {
      for (i = *(v4 + 8); i; i = *i)
      {
        FERuntimeData_DumpMatch(a1, (i + 12), i + 8, a3);
      }
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%sfe_runtimedata : DumpMatches End (%x)", v8, 0);
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24049, 0);

  return TOKENTNERROR(7);
}

uint64_t FERuntimeData_GetNumMatches(void *a1)
{
  v3 = a1[22];
  if (v3)
  {
    return *(v3 + 16);
  }

  log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, v1, v2);
  return 0;
}

uint64_t FERuntimeData_FreeMatches(void *a1, int a2)
{
  v4 = a1[22];
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : FreeMatches Begin");
  node_clearMem(a1);
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  if (a2 == 1)
  {
    vector_Clear(*v4);
  }

  log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_runtimedata : FreeMatches End (%x)", 0);
  return 0;
}

uint64_t FERuntimeData_AddDomainRange(uint64_t a1, uint64_t *a2)
{
  if (vector_AddGet(**(a1 + 176), a2))
  {
    v4 = *a2;
    *(v4 + 8) = 0;
    *v4 = 0;
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), *(a1 + 184), 24048, 0);

    return TOKENTNERROR(10);
  }
}

uint64_t FERuntimeData_AddMatch(uint64_t *a1, _DWORD *a2, __int128 *a3)
{
  if (!a2 || !a3)
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0);

    return TOKENTNERROR(7);
  }

  v5 = a1[22];
  v6 = *(v5 + 32);
  if (!*(v5 + 32))
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24035, 0);
LABEL_23:
    v29 = 0;
    goto LABEL_24;
  }

  v8 = *(v5 + 24);
  v9 = *(v5 + 38);
  v10 = v8 + 16 * v9;
  v11 = *(v5 + 36);
  v12 = *(v10 + 12);
  v13 = v12 + v11;
  if (v12 + v11 < *(v10 + 8))
  {
    goto LABEL_10;
  }

  if (v6 + 1 >= *(v5 + 40))
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24036, "%s%d");
    goto LABEL_23;
  }

  if (v9 + 1 >= v6)
  {
    v14 = (v8 + 16 * *(v5 + 32));
    v15 = *(v5 + 34) * v11 + 1;
    v14[1] = v15;
    *v14 = 0;
    v16 = heap_Calloc(*(*a1 + 8), 1, v15);
    *v14 = v16;
    if (v16)
    {
      ++*(v5 + 32);
      LOWORD(v9) = *(v5 + 38);
      v8 = *(v5 + 24);
      v11 = *(v5 + 36);
      goto LABEL_9;
    }

    log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
    v29 = 10;
LABEL_24:
    LODWORD(result) = TOKENTNERROR(v29);
    if (result >= 0)
    {
      return 6;
    }

    else
    {
      return result;
    }
  }

LABEL_9:
  v17 = v9 + 1;
  *(v5 + 38) = v17;
  v10 = v8 + 16 * v17;
  v12 = *(v10 + 12);
  v13 = v12 + v11;
LABEL_10:
  *(v10 + 12) = v13;
  if (!*v10)
  {
    return 6;
  }

  v18 = *v10 + v12;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = *a2;
  v19 = *a3;
  v20 = a3[1];
  *(v18 + 56) = a3[2];
  *(v18 + 40) = v20;
  *(v18 + 24) = v19;
  v21 = a3[3];
  v22 = a3[4];
  v23 = a3[5];
  *(v18 + 120) = a3[6];
  *(v18 + 104) = v23;
  *(v18 + 88) = v22;
  *(v18 + 72) = v21;
  v24 = *(v5 + 8);
  if (v24)
  {
    v25 = *(v18 + 16);
    while (1)
    {
      v26 = v24;
      v27 = *(v24 + 8);
      if (v27 == v25)
      {
        break;
      }

      if (v27 >= v25)
      {
        v33 = v26[1];
        v26[1] = v18;
        *v18 = v26;
        if (!v33)
        {
          goto LABEL_40;
        }

        *(v18 + 8) = v33;
        *v33 = v18;
        goto LABEL_41;
      }

      v24 = *v26;
      if (!*v26)
      {
        *v26 = v18;
        *(v18 + 8) = v26;
        goto LABEL_41;
      }
    }

    v30 = *(v18 + 18);
    if (*(v26 + 9) > v30)
    {
      while (1)
      {
        v31 = v26;
        v26 = v26[1];
        if (!v26)
        {
          break;
        }

        if (*(v26 + 8) != v25 || *(v26 + 9) <= v30)
        {
          v31[1] = v18;
          *v18 = v31;
          *(v18 + 8) = v26;
          *v26 = v18;
          goto LABEL_41;
        }
      }

      v31[1] = v18;
      *v18 = v31;
      goto LABEL_40;
    }

    while (1)
    {
      v32 = v26;
      v26 = *v26;
      if (!v26)
      {
        break;
      }

      if (*(v26 + 8) != v25 || *(v26 + 9) >= v30)
      {
        *v32 = v18;
        *v18 = v26;
        *(v18 + 8) = v32;
        v26[1] = v18;
        goto LABEL_41;
      }
    }

    *v32 = v18;
    *(v18 + 8) = v32;
  }

  else
  {
LABEL_40:
    *(v5 + 8) = v18;
  }

LABEL_41:
  result = 0;
  ++*(v5 + 16);
  return result;
}

uint64_t FERuntimeData_FindLongestMatch(uint64_t a1, unsigned __int16 *a2, _WORD *a3)
{
  v3 = *(a1 + 176);
  if (*(v3 + 16))
  {
    v4 = *(v3 + 8);
    for (*a3 = a2[1]; v4; v4 = *v4)
    {
      v5 = *(v4 + 8);
      v6 = *a2;
      if (v5 == v6)
      {
        *a3 = *(v4 + 9);
      }

      else if (v5 > v6)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t FERuntimeData_GetAllMatchesAtKey(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 176);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = *(v2 + 8);
  if (v5)
  {
    v6 = 0;
    do
    {
      if (*(v5 + 8) != *a2)
      {
        break;
      }

      if (*(v5 + 9) != a2[1])
      {
        break;
      }

      ++v6;
      v5 = *v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  result = resetMatchList(a1, v6);
  if ((result & 0x80000000) == 0)
  {
    v8 = *(v2 + 8);
    if (v8)
    {
      v9 = *a2;
      do
      {
        if (*(v8 + 8) != v9)
        {
          break;
        }

        if (*(v8 + 9) != a2[1])
        {
          break;
        }

        v10 = *(a1 + 386);
        *(*(a1 + 376) + 8 * v10) = v8 + 3;
        *(a1 + 386) = v10 + 1;
        v8 = *v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t FERuntimeData_DeleteSubsumedkeys(uint64_t a1, unsigned __int16 *a2, int a3)
{
  v3 = *(a1 + 176);
  if (*(v3 + 16))
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *a2;
      while (1)
      {
        v6 = *(v4 + 8);
        if (v6 == v5 && *(v4 + 9) == a3)
        {
          goto LABEL_8;
        }

        if (v6 < v5)
        {
          break;
        }

        if (*(v4 + 9) <= a3)
        {
          v7 = *v4;
        }

        else
        {
          v7 = *v4;
          if (v6 >= a3)
          {
            goto LABEL_16;
          }
        }

        v8 = v4[1];
        if (!v8)
        {
          if (v7)
          {
            v7[1] = 0;
          }

          *(v3 + 8) = v7;
          v9 = *v4;
          if (!*v4)
          {
            goto LABEL_16;
          }

LABEL_15:
          v9[1] = v4[1];
          goto LABEL_16;
        }

        *v8 = v7;
        v9 = v7;
        if (v7)
        {
          goto LABEL_15;
        }

LABEL_16:
        v4 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      if (v6 > a3)
      {
        return 0;
      }

LABEL_8:
      v7 = *v4;
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t FERuntimeData_DeleteMatch(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(a1 + 176);
  if (*(v3 + 16))
  {
    v4 = (v3 + 8);
    v5 = (v3 + 8);
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        return 0;
      }

      v6 = *(v5 + 8);
      v7 = *a2;
      if (__PAIR64__(*(v5 + 9), v6) == __PAIR64__(a2[1], v7) && v5[14] == *(a3 + 88))
      {
        break;
      }

      if (v6 > v7)
      {
        return 0;
      }
    }

    v9 = *v5;
    v10 = v5[1];
    if (v10)
    {
      *v10 = v9;
      if (!v9)
      {
        return 0;
      }

      goto LABEL_14;
    }

    if (v9)
    {
      v9[1] = 0;
    }

    *v4 = v9;
    v9 = *v5;
    if (*v5)
    {
LABEL_14:
      v9[1] = v5[1];
    }
  }

  return 0;
}

uint64_t FERuntimeData_GetKeyAtPos(uint64_t a1, int a2, void *a3, void *a4)
{
  v4 = *(a1 + 176);
  if (*(v4 + 16))
  {
    v5 = (v4 + 8);
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 8);
      if (v6 == a2)
      {
        *a3 = v5 + 2;
        *a4 = v5 + 3;
        return 0;
      }
    }

    while (v6 <= a2);
  }

  return 0;
}

uint64_t FERuntimeData_UpdateDomainRange(void *a1, unsigned int a2, __int16 a3)
{
  v6 = a1[22];
  v8 = 0;
  if (vector_GetElemAt(*v6, a2, &v8))
  {
    result = 0;
    *(v8 + 2) = a3;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24037, "%s%d", "domainIndex", a2);
    return TOKENTNERROR(0);
  }

  return result;
}

uint64_t FERuntimeData_GetDomainRange(uint64_t a1, unsigned int a2, void *a3)
{
  if (vector_GetElemAt(**(a1 + 176), a2, a3))
  {
    return 0;
  }

  log_OutPublic(*(*a1 + 32), *(a1 + 184), 24037, "%s%d", "domainIndex", a2);

  return TOKENTNERROR(0);
}

uint64_t FERuntimeData_GetActiveDomains(uint64_t a1, uint64_t a2, _WORD *a3, int a4, int a5, int a6)
{
  v15 = 0;
  v11 = *(a1 + 176);
  if (vector_GetElemAt(*v11, 0, &v15))
  {
    v12 = 0;
    while (a6)
    {
      v13 = *a3;
      if (v13 <= 0x1F3)
      {
        goto LABEL_5;
      }

LABEL_9:
      if (!vector_GetElemAt(*v11, ++v12, &v15))
      {
        return 0;
      }
    }

    if (a4 < *v15)
    {
      goto LABEL_9;
    }

    if (a5 > v15[1])
    {
      goto LABEL_9;
    }

    v13 = *a3;
    if (v13 >= 0x1F4)
    {
      goto LABEL_9;
    }

LABEL_5:
    *(a2 + 2 * v13) = v12;
    ++*a3;
    goto LABEL_9;
  }

  return 0;
}

uint64_t FERuntimeData_PruneAndDumpActiveDomains(void *a1)
{
  v11 = 0;
  v2 = a1[22];
  if (vector_GetElemAt(*v2, 0, &v11))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (*(v11 + 2) == 1)
      {
        v5 = "ACTIVE";
      }

      else
      {
        v5 = "INACTIVE - REMOVE";
      }

      log_OutText(*(*a1 + 32), a1[23], 4, 0, "DomainRange [%d,%d] %s", *v11, v11[1], v5);
      if (*(v11 + 2))
      {
        ++v4;
      }

      else if (!vector_Remove(*v2, v3))
      {
        log_OutPublic(*(*a1 + 32), a1[23], 24038, "%s%d", "domain range index", v3);
        return 0;
      }

      v3 = v4;
    }

    while (vector_GetElemAt(*v2, v4, &v11));
  }

  Size = vector_GetSize(*v2);
  v7 = *(*a1 + 32);
  v8 = a1[23];
  if (Size)
  {
    log_OutText(v7, v8, 4, 0, "%d Final Active Domains", Size);
    if (vector_GetElemAt(*v2, 0, &v11))
    {
      v9 = 0;
      do
      {
        log_OutText(*(*a1 + 32), a1[23], 4, 0, "Domain[block=%d,num=%d] Range [%d,%d]", v11[3], v11[2], *v11, v11[1]);
        ++v9;
      }

      while (vector_GetElemAt(*v2, v9, &v11));
    }
  }

  else
  {
    log_OutText(v7, v8, 4, 0, "No Final Active Domains");
  }

  return 0;
}

uint64_t FERuntimeData_GetDomainBlockIndex(void *a1, unsigned int a2, _WORD *a3, _WORD *a4)
{
  v8 = a1[22];
  v11 = 0;
  if (vector_GetElemAt(*v8, a2, &v11))
  {
    result = 0;
    v10 = v11;
    *a3 = *(v11 + 6);
    *a4 = *(v10 + 4);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24038, "%s%d", "iDomainIndexID", a2);
    return TOKENTNERROR(0);
  }

  return result;
}

uint64_t applyChecks(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v26[1] = 0;
  v27 = 0;
  v26[0] = 0;
  log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : applyChecks Begin (recursionlevel=%d)", a5);
  inited = initStrRes(a1, &v29);
  if ((inited & 0x80000000) == 0)
  {
    DomainDefBlockInfo = initStrRes(a1, &v27);
    if ((DomainDefBlockInfo & 0x80000000) != 0)
    {
LABEL_29:
      clearStrRes(*a1, &v27);
      clearStrRes(*a1, &v29);
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "tokenizer : applyChecks End");
      return DomainDefBlockInfo;
    }

    if (*(a3 + 24))
    {
      v12 = 0;
      while (1)
      {
        log_OutText(*(*a1 + 32), a1[23], 5, 0, "level %d Apply Check %d ...", a5, v12);
        v13 = applyChecks(a1, a2, *(*(a3 + 16) + 8 * v12), &v29, (a5 + 1));
        if ((v13 & 0x80000000) != 0)
        {
          break;
        }

        if (WORD1(v30))
        {
          log_OutText(*(*a1 + 32), a1[23], 5, 0, "After check %d, result = %s", v12, v29);
        }

        DomainDefBlockInfo = add2StringV3(a1, &v27, &v29);
        if ((DomainDefBlockInfo & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        if (v12 + 1 != *(a3 + 24))
        {
          DomainDefBlockInfo = add2StringV2(a1, &v27, " ");
          if ((DomainDefBlockInfo & 0x80000000) != 0)
          {
            goto LABEL_29;
          }
        }

        WORD1(v30) = 0;
        *v29 = 0;
        if (++v12 >= *(a3 + 24))
        {
          goto LABEL_12;
        }
      }

LABEL_21:
      DomainDefBlockInfo = v13;
      goto LABEL_29;
    }

LABEL_12:
    clearStrRes(*a1, &v29);
    if (WORD1(v28))
    {
      log_OutText(*(*a1 + 32), a1[23], 5, 0, "doing function calls on expanded string %s", v27);
    }

    FEFunctionMap_GetFunction(a1, 0, *a3, &v31);
    if (!v31)
    {
      v16 = *(*a1 + 32);
      v17 = a1[23];
      if (WORD1(v28))
      {
        log_OutPublic(v16, v17, 24001, "%s%s");
      }

      else
      {
        log_OutPublic(v16, v17, 24001, 0, v22, v23);
      }

      goto LABEL_29;
    }

    v13 = initStrRes(a1, v26);
    if ((v13 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    if ((**a3 & 0xFFFFFFFE) == 8)
    {
      LODWORD(v25) = 0;
      v14 = a1[41];
      *v14 = v27;
      *(v14 + 8) = v26;
      *(v14 + 32) = 0;
      *(v14 + 40) = *(a3 + 8);
      v15 = v31(a1, &v25);
      if ((v15 & 0x80000000) == 0)
      {
LABEL_18:
        v15 = add2StringV3(a1, a4, v26);
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
      DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, *(*(a1[41] + 24) + 104), &v25);
      if ((DomainDefBlockInfo & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      v18 = a1[41];
      if (*(*(v18 + 24) + 106) > *(v25 + 24))
      {
        log_OutPublic(*(*a1 + 32), a1[23], 24002, 0);
        goto LABEL_27;
      }

      v20 = *(v25 + 16) + 72 * *(*(v18 + 24) + 106);
      *v18 = *(a3 + 40);
      *(v18 + 8) = v26;
      if (*(v20 + 60))
      {
        v21 = a1[36];
      }

      else
      {
        v21 = *(v20 + 48) + *(v20 + 2);
      }

      *(v18 + 32) = v21;
      *(v18 + 40) = *(a3 + 8);
      v15 = v31(a1, &v24);
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    DomainDefBlockInfo = v15;
LABEL_27:
    clearStrRes(*a1, v26);
    goto LABEL_29;
  }

  return inited;
}

uint64_t validateCurrentMatch(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, const char *a5, uint64_t a6, int *a7)
{
  v20 = 0;
  v18 = 0;
  v19 = 0;
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokenizer : validateCurrentMatch Begin");
  *a7 = 1;
  if (partialMatchFoundInBasicToken_NNTN(a1, a3) != 1)
  {
    if (*(a1 + 548) == 1)
    {
      FERuntimeData_DumpMatch(a1, a2, a3, 0);
    }

    FEData_blockData_getTokenAndCheckData(a1, a6, &v19, &v20, &v18);
    if (v20)
    {
      log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "Applying check rule for token %s", a5);
      *(a1 + 402) = 0;
      **(a1 + 392) = 0;
      v15 = *(a1 + 328);
      *(v15 + 16) = a3;
      *(v15 + 24) = a2;
      v14 = applyChecks(a1, a4, v18, a1 + 392, 0);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v16 = *(a1 + 402);
      if (*(a1 + 402))
      {
        v16 = strcmp(*(a1 + 392), "TRUE") == 0;
        *a7 = v16;
      }

      else
      {
        *a7 = 0;
      }
    }

    else
    {
      v14 = 0;
      v16 = *a7;
    }

    log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokenizer : validateCurrentMatch End result=%d", v16);
    return v14;
  }

  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "tokenizer : validateCurrentMatch End result=%d (partial match in basic token found)", *a7);
  v14 = 0;
  *a7 = 0;
  return v14;
}

uint64_t tokenizer_CheckNOTNULL(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_NOTNULL( %d) = ", *(*(a1 + 328) + 40));
  }

  v8 = 0;
  if (!validateMatchAndGetKey(a1, &v8))
  {
    v3 = *(*(a1 + 328) + 8);
LABEL_10:
    v5 = "FALSE";
    goto LABEL_11;
  }

  v3 = *(*(a1 + 328) + 8);
  if (v8 == -1 && HIWORD(v8) == 0xFFFF)
  {
    goto LABEL_10;
  }

  v5 = "TRUE";
LABEL_11:
  v6 = add2StringV2(a1, v3, v5);
  if ((v6 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 328) + 8));
  }

  return v6;
}

uint64_t tokenizer_CheckLessThan(uint64_t a1, _DWORD *a2)
{
  v11 = 0;
  if (*(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "_LESSTHAN( %d, %s) = ", *(*(a1 + 328) + 40), **(a1 + 328));
  }

  v10 = 0;
  *a2 = 0;
  if (validateMatchAndGetKey(a1, &v10))
  {
    if (v10 == -1 && HIWORD(v10) == 0xFFFF)
    {
      if (*(a1 + 548) == 1)
      {
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "NULL SUBMATCH");
      }

      v7 = *(*(a1 + 328) + 8);
      v6 = "TRUE";
    }

    else
    {
      if (!getValFromSentence(a1, &v10, &v11))
      {
        *a2 = 0;
      }

      getValFromArgString(a1, &v11 + 1);
      v5 = v11 >= HIWORD(v11);
      *a2 = v11 < HIWORD(v11);
      if (v5)
      {
        v6 = "FALSE";
      }

      else
      {
        v6 = "TRUE";
      }

      v7 = *(*(a1 + 328) + 8);
    }
  }

  else
  {
    v7 = *(*(a1 + 328) + 8);
    v6 = "FALSE";
  }

  v8 = add2StringV2(a1, v7, v6);
  if ((v8 & 0x80000000) == 0 && *(a1 + 548) == 1)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "%s", **(*(a1 + 328) + 8));
  }

  return v8;
}

uint64_t addExpandedOrthography2Match(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = *(a1 + 328);
  v5 = *(v4 + 40);
  v6 = (*(v4 + 24) + 4 * *(*(v4 + 24) + 40));
  *v6 = v5;
  v6[1] = *(a1 + 514);
  result = add2StringV5(a1, a1 + 504, *(a1 + 560));
  if ((result & 0x80000000) == 0)
  {
    ++*(*(*(a1 + 328) + 24) + 40);
    *a2 = 1;
  }

  return result;
}

uint64_t compareToken(uint64_t *a1, char *__s, uint64_t a3, unsigned int a4, int a5, unsigned int a6, unsigned int a7, int *a8)
{
  v16 = strlen(__s);
  v17 = a4;
  *a8 = 0;
  if (a6 <= a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = a6;
  }

  if (v18 <= a7)
  {
    v18 = a7;
  }

  v19 = 0;
  if (v16)
  {
    do
    {
      if (__s[v19] == a3)
      {
        break;
      }

      ++v19;
    }

    while (v19 < v16);
  }

  if (a3 == __s[v19])
  {
    v36 = a5;
    v37 = a8;
    v38 = a1;
    if (a6 == 1)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (a7 == 1)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    if (a4 == 1)
    {
      v22 = v19;
    }

    else
    {
      v22 = 0;
    }

    if (v18 != 1)
    {
      v25 = 0;
      v24 = 0;
      v23 = 0;
      v28 = 1;
      while (1)
      {
        v29 = v19 + 1;
        v19 = v29;
        if (v16 > v29)
        {
          do
          {
            if (a3 == __s[v19])
            {
              break;
            }

            ++v19;
          }

          while (v16 > v19);
          if (v29 == v16 && v29 != v19)
          {
            break;
          }
        }

        if (++v28 == a6)
        {
          v24 = v29;
          v20 = v19;
        }

        if (v28 == a7)
        {
          v25 = v29;
          v21 = v19;
        }

        if (v28 == v17)
        {
          v23 = v29;
          v22 = v19;
        }

        if (v28 == v18)
        {
          goto LABEL_36;
        }
      }

      log_OutPublic(*(*v38 + 32), v38[23], 24003, "%s%s%s%d%s%c", "dictionaryStr", __s);
      goto LABEL_44;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
LABEL_36:
    v30 = v38[41];
    v31 = *v30;
    v32 = strlen(*v30);
    v33 = v22 - v23;
    v34 = v33 >= 1 && v32 == v33;
    if (!v34 || strncmp(&__s[v23], v31, v32))
    {
      return 0;
    }

    if (v25 == v21 || (v35 = v30[4], strstr(&__s[v25], v35)))
    {
      if (v36 == 1)
      {
        if (v24 == v20)
        {
          log_OutPublic(*(*v38 + 32), v38[23], 24004, "%s%s%s%s");
LABEL_44:
          v26 = 0;
          result = 0;
LABEL_53:
          a8 = v37;
          goto LABEL_54;
        }

        __s[v20 - v24] = 0;
        result = add2StringV2(v38, (v38 + 70), __s);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        result = 0;
      }

      v26 = 1;
      goto LABEL_53;
    }

    a8 = v37;
    if (*(v38 + 137) == 1)
    {
      log_OutText(*(*v38 + 32), v38[23], 5, 0, "search word %s, domain=%s - blocked on domain", v31, v35);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24003, "%s%s%s%c", "dictionaryStr", __s, "fieldSeparator", a3);
  }

  v26 = 0;
  result = 0;
LABEL_54:
  *a8 = v26;
  return result;
}

uint64_t doDictionaryLookup(uint64_t a1, uint64_t a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6, int *a7, uint64_t a8, int a9)
{
  v24 = 0;
  v23 = 0;
  v22 = 0;
  *a7 = 0;
  result = (*(*(a1 + 88) + 152))(*(a1 + 96), *(a1 + 104), a2, *(a1 + 592), &v24, &v23, &v22);
  if ((result & 0x80000000) == 0)
  {
    if (v23)
    {
      goto LABEL_21;
    }

    if (a9 == 1)
    {
      return result;
    }

    v19 = *(a1 + 592);
    v20 = strlen(v19);
    v21 = *(a1 + 600);
    if (4 * v20 >= v21)
    {
      result = growStrRes(a1, a1 + 592, (4 * v20) | 1u);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v19 = *(a1 + 592);
      LOWORD(v21) = *(a1 + 600);
    }

    result = (*(*(a1 + 88) + 112))(*(a1 + 96), *(a1 + 104), *(*(a1 + 328) + 32), v19, (v21 - 1));
    if (**(a1 + 592))
    {
      result = (*(*(a1 + 88) + 152))(*(a1 + 96), *(a1 + 104), a2);
      if ((result & 0x80000000) == 0)
      {
        if (v23)
        {
LABEL_21:
          if (!*a7)
          {
            v17 = 0;
            do
            {
              result = compareToken(a1, *(v24 + 8 * v17), v22, a3, a4, a5, a6, a7);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              ++v17;
            }

            while (!*a7 && v17 < v23);
          }
        }
      }
    }
  }

  return result;
}