uint64_t printMSTree(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const char *a5, unsigned int a6, const char **a7, char *a8, unsigned __int16 *a9, char *a10, unsigned __int16 a11)
{
  if (!a4)
  {
    return 0;
  }

  v16 = a3;
  kbsymtab_ConsSymString(a3, *(a4 + 16), a10, a11);
  v35 = a5;
  if (a6)
  {
    cstdlib_strcpy(a8, "");
    v18 = 0;
    do
    {
      cstdlib_strcat(a8, "  ");
      ++v18;
    }

    while (a6 > v18);
    result = add2Str(a1, a7, a9, a8);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  result = add2Str(a1, a7, a9, a10);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = add2Str(a1, a7, a9, "(");
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (*(a4 + 24) < 1)
  {
LABEL_18:
    result = add2Str(a1, a7, a9, ")");
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!*(a4 + 8))
    {
      v22 = cstdlib_strlen(a5);
      v23 = *(a4 + 56);
      if (v23 > v22)
      {
        *(a4 + 56) = v22;
        v23 = v22;
      }

      v24 = *(a4 + 52);
      if (v24 > v22 || v23 > v22 || (v25 = __OFSUB__(v23, v24), v26 = v23 - v24, (v26 < 0) ^ v25 | (v26 == 0)))
      {
        v30 = "<ERROR>";
        v27 = a1;
        v28 = a7;
        v29 = a9;
      }

      else
      {
        cstdlib_strncpy(a10, &a5[v24], (v26 - 1));
        a10[(*(a4 + 56) + ~*(a4 + 52))] = 0;
        a5 = v35;
        sprintf(a8, " <%s>", a10);
        v27 = a1;
        v28 = a7;
        v29 = a9;
        v30 = a8;
      }

      result = add2Str(v27, v28, v29, v30);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s", *a7);
    cstdlib_strcpy(*a7, "");
    v31 = *(a4 + 8);
    if (v31)
    {
      v34 = v16;
      do
      {
        if (a6 && v31 != *(a4 + 8))
        {
          v32 = a5;
          cstdlib_strcpy(a8, "");
          v33 = 0;
          do
          {
            cstdlib_strcat(a8, "  ");
            ++v33;
          }

          while (a6 > v33);
          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s,", a8);
          cstdlib_strcpy(*a7, "");
          a5 = v32;
          v16 = v34;
        }

        result = printMSTree(a1, a2, v16, v31, a5, (a6 + 1), a7, a8, a9, a10, a11);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = 0;
        v31 = *v31;
      }

      while (v31);
      return result;
    }

    return 0;
  }

  v20 = 0;
  while (1)
  {
    if (v20)
    {
      result = add2Str(a1, a7, a9, ",");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v21 = *(a4 + 26 + 2 * v20);
    if (v21 < 0)
    {
      result = mosyntkbsymtab_AtomSymString(a2, v16, -v21, a10, a11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = add2Str(a1, a7, a9, a10);
      a5 = v35;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      sprintf(a8, "?%d", *(a4 + 26 + 2 * v20));
      result = add2Str(a1, a7, a9, a8);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (*(a4 + 24) <= ++v20)
    {
      goto LABEL_18;
    }
  }
}

uint64_t getStartAndEndFromMSTree(uint64_t a1, _WORD *a2, _WORD *a3, _DWORD *a4)
{
  if (a1)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      do
      {
        getStartAndEndFromMSTree(v7, a2, a3, a4);
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      if (!*a4)
      {
        *a2 = *(a1 + 52);
        *a4 = 1;
      }

      *a3 = *(a1 + 56);
    }
  }

  return 0;
}

uint64_t addMSNode(uint64_t a1, char *__s, __int16 a3, __int16 a4, uint64_t a5)
{
  if (!*(a5 + 8))
  {
    v13 = heap_Calloc(*(a1 + 8), 1, 513);
    *a5 = v13;
    if (v13)
    {
      v12 = 32;
      goto LABEL_7;
    }

LABEL_10:
    v17 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return v17;
  }

  v10 = *(a5 + 10);
  if (*(a5 + 8) + 1 < v10)
  {
    goto LABEL_8;
  }

  v11 = heap_Realloc(*(a1 + 8), *a5, 16 * v10 + 257);
  if (!v11)
  {
    goto LABEL_10;
  }

  *a5 = v11;
  v12 = *(a5 + 10) + 16;
LABEL_7:
  *(a5 + 10) = v12;
LABEL_8:
  v14 = *(a1 + 8);
  v15 = cstdlib_strlen(__s);
  v16 = heap_Calloc(v14, 1, (v15 + 1));
  *(*a5 + 16 * *(a5 + 8)) = v16;
  if (!v16)
  {
    goto LABEL_10;
  }

  cstdlib_strcpy(v16, __s);
  v17 = 0;
  v18 = *(a5 + 8);
  v19 = *a5 + 16 * v18;
  *(v19 + 8) = a3;
  *(v19 + 10) = a4;
  *(v19 + 12) = 1;
  *(a5 + 8) = v18 + 1;
  return v17;
}

uint64_t printMSNodes(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, const char *a5, int a6)
{
  result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s", a5);
  if (*(a4 + 8))
  {
    v12 = 0;
    v13 = 8;
    do
    {
      v14 = (*a4 + v13);
      v15 = v14[1];
      v16 = *v14;
      v17 = (v15 - v16);
      if (v17 >= 0x3FF)
      {
        v18 = 1023;
      }

      else
      {
        v18 = v17;
      }

      result = cstdlib_strncpy(a2, (a3 + v16), v18);
      a2[v18] = 0;
      if (a6 == 1)
      {
        result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%d [%d] %s : <%d - %d> <%s>", v12, *(*a4 + v13 + 4), *(*a4 + v13 - 8), *(*a4 + v13), *(*a4 + v13 + 2), a2);
      }

      else
      {
        v19 = (*a4 + v13);
        if (*(v19 + 1) == 1)
        {
          result = log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%d [%d] %s : <%d - %d> <%s>", v12, 1, *(v19 - 1), *v19, *(v19 + 1), a2);
        }
      }

      ++v12;
      v13 += 16;
    }

    while (v12 < *(a4 + 8));
  }

  return result;
}

uint64_t validateMSNodes(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 4);
  if (!*(a2 + 4))
  {
    return 0;
  }

  v3 = 0;
  v4 = *a2;
  while (2)
  {
    v5 = v3;
    v6 = (*a2 + 12 + 16 * v3);
    while (1)
    {
      v7 = *v6;
      v6 += 4;
      if (v7)
      {
        break;
      }

      if (++v5 >= v2)
      {
        goto LABEL_12;
      }
    }

    v8 = v5;
    do
    {
      ++v8;
    }

    while (v2 > v8 && !*(v4 + 16 * v8 + 12));
    if (v8 + 1 < v2 && *(v4 + 16 * v5 + 10) != *(v4 + 16 * v8 + 8))
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "could not extract from MS tree : node=%d", v5);
      return 2315264000;
    }

LABEL_12:
    v3 = v5 + 1;
    if (v2 > (v5 + 1))
    {
      continue;
    }

    return 0;
  }
}

uint64_t getWordIdxForMSPhr(uint64_t a1, unsigned __int16 *a2, int a3, int a4, _WORD *a5, _WORD *a6)
{
  if (a2[4])
  {
    v6 = 0;
    v7 = (*a2 + 2);
    v8 = 1;
    while (*(*a2 + 224 * v6) != a3)
    {
      ++v6;
      ++v8;
      v7 += 112;
      if (v6 >= a2[4])
      {
        goto LABEL_5;
      }
    }

    *a5 = v6;
    *a6 = v6;
    LODWORD(v10) = a2[4];
    if (v6 >= v10)
    {
LABEL_12:
      v9 = 2315264000;
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "cant match MS terminal node with end word : start position=%d start word=%d unknown end=%d", a6);
    }

    else
    {
      while (1)
      {
        v12 = *v7;
        v7 += 112;
        v11 = v12;
        if (a4 - 1 == v12 || v8 == v10 && v11 == a4)
        {
          return 0;
        }

        *a6 = v8;
        v10 = a2[4];
        if (v8++ >= v10)
        {
          goto LABEL_12;
        }
      }
    }
  }

  else
  {
LABEL_5:
    v9 = 2315264000;
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "cant match MS terminal node with start word : start position=%d", a6);
  }

  return v9;
}

uint64_t mapMSNodes2PHR(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    v5 = 0;
    while (2)
    {
      v6 = v5;
      v7 = (*a2 + 16 * v5 + 12);
      while (1)
      {
        v8 = *v7;
        v7 += 4;
        if (v8)
        {
          break;
        }

        if (++v6 >= v2)
        {
          goto LABEL_23;
        }
      }

      v9 = 0;
      v21 = 0;
      do
      {
        if (v9 >= *(a1 + 640))
        {
          goto LABEL_18;
        }

        if (*(*(a1 + 632) + 4 * v9) == 1)
        {
          v10 = *(*(*(a1 + 624) + 8 * v9) + 2);
          v11 = *(*a2 + 16 * v6);
          v12 = cstdlib_strlen(v11);
          result = do_pcre_exec((a1 + 8), v10, v11, v12, 0, &v21);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else if (!cstdlib_strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * **(*(a1 + 624) + 8 * v9))), *(*a2 + 16 * v6)))
        {
          v21 = 1;
        }

        v14 = v9++;
      }

      while (!v21);
      if (v21 != 1)
      {
LABEL_18:
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "no rules FIRE on %s -> %s", *(*a2 + 16 * v6), "O");
        v19 = "O";
        goto LABEL_20;
      }

      v15 = *(a1 + 536);
      v16 = *(a1 + 544);
      v17 = *(*(a1 + 624) + 8 * v14);
      v18 = *(*a1 + 32);
      if (*(*(a1 + 632) + 4 * v14) == 1)
      {
        v19 = (v15 + *(v16 + 4 * *(v17 + 8)));
        log_OutText(v18, "FE_PHRASING", 5, 0, "regex rule %d FIRED %s -> %s");
      }

      else
      {
        v19 = (v15 + *(v16 + 4 * *(v17 + 4)));
        log_OutText(v18, "FE_PHRASING", 5, 0, "normal rule FIRED %s -> %s");
      }

LABEL_20:
      result = getWordIdxForMSPhr(*a1, (a1 + 672), *(*a2 + 16 * v6 + 8), *(*a2 + 16 * v6 + 10), &v20 + 1, &v20);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = addPHRRange(*a1, HIWORD(v20), v20, v19, (a1 + 672));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v2 = *(a2 + 8);
LABEL_23:
      v5 = v6 + 1;
      if ((v6 + 1) < v2)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t sortMSNodes(uint64_t a1, uint64_t *a2)
{
  v40 = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Sort MS Nodes Pass 1 : constrain nodes containing primitives", 0);
  LODWORD(v4) = *(a2 + 4);
  if (*(a2 + 4))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *a2 + 16 * v5;
      if (*(v8 + 12) == 1)
      {
        v9 = *(v8 + 8);
        v10 = *(v8 + 10);
        if (*(a1 + 16) >= 2u)
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "doing node %d", v6);
          LODWORD(v4) = *(a2 + 4);
        }

        if (v4)
        {
          v11 = 0;
          v39 = v10;
          while (1)
          {
            if (v5 != v11)
            {
              v12 = *a2 + 16 * v11;
              if (*(v12 + 12) == 1 && *(v12 + 8) >= v9 && *(v12 + 10) <= v10)
              {
                break;
              }
            }

LABEL_32:
            ++v11;
            v4 = *(a2 + 4);
            if (v11 >= v4)
            {
              goto LABEL_33;
            }
          }

          if (*(a1 + 16) >= 2u)
          {
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "checking node %d apply %d basicdef rules", v11, *(a1 + 616));
          }

          v13 = 0;
          v40 = 0;
          do
          {
            if (v13 >= *(a1 + 616))
            {
              v10 = v39;
              goto LABEL_32;
            }

            if (*(*(a1 + 608) + 4 * v13) == 1)
            {
              v14 = *(*(*(a1 + 600) + 8 * v13) + 2);
              v15 = *(*a2 + 16 * v11);
              v16 = cstdlib_strlen(v15);
              v7 = do_pcre_exec((a1 + 8), v14, v15, v16, 0, &v40);
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              if (*(a1 + 16) >= 2u)
              {
                v17 = "NOMATCH ";
                if (v40 == 1)
                {
                  v17 = "FIRED ";
                }

                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           %sbasicDef: rule %d : regexNum %d [%s] target %s", v17, v13);
              }
            }

            else if (cstdlib_strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * **(*(a1 + 600) + 8 * v13))), *(*a2 + 16 * v11)))
            {
              if (*(a1 + 16) >= 2u)
              {
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           basicDef: rule %d %s does not match string %s");
              }
            }

            else
            {
              v40 = 1;
              if (*(a1 + 16) >= 2u)
              {
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "           basicDef: rule %d %s matched string with rule %s");
              }
            }

            ++v13;
          }

          while (!v40);
          v10 = v39;
          if (v40 != 1)
          {
            goto LABEL_32;
          }

          v18 = *a2 + 16 * v5;
          v19 = *(*a2 + 16 * v11 + 8);
          v20 = *(*a1 + 32);
          if (*(v18 + 8) == v19)
          {
            log_OutText(v20, "FE_PHRASING", 5, 0, "BLOCK decrease node %d from %d to %d, since matches entire node", v6, *(v18 + 10), v19);
            goto LABEL_32;
          }

          log_OutText(v20, "FE_PHRASING", 5, 0, "decrease node %d from %d to %d", v6, *(v18 + 10), v19);
          *(*a2 + 16 * v5 + 10) = *(*a2 + 16 * v11 + 8);
          LODWORD(v4) = *(a2 + 4);
        }
      }

LABEL_33:
      v6 = ++v5;
    }

    while (v5 < v4);
  }

  else
  {
    v7 = 0;
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "Sort MS Nodes Pass 2 : delete consumed nodes", 0);
  v21 = *(a2 + 4);
  if (*(a2 + 4))
  {
    v22 = 0;
    v23 = *a2;
    v24 = *a2 + 12;
    do
    {
      v25 = v23 + 16 * v22;
      if (*(v25 + 12) == 1)
      {
        v26 = 0;
        v27 = *(v25 + 8);
        v28 = *(v25 + 10);
        v29 = v24;
        v30 = v22;
        do
        {
          if (*v29 == 1 && *(v29 - 2) == v27 && *(v29 - 1) > v28)
          {
            v28 = *(v29 - 1);
            v30 = v26;
          }

          ++v26;
          v29 += 4;
        }

        while (v21 != v26);
        v31 = v30;
        v32 = v21;
        v33 = v24;
        v34 = v23 + 16 * v30;
        do
        {
          v35 = *(v33 - 2);
          if (v35 == v27 && *v33 == 1 && v31 != 0)
          {
            *v33 = 0;
          }

          if (v35 > v27 && *v33 == 1 && *(v33 - 1) <= *(v34 + 10) && v31 != 0)
          {
            *v33 = 0;
          }

          v33 += 4;
          --v31;
          --v32;
        }

        while (v32);
      }

      ++v22;
    }

    while (v22 != v21);
  }

  return v7;
}

void *freeMSNodes(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  v5 = *a2;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      heap_Free(v3[1], *(v5 + v6));
      v5 = *a2;
      *(*a2 + v6) = 0;
      ++v7;
      v6 += 16;
    }

    while (v7 < *(a2 + 8));
    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    result = heap_Free(v3[1], v5);
    *a2 = 0;
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t extractFromMSTree(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const char *a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, unsigned __int16 a12)
{
  if (!a4)
  {
    return 0;
  }

  kbsymtab_ConsSymString(a3, *(a4 + 16), a11, a12);
  v18 = 0;
  v33 = 0;
  while (v18 < *(a1 + 592))
  {
    if (*(*(a1 + 584) + 4 * v18) == 1)
    {
      v19 = *(*(*(a1 + 576) + 8 * v18) + 2);
      v20 = cstdlib_strlen(a11);
      result = do_pcre_exec((a1 + 8), v19, a11, v20, 0, &v33);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else if (!cstdlib_strcmp((*(a1 + 536) + *(*(a1 + 544) + 4 * **(*(a1 + 576) + 8 * v18))), a11))
    {
      v33 = 1;
    }

    ++v18;
    if (v33)
    {
      if (v33 == 1)
      {
        v31 = 0;
        v32 = 0;
        getStartAndEndFromMSTree(a4, &v32 + 1, &v32, &v31);
        result = addMSNode(*a1, a11, SHIWORD(v32), v32, a10);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      break;
    }
  }

  v22 = *(a4 + 8);
  if (v22)
  {
    do
    {
      result = extractFromMSTree(a1, a2, a3, v22, a5, a6 + 1, a7, a8, a9, a10, a11, a12);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v22 = *v22;
    }

    while (v22);
    return result;
  }

  v23 = a5;
  v24 = cstdlib_strlen(a5);
  v25 = *(a4 + 56);
  if (v25 > v24)
  {
    *(a4 + 56) = v24;
    v25 = v24;
  }

  v26 = *(a4 + 52);
  if (v26 > v24 || v25 > v24 || v25 <= v26)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "error extracting from MS tree : OUTOFRANGE s32StartPos=%d s32EndPos=%d len=%d", v26, v25, v24);
    return 2315264000;
  }

  if (v25 - v26 == 1)
  {
    v27 = 0;
    v28 = a4;
  }

  else
  {
    v27 = utf8_BelongsToSet(0, a5, v25 - 1, v24) ? -1 : 0;
    v28 = a4;
    v26 = *(a4 + 52);
    v25 = *(a4 + 56);
  }

  cstdlib_strncpy(a11, &v23[v26], (v27 - v26 + v25));
  a11[*(v28 + 56) + v27 - *(v28 + 52)] = 0;
  result = addMSNode(*a1, a11, *(v28 + 52), *(v28 + 56), a10);
  if ((result & 0x80000000) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t setNNPausingDefault(uint64_t a1, char **a2, char *__s)
{
  v6 = *(a1 + 8);
  v7 = cstdlib_strlen(__s);
  v8 = heap_Calloc(v6, 1, (v7 + 1));
  *a2 = v8;
  if (v8)
  {
    cstdlib_strcpy(v8, __s);
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t getStartOfOrthPunc(const char *a1, _DWORD *a2)
{
  v4 = cstdlib_strlen(a1);
  *a2 = 0;
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = utf8_determineUTF8CharLength(a1[v5]);
      v7 = a1[v5];
      if (v6 == 1 && v7 == 44)
      {
        break;
      }

      v8 = v7 > 0x3F;
      v9 = (1 << v7) & 0x8C00430200000000;
      if (!v8 && v9 != 0)
      {
        break;
      }

      v5 += v6;
      if (v5 >= v4)
      {
        return v4;
      }
    }

    *a2 = 1;
  }

  else
  {
    return v4;
  }

  return v5;
}

uint64_t getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  *v124 = 0;
  v123 = 0;
  v121 = 0;
  v122 = 0;
  v119 = 0;
  v120 = 0;
  v117 = 0;
  v118 = 0;
  __s = 0;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  __b[0] = 0;
  __b[1] = 0;
  v111 = 0;
  v110 = 0;
  cstdlib_memset(__b, 0, 0x10uLL);
  *(a6 + 1108) = log_GetLogLevel(*(a1 + 32)) > 4;
  v16 = (*(a3 + 104))(a4, a5, 1, 0, &v124[1]);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = (*(a3 + 184))(a4, a5, v124[1], 0, &v123);
  if ((v17 & 0x80000000) == 0 && v123 == 1)
  {
    v17 = (*(a3 + 176))(a4, a5, v124[1], 0, &v122, &v120);
    if ((v17 & 0x80000000) == 0 && v120 >= 2u)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Method PandP : processing=%s", v122);
      v18 = heap_Calloc(*(a1 + 8), 1, 1024);
      *(a6 + 1088) = v18;
      if (v18 && (*(a6 + 1104) = 1024, v19 = heap_Calloc(*(a1 + 8), 1, 1024), (*(a6 + 1096) = v19) != 0))
      {
        v20 = cstdlib_strlen(v122) + 1;
        v21 = heap_Calloc(*(a1 + 8), 1, v20);
        if (v21)
        {
          v103 = v20;
          v22 = (*(a3 + 104))(a4, a5, 2, v124[1], v124);
          if ((v22 & 0x80000000) != 0)
          {
            v17 = v22;
          }

          else
          {
            v104 = a2;
            v105 = 0;
            v102 = (a6 + 1104);
            v17 = 2315271857;
            v107 = (a6 + 672);
            while (v124[0])
            {
              v23 = (*(a3 + 168))(a4, a5);
              if ((v23 & 0x80000000) != 0)
              {
                goto LABEL_72;
              }

              if (v119 <= 0xA && ((1 << v119) & 0x610) != 0)
              {
                v23 = (*(a3 + 168))(a4, a5, v124[0], 1, 1, &v115, &v120);
                if ((v23 & 0x80000000) != 0)
                {
                  goto LABEL_72;
                }

                v23 = (*(a3 + 168))(a4, a5, v124[0], 2, 1, &v115 + 2, &v120);
                if ((v23 & 0x80000000) != 0)
                {
                  goto LABEL_72;
                }

                if (v115 > HIWORD(v115))
                {
                  goto LABEL_73;
                }

                v23 = (*(a3 + 176))(a4, a5, v124[0], 3, &v117, &v120);
                if ((v23 & 0x80000000) != 0)
                {
                  goto LABEL_72;
                }

                cstdlib_strncpy(v21, &v122[v115], HIWORD(v115) - v115);
                v21[HIWORD(v115) - v115] = 0;
                if (HIWORD(v115) == v115)
                {
                  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", HIWORD(v115), HIWORD(v115));
                }

                else
                {
                  v109 = 0;
                  v108 = 0;
                  v25 = doesWordEndInComma(v21);
                  v26 = v21;
                  v27 = v25;
                  v28 = v26;
                  v29 = addWord(a1, v26, &v115, v117, a6 + 8, v107);
                  if ((v29 & 0x80000000) != 0)
                  {
                    goto LABEL_56;
                  }

                  v106 = *(a6 + 680);
                  if (((*(a3 + 184))(a4, a5, v124[0], 8, &v123) & 0x80000000) == 0 && v123 == 1)
                  {
                    v16 = (*(a3 + 168))(a4, a5, v124[0], 8, 1, &v108, &v120);
                    if ((v16 & 0x80000000) != 0)
                    {
                      return v16;
                    }
                  }

                  if (v108)
                  {
                    *(*(a6 + 672) + 224 * *(a6 + 680) - 8) = 2;
                  }

                  if (v27)
                  {
                    *(*(a6 + 672) + 224 * *(a6 + 680) - 196) = 1;
                  }

                  v29 = (*(a3 + 184))(a4, a5, v124[0], 14, &v123);
                  if ((v29 & 0x80000000) != 0 || (v30 = v106 - 1, v123) && ((*(a3 + 176))(a4, a5, v124[0], 14, &v109, &v120) & 0x80000000) == 0 && (v110 = 1, v29 = parse_NLU_string(a6, v109, (v106 - 1), v106, &v110, a8), (v29 & 0x80000000) != 0) || (v29 = (*(a3 + 176))(a4, a5, v124[0], 5, &__s, &v120), (v29 & 0x80000000) != 0) || (v105 = v110) == 0 && (v29 = addMSPOS(a1, v30, __s, a6 + 8, v107), (v29 & 0x80000000) != 0) || (v29 = checkMSPOSForCompound(a1, v30, __s, a6 + 8, v107), (v29 & 0x80000000) != 0))
                  {
LABEL_56:
                    v17 = v29;
                    v21 = v28;
                    goto LABEL_73;
                  }

                  v21 = v28;
                }
              }

              v23 = (*(a3 + 120))(a4, a5, v124[0], v124);
              if ((v23 & 0x80000000) != 0)
              {
                goto LABEL_72;
              }
            }

            expandAndValidateCompounds(a1, v107, a6 + 8);
            v23 = (*(a3 + 104))(a4, a5, 2, v124[1], v124);
            if ((v23 & 0x80000000) == 0)
            {
              v101 = v21;
              while (v124[0])
              {
                POSString = (*(a3 + 168))(a4, a5);
                if ((POSString & 0x80000000) != 0)
                {
                  goto LABEL_70;
                }

                if (v119 != 6)
                {
                  goto LABEL_211;
                }

                POSString = (*(a3 + 168))(a4, a5, v124[0], 1, 1, &v115, &v120);
                if ((POSString & 0x80000000) == 0)
                {
                  POSString = (*(a3 + 168))(a4, a5, v124[0], 2, 1, &v115 + 2, &v120);
                  if ((POSString & 0x80000000) == 0)
                  {
                    if (v115 > HIWORD(v115))
                    {
                      goto LABEL_71;
                    }

                    POSString = (*(a3 + 176))(a4, a5, v124[0], 4, &v118, &v120);
                    if ((POSString & 0x80000000) == 0)
                    {
                      if (!cstdlib_strcmp(v118, "_PR_") || (POSString = addToken(a1, &v115, v118, a6 + 8, v107, a8), (POSString & 0x80000000) == 0) || POSString == -1979703296)
                      {
LABEL_211:
                        POSString = (*(a3 + 120))(a4, a5, v124[0], v124);
                        if ((POSString & 0x80000000) == 0)
                        {
                          continue;
                        }
                      }
                    }
                  }
                }

                goto LABEL_70;
              }

              log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Added words from lingdb", 0);
              v17 = (*(a3 + 176))(a4, a5, v124[1], 1, &v121, &v120 + 2);
              if ((v17 & 0x80000000) != 0)
              {
LABEL_71:
                a2 = v104;
                v21 = v101;
                goto LABEL_43;
              }

              if (v105 || *(a6 + 568) != 1)
              {
                goto LABEL_86;
              }

              log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "USE MS - get PHR from MS tree", 0);
              v16 = (*(a3 + 176))(a4, a5, v124[1], 2, &v114, &v120);
              if ((v16 & 0x80000000) == 0)
              {
                if (!a7)
                {
                  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "empty symbol table for MS rules", 0);
                  return 2315264000;
                }

                mosynt_StringToSyntTree(v104, a7, v114, &v113);
                if ((POSString & 0x80000000) != 0)
                {
                  goto LABEL_70;
                }

                POSString = printMSTree(a1, v104, a7, v113, v122, 0, (a6 + 1088), *(a6 + 1096), v102, v21, v103);
                if ((POSString & 0x80000000) != 0)
                {
                  goto LABEL_70;
                }

                POSString = extractFromMSTree(a6, v104, a7, v113, v122, 0, a6 + 1088, *(a6 + 1096), v102, __b, v21, v103);
                if ((POSString & 0x80000000) != 0)
                {
                  goto LABEL_70;
                }

                printMSNodes(a1, *(a6 + 1096), v122, __b, "START", 1);
                POSString = sortMSNodes(a6, __b);
                if ((POSString & 0x80000000) != 0)
                {
                  goto LABEL_70;
                }

                printMSNodes(a1, *(a6 + 1096), v122, __b, "END", 0);
                POSString = validateMSNodes(a1, __b);
                if ((POSString & 0x80000000) != 0)
                {
                  goto LABEL_70;
                }

                POSString = mapMSNodes2PHR(a6, __b);
                if ((POSString & 0x80000000) != 0)
                {
                  goto LABEL_70;
                }

                freeMSNodes(a1, __b);
                v17 = 0;
LABEL_86:
                LOWORD(v34) = HIWORD(v120);
                v35 = (a6 + 672);
                if (HIWORD(v120))
                {
                  v36 = 0;
                  v37 = 0;
                  do
                  {
                    v38 = v121 + 32 * v37;
                    if (*v38 == 21)
                    {
                      DomainFromPausingDefs = getDomainFromPausingDefs(a6 + 8, *(v38 + 24), &v111);
                      v34 = HIWORD(v120);
                      if (DomainFromPausingDefs == 1)
                      {
                        v40 = v37 + 1;
                        while (v34 > v40)
                        {
                          v41 = v40;
                          v42 = v121 + 32 * v40;
                          if (*v42 == 21 && cstdlib_strcmp(*(v121 + 32 * v37 + 24), *(v42 + 24)))
                          {
                            if (*(a6 + 680))
                            {
                              v50 = *(v121 + 12);
                              v51 = (*(v121 + 32 * v37 + 12) - v50);
                              v52 = (*(v121 + 32 * v41 + 12) - v50);
                              v53 = v111;
                              v54 = *v107;
                              v55 = *(a6 + 680) - 1;
                              do
                              {
                                v56 = *v54;
                                if (v56 >= v51 && v54[1] <= v52)
                                {
                                  *(v54 + 13) = v53;
                                }

                                v57 = v56 > v52 || v55-- == 0;
                                v54 += 112;
                              }

                              while (!v57);
                            }

                            LOWORD(v34) = HIWORD(v120);
                            v37 = v41 - (v41 + 1 != v36);
                            goto LABEL_117;
                          }

                          v40 = v41 + 1;
                          v34 = HIWORD(v120);
                        }

                        if (*(a6 + 680))
                        {
                          v43 = (*(v121 + 32 * v37 + 12) - *(v121 + 12));
                          v44 = *(v121 + 16);
                          v45 = v111;
                          v46 = *v107;
                          v47 = *(a6 + 680) - 1;
                          do
                          {
                            v48 = *v46;
                            if (v48 >= v43 && v46[1] <= v44)
                            {
                              *(v46 + 13) = v45;
                            }

                            v49 = v48 > v44 || v47-- == 0;
                            v46 += 112;
                          }

                          while (!v49);
                        }
                      }
                    }

LABEL_117:
                    v36 = ++v37;
                  }

                  while (v37 < v34);
                  v35 = (a6 + 672);
                  if (v34)
                  {
                    v58 = 0;
                    v59 = v121;
                    do
                    {
                      v60 = v58;
                      if (*(v59 + 32 * v58) == 34)
                      {
                        ++v58;
                        v61 = v59 + 32 * v60;
                        if (v58 >= v34)
                        {
                          goto LABEL_212;
                        }

                        do
                        {
                          v62 = *(v59 + 32 * v58);
                          if (v62 != 21)
                          {
                            ++v58;
                          }
                        }

                        while (v58 < v34 && v62 != 21);
                        if (v62 == 21)
                        {
                          if (*(a6 + 680))
                          {
                            v70 = *(v59 + 12);
                            v71 = (*(v61 + 12) - v70);
                            v72 = (*(v59 + 32 * v58 + 12) - v70);
                            v73 = *v107;
                            v74 = *(a6 + 680) - 1;
                            do
                            {
                              v75 = *v73;
                              if (v75 >= v71 && v73[1] <= v72)
                              {
                                *(v73 + 12) = 1;
                              }

                              v76 = v75 > v72 || v74-- == 0;
                              v73 += 112;
                            }

                            while (!v76);
                          }
                        }

                        else
                        {
LABEL_212:
                          if (*(a6 + 680))
                          {
                            v64 = (*(v61 + 12) - *(v59 + 12));
                            v65 = *(v59 + 16);
                            v66 = *v107;
                            v67 = *(a6 + 680) - 1;
                            do
                            {
                              v68 = *v66;
                              if (v68 >= v64 && v66[1] <= v65)
                              {
                                *(v66 + 12) = 1;
                              }

                              v69 = v68 > v65 || v67-- == 0;
                              v66 += 112;
                            }

                            while (!v69);
                          }
                        }
                      }

                      ++v58;
                    }

                    while (v58 < v34);
                  }
                }

                if (a8 == 1)
                {
                  if (*(a6 + 680))
                  {
                    v77 = 0;
                    v78 = 168;
                    v79 = -1;
                    do
                    {
                      v80 = *v35;
                      v81 = *(*v35 + v78 + 8);
                      if (v81)
                      {
                        v82 = cstdlib_strcmp(v81, "COMP]");
                        v80 = *v35;
                        if (v78 != 168 && !v82)
                        {
                          v83 = *(v80 + 224 * v79 + 176);
                          if (v83)
                          {
                            v84 = cstdlib_strcmp(v83, "COMP]");
                            v80 = *v107;
                            if (!v84)
                            {
                              v85 = 224 * v79;
                              heap_Free(*(a1 + 8), *(v80 + v85 + 176));
                              v86 = *v107 + v85;
                              *(v86 + 176) = 0;
                              setNNPausingDefault(a1, (v86 + 176), "-");
                              v80 = *v107;
                            }
                          }
                        }
                      }

                      if (!*(v80 + v78 + 8))
                      {
                        setNNPausingDefault(a1, (v80 + v78 + 8), "-");
                        v80 = *v107;
                      }

                      if (!*(v80 + v78))
                      {
                        setNNPausingDefault(a1, (v80 + v78), "-");
                        v80 = *v107;
                      }

                      LODWORD(v109) = 0;
                      StartOfOrthPunc = getStartOfOrthPunc(*(*(v80 + v78 - 152) + 8 * *(a6 + 24)), &v109);
                      cstdlib_strlen(*(*(*(a6 + 672) + v78 - 152) + 8 * *(a6 + 24)));
                      v88 = *(a1 + 8);
                      if (v109 == 1)
                      {
                        v89 = cstdlib_strlen((*(*(*(a6 + 672) + v78 - 152) + 8 * *(a6 + 24)) + StartOfOrthPunc));
                        v90 = heap_Calloc(v88, 1, (v89 + 1));
                        v91 = *(a6 + 672) + v78;
                        *(v91 + 40) = v90;
                        if (!v90)
                        {
                          goto LABEL_203;
                        }

                        cstdlib_strcpy(v90, (*(*(v91 - 152) + 8 * *(a6 + 24)) + StartOfOrthPunc));
                        v35 = (a6 + 672);
                      }

                      else
                      {
                        v92 = cstdlib_strlen("X");
                        v93 = heap_Calloc(v88, 1, (v92 + 1));
                        v35 = (a6 + 672);
                        *(*v107 + v78 + 40) = v93;
                        if (!v93)
                        {
LABEL_203:
                          log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
                          return 2315264010;
                        }

                        cstdlib_strcpy(v93, "X");
                      }

                      v94 = *v35;
                      v95 = *v35 + v78;
                      v97 = *(v95 + 16);
                      v96 = (v95 + 16);
                      if (!v97)
                      {
                        setNNPausingDefault(a1, v96, "X");
                        v94 = *v35;
                      }

                      if (!*(v94 + v78 + 24))
                      {
                        setNNPausingDefault(a1, (v94 + v78 + 24), "X");
                        v94 = *v35;
                      }

                      if (!*(v94 + v78 + 32))
                      {
                        setNNPausingDefault(a1, (v94 + v78 + 32), "X");
                      }

                      ++v77;
                      v78 += 224;
                      ++v79;
                    }

                    while (v77 < *(a6 + 680));
                  }

                  POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v102, a6 + 8, v35, "At Start of NN Phrasing", 1);
                  if ((POSString & 0x80000000) == 0)
                  {
                    heap_Free(*(a1 + 8), v101);
                    return 0;
                  }

                  goto LABEL_70;
                }

                if (!*(a6 + 8))
                {
                  heap_Free(*(a1 + 8), v101);
                  return v17;
                }

                POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v102, a6 + 8, v35, "At Start", a8);
                if ((POSString & 0x80000000) == 0)
                {
                  POSString = resolvePHR(v122, a1, a6 + 8, v107, a8);
                  if ((POSString & 0x80000000) == 0)
                  {
                    POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v102, a6 + 8, v107, "Initialized data", a8);
                    if ((POSString & 0x80000000) == 0)
                    {
                      POSString = createPOSString(a1, a6 + 8, v107);
                      if ((POSString & 0x80000000) == 0)
                      {
                        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Created POS string for retagging : %s", *(a6 + 688));
                        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "do retagging", 0);
                        POSString = doRetagging(*(a6 + 1108), (a6 + 1088), v102, *(a6 + 1096), a1, a6 + 8, v107);
                        if ((POSString & 0x80000000) == 0)
                        {
                          POSString = printAsChunks(*(a6 + 1108), (a6 + 1088), v102, a6 + 8, v107);
                          if ((POSString & 0x80000000) == 0)
                          {
                            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "do subtagging", 0);
                            POSString = doSubtagging(*(a6 + 1108), (a6 + 1088), v102, *(a6 + 1096), a1, a6 + 8, v107);
                            if ((POSString & 0x80000000) == 0)
                            {
                              v99 = *(a6 + 688);
                              if (v99)
                              {
                                heap_Free(*(a1 + 8), v99);
                                *(a6 + 688) = 0;
                                heap_Free(*(a1 + 8), *(a6 + 696));
                                *(a6 + 696) = 0;
                              }

                              POSString = createPOSString(a1, a6 + 8, v107);
                              if ((POSString & 0x80000000) == 0)
                              {
                                log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "set phrase type", 0);
                                POSString = setPhraseType(*(a6 + 1108), (a6 + 1088), v102, *(a6 + 1096), a1, a6 + 8, v107, v122);
                                if ((POSString & 0x80000000) == 0)
                                {
                                  v100 = *(a6 + 688);
                                  if (v100)
                                  {
                                    heap_Free(*(a1 + 8), v100);
                                    *(a6 + 688) = 0;
                                    heap_Free(*(a1 + 8), *(a6 + 696));
                                    *(a6 + 696) = 0;
                                  }

                                  if (*(a6 + 816) || *(a6 + 760))
                                  {
                                    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "skip extending PHR containing token tags", 0);
                                    goto LABEL_198;
                                  }

                                  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "extend PHR containing token tags", 0);
                                  POSString = extendPHRContainingTokenTags(a6);
                                  if ((POSString & 0x80000000) == 0)
                                  {
                                    POSString = annotateTokenTypeOnEachWord(a6);
                                    if ((POSString & 0x80000000) == 0)
                                    {
                                      POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v102, a6 + 8, v107, "After token tag extension", a8);
                                      if ((POSString & 0x80000000) == 0)
                                      {
LABEL_198:
                                        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "assign token tags", 0);
                                        POSString = assignTokenTags(a6);
                                        if ((POSString & 0x80000000) == 0)
                                        {
                                          log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "assign token POS", 0);
                                          POSString = assignTokenPOS(a6);
                                          if ((POSString & 0x80000000) == 0)
                                          {
                                            log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "creating working lists (regex domains)", 0);
                                            POSString = createLists(a1, a6 + 8, v107);
                                            if ((POSString & 0x80000000) == 0)
                                            {
                                              log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "get phon weights (nsyll)", 0);
                                              getPhonWeights(v107);
                                              POSString = printSent(a1, *(a6 + 1108), (a6 + 1088), *(a6 + 1096), v102, a6 + 8, v107, "AFTER GET PHON WEIGHTS", a8);
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
                    }
                  }
                }

LABEL_70:
                v17 = POSString;
                goto LABEL_71;
              }

              return v16;
            }

LABEL_72:
            v17 = v23;
LABEL_73:
            a2 = v104;
          }
        }

        else
        {
          v17 = 2315264010;
          log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
        }
      }

      else
      {
        v17 = 2315264010;
        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
        v21 = 0;
      }

