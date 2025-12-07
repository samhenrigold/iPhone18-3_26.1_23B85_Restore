uint64_t bed_GoForward(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t), uint64_t a3)
{
  result = 2368741383;
  if (a1 && a2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(v6 + 16);
    if (v7 < v8)
    {
      v10 = *(v6 + 8) + *(v6 + 2) * *(a1 + 32);
      do
      {
        v11 = a2(a3, v10);
        LOWORD(v7) = *(a1 + 32);
        v8 = *(v6 + 16);
        if (v11)
        {
          break;
        }

        LOWORD(v7) = v7 + 1;
        *(a1 + 32) = v7;
        v10 += *(v6 + 2);
      }

      while (v8 > v7);
    }

    if (v8 <= v7)
    {
      return (*(a1 + 36) << 20) | 0x80002014;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t bed_GoBackward(uint64_t a1, unsigned int (*a2)(uint64_t, unint64_t), uint64_t a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  v5 = -2147475449;
  if (a2)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = *(v7 + 16);
    if (v8 >= v9)
    {
      LOWORD(v8) = v9 - 1;
      *(a1 + 32) = v9 - 1;
    }

    v10 = *(v7 + 8) + *(v7 + 2) * v8;
    if (v8)
    {
      while (!a2(a3, v10))
      {
        v11 = *(a1 + 32) - 1;
        *(a1 + 32) = v11;
        v10 -= *(v7 + 2);
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      if (*(a1 + 32))
      {
        return 0;
      }
    }

LABEL_11:
    if (a2(a3, v10))
    {
      return 0;
    }

    v5 = -2147475436;
  }

  return v5 | (*(a1 + 36) << 20);
}

uint64_t bed_FindForward(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t), uint64_t a3, _WORD *a4)
{
  if (!a1)
  {
    return 2368741383;
  }

  v6 = -2147475449;
  if (a2 && a4)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a4 = v9;
    v10 = *(v8 + 16);
    if (v9 < v10)
    {
      v12 = *(v8 + 8) + *(v8 + 2) * v9;
      while (1)
      {
        v13 = a2(a3, v12);
        LOWORD(v9) = *a4;
        if (v13)
        {
          break;
        }

        LOWORD(v9) = v9 + 1;
        *a4 = v9;
        v12 += *(v8 + 2);
        v10 = *(v8 + 16);
        if (v10 <= v9)
        {
          goto LABEL_11;
        }
      }

      v10 = *(v8 + 16);
    }

LABEL_11:
    if (v10 > v9)
    {
      return 0;
    }

    v6 = -2147475436;
  }

  return v6 | (*(a1 + 36) << 20);
}

uint64_t bed_FindBackward(uint64_t a1, unsigned int (*a2)(uint64_t, unint64_t), uint64_t a3, _WORD *a4)
{
  if (!a1)
  {
    return 2368741383;
  }

  v6 = -2147475449;
  if (a2 && a4)
  {
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    *a4 = v10;
    v11 = *(v9 + 8) + *(v9 + 2) * v10;
    if (v10)
    {
      while (!a2(a3, v11))
      {
        v12 = *a4 - 1;
        *a4 = v12;
        v11 -= *(v9 + 2);
        if (!v12)
        {
          goto LABEL_10;
        }
      }

      if (*a4)
      {
        return 0;
      }
    }

LABEL_10:
    if (a2(a3, v11))
    {
      return 0;
    }

    v6 = -2147475436;
  }

  return v6 | (*(a1 + 36) << 20);
}

uint64_t bed_GetcElem(uint64_t a1, _WORD *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  result = 0;
  *a2 = *(*(a1 + 24) + 16);
  return result;
}

uint64_t bed_GetiElem(uint64_t a1, _WORD *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  v2 = *(a1 + 32);
  if (v2 >= *(*(a1 + 24) + 16))
  {
    return (*(a1 + 36) << 20) | 0x8000200F;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t bed_GetpElem(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a3)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  if (a2 == 0xFFFF)
  {
    a2 = *(a1 + 32);
  }

  v3 = *(a1 + 24);
  if (a2 >= *(v3 + 16))
  {
    return (*(a1 + 36) << 20) | 0x8000200F;
  }

  result = 0;
  *a3 = *(v3 + 8) + *(v3 + 2) * a2;
  return result;
}

uint64_t bed_GetpBlock(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  result = 0;
  *a2 = *(a1 + 24);
  return result;
}

uint64_t bed_IsCursorAtEnd(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!a2)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  result = 0;
  *a2 = *(a1 + 32) >= *(*(a1 + 24) + 16);
  return result;
}

uint64_t bed_Insert(uint64_t a1, void *__src, int a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!__src)
  {
    return (*(a1 + 36) << 20) | 0x80002007;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = (a1 + 24);
  v7 = *(a1 + 24);
  v8 = v7[8];
  if (v8 + a3 > v7[9])
  {
    result = datac_RequestBlock(*(a1 + 16), *v7, (v8 + a3), (a1 + 24));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = *v6;
    v8 = (*v6)[8];
  }

  v10 = *(a1 + 32);
  if (v10 < v8)
  {
    cstdlib_memmove((*(v7 + 1) + (v10 + a3) * v7[1]), (*(v7 + 1) + v7[1] * v10), v7[1] * (v8 - v10));
    v10 = *(a1 + 32);
  }

  cstdlib_memmove((*(v7 + 1) + v7[1] * v10), __src, v7[1] * a3);
  result = 0;
  v7[8] += a3;
  *(a1 + 32) += a3;
  return result;
}

uint64_t bed_Remove(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  v5 = *(a1 + 24);
  v6 = *(v5 + 16);
  if (v6 <= a2)
  {
    return (*(a1 + 36) << 20) | 0x8000200F;
  }

  if (!a3)
  {
    return 0;
  }

  v7 = a3 + a2 <= v6 ? a3 : v6 - a2;
  v8 = a3 + a2 <= v6 ? (v6 - (a3 + a2)) : 0;
  v9 = a2 + v7;
  cstdlib_memmove((*(v5 + 8) + *(v5 + 2) * a2), (*(v5 + 8) + v9 * *(v5 + 2)), v8 * *(v5 + 2));
  *(v5 + 16) -= v7;
  v10 = *(a1 + 32);
  if (v10 <= a2)
  {
    return 0;
  }

  result = 0;
  if (v9 <= v10)
  {
    *(a1 + 32) = v10 - v7;
  }

  else
  {
    *(a1 + 32) = a2;
  }

  return result;
}

uint64_t isEsc(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v5 = a4;
  if (a3 <= a4)
  {
    return 0;
  }

  v6 = a2[a4];
  if (v6 != 92 && v6 != 27)
  {
    return 0;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v9 = exePattern("esc", a1, a2, a3, a4, 0x2000, &v13, v12, &v11, 0x3E7u);
  result = 0;
  if ((v9 & 0x80000000) == 0 && v13 && LODWORD(v12[0]) == v5)
  {
    *a5 = WORD2(v12[0]) - v5;
    return 1;
  }

  return result;
}

uint64_t exePattern(const char *a1, uint64_t a2, char *a3, int a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, _DWORD *a9, unsigned __int16 a10)
{
  LODWORD(v14) = a4;
  v39 = *MEMORY[0x277D85DE8];
  log_OutText(*(*a2 + 32), "PP", 4, 0, "exePattern for pattern: %s", a1);
  *a7 = 0;
  v18 = *(*(a2 + 8) + 8);
  if (a10 == 999)
  {
    if (!*(v18 + 48))
    {
      return 0;
    }

    v19 = 0;
    v20 = 0;
    while (cstdlib_strcmp(*(*(v18 + 56) + v19 + 16), a1))
    {
      ++v20;
      v18 = *(*(a2 + 8) + 8);
      v19 += 24;
      if (v20 >= *(v18 + 48))
      {
        return 0;
      }
    }

    v21 = (*(*(*(a2 + 8) + 8) + 56) + v19);
  }

  else
  {
    v21 = (*(v18 + 40) + 24 * a10 + 8);
  }

  v22 = *v21;
  if (!*v21)
  {
    return 0;
  }

  if (*(a2 + 48) >= v14)
  {
    v14 = v14;
  }

  else
  {
    v14 = *(a2 + 48);
  }

  cstdlib_memset(&__b, -1, 0x190uLL);
  v23 = nuance_pcre_exec(*(a2 + 24), *(a2 + 32), v22, 0, a3, v14, a5, a6, &__b, 100);
  if ((v23 & 0x80000000) == 0)
  {
    if (v23)
    {
      *a8 = __b;
      v25 = v35;
      v24 = v36;
      *(a8 + 16) = v35;
      *(a8 + 20) = v24;
      if (v25 == -1 && v24 == -1)
      {
        v26 = v37;
        if (v37 != -1)
        {
          v27 = v38;
          if (v38 != -1)
          {
            *a9 = 1;
            *(a8 + 16) = v26;
            *(a8 + 20) = v27;
          }
        }
      }

      v28 = 0;
      *a7 = 1;
      return v28;
    }

    return 0;
  }

  v29 = nuance_pcre_ErrorToLhError(v23);
  v28 = v29;
  if (v29 >> 20 == 2213)
  {
    v30 = v29 & 0x1FFF;
    if (v30 == 10)
    {
      log_OutPublic(*(*a2 + 32), "PP", 11002, 0, v32, v33);
      return v28;
    }

    if (v30 != 7778)
    {
      if (v30 != 20)
      {
        log_OutPublic(*(*a2 + 32), "PP", 11027, "%s%x");
        return v28;
      }

      return 0;
    }
  }

  return v28;
}

uint64_t isEscOrPartialEsc(uint64_t a1, char *a2, unsigned int a3, uint64_t a4, _WORD *a5)
{
  v5 = a4;
  if (a3 <= a4)
  {
    return 0;
  }

  v6 = a2[a4];
  if (v6 != 92 && v6 != 27)
  {
    return 0;
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v9 = exePattern("esc", a1, a2, a3, a4, 40960, &v14, v13, &v12, 0x3E7u);
  if ((v9 & 0x1FFF) == 0x1E62)
  {
    return 2;
  }

  v11 = v9;
  result = 0;
  if ((v11 & 0x80000000) == 0 && v14 && LODWORD(v13[0]) == v5)
  {
    *a5 = WORD2(v13[0]) - v5;
    return 1;
  }

  return result;
}

uint64_t escseqm_str2enumMapping(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(v2 + 8);
  if (*(v3 + 64))
  {
    v6 = 0;
    v7 = *(a2 + 8);
    do
    {
      v8 = *(v3 + 72);
      if (*(v7 + 20) == *(v8 + 16 * v6))
      {
        if (*(v8 + 16 * v6 + 4))
        {
          v9 = 0;
          v10 = 0;
          while (1)
          {
            v11 = *(*(a2 + 8) + 40);
            if (v11)
            {
              if (!cstdlib_strcmp(*(*(v8 + 16 * v6 + 8) + v9), v11))
              {
                heap_Free(*(*a1 + 8), *(*(a2 + 8) + 40));
                *(*(a2 + 8) + 40) = 0;
                *(*(a2 + 8) + 40) = *(*(*(*(a1[1] + 8) + 72) + 16 * v6 + 8) + v9 + 8);
                return 0;
              }

              v2 = a1[1];
            }

            ++v10;
            v8 = *(*(v2 + 8) + 72);
            v9 += 16;
            if (v10 >= *(v8 + 16 * v6 + 4))
            {
              v7 = *(a2 + 8);
              break;
            }
          }
        }

        heap_Free(*(*a1 + 8), *(v7 + 40));
        *(*(a2 + 8) + 40) = 0;
        v7 = *(a2 + 8);
        *(v7 + 20) = 0;
        v2 = a1[1];
      }

      ++v6;
      v3 = *(v2 + 8);
    }

    while (v6 < *(v3 + 64));
  }

  return 0;
}

uint64_t escseqm_get_token(void *a1, char *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = a3;
  v86 = 0;
  v87 = 0;
  v84 = 0uLL;
  v85 = 0;
  *a5 = 0;
  v10 = exePattern("esc", a1, a2, a3, 0, 0, &v87, &v84, &v86, 0x3E7u);
  if ((v10 & 0x80000000) != 0 || !v87)
  {
    return v10;
  }

  v12 = v84;
  v11 = DWORD1(v84);
  v13 = exePattern("enhancedescseq", a1, a2, v7, DWORD1(v84), 16, &v87, &v84, &v86, 0x3E7u);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (v87 != 1)
  {
    v10 = exePattern("esctoi", a1, a2, v7, v11, 16, &v87, &v84, &v86, 0x3E7u);
    if ((v10 & 0x80000000) != 0 || v87 != 1)
    {
      return v10;
    }

    v30 = *(a4 + 8);
    v31 = DWORD1(v84);
    *(v30 + 20) = 7;
    *(v30 + 24) = v12;
    *(v30 + 28) = v31 - v12;
    *(v30 + 32) = v12;
    *(v30 + 36) = v12;
    if (*(*(a1[1] + 8) + 64))
    {
      *(v30 + 40) = 0;
      if (*(&v84 + 1) != -1)
      {
        v32 = *(*a1 + 8);
        v33 = a2[SDWORD2(v84)];
        if (v33 <= 0x5D)
        {
          if (v33 == 43)
          {
            v34 = &unk_26ECDBE44;
            goto LABEL_79;
          }

          if (v33 == 62)
          {
            v34 = &unk_26ECDBE48;
            goto LABEL_79;
          }
        }

        else
        {
          switch(v33)
          {
            case '^':
              v34 = "diacritized";
              goto LABEL_79;
            case 'h':
              v34 = "hil";
              goto LABEL_79;
            case 'j':
              v34 = "jeita";
LABEL_79:
              v55 = cstdlib_strlen(v34);
              *(*(a4 + 8) + 40) = heap_Calloc(v32, 1, (v55 + 1));
              v56 = *(*(a4 + 8) + 40);
              if (!v56)
              {
                return 2147491850;
              }

              cstdlib_strcpy(v56, v34);
              goto LABEL_81;
          }
        }

        v30 = *(a4 + 8);
LABEL_84:
        *(v30 + 20) = 0;
        return v10;
      }
    }

    else
    {
      v44 = a2[SDWORD2(v84)];
      if (v44 <= 0x5D)
      {
        if (v44 != 43)
        {
          if (v44 != 62)
          {
            goto LABEL_84;
          }

          v44 = 16;
        }
      }

      else
      {
        switch(v44)
        {
          case '^':
            v44 = 60;
            break;
          case 'h':
            v44 = 108;
            break;
          case 'j':
            break;
          default:
            goto LABEL_84;
        }
      }

      *(v30 + 40) = v44;
    }

LABEL_81:
    *a5 = 2;
    return v10;
  }

  v82 = DWORD1(v84);
  *v83 = v85;
  v89 = 0;
  v88 = 0;
  v15 = DWORD2(v84);
  v14 = HIDWORD(v84);
  *(*(a4 + 8) + 20) = 0;
  v16 = *(a1[1] + 8);
  if (*(v16 + 4))
  {
    v17 = 0;
    v18 = 0;
    v19 = (v14 - v15);
    while (1)
    {
      v20 = cstdlib_strlen(*(*(v16 + 8) + v17));
      v21 = a1[1];
      if (v20 == v19)
      {
        v22 = *(*(v21 + 8) + 8);
        if (*(v22 + v17 + 8) == 1)
        {
          v23 = LH_strnicmp(*(v22 + v17), &a2[v15], v19);
          v21 = a1[1];
          if (!v23)
          {
            break;
          }
        }
      }

      ++v18;
      v16 = *(v21 + 8);
      v17 += 24;
      if (v18 >= *(v16 + 4))
      {
        goto LABEL_11;
      }
    }

    v45 = *(*(v21 + 8) + 8) + v17;
    v46 = *(a4 + 8);
    v48 = *(v45 + 12);
    v47 = *(v45 + 16);
    *(v46 + 20) = v48;
    *a4 = 0;
    if (v47 != 9999)
    {
      *(v46 + 40) = v47;
      *a4 = 1;
    }
  }

LABEL_11:
  v24 = *(a4 + 8);
  v24[6] = v12;
  v24[7] = v82 - v12;
  v24[8] = v12;
  v24[9] = v12;
  v25 = v24[5];
  if (v25 == 32)
  {
    if (getTrueEnd(a1, a2, v7, v83[0], &v83[1], 32, &v88))
    {
      v26 = *(a4 + 8);
      v27 = v83[1];
      v28 = v83[1] - v12 + 1;
      v26[6] = v12;
      v26[7] = v28;
      v26[8] = v12;
      v26[9] = v12;
      *a5 = 2;
      v10 = 0;
      if (v83[0] == v27)
      {
        v29 = *(a1 + 14) == 0;
        *(a1 + 14) = v29;
        v26[10] = v29;
      }

      else
      {
        v26[5] = 0;
      }

      goto LABEL_60;
    }

LABEL_55:
    v10 = 0;
    goto LABEL_60;
  }

  if (v83[0] == v83[1])
  {
    if (v25 == 2)
    {
LABEL_26:
      v24[10] = 0;
      setDefaultArgIfAny(a1, a4);
LABEL_27:
      v10 = 0;
      goto LABEL_59;
    }

    v49 = *(a1[1] + 8);
    v50 = *(v49 + 16);
    if (*(v49 + 16))
    {
      v51 = *(v49 + 24);
      do
      {
        v52 = *v51;
        v51 += 3;
        if (v52 == v25)
        {
          goto LABEL_26;
        }
      }

      while (--v50);
    }

    if (!marker_hasNonConstCharPtrArg(v24[5]))
    {
      goto LABEL_27;
    }

    v13 = checkForDefaultArgs(a1, a4, &v89 + 1);
    *a5 = 2;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    return v13;
  }

  v90 = 0;
  if (!getTrueEnd(a1, a2, v7, v83[0], &v83[1], v25, &v90))
  {
    v36 = 0;
    v89 = 1;
    goto LABEL_57;
  }

  v35 = v83[1];
  v36 = v83[1] + 1;
  if (!v83[1])
  {
    goto LABEL_36;
  }

  v37 = 0;
  v38 = a2 - 1;
  while (1)
  {
    v39 = v38[v83[1]];
    v40 = v39 > 0x20;
    v41 = (1 << v39) & 0x100002600;
    if (v40 || v41 == 0)
    {
      break;
    }

    --v38;
    if (v83[1] == ++v37)
    {
      goto LABEL_36;
    }
  }

  v57 = v83[1] - v37;
  if (v83[1] - v37 <= v83[0])
  {
LABEL_36:
    if (marker_hasNonConstCharPtrArg(*(*(a4 + 8) + 20)) || !*(*(a4 + 8) + 20))
    {
      v43 = checkForDefaultArgs(a1, a4, &v89 + 1);
LABEL_38:
      v10 = v43;
      goto LABEL_39;
    }

    HIDWORD(v89) = setDefaultArgIfAny(a1, a4);
    if (!HIDWORD(v89))
    {
      HIDWORD(v89) = *(*(a4 + 8) + 20) == 13;
    }

    goto LABEL_57;
  }

  v58 = *(*(a4 + 8) + 20);
  v59 = v90;
  if (v58 == 26 && v90 != 0)
  {
    v13 = parseStringArg(a1, a4, a2, v83[0], v90, &v89 + 1, 0);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v43 = parseStringArg(a1, a4, a2, v59 + 1, v57, &v89 + 1, 1);
    goto LABEL_38;
  }

  v61 = *(a1[1] + 8);
  v62 = *(v61 + 32);
  if (!*(v61 + 32))
  {
LABEL_95:
    if (marker_hasNonConstCharPtrArg(v58))
    {
LABEL_96:
      v13 = parseStringArg(a1, a4, a2, v83[0], v57, &v89 + 1, 0);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      v66 = *(a4 + 8);
      if (!*(v66 + 20))
      {
        heap_Free(*(*a1 + 8), *(v66 + 40));
        *(*(a4 + 8) + 40) = 0;
      }

      goto LABEL_57;
    }

    v67 = *(*(a4 + 8) + 20);
    if (v67 == 2)
    {
      goto LABEL_112;
    }

    if (!v67)
    {
      goto LABEL_96;
    }

    v68 = *(a1[1] + 8);
    v69 = *(v68 + 16);
    if (*(v68 + 16))
    {
      v70 = *(v68 + 24);
      while (1)
      {
        v71 = *v70;
        v70 += 3;
        if (v71 == v67)
        {
          break;
        }

        if (!--v69)
        {
          goto LABEL_111;
        }
      }

LABEL_112:
      parseNumericArg(a1, a4, a2, v83[0], v57, &v89 + 1, &v89);
      goto LABEL_57;
    }

LABEL_111:
    HIDWORD(v89) = v67 == 13;
    LODWORD(v89) = 0;
LABEL_57:
    v10 = 0;
    goto LABEL_58;
  }

  v63 = 0;
  v64 = *(v61 + 40);
  v65 = 16;
  while (*(v64 + v65 - 16) != v58)
  {
    ++v63;
    v65 += 24;
    if (v62 == v63)
    {
      goto LABEL_95;
    }
  }

  v79 = v83[1] - v37;
  v93[0] = 0;
  memset(v92, 0, sizeof(v92));
  v10 = exePattern("dummy", a1, &a2[v83[0]], (LOWORD(v83[1]) - LOWORD(v83[0]) - v37), 0, 16, v93, v92, &v91, v63);
  if ((v10 & 0x80000000) == 0)
  {
    if (v93[0] != 1)
    {
      goto LABEL_120;
    }

    if (v35 + LODWORD(v92[0]) - v83[0] - HIDWORD(v92[0]) == v37)
    {
      HIDWORD(v89) = 1;
      v78 = v79;
      v80 = v83[0];
      goto LABEL_123;
    }

    if (*(*(a4 + 8) + 20) == 7 && (v78 = HIDWORD(v92[0]) - LODWORD(v92[0]) + v83[0], v78 + 1 < v79) && utf8_BelongsToSet(8, &a2[v83[0]], HIDWORD(v92[0]), HIDWORD(v92[0]) + 1))
    {
      v72 = v78 + 1;
      while (1)
      {
        v81 = v72;
        if (!utf8_BelongsToSet(0, a2, v72, v72 + 1))
        {
          break;
        }

        v72 = utf8_determineUTF8CharLength(a2[v81]) + v81;
        if (v72 >= v79)
        {
          goto LABEL_140;
        }
      }

      v72 = v81;
LABEL_140:
      v80 = v72;
      if (v35 - v72 != v37)
      {
        v74 = (&v89 + 4);
LABEL_122:
        *v74 = 1;
        if (!HIDWORD(v89))
        {
          if (*a4 == 1)
          {
            v89 = 0x100000000;
          }

LABEL_39:
          if ((v10 & 0x80000000) != 0)
          {
            return v10;
          }

LABEL_58:
          v53 = *(a4 + 8);
          v53[6] = v12;
          v53[7] = v36 - v12;
          v53[8] = v12;
          v53[9] = v12;
          if (!HIDWORD(v89))
          {
            v53[5] = 0;
            if (v89)
            {
LABEL_60:
              v54 = *(a4 + 8);
              if (*(v54 + 20) == 2)
              {
                *(v54 + 20) = 3;
              }

              return v10;
            }
          }

LABEL_59:
          *a5 = 2;
          goto LABEL_60;
        }

LABEL_123:
        v75 = *(*(*(a1[1] + 8) + 40) + v65);
        if (v75 == 1)
        {
          v13 = parseStringArg(a1, a4, a2, v83[0], v78, &v89 + 1, 0);
          v10 = 0;
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }
        }

        else if (!v75)
        {
          *(*(a4 + 8) + 40) = a2[v83[0]];
        }

        if (v83[0] != v80 && v35 - v78 != v37)
        {
          v13 = parseStringArg(a1, a4, a2, v80, v79, &v89 + 1, 1);
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }

          v10 = 0;
        }

        if (!HIDWORD(v89) && *(*(*(a1[1] + 8) + 40) + v65) == 1)
        {
          v76 = *(*(a4 + 8) + 40);
          if (v76)
          {
            heap_Free(*(*a1 + 8), v76);
            *(*(a4 + 8) + 40) = 0;
          }
        }

        goto LABEL_39;
      }

      v73 = v79;
    }

    else
    {
LABEL_120:
      v78 = v79;
      v73 = v83[0];
    }

    v80 = v73;
    HIDWORD(v89) = 0;
    v74 = &v89;
    goto LABEL_122;
  }

  return v10;
}

uint64_t escseqm_ClassOpen(_WORD *a1, uint64_t a2, uint64_t **a3)
{
  v3 = 2147491850;
  v53 = 0;
  v52 = 0;
  if (!a3)
  {
    return 2147491847;
  }

  v5 = a2;
  v50 = 0;
  v51 = 0;
  inited = InitRsrcFunction(a1, a2, &v53);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v8 = heap_Calloc(*(v53 + 8), 1, 16);
  if (v8)
  {
    v9 = v8;
    UInt = paramc_ParamGetUInt(*(v53 + 40), "ppmaxpcreframeblocks", &v52);
    v11 = v52;
    v12 = paramc_ParamGetUInt(*(v53 + 40), "ppnumframesinblock", &v52);
    v13 = v52;
    v14 = nuance_pcre_ObjOpen(a1, v5, &v50);
    if ((v14 & 0x80000000) != 0)
    {
      v3 = v14;
    }

    else
    {
      if (v12 < 0)
      {
        v15 = 50;
      }

      else
      {
        v15 = v13;
      }

      if (UInt < 0)
      {
        v16 = 30;
      }

      else
      {
        v16 = v11;
      }

      v17 = nuance_pcre_Init(v50, v51, v16, v15);
      v18 = v17;
      if ((v17 & 0x80000000) != 0)
      {
        v3 = v17;
      }

      else
      {
        v19 = v53;
        *v9 = v53;
        v20 = heap_Calloc(*(v19 + 8), 1, 96);
        v9[1] = v20;
        if (v20)
        {
          v21 = v20;
          v47 = v9;
          v22 = v53;
          v23 = v50;
          v49 = v51;
          v56 = 0;
          v55 = 0;
          __s = 0;
          paramc_ParamGetStr(*(v53 + 40), "__NUAN_alternative_esc_seq__", &__s);
          *(v21 + 4) = 35;
          v24 = heap_Calloc(*(v22 + 8), 1, 840);
          *(v21 + 8) = v24;
          if (v24)
          {
            cstdlib_memcpy(v24, &g_pEscMappings, 0x348uLL);
            *(v21 + 16) = 9;
            v25 = heap_Calloc(*(v22 + 8), 9, 12);
            *(v21 + 24) = v25;
            if (v25)
            {
              cstdlib_memcpy(v25, &g_pEscNumericArgs, 0x6CuLL);
              *(v21 + 48) = 6;
              v26 = heap_Calloc(*(v22 + 8), 6, 24);
              *(v21 + 56) = v26;
              if (v26)
              {
                v27 = 0;
                v28 = off_279DAD970;
                v29 = v49;
                do
                {
                  v30 = *(v28 - 1);
                  *(*(v21 + 56) + v27 + 16) = v30;
                  if (__s && *__s && !cstdlib_strcmp(v30, "esc"))
                  {
                    v48 = *(v22 + 8);
                    v31 = *v28;
                    v32 = v23;
                    v33 = v22;
                    v34 = cstdlib_strlen(*v28);
                    v35 = v34 + cstdlib_strlen(__s);
                    v22 = v33;
                    v23 = v32;
                    v36 = heap_Calloc(v48, 1, v35 + 2);
                    if (!v36)
                    {
                      goto LABEL_30;
                    }

                    v37 = v36;
                    cstdlib_strcpy(v36, v31);
                    v37[cstdlib_strlen(v31) - 1] = 0;
                    cstdlib_strcat(v37, "|");
                    cstdlib_strcat(v37, __s);
                    cstdlib_strcat(v37, ")");
                    v29 = v49;
                    *(*(v21 + 56) + v27) = nuance_pcre_compile(v23, v49, v37, 2048, &v56, &v55, 0);
                    heap_Free(*(v22 + 8), v37);
                  }

                  else
                  {
                    *(*(v21 + 56) + v27) = nuance_pcre_compile(v23, v29, *v28, 2048, &v56, &v55, 0);
                  }

                  v27 += 24;
                  v28 += 2;
                }

                while (v27 != 144);
                *(v21 + 32) = 3;
                v39 = heap_Calloc(*(v22 + 8), 3, 24);
                *(v21 + 40) = v39;
                if (v39)
                {
                  v40 = *(v21 + 56);
                  v41 = v39 + 8;
                  v42 = 3;
                  v43 = &byte_26ECDBE24;
                  do
                  {
                    *(v41 + 8) = 1;
                    *(v41 - 8) = *(v43 - 1);
                    v44 = *v43;
                    v43 += 12;
                    *v41 = *(v40 + 24 * v44);
                    v41 += 24;
                    --v42;
                  }

                  while (v42);
                  *(v21 + 64) = 2;
                  v45 = heap_Calloc(*(v22 + 8), 1, 32);
                  *(v21 + 72) = v45;
                  if (v45)
                  {
                    cstdlib_memcpy(v45, &g_escStr2EnumMappings, 0x20uLL);
                    *(v21 + 80) = 5;
                    v46 = heap_Calloc(*(v22 + 8), 1, 120);
                    *(v21 + 88) = v46;
                    if (v46)
                    {
                      cstdlib_memcpy(v46, &g_escStr2StrMappings, 0x78uLL);
                      *v21 = 1;
                      *a3 = v47;
                      goto LABEL_31;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_30:
    escseqm_ClassClose(*a3);
    v18 = v3;
LABEL_31:
    nuance_pcre_DeInit(v50, v51);
    nuance_pcre_ObjClose(v50, v51);
    return v18;
  }

  return 10;
}

uint64_t escseqm_ClassClose(uint64_t *a1)
{
  if (!a1)
  {
    return 7;
  }

  v3 = *a1;
  v2 = a1[1];
  if (*v2 != 1)
  {
    goto LABEL_28;
  }

  v4 = v2[1];
  if (v4)
  {
    heap_Free(*(v3 + 8), v4);
    v2[1] = 0;
    *(v2 + 2) = 0;
  }

  v5 = v2[3];
  if (v5)
  {
    heap_Free(*(v3 + 8), v5);
    v2[3] = 0;
    *(v2 + 8) = 0;
  }

  v6 = v2[7];
  if (v6)
  {
    v7 = *(v2 + 24);
    if (*(v2 + 24))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (*(v6 + v8))
        {
          heap_Free(*(v3 + 8), *(v6 + v8));
          v6 = v2[7];
          v7 = *(v2 + 24);
        }

        v10 = (v6 + v8);
        *v10 = 0;
        v10[2] = 0;
        ++v9;
        v8 += 24;
      }

      while (v9 < v7);
    }

    heap_Free(*(v3 + 8), v6);
    v2[7] = 0;
  }

  v11 = v2[5];
  if (v11)
  {
    v12 = *(v2 + 16);
    if (*(v2 + 16))
    {
      v13 = (v12 + 1) & 0x1FFFE;
      v14 = vdupq_n_s64(v12 - 1);
      v15 = xmmword_26ECC7980;
      v16 = (v11 + 32);
      v17 = vdupq_n_s64(2uLL);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v14, v15));
        if (v18.i8[0])
        {
          *(v16 - 3) = 0;
        }

        if (v18.i8[4])
        {
          *v16 = 0;
        }

        v15 = vaddq_s64(v15, v17);
        v16 += 6;
        v13 -= 2;
      }

      while (v13);
    }

    heap_Free(*(v3 + 8), v11);
    v2[5] = 0;
  }

  v19 = v2[9];
  if (v19)
  {
    heap_Free(*(v3 + 8), v19);
    v2[9] = 0;
  }

  v20 = v2[11];
  if (v20)
  {
    heap_Free(*(v3 + 8), v20);
    v2[11] = 0;
  }

  *v2 = 0;
  cstdlib_memset(v2, 0, 0x60uLL);
  v2 = a1[1];
  if (v2)
  {
LABEL_28:
    heap_Free(*(v3 + 8), v2);
  }

  heap_Free(*(v3 + 8), a1);
  return 0;
}

uint64_t escseqm_ObjOpen(uint64_t a1, _WORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v6 = 2147491847;
  if (a1)
  {
    if (a6)
    {
      inited = InitRsrcFunction(a2, a3, &v20);
      if ((inited & 0x80000000) == 0)
      {
        v12 = inited;
        *a6 = 0;
        v13 = heap_Calloc(*(v20 + 8), 1, 64);
        if (v13)
        {
          v14 = v13;
          v15 = v20;
          *v13 = v20;
          *(v13 + 52) = 0;
          if (paramc_ParamGetStr(*(v15 + 40), "processingtnplus", &v18))
          {
            v16 = 1;
          }

          else
          {
            v16 = v18 == 0;
          }

          if (!v16 && !LH_stricmp(v18, "yes"))
          {
            *(v14 + 52) = 1;
          }

          *(v14 + 56) = 0;
          *(v14 + 24) = a4;
          *(v14 + 32) = a5;
          *(v14 + 8) = a1;
          *(v14 + 16) = 0;
          *(v14 + 40) = *(a1 + 8);
          *(v14 + 48) = 1024;
          if ((paramc_ParamGetUInt(*(v20 + 40), "ppescseqmaxlength", &v19) & 0x80000000) == 0)
          {
            *(v14 + 48) = v19 + 32;
          }

          *a6 = v14;
          return v12;
        }

        else
        {
          return 2147491850;
        }
      }
    }
  }

  return v6;
}

uint64_t escseqm_ObjClose(uint64_t *a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  v1 = *a1;
  a1[5] = 0;
  heap_Free(*(v1 + 8), a1);
  return 0;
}

uint64_t escseqm_ProcessStart(uint64_t a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  result = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t escseqm_GetDefaults(void *a1, uint64_t *a2)
{
  v2 = 2147491847;
  v12 = 0;
  if (a1)
  {
    v5 = heap_Calloc(*(*a1 + 8), 1, 2561);
    if (!v5)
    {
      return 2147491850;
    }

    v6 = v5;
    v11[0] = 0;
    v7 = v5 + 64;
    v8 = 1;
    while (1)
    {
      *(v7 + 20) = v8;
      v11[1] = v7;
      *v7 = 1;
      *(v7 + 8) = 0;
      if (v8 <= 0xDu && ((1 << v8) & 0x2314) != 0)
      {
        goto LABEL_6;
      }

      hasNonConstCharPtrArg = marker_hasNonConstCharPtrArg(v8);
      checkForDefaultArgs(a1, v11, &v12);
      if (hasNonConstCharPtrArg)
      {
        break;
      }

      if (v12)
      {
        if (*(*(a1[1] + 8) + 64))
        {
          escseqm_str2enumMapping(a1, v11);
        }

        goto LABEL_7;
      }

      *(v7 + 20) = v8;
      if (!setDefaultArgIfAny(a1, v11))
      {
        goto LABEL_6;
      }

LABEL_7:
      ++v8;
      v7 += 64;
      if (v8 == 40)
      {
        v2 = 0;
        *a2 = v6;
        return v2;
      }
    }

    if (v12)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v7 + 20) = 0;
    goto LABEL_7;
  }

  return v2;
}

uint64_t checkForDefaultArgs(void *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v6 = *(a1[1] + 8);
  v7 = *(v6 + 80);
  if (*(v6 + 80))
  {
    v8 = 0;
    v9 = *(v6 + 88);
    while (1)
    {
      v10 = v9 + 24 * v8;
      v11 = *(v10 + 8);
      if (*(v10 + 8))
      {
        break;
      }

LABEL_7:
      if (++v8 == v7)
      {
        v14 = *(a2 + 8);
        goto LABEL_18;
      }
    }

    v12 = *(v10 + 16);
    while (1)
    {
      v13 = *v12++;
      if (*(*(a2 + 8) + 20) == v13)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    v15 = *(*a1 + 8);
    v16 = cstdlib_strlen(*v10);
    *(*(a2 + 8) + 40) = heap_Calloc(v15, 1, (v16 + 1));
    v17 = *(*(a2 + 8) + 40);
    if (v17)
    {
      cstdlib_strcpy(v17, *(*(*(a1[1] + 8) + 88) + 24 * v8));
      result = 0;
      *a3 = 1;
      return result;
    }

    return 2147491850;
  }

  v14 = *(a2 + 8);
  v19 = *(v14 + 20);
  v20 = v19 > 0x24;
  v21 = (1 << v19) & 0x1000201000;
  if (!v20 && v21 != 0)
  {
    v23 = *(*a1 + 8);
    MarkerArgStr = marker_getMarkerArgStr(1u);
    v25 = cstdlib_strlen(MarkerArgStr);
    *(*(a2 + 8) + 40) = heap_Calloc(v23, 1, (v25 + 1));
    v26 = *(*(a2 + 8) + 40);
    if (v26)
    {
      v27 = marker_getMarkerArgStr(1u);
      cstdlib_strcpy(v26, v27);
      result = 0;
      *a3 = 1;
      return result;
    }

    return 2147491850;
  }

LABEL_18:
  v28 = *(v14 + 40);
  if (v28)
  {
    heap_Free(*(*a1 + 8), v28);
    *(*(a2 + 8) + 40) = 0;
  }

  result = 0;
  *(*(a2 + 8) + 20) = 0;
  return result;
}

uint64_t setDefaultArgIfAny(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 8);
  v3 = *(v2 + 4);
  if (!*(v2 + 4))
  {
LABEL_6:
    result = 0;
LABEL_7:
    *a2 = result;
    return result;
  }

  v4 = *(a2 + 8);
  v5 = *(v4 + 20);
  v6 = (*(v2 + 8) + 16);
  while (v5 != *(v6 - 1) || *(v6 - 2) != 1)
  {
    v6 += 6;
    if (!--v3)
    {
      goto LABEL_6;
    }
  }

  if (*v6 != 9999)
  {
    if (*(a1 + 52))
    {
      v8 = v5 == 8;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = 29999;
    }

    else
    {
      v9 = *v6;
    }

    *(v4 + 40) = v9;
    result = 1;
    goto LABEL_7;
  }

  return 0;
}

uint64_t escseqm_Match(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    return 2147491847;
  }

  if (!**(a1[1] + 8))
  {
    log_OutPublic(*(*a1 + 32), "PP", 1805, 0);
    return 2147491847;
  }

  v7 = 0;
  v6[0] = 0;
  v6[1] = a4;
  result = escseqm_get_token(a1, a2, a3, v6, &v7);
  if ((result & 0x1FFF) != 0xA)
  {
    if (v7 == 2)
    {
      if (*(*(a1[1] + 8) + 64))
      {
        escseqm_str2enumMapping(a1, v6);
      }

      return 0;
    }

    else
    {
      return 2147491840;
    }
  }

  return result;
}

uint64_t getTrueEnd(uint64_t a1, char *a2, unsigned int a3, int a4, _DWORD *a5, int a6, _DWORD *a7)
{
  *a7 = 0;
  if (a3 <= a4)
  {
    return 0;
  }

  v35 = v7;
  v36 = v8;
  v10 = a4;
  v14 = 0;
  v15 = 0;
  v16 = a4;
  v18 = a6 != 26 && a6 != 7;
  v32 = v18;
  v33 = 0;
  v19 = a6 != 29 && v18;
  while (1)
  {
    if (!a2[v10])
    {
      return 0;
    }

    v20 = isEsc(a1, a2, (a3 - v10), v16, &v34);
    v21 = a2[v10];
    if (v20)
    {
      if (v21 != 92)
      {
        return 0;
      }
    }

    else if (v21 != 92)
    {
      LODWORD(v22) = v16 + 1;
      v27 = v21 == 34;
      goto LABEL_34;
    }

    v22 = v16 + 1;
    if (v22 >= a3 || (v23 = a2[v22], v23 != 92) && v23 != 34)
    {
      v25 = v15 != 1 || v19;
      if (v25 == 1)
      {
        break;
      }

      goto LABEL_28;
    }

    v24 = v32;
    if (v15 != 1)
    {
      v24 = 1;
    }

    if (a6 != 29 && (v24 & 1) != 0)
    {
      break;
    }

LABEL_28:
    if (v22 < a3)
    {
      v26 = a2[v22];
      if (v26 == 92 || v26 == 34)
      {
        ++v10;
        goto LABEL_53;
      }
    }

    v27 = 0;
LABEL_34:
    if (a6 != 26 && a6 != 7 || !v27)
    {
      goto LABEL_53;
    }

    if (v15 == 1)
    {
      if (v33 | v14)
      {
        v15 = 0;
        if (v14)
        {
          v28 = 0;
        }

        else
        {
          v28 = v33 == 1;
        }

        if (v28)
        {
          v14 = 1;
        }

        goto LABEL_53;
      }

      v15 = 0;
      v14 = 0;
      if (a2[v22] == 58)
      {
        *a7 = v22;
      }
    }

    else
    {
      if (v33 != 1)
      {
        v15 = 1;
        goto LABEL_53;
      }

      result = 0;
      if (a6 != 26 || v14 == 1)
      {
        return result;
      }

      v15 = 1;
    }

    v33 = 1;
LABEL_53:
    v16 = ++v10;
    if (v10 >= a3)
    {
      return 0;
    }
  }

  *a5 = v16;
  return 1;
}

uint64_t parseStringArg(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _DWORD *a6, int a7)
{
  v13 = a5 - a4;
  v14 = heap_Calloc(*(*a1 + 8), 1, (v13 + 1));
  if (!v14)
  {
    return 2147491850;
  }

  v15 = v14;
  v31 = a7;
  v30 = a1;
  v16 = a2;
  v17 = a6;
  v18 = v13;
  cstdlib_memcpy(v14, (a3 + a4), v13);
  if (v13)
  {
    v19 = 0;
    v20 = 0;
    v21 = v15;
    v22 = v13;
    do
    {
      if (v19)
      {
        if (*(v21 - 1) == 92)
        {
          v23 = *v21;
          if (v23 == 92 || v23 == 34)
          {
            cstdlib_memmove(v21 - 1, v21, v18 + v19);
            v15[--v22] = 0;
          }
        }
      }

      ++v20;
      v18 = v22;
      --v19;
      ++v21;
    }

    while (v20 < v22);
  }

  if (v31 == 1 || (v24 = *(v16 + 8), *(v24 + 20) == 26))
  {
    if (utf8_BelongsToSet(7, v15, 0, v13))
    {
      v25 = cstdlib_strlen(v15);
      if (utf8_BelongsToSet(7, v15, v25 - 1, v13))
      {
        if (cstdlib_strlen(v15) != 1)
        {
          v26 = cstdlib_strlen(v15);
          cstdlib_memmove(v15, v15 + 1, v26 - 1);
          v15[v26 - 2] = 0;
        }
      }
    }

    if (v31 == 1)
    {
      v27 = cstdlib_strlen(v15);
      v28 = (*(v16 + 8) + 48);
      if (!v27)
      {
        *v28 = 0;
        *v17 = 0;
        heap_Free(*(*v30 + 8), v15);
        return 0;
      }

      goto LABEL_22;
    }

    v24 = *(v16 + 8);
  }

  v28 = (v24 + 40);
LABEL_22:
  result = 0;
  *v28 = v15;
  *v17 = 1;
  return result;
}

uint64_t parseNumericArg(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _DWORD *a6, _DWORD *a7)
{
  v7 = a7;
  v25 = *MEMORY[0x277D85DE8];
  *a7 = 0;
  *a6 = 0;
  v8 = a5 - a4;
  if (v8 <= 0xA && a3)
  {
    v11 = result;
    v12 = a3 + a4;
    cstdlib_memset(__b, 0, 0xBuLL);
    v13 = 0;
    do
    {
      __b[v13] = *(v12 + v13);
      result = cstdlib_strlen(__b);
      if (__b[v13])
      {
        v14 = result;
        result = utf8_BelongsToSet(6, __b, v13, result);
        if (result)
        {
          result = utf8_BelongsToSet(0, __b, v13, v14);
          if (!result)
          {
            goto LABEL_7;
          }
        }
      }

      goto LABEL_21;
LABEL_7:
      if (v13 + 1 >= v8)
      {
        break;
      }

      if (v13 > 8)
      {
        break;
      }
    }

    while (__b[v13++]);
    v16 = *(*(a2 + 8) + 20);
    if (v16 == 2)
    {
      v17 = v12;
      v18 = v8;
      v19 = 0;
      v20 = 1;
LABEL_20:
      result = escseqm_ReadU32InRange(v17, v18, v19, v20);
      *(*(a2 + 8) + 40) = result;
      v7 = a6;
      goto LABEL_21;
    }

    v21 = *(*(v11 + 8) + 8);
    v22 = *(v21 + 16);
    if (*(v21 + 16))
    {
      v23 = (*(v21 + 24) + 8);
      while (*(v23 - 2) != v16)
      {
        v23 += 3;
        if (!--v22)
        {
          goto LABEL_16;
        }
      }

      v19 = *(v23 - 1);
      v20 = *v23;
      v17 = v12;
      v18 = v8;
      goto LABEL_20;
    }

LABEL_16:
    if (*a2 == 1)
    {
      v7 = a6;
    }
  }

LABEL_21:
  *v7 = 1;
  return result;
}

uint64_t escseqm_ReadU32InRange(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  cstdlib_memset(__b, 0, 0xBuLL);
  v8 = 0;
  do
  {
    v9 = v8;
    v10 = *(a1 + v8);
    __b[v8++] = v10;
    if (v9 > 8)
    {
      break;
    }
  }

  while (v10 && v8 < a2);
  __b[v8] = 0;
  v12 = cstdlib_strtoul(__b, &v15, 0xAu);
  if (v12 >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (v12 >= a3)
  {
    return v13;
  }

  else
  {
    return a3;
  }
}

uint64_t escseqs_ClassOpen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v6 = 2147491847;
  v11 = 0;
  if ((InitRsrcFunction(a1, a2, &v11) & 0x80000000) == 0)
  {
    v7 = heap_Calloc(*(v11 + 8), 1, 32);
    if (v7)
    {
      v8 = v7;
      v9 = v11;
      *(v7 + 8) = a2;
      *(v7 + 16) = v9;
      *v7 = a1;
      v6 = escseqm_ClassOpen(a1, a2, (v7 + 24));
      if ((v6 & 0x80000000) != 0)
      {
        heap_Free(*(v11 + 8), v8);
      }

      else
      {
        *a3 = v8;
      }
    }

    else
    {
      return 2147491850;
    }
  }

  return v6;
}

uint64_t escseqs_ClassClose(uint64_t a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  v2 = *(a1 + 16);
  v3 = escseqm_ClassClose(*(a1 + 24));
  if ((v3 & 0x80000000) == 0)
  {
    heap_Free(*(v2 + 8), a1);
  }

  return v3;
}

uint64_t escseqs_ObjOpen(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v25 = 0;
  v26 = 0;
  v6 = 2147491847;
  if (a6 && (InitRsrcFunction(a2, a3, &v26) & 0x80000000) == 0)
  {
    *a6 = 0;
    v13 = heap_Alloc(v26[1], 96);
    if (!v13)
    {
      return 2147491850;
    }

    v14 = v13;
    cstdlib_memset(v13, 0, 0x60uLL);
    *(v14 + 72) = a1;
    *v14 = a2;
    *(v14 + 8) = a3;
    v15 = escseqm_ObjOpen(*(a1 + 24), a2, a3, a4, a5, (v14 + 64));
    if ((v15 & 0x80000000) != 0)
    {
      v20 = v15;
      heap_Free(v26[1], v14);
      return v20;
    }

    if ((objc_GetObject(v26[6], "AUDIOFETCHER", &v25) & 0x80000000) == 0)
    {
      v16 = v25;
      if (*v25 != 1 || (v17 = *(v25 + 8)) == 0)
      {
        v21 = v26[6];
        v22 = "AUDIOFETCHER";
LABEL_18:
        objc_ReleaseObject(v21, v22);
        log_OutPublic(v26[4], &modESCPP, 2574, 0);
        v23 = escseqs_ObjClose(v14);
        if (v23 < 0)
        {
          return v23;
        }

        else
        {
          return 2147491853;
        }
      }

      *(v14 + 32) = v17;
      *(v14 + 16) = *(v16 + 16);
    }

    if ((objc_GetObject(v26[6], "LANGCODECONVERTER", &v25) & 0x80000000) != 0)
    {
LABEL_13:
      v6 = 0;
      *a6 = v14;
      return v6;
    }

    v18 = v25;
    if (*v25 == 1)
    {
      v19 = *(v25 + 8);
      if (v19)
      {
        *(v14 + 56) = v19;
        *(v14 + 40) = *(v18 + 16);
        goto LABEL_13;
      }
    }

    v21 = v26[6];
    v22 = "LANGCODECONVERTER";
    goto LABEL_18;
  }

  return v6;
}

uint64_t escseqs_ObjClose(uint64_t a1)
{
  v1 = 2147491847;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      escseqm_ObjClose(v3);
    }

    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(v5 + 48), "LANGCODECONVERTER");
    }

    if (*(a1 + 32))
    {
      objc_ReleaseObject(*(v5 + 48), "AUDIOFETCHER");
    }

    heap_Free(*(v5 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t escseqs_SetMarkerSyncPos(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 2147491847;
  }

  *(a1 + 80) = a2;
  *(a1 + 84) = a2;
  *(a1 + 92) = 1;
  return escseqm_ProcessStart(*(a1 + 64));
}

uint64_t escseqs_SetReset(uint64_t a1)
{
  if (!a1)
  {
    return 2147491847;
  }

  result = 0;
  *(a1 + 88) = 0x100000000;
  return result;
}

uint64_t escseqs_GetPosInOut(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 80);
  *a3 = *(result + 84);
  return result;
}

uint64_t escseqs_SetPosInOut(uint64_t result, int a2, int a3)
{
  *(result + 80) = a2;
  *(result + 84) = a3;
  return result;
}

uint64_t escseqs_ProcessStart(uint64_t a1, _DWORD *a2)
{
  v13 = 0;
  v14 = 0;
  Defaults = 2147491847;
  __s1 = 0;
  v11 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v13) & 0x80000000) == 0)
  {
    if ((paramc_ParamGetStr(*(v13 + 40), "component_stop_not_reset", &__s1) & 0x80000000) != 0 || !__s1 || cstdlib_strcmp(__s1, "yes"))
    {
      if ((paramc_ParamGetUInt(*(v13 + 40), "pipelineswitchexecuting", &v11) & 0x80000000) != 0 || !v11)
      {
        *(a1 + 80) = 0;
        *(a1 + 92) = 0;
      }
    }

    else
    {
      paramc_ParamSetStr(*(v13 + 40), "component_stop_not_reset", "");
    }

    paramc_ParamSetUInt(*(v13 + 40), "pipelineswitchexecuting", 0);
    v5 = escseqm_ProcessStart(*(a1 + 64));
    if ((v5 & 0x80000000) != 0)
    {
      Defaults = v5;
    }

    else
    {
      Defaults = escseqm_GetDefaults(*(a1 + 64), &v14);
      if ((Defaults & 0x80000000) == 0)
      {
        for (i = 0; i != 2496; i += 64)
        {
          v7 = v14 + i;
          v8 = *(v14 + i + 84);
          if (v8 == 31)
          {
            *a2 = *(v7 + 104);
            v8 = *(v7 + 84);
          }

          if (marker_hasNonConstCharPtrArg(v8))
          {
            v9 = *(v14 + i + 104);
            if (v9)
            {
              heap_Free(*(v13 + 8), v9);
              *(v14 + i + 104) = 0;
            }
          }
        }
      }
    }

    if (v14)
    {
      heap_Free(*(v13 + 8), v14);
    }
  }

  return Defaults;
}