LABEL_43:
      if (*(a6 + 568) == 1)
      {
        freeMSNodes(a1, __b);
      }

      if (v21)
      {
        heap_Free(*(a1 + 8), v21);
      }

      if (v113)
      {
        v31 = mosyntdata_DisposeSyntTree(a2, &v113);
        if (v17 >= 0 && v31 <= -1)
        {
          return v31;
        }

        else
        {
          return v17;
        }
      }
    }
  }

  return v17;
}

uint64_t parse_NLU_string(uint64_t *a1, char *__s, uint64_t a3, int a4, _DWORD *a5, unsigned int a6)
{
  v11 = a1;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  v12 = *(*a1 + 8);
  v13 = cstdlib_strlen(__s);
  v14 = heap_Calloc(v12, 1, (v13 + 1));
  if (v14)
  {
    v15 = v14;
    v61 = a6;
    __sa = __s;
    cstdlib_strcpy(v14, __s);
    for (i = &v15[cstdlib_strlen(v15) - 1]; i >= v15; --i)
    {
      v17 = *i;
      v18 = v17 > 0x3B;
      v19 = (1 << v17) & 0x800000100002600;
      if (v18 || v19 == 0)
      {
        break;
      }

      *i = 0;
    }

    v59 = a5;
    v21 = 0;
    v71 = 0;
    v69 = 0;
    v70 = 0uLL;
    v68 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v22 = 0;
    v62 = a4;
    v60 = a4 - 1;
    v23 = v15;
    while (1)
    {
      v24 = cstdlib_strchr(v23, 59);
      v25 = v24;
      if (v24)
      {
        *v24 = 0;
      }

      v26 = cstdlib_strchr(v23, 58);
      v27 = v26;
      if (v26)
      {
        *v26 = 0;
        v28 = v26 + 1;
      }

      else
      {
        v28 = "null";
      }

      if (!cstdlib_strcmp(v23, "POS"))
      {
        inserted = 0;
        v22 = v28;
        goto LABEL_43;
      }

      if (!cstdlib_strcmp(v23, "PHR"))
      {
        inserted = 0;
        v21 = v28;
        goto LABEL_43;
      }

      if (!cstdlib_strcmp(v23, "BND"))
      {
        inserted = 0;
        v71 = v28;
        goto LABEL_43;
      }

      if (!cstdlib_strcmp(v23, "BNDSHAPE"))
      {
        inserted = 0;
        v69 = v28;
        goto LABEL_43;
      }

      if (!cstdlib_strcmp(v23, "S_POI"))
      {
        inserted = 0;
        v31 = "B";
LABEL_42:
        *(&v70 + 1) = v31;
        *&v70 = v28;
        goto LABEL_43;
      }

      if (!cstdlib_strcmp(v23, "I_POI"))
      {
        inserted = 0;
        v31 = "I";
        goto LABEL_42;
      }

      if (!cstdlib_strcmp(v23, "E_POI"))
      {
        inserted = 0;
        v31 = "S";
        if (!*(&v70 + 1))
        {
          v31 = "E";
        }

        goto LABEL_42;
      }

      if (!cstdlib_strcmp(v23, "PRM"))
      {
        inserted = 0;
        v68 = v28;
        goto LABEL_43;
      }

      v29 = *(v11 + 166);
      if (!v29)
      {
        if (!cstdlib_strcmp(v23, "COMP"))
        {
          inserted = 0;
          v67 = v28;
          goto LABEL_43;
        }

        v29 = *(v11 + 166);
      }

      if (v29 == 1 && !cstdlib_strcmp(v23 + 1, "_COMP"))
      {
        v32 = *(*v11 + 8);
        v33 = cstdlib_strlen(v28);
        v34 = heap_Calloc(v32, 1, (v33 + 3));
        if (!v34)
        {
          goto LABEL_94;
        }

        v35 = v34;
        if (cstdlib_strcmp(v23, "S_COMP"))
        {
          v36 = "I-";
        }

        else
        {
          v36 = "B-";
        }

        cstdlib_strcpy(v35, v36);
        cstdlib_strcat(v35, v28);
        v37 = v35;
        inserted = 0;
        v66 = v37;
        v67 = v37;
        goto LABEL_43;
      }

      v58 = v11;
      if (!v27 || v27 <= v23 + 1)
      {
LABEL_33:
        inserted = addMarkerType(*v11, v23, v28, a3, v60, (v11 + 1), v11 + 84);
        goto LABEL_43;
      }

      if (!cstdlib_strcmp(v23 + 1, "_CLASS"))
      {
        inserted = 0;
        v64 = v28;
        goto LABEL_43;
      }

      if (v61 != 1 || cstdlib_strcmp(v23, "PUNC"))
      {
        break;
      }

      if (!v65)
      {
        v42 = *(*v11 + 8);
        v43 = cstdlib_strlen(__sa);
        v44 = heap_Calloc(v42, 1, (v43 + 4));
        if (!v44)
        {
          goto LABEL_94;
        }

        v45 = v44;
        cstdlib_strcpy(v44, "X_");
        cstdlib_strcat(v45, v23);
        cstdlib_strcat(v45, ":");
        v65 = v45;
        cstdlib_strcat(v45, v28);
LABEL_58:
        inserted = 0;
        goto LABEL_43;
      }

      inserted = 0;
LABEL_43:
      if (v25)
      {
        v23 = v25 + 1;
        if ((inserted & 0x80000000) == 0)
        {
          continue;
        }
      }

      v46 = v64;
      v47 = v67;
      *&v75 = v65;
      *(&v75 + 1) = v67;
      v49 = v68;
      v48 = v69;
      *&v74 = v68;
      *(&v74 + 1) = v64;
      v50 = v70;
      v51 = v71;
      v76 = v70;
      *&v73 = v71;
      *(&v73 + 1) = v69;
      *&v72 = v22;
      *(&v72 + 1) = v21;
      v52 = "(null)";
      if (v22)
      {
        v53 = v22;
      }

      else
      {
        v53 = "(null)";
      }

      if (v21)
      {
        v54 = v21;
      }

      else
      {
        v54 = "(null)";
      }

      if (!v71)
      {
        v51 = "(null)";
      }

      if (!v69)
      {
        v48 = "(null)";
      }

      if (!v68)
      {
        v49 = "(null)";
      }

      if (!v64)
      {
        v46 = "(null)";
      }

      if (v65)
      {
        v55 = v65;
      }

      else
      {
        v55 = "(null)";
      }

      if (!v67)
      {
        v47 = "(null)";
      }

      if (!v70)
      {
        v50 = "(null)";
      }

      if (*(&v70 + 1))
      {
        v52 = *(&v70 + 1);
      }

      log_OutText(*(*v11 + 32), "FE_PHRASING", 5, 0, "parsed NLU %s[%d,%d] -> POS=%s, PHR=%s, BND=%s, BNDSHAPE=%s, PRM=%s, CLASS=%s, PUNC=%s, COMP=%s, POIClass=%s, POIPosi=%s", __sa, a3, v62, v53, v54, v51, v48, v49, v46, v55, v47, v50, v52);
      if ((inserted & 0x80000000) == 0)
      {
        if (!v22)
        {
          log_OutText(*(*v11 + 32), "FE_PHRASING", 5, 0, "missing POS in NLU string: arg=%s", v15);
          *v59 = 0;
        }

        inserted = insert_NLU_info(*v11, a3, v62, &v72, (v11 + 1), (v11 + 84), v61);
      }

      heap_Free(*(*v11 + 8), v15);
      if (v65)
      {
        heap_Free(*(*v11 + 8), v65);
      }

      if (v66)
      {
        heap_Free(*(*v11 + 8), v66);
      }

      return inserted;
    }

    if (cstdlib_strcmp(v23 + 1, "_PUNC"))
    {
      goto LABEL_33;
    }

    v38 = v65;
    if (!v65)
    {
      v39 = *(*v11 + 8);
      v40 = cstdlib_strlen(__sa);
      v41 = heap_Calloc(v39, 1, (v40 + 1));
      if (!v41)
      {
        inserted = 2315264010;
        v56 = *v58;
        goto LABEL_95;
      }

      v38 = v41;
      cstdlib_strcpy(v41, "");
      v11 = v58;
    }

    *v27 = 58;
    v65 = v38;
    hlp_NLUStrJoin(v38, v23);
    goto LABEL_58;
  }

LABEL_94:
  inserted = 2315264010;
  v56 = *v11;
LABEL_95:
  log_OutPublic(*(v56 + 32), "FE_PHRASING", 37000, 0);
  return inserted;
}

void *freeSentenceData(uint64_t a1)
{
  v2 = *(a1 + 1088);
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    *(a1 + 1088) = 0;
    *(a1 + 1104) = 0;
  }

  v3 = *(a1 + 1096);
  if (v3)
  {
    heap_Free(*(*a1 + 8), v3);
    *(a1 + 1096) = 0;
  }

  v4 = *(a1 + 672);
  if (*(a1 + 680))
  {
    v5 = 0;
    do
    {
      if (*(v4 + 224 * v5 + 80))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 80));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 80) = 0;
      }

      if (*(v4 + 224 * v5 + 112))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 112));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 112) = 0;
      }

      if (*(v4 + 224 * v5 + 120))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 120));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 120) = 0;
      }

      if (*(v4 + 224 * v5 + 152))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 152));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 152) = 0;
      }

      if (*(v4 + 224 * v5 + 160))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 160));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 160) = 0;
      }

      if (*(v4 + 224 * v5 + 184))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 184));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 184) = 0;
      }

      if (*(v4 + 224 * v5 + 192))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 192));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 192) = 0;
      }

      if (*(v4 + 224 * v5 + 200))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 200));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 200) = 0;
      }

      if (*(v4 + 224 * v5 + 208))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 208));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 208) = 0;
      }

      if (*(v4 + 224 * v5 + 168))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 168));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 168) = 0;
      }

      if (*(v4 + 224 * v5 + 88))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 88));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 88) = 0;
      }

      v6 = *(v4 + 224 * v5 + 16);
      if (v6)
      {
        v7 = *(a1 + 80);
        if (v7)
        {
          for (i = 0; i < v7; ++i)
          {
            v6 = *(v4 + 224 * v5 + 16);
            v9 = *(v6 + 8 * i);
            if (v9)
            {
              heap_Free(*(*a1 + 8), v9);
              v4 = *(a1 + 672);
              v6 = *(v4 + 224 * v5 + 16);
              *(v6 + 8 * i) = 0;
              v7 = *(a1 + 80);
            }
          }
        }

        heap_Free(*(*a1 + 8), v6);
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 16) = 0;
      }

      v10 = *(v4 + 224 * v5 + 56);
      if (v10)
      {
        v11 = *(a1 + 80);
        if (v11)
        {
          v12 = 0;
          v13 = 16;
          do
          {
            v10 = *(v4 + 224 * v5 + 56);
            v14 = *(v10 + v13);
            if (v14)
            {
              heap_Free(*(*a1 + 8), v14);
              v4 = *(a1 + 672);
              v10 = *(v4 + 224 * v5 + 56);
              *(v10 + v13) = 0;
              v11 = *(a1 + 80);
            }

            ++v12;
            v13 += 32;
          }

          while (v12 < v11);
        }

        heap_Free(*(*a1 + 8), v10);
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 56) = 0;
      }

      v15 = *(v4 + 224 * v5 + 64);
      if (v15)
      {
        v16 = *(a1 + 80);
        if (v16)
        {
          for (j = 0; j < v16; ++j)
          {
            v15 = *(v4 + 224 * v5 + 64);
            v18 = *(v15 + 8 * j);
            if (v18)
            {
              heap_Free(*(*a1 + 8), v18);
              v4 = *(a1 + 672);
              v15 = *(v4 + 224 * v5 + 64);
              *(v15 + 8 * j) = 0;
              v16 = *(a1 + 80);
            }
          }
        }

        heap_Free(*(*a1 + 8), v15);
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 64) = 0;
      }

      if (*(v4 + 224 * v5 + 8))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 8));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 8) = 0;
      }

      if (*(v4 + 224 * v5 + 96))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 96));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 96) = 0;
      }

      if (*(v4 + 224 * v5 + 176))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 176));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 176) = 0;
      }

      if (*(v4 + 224 * v5 + 128))
      {
        heap_Free(*(*a1 + 8), *(v4 + 224 * v5 + 128));
        v4 = *(a1 + 672);
        *(v4 + 224 * v5 + 128) = 0;
      }

      ++v5;
    }

    while (v5 < *(a1 + 680));
  }

  else if (!v4)
  {
    goto LABEL_62;
  }

  heap_Free(*(*a1 + 8), v4);
  *(a1 + 672) = 0;
LABEL_62:
  v19 = *(a1 + 688);
  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
    *(a1 + 688) = 0;
  }

  v20 = *(a1 + 696);
  if (v20)
  {
    heap_Free(*(*a1 + 8), v20);
    *(a1 + 696) = 0;
  }

  v21 = *(a1 + 712);
  if (v21)
  {
    heap_Free(*(*a1 + 8), v21);
    *(a1 + 712) = 0;
  }

  return cstdlib_memset((a1 + 672), 0, 0x30uLL);
}

uint64_t updateLingdb(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v22 = 0;
  cstdlib_memset(__b, 0, 0x20uLL);
  PhraseStartingAtThisWord = (*(a1 + 104))(a2, a3, 1, 0, &v32 + 2);
  if ((PhraseStartingAtThisWord & 0x80000000) != 0)
  {
    return PhraseStartingAtThisWord;
  }

  v9 = (*(a1 + 184))(a2, a3, HIWORD(v32), 0, &v33);
  if ((v9 & 0x80000000) == 0 && v33 == 1)
  {
    v9 = (*(a1 + 176))(a2, a3, HIWORD(v32), 0, &v23, &v31);
    if ((v9 & 0x80000000) == 0 && v31 >= 2u)
    {
      v9 = (*(a1 + 104))(a2, a3, 2, HIWORD(v32), &v32);
      if ((v9 & 0x80000000) == 0)
      {
        v24 = 0;
        cstdlib_strcpy(__dst, "");
        cstdlib_strcpy(__s1, "");
        cstdlib_strcpy(*(a4 + 1088), "");
        for (i = v32; v32; i = v32)
        {
          PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, i, 0, 1, &v29, &v31);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }

          if (v29 <= 0xA && ((1 << v29) & 0x610) != 0)
          {
            PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, v32, 1, 1, &v26, &v31);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, v32, 2, 1, &v26 + 2, &v31);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 176))(a2, a3, v32, 3, &v28, &v31);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            if (v26 != HIWORD(v26))
            {
              PhraseStartingAtThisWord = getPhraseStartingAtThisWord((a4 + 672), a4 + 8, v26, &v25 + 1, __dst, &v27, &v24 + 1, &v24);
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                return PhraseStartingAtThisWord;
              }

              if (__dst[0])
              {
                cstdlib_strcpy(__s1, __dst);
                LOWORD(v25) = 0;
                if (HIWORD(v25) <= 1u)
                {
                  if (HIWORD(v24))
                  {
                    setSilDurOnWord(a4 + 672, (a4 + 8), (HIWORD(v24) - 1), &v25);
                  }

                  else
                  {
                    LOWORD(v25) = 200;
                  }
                }

                PhraseStartingAtThisWord = (*(a1 + 88))(a2, a3, v32, &v31 + 2);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                v29 = 15;
                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v31), 0, 1, &v29, &v30);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v31), 1, 1, &v26, &v30);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v31), 2, 1, &v27, &v30);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                v12 = *(a1 + 160);
                v13 = HIWORD(v31);
                v14 = cstdlib_strlen(__dst);
                PhraseStartingAtThisWord = v12(a2, a3, v13, 4, (v14 + 1), __dst, &v30);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v31), 7, 1, &v25 + 2, &v30);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }

                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v31), 8, 1, &v25, &v30);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }
              }

              v15 = HIWORD(v24);
              setSilDurOnWord(a4 + 672, (a4 + 8), HIWORD(v24), &v25);
              PhraseStartingAtThisWord = checkForExternalSildur(a1, a2, a3, v32, &v22);
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                return PhraseStartingAtThisWord;
              }

              if (!v22)
              {
                PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v32, 8, 1, &v25, &v30);
                if ((PhraseStartingAtThisWord & 0x80000000) != 0)
                {
                  return PhraseStartingAtThisWord;
                }
              }

              v16 = *(*(a4 + 672) + 224 * v15 + 72);
              get_phr_for_nlu_output(a4, v15, __b);
              get_pos_for_nlu_output(a4, v15, v35);
              PhraseStartingAtThisWord = updateNLUField(a1, a2, a3, v32, a4, v15, v35, __b, *(*(a4 + 672) + 224 * v15 + 96), *(*(a4 + 672) + 224 * v15 + 112));
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                return PhraseStartingAtThisWord;
              }

              log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_PRM -> %d dur=%d", v32, v15, v16, v25);
              LH_itoa(v16, __s, 0xAu);
              v17 = *(a1 + 160);
              v18 = v32;
              v19 = cstdlib_strlen(__s);
              PhraseStartingAtThisWord = v17(a2, a3, v18, 13, (v19 + 1), __s, &v30);
              if ((PhraseStartingAtThisWord & 0x80000000) != 0)
              {
                return PhraseStartingAtThisWord;
              }
            }
          }

          v9 = (*(a1 + 120))(a2, a3, v32, &v32);
          if ((v9 & 0x80000000) != 0)
          {
            return v9;
          }
        }

        cstdlib_strcpy(*(a4 + 1088), "");
        if (cstdlib_strcmp(__s1, "Y"))
        {
          v20 = cstdlib_strrchr(v23, 63);
          if (v20)
          {
            if (v20 != v23 && *(v20 - 1) != 32)
            {
              *v20 = 46;
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t getPhraseStartingAtThisWord(uint64_t *a1, uint64_t a2, int a3, unsigned __int16 *a4, char *__dst, unsigned __int16 *a6, unsigned __int16 *a7, unsigned __int16 *a8)
{
  *a4 = 0;
  if (!*(a1 + 4))
  {
LABEL_5:
    v19 = 2315264000;
    if (a2)
    {
      log_OutText(*(*a2 + 32), "FE_PHRASING", 5, 0, "cant align lingdb word : no word found with fromPos=%d", a3);
    }

    return v19;
  }

  v16 = 0;
  v17 = *a1;
  v18 = (*a1 + 73);
  while (*(v17 + 224 * v16) != a3)
  {
    ++v16;
    v18 += 224;
    if (v16 >= *(a1 + 4))
    {
      goto LABEL_5;
    }
  }

  v20 = *a8;
  *a7 = v16;
  if (v16 | v20)
  {
    v21 = v16 > v20;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v19 = 0;
    *__dst = 0;
    return v19;
  }

  v22 = *(a1 + 4);
  v23 = v16;
  if (v16 < v22)
  {
    LOWORD(v23) = v16;
    while (1)
    {
      v24 = *v18;
      v18 += 224;
      if ((v24 - 5) > 0xFFFFFFFD)
      {
        break;
      }

      LOWORD(v23) = v23 + 1;
      if (v22 == v23)
      {
        goto LABEL_19;
      }
    }

    v23 = v23;
  }

  if (v23 == v22)
  {
LABEL_19:
    *a6 = *(v17 + 224 * *(a1 + 4) - 222);
    *a8 = *(a1 + 4);
    goto LABEL_21;
  }

  *a8 = v23;
  *a6 = *(v17 + 224 * v23 + 2);
  if (v23 + 1 == *(a1 + 4))
  {
LABEL_21:
    if (a1[5])
    {
      v25 = a1[5];
    }

    else
    {
      v25 = "T";
    }

    goto LABEL_24;
  }

  *a6 = *(v17 + 224 * (v23 + 1));
  v25 = "P";
LABEL_24:
  cstdlib_strcpy(__dst, v25);
  v26 = *a7;
  if (*a7)
  {
    *a4 = 1;
    if (*(*a1 + 224 * *a7 - 151) == 3)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }
  }

  *a4 = v26;
  if (a2)
  {
    log_OutText(*(*a2 + 32), "FE_PHRASING", 5, 0, "Phrase lingdb=%d,%d PHRTYPE=%s BNDTYPE=%d internal word %d,%d", a3, *a6, __dst, v26, v16, *a8);
  }

  return 0;
}

size_t setSilDurOnWord(size_t result, void *a2, int a3, _WORD *a4)
{
  v6 = result;
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  *a4 = 0;
  v7 = *(result + 8);
  v8 = *result;
  if (a3 + 1 < v7 && *(v8 + 224 * (a3 + 1) + 220) == 1)
  {
    do
    {
      LOWORD(a3) = a3 + 1;
      v9 = a3;
      v10 = a3 + 1;
    }

    while (v10 < v7 && *(v8 + 224 * v10 + 220) == 1);
  }

  else
  {
    v9 = a3;
  }

  v11 = a3;
  v12 = v8 + 224 * a3;
  v13 = v7 - 1;
  if (*(v12 + 73) == 4 && v13 != v9)
  {
    *a4 = *(a2[6] + 8 * *(v12 + 52) + 4);
    cstdlib_strcpy(__dst, "tnpausedur");
    v15 = cstdlib_strlen((a2[66] + *(a2[67] + 4 * *(a2[6] + 8 * *(*v6 + 224 * v11 + 52)))));
    result = cstdlib_strlen(__dst);
    if (v15 < 255 - result)
    {
      cstdlib_strcat(__dst, (a2[66] + *(a2[67] + 4 * *(a2[6] + 8 * *(*v6 + 224 * v11 + 52)))));
      result = paramc_ParamGetUInt(*(*a2 + 40), __dst, &v16);
      if ((result & 0x80000000) == 0)
      {
        *a4 = v16;
      }
    }
  }

  return result;
}

unint64_t get_phr_for_nlu_output(unint64_t result, unsigned int a2, char *__s1)
{
  v4 = *(*(result + 672) + 224 * a2 + 56);
  if (v4 && (v5 = result, (result = *(v4 + 32 * *(result + 32) + 16)) != 0))
  {
    if (cstdlib_strcmp(result, "O") && cstdlib_strcmp(*(*(*(v5 + 672) + 224 * a2 + 56) + 32 * *(v5 + 32) + 16), "O-P"))
    {
      cstdlib_strcpy(__s1, "B-");
      cstdlib_strcat(__s1, *(*(*(v5 + 672) + 224 * a2 + 56) + 32 * *(v5 + 32) + 16));
    }

    else
    {
      cstdlib_strcpy(__s1, *(*(*(v5 + 672) + 224 * a2 + 56) + 32 * *(v5 + 32) + 16));
    }

    result = cstdlib_strlen(__s1);
    if (result >= 2)
    {
      v7 = cstdlib_strlen(__s1);
      result = cstdlib_strcmp(&__s1[v7 - 2], "-P");
      if (!result)
      {
        result = cstdlib_strlen(__s1);
        __s1[result - 2] = 0;
      }
    }
  }

  else if (*__s1)
  {
    result = cstdlib_strcmp(__s1, "O");
    if (result)
    {
      *__s1 = 73;
    }
  }

  return result;
}

char *get_pos_for_nlu_output(uint64_t a1, unsigned int a2, char *__dst)
{
  v3 = *(a1 + 672) + 224 * a2;
  v4 = *(v3 + 88);
  if (!v4)
  {
    v4 = *(*(v3 + 16) + 8 * *(a1 + 26));
  }

  return cstdlib_strcpy(__dst, v4);
}

uint64_t updateNLUField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char *a7, char *a8, char *a9, char *a10)
{
  v32 = 0;
  v31 = 0;
  __src = 0;
  result = (*(a1 + 184))(a2, a3, a4, 14, &v32 + 2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!HIWORD(v32))
  {
    v28 = a6;
    v29 = a3;
LABEL_7:
    v19 = "";
    __src = "";
    goto LABEL_8;
  }

  result = (*(a1 + 176))(a2, a3, a4, 14, &__src, &v32);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v28 = a6;
  v29 = a3;
  if (v32 < 2u)
  {
    goto LABEL_7;
  }

  v19 = __src;
LABEL_8:
  v20 = cstdlib_strlen(v19) + 1;
  if (a7)
  {
    v21 = cstdlib_strlen(";POS:");
    v20 += v21 + cstdlib_strlen(a7);
  }

  if (a8)
  {
    v22 = cstdlib_strlen(";PHR:");
    v20 += v22 + cstdlib_strlen(a8);
  }

  if (a9 && !*(a5 + 664))
  {
    v23 = cstdlib_strlen(";COMP:");
    v20 += v23 + cstdlib_strlen(a9);
  }

  if (a10)
  {
    v24 = cstdlib_strlen(";BNDSHAPE:");
    v20 += v24 + cstdlib_strlen(a10);
  }

  if (v20 <= *(a5 + 1104))
  {
    v25 = *(a5 + 1088);
  }

  else
  {
    v25 = heap_Realloc(*(*a5 + 8), *(a5 + 1088), v20);
    if (!v25)
    {
      log_OutPublic(*(*a5 + 32), "FE_PHRASING", 37000, 0);
      return 2315264010;
    }

    *(a5 + 1088) = v25;
    *(a5 + 1104) = v20;
  }

  cstdlib_strcpy(v25, __src);
  if (a7 && *a7)
  {
    hlp_NLUStrSet(*(a5 + 1088), "POS", a7);
  }

  if (a8 && *a8)
  {
    hlp_NLUStrSet(*(a5 + 1088), "PHR", a8);
  }

  if (a9 && !*(a5 + 664) && *a9)
  {
    hlp_NLUStrSet(*(a5 + 1088), "COMP", a9);
  }

  if (a10)
  {
    if (*a10)
    {
      hlp_NLUStrSet(*(a5 + 1088), "BNDSHAPE", a10);
    }
  }

  log_OutText(*(*a5 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", a4, v28, __src, *(a5 + 1088));
  v26 = *(a1 + 160);
  v27 = cstdlib_strlen(*(a5 + 1088));
  return v26(a2, v29, a4, 14, (v27 + 1), *(a5 + 1088), &v31);
}

uint64_t updateLingdbCrfPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  cstdlib_memset(__b, 0, 0x20uLL);
  PhraseStartingAtThisWord = (*(a1 + 104))(a2, a3, 1, 0, &v34);
  if ((PhraseStartingAtThisWord & 0x80000000) != 0)
  {
    return PhraseStartingAtThisWord;
  }

  v9 = (*(a1 + 184))(a2, a3, v34, 0, &v34 + 2);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  if (HIWORD(v34) != 1)
  {
    return v9;
  }

  v9 = (*(a1 + 176))(a2, a3, v34, 0, &v25, &v32 + 2);
  if ((v9 & 0x80000000) != 0 || HIWORD(v32) < 2u)
  {
    return v9;
  }

  PhraseStartingAtThisWord = (*(a1 + 176))(a2, a3, v34, 1, &v24, &v23);
  if ((PhraseStartingAtThisWord & 0x80000000) != 0)
  {
    return PhraseStartingAtThisWord;
  }

  v9 = (*(a1 + 104))(a2, a3, 2, v34, &v33 + 2);
  if ((v9 & 0x80000000) == 0)
  {
    v26 = 0;
    cstdlib_strcpy(__dst, "");
    cstdlib_strcpy(*(a4 + 1088), "");
    for (i = HIWORD(v33); HIWORD(v33); i = HIWORD(v33))
    {
      PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, i, 0, 1, &v31, &v32 + 2);
      if ((PhraseStartingAtThisWord & 0x80000000) != 0)
      {
        return PhraseStartingAtThisWord;
      }

      if (v31 <= 0xA && ((1 << v31) & 0x610) != 0)
      {
        PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, HIWORD(v33), 1, 1, &v28, &v32 + 2);
        if ((PhraseStartingAtThisWord & 0x80000000) != 0)
        {
          return PhraseStartingAtThisWord;
        }

        PhraseStartingAtThisWord = (*(a1 + 168))(a2, a3, HIWORD(v33), 2, 1, &v28 + 2, &v32 + 2);
        if ((PhraseStartingAtThisWord & 0x80000000) != 0)
        {
          return PhraseStartingAtThisWord;
        }

        PhraseStartingAtThisWord = (*(a1 + 176))(a2, a3, HIWORD(v33), 3, &v30, &v32 + 2);
        if ((PhraseStartingAtThisWord & 0x80000000) != 0)
        {
          return PhraseStartingAtThisWord;
        }

        if (v28 != HIWORD(v28))
        {
          PhraseStartingAtThisWord = getPhraseStartingAtThisWord((a4 + 672), 0, v28, &v27 + 1, __dst, &v29, &v26 + 1, &v26);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }

          if (__dst[0])
          {
            LOWORD(v27) = 0;
            if (HIWORD(v27) <= 1u)
            {
              if (HIWORD(v26))
              {
                setSilDurOnWordCrf(a4 + 672, a4 + 8, (HIWORD(v26) - 1), &v27);
              }

              else
              {
                LOWORD(v27) = 200;
              }
            }

            PhraseStartingAtThisWord = (*(a1 + 88))(a2, a3, HIWORD(v33), &v33);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            v31 = 15;
            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v33, 0, 1, &v31, &v32);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v33, 1, 1, &v28, &v32);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v33, 2, 1, &v29, &v32);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            v12 = *(a1 + 160);
            v13 = v33;
            v14 = cstdlib_strlen(__dst);
            PhraseStartingAtThisWord = v12(a2, a3, v13, 4, (v14 + 1), __dst, &v32);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v33, 7, 1, &v27 + 2, &v32);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }

            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, v33, 8, 1, &v27, &v32);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }
          }

          v15 = HIWORD(v26);
          setSilDurOnWordCrf(a4 + 672, a4 + 8, HIWORD(v26), &v27);
          PhraseStartingAtThisWord = checkForExternalSildur(a1, a2, a3, HIWORD(v33), &v22);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }

          if (!v22)
          {
            PhraseStartingAtThisWord = (*(a1 + 160))(a2, a3, HIWORD(v33), 8, 1, &v27, &v32);
            if ((PhraseStartingAtThisWord & 0x80000000) != 0)
            {
              return PhraseStartingAtThisWord;
            }
          }

          v16 = *(*(a4 + 672) + 224 * v15 + 72);
          get_phr_for_nlu_output(a4, v15, __b);
          get_pos_for_nlu_output(a4, v15, v36);
          PhraseStartingAtThisWord = updateNLUField(a1, a2, a3, HIWORD(v33), a4, v15, v36, __b, *(*(a4 + 672) + 224 * v15 + 96), *(*(a4 + 672) + 224 * v15 + 112));
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }

          log_OutText(*(*a4 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_PRM -> %d dur=%d", HIWORD(v33), v15, v16, v27);
          LH_itoa(v16, __s, 0xAu);
          v17 = *(a1 + 160);
          v18 = HIWORD(v33);
          v19 = cstdlib_strlen(__s);
          PhraseStartingAtThisWord = v17(a2, a3, v18, 13, (v19 + 1), __s, &v32);
          if ((PhraseStartingAtThisWord & 0x80000000) != 0)
          {
            return PhraseStartingAtThisWord;
          }
        }
      }

      v9 = (*(a1 + 120))(a2, a3, HIWORD(v33), &v33 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        return v9;
      }
    }

    cstdlib_strcpy(*(a4 + 1088), "");
    if (!cstdlib_strcmp(__dst, "W") || !cstdlib_strcmp(__dst, "AF"))
    {
      v20 = cstdlib_strrchr(v25, 63);
      if (v20 && v20 != v25 && *(v20 - 1) != 32)
      {
        *v20 = 46;
      }
    }
  }

  return v9;
}

uint64_t setSilDurOnWordCrf(uint64_t result, uint64_t a2, int a3, __int16 *a4)
{
  v6 = result;
  if (a2)
  {
    result = log_OutText(*(*a2 + 32), "FE_PHRASING", 5, 0, "the parameter %s is ready", "pandpRules");
  }

  *a4 = 0;
  v7 = *(v6 + 8);
  v8 = *v6;
  if (a3 + 1 < v7 && *(v8 + 224 * (a3 + 1) + 220) == 1)
  {
    do
    {
      LOWORD(a3) = a3 + 1;
      v9 = a3;
      v10 = a3 + 1;
    }

    while (v10 < v7 && *(v8 + 224 * v10 + 220) == 1);
  }

  else
  {
    v9 = a3;
  }

  v11 = a3;
  v12 = v8 + 224 * a3;
  v13 = v7 - 1;
  if (*(v12 + 73) == 4 && v13 != v9)
  {
    v15 = cstdlib_strlen(**(v12 + 16));
    *a4 = 100;
    result = doesWordEndInComma(**(*v6 + 224 * v11 + 16));
    if (result)
    {
      v16 = 300;
    }

    else
    {
      if (*(**(*v6 + 224 * v11 + 16) + (v15 - 1)) != 46)
      {
        return result;
      }

      v16 = 600;
    }

    *a4 = v16;
  }

  return result;
}

uint64_t doesCustermizedFE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = 2315264010;
  v31 = 0;
  *__s2 = -22590;
  *a6 = 0;
  if (!a1)
  {
    return 2315264007;
  }

  v13 = heap_Calloc(*(a1 + 8), 256, 1);
  if (v13)
  {
    v14 = v13;
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v15 = (*(a2 + 104))(a3, a4, 1, 0, &v36 + 2);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = v15;
      goto LABEL_35;
    }

    v16 = (*(a2 + 184))(a3, a4, HIWORD(v36), 0, &v37);
    if ((v16 & 0x80000000) == 0 && v37 == 1)
    {
      (*(a2 + 176))(a3, a4, HIWORD(v36), 0, &v33, &v35);
      if (v35 >= 2u)
      {
        v16 = (*(a2 + 104))(a3, a4, 2, HIWORD(v36), &v36);
        if ((v16 & 0x80000000) == 0)
        {
          cstdlib_strcpy(__dst, "");
          cstdlib_strcpy(*(a5 + 1088), "");
          v17 = v36;
          if (v36)
          {
            v18 = 0;
            v29 = 256;
            while (1)
            {
              v19 = (*(a2 + 168))(a3, a4, v17, 0, 1, &v34, &v35);
              if ((v19 & 0x80000000) != 0)
              {
                goto LABEL_30;
              }

              if (v34 <= 0xA && ((1 << v34) & 0x610) != 0)
              {
                v19 = (*(a2 + 168))(a3, a4, v36, 1, 1, &v32, &v35);
                if ((v19 & 0x80000000) != 0)
                {
                  goto LABEL_30;
                }

                v19 = (*(a2 + 168))(a3, a4, v36, 2, 1, &v32 + 2, &v35);
                if ((v19 & 0x80000000) != 0)
                {
                  goto LABEL_30;
                }

                v21 = v32;
                v22 = HIWORD(v32);
                if (v32 != HIWORD(v32))
                {
                  v23 = HIWORD(v32) - v32 + 1;
                  if (v29 < v23)
                  {
                    v24 = heap_Realloc(*(a1 + 8), v14, HIWORD(v32) - v32 + 1);
                    if (!v24)
                    {
                      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
LABEL_31:
                      v16 = v6;
                      break;
                    }

                    v21 = v32;
                    v22 = HIWORD(v32);
                    v29 = v23;
                    v14 = v24;
                  }

                  cstdlib_memcpy(v14, (v33 + v21), v22 - v21);
                  v14[HIWORD(v32) - v32] = 0;
                  v25 = cstdlib_strlen(v14);
                  v26 = Utf8_LengthInUtf8chars(v14, v25);
                  if (v26)
                  {
                    v27 = 0;
                    do
                    {
                      utf8_getUTF8Char(v14, v27, __s1);
                      if (!cstdlib_strcmp(__s1, __s2))
                      {
                        ++v18;
                      }

                      v27 += utf8_determineUTF8CharLength(__s1[0]);
                      --v26;
                    }

                    while (v26);
                  }
                }
              }

              v19 = (*(a2 + 120))(a3, a4, v36, &v36);
              if ((v19 & 0x80000000) != 0)
              {
                goto LABEL_30;
              }

              v17 = v36;
              if (!v36)
              {
                if (v18 >= 3u)
                {
                  *a6 = 1;
                }

LABEL_30:
                v6 = v19;
                goto LABEL_31;
              }
            }
          }
        }
      }
    }

LABEL_35:
    heap_Free(*(a1 + 8), v14);
    return v16;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  }

  return v6;
}

uint64_t heapAdjustDown(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (2 * a2) | 1;
  if (v3 < a3)
  {
    v4 = *(result + 8 * a2);
    v5 = 2 * a2;
    v6 = a2;
    do
    {
      if (v3 < a3 - 1)
      {
        v7 = v5 + 2;
        if (*(*(result + 8 * v3) + 2) < *(*(result + 8 * v7) + 2))
        {
          v3 = v7;
        }
      }

      v8 = *(result + 8 * v3);
      if (*(*(result + 8 * v6) + 2) >= *(v8 + 2))
      {
        break;
      }

      *(result + 8 * v6) = v8;
      *(result + 8 * v3) = v4;
      v6 = v3;
      v5 = 2 * v3;
      v3 = v5 | 1;
    }

    while ((v5 | 1u) < a3);
  }

  return result;
}

uint64_t heapPop(uint64_t **a1)
{
  v1 = *(a1 + 4);
  if (!*(a1 + 4))
  {
    return 0;
  }

  if (v1 == 2)
  {
    result = **a1;
    **a1 = (*a1)[1];
    *(a1 + 4) = 1;
  }

  else if (v1 == 1)
  {
    *(a1 + 4) = 0;
    return **a1;
  }

  else
  {
    v4 = **a1;
    **a1 = (*a1)[(v1 - 1)];
    (*a1)[v1 - 1] = v4;
    heapAdjustDown(*a1, 0, (v1 - 1));
    v5 = *(a1 + 4) - 1;
    *(a1 + 4) = v5;
    return (*a1)[v5];
  }

  return result;
}

uint64_t heapAdd(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(*result + 8 * *(result + 8)) = a2;
  *(result + 8) = v2 + 1;
  if (v2)
  {
    v3 = v2 == 0xFFFF;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = result;
    v5 = (v2 + 1) >> 1;
    do
    {
      v6 = v5--;
      result = heapAdjustDown(*v4, v5, *(v4 + 8));
    }

    while (v6 > 1);
  }

  return result;
}

uint64_t astar_search(uint64_t a1, uint64_t *a2, __int16 a3, uint64_t a4, unsigned __int16 *a5, uint64_t *a6)
{
  v8 = a4;
  v12 = *(a1 + 8);
  v13 = a5[1] + 2;
  if (a5[1] == 0xFFFE)
  {
    v18 = 16;
  }

  else
  {
    v14 = 2;
    v15 = 1;
    do
    {
      v16 = v13;
      if (v13)
      {
        v17 = v14;
      }

      else
      {
        v17 = 1;
      }

      v15 *= v17;
      v13 >>= 1;
      v14 *= v14;
    }

    while (v16 > 1);
    v18 = 16 * v15;
  }

  v19 = 2315264010;
  v20 = heap_Alloc(v12, v18);
  if (v20)
  {
    v21 = v20;
    v22 = a5[1] + 2;
    if (a5[1] == 0xFFFE)
    {
      v27 = 8;
    }

    else
    {
      v23 = 2;
      v24 = 1;
      do
      {
        v25 = v22;
        if (v22)
        {
          v26 = v23;
        }

        else
        {
          v26 = 1;
        }

        v24 *= v26;
        v22 >>= 1;
        v23 *= v23;
      }

      while (v25 > 1);
      v27 = 8 * v24;
    }

    v28 = heap_Alloc(*(a1 + 8), v27);
    v41 = v28;
    if (!v28)
    {
      goto LABEL_36;
    }

    v29 = 0;
    v42 = 0;
    *v21 = 0xFFFF;
    *(v21 + 4) = a3 - 1;
    *(v21 + 6) = 0;
    *(v21 + 12) = 0;
    *(v21 + 14) = *a5;
    *(v21 + 8) = 0;
    *v28 = v21;
    v30 = 1;
    LOWORD(v42) = 1;
    do
    {
      v31 = heapPop(&v41);
      v32 = v31;
      if (*(v31 + 4) == v8 && (!v29 || *(v31 + 2) > *(v29 + 2)))
      {
        v29 = v31;
      }

      v33 = 0;
      v34 = 1;
      do
      {
        v35 = v34;
        if (generateNewState(a1, v32, v21 + 16 * v30, v33, a2, v8, a5, a6))
        {
          *(v21 + 16 * v30 + 6) = v30;
          heapAdd(&v41, v21 + 16 * v30++);
        }

        v34 = 0;
        v33 = 1;
      }

      while ((v35 & 1) != 0);
    }

    while (v42);
    if (v29 && *(v29 + 6) >= 1)
    {
      v36 = *(v29 + 6);
      do
      {
        v37 = (v21 + 16 * v36);
        if (!*(v37 + 2))
        {
          *(*a2 + 224 * v37[2] + 73) = 4;
        }

        v38 = *v37;
        v36 = *v37;
      }

      while (v38 > 0);
    }

    v39 = v41;
    heap_Free(*(a1 + 8), v21);
    v19 = 0;
    v21 = v39;
    if (v39)
    {
LABEL_36:
      heap_Free(*(a1 + 8), v21);
    }
  }

  return v19;
}

uint64_t ipow(__int16 a1, unsigned int a2)
{
  v2 = 1;
  if (a2)
  {
    do
    {
      if (a2)
      {
        v3 = a1;
      }

      else
      {
        v3 = 1;
      }

      v2 *= v3;
      a1 *= a1;
      v4 = a2 > 1;
      a2 >>= 1;
    }

    while (v4);
  }

  return v2;
}

_WORD *generateNewState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, unsigned __int16 *a7, uint64_t *a8)
{
  *a3 = *(a2 + 6);
  *(a3 + 8) = a4;
  v8 = *(a2 + 4) + 1;
  *(a3 + 4) = v8;
  if (a6 >= v8)
  {
    v13 = a4;
    v9 = a3;
    v16 = 0;
    v17 = *a5;
    do
    {
      v18 = **(v17 + 224 * v8 + 16);
      v19 = cstdlib_strlen(v18);
      v16 += Utf8_LengthInUtf8chars(v18, v19);
      v17 = *a5;
      v20 = v9[2];
      if (*(*a5 + 224 * v9[2] + 73) == 3)
      {
        break;
      }

      v8 = v20 + 1;
      v9[2] = v20 + 1;
      v20 = (v20 + 1);
    }

    while (v20 <= a6);
    if (v20 > a6)
    {
      v9[2] = a6;
    }

    v9[7] = *(a2 + 14) - v16;
    v21 = *(a2 + 2);
    v9[1] = calculateScore(a1, v13, v9, (*(a2 + 12) + v16), *a7, *(a2 + 8), a8, a5) + v21;
    if (v13)
    {
      if (v13 != 1)
      {
        return v9;
      }

      v22 = *(a2 + 12) + v16;
    }

    else
    {
      v22 = 0;
    }

    v9[6] = v22;
    return v9;
  }

  return 0;
}

uint64_t calculateScore(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, uint64_t *a7, uint64_t a8)
{
  if (a2 == 1 && a4 < 6)
  {
    v10 = 5;
  }

  else
  {
    v10 = 0;
  }

  if (a2 == 0 && a4 > 7)
  {
    v10 += 5;
  }

  v11 = *(a3 + 14);
  if (a2 == 1 && v11 < 6)
  {
    v10 += 10;
  }

  if (a2 == 0 && 1000 * v11 / a5 - 400 < 0xC9)
  {
    v12 = v10 + 5;
  }

  else
  {
    v12 = v10;
  }

  if (a2 == 1 && applyRules(a1, a8, *(a3 + 4), a7) == 1)
  {
    v12 += 20;
  }

  if (a6 | a2)
  {
    return v12;
  }

  else
  {
    return (v12 - 10);
  }
}