uint64_t escseqs_Process(uint64_t a1, uint64_t a2)
{
  v159 = 0;
  v160 = 0;
  v4 = 2147491847;
  v158 = 0u;
  memset(__b, 0, sizeof(__b));
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  __s = 0;
  __s1 = 0;
  v146 = 0;
  cstdlib_memset(__b, 0, 0x40uLL);
  LODWORD(__b[0]) = 0;
  *(&__b[0] + 1) = 0;
  LOWORD(__b[1]) = 0;
  *&v158 = 0;
  DWORD2(v158) = 0;
  memset(&__b[1] + 4, 0, 20);
  cstdlib_memset(&v153, 0, 0x40uLL);
  LODWORD(v153) = 1;
  *(&v153 + 1) = 0;
  LOWORD(v154) = 0;
  DWORD1(v154) = 2;
  *&v156 = 0;
  DWORD2(v156) = 0;
  *(&v154 + 1) = 0;
  *&v155 = 0;
  cstdlib_memset(&v149, 0, 0x40uLL);
  LODWORD(v149) = 0;
  *(&v149 + 1) = 0;
  LOWORD(v150) = 0;
  DWORD1(v150) = 36;
  *&v152 = 0;
  DWORD2(v152) = 0;
  *(&v150 + 1) = 0;
  *&v151 = 0;
  if (!a1 || !a2 || (InitRsrcFunction(*a1, *(a1 + 8), &v160) & 0x80000000) != 0)
  {
    return v4;
  }

  appended = datac_RequestBlock(a2, 1000, 1u, &v159);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  v6 = *(v159 + 8);
  if (!v6)
  {
    return v4;
  }

  if (*(v159 + 2) != 1)
  {
    return 2147491865;
  }

  v7 = cstdlib_strlen("ins_unknown");
  v8 = *(a1 + 80);
  v9 = *(a1 + 84);
  DWORD1(__b[1]) = 0x4000;
  *(&__b[1] + 1) = v8;
  LODWORD(__b[0]) = 0;
  LOWORD(__b[1]) = 0;
  *(&__b[0] + 1) = 0;
  LODWORD(__b[2]) = v9;
  *(&__b[2] + 4) = 0;
  DWORD2(v158) = 0;
  *&v158 = 0;
  appended = escseqs_AppendOutMarker(a2, __b);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  if ((paramc_ParamGetStr(*(v160 + 40), "textanalysison", &__s1) & 0x80000000) == 0)
  {
    if (__s1)
    {
      if (*__s1)
      {
        v10 = cstdlib_strcmp(__s1, "yes");
        if (!(DWORD2(__b[1]) | v10))
        {
          v32 = heap_Calloc(*(v160 + 8), 1, v7 + 1);
          if (!v32)
          {
            return 2147491850;
          }

          v33 = v32;
          cstdlib_strcpy(v32, "ins_unknown");
          *(&v150 + 1) = 0;
          *&v151 = 0;
          *(&v151 + 1) = v33;
          appended = escseqs_AppendOutMarker(a2, &v149);
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          heap_Free(*(v160 + 8), v33);
        }
      }
    }
  }

  *__dst = 0;
  *v161 = 0;
  appended = datac_RequestBlock(a2, 1011, 1u, __dst);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  appended = datac_RequestBlock(a2, 1012, 1u, v161);
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

  v137 = v6;
  if (*(a1 + 92) == 1)
  {
    v11 = &off_279DADB58;
    *__dst = 0;
    *(a1 + 92) = 0;
    v12 = 4;
    while (1)
    {
      v13 = *(v11 - 2);
      if (v13 > 30)
      {
        if (v13 == 36)
        {
LABEL_26:
          v20 = *v11;
          Str = paramc_ParamGetStr(*(v160 + 40), *v11, &__s);
          if ((Str & 0x1FFF) != 0x14)
          {
            v16 = Str;
            if ((Str & 0x80000000) != 0)
            {
              goto LABEL_279;
            }

            log_OutText(*(v160 + 32), &modESCPP, 4, 0, "[ESCSEQS] GET PARAM marker:%d param=%s val=%s", v13, v20, __s);
            v22 = cstdlib_strlen(__s);
            v23 = heap_Calloc(*(v160 + 8), 1, v22 + 1);
            if (!v23)
            {
              return 2147491850;
            }

            v24 = v23;
            cstdlib_strncpy(v23, __s, v22);
            *(v24 + v22) = 0;
            LODWORD(__b[0]) = 1;
            v25 = *(a1 + 80);
            v26 = *(a1 + 84);
            DWORD1(__b[1]) = v13;
            *(&__b[1] + 1) = v25;
            *&__b[2] = v26;
            *(&__b[2] + 1) = v24;
            v27 = escseqs_AppendOutMarker(a2, __b);
            if ((v27 & 0x80000000) != 0)
            {
              v16 = v27;
              heap_Free(*(v160 + 8), v24);
              goto LABEL_279;
            }

            heap_Free(*(v160 + 8), v24);
          }

          paramc_ParamRelease(*(v160 + 40));
          __s = 0;
          goto LABEL_32;
        }

        if (v13 == 31)
        {
LABEL_22:
          v14 = *v11;
          UInt = paramc_ParamGetUInt(*(v160 + 40), *v11, __dst);
          if ((UInt & 0x1FFF) != 0x14)
          {
            v16 = UInt;
            if ((UInt & 0x80000000) != 0)
            {
              goto LABEL_279;
            }

            log_OutText(*(v160 + 32), &modESCPP, 4, 0, "[ESCSEQS] GET PARAM marker:%d param=%s val=%d", v13, v14, *__dst);
            LODWORD(__b[0]) = 1;
            v17 = *(a1 + 80);
            v18 = *(a1 + 84);
            DWORD1(__b[1]) = v13;
            *(&__b[1] + 1) = v17;
            *&__b[2] = v18;
            DWORD2(__b[2]) = *__dst;
            DWORD2(v158) = 0;
            *&v158 = 0;
            v19 = escseqs_AppendOutMarker(a2, __b);
            if ((v19 & 0x80000000) != 0)
            {
              goto LABEL_278;
            }
          }
        }
      }

      else
      {
        if (v13 == 7)
        {
          goto LABEL_22;
        }

        if (v13 == 21)
        {
          goto LABEL_26;
        }
      }

LABEL_32:
      v11 += 2;
      if (!--v12)
      {
        v6 = v137;
        break;
      }
    }
  }

  v28 = &v6[*(v159 + 16)];
  v29 = v6;
  if (*(a1 + 88))
  {
    v29 = v6;
    if (*(v159 + 16))
    {
      v30 = 0;
      v29 = v6;
      while (1)
      {
        v31 = *v29;
        if (!v30 && v31 == 92)
        {
          break;
        }

        if (v31 == 34)
        {
          v30 = !v30;
        }

        v29 += utf8_determineUTF8CharLength(v31);
        if ((v29 + 1) > v28)
        {
          goto LABEL_50;
        }
      }

      v29 += utf8_determineUTF8CharLength(0x5Cu);
      *(a1 + 88) = 0;
    }
  }

LABEL_50:
  DWORD1(__b[1]) = 0;
  v35 = *(v159 + 16);
  v141 = 1;
  if ((paramc_ParamGetStr(*(v160 + 40), "clcpppipelinemode", &v146) & 0x80000000) == 0 && v146)
  {
    v141 = *v146 == 0;
  }

  v136 = v28;
  if (&v29[utf8_determineUTF8CharLength(*v29)] > v28)
  {
    LOWORD(v36) = 0;
LABEL_55:
    v37 = v29;
    goto LABEL_248;
  }

  v140 = v35;
  v130 = 0;
  v131 = 0;
  v36 = 0;
  while (1)
  {
    if (v140 != *(v159 + 16))
    {
      goto LABEL_55;
    }

    v139 = v36;
    v161[0] = 0;
    v38 = utf8_determineUTF8CharLength(*v29);
    if (v38)
    {
      v37 = v29;
      while (1)
      {
        v39 = &v37[v38];
        if (v39 > v28 || isEsc(*(a1 + 64), v37, (v28 - v37), 0, v161))
        {
          v39 = v37;
          goto LABEL_70;
        }

        *__dst = 0;
        if (v141 && isEscOrPartialEsc(*(a1 + 64), v37, (v28 - v37), 0, __dst) == 2)
        {
          goto LABEL_247;
        }

        if (v39 >= v28)
        {
          break;
        }

        v38 = utf8_determineUTF8CharLength(*v39);
        v37 = v39;
        if (!v38)
        {
          goto LABEL_70;
        }
      }

      v38 = 0;
    }

    else
    {
      v39 = v29;
    }

LABEL_70:
    v161[0] = 0;
    v138 = v28 - v39;
    v40 = isEsc(*(a1 + 64), v39, (v28 - v39), 0, v161);
    v41 = !v161[0] || v40 == 0;
    v42 = v41 ? 0 : v161[0] - 1;
    if (!v38 || &v39[v38 + v42] > v28)
    {
      break;
    }

    v43 = (v39 + 1);
    v44 = &v39[v42 + 1];
    if (v44 >= v28)
    {
      v47 = v137;
      if (*(v159 + 20))
      {
        v48 = v140;
        goto LABEL_179;
      }

LABEL_108:
      v48 = (v39 - v47);
      goto LABEL_179;
    }

    v45 = *v44;
    v46 = &v39[v42 + 2];
    if (v45 == 47)
    {
      v54 = v44[1];
      if ((v54 - 43) <= 0x3F && ((1 << (v54 - 43)) & 0xA008000000080001) != 0)
      {
        for (i = v44[1]; &v46[utf8_determineUTF8CharLength(i) + 2] <= v28; i = *v46)
        {
          v57 = *v46;
          if (v57 == 47)
          {
            v58 = v46[1] - 43;
            v59 = v58 > 0x3F;
            v60 = (1 << v58) & 0xA008000000080001;
            v61 = v59 || v60 == 0;
            if (!v61 && v39[2] == v54)
            {
              break;
            }
          }

          v46 += utf8_determineUTF8CharLength(v57);
        }

        v131 = v54 != 0;
        if ((v46 + 1) <= v28)
        {
          v47 = v137;
          v48 = v140;
          v43 = (v39 + 1);
        }

        else
        {
          v47 = v137;
          v48 = v140;
          v43 = (v39 + 1);
          if (!*(v159 + 20))
          {
            v48 = (v39 - v137);
          }
        }

LABEL_178:
        if (!v48)
        {
          return 2147491849;
        }

        goto LABEL_179;
      }
    }

    else if (v45 == 92)
    {
      while ((v46 + 1) <= v28 && utf8_BelongsToSet(0, v46, 0, *(v159 + 16)))
      {
        v46 += utf8_determineUTF8CharLength(*v46);
      }

      v49 = v46;
      if (&v46[utf8_determineUTF8CharLength(*v46) + 1] <= v28)
      {
        v49 = v46;
        do
        {
          if (utf8_BelongsToSet(0, v49, 0, *(v159 + 16)))
          {
            break;
          }

          v62 = *v49;
          if (v62 == 61)
          {
            break;
          }

          if (v62 == 92)
          {
            break;
          }

          v49 += utf8_determineUTF8CharLength(v62);
        }

        while (&v49[utf8_determineUTF8CharLength(*v49) + 1] <= v28);
      }

      cstdlib_memset(__dst, 0, 6uLL);
      v50 = v49 - v46;
      if ((v49 - v46) > 6uLL)
      {
        v50 = 6;
      }

      if (v50)
      {
        cstdlib_strncpy(__dst, v46, v50);
        if (LH_stricmp(__dst, "audio"))
        {
          if (LH_stricmp(__dst, "mrk"))
          {
            v51 = LH_stricmp(__dst, "toi");
            v52 = 0;
            v135 = 0;
            v53 = v51 == 0;
            goto LABEL_121;
          }

          v52 = 0;
          v53 = 0;
          v132 = 0;
          v133 = 1;
          v135 = 1;
LABEL_124:
          v63 = (v49 + 1);
          if ((v49 + 1) <= v28)
          {
            v64 = 0;
            v65 = 0;
            v134 = v52;
            while (1)
            {
              v66 = *v49;
              if (!v65 && v66 == 92)
              {
                v67 = v132;
                if (v53)
                {
                  v67 = 0;
                }

                if ((v133 & v67 & 1) != 0 || (v53 == 1 ? (v68 = 1) : (v68 = v52), v64 == 1 && v135 | v68 && (v63 >= v28 || (v69 = *v63, v69 != 92) && v69 != 34)))
                {
                  v47 = v137;
                  v48 = v140;
                  goto LABEL_174;
                }
              }

              v70 = *v49 == 34 ? v52 : 0;
              if (v70)
              {
                v65 = v65 != 1;
                v66 = 34;
                if (!v64)
                {
                  goto LABEL_166;
                }
              }

              else if (!v64)
              {
                if (v66 != 61)
                {
                  v75 = v65;
                  v76 = v53;
                  v64 = 0;
                  goto LABEL_169;
                }

                v128 = v65;
                v129 = v53;
                v71 = v63;
                if ((v63 + 1) <= v28)
                {
                  v71 = v63;
                  do
                  {
                    if (!utf8_BelongsToSet(0, v71, 0, *(v159 + 16)))
                    {
                      break;
                    }

                    v71 += utf8_determineUTF8CharLength(*v71);
                  }

                  while ((v71 + 1) <= v28);
                }

                v72 = cstdlib_strlen("orth");
                v73 = cstdlib_strncmp(v71, "orth", v72);
                v65 = v128;
                if (v73)
                {
                  v53 = v129;
                }

                else
                {
                  v53 = 0;
                }

                v66 = *v49;
                v52 = v134;
              }

              v74 = v65 == 1 ? v52 : 0;
              if (((v135 | v74) & 1) == 0 && v53 != 1)
              {
                break;
              }

              v64 = 1;
              if (v66 != 92 || v63 >= v28)
              {
LABEL_166:
                v75 = v65;
                v76 = v53;
                goto LABEL_169;
              }

              v77 = *v63;
              if (v77 != 34 && v77 != 92)
              {
                v75 = v65;
                v76 = v53;
                v66 = 92;
                goto LABEL_169;
              }

              v78 = 2;
LABEL_170:
              v49 += v78;
              v63 = (v49 + 1);
              if ((v49 + 1) > v28)
              {
                goto LABEL_171;
              }
            }

            v75 = v65;
            v76 = v53;
            v64 = 1;
LABEL_169:
            v78 = utf8_determineUTF8CharLength(v66);
            v52 = v134;
            v53 = v76;
            v65 = v75;
            v28 = v136;
            goto LABEL_170;
          }

LABEL_171:
          v47 = v137;
          v48 = v140;
          if (!*(v159 + 20))
          {
            v48 = (v39 - v137);
          }

LABEL_174:
          v79 = v133 ^ 1;
          if (v48)
          {
            v79 = 1;
          }

          v43 = (v39 + 1);
          if ((v79 & 1) == 0)
          {
            v48 = 0;
            *(a1 + 88) = 1;
            goto LABEL_179;
          }

          goto LABEL_178;
        }

        v133 = 0;
        v53 = 0;
        v135 = 0;
        v52 = 1;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        v135 = 0;
LABEL_121:
        v133 = 1;
      }

      v132 = 1;
      goto LABEL_124;
    }

    if (v138 <= 11)
    {
      v47 = v137;
      v48 = v140;
      v43 = (v39 + 1);
      if (*(v159 + 20))
      {
        goto LABEL_179;
      }

      goto LABEL_108;
    }

    v47 = v137;
    v48 = v140;
    v43 = (v39 + 1);
LABEL_179:
    if (v48 != *(v159 + 16))
    {
      break;
    }

    v140 = v48;
    if (v39 == v29)
    {
      v36 = v139;
    }

    else
    {
      v19 = escseqs_AppendOutText(a2, v29, (v39 - v29));
      if ((v19 & 0x80000000) != 0)
      {
        goto LABEL_278;
      }

      v36 = v139 + v39 - v29;
    }

    *(&__b[2] + 1) = 0;
    v16 = escseqm_Match(*(a1 + 64), v39, v138, __b);
    if ((v16 & 0x1FFF) == 0xA)
    {
      goto LABEL_279;
    }

    v80 = DWORD1(__b[1]);
    if (DWORD1(__b[1]) == 36)
    {
      v16 = escseqs_NormalizeLanguageName(a1, __b);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_279;
      }

      v80 = DWORD1(__b[1]);
    }

    if (v158 && DWORD2(__b[2]) != 43 && (DWORD2(__b[2]) - 70) >= 3 && v80 != 26)
    {
      heap_Free(*(v160 + 8), v158);
      *&v158 = 0;
      DWORD2(v158) = 0;
LABEL_194:
      v19 = escseqs_AppendOutText(a2, v39, 1u);
      if ((v19 & 0x80000000) != 0)
      {
        goto LABEL_278;
      }

      ++v36;
      v29 = v43;
      goto LABEL_196;
    }

    if (v16)
    {
      goto LABEL_194;
    }

    if (marker_hasNonConstCharPtrArg(v80) && !*(&__b[2] + 1))
    {
      LOWORD(__b[1]) = 0;
      *(&__b[0] + 1) = 0;
      DWORD1(__b[1]) = 0x4000;
      DWORD2(__b[2]) = 0;
      goto LABEL_225;
    }

    v81 = DWORD1(__b[1]);
    if (!v158 || DWORD1(__b[1]) == 26)
    {
      if (v158 && DWORD1(__b[1]) == 26)
      {
        v83 = v36;
        v84 = cstdlib_strlen(v158);
        *__dst = 0;
        v85 = *(&__b[2] + 1);
        v86 = *(*(a1 + 32) + 64);
        NullHandle = safeh_GetNullHandle();
        if ((v86(*(a1 + 16), *(a1 + 24), v85, 0, NullHandle, v88, __dst) & 0x80000000) != 0)
        {
          log_OutText(*(v160 + 32), &modESCPP, 4, 0, "[ESCSEQS] Invalid audio file, file=%s, Putting alternate text in text stream: %s ", *(&__b[2] + 1), v158);
          v19 = escseqs_AppendOutText(a2, v158, v84);
          if ((v19 & 0x80000000) != 0)
          {
            goto LABEL_278;
          }

          DWORD1(__b[1]) = 0;
          heap_Free(*(v160 + 8), *(&__b[2] + 1));
          *(&__b[2] + 1) = 0;
        }

        heap_Free(*(v160 + 8), v158);
        *&v158 = 0;
        v81 = DWORD1(__b[1]);
        v47 = v137;
        v36 = v83;
      }

      goto LABEL_223;
    }

    if (SDWORD2(__b[2]) > 70)
    {
      if (DWORD2(__b[2]) == 71)
      {
        DWORD2(__b[2]) = 43;
LABEL_222:
        DWORD2(v158) = 0;
        goto LABEL_223;
      }

      if (DWORD2(__b[2]) != 72)
      {
LABEL_217:
        DWORD2(__b[2]) = 43;
        if (DWORD2(v158) != 3)
        {
          goto LABEL_223;
        }

        goto LABEL_222;
      }

      v82 = 4;
    }

    else if (DWORD2(__b[2]) == 43)
    {
      v82 = 1;
    }

    else
    {
      if (DWORD2(__b[2]) != 70)
      {
        goto LABEL_217;
      }

      v82 = 2;
    }

    DWORD2(v158) = v82;
    DWORD2(__b[2]) = 43;
LABEL_223:
    if (v81)
    {
      goto LABEL_226;
    }

    LOWORD(__b[1]) = 0;
    *(&__b[0] + 1) = 0;
    DWORD1(__b[1]) = 999;
LABEL_225:
    DWORD2(v158) = 0;
    *&v158 = 0;
LABEL_226:
    v89 = *(a1 + 80);
    v90 = *(a1 + 84);
    LODWORD(__b[0]) = 0;
    DWORD2(__b[1]) = v89 + v39 - v47;
    LODWORD(__b[2]) = v90 + v36;
    if (v131 || ((DWORD2(__b[2]) - 15) > 0x39 || ((1 << (BYTE8(__b[2]) - 15)) & 0x280200010000003) == 0) && (DWORD2(__b[2]) - 106) >= 3)
    {
      v16 = escseqs_AppendOutMarker(a2, __b);
    }

    else
    {
      if (v130 == DWORD2(__b[2]))
      {
        DWORD1(__b[1]) = 999;
      }

      v16 = escseqs_AppendOutMarker(a2, __b);
      v130 = DWORD2(__b[2]);
    }

    if (marker_hasNonConstCharPtrArg(SDWORD1(__b[1])) && *(&__b[2] + 1))
    {
      heap_Free(*(v160 + 8), *(&__b[2] + 1));
      *(&__b[2] + 1) = 0;
    }

    else
    {
      DWORD2(__b[2]) = 0;
    }

    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    if (DWORD1(__b[1]) == 13)
    {
      inserted = escseqs_InsertDefaultMarkers(a1, a2, __b);
      if ((inserted & 0x80000000) != 0)
      {
        return inserted;
      }
    }

    else if (DWORD1(__b[1]) == 4)
    {
      DWORD1(v154) = 2;
      *(&v154 + 1) = (HIDWORD(__b[1]) + DWORD2(__b[1]));
      LODWORD(v155) = __b[2];
      *(&v155 + 4) = 0x100000000;
      inserted = escseqs_AppendOutMarker(a2, &v153);
      if ((inserted & 0x80000000) != 0)
      {
        return inserted;
      }
    }

    v29 = &v39[HIDWORD(__b[1])];
    HIDWORD(__b[1]) = 0;
    DWORD1(__b[1]) = 0;
    *&v158 = 0;
    DWORD2(v158) = 0;
LABEL_196:
    v37 = v29;
    if (&v29[utf8_determineUTF8CharLength(*v29)] > v28)
    {
      goto LABEL_248;
    }
  }

  v37 = v39;