uint64_t fe_phrasing_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v37 = 0;
  v38 = 0;
  v36 = 0;
  stress_models = 2315264010;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v32 = 0;
  v31 = -1;
  v30 = 0;
  if (!a5)
  {
    return 2315264007;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v38);
  if ((inited & 0x80000000) == 0)
  {
    inited = InitRsrcFunction(a1, a2, &v37);
    if ((inited & 0x80000000) == 0)
    {
      v12 = heap_Calloc(v38[1], 1, 1728);
      v13 = v38;
      if (!v12 || (v14 = v12, v15 = heap_Calloc(v38[1], 1, 1040), *(v14 + 48) = v15, v13 = v38, !v15))
      {
        log_OutPublic(v13[4], "FE_PHRASING", 37000, 0);
        goto LABEL_46;
      }

      *v14 = v38;
      *(v14 + 8) = a3;
      v16 = v37;
      *(v14 + 16) = a4;
      *(v14 + 24) = v16;
      *(v14 + 32) = a1;
      *(v14 + 40) = a2;
      *v15 = a3;
      v15[1] = a4;
      *(*(v14 + 48) + 1020) = 0;
      *(v14 + 1456) = 0;
      *(v14 + 1520) = 0;
      *(v14 + 1448) = 0;
      *(v14 + 1464) = 0;
      *(v14 + 144) = 0u;
      *(v14 + 136) = 0;
      *(v14 + 1680) = 0;
      *(v14 + 1664) = 0u;
      *(v14 + 1688) = 0u;
      *(v14 + 1704) = safeh_GetNullHandle();
      *(v14 + 1712) = v17;
      *(v14 + 1536) = 0;
      Object = objc_GetObject(v38[6], "LINGDB", &v36);
      if ((Object & 0x80000000) != 0 || (*(v14 + 56) = *(v36 + 8), Object = objc_GetObject(v38[6], "FE_DEPES", &v35), (Object & 0x80000000) != 0) || (v19 = v35, *(v14 + 80) = *(v35 + 8), *(v14 + 64) = *(v19 + 16), Object = objc_GetObject(v38[6], "FE_DCTLKP", &v34), (Object & 0x80000000) != 0) || (v20 = v34, *(v14 + 104) = *(v34 + 8), *(v14 + 88) = *(v20 + 16), *(v14 + 1296) = 0, Object = nn_phrasing_checkIfActive(a3, a4, v38, (v14 + 1296)), (Object & 0x80000000) != 0) || *(v14 + 1296) == 1 && (Object = nn_phrasing_Load(a3, a4, *(v14 + 32), *(v14 + 40), v38, *(v14 + 104), *(v14 + 88), *(v14 + 96), (v14 + 1304)), (Object & 0x80000000) != 0) || (Object = isCorpusAlignmentEnabled(v38, &v33), (Object & 0x80000000) != 0))
      {
LABEL_45:
        stress_models = Object;
        goto LABEL_46;
      }

      if (v33 == 1)
      {
        *(v14 + 160) = 0;
        *(v14 + 116) = 0;
      }

      else
      {
        Object = usePandP(v38, (v14 + 160));
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_45;
        }

        if (*(v14 + 160))
        {
          Object = paramc_ParamSetUInt(v38[5], "prmigactive", 1);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          Object = pandpIgtreeInit(a3, a4, a1, a2, v38, v37, (v14 + 920));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          *(v14 + 600) = 0;
          *(v14 + 608) = 0;
          Object = nuance_pcre_ObjOpen(a3, a4, v14 + 600);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          Object = nuance_pcre_Init(*(v14 + 600), *(v14 + 608), 0x1Eu, 50);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v21 = v38;
          *(v14 + 168) = v38;
          Object = readPandPRules(a3, a4, v21, (v14 + 176));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }
        }

        Object = com_mosynt_UseMosynt(*(v14 + 88), *(v14 + 96), *(v14 + 104), (v14 + 116));
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_45;
        }

        if (*(v14 + 116))
        {
LABEL_30:
          __s1 = 0;
          Object = com_mosynt_GetCfgParamVal(*(v14 + 88), *(v14 + 96), *(v14 + 104), "mosynt_enablegraphsymcache", "yes", &__s1);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v22 = cstdlib_strcmp(__s1, "yes") == 0;
          Object = kbsymtab_LoadData(a3, a4, *(v14 + 32), *(v14 + 40), (v14 + 120), v22);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          Object = accphr_LoadData(a3, a4, (v14 + 128));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

LABEL_33:
          Object = com_IncludeCRF(*(v14 + 88), *(v14 + 96), *(v14 + 104), (v14 + 112));
          if ((Object & 0x80000000) == 0)
          {
            if (!*(v14 + 112) || (v25 = v37, v24 = v38, *(v14 + 168) = v38, Object = pandpCrfInit(a3, a4, a1, a2, v24, v25, *(v14 + 104), v23, *(v14 + 88), *(v14 + 96), v14 + 920), (Object & 0x80000000) == 0))
            {
              (*(*(v14 + 104) + 96))(*(v14 + 88), *(v14 + 96), "fecfg", "statbnd_enable_nnets", &v32, &v31, &v30);
              if (v31 && v32)
              {
                v26 = *v32;
                v26[cstdlib_strlen(*v32) - 1] = 0;
                *(v14 + 1456) = cstdlib_strcmp(*v32, "yes") == 0;
              }

              Object = fe_phrasing_InitNNPhrasing(v14);
              if ((Object & 0x80000000) == 0)
              {
                Object = hlp_useNLUPOSMap(*(v14 + 88), *(v14 + 96), *(v14 + 104), (v14 + 1280));
                if ((Object & 0x80000000) == 0)
                {
                  if (*(v14 + 1280) != 1 || (Object = hlp_loadNLUPOSMap(v38, *(v14 + 104), *(v14 + 88), *(v14 + 96), (v14 + 1288)), (Object & 0x80000000) == 0))
                  {
                    fe_phraseing_tryLoadingIGTree(*(v14 + 8), *(v14 + 16), *(v14 + 32), *(v14 + 40), *v14, (v14 + 1648));
                    stress_models = load_stress_models(*(v14 + 8), *(v14 + 16), *v14, *(v14 + 88), *(v14 + 96), *(v14 + 104), a1, a2, (v14 + 1680), (v14 + 1696), (v14 + 1688), *(v14 + 1464), (v14 + 1472), (v14 + 1704), (v14 + 1720), (v14 + 1684));
                    if ((stress_models & 0x80000000) == 0)
                    {
                      v27 = 62343;
LABEL_47:
                      *a5 = v14;
                      *(a5 + 8) = v27;
                      return stress_models;
                    }

LABEL_46:
                    fe_phrasing_ObjClose(*a5, *(a5 + 8));
                    v14 = 0;
                    v27 = 0;
                    goto LABEL_47;
                  }
                }
              }
            }
          }

          goto LABEL_45;
        }
      }

      Object = paramc_ParamSetUInt(v38[5], "prmigactive", 1);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_45;
      }

      if (!*(v14 + 116))
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }
  }

  return inited;
}

uint64_t isCorpusAlignmentEnabled(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  *a2 = 0;
  result = paramc_ParamGetUInt(*(a1 + 40), "statpos_do_corpus_alignment", &v4);
  if ((result & 0x1FFF) == 0x14)
  {
    return 0;
  }

  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (v4 != 1)
  {
    return 0;
  }

  result = 0;
  *a2 = 1;
  return result;
}

uint64_t fe_phrasing_InitNNPhrasing(void *a1)
{
  v10 = 0;
  v9 = -1;
  v8 = 0;
  if (*(a1 + 364) != 1)
  {
    return 0;
  }

  result = ruleNNInit(a1[1], a1[2], *a1, a1[13], a1[11], a1[12], (a1 + 193), a1 + 780);
  if ((result & 0x80000000) == 0)
  {
    result = initFiModel(*a1, a1[1], a1[2], a1[4], a1[5], a1[11], a1[12], a1[13], a1 + 365, a1 + 181);
    if ((result & 0x80000000) == 0)
    {
      a1[183] = 0;
      a1[184] = safeh_GetNullHandle();
      a1[185] = v3;
      *(a1 + 380) = 1;
      result = loadEmbedding(a1[1], a1[2], a1 + 183, a1 + 184, a1 + 186, a1[11], a1[12], a1[13], a1 + 380);
      if ((result & 0x80000000) == 0)
      {
        v4 = heap_Calloc(*(*a1 + 8), 1, 1776);
        a1[191] = v4;
        if (!v4)
        {
          return 2315264010;
        }

        result = load_pw_cfg(a1[13], a1[11], a1[12], v4, *a1);
        if ((result & 0x80000000) == 0)
        {
          result = getphraseCfg(*a1, a1[13], a1[11], a1[12], a1 + 414, a1 + 208, a1 + 209);
          if ((result & 0x80000000) == 0)
          {
            v7 = 0;
            *(a1 + 381) = 0;
            result = (*(a1[13] + 96))(a1[11], a1[12], "fecfg", "statbnd_nopos", &v10, &v9, &v8);
            if ((result & 0x80000000) == 0)
            {
              if (v9 == 1)
              {
                v5 = *v10;
                v5[cstdlib_strlen(*v10) - 1] = 0;
                if (!cstdlib_strcmp(*v10, "yes"))
                {
                  *(a1 + 381) = 1;
                }
              }

              result = load_pw_igtree_cfg(a1[11], a1[12], a1[13], &v7);
              if ((result & 0x80000000) == 0)
              {
                if (v7)
                {
                  v6 = a1 + 192;
                  result = load_pw_igtree(a1[1], a1[2], *a1, a1 + 192);
                  if ((result & 0x80000000) != 0)
                  {
                    if (*v6)
                    {
                      igtree_Deinit(*a1, *v6);
                      result = 0;
                      a1[192] = 0;
                      return result;
                    }

                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_useNLUPOSMap(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  result = (*(a3 + 96))(a1, a2, "fecfg", "nluposmap", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    if (*&__c[1] != 1 || *&__c[3] == 0)
    {
      return 0;
    }

    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    if (cstdlib_strcmp(**&__c[3], "YES") && cstdlib_strcmp(**&__c[3], "yes"))
    {
      return 0;
    }

    else
    {
      result = 0;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t hlp_loadNLUPOSMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v31 = 0;
  __b = 0u;
  v30 = 0u;
  v10 = (*(a2 + 96))(a3, a4, "fecfg", "nluposmapcounter", &__c[3], &__c[1], __c);
  if ((v10 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v12 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
    }

    v13 = cstdlib_atoi(**&__c[3]);
    if (v13)
    {
      v14 = v13;
      cstdlib_memset(&__b, 0, 0x28uLL);
      *&__b = ssftmap_ElemCopyString;
      *(&v30 + 1) = ssftmap_ElemCopyString;
      *(&__b + 1) = ssftmap_ElemFreeString;
      v31 = ssftmap_ElemFreeString;
      *&v30 = ssftmap_ElemCompareKeysString;
      v15 = *(a1 + 8);
      *__dst = __b;
      v35 = v30;
      v36 = ssftmap_ElemFreeString;
      v16 = ssftmap_ObjOpen(v15, 0, __dst, a5);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = v14;
        v20 = "nluposmap";
        v28 = v19;
        do
        {
          cstdlib_memset(__dst, 0, 0x20uLL);
          cstdlib_strcpy(__dst, v20);
          v21 = LH_itoa(v17, v32, 0xAu);
          cstdlib_strcat(&__dst[9], v21);
          *&__c[1] = -1;
          v10 = (*(a2 + 96))(a3, a4, "fecfg", __dst, &__c[3], &__c[1], __c);
          if ((v10 & 0x80000000) != 0)
          {
            break;
          }

          if (*&__c[1])
          {
            v22 = **&__c[3];
            v23 = cstdlib_strchr(**&__c[3], __c[0]);
            if (v23)
            {
              *v23 = 0;
              v18 = (v23 + 1);
            }

            if (v22)
            {
              v24 = v20;
              while (1)
              {
                v25 = cstdlib_strchr(v22, 124);
                v26 = v25;
                if (v25)
                {
                  *v25 = 0;
                }

                v10 = ssftmap_Insert(*a5, v22, v18);
                if ((v10 & 0x80000000) != 0)
                {
                  return v10;
                }

                v22 = v26 + 1;
                if (!v26)
                {
                  v20 = v24;
                  v19 = v28;
                  break;
                }
              }
            }
          }

          v17 = v17 + 1;
        }

        while (v17 < v19);
      }
    }
  }

  return v10;
}

uint64_t fe_phraseing_tryLoadingIGTree(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  *a6 = 0;
  result = nn_model_getBrokerString(a5, v15, "wprules_", 0x100uLL);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  result = igtree_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, &v14, 2, v15, "IGTR", 1031, 0);
  if ((result & 0x80000000) != 0)
  {
    result = log_OutText(*(a5 + 32), "FE_PHRASING", 3, 0, "failed to read IGtree phrasing model data - going on without");
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = v14;
LABEL_6:
  *a6 = v13;
  return result;
}

uint64_t fe_phrasing_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62343, 1728);
  if ((result & 0x80000000) != 0)
  {
    return 2315264008;
  }

  if (a1)
  {
    if (*(a1 + 40))
    {
      pandpIgtreeDeinit(a1[21], a1[3], a1 + 115);
      freePandPRules(a1 + 22);
    }

    if (*(a1 + 364) == 1)
    {
      v4 = a1[181];
      if (v4)
      {
        if (*v4)
        {
          fi_deinit(*a1, a1[3], *v4);
          v4 = a1[181];
        }

        if (!*(a1 + 365))
        {
          fi_deinit(*a1, a1[3], v4[1]);
          v4 = a1[181];
        }

        heap_Free(*(*a1 + 8), v4);
        a1[181] = 0;
      }

      v5 = a1[183];
      if (v5)
      {
        (*(v5 + 24))(a1[186], a1[187]);
        if (*(a1 + 380))
        {
          (*(a1[183] + 24))(a1[188], a1[189]);
        }

        if (!*(a1 + 420))
        {
          a1[183] = 0;
          objc_UnregisterObject(*(*a1 + 48), "NNWRDLKP");
        }
      }

      v6 = a1[192];
      if (v6)
      {
        igtree_Deinit(*a1, v6);
        heap_Free(*(*a1 + 8), a1[192]);
        a1[192] = 0;
      }

      freeSpRules(*a1, (a1 + 193));
      freePwInObjClose(*a1, a1[191]);
      freeSPPunc(*a1, a1[208]);
      freeSPPunc(*a1, a1[209]);
    }

    if (a1[15])
    {
      kbsymtab_UnloadData(a1[1], a1[2], a1[4], a1[5], a1 + 15);
    }

    if (a1[16])
    {
      accphr_UnloadData(a1[1], a1[2], a1 + 16);
    }

    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[10])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (a1[13])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v7 = a1[6];
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
    }

    if (*(a1 + 28))
    {
      pandpCrfDeinit(a1[21], a1[3], (a1 + 115));
    }

    if (*(a1 + 324) != 1 || (result = nn_phrasing_UnLoad(*a1, a1[3], (a1 + 163)), (result & 0x80000000) == 0))
    {
      if (*(a1 + 320) == 1)
      {
        ssftmap_ObjClose(a1[161]);
      }

      v8 = a1[206];
      if (v8)
      {
        igtree_Deinit_ReadOnly_DereferenceCnt(*a1, a1[3], v8);
        a1[206] = 0;
      }

      if (*(a1 + 420))
      {
        free_stress_model(*a1, a1[3], a1[212], a1[211], a1[183], a1[213], a1[214]);
        a1[212] = 0;
        a1[183] = 0;
        objc_UnregisterObject(*(*a1 + 48), "NNWRDLKP");
      }

      heap_Free(*(*a1 + 8), a1);
      return 0;
    }
  }

  return result;
}

uint64_t fe_phrasing_ObjReopen(void *a1, int a2)
{
  v3 = 2315264006;
  if ((safeh_HandleCheck(a1, a2, 62343, 1728) & 0x80000000) != 0)
  {
    return 2315264008;
  }

  if (a1)
  {
    if (*(a1 + 324) == 1)
    {
      nn_option = nn_phrasing_UnLoad(*a1, a1[3], (a1 + 163));
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }
    }

    *(a1 + 324) = 0;
    nn_option = nn_phrasing_checkIfActive(a1[1], a1[2], *a1, a1 + 324);
    if ((nn_option & 0x80000000) != 0)
    {
      return nn_option;
    }

    if (*(a1 + 324) == 1)
    {
      nn_option = nn_phrasing_Load(a1[1], a1[2], a1[4], a1[5], *a1, a1[13], a1[11], a1[12], a1 + 163);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }
    }

    if (*(a1 + 28))
    {
      pandpCrfDeinit(a1[21], a1[3], (a1 + 115));
    }

    v5 = a1 + 182;
    if (*(a1 + 364))
    {
      freeSpRules(*a1, (a1 + 193));
      v6 = *a1;
      v7 = a1[191];
      *(v7 + 1104) = *a1;
      freePwInObjClose(v6, v7);
      freeSPPunc(*a1, a1[208]);
      freeSPPunc(*a1, a1[209]);
      v8 = a1[192];
      if (v8)
      {
        igtree_Deinit(*a1, v8);
        heap_Free(*(*a1 + 8), a1[192]);
        a1[192] = 0;
      }

      v9 = a1[206];
      if (v9)
      {
        igtree_Deinit_ReadOnly_DereferenceCnt(*a1, a1[3], v9);
        a1[206] = 0;
      }

      if (*(a1 + 420))
      {
        free_stress_model(*a1, a1[3], a1[212], a1[211], a1[183], a1[213], a1[214]);
        *(a1 + 211) = 0u;
      }

      nn_option = load_nn_option(a1, a1 + 364);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }

      if (*v5)
      {
        nn_option = nnEmbeddingReLoad(a1[1], a1[2], a1 + 183, a1 + 184, a1 + 186, a1[11], a1[12], a1[13], a1 + 380);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        nn_option = nnModelReload(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[11], a1[12], a1[13], a1 + 365, a1 + 181);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        nn_option = ruleNNInit(a1[1], a1[2], *a1, a1[13], a1[11], a1[12], (a1 + 193), a1 + 780);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        v10 = heap_Calloc(*(*a1 + 8), 1, 1776);
        a1[191] = v10;
        nn_option = load_pw_cfg(a1[13], a1[11], a1[12], v10, *a1);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        nn_option = getphraseCfg(*a1, a1[13], a1[11], a1[12], a1 + 414, a1 + 208, a1 + 209);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        v26 = 0;
        nn_option = load_pw_igtree_cfg(a1[11], a1[12], a1[13], &v26);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        if (v26)
        {
          v11 = a1 + 192;
          if ((load_pw_igtree(a1[1], a1[2], *a1, a1 + 192) & 0x80000000) != 0)
          {
            if (*v11)
            {
              igtree_Deinit(*a1, *v11);
              a1[192] = 0;
            }
          }
        }

        fe_phraseing_tryLoadingIGTree(a1[1], a1[2], a1[4], a1[5], *a1, a1 + 206);
      }

      else
      {
        nn_option = releaseEmbedding((a1 + 183), a1 + 184, a1 + 186, a1 + 380);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }

        nn_option = releaseFIModel(*a1, a1[3], *(a1 + 365), a1 + 181);
        if ((nn_option & 0x80000000) != 0)
        {
          return nn_option;
        }
      }

      a1[213] = safeh_GetNullHandle();
      a1[214] = v13;
      *(a1 + 420) = 0;
      nn_option = load_stress_models(a1[1], a1[2], *a1, a1[11], a1[12], a1[13], a1[4], a1[5], a1 + 420, a1 + 212, a1 + 211, a1[183], a1 + 184, a1 + 213, a1 + 860, a1 + 421);
    }

    else
    {
      nn_option = load_nn_option(a1, a1 + 364);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }

      if (!*v5)
      {
        goto LABEL_39;
      }

      nn_option = fe_phrasing_InitNNPhrasing(a1);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }

      fe_phraseing_tryLoadingIGTree(a1[1], a1[2], a1[4], a1[5], *a1, a1 + 206);
      a1[213] = safeh_GetNullHandle();
      a1[214] = v12;
      *(a1 + 420) = 0;
      nn_option = load_stress_models(a1[1], a1[2], *a1, a1[11], a1[12], a1[13], a1[4], a1[5], a1 + 420, a1 + 212, a1 + 211, a1[183], a1 + 184, a1 + 213, a1 + 860, a1 + 421);
    }

    if ((nn_option & 0x80000000) != 0)
    {
      return nn_option;
    }

LABEL_39:
    v14 = a1 + 20;
    if (*(a1 + 40) == 1)
    {
      pandpIgtreeDeinit(a1[21], a1[3], a1 + 115);
      freePandPRules(a1 + 22);
    }

    cstdlib_memset(a1 + 22, 0, 0x298uLL);
    nn_option = usePandP(*a1, a1 + 40);
    if ((nn_option & 0x80000000) != 0)
    {
      return nn_option;
    }

    if (*v14 != 1 || (PandPRules = paramc_ParamSetUInt(*(*a1 + 40), "prmigactive", 1), (PandPRules & 0x80000000) == 0) && (PandPRules = pandpIgtreeInit(a1[1], a1[2], a1[4], a1[5], *a1, a1[3], a1 + 115), (PandPRules & 0x80000000) == 0) && (a1[75] = 0, *(a1 + 152) = 0, PandPRules = nuance_pcre_ObjOpen(a1[1], a1[2], (a1 + 75)), (PandPRules & 0x80000000) == 0) && (PandPRules = nuance_pcre_Init(a1[75], a1[76], 0x1Eu, 50), (PandPRules & 0x80000000) == 0) && (v17 = *a1, v16 = a1[1], a1[21] = *a1, PandPRules = readPandPRules(v16, a1[2], v17, a1 + 22), (PandPRules & 0x80000000) == 0))
    {
      v18 = a1 + 29;
      v19 = *(a1 + 29);
      nn_option = com_mosynt_UseMosynt(a1[11], a1[12], a1[13], a1 + 29);
      if ((nn_option & 0x80000000) != 0)
      {
        return nn_option;
      }

      v20 = *v18;
      if (v19 == 1)
      {
        if (v20 == 1)
        {
          goto LABEL_58;
        }

        if (!v20)
        {
          nn_option = paramc_ParamSetUInt(*(*a1 + 40), "prmigactive", 1);
          if ((nn_option & 0x80000000) != 0)
          {
            return nn_option;
          }

          if (a1[15])
          {
            nn_option = kbsymtab_UnloadData(a1[1], a1[2], a1[4], a1[5], a1 + 15);
            a1[15] = 0;
            if ((nn_option & 0x80000000) != 0)
            {
              return nn_option;
            }
          }

          if (a1[16])
          {
            nn_option = accphr_UnloadData(a1[1], a1[2], a1 + 16);
            a1[16] = 0;
            if ((nn_option & 0x80000000) != 0)
            {
              return nn_option;
            }
          }

          if (*v18 == 1)
          {
LABEL_58:
            __s1 = 0;
            if (a1[15])
            {
              nn_option = kbsymtab_UnloadData(a1[1], a1[2], a1[4], a1[5], a1 + 15);
              a1[15] = 0;
              if ((nn_option & 0x80000000) != 0)
              {
                return nn_option;
              }
            }

            if (a1[16])
            {
              nn_option = accphr_UnloadData(a1[1], a1[2], a1 + 16);
              a1[16] = 0;
              if ((nn_option & 0x80000000) != 0)
              {
                return nn_option;
              }
            }

LABEL_66:
            nn_option = com_mosynt_GetCfgParamVal(a1[11], a1[12], a1[13], "mosynt_enablegraphsymcache", "yes", &__s1);
            if ((nn_option & 0x80000000) == 0)
            {
              v21 = cstdlib_strcmp(__s1, "yes") == 0;
              nn_option = kbsymtab_LoadData(a1[1], a1[2], a1[4], a1[5], a1 + 15, v21);
              if ((nn_option & 0x80000000) == 0)
              {
                nn_option = accphr_LoadData(a1[1], a1[2], a1 + 16);
                if ((nn_option & 0x80000000) == 0)
                {
                  goto LABEL_69;
                }
              }
            }

            return nn_option;
          }
        }
      }

      else if (v20 == 1)
      {
        __s1 = 0;
        goto LABEL_66;
      }

LABEL_69:
      nn_option = com_IncludeCRF(a1[11], a1[12], a1[13], a1 + 28);
      if ((nn_option & 0x80000000) == 0)
      {
        if (!*(a1 + 28) || (v22 = *a1, a1[21] = *a1, pandpCrfDeinit(v22, a1[3], (a1 + 115)), nn_option = pandpCrfInit(a1[1], a1[2], a1[4], a1[5], *a1, a1[3], a1[13], v23, a1[11], a1[12], (a1 + 115)), (nn_option & 0x80000000) == 0))
        {
          if (*(a1 + 320) == 1)
          {
            ssftmap_ObjClose(a1[161]);
          }

          nn_option = hlp_useNLUPOSMap(a1[11], a1[12], a1[13], a1 + 320);
          if ((nn_option & 0x80000000) == 0)
          {
            if (*(a1 + 320) != 1)
            {
              return 0;
            }

            return hlp_loadNLUPOSMap(*a1, a1[13], a1[11], a1[12], a1 + 161);
          }
        }
      }

      return nn_option;
    }

    v3 = PandPRules;
    *v14 = 0;
  }

  return v3;
}

uint64_t load_nn_option(void *a1, int *a2)
{
  v9 = 0;
  v8 = -1;
  v7 = 0;
  *a2 = 0;
  v3 = (*(a1[13] + 96))(a1[11], a1[12], "fecfg", "statbnd_enable_nnets", &v9, &v8, &v7);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v8;
    if (v8)
    {
      v5 = *v9;
      v5[cstdlib_strlen(*v9) - 1] = 0;
      v4 = cstdlib_strcmp(*v9, "yes") == 0;
    }

    *a2 = v4;
  }

  return v3;
}

uint64_t fe_phrasing_ProcessStart(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62343, 1728);
  if ((result & 0x80000000) != 0)
  {
    return 2315264008;
  }

  if (*(a1 + 160))
  {
    v4 = *a1;
    v5 = *(a1 + 96);
    v6 = *(a1 + 104);
    v7 = *(a1 + 88);

    return setParams(v4, v7, v5, v6, a1 + 176);
  }

  return result;
}

uint64_t fe_phrasing_Process_PandP(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 62343, 1728) & 0x80000000) != 0)
  {
    return 2315264008;
  }

  *a5 = 1;
  SentenceData = getSentenceData(*a1, *(a1 + 48), *(a1 + 56), a3, a4, a1 + 168, *(a1 + 120), 0);
  if ((SentenceData & 0x80000000) == 0 && *(a1 + 848))
  {
    ProsodicStructure = getProsodicStructure((a1 + 168));
    if ((ProsodicStructure & 0x80000000) == 0)
    {
      ProsodicStructure = getProminence(a1 + 168);
      if ((ProsodicStructure & 0x80000000) == 0)
      {
        ProsodicStructure = updateLingdb(*(a1 + 56), a3, a4, a1 + 168);
      }
    }

    SentenceData = ProsodicStructure;
  }

  freeSentenceData(a1 + 168);
  freeProsodicStructure((a1 + 168));
  return SentenceData;
}