LABEL_247:
  LOWORD(v36) = v139;
LABEL_248:
  v19 = escseqs_AppendOutText(a2, v29, (v37 - v29));
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_278;
  }

  v92 = *(v159 + 20);
  *__dst = 0;
  v19 = datac_RequestBlock(a2, 1010, 1u, __dst);
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_278;
  }

  *(*__dst + 20) = v92;
  v19 = escseqs_PutOutMarkerEos(a2, *(v159 + 20));
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_278;
  }

  if (*(v159 + 20))
  {
    v93 = 0;
    v94 = 0;
    *(a1 + 92) = 0;
  }

  else
  {
    v93 = *(a1 + 80) + v37 - v137;
    v94 = *(a1 + 84) + (v36 + v37 - v29);
  }

  *(a1 + 80) = v93;
  *(a1 + 84) = v94;
  *__dst = 0;
  v19 = datac_RequestBlock(a2, 1011, 1u, __dst);
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_278;
  }

  v95 = *__dst;
  v96 = *(*__dst + 16);
  if (v96 >= 2)
  {
    v97 = *(*__dst + 8);
    v98 = 1;
    do
    {
      v99 = v97 + (v98 << 6);
      if (*(v99 + 20) == 7)
      {
        v100 = *(v99 + 40);
        if (v100 == 60 || v100 == 16)
        {
          if (v96 <= (v98 + 1))
          {
            v102 = (v98 + 1);
          }

          else
          {
            v102 = v96;
          }

          do
          {
            if (++v98 >= v96)
            {
              v98 = v102;
              goto LABEL_271;
            }

            v103 = v97 + (v98 << 6);
          }

          while (*(v103 + 20) != 7);
          v105 = *(v103 + 40);
          v104 = (v103 + 40);
          if (v100 == v105)
          {
            *v104 = 15;
            v95 = *__dst;
          }
        }
      }

LABEL_271:
      ++v98;
      v96 = *(v95 + 16);
    }

    while (v96 > v98);
  }

  *__dst = 0;
  v19 = datac_RequestBlock(a2, 1011, 1u, __dst);
  if ((v19 & 0x80000000) != 0)
  {
LABEL_278:
    v16 = v19;
  }

  else
  {
    v106 = *(*__dst + 16);
    if (v106 >= 2)
    {
      v107 = 0;
      v108 = *(*__dst + 8);
      v109 = 2;
      while (*(v108 + v107 + 84) != 0x4000)
      {
        ++v109;
        v107 += 64;
        if ((v106 << 6) - 64 == v107)
        {
          goto LABEL_295;
        }
      }

      if (v106 > v109)
      {
        v110 = (v108 + v107 + 148);
        while (1)
        {
          v111 = *v110;
          v110 += 16;
          if (v111 != 0x4000)
          {
            break;
          }

          if (v106 == ++v109)
          {
            goto LABEL_295;
          }
        }

        if (*(v108 + (v109 << 6) + 20) == 0x4000)
        {
          v112 = v109 + 1;
          if (v112 == v106)
          {
            *(*__dst + 16) = v106 - 1;
          }

          else
          {
            cstdlib_memmove((v108 + v107 + 128), (v108 + (v112 << 6)), (v106 - v109) << 6);
            *(*__dst + 16) -= v109;
          }

          LOWORD(v28) = v136;
        }
      }
    }

LABEL_295:
    *v161 = 0;
    v16 = datac_RequestBlock(a2, 1011, 1u, v161);
    if ((v16 & 0x80000000) == 0)
    {
      v113 = *v161;
      if (*(*v161 + 16))
      {
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v117 = 0;
        v118 = *(*v161 + 8);
        do
        {
          v119 = (v118 + (v117 << 6));
          v120 = v119[5];
          if (v120 == 7)
          {
            if (v119[10] == 43)
            {
              v115 = !v115;
              v116 = v117;
            }

            else
            {
              v115 = 0;
            }
          }

          else if (v120 == 0x4000 && v115)
          {
            v144 = 0u;
            v145 = 0u;
            *__dst = 0u;
            v143 = 0u;
            v122 = v116;
            v123 = (v118 + (v116 << 6));
            v119[6] = v123[6];
            v119[8] = v123[8];
            cstdlib_memcpy(__dst, (v118 + (v117 << 6)), 0x40uLL);
            v124 = (v114 + 1);
            v125 = *v161;
            v126 = *(*v161 + 16);
            if (v126 > v124)
            {
              cstdlib_memmove((v118 + (v117 << 6)), (v118 + (v124 << 6)), (v126 - v124) << 6);
              v125 = *v161;
              LOWORD(v126) = *(*v161 + 16);
            }

            v127 = v126 - 1;
            *(v125 + 16) = v127;
            cstdlib_memmove(v123 + 16, v123, (v127 - v122) << 6);
            cstdlib_memcpy(v123, __dst, 0x40uLL);
            v116 = 0;
            v115 = 0;
            v113 = *v161;
            ++*(*v161 + 16);
            ++v117;
          }

          v114 = ++v117;
        }

        while (v117 < *(v113 + 16));
      }

      cstdlib_memmove(v137, v37, (v28 - v37));
      *(v159 + 16) = v28 - v37;
    }
  }

LABEL_279:
  if (__s)
  {
    paramc_ParamRelease(*(v160 + 40));
  }

  return v16;
}

uint64_t escseqs_AppendOutMarker(uint64_t a1, __int128 *a2)
{
  v22 = 0;
  v21 = 0;
  if (!a2)
  {
    return 2147491847;
  }

  result = datac_RequestBlock(a1, 1012, 1u, &v22);
  if ((result & 0x80000000) == 0)
  {
    v5 = a2[1];
    v17 = *a2;
    v18 = v5;
    v6 = a2[3];
    *__s1 = a2[2];
    v20 = v6;
    result = datac_RequestBlock(a1, 1011, 1u, &v22);
    if ((result & 0x80000000) == 0)
    {
      v7 = *(v22 + 16) + 1;
      if (*(v22 + 18) >= v7 || (result = datac_RequestBlock(a1, 1011, (*(v22 + 16) + 1), &v22), (result & 0x80000000) == 0))
      {
        result = datac_RequestBlock(a1, 1012, 1u, &v21);
        if ((result & 0x80000000) == 0)
        {
          if (marker_hasNonConstCharPtrArg(SDWORD1(v18)) && __s1[1])
          {
            v8 = *(v21 + 8);
            if (v8 && *(v21 + 16))
            {
              v9 = 0;
              while (1)
              {
                v10 = cstdlib_strlen(v8);
                if (!cstdlib_strcmp(__s1[1], v8))
                {
                  break;
                }

                v11 = (v10 + 1);
                v9 += v11;
                v8 += v11;
                if (v9 >= *(v21 + 16))
                {
                  goto LABEL_14;
                }
              }

              LODWORD(__s1[1]) = v9;
              cstdlib_memcpy((*(v22 + 8) + (*(v22 + 16) << 6)), &v17, 0x40uLL);
              v13 = &v22;
              goto LABEL_28;
            }

LABEL_14:
            if (marker_hasNonConstCharPtrArg(*(a2 + 5)))
            {
              if (*(a2 + 5))
              {
                v12 = *(v21 + 16);
              }

              else
              {
                v12 = -1;
              }

              LODWORD(__s1[1]) = v12;
            }
          }

          cstdlib_memcpy((*(v22 + 8) + (*(v22 + 16) << 6)), &v17, 0x40uLL);
          *(v22 + 16) = v7;
          result = marker_hasNonConstCharPtrArg(*(a2 + 5));
          if (result)
          {
            result = *(a2 + 5);
            if (result)
            {
              v14 = cstdlib_strlen(result) + 1;
              v15 = v21;
              v16 = *(v21 + 16);
              v7 = v16 + v14;
              if (*(v21 + 18) >= (v16 + v14))
              {
LABEL_27:
                cstdlib_memcpy((*(v15 + 8) + v16), *(a2 + 5), v14);
                v13 = &v21;
LABEL_28:
                result = 0;
                *(*v13 + 16) = v7;
                return result;
              }

              result = datac_RequestBlock(a1, 1012, (v16 + v14), &v21);
              if ((result & 0x80000000) == 0)
              {
                v15 = v21;
                v16 = *(v21 + 16);
                goto LABEL_27;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t escseqs_AppendOutText(uint64_t a1, const void *a2, unsigned int a3)
{
  v10 = 0;
  if (!a2)
  {
    return 2147491847;
  }

  result = datac_RequestBlock(a1, 1010, 1u, &v10);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v7 = v10;
  v8 = *(v10 + 16);
  v9 = v8 + a3;
  if (*(v10 + 18) < (v8 + a3))
  {
    result = datac_RequestBlock(a1, 1010, (v8 + a3), &v10);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v7 = v10;
    v8 = *(v10 + 16);
  }

  cstdlib_memcpy((*(v7 + 8) + v8), a2, a3);
  result = 0;
  *(v10 + 16) = v9;
  return result;
}

uint64_t escseqs_NormalizeLanguageName(uint64_t a1, uint64_t a2)
{
  __s2 = 0;
  v12 = 0;
  v10 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v12);
  if ((inited & 0x80000000) != 0)
  {
    return 2147491847;
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    return inited;
  }

  v6 = (*(v5 + 24))(*(a1 + 40), *(a1 + 48), *(a2 + 40), &__s2, &v10);
  if ((v6 & 0x80000000) == 0 && v10 && __s2 && cstdlib_strcmp(*(a2 + 40), __s2) && *__s2)
  {
    v7 = strhelper_Strdup(*(v12 + 8), __s2);
    if (v7)
    {
      v8 = v7;
      heap_Free(*(v12 + 8), *(a2 + 40));
      *(a2 + 40) = v8;
    }

    else
    {
      return 2147491850;
    }
  }

  return v6;
}

uint64_t escseqs_InsertDefaultMarkers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  v23 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v22) & 0x80000000) != 0)
  {
    return 2147491847;
  }

  cstdlib_memset(&v18, 0, 0x40uLL);
  v6 = *(a3 + 28) + *(a3 + 24);
  *&v20 = *(a3 + 32);
  DWORD2(v19) = v6;
  LODWORD(v18) = 0;
  Defaults = escseqm_GetDefaults(*(a1 + 64), &v23);
  if ((Defaults & 0x80000000) == 0)
  {
    for (i = 0; i != 2496; i += 64)
    {
      v9 = *(v23 + i + 84);
      if (v9)
      {
        if (!marker_hasNonConstCharPtrArg(v9))
        {
          v10 = v23 + i;
          *(v10 + 88) = *(a3 + 28) + *(a3 + 24);
          *(v10 + 100) = 0;
          v11 = *(a3 + 32);
          *(v10 + 64) = 0;
          v10 += 64;
          *(v10 + 32) = v11;
          appended = escseqs_AppendOutMarker(a2, v10);
          Defaults = 0;
          if ((appended & 0x80000000) != 0)
          {
LABEL_17:
            Defaults = appended;
            goto LABEL_18;
          }
        }
      }
    }

    for (j = 104; j != 2600; j += 64)
    {
      if (marker_hasNonConstCharPtrArg(*(v23 + j - 20)))
      {
        v14 = v23 + j;
        *(v14 - 16) = *(a3 + 28) + *(a3 + 24);
        *(v14 - 4) = 0;
        v15 = *(a3 + 32);
        *(v14 - 40) = 0;
        v14 -= 40;
        *(v14 + 32) = v15;
        appended = escseqs_AppendOutMarker(a2, v14);
        if ((appended & 0x80000000) != 0)
        {
          goto LABEL_17;
        }

        v16 = *(v23 + j);
        if (v16)
        {
          heap_Free(*(v22 + 8), v16);
          Defaults = 0;
          *(v23 + j) = 0;
        }

        else
        {
          Defaults = 0;
        }
      }
    }
  }

LABEL_18:
  if (v23)
  {
    heap_Free(*(v22 + 8), v23);
  }

  return Defaults;
}

uint64_t escseqs_PutOutMarkerEos(uint64_t a1, int a2)
{
  v5 = 0;
  result = datac_RequestBlock(a1, 1011, 1u, &v5);
  if ((result & 0x80000000) == 0)
  {
    *(v5 + 20) = a2;
    result = datac_RequestBlock(a1, 1012, 1u, &v5);
    if ((result & 0x80000000) == 0)
    {
      result = 0;
      *(v5 + 20) = a2;
    }
  }

  return result;
}

uint64_t extdata_LoadSpecificData(uint64_t a1, char *a2, const char *a3, const char *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  __s = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__s1 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  *__s2 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  result = paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &__s);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v9 = 0;
  if (cstdlib_strlen(__s))
  {
    do
    {
      v10 = v9;
      __s2[v9] = cstdlib_tolower(__s[v9]);
      ++v9;
      v11 = cstdlib_strlen(__s);
    }

    while (v10 <= 1 && v9 < v11);
  }

  __s2[v9] = 0;
  if (cstdlib_strcmp(__s, __s2))
  {
    result = paramc_ParamSetStr(*(*(a1 + 16) + 40), "langcode", __s2);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    __s = __s2;
  }

  cstdlib_strcat(__s1, a4);
  cstdlib_strcat(__s1, "/");
  cstdlib_strcat(__s1, __s);
  brokeraux_ComposeBrokerString(*(a1 + 16), __s1, 1, 1, __s, 0, 0, v16, 0x80uLL);
  LODWORD(result) = readDataFile(a1, a2, v16, a3);
  v12 = result;
  v13 = result & 0x80001FFF;
  if ((result & 0x80001FFF) == 0x8000000A)
  {
    result = result;
  }

  else
  {
    result = 0;
  }

  if (v12 < 0 && v13 != -2147483638)
  {
    __s1[cstdlib_strlen(__s1) - 4] = 0;
    brokeraux_ComposeBrokerString(*(a1 + 16), __s1, 1, 1, __s, 0, 0, v16, 0x80uLL);
    return readDataFile(a1, a2, v16, a3);
  }

  return result;
}

uint64_t readDataFile(uint64_t a1, char *a2, const char *a3, const char *a4)
{
  v21 = 0;
  v20 = 0;
  v18 = 0;
  *__s2 = 0;
  v16 = 0;
  v17 = 0;
  result = brk_DataOpenEx(*(*(a1 + 16) + 24), a3, 1, &v16);
  if ((result & 0x80000000) == 0)
  {
    result = brk_DataClose(*(*(a1 + 16) + 24), v16);
    if ((result & 0x80000000) == 0)
    {
      result = ssftriff_reader_ObjOpen(*a1, *(a1 + 8), 0, a3, a2, 1031, &v21);
      if ((result & 0x80000000) == 0)
      {
        do
        {
          v9 = ssftriff_reader_OpenChunk(v21, __s2, &v18, &v17);
          if (v9 < 0)
          {
            break;
          }

          if (*(a1 + 32))
          {
            v10 = 0;
            v11 = 0;
            while (cstdlib_strcmp(*(*(a1 + 24) + v10), __s2))
            {
              ++v11;
              v10 += 32;
              if (v11 >= *(a1 + 32))
              {
                goto LABEL_14;
              }
            }

            if (!a4 || !cstdlib_strcmp(a4, __s2))
            {
              v9 = (*(*(a1 + 24) + v10 + 8))(*(*(a1 + 24) + v10 + 24), v21, v18, v17);
              if (v9 < 0)
              {
                log_OutPublic(*(*(a1 + 16) + 32), "PP_EXTDATA", 1800, "%s%s", "loading_type", __s2);
              }
            }
          }

LABEL_14:
          v12 = ssftriff_reader_CloseChunk(v21);
          if (v12 < 0 && v9 > -1)
          {
            v9 = v12;
          }
        }

        while ((v9 & 0x80000000) == 0);
        if ((v9 & 0x1FFF) == 0x14)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9;
        }

        LODWORD(result) = ssftriff_reader_ObjClose(v21);
        if (v14 > -1 && result < 0)
        {
          return result;
        }

        else
        {
          return v14;
        }
      }
    }
  }

  return result;
}

uint64_t extdata_RegisterData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 2368741383;
  }

  if (!*(a1 + 32))
  {
    v8 = heap_Calloc(*(*(a1 + 16) + 8), 1, (32 * a3) | 1);
    *(a1 + 24) = v8;
    if (v8)
    {
      goto LABEL_7;
    }

    return (*(a1 + 36) << 20) | 0x8000200A;
  }

  v6 = heap_Realloc(*(*(a1 + 16) + 8), *(a1 + 24), (32 * (*(a1 + 32) + a3)) | 1);
  if (!v6)
  {
    return (*(a1 + 36) << 20) | 0x8000200A;
  }

  *(a1 + 24) = v6;
LABEL_7:
  if (a3)
  {
    v9 = 0;
    do
    {
      cstdlib_memcpy((*(a1 + 24) + 32 * *(a1 + 32) + v9), (a2 + v9), 0x20uLL);
      v9 += 32;
    }

    while (32 * a3 != v9);
  }

  result = 0;
  *(a1 + 32) += a3;
  return result;
}

uint64_t extdata_ObjOpen(_WORD *a1, uint64_t a2, void *a3, int a4)
{
  v12 = 0;
  if (!a3 || (InitRsrcFunction(a1, a2, &v12) & 0x80000000) != 0)
  {
    v11 = -2147475449;
  }

  else
  {
    *a3 = 0;
    v8 = heap_Alloc(*(v12 + 8), 40);
    if (v8)
    {
      v9 = v8;
      cstdlib_memset(v8, 0, 0x28uLL);
      result = 0;
      *v9 = a1;
      v9[1] = a2;
      v9[2] = v12;
      *(v9 + 16) = 0;
      *(v9 + 9) = a4;
      *a3 = v9;
      return result;
    }

    v11 = -2147475446;
  }

  return v11 | (a4 << 20);
}

uint64_t extdata_UnregisterModule(uint64_t a1, unsigned int a2)
{
  result = 2368741383;
  if (a1)
  {
    if (*(a1 + 32) > a2)
    {
      result = 0;
      *(*(a1 + 24) + 32 * a2 + 24) = 0;
    }
  }

  return result;
}

uint64_t extdata_GetIndex(uint64_t a1, _WORD *a2)
{
  result = 2368741383;
  if (a1)
  {
    if (!a2)
    {
      return result;
    }

    v4 = *(a1 + 32);
    LOWORD(a1) = v4 - 1;
    if (v4)
    {
      result = 0;
    }

    else
    {
      LOWORD(a1) = 0;
      result = 2368741383;
    }
  }

  *a2 = a1;
  return result;
}

uint64_t extdata_FreeData(uint64_t a1)
{
  if (!a1)
  {
    return 2368741383;
  }

  v2 = *(a1 + 32);
  if (*(a1 + 32))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1 + 24) + v3;
      if (*(v5 + 24))
      {
        result = (*(v5 + 16))();
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v2 = *(a1 + 32);
      }

      ++v4;
      v3 += 32;
    }

    while (v4 < v2);
  }

  heap_Free(*(*(a1 + 16) + 8), *(a1 + 24));
  result = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t extdata_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2368741383;
  }

  v2 = *(a1 + 16);
  result = extdata_FreeData(a1);
  if ((result & 0x80000000) == 0)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      heap_Free(*(v2 + 8), v4);
      *(a1 + 32) = 0;
    }

    heap_Free(*(v2 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t freeEOSDefs(uint64_t a1)
{
  if (!*(a1 + 96))
  {
    return 0;
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] free EOS definitions");
  v2 = *(a1 + 104);
  if (v2)
  {
    heap_Free(*(*(a1 + 16) + 8), v2);
    *(a1 + 104) = 0;
  }

  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  if (*(a1 + 128))
  {
    v3 = *(a1 + 120);
    if (v3)
    {
      heap_Free(*(*(a1 + 16) + 8), v3);
      *(a1 + 120) = 0;
    }

    *(a1 + 128) = 0;
  }

  if (*(a1 + 144))
  {
    v4 = *(a1 + 136);
    if (v4)
    {
      heap_Free(*(*(a1 + 16) + 8), v4);
      *(a1 + 136) = 0;
    }

    *(a1 + 144) = 0;
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    heap_Free(*(*(a1 + 16) + 8), v5);
    *(a1 + 152) = 0;
  }

  result = *(a1 + 88);
  if (result)
  {
    result = ssftriff_reader_ReleaseChunkData(result);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 88) = 0;
    }
  }

  return result;
}

uint64_t getEOSDefs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v32 = 0;
  v33 = a4;
  __dst = 0;
  v5 = (a1 + 96);
  if (*(a1 + 96))
  {
    return v4;
  }

  v6 = a4;
  v4 = 2369789962;
  v30 = 0;
  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] get EOS definitions");
  cstdlib_memcpy(&__dst, v6, 4uLL);
  cstdlib_memcpy(&v32 + 4, (v6 + 4), 4uLL);
  v9 = HIDWORD(v32) + 8;
  v10 = (HIDWORD(v32) + 8 + __dst);
  cstdlib_memcpy(v5, (v6 + v10), 2uLL);
  v11 = heap_Calloc(*(*(a1 + 16) + 8), 1, (8 * *(a1 + 96)) | 1);
  *(a1 + 104) = v11;
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = v10 + 2;
  if (*v5)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      cstdlib_memcpy(&v30 + 2, (v6 + v12), 2uLL);
      v6 = v33;
      cstdlib_memcpy(&v32, (v33 + v12 + 2), 4uLL);
      v12 += 6;
      v15 = *(a1 + 104) + v13;
      *(v15 + 4) = BYTE2(v30);
      *v15 = v32;
      v13 += 8;
    }

    while (*(a1 + 96) > v14++);
  }

  cstdlib_memcpy((a1 + 128), (v6 + v12), 2uLL);
  v17 = heap_Calloc(*(*(a1 + 16) + 8), 1, (2 * *(a1 + 128)) | 1);
  *(a1 + 120) = v17;
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = v33;
  if (*(a1 + 128))
  {
    v19 = 0;
    v20 = 0;
    do
    {
      cstdlib_memcpy((*(a1 + 120) + v19), (v18 + v12 + v19 + 2), 2uLL);
      ++v20;
      v19 += 2;
    }

    while (v20 < *(a1 + 128));
    v12 += v19;
  }

  *(a1 + 144) = 0;
  cstdlib_memcpy((a1 + 144), (v18 + v12 + 2), 2uLL);
  v21 = v12 + 4;
  if (*(a1 + 144))
  {
    v22 = heap_Calloc(*(*(a1 + 16) + 8), 1, (2 * *(a1 + 144)) | 1);
    *(a1 + 136) = v22;
    if (v22)
    {
      if (*(a1 + 144))
      {
        v23 = 0;
        v24 = 0;
        do
        {
          cstdlib_memcpy((*(a1 + 136) + v23), (v18 + v21 + v23), 2uLL);
          ++v24;
          v23 += 2;
        }

        while (v24 < *(a1 + 144));
        v21 += v23;
      }

      goto LABEL_17;
    }

LABEL_26:
    freeEOSDefs(a1);
    return v4;
  }

LABEL_17:
  cstdlib_memcpy(&v30, (v18 + v21), 2uLL);
  v25 = heap_Calloc(*(*(a1 + 16) + 8), 1, v30 + 1);
  *(a1 + 152) = v25;
  if (!v25)
  {
    goto LABEL_26;
  }

  v26 = v21 + 2;
  if (v30)
  {
    v27 = 0;
    do
    {
      cstdlib_memcpy((*(a1 + 152) + v27), (v18 + v26 + v27), 1uLL);
      ++v27;
    }

    while (v27 < v30);
    v26 += v27;
  }

  cstdlib_memcpy(&v30 + 2, (v18 + v26), 2uLL);
  v28 = HIWORD(v30);
  *(a1 + 160) = HIWORD(v30);
  if (!v28)
  {
    v4 = 2369789959;
    goto LABEL_26;
  }

  v4 = ssftriff_reader_DetachChunkData(a2, (a1 + 88), &v33);
  if ((v4 & 0x80000000) == 0)
  {
    *(a1 + 112) = v33 + v9;
  }

  return v4;
}

uint64_t sparser_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6)
{
  v35[4] = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = 0;
  *&__c[3] = 0;
  v6 = 2369789959;
  *&__c[1] = -1;
  __c[0] = 0;
  v31 = 0;
  __s1 = 0;
  if (a5 && (InitRsrcFunction(a1, a2, &v34) & 0x80000000) == 0)
  {
    *a5 = 0;
    v13 = heap_Alloc(*(v34 + 8), 192);
    if (!v13)
    {
      return 2369789962;
    }

    v14 = v13;
    cstdlib_memset(v13, 0, 0xC0uLL);
    *v14 = a1;
    *(v14 + 8) = a2;
    v15 = v34;
    *(v14 + 16) = v34;
    *(v14 + 80) = a6;
    *(v14 + 64) = 0;
    *(v14 + 72) = 0;
    *(v14 + 184) = 0;
    *(v14 + 176) = 0;
    *(v14 + 168) = 0;
    *(v14 + 188) = 0;
    if ((paramc_ParamGetStr(*(v15 + 40), "mnceosposition", &__s1) & 0x80000000) == 0 && __s1 && !cstdlib_strcmp(__s1, "yes"))
    {
      *(v14 + 188) = 1;
    }

    cstdlib_memset((v14 + 96), 0, 0x48uLL);
    *(v14 + 24) = a3;
    *(v14 + 32) = a4;
    *(v14 + 88) = 0;
    v35[0] = "EOSD";
    v35[1] = getEOSDefs;
    v35[2] = freeEOSDefs;
    v35[3] = v14;
    v16 = extdata_RegisterData(a6, v35, 1u);
    if ((v16 & 0x80000000) == 0)
    {
      extdata_GetIndex(a6, &v31);
      if ((objc_GetObject(*(v34 + 48), "FE_DCTLKP", &v33) & 0x80000000) != 0)
      {
        v18 = *(v14 + 40);
        if (!v18)
        {
LABEL_28:
          v6 = 0;
          *a5 = v14;
          return v6;
        }
      }

      else
      {
        v17 = v33;
        v18 = *(v33 + 8);
        *(v14 + 40) = v18;
        *(v14 + 48) = *(v17 + 16);
        if (!v18)
        {
          goto LABEL_28;
        }
      }

      *&__c[1] = -1;
      v16 = (*(v18 + 96))(*(v14 + 48), *(v14 + 56), "fecfg", "ppabbrscanback", &__c[3], &__c[1], __c);
      if ((v16 & 0x80000000) == 0)
      {
        if (*&__c[1] != 1 || !*&__c[3])
        {
          goto LABEL_28;
        }

        v19 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v19)
        {
          *v19 = 0;
        }

        v20 = **&__c[3];
        *(v14 + 72) = 1;
        while (1)
        {
          v21 = cstdlib_strchr(v20, 124);
          if (!v21)
          {
            break;
          }

          ++*(v14 + 72);
          v20 = v21 + 1;
        }

        v22 = heap_Calloc(*(v34 + 8), 1, *(v14 + 72) + 1);
        *(v14 + 64) = v22;
        if (v22)
        {
          v23 = **&__c[3];
          *(v14 + 72) = 0;
          if (v23)
          {
            do
            {
              if (*v23 == __c[0])
              {
                break;
              }

              v24 = cstdlib_strchr(v23, 124);
              v25 = v24;
              if (v24)
              {
                *v24 = 0;
              }

              v26 = cstdlib_atoi(v23);
              v27 = *(v14 + 64);
              v28 = *(v14 + 72);
              *(v14 + 72) = v28 + 1;
              *(v27 + v28) = v26;
              v23 = v25 + 1;
            }

            while (v25);
          }

          goto LABEL_28;
        }

        return 2369789962;
      }
    }

    v6 = v16;
    sparser_ObjClose(v14);
    extdata_UnregisterModule(a6, v31);
  }

  return v6;
}