uint64_t fe_phrasing_Process_Mosynt(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v22 = 0;
  PhrasingOutput = 2315264010;
  if ((safeh_HandleCheck(a1, a2, 62343, 1728) & 0x80000000) != 0)
  {
    return 2315264008;
  }

  v24 = 0;
  __s = 0;
  v23 = 0;
  *a5 = 1;
  v10 = (*(a1[7] + 104))(a3, a4, 1, 0, &v23 + 2);
  if ((v10 & 0x80000000) == 0 && ((*(a1[7] + 184))(a3, a4, HIWORD(v23), 0, &v22) & 0x80000000) == 0 && v22 == 1)
  {
    v10 = (*(a1[7] + 176))(a3, a4, HIWORD(v23), 0, &__s, &v23);
    if ((v10 & 0x80000000) == 0 && v23 >= 2u)
    {
      v11 = cstdlib_strlen(__s);
      v12 = heap_Alloc(*(*a1 + 8), v11 + 1);
      if (v12)
      {
        v13 = v12;
        cstdlib_memset(v12, 32, v11);
        *(v13 + v11) = 0;
        v14 = (*(a1[7] + 176))(a3, a4, HIWORD(v23), 2, &v24, &v23);
        if ((v14 & 0x80000000) != 0)
        {
          PhrasingOutput = v14;
          goto LABEL_29;
        }

        v15 = heap_Alloc(*(*a1 + 8), 32);
        if (!v15)
        {
          log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
          goto LABEL_29;
        }

        v16 = v15;
        cstdlib_memset(v15, 0, 0x20uLL);
        started = mosynt_StartAccentPhrasing(a1[6], a1[11], a1[12], a1[13], a1[15], a1[16], v16);
        if ((started & 0x80000000) == 0)
        {
          started = fe_phrasing_mosynt_SetupInput(a1, a3, a4, HIWORD(v23), v16);
          if ((started & 0x80000000) == 0)
          {
            mosynt_DoAccentPhrasing(a1[6], v16, v24);
            if ((started & 0x80000000) == 0)
            {
              started = fe_phrasing_mosynt_SetProminenceValues(a1, a3, a4, HIWORD(v23), v16);
              if ((started & 0x80000000) == 0)
              {
                v21 = 0;
                started = fe_phrasing_mosynt_DeleteAuxWords(a1, a3, a4, HIWORD(v23), v13, &v21);
                if ((started & 0x80000000) == 0)
                {
                  v19 = 0;
                  started = fe_phrasing_mosynt_SplitWords(a1, a3, a4, HIWORD(v23), v13, &v19);
                  if ((started & 0x80000000) == 0)
                  {
                    v20 = 0;
                    started = fe_phrasing_mosynt_MeltClitics(a1, a3, a4, HIWORD(v23), v13, &v20);
                    if ((started & 0x80000000) == 0)
                    {
                      PhrasingOutput = fe_phrasing_mosynt_CreatePhrasingOutput(a1, a3, a4, HIWORD(v23), v16);
                      if ((PhrasingOutput & 0x80000000) != 0 || !v19 && !v21 && !v20)
                      {
                        goto LABEL_23;
                      }

                      started = fe_phrasing_mosynt_AdjustSentenceAndMarkers(a1, a3, a4, HIWORD(v23), v11, (v19 + v11 - (v21 + v20)), v13);
                    }
                  }
                }
              }
            }
          }
        }

        PhrasingOutput = started;
LABEL_23:
        mosynt_FinishAccentPhrasing(a1[6], v16);
        heap_Free(*(*a1 + 8), v16);
LABEL_29:
        heap_Free(*(*a1 + 8), v13);
        return PhrasingOutput;
      }

      log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
      return 2315264010;
    }
  }

  return v10;
}

uint64_t fe_phrasing_mosynt_SetupInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v20 = 0;
  v17 = 0;
  __s = 0;
  result = (*(*(a1 + 56) + 176))(a2, a3, a4, 0, &v17, &v23);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v23 + 2);
    if ((result & 0x80000000) == 0)
    {
      v21 = 0;
      v11 = HIWORD(v23);
      if (HIWORD(v23))
      {
        v12 = 0;
        v13 = 0;
        v19 = 0;
        while (1)
        {
          result = (*(*(a1 + 56) + 168))(a2, a3, v11, 0, 1, &v22[1], &v23);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (*&v22[1] <= 0xAu && ((1 << SLOBYTE(v22[1])) & 0x610) != 0)
          {
            result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v23), 1, 1, v22, &v23);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v23), 2, 1, &v21, &v23);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v23), 3, &__s, &v23);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v12)
            {
              result = hlp_ReadSildur(a1, a2, a3, v12, &v20, &v19);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (v19 && v20)
              {
                mosynt_InsertAccPhrPunct(*(a1 + 48), a5, (v13 + 1), 44);
              }
            }

            mosynt_InsertAccPhrTermWord(*(a1 + 48), a5, v22[0], v21 + 1, HIWORD(v23), __s);
            if (v21)
            {
              v15 = *(v17 + v21 - 1);
              if (mosynt_IsPunctChar(*(a1 + 48), a5, v15))
              {
                mosynt_InsertAccPhrPunct(*(a1 + 48), a5, v21 + 1, v15);
              }

              v13 = v21;
              if (v21)
              {
                if (!*(v17 + v21))
                {
                  IsPunctChar = mosynt_IsPunctChar(*(a1 + 48), a5, *(v17 + v21 - 1));
                  v13 = v21;
                  if (!IsPunctChar)
                  {
                    mosynt_InsertAccPhrPunct(*(a1 + 48), a5, v21 + 1, 46);
                    v13 = v21;
                  }
                }
              }
            }

            else
            {
              v13 = 0;
            }

            v12 = HIWORD(v23);
          }

          result = (*(*(a1 + 56) + 120))(a2, a3);
          if ((result & 0x80000000) == 0)
          {
            v11 = HIWORD(v23);
            if (HIWORD(v23))
            {
              continue;
            }
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t fe_phrasing_mosynt_SetProminenceValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  result = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v19);
  if ((result & 0x80000000) == 0)
  {
    for (i = v19; v19; i = v19)
    {
      result = (*(*(a1 + 56) + 168))(a2, a3, i, 0, 1, &v17, &v18);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (v17 <= 0xA && ((1 << v17) & 0x610) != 0)
      {
        result = (*(*(a1 + 56) + 168))(a2, a3, v19, 1, 1, &v16 + 2, &v18);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosynt_GetWordProminence(*(a1 + 48), a5, HIWORD(v16), &v16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        LH_itoa(v16, __s, 0xAu);
        v12 = *(*(a1 + 56) + 160);
        v13 = v19;
        v14 = cstdlib_strlen(__s);
        result = v12(a2, a3, v13, 13, (v14 + 1), __s, &v15);
        if ((result & 0x80000000) != 0)
        {
          break;
        }
      }

      result = (*(*(a1 + 56) + 120))(a2, a3, v19, &v19);
      if ((result & 0x80000000) != 0)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t fe_phrasing_mosynt_DeleteAuxWords(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  __s1 = 0;
  v31 = 0;
  *a6 = 0;
  v12 = (*(a1[7] + 176))(a2, a3, a4, 0, &v32, &v37);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = (*(a1[7] + 104))(a2, a3, 2, a4, &v37 + 2);
  if ((v13 & 0x80000000) == 0 && HIWORD(v37))
  {
    v12 = (*(a1[7] + 168))(a2, a3);
    if ((v12 & 0x80000000) == 0)
    {
      v14 = 0;
      while (1)
      {
        if (v35 > 0xA || ((1 << v35) & 0x610) == 0)
        {
          goto LABEL_18;
        }

        v16 = (*(a1[7] + 168))(a2, a3, HIWORD(v37), 1, 1, &v34 + 2, &v37);
        if ((v16 & 0x80000000) != 0 || (v16 = (*(a1[7] + 168))(a2, a3, HIWORD(v37), 2, 1, &v34, &v37), (v16 & 0x80000000) != 0) || (v16 = (*(a1[7] + 176))(a2, a3, HIWORD(v37), 3, &__s1, &v37), (v16 & 0x80000000) != 0))
        {
LABEL_38:
          v13 = v16;
LABEL_39:
          if (!v14)
          {
            return v13;
          }

LABEL_40:
          heap_Free(*(*a1 + 8), v14);
          return v13;
        }

        if (!cstdlib_strstr(__s1, "{DEL}"))
        {
          goto LABEL_18;
        }

        v16 = (*(a1[7] + 312))(a2, a3, HIWORD(v34), &v31);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_38;
        }

        if (v31)
        {
          break;
        }

        v23 = HIWORD(v34);
        v24 = v34;
        if (HIWORD(v34) < v34)
        {
          v25 = (a5 + HIWORD(v34));
          v26 = v34 - HIWORD(v34);
          do
          {
            *v25++ = 100;
            ++*a6;
            --v26;
          }

          while (v26);
        }

        v22 = HIWORD(v37);
        v27 = *(v32 + v24);
        if (v27 == 95 || v27 == 32)
        {
          v28 = (a5 + v24);
        }

        else
        {
          if (!v23)
          {
            goto LABEL_19;
          }

          v29 = *(v32 + (v23 - 1));
          if (v29 != 95 && v29 != 32)
          {
            goto LABEL_19;
          }

          v28 = (a5 - 1 + v23);
        }

        *v28 = 100;
        ++*a6;
LABEL_19:
        v13 = (*(a1[7] + 120))(a2, a3, HIWORD(v37), &v37 + 2);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_39;
        }

        if (v22)
        {
          v13 = (*(a1[7] + 192))(a2, a3, v22);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_39;
          }
        }

        if (!HIWORD(v37))
        {
          goto LABEL_39;
        }

        v16 = (*(a1[7] + 168))(a2, a3);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_38;
        }
      }

      v17 = heap_Alloc(*(*a1 + 8), 5000);
      if (!v17)
      {
        log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
        return 2315264010;
      }

      v14 = v17;
      cstdlib_strcpy(v17, __s1);
      mosynt_RemoveAllSubstrOcc(v14, "{DEL}");
      v18 = *(a1[7] + 160);
      v19 = HIWORD(v37);
      v20 = cstdlib_strlen(v14);
      v21 = v18(a2, a3, v19, 3, (v20 + 1), v14, &v36);
      if ((v21 & 0x80000000) != 0)
      {
        v13 = v21;
        goto LABEL_40;
      }

LABEL_18:
      v22 = 0;
      goto LABEL_19;
    }

    return v12;
  }

  return v13;
}

uint64_t fe_phrasing_mosynt_SplitWords(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v89 = 0;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  __s = 0;
  v77 = 0;
  *a6 = 0;
  if ((com_crf_GetCfgParamVal(a1[11], a1[12], a1[13], "fephrase_max_utf8_sym", "5", &v77) & 0x80000000) != 0)
  {
    v12 = 5;
  }

  else
  {
    v12 = cstdlib_atoi(v77);
  }

  v13 = heap_Alloc(*(*a1 + 8), v12);
  v14 = *a1;
  if (v13)
  {
    v15 = v13;
    v16 = heap_Alloc(*(v14 + 8), 5000);
    if (v16)
    {
      v17 = v16;
      UTF8Char = (*(a1[7] + 176))(a2, a3, a4, 0, &v84, &v89);
      if ((UTF8Char & 0x80000000) != 0)
      {
LABEL_105:
        v19 = UTF8Char;
      }

      else
      {
        v19 = (*(a1[7] + 104))(a2, a3, 2, a4, &v89 + 2);
        if ((v19 & 0x80000000) == 0)
        {
          v20 = HIWORD(v89);
          if (HIWORD(v89))
          {
            v65 = a5;
            while (1)
            {
              UTF8Char = (*(a1[7] + 168))(a2, a3, v20, 0, 1, &v87, &v89);
              if ((UTF8Char & 0x80000000) != 0)
              {
                goto LABEL_105;
              }

              if (v87 <= 0xA && ((1 << v87) & 0x610) != 0)
              {
                UTF8Char = (*(a1[7] + 168))(a2, a3, HIWORD(v89), 1, 1, &v86 + 2, &v89);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                UTF8Char = (*(a1[7] + 168))(a2, a3, HIWORD(v89), 2, 1, &v86, &v89);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                UTF8Char = (*(a1[7] + 176))(a2, a3, HIWORD(v89), 3, &v85, &v89);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                v79 = 0;
                v22 = cstdlib_strstr(v85, "{SEP");
                if (!v22)
                {
                  v30 = 0;
LABEL_72:
                  if (v22)
                  {
                    v81 = 0;
                    mosynt_App(v17, 5000, &v81, v85, &v82);
                    v81 = v30;
                    v37 = cstdlib_strlen("{SEP");
                    mosynt_App(v17, 5000, &v81, &v22[v37 + 2], &v82);
                    v38 = *(a1[7] + 160);
                    v39 = HIWORD(v89);
                    v40 = cstdlib_strlen(v17);
                    UTF8Char = v38(a2, a3, v39, 3, (v40 + 1), v17, &v88);
                    if ((UTF8Char & 0x80000000) != 0)
                    {
                      goto LABEL_105;
                    }
                  }

                  goto LABEL_100;
                }

                UTF8Char = (*(a1[7] + 312))(a2, a3, HIWORD(v86), &v79);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                v23 = v22[4];
                if ((v23 - 48) <= 9 && v22[5] == 125 && v22[6])
                {
                  v24 = (v22 - v85);
                  v68 = v23 & 0xF;
                }

                else
                {
                  v68 = 0;
                  v24 = 0;
                }

                v25 = HIWORD(v86);
                UTF8Char = utf8_getUTF8Char(v84, HIWORD(v86), v15);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                v70 = v24;
                v66 = v17;
                if (v25 >= v86)
                {
                  v26 = 0;
                  v28 = 0;
                }

                else
                {
                  v26 = 0;
                  do
                  {
                    v27 = *v15 && v68 > v26;
                    v28 = !v27;
                    if (!v27)
                    {
                      break;
                    }

                    v25 += cstdlib_strlen(v15);
                    v29 = utf8_getUTF8Char(v84, v25, v15);
                    if ((v29 & 0x80000000) != 0)
                    {
LABEL_109:
                      v19 = v29;
                      v17 = v66;
                      goto LABEL_106;
                    }

                    ++v26;
                    while (!cstdlib_strcmp(v15, "-"))
                    {
                      v25 += cstdlib_strlen(v15);
                      v29 = utf8_getUTF8Char(v84, v25, v15);
                      if ((v29 & 0x80000000) != 0)
                      {
                        goto LABEL_109;
                      }
                    }
                  }

                  while (v86 > v25);
                }

                if (v68 == v26)
                {
                  v31 = !v28;
                  if (HIWORD(v86) >= v25)
                  {
                    v31 = 1;
                  }

                  if (v31)
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = (v25 - HIWORD(v86));
                  }
                }

                else
                {
                  v32 = 0;
                }

                v17 = v66;
                v30 = v70;
                if (!v32 || v79 || !v70)
                {
                  goto LABEL_72;
                }

                v74 = 0;
                v75 = 0;
                v73 = 0;
                v33 = (*(a1[7] + 184))(a2, a3, HIWORD(v89), 14, &v89) >= 0 && v89 == 1;
                v34 = v33;
                if (v33)
                {
                  UTF8Char = (*(a1[7] + 176))(a2, a3, HIWORD(v89), 14, &v75, &v89);
                  if ((UTF8Char & 0x80000000) != 0)
                  {
                    goto LABEL_105;
                  }

                  hlp_NLUStrFind(v75, "POS", &v74, &v73);
                }

                HIWORD(v80) = HIWORD(v89);
                v35 = HIWORD(v89);
                LOWORD(v80) = HIWORD(v86);
                if (HIWORD(v89))
                {
                  while (1)
                  {
                    v36 = v35;
                    UTF8Char = (*(a1[7] + 120))(a2, a3, v35, &v80 + 2);
                    if ((UTF8Char & 0x80000000) != 0)
                    {
                      goto LABEL_105;
                    }

                    if (!HIWORD(v80))
                    {
                      goto LABEL_76;
                    }

                    UTF8Char = (*(a1[7] + 168))(a2, a3);
                    if ((UTF8Char & 0x80000000) != 0)
                    {
                      goto LABEL_105;
                    }

                    v35 = HIWORD(v80);
                    if (!HIWORD(v80) || v80 != HIWORD(v86))
                    {
                      goto LABEL_76;
                    }
                  }
                }

                v36 = 0;
LABEL_76:
                UTF8Char = (*(a1[7] + 80))(a2, a3, v36, &v83);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                hlp_CopyWordRec(a1, a2, a3, HIWORD(v89), v83);
                v41 = v86;
                LOWORD(v86) = HIWORD(v86) + v32;
                UTF8Char = (*(a1[7] + 160))(a2, a3, HIWORD(v89), 2, 1, &v86, &v88);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                UTF8Char = (*(a1[7] + 160))(a2, a3, v83, 1, 1, &v86, &v88);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                v69 = v41;
                if (v73)
                {
                  v42 = v34;
                }

                else
                {
                  v42 = 0;
                }

                v43 = v70;
                if (v42 == 1)
                {
                  *v71 = 0;
                  *v72 = 0;
                  UTF8Char = hlp_splitNLURangeTags(a1, v75, v72, v71);
                  if ((UTF8Char & 0x80000000) != 0)
                  {
                    goto LABEL_105;
                  }

                  SubPosForSEPX = hlp_GetSubPosForSEPX(a1, HIWORD(v86), v86, v84, v74, v73, 0, &__s);
                  v45 = __s;
                  if ((SubPosForSEPX & 0x80000000) != 0)
                  {
                    goto LABEL_110;
                  }

                  v46 = *v72;
                  hlp_NLUStrSet(*v72, "POS", __s);
                  v47 = *(a1[7] + 160);
                  v48 = HIWORD(v89);
                  v49 = cstdlib_strlen(v46);
                  v67 = v46;
                  SubPosForSEPX = v47(a2, a3, v48, 14, (v49 + 1), v46, &v88);
                  if ((SubPosForSEPX & 0x80000000) != 0)
                  {
                    goto LABEL_110;
                  }

                  if (v45)
                  {
                    heap_Free(*(*a1 + 8), v45);
                    __s = 0;
                  }

                  SubPosForSEPX = hlp_GetSubPosForSEPX(a1, v86, v69, v84, v74, v73, 1, &__s);
                  v45 = __s;
                  if ((SubPosForSEPX & 0x80000000) != 0 || (v50 = *v71, hlp_NLUStrSet(*v71, "POS", __s), v51 = *(a1[7] + 160), v52 = v83, v53 = cstdlib_strlen(v50), SubPosForSEPX = v51(a2, a3, v52, 14, (v53 + 1), v50, &v88), (SubPosForSEPX & 0x80000000) != 0))
                  {
LABEL_110:
                    v19 = SubPosForSEPX;
                    if (v45)
                    {
                      heap_Free(*(*a1 + 8), v45);
                    }

                    break;
                  }

                  if (v45)
                  {
                    heap_Free(*(*a1 + 8), v45);
                    __s = 0;
                  }

                  v43 = v70;
                  if (v67)
                  {
                    heap_Free(*(*a1 + 8), v67);
                  }

                  if (v50)
                  {
                    heap_Free(*(*a1 + 8), v50);
                  }
                }

                v81 = 0;
                mosynt_App(v17, 5000, &v81, v85, &v82);
                v17[v43] = 0;
                v54 = *(a1[7] + 160);
                v55 = HIWORD(v89);
                v56 = cstdlib_strlen(v17);
                UTF8Char = v54(a2, a3, v55, 3, (v56 + 1), v17, &v88);
                if ((UTF8Char & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }

                v57 = v17;
                v58 = v85;
                v59 = &v58[cstdlib_strlen("{SEP") + v43];
                v60 = *(a1[7] + 160);
                v61 = v83;
                v62 = cstdlib_strlen(v59 + 2);
                v63 = v60(a2, a3, v61, 3, (v62 + 1), v59 + 2, &v88);
                if ((v63 & 0x80000000) != 0 || (v63 = (*(a1[7] + 160))(a2, a3, HIWORD(v89), 8, 1, &v78, &v88), (v63 & 0x80000000) != 0))
                {
                  v19 = v63;
                  v17 = v57;
                  break;
                }

                *(v65 + v86) = 105;
                ++*a6;
                v17 = v57;
              }

LABEL_100:
              v19 = (*(a1[7] + 120))(a2, a3, HIWORD(v89), &v89 + 2);
              if ((v19 & 0x80000000) == 0)
              {
                v20 = HIWORD(v89);
                if (HIWORD(v89))
                {
                  continue;
                }
              }

              break;
            }
          }
        }
      }

LABEL_106:
      heap_Free(*(*a1 + 8), v17);
    }

    else
    {
      v19 = 2315264010;
      log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
    }

    heap_Free(*(*a1 + 8), v15);
  }

  else
  {
    v19 = 2315264010;
    log_OutPublic(*(v14 + 32), "FE_PHRASING", 37000, 0);
  }

  return v19;
}

uint64_t fe_phrasing_mosynt_MeltClitics(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v49 = 0;
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v43 = 0;
  __s1 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  *a6 = 0;
  v12 = (*(a1[7] + 176))(a2, a3, a4, 0, &v40, &v49);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = heap_Alloc(*(*a1 + 8), 5000);
  if (v13)
  {
    v14 = v13;
    v45 = 0;
    v15 = (*(a1[7] + 104))(a2, a3, 2, a4, &v49 + 2);
    if ((v15 & 0x80000000) == 0)
    {
      v37 = a6;
      if (HIWORD(v49))
      {
        v16 = (*(a1[7] + 168))(a2, a3);
        if ((v16 & 0x80000000) == 0)
        {
          v38 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v36 = a5 - 1;
          do
          {
            if (v47 > 0xA || ((1 << v47) & 0x610) == 0)
            {
              v25 = v19;
              v26 = 0;
              v27 = HIWORD(v49);
              v23 = v17;
            }

            else
            {
              v16 = (*(a1[7] + 168))(a2, a3, HIWORD(v49), 1, 1, &v46 + 2, &v49);
              if ((v16 & 0x80000000) != 0)
              {
                break;
              }

              v16 = (*(a1[7] + 168))(a2, a3, HIWORD(v49), 2, 1, &v46, &v49);
              if ((v16 & 0x80000000) != 0)
              {
                break;
              }

              v16 = (*(a1[7] + 176))(a2, a3, HIWORD(v49), 3, &__s1, &v49);
              if ((v16 & 0x80000000) != 0)
              {
                break;
              }

              v16 = (*(a1[7] + 312))(a2, a3, HIWORD(v46), &v42);
              if ((v16 & 0x80000000) != 0)
              {
                break;
              }

              if (cstdlib_strstr(__s1, "{"))
              {
                v21 = cstdlib_strstr(__s1, "{LPC}") != 0;
                v22 = cstdlib_strstr(__s1, "{LEC}") != 0;
                v39 = cstdlib_strstr(__s1, "{RPC}") != 0;
                v23 = cstdlib_strstr(__s1, "{REC}") != 0;
                if (cstdlib_strstr(__s1, "{LPCC}") && HIWORD(v46) && *(v40 + HIWORD(v46) - 1) == 95)
                {
                  v21 = 1;
                }

                if (cstdlib_strstr(__s1, "{LECC}") && HIWORD(v46) && *(v40 + HIWORD(v46) - 1) == 95)
                {
                  v22 = 1;
                }

                if (cstdlib_strstr(__s1, "{RPCC}"))
                {
                  v24 = v39;
                  if (*(v40 + v46) == 95)
                  {
                    v24 = 1;
                  }

                  v39 = v24;
                }

                if (cstdlib_strstr(__s1, "{RECC}"))
                {
                  if (*(v40 + v46) == 95)
                  {
                    v23 = 1;
                  }

                  else
                  {
                    v23 = v23;
                  }
                }
              }

              else
              {
                v21 = 0;
                v22 = 0;
                v39 = 0;
                v23 = 0;
              }

              if (v19 && (v28 = v21 || v18, v28 | v22 | v17))
              {
                v16 = (*(a1[7] + 168))(a2, a3, v19, 1, 1, &v45, &v49);
                if ((v16 & 0x80000000) != 0)
                {
                  break;
                }

                v16 = (*(a1[7] + 176))(a2, a3, v19, 3, &v43, &v49);
                if ((v16 & 0x80000000) != 0)
                {
                  break;
                }

                if (v28 && !v38 && !v42)
                {
                  hlp_CopyWordRec(a1, a2, a3, HIWORD(v49), v19);
                }

                HIDWORD(v42) = 0;
                mosynt_App(v14, 5000, &v42 + 1, v43, &v41);
                if (!(v38 | v42))
                {
                  mosynt_App(v14, 5000, &v42 + 1, __s1, &v41);
                }

                mosynt_RemoveAllSubstrOcc(v14, "{LEC}");
                mosynt_RemoveAllSubstrOcc(v14, "{LPC}");
                mosynt_RemoveAllSubstrOcc(v14, "{RPC}");
                mosynt_RemoveAllSubstrOcc(v14, "{REC}");
                mosynt_RemoveAllSubstrOcc(v14, "{LECC}");
                mosynt_RemoveAllSubstrOcc(v14, "{LPCC}");
                mosynt_RemoveAllSubstrOcc(v14, "{RPCC}");
                mosynt_RemoveAllSubstrOcc(v14, "{RECC}");
                v29 = *(a1[7] + 160);
                v30 = cstdlib_strlen(v14);
                v16 = v29(a2, a3, v19, 3, (v30 + 1), v14, &v48);
                if ((v16 & 0x80000000) != 0)
                {
                  break;
                }

                if (v38 | v42)
                {
                  v31 = v22;
                  v25 = v19;
                  v26 = 0;
                  v18 = v39;
                }

                else
                {
                  v16 = (*(a1[7] + 160))(a2, a3, v19, 1, 1, &v45, &v48);
                  v18 = v39;
                  if ((v16 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v16 = (*(a1[7] + 160))(a2, a3, v19, 2, 1, &v46, &v48);
                  if ((v16 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v31 = v22;
                  v25 = v19;
                  *(v36 + HIWORD(v46)) = 100;
                  ++*v37;
                  v26 = HIWORD(v49);
                }
              }

              else
              {
                v31 = v22;
                v25 = v19;
                v26 = 0;
                v18 = v39;
              }

              v27 = v26;
              if (v26 != HIWORD(v49))
              {
                if ((v31 || v21) | v18 | v23)
                {
                  HIDWORD(v42) = 0;
                  mosynt_App(v14, 5000, &v42 + 1, __s1, &v41);
                  mosynt_RemoveAllSubstrOcc(v14, "{LEC}");
                  mosynt_RemoveAllSubstrOcc(v14, "{LPC}");
                  mosynt_RemoveAllSubstrOcc(v14, "{RPC}");
                  mosynt_RemoveAllSubstrOcc(v14, "{REC}");
                  mosynt_RemoveAllSubstrOcc(v14, "{LECC}");
                  mosynt_RemoveAllSubstrOcc(v14, "{LPCC}");
                  mosynt_RemoveAllSubstrOcc(v14, "{RPCC}");
                  mosynt_RemoveAllSubstrOcc(v14, "{RECC}");
                  v32 = *(a1[7] + 160);
                  v33 = HIWORD(v49);
                  v34 = cstdlib_strlen(v14);
                  v16 = v32(a2, a3, v33, 3, (v34 + 1), v14, &v48);
                  if ((v16 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v27 = HIWORD(v49);
                  v25 = HIWORD(v49);
                  v18 = v39;
                }

                else
                {
                  v27 = HIWORD(v49);
                  v25 = HIWORD(v49);
                }
              }

              v38 = v42;
            }

            v15 = (*(a1[7] + 120))(a2, a3, v27, &v49 + 2);
            if ((v15 & 0x80000000) != 0)
            {
              goto LABEL_63;
            }

            if (v26)
            {
              v15 = (*(a1[7] + 192))(a2, a3, v26);
              if ((v15 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }
            }

            if (!HIWORD(v49))
            {
              goto LABEL_63;
            }

            v16 = (*(a1[7] + 168))(a2, a3);
            v17 = v23;
            v19 = v25;
          }

          while ((v16 & 0x80000000) == 0);
        }

        v15 = v16;
      }
    }

LABEL_63:
    heap_Free(*(*a1 + 8), v14);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  return v15;
}

uint64_t fe_phrasing_mosynt_CreatePhrasingOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v24 = 0;
  v25 = 0;
  __s = 0;
  PhraseInfo = (*(*(a1 + 56) + 176))(a2, a3, a4, 0, &__s, &v28);
  if ((PhraseInfo & 0x80000000) != 0)
  {
    return PhraseInfo;
  }

  v11 = (*(*(a1 + 56) + 104))(a2, a3, 2, a4, &v28 + 2);
  if ((v11 & 0x80000000) == 0)
  {
    v26 = 0;
    cstdlib_strcpy(__dst, "");
    v23 = 0;
    v12 = HIWORD(v28);
    if (HIWORD(v28))
    {
      v13 = 0;
      v14 = 0;
      while (1)
      {
        PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, v12, 0, 1, &v27, &v28);
        if ((PhraseInfo & 0x80000000) != 0)
        {
          return PhraseInfo;
        }

        if (v27 <= 0xA && ((1 << v27) & 0x610) != 0)
        {
          PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v28), 1, 1, &v26 + 2, &v28);
          if ((PhraseInfo & 0x80000000) != 0)
          {
            return PhraseInfo;
          }

          PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v28), 2, 1, &v26, &v28);
          if ((PhraseInfo & 0x80000000) != 0)
          {
            return PhraseInfo;
          }

          v23 = 0;
          if (v14)
          {
            PhraseInfo = (*(*(a1 + 56) + 168))(a2, a3, v14, 2, 1, &v23, &v28);
            if ((PhraseInfo & 0x80000000) != 0)
            {
              return PhraseInfo;
            }
          }

          HIWORD(v25) = 0;
          cstdlib_strcpy(__dst, "");
          v16 = v23;
          if (v23 <= HIWORD(v26))
          {
            do
            {
              PhraseInfo = mosynt_GetPhraseInfo(*(a1 + 48), a5, v16, &v25, __s1, 10);
              if ((PhraseInfo & 0x80000000) != 0)
              {
                return PhraseInfo;
              }

              if (cstdlib_strcmp(__s1, ""))
              {
                cstdlib_strcpy(__dst, __s1);
                if ((HIWORD(v25) - 1) >= v25)
                {
                  HIWORD(v25) = v25;
                }
              }
            }

            while (HIWORD(v26) >= ++v16);
          }

          if (cstdlib_strcmp(__dst, ""))
          {
            if (v13)
            {
              PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, v13, 2, 1, &v26 + 2, &v24);
              if ((PhraseInfo & 0x80000000) != 0)
              {
                return PhraseInfo;
              }
            }

            PhraseInfo = (*(*(a1 + 56) + 88))(a2, a3, HIWORD(v28), &v24 + 2);
            if ((PhraseInfo & 0x80000000) != 0)
            {
              return PhraseInfo;
            }

            v13 = HIWORD(v24);
            v27 = 15;
            PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v24), 0, 1, &v27, &v24);
            if ((PhraseInfo & 0x80000000) != 0)
            {
              return PhraseInfo;
            }

            PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v24), 1, 1, &v26 + 2, &v24);
            if ((PhraseInfo & 0x80000000) != 0)
            {
              return PhraseInfo;
            }

            v17 = *(*(a1 + 56) + 160);
            v18 = HIWORD(v24);
            v19 = cstdlib_strlen(__dst);
            PhraseInfo = v17(a2, a3, v18, 4, (v19 + 1), __dst, &v24);
            if ((PhraseInfo & 0x80000000) != 0)
            {
              return PhraseInfo;
            }

            PhraseInfo = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v24), 7, 1, &v25 + 2, &v24);
            if ((PhraseInfo & 0x80000000) != 0)
            {
              return PhraseInfo;
            }
          }

          v14 = HIWORD(v28);
        }

        v11 = (*(*(a1 + 56) + 120))(a2, a3);
        if ((v11 & 0x80000000) != 0)
        {
          return v11;
        }

        v12 = HIWORD(v28);
        if (!HIWORD(v28))
        {
          if (v13)
          {
            v11 = (*(*(a1 + 56) + 160))(a2, a3, v13, 2, 1, &v26, &v24);
            if ((v11 & 0x80000000) != 0)
            {
              return v11;
            }
          }

          break;
        }
      }
    }

    if (!cstdlib_strcmp(__dst, "W") || !cstdlib_strcmp(__dst, "AF"))
    {
      v20 = cstdlib_strrchr(__s, 63);
      if (v20 && v20 != __s && *(v20 - 1) != 32)
      {
        *v20 = 46;
      }
    }
  }

  return v11;
}

uint64_t fe_phrasing_mosynt_AdjustSentenceAndMarkers(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v14 = (*(a1[7] + 176))(a2, a3, a4, 0, &v44, &v43 + 2);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v14 = (*(a1[7] + 176))(a2, a3, a4, 1, &v40, &v39);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v38 = a6;
  v15 = *(v40 + 12);
  v16 = 2 * a5;
  v17 = heap_Alloc(*(*a1 + 8), v16 + 2);
  v18 = *a1;
  if (!v17)
  {
    v34 = 2315264010;
    log_OutPublic(*(v18 + 32), "FE_PHRASING", 37000, 0);
    return v34;
  }

  v19 = v17;
  v20 = heap_Alloc(*(v18 + 8), v16 + 2);
  v21 = *a1;
  if (v20)
  {
    v37 = a5;
    v22 = heap_Alloc(*(v21 + 8), (v38 + 1));
    if (v22)
    {
      v23 = v22;
      LOWORD(v24) = v37;
      if (v37)
      {
        v25 = 0;
        v24 = 0;
        do
        {
          v26 = *(a7 + v25);
          if (v26 == 105)
          {
            v22[v24] = 32;
            *(v19 + 2 * v25) = v24 + 1;
            *(v20 + 2 * v25) = v24;
            v22[(v24 + 1)] = *(v44 + v25);
            v24 += 2;
          }

          else
          {
            *(v19 + 2 * v25) = v24;
            *(v20 + 2 * v25) = v24;
            if (v26 != 100)
            {
              v22[v24++] = *(v44 + v25);
            }
          }

          ++v25;
        }

        while (v37 != v25);
      }

      v22[v24] = 0;
      *(v19 + 2 * v37) = v24;
      *(v20 + 2 * v37) = v24;
      v27 = *(a1[7] + 160);
      v28 = cstdlib_strlen(v22);
      v29 = v27(a2, a3, a4, 0, (v28 + 1), v23, &v43);
      if ((v29 & 0x80000000) != 0)
      {
LABEL_36:
        v34 = v29;
      }

      else
      {
        v30 = v39;
        v31 = v40;
        if (v39)
        {
          v32 = (v40 + 12);
          do
          {
            *v32 = v15 + *(v19 + 2 * (*v32 - v15));
            v32 += 8;
            --v30;
          }

          while (v30);
        }

        *(v31 + 16) = v38;
        v33 = (*(a1[7] + 104))(a2, a3, 2, a4, &v42 + 2);
LABEL_19:
        v34 = v33;
        if ((v33 & 0x80000000) == 0)
        {
          while (HIWORD(v42))
          {
            v29 = (*(a1[7] + 168))(a2, a3);
            if ((v29 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            v29 = (*(a1[7] + 168))(a2, a3, HIWORD(v42), 2, 1, &v41, &v43 + 2);
            if ((v29 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            LOWORD(v42) = *(v19 + 2 * v42);
            v29 = (*(a1[7] + 160))(a2, a3, HIWORD(v42), 1, 1, &v42, &v43);
            if ((v29 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            v41 = v41 <= v37 ? *(v20 + 2 * v41) : v37;
            v29 = (*(a1[7] + 160))(a2, a3, HIWORD(v42), 2, 1, &v41, &v43);
            if ((v29 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            if (v41 == v42)
            {
              v35 = HIWORD(v42);
            }

            else
            {
              v35 = 0;
            }

            v34 = (*(a1[7] + 120))(a2, a3);
            if ((v34 & 0x80000000) != 0)
            {
              goto LABEL_39;
            }

            if (v35)
            {
              v33 = (*(a1[7] + 192))(a2, a3, v35);
              goto LABEL_19;
            }
          }
        }
      }

      goto LABEL_39;
    }

    v21 = *a1;
  }

  v34 = 2315264010;
  log_OutPublic(*(v21 + 32), "FE_PHRASING", 37000, 0, v37);
  v23 = 0;
LABEL_39:
  heap_Free(*(*a1 + 8), v19);
  if (v20)
  {
    heap_Free(*(*a1 + 8), v20);
  }

  if (v23)
  {
    heap_Free(*(*a1 + 8), v23);
  }

  return v34;
}

uint64_t fe_phrasing_Process_NN_Phrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, _DWORD *a7)
{
  *a5 = 1;
  v12 = a1 + 176;
  if (!*(a1 + 176))
  {
    *(a1 + 248) = 2;
    *(a1 + 192) = 0x10000;
  }

  SentenceData = getSentenceData(*a1, *(a1 + 48), *(a1 + 56), a3, a4, a1 + 168, *(a1 + 120), 1);
  if ((SentenceData & 0x80000000) == 0 && *(a1 + 848))
  {
    SentenceData = nn_phrasing_ProcessSent(*a1, *(a1 + 56), a3, a4, a1 + 840, v12, a1 + 1304, a6, a7);
  }

  freeSentenceData(a1 + 168);
  freeProsodicStructure((a1 + 168));
  return SentenceData;
}

uint64_t fe_phrasing_Process_CRFPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v14 = 0;
  v15 = 0;
  v17 = 0;
  *a5 = 1;
  if (!*(a1 + 176))
  {
    *(a1 + 248) = 2;
    *(a1 + 192) = 0x10000;
  }

  __s = 0;
  *(a1 + 176) = 0;
  SentenceData = getSentenceData(*a1, *(a1 + 48), *(a1 + 56), a3, a4, a1 + 168, *(a1 + 120), 0);
  if ((SentenceData & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  v9 = doesCustermizedFE(*a1, *(a1 + 56), a3, a4, a1 + 168, &v17);
  if ((v9 & 0x80000000) != 0 || !*(a1 + 848))
  {
    goto LABEL_21;
  }

  if (!v17 && (SentenceData = crfWeakPhrasing(*(a1 + 104), *(a1 + 88), *(a1 + 96), *a1, 0, (a1 + 840), 0, a1 + 920), (SentenceData & 0x80000000) != 0) || (SentenceData = puncPhrasing(*a1, a1 + 840, a1 + 920), (SentenceData & 0x80000000) != 0) || (*(a1 + 176) = *a1, SentenceData = updateLingdbCrfPhrasing(*(a1 + 56), a3, a4, a1 + 168), (SentenceData & 0x80000000) != 0))
  {
LABEL_20:
    v9 = SentenceData;
    goto LABEL_21;
  }

  v9 = (*(*(a1 + 56) + 104))(a3, a4, 1, 0, &v15);
  if ((v9 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a3, a4, v15, 0, &v14 + 2) & 0x80000000) == 0 && HIWORD(v14) == 1)
  {
    v9 = (*(*(a1 + 56) + 176))(a3, a4, v15, 0, &__s, &v14);
    if ((v9 & 0x80000000) == 0 && v14 >= 2u)
    {
      v10 = cstdlib_strlen(__s);
      v11 = heap_Alloc(*(*a1 + 8), v10 + 1);
      if (v11)
      {
        v12 = v11;
        cstdlib_memset(v11, 32, v10);
        *(v12 + v10) = 0;
        v9 = fe_phrasing_mosynt_SplitWords(a1, a3, a4, v15, v12, &v15 + 1);
        if ((v9 & 0x80000000) == 0 && HIWORD(v15))
        {
          v9 = fe_phrasing_mosynt_AdjustSentenceAndMarkers(a1, a3, a4, v15, v10, (HIWORD(v15) + v10), v12);
        }

        heap_Free(*(*a1 + 8), v12);
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
        v9 = 2315264010;
      }
    }
  }

LABEL_21:
  freeSentenceData(a1 + 168);
  return v9;
}

uint64_t fe_phrasing_Process_NNPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v6 = a1;
  v86[0] = 0;
  v85 = 0;
  v84 = 0;
  *a6 = 1;
  v7 = *(*(a1 + 1528) + 1072);
  if (*(*(a1 + 1528) + 1072))
  {
    v8 = 0;
    v78 = *(*(a1 + 1528) + 1072);
    do
    {
      v9 = *(v6[191] + 1064) + 184 * v8;
      v10 = *(v9 + 56);
      v11 = cstdlib_strlen(v10);
      if (!v11)
      {
        break;
      }

      {
        v80 = &v10[v11];
        {
          v12 = 0;
          while (1)
          {
            v13 = Utf8_LengthInBytes(&v10[v12], 1);
            if (!utf8_IsChineseLetter(&v10[v12]))
            {
              {
                break;
              }
            }

LABEL_8:
            v12 += v13;
            if (v12 >= v11)
            {
              v17 = 0;
              LOBYTE(v18) = *(v80 - 1);
              goto LABEL_16;
            }
          }

          v14 = 0;
          v15 = 0;
          while (1)
          {
            v18 = v10[v12];
            if (v18 == asc_26EDC5527[v14])
            {
              break;
            }

            v14 = ++v15;
            {
              goto LABEL_8;
            }
          }

          v17 = 1;
LABEL_16:
          *(v9 + 104) = v18;
          *(v9 + 108) = v17;
          *(v9 + 100) = 1;
          v7 = v78;
          v6 = a1;
        }
      }

      if (v11 == 1)
      {
        if (v8)
        {
          if (v16 && *(*(v6[191] + 1064) + 184 * (v8 - 1) + 108))
          {
            *(v9 + 108) = 1;
          }
        }
      }

      ++v8;
    }

    while (v8 != v7);
  }

  v19 = a5;
  if (!*(a5 + 1104))
  {
    *(a5 + 1176) = 2;
    *(a5 + 1120) = 0x10000;
  }

  *(a5 + 1104) = 0;
  NNSentenceData = getNNSentenceData(*v6, v6[7], a3, a4, v6[191]);
  if ((NNSentenceData & 0x80000000) == 0)
  {
    if (*(a5 + 1088))
    {
      NNSentenceData = doesNNCustermizedFE(*v6, v6[191], v86);
      if ((NNSentenceData & 0x80000000) == 0)
      {
        if (*(a5 + 1072))
        {
          v83 = 0;
          if (v6[206])
          {
            v21 = heap_Calloc(*(*v6 + 8), *(v6[191] + 1072), 8);
            v22 = *v6;
            if (!v21)
            {
              NNSentenceData = 2315264010;
              log_OutPublic(*(v22 + 32), "FE_PHRASING", 37000, 0);
              goto LABEL_111;
            }

            v23 = v21;
            v24 = heap_Calloc(*(v22 + 8), *(v6[191] + 1072), 8);
            v25 = *v6;
            if (!v24)
            {
              v26 = 0;
              goto LABEL_88;
            }

            v26 = heap_Calloc(*(v25 + 8), *(v6[191] + 1072), 8);
            if (!v26)
            {
LABEL_87:
              v25 = *v6;
              goto LABEL_88;
            }
          }

          else
          {
            v23 = 0;
            v24 = 0;
            v26 = 0;
          }

          v27 = v6[191];
          if (*(v27 + 1072))
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = *(v27 + 1064);
            do
            {
              v32 = *(v31 + v28 + 152);
              if (v32)
              {
                v33 = cstdlib_strcmp(v32, "B");
                v34 = *(v27 + 1064) + v28;
                if (v33)
                {
                  v35 = cstdlib_strcmp(*(v34 + 152), "E");
                  v36 = *(v27 + 1064) + v28;
                  if (v35)
                  {
                    v37 = cstdlib_strcmp(*(v36 + 152), "S");
                    v38 = cstdlib_strlen(*(*(v27 + 1064) + v28 + 56));
                    if (v37)
                    {
                      v39 = v30;
                    }

                    else
                    {
                      v39 = 0;
                    }

                    v30 = v39 + v38;
                  }

                  else
                  {
                    v30 += cstdlib_strlen(*(v36 + 56));
                  }
                }

                else
                {
                  v30 = cstdlib_strlen(*(v34 + 56));
                }
              }

              v31 = *(v27 + 1064);
              *(v31 + v28 + 176) = v30;
              ++v29;
              v28 += 184;
            }

            while (v29 < *(v27 + 1072));
          }

          v6 = a1;
          v40 = a5;
          if (!v86[0] && *(a5 + 1072))
          {
            v55 = 0;
            v56 = 76;
            do
            {
              v57 = *(v40 + 1064);
              v58 = *(v57 + v56 - 4);
              if (v58 == 1)
              {
                v59 = 3;
              }

              else
              {
                if (v58)
                {
                  goto LABEL_72;
                }

                v59 = 1;
              }

              *(v57 + v56) = v59;
LABEL_72:
              *(v57 + v56 - 28) = 0;
              hlp_NLUStrFind(*(v57 + v56 - 36), "POS", (v57 + v56 - 28), &v83);
              if (v23)
              {
                v60 = heap_Alloc(*(*a1 + 8), v83 + 1);
                *(v23 + 8 * v55) = v60;
                if (!v60)
                {
                  v19 = a5;
                  goto LABEL_87;
                }

                cstdlib_strncpy(v60, *(*(a5 + 1064) + v56 - 28), v83);
                *(*(v23 + 8 * v55) + v83) = 0;
              }

              if (v24)
              {
                v61 = heap_Alloc(*(*a1 + 8), v83 + 1);
                *(v24 + 8 * v55) = v61;
                if (!v61)
                {
                  goto LABEL_112;
                }

                cstdlib_strncpy(v61, *(*(a5 + 1064) + v56 - 28), v83);
                *(*(v24 + 8 * v55) + v83) = 0;
              }

              v40 = a5;
              if (v26)
              {
                v62 = *(*a1 + 8);
                v63 = cstdlib_strlen(*(*(a5 + 1064) + v56 - 20));
                v64 = heap_Alloc(v62, v63 + 1);
                *(v26 + 8 * v55) = v64;
                if (!v64)
                {
LABEL_112:
                  NNSentenceData = 2315264010;
                  log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
                  v52 = 0;
                  v19 = a5;
                  goto LABEL_63;
                }

                cstdlib_strcpy(v64, *(*(a5 + 1064) + v56 - 20));
              }

              ++v55;
              v56 += 184;
            }

            while (v55 < *(a5 + 1072));
          }

          v19 = v40;
          if (!v24 || !v23 || !v26)
          {
LABEL_55:
            v42 = *a1;
            v43 = *(a1 + 1664);
            v44 = *(a1 + 1672);
            v45 = *(a1 + 1544);
            v46 = *(a1 + 1552);
            v47 = *(a1 + 1608);
            v81[2] = *(a1 + 1592);
            v81[3] = v47;
            v81[4] = *(a1 + 1624);
            v82 = *(a1 + 1640);
            v48 = *(a1 + 1576);
            v81[0] = *(a1 + 1560);
            v81[1] = v48;
            updated = nnpuncPhrasing(v42, v40, v45, v46, v81, v43, v44);
            if ((updated & 0x80000000) != 0 || (updated = updateLingdbNNPhrasing(*a1, *(a1 + 56), a3, a4, *(a1 + 1528), *(a1 + 1656), *(a1 + 1664), *(a1 + 1524)), (updated & 0x80000000) != 0))
            {
              NNSentenceData = updated;
              v52 = 0;
            }

            else
            {
              v50 = cstdlib_strlen(*(*(a1 + 1528) + 1088));
              v51 = heap_Alloc(*(*a1 + 8), v50 + 1);
              v52 = v51;
              if (v51)
              {
                cstdlib_memset(v51, 32, v50);
                *(v52 + v50) = 0;
                NNSentenceData = fe_phrasing_mosynt_SplitWords(a1, a3, a4, *(v40 + 1096), v52, &v85);
                if ((NNSentenceData & 0x80000000) != 0 || !v85)
                {
                  v6 = a1;
                }

                else
                {
                  v53 = v50;
                  v54 = (v85 + v50);
                  v6 = a1;
                  NNSentenceData = fe_phrasing_mosynt_AdjustSentenceAndMarkers(a1, a3, a4, *(v40 + 1096), v53, v54, v52);
                }
              }

              else
              {
                NNSentenceData = 2315264010;
                log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
                v6 = a1;
              }
            }

LABEL_63:
            if (!v23)
            {
              goto LABEL_95;
            }

            goto LABEL_89;
          }

          v41 = heap_Calloc(*(*a1 + 8), *(*(a1 + 1528) + 1072), 24);
          v84 = v41;
          v25 = *a1;
          if (v41)
          {
            if ((fe_phrasing_genLW(v25, *(a1 + 1528), v24, v26, v23, &v84) & 0x80000000) == 0)
            {
              fe_phrasing_ProcessIGTree(a1, v41);
            }

            freeIwInfo(a1, v41);
            goto LABEL_55;
          }

LABEL_88:
          NNSentenceData = 2315264010;
          log_OutPublic(*(v25 + 32), "FE_PHRASING", 37000, 0);
          v52 = 0;
LABEL_89:
          v65 = *(v19 + 1072);
          if (*(v19 + 1072))
          {
            v66 = 0;
            do
            {
              v67 = *(v23 + 8 * v66);
              if (v67)
              {
                heap_Free(*(*v6 + 8), v67);
                v65 = *(v19 + 1072);
              }

              ++v66;
            }

            while (v66 < v65);
          }

          heap_Free(*(*v6 + 8), v23);
LABEL_95:
          if (v24)
          {
            v68 = *(v19 + 1072);
            if (*(v19 + 1072))
            {
              v69 = 0;
              do
              {
                v70 = *(v24 + 8 * v69);
                if (v70)
                {
                  heap_Free(*(*v6 + 8), v70);
                  v68 = *(v19 + 1072);
                }

                ++v69;
              }

              while (v69 < v68);
            }

            heap_Free(*(*v6 + 8), v24);
          }

          if (v26)
          {
            v71 = *(v19 + 1072);
            if (*(v19 + 1072))
            {
              v72 = 0;
              do
              {
                v73 = *(v26 + 8 * v72);
                if (v73)
                {
                  heap_Free(*(*v6 + 8), v73);
                  v71 = *(v19 + 1072);
                }

                ++v72;
              }

              while (v72 < v71);
            }

            heap_Free(*(*v6 + 8), v26);
          }

          if (v52)
          {
            heap_Free(*(*v6 + 8), v52);
          }
        }
      }
    }
  }

LABEL_111:
  freeSentenceDataNN(*v6, v6[191]);
  return NNSentenceData;
}

uint64_t fe_phrasing_genLW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v33 = *(a2 + 1072);
  if (!*(a2 + 1072))
  {
    return 0;
  }

  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = 0;
  v34 = *a6;
  while (1)
  {
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v12 = *(a5 + 8 * v11);
    if (!v12)
    {
      return 2315264007;
    }

    v13 = v11;
    if (!*(a4 + 8 * v11) || !*(v8 + 8 * v11))
    {
      return 2315264007;
    }

    v14 = 0;
    if (extstdlib_strtok_r(v12, "-", &v37))
    {
      do
      {
        ++v14;
      }

      while (extstdlib_strtok_r(0, "-", &v37));
    }

    v15 = heap_Calloc(*(v10 + 8), 1, 8 * v14);
    v16 = (v34 + 24 * v13);
    *(v16 + 2) = v15;
    if (!v15)
    {
      break;
    }

    v17 = cstdlib_strlen(*(v9 + 1088));
    *(v16 + 1) = v17 + 1;
    v18 = heap_Calloc(*(v10 + 8), 1, (v17 + 1) * v14);
    *(v16 + 1) = v18;
    if (!v18)
    {
      break;
    }

    v19 = *(v8 + 8 * v13);
    v20 = a4;
    v21 = *(a4 + 8 * v13);
    *v16 = v14;
    v22 = extstdlib_strtok_r(v19, "-", &v36);
    v23 = extstdlib_strtok_r(v21, "-", &v35);
    v24 = 0;
    v25 = v22 != 0;
    v26 = v23 != 0;
    if (v22)
    {
      v27 = v23;
      if (v23)
      {
        v24 = 0;
        while (v24 <= v14)
        {
          cstdlib_strcpy((*(v16 + 2) + 8 * v24), v22);
          cstdlib_strcpy((*(v16 + 1) + *(v16 + 1) * v24), v27);
          v22 = extstdlib_strtok_r(0, "-", &v36);
          v28 = extstdlib_strtok_r(0, "-", &v35);
          ++v24;
          v25 = v22 != 0;
          v26 = v28 != 0;
          if (v22)
          {
            v27 = v28;
            if (v28)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        return 2315264015;
      }
    }

LABEL_16:
    if (v25 || v26)
    {
      return 2315264007;
    }

    if (*v16 != v24)
    {
      return 2315264015;
    }

    v11 = v13 + 1;
    a4 = v20;
    v10 = a1;
    v8 = a3;
    v9 = a2;
    if (v13 + 1 >= v33)
    {
      return 0;
    }
  }

  log_OutPublic(*(v10 + 32), "FE_PHRASING", 37000, 0, a2, a1, a3);
  return 2315264010;
}

char **fe_phrasing_ProcessIGTree(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1[191] + 1072);
  __s1 = 0;
  v4 = a1[206];
  if (v4)
  {
    v6 = a1;
    result = heap_Alloc(*(v2 + 8), 8 * *(v4 + 1296) - 8);
    v84 = result;
    if (!result)
    {
      return result;
    }

    if (*(v4 + 1296) == 1)
    {
LABEL_7:
      v83 = a2;
      if (!v3)
      {
LABEL_222:
        if (*(v4 + 1296) != 1)
        {
          v76 = (*(v4 + 1296) - 1);
          v77 = v84;
          do
          {
            v78 = *v77++;
            heap_Free(*(v2 + 8), v78);
            --v76;
          }

          while (v76);
        }

        return heap_Free(*(v2 + 8), v84);
      }

      v11 = 0;
      v80 = v3;
      v81 = v6;
      v82 = v4;
      while (1)
      {
        v12 = *(v4 + 1312);
        v13 = *(v4 + 1296);
        v14 = v6[191];
        v86 = 0;
        v15 = heap_Calloc(*(v2 + 8), 1, 2048);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        if (v13 < 2)
        {
          v19 = 0;
        }

        else
        {
          v17 = 0;
          v18 = (v13 - 1);
          while (cstdlib_strcmp(*(v12 + 8 * v17), "pw"))
          {
            if (v18 == ++v17)
            {
              v19 = 0;
              goto LABEL_17;
            }
          }

          v86 = v17;
          v20 = fe_phrasing_feat_word(v14, v11, 0);
          v19 = fe_phrasing_setFeature(v2, v12, v13, 0, v84, v20);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_17:
          v21 = 0;
          if (v18 <= 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = (v13 - 1);
          }

          while (cstdlib_strcmp(*(v12 + 8 * v21), "pwlen"))
          {
            if (v22 == ++v21)
            {
              goto LABEL_24;
            }
          }

          v86 = v21;
          *v16 = 0;
          v23 = cstdlib_strlen(v16);
          fe_phrasing_feat_wordlen(v14, v11, 0, &v16[v23]);
          v19 = fe_phrasing_setFeature(v2, v12, v13, 1, v84, v16);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_24:
          v24 = 0;
          while (cstdlib_strcmp(*(v12 + 8 * v24), "lpwlen"))
          {
            if (v22 == ++v24)
            {
              goto LABEL_29;
            }
          }

          v86 = v24;
          *v16 = 0;
          v25 = cstdlib_strlen(v16);
          fe_phrasing_feat_wordlen(v14, v11, -1, &v16[v25]);
          v19 = fe_phrasing_setFeature(v2, v12, v13, 2, v84, v16);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_29:
          v26 = 0;
          while (cstdlib_strcmp(*(v12 + 8 * v26), "llpwlen"))
          {
            if (v22 == ++v26)
            {
              goto LABEL_34;
            }
          }

          v86 = v26;
          *v16 = 0;
          v27 = cstdlib_strlen(v16);
          fe_phrasing_feat_wordlen(v14, v11, -2, &v16[v27]);
          v19 = fe_phrasing_setFeature(v2, v12, v13, 3, v84, v16);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_34:
          v28 = 0;
          while (cstdlib_strcmp(*(v12 + 8 * v28), "rpwlen"))
          {
            if (v22 == ++v28)
            {
              goto LABEL_39;
            }
          }

          v86 = v28;
          *v16 = 0;
          v29 = cstdlib_strlen(v16);
          fe_phrasing_feat_wordlen(v14, v11, 1, &v16[v29]);
          v19 = fe_phrasing_setFeature(v2, v12, v13, 4, v84, v16);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_39:
          v30 = 0;
          while (cstdlib_strcmp(*(v12 + 8 * v30), "rrpwlen"))
          {
            if (v22 == ++v30)
            {
              goto LABEL_44;
            }
          }

          v86 = v30;
          *v16 = 0;
          v31 = cstdlib_strlen(v16);
          fe_phrasing_feat_wordlen(v14, v11, 2, &v16[v31]);
          v19 = fe_phrasing_setFeature(v2, v12, v13, 5, v84, v16);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_44:
          v32 = 0;
          while (cstdlib_strcmp(*(v12 + 8 * v32), "pos"))
          {
            if (v22 == ++v32)
            {
              goto LABEL_51;
            }
          }

          v86 = v32;
          v33 = "=";
          if (v11 < *(v14 + 1072))
          {
            v33 = *(*(v14 + 1064) + 184 * v11 + 48);
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 6, v84, v33);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_51:
          v34 = 0;
          v35 = 8 * v22;
          while (cstdlib_strcmp(*(v12 + v34), "lpos"))
          {
            v34 += 8;
            if (v35 == v34)
            {
              goto LABEL_60;
            }
          }

          if (v11 && v11 - 1 < *(v14 + 1072))
          {
            v36 = *(*(v14 + 1064) + 184 * (v11 - 1) + 48);
          }

          else
          {
            v36 = "=";
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 7, v84, v36);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_60:
          v37 = 0;
          while (cstdlib_strcmp(*(v12 + v37), "rpos"))
          {
            v37 += 8;
            if (v35 == v37)
            {
              goto LABEL_67;
            }
          }

          v38 = "=";
          if (v11 + 1 < *(v14 + 1072))
          {
            v38 = *(*(v14 + 1064) + 184 * (v11 + 1) + 48);
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 8, v84, v38);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_67:
          v39 = 0;
          while (cstdlib_strcmp(*(v12 + v39), "bpos"))
          {
            v39 += 8;
            if (v35 == v39)
            {
              goto LABEL_74;
            }
          }

          v40 = "=";
          if (v11 < *(v14 + 1072))
          {
            v40 = *(v83 + 24 * v11 + 16);
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 9, v84, v40);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_74:
          v41 = 0;
          while (cstdlib_strcmp(*(v12 + v41), "blpos"))
          {
            v41 += 8;
            if (v35 == v41)
            {
              goto LABEL_83;
            }
          }

          if (v11 && v11 - 1 < *(v14 + 1072))
          {
            v42 = *(v83 + 24 * (v11 - 1) + 16);
          }

          else
          {
            v42 = "=";
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 10, v84, v42);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_83:
          v43 = 0;
          while (cstdlib_strcmp(*(v12 + v43), "brpos"))
          {
            v43 += 8;
            if (v35 == v43)
            {
              goto LABEL_90;
            }
          }

          v44 = "=";
          if (v11 + 1 < *(v14 + 1072))
          {
            v44 = *(v83 + 24 * (v11 + 1) + 16);
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 11, v84, v44);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_90:
          v45 = 0;
          while (cstdlib_strcmp(*(v12 + v45), "epos"))
          {
            v45 += 8;
            if (v35 == v45)
            {
              goto LABEL_97;
            }
          }

          v46 = "=";
          if (v11 < *(v14 + 1072))
          {
            v46 = (*(v83 + 24 * v11 + 16) + 8 * *(v83 + 24 * v11) - 8);
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 12, v84, v46);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_97:
          v47 = 0;
          while (cstdlib_strcmp(*(v12 + 8 * v47), "elpos"))
          {
            if (v22 == ++v47)
            {
              goto LABEL_106;
            }
          }

          v86 = v47;
          if (v11 && v11 - 1 < *(v14 + 1072))
          {
            v48 = (*(v83 + 24 * (v11 - 1) + 16) + 8 * *(v83 + 24 * (v11 - 1)) - 8);
          }

          else
          {
            v48 = "=";
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 13, v84, v48);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_106:
          v49 = 0;
          while (cstdlib_strcmp(*(v12 + v49), "erpos"))
          {
            v49 += 8;
            if (v35 == v49)
            {
              goto LABEL_113;
            }
          }

          v50 = "=";
          if (v11 + 1 < *(v14 + 1072))
          {
            v50 = (*(v83 + 24 * (v11 + 1) + 16) + 8 * *(v83 + 24 * (v11 + 1)) - 8);
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 14, v84, v50);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_113:
          v51 = 0;
          while (cstdlib_strcmp(*(v12 + 8 * v51), "bchar"))
          {
            if (v22 == ++v51)
            {
              goto LABEL_118;
            }
          }

          v86 = v51;
          fe_phrasing_feat_character(v14, v11, 0, 0, v16);
          v19 = fe_phrasing_setFeature(v2, v12, v13, 15, v84, v16);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_118:
          v52 = 0;
          while (cstdlib_strcmp(*(v12 + v52), "echar"))
          {
            v52 += 8;
            if (v35 == v52)
            {
              goto LABEL_123;
            }
          }

          fe_phrasing_feat_character(v14, v11, -1, 0, v16);
          v19 = fe_phrasing_setFeature(v2, v12, v13, 16, v84, v16);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_123:
          v53 = 0;
          while (cstdlib_strcmp(*(v12 + 8 * v53), "elchar"))
          {
            if (v22 == ++v53)
            {
              goto LABEL_128;
            }
          }

          v86 = v53;
          fe_phrasing_feat_character(v14, v11, -1, -1, v16);
          v19 = fe_phrasing_setFeature(v2, v12, v13, 17, v84, v16);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_128:
          v54 = 0;
          while (cstdlib_strcmp(*(v12 + v54), "erchar"))
          {
            v54 += 8;
            if (v35 == v54)
            {
              goto LABEL_133;
            }
          }

          fe_phrasing_feat_character(v14, v11, -1, 1, v16);
          v19 = fe_phrasing_setFeature(v2, v12, v13, 18, v84, v16);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_133:
          v55 = 0;
          while (cstdlib_strcmp(*(v12 + 8 * v55), "blwword"))
          {
            if (v22 == ++v55)
            {
              goto LABEL_140;
            }
          }

          v86 = v55;
          v56 = "=";
          if (v11 < *(v14 + 1072))
          {
            v56 = *(v83 + 24 * v11 + 8);
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 19, v84, v56);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_140:
          v57 = 0;
          while (cstdlib_strcmp(*(v12 + v57), "elwword"))
          {
            v57 += 8;
            if (v35 == v57)
            {
              goto LABEL_147;
            }
          }

          v58 = "=";
          if (v11 < *(v14 + 1072))
          {
            v58 = (*(v83 + 24 * v11 + 8) + (*(v83 + 24 * v11) - 1) * *(v83 + 24 * v11 + 4));
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 20, v84, v58);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_147:
          v59 = 0;
          while (cstdlib_strcmp(*(v12 + 8 * v59), "lpw"))
          {
            if (v22 == ++v59)
            {
              goto LABEL_152;
            }
          }

          v86 = v59;
          v60 = fe_phrasing_feat_word(v14, v11, -1);
          v19 = fe_phrasing_setFeature(v2, v12, v13, 21, v84, v60);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_152:
          v61 = 0;
          while (cstdlib_strcmp(*(v12 + v61), "rpw"))
          {
            v61 += 8;
            if (v35 == v61)
            {
              goto LABEL_157;
            }
          }

          v62 = fe_phrasing_feat_word(v14, v11, 1);
          v19 = fe_phrasing_setFeature(v2, v12, v13, 22, v84, v62);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_157:
          v63 = 0;
          while (cstdlib_strcmp(*(v12 + v63), "blchar"))
          {
            v63 += 8;
            if (v35 == v63)
            {
              goto LABEL_162;
            }
          }

          fe_phrasing_feat_character(v14, v11, 0, -1, v16);
          v19 = fe_phrasing_setFeature(v2, v12, v13, 23, v84, v16);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_162:
          v64 = 0;
          while (cstdlib_strcmp(*(v12 + 8 * v64), "brchar"))
          {
            if (v22 == ++v64)
            {
              goto LABEL_167;
            }
          }

          v86 = v64;
          fe_phrasing_feat_character(v14, v11, 0, 1, v16);
          v19 = fe_phrasing_setFeature(v2, v12, v13, 24, v84, v16);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_167:
          v65 = 0;
          while (cstdlib_strcmp(*(v12 + v65), "blpwword"))
          {
            v65 += 8;
            if (v35 == v65)
            {
              goto LABEL_176;
            }
          }

          if (v11 && v11 - 1 < *(v14 + 1072))
          {
            v66 = *(v83 + 24 * (v11 - 1) + 8);
          }

          else
          {
            v66 = "=";
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 25, v84, v66);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_176:
          v67 = 0;
          while (cstdlib_strcmp(*(v12 + v67), "brpwword"))
          {
            v67 += 8;
            if (v35 == v67)
            {
              goto LABEL_183;
            }
          }

          v68 = "=";
          if (v11 + 1 < *(v14 + 1072))
          {
            v68 = *(v83 + 24 * (v11 + 1) + 8);
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 26, v84, v68);
          if (v19 < 0)
          {
            goto LABEL_230;
          }

LABEL_183:
          v69 = 0;
          while (cstdlib_strcmp(*(v12 + 8 * v69), "elpwword"))
          {
            if (v22 == ++v69)
            {
              goto LABEL_192;
            }
          }

          v86 = v69;
          if (v11 && v11 - 1 < *(v14 + 1072))
          {
            v70 = (*(v83 + 24 * (v11 - 1) + 8) + (*(v83 + 24 * (v11 - 1)) - 1) * *(v83 + 24 * (v11 - 1) + 4));
          }

          else
          {
            v70 = "=";
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 27, v84, v70);
          if (v19 < 0)
          {
LABEL_230:
            heap_Free(*(v2 + 8), v16);
            return heap_Free(*(v2 + 8), v84);
          }
        }

LABEL_192:
        if (fe_phrasing_isFeatureRequired(v12, v13, 28, &v86))
        {
          v71 = "=";
          if (v11 + 1 < *(v14 + 1072))
          {
            v71 = (*(v83 + 24 * (v11 + 1) + 8) + (*(v83 + 24 * (v11 + 1)) - 1) * *(v83 + 24 * (v11 + 1) + 4));
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 28, v84, v71);
          if (v19 < 0)
          {
            goto LABEL_230;
          }
        }

        if (fe_phrasing_isFeatureRequired(v12, v13, 29, &v86))
        {
          v72 = "=";
          if (v11 < *(v14 + 1072))
          {
            if (**(*(v14 + 1064) + 184 * v11 + 56) - 48 >= 0xA)
            {
              v72 = "0";
            }

            else
            {
              v72 = "1";
            }
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 29, v84, v72);
          if (v19 < 0)
          {
            goto LABEL_230;
          }
        }

        if (fe_phrasing_isFeatureRequired(v12, v13, 30, &v86))
        {
          if (v11 && v11 - 1 < *(v14 + 1072))
          {
            v73 = **(*(v14 + 1064) + 184 * (v11 - 1) + 56) - 48 >= 0xA ? "0" : "1";
          }

          else
          {
            v73 = "=";
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 30, v84, v73);
          if (v19 < 0)
          {
            goto LABEL_230;
          }
        }

        if (fe_phrasing_isFeatureRequired(v12, v13, 31, &v86))
        {
          v74 = "=";
          if (v11 + 1 < *(v14 + 1072))
          {
            if (**(*(v14 + 1064) + 184 * (v11 + 1) + 56) - 48 >= 0xA)
            {
              v74 = "0";
            }

            else
            {
              v74 = "1";
            }
          }

          v19 = fe_phrasing_setFeature(v2, v12, v13, 31, v84, v74);
        }

        heap_Free(*(v2 + 8), v16);
        v4 = v82;
        if (v19 < 0 || (igtree_Process(v82, v84, &__s1) & 0x80000000) != 0)
        {
          return heap_Free(*(v2 + 8), v84);
        }

        v6 = v81;
        if (cstdlib_strcmp(__s1, "NOMATCH"))
        {
          v75 = cstdlib_atoi(__s1);
          if (v75 <= 3)
          {
            *(*(v81[191] + 1064) + 184 * v11 + 76) = v75;
          }
        }

        if (++v11 == v80)
        {
          goto LABEL_222;
        }
      }
    }

    else
    {
      v8 = (*(v4 + 1296) - 1);
      v9 = result;
      while (1)
      {
        v10 = heap_Calloc(*(v2 + 8), 1, 65);
        *v9 = v10;
        if (!v10)
        {
          break;
        }

        cstdlib_strcpy(v10, "=");
        ++v9;
        if (!--v8)
        {
          goto LABEL_7;
        }
      }
    }

    log_OutPublic(*(v2 + 32), "FE_PHRASING", 37000, 0);
    return heap_Free(*(v2 + 8), v84);
  }

  v79 = *(v2 + 32);

  return log_OutText(v79, "FE_PHRASING", 0, 0, "IGTree model for phrasing does not exist. Skip processing IGTree.");
}

void *freeIwInfo(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (*(result[191] + 1072))
    {
      v4 = 0;
      v5 = (a2 + 16);
      do
      {
        heap_Free(*(*v3 + 8), *(v5 - 1));
        *(v5 - 1) = 0;
        heap_Free(*(*v3 + 8), *v5);
        *v5 = 0;
        v5 += 3;
        ++v4;
      }

      while (v4 < *(v3[191] + 1072));
    }

    v6 = *(*v3 + 8);

    return heap_Free(v6, a2);
  }

  return result;
}

uint64_t fe_phrasing_Process(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  if ((safeh_HandleCheck(a1, a2, 62343, 1728) & 0x80000000) != 0)
  {
    return 2315264008;
  }

  *&__c[3] = 0;
  *&__c[1] = 0;
  v10 = (a1[7][13])(a3, a4, 1, 0, &__c[3]);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (((a1[7][23])(a3, a4, *&__c[3], 0, &__c[1]) & 0x80000000) != 0 || *&__c[1] != 1)
  {
    inserted = 0;
    *a5 = 1;
    return inserted;
  }

  if (*(a1 + 364))
  {
    v11 = a1[191];
    *(v11 + 548) = *&__c[3];
    *(v11 + 549) = 1;
  }

  v12 = a1[12];
  v13 = a1[13];
  v14 = a1[11];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v10 = (v13[12])(v14, v12, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v15 = 1;
  if (*&__c[1] == 1 && *&__c[3])
  {
    v16 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v16)
    {
      *v16 = 0;
    }

    if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
    {
      v15 = 0;
    }
  }

  v17 = paramc_ParamGetInt((*a1)[5], "nnpausingoverride", &v30) >= 0 && v30 == 1;
  v18 = !v17;
  if (v17)
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN pausing Override enabled - NN pausing will skipped even if data loaded", 0);
  }

  if ((paramc_ParamGetInt((*a1)[5], "nnpausingminwordspan", &v30) & 0x80000000) != 0 || (v19 = v30, v30 > 0x270E))
  {
    v19 = 0xFFFFFFFFLL;
    if (!v18)
    {
      goto LABEL_37;
    }
  }

  else
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN pausing min word span set to %d", v30);
    if (!v18)
    {
      goto LABEL_37;
    }
  }

  if (*(a1 + 324) == 1)
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN Phrasing Enabled", 0);
    v10 = hlp_MarkSildursExternal(a1, a3, a4);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = hlp_Markup(a1, a3, a4);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = fe_phrasing_Process_NN_Phrasing(a1, a2, a3, a4, a5, v19, &v29);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = hlp_SetExternalSildurs(a1, a3, a4);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v10 = hlp_SetInternalSildurs(a1, a3, a4, 1);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }
  }

LABEL_37:
  if (!*(a1 + 40))
  {
LABEL_56:
    if (*(a1 + 364))
    {
      v23 = pw_Process(a3, a4, a1[7], *a1, a1[191], a1[181], a1[183], a1 + 186, *(a1 + 365), &v26, a1[192], *(a1 + 381), *(a1 + 380));
      if ((v23 & 0x80000000) != 0)
      {
        inserted = v23;
        freeSentenceDataNN(*a1, a1[191]);
        return inserted;
      }

      v10 = hlp_MarkSildursExternal(a1, a3, a4);
      if ((v10 & 0x80000000) == 0)
      {
        setbndfromTN(*a1, v26, a1[191]);
        v10 = fe_phrasing_Process_NNPhrasing(a1, a2, a3, a4, a1[191], a5);
        if ((v10 & 0x80000000) == 0)
        {
          v10 = hlp_SetExternalSildurs(a1, a3, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = hlp_SetInternalSildurs(a1, a3, a4, 1);
            if ((v10 & 0x80000000) == 0)
            {
              inserted = hlp_InsertWordPhraseBoundaries(a1, a3, a4, a1[206] != 0, 0, 0);
              if ((inserted & 0x80000000) != 0)
              {
                return inserted;
              }

              if (*(a1 + 320) == 1)
              {
                inserted = hlp_setNLUPOSMappings(a1, a3, a4);
                if ((inserted & 0x80000000) != 0)
                {
                  return inserted;
                }
              }

              if (!*(a1 + 420))
              {
                return inserted;
              }

              return fe_stress_process(*a1, a3, a4, a1[7], a1[212], a1[183], a1[213], a1[214], a1[211], *(a1 + 860), *(a1 + 421));
            }
          }
        }
      }
    }

    else if (*(a1 + 28))
    {
      log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "FEPHRRES: CRF Phrasing Enabled", 0);
      v10 = hlp_MarkSildursExternal(a1, a3, a4);
      if ((v10 & 0x80000000) == 0)
      {
        v10 = fe_phrasing_Process_CRFPhrasing(a1, a2, a3, a4, a5);
        if ((v10 & 0x80000000) == 0)
        {
          v10 = hlp_SetExternalSildurs(a1, a3, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = hlp_SetInternalSildurs(a1, a3, a4, 1);
            if ((v10 & 0x80000000) == 0)
            {
              inserted = hlp_InsertWordPhraseBoundaries(a1, a3, a4, 0, 0, 0);
              if ((inserted & 0x80000000) != 0 || *(a1 + 320) != 1)
              {
                return inserted;
              }

              return hlp_setNLUPOSMappings(a1, a3, a4);
            }
          }
        }
      }
    }

    else
    {
      v24 = v15 ^ 1;
      if (!*(a1 + 29))
      {
        v24 = 1;
      }

      if (v24)
      {
        return fe_phrasing_Process_Depes(a1, a2, a3, a4, a5);
      }

      else
      {
        v10 = hlp_MarkSildursExternal(a1, a3, a4);
        if ((v10 & 0x80000000) == 0)
        {
          v10 = hlp_SetExternalSildurs(a1, a3, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = fe_phrasing_Process_Mosynt(a1, a2, a3, a4, a5);
            if ((v10 & 0x80000000) == 0)
            {
              return hlp_SetInternalSildurs(a1, a3, a4, 0);
            }
          }
        }
      }
    }

    return v10;
  }

  v10 = hlp_MarkSildursExternal(a1, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if ((fe_phrasing_Process_PandP(a1, a2, a3, a4, a5) & 0x80000000) != 0)
  {
    log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "FEPHRRES: processing failed, fall back to alternative method", 0);
    v10 = paramc_ParamSetUInt((*a1)[5], "prmigactive", 0);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    goto LABEL_56;
  }

  v10 = hlp_Markup(a1, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = hlp_SetExternalSildurs(a1, a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = hlp_SetInternalSildurs(a1, a3, a4, 0);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  inserted = paramc_ParamSetUInt((*a1)[5], "prmigactive", 1);
  if ((inserted & 0x80000000) == 0)
  {
    if (*(a1 + 320) != 1 || (inserted = hlp_setNLUPOSMappings(a1, a3, a4), (inserted & 0x80000000) == 0))
    {
      if (v18 && *(a1 + 324) == 1 && *(a1 + 720) && v29 == 1)
      {
        v21 = hlp_RemoveWordPhraseBoundaries(a1, a3, a4, *(a1 + 720), &v28, &v27);
        v22 = v28;
        if ((v21 & 0x80000000) == 0)
        {
          v21 = hlp_InsertWordPhraseBoundaries(a1, a3, a4, 1, v28, v27);
          if ((v21 & 0x80000000) == 0)
          {
            log_OutText((*a1)[4], "FE_PHRASING", 5, 0, "NN Phrasing : cleanup lingdb (numwords=%d)", *(a1 + 720));
            v21 = NNPausing_cleanLingdb(*a1, a1[7], a3, a4, (a1 + 163));
          }
        }

        inserted = v21;
        if (v22)
        {
          heap_Free((*a1)[1], v22);
        }
      }
    }
  }

  return inserted;
}

uint64_t hlp_MarkSildursExternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v17 + 2);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v17), 0, &v18 + 2) & 0x80000000) == 0 && HIWORD(v18) == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v17), 0, &v14, &v16 + 2);
    if ((v6 & 0x80000000) == 0 && HIWORD(v16) >= 2u)
    {
      v6 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v17), &v17);
      if ((v6 & 0x80000000) == 0)
      {
        v7 = v17;
        if (v17)
        {
          while (1)
          {
            v8 = (*(*(a1 + 56) + 168))(a2, a3, v7, 0, 1, &v15, &v16 + 2);
            if ((v8 & 0x80000000) != 0)
            {
              break;
            }

            if (v15 <= 0xA && ((1 << v15) & 0x610) != 0)
            {
              v8 = (*(*(a1 + 56) + 184))(a2, a3, v17, 8, &v18 + 2);
              if ((v8 & 0x80000000) != 0)
              {
                break;
              }

              if (HIWORD(v18))
              {
                v8 = (*(*(a1 + 56) + 168))(a2, a3, v17, 8, 1, &v18, &v16 + 2);
                if ((v8 & 0x80000000) != 0)
                {
                  break;
                }

                if (v18)
                {
                  v10 = *(*(a1 + 56) + 160);
                  v11 = v17;
                  v12 = cstdlib_strlen("external");
                  v8 = v10(a2, a3, v11, 18, (v12 + 1), "external", &v16);
                  if ((v8 & 0x80000000) != 0)
                  {
                    break;
                  }
                }
              }
            }

            v6 = (*(*(a1 + 56) + 120))(a2, a3, v17, &v17);
            if ((v6 & 0x80000000) == 0)
            {
              v7 = v17;
              if (v17)
              {
                continue;
              }
            }

            return v6;
          }

          return v8;
        }
      }
    }
  }

  return v6;
}