uint64_t sparser_ObjClose(uint64_t a1)
{
  v1 = 2369789959;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    if (*(a1 + 40))
    {
      objc_ReleaseObject(*(v5 + 48), "FE_DCTLKP");
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      heap_Free(*(v5 + 8), v3);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
    }

    heap_Free(*(v5 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t sparser_HasTextElementLeft(_WORD **a1, uint64_t a2, _BOOL4 *a3, _WORD *a4)
{
  v48 = 0;
  v49 = 0;
  v8 = 2369789959;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0u;
  v42 = 0u;
  __b = 0u;
  v40 = 0u;
  v38 = 0;
  cstdlib_memset(&__b, 0, 0x40uLL);
  LODWORD(__b) = 1;
  *(&__b + 1) = 0;
  LOWORD(v40) = 0;
  DWORD1(v40) = 2;
  *&v42 = 0;
  DWORD2(v42) = 0;
  *(&v40 + 1) = 0;
  *&v41 = 0;
  DWORD2(v41) = 1;
  if (!a1 || !a2 || !a3 || (InitRsrcFunction(*a1, a1[1], &v49) & 0x80000000) != 0)
  {
    return v8;
  }

  if (!*(a1 + 48))
  {
    log_OutPublic(*(v49 + 32), &modPP_1, 1808, 0);
    return v8;
  }

  if ((datac_RequestBlock(a2, 1010, 1u, &v48) & 0x80000000) != 0)
  {
    v8 = 0;
    *a3 = 0;
    return v8;
  }

  v9 = datac_RequestBlock(a2, 1011, 1u, &v47);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = *(v47 + 8);
  v11 = *(v47 + 16);
  v9 = datac_RequestBlock(a2, 1012, 1u, &v46);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v9 = bed_ObjOpen(*a1, a1[1], a2, 1011, &v44, 212);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  if ((chars_ScanBlankHead(v48, &v45 + 1, v47, &v45, &v38, 1u) & 0x80000000) == 0)
  {
    if (v11 < 2)
    {
      LOWORD(v12) = 0;
    }

    else
    {
      v12 = 0;
      v13 = v10 + 21;
      v14 = v11 - 1;
      do
      {
        if (v13[3] - v10[8] > v10[8] + *(v48 + 2) * HIWORD(v45))
        {
          break;
        }

        v16 = *v13;
        v13 += 16;
        v15 = v16;
        if (v16 == 0x4000)
        {
          v17 = v12;
        }

        else
        {
          v17 = v12 + 1;
        }

        if (v15 != 3)
        {
          v12 = v17;
        }

        --v14;
      }

      while (v14);
    }

    if (*(a1 + 92) <= v12)
    {
      if ((bed_GetpBlock(v44, &v47) & 0x80000000) != 0)
      {
        goto LABEL_75;
      }

      v23 = v48;
      if (v11 >= 2)
      {
        v24 = 0;
        v25 = v10 + 26;
        v26 = 1;
        while (*(v25 - 2) - v10[8] <= *(v48 + 2) * HIWORD(v45))
        {
          v27 = *(v25 - 5);
          if (v27 == 3 && *v25 == 1)
          {
            goto LABEL_73;
          }

          if (v27 != 0x4000)
          {
            ++v24;
          }

          if (*(a1 + 92) == v24)
          {
            if ((bed_Goto(v44, v26) & 0x80000000) == 0)
            {
              v36 = *(v25 - 2);
              DWORD2(v40) = *(v25 - 4);
              LODWORD(v41) = v36;
              if ((sparser_bed_InjectMarker(v44, &__b, 0, *(a1 + 47)) & 0x80000000) == 0)
              {
                log_OutText(*(a1[2] + 4), &modPP_1, 5, 0, "[SPARSER] inserting EOS as number of markers in empty text exceeded, end marker now %u");
                goto LABEL_73;
              }
            }

            goto LABEL_75;
          }

          ++v26;
          v25 += 16;
          if (v11 == v26)
          {
            break;
          }
        }
      }
    }

    else
    {
      if (!v12 && HIWORD(v45) > 0x400u)
      {
        if ((bed_GetpBlock(v44, &v47) & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        HIWORD(v45) = 1024;
        v19 = v10[8];
        v18 = v10 + 8;
        DWORD2(v40) = *(v18 - 2);
        LODWORD(v41) = v19;
        if (v11)
        {
          v20 = 0;
          v21 = v18;
          while (*(v21 - 3) == 0x4000)
          {
            v22 = *v21;
            if (*v21 - *v18 > (*(v48 + 2) << 10))
            {
              break;
            }

            DWORD2(v40) = *(v21 - 2);
            LODWORD(v41) = v22;
            ++v20;
            v21 += 16;
            if (v11 == v20)
            {
              goto LABEL_67;
            }
          }

          LODWORD(v11) = v20;
        }

LABEL_67:
        if ((bed_Goto(v44, v11) & 0x80000000) != 0 || (sparser_bed_InjectMarker(v44, &__b, 0, *(a1 + 47)) & 0x80000000) != 0)
        {
          goto LABEL_75;
        }

        log_OutText(*(a1[2] + 4), &modPP_1, 5, 0, "[SPARSER] inserting EOS as empty text length exceeded, end marker now %u");
LABEL_73:
        v35 = 1;
LABEL_74:
        *a3 = v35;
        goto LABEL_75;
      }

      v23 = v48;
    }

    if ((chars_ScanBlankHead(v23, &v45 + 1, v47, &v45, &v38, 2u) & 0x80000000) == 0)
    {
      v28 = *(v47 + 16);
      if (v28 >= 2)
      {
        v29 = v10[8] + HIWORD(v45);
        v30 = v28 - 1;
        v31 = v10 + 26;
        do
        {
          if (*(v31 - 2) > v29)
          {
            break;
          }

          if (*(v31 - 5) == 20)
          {
            *a4 = *v31;
          }

          v31 += 16;
          --v30;
        }

        while (v30);
      }

      v32 = *a4;
      switch(v32)
      {
        case 2:
          v34 = (sparser_FindNextCharacterBoundary)(v48);
          break;
        case 4:
          v33 = sparser_FindNextLineBoundary;
          goto LABEL_59;
        case 3:
          v33 = sparser_FindNextWordBoundary;
LABEL_59:
          v34 = (v33)(v48);
          break;
        default:
          paramc_ParamGetStr(*(v49 + 40), "extraesctn", &v43);
          v34 = (sparser_FindNextSentenceBoundary)(v48);
          break;
      }

      if (v34 < 0 || *a3 || !*(v48 + 20))
      {
        goto LABEL_75;
      }

      v35 = sparser_ScanDataMarker(v47);
      goto LABEL_74;
    }
  }

LABEL_75:
  if (v44)
  {
    bed_ObjClose(v44);
  }

  return 0;
}

uint64_t sparser_bed_InjectMarker(uint64_t a1, unsigned int *a2, int a3, int a4)
{
  result = 2369789959;
  if (a1)
  {
    if (a2)
    {
      result = sparser_bed_MapPosCur(a1, a2[8], a2 + 6);
      if ((result & 0x80000000) == 0)
      {
        result = sparser_bed_MapPosCur(a1, a2[9] + a2[8], a2 + 7);
        if ((result & 0x80000000) == 0)
        {
          v10 = a2[6];
          v9 = a2[7];
          v11 = v9 >= v10;
          v12 = v9 - v10;
          if (v11)
          {
            a2[7] = v12;
          }

          if (a3 == 1 || (a4 != 1 ? (v16 = sparser_marker_HasStrictlyGreaterPosCur) : (v16 = sparser_marker_HasGreaterEqualPosCur), (result = bed_GoForward(a1, v16, a2), (result & 0x80000000) == 0) || (result & 0x1FFF) == 0x14))
          {
            v18 = 0;
            v17 = 0;
            result = bed_GetcElem(a1, &v17);
            if ((result & 0x80000000) == 0)
            {
              result = bed_GetpElem(a1, 0, &v18);
              if ((result & 0x80000000) == 0)
              {
                if (v17)
                {
                  v13 = 0;
                  v14 = 32;
                  do
                  {
                    if (*(v18 + v14) > a2[8])
                    {
                      break;
                    }

                    result = cstdlib_memcmp((v18 + v14 - 32), a2, 0x40uLL);
                    if (!result)
                    {
                      return result;
                    }

                    ++v13;
                    v14 += 64;
                  }

                  while (v13 < v17);
                }

                v15 = bed_Insert(a1, a2, 1);
                return v15 & (v15 >> 31);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sparser_FindNextWordBoundary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _BOOL4 *a6)
{
  if (*(a1 + 20))
  {
    v8 = *(a1 + 16) > a4;
  }

  else
  {
    v10 = a4;
    chars_ScanNonBlanks(*(a1 + 8), &v10, *(a1 + 16));
    v8 = v10 < *(a1 + 16);
  }

  *a6 = v8;
  return 0;
}

uint64_t sparser_FindNextLineBoundary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _BOOL4 *a6)
{
  if (*(a1 + 20))
  {
    v8 = *(a1 + 16) > a4;
  }

  else
  {
    v10 = a4;
    chars_ScanForLineEnd(*(a1 + 8), &v10, *(a1 + 16));
    v8 = v10 < *(a1 + 16);
  }

  *a6 = v8;
  return 0;
}

uint64_t sparser_FindNextSentenceBoundary(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, _BOOL4 *a6)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 20))
  {
    v9 = *(a1 + 16) > a4;
    goto LABEL_29;
  }

  v13 = *(a2 + 8);
  LODWORD(v14) = *(a2 + 16);
  if (a4)
  {
    if (!*(a2 + 16))
    {
      LODWORD(v16) = 0;
      goto LABEL_28;
    }

    v15 = 0;
    LODWORD(v16) = 0;
    do
    {
      v17 = (v13 + (v16 << 6));
      if (v17[8] > *(v13 + 32) + *(a1 + 2) * a4)
      {
        break;
      }

      if (a5 && v17[5] == 21)
      {
        cstdlib_strcpy(__dst, (*(a3 + 8) + v17[10]));
        v15 = cstdlib_strstr(a5, __dst) != 0;
        LODWORD(v14) = *(a2 + 16);
      }

      LODWORD(v16) = v16 + 1;
    }

    while (v16 < v14);
  }

  else
  {
    LODWORD(v16) = 0;
    v15 = 0;
  }

  if (v16 >= v14)
  {
    goto LABEL_28;
  }

  v16 = v16;
  v18 = (v13 + (v16 << 6));
  while (1)
  {
    if (v18[8] == *(v13 + 32) || !sparser_marker_IsSentenceBoundary(v18, (*(a3 + 8) + v18[10])))
    {
      if (a5 && v18[5] == 21)
      {
        cstdlib_strcpy(__dst, (*(a3 + 8) + v18[10]));
        v15 = cstdlib_strstr(a5, __dst) != 0;
      }

      goto LABEL_25;
    }

    if (v15 && v18[5] == 2)
    {
LABEL_21:
      v18[10] = 0;
      goto LABEL_25;
    }

    if (!sparser_IsSuppressedSentenceBoundary(a2, a1, *(v18 + 16) - *(v13 + 32)))
    {
      break;
    }

    if (v18[5] == 2)
    {
      goto LABEL_21;
    }

LABEL_25:
    ++v16;
    v14 = *(a2 + 16);
    v18 += 16;
    if (v16 >= v14)
    {
      goto LABEL_26;
    }
  }

  LODWORD(v14) = *(a2 + 16);
LABEL_26:
  LODWORD(v16) = v16;
LABEL_28:
  v9 = v16 < v14;
LABEL_29:
  *a6 = v9;
  return 0;
}

BOOL sparser_ScanDataMarker(_BOOL8 result)
{
  if (result)
  {
    if (*(result + 16))
    {
      v1 = *(result + 8);
      v2 = (v1 + 20);
      v3 = 1;
      v4 = *(result + 16);
      v5 = 1;
      do
      {
        if (v1)
        {
          if (*v2 <= 0x28u && ((1 << *v2) & 0x10024000100) != 0)
          {
            break;
          }
        }

        v5 = v3 < *(result + 16);
        v2 += 16;
        ++v3;
        --v4;
      }

      while (v4);
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sparser_PreScanTextElement(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = 0;
  v5 = datac_RequestBlock(a2, 1010, 1u, &v9);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(v9 + 16);
    if (v6 >= 4)
    {
      v7 = *(v9 + 8);
      v10 = 0;
      if (utf8_Utf8CharTo16bit((v7 + (v6 - 2)), &v10))
      {
        if (v10 <= 0x3Fu && ((1 << v10) & 0x8000400200000000) != 0 || v10 == 65294)
        {
          if (utf8_BelongsToSet(2, v7, *(v9 + 16) - 1, *(v9 + 16)))
          {
            log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] text ends in period-space; get more text");
            *a3 = 1;
          }
        }
      }
    }
  }

  return v5;
}

uint64_t sparser_ScanTextElement(uint64_t a1, uint64_t a2, int a3, unsigned __int16 a4)
{
  v86 = 0;
  v87 = 0;
  v4 = 2369789959;
  v84 = 0;
  v82 = 0;
  v83 = 0;
  if (!a1 || !a2)
  {
    return v4;
  }

  if (!*(a1 + 96))
  {
    log_OutPublic(*(*(a1 + 16) + 32), &modPP_1, 1808, 0);
    return v4;
  }

  datac_RequestBlock(a2, 1012, 1u, &v82);
  v9 = datac_RequestBlock(a2, 1010, 1u, &v87);
  if ((v9 & 0x80000000) != 0)
  {
    if ((v9 & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  v10 = *(v87 + 16);
  v11 = *(v87 + 2);
  v12 = bed_ObjOpen(*a1, *(a1 + 8), a2, 1011, &v86, 212);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v12 = bed_GetpBlock(v86, &v83);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = *(*(v83 + 8) + 32);
  v14 = v86;
  v92 = 0u;
  v93 = 0u;
  __b = 0u;
  v91 = 0u;
  v88 = 0;
  cstdlib_memset(&__b, 0, 0x40uLL);
  LODWORD(__b) = 0;
  *(&__b + 1) = 0;
  LOWORD(v91) = 0;
  DWORD1(v91) = 0x4000;
  *&v93 = 0;
  DWORD2(v93) = 0;
  *(&v91 + 1) = 0;
  *&v92 = 0;
  if (!v14)
  {
    goto LABEL_126;
  }

  v15 = bed_Goto(v14, 0);
  if ((v15 & 0x80000000) != 0 || (v15 = bed_GoForward(v14, sparser_marker_IsOfSameType, &__b), (v15 & 0x80000000) != 0) || (v15 = bed_GetpElem(v14, 0xFFFFu, &v88), (v15 & 0x80000000) != 0))
  {
    v4 = v15;
LABEL_126:
    v68 = 0;
    v18 = 0;
    v69 = 0;
    HIWORD(v84) = 0;
    goto LABEL_127;
  }

  v80 = *(v88 + 32);
  v16 = *(a1 + 168);
  if (v16 < v13)
  {
    *(a1 + 168) = v13;
    v16 = v13;
  }

  *(a1 + 176) = v16;
  v85 = (v16 - v13) / *(v87 + 2);
  LODWORD(v88) = v85;
  NextOrthRegion = sparser_FindNextOrthRegion(v87, v86, &v88, &v85, &v84);
  v18 = v85;
  if ((NextOrthRegion & 0x80000000) != 0)
  {
    v4 = NextOrthRegion;
  }

  else
  {
    v19 = v88;
    if (v85)
    {
      v20 = *(v87 + 16);
      if (v85 <= v20)
      {
        HIWORD(v84) = v85 - (v20 == v85);
        chars_BackScanBlanks(*(v87 + 8), &v84 + 1);
        if (!HIWORD(v84))
        {
          v4 = 0;
          goto LABEL_134;
        }
      }
    }

    if (v19 >= v18)
    {
      v4 = 0;
    }

    else
    {
      v21 = 0;
      v76 = a4;
      v73 = v13 + (v11 * v10);
      v74 = v13;
      LOWORD(v22) = v19;
      do
      {
        v75 = v22;
        if (v22 == v18)
        {
          goto LABEL_20;
        }

        v28 = v22;
        do
        {
          if (!v83)
          {
            goto LABEL_141;
          }

          v29 = *(v83 + 16);
          if (*(v83 + 16))
          {
            v30 = 0;
            v31 = *(v83 + 8);
            v32 = *(v31 + 32);
            v33 = (v31 + 40);
            v34 = v76;
            do
            {
              v35 = *(v33 - 2) - v32;
              v36 = (*(v33 - 4) - v32);
              if (v36 > v18)
              {
                break;
              }

              if (*(v33 - 5) == 20)
              {
                v37 = *v33;
                if (v34 == 1)
                {
                  v38 = v37 == 1 || v36 >= v18;
                  if (!v38 && v36 > v28)
                  {
                    v34 = 1;
LABEL_101:
                    v61 = v35;
                    LOWORD(v35) = v28;
                    v42 = v61;
                    if (a3)
                    {
                      goto LABEL_59;
                    }

                    goto LABEL_20;
                  }
                }

                v34 = *v33;
                v40 = v37 != 1 || v36 >= v18;
                if (!v40 && v36 >= v28)
                {
                  LODWORD(v30) = v30 + 1;
                  if (v30 < v29)
                  {
                    v62 = v31 + 20;
LABEL_105:
                    v30 = v30;
                    v63 = (v62 + (v30 << 6));
                    do
                    {
                      v64 = v63[3] - v32;
                      v65 = (*(v63 + 6) - v32);
                      if (v65 > v18)
                      {
                        break;
                      }

                      if (*v63 == 20)
                      {
                        v67 = v65 >= v18 || v65 < v28;
                        LODWORD(v30) = v30 + 1;
                        if (v30 < v29 && v67)
                        {
                          goto LABEL_105;
                        }

                        if (v67)
                        {
                          break;
                        }

                        v28 = v35;
                        LOWORD(v35) = v64;
                        goto LABEL_101;
                      }

                      ++v30;
                      v63 += 16;
                    }

                    while (v30 < v29);
                  }

LABEL_56:
                  v42 = v18;
                  if (a3)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_20;
                }
              }

              ++v30;
              v33 += 32;
            }

            while (v29 != v30);
            LOWORD(v35) = v28;
            goto LABEL_56;
          }

          LOWORD(v35) = v28;
          v42 = v18;
          v34 = v76;
          if (!a3)
          {
            break;
          }

LABEL_59:
          if (v35 == v42 || v34 != 1)
          {
            break;
          }

          v81 = v87;
          if (!v87 || (v43 = v86) == 0)
          {
            matched = 2369789959;
LABEL_140:
            v4 = matched;
LABEL_141:
            v13 = v74;
            goto LABEL_142;
          }

          v44 = *(v87 + 2);
          v45 = bed_Goto(v86, 0xFFFFFFFF);
          if ((v45 & 0x80000000) != 0)
          {
            goto LABEL_138;
          }

          v78 = v42;
          v89 = 0;
          __b = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          LODWORD(v92) = v80 + v44 * v35;
          matched = bed_GoBackward(v43, sparser_marker_HasStrictlySmallerPosCur, &__b);
          if ((matched & 0x80001FFF) == 0x80000014)
          {
            matched = bed_Goto(v43, 0);
          }

          if ((matched & 0x80000000) != 0)
          {
            goto LABEL_140;
          }

          v45 = bed_GetiElem(v43, &v89);
          if ((v45 & 0x80000000) != 0)
          {
LABEL_138:
            matched = v45;
            goto LABEL_140;
          }

          v77 = v42;
          matched = sparser_MatchSb(a1, 0, 1, v81, v80, v35, v42, v43, v89);
          if ((matched & 0x80000000) != 0)
          {
            goto LABEL_140;
          }

          LOWORD(v79) = v35;
          while (1)
          {
            v47 = v89;
            v48 = *(v81 + 2);
            *&__b = 0;
            v94[0] = 0;
            if ((bed_GetcElem(v43, v94) & 0x80000000) != 0 || (bed_GetpElem(v43, 0, &__b) & 0x80000000) != 0)
            {
              break;
            }

            if (v94[0] > v47)
            {
              v49 = (__b + 32 + (v47 << 6));
              while (1)
              {
                v50 = *v49;
                v49 += 16;
                if (v50 > *(__b + 32) + v48 * v79)
                {
                  break;
                }

                if (v94[0] == ++v47)
                {
                  goto LABEL_97;
                }
              }

              LODWORD(v47) = v47;
            }

            if (v47 >= v94[0])
            {
              goto LABEL_97;
            }

            v51 = *(__b + 32);
            v52 = v51 + v48 * v77;
            v53 = v47;
            v54 = (__b + (v47 << 6) + 20);
            while (v54[3] <= v52)
            {
              if (*v54 <= 0x28u && ((1 << *v54) & 0x10004000080) != 0)
              {
                break;
              }

              ++v53;
              v54 += 16;
              if (v94[0] == v53)
              {
                goto LABEL_97;
              }
            }

            v56 = __b + (v53 << 6);
            v57 = *(v56 + 32);
            if (v57 > v52 || ((v58 = *(v56 + 20), v25 = v58 > 0x28, v59 = (1 << v58) & 0x10004000080, !v25) ? (v60 = v59 == 0) : (v60 = 1), v60))
            {
LABEL_97:
              if ((matched & 0x80000000) != 0)
              {
                goto LABEL_140;
              }

              break;
            }

            if (v48)
            {
              v79 = (v57 - v51) / v48;
            }

            matched = sparser_MatchSb(a1, 1, 0, v81, v80, v35, v79, v43, v89);
            if ((matched & 0x80000000) != 0)
            {
              goto LABEL_140;
            }
          }

          v28 = v78;
          v21 = 1;
        }

        while (v78 != v18);
LABEL_20:
        v23 = sparser_FindNextOrthRegion(v87, v86, &v88, &v85, &v84);
        if ((v23 & 0x80000000) != 0)
        {
          v18 = v85;
          v4 = v23;
          goto LABEL_141;
        }

        v13 = v74;
        v24 = v85;
        v25 = v85 > v18 && v88 > v75;
        if (v25)
        {
          v22 = v88;
        }

        else
        {
          v22 = v85;
        }

        LODWORD(v88) = v22;
        v26 = *(v87 + 2);
        v27 = v74 + v85 * v26 > v73 || v22 >= v85;
        v18 = v85;
      }

      while (!v27);
      if (v21 == 1)
      {
        v4 = sparser_CheckForcedSb(a1, v87, v80, (v26 * v85), v86, v84, v82);
      }

      else
      {
        v4 = 0;
      }

      v18 = v24;
    }
  }

LABEL_142:
  HIWORD(v84) = v18;
  if (v18 && (v72 = *(v87 + 16), v18 <= v72))
  {
    if (v18 == v72)
    {
      HIWORD(v84) = v18 - 1;
    }

    chars_BackScanBlanks(*(v87 + 8), &v84 + 1);
    v69 = HIWORD(v84);
    v68 = v18;
  }

  else
  {
    v68 = v18;
    v69 = v18;
  }

LABEL_127:
  if (v18 != v69)
  {
    *(a1 + 172) = v13 + *(v87 + 2) * v69;
  }

  if (v18 >= 5)
  {
    HIWORD(v84) = v68;
    chars_BackScanNChars(*(v87 + 8), &v84 + 1, 4);
    v70 = v13 + *(v87 + 2) * HIWORD(v84);
    goto LABEL_135;
  }

LABEL_134:
  v70 = v13 + v18 * *(v87 + 2);
LABEL_135:
  *(a1 + 168) = v70;
  if (v86)
  {
    bed_ObjClose(v86);
  }

  return v4;
}

uint64_t sparser_FindNextOrthRegion(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, _WORD *a5)
{
  v53 = 0;
  result = 2369789959;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v13 = *(a1 + 16);
  *a3 = v13;
  *a4 = v13;
  result = bed_GetpBlock(a2, &v53);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v14 = v53;
  v15 = *a5;
  LODWORD(v16) = *(v53 + 16);
  if (v15 >= v16)
  {
LABEL_43:
    if (v10 == *a3 && v11 == *a4)
    {
LABEL_45:
      result = 0;
      v52 = *(a1 + 16);
      *a3 = v52;
      *a4 = v52;
      return result;
    }

    return 0;
  }

  v17 = *(v53 + 8);
  v18 = *(v17 + 32);
  if (__CFADD__(v18, v11 * *(a1 + 2)))
  {
    v19 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = (v17 + 96);
    v23 = 1;
    do
    {
      v15 = v20;
      v19 = v23;
      *a5 = v20;
      if (*(v22 - 19) == 7)
      {
        v21 = !v21;
        if (*(v22 - 14) != 43)
        {
          v21 = 0;
        }
      }

      v24 = *(v14 + 16);
      if (v23 >= v24)
      {
        break;
      }

      v25 = *v22;
      v22 += 16;
      v20 = v23++;
    }

    while (v25 <= v18 + v11 * *(a1 + 2));
    v26 = !v21;
    LODWORD(v16) = *(v14 + 16);
    if (!v26)
    {
      if (v15 < v24)
      {
        v27 = (v17 + (v15 << 6) + 84);
        v28 = v15 + 1;
        do
        {
          v15 = v28;
          *a5 = v28;
          v16 = *(v14 + 16);
          if (v28 >= v16)
          {
            break;
          }

          v29 = *v27;
          v27 += 16;
          ++v28;
        }

        while (v29 != 7);
      }

      if (v15 >= v16 || *(v17 + (v15 << 6) + 20) != 7)
      {
        return 0;
      }
    }
  }

  v30 = v17 + (v15 << 6);
  LODWORD(v31) = v16;
  if (v15 < v16)
  {
    v32 = (v30 + 84);
    v33 = v15 + 1;
    do
    {
      v15 = v33;
      *a5 = v33;
      v31 = *(v14 + 16);
      if (v33 >= v31)
      {
        break;
      }

      v34 = *v32;
      v32 += 16;
      ++v33;
    }

    while (v34 != 7);
  }

  v35 = *(v17 + 32);
  v36 = *(v30 + 32) - v35;
  v37 = *(a1 + 2);
  v38 = v36 / v37;
  if (v15 >= v31)
  {
    if (v38 == *(a1 + 16))
    {
LABEL_42:
      *a3 = v38;
      goto LABEL_43;
    }
  }

  else
  {
    v39 = (*(v17 + (v15 << 6) + 32) - v35) / v37;
    if (v38 == v39)
    {
      v40 = v17 + (v19 << 6);
      v41 = v17 + 84;
      while (1)
      {
        if (*(v17 + (v15 << 6) + 20) == 7 && *(v40 + 40) == 43)
        {
          v42 = (v41 + (v15 << 6));
          v43 = v15 + 1;
          do
          {
            v44 = v42;
            v45 = v43;
            *a5 = v43;
            v31 = *(v14 + 16);
            if (v43 >= v31)
            {
              break;
            }

            v42 += 16;
            ++v43;
          }

          while (*v44 != 7);
          if (*v44 != 7)
          {
            return 0;
          }

          v15 = v45;
        }

        v46 = v15;
        if (v15 < v31)
        {
          v47 = (v41 + (v15 << 6));
          v48 = v15 + 1;
          do
          {
            v15 = v48;
            *a5 = v48;
            v31 = *(v14 + 16);
            if (v48 >= v31)
            {
              break;
            }

            v49 = *v47;
            v47 += 16;
            ++v48;
          }

          while (v49 != 7);
        }

        v50 = *(a1 + 2);
        v38 = (*(v17 + (v46 << 6) + 32) - v35) / v50;
        if (v15 >= v31)
        {
          goto LABEL_42;
        }

        v51 = (*(v17 + (v15 << 6) + 32) - v35) / v50;
        if (v38 != v51)
        {
          *a3 = v38;
          *a4 = v51;
          goto LABEL_43;
        }
      }
    }

    *a4 = v39;
  }

  *a3 = v38;
  if (v10 != v38)
  {
    return 0;
  }

  result = 0;
  if (v11 == *a4 && v12 == v15)
  {
    goto LABEL_45;
  }

  return result;
}

uint64_t sparser_CheckForcedSb(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t i)
{
  v72 = 0;
  v7 = 2369789959;
  if (!a2)
  {
    return v7;
  }

  v8 = a5;
  if (!a5)
  {
    return v7;
  }

  v73 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v73) & 0x80000000) != 0)
  {
    return v7;
  }

  v70 = 0;
  sparser_getMaxCharsPerText(v73, &v70);
  v14 = *(a2 + 8);
  v7 = bed_Goto(v8, a6);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v71 = 0;
  if (!a4)
  {
    return v7;
  }

  v15 = 0;
  v16 = 0;
  v59 = a4 + a3;
  v17 = v70;
  v61 = v8;
  v62 = i;
  v63 = a1;
  while (1)
  {
    *&__b = 0;
    v18 = bed_GetpBlock(v8, &__b);
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    v19 = *(__b + 8);
    LOWORD(v69) = v16 / *(a2 + 2);
    chars_ScanBlanks(*(a2 + 8), &v69, *(a2 + 16));
    v20 = *(a2 + 2);
    v21 = v20 * v69;
    LOWORD(v69) = 0;
    v22 = __b;
    v23 = *(__b + 16);
    v24 = v21;
    if (!v21)
    {
LABEL_12:
      LOWORD(v29) = 0;
      goto LABEL_13;
    }

    if (*(__b + 16))
    {
      break;
    }

LABEL_29:
    v35 = Utf8_LengthInUtf8chars(*(a2 + 8), v20 * *(a2 + 16) - v24);
    if (v35 > v17)
    {
      goto LABEL_30;
    }

    v37 = a3;
    v36 = a3 + *(a2 + 2) * *(a2 + 16);
    v8 = v61;
LABEL_36:
    v7 = 0;
    v71 = v36;
    i = v62;
LABEL_75:
    if (v36 - v37 + v16 <= 0xFFFE)
    {
      v57 = (v36 - v37);
      if (v36 == v37)
      {
        v57 = 1;
      }

      v16 += v57;
      a3 = v36;
      if (v16 < a4)
      {
        continue;
      }
    }

    return v7;
  }

  v25 = *(v19 + 32);
  v26 = v25 + v21;
  if (__CFADD__(v25, v24))
  {
    goto LABEL_12;
  }

  v29 = 0;
  v30 = (v19 + 96);
  do
  {
    if (v23 - 1 == v29)
    {
      LOWORD(v69) = *(__b + 16);
LABEL_28:
      v20 = *(a2 + 2);
      goto LABEL_29;
    }

    ++v29;
    v31 = *v30;
    v30 += 16;
  }

  while (v31 <= v26);
  LOWORD(v69) = v29;
LABEL_13:
  while (v23 > v29)
  {
    v27 = v19 + (v29 << 6);
    if (*(v27 + 32) != *(v19 + 32))
    {
      IsSentenceBoundary = sparser_marker_IsSentenceBoundary(v27, (*(i + 8) + *(v27 + 40)));
      LOWORD(v29) = v69;
      v22 = __b;
      if (IsSentenceBoundary)
      {
        LODWORD(v23) = *(__b + 16);
        break;
      }
    }

    LOWORD(v29) = v29 + 1;
    LOWORD(v69) = v29;
    LODWORD(v23) = *(v22 + 16);
  }

  if (v23 <= v29)
  {
    goto LABEL_28;
  }

  v32 = *(v19 + 32) + v24;
  v33 = v32 > a3;
  LODWORD(v34) = (v32 - a3);
  if (v33)
  {
    v34 = v34;
  }

  else
  {
    v34 = 0;
  }

  v35 = Utf8_LengthInUtf8chars((*(a2 + 8) + v34), *(v19 + (v29 << 6) + 32) - (a3 + v34));
  if (v35 <= v17)
  {
    v36 = *(v19 + (v69 << 6) + 32);
    v8 = v61;
    v37 = a3;
    goto LABEL_36;
  }

LABEL_30:
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  __b = 0u;
  v66 = 0u;
  cstdlib_memset(&__b, 0, 0x40uLL);
  LODWORD(__b) = 1;
  *(&__b + 1) = 0;
  LOWORD(v66) = 0;
  *&v68 = 0;
  DWORD2(v68) = 0;
  *(&v66 + 1) = 0;
  *&v67 = 0;
  DWORD1(v66) = 2;
  DWORD2(v67) = 1;
  log_OutText(*(*(v63 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] sentence character count %d is greater than max %d", v35, v17);
  v69 = (v17 + v16);
  utf8_GetPreviousValidUtf8Offset(*(a2 + 8), &v69);
  v38 = v69;
  v39 = Utf8_LengthInUtf8chars((v14 + v16), v69 - v16);
  v8 = v61;
  if (v38 >= a4)
  {
    i = v62;
  }

  else
  {
    v40 = v39;
    for (i = v62; v17 > v40; ++v40)
    {
      v38 += utf8_determineUTF8CharLength(*(v14 + v38));
      if (a4 <= v38)
      {
        break;
      }
    }
  }

  v71 = a3 - v16 + v38;
  log_OutText(*(*(v63 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] after resetting to %d characters, position=%d", v17, v71);
  eos_BackScanPhraseBoundary(*(v63 + 152), v14, v16, a3, &v71);
  v41 = v71;
  if (v71 > v59)
  {
    v41 = v59;
    v71 = v59;
  }

  log_OutText(*(*(v63 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] after scanning back to phrase boundary, position=%d", v41);
  *&v67 = v71;
  v7 = bed_GetpBlock(v61, &v72);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v42 = *(v72 + 8);
  if (!*(v72 + 16))
  {
    v46 = v15;
LABEL_61:
    v60 = v46;
    if (v67 == *(v42 + 32))
    {
      log_OutText(*(*(v63 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] no hard reset (at start of text)");
LABEL_74:
      log_OutPublic(*(v73 + 32), &modPP_1, 1816, 0);
      v36 = v71;
      v15 = v60;
      v37 = a3;
      goto LABEL_75;
    }

    v54 = *(v72 + 16);
    do
    {
      --v54;
    }

    while (v54 && v67 < *(v42 + (v54 << 6) + 36) + *(v42 + (v54 << 6) + 32));
    log_OutText(*(*(v63 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] hard reset at position=%d", v67);
    v18 = bed_Goto(v61, v54);
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    v18 = sparser_bed_InjectMarker(v61, &__b, 0, *(v63 + 188));
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

LABEL_68:
    v7 = 0;
LABEL_73:
    i = v62;
    goto LABEL_74;
  }

  v43 = 0;
  v44 = 0;
  v45 = (v42 + 40);
  v46 = v15;
  do
  {
    if (*(v45 - 2) > v67)
    {
      break;
    }

    if (*(v45 - 5) == 7)
    {
      v44 = !v44;
      v46 = *v45 == 43 ? v43 : v46;
      if (*v45 != 43)
      {
        v44 = 0;
      }
    }

    ++v43;
    v45 += 16;
  }

  while (*(v72 + 16) != v43);
  if (!v44)
  {
    goto LABEL_61;
  }

  v60 = v46;
  v47 = v46 + 1;
  log_OutText(*(*(v63 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] position=%d is in a phoneme region", v71);
  v48 = *(v72 + 16);
  if (v48 <= v47)
  {
    goto LABEL_69;
  }

  v49 = v47 - 1;
  v50 = (v42 + (v47 << 6) + 20);
  do
  {
    v52 = *v50;
    v50 += 16;
    v51 = v52;
    v53 = v49 + 2;
    ++v49;
  }

  while (v53 < v48 && v51 != 7);
  if (v51 != 7)
  {
LABEL_69:
    v18 = bed_Goto(v61, v60);
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    v55 = v42 + (v60 << 6);
    v56 = *(v55 + 24);
    LODWORD(v67) = *(v55 + 32);
    log_OutText(*(*(v63 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] didnt find end of phoneme region, hard reset at start of phoneme (marker %d)", v60);
    v18 = sparser_bed_InjectMarker(v61, &__b, 1, *(v63 + 188));
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    v8 = v61;
    v7 = bed_GetpBlock(v61, &v72);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    *(*(v72 + 8) + (v60 << 6) + 24) = v56;
    v71 = a4;
    goto LABEL_73;
  }

  log_OutText(*(*(v63 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set forced EOS at end of phoneme region (marker %d)", v49);
  v71 = *(v42 + (v49 << 6) + 32);
  LODWORD(v67) = v71;
  v18 = bed_Goto(v61, v49);
  if ((v18 & 0x80000000) == 0)
  {
    v18 = sparser_bed_InjectMarker(v61, &__b, 0, *(v63 + 188));
    if ((v18 & 0x80000000) == 0)
    {
      v8 = v61;
      goto LABEL_68;
    }
  }

  return v18;
}

uint64_t sparser_GetTextElement(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _WORD *a7, int *a8, int *a9, _DWORD *a10, _WORD *a11, _WORD *a12)
{
  v152 = 0;
  v153 = 0;
  v150 = 0;
  v151 = 0;
  v12 = 2369789959;
  v149 = 0;
  v148 = 0;
  v146 = 0;
  v145 = 0;
  if (!a2)
  {
    return v12;
  }

  v147 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v153) & 0x80000000) != 0)
  {
    return v12;
  }

  v21 = a12;
  *a12 = 0;
  *a11 = 0;
  *a8 = 0;
  if (!*(a1 + 96))
  {
    v23 = *(v153 + 32);
    v24 = 1805;
LABEL_8:
    log_OutPublic(v23, &modPP_1, v24, 0);
    return v12;
  }

  v22 = datac_RequestBlock(a2, 1010, 1u, &v152);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v142 = (datac_RequestBlock(a2, 1012, 1u, &v150) & 0x80000000) != 0 ? 0 : *(v150 + 8);
  v22 = datac_RequestBlock(a2, 1011, 1u, &v151);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v141 = a4;
  v143 = *(v151 + 8);
  v25 = *(v151 + 16);
  v22 = chars_ScanBlankHead(v152, &v147, v151, &v147 + 1, &v145, 0);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  if (v145 == 1)
  {
    HIWORD(v147) = v25;
  }

  v26 = v151;
  v27 = *(v151 + 16);
  if (v27 >= 2)
  {
    v28 = *(v143 + 32) + v147;
    v29 = v27 - 1;
    v30 = (v143 + 104);
    do
    {
      if (*(v30 - 2) > v28)
      {
        break;
      }

      if (*(v30 - 5) == 20)
      {
        *a7 = *v30;
      }

      v30 += 16;
      --v29;
    }

    while (v29);
  }

  if (*a7 - 2 > 2)
  {
    v31 = sparser_GetSentenceLength;
  }

  else
  {
    v31 = off_287EEEC58[(*a7 - 2)];
  }

  v32 = v152;
  v33 = v150;
  if (v26)
  {
    if (v152)
    {
      v34 = HIWORD(v147);
      if (HIWORD(v147))
      {
        v35 = 0;
        v36 = *(v26 + 8);
        v37 = v36;
        while ((v37[5] & 0xFFFFFFFE) != 2 || v37[10] != 1)
        {
          v37 += 16;
          if (-HIWORD(v147) == --v35)
          {
            goto LABEL_30;
          }
        }

        v49 = -v35;
        v38 = -v35;
        if (v35)
        {
          v50 = v36[16 * ~v35 + 5];
          v106 = v50 > 0x28;
          v51 = (1 << v50) & 0x10024000100;
          if (!v106 && v51 != 0)
          {
            v53 = v37[8] - v36[8] / *(v152 + 2);
            v21 = a12;
LABEL_54:
            LOWORD(v147) = v53;
            HIWORD(v147) = v38;
            goto LABEL_32;
          }
        }

        if (HIWORD(v147) <= v38)
        {
LABEL_86:
          v21 = a12;
        }

        else
        {
          while (1)
          {
            v72 = v37[5];
            v106 = v72 > 0x28;
            v73 = (1 << v72) & 0x10024000100;
            if (!v106 && v73 != 0)
            {
              break;
            }

            ++v49;
            v37 += 16;
            if (HIWORD(v147) == v49)
            {
              goto LABEL_86;
            }
          }

          if (HIWORD(v147) <= v49)
          {
            v38 = v49;
          }

          else
          {
            v134 = *(v26 + 8);
            v136 = v31;
            v139 = v152;
            do
            {
              v132 = v33;
              IsSentenceBoundary = sparser_marker_IsSentenceBoundary(v37, (*(v33 + 8) + v37[10]));
              v34 = HIWORD(v147);
              if (IsSentenceBoundary)
              {
                break;
              }

              v37 += 16;
              ++v49;
              v33 = v132;
            }

            while (v49 < HIWORD(v147));
            v38 = v49;
            v31 = v136;
            v32 = v139;
            v36 = v134;
          }

          v21 = a12;
          if (v38 < v34)
          {
            LOWORD(v53) = (v36[16 * v38 + 8] - v36[8]) / *(v32 + 2);
            goto LABEL_54;
          }

          v32 = v152;
        }
      }
    }
  }

LABEL_30:
  v22 = (v31)(v153, v32);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v38 = HIWORD(v147);
LABEL_32:
  v140 = v21;
  if (v38 < 2)
  {
    v41 = 0;
    v44 = 1;
  }

  else
  {
    v137 = a8;
    v39 = 0;
    v40 = v143 + 64;
    v41 = 1;
    v42 = v38;
    while (1)
    {
      v43 = *(v40 + 20);
      v44 = v39 + 1;
      if (v43 == 22)
      {
        break;
      }

      if (v43 == 0x4000)
      {
        v45 = v39;
      }

      else
      {
        v45 = v39 + 1;
      }

      ++v41;
      v39 = v45 + 1;
      v40 += 64;
      if (v42 == v41)
      {
        v41 = 0;
        v44 = v42;
        a8 = v137;
        goto LABEL_59;
      }
    }

    HIWORD(v147) = v41;
    *a5 = 1;
    if ((v39 + 1) == v41 && *(v40 + 32) == *(v143 + 32))
    {
      *a6 = 1;
      log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] found immediate voice switch");
      v22 = sparser_SetArgAsParamStr(a1, a2, v40, "pipelineswitchvoice");
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v46 = v39 + 2;
      HIWORD(v147) = v39 + 2;
    }

    else
    {
      *a6 = 0;
      v46 = v41;
      v44 = v41;
    }

    a8 = v137;
    v47 = *(v152 + 16);
    if (*(v151 + 16) <= v44)
    {
      v48 = *(v152 + 16);
    }

    else
    {
      v48 = (*(v40 + 32) - *(v143 + 32)) / *(v152 + 2);
    }

    if (v48 < v47)
    {
      v47 = v48;
    }

    LOWORD(v147) = v47;
    log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] found voice switch (marker %d); adjusted text length to %u, set iMEnd to %d, bImmediateVoiceSwitch=%d bEndOnVoiceSwitch=%d", v41, v47, v46, *a6, *a5);
  }

LABEL_59:
  if (v147 <= 1u)
  {
    v54 = 1;
  }

  else
  {
    v54 = v147;
  }

  v22 = datac_RequestBlock(a2, 1020, v54, &v149);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v22 = datac_RequestBlock(a2, 1021, (HIWORD(v147) + 1), &v148);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  cstdlib_memmove(*(v149 + 8), *(v152 + 8), *(v152 + 2) * v147);
  v55 = v147;
  *(v149 + 16) = v147;
  v56 = v152;
  v57 = *(v152 + 16) - v55;
  *(v152 + 16) = v57;
  cstdlib_memmove(*(v56 + 8), (*(v56 + 8) + v55), *(v56 + 2) * v57);
  v58 = v149;
  *a3 = *(v149 + 16);
  if (*a5 == 1 && !*a6)
  {
    v144 = 0;
    v22 = chars_ScanBlankHead(v58, &v144 + 1, v148, &v144, &v145, 0);
    if ((v22 & 0x80000000) != 0)
    {
      return v22;
    }

    if (HIWORD(v144) == *(v149 + 16))
    {
      if (HIWORD(v147) < 2uLL)
      {
LABEL_96:
        *a6 = 1;
        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] found immediate voice switch, due to blank text");
        v22 = sparser_SetArgAsParamStr(a1, a2, v143 + (v41 << 6), "pipelineswitchvoice");
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        HIWORD(v147) = v44 + 1;
      }

      else
      {
        v75 = (v143 + 84);
        v76 = 1;
        while (1)
        {
          v77 = *v75;
          v75 += 16;
          v78 = (1 << v77) & 0x1080200084;
          if (v77 > 0x24 || v78 == 0)
          {
            break;
          }

          if (++v76 >= HIWORD(v147))
          {
            goto LABEL_96;
          }
        }

        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] blank text, but non-eos marker found - continue with sentence");
        HIWORD(v147) = v44;
        *a5 = 0;
      }
    }
  }

  cstdlib_memmove(*(v148 + 8), *(v151 + 8), HIWORD(v147) << 6);
  v59 = v148;
  v60 = HIWORD(v147);
  if (HIWORD(v147))
  {
    v61 = a8;
    v62 = 0;
    v63 = v143;
    v64 = (v143 + 48);
    v65 = (*(v148 + 8) + 48);
    while (1)
    {
      if (*v64)
      {
        v66 = cstdlib_strlen(*v64);
        if (v66)
        {
          v67 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v66 + 1));
          *v65 = v67;
          if (!v67)
          {
            return 2369789962;
          }

          cstdlib_strcpy(v67, *v64);
          heap_Free(*(*(a1 + 16) + 8), *v64);
          *v64 = 0;
        }
      }

      ++v62;
      v60 = HIWORD(v147);
      v64 += 8;
      v65 += 8;
      if (v62 >= HIWORD(v147))
      {
        v59 = v148;
        a8 = v61;
        goto LABEL_75;
      }
    }
  }

  v63 = v143;
LABEL_75:
  *(v59 + 16) = v60;
  v68 = &v63[16 * v60];
  v69 = v152;
  if (*(v152 + 20))
  {
    v70 = v151;
    if (*(v152 + 16))
    {
      v71 = 0;
    }

    else
    {
      v71 = *(v151 + 20);
      if (v71)
      {
        v71 = *(v151 + 16) == v60;
      }
    }
  }

  else
  {
    v71 = 0;
    v70 = v151;
  }

  v80 = v68[6];
  *(v149 + 20) = v71;
  *(v59 + 20) = v71;
  if (v60 >= *(v70 + 16))
  {
    v81 = *(v69 + 2) * v147;
    v82 = v63[8] + v81;
  }

  else
  {
    v81 = *(v69 + 2) * v147;
    v82 = v81 + v63[8];
    v83 = v68[8];
    if (v82 >= v83)
    {
      v135 = 0;
      v63[6] = v80;
      v63[8] = v83;
      goto LABEL_105;
    }
  }

  v63[6] += v81;
  v63[8] = v82;
  v135 = 1;
LABEL_105:
  v138 = v80;
  if (v60 < 2)
  {
    v86 = 1;
  }

  else
  {
    v84 = v63 + 21;
    v85 = 1;
    v86 = 1;
    do
    {
      if (*v84 != 2)
      {
        *v141 += v84[2];
        if (*v84 <= 0x24 && ((1 << *v84) & 0x1080200080) != 0)
        {
          ArgOfLastOfType = sparser_marker_GetArgOfLastOfType(v143, v85, v60, 1);
          if (!sparser_marker_IsReadOutControlDefaultArg(*v84, ArgOfLastOfType, v142, *(a1 + 180)))
          {
            v89 = v143 + (v86 << 6);
            v90 = *(v143 + 24);
            *(v89 + 20) = *v84;
            *(v89 + 24) = v90;
            v91 = *(v143 + 32);
            *(v89 + 28) = 0;
            *(v89 + 32) = v91;
            *(v89 + 40) = ArgOfLastOfType;
            *v89 = 1;
            ++v86;
          }
        }
      }

      ++v85;
      v60 = HIWORD(v147);
      v84 += 16;
    }

    while (v85 < HIWORD(v147));
  }

  if (v60 <= v86)
  {
    v95 = v140;
    v94 = v138;
  }

  else
  {
    v92 = v151;
    v93 = *(v151 + 16) + v86 - v60;
    *(v151 + 16) = v93;
    v94 = v138;
    if (v93 >= 2u)
    {
      cstdlib_memmove((*(v92 + 8) + (v86 << 6)), (*(v92 + 8) + (v60 << 6)), (v93 - v86) << 6);
      v60 = HIWORD(v147);
    }

    v95 = v140;
  }

  v96 = *(v148 + 8);
  v97 = v60 - 1;
  if ((v60 - 1) >= 2u)
  {
    v97 = v60 - 1;
    v98 = &v96[16 * (v60 - 1)];
    while (*v98 == 1 || !*v98 && v98[5] == 0x4000)
    {
      --v97;
      v98 -= 16;
      if ((v97 & 0xFFFE) == 0)
      {
        v97 = 1;
        break;
      }
    }
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] end marker is pMrk[%d] (iMEnd=%d)", v97, v60);
  v99 = HIWORD(v147);
  if (HIWORD(v147))
  {
    v100 = v96;
    do
    {
      v101 = *v100;
      v100 += 16;
      if (!v101)
      {
        ++*a11;
      }

      --v99;
    }

    while (v99);
  }

  v102 = v96[6];
  v103 = v94 - v102;
  v104 = *(v152 + 2) * v147;
  v105 = v96[8] - v102 + v96[16 * v97 + 6] + v96[16 * v97 + 7] + v104 - (v96[16 * v97 + 8] + v96[16 * v97 + 9]);
  if (v94 - v102 < 0 && v105 < 0)
  {
    v23 = *(v153 + 32);
    v24 = 1902;
    goto LABEL_8;
  }

  v106 = v94 != v102 && v105 < 0;
  if (!v106)
  {
    v103 = v96[8] - v102 + v96[16 * v97 + 6] + v96[16 * v97 + 7] + v104 - (v96[16 * v97 + 8] + v96[16 * v97 + 9]);
  }

  v96[7] = v103;
  v96[9] = v104;
  LOWORD(v147) = 0;
  v107 = v148;
  v108 = *(v148 + 16);
  if (v108)
  {
    v109 = 0;
    v110 = v96 + 5;
    while (1)
    {
      v111 = v110 - 5;
      if (*v110 == 3)
      {
        if (!v110[5] || v110[3] - v96[8] < v96[9])
        {
LABEL_149:
          v112 = v147;
          v113 = &v96[16 * v147];
          v114 = *(v110 + 3);
          v115 = *(v110 + 7);
          v116 = *(v110 - 1);
          *v113 = *v111;
          *(v113 + 1) = v116;
          *(v113 + 2) = v114;
          *(v113 + 3) = v115;
          v117 = v113[5];
          if (v117 == 3 && !v113[10] || *v110 == 3 && v110[3] - v96[8] < v96[9])
          {
            v113[5] = 999;
            v113[10] = 0;
          }

          else if (v117 == 3)
          {
            v113[5] = 2;
          }

          LOWORD(v147) = v112 + 1;
        }
      }

      else if ((*v110 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_149;
      }

      if (v110[3] <= v96[8] && *v110 != 0x4000 && !*v111)
      {
        v118 = *a8 + v110[2];
        *a8 = v118;
        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] [2] add pMrk[%d].lenRef (tag=%d) to posRefOffset(%d) %d,%d %d,%d", v109, *v110, v118, v110[1], v110[2], v110[3], v110[4]);
      }

      ++v109;
      v107 = v148;
      v110 += 16;
      if (v109 >= *(v148 + 16))
      {
        v108 = v147;
        v95 = v140;
        break;
      }
    }
  }

  *(v107 + 16) = v108;
  v22 = sparser_TrimBlankHead(a1, a2, a8, v95, &v146, a9, a10);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v22 = datac_RequestBlock(a2, 1021, 1u, &v148);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  v119 = *(v148 + 8);
  v120 = *(v119 + 24);
  v121 = *(v119 + 28);
  v22 = datac_RequestBlock(a2, 1011, 1u, &v151);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  if (!v135)
  {
    return 0;
  }

  v122 = v151;
  v123 = *(v151 + 8);
  v123[6] = v121 + v120;
  v124 = *(v122 + 16);
  if (v124 < 2)
  {
    return 0;
  }

  v125 = v123[8];
  v126 = v123 + 24;
  v127 = v124 - 1;
  do
  {
    if (*v126 == v125)
    {
      v128 = *(v126 - 3);
      v106 = v128 > 0x24;
      v129 = (1 << v128) & 0x1080200080;
      if (!v106 && v129 != 0)
      {
        *(v126 - 2) = v121 + v120;
      }
    }

    v12 = 0;
    v126 += 16;
    --v127;
  }

  while (v127);
  return v12;
}

uint64_t sparser_GetCharacterLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, _WORD *a6)
{
  if (*a5 >= *(a2 + 16))
  {
    LOWORD(v12) = *(a3 + 16);
  }

  else
  {
    v10 = *(a3 + 8);
    v11 = *a5 + utf8_determineUTF8CharLength(*(*(a2 + 8) + *a5));
    *a5 = v11;
    v12 = *a6;
    v13 = *(a3 + 16);
    if (v12 < v13)
    {
      v14 = *(v10 + 32) + *(a2 + 2) * v11;
      v15 = (v10 + 32 + (v12 << 6));
      while (1)
      {
        v16 = *v15;
        v15 += 16;
        if (v16 >= v14)
        {
          break;
        }

        if (v13 == ++v12)
        {
          LOWORD(v12) = *(a3 + 16);
          break;
        }
      }
    }
  }

  *a6 = v12;
  return 0;
}

uint64_t sparser_GetWordLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, unsigned __int16 *a6)
{
  v11 = *(a3 + 8);
  v34 = 0;
  v12 = *a5;
  chars_ScanNonBlanks(*(a2 + 8), a5, *(a2 + 16));
  sparser_getMaxCharsPerText(a1, &v34);
  v13 = Utf8_LengthInUtf8chars(*(a2 + 8), *a5);
  v14 = v34;
  if (v34 >= v13)
  {
    v16 = *a5;
  }

  else
  {
    log_OutPublic(*(a1 + 32), &modPP_1, 1814, 0);
    *a5 = v14;
    v33 = v14;
    utf8_GetPreviousValidUtf8Offset(*(a2 + 8), &v33);
    if (v33)
    {
      --v33;
    }

    utf8_GetPreviousValidUtf8Offset(*(a2 + 8), &v33);
    v15 = v33;
    *a5 = v33;
    v16 = utf8_determineUTF8CharLength(*(*(a2 + 8) + v15));
    *a5 = v16;
    if (*(a2 + 16) > v16 && v14 >= 2)
    {
      v18 = 1;
      do
      {
        v16 = *a5 + utf8_determineUTF8CharLength(*(*(a2 + 8) + v16));
        *a5 = v16;
        ++v18;
      }

      while (*(a2 + 16) > v16 && v18 < v14);
    }
  }

  v20 = *(a3 + 16);
  if (v12 == v16)
  {
LABEL_18:
    v21 = v20;
  }

  else
  {
    if (*(a3 + 16))
    {
      v22 = 0;
      v23 = 0;
      v21 = 0;
      v24 = (v11 + 40);
      do
      {
        if (v23 || *(v24 - 2) - *(v11 + 32) >= v16)
        {
          break;
        }

        if (*(v24 - 5) == 7)
        {
          v23 = *v24 == 43;
          if (*v24 == 43)
          {
            v21 = v22;
          }
        }

        else
        {
          v23 = 0;
        }

        ++v22;
        v24 += 16;
      }

      while (v20 != v22);
      if (v23)
      {
        v25 = v11 + (v21 << 6);
        v26 = *(v11 + 32);
        if (*(v25 + 32) != v26 || *(v25 + 20) != 7)
        {
          *a5 = *(v25 + 32) - v26;
          goto LABEL_42;
        }

        while (1)
        {
          v27 = v21++;
          if (v20 <= v21)
          {
            break;
          }

          v28 = v11 + (v21 << 6);
          if (*(v28 + 20) == 7)
          {
            *a5 = *(v28 + 32) - v26;
            *a6 = v27 + 2;
            LODWORD(v20) = *(a3 + 16);
            break;
          }
        }
      }
    }

    v29 = *a6;
    v21 = *a6;
    if (v29 < v20)
    {
      v30 = (v11 + 32 + (v29 << 6));
      while (1)
      {
        v31 = *v30;
        v30 += 16;
        if (v31 >= *(v11 + 32) + *(a2 + 2) * *a5)
        {
          break;
        }

        if (v20 == ++v29)
        {
          goto LABEL_18;
        }
      }

      v21 = v29;
    }
  }

LABEL_42:
  *a6 = v21;
  return 0;
}

uint64_t sparser_GetLineLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, _WORD *a6)
{
  v12 = *(a3 + 8);
  v34 = 0;
  v13 = *a5;
  chars_ScanForLineEnd(*(a2 + 8), a5, *(a2 + 16));
  sparser_getMaxCharsPerText(a1, &v34);
  v14 = Utf8_LengthInUtf8chars(*(a2 + 8), *a5);
  v15 = v34;
  if (v34 < v14)
  {
    v32 = a6;
    *a5 = v34;
    v16 = v15;
    if (v15 == *(a2 + 16))
    {
      *a5 = v15 - 1;
      v16 = (v15 - 1);
    }

    v33 = v16;
    utf8_GetPreviousValidUtf8Offset(*(a2 + 8), &v33);
    v17 = v33;
    *a5 = v33;
    v18 = Utf8_LengthInUtf8chars(*(a2 + 8), v17);
    v19 = *a5;
    if (v19 < *(a2 + 16))
    {
      for (i = v18; v15 > i; ++i)
      {
        LOWORD(v19) = *a5 + utf8_determineUTF8CharLength(*(*(a2 + 8) + v19));
        *a5 = v19;
        if (*(a2 + 16) <= v19)
        {
          break;
        }
      }
    }

    chars_BackScanToBlank(*(a2 + 8), a5);
    v21 = *a5;
    if (!*a5)
    {
      *a5 = v19;
      v21 = v19;
    }

    a6 = v32;
    if (*(a3 + 16))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = (v12 + 40);
      do
      {
        if (*(v25 - 2) - *(v12 + 32) > v21)
        {
          break;
        }

        if (*(v25 - 5) == 7)
        {
          v23 = !v23;
          if (*v25 == 43)
          {
            v24 = v22;
          }

          else
          {
            v23 = 0;
          }
        }

        ++v22;
        v25 += 16;
      }

      while (*(a3 + 16) != v22);
      if (v23)
      {
        *a5 = *(v12 + (v24 << 6) + 32) - *(v12 + 32);
      }
    }

    log_OutPublic(*(a1 + 32), &modPP_1, 1815, 0, v32);
  }

  if (v13 == *a5)
  {
    LOWORD(v26) = *(a3 + 16);
  }

  else
  {
    v26 = *a6;
    if (v26 < *(a3 + 16))
    {
      v27 = (v12 + (v26 << 6));
      do
      {
        v28 = v27[8];
        v29 = *(v12 + 32);
        v30 = *(a2 + 2) * *a5;
        if (v28 >= v30 + v29)
        {
          break;
        }

        if (v30 >= (v28 - v29) && sparser_marker_IsSentenceBoundary(v27, (*(a4 + 8) + v27[10])) && ((v27[5] & 0xFFFFFFFE) != 2 || v27[10] != 1) && v27[8] != *(v12 + 32))
        {
          *a5 = (*(v27 + 16) - *(v12 + 32)) / *(a2 + 2);
          break;
        }

        ++v26;
        v27 += 16;
      }

      while (v26 < *(a3 + 16));
    }
  }

  *a6 = v26;
  return 0;
}

uint64_t sparser_GetSentenceLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, _WORD *a6)
{
  v11 = *(a3 + 8);
  v12 = *a6;
  v13 = *(a3 + 16);
  if (v12 < v13)
  {
    v14 = v11 + (v12 << 6);
    do
    {
      if (*(a2 + 2) * *a5 < (*(v14 + 32) - *(v11 + 32)))
      {
        IsSentenceBoundary = sparser_marker_IsSentenceBoundary(v14, (*(a4 + 8) + *(v14 + 40)));
        v13 = *(a3 + 16);
        if (IsSentenceBoundary)
        {
          break;
        }
      }

      ++v12;
      v14 += 64;
    }

    while (v12 < v13);
    LODWORD(v12) = v12;
  }

  if (v12 < v13)
  {
    v12 = v12;
    v16 = v11 + (v12 << 6);
    do
    {
      if (*(a2 + 2) * *a5 < (*(v16 + 32) - *(v11 + 32)))
      {
        if (sparser_marker_IsSentenceBoundary(v16, (*(a4 + 8) + *(v16 + 40))))
        {
          IsSuppressedSentenceBoundary = sparser_IsSuppressedSentenceBoundary(a3, a2, *(v16 + 32) - *(v11 + 32));
          v13 = *(a3 + 16);
          if (!IsSuppressedSentenceBoundary)
          {
            break;
          }
        }

        else
        {
          v13 = *(a3 + 16);
        }
      }

      ++v12;
      v16 += 64;
    }

    while (v12 < v13);
    LODWORD(v12) = v12;
  }

  if (v12 >= v13)
  {
    v18 = *(a2 + 16);
  }

  else
  {
    v18 = (*(v11 + (v12 << 6) + 32) - *(v11 + 32)) / *(a2 + 2);
  }

  *a5 = v18;
  *a6 = v12;
  return 0;
}

uint64_t sparser_SetArgAsParamStr(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = 2369789959;
  v12 = 0;
  v13 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v13) & 0x80000000) == 0 && (datac_RequestBlock(a2, 1012, 1u, &v12) & 0x80000000) == 0)
  {
    v8 = cstdlib_strlen((*(v12 + 8) + *(a3 + 40)));
    v9 = heap_Calloc(*(v13 + 8), 1, v8 + 1);
    if (v9)
    {
      v10 = v9;
      cstdlib_strncpy(v9, (*(v12 + 8) + *(a3 + 40)), v8);
      v10[v8] = 0;
      v7 = paramc_ParamSetStr(*(v13 + 40), a4, v10);
      if ((v7 & 0x80000000) == 0)
      {
        log_OutText(*(v13 + 32), &modPP_1, 4, 0, "[SPARSER] SET PARAM marker:%d param=%s val=%s", *(a3 + 20), a4, v10);
      }

      heap_Free(*(v13 + 8), v10);
    }

    else
    {
      return 2369789962;
    }
  }

  return v7;
}

unint64_t sparser_marker_GetArgOfLastOfType(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v5 = a1 + (a2 << 6);
  v6 = *(v5 + 20);
  result = *(v5 + 40);
  if (v6 == 7)
  {
    v8 = result == 43;
    if (a3 > (a2 + 1))
    {
      v9 = result == 43;
      v10 = (a1 + ((a2 + 1) << 6) + 20);
      v11 = (a2 + 1) + 1;
      do
      {
        if (*v10 == 7)
        {
          v12 = v10[5];
          v13 = !v9;
          if (v9)
          {
            v14 = result & 0xFFFFFFFF00000000 | 0xF;
          }

          else
          {
            v14 = result;
          }

          v15 = v13;
          if (v12 == 43)
          {
            result = v14;
          }

          else
          {
            result = result & 0xFFFFFFFF00000000 | v12;
          }

          if (v12 == 43)
          {
            v9 = v15;
          }

          else
          {
            v9 = 0;
          }

          if (a4 == 1)
          {
            *v10 = 999;
          }
        }

        v10 += 16;
        v13 = a3 == v11++;
      }

      while (!v13);
      v8 = v9;
    }

    if (v8)
    {
      return result & 0xFFFFFFFF00000000 | 0xF;
    }
  }

  else if (a3 > (a2 + 1))
  {
    v16 = (a2 + 1);
    v17 = a1 + (v16 << 6) + 20;
    v18 = v16 + 1;
    do
    {
      if (*v17 == v6)
      {
        result = *(v17 + 20);
        if (a4 == 1)
        {
          *v17 = 999;
        }
      }

      v17 += 64;
      v13 = a3 == v18++;
    }

    while (!v13);
  }

  return result;
}

BOOL sparser_marker_IsReadOutControlDefaultArg(int a1, unsigned int a2, uint64_t a3, int a4)
{
  result = 0;
  if (a1 > 30)
  {
    if (a1 != 31)
    {
      if (a1 != 36)
      {
        return result;
      }

      goto LABEL_7;
    }

    return a2 == a4;
  }

  else
  {
    if (a1 != 7)
    {
      if (a1 != 21)
      {
        return result;
      }

LABEL_7:
      v10 = v4;
      v11 = v5;
      strcpy(__s2, "normal");
      return a3 && cstdlib_strcmp((a3 + a2), __s2) == 0;
    }

    return a2 == 15;
  }
}

uint64_t sparser_TrimBlankHead(uint64_t a1, uint64_t a2, _DWORD *a3, _WORD *a4, _WORD *a5, int *a6, _DWORD *a7)
{
  v9 = a5;
  v103 = 0;
  v104 = 0;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0;
  v98 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  a7[5] = 0;
  result = datac_RequestBlock(a2, 1020, 1u, &v104);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = datac_RequestBlock(a2, 1021, 1u, &v103);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = chars_ScanBlankHead(v104, &v98 + 1, v103, &v98, &v97, 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = datac_RequestBlock(a2, 1021, 1u, &v103);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v15 = *(v103 + 8);
  log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] got %d (byte) blanks, but do they bisect markers?", *(v104 + 2) * HIWORD(v98));
  if (v97)
  {
    v16 = 1;
  }

  else
  {
    v96 = a1;
    v17 = 0;
    v18 = v15 + 24;
    v19 = v15[8];
    v20 = v15 + 8;
    v21 = v15 + 21;
    v22 = v103;
    LODWORD(v23) = 1;
    do
    {
      v24 = *(v22 + 16);
      if (v24 <= v17)
      {
        break;
      }

      v25 = v17 + 2;
      v26 = &v18[16 * v17];
      while (1)
      {
        v27 = v17;
        v28 = &v15[16 * v17];
        v29 = v28[5];
        v30 = v29 > 0x24 || ((1 << v29) & 0x1080300080) == 0;
        if (!v30 && !*v28)
        {
          v31 = v28[8];
          v32 = v15[8];
          v33 = *(v104 + 2);
          v34 = v33 * HIWORD(v98) + v32;
          if (v31 < v34)
          {
            break;
          }
        }

        ++v17;
        ++v25;
        v26 += 16;
        if (v24 <= v17)
        {
          goto LABEL_57;
        }
      }

      if (v24 <= (v17 + 1))
      {
        v94 = v17;
      }

      else
      {
        LOWORD(v27) = v17;
        do
        {
          v35 = *(v26 - 3);
          if (v35 <= 0x24 && ((1 << v35) & 0x1080300080) != 0)
          {
            v37 = v35 == v29 && *(v26 - 8) == 0;
            if (v37 && *v26 < v34)
            {
              LOWORD(v27) = v25 - 1;
            }
          }

          v30 = v24 == v25++;
          v26 += 16;
        }

        while (!v30);
        v94 = v27;
        v27 = v27;
        v31 = v15[16 * v27 + 8];
      }

      if (v31 < v32 || (v31 - v32) / v33 >= HIWORD(v98))
      {
        if (v28[6] - v15[6] == v33 * HIWORD(v98))
        {
          v93 = v18;
          v91 = v19;
          v87 = v21;
          v89 = v20;
          log_OutText(*(*(v96 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] reset to reference region at marker %d", v17);
          v21 = v87;
          v20 = v89;
          v19 = v91;
          v18 = v93;
          LODWORD(v23) = 0;
          v45 = *(v104 + 2) * HIWORD(v98);
          v46 = v15[7] - v45;
          v15[6] += v45;
          v15[7] = v46;
          LOWORD(v98) = v17;
          v22 = v103;
        }
      }

      else
      {
        v86 = v21;
        v88 = v20;
        v90 = v19;
        v85 = v9;
        v95 = &v15[16 * v27];
        LOWORD(v98) = v94;
        v92 = v18;
        cstdlib_memcpy(a7, v95, 0x40uLL);
        log_OutText(*(*(v96 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] hard reference reset at marker %d", v94);
        log_OutText(*(*(v96 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] reset to reference region at marker %d", v94);
        v38 = v95[6] - v15[6];
        *a6 = v38;
        log_OutText(*(*(v96 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set refReset(%d) due to readout control marker %d", v38, v94);
        v39 = v95[6];
        v40 = v15[7] - v39 + v15[6];
        v15[6] = v39;
        v15[7] = v40;
        v41 = v95[7] + (HIWORD(v98) - (v95[8] - v15[8]) / *(v104 + 2)) * *(v104 + 2);
        *a3 = v41;
        log_OutText(*(*(v96 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set posRefOffset(%d) due to readout control marker %d", v41, v94);
        v22 = v103;
        if (*(v103 + 16) <= (v94 + 1))
        {
          v18 = v92;
          v19 = v90;
          v21 = v86;
          v20 = v88;
        }

        else
        {
          v42 = (v94 + 1);
          v21 = v86;
          v20 = v88;
          v43 = &v88[16 * v42];
          v18 = v92;
          v19 = v90;
          do
          {
            if ((*(v43 - 3) == 999 || !*(v43 - 8)) && *v43 <= v19 + *(v104 + 2) * HIWORD(v98) && *(v43 - 2) >= v95[6])
            {
              v44 = *a3 + *(v43 - 1);
              *a3 = v44;
              log_OutText(*(*(v96 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] set posRefOffset(%d) due to marker %d", v44, v42);
              v21 = v86;
              v20 = v88;
              v19 = v90;
              v18 = v92;
              v22 = v103;
            }

            ++v42;
            v43 += 16;
          }

          while (v42 < *(v22 + 16));
        }

        if (v94 < 2u)
        {
          LODWORD(v23) = 0;
          v9 = v85;
        }

        else
        {
          v23 = v27 - 1;
          v47 = v21;
          v9 = v85;
          do
          {
            if (*v47 == 999)
            {
              *v47 = 0x4000;
            }

            v47 += 16;
            --v23;
          }

          while (v23);
        }
      }

      v17 = *(v22 + 16) + 1;
    }

    while (!v97);
LABEL_57:
    v16 = v23 == 1;
    a1 = v96;
  }

  v48 = HIWORD(v98);
  if (!HIWORD(v98) && !a7[5])
  {
    return 0;
  }

  v49 = v104;
  v50 = *(v104 + 16) - HIWORD(v98);
  *(v104 + 16) = v50;
  cstdlib_memmove(*(v49 + 8), (*(v49 + 8) + v48), *(v49 + 2) * v50);
  result = datac_RequestBlock(a2, 1021, (*(v103 + 16) + 1), &v103);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v51 = a1;
  v52 = v103;
  v53 = *(v103 + 8);
  v54 = v98;
  if (v98 == 1)
  {
    v55 = v53[1];
    v99 = *v53;
    v100 = v55;
    v56 = v53[3];
    v101 = v53[2];
    v102 = v56;
    *(v53 + 7) = 0;
    *(v53 + 9) = 0;
  }

  v57 = *(v53 + 8);
  v58 = *(v53 + 6);
  v59 = v57 - v58 + *(&v53[4 * v54 - 2] - 2) + *(&v53[4 * v54 - 2] - 1) + *(v104 + 2) * HIWORD(v98) - (LODWORD(v53[4 * v54 - 2]) + *(&v53[4 * v54 - 1] - 3));
  if (v54 == 1)
  {
    v60 = v100;
    *v53 = v99;
    v53[1] = v60;
    v61 = v102;
    v53[2] = v101;
    v53[3] = v61;
  }

  v62 = *(v52 + 16);
  if (v62 < 2)
  {
    LOWORD(i) = 1;
  }

  else
  {
    v63 = v53 + 25;
    for (i = 1; i < v62; ++i)
    {
      if (v57 != *(v63 - 1))
      {
        break;
      }

      if (*v63)
      {
        break;
      }

      if (v58 != *(v63 - 3))
      {
        break;
      }

      if (v59 <= *(v63 - 2))
      {
        break;
      }

      v63 += 16;
    }
  }

  LOWORD(v98) = i;
  cstdlib_memmove(&v53[4 * i + 4], &v53[4 * i], (v62 - i) << 6);
  v65 = &v53[4 * v98];
  *(v65 + 1) = 0;
  *(v65 + 2) = 0x400000000000;
  *v65 = 0;
  *(v65 + 6) = v58;
  *(v65 + 7) = v59;
  *(v65 + 8) = v57;
  *(v65 + 36) = 0;
  *(v65 + 52) = 0;
  *(v65 + 44) = 0;
  *(v65 + 15) = 0;
  v66 = v103;
  v67 = v104;
  ++*(v103 + 16);
  v68 = HIWORD(v98);
  *a4 = *(v67 + 2) * HIWORD(v98);
  if (v16)
  {
    log_OutText(*(*(v51 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] add blanks (%d) to posRefOffset(%d)", *(v67 + 2) * v68, *a3);
    v68 = HIWORD(v98);
    v67 = v104;
    *a3 += *(v104 + 2) * HIWORD(v98);
    v66 = v103;
  }

  if (a7[5])
  {
    v69 = *(v66 + 16);
  }

  else
  {
    LOWORD(v98) = 1;
    if (*(v66 + 16) < 2u)
    {
      goto LABEL_94;
    }

    v70 = 1;
    do
    {
      v71 = &v53[4 * v70];
      v72 = *(v71 + 8);
      v73 = *(v53 + 8);
      if (v72 > v73 && v72 <= v73 + *(v104 + 2) * HIWORD(v98))
      {
        v74 = *(v71 + 5);
        if (v74 != 0x4000 && !*v71)
        {
          log_OutText(*(*(v51 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] adjust posRefOffset(%d) by %d for leading esc sequences (marker tag=%d %d,%d,%d,%d)", *a3, *(v71 + 7), v74, *(v71 + 6), *(v71 + 7), v72, *(v71 + 9));
          v70 = v98;
          v75 = &v53[4 * v98];
          *a3 += *(v75 + 7);
          *v9 += *(v75 + 14);
          v66 = v103;
        }
      }

      LOWORD(v98) = ++v70;
      v69 = *(v66 + 16);
    }

    while (v69 > v70);
    v68 = HIWORD(v98);
    v67 = v104;
  }

  if (v69 > 1)
  {
    v76 = *(v67 + 2) * v68;
    v77 = v69;
    v78 = *(v53 + 8);
    v79 = v53 + 6;
    v80 = v77 - 1;
    do
    {
      if (*v79 >= v76 + v78)
      {
        v81 = *v79 - v76;
      }

      else
      {
        v81 = v78;
      }

      *v79 = v81;
      v79 += 16;
      --v80;
    }

    while (v80);
    goto LABEL_95;
  }

LABEL_94:
  v76 = *(v67 + 2) * v68;
LABEL_95:
  result = 0;
  v82 = *(v53 + 9);
  v83 = v82 >= v76;
  v84 = v82 - v76;
  if (!v83)
  {
    v84 = 0;
  }

  *(v53 + 9) = v84;
  return result;
}

uint64_t sparser_SetReadoutMarkersAsParameters(uint64_t a1, uint64_t a2)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = 2369789959;
  v31 = 0;
  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v32) & 0x80000000) != 0 || (datac_RequestBlock(a2, 1012, 1u, &v31) & 0x80000000) != 0)
  {
    return v4;
  }

  v30 = *(v31 + 8);
  v5 = datac_RequestBlock(a2, 1021, 1u, &v31);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  v6 = v31;
  LODWORD(v7) = *(v31 + 16);
  if (v7 < 2)
  {
LABEL_32:
    v27 = 0;
    v4 = v5;
    for (i = &off_279DADB98; ; i += 2)
    {
      if (!*(v33 + v27))
      {
        v19 = paramc_ParamRemove(*(v32 + 40), *i);
        v4 = 0;
        if ((v19 & 0x80000000) != 0 && (v19 & 0x1FFF) != 0x14)
        {
          break;
        }
      }

      v27 += 4;
      if (v27 == 16)
      {
        return v4;
      }
    }

    return v19;
  }

  v8 = *(v31 + 8);
  v9 = 1;
  while (1)
  {
    v10 = v8 + (v9 << 6);
    v13 = *(v10 + 20);
    v12 = (v10 + 20);
    v11 = v13;
    v14 = (1 << v13) & 0x1080200080;
    if (v13 > 0x24 || v14 == 0)
    {
      goto LABEL_31;
    }

    v16 = 0;
    v17 = &off_279DADB98;
    while (*(v17 - 2) != v11)
    {
      v16 += 4;
      v17 += 2;
      if (v16 == 16)
      {
        goto LABEL_31;
      }
    }

    if (*(v33 + v16))
    {
      goto LABEL_31;
    }

    ArgOfLastOfType = sparser_marker_GetArgOfLastOfType(v8, v9, v7, 0);
    if (sparser_marker_IsReadOutControlDefaultArg(*v12, ArgOfLastOfType, v30, *(a1 + 180)))
    {
      v19 = paramc_ParamRemove(*(v32 + 40), *v17);
      v5 = 0;
      if ((v19 & 0x80000000) != 0 && (v19 & 0x1FFF) != 0x14)
      {
        return v19;
      }

      goto LABEL_30;
    }

    v20 = *v12;
    if (*v12 <= 30)
    {
      break;
    }

    if (v20 == 36)
    {
      goto LABEL_27;
    }

    if (v20 == 31)
    {
LABEL_25:
      v21 = *v17;
      v5 = paramc_ParamSetUInt(*(v32 + 40), *v17, ArgOfLastOfType);
      if ((v5 & 0x80000000) != 0)
      {
        return v5;
      }

      log_OutText(*(v32 + 32), &modPP_1, 4, 0, "[SPARSER] SET PARAM marker:%d param=%s val=%u", v11, v21, ArgOfLastOfType);
    }

LABEL_30:
    *(v33 + v16) = 1;
    v6 = v31;
LABEL_31:
    ++v9;
    v7 = *(v6 + 16);
    if (v9 >= v7)
    {
      goto LABEL_32;
    }
  }

  if (v20 == 7)
  {
    goto LABEL_25;
  }

  if (v20 != 21)
  {
    goto LABEL_30;
  }

LABEL_27:
  v22 = (v30 + ArgOfLastOfType);
  v23 = cstdlib_strlen(v22);
  v24 = heap_Calloc(*(v32 + 8), 1, v23 + 1);
  if (!v24)
  {
    return 2369789962;
  }

  v25 = v24;
  cstdlib_strncpy(v24, v22, v23);
  v25[v23] = 0;
  v26 = *v17;
  v5 = paramc_ParamSetStr(*(v32 + 40), *v17, v25);
  if ((v5 & 0x80000000) == 0)
  {
    log_OutText(*(v32 + 32), &modPP_1, 4, 0, "[SPARSER] SET PARAM marker:%d param=%s val=%s", v11, v26, v25);
    heap_Free(*(v32 + 8), v25);
    goto LABEL_30;
  }

  heap_Free(*(v32 + 8), v25);
  return v5;
}

uint64_t sparser_ProcessStart(uint64_t a1, int a2)
{
  v7 = 0;
  v6 = 0;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v7) & 0x80000000) != 0)
  {
    return 2369789959;
  }

  *(a1 + 168) = 0;
  *(a1 + 180) = a2;
  *(a1 + 184) = 200;
  UInt = paramc_ParamGetUInt(*(v7 + 40), "ppmaxmarkersinemptytext", &v6);
  result = 0;
  if ((UInt & 0x1FFF) != 0x14)
  {
    if ((UInt & 0x80000000) == 0)
    {
      if (v6 - 1 > 0xFFFD)
      {
        log_OutPublic(*(v7 + 32), &modPP_1, 1820, 0);
      }

      else
      {
        *(a1 + 184) = v6;
      }
    }

    return UInt;
  }

  return result;
}

uint64_t sparser_NoteBlockRead(_DWORD *a1)
{
  v1 = a1[43];
  if (v1 < a1[42] && v1 > a1[44])
  {
    a1[42] = v1;
    a1[44] = v1;
  }

  return 0;
}

uint64_t sparser_bed_MapPosCur(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v15 = 0;
  if (!a3)
  {
    return 2369789959;
  }

  v14 = 0;
  *a3 = a2;
  LODWORD(result) = bed_GetpElem(a1, 0, &v15);
  if ((result & 0x80000000) != 0)
  {
    if ((result & 0x1FFF) == 0xF)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  else
  {
    result = bed_GetcElem(a1, &v14);
    if ((result & 0x80000000) == 0)
    {
      if (!v14)
      {
        return 0;
      }

      v7 = 0;
      v8 = 0;
      do
      {
        v9 = (v15 + (v7 << 6));
        v10 = v9[8];
        if (v10 > a2)
        {
          break;
        }

        v11 = *v9 == 1 && v7 == 0;
        if (v11 || *v9 == 0)
        {
          v13 = v9[9] + v10;
          if (v13 <= a2 && (!v8 || v8[9] + v8[8] <= v13))
          {
            v8 = (v15 + (v7 << 6));
          }
        }

        ++v7;
      }

      while (v7 < v14);
      if (v8)
      {
        result = 0;
        *a3 += v8[7] + v8[6] - (v8[8] + v8[9]);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL sparser_marker_HasGreaterEqualPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 32) <= *(a2 + 32);
    }
  }

  return result;
}

BOOL sparser_marker_HasStrictlyGreaterPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 32) < *(a2 + 32);
    }
  }

  return result;
}

uint64_t sparser_marker_IsSentenceBoundary(uint64_t result, char *__s1)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 20);
    if (((v3 & 0xFFFFFFFE) != 2 || *(result + 40) != 1) && v3 != 12 && v3 != 20)
    {
      if (v3 != 36)
      {
        return v3 == 200;
      }

      if (cstdlib_strcmp(__s1, "vceunkn"))
      {
        v3 = *(v2 + 20);
        return v3 == 200;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sparser_IsSuppressedSentenceBoundary(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = 0;
  if (a1 && a2)
  {
    v6 = *(a1 + 8);
    v7 = *(a2 + 2);
    v13 = a3;
    chars_BackScanNChars(*(a2 + 8), &v13, 1);
    chars_BackScanBlanksX(*(a2 + 8), &v13, (*(a2 + 16) * v7));
    chars_ScanNChars(*(a2 + 8), (*(a2 + 16) * v7), &v13, 1);
    v12 = v13;
    chars_ScanBlanks(*(a2 + 8), &v12, (*(a2 + 16) * v7));
    v8 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v9 = (v6 + 40);
      do
      {
        v10 = (*(v9 - 2) - *(v6 + 32));
        if (v10 > (v12 * v7))
        {
          break;
        }

        if (*(v9 - 5) == 3 && !*v9 && v10 >= (v13 * v7))
        {
          return 1;
        }

        v9 += 16;
        --v8;
      }

      while (v8);
    }

    return 0;
  }

  return result;
}

BOOL sparser_marker_IsOfSameType(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 20) == *(a2 + 20);
    }
  }

  return result;
}

uint64_t sparser_MatchSb(uint64_t a1, int a2, int a3, uint64_t a4, int a5, __int16 a6, __int16 a7, uint64_t a8, unsigned __int16 a9)
{
  v90 = *MEMORY[0x277D85DE8];
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  __b = 0u;
  v78 = 0u;
  cstdlib_memset(&__b, 0, 0x40uLL);
  LODWORD(__b) = 1;
  *(&__b + 1) = 0;
  LOWORD(v78) = 0;
  DWORD1(v78) = 2;
  *&v80 = 0;
  DWORD2(v80) = 0;
  *(&v78 + 1) = 0;
  *&v79 = 0;
  DWORD2(v79) = 1;
  v14 = 136;
  if (!a2)
  {
    v14 = 120;
  }

  v15 = 144;
  if (!a2)
  {
    v15 = 128;
  }

  v16 = *(a1 + v15);
  v73 = *(a1 + v14);
  v76 = *(a4 + 8);
  v62 = a4;
  v17 = *(a4 + 2);
  v69 = a8;
  v70 = bed_GetpBlock(a8, &v81);
  if ((v70 & 0x80000000) == 0 && v16)
  {
    v18 = 0;
    v19 = v17 * a7;
    if (a2)
    {
      v20 = "using ENDLIST";
    }

    else
    {
      v20 = "using LIST";
    }

    v68 = v20;
    v72 = v16;
    do
    {
      v70 = bed_Goto(v69, a9);
      if ((v70 & 0x80000000) != 0)
      {
        return v70;
      }

      v75 = *(a1 + 112);
      v74 = *(*(a1 + 104) + 8 * *(v73 + 2 * v18));
      v21 = a5;
      LOWORD(v22) = *(v62 + 2) * a6;
      v23 = a3;
      while (v22 < v19 && (nuance_pcre_exec(*(a1 + 24), *(a1 + 32), v75 + v74, 0, v76, v19, v22, 0, v86, 30) & 0x80000000) == 0)
      {
        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] regex %d matched at pos %u (iSb=%d) %s %d : (of %d)", *(v73 + 2 * v18), v22, *(*(a1 + 104) + 8 * *(v73 + 2 * v18) + 4), v20, v18, v16);
        v24 = *(*(a1 + 104) + 8 * *(v73 + 2 * v18) + 4);
        if (v24 > 0xFD)
        {
          v28 = 0;
          if (v24 == 255)
          {
            v29 = v86[1];
          }

          else
          {
            v29 = v86[0];
          }

          v26 = v29 + v21;
          LODWORD(v79) = v26;
          v27 = 1;
        }

        else
        {
          v25 = v86[2 * v24];
          LOWORD(v26) = v25 + v21;
          LODWORD(v79) = v25 + v21;
          v27 = (2 * v24) | 1u;
          v28 = v86[v27] - v25;
        }

        DWORD1(v79) = v28;
        v22 = v86[v27];
        if (!v76)
        {
          goto LABEL_65;
        }

        v30 = v26 - v21;
        v31 = (v26 - v21);
        if (v31 >= v19)
        {
          goto LABEL_65;
        }

        v71 = v81;
        v84 = v26 - v21;
        if (*(a1 + 40))
        {
          chars_BackScanNChars(v76, &v84, 1);
          v20 = v68;
          chars_BackScanBlanksX(v76, &v84, v19);
          if (v84)
          {
            v85 = 0;
            if (utf8_Utf8CharTo16bit(&v76[v84], &v85))
            {
              if (v85 == 65294 || v85 == 46)
              {
                v83 = v84;
                v32 = *(a1 + 64);
                v33 = *(a1 + 72);
                if (*(a1 + 160) == 1)
                {
                  chars_BackScanNonBlanks(v76, &v83, v32, v33);
                }

                else
                {
                  chars_BackScan2NonBlanksNonChinese(v76, &v83, v32, v33);
                }

                v34 = v84 - v83;
                if (v34 <= 0x3E)
                {
                  v52 = v34 + 1;
                  cstdlib_memcpy(__dst, &v76[v83], v52);
                  __dst[v52] = 0;
                  v66 = v83;
                  v61 = v84;
                  LogLevel = log_GetLogLevel(*(*(a1 + 16) + 32));
                  if (sparser_IsNonFinalAbbr(a1, __dst, v66, (v61 + 1), LogLevel))
                  {
                    v23 = a3;
                    goto LABEL_65;
                  }

                  v67 = v52;
                  v82 = v84 - v83 + 1;
                  chars_BackScanNChars(__dst, &v82, 1);
                  cstdlib_strcpy(v87, "[*]");
                  v23 = a3;
                  if (v82)
                  {
                    do
                    {
                      chars_BackScanNChars(__dst, &v82, 1);
                      v54 = v67 - v82;
                      cstdlib_memcpy(v88, &__dst[v82], v54);
                      v88[v54] = 0;
                      v55 = v83;
                      v56 = v82;
                      v57 = v84;
                      v58 = log_GetLogLevel(*(*(a1 + 16) + 32));
                      IsNonFinalAbbr = sparser_IsNonFinalAbbr(a1, v87, v55 + v56, (v57 + 1), v58);
                    }

                    while (v82 && !IsNonFinalAbbr);
                    v21 = a5;
                    v23 = a3;
                    v20 = v68;
                    if (IsNonFinalAbbr)
                    {
                      goto LABEL_65;
                    }
                  }
                }
              }
            }
          }
        }

        v35 = *(v71 + 8);
        v36 = *(v71 + 16);
        if (!*(v71 + 16))
        {
          LOWORD(v44) = 0;
          goto LABEL_49;
        }

        v37 = 0;
        v38 = 0;
        v39 = (v35 + 32);
        v40 = *(v35 + 32);
        v41 = (v35 + 40);
        v42 = *(v71 + 16);
        do
        {
          if (*(v41 - 2) - v40 > v31)
          {
            break;
          }

          v43 = *(v41 - 5);
          if (v43 == 32)
          {
            v37 = *v41 == 1;
          }

          else if (v43 == 7)
          {
            v38 = !v38;
            if (*v41 != 43)
            {
              v38 = 0;
            }
          }

          v41 += 16;
          --v42;
        }

        while (v42);
        if (!v38 && !v37)
        {
          v44 = 0;
          while (1)
          {
            v45 = *v39;
            v39 += 16;
            if (v45 - v40 >= v31)
            {
              break;
            }

            if (v36 == ++v44)
            {
              goto LABEL_61;
            }
          }

LABEL_49:
          if (v44 <= v36)
          {
            v46 = *(v71 + 16);
          }

          else
          {
            v46 = v44;
          }

          if (v44 < v36)
          {
            v47 = *(v35 + 32);
            v48 = (v35 + (v44 << 6) + 20);
            v49 = v46 - v44;
            while (v48[3] - v47 < (v30 + v28))
            {
              if (*v48 <= 0x28u && ((1 << *v48) & 0x10004000080) != 0)
              {
                goto LABEL_65;
              }

              v48 += 16;
              if (!--v49)
              {
                break;
              }
            }
          }

LABEL_61:
          v51 = sparser_bed_InjectMarker(v69, &__b, 0, *(a1 + 188));
          v70 = 0;
          if ((v51 & 0x80000000) != 0)
          {
            return v51;
          }

          goto LABEL_66;
        }

LABEL_65:
        log_OutText(*(*(a1 + 16) + 32), &modPP_1, 5, 0, "[SPARSER] EOS insertion blocked (may be in Phon/Multiword, or non-final abbreviation preceeds the boundary)");
LABEL_66:
        v16 = v72;
        if (!v23)
        {
          break;
        }
      }

      ++v18;
    }

    while (v18 != v16);
  }

  return v70;
}

BOOL sparser_marker_HasStrictlySmallerPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 32) > *(a2 + 32);
    }
  }

  return result;
}

uint64_t sparser_IsNonFinalAbbr(void *a1, const char *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  strcpy(__dst, "is not");
  v14 = 0;
  if (a5 >= 5)
  {
    log_OutText(*(a1[2] + 32), &modPP_1, 5, 0, "[SPARSER] checking if %s is a Non Final Abbr at pos %lu,%lu", a2, a3, a4);
  }

  v12 = 0;
  v13 = -1;
  if (((*(a1[5] + 96))(a1[6], a1[7], "neosnbs", a2, &v14, &v13, &v12) & 0x80000000) != 0)
  {
    return 0;
  }

  if (v13 == 1)
  {
    cstdlib_strcpy(__dst, "is");
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  if (a5 >= 5)
  {
    log_OutText(*(a1[2] + 32), &modPP_1, 5, 0, "[SPARSER] %s %s a Non Final Abbr at pos %lu,%lu", a2, __dst, a3, a4);
  }

  return v10;
}

uint64_t sparser_getMaxCharsPerText(uint64_t a1, __int16 *a2)
{
  result = *(a1 + 40);
  if (!result || (v6 = 0, result = paramc_ParamGetInt(result, "maxinputlength", &v6), (result & 0x80000000) != 0))
  {
    v5 = 750;
  }

  else
  {
    if (v6 >= 0x2710)
    {
      v4 = 10000;
    }

    else
    {
      v4 = v6;
    }

    if (v6 >= 1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t chars_ScanBlankHead(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD *a4, _DWORD *a5, unsigned int a6)
{
  result = 2369789959;
  if (a2 && a1 && a5 && (a3 || !a4))
  {
    *a5 = 0;
    if (a6 <= 1)
    {
      v13 = *(a1 + 8);
      LODWORD(v14) = *(a1 + 16);
      if (*(a1 + 16))
      {
        for (i = *(a1 + 8); ; i = v13)
        {
          if (!utf8_BelongsToSet(2, i, 0, v14))
          {
            LOWORD(v16) = v13;
            v13 = *(a1 + 8);
            goto LABEL_15;
          }

          v13 += utf8_determineUTF8CharLength(*v13);
          v14 = *(a1 + 16);
          if (&v13[-*(a1 + 8)] >= v14)
          {
            break;
          }
        }

        LOWORD(v16) = v13;
        v13 = *(a1 + 8);
      }

      else
      {
        v16 = *(a1 + 8);
      }

LABEL_15:
      v17 = v16 - v13;
      *a2 = v17;
      if (*(a1 + 16) == v17)
      {
        *a5 = 1;
      }
    }

    result = 0;
    if (a4 && (a6 & 0xFFFFFFFD) == 0)
    {
      *a4 = 0;
      if (*a2 && *(a3 + 16))
      {
        v18 = 0;
        v19 = *(a3 + 8);
        v22 = *(v19 + 32);
        v20 = (v19 + 32);
        v21 = v22;
        while (1)
        {
          v23 = *v20;
          v20 += 16;
          if (v23 >= v21 + *(a1 + 2) * *a2)
          {
            break;
          }

          result = 0;
          *a4 = ++v18;
          if (v18 >= *(a3 + 16))
          {
            return result;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t chars_ScanBlanks(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result)
  {
    if (a2)
    {
      v5 = *a2;
      if (v5 < a3)
      {
        v6 = result;
        do
        {
          result = utf8_BelongsToSet(2, v6, v5, a3);
          if (!result)
          {
            break;
          }

          result = utf8_determineUTF8CharLength(*(v6 + *a2));
          LOWORD(v5) = *a2 + result;
          *a2 = v5;
        }

        while (a3 > v5);
      }
    }
  }

  return result;
}

uint64_t chars_ScanNonBlanks(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result)
  {
    if (a2)
    {
      v5 = *a2;
      if (v5 < a3)
      {
        v6 = result;
        do
        {
          result = utf8_BelongsToSet(2, v6, v5, a3);
          if (result)
          {
            break;
          }

          result = utf8_determineUTF8CharLength(*(v6 + *a2));
          LOWORD(v5) = *a2 + result;
          *a2 = v5;
        }

        while (a3 > v5);
      }
    }
  }

  return result;
}

uint64_t chars_ScanForLineEnd(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result)
  {
    if (a2)
    {
      v3 = *a2;
      if (v3 < a3)
      {
        v4 = (result + v3);
        v5 = a3 - v3;
        v6 = v3 + 1;
        do
        {
          v7 = *v4++;
          if (v7 == 10)
          {
            break;
          }

          *a2 = v6++;
          --v5;
        }

        while (v5);
      }
    }
  }

  return result;
}

uint64_t chars_BackScanBlanks(uint64_t result, _WORD *a2)
{
  if (result && a2)
  {
    v3 = *a2;
    v6 = v3;
    if (v3)
    {
      v4 = result;
      while (1)
      {
        result = utf8_BelongsToSet(2, v4, v3, *a2);
        v5 = v6;
        if (!result)
        {
          break;
        }

        if (v6)
        {
          --v6;
        }

        result = utf8_GetPreviousValidUtf8Offset(v4, &v6);
        v3 = v6;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v5 = 0;
    }

    *a2 = v5;
  }

  return result;
}

uint64_t chars_BackScanBlanksX(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (result && a2)
  {
    v5 = *a2;
    v8 = v5;
    if (v5)
    {
      v6 = result;
      while (1)
      {
        result = utf8_BelongsToSet(2, v6, v5, a3);
        v7 = v8;
        if (!result)
        {
          break;
        }

        --v8;
        result = utf8_GetPreviousValidUtf8Offset(v6, &v8);
        v5 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v7 = 0;
    }

    *a2 = v7;
  }

  return result;
}

uint64_t chars_BackScanToBlank(uint64_t result, _WORD *a2)
{
  if (result && a2)
  {
    v3 = *a2;
    v6 = v3;
    if (v3)
    {
      v4 = result;
      while (1)
      {
        result = utf8_BelongsToSet(2, v4, v3, *a2);
        v5 = v6;
        if (result)
        {
          break;
        }

        if (v6)
        {
          --v6;
        }

        result = utf8_GetPreviousValidUtf8Offset(v4, &v6);
        v3 = v6;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v5 = 0;
    }

    *a2 = v5;
  }

  return result;
}

_BYTE *chars_ScanNChars(_BYTE *result, uint64_t a2, _WORD *a3, int a4)
{
  if (result && a3)
  {
    v5 = a4;
    v7 = *a3;
    if (a4)
    {
      v8 = result;
      do
      {
        result = utf8_GetNextUtf8OffsetLimit(v8, v7, a2);
        v7 = result;
        --v5;
      }

      while (v5);
    }

    *a3 = v7;
  }

  return result;
}

uint64_t chars_BackScanNChars(uint64_t result, _WORD *a2, int a3)
{
  if (result && a2)
  {
    v4 = a3;
    v5 = *a2;
    if (a3 && *a2)
    {
      v6 = result;
      do
      {
        v7 = v5 - 1;
        result = utf8_GetPreviousValidUtf8Offset(v6, &v7);
        --v4;
        v5 = v7;
      }

      while (v4 && v7);
    }

    *a2 = v5;
  }

  return result;
}

uint64_t chars_BackScanNonBlanks(uint64_t result, unsigned int *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (result && a2)
  {
    v6 = *a2;
    v24 = v6;
    if (!v6)
    {
      goto LABEL_24;
    }

    v8 = result;
    v9 = a4;
    while (1)
    {
      result = utf8_BelongsToSet(2, v8, v6, *a2);
      v6 = v24;
      if (result)
      {
LABEL_20:
        v10 = *a2;
        goto LABEL_21;
      }

      if (a4)
      {
        break;
      }

LABEL_19:
      --v24;
      result = utf8_GetPreviousValidUtf8Offset(v8, &v24);
      v6 = v24;
      if (!v24)
      {
        goto LABEL_20;
      }
    }

    v10 = *a2;
    v11 = a3;
    v12 = v9;
    while (1)
    {
      v14 = *v11++;
      v13 = v14;
      v15 = v24 == v10 && v13 == 46;
      v16 = v15;
      if (v13 == *(v8 + v24) && !v16)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    if (v6 >= v10)
    {
      goto LABEL_24;
    }

    v18 = utf8_BelongsToSet(2, v8, v6, v10);
    v6 = v24;
    result = *(v8 + v24);
    if (!v18)
    {
      if (!a4)
      {
        goto LABEL_24;
      }

      while (1)
      {
        v20 = *a3++;
        v19 = v20;
        v21 = v24 == *a2 && v19 == 46;
        v22 = v21;
        if (v19 == result && !v22)
        {
          break;
        }

        if (!--v9)
        {
          goto LABEL_24;
        }
      }
    }

    result = utf8_determineUTF8CharLength(result);
    v6 = v24 + result;
LABEL_24:
    *a2 = v6;
  }

  return result;
}

uint64_t chars_BackScan2NonBlanksNonChinese(uint64_t result, unsigned int *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (result && a2)
  {
    v7 = result;
    v8 = *a2;
    v25 = v8;
    if (v8)
    {
      v9 = v8;
      while (!a4)
      {
LABEL_18:
        result = utf8_BelongsToSet(2, v7, v9, *a2);
        v9 = v25;
        if (!result)
        {
          result = utf8_BelongsToSet(32, v7, v25, *a2);
          v9 = v25;
          if (!result)
          {
            --v25;
            result = utf8_GetPreviousValidUtf8Offset(v7, &v25);
            v9 = v25;
            if (v25)
            {
              continue;
            }
          }
        }

        goto LABEL_23;
      }

      v10 = a3;
      v11 = a4;
      while (1)
      {
        v13 = *v10++;
        v12 = v13;
        v14 = v9 == v8 && v12 == 46;
        v15 = v14;
        if (v12 == *(v7 + v9) && !v15)
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_23:
    if (v9 >= *a2)
    {
      goto LABEL_40;
    }

    v17 = utf8_BelongsToSet(2, v7, v9, *a2);
    v9 = v25;
    if (!v17)
    {
      v18 = *a2;
      if (a4)
      {
        v19 = a4;
        while (1)
        {
          v21 = *a3++;
          v20 = v21;
          v22 = v25 == v18 && v20 == 46;
          v23 = v22;
          if (v20 == *(v7 + v25) && !v23)
          {
            break;
          }

          if (!--v19)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
LABEL_38:
        result = utf8_BelongsToSet(32, v7, v25, v18);
        v9 = v25;
        if (!result)
        {
LABEL_40:
          *a2 = v9;
          return result;
        }
      }
    }

    result = utf8_determineUTF8CharLength(*(v7 + v9));
    v9 = v25 + result;
    goto LABEL_40;
  }

  return result;
}

char *chars_BackScanPhraseBoundary(char *result, uint64_t a2, _WORD *a3)
{
  if (a2 && a3)
  {
    v5 = result;
    v6 = *a3;
    v15 = v6;
    if (!v6)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v7 = utf8_BelongsToSet(2, a2, v6, *a3);
      v8 = v15;
      if (!v7)
      {
        break;
      }

      if (v15)
      {
        --v15;
      }

      utf8_GetPreviousValidUtf8Offset(a2, &v15);
      v6 = v15;
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    if (v15)
    {
      while (1)
      {
        v9 = utf8_BelongsToSet(2, a2, v8, *a3);
        LODWORD(v10) = v15;
        if (v9)
        {
          break;
        }

        v11 = utf8_strchr(v5, (a2 + v15));
        LODWORD(v10) = v15;
        if (v11)
        {
          break;
        }

        if (v15)
        {
          --v15;
        }

        utf8_GetPreviousValidUtf8Offset(a2, &v15);
        v8 = v15;
        if (!v15)
        {
          LODWORD(v10) = 0;
          break;
        }
      }

      v10 = v10;
    }

    else
    {
LABEL_17:
      v10 = 0;
    }

    result = utf8_strchr(v5, (a2 + v10));
    v12 = v15;
    if (!result)
    {
      if (v15)
      {
        v13 = v15;
        do
        {
          v14 = utf8_strchr(v5, (a2 + v13));
          LODWORD(v13) = v15;
          if (v14)
          {
            break;
          }

          if (v15)
          {
            --v15;
          }

          utf8_GetPreviousValidUtf8Offset(a2, &v15);
          v13 = v15;
        }

        while (v15);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      result = utf8_strchr(v5, (a2 + v13));
      if (result)
      {
        v12 = v15;
      }
    }

    *a3 = v12;
  }

  return result;
}

char *eos_BackScanPhraseBoundary(char *result, uint64_t a2, unsigned int a3, unsigned int a4, _WORD *a5)
{
  if (a2 && a5 && *a5 > a4)
  {
    v9 = *a5 - a4;
    v7 = a2 + a3;
    result = chars_BackScanPhraseBoundary(result, v7, &v9);
    if (v9)
    {
      v8 = v9 + a4;
      result = utf8_determineUTF8CharLength(*(v7 + v9));
      *a5 = v8 + result;
    }
  }

  return result;
}

uint64_t tolhp_ObjOpen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = 2370838535;
  __s2 = 0;
  v15 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v15) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(*(v15 + 8), 40);
    if (!v7)
    {
      return 2370838538;
    }

    v8 = v7;
    cstdlib_memset(v7, 0, 0x28uLL);
    *v8 = a1;
    *(v8 + 8) = a2;
    if (v15)
    {
      v9 = paramc_ParamGet(*(v15 + 40), "langcode", &__s2, 0);
      if ((v9 & 0x80000000) != 0)
      {
        v3 = v9;
      }

      else
      {
        cstdlib_strcpy(__dst, "nts_");
        cstdlib_strcat(__dst, __s2);
        v10 = dct_ObjOpen(__dst, a1, a2, (v8 + 16));
        if ((v10 & 0x80000000) == 0 || (v3 = v10, (v10 & 0x1FFF) == 1))
        {
          cstdlib_strcpy(__s1, "sxm_");
          cstdlib_strcat(__s1, __s2);
          v11 = dct_ObjOpen(__s1, a1, a2, (v8 + 24));
          if ((v11 & 0x80000000) == 0 || (v3 = v11, (v11 & 0x1FFF) == 1))
          {
            cstdlib_strcpy(v16, "ipa_");
            cstdlib_strcat(v16, __s2);
            v12 = dct_ObjOpen(v16, a1, a2, (v8 + 32));
            v3 = v12;
            if ((v12 & 0x80000000) == 0)
            {
LABEL_13:
              *a3 = v8;
              return v3;
            }

            if ((v12 & 0x1FFF) == 1)
            {
              v3 = 0;
              goto LABEL_13;
            }
          }
        }
      }
    }

    tolhp_ObjClose(v8);
  }

  return v3;
}

uint64_t tolhp_ObjClose(uint64_t a1)
{
  v1 = 2370838535;
  v4 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) == 0)
  {
    dct_ObjClose(*(a1 + 32));
    dct_ObjClose(*(a1 + 24));
    dct_ObjClose(*(a1 + 16));
    heap_Free(*(v4 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t tolhp_ResetDcts(uint64_t a1)
{
  result = tolhp_ResetDct(a1, "nts_", (a1 + 16));
  if ((result & 0x80000000) == 0)
  {

    return tolhp_ResetDct(a1, "sxm_", (a1 + 24));
  }

  return result;
}

uint64_t tolhp_ResetDct(void *a1, const char *a2, uint64_t **a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = 2370838528;
  v9 = 0;
  __s2 = 0;
  if (!a1)
  {
    return 2370838535;
  }

  if ((InitRsrcFunction(*a1, a1[1], &v9) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  if (v9 && (paramc_ParamGet(*(v9 + 40), "langcode", &__s2, 0) & 0x80000000) == 0)
  {
    cstdlib_strcpy(__dst, a2);
    cstdlib_strcat(__dst, __s2);
    if (*a3)
    {
      v7 = dct_ObjReopen(*a3, __dst);
    }

    else
    {
      v7 = dct_ObjOpen(__dst, *a1, a1[1], a3);
    }

    if ((v7 & 0x80001FFF) == 0x80000001)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

uint64_t tolhp_RewritePhonTextInLhp(uint64_t **a1, uint64_t a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v58 = 0;
  v2 = 2370838535;
  v56 = 0;
  if (a1 && a2)
  {
    v5 = bed_ObjOpen(*a1, a1[1], a2, 1020, &v58, 213);
    if ((v5 & 0x80000000) != 0 || (v5 = bed_ObjOpen(*a1, a1[1], a2, 1021, &v57, 213), (v5 & 0x80000000) != 0) || (v5 = datac_RequestBlock(a2, 1012, 1u, &v56), (v5 & 0x80000000) != 0))
    {
      v2 = v5;
    }

    else
    {
      if (v56)
      {
        v6 = *(v56 + 8);
      }

      else
      {
        v6 = 0;
      }

      v8 = v57;
      v7 = v58;
      v69 = 0;
      v68 = 0x2400000007;
      v60 = 0;
      if (!v58 || !v57)
      {
        v11 = 2370838535;
        goto LABEL_110;
      }

      v9 = bed_Goto(v57, 0);
      if ((v9 & 0x80000000) != 0)
      {
LABEL_109:
        v11 = v9;
        goto LABEL_110;
      }

      v10 = bed_GoForward(v8, bed_marker_IsOfType, &v68);
      if ((v10 & 0x1FFF) == 0x14)
      {
LABEL_14:
        v11 = 0;
        goto LABEL_110;
      }

      v11 = v10;
      if ((v10 & 0x80000000) == 0)
      {
        v11 = bed_GetpElem(v8, 0xFFFFu, &v60);
        if ((v11 & 0x80000000) == 0)
        {
          v12 = v60;
          if (v60)
          {
            while (1)
            {
              v59 = 1;
              if (*(v12 + 20) == 7)
              {
                v71 = 0;
                v70 = 0x3E700000007;
                *v73 = 0;
                *__s1 = 0;
                v65 = 0;
                v64 = 0;
                v63 = 1;
                *v72 = 0;
                *__dst = 0;
                v61 = 0;
                v9 = bed_GetpElem(v8, 0, __s1);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                v9 = bed_GetpElem(v8, 0xFFFFu, v73);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                v9 = bed_GetiElem(v8, &v65);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                v9 = bed_GetcElem(v8, &v64);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                if (*v73 && *(*v73 + 20) == 7)
                {
                  v13 = *(*v73 + 40);
                  if (v13 == 43)
                  {
                    if (*(*v73 + 48))
                    {
                      v14 = *(*v73 + 56);
                      if ((v14 - 2) < 3)
                      {
                        v13 = v14 + 68;
LABEL_44:
                        v63 = 1;
                        bed_GoForward(v8, bed_marker_IsAt, &v63);
                        v20 = bed_GoForward(v8, bed_marker_IsOfType, &v70);
                        if ((v20 & 0x1FFF) == 0x14)
                        {
                          *v72 = 0;
                        }

                        else
                        {
                          v11 = v20;
                          if ((v20 & 0x80000000) != 0)
                          {
                            break;
                          }

                          v9 = bed_GetpElem(v8, 0xFFFFu, v72);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }
                        }

                        v9 = bed_GetpElem(v7, 0, __dst);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        v9 = bed_GetcElem(v7, &v61);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        v21 = *(*v73 + 32);
                        v22 = v21 - *(*__s1 + 32);
                        if (*v72)
                        {
                          v23 = *(*v72 + 32) - v21;
                        }

                        else
                        {
                          LOWORD(v23) = v61 - v22;
                        }

                        v55 = v23;
                        v28 = *__dst;
                        __src = 0;
                        v66 = 0;
                        if (!*__dst || (InitRsrcFunction(*a1, a1[1], &__src) & 0x80000000) != 0)
                        {
                          goto LABEL_117;
                        }

                        v51 = v22;
                        v52 = v22;
                        v29 = v28 + v22;
                        v53 = off_287EEEC70[v13 - 70];
                        v30 = 0;
                        if (v55)
                        {
                          while (utf8_BelongsToSet(0, v29, v30, v55))
                          {
                            if (v55 == ++v30)
                            {
                              LOWORD(v30) = v55;
                              break;
                            }
                          }
                        }

                        v31 = (v29 + v30);
                        v32 = v55 - v30;
                        v33 = (v55 - v30);
                        if (v33)
                        {
                          v50 = v32;
                          v34 = 0;
                          while (utf8_BelongsToSet(0, v31, v33 - 1 + v34, v33))
                          {
                            if (-v33 == --v34)
                            {
                              v32 = v50;
                              LOWORD(v35) = v50;
                              goto LABEL_80;
                            }
                          }

                          v35 = -v34;
                          v32 = v50;
                        }

                        else
                        {
                          LOWORD(v35) = 0;
                        }

LABEL_80:
                        v36 = (v32 - v35);
                        v37 = heap_Alloc(*(__src + 1), v36 + 1);
                        if (!v37)
                        {
                          v2 = 2370838538;
LABEL_117:
                          v11 = v2;
                          break;
                        }

                        v38 = v37;
                        cstdlib_memcpy(v37, v31, v36);
                        *(v38 + v36) = 0;
                        v11 = (v53)(a1, v38, 0, &v66);
                        if ((v11 & 0x80000000) != 0 || !v66)
                        {
                          goto LABEL_86;
                        }

                        v39 = heap_Alloc(*(__src + 1), ++v66);
                        if (!v39)
                        {
                          LOWORD(v54) = 0;
                          v11 = 2370838538;
                          goto LABEL_87;
                        }

                        v11 = (v53)(a1, v38, v39, &v66);
                        if ((v11 & 0x80000000) != 0)
                        {
LABEL_86:
                          v39 = 0;
                          LOWORD(v54) = 0;
                        }

                        else
                        {
                          v54 = Utf8_Utf8NbrOfSymbols(v39) - 1;
                        }

LABEL_87:
                        heap_Free(*(__src + 1), v38);
                        if ((v11 & 0x80000000) != 0)
                        {
                          break;
                        }

                        v9 = bed_Remove(v7, v51, v55);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        if (v54)
                        {
                          v9 = bed_Goto(v7, v52);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }

                          v9 = bed_Insert(v7, v39, v54);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }
                        }

                        if (v39)
                        {
                          v9 = tolhp_lhp_ObjClose(a1, v39);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_109;
                          }
                        }

                        v40 = *v73;
                        v41 = v54 - v55;
                        *(*__s1 + 36) += v41;
                        *(v40 + 40) = 43;
                        v9 = bed_Goto(v8, v65);
                        if ((v9 & 0x80000000) != 0)
                        {
                          goto LABEL_109;
                        }

                        v42 = v64;
                        v43 = v65 + 1;
                        if (v64 > (v65 + 1))
                        {
                          v44 = *__s1;
                          v45 = (*v73 + 100);
                          do
                          {
                            v46 = *(v45 - 1);
                            v47 = *(v44 + 32);
                            if (v47 + v52 <= v46)
                            {
                              if (v47 + (v52 + v55) <= v46)
                              {
                                *(v45 - 1) = v46 + v41;
                              }

                              else
                              {
                                *(v45 - 1) = v47 + v52;
                                if (*(v45 - 4) == 1)
                                {
                                  *v45 = v54;
                                }
                              }
                            }

                            ++v43;
                            v45 += 16;
                          }

                          while (v42 > v43);
                        }
                      }
                    }
                  }

                  else if ((v13 - 73) >= 0xFFFFFFFD)
                  {
                    goto LABEL_44;
                  }
                }
              }

              else if (v6)
              {
                __dst[0] = 0;
                v15 = v6 + *(v12 + 40);
                MarkerArgStr = marker_getMarkerArgStr(1u);
                if (cstdlib_strcmp(v15, MarkerArgStr))
                {
                  v17 = 0;
                  while (*(v15 + v17))
                  {
                    __dst[v17] = *(v15 + v17);
                    if (++v17 == 3)
                    {
                      if (*(v15 + 3))
                      {
                        break;
                      }

                      __dst[3] = 0;
                      goto LABEL_41;
                    }
                  }
                }

                else
                {
                  v70 = 0;
                  __src = 0;
                  if ((InitRsrcFunction(*a1, a1[1], &v70) & 0x80000000) == 0 && v70 && (paramc_ParamGet(*(v70 + 40), "langcode", &__src, 0) & 0x80000000) == 0)
                  {
                    cstdlib_strncpy(__dst, __src, 4uLL);
LABEL_41:
                    cstdlib_strcpy(__s1, "nts_");
                    cstdlib_strcat(__s1, __dst);
                    v18 = a1[2];
                    v19 = v18 ? dct_ObjReopen(v18, __s1) : dct_ObjOpen(__s1, *a1, a1[1], a1 + 2);
                    v11 = v19;
                    if ((v19 & 0x80000000) != 0 && (v19 & 0x1FFF) != 1)
                    {
                      break;
                    }

                    cstdlib_strcpy(v73, "sxm_");
                    cstdlib_strcat(v73, __dst);
                    v24 = a1[3];
                    v25 = v24 ? dct_ObjReopen(v24, v73) : dct_ObjOpen(v73, *a1, a1[1], a1 + 3);
                    v11 = v25;
                    if ((v25 & 0x80000000) != 0 && (v25 & 0x1FFF) != 1)
                    {
                      break;
                    }

                    cstdlib_strcpy(v72, "ipa_");
                    cstdlib_strcat(v72, __dst);
                    v26 = a1[4];
                    v27 = v26 ? dct_ObjReopen(v26, v72) : dct_ObjOpen(v72, *a1, a1[1], a1 + 4);
                    v11 = v27;
                    if ((v27 & 0x80000000) != 0 && (v27 & 0x1FFF) != 1)
                    {
                      break;
                    }
                  }
                }
              }

              v59 = 1;
              bed_GoForward(v8, bed_marker_IsAt, &v59);
              v48 = bed_GoForward(v8, bed_marker_IsOfType, &v68);
              if ((v48 & 0x1FFF) == 0x14)
              {
                goto LABEL_14;
              }

              v11 = v48;
              if ((v48 & 0x80000000) == 0)
              {
                v11 = bed_GetpElem(v8, 0xFFFFu, &v60);
                if ((v11 & 0x80000000) == 0)
                {
                  v12 = v60;
                  if (v60)
                  {
                    continue;
                  }
                }
              }

              break;
            }
          }
        }
      }

LABEL_110:
      v2 = v11;
    }

    if (v57)
    {
      bed_ObjClose(v57);
    }

    if (v58)
    {
      bed_ObjClose(v58);
    }
  }

  return v2;
}