uint64_t hlp_Markup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 1;
  __s = 0;
  v28 = 0;
  v27 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v34 + 2);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v34), 0, &v28) & 0x80000000) == 0 && v28 == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v34), 0, &v27, &v36 + 2);
    if ((v6 & 0x80000000) == 0 && HIWORD(v36) >= 2u)
    {
      v7 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v34), &v34);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }

      v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v34), 1, &v33, &v32 + 2);
      if ((v6 & 0x80000000) == 0)
      {
        v8 = v34;
        if (v34)
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = *(v33 + 12);
          while (1)
          {
            v7 = (*(*(a1 + 56) + 168))(a2, a3, v8, 0, 1, &v35, &v36 + 2);
            if ((v7 & 0x80000000) != 0)
            {
              return v7;
            }

            if ((v35 - 9) < 2 || v35 == 4)
            {
              v7 = (*(*(a1 + 56) + 168))(a2, a3, v34, 1, 1, &v32, &v36 + 2);
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              v7 = (*(*(a1 + 56) + 168))(a2, a3, v34, 2, 1, &v31 + 2, &v36 + 2);
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              LOWORD(v31) = 0;
              v15 = HIWORD(v32);
              if (v9 >= HIWORD(v32))
              {
                v15 = v9;
              }

              else
              {
                v16 = 0;
                v17 = v9;
                v18 = (v33 + 32 * v9 + 12);
                while ((HIWORD(v31) - ((HIWORD(v31) - v32) > 1)) > (*v18 - v13))
                {
                  if (*(v18 - 3) == 8)
                  {
                    v16 += v18[6];
                    LOWORD(v31) = v16;
                  }

                  ++v17;
                  v18 += 16;
                  if (HIWORD(v32) == v17)
                  {
                    goto LABEL_34;
                  }
                }

                v15 = v17;
LABEL_34:
                if (v16 && v10)
                {
                  v7 = (*(*(a1 + 56) + 160))(a2, a3, v10, 8, 1, &v31, &v36);
                  if ((v7 & 0x80000000) != 0)
                  {
                    return v7;
                  }

                  v19 = *(*(a1 + 56) + 160);
                  v20 = cstdlib_strlen("external");
                  v7 = v19(a2, a3, v10, 18, (v20 + 1), "external", &v36);
                  if ((v7 & 0x80000000) != 0)
                  {
                    return v7;
                  }

                  v16 = v31;
                }

                if (v16 && v12)
                {
                  if (v11 && v32 == v11)
                  {
                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v12, 7, 1, &v30, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v12, 8, 1, &v31, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }
                  }

                  else if (v32 != v11)
                  {
                    v7 = (*(*(a1 + 56) + 88))(a2, a3, v34, &v34);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v35 = 15;
                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v34, 0, 1, &v35, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v34, 1, 1, &v32, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 168))(a2, a3, v12, 2, 1, &v31 + 2, &v36 + 2);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v34, 2, 1, &v31 + 2, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v12, 2, 1, &v32, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 176))(a2, a3, v12, 4, &__s, &v36 + 2);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v21 = *(*(a1 + 56) + 160);
                    v22 = v34;
                    v23 = cstdlib_strlen(__s);
                    v7 = v21(a2, a3, v22, 4, (v23 + 1), __s, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v24 = *(*(a1 + 56) + 160);
                    v25 = cstdlib_strlen("P");
                    v7 = v24(a2, a3, v12, 4, (v25 + 1), "P", &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v34, 7, 1, &v30, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v7 = (*(*(a1 + 56) + 160))(a2, a3, v34, 8, 1, &v31, &v36);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

                    v12 = v34;
                    v11 = v32;
                    v7 = (*(*(a1 + 56) + 120))(a2, a3, v34, &v34);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }
                  }
                }
              }

              v10 = v34;
              v9 = v15;
            }

            else if (v35 == 15)
            {
              v12 = v34;
              v7 = (*(*(a1 + 56) + 168))(a2, a3, v34, 1, 1, &v32, &v36 + 2);
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

              v11 = v32;
            }

            v6 = (*(*(a1 + 56) + 120))(a2, a3, v34, &v34);
            if ((v6 & 0x80000000) == 0)
            {
              v8 = v34;
              if (v34)
              {
                continue;
              }
            }

            return v6;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t hlp_SetExternalSildurs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  HIWORD(v43) = 0;
  v42 = 0;
  v41 = 0;
  v37 = 0;
  v36 = 0;
  v6 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v48 + 2);
  if ((v6 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v48), 0, &v49) & 0x80000000) == 0 && v49 == 1)
  {
    v6 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v48), 0, &v36, &v47);
    if ((v6 & 0x80000000) == 0 && v47 >= 2u)
    {
      updated = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v48), 1, &v42, &v41);
      if ((updated & 0x80000000) != 0)
      {
        return updated;
      }

      else
      {
        v8 = *(v42 + 12);
        v6 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v48), &v48);
        if ((v6 & 0x80000000) == 0)
        {
          v45 = 0;
          HIWORD(v44) = 0;
          v40 = 0;
          v39 = 0;
          cstdlib_strcpy(__dst, "normal");
          cstdlib_strcpy(__src, "normal");
          v38 = 0;
          v43 = 0;
          v9 = v48;
          if (v48)
          {
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            while (1)
            {
              updated = (*(*(a1 + 56) + 168))(a2, a3, v9, 0, 1, &v46, &v47);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              if (v46 > 0xA || ((1 << v46) & 0x610) == 0)
              {
                v26 = v48;
                v19 = v12;
                goto LABEL_76;
              }

              updated = (*(*(a1 + 56) + 168))(a2, a3, v48, 1, 1, &v45 + 2, &v47);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              updated = (*(*(a1 + 56) + 168))(a2, a3, v48, 2, 1, &v45, &v47);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              HIWORD(v43) = 0;
              if (v13)
              {
                updated = (*(*(a1 + 56) + 168))(a2, a3, v13, 2, 1, &v43 + 2, &v47);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }
              }

              cstdlib_strcpy(__dst, __src);
              updated = hlp_UpdateDomain(a1, a2, a3, HIWORD(v48), &v40, HIWORD(v45), v45, &v39, __src);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              if (v39)
              {
                updated = (*(*(a1 + 56) + 168))(a2, a3);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }

                v15 = HIWORD(v44);
              }

              else
              {
                v15 = v45;
                HIWORD(v44) = v45;
              }

              if (v15 && v11 < v41)
              {
                v16 = (v15 - 1);
                v17 = v11;
                v18 = v42 + 32 * v11;
                v19 = v12;
                if (v16 >= (*(v18 + 12) - v8))
                {
                  v19 = v12;
                  while (1)
                  {
                    if (*v18 == 31)
                    {
                      v19 = *(v18 + 24);
                    }

                    if (v41 - 1 == v17)
                    {
                      break;
                    }

                    v20 = *(v18 + 44) - v8;
                    v18 += 32;
                    ++v17;
                    if (v16 < v20)
                    {
                      v11 = v17;
                      goto LABEL_34;
                    }
                  }

                  v11 = v41;
                }
              }

              else
              {
                v19 = v12;
              }

LABEL_34:
              hlp_GetDomainPauseDur(a1, "spell", &v38, &v37);
              if (cstdlib_strstr(__dst, "spell"))
              {
                if (cstdlib_strstr(__src, "spell"))
                {
                  break;
                }
              }

              if (cstdlib_strstr(__src, "spell"))
              {
                if (!v19)
                {
                  goto LABEL_52;
                }

                v25 = 0;
                LOWORD(v12) = v19;
              }

              else
              {
                if (!cstdlib_strstr(__dst, "spell"))
                {
                  goto LABEL_51;
                }

                if (!v12)
                {
LABEL_52:
                  v25 = 0;
                  if (v37)
                  {
                    LOWORD(v12) = v38;
                  }

                  else
                  {
                    LOWORD(v12) = 200;
                  }

                  goto LABEL_55;
                }

                v25 = 0;
              }

LABEL_55:
              if (v10 >= v41)
              {
                v27 = 0;
              }

              else
              {
                v27 = 0;
                v28 = v10;
                v29 = (v42 + 32 * v10 + 12);
                while ((v45 - ((v45 - HIWORD(v45)) > 1)) > (*v29 - v8))
                {
                  if (*(v29 - 3) == 8)
                  {
                    v27 += v29[6];
                  }

                  ++v28;
                  v29 += 16;
                  if (v41 == v28)
                  {
                    v10 = v41;
                    goto LABEL_64;
                  }
                }

                v10 = v28;
              }

LABEL_64:
              if (v25)
              {
                v30 = 0;
              }

              else
              {
                v30 = v12;
              }

              v31 = v25 ^ 1;
              v32 = v27 == 0;
              if (!v27)
              {
                v27 = v30;
              }

              LOWORD(v43) = v27;
              if (!v32)
              {
                v31 = 1;
              }

              if (v13)
              {
                if (v31)
                {
                  updated = (*(*(a1 + 56) + 160))(a2, a3, v13, 8, 1, &v43, &v44);
                  if ((updated & 0x80000000) != 0)
                  {
                    return updated;
                  }

                  v33 = *(*(a1 + 56) + 160);
                  v34 = cstdlib_strlen("external");
                  updated = v33(a2, a3, v13, 18, (v34 + 1), "external", &v44);
                  if ((updated & 0x80000000) != 0)
                  {
                    return updated;
                  }
                }
              }

              v26 = v48;
              v13 = v48;
LABEL_76:
              v6 = (*(*(a1 + 56) + 120))(a2, a3, v26, &v48);
              if ((v6 & 0x80000000) == 0)
              {
                v9 = v48;
                v12 = v19;
                if (v48)
                {
                  continue;
                }
              }

              return v6;
            }

            if (HIWORD(v43))
            {
              v21 = *(v36 + HIWORD(v43) - 1);
              v22 = v21 > 0x3F;
              v23 = (1 << v21) & 0x8C00500200000000;
              if (!v22 && v23 != 0)
              {
                v25 = 0;
                if (!v12)
                {
                  LOWORD(v12) = v38;
                }

                goto LABEL_55;
              }
            }

LABEL_51:
            LOWORD(v12) = 0;
            v25 = 1;
            goto LABEL_55;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t hlp_SetInternalSildurs(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  v22 = 0;
  v19 = 0;
  v8 = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, &v32 + 2);
  if ((v8 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a2, a3, HIWORD(v32), 0, &v33) & 0x80000000) == 0 && v33 == 1)
  {
    v8 = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v32), 0, &v19, &v31);
    if ((v8 & 0x80000000) == 0 && v31 >= 2u)
    {
      v8 = (*(*(a1 + 56) + 104))(a2, a3, 2, HIWORD(v32), &v32);
      if ((v8 & 0x80000000) == 0)
      {
        LOWORD(v28) = 0;
        v27 = 0;
        v29 = 0;
        v23 = 0;
        cstdlib_strcpy(__dst, "normal");
        cstdlib_strcpy(__src, "normal");
        v25 = 0;
        v26 = 0;
        v9 = v32;
        if (v32)
        {
          LOWORD(v10) = 0;
          v11 = 0;
          while (1)
          {
            updated = (*(*(a1 + 56) + 168))(a2, a3, v9, 0, 1, &v30, &v31);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            if ((v30 - 9) < 2 || v30 == 4)
            {
              break;
            }

            if (v30 == 15)
            {
              v10 = v32;
              updated = (*(*(a1 + 56) + 168))(a2, a3, v32, 1, 1, &v28, &v31);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              updated = (*(*(a1 + 56) + 168))(a2, a3, v10, 7, 1, &v27, &v31);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }
            }

LABEL_48:
            v8 = (*(*(a1 + 56) + 120))(a2, a3, v32, &v32);
            if ((v8 & 0x80000000) != 0)
            {
              return v8;
            }

            v9 = v32;
            if (!v32)
            {
              if (!v11)
              {
                return v8;
              }

              HIWORD(v25) = 0;
              return (*(*(a1 + 56) + 160))(a2, a3, v11, 8, 1, &v25 + 2, &v28 + 2);
            }
          }

          updated = (*(*(a1 + 56) + 168))(a2, a3, v32, 1, 1, &v29 + 2, &v31);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          updated = (*(*(a1 + 56) + 168))(a2, a3, v32, 2, 1, &v29, &v31);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          v26 = 0;
          if (v11)
          {
            updated = (*(*(a1 + 56) + 168))(a2, a3, v11, 2, 1, &v26, &v31);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            LOWORD(v25) = 0;
            v24 = 0;
            updated = hlp_ReadSildur(a1, a2, a3, v11, &v25, &v24);
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            if (v24)
            {
              v14 = 0;
            }

            else
            {
              if (v25)
              {
                v15 = a4 == 0;
              }

              else
              {
                v15 = 1;
              }

              v14 = v15;
            }
          }

          else
          {
            LOWORD(v25) = 0;
            v24 = 0;
            v14 = 1;
          }

          cstdlib_strcpy(__dst, __src);
          updated = hlp_UpdateDomain(a1, a2, a3, HIWORD(v32), &v23 + 1, HIWORD(v29), v29, &v23, __src);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          hlp_GetDomainPauseDur(a1, __dst, &v22, &v20);
          hlp_GetDomainPauseDur(a1, __src, &v21, &v20);
          v16 = v22;
          HIWORD(v25) = 0;
          v17 = v10 != 0;
          if (v14)
          {
            if (!HIWORD(v29) || !v10 || (v17 = 1, v28 != HIWORD(v29)) || v27 > 1u)
            {
LABEL_42:
              if (v11)
              {
                updated = (*(*(a1 + 56) + 160))(a2, a3, v11, 8, 1, &v25 + 2, &v28 + 2);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }
              }

              if (v17 && v28 == HIWORD(v29))
              {
                updated = (*(*(a1 + 56) + 160))(a2, a3, v10, 8, 1, &v25 + 2, &v28 + 2);
                if ((updated & 0x80000000) != 0)
                {
                  return updated;
                }
              }

              v11 = v32;
              goto LABEL_48;
            }
          }

          else
          {
            v16 = v25;
          }

          HIWORD(v25) = v16;
          goto LABEL_42;
        }
      }
    }
  }

  return v8;
}

uint64_t hlp_setNLUPOSMappings(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = 0;
  v32 = 0;
  v30 = 0;
  *v29 = 0;
  v28 = 0;
  *&__n[1] = 0;
  __n[0] = 0;
  v25 = 0;
  __s = 0;
  v23 = 0;
  v24 = 0;
  if ((com_crf_GetCfgParamVal(a1[11], a1[12], a1[13], "fephrase_max_search_key", "64", &v23) & 0x80000000) != 0)
  {
    v6 = 64;
  }

  else
  {
    v6 = cstdlib_atoi(v23);
  }

  v7 = heap_Calloc(*(*a1 + 8), 1, v6);
  if (v7)
  {
    v8 = v7;
    v9 = (*(a1[7] + 104))(a2, a3, 1, 0, &v32 + 2);
    if ((v9 & 0x80000000) != 0)
    {
LABEL_33:
      v10 = v9;
    }

    else
    {
      v10 = (*(a1[7] + 184))(a2, a3, HIWORD(v32), 0, &v28);
      if ((v10 & 0x80000000) == 0 && v28 == 1)
      {
        v10 = (*(a1[7] + 176))(a2, a3, HIWORD(v32), 0, &v24, &v31 + 2);
        if ((v10 & 0x80000000) == 0 && HIWORD(v31) >= 2u)
        {
          v10 = (*(a1[7] + 104))(a2, a3, 2, HIWORD(v32), &v32);
          if ((v10 & 0x80000000) == 0)
          {
            v11 = v32;
            if (v32)
            {
              while (1)
              {
                v9 = (*(a1[7] + 168))(a2, a3, v11, 0, 1, &v30, &v31 + 2);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_33;
                }

                if (v30 <= 0xA && ((1 << v30) & 0x610) != 0)
                {
                  v9 = (*(a1[7] + 176))(a2, a3, v32, 5, &__s, &v31 + 2);
                  if ((v9 & 0x80000000) != 0)
                  {
                    goto LABEL_33;
                  }

                  if (cstdlib_strlen(__s) != 1)
                  {
                    v9 = (*(a1[7] + 184))(a2, a3, v32, 14, &v28);
                    if ((v9 & 0x80000000) != 0)
                    {
                      goto LABEL_33;
                    }

                    if (v28)
                    {
                      break;
                    }
                  }
                }

LABEL_29:
                v10 = (*(a1[7] + 120))(a2, a3, v32, &v32);
                if ((v10 & 0x80000000) == 0)
                {
                  v11 = v32;
                  if (v32)
                  {
                    continue;
                  }
                }

                goto LABEL_34;
              }

              v9 = (*(a1[7] + 176))(a2, a3, v32, 14, v29, &v31 + 2);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_33;
              }

              if (HIWORD(v31))
              {
                hlp_NLUStrFind(*v29, "POS", &__n[1], __n);
                cstdlib_strncpy(v8, *&__n[1], __n[0]);
                v8[__n[0]] = 0;
                if ((ssftmap_Find(a1[161], v8, &v25) & 0x1FFF) != 0x14)
                {
                  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "NLUPOSMAP from %s (NLU %s) to %s", __s, *v29, v25);
                  v13 = *(a1[7] + 160);
                  v20 = v32;
                  v21 = cstdlib_strlen(v25);
                  v19 = v25;
                  v15 = (v21 + 1);
                  v16 = a2;
                  v17 = a3;
                  v18 = v20;
LABEL_28:
                  v9 = v13(v16, v17, v18, 5, v15, v19, &v31);
                  if ((v9 & 0x80000000) != 0)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_29;
                }

                v8[1] = 0;
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "NLUPOSMAP from %s (NLU %s) to %s");
              }

              else
              {
                cstdlib_strncpy(v8, __s, 1uLL);
                v8[1] = 0;
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "NLUPOSMAP from %s to %s (default in lieu of NLU field)");
              }

              v13 = *(a1[7] + 160);
              v14 = v32;
              v15 = (cstdlib_strlen(v8) + 1);
              v16 = a2;
              v17 = a3;
              v18 = v14;
              v19 = v8;
              goto LABEL_28;
            }
          }
        }
      }
    }

LABEL_34:
    heap_Free(*(*a1 + 8), v8);
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  return v10;
}

uint64_t hlp_RemoveWordPhraseBoundaries(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5, _WORD *a6)
{
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  *a6 = 0;
  result = (*(a1[7] + 104))(a2, a3, 1, 0, &v22 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1[7] + 152))(a2, a3, 2, HIWORD(v22), &v18);
    if ((result & 0x80000000) == 0)
    {
      if (!v18)
      {
        goto LABEL_26;
      }

      result = (*(a1[7] + 104))(a2, a3, 2, HIWORD(v22), &v22);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v13 = v22;
      if (v22)
      {
        v14 = 0;
        v15 = 4 * a4;
        do
        {
          result = (*(a1[7] + 168))(a2, a3, v13, 0, 1, &v21, &v20 + 2);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v16 = v22;
          if (v21 <= 0xA && ((1 << v21) & 0x610) != 0)
          {
            result = (*(a1[7] + 168))(a2, a3, v22, 1, 1, &v19, &v20 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = (*(a1[7] + 168))(a2, a3, v22, 2, 1, &v18 + 2, &v20 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (*a6 && v14)
            {
              *(v14 + 4 * (*a6 - 1) + 2) = HIWORD(v18);
            }
          }

          result = (*(a1[7] + 120))(a2, a3, v22, &v22);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v21 == 15)
          {
            result = (*(a1[7] + 168))(a2, a3, v16, 1, 1, &v20, &v20 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = (*(a1[7] + 168))(a2, a3, v16, 2, 1, &v19 + 2, &v20 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (!v14)
            {
              v14 = heap_Calloc(*(*a1 + 8), 1, v15);
              if (!v14)
              {
                log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
                result = 2315264010;
                break;
              }
            }

            *(v14 + 4 * *a6) = v20;
            *(v14 + 4 * (*a6)++ + 2) = HIWORD(v19);
            result = (*(a1[7] + 192))(a2, a3, v16);
          }

          v13 = v22;
        }

        while (v22);
      }

      else
      {
LABEL_26:
        v14 = 0;
      }

      *a5 = v14;
    }
  }

  return result;
}

uint64_t hlp_InsertWordPhraseBoundaries(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  v46[0] = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v39 = 0;
  __s = 0;
  __s1 = 0;
  v37 = 0;
  result = (*(*(a1 + 56) + 104))(a2, a3, 1, 0, v46);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a1 + 56) + 152))(a2, a3, 2, v46[0], &v37);
    if ((result & 0x80000000) == 0)
    {
      if (!v37 || (result = (*(*(a1 + 56) + 104))(a2, a3, 2, v46[0], &v45 + 2), (result & 0x80000000) == 0))
      {
        v13 = HIWORD(v45);
        v14 = 1;
        if (HIWORD(v45))
        {
          v15 = 0;
          v36 = 0;
          if (a4 == 1)
          {
            v16 = 0;
          }

          else
          {
            v16 = 200;
          }

          v34 = v16;
          v35 = (a5 + 2);
          v17 = -1;
          v18 = "*?";
          while (1)
          {
            result = (*(*(a1 + 56) + 168))(a2, a3, v13, 0, 1, &v44, &v43 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if ((v44 - 9) < 2 || v44 == 4)
            {
              break;
            }

            if (v44 == 15)
            {
              LOWORD(v45) = HIWORD(v45);
            }

LABEL_71:
            result = (*(*(a1 + 56) + 120))(a2, a3, HIWORD(v45), &v45 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v13 = HIWORD(v45);
            if (!HIWORD(v45))
            {
              v14 = v15 == 0;
              goto LABEL_82;
            }
          }

          result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v45), 1, 1, &v42 + 2, &v43 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v45), 2, 1, &v42, &v43 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 168))(a2, a3, HIWORD(v45), 8, 1, &v41, &v43 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 56) + 184))(a2, a3, HIWORD(v45), 18, &v37 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          LOWORD(v37) = 0;
          if (a6)
          {
            v21 = v35;
            v20 = a6;
            do
            {
              v22 = *v21;
              v21 += 2;
              if (v22 == v42)
              {
                LOWORD(v37) = 1;
              }

              --v20;
            }

            while (v20);
          }

          if (HIWORD(v37))
          {
            result = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v45), 18, &__s1, &v43 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v36 = cstdlib_strcmp(__s1, "external") == 0;
          }

          result = (*(*(a1 + 56) + 176))(a2, a3, HIWORD(v45), 3, &v39, &v43 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (cstdlib_strstr(v39, v18))
          {
            v15 = 1;
          }

          v23 = HIWORD(v42);
          v24 = v42;
          if (HIWORD(v42) > v42)
          {
            return 2315271857;
          }

          if (!v45)
          {
            result = hlp_InsertWordPhrase(a1, a2, a3, HIWORD(v45), SHIWORD(v42), v42, 0, v34, &v45);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

LABEL_48:
            if (v41)
            {
              v25 = v18;
              v48 = HIWORD(v45);
              v47 = 0;
              v46[1] = 0;
              if (((*(*(a1 + 56) + 120))(a2, a3) & 0x80000000) == 0)
              {
                v26 = 0;
                while (v48 && ((*(*(a1 + 56) + 168))(a2, a3) & 0x80000000) == 0)
                {
                  if (v47 == 15)
                  {
                    v26 = 1;
                  }

                  else if ((v47 - 9) < 2 || v47 == 4)
                  {
                    if (v26)
                    {
                      break;
                    }

                    v17 = v41;
                    v18 = v25;
                    if (v41 <= 0x1Du && !v36)
                    {
                      v41 = 0;
                      result = (*(*(a1 + 56) + 160))(a2, a3, HIWORD(v45), 8, 1, &v41, &v43);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      v17 = v41;
                    }

                    goto LABEL_71;
                  }

                  if (((*(*(a1 + 56) + 120))(a2, a3, v48, &v48) & 0x80000000) != 0)
                  {
                    break;
                  }
                }
              }

              v18 = v25;
            }

            else if (v37 == 1 && a4 == 1)
            {
              v17 = 0;
            }

            goto LABEL_71;
          }

          if (v17 < 1)
          {
            if (v17)
            {
LABEL_45:
              if (!a4)
              {
                result = (*(*(a1 + 56) + 160))(a2, a3, v45, 2, 1, &v42, &v43);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              v17 = -1;
              goto LABEL_48;
            }

            if (a4 == 1)
            {
              result = (*(*(a1 + 56) + 160))(a2, a3);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v23 = HIWORD(v42);
              v24 = v42;
            }

            result = hlp_InsertWordPhrase(a1, a2, a3, HIWORD(v45), v23, v24, 2, 0, &v45);
          }

          else
          {
            if (a4 == 1)
            {
              result = (*(*(a1 + 56) + 160))(a2, a3);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v23 = HIWORD(v42);
              v24 = v42;
            }

            result = hlp_InsertWordPhrase(a1, a2, a3, HIWORD(v45), v23, v24, 1, v17, &v45);
          }

          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_45;
        }

LABEL_82:
        if (a4 == 1 && v45)
        {
          result = (*(*(a1 + 56) + 160))(a2, a3, v45, 2, 1, &v42, &v43);
          if ((result & 0x80000000) != 0 || !v45)
          {
            return result;
          }
        }

        else if (!v45)
        {
          return result;
        }

        result = (*(*(a1 + 56) + 176))(a2, a3, v46[0], 0, &__s, &v43 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v29 = __s;
        if (__s && *__s)
        {
          if (v29[cstdlib_strlen(__s) - 1] == 63 || !v14)
          {
LABEL_92:
            v30 = *(*(a1 + 56) + 160);
            v31 = v45;
            v32 = "Y";
LABEL_95:
            v33 = cstdlib_strlen(v32);
            return v30(a2, a3, v31, 4, (v33 + 1), v32, &v43);
          }
        }

        else if (!v14)
        {
          goto LABEL_92;
        }

        v30 = *(*(a1 + 56) + 160);
        v31 = v45;
        v32 = "T";
        goto LABEL_95;
      }
    }
  }

  return result;
}

uint64_t fe_phrasing_Process_Depes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0;
  __s = 0;
  v49 = 0;
  v48 = 0;
  __s1 = 0;
  v46 = 0;
  *a5 = 1;
  v8 = (*(a1[7] + 104))(a3, a4, 1, 0, &v56 + 2);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (((*(a1[7] + 184))(a3, a4, HIWORD(v56), 0, &v48) & 0x80000000) != 0)
  {
    return v8;
  }

  if (v48 != 1)
  {
    return v8;
  }

  v8 = (*(a1[7] + 176))(a3, a4, HIWORD(v56), 0, &v57, &v54 + 2);
  if ((v8 & 0x80000000) != 0 || HIWORD(v54) < 2u)
  {
    return v8;
  }

  v9 = (*(a1[7] + 176))(a3, a4, HIWORD(v56), 1, &v50, &v49 + 2);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = *(v50 + 12);
  LastTnMarkerUpToPos = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v56), &v56);
  if ((LastTnMarkerUpToPos & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

  v12 = 1;
  v13 = 1;
  while (1)
  {
    if (!v56)
    {
      v21 = heap_Alloc(*(*a1 + 8), v12 + 128);
      a1[17] = v21;
      if (!v21 || (cstdlib_strcpy(v21, ""), v22 = heap_Alloc(*(*a1 + 8), v12), (a1[18] = v22) == 0) || (cstdlib_strcpy(v22, ""), v23 = heap_Alloc(*(*a1 + 8), v12), (a1[19] = v23) == 0))
      {
        v8 = 2315264010;
        log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
        goto LABEL_26;
      }

      cstdlib_strcpy(v23, "");
      LastTnMarkerUpToPos = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v56), &v56);
      if ((LastTnMarkerUpToPos & 0x80000000) == 0)
      {
        LOWORD(v24) = v56;
        HIWORD(v55) = v56;
        if (v56)
        {
          v25 = 0;
          v43 = v10;
          do
          {
            LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, v24, 0, 1, &v52, &v54 + 2);
            if ((LastTnMarkerUpToPos & 0x80000000) != 0)
            {
              goto LABEL_25;
            }

            if (v52 - 9 < 2 || v52 == 4)
            {
              *__dst = 0;
              v45 = 0;
              v48 = 0;
              LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v55), 1, 1, &v54, &v54 + 2);
              if ((LastTnMarkerUpToPos & 0x80000000) != 0)
              {
                goto LABEL_25;
              }

              LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v55), 2, 1, &v53, &v54 + 2);
              if ((LastTnMarkerUpToPos & 0x80000000) != 0)
              {
                goto LABEL_25;
              }

              if ((v53 - v54) <= 1)
              {
                v27 = 0;
              }

              else
              {
                v27 = -1;
              }

              *__dst = 0;
              v28 = v49;
              v29 = HIWORD(v49);
              if (v49 < HIWORD(v49))
              {
                v42 = v25;
                v30 = v55;
                v31 = 32 * v49;
                do
                {
                  if ((*(v50 + v31 + 12) - v10) >= (v53 + v27))
                  {
                    break;
                  }

                  if (*(v50 + v31) == 8 && v30 != 0)
                  {
                    *__dst += *(v50 + v31 + 24);
                    LastTnMarkerUpToPos = (*(a1[7] + 160))(a3, a4, v30, 8, 1, __dst, &v45);
                    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                    {
                      goto LABEL_25;
                    }

                    v44 = *(a1[7] + 160);
                    v33 = cstdlib_strlen("external");
                    LastTnMarkerUpToPos = v44(a3, a4, v30, 18, (v33 + 1), "external", &v45);
                    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                    {
                      goto LABEL_25;
                    }

                    v29 = HIWORD(v49);
                    LOWORD(v10) = v43;
                  }

                  ++v28;
                  v31 += 32;
                }

                while (v28 < v29);
                v25 = v42;
              }

              LOWORD(v49) = v28;
              *__dst = 0;
              if (((*(a1[7] + 184))(a3, a4, HIWORD(v55), 8, &v48) & 0x80000000) != 0 || !v48)
              {
                LastTnMarkerUpToPos = (*(a1[7] + 160))(a3, a4, HIWORD(v55), 8, 1, __dst, &v45);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }
              }

              v34 = HIWORD(v55);
              LOWORD(v55) = HIWORD(v55);
            }

            else if (v52 == 5)
            {
              v35 = HIWORD(v55);
              v34 = v25;
              if (HIWORD(v55) != v25)
              {
                LastTnMarkerUpToPos = (*(a1[7] + 176))(a3, a4, HIWORD(v55), 4, &__s1, &v54 + 2);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }

                LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v55), 1, 1, &v54, &v54 + 2);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }

                LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, HIWORD(v55), 2, 1, &v53, &v54 + 2);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }

                LastTnMarkerUpToPos = hlp_GetLastTnMarkerUpToPos(a1, a3, a4, HIWORD(v56), v54, v59);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }

                if (cstdlib_strcmp(__s1, "phon"))
                {
                  v36 = __s1;
                }

                else
                {
                  v36 = v59;
                  __s1 = v59;
                }

                LastTnMarkerUpToPos = hlp_Remap(a1, a3, a4, HIWORD(v56), HIWORD(v55), v36, &v53);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }

                v46 = 0;
                cstdlib_strcpy(__dst, "tnpausedur");
                v37 = cstdlib_strlen(__s1);
                if (v37 < 255 - cstdlib_strlen(__dst))
                {
                  cstdlib_strcat(__dst, __s1);
                  if ((paramc_ParamGetUInt(*(*a1 + 40), __dst, &v46) & 0x80000000) != 0)
                  {
                    v46 = 0;
                  }
                }

                if (cstdlib_strstr(__s1, "spell"))
                {
                  v38 = HIWORD(v49);
                  v39 = v53;
                  v40 = v50;
                  if (HIWORD(v49))
                  {
                    v41 = v50 + 12;
                    do
                    {
                      if (v53 <= (*v41 - v10))
                      {
                        break;
                      }

                      if (*(v41 - 12) == 31)
                      {
                        v46 = *(v41 + 12);
                      }

                      v41 += 32;
                      --v38;
                    }

                    while (v38);
                  }
                }

                else
                {
                  v39 = v53;
                  v40 = v50;
                }

                LastTnMarkerUpToPos = hlp_Phrasing(a1, v57, v39, __s1, a3, a4, &v56, v40, &v49, &v49 + 1, v10, v46, &v55, v12);
                if ((LastTnMarkerUpToPos & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }

                v24 = v56;
                HIWORD(v55) = v56;
                v25 = v35;
                if (!v56)
                {
                  break;
                }

                continue;
              }
            }

            else
            {
              v34 = HIWORD(v55);
            }

            LastTnMarkerUpToPos = (*(a1[7] + 120))(a3, a4, v34, &v55 + 2);
            if ((LastTnMarkerUpToPos & 0x80000000) != 0)
            {
              goto LABEL_25;
            }

            v24 = HIWORD(v55);
            if (!v56)
            {
              break;
            }
          }

          while (v24);
        }

        LastTnMarkerUpToPos = hlp_InsertWordPhraseBoundaries(a1, a3, a4, 0, 0, 0);
      }

LABEL_25:
      v8 = LastTnMarkerUpToPos;
      goto LABEL_26;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    if (v52 > 0xA || ((1 << v52) & 0x610) == 0)
    {
      goto LABEL_24;
    }

    if (!v13)
    {
      ++v12;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, v56, 1, 1, &v54, &v54 + 2);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 168))(a3, a4, v56, 2, 1, &v53, &v54 + 2);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    LastTnMarkerUpToPos = (*(a1[7] + 176))(a3, a4, v56, 5, &__s, &v54 + 2);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    if (v54 > v53)
    {
      break;
    }

    v15 = cstdlib_strlen(__s);
    v16 = v53 - v54;
    if (v15 > (v53 - v54))
    {
      v16 = cstdlib_strlen(__s);
    }

    v13 = 0;
    v12 += v16;
LABEL_24:
    LastTnMarkerUpToPos = (*(a1[7] + 120))(a3, a4, v56, &v56);
    if ((LastTnMarkerUpToPos & 0x80000000) != 0)
    {
      goto LABEL_25;
    }
  }

  v8 = 2315271857;
LABEL_26:
  v17 = a1[17];
  if (v17)
  {
    heap_Free(*(*a1 + 8), v17);
  }

  a1[17] = 0;
  v18 = a1[18];
  if (v18)
  {
    heap_Free(*(*a1 + 8), v18);
  }

  a1[18] = 0;
  v19 = a1[19];
  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
  }

  a1[19] = 0;
  return v8;
}