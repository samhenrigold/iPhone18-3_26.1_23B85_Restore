uint64_t count_inserted_oneword_bytes(const char *a1)
{
  if (a1 && cstdlib_strlen(a1) && (v2 = cstdlib_strlen(a1)) != 0)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = cstdlib_strlen("↕");
      if (!cstdlib_strncmp(&a1[v5], "↕", v6))
      {
        v4 += cstdlib_strlen("↕");
      }

      v7 = cstdlib_strlen("§");
      if (!cstdlib_strncmp(&a1[v5], "§", v7))
      {
        v4 += cstdlib_strlen("§");
      }

      v5 += utf8_determineUTF8CharLength(a1[v5]);
    }

    while (v5 < v3);
  }

  else
  {
    LOWORD(v4) = 0;
  }

  return v4;
}

uint64_t printNode(int a1, const char **a2, char *a3, unsigned __int16 *a4, void *a5, unsigned __int16 *a6, unsigned __int16 *a7, int a8)
{
  if (!a1)
  {
    return 0;
  }

  sprintf(a3, "[%3d] ", a8);
  v14 = add2Str(*a6, a2, a4, a3);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v15 = *(a7 + 1);
  if (v15 == 2)
  {
    v16 = *a6;
    v17 = "(T) ";
  }

  else
  {
    if (v15 != 1)
    {
      goto LABEL_9;
    }

    v16 = *a6;
    v17 = "(S) ";
  }

  v14 = add2Str(v16, a2, a4, v17);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

LABEL_9:
  v14 = add2Str(*a6, a2, a4, a3);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  sprintf(a3, "NODE <%3d,%3d > ", *a7, a7[1]);
  v18 = add2Str(*a6, a2, a4, a3);
  if ((v18 & 0x80000000) == 0)
  {
    v19 = *a7;
    if (v19 < a7[1])
    {
      v20 = 224 * v19;
      do
      {
        v14 = add2Str(*a6, a2, a4, *(*(*a5 + v20 + 16) + 8 * a6[8]));
        if ((v14 & 0x80000000) != 0)
        {
          return v14;
        }

        if (*(*a5 + v20 + 72) != 255)
        {
          sprintf(a3, "_%d", *(*a5 + v20 + 72));
          v14 = add2Str(*a6, a2, a4, a3);
          if ((v14 & 0x80000000) != 0)
          {
            return v14;
          }
        }

        v18 = add2Str(*a6, a2, a4, " ");
        if ((v18 & 0x80000000) != 0)
        {
          return v18;
        }

        ++v19;
        v20 += 224;
      }

      while (v19 < a7[1]);
    }

    if (!FLOATSUR_GT_INT(a7 + 4, 0, 0) || (sprintf(a3, "phraseWeight=%d.%d ", a7[4], a7[5]), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
    {
      if (!FLOATSUR_GT_INT(a7 + 6, 0, 0) || (sprintf(a3, "bndWeight=%d.%d ", a7[6], a7[7]), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
      {
        if (!FLOATSUR_GT_INT(a7 + 8, 0, 0) || (sprintf(a3, "bndValue=%d.%d ", a7[8], a7[9]), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
        {
          v21 = *(a7 + 5);
          if (v21 > 2)
          {
            if (v21 == 4)
            {
              v22 = "bndType=S ";
            }

            else
            {
              if (v21 != 3)
              {
                goto LABEL_35;
              }

              v22 = "bndType=W ";
            }
          }

          else
          {
            if (!v21)
            {
LABEL_36:
              if (*(a7 + 6) != 1 || (sprintf(a3, "bProcessed=%d ", 1), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
              {
                if (*(a7 + 7) != 1 || (sprintf(a3, "bBndBefore=%d ", 1), v18 = add2Str(*a6, a2, a4, a3), (v18 & 0x80000000) == 0))
                {
                  log_OutText(*(*a6 + 32), "FE_PHRASING", 5, 0, "%s", *a2);
                  cstdlib_strcpy(*a2, "");
                }
              }

              return v18;
            }

            if (v21 != 1)
            {
LABEL_35:
              v18 = add2Str(*a6, a2, a4, a3);
              if ((v18 & 0x80000000) != 0)
              {
                return v18;
              }

              goto LABEL_36;
            }

            v22 = "bndType=U ";
          }

          cstdlib_strcpy(a3, v22);
          goto LABEL_35;
        }
      }
    }
  }

  return v18;
}

uint64_t printLevel(uint64_t result, const char **a2, char *a3, unsigned __int16 *a4, void *a5, unsigned __int16 *a6, uint64_t a7, const char *a8)
{
  if (result)
  {
    v14 = result;
    log_OutText(*(*a6 + 32), "FE_PHRASING", 5, 0, "Level dump : %s", a8);
    if (*(a7 + 8))
    {
      v15 = 0;
      v16 = 0;
      do
      {
        result = printNode(v14, a2, a3, a4, a5, a6, (*a7 + v15), v16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        ++v16;
        v15 += 32;
      }

      while (v16 < *(a7 + 8));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t printAsString(int a1, char **a2, char *a3, unsigned __int16 *a4, void *a5, unsigned __int16 *a6, uint64_t *a7, const char *a8)
{
  if (!a1)
  {
    return 0;
  }

  cstdlib_strcpy(*a2, "");
  if (*(a7 + 4))
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *a7;
      v17 = (*a7 + 32 * v14);
      v18 = *v17;
      if (v18 < v17[1])
      {
        v19 = 224 * v18;
        do
        {
          v20 = *a5 + v19;
          if (!*(v20 + 220))
          {
            v21 = add2Str(*a6, a2, a4, *(*(v20 + 16) + 8 * a6[8]));
            if ((v21 & 0x80000000) != 0)
            {
              return v21;
            }

            if (*(*a5 + v19 + 72) != 255)
            {
              sprintf(a3, "_%d", *(*a5 + v19 + 72));
              v21 = add2Str(*a6, a2, a4, a3);
              if ((v21 & 0x80000000) != 0)
              {
                return v21;
              }
            }

            v15 = add2Str(*a6, a2, a4, " ");
            if ((v15 & 0x80000000) != 0)
            {
              return v15;
            }

            v16 = *a7;
          }

          ++v18;
          v19 += 224;
        }

        while (v18 < *(v16 + 32 * v14 + 2));
      }

      v22 = *(v16 + 32 * v14 + 20);
      if (v22 == 4)
      {
        break;
      }

      if (v22 == 3)
      {
        v23 = *a6;
        v24 = a2;
        v25 = a4;
        v26 = "| ";
        goto LABEL_17;
      }

LABEL_18:
      if (++v14 >= *(a7 + 4))
      {
        goto LABEL_22;
      }
    }

    v23 = *a6;
    v24 = a2;
    v25 = a4;
    v26 = "|| ";
LABEL_17:
    v15 = add2Str(v23, v24, v25, v26);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    goto LABEL_18;
  }

  v15 = 0;
LABEL_22:
  log_OutText(*(*a6 + 32), "FE_PHRASING", 5, 0, "%s%s", a8, *a2);
  cstdlib_strcpy(*a2, "");
  return v15;
}

unsigned __int16 *removeNode(unsigned __int16 *result, unsigned int a2)
{
  v2 = result;
  v3 = a2 + 1;
  v4 = result[4];
  if (v4 != v3)
  {
    result = cstdlib_memmove((*result + 32 * a2), (*result + 32 * v3), 32 * (v4 - v3));
    LOWORD(v4) = v2[4];
  }

  v2[4] = v4 - 1;
  return result;
}

uint64_t addNode(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, int a5, uint64_t a6)
{
  NodeMem = getNodeMem(a1, a6, a2, 1u);
  if ((NodeMem & 0x80000000) == 0)
  {
    v11 = *a2 + 32 * *(a2 + 8);
    *v11 = a3;
    *(v11 + 2) = a4;
    *(v11 + 4) = a5;
    FLOATSUR_SET_INT((v11 + 8), 0, 0);
    FLOATSUR_SET_INT((*a2 + 32 * *(a2 + 8) + 12), 0, 0);
    FLOATSUR_SET_INT((*a2 + 32 * *(a2 + 8) + 16), 0, 0);
    v12 = *(a2 + 8);
    v13 = *a2 + 32 * v12;
    *(v13 + 24) = 0;
    *(v13 + 20) = 0;
    *(a2 + 8) = v12 + 1;
  }

  return NodeMem;
}

uint64_t getNodeMem(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if (!*a3)
  {
    if (a4 <= a2)
    {
      v9 = 0;
    }

    else
    {
      v9 = a4;
    }

    v10 = v9 + a2;
    v11 = heap_Calloc(*(a1 + 8), 1, (32 * (v9 + a2)) | 1);
    *a3 = v11;
    if (v11)
    {
      v8 = 0;
      *(a3 + 10) = v10;
      return v8;
    }

LABEL_11:
    v8 = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return v8;
  }

  v6 = *(a3 + 10);
  if (*(a3 + 8) + a4 <= v6)
  {
    return 0;
  }

  v7 = heap_Realloc(*(a1 + 8), *a3, 32 * v6 + 321);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = 0;
  *a3 = v7;
  *(a3 + 10) += 10;
  return v8;
}

uint64_t addNewNode(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  NodeMem = getNodeMem(a1, a4, a2, 1u);
  if ((NodeMem & 0x80000000) == 0)
  {
    cstdlib_memcpy((*a2 + 32 * *(a2 + 8)), a3, 0x20uLL);
    ++*(a2 + 8);
  }

  return NodeMem;
}

uint64_t addLevel(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  NodeMem = getNodeMem(a1, a4, a2, *(a3 + 8));
  if ((NodeMem & 0x80000000) == 0)
  {
    v7 = *(a2 + 8);
    LOWORD(v8) = *(a3 + 8);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        cstdlib_memcpy((*a2 + 32 * v7), (*a3 + v9), 0x20uLL);
        ++v10;
        ++v7;
        v8 = *(a3 + 8);
        v9 += 32;
      }

      while (v10 < v8);
      LOWORD(v7) = *(a2 + 8);
    }

    *(a2 + 8) = v7 + v8;
  }

  return NodeMem;
}

uint64_t createLevel0ProsodicStructure(unsigned __int16 *a1)
{
  v19 = 0;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO createLevel0ProsodicStructure()", 0);
  v18 = 0;
  v2 = a1 + 336;
  LOWORD(v3) = a1[340];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = a1 + 15;
    v7 = a1 + 16;
    do
    {
      v8 = v5;
      v9 = *(*v2 + 224 * v5 + 56);
      if (v9)
      {
        v10 = v9 + 32 * *v6;
        if (*v10 == 1)
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "get phrasing for token (%d,%d)", v4, *(v10 + 10));
          result = getPhrasingForToken(a1, &v18, v5);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = addLevel(*a1, (a1 + 360), &v18, a1[340]);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v12 = a1 + 15;
          if (v18)
          {
            heap_Free(*(*a1 + 8), v18);
            v18 = 0;
            LODWORD(v19) = 0;
            v12 = a1 + 15;
          }

          goto LABEL_11;
        }

        v13 = v9 + 32 * *v7;
        if (*v13 == 1)
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "add syntactic node (%d,%d)", *(v13 + 8), *(v13 + 10) + 1);
          v14 = *(*(a1 + 84) + 224 * v5 + 56) + 32 * a1[16];
          result = addNode(*a1, (a1 + 360), *(v14 + 8), *(v14 + 10) + 1, 1, a1[340]);
          v12 = a1 + 16;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

LABEL_11:
          v5 = *(*(*v2 + 224 * v5 + 56) + 32 * *v12 + 10) + 1;
          goto LABEL_21;
        }
      }

      v15 = v5;
      if (v5 < v3)
      {
        v16 = (*v2 + 224 * v5 + 56);
        while (1)
        {
          v17 = *v16;
          if (*v16)
          {
            if (*(v17 + 32 * *v6) == 1 || *(v17 + 32 * *v7) == 1)
            {
              break;
            }
          }

          ++v8;
          v16 += 28;
          if (v3 == v8)
          {
            v5 = v3;
            goto LABEL_20;
          }
        }

        v5 = v8;
      }

LABEL_20:
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "handle in between node (%d,%d)", v4, v5);
      result = addNode(*a1, (a1 + 360), v15, v5, 1, a1[340]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_21:
      v4 = v5;
      v3 = a1[340];
    }

    while (v5 < v3);
  }

  return printLevel(*(a1 + 277), a1 + 136, *(a1 + 137), a1 + 552, a1 + 84, a1 + 4, (a1 + 360), "LEVEL0");
}

uint64_t checkStructure(uint64_t a1, unsigned __int16 **a2)
{
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO checkStructure()", 0);
  v4 = *(a2 + 4);
  if (!*(a2 + 4))
  {
    return 0;
  }

  v5 = 0;
  for (i = *a2; ; i += 16)
  {
    v7 = v5 + 1;
    if (v5 + 1 < v4 && i[1] != i[16])
    {
      break;
    }

    if (*(i + 1) == 1)
    {
      v8 = *(*(a1 + 672) + 224 * *i + 56);
      if (!v8 || !*(v8 + 32 * *(a1 + 32)))
      {
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "WARNING : wordindex=%d starts node %d but syntactic phrase doesnt start here", *i, v5);
        return 0;
      }
    }

    ++v5;
    if (v4 == v7)
    {
      return 0;
    }
  }

  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "nodeindex=%d and %d do not follow in sequence", v5, v5 + 1);
  return 2315264000;
}

uint64_t createLevel1ProsodicStructure(uint64_t a1)
{
  __b = 0u;
  v17 = 0u;
  memset(v15, 0, 12);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO createLevel1ProsodicStructure()", 0);
  if (*(a1 + 728))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing node %d", v3);
      result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), (*(a1 + 720) + 32 * v2), v2);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      cstdlib_memset(&__b, 0, 0x20uLL);
      LOWORD(__b) = v5;
      v7 = *(a1 + 720);
      v8 = (v7 + 32 * v2);
      WORD1(__b) = v8[1];
      v9 = *(v8 + 1);
      DWORD1(__b) = v9;
      DWORD1(v17) = 1;
      v10 = v3 + 1;
      if (v10 != *(a1 + 728))
      {
        if (v9 == 2)
        {
          if (v5 != *v8)
          {
            cstdlib_memset(&__b, 0, 0x20uLL);
            LOWORD(__b) = v5;
            WORD1(__b) = *(*(a1 + 720) + 32 * v2);
            DWORD1(__b) = 1;
            DWORD1(v17) = 1;
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  adding (S) node before this token node", 0);
            result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), &__b, 0);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = addNewNode(*a1, a1 + 736, &__b, *(a1 + 728));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v7 = *(a1 + 720);
          }

          cstdlib_memcpy(&__b, (v7 + 32 * v2), 0x20uLL);
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  token node - copy verbatim", 0);
LABEL_20:
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  adding new node", 0);
          result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), &__b, 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = addNewNode(*a1, a1 + 736, &__b, *(a1 + 728));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v5 = WORD1(__b);
          v4 = v10;
        }

        else
        {
          v14 = 0;
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  apply general rules on WordIdx %d", *v8);
          v11 = 0;
          v12 = 0;
          WORD2(v15[0]) = *(*(a1 + 720) + 32 * v2);
          LODWORD(v15[0]) = 4;
          *(v15 + 6) = 0;
          while (!HIDWORD(v14))
          {
            if (v12 >= *(a1 + 168))
            {
              goto LABEL_23;
            }

            result = matchMAPRULE2NUM_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(a1 + 160) + v11, v15, &v14 + 1, &v14);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (HIDWORD(v14) == 1)
            {
              log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  general rule %d FIRED -> set bndWeight = %d.%d", v12, v14, WORD1(v14));
            }

            ++v12;
            v11 += 32;
          }

          if (HIDWORD(v14) == 1)
          {
            HIDWORD(__b) = v14;
            goto LABEL_20;
          }

LABEL_23:
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  no rules fire", 0);
        }
      }

      v3 = ++v2;
      if (v2 >= *(a1 + 728))
      {
        v13 = v4;
        goto LABEL_27;
      }
    }
  }

  else
  {
    v5 = 0;
    v13 = 0;
LABEL_27:
    if (v5 == *(a1 + 680))
    {
      return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), a1 + 736, "LEVEL1");
    }

    cstdlib_memset(&__b, 0, 0x20uLL);
    LOWORD(__b) = v5;
    WORD1(__b) = *(a1 + 680);
    *(&__b + 4) = *(*(a1 + 720) + 32 * v13 + 4);
    FLOATSUR_SET_INT((&__b | 0xC), 50, 0);
    DWORD1(v17) = 1;
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  adding end node", 0);
    result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), &__b, 0);
    if ((result & 0x80000000) == 0)
    {
      result = addNewNode(*a1, a1 + 736, &__b, *(a1 + 728));
      if ((result & 0x80000000) == 0)
      {
        return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), a1 + 736, "LEVEL1");
      }
    }
  }

  return result;
}

uint64_t setLevel1StructureWeights(uint64_t a1)
{
  v39 = 0;
  v38 = 0;
  v37 = 0uLL;
  v2 = isStrSetting(a1 + 8, "PHRASE_WEIGHT_ALG", "AVERAGE");
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setLevel1StructureWeights(bApplyWeighting=%d)", 0);
  v3 = (a1 + 736);
  if (!*(a1 + 744))
  {
    return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), a1 + 736, "AFTER SET PHRASEWEIGHT");
  }

  v4 = 0;
  while (1)
  {
    log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "processing node %d", v4);
    result = printNode(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), (*(a1 + 736) + 32 * v4), v4);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v6 = (*v3 + 32 * v4);
    if (*(v6 + 1) == 2)
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "skip token node", 0);
    }

    else
    {
      v7 = *(*(a1 + 672) + 224 * *v6 + 56);
      if (v7 && *(v7 + 32 * *(a1 + 32)) == 1)
      {
        v35 = v2;
        v36 = 0;
        FLOATSUR_SET_INT(&v36 + 2, 0, 0);
        FLOATSUR_SET_INT(&v36, 0, 0);
        v8 = (*v3 + 32 * v4);
        v9 = *v8;
        if (v9 < v8[1])
        {
          do
          {
            FLOATSUR_PLUS_INT(&v36, &v36, *(*(a1 + 672) + 224 * v9 + 24), 0);
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  word[%d] : nodeSyllableWeight=%d.%d (word[%d].nsyll=%d)", v9, v36, WORD1(v36), v9, *(*(a1 + 672) + 224 * v9 + 24));
            v10 = 0;
            v11 = 0;
            v39 = 0;
            do
            {
              if (v11 >= *(a1 + 216))
              {
                break;
              }

              WORD2(v37) = v9;
              LODWORD(v37) = 1;
              *(&v37 + 6) = 0;
              result = matchMMAPREGEX2NUM_TRule((a1 + 8), a1 + 672, (*(a1 + 208) + v10), &v37, &v39, &v36 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v12 = v39;
              if (v39 == 1)
              {
                log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  word[%d] : pos weight rule %d FIRED nodePOSWeight=%d.%d", v9, v11, WORD2(v36), HIWORD(v36));
                v12 = v39;
              }

              ++v11;
              v10 += 10;
            }

            while (!v12);
            ++v9;
          }

          while (v9 < *(*v3 + 32 * v4 + 2));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  unweighted nodePOSWeight = %d.%d", WORD2(v36), HIWORD(v36));
        if (v2)
        {
          FLOATSUR_TIMES(&v36 + 2, &v36 + 2, (a1 + 200));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted nodePOSWeight = %d.%d", WORD2(v36), HIWORD(v36));
        v13 = 0;
        v14 = 0;
        v39 = 0;
        do
        {
          if (v14 >= *(a1 + 240))
          {
            break;
          }

          matchMAPNUMNUM_TRule((*(a1 + 232) + v13), &v36, &v39);
          v15 = v39;
          if (v39 == 1)
          {
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  syll weight rule %d FIRED nodeSyllableWeight=%d.%d", v14, v36, WORD1(v36));
            v15 = v39;
          }

          ++v14;
          v13 += 12;
        }

        while (!v15);
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  unweighted nodeSyllableWeight = %d.%d", v36, WORD1(v36));
        if (v2)
        {
          FLOATSUR_TIMES(&v36, &v36, (a1 + 224));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted nodeSyllableWeight = %d.%d", v36, WORD1(v36));
        if (*(a1 + 256))
        {
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  apply %d gen weight rules", *(a1 + 256));
          v16 = heap_Calloc(*(*a1 + 8), 1, (4 * *(a1 + 256)) | 1);
          if (!v16)
          {
            log_OutPublic(*(*a1 + 32), "FE_PHRASING", 37000, 0);
            return 2315264010;
          }

          v17 = v16;
          v18 = *(a1 + 736);
          v21 = (v18 + 32 * v4);
          v19 = *v21;
          v20 = v21[1];
          LODWORD(v21) = *(a1 + 256);
          if (v19 < v20)
          {
            v22 = *(a1 + 256);
            do
            {
              if (v22)
              {
                v23 = 0;
                v34 = v19;
                while (2)
                {
                  v39 = 0;
                  WORD2(v37) = v19;
                  LODWORD(v37) = 4;
                  *(&v37 + 6) = 0;
                  v24 = *(*(a1 + 248) + 12 * v23 + 8);
                  v25 = 32 * v24;
                  do
                  {
                    if (v24 >= *(*(a1 + 248) + 12 * v23 + 10))
                    {
                      break;
                    }

                    if ((matchMAPRULE2NUM_TRule(*(a1 + 1108), (a1 + 1088), (a1 + 1104), *(a1 + 1096), a1 + 8, a1 + 672, *(a1 + 264) + v25, &v37, &v39, &v38) & 0x80000000) != 0)
                    {
                      heap_Free(*(*a1 + 8), v17);
                      return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), a1 + 736, "AFTER SET PHRASEWEIGHT");
                    }

                    v26 = v39;
                    if (v39 == 1)
                    {
                      *(v17 + 4 * v23) = v38;
                      v26 = v39;
                      if (v39 == 1)
                      {
                        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  general weight rule %d FIRED genRuleValues[%d]=%d.%d", v24, v23, WORD2(v36), HIWORD(v36));
                        v26 = v39;
                      }
                    }

                    ++v24;
                    v25 += 32;
                  }

                  while (!v26);
                  v21 = *(a1 + 256);
                  ++v23;
                  LOWORD(v19) = v34;
                  if (v23 < v21)
                  {
                    continue;
                  }

                  break;
                }

                v18 = *v3;
                v22 = *(a1 + 256);
                v2 = v35;
              }

              LOWORD(v19) = *(*(*(a1 + 672) + 224 * v19 + 56) + 32 * *(a1 + 32) + 10) + 1;
            }

            while (*(v18 + 32 * v4 + 2) > v19);
          }

          if (v21)
          {
            v27 = 0;
            v28 = 4;
            v29 = v17;
            do
            {
              log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  unweighted genRuleValues[%d]  = %d.%d", v27, *v29, v29[1]);
              if (v2)
              {
                FLOATSUR_TIMES(v29, v29, (*(a1 + 248) + v28));
              }

              log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted genRuleValues[%d]  = %d.%d", v27++, *v29, v29[1]);
              v29 += 2;
              v28 += 12;
            }

            while (v27 < *(a1 + 256));
          }
        }

        else
        {
          v17 = 0;
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  compute final phraseweight = %d.%d", *(*(a1 + 736) + 32 * v4 + 8), *(*(a1 + 736) + 32 * v4 + 10));
        FLOATSUR_PLUS(&v37 + 6, &v36 + 2, &v36);
        v30 = (*(a1 + 736) + 32 * v4 + 8);
        FLOATSUR_PLUS(v30, v30, &v37 + 6);
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  add weighted nodePOSWeight(%d.%d) and nodeSyllableWeight(%d.%d) -> %d.%d", WORD2(v36), HIWORD(v36), v36, WORD1(v36), *(*(a1 + 736) + 32 * v4 + 8), *(*(a1 + 736) + 32 * v4 + 10));
        if (*(a1 + 256))
        {
          v31 = 0;
          v32 = v17;
          do
          {
            v33 = (*(a1 + 736) + 32 * v4 + 8);
            FLOATSUR_PLUS(v33, v33, v32);
            log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  add weighted genRuleValues[%d](%d.%d) -> %d.%d", v31++, *v32, v32[1], *(*(a1 + 736) + 32 * v4 + 8), *(*(a1 + 736) + 32 * v4 + 10));
            v32 += 2;
          }

          while (v31 < *(a1 + 256));
        }

        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  final phraseweight = %d.%d", *(*(a1 + 736) + 32 * v4 + 8), *(*(a1 + 736) + 32 * v4 + 10));
        if (v17)
        {
          heap_Free(*(*a1 + 8), v17);
        }
      }
    }

    if (++v4 >= *(a1 + 744))
    {
      return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), a1 + 736, "AFTER SET PHRASEWEIGHT");
    }
  }
}

uint64_t setLevel1Boundaries(uint64_t a1)
{
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  FLOATSUR_PLUS(&v20 + 2, (a1 + 396), (a1 + 400));
  FLOATSUR_PLUS(&v22, (a1 + 392), &v20 + 2);
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "DO setLevel1Boundaries(threshold_bnd_val_weak=%d threshold_weak_frag=%d threshold_bnd_val_strong=%d)", *(a1 + 380), *(a1 + 388), *(a1 + 384));
  getLowestBnd(a1, &v21);
  v2 = v21;
  log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "START lowestBnd : node %d", v21);
  if (HIDWORD(v21) == 1 && FLOATSUR_LT((*(a1 + 736) + 32 * v2 + 12), (a1 + 376)))
  {
    v3 = 0;
    v4 = (a1 + 736);
    v5 = v2;
    while (1)
    {
      v6 = v5;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "LOOP[%d] lowestBnd : node %d (bndWeight=%d.%d)", v3, v5, *(*(a1 + 736) + 32 * v2 + 12), *(*(a1 + 736) + 32 * v2 + 14));
      FLOATSUR_SET(&v18 + 1, (*(a1 + 736) + 32 * v2 + 8));
      FLOATSUR_SET_INT(&v18, 0, 0);
      v7 = v6 + 1;
      if (v7 < *(a1 + 744))
      {
        FLOATSUR_SET(&v18, (*v4 + 32 * v7 + 8));
      }

      FLOATSUR_SET(&v17, (*(a1 + 736) + 32 * v2 + 12));
      FLOATSUR_TIMES(&v20 + 2, &v18 + 2, (a1 + 392));
      FLOATSUR_TIMES(&v20, &v18, (a1 + 396));
      FLOATSUR_TIMES(&v19 + 2, &v17, (a1 + 400));
      FLOATSUR_PLUS(&v19, &v20 + 2, &v20);
      FLOATSUR_PLUS(&v19, &v19, &v19 + 2);
      FLOATSUR_DIV(&v20 + 2, &v19, &v22);
      FLOATSUR_TIMES_INT(&v17 + 1, &v20 + 2, 0xAu, 0);
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  weighted mean bndVal = %d.%d (thisphraseWeight=%d.%d thisBndWeight=%d.%d nextphraseWeight=%d.%d)", WORD2(v17), HIWORD(v17), WORD2(v18), HIWORD(v18), v17, WORD1(v17), v18, WORD1(v18));
      if (!FLOATSUR_LT(&v17 + 2, (a1 + 380)) && !FLOATSUR_LT(&v18 + 2, (a1 + 388)) && !FLOATSUR_LT(&v18, (a1 + 388)))
      {
        break;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  [bnd_val < threshold_weak(%d.%d) or one thisphraseWeight or nextphraseWeight < threshold_weak_frag(%d.%d)] remove node (merge %d and %d)", *(a1 + 380), *(a1 + 382), *(a1 + 388), *(a1 + 390), v6, v6 + 1);
      if (v7 == *(a1 + 744))
      {
        goto LABEL_10;
      }

      v8 = (*v4 + 32 * v2);
      *(*v4 + 32 * (v6 + 1)) = *v8;
      FLOATSUR_PLUS(v8 + 20, v8 + 20, v8 + 4);
      removeNode((a1 + 736), v6);
LABEL_12:
      getLowestBnd(a1, &v21);
      v2 = v21;
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "END LOOP lowestBnd : node %d", v21);
      if (HIDWORD(v21) != 1)
      {
        goto LABEL_23;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "ITERATION %d", v3);
      result = printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), a1 + 736, "ITER");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (FLOATSUR_EQUAL_INT((*v4 + 32 * v2 + 12), 0, 0))
      {
        *(*(a1 + 736) + 32 * v2 + 24) = 1;
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  NO CHANGE - marked node as processed", 0);
      }

      ++v3;
      v10 = FLOATSUR_LT((*v4 + 32 * v2 + 12), (a1 + 376));
      v5 = v2;
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    if (FLOATSUR_LT(&v17 + 2, (a1 + 384)))
    {
      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  set WEAK BND", 0);
      v11 = *(a1 + 736) + 32 * v2;
      v12 = 3;
    }

    else
    {
      if (!FLOATSUR_GTOREQUAL(&v17 + 2, (a1 + 384)))
      {
LABEL_10:
        *(*(a1 + 736) + 32 * v2 + 24) = 1;
        log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  NO CHANGE - marked node as processed", 0);
        goto LABEL_12;
      }

      log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  set STRONG BND", 0);
      v11 = *(a1 + 736) + 32 * v2;
      v12 = 4;
    }

    *(v11 + 20) = v12;
    *(v11 + 16) = HIDWORD(v17);
    goto LABEL_10;
  }

LABEL_23:
  if (*(a1 + 744))
  {
    v13 = 0;
    v14 = *(a1 + 736);
    v15 = 20;
    do
    {
      if (*(v14 + v15) <= 1u)
      {
        v16 = FLOATSUR_GT((v14 + v15 - 8), (a1 + 376));
        v14 = *(a1 + 736);
        if (v16)
        {
          *(v14 + v15) = 4;
          log_OutText(*(*a1 + 32), "FE_PHRASING", 5, 0, "  set node %d STRONG BND", v13);
          v14 = *(a1 + 736);
        }
      }

      *(*(a1 + 672) + 224 * *(v14 + v15 - 18) - 151) = *(v14 + v15);
      ++v13;
      v15 += 32;
    }

    while (v13 < *(a1 + 744));
  }

  return printLevel(*(a1 + 1108), (a1 + 1088), *(a1 + 1096), (a1 + 1104), (a1 + 672), (a1 + 8), a1 + 736, "AFTER SET BOUNDARIES");
}

uint64_t getLowestBnd(uint64_t result, unsigned __int16 *a2)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v2 = *(result + 744);
  if (*(result + 744))
  {
    v4 = result;
    v5 = 0;
    for (i = 24; *(*(result + 736) + i) == 1; i += 32)
    {
      if (v2 == ++v5)
      {
        return result;
      }
    }

    v7 = v5;
    *a2 = v5;
    *(a2 + 1) = 1;
    v8 = v5;
    if (v2 > v5)
    {
      v9 = i - 24;
      v8 = v5;
      do
      {
        v10 = *(v4 + 736);
        if (*(v10 + v9 + 20) == 1)
        {
          if ((result = FLOATSUR_LT((v10 + v9 + 12), (v10 + 32 * *a2 + 12)), v11 = *(v4 + 736), result) && !*(v11 + v9 + 24) || (result = FLOATSUR_LT_INT((v11 + v9 + 12), 0, 0), result))
          {
            v8 = v5;
            *a2 = v5;
            *(a2 + 1) = 1;
          }
        }

        ++v5;
        v2 = *(v4 + 744);
        v9 += 32;
      }

      while (v5 < v2);
    }

    if (v8 == v7 && v8 < v2 && !*(*(v4 + 736) + i))
    {
      *a2 = v7;
      *(a2 + 1) = 1;
    }
  }

  return result;
}

uint64_t getProsodicStructure(unsigned __int16 *a1)
{
  cstdlib_memset(a1 + 360, 0, 0x10uLL);
  cstdlib_memset(a1 + 368, 0, 0x10uLL);
  result = createLevel0ProsodicStructure(a1);
  if ((result & 0x80000000) == 0)
  {
    result = checkStructure(a1, a1 + 90);
    if ((result & 0x80000000) == 0)
    {
      if (*(a1 + 116))
      {
        result = simplifiedTokenPhrasing(*a1, a1 + 90, a1 + 84, a1 + 4);
        if ((result & 0x80000000) == 0)
        {
          v3 = *a1;

          return threePassIgtreePhrasing(v3, (a1 + 360), a1 + 84, (a1 + 4), a1 + 94);
        }
      }

      else if (*(a1 + 102))
      {
        result = simplifiedTokenPhrasing(*a1, a1 + 90, a1 + 84, a1 + 4);
        if ((result & 0x80000000) == 0)
        {
          v4 = *a1;

          return twoPassIgtreePhrasing(v4, (a1 + 360), a1 + 84, (a1 + 4), a1 + 94);
        }
      }

      else if (*(a1 + 95))
      {
        result = simplifiedTokenPhrasing(*a1, a1 + 90, a1 + 84, a1 + 4);
        if ((result & 0x80000000) == 0)
        {
          v5 = *a1;

          return singlePassIgtreePhrasing(v5, (a1 + 360), a1 + 84, (a1 + 4), a1 + 94);
        }
      }

      else
      {
        result = createLevel1ProsodicStructure(a1);
        if ((result & 0x80000000) == 0)
        {
          result = checkStructure(a1, a1 + 92);
          if ((result & 0x80000000) == 0)
          {
            result = setLevel1StructureWeights(a1);
            if ((result & 0x80000000) == 0)
            {

              return setLevel1Boundaries(a1);
            }
          }
        }
      }
    }
  }

  return result;
}

void *freeProsodicStructure(void *a1)
{
  v2 = a1[90];
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    a1[90] = 0;
  }

  v3 = a1[92];
  if (v3)
  {
    heap_Free(*(*a1 + 8), v3);
    a1[92] = 0;
  }

  return cstdlib_memset(a1 + 90, 0, 0x20uLL);
}

uint64_t getPwPredict(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, _WORD *a6, uint64_t a7)
{
  v7 = *a5;
  if (result)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v12 = result;
    while (1)
    {
      v13 = 0;
      v14 = 0;
      v15 = v9;
      v17 = 0.0;
      do
      {
        v16 = a2 + 28 * (v10 + v8);
        if (v17 < *(v16 + 4 * v13))
        {
          v17 = *(v16 + 4 * v13);
          v14 = v13;
        }

        ++v13;
      }

      while (v13 != 7);
      if (a3 > v10 && v8 == *(a4 + 2 * v10))
      {
        v18 = 0;
        v14 = 0;
        v19 = v10 + 1;
        v20 = a2 + 28 * (v10 + v11);
        v21 = 0.0;
        do
        {
          if (v21 < *(v20 + 4 * v18))
          {
            v21 = *(v20 + 4 * v18);
            v14 = v18;
          }

          ++v18;
        }

        while (v18 != 7);
        result = 0;
        v10 = v19;
      }

      else
      {
        result = 1;
      }

      v22 = *(a7 + 4 * v8);
      v23 = v22 == 1 || v14 == 0;
      if (v23 || v14 == 3)
      {
        break;
      }

      v25 = (v7 + 2 * v8);
      *v25 = 0;
      if ((result & 1) == 0)
      {
        v26 = 1;
LABEL_30:
        *v25 = 1;
        v9 = (v15 + v26);
        goto LABEL_31;
      }

      v9 = v15;
LABEL_31:
      ++v8;
      ++v11;
      if (v8 == v12)
      {
        goto LABEL_34;
      }
    }

    v9 = (v15 + 1);
    *(v7 + 2 * v8) = 1;
    if (!v8)
    {
      goto LABEL_31;
    }

    if (v22 != 1)
    {
      goto LABEL_31;
    }

    v25 = (v7 + 2 * (v8 - 1));
    result = *v25;
    if (*v25)
    {
      goto LABEL_31;
    }

    v26 = 2;
    goto LABEL_30;
  }

  v12 = 0;
  LOWORD(v9) = 0;
LABEL_34:
  v27 = v7 + 2 * v12;
  if (*(v27 - 2) != 1)
  {
    LOWORD(v9) = v9 + 1;
    *(v27 - 2) = 1;
  }

  *a6 = v9;
  return result;
}

uint64_t findLabel(uint64_t result, uint64_t a2, _WORD *a3)
{
  v3 = 0;
  v4 = 0;
  v6 = 0.0;
  do
  {
    v5 = a2 + 28 * result;
    if (v6 < *(v5 + 4 * v3))
    {
      v6 = *(v5 + 4 * v3);
      v4 = v3;
    }

    ++v3;
  }

  while (v3 != 7);
  *a3 = v4;
  return result;
}

uint64_t storeResult(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t *a6, _WORD *a7, _DWORD *a8, unsigned __int8 a9, const char **a10)
{
  v48 = *a6;
  if (!a3)
  {
LABEL_51:
    result = 0;
    *a6 = v48;
    return result;
  }

  v11 = 0;
  v46 = 0;
  v12 = 0;
  v47 = 0;
  v13 = a2 + 64;
  if (a9)
  {
    v14 = a10 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  v43 = v15;
  v41 = a3;
  v42 = a2;
  while (1)
  {
    v16 = a2 + 40 * v11;
    if (v43)
    {
LABEL_13:
      v20 = (a4 + 2 * v11);
      v21 = *v20;
      v22 = 1;
      if (*v20)
      {
        v23 = a8;
        v24 = v48;
        v25 = v46;
        if (v21 == 1)
        {
          goto LABEL_32;
        }

        if (!*a8)
        {
          goto LABEL_50;
        }

        goto LABEL_16;
      }

      v23 = a8;
      v24 = v48;
      v25 = v46;
    }

    else
    {
      v17 = *v16;
      v19 = a9;
      v18 = a10;
      while (!cstdlib_strstr(v17, *v18))
      {
        ++v18;
        if (!--v19)
        {
          goto LABEL_13;
        }
      }

      v22 = 0;
      v20 = (a4 + 2 * v11);
      v25 = v46;
      if (*v20)
      {
        v23 = a8;
        v24 = v48;
        goto LABEL_32;
      }

      LOBYTE(v21) = 1;
      v23 = a8;
      v24 = v48;
    }

    if (!*v23 || v25 >= *(v23 + 2))
    {
      if (!v22)
      {
        goto LABEL_32;
      }

LABEL_31:
      ++v12;
      goto LABEL_50;
    }

    if (*(v16 + 32) + 1 == *(*(v23 + 1) + 4 * v25))
    {
      LOBYTE(v21) = 1;
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_31;
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

LABEL_16:
    if (v25 < *(v23 + 2) && *(v16 + 32) + 1 == *(*(v23 + 1) + 4 * v25))
    {
      LOBYTE(v22) = 1;
      goto LABEL_32;
    }

LABEL_50:
    ++v11;
    v13 += 40;
    a2 = v42;
    if (v11 == v41)
    {
      goto LABEL_51;
    }
  }

  LOBYTE(v22) = 0;
LABEL_32:
  v26 = v12 + 1;
  *(v24 + 184 * v47 + 8) = v26;
  if (*v23 && v25 < *(v23 + 2) && *(v16 + 32) + 1 == *(*(v23 + 1) + 4 * v25))
  {
    if (!*v20)
    {
      v27 = heap_Realloc(*(a1 + 8), v24, 184 * *a7 + 184);
      if (!v27)
      {
        return 2315264010;
      }

      v49 = v27;
      cstdlib_memset((v27 + 184 * *a7), 0, 0xB8uLL);
      v24 = v49;
      ++*a7;
      *v20 = 1;
      v25 = v46;
    }

    ++v25;
  }

  v28 = v24 + 184 * v47;
  v48 = v24;
  v46 = v25;
  if (*(a5 + 2 * v11) == 1)
  {
    *(v28 + 72) = 1;
  }

  else
  {
    *(v28 + 72) = 0;
    if ((v22 & 1) == 0 && !*v20)
    {
      v29 = heap_Realloc(*(a1 + 8), v24, 184 * *a7 + 184);
      if (!v29)
      {
        return 2315264010;
      }

      v48 = v29;
      cstdlib_memset((v29 + 184 * *a7), 0, 0xB8uLL);
      ++*a7;
    }
  }

  v30 = v26;
  v31 = 2 * v26;
  v32 = heap_Alloc(*(a1 + 8), v31);
  v33 = (v48 + 184 * v47);
  *v33 = v32;
  if (v32)
  {
    v33[7] = "";
    if (v26)
    {
      v34 = 0;
      v35 = (v13 - 40 * v30);
      do
      {
        v36 = *v35;
        v35 += 20;
        *(*v33 + v34) = v36;
        log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "pw:%d , tid=%d", v47, v36);
        v34 += 2;
      }

      while (v31 != v34);
    }

    v12 = 0;
    ++v47;
    goto LABEL_50;
  }

  return 2315264010;
}

uint64_t storePwResult(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v22 = *a5;
  v13 = a2 + 64;
  v14 = a3;
  while (*(a4 + 2 * v9) != 1)
  {
    if (*(a4 + 2 * v9))
    {
      if (!*a6)
      {
        goto LABEL_21;
      }
    }

    else if (!*a6 || *(a6 + 4) > v10 && *(a2 + 40 * v9 + 32) == *(*(a6 + 8) + 4 * v10))
    {
      ++v11;
      goto LABEL_21;
    }

    if (*(a6 + 4) > v10 && *(a2 + 40 * v9 + 32) == *(*(a6 + 8) + 4 * v10))
    {
      break;
    }

LABEL_21:
    ++v9;
    v13 += 40;
    if (v9 == v14)
    {
      return 0;
    }
  }

  v15 = v11 + 1;
  v16 = v22 + 184 * v12;
  *(v16 + 8) = v15;
  v17 = v15;
  v18 = heap_Alloc(*(a1 + 8), 2 * v15);
  *v16 = v18;
  if (v18)
  {
    *(v16 + 56) = "";
    if (v17)
    {
      v19 = (v13 - 40 * v17);
      do
      {
        v20 = *v19;
        v19 += 20;
        *v18++ = v20;
        --v17;
      }

      while (v17);
    }

    if (*a6 && *(a6 + 4) > v10 && *(a2 + 40 * v9 + 32) == *(*(a6 + 8) + 4 * v10))
    {
      ++v10;
    }

    v11 = 0;
    ++v12;
    goto LABEL_21;
  }

  return 2315264010;
}

uint64_t pw_nn_process(uint64_t a1, uint64_t ****a2, uint64_t *a3, uint64_t a4, uint64_t *a5, _WORD *a6, uint64_t a7, void *a8, int a9, _DWORD *a10, unsigned __int8 a11, const char **a12, int a13)
{
  v58 = 0;
  v66[0] = *a5;
  v65 = 0;
  v20 = 2315264010;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v21 = 2 * a4;
  v22 = heap_Alloc(*(a1 + 8), v21);
  v64 = v22;
  if (!v22)
  {
    v28 = 0;
    v24 = 0;
    goto LABEL_48;
  }

  v23 = v22;
  v54 = a2;
  v24 = heap_Alloc(*(a1 + 8), v21);
  if (!v24)
  {
    goto LABEL_28;
  }

  v53 = a6;
  v55 = a3;
  v52 = a5;
  if (a4)
  {
    v25 = 0;
    v26 = 0;
    v27 = v55;
    do
    {
      if (checkAttachedPunc(*v27))
      {
        *(v24 + 2 * v26++) = v25;
      }

      ++v25;
      v27 += 5;
    }

    while (a4 != v25);
  }

  else
  {
    v26 = 0;
  }

  v29 = heap_Calloc(*(a1 + 8), a4, 4);
  v59 = v29;
  if (!v29)
  {
    goto LABEL_29;
  }

  v30 = v29;
  v31 = *(a1 + 8);
  if (a9 != 1)
  {
    v62 = heap_Calloc(v31, (100 * a4), 4);
    if (!v62)
    {
      v28 = 0;
      v20 = 2315264010;
      goto LABEL_50;
    }

    Embedding = getEmbedding(a1, a7, a8, a9, a4, v55, v26, v24, &v62, &v59, a13);
    if ((Embedding & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    Embedding = fi_predict(v54[1], &v62, a4, &v63);
    if ((Embedding & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    getPwPredict(a4, v63, v26, v24, &v64, &v65, v30);
    v40 = v65;
    *a6 = v65;
    v41 = heap_Calloc(*(a1 + 8), v40, 184);
    v66[0] = v41;
    if (!v41)
    {
      goto LABEL_29;
    }

    v42 = v41;
    Embedding = storePwResult(a1, v55, a4, v23, v66, a10);
    if ((Embedding & 0x80000000) != 0)
    {
LABEL_30:
      v28 = 0;
      v20 = Embedding;
      goto LABEL_48;
    }

    v60 = heap_Calloc(*(a1 + 8), 100 * v40, 4);
    if (!v60)
    {
      goto LABEL_29;
    }

    if (v54[1])
    {
      v20 = fi_predict(*v54, &v60, v40, &v63);
      if ((v20 & 0x80000000) != 0)
      {
LABEL_28:
        v28 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v20 = 0;
    }

    if (v40)
    {
      v46 = 0;
      for (i = 0; i != v40; ++i)
      {
        v48 = 0;
        v49 = 0;
        v50 = 0.0;
        do
        {
          if (v50 < *(v63 + v46 + 4 * v48))
          {
            v50 = *(v63 + v46 + 4 * v48);
            v49 = v48;
          }

          ++v48;
        }

        while (v48 != 4);
        *(v42 + 184 * i + 72) = v49 == 3 || v49 == 0 || v40 - 1 == i;
        v46 += 16;
      }
    }

    if (v60)
    {
      heap_Free(*(a1 + 8), v60);
      v28 = 0;
      v60 = 0;
    }

    else
    {
      v28 = 0;
    }

    v44 = v52;
LABEL_77:
    *v44 = v42;
    if (!v28)
    {
      goto LABEL_54;
    }

LABEL_53:
    heap_Free(*(a1 + 8), v28);
    goto LABEL_54;
  }

  v32 = heap_Alloc(v31, v21);
  v61 = v32;
  if (!v32)
  {
LABEL_29:
    v28 = 0;
    v20 = 2315264010;
    goto LABEL_48;
  }

  v33 = v32;
  v34 = *(a1 + 8);
  if (a13)
  {
    v28 = 0;
    v62 = heap_Calloc(v34, 100 * (a4 + v26), 4);
    v35 = v26;
    v36 = v55;
    if (v62)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v28 = heap_Alloc(v34, v21);
    v58 = v28;
    if (v28)
    {
      v36 = v55;
      v37 = getcharNum(a4, v55, &v59, &v65 + 1, v26, v24, &v58);
      if ((v37 & 0x80000000) != 0)
      {
LABEL_44:
        v20 = v37;
        goto LABEL_47;
      }

      v35 = HIWORD(v65);
      v62 = heap_Calloc(*(a1 + 8), HIWORD(v65) + 2, 4);
      if (v62)
      {
LABEL_16:
        v37 = getEmbedding(a1, a7, a8, 1, a4, v36, v26, v24, &v62, &v59, a13);
        if ((v37 & 0x80000000) == 0)
        {
          if (a4 == 1)
          {
            v38 = 1;
            *v23 = 1;
            v57 = v33;
            *v33 = 1;
            LOWORD(v65) = 1;
            if (v62)
            {
              heap_Free(*(a1 + 8), v62);
              v62 = 0;
              v38 = 1;
            }

LABEL_41:
            v20 = 2315264010;
            v44 = v52;
            *v53 = v38;
            v66[0] = heap_Calloc(*(a1 + 8), v38, 184);
            if (v66[0])
            {
              v20 = storeResult(a1, v36, a4, v23, v57, v66, &v65, a10, a11, a12);
              if ((v20 & 0x80000000) == 0)
              {
                *v53 = v65;
                heap_Free(*(a1 + 8), v57);
                v61 = 0;
                v42 = v66[0];
                goto LABEL_77;
              }

              v33 = v57;
            }

            else
            {
              v33 = v57;
            }

            goto LABEL_47;
          }

          if (a13)
          {
            v43 = a4;
          }

          else
          {
            v43 = 2;
          }

          v37 = fi_predict(*v54, &v62, v43 + v35, &v63);
          if ((v37 & 0x80000000) == 0)
          {
            v57 = v33;
            getJointResult(&v64, &v61, a4, v26, v24, &v65, v63, v59, a13, v28);
            v38 = v65;
            goto LABEL_41;
          }
        }

        goto LABEL_44;
      }
    }
  }

  v20 = 2315264010;
LABEL_47:
  heap_Free(*(a1 + 8), v33);
LABEL_48:
  if (v62)
  {
    heap_Free(*(a1 + 8), v62);
  }

LABEL_50:
  if (v60)
  {
    heap_Free(*(a1 + 8), v60);
  }

  if (v28)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v24)
  {
    heap_Free(*(a1 + 8), v24);
  }

  if (v59)
  {
    heap_Free(*(a1 + 8), v59);
  }

  heap_Free(*(a1 + 8), v64);
  return v20;
}

uint64_t getcharNum(unsigned int a1, uint64_t *a2, uint64_t *a3, _WORD *a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  v23 = 0;
  v22 = 0;
  v7 = *a3;
  if (a1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a7;
    v15 = a1;
    do
    {
      UTF8Char = utf8_getUTF8Char(*a2, 0, &v22);
      if ((UTF8Char & 0x80000000) != 0)
      {
        break;
      }

      if (utf8_IsChineseLetter(&v22))
      {
        v17 = Utf8_Utf8NbrOfSymbols(*a2) - 1;
        *(v14 + 2 * v11) = v17;
        if (a5 > v13 && v11 == *(a6 + 2 * v13))
        {
          ++v13;
        }
      }

      else
      {
        if (a5 > v13 && v11 == *(a6 + 2 * v13))
        {
          ++v13;
          v18 = Utf8_Utf8NbrOfSymbols(*a2);
          v17 = 1;
          if (v18 >= 3)
          {
            *(v7 + 4 * v11) = 1;
            v17 = 2;
          }
        }

        else
        {
          v17 = 1;
          *(v7 + 4 * v11) = 1;
        }

        *(v14 + 2 * v11) = v17;
      }

      v12 += v17;
      ++v11;
      a2 += 5;
    }

    while (v15 != v11);
  }

  else
  {
    v12 = 0;
    UTF8Char = 0;
  }

  *a3 = v7;
  *a4 = v12;
  return UTF8Char;
}

uint64_t getEmbedding(uint64_t a1, uint64_t a2, void *a3, int a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, float **a9, uint64_t *a10, int a11)
{
  v81 = *MEMORY[0x277D85DE8];
  v77 = 0;
  if (!a4)
  {
    return 0;
  }

  v15 = a2;
  v16 = *a10;
  v78 = 0;
  v17 = *a9;
  result = (*(a2 + 40))(*a3, a3[1], &v78 + 4);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (a11)
  {
    result = (*(v15 + 40))(a3[2], a3[3], &v78);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (HIDWORD(v78) != v78)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "%s", "ERROR: word embedding and character embedding do not have same dimension");
      return 2315264000;
    }
  }

  else
  {
    *v17 = 101.0;
    v17 += HIDWORD(v78);
  }

  if (!a5)
  {
LABEL_107:
    if (!a11)
    {
      *v17 = 102.0;
    }

    return result;
  }

  v19 = 0;
  v72 = 0;
  v75 = 0;
  v68 = a5;
  v59 = a7;
  v62 = a6;
  v63 = v16;
  v74 = v15;
  while (1)
  {
    v20 = cstdlib_strlen(*(a6 + 40 * v19));
    v21 = 0;
    v76 = *(a6 + 40 * v19);
    if (a7)
    {
      v22 = v75;
      if (v75 < a7)
      {
        if (v19 == *(a8 + 2 * v75))
        {
          if (v20 == 3 && (*__s = 0, v23 = 3, v72 = 1, v24 = v20, utf8_Utf8ToUtf32_Tolerant(v76, 3u, &__s[4], 1u, __s), v20 = v24, *&__s[4] == 8230))
          {
            v21 = 0;
          }

          else
          {
            v72 = 0;
            v77 = v76[v20 - 1];
            v23 = v20 - 1;
            v76[(v20 - 1)] = 0;
            v21 = 1;
          }

          *(a6 + 40 * v19 + 36) = 1;
          v20 = v23;
          v22 = v75 + 1;
        }

        else
        {
          v21 = 0;
          v72 = 0;
        }
      }
    }

    else
    {
      v22 = v75;
    }

    v75 = v22;
    v71 = v20;
    if (!a11)
    {
      break;
    }

    *(v16 + 4 * v19) = 0;
    result = (*(v15 + 56))(a3[2], a3[3], v76, v17);
    if (*v17 != 0.0 || result == 0)
    {
      goto LABEL_87;
    }

    v26 = HIDWORD(v78);
    v64 = a3[1];
    v65 = *a3;
    v60 = a3[2];
    v61 = a3[3];
    v80 = 0;
    *&__s[4] = 0;
    v27 = heap_Calloc(*(a1 + 8), HIDWORD(v78), 4);
    if (v27)
    {
      v28 = v27;
      v69 = v21;
      v29 = Utf8_Utf8NbrOfSymbols(v76);
      *__s = v29 - 1;
      if (v29 == 1)
      {
LABEL_64:
        heap_Free(*(a1 + 8), v28);
        a7 = v59;
        v21 = v69;
      }

      else
      {
        checkremoveNormalSym(v76, __s, 0x5Fu);
        checkremoveNormalSym(v76, __s, 0x2Du);
        v30 = *__s;
        if (*__s)
        {
          v31 = 0;
          v32 = 0;
          while (1)
          {
            v33 = v31;
            UTF8Char = utf8_getUTF8Char(v76, v31, &__s[4]);
            if (UTF8Char < 0)
            {
              goto LABEL_64;
            }

            v35 = UTF8Char;
            v36 = cstdlib_strlen(&__s[4]);
            if (!utf8_IsChineseLetter(&__s[4]))
            {
              break;
            }

            if (v30 == 1)
            {
              v37 = 115;
            }

            else if (v32)
            {
              v37 = 109;
            }

            else
            {
              v37 = 98;
            }

            __s[v36 + 4] = v37;
            __s[cstdlib_strlen(&__s[4]) + 4] = 0;
            v38 = (*(v74 + 56))(v65, v64, &__s[4], v28);
            if (*v28 == 0.0 && v38 != 0)
            {
              v39.n128_u32[0] = *v28;
              v35 = (*(v74 + 56))(v60, v61, "</s>", v17, v39);
LABEL_81:
              v22 = v75;
LABEL_82:
              *(v63 + 4 * v19) = 0;
              goto LABEL_83;
            }

            v35 = v38;
            if (!v26)
            {
              goto LABEL_81;
            }

            v41 = 0;
            v31 = v33 + v36;
            LOBYTE(v42) = 1;
            do
            {
              v43 = *&v28[v41];
              v42 = v42 & (v43 == 0.0);
              v17[v41] = v17[v41] + (v43 / v30);
              ++v41;
            }

            while (v26 > v41);
            if (++v32 >= v30)
            {
              v44 = 1;
            }

            else
            {
              v44 = v42;
            }

            v22 = v75;
            if (v44 == 1)
            {
              goto LABEL_82;
            }
          }

          if (cstdlib_strlen(&__s[4]) == 1)
          {
            a7 = v59;
            v54 = a1;
            v21 = v69;
            if (__s[4] - 48 >= 0xA)
            {
              if ((__s[4] & 0xDFu) - 65 >= 0x1A)
              {
                v55 = 0;
                goto LABEL_103;
              }

              v55 = 1;
              v56 = "ENG";
            }

            else
            {
              v55 = 0;
              v56 = "NUM";
            }
          }

          else
          {
            v55 = 0;
            v56 = "</s>";
            a7 = v59;
            v54 = a1;
            v21 = v69;
          }

          v35 = (*(v74 + 56))(v60, v61, v56, v17);
LABEL_103:
          *(v63 + 4 * v19) = v55;
          v22 = v75;
          goto LABEL_84;
        }

        v35 = (*(v74 + 56))(v60, v61, "</s>", v17);
LABEL_83:
        a7 = v59;
        v54 = a1;
        v21 = v69;
LABEL_84:
        heap_Free(*(v54 + 8), v28);
        if (!v35)
        {
          result = 0;
          a6 = v62;
          v15 = v74;
          goto LABEL_86;
        }
      }
    }

    else
    {
      log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    }

    v15 = v74;
    result = (*(v74 + 56))(a3[2], a3[3], "</s>", v17);
    a6 = v62;
LABEL_86:
    v16 = v63;
LABEL_87:
    if (v22 && !v72 && v19 == *(a8 + 2 * (v22 - 1)))
    {
      v76[v71] = 0;
    }

    v17 += HIDWORD(v78);
    if (v21)
    {
      result = (*(v15 + 56))(a3[2], a3[3], &v77, v17);
      if (*v17 == 0.0 && result != 0)
      {
        v57.n128_f32[0] = *v17;
        result = (*(v15 + 56))(a3[2], a3[3], "</s>", v17, v57);
      }

      v17 += HIDWORD(v78);
    }

LABEL_98:
    if (++v19 == v68)
    {
      goto LABEL_107;
    }
  }

  v70 = v21;
  v45 = HIDWORD(v78);
  v46 = *(v16 + 4 * v19);
  v48 = *a3;
  v47 = a3[1];
  __s[8] = 0;
  *&__s[4] = 0;
  if (v46)
  {
    *v17 = 1.0;
    v17 += v45;
    if (v70)
    {
      result = (*(v15 + 72))(v48, v47, &v77, v17);
      if ((result & 0x80000000) != 0)
      {
        result = 0;
        *v17 = 100.0;
      }

      v17 += v45;
    }

    else
    {
      result = 0;
    }

    goto LABEL_74;
  }

  v66 = HIDWORD(v78);
  *__s = Utf8_Utf8NbrOfSymbols(v76) - 1;
  checkremoveNormalSym(v76, __s, 0x5Fu);
  checkremoveNormalSym(v76, __s, 0x2Du);
  v49 = *__s;
  if (!(v70 | *__s))
  {
    result = 0;
    *v17 = 100.0;
    a7 = v59;
LABEL_74:
    if (v75 && !v72 && v19 == *(a8 + 2 * (v75 - 1)))
    {
      v76[v71] = 0;
    }

    goto LABEL_98;
  }

  if (!*__s)
  {
    result = 0;
LABEL_69:
    if (v70)
    {
      v15 = v74;
      result = (*(v74 + 72))(v48, v47, &v77, v17);
      a7 = v59;
      a6 = v62;
      v16 = v63;
      if ((result & 0x80000000) != 0)
      {
        result = 0;
        *v17 = 100.0;
      }

      v17 += v66;
    }

    else
    {
      a7 = v59;
      a6 = v62;
      v16 = v63;
      v15 = v74;
    }

    goto LABEL_74;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = v50;
    result = utf8_getUTF8Char(v76, v50, &__s[4]);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v53 = cstdlib_strlen(&__s[4]);
    result = (*(v74 + 72))(v48, v47, &__s[4], v17);
    if ((result & 0x80000000) != 0)
    {
      result = 0;
      *v17 = 100.0;
    }

    v50 = v52 + v53;
    ++v51;
    v17 += v66;
    if (v51 >= v49)
    {
      goto LABEL_69;
    }
  }
}

uint64_t getJointResult(uint64_t result, uint64_t *a2, unsigned int a3, unsigned int a4, uint64_t a5, _WORD *a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  v11 = *result;
  v12 = *a2;
  if (a3)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
    v19 = a3;
    while (1)
    {
      if (a9)
      {
        v20 = 0;
        LODWORD(result) = 0;
        v22 = 0.0;
        do
        {
          v21 = a7 + 28 * (v16 + v15);
          if (v22 >= *(v21 + 4 * v20))
          {
            result = result;
          }

          else
          {
            v22 = *(v21 + 4 * v20);
            result = v20;
          }

          ++v20;
        }

        while (v20 != 7);
        if (a4 > v16 && v15 == *(a5 + 2 * v16))
        {
          v23 = 0;
          LODWORD(result) = 0;
          v24 = (v16 + 1);
          v26 = 0.0;
          do
          {
            v25 = a7 + 28 * (v16 + v18);
            if (v26 >= *(v25 + 4 * v23))
            {
              result = result;
            }

            else
            {
              v26 = *(v25 + 4 * v23);
              result = v23;
            }

            ++v23;
          }

          while (v23 != 7);
          v27 = 1;
          goto LABEL_23;
        }
      }

      else
      {
        v33 = 0;
        v17 += *(a10 + 2 * v15);
        LOBYTE(v33) = **(a7 + 8 * v17);
        v32 = v18;
        result = cstdlib_atoi(&v33);
        v18 = v32;
      }

      v27 = *(a8 + 4 * v15) == 1;
      if (*(a8 + 4 * v15) == 1 || (result - 3) <= 3u)
      {
        v24 = v16;
LABEL_23:
        ++*a6;
        *(v11 + 2 * v15) = 1;
        if (v15 && v27 && !*(v11 + 2 * (v15 - 1)))
        {
          *(v11 + 2 * (v15 - 1)) = 1;
          ++*a6;
        }

        *(v12 + 2 * v15) = (result & 0xFFFD) == 4;
        goto LABEL_31;
      }

      *(v11 + 2 * v15) = 0;
      *(v12 + 2 * v15) = 0;
      v24 = v16;
LABEL_31:
      ++v15;
      ++v18;
      v16 = v24;
      if (v15 == v19)
      {
        v29 = v19 - 1;
        goto LABEL_34;
      }
    }
  }

  v29 = -1;
LABEL_34:
  if (*(v11 + 2 * v29) != 1)
  {
    ++*a6;
    *(v11 + 2 * v29) = 1;
  }

  if (*(v12 + 2 * v29) != 1)
  {
    *(v12 + 2 * v29) = 1;
  }

  return result;
}

uint64_t load_pw_cfg(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  if (((*(a1 + 96))(a2, a3, "fecfg", "fepw_enable_cscgroup", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
  {
    v11 = 1;
  }

  else
  {
    v10 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v10)
    {
      *v10 = 0;
    }

    v11 = cstdlib_strcmp(**&__c[3], "no") != 0;
  }

  *(a4 + 8) = v11;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  if (((*(a1 + 96))(a2, a3, "fecfg", "fepw_cscgroup_stopwords", &__c[3], &__c[1], __c) & 0x80000000) != 0 || !*&__c[1])
  {
    v13 = "";
  }

  else
  {
    v12 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
    }

    v13 = **&__c[3];
  }

  cstdlib_strcpy(a4 + 36, v13);
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v14 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_auxiliarywords", &__c[3], &__c[1], __c);
  if ((v14 & 0x80000000) != 0)
  {
    v20 = -1979703276;
  }

  else
  {
    v15 = v14;
    if (!*&__c[3] || *&__c[1] != 1)
    {
      goto LABEL_21;
    }

    v16 = **&__c[3];
    v17 = cstdlib_strlen(**&__c[3]);
    ChineseUTFCharNum = utf8_GetChineseUTFCharNum(v16, v17);
    *a4 = ChineseUTFCharNum;
    v19 = heap_Alloc(*(a5 + 8), 8 * ChineseUTFCharNum);
    *(a4 + 1) = v19;
    v20 = -1979703286;
    if (v19)
    {
      if (*a4)
      {
        v21 = 0;
        v22 = **&__c[3];
        while (1)
        {
          v23 = utf8_determineUTF8CharLength(*v22);
          *(*(a4 + 1) + 8 * v21) = heap_Calloc(*(a5 + 8), 1, v23 + 1);
          v24 = *(a4 + 1);
          v25 = *(v24 + 8 * v21);
          if (!v25)
          {
            break;
          }

          cstdlib_memcpy(v25, v22, v23);
          *(*(*(a4 + 1) + 8 * v21) + v23) = 0;
          v22 += v23;
          if (++v21 >= *a4)
          {
            goto LABEL_21;
          }
        }

        heap_Free(*(a5 + 8), v24);
        v20 = -1979703286;
        goto LABEL_24;
      }

LABEL_21:
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

LABEL_24:
  LODWORD(v15) = v20;
LABEL_25:
  *(a4 + 1) = 0;
  if (v15 == -1979703286)
  {
    v15 = 2315264010;
  }

  else
  {
    v15 = 0;
  }

LABEL_28:
  a4[16] = 0;
  *(a4 + 3) = 0;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v26 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_custermizedchar", &__c[3], &__c[1], __c);
  if (v26 < 0)
  {
    v27 = -1979703276;
  }

  else
  {
    v27 = v26;
    if (!*&__c[3] || *&__c[1] != 1)
    {
      a4[16] = 0;
      goto LABEL_39;
    }

    v28 = **&__c[3];
    *(v28 + cstdlib_strlen(**&__c[3]) - 1) = 0;
    v29 = Utf8_Utf8NbrOfSymbols(**&__c[3]);
    a4[16] = v29 - 1;
    v30 = heap_Alloc(*(a5 + 8), 8 * (v29 - 1));
    *(a4 + 3) = v30;
    if (v30)
    {
      if (!a4[16])
      {
        goto LABEL_40;
      }

      v31 = 0;
      v32 = **&__c[3];
      while (1)
      {
        v33 = utf8_determineUTF8CharLength(*v32);
        *(*(a4 + 3) + 8 * v31) = heap_Calloc(*(a5 + 8), 1, v33 + 1);
        v34 = *(a4 + 3);
        v35 = *(v34 + 8 * v31);
        if (!v35)
        {
          break;
        }

        cstdlib_memcpy(v35, v32, v33);
        *(*(*(a4 + 3) + 8 * v31) + v33) = 0;
        v32 += v33;
        if (++v31 >= a4[16])
        {
          goto LABEL_40;
        }
      }

      heap_Free(*(a5 + 8), v34);
      v27 = -1979703286;
LABEL_39:
      *(a4 + 3) = 0;
LABEL_40:
      if (!v27)
      {
        return v15;
      }

      goto LABEL_43;
    }

    v27 = -1979703286;
  }

LABEL_43:
  *(a4 + 3) = 0;
  if (v27 == -1979703286)
  {
    return 2315264010;
  }

  else
  {
    return v15;
  }
}

void *freePwTids(void *result, uint64_t a2)
{
  v2 = *(a2 + 1064);
  if (v2)
  {
    v4 = *(a2 + 1072);
    if (*(a2 + 1072))
    {
      v5 = result;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(v2 + v6);
        if (v8)
        {
          result = heap_Free(v5[1], v8);
          v2 = *(a2 + 1064);
          *(v2 + v6) = 0;
          v4 = *(a2 + 1072);
        }

        ++v7;
        v6 += 184;
      }

      while (v7 < v4);
    }
  }

  return result;
}

void *freePWInfo(void *result, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 1064);
  if (v3)
  {
    v5 = result;
    v7 = *(v3 + 184 * a3 + 40);
    if (v7)
    {
      result = heap_Free(result[1], v7);
      v3 = *(a2 + 1064);
    }

    v8 = *(v3 + 184 * a3 + 24);
    if (v8)
    {
      result = heap_Free(v5[1], v8);
      v3 = *(a2 + 1064);
    }

    v9 = v3 + 184 * a3;
    *(v9 + 40) = 0;
    *(v9 + 24) = 0;
  }

  return result;
}

uint64_t pw_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t ****a6, uint64_t a7, void *a8, int a9, uint64_t *a10, uint64_t a11, int a12, int a13)
{
  v273 = *MEMORY[0x277D85DE8];
  v269 = 0;
  v270 = 0;
  v268 = 0;
  v267 = 0;
  v265 = 0;
  v264 = "";
  v263 = 0;
  v260 = 0;
  v259 = 0;
  v258 = 0;
  v255 = 0;
  v254 = 0;
  v253 = 0;
  v252 = 0;
  v251[6] = 0;
  strcpy(v251, "latin");
  memset(__s1, 0, sizeof(__s1));
  v249 = 0;
  v250 = 0;
  v13 = 2315264007;
  if (!a3)
  {
    return v13;
  }

  v14 = a4;
  if (!a4)
  {
    return v13;
  }

  v15 = a5;
  if (!a5)
  {
    return v13;
  }

  if (!a6)
  {
    return v13;
  }

  if (!a7)
  {
    return v13;
  }

  if (!a8)
  {
    return v13;
  }

  v18 = a3;
  v266 = 0;
  v262 = 0;
  v261 = 0;
  memset(__b, 0, 512);
  cstdlib_memset(__b, 0, 0x404uLL);
  v13 = 0;
  *(v15 + 1088) = 0;
  *(v15 + 1064) = 0;
  if (*(v15 + 1098) != 1)
  {
    return v13;
  }

  v13 = (*(v18 + 176))(a1, a2, *(v15 + 1096), 0, v15 + 1088, &v270 + 2);
  if ((v13 & 0x80000000) != 0 || HIWORD(v270) < 2u)
  {
    return v13;
  }

  v236 = (v15 + 1088);
  v21 = *(v15 + 1096);
  LOWORD(__dst) = 0;
  LODWORD(__s2) = 0;
  *v246 = 0;
  LOWORD(v245) = 0;
  LOWORD(v244) = 0;
  v22 = (*(v18 + 104))(a1, a2, 2, v21, &__dst);
  v23 = v22;
  v241 = v18;
  v242 = a2;
  if ((v22 & 0x80000000) == 0)
  {
    v24 = __dst;
    if (__dst)
    {
      v237 = v15;
      v25 = 0;
      while (1)
      {
        v26 = (*(v18 + 168))(a1, a2, v24, 0, 1, &__s2, v246);
        if ((v26 & 0x80000000) != 0)
        {
          break;
        }

        if (__s2 > 0xA || ((1 << __s2) & 0x610) == 0)
        {
          v31 = 0;
          v30 = __dst;
        }

        else
        {
          v26 = (*(v18 + 168))(a1, a2, __dst, 1, 1, &v245, v246);
          if ((v26 & 0x80000000) != 0)
          {
            break;
          }

          v26 = (*(v18 + 168))(a1, a2, __dst, 2, 1, &v244, v246);
          if ((v26 & 0x80000000) != 0)
          {
            break;
          }

          v29 = v245 > v25 || v25 < v244;
          v30 = __dst;
          if (v29)
          {
            v25 = v244;
            v31 = 0;
          }

          else
          {
            v31 = __dst;
          }
        }

        v26 = (*(v241 + 120))(a1, a2, v30, &__dst);
        if ((v26 & 0x80000000) != 0)
        {
          break;
        }

        if (v31)
        {
          log_OutText(*(v14 + 32), "FE_PHRASING", 5, 0, "%s", "Dropping nested word record");
          v26 = (*(v241 + 192))(a1, a2, v31);
          if ((v26 & 0x80000000) != 0)
          {
            break;
          }
        }

        v24 = __dst;
        v18 = v241;
        if (!__dst)
        {
          goto LABEL_36;
        }
      }

      v23 = v26;
      v34 = 0;
      v77 = 0;
      v75 = 0;
      v76 = 0;
LABEL_133:
      v15 = v237;
      goto LABEL_139;
    }
  }

  if ((v22 & 0x80000000) != 0)
  {
    v34 = 0;
    v77 = 0;
    v75 = 0;
    v76 = 0;
    goto LABEL_139;
  }

LABEL_36:
  v32 = (*(v18 + 104))(a1, a2, 2, *(v15 + 1096), &v270);
  v13 = v32;
  if ((v32 & 0x80000000) != 0)
  {
    v34 = 0;
    v77 = 0;
    v75 = 0;
    v76 = 0;
    v23 = v32;
    goto LABEL_139;
  }

  v33 = v270;
  if (!v270)
  {
    goto LABEL_136;
  }

  v233 = v14;
  v234 = 0;
  v34 = 0;
  v238 = 0;
  v23 = -1979703286;
  v231 = (v15 + 1064);
  do
  {
    v35 = (*(v241 + 120))(a1, v242, v33, &v269 + 2);
    if ((v35 & 0x80000000) != 0)
    {
      v77 = 0;
      v75 = 0;
      v76 = 0;
      v23 = v35;
      goto LABEL_139;
    }

    v36 = (*(v241 + 168))(a1, v242, v270, 0, 1, &v266, &v270 + 2);
    v13 = v36;
    if ((v36 & 0x80000000) != 0)
    {
      v77 = 0;
      v75 = 0;
      v76 = 0;
      v23 = v36;
      goto LABEL_139;
    }

    v37 = v266;
    if (v266 <= 0xA && ((1 << v266) & 0x610) != 0)
    {
      v39 = (*(v241 + 168))(a1, v242, v270, 1, 1, &v269, &v270 + 2);
      if ((v39 & 0x80000000) != 0)
      {
        return v39;
      }

      v13 = (*(v241 + 168))(a1, v242, v270, 2, 1, &v268 + 2, &v270 + 2);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      if (!v269 || v238 + 1 == v269 && HIWORD(v268) > v269)
      {
        ++v34;
        v238 = HIWORD(v268);
      }

      v37 = v266;
    }

    if (v37 == 5)
    {
      v13 = (*(v241 + 176))(a1, v242, v270, 4, &v259, &v270 + 2);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      if (HIWORD(v270))
      {
        if (!cstdlib_strncmp(v259, "prompt", HIWORD(v270)))
        {
          ++v234;
          if (v257 <= 0x7F)
          {
            v39 = (*(v241 + 168))(a1, v242, v270, 1, 1, &v269, &v270 + 2);
            if ((v39 & 0x80000000) != 0)
            {
              return v39;
            }

            v13 = (*(v241 + 168))(a1, v242, v270, 2, 1, &v268 + 2, &v270 + 2);
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }

            *(__b + v257) = v269;
            *(&__b[32] + v257++) = HIWORD(v268);
          }
        }
      }
    }

    v33 = HIWORD(v269);
    LOWORD(v270) = HIWORD(v269);
  }

  while (HIWORD(v269));
  if (v234 >= 0x81u)
  {
    log_OutText(*(v14 + 32), "FE_PHRASING", 5, 0, "Warning: the prompt number %d is large than the threshold %d, so the last %d promp not used to guide grouping", v234, 128, v234 - 128);
  }

  v40 = v241;
  if (!v34)
  {
LABEL_136:
    log_OutText(*(v14 + 32), "FE_PHRASING", 5, 0, "Warning: no lexicon word");
    return v13;
  }

  v237 = v15;
  v41 = v34;
  v42 = heap_Calloc(*(v233 + 8), v34, 40);
  if (!v42)
  {
    log_OutPublic(*(v233 + 32), "FE_PHRASING", 37000, 0);
    v77 = 0;
    v75 = 0;
    v76 = 0;
    v14 = v233;
    goto LABEL_133;
  }

  v232 = v34;
  v235 = v42;
  v43 = (v42 + 8);
  do
  {
    v44 = heap_Calloc(*(v233 + 8), 128, 1);
    *(v43 - 1) = v44;
    if (!v44)
    {
      log_OutPublic(*(v233 + 32), "FE_PHRASING", 37000, 0);
      v75 = 0;
      v76 = 0;
      v14 = v233;
LABEL_180:
      v15 = v237;
LABEL_184:
      v34 = v232;
      v77 = v235;
      goto LABEL_139;
    }

    v45 = heap_Calloc(*(v233 + 8), 1, 64);
    *v43 = v45;
    if (!v45)
    {
LABEL_179:
      v14 = v233;
      log_OutPublic(*(v233 + 32), "FE_PHRASING", 37000, 0);
      v75 = 0;
      v76 = 0;
      goto LABEL_180;
    }

    v43 += 5;
    --v41;
  }

  while (v41);
  v15 = v237;
  v46 = v242;
  v47 = (*(v241 + 104))(a1, v242, 2, *(v237 + 548), &v270);
  if ((v47 & 0x80000000) != 0)
  {
LABEL_181:
    v75 = 0;
    v76 = 0;
LABEL_183:
    v23 = v47;
    v14 = v233;
    goto LABEL_184;
  }

  v47 = (*(v241 + 176))(a1, v242, *(v237 + 548), 0, v236, &v270 + 2);
  if ((v47 & 0x80000000) != 0 || HIWORD(v270) < 2u)
  {
    v75 = 0;
    v76 = 0;
    goto LABEL_183;
  }

  v48 = v270;
  if (v270)
  {
    v224 = 0;
    v49 = 0;
    do
    {
      v47 = (*(v40 + 120))(a1, v46, v48, &v269 + 2);
      if ((v47 & 0x80000000) != 0)
      {
        goto LABEL_181;
      }

      v47 = (*(v40 + 168))(a1, v46, v270, 0, 1, &v266, &v270 + 2);
      if ((v47 & 0x80000000) != 0)
      {
        goto LABEL_181;
      }

      if (v266 <= 0xA && ((1 << v266) & 0x610) != 0)
      {
        v47 = (*(v40 + 168))(a1, v46, v270, 1, 1, &v269, &v270 + 2);
        if ((v47 & 0x80000000) != 0)
        {
          goto LABEL_181;
        }

        v47 = (*(v40 + 168))(a1, v46, v270, 2, 1, &v268 + 2, &v270 + 2);
        if ((v47 & 0x80000000) != 0)
        {
          goto LABEL_181;
        }

        if (!v269 || v49 + 1 == v269 && HIWORD(v268) > v269)
        {
          TNmarker = (*(v40 + 176))(a1, v46, v270, 3, &v258, &v270 + 2);
          if ((TNmarker & 0x80000000) != 0)
          {
            goto LABEL_130;
          }

          v52 = v235;
          v53 = &v235[5 * v224];
          if (cstdlib_strstr(v258, "comma"))
          {
            *(v53 + 13) = 11;
          }

          else
          {
            *(v53 + 13) = 1;
            v63 = v258;
            while (1)
            {
              v64 = cstdlib_strstr(v63, ".");
              v263 = v64;
              if (!v64)
              {
                break;
              }

              v63 = v64 + 1;
              v263 = v63;
              ++*(v53 + 13);
            }
          }

          v54 = v269;
          if (v269 >= HIWORD(v268))
          {
            v60 = 1;
          }

          else
          {
            v55 = 0;
            do
            {
              IsChineseLetter = utf8_IsChineseLetter(&(*v236)[v54]);
              v57 = (*v236)[v54];
              if (v57 > 0x3E || ((1 << v57) & 0x4C00510000000000) == 0)
              {
                v59 = 1;
              }

              else
              {
                v59 = v55;
              }

              if (!IsChineseLetter)
              {
                v55 = v59;
              }

              v54 += utf8_determineUTF8CharLength((*v236)[v54]);
            }

            while (v54 < HIWORD(v268));
            v60 = v55 == 0;
            v52 = v235;
            v46 = v242;
          }

          v61 = &v52[5 * v224];
          *(v61 + 12) = v270;
          if (!a12)
          {
            TNmarker = (*(v241 + 176))(a1, v46);
            if ((TNmarker & 0x80000000) != 0)
            {
              goto LABEL_130;
            }

            if (!hlp_NLUStrFind(v264, "POS", &v262, &v261))
            {
              v75 = 0;
              v76 = 0;
              v23 = -1979703296;
              goto LABEL_131;
            }

            *v61[1] = 0;
            v62 = v61[1];
            if (v60)
            {
              cstdlib_strncat(v62, v262, v261);
            }

            else
            {
              cstdlib_strcat(v62, "non");
            }

            v46 = v242;
          }

          if (((*(v241 + 184))(a1, v46, v270, 9, &v270 + 2) & 0x80000000) == 0 && HIWORD(v270) == 1)
          {
            TNmarker = (*(v241 + 176))(a1, v46, v270, 9, v61 + 2, &v270 + 2);
            if ((TNmarker & 0x80000000) != 0)
            {
              goto LABEL_130;
            }
          }

          v65 = HIWORD(v268);
          v66 = v269;
          v67 = HIWORD(v268) - v269;
          v68 = *v61;
          if (v67 >= 128)
          {
            v69 = heap_Realloc(*(v233 + 8), *v61, (v67 + 1));
            *v61 = v69;
            if (!v69)
            {
              goto LABEL_179;
            }

            v68 = v69;
            v66 = v269;
            v65 = HIWORD(v268);
          }

          v15 = v237;
          cstdlib_memcpy(v68, &(*v236)[v66], v65 - v66);
          *(*v61 - v269 + HIWORD(v268)) = 0;
          v49 = HIWORD(v268);
          *(v61 + 7) = v269;
          *(v61 + 8) = v49;
          ++v224;
          v40 = v241;
        }
      }

      v48 = HIWORD(v269);
      LOWORD(v270) = HIWORD(v269);
    }

    while (HIWORD(v269));
  }

  v14 = v233;
  v225 = a1;
  word_separating_markers = pw_get_word_separating_markers(v40, v233, a1, v46, *(v15 + 1096), &v255, &v254);
  if ((word_separating_markers & 0x80000000) != 0)
  {
    v75 = 0;
    v76 = 0;
    v23 = word_separating_markers;
    goto LABEL_180;
  }

  v71 = v254;
  log_OutText(*(v233 + 32), "FE_PHRASING", 5, 0, "Info: Valid Word Seperator Markers Count:%d", v254);
  if (v71)
  {
    v72 = 0;
    v73 = v255;
    do
    {
      log_OutText(*(v233 + 32), "FE_PHRASING", 5, 0, "Info: Valid Word Seperator Markers POS:%d", v73[v72++]);
    }

    while (v71 > v72);
  }

  TNmarker = getTNmarker(*(v237 + 548), v233, v241, v225, v242, &v250);
  if ((TNmarker & 0x80000000) != 0)
  {
    goto LABEL_130;
  }

  v74 = v250;
  *a10 = v250;
  *(v237 + 536) = 0;
  *(v237 + 133) = 0;
  cstdlib_strlen(*(v237 + 136));
  TNmarker = pw_nn_process(v233, a6, v235, v232, &v253, &v268, a7, a8, a9, v74, v237[16], *(v237 + 3), a13);
  if ((TNmarker & 0x80000000) != 0)
  {
    goto LABEL_130;
  }

  if ((paramc_ParamGetStr(*(v233 + 40), "spaceInPYT", &v265) & 0x80000000) == 0 && !LH_stricmp(v265, "yes"))
  {
    TNmarker = pw_PYT_process(v241, v225, v242, v233, v235, v232, v255, v71, &v253, &v268);
    if ((TNmarker & 0x80000000) != 0)
    {
      goto LABEL_130;
    }
  }

  v240 = (v237 + 1072);
  if (*(v237 + 8) == 1)
  {
    TNmarker = pw_group_csc(v233, __b, v235, v232, v237 + 36, v253, v268, v231, v240, *v237, *(v237 + 1));
    if ((TNmarker & 0x80000000) != 0)
    {
LABEL_130:
      v75 = 0;
      v76 = 0;
      v23 = TNmarker;
      goto LABEL_131;
    }
  }

  else
  {
    *v240 = v268;
    *v231 = v253;
    v253 = 0;
    LOWORD(v268) = 0;
  }

  v89 = pw_respect_word_separating_markers(v241, v233, v225, v242, *(v237 + 548), v231, v240);
  if ((v89 & 0x80000000) != 0 || a11 && (v89 = pw_igtree_process(v233, v235, v231, v240, v232, a11), (v89 & 0x80000000) != 0))
  {
    v75 = 0;
    v76 = 0;
    v23 = v89;
    goto LABEL_131;
  }

  if (!*v236)
  {
    freePwTids(v233, v237);
    v75 = 0;
    v76 = 0;
    v23 = v89;
    v14 = v233;
    v15 = v237;
    goto LABEL_184;
  }

  __s = heap_Calloc(*(v233 + 8), 1024, 1);
  if (!__s)
  {
    v75 = 0;
    v76 = 0;
LABEL_131:
    v14 = v233;
    goto LABEL_180;
  }

  v76 = heap_Calloc(*(v233 + 8), 64, 1);
  if (!v76)
  {
    goto LABEL_411;
  }

  v90 = *(v233 + 8);
  v91 = *(v237 + 536);
  v92 = cstdlib_strlen(*(v237 + 136));
  v93 = heap_Calloc(v90, v91, v92 + 2);
  *(v237 + 135) = v93;
  if (!v93)
  {
    goto LABEL_411;
  }

  cstdlib_strlen(*v236);
  if (!*v240)
  {
LABEL_288:
    freePwTids(v233, v237);
    *(v237 + 537) = *(v237 + 536);
    v23 = (*(v241 + 104))(v225, v242, 2, *(v237 + 548), &v270);
    if ((v23 & 0x80000000) == 0)
    {
      cstdlib_memset(__s, 0, 0x400uLL);
      cstdlib_memset(v76, 0, 0x40uLL);
      cstdlib_memset(__s1, 0, 0x40uLL);
      HIWORD(v269) = 0;
      v158 = v270;
      if (v270)
      {
        v159 = 0;
        LOWORD(v230) = 0;
        v160 = 0;
        while (1)
        {
          v101 = (*(v241 + 120))(v225, v242, v158, &v269 + 2);
          if ((v101 & 0x80000000) != 0)
          {
            goto LABEL_410;
          }

          v23 = (*(v241 + 168))(v225, v242, v270, 0, 1, &v266, &v270 + 2);
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_411;
          }

          if (v266 <= 0xA && ((1 << v266) & 0x610) != 0)
          {
            break;
          }

LABEL_379:
          v158 = HIWORD(v269);
          LOWORD(v270) = HIWORD(v269);
          if (!HIWORD(v269))
          {
            goto LABEL_411;
          }
        }

        v162 = *v231;
        v163 = *v231 + 184 * v159;
        *(v163 + 36) = v266;
        LOWORD(v269) = *(v163 + 16);
        v164 = *(v163 + 18);
        HIWORD(v268) = v164;
        if (v269)
        {
          if (v160 + 1 != v269 || v164 <= v269)
          {
LABEL_378:
            if (*v240 <= ++v159)
            {
              goto LABEL_411;
            }

            goto LABEL_379;
          }
        }

        __s2 = 0;
        v166 = v162 + 184 * v159;
        v258 = *(v166 + 24);
        v264 = 0;
        v264 = *(v166 + 40);
        if (((*(v241 + 184))(v225, v242, v270, 10, &v260) & 0x80000000) == 0 && v260 == 1)
        {
          v23 = (*(v241 + 176))(v225, v242, v270, 10, &__s2, &v270 + 2);
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_411;
          }
        }

        if (HIWORD(v268) - v269 > 5)
        {
          v167 = 0;
          goto LABEL_335;
        }

        __dst = 0;
        v247 = 0;
        *v246 = 0;
        cstdlib_memcpy(&__dst, &(*v236)[v269], HIWORD(v268) - v269);
        *(&__dst + HIWORD(v268) - v269) = 0;
        if (!utf8_IsChineseLetter(&__dst))
        {
          goto LABEL_332;
        }

        v168 = v254;
        if (v254)
        {
          v169 = v255;
          do
          {
            v170 = *v169++;
            if (v170 == v269)
            {
              goto LABEL_332;
            }
          }

          while (--v168);
        }

        if (*v250 && *(v250 + 4))
        {
          v171 = *(v250 + 8);
          v172 = *(v250 + 4) - 1;
          do
          {
            v174 = *v171++;
            v173 = v174;
            if (v174 == HIWORD(v268))
            {
              goto LABEL_332;
            }
          }

          while (v173 <= HIWORD(v268) && v172-- != 0);
        }

        if (!cstdlib_strstr(v258, "11") || !utf8_IsChineseLetter(&v252))
        {
          v245 = 0;
          v176 = cstdlib_strlen(&__dst);
          v243 = 0;
          v244 = 0;
          utf8_Utf8ToUtf32_Tolerant(&__dst, v176, &v245, 1u, &v244);
          v177 = v244;
          if (v176 <= 3)
          {
            v177 = 0;
          }

          utf8_Utf32ToUtf8(&v245, 1, v246, v176 - v177, &v243);
          v246[v243] = 0;
          if (!*v237)
          {
LABEL_332:
            v167 = 0;
LABEL_333:
            if (HIWORD(v268) - v269 <= 2)
            {
              cstdlib_memcpy(&v252, &(*v236)[v269], HIWORD(v268) - v269);
              *(&v252 + HIWORD(v268) - v269) = 0;
              goto LABEL_338;
            }

LABEL_335:
            if (checkAttachedPunc(*(*v231 + 184 * v159 + 56)))
            {
              LOBYTE(v252) = 0;
            }

            else
            {
              cstdlib_memcpy(&v252, &(*v236)[HIWORD(v268) - 3], 3uLL);
              HIBYTE(v252) = 0;
            }

LABEL_338:
            if (v167)
            {
              if (v230)
              {
                LODWORD(__dst) = 0;
                v23 = pw_check_if_glue_forbidden(v241, v225, v242, *(v237 + 548), v230, v270, &__dst);
                v167 = __dst == 0;
                if ((v23 & 0x80000000) != 0)
                {
                  goto LABEL_411;
                }
              }
            }

            if (v264)
            {
              hlp_NLUStrFind(v264, "POS", &v262, &v261);
              if (__s2 && (v179 = cstdlib_strlen(__s1), v179 + cstdlib_strlen(__s2) - 63 < 0xFFFFFFFFFFFFFFC0) || v262 && (v180 = cstdlib_strlen(v76), v180 + cstdlib_strlen(v262) - 62 < 0xFFFFFFFFFFFFFFC0) || v258 && (v181 = cstdlib_strlen(__s), v181 + cstdlib_strlen(v258) - 1022 <= 0xFFFFFFFFFFFFFBFFLL))
              {
                log_OutText(*(v233 + 32), "FE_PHRASING", 5, 0, "skip the merging due to the length limit of prosodic word");
                goto LABEL_357;
              }
            }

            else
            {
              v261 = 0;
              v262 = 0;
            }

            if (v167 && v230 && cstdlib_strcmp(v251, "latin"))
            {
              log_OutText(*(v233 + 32), "FE_PHRASING", 5, 0, "merge special auxiliary word and neutral tone cases");
              (*v236)[v269 - 1] = 45;
              cstdlib_strcat(__s, ".");
              if (v258)
              {
                v182 = cstdlib_strlen(v258);
                if (cstdlib_strlen(__s) + v182 < 0x401)
                {
                  v186 = __s;
                }

                else
                {
                  v183 = *(v233 + 8);
                  v184 = cstdlib_strlen(__s);
                  v185 = cstdlib_strlen(v258);
                  v186 = heap_Realloc(v183, __s, v184 + v185 + 1);
                  if (!v186)
                  {
                    goto LABEL_415;
                  }
                }

                cstdlib_strcat(v186, v258);
                __s = v186;
              }

              if (v264)
              {
                if (v261)
                {
                  cstdlib_strcat(v76, "-");
                  if (v262)
                  {
                    cstdlib_strncat(v76, v262, v261);
                  }
                }
              }

              if (__s2 && cstdlib_strcmp(__s1, ""))
              {
                cstdlib_strcat(__s1, __s2);
              }

              else
              {
                cstdlib_strcpy(__s1, "");
              }

              v101 = (*(v241 + 192))(v225, v242, v270);
              if ((v101 & 0x80000000) != 0)
              {
                goto LABEL_410;
              }

              v101 = (*(v241 + 160))(v225, v242, v230, 2, 1, &v268 + 2, &v267);
              if ((v101 & 0x80000000) != 0)
              {
                goto LABEL_410;
              }

              v195 = *(v241 + 160);
              v196 = cstdlib_strlen(__s);
              v23 = v195(v225, v242, v230, 3, (v196 + 1), __s, &v267);
              if ((v23 & 0x80000000) != 0)
              {
                goto LABEL_411;
              }

              if (v264)
              {
                v197 = cstdlib_strlen(*(*v231 + 184 * (v159 - 1) + 40));
                v198 = *(v233 + 8);
                v199 = *(*v231 + 184 * (v159 - 1) + 40);
                v200 = cstdlib_strlen(v76);
                v201 = cstdlib_strlen(*(*v231 + 184 * (v159 - 1) + 40));
                v202 = heap_Realloc(v198, v199, v200 + v201 + 5);
                *(*v231 + 184 * (v159 - 1) + 40) = v202;
                if (!v202)
                {
                  log_OutPublic(*(v233 + 32), "FE_PHRASING", 37000, 0);
LABEL_415:
                  v23 = -1979703286;
                  goto LABEL_411;
                }

                *(v202 + v197) = 0;
                hlp_NLUStrSet(*(*v231 + 184 * (v159 - 1) + 40), "POS", v76);
                v203 = *(v241 + 160);
                v204 = cstdlib_strlen(v264);
                v23 = v203(v225, v242, v230, 14, (v204 + 1), v264, &v267);
                if ((v23 & 0x80000000) != 0)
                {
                  goto LABEL_411;
                }

                v264 = "";
              }

              v205 = *v231;
              v206 = v159 - 1;
              *(*v231 + 184 * v206 + 18) = HIWORD(v268);
              v207 = *(v233 + 8);
              v208 = *(v205 + 184 * v159 + 24);
              v209 = cstdlib_strlen(__s);
              v210 = heap_Realloc(v207, v208, v209 + 1);
              *(*v231 + 184 * v159 + 24) = v210;
              cstdlib_strcpy(v210, __s);
              v211 = *v231;
              v212 = *v231 + 184 * v206;
              v214 = *(v212 + 72);
              v213 = (v212 + 72);
              if (v214)
              {
                v215 = 1;
              }

              else
              {
                v215 = *(v211 + 184 * v159 + 72) != 0;
              }

              *v213 = v215;
              cstdlib_strcat(*(v211 + 184 * v206 + 56), "-");
              cstdlib_strcat(*(*(v237 + 133) + 184 * v206 + 56), *(*(v237 + 133) + 184 * v159 + 56));
              --*(v237 + 536);
              freePWInfo(v233, v237, v159);
              v216 = *(v237 + 536);
              if (v159 != v216)
              {
                cstdlib_memmove((*v231 + 184 * v159), (*v231 + 184 * v159 + 184), 184 * (v216 - v159));
              }

              --v159;
              if (cstdlib_strcmp(__s1, ""))
              {
                v217 = *(v241 + 160);
                v218 = cstdlib_strlen(__s1);
                v23 = v217(v225, v242, v230, 10, (v218 + 1), __s1, &v267);
                if ((v23 & 0x80000000) != 0)
                {
                  goto LABEL_411;
                }
              }

              goto LABEL_377;
            }

LABEL_357:
            if (v258)
            {
              if (cstdlib_strlen(v258) < 0x401 || (v187 = cstdlib_strlen(v258), v187 <= cstdlib_strlen(__s)))
              {
                v191 = __s;
              }

              else
              {
                v188 = *(v233 + 8);
                v189 = cstdlib_strlen(__s);
                v190 = cstdlib_strlen(v258);
                v191 = heap_Realloc(v188, __s, v189 + v190 + 1);
                if (!v191)
                {
                  goto LABEL_415;
                }
              }

              cstdlib_strcpy(v191, v258);
              __s = v191;
            }

            cstdlib_strcpy(v76, "");
            if (v261 && v262)
            {
              cstdlib_strncat(v76, v262, v261);
            }

            if (__s2)
            {
              v192 = __s2;
            }

            else
            {
              v192 = "";
            }

            cstdlib_strcpy(__s1, v192);
            v230 = v270;
            if (((*(v241 + 184))(v225, v242) & 0x80000000) != 0 || HIWORD(v270) != 1)
            {
              v194 = "latin";
            }

            else
            {
              v23 = (*(v241 + 176))(v225, v242, v230, 9, &v263, &v270 + 2);
              if ((v23 & 0x80000000) != 0)
              {
                goto LABEL_411;
              }

              v193 = cstdlib_strlen(v263);
              if (v193 > cstdlib_strlen("normal"))
              {
                goto LABEL_411;
              }

              v194 = v263;
            }

            cstdlib_strcpy(v251, v194);
LABEL_377:
            v160 = HIWORD(v268);
            goto LABEL_378;
          }

          v178 = 0;
          while (cstdlib_strcmp(v246, *(*(v237 + 1) + 8 * v178)) || !utf8_IsChineseLetter(&v252))
          {
            if (++v178 >= *v237)
            {
              goto LABEL_332;
            }
          }
        }

        v167 = 1;
        goto LABEL_333;
      }
    }

LABEL_411:
    v14 = v233;
    goto LABEL_412;
  }

  v94 = 0;
  v95 = 0;
  v220 = 64;
  v222 = 1024;
  while (1)
  {
    v229 = v95;
    v96 = *(*v231 + 184 * v95 + 8);
    if (v96 == 1)
    {
      v122 = cstdlib_strlen(*v236);
      v101 = (*(v241 + 168))(v225, v242, **(*v231 + 184 * v229), 1, 1, *v231 + 184 * v229 + 16, &v270 + 2);
      if ((v101 & 0x80000000) != 0)
      {
        goto LABEL_410;
      }

      v101 = (*(v241 + 168))(v225, v242, **(*v231 + 184 * v229), 2, 1, *v231 + 184 * v229 + 18, &v270 + 2);
      if ((v101 & 0x80000000) != 0)
      {
        goto LABEL_410;
      }

      v101 = (*(v241 + 176))(v225, v242, **(*v231 + 184 * v229), 3, &v258, &v270 + 2);
      if ((v101 & 0x80000000) != 0)
      {
        goto LABEL_410;
      }

      if (a12)
      {
        v101 = (*(v241 + 184))(v225, v242, v270, 14, &v260);
        v223 = v260;
        if (!v260)
        {
          goto LABEL_261;
        }

        if (v260 != 1)
        {
          if ((v101 & 0x80000000) != 0)
          {
            goto LABEL_410;
          }

          v223 = v94;
          if (!v94)
          {
LABEL_261:
            v223 = 0;
            v264 = 0;
            v123 = 1;
LABEL_281:
            v147 = v229 + v229 * v122;
            v148 = *(v237 + 133) + 184 * v229;
            v149 = *(v148 + 18);
            v150 = *(v148 + 16);
            v151 = (v149 - v150);
            cstdlib_memcpy((*(v237 + 135) + v147), (*(v237 + 136) + v150), v151);
            *(*(v237 + 135) + v147 + v151) = 0;
            v152 = *(v237 + 133);
            *(v152 + 184 * v229 + 56) = *(v237 + 135) + v147;
            if (v123)
            {
              *(v152 + 184 * v229 + 40) = 0;
            }

            else
            {
              v153 = cstdlib_strlen(v264);
              v154 = heap_Alloc(*(v233 + 8), v153 + 1);
              *(*v231 + 184 * v229 + 40) = v154;
              if (!v154)
              {
                goto LABEL_411;
              }

              cstdlib_strcpy(v154, v264);
            }

            v155 = *(v233 + 8);
            v156 = cstdlib_strlen(v258);
            v157 = heap_Alloc(v155, v156 + 1);
            *(*v231 + 184 * v229 + 24) = v157;
            if (!v157)
            {
              goto LABEL_411;
            }

            cstdlib_strcpy(v157, v258);
            goto LABEL_287;
          }
        }
      }

      else
      {
        v223 = 1;
      }

      v101 = (*(v241 + 176))(v225, v242, **(*v231 + 184 * v229), 14, &v264, &v270 + 2);
      if ((v101 & 0x80000000) != 0)
      {
        goto LABEL_410;
      }

      v123 = 0;
      goto LABEL_281;
    }

    if (!v96)
    {
      break;
    }

    __s2 = 0;
    v219 = cstdlib_strlen(*v236);
    cstdlib_memset(__s, 0, 0x400uLL);
    cstdlib_memset(v76, 0, 0x40uLL);
    cstdlib_memset(__s1, 0, 0x40uLL);
    v97 = *v231;
    v98 = *v231 + 184 * v229;
    if (*(v98 + 8))
    {
      v99 = 0;
      v100 = 0;
      v227 = 1;
      while (1)
      {
        v101 = (*(v241 + 168))(v225, v242, *(*v98 + 2 * v99), 1, 1, &v269, &v270 + 2);
        if ((v101 & 0x80000000) != 0)
        {
          break;
        }

        v101 = (*(v241 + 168))(v225, v242, *(*(*v231 + 184 * v229) + 2 * v99), 2, 1, &v268 + 2, &v270 + 2);
        if ((v101 & 0x80000000) != 0)
        {
          break;
        }

        v101 = (*(v241 + 176))(v225, v242, *(*(*v231 + 184 * v229) + 2 * v99), 3, &v258, &v270 + 2);
        if ((v101 & 0x80000000) != 0)
        {
          break;
        }

        if (a12 && ((*(v241 + 184))(v225, v242, v270, 14, &v260), v260 != 1))
        {
          v223 = 0;
          v226 = 1;
        }

        else
        {
          v101 = (*(v241 + 176))(v225, v242, *(*(*v231 + 184 * v229) + 2 * v99), 14, &v264, &v270 + 2);
          if ((v101 & 0x80000000) != 0)
          {
            break;
          }

          v226 = 0;
          v223 = 1;
        }

        if (!v99)
        {
          *(*v231 + 184 * v229 + 16) = v269;
        }

        if ((v226 & 1) == 0)
        {
          v102 = v249;
          v103 = *(v233 + 8);
          v104 = cstdlib_strlen(v264);
          v105 = v104;
          if (v102)
          {
            v106 = cstdlib_strlen(v102);
            v107 = heap_Realloc(v103, v102, v105 + v106 + 2);
            if (!v107)
            {
              goto LABEL_411;
            }

            v108 = v107;
            v249 = v107;
            cstdlib_strcat(v107, ";");
            cstdlib_strcat(v108, v264);
          }

          else
          {
            v109 = heap_Alloc(v103, v104 + 1);
            v249 = v109;
            if (!v109)
            {
              goto LABEL_411;
            }

            cstdlib_strcpy(v109, v264);
          }
        }

        if (v227)
        {
          v227 = 0;
          v221 = 1;
          if (((*(v241 + 184))(v225, v242, *(*(*v231 + 184 * v229) + 2 * v99), 10, &v260) & 0x80000000) == 0 && v260 == 1)
          {
            v101 = (*(v241 + 176))(v225, v242, *(*(*v231 + 184 * v229) + 2 * v99), 10, &__s2, &v270 + 2);
            if ((v101 & 0x80000000) != 0)
            {
              break;
            }

            v221 = 0;
            v227 = 1;
          }
        }

        else
        {
          v227 = 0;
          v221 = 1;
        }

        if (v99)
        {
          v110 = cstdlib_strlen(__s);
          if (v110 + cstdlib_strlen(v258) + 1 > v222)
          {
            v111 = heap_Realloc(*(v233 + 8), __s, (v222 + 1024));
            if (!v111)
            {
              goto LABEL_411;
            }

            __s = v111;
            v222 += 1024;
          }

          (*v236)[v269 - 1] = 45;
          if (cstdlib_strlen(v258))
          {
            cstdlib_strcat(__s, ".");
          }

          v112 = *(*(*v231 + 184 * v229) + 2 * v99);
          v113 = cstdlib_strstr(v258, "{SEP");
          v263 = v113;
          if (v113)
          {
            v263 = v113 + 4;
            v113[4] += v100;
          }
        }

        else
        {
          v112 = 0;
        }

        cstdlib_strcat(__s, v258);
        if ((v226 & 1) == 0 && hlp_NLUStrFind(v264, "POS", &v262, &v261))
        {
          v114 = cstdlib_strlen(v76);
          if (v114 + v261 + 2 > v220)
          {
            v115 = heap_Realloc(*(v233 + 8), v76, (v220 + 64) + 1);
            if (!v115)
            {
              goto LABEL_411;
            }

            v76 = v115;
            v220 += 64;
          }

          if (cstdlib_strlen(v76))
          {
            cstdlib_strcat(v76, "-");
          }

          cstdlib_strncat(v76, v262, v261);
        }

        v116 = v227;
        if (!__s2)
        {
          v116 = 0;
        }

        if (v116 == 1)
        {
          cstdlib_strcat(__s1, __s2);
        }

        v117 = v258;
        if (v258)
        {
          do
          {
            v118 = v117;
            v119 = v100;
            v100 = 0;
            v263 = cstdlib_strstr(v117, "{SEP");
            v117 = v263 + 1;
          }

          while (v263);
          for (i = v118; ; i = v121 + 1)
          {
            v121 = cstdlib_strstr(i, ".");
            v263 = v121;
            if (!v121)
            {
              break;
            }

            ++v119;
          }
        }

        else
        {
          v119 = v100;
        }

        if (v112)
        {
          v101 = (*(v241 + 192))(v225, v242, v112);
          if ((v101 & 0x80000000) != 0)
          {
            break;
          }
        }

        v100 = v119 + 1;
        v97 = *v231;
        v98 = *v231 + 184 * v229;
        if (++v99 >= *(v98 + 8))
        {
          goto LABEL_263;
        }
      }

LABEL_410:
      v23 = v101;
      goto LABEL_411;
    }

    v221 = 0;
    v223 = v94;
LABEL_263:
    if (v223)
    {
      v101 = pw_merge_NLU(v233, &v249);
      if ((v101 & 0x80000000) != 0)
      {
        goto LABEL_410;
      }

      v97 = *v231;
    }

    if (*(v237 + 8) == 1)
    {
      pw_split_csc_pw(v97 + 184 * v229, __s);
      v97 = *v231;
    }

    v101 = (*(v241 + 160))(v225, v242, **(v97 + 184 * v229), 2, 1, &v268 + 2, &v267);
    if ((v101 & 0x80000000) != 0)
    {
      goto LABEL_410;
    }

    v124 = v229 + v229 * v219;
    v125 = HIWORD(v268);
    v126 = *(v237 + 133) + 184 * v229;
    *(v126 + 18) = HIWORD(v268);
    v127 = *(v126 + 16);
    v128 = (v125 - v127);
    cstdlib_memcpy((*(v237 + 135) + v124), (*(v237 + 136) + v127), v128);
    *(*(v237 + 135) + v124 + v128) = 0;
    v129 = (*(v237 + 133) + 184 * v229);
    v129[7] = (*(v237 + 135) + v124);
    v130 = *(v241 + 160);
    v131 = **v129;
    v132 = cstdlib_strlen(__s);
    v101 = v130(v225, v242, v131, 3, (v132 + 1), __s, &v267);
    if ((v101 & 0x80000000) != 0)
    {
      goto LABEL_410;
    }

    v133 = *(v233 + 8);
    v134 = cstdlib_strlen(__s);
    v135 = heap_Alloc(v133, v134 + 1);
    *(*v231 + 184 * v229 + 24) = v135;
    if (!v135)
    {
      goto LABEL_411;
    }

    cstdlib_strcpy(v135, __s);
    if (v223)
    {
      v136 = v249;
      hlp_NLUStrRemoveKeyVal(v249, "POS");
      hlp_NLUStrSet(v136, "POS", v76);
      v137 = *(v241 + 160);
      v138 = **(*v231 + 184 * v229);
      v139 = v249;
      v140 = cstdlib_strlen(v249);
      v137(v225, v242, v138, 14, (v140 + 1), v139, &v267);
      v141 = *(v233 + 8);
      v142 = cstdlib_strlen(v139);
      v143 = heap_Alloc(v141, v142 + 1);
      *(*v231 + 184 * v229 + 40) = v143;
      if (!v143)
      {
        goto LABEL_411;
      }

      cstdlib_strcpy(v143, v139);
      v264 = "";
      if (v139)
      {
        heap_Free(*(v233 + 8), v139);
        v249 = 0;
      }
    }

    if ((v221 & 1) == 0)
    {
      v144 = *(v241 + 160);
      v145 = **(*v231 + 184 * v229);
      v146 = cstdlib_strlen(__s1);
      v101 = v144(v225, v242, v145, 10, (v146 + 1), __s1, &v267);
      if ((v101 & 0x80000000) != 0)
      {
        goto LABEL_410;
      }
    }

LABEL_287:
    v95 = v229 + 1;
    v94 = v223;
    if (*v240 <= (v229 + 1))
    {
      goto LABEL_288;
    }
  }

  v14 = v233;
  log_OutText(*(v233 + 32), "FE_PHRASING", 5, 0, "Error: the prosody word should has at least one lexical word");
LABEL_412:
  v15 = v237;
  v34 = v232;
  v77 = v235;
  v75 = __s;
LABEL_139:
  if (v249)
  {
    heap_Free(*(v14 + 8), v249);
    v249 = 0;
  }

  if ((v23 & 0x80000000) != 0)
  {
    v78 = v34;
    v79 = v250;
    if (v250)
    {
      v80 = *(v250 + 8);
      if (v80)
      {
        heap_Free(*(v14 + 8), v80);
      }

      *(v79 + 8) = 0;
      heap_Free(*(v14 + 8), v79);
      v250 = 0;
    }

    freePwTids(v14, v15);
    v34 = v78;
  }

  if (v255)
  {
    heap_Free(*(v14 + 8), v255);
  }

  if (v77)
  {
    if (v34)
    {
      v81 = v34;
      v82 = (v77 + 8);
      do
      {
        v83 = *(v82 - 1);
        if (v83)
        {
          heap_Free(*(v14 + 8), v83);
          *(v82 - 1) = 0;
        }

        if (*v82)
        {
          heap_Free(*(v14 + 8), *v82);
          *v82 = 0;
        }

        v82 += 5;
        --v81;
      }

      while (v81);
    }

    heap_Free(*(v14 + 8), v77);
  }

  v84 = v253;
  if (v253)
  {
    v85 = v268;
    if (v268)
    {
      v86 = v253;
      do
      {
        if (*v86)
        {
          heap_Free(*(v14 + 8), *v86);
          *v86 = 0;
        }

        v86 += 23;
        --v85;
      }

      while (v85);
    }

    heap_Free(*(v14 + 8), v84);
    v253 = 0;
  }

  if (v75)
  {
    heap_Free(*(v14 + 8), v75);
  }

  if (v76)
  {
    heap_Free(*(v14 + 8), v76);
  }

  if (v268)
  {
    v87 = 0;
  }

  else
  {
    v87 = v23 == -1979703288;
  }

  if (v87)
  {
    return 0;
  }

  else
  {
    return v23;
  }
}

uint64_t pw_get_word_separating_markers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned int *a7)
{
  v25 = 0;
  v24 = 0;
  v10 = (*(a1 + 176))(a3, a4, a5, 1, &v24, &v25);
  if ((v10 & 0x80000000) != 0)
  {
LABEL_18:
    if (*a6)
    {
      heap_Free(*(a2 + 8), *a6);
      *a6 = 0;
    }

    return v10;
  }

  if (!v25)
  {
    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Warning: no marker in lingdb.");
    return v10;
  }

  v11 = heap_Calloc(*(a2 + 8), v25, 4);
  *a6 = v11;
  if (!v11)
  {
    goto LABEL_17;
  }

  *a7 = 0;
  v12 = v25;
  if (v25)
  {
    v13 = 0;
    v14 = v24;
    v15 = v25;
    v16 = v24;
    v17 = v24;
    do
    {
      v18 = *v17;
      v17 += 8;
      v19 = (1 << v18) & 0x3C0010124001140;
      if (v18 <= 0x39 && v19 != 0)
      {
        *(v11 + 4 * v13) = v16[3] - v14[3];
        v13 = *a7 + 1;
        *a7 = v13;
      }

      v16 = v17;
      --v15;
    }

    while (v15);
    v21 = v13 + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v21 > v12)
  {
    v22 = heap_Realloc(*(a2 + 8), v11, 4 * v21);
    *a6 = v22;
    if (!v22)
    {
LABEL_17:
      log_OutPublic(*(a2 + 32), "FE_PHRASING", 37000, 0);
      v10 = 2315264010;
      goto LABEL_18;
    }
  }

  return v10;
}

uint64_t getTNmarker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = 2315264010;
  v31 = 0;
  v30 = 0;
  v13 = heap_Alloc(*(a2 + 8), 24);
  v14 = v13;
  if (!v13)
  {
    goto LABEL_31;
  }

  *v13 = 0;
  *(v13 + 4) = 0;
  *(v13 + 8) = 0;
  v15 = (*(a3 + 176))(a4, a5, a1, 1, &v30, &v31);
  v16 = v15;
  if ((v15 & 0x80000000) != 0)
  {
    v12 = v15;
  }

  else
  {
    v17 = v31;
    if (v31)
    {
      v18 = v30;
      do
      {
        if (*v18 == 34 || *v18 == 70 && v18[6] >= 3u)
        {
          if (!*v14)
          {
            *v14 = 1;
          }

          ++*(v14 + 4);
        }

        v18 += 8;
        --v17;
      }

      while (v17);
    }

    if (!*v14)
    {
LABEL_24:
      v12 = v16;
      goto LABEL_31;
    }

    v19 = heap_Alloc(*(a2 + 8), 4 * *(v14 + 4));
    *(v14 + 8) = v19;
    if (!v19)
    {
      goto LABEL_28;
    }

    v20 = heap_Alloc(*(a2 + 8), 2 * *(v14 + 4));
    *(v14 + 16) = v20;
    if (v20)
    {
      if (v31)
      {
        v21 = 0;
        v22 = 0;
        v23 = v30 + 3;
        while (1)
        {
          v24 = *(v23 - 3);
          if (v24 == 34)
          {
            LOWORD(v26) = 0;
            v25 = v22;
            *(*(v14 + 8) + 4 * v22) = *v23;
          }

          else
          {
            if (v24 != 70 || v23[3] < 3u)
            {
              goto LABEL_23;
            }

            v25 = v22;
            *(*(v14 + 8) + 4 * v22) = *v23;
            v26 = v23[3];
          }

          *(v20 + 2 * v25) = v26;
          ++v22;
LABEL_23:
          ++v21;
          v23 += 8;
          if (v21 >= v31)
          {
            goto LABEL_24;
          }
        }
      }

      goto LABEL_24;
    }
  }

  v27 = *(v14 + 8);
  if (v27)
  {
    heap_Free(*(a2 + 8), v27);
    *(v14 + 8) = 0;
  }

LABEL_28:
  v28 = *(v14 + 16);
  if (v28)
  {
    heap_Free(*(a2 + 8), v28);
    *(v14 + 16) = 0;
  }

  heap_Free(*(a2 + 8), v14);
  v14 = 0;
LABEL_31:
  *a6 = v14;
  return v12;
}

uint64_t pw_PYT_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int *a7, unsigned int a8, uint64_t *a9, unsigned __int16 *a10)
{
  v10 = *a9;
  v11 = *a10;
  v77 = 0;
  v12 = a6;
  v76 = 0;
  v75 = 0;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v66 = (a5 + 24);
    v68 = a8;
    v16 = 1;
    while (1)
    {
      v17 = (v10 + 184 * v14);
      if (*(v17 + 4) > 1u)
      {
        goto LABEL_9;
      }

      v18 = **v17;
      v76 = 0;
      v13 = (*(a1 + 184))(a2, a3, v18, 9, &v76);
      if ((v13 & 0x80000000) == 0 && v76 == 1)
      {
        v13 = (*(a1 + 176))(a2, a3, v18, 9, &v77, &v76);
        if ((v13 & 0x80000000) != 0)
        {
LABEL_76:
          heap_Free(*(a4 + 8), v10);
          return v13;
        }
      }

      if (v77 && cstdlib_strcmp(v77, "mnc!"))
      {
LABEL_9:
        v19 = 1;
        v16 = 1;
      }

      else
      {
        v20 = 0;
        if (v12)
        {
          v21 = v66;
          while (1)
          {
            v22 = *v21;
            v21 += 20;
            if (v22 == **v17)
            {
              break;
            }

            if (v12 == ++v20)
            {
              LODWORD(v20) = v12;
              goto LABEL_16;
            }
          }

          LODWORD(v20) = v20;
        }

LABEL_16:
        if (a8)
        {
          v23 = *(a5 + 40 * v20 + 28);
          v24 = a7;
          v25 = v68;
          while (1)
          {
            v26 = *v24++;
            if (v26 == v23)
            {
              break;
            }

            if (!--v25)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
LABEL_20:
          if (v16 != 1)
          {
            v76 = 0;
            v75 = 0;
            v13 = (*(a1 + 184))(a2, a3, v18, 19, &v76);
            v16 = 0;
            v19 = 1;
            if ((v13 & 0x80000000) == 0 && v76 == 1)
            {
              v13 = (*(a1 + 176))(a2, a3, v18, 19, &v75, &v76);
              if ((v13 & 0x80000000) != 0)
              {
                return v13;
              }

              v16 = 0;
              v19 = cstdlib_strcmp(v75, "left") == 0;
            }

            goto LABEL_26;
          }
        }

        v16 = 0;
        v19 = 1;
      }

LABEL_26:
      v15 += v19;
      if (v11 <= ++v14)
      {
        goto LABEL_29;
      }
    }
  }

  v15 = 0;
  v13 = 0;
LABEL_29:
  v27 = a4;
  v28 = heap_Calloc(*(a4 + 8), v15, 184);
  if (v28)
  {
    *a10 = v15;
    *a9 = v28;
    if (v11)
    {
      v67 = v28;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 1;
      v65 = v11;
      while (1)
      {
        v33 = (v10 + 184 * v30);
        if (*(v33 + 4) < 2u)
        {
          v69 = v31;
          v38 = **v33;
          v76 = 0;
          if (((*(a1 + 184))(a2, a3, v38, 9, &v76) & 0x80000000) == 0 && v76 == 1)
          {
            v39 = (*(a1 + 176))(a2, a3, v38, 9, &v77, &v76);
            if ((v39 & 0x80000000) != 0)
            {
              v13 = v39;
              goto LABEL_76;
            }
          }

          if (v77 && cstdlib_strcmp(v77, "mnc!"))
          {
            v40 = v10;
            v27 = a4;
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> Not a PYT PW. Skip by copying pPWIn[%d] to pPWOut[%d].", v29, v69);
            v36 = pw_copy_pw(a4, v33, v67 + 184 * v69);
            v37 = v65;
            if ((v36 & 0x80000000) != 0)
            {
              return v36;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v29, v69);
            v41 = (v69 + 1);
            v32 = 1;
            goto LABEL_68;
          }

          v37 = v65;
          v42 = 0;
          if (v12)
          {
            v43 = (a5 + 24);
            while (1)
            {
              v44 = *v43;
              v43 += 20;
              if (v44 == **v33)
              {
                break;
              }

              if (v12 == ++v42)
              {
                LODWORD(v42) = v12;
                goto LABEL_48;
              }
            }

            LODWORD(v42) = v42;
          }

LABEL_48:
          if (a8)
          {
            v45 = *(a5 + 40 * v42 + 28);
            v46 = a7;
            v47 = a8;
            while (1)
            {
              v48 = *v46++;
              if (v48 == v45)
              {
                break;
              }

              if (!--v47)
              {
                goto LABEL_52;
              }
            }

            if (v32 == 1)
            {
LABEL_63:
              v40 = v10;
              v27 = a4;
              v60 = v69;
              v61 = v69;
              log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> I am First PYT PW. Copy pPWIn[%d] to pPWOut[%d].");
            }

            else
            {
              v40 = v10;
              v27 = a4;
              v60 = v69;
              v61 = v69;
              log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> I am a PYT PW start with Marker! Copy pPWIn[%d] to pPWOut[%d].");
            }

LABEL_66:
            v36 = pw_copy_pw(v27, v33, v67 + 184 * v61);
            if ((v36 & 0x80000000) != 0)
            {
              return v36;
            }

            log_OutText(*(v27 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v29, v60);
            v32 = 0;
            v41 = (v60 + 1);
LABEL_68:
            v31 = v41;
            v10 = v40;
            goto LABEL_69;
          }

LABEL_52:
          if (v32 == 1)
          {
            goto LABEL_63;
          }

          v76 = 0;
          v75 = 0;
          if (((*(a1 + 184))(a2, a3, v38, 19, &v76) & 0x80000000) != 0 || v76 != 1)
          {
            v40 = v10;
            v27 = a4;
            v60 = v69;
            v61 = v69;
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, ">>> The WORD_DCT record doesn't has field LD_W_INPUTSPACETAG. Copy pPWIn[%d] to pPWOut[%d].");
            goto LABEL_66;
          }

          v36 = (*(a1 + 176))(a2, a3, v38, 19, &v75, &v76);
          if ((v36 & 0x80000000) != 0)
          {
            return v36;
          }

          v49 = (v10 + 184 * v30);
          v50 = cstdlib_strcmp(v75, "left");
          v27 = a4;
          v51 = *(a4 + 32);
          if (v50)
          {
            v52 = v69 - 1;
            log_OutText(v51, "FE_PHRASING", 5, 0, ">>> No space before this PYT unit. Merge pPWIn[%d] to pPWOut[%d] ...", v29, v52);
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "pPWIn[%d] is: ", v29);
            v53 = pw_show_pw(a4, v33);
            if ((v53 & 0x80000000) != 0)
            {
              v13 = v53;
              break;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Before merge, pPWOut[%d] is: ", v52);
            v54 = v67 + 184 * v52;
            v55 = pw_show_pw(a4, v54);
            if ((v55 & 0x80000000) != 0)
            {
              v13 = v55;
              break;
            }

            v56 = *(v54 + 8) + 1;
            *(v54 + 8) = v56;
            v57 = heap_Realloc(*(a4 + 8), *v54, 2 * v56);
            *v54 = v57;
            if (!v57)
            {
              v13 = 2315264010;
              log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0);
              return v13;
            }

            v58 = *v49;
            *(v57 + 2 * *(v54 + 8) - 2) = **v49;
            heap_Free(*(a4 + 8), v58);
            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "After merge, pPWOut[%d] is: ", v52);
            v59 = pw_show_pw(a4, v54);
            if ((v59 & 0x80000000) != 0)
            {
              v13 = v59;
              goto LABEL_76;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Merge pPWIn[%d] to pPWOut[%d] done!", v29, v52);
            v32 = 0;
            v27 = a4;
            v31 = v69;
          }

          else
          {
            log_OutText(v51, "FE_PHRASING", 5, 0, ">>> There is a space before this PYT PW. Copy pPWIn[%d] to pPWOut[%d].", v29, v69);
            v36 = pw_copy_pw(a4, v33, v67 + 184 * v69);
            if ((v36 & 0x80000000) != 0)
            {
              return v36;
            }

            log_OutText(*(a4 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v29, v69);
            v32 = 0;
            v31 = (v69 + 1);
          }
        }

        else
        {
          v34 = v31;
          v35 = v31;
          log_OutText(*(v27 + 32), "FE_PHRASING", 5, 0, ">>> Not a PYT PW. Skip by copying pPWIn[%d] to pPWOut[%d].", v29, v31);
          v36 = pw_copy_pw(v27, v33, v67 + 184 * v35);
          if ((v36 & 0x80000000) != 0)
          {
            return v36;
          }

          log_OutText(*(v27 + 32), "FE_PHRASING", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v29, v34);
          v32 = 1;
          v37 = v65;
          v31 = (v34 + 1);
        }

LABEL_69:
        v29 = ++v30;
        if (v30 >= v37)
        {
          v13 = 0;
          break;
        }
      }
    }
  }

  else
  {
    v13 = 2315264010;
    log_OutPublic(*(a4 + 32), "FE_PHRASING", 37000, 0);
  }

  if (v10)
  {
    goto LABEL_76;
  }

  return v13;
}

uint64_t pw_group_csc(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, uint64_t a6, unsigned int a7, uint64_t *a8, _WORD *a9, unsigned __int16 a10, const char **a11)
{
  v96 = *MEMORY[0x277D85DE8];
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "pw_group_csc Begin");
  v16 = heap_Calloc(*(a1 + 8), a7, 184);
  v87 = a8;
  *a8 = v16;
  if (!v16)
  {
    v79 = 2315264010;
    v80 = *(a1 + 32);
LABEL_77:
    log_OutPublic(v80, "FE_PHRASING", 37000, 0);
    return v79;
  }

  v82 = a1;
  *a9 = 0;
  v95 = 0;
  v94 = 0;
  v85 = a7;
  v17 = a3;
  if (a7)
  {
    LOWORD(v18) = 0;
    v19 = 0;
    v20 = 0;
    v21 = a4;
    v22 = (v16 + 8);
    v23 = (a3 + 24);
    while (1)
    {
      v88 = v22;
      v83 = v20;
      *v22 = 0;
      while (1)
      {
        v24 = (a6 + 184 * v18);
        if (v21)
        {
          v25 = 0;
          v26 = **v24;
          v27 = v23;
          while (1)
          {
            v28 = *v27;
            v27 += 20;
            if (v28 == v26)
            {
              break;
            }

            if (v21 == ++v25)
            {
              v89 = v21;
              goto LABEL_12;
            }
          }

          v89 = v25;
LABEL_12:
          v30 = 0;
          v31 = v23;
          while (1)
          {
            v32 = *v31;
            v31 += 20;
            if (v32 == v26)
            {
              break;
            }

            if (v21 == ++v30)
            {
              v29 = v21;
              goto LABEL_17;
            }
          }

          v29 = v30;
        }

        else
        {
          v89 = 0;
          v29 = 0;
        }

LABEL_17:
        v33 = *(v17 + 40 * v29);
        v90 = Utf8_Utf8NbrOfSymbols(v33);
        if (v21)
        {
          v34 = 0;
          v35 = **v24;
          v36 = v23;
          while (1)
          {
            v37 = *v36;
            v36 += 20;
            if (v37 == v35)
            {
              break;
            }

            if (v21 == ++v34)
            {
              v34 = v21;
              break;
            }
          }

          v38 = 0;
          v91 = *(v17 + 40 * v34 + 36);
          v39 = v23;
          while (1)
          {
            v40 = *v39;
            v39 += 20;
            if (v40 == v35)
            {
              break;
            }

            if (v21 == ++v38)
            {
              v41 = v21;
              goto LABEL_28;
            }
          }

          v41 = v38;
        }

        else
        {
          v41 = 0;
          v91 = *(v17 + 36);
        }

LABEL_28:
        v42 = *(v17 + 40 * v41 + 16);
        utf8_getUTF8Char(v33, 0, &v94);
        IsChineseLetter = utf8_IsChineseLetter(&v94);
        v44 = *(a2 + 1024);
        if (v44)
        {
          v45 = 0;
          v46 = v17 + 40 * v89;
          v47 = v88;
          while (*(a2 + 4 * v45) > *(v46 + 28) || *(v46 + 32) > *(a2 + 512 + 4 * v45))
          {
            if (v44 <= ++v45)
            {
              v48 = 1;
              goto LABEL_36;
            }
          }

          v48 = 0;
        }

        else
        {
          v48 = 1;
          v47 = v88;
        }

LABEL_36:
        v49 = a6 + 184 * v18;
        v51 = *(v49 + 8);
        v50 = (v49 + 8);
        if (v51 != 1)
        {
          break;
        }

        v52 = (v90 - 1);
        if (v52 != 1 && (v52 != 2 || !v91))
        {
          break;
        }

        v53 = cstdlib_strcmp(v42, "latin") && IsChineseLetter;
        v54 = v53 ? v48 : 0;
        if (v54 != 1)
        {
          break;
        }

        if (cstdlib_strstr(a5, v33))
        {
          goto LABEL_56;
        }

        v55 = a11;
        v56 = a10;
        if (a10)
        {
          while (cstdlib_strcmp(v33, *v55))
          {
            ++v55;
            if (!--v56)
            {
              goto LABEL_51;
            }
          }

LABEL_56:
          v93 = v18 + 1;
          LOWORD(v18) = *v47;
          v59 = v82;
          v58 = v87;
LABEL_57:
          *v47 = v18 + 1;
          goto LABEL_58;
        }

LABEL_51:
        if (v91 || *(a6 + 184 * v18 + 72))
        {
          goto LABEL_56;
        }

        v57 = *v47 + 1;
        *v47 = v57;
        LOWORD(v18) = v18 + 1;
        v17 = a3;
        v58 = v87;
        v23 = (a3 + 24);
        if (v85 <= v18 || v57 >= 3u)
        {
          v93 = v18;
          v59 = v82;
          goto LABEL_58;
        }
      }

      v93 = v18;
      v59 = v82;
      v58 = v87;
      if (!*v47)
      {
        *v47 = *v50;
        v47 = &v93;
        goto LABEL_57;
      }

LABEL_58:
      ++*a9;
      v60 = v58;
      *(*v58 + 184 * v19) = heap_Calloc(*(v59 + 8), *(*v58 + 184 * v19 + 8), 2);
      v61 = *v60;
      v62 = *v60 + 184 * v19;
      v63 = *v62;
      if (!*v62)
      {
        break;
      }

      v18 = v93;
      v64 = a6 + 184 * v93;
      if (*(v62 + 8) <= *(v64 - 176))
      {
        if (*(v62 + 8))
        {
          v77 = 0;
          v78 = *(v64 - 184);
          do
          {
            *(v63 + 2 * v77) = *(v78 + 2 * v77);
            ++v77;
          }

          while (v77 < *(v62 + 8));
        }

        *(v62 + 72) = *(v64 - 112);
      }

      else
      {
        v65 = heap_Calloc(*(v59 + 8), 1, 1024);
        if (!v65)
        {
          break;
        }

        v66 = v65;
        v67 = *v87;
        v68 = *v87 + 184 * v19;
        *(v68 + 12) = 1;
        v69 = *(v68 + 8);
        if (v69)
        {
          v70 = 0;
          v71 = -v69;
          v72 = (a6 + 184 * v18 - 184 * v69);
          v73 = v69 - 1;
          do
          {
            v74 = *v72;
            v72 += 23;
            v75 = *v74;
            *(*(*v87 + 184 * v19) + 2 * (v71 + *(*v87 + 184 * v19 + 8))) = v75;
            sprintf(&v66[v70], "%d-", v75);
            v70 = cstdlib_strlen(v66);
            ++v71;
          }

          while (v73--);
          v67 = *v87;
          v69 = *(*v87 + 184 * v19 + 8);
          v59 = v82;
        }

        *(v67 + 184 * v19 + 72) = *(v64 - 112);
        log_OutText(*(v59 + 32), "FE_PHRASING", 5, 0, "\t group [tids:%s, ntok: %d]", v66, v69);
        heap_Free(*(v59 + 8), v66);
        v61 = *v87;
      }

      v17 = a3;
      v19 = (v83 + 1);
      v22 = (v61 + 184 * v19 + 8);
      v95 = 0;
      v94 = 0;
      v20 = v83 + 1;
      v23 = (a3 + 24);
      if (v18 >= v85)
      {
        goto LABEL_74;
      }
    }

    v79 = 2315264010;
    v80 = *(v59 + 32);
    goto LABEL_77;
  }

LABEL_74:
  log_OutText(*(v82 + 32), "FE_PHRASING", 5, 0, "pw_group_csc End");
  return 0;
}

uint64_t pw_respect_word_separating_markers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned __int16 *a7)
{
  if (!*a7)
  {
    return 0;
  }

  v7 = a7;
  v13 = 0;
  v14 = 0;
  v30 = 0;
  v15 = *a6;
  while (1)
  {
    if (*(v15 + 184 * v13 + 8) >= 2u)
    {
      v30 = 0;
      v15 = *a6;
      v16 = *a6 + 184 * v13;
      if (*(v16 + 8) >= 2u)
      {
        break;
      }
    }

LABEL_17:
    if (++v13 >= *v7)
    {
      return v14;
    }
  }

  v17 = 1;
  while (1)
  {
    v14 = pw_check_if_glue_forbidden(a1, a3, a4, a5, *(*v16 + 2 * v17 - 2), *(*v16 + 2 * v17), &v30);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    if (v30)
    {
      v18 = heap_Realloc(*(a2 + 8), *a6, 184 * *v7 + 184);
      if (!v18)
      {
        goto LABEL_21;
      }

      *a6 = v18;
      cstdlib_memset((v18 + 184 * *v7), 0, 0xB8uLL);
      v19 = *v7 + 1;
      v28 = v7;
      *v7 = v19;
      if (v13 + 2 < v19)
      {
        cstdlib_memmove((*a6 + 184 * (v13 + 2)), (*a6 + 184 * v13 + 184), (0xB800000000 * (v19 - v13) - 0x17000000000) >> 32);
      }

      v20 = *a6 + 184 * v13;
      v21 = *(v20 + 8) - v17;
      v22 = 184 * v13 + 184;
      *(*a6 + v22 + 8) = v21;
      *(v20 + 8) = v17;
      *(*a6 + v22) = heap_Calloc(*(a2 + 8), 2, v21);
      v15 = *a6;
      v23 = *a6 + v22;
      v24 = *v23;
      v7 = v28;
      if (!*v23)
      {
LABEL_21:
        log_OutPublic(*(a2 + 32), "FE_PHRASING", 37000, 0);
        return 2315264010;
      }

      if (*(v23 + 8))
      {
        v25 = 0;
        v26 = *(v15 + 184 * v13) + 2 * v17;
        do
        {
          *(v24 + 2 * v25) = *(v26 + 2 * v25);
          ++v25;
        }

        while (v25 < *(v23 + 8));
      }

      goto LABEL_17;
    }

    ++v17;
    v15 = *a6;
    v16 = *a6 + 184 * v13;
    if (*(v16 + 8) <= v17)
    {
      goto LABEL_17;
    }
  }
}

uint64_t pw_igtree_process(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4, unsigned int a5, uint64_t a6)
{
  v9 = a1;
  inited = 2315264010;
  v11 = *a4;
  v60 = 0;
  v12 = *a3;
  v13 = heap_Calloc(*(a1 + 8), 1, 8 * *(a6 + 1296) - 8);
  if (!v13)
  {
    return inited;
  }

  v14 = v13;
  inited = hlp_igtree_initFeatureVector(v9, v13, (*(a6 + 1296) - 1));
  if ((inited & 0x80000000) != 0)
  {
    v24 = 0;
    goto LABEL_57;
  }

  v15 = heap_Calloc(*(v9 + 8), a5, 4);
  if (!v15)
  {
    v24 = 0;
    inited = 2315264010;
    goto LABEL_57;
  }

  v16 = v15;
  v49 = a4;
  v50 = a3;
  if (!v11)
  {
LABEL_49:
    *v49 = v11;
    *v50 = v12;
    goto LABEL_50;
  }

  v17 = 0;
  v18 = 0;
  v55 = a5 - 1;
  v53 = v15;
  v58 = v9;
  v56 = v14;
  while (1)
  {
    LOWORD(v19) = *(v12 + 184 * v17 + 8);
    v54 = v11;
    if (v19)
    {
      if (v55 != v18)
      {
        break;
      }
    }

LABEL_48:
    ++v17;
    v11 = v54;
    v9 = v58;
    v14 = v56;
    if (v17 >= v54)
    {
      goto LABEL_49;
    }
  }

  v20 = 0;
  v21 = 0;
  v52 = v17 + 2;
  v51 = v17 + 1;
  v22 = 2;
  while (1)
  {
    v23 = v18;
    v24 = v16;
    *(v16 + 4 * v18) = v19 - 1 == v20;
    v14 = v56;
    v25 = hlp_igtree_setFeatureVector(v58, v56, *(a6 + 1312), *(a6 + 1296), a2, a5, v18);
    if ((v25 & 0x80000000) != 0)
    {
      inited = v25;
      v9 = v58;
      goto LABEL_57;
    }

    inited = igtree_Process(a6, v56, &v60);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_56;
    }

    if (!cstdlib_strcmp(v60, "NOMATCH"))
    {
      v16 = v24;
      goto LABEL_43;
    }

    v26 = cstdlib_strcmp(v60, "1");
    v27 = *(v24 + 4 * v23);
    if (v27 != (v26 == 0))
    {
      break;
    }

    v16 = v24;
LABEL_43:
    v18 = v23 + 1;
    v20 = v21 + 1;
    v19 = *(v12 + 184 * v17 + 8);
    v22 += 2;
    if (++v21 >= v19 || v55 == (v23 + 1))
    {
      goto LABEL_48;
    }
  }

  if (!v23 || !v26)
  {
    goto LABEL_22;
  }

  v28 = a2 + 40 * v23;
  if (cstdlib_strcmp(*(v28 + 16), "normal") && cstdlib_strcmp(*(v28 + 16), "mnx") || *(v28 + 36))
  {
    v16 = v53;
    goto LABEL_43;
  }

  v27 = *(v53 + 4 * v23);
LABEL_22:
  if (v27)
  {
    v29 = v12 + 184 * v17;
    v30 = *(v29 + 8) + *(v29 + 192);
    *(v29 + 8) = v30;
    v31 = heap_Realloc(*(v58 + 8), *v29, 2 * v30);
    *v29 = v31;
    if (!v31)
    {
      inited = 2315264010;
      v9 = v58;
      v14 = v56;
      v24 = v53;
      goto LABEL_57;
    }

    LOWORD(v32) = *(v29 + 192);
    if (v32)
    {
      v33 = 0;
      v34 = *(v29 + 184);
      do
      {
        *(v31 - 2 * v32 + 2 * *(v29 + 8) + 2 * v33) = *(v34 + 2 * v33);
        ++v33;
        v32 = *(v29 + 192);
      }

      while (v33 < v32);
    }

    if (*(v29 + 72))
    {
      *(v29 + 72) = *(v29 + 256);
    }

    *(v29 + 12) |= *(v29 + 196);
    heap_Free(*(v58 + 8), *(v29 + 184));
    v35 = v54;
    if (v52 < v54)
    {
      cstdlib_memmove((v29 + 184), (v12 + 184 * v52), 184 * (v54 - v17) - 368);
    }

    v46 = 0xFFFF;
    v16 = v53;
    goto LABEL_42;
  }

  v36 = heap_Realloc(*(v58 + 8), v12, 184 * v54 + 184);
  if (!v36)
  {
    inited = 2315264010;
    v24 = v53;
LABEL_56:
    v9 = v58;
    v14 = v56;
    goto LABEL_57;
  }

  v37 = v36;
  cstdlib_memset((v36 + 184 * v54), 0, 0xB8uLL);
  v38 = v17 + 1;
  if (v51 < v54)
  {
    cstdlib_memmove((v37 + 184 * v17 + 368), (v37 + 184 * v51), 184 * (v54 + ~v17));
    v38 = v17 + 1;
  }

  v39 = v37 + 184 * v17;
  v40 = *(v39 + 8) + ~v21;
  v12 = v37;
  v41 = v37 + 184 * v38;
  *(v41 + 8) = v40;
  v42 = heap_Alloc(*(v58 + 8), 2 * v40);
  *v41 = v42;
  v16 = v53;
  if (v42)
  {
    if (*(v41 + 8))
    {
      v43 = 0;
      v44 = *v39 + v22;
      do
      {
        *(v42 + 2 * v43) = *(v44 + 2 * v43);
        ++v43;
      }

      while (v43 < *(v41 + 8));
    }

    v45 = 0;
    *(v41 + 72) = *(v39 + 72);
    *(v39 + 72) = 0;
    *(v41 + 112) = *(v39 + 112);
    *(v39 + 112) = 0;
    if (*(v39 + 12) == 1)
    {
      *(v39 + 12) = 0;
      v45 = 1;
    }

    *(v41 + 12) = v45;
    *(v39 + 8) = v21 + 1;
    v46 = 1;
    v35 = v54;
LABEL_42:
    inited = 0;
    v54 = (v46 + v35);
    goto LABEL_43;
  }

  inited = 2315264010;
  v9 = v58;
  v14 = v56;
LABEL_50:
  v24 = v16;
LABEL_57:
  hlp_igtree_freeFeatureVector(v9, v14, (*(a6 + 1296) - 1));
  heap_Free(*(v9 + 8), v14);
  if (v24)
  {
    heap_Free(*(v9 + 8), v24);
  }

  return inited;
}

uint64_t pw_merge_NLU(uint64_t a1, char **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    if (hlp_NLUStrKeyLen(v2) >= 3)
    {
      v6 = *v2 - 69;
      v7 = v6 > 0xE;
      v8 = (1 << v6) & 0x4011;
      v9 = v7 || v8 == 0;
      if (!v9 && v2[1] == 95)
      {
        ++v5;
      }
    }

    v2 = hlp_NLUStrNext(v2);
  }

  while (v2);
  if (!v5)
  {
    return 0;
  }

  v10 = 2315264010;
  v11 = heap_Calloc(*(a1 + 8), 8, v5);
  if (v11)
  {
    v12 = v11;
    v13 = *a2;
    if (!*a2)
    {
      goto LABEL_158;
    }

    v106 = a2;
    v105 = -1979703286;
    v14 = 0;
    do
    {
      v15 = hlp_NLUStrKeyLen(v13);
      if (v15 >= 3)
      {
        v16 = *v13 - 69;
        v7 = v16 > 0xE;
        v17 = (1 << v16) & 0x4011;
        v18 = v7 || v17 == 0;
        if (!v18 && v13[1] == 95)
        {
          v19 = v15;
          v20 = heap_Calloc(*(a1 + 8), 1, v15 - 1);
          if (!v20)
          {
            v26 = v12;
            v10 = 2315264010;
            goto LABEL_180;
          }

          v21 = v20;
          cstdlib_strncpy(v20, v13 + 2, v19 - 2);
          if (v14)
          {
            v22 = v14;
            v23 = v12;
            v24 = v14;
            while (1)
            {
              if (!*v23)
              {
                goto LABEL_29;
              }

              if (!cstdlib_strcmp(*v23, v21))
              {
                break;
              }

              ++v23;
              if (!--v24)
              {
                goto LABEL_29;
              }
            }

            heap_Free(*(a1 + 8), v21);
          }

          else
          {
            v22 = 0;
LABEL_29:
            *(v12 + 8 * v22) = v21;
            ++v14;
          }
        }
      }

      v13 = hlp_NLUStrNext(v13);
    }

    while (v13);
    if (!v14)
    {
LABEL_158:
      v10 = 0;
      goto LABEL_186;
    }

    v25 = heap_Realloc(*(a1 + 8), v12, 8 * v14);
    if (v25)
    {
      v26 = v25;
      v27 = heap_Calloc(*(a1 + 8), 2, v14);
      if (v27)
      {
        v99 = v27;
        for (i = *v106; i; i = hlp_NLUStrNext(i))
        {
          v29 = hlp_NLUStrKeyLen(i);
          if (v29 >= 3)
          {
            v30 = *i - 69;
            v7 = v30 > 0xE;
            v31 = (1 << v30) & 0x4011;
            v32 = v7 || v31 == 0;
            if (!v32 && i[1] == 95)
            {
              v33 = 0;
              v34 = v29 - 2;
              while (1)
              {
                v35 = *(v26 + 8 * v33);
                if (!v35)
                {
                  goto LABEL_49;
                }

                if (!cstdlib_strncmp(v35, i + 2, v34))
                {
                  break;
                }

                if (v14 == ++v33)
                {
                  goto LABEL_49;
                }
              }

              if ((v33 & 0x8000) == 0)
              {
                ++*(v99 + 2 * (v33 & 0x7FFF));
              }
            }
          }

LABEL_49:
          ;
        }

        v36 = heap_Calloc(*(a1 + 8), 8, v14);
        if (!v36)
        {
          v10 = 2315264010;
          v88 = v99;
          goto LABEL_179;
        }

        v37 = v36;
        v38 = 0;
        v39 = v99;
        do
        {
          v40 = heap_Calloc(*(a1 + 8), 8, *(v99 + 2 * v38));
          *(v37 + 8 * v38) = v40;
          if (!v40)
          {
            v88 = v99;
            v41 = 0;
            goto LABEL_165;
          }

          ++v38;
        }

        while (v14 != v38);
        v41 = heap_Calloc(*(a1 + 8), 2, v14);
        if (!v41)
        {
LABEL_164:
          v88 = v39;
          goto LABEL_165;
        }

        for (j = *v106; j; j = hlp_NLUStrNext(j))
        {
          v43 = hlp_NLUStrKeyLen(j);
          if (v43 >= 3)
          {
            v44 = *j - 69;
            v7 = v44 > 0xE;
            v45 = (1 << v44) & 0x4011;
            if (!v7 && v45 != 0 && j[1] == 95)
            {
              KeyIdx = hlp_getKeyIdx(v26, v14, j + 2, (v43 - 2));
              if ((KeyIdx & 0x80000000) == 0)
              {
                v48 = KeyIdx;
                v103 = *(v37 + 8 * KeyIdx);
                v49 = hlp_NLUStrKeyValue(j);
                v50 = v49;
                v51 = v49 ? hlp_NLUStrLength(v49) : 0;
                v52 = v51;
                if (!hlp_checkValExist(v103, *(v41 + 2 * v48), v50, v51))
                {
                  v53 = heap_Calloc(*(a1 + 8), 1, v52 + 2);
                  if (!v53)
                  {
LABEL_188:
                    v88 = v99;
                    goto LABEL_165;
                  }

                  if (v50)
                  {
                    v54 = v50;
                    v55 = v53;
                    cstdlib_strncpy(v53, v54, v52);
                  }

                  else
                  {
                    v55 = v53;
                    cstdlib_strcpy(v53, " ");
                  }

                  v56 = *(v41 + 2 * v48);
                  *&v103[8 * v56] = v55;
                  *(v41 + 2 * v48) = v56 + 1;
                }
              }
            }
          }
        }

        v57 = 0;
        v39 = v99;
        do
        {
          v58 = heap_Realloc(*(a1 + 8), *(v37 + 8 * v57), 8 * *(v41 + 2 * v57));
          if (!v58)
          {
            goto LABEL_164;
          }

          *(v37 + 8 * v57++) = v58;
        }

        while (v14 != v57);
        v59 = 0;
        while (!*(v41 + 2 * v59))
        {
LABEL_155:
          if (++v59 == v14)
          {
            v88 = v99;
            v105 = 0;
LABEL_165:
            for (k = 0; k != v14; ++k)
            {
              v90 = *(v37 + 8 * k);
              if (v90)
              {
                if (v41)
                {
                  v91 = *(v41 + 2 * k);
                  if (v91)
                  {
                    for (m = 0; m < v91; ++m)
                    {
                      v93 = *(*(v37 + 8 * k) + 8 * m);
                      if (v93)
                      {
                        heap_Free(*(a1 + 8), v93);
                        v91 = *(v41 + 2 * k);
                      }
                    }

                    v90 = *(v37 + 8 * k);
                  }
                }

                heap_Free(*(a1 + 8), v90);
              }
            }

            heap_Free(*(a1 + 8), v37);
            if (v41)
            {
              heap_Free(*(a1 + 8), v41);
            }

            v10 = v105;
LABEL_179:
            heap_Free(*(a1 + 8), v88);
            v12 = v26;
LABEL_180:
            if (v14)
            {
LABEL_181:
              for (n = 0; n != v14; ++n)
              {
                v95 = *(v26 + 8 * n);
                if (v95)
                {
                  heap_Free(*(a1 + 8), v95);
                }
              }

              v12 = v26;
            }

LABEL_186:
            heap_Free(*(a1 + 8), v12);
            return v10;
          }
        }

        v60 = 0;
        while (1)
        {
          v61 = *(v26 + 8 * v59);
          v62 = *(*(v37 + 8 * v59) + 8 * v60);
          v63 = *v106;
          v108 = 0;
          __s2 = 0;
          v104 = v63;
          if (!v63)
          {
            goto LABEL_129;
          }

          __s1 = v62;
          if (v62)
          {
            v97 = cstdlib_strlen(v62);
          }

          else
          {
            v97 = 0;
          }

          v64 = *(a1 + 8);
          v65 = cstdlib_strlen(v61);
          v66 = heap_Calloc(v64, 1, v65 + 3);
          if (!v66)
          {
            goto LABEL_188;
          }

          v67 = v66;
          cstdlib_strcpy(v66, "S_");
          __s = v67;
          cstdlib_strcat(v67, v61);
          v68 = *(a1 + 8);
          v69 = cstdlib_strlen(v61);
          v70 = heap_Calloc(v68, 1, v69 + 3);
          if (!v70)
          {
            v101 = 0;
            v102 = 0;
LABEL_122:
            v82 = -1979703286;
            v80 = __s;
            goto LABEL_123;
          }

          v71 = v70;
          cstdlib_strcpy(v70, "I_");
          v101 = v71;
          cstdlib_strcat(v71, v61);
          v72 = *(a1 + 8);
          v73 = cstdlib_strlen(v61);
          v74 = heap_Calloc(v72, 1, v73 + 3);
          if (!v74)
          {
            v102 = 0;
            goto LABEL_122;
          }

          v75 = v74;
          cstdlib_strcpy(v74, "E_");
          v102 = v75;
          cstdlib_strcat(v75, v61);
          v76 = __s1;
          if (!hlp_NLUStrFind(v104, __s, &__s2, &v108))
          {
            goto LABEL_94;
          }

          v77 = v108;
          if (!__s1 || v108)
          {
            goto LABEL_91;
          }

          if (cstdlib_strcmp(__s1, " "))
          {
            break;
          }

LABEL_95:
          if (!hlp_NLUStrFind(v104, v101, &__s2, &v108))
          {
            goto LABEL_103;
          }

          v78 = v108;
          if (__s1 && !v108)
          {
            if (!cstdlib_strcmp(__s1, " "))
            {
              goto LABEL_104;
            }

            v78 = v108;
          }

          if (!__s1 || v97 != v78 || cstdlib_strncmp(__s1, __s2, v78))
          {
LABEL_103:
            heap_Free(*(a1 + 8), v101);
            v101 = 0;
          }

LABEL_104:
          if (!hlp_NLUStrFind(v104, v102, &__s2, &v108))
          {
            goto LABEL_114;
          }

          v79 = v108;
          if (__s1 && !v108)
          {
            if (!cstdlib_strcmp(__s1, " "))
            {
              goto LABEL_115;
            }

            v79 = v108;
          }

          if (!__s1 || v97 != v79)
          {
LABEL_114:
            heap_Free(*(a1 + 8), v102);
            v102 = 0;
            if (!__s1)
            {
              goto LABEL_117;
            }

            goto LABEL_115;
          }

          if (cstdlib_strncmp(__s1, __s2, v79))
          {
            heap_Free(*(a1 + 8), v102);
            v102 = 0;
          }

LABEL_115:
          if (!cstdlib_strcmp(__s1, " "))
          {
            v76 = 0;
          }

LABEL_117:
          hlp_NLUStrRemoveRangeKey(v104, v61, v76);
          v80 = __s;
          if (__s)
          {
            if (!v101)
            {
              v81 = __s;
              if (!v102)
              {
                goto LABEL_120;
              }
            }
          }

          if (__s)
          {
            v85 = 1;
          }

          else
          {
            v85 = v101 == 0;
          }

          v86 = !v85;
          if (!v85)
          {
            v87 = v101;
            if (!v102)
            {
              goto LABEL_139;
            }
          }

          if (__s || v101 || !v102)
          {
            if (__s && v102)
            {
              hlp_NLUStrAppendKeyVal(v104, __s, v76);
              v81 = v102;
              goto LABEL_120;
            }

            if (__s && v101 && (v81 = __s, !v102))
            {
LABEL_120:
              hlp_NLUStrAppendKeyVal(v104, v81, v76);
              v80 = __s;
              v82 = 0;
            }

            else
            {
              if (!v102)
              {
                v86 = 0;
              }

              v87 = v102;
              if (v86)
              {
LABEL_139:
                hlp_NLUStrAppendKeyVal(v104, v87, v76);
                v83 = v101;
                v82 = 0;
LABEL_125:
                heap_Free(*(a1 + 8), v83);
LABEL_126:
                v84 = v102;
                if (!v102)
                {
                  goto LABEL_128;
                }

                goto LABEL_127;
              }

              v82 = 0;
              if (!__s)
              {
LABEL_124:
                v83 = v101;
                if (v101)
                {
                  goto LABEL_125;
                }

                goto LABEL_126;
              }
            }

LABEL_123:
            heap_Free(*(a1 + 8), v80);
            goto LABEL_124;
          }

          hlp_NLUStrAppendKeyVal(v104, v102, v76);
          v84 = v102;
          v82 = 0;
LABEL_127:
          heap_Free(*(a1 + 8), v84);
LABEL_128:
          if (v82 < 0)
          {
            v88 = v99;
            v105 = v82;
            goto LABEL_165;
          }

LABEL_129:
          if (++v60 >= *(v41 + 2 * v59))
          {
            goto LABEL_155;
          }
        }

        v77 = v108;
LABEL_91:
        if (__s1 && v97 == v77 && !cstdlib_strncmp(__s1, __s2, v77))
        {
          goto LABEL_95;
        }

LABEL_94:
        heap_Free(*(a1 + 8), __s);
        __s = 0;
        goto LABEL_95;
      }
    }

    else
    {
      v26 = v12;
    }

    v10 = 2315264010;
    goto LABEL_181;
  }

  return v10;
}

void pw_split_csc_pw(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  bzero(__dst, 0x400uLL);
  if (*(a1 + 12) == 1 && (*(a1 + 8) & 0xFFFE) == 4 && a2 != 0)
  {
    v5 = 1;
    v6 = a2;
    do
    {
      v7 = v5;
      v8 = cstdlib_strstr(v6, ".");
      if (v8)
      {
        v6 = v8 + 1;
      }

      else
      {
        v6 = 0;
      }

      if (!v8)
      {
        break;
      }

      v5 = 0;
    }

    while ((v7 & 1) != 0);
    if (v8)
    {
      cstdlib_strncpy(__dst, a2, (v6 + ~a2));
      cstdlib_strcat(__dst, "{SEP2}");
      cstdlib_strcat(__dst, v6);
      cstdlib_strcpy(a2, __dst);
    }
  }
}

uint64_t checkAttachedPunc(const char *a1)
{
  v2 = cstdlib_strlen(a1);
  v5 = 0;
  v3 = v2;
  if (v2)
  {
    {
      return 1;
    }

    else
    {
      if (v3 != 3)
      {
        return 0;
      }

      v3 = 1;
      utf8_Utf8ToUtf32_Tolerant(a1, 3u, &v5 + 4, 1u, &v5);
      if (HIDWORD(v5) != 8230)
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t pw_check_if_glue_forbidden(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  *a7 = 0;
  result = pw_check_if_word_in_prompt(a1, a2, a3, a5, a7);
  if ((result & 0x80000000) == 0 && !*a7)
  {
    result = pw_check_if_word_in_prompt(a1, a2, a3, a6, a7);
    if ((result & 0x80000000) == 0 && !*a7)
    {
      v24 = 0;
      v25 = 0;
      v23 = 0;
      result = (*(a1 + 176))(a2, a3, a4, 1, &v23, &v24);
      if ((result & 0x80000000) == 0)
      {
        (*(a1 + 168))(a2, a3, a5, 1, 1, &v25 + 2, &v24 + 2);
        result = (*(a1 + 168))(a2, a3, a6, 2, 1, &v25, &v24 + 2);
        if ((result & 0x80000000) == 0)
        {
          if (v24)
          {
            v15 = 0;
            v16 = (v23 + 12);
            while (1)
            {
              v17 = *v16;
              v16 += 8;
              if (v17 - *(v23 + 12) > HIWORD(v25))
              {
                break;
              }

              if (v24 == ++v15)
              {
                goto LABEL_24;
              }
            }

            v18 = v15;
          }

          else
          {
            v18 = 0;
          }

          if (v18 < v24)
          {
            v19 = v24 - v18;
            v20 = (v23 + 32 * v18);
            while (v20[3] - *(v23 + 12) < v25)
            {
              if (*v20 <= 0x39u && ((1 << *v20) & 0x3C0010124001140) != 0)
              {
                v22 = 1;
                goto LABEL_25;
              }

              v20 += 8;
              if (!--v19)
              {
                break;
              }
            }
          }

LABEL_24:
          v22 = 0;
LABEL_25:
          *a7 = v22;
        }
      }
    }
  }

  return result;
}

char *checkremoveNormalSym(char *a1, unsigned __int16 *a2, unsigned __int8 a3)
{
  v5 = a3;
  result = cstdlib_strchr(a1, a3);
  if (result)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = a1[v8];
        if (v10 != v5)
        {
          if (v8 != v9)
          {
            a1[v9] = v10;
            v7 = *a2;
          }

          ++v9;
        }

        ++v8;
      }

      while (v8 < v7);
    }

    else
    {
      v9 = 0;
    }

    a1[v9] = 0;
    *a2 = v9;
  }

  return result;
}

uint64_t pw_copy_pw(uint64_t a1, uint64_t a2, uint64_t a3)
{
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Copying PW ... ");
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "pPWIn and pPWOut is: ");
  v6 = pw_show_pw(a1, a2);
  if ((v6 & 0x80000000) == 0)
  {
    *(a3 + 8) = *(a2 + 8);
    *a3 = *a2;
    *(a3 + 12) = *(a2 + 12);
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Copy PW done!");
  }

  return v6;
}

uint64_t pw_show_pw(uint64_t a1, uint64_t a2)
{
  v4 = heap_Calloc(*(a1 + 8), 1, 1000);
  if (!v4)
  {
    return 2315264010;
  }

  v5 = v4;
  LODWORD(v6) = *(a2 + 8);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      sprintf(&v5[v8], "%d-", *(*a2 + 2 * v7));
      v8 = cstdlib_strlen(v5);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "\tPW [tids:%s, ntok:%d]", v5, v6);
  heap_Free(*(a1 + 8), v5);
  return 0;
}

uint64_t hlp_getKeyIdx(uint64_t a1, unsigned int a2, char *__s2, size_t __n)
{
  if (a2)
  {
    v6 = 0;
    v7 = __n;
    v8 = a2;
    do
    {
      v9 = *(a1 + 8 * v6);
      if (!v9)
      {
        break;
      }

      if (!cstdlib_strncmp(v9, __s2, v7))
      {
        return v6;
      }

      ++v6;
    }

    while (v8 != v6);
  }

  LOWORD(v6) = -1;
  return v6;
}

char *hlp_checkValExist(char *result, unsigned int a2, const char *a3, unsigned int a4)
{
  if (result)
  {
    if (a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = " ";
    }

    if (a2)
    {
      v5 = result;
      if (a3)
      {
        v6 = a4;
      }

      else
      {
        v6 = 1;
      }

      v7 = a2;
      while (1)
      {
        result = *v5;
        if (!*v5)
        {
          break;
        }

        if (cstdlib_strlen(result) == v6 && !cstdlib_strncmp(*v5, v4, v6))
        {
          return 1;
        }

        ++v5;
        if (!--v7)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pw_check_if_word_in_prompt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v10 = 0;
  *a5 = 0;
  result = (*(a1 + 168))(a2, a3, a4, 1, 1, &v10, &v10 + 2);
  if ((result & 0x80000000) == 0)
  {
    return (*(a1 + 312))(a2, a3, v10, a5);
  }

  return result;
}

uint64_t getphraseCfg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, char **a6, char **a7)
{
  v19 = 0;
  v18 = -1;
  v17 = 0;
  result = (*(a2 + 96))(a3, a4, "fecfg", "fephrase_slience", &v19, &v18, &v17);
  if ((result & 0x80000000) == 0)
  {
    if (v19)
    {
      v15 = v18 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = 300;
    }

    else
    {
      v16 = LH_atou(*v19);
    }

    *a5 = v16;
    result = getPunc(a1, a2, a3, a4, a6, "fephrase_strongphrasepunc");
    if ((result & 0x80000000) == 0)
    {
      return getPunc(a1, a2, a3, a4, a7, "fephrase_weakphrasepunc");
    }
  }

  return result;
}

uint64_t getPunc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5, uint64_t a6)
{
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v8 = (*(a2 + 96))(a3, a4, "fecfg", a6, &v19, &v18, &v17);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = 2315264010;
  if (v19)
  {
    v10 = v18 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = heap_Alloc(*(a1 + 8), 10);
    if (v11)
    {
      v12 = v11;
      cstdlib_strcpy(v11, ",;:.?!_~|");
      v13 = v12 + 9;
LABEL_11:
      *v13 = 0;
      *a5 = v12;
      return v8;
    }
  }

  else
  {
    v14 = cstdlib_strlen(*v19);
    v15 = heap_Alloc(*(a1 + 8), v14 + 1);
    if (v15)
    {
      v12 = v15;
      cstdlib_strcpy(v15, *v19);
      v13 = &v12[v14 - 1];
      goto LABEL_11;
    }
  }

  return v9;
}

uint64_t com_crf_GetCfgParamValNN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char **a6)
{
  *a6 = a5;
  *(__c + 1) = -1;
  LOBYTE(__c[0]) = 0;
  v10 = 0;
  v7 = (*(a3 + 96))(a1, a2, "fecfg", a4, &v10, __c + 1, __c);
  if ((v7 & 0x80000000) == 0 && *(__c + 1))
  {
    v8 = cstdlib_strchr(*v10, LOBYTE(__c[0]));
    if (v8)
    {
      *v8 = 0;
    }

    *a6 = *v10;
  }

  return v7;
}

uint64_t ruleNNInit(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8)
{
  v87 = *MEMORY[0x277D85DE8];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  *v64 = 0u;
  v65 = 0u;
  v61 = 0;
  v59 = 0;
  *__s1 = 0;
  *__c = 0;
  v58 = 0;
  v56 = 0;
  v54 = 0;
  *v55 = 0;
  if ((com_crf_GetCfgParamValNN(a5, a6, a4, "fephrase_max_rule", "1024", &v54) & 0x80000000) != 0)
  {
    v12 = 1024;
  }

  else
  {
    v12 = cstdlib_atoi(v54);
  }

  v13 = heap_Calloc(*(a3 + 8), 1, v12);
  v49 = a8;
  if (!v13)
  {
    v17 = a3;
    log_OutPublic(*(a3 + 32), "FE_PHRASING", 37000, 0);
    v20 = -1979703286;
    goto LABEL_39;
  }

  v62 = 0;
  __s2 = 0;
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  *__dst = 0u;
  v81 = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", &__s2);
  if (Str < 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v62), Str < 0))
  {
    v32 = Str;
LABEL_37:
    v17 = a3;
    log_OutText(*(a3 + 32), "FE_PHRASING", 0, 0, "Could not assemble broker string for SP rules %s", "sprules");
    v20 = v32 | 0x8A002000;
    goto LABEL_39;
  }

  cstdlib_strcpy(__dst, "sprules");
  cstdlib_strcat(__dst, "_");
  cstdlib_strcat(__dst, __s2);
  cstdlib_strcat(__dst, "_");
  cstdlib_strcat(__dst, v62);
  v15 = brokeraux_ComposeBrokerString(a3, __dst, 1, 1, __s2, 0, 0, v64, 0x100uLL);
  if (v15 < 0)
  {
    v32 = v15;
    goto LABEL_37;
  }

  log_OutText(*(a3 + 32), "FE_PHRASING", 5, 0, "looking for SP rules %s at %s", "sprules", v64);
  v16 = ssftriff_reader_ObjOpen(a1, a2, 2, v64, "SPDT", 1031, v55);
  if (v16 < 0)
  {
    v20 = v16;
    v17 = a3;
    log_OutText(*(a3 + 32), "FE_PHRASING", 0, 0, "no sp rules");
    *(a7 + 10) = 0;
    *a7 = 0;
  }

  else
  {
    v17 = a3;
    while (1)
    {
      v18 = ssftriff_reader_OpenChunk(*v55, __s1, &v59, &v58);
      if (v18 < 0)
      {
        break;
      }

      if (!cstdlib_strcmp(__s1, "DSTR"))
      {
        ssftriff_reader_GetChunkData(*v55, v59, __c, v19);
        if (inited < 0)
        {
          goto LABEL_80;
        }

        v56 = 0;
        ssftriff_reader_ReadStringZ(*v55, *__c, v59, 0, 0, &v56);
        ssftriff_reader_ReadStringZ(*v55, *__c, v59, 0, v13, &v56);
        v22 = cstdlib_strchr(v13, 10);
        if (v22)
        {
          *v22 = 0;
        }

        v23 = cstdlib_strchr(v13, 58);
        v24 = v23 ? cstdlib_atoi(v23 + 2) : 0;
        v25 = v56;
        inited = initPhrasingRuleStructNN(a3, a7, v24);
        if (inited < 0)
        {
          goto LABEL_80;
        }

        if (v24)
        {
          v26 = v24;
          v27 = 0;
          while (1)
          {
            do
            {
              v56 = 0;
              ssftriff_reader_ReadStringZ(*v55, *__c, v59, v25, 0, &v56);
              ssftriff_reader_ReadStringZ(*v55, *__c, v59, v25, v13, &v56);
              v25 += v56;
              v28 = v13 + 1;
              for (i = v13; ; ++i)
              {
                v30 = *i;
                if (v30 > 0x23)
                {
                  goto LABEL_30;
                }

                if (((1 << v30) & 0x100000200) == 0)
                {
                  break;
                }

                ++v28;
              }
            }

            while (((1 << v30) & 0x800002401) != 0);
LABEL_30:
            while (v30)
            {
              if (v30 == 35)
              {
                *(v28 - 1) = 0;
                break;
              }

              v31 = *v28++;
              LOBYTE(v30) = v31;
            }

            inited = addPhrasingRuleNN(a3, a7, v13);
            if (inited < 0)
            {
              break;
            }

            if (++v27 >= v26)
            {
              goto LABEL_12;
            }
          }

LABEL_80:
          v20 = inited;
          a8 = v49;
          goto LABEL_39;
        }
      }

LABEL_12:
      v20 = ssftriff_reader_CloseChunk(*v55);
      a8 = v49;
      if (v20 < 0)
      {
        goto LABEL_39;
      }
    }

    if ((v18 & 0x1FFF) == 0x14)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }
  }

LABEL_39:
  if (*v55)
  {
    v33 = ssftriff_reader_ObjClose(*v55);
    if (v33 < 0 && v20 > -1)
    {
      v20 = v33;
    }
  }

  if (v13)
  {
    heap_Free(*(v17 + 8), v13);
  }

  if (a7 && v20 < 0)
  {
    releasePhrasingRuleStructNN(v17, a7);
  }

  v35 = 0;
  v62 = 0;
  __s2 = 0;
  LOWORD(v58) = -1;
  LOBYTE(__c[0]) = 0;
  *(a8 + 1) = 0u;
  v36 = a8 + 1;
  v37 = a8 + 11;
  v38 = a8 + 21;
  v39 = a8 + 31;
  *(v36 + 1) = 0u;
  *(v36 + 2) = 0u;
  __dst[0] = "JOY_KEYS";
  __dst[1] = "DID_KEYS";
  *&v81 = "NEU_KEYS";
  *(&v81 + 1) = "COM_KEYS";
  *(v36 + 3) = 0u;
  *(v36 + 4) = 0u;
  while (1)
  {
    cstdlib_strcpy(v64, "statbnd_");
    cstdlib_strcat(v64, __dst[v35]);
    LOWORD(v58) = 0;
    if (((*(a4 + 96))(a5, a6, "fecfg", v64, &__s2, &v58, __c) & 0x80000000) != 0 || !v58)
    {
      break;
    }

    v40 = cstdlib_strchr(*__s2, LOBYTE(__c[0]));
    if (v40)
    {
      *v40 = 0;
    }

    v41 = *__s2;
    v42 = **__s2;
    if (**__s2)
    {
      v43 = 0;
      do
      {
        for (j = 0; v42; v42 = v41[++j])
        {
          if (v42 == 44)
          {
            break;
          }
        }

        cstdlib_strcpy(v64, "statbnd_");
        cstdlib_strncat(v64, v41, j);
        LOWORD(v58) = 0;
        (*(a4 + 96))(a5, a6, "fecfg", v64, &v62, &v58, __c);
        if (v58)
        {
          v45 = cstdlib_strchr(*v62, LOBYTE(__c[0]));
          if (v45)
          {
            *v45 = 0;
          }

          v46 = cstdlib_atoi(*v62);
          v47 = v36;
          if (v35)
          {
            v47 = v35 == 1 ? v37 : v39;
            if (v35 == 2)
            {
              v47 = v38;
            }
          }

          v47[v43] = v46;
        }

        if (v41[j] == 44)
        {
          v41 += j + 1;
        }

        else
        {
          v41 += j;
        }

        ++v43;
        v42 = *v41;
      }

      while (*v41);
    }

    else
    {
      v43 = 0;
    }

    if (++v35 == 4)
    {
      *v49 = v43;
      return 0;
    }
  }

  return 0;
}

uint64_t doesNNCustermizedFE(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = 0;
  *__s2 = -22590;
  if (result)
  {
    v5 = result;
    v6 = *(a2 + 1088);
    v7 = *(result + 8);
    v8 = cstdlib_strlen(v6);
    v9 = heap_Alloc(v7, v8 + 2);
    if (v9)
    {
      v10 = v9;
      if (*(a2 + 1072))
      {
        v24 = v5;
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = *(a2 + 1064) + 184 * v11;
          v14 = *(v13 + 36);
          v15 = v14 > 0xA;
          v16 = (1 << v14) & 0x610;
          if (!v15 && v16 != 0)
          {
            v18 = *(v13 + 16);
            v19 = *(v13 + 18);
            if (v18 != v19)
            {
              v20 = v19 - v18;
              cstdlib_memcpy(v10, &v6[v18], v19 - v18);
              *(v10 + v20) = 0;
              v21 = cstdlib_strlen(v10);
              v22 = Utf8_LengthInUtf8chars(v10, v21);
              if (v22)
              {
                v23 = 0;
                do
                {
                  utf8_getUTF8Char(v10, v23, __s1);
                  if (!cstdlib_strcmp(__s1, __s2))
                  {
                    ++v12;
                  }

                  v23 += utf8_determineUTF8CharLength(__s1[0]);
                  --v22;
                }

                while (v22);
              }
            }
          }

          ++v11;
        }

        while (v11 < *(a2 + 1072));
        v5 = v24;
        if (v12 >= 3u)
        {
          *a3 = 1;
        }
      }

      heap_Free(*(v5 + 8), v10);
      return 0;
    }

    else
    {
      return 2315264010;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t addPOS(uint64_t a1, unsigned int a2, char *__s, uint64_t a4)
{
  v8 = *(a1 + 8);
  v9 = cstdlib_strlen(__s);
  v10 = heap_Calloc(v8, 1, (v9 + 1));
  *(*(a4 + 1064) + 184 * a2 + 48) = v10;
  if (v10)
  {
    cstdlib_strcpy(v10, __s);
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }
}

uint64_t checkMSPOSForCompoundNN(uint64_t a1, unsigned int a2, char *__s2, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  CompoundAccent = 0;
  v32 = 0;
  v33 = 0;
  do
  {
    v12 = v10;
    if (v10 >= *(a4 + 360))
    {
      return CompoundAccent;
    }

    if (*(*(a4 + 352) + 4 * v10) == 1)
    {
      v13 = *(*(*(a4 + 344) + 8 * v10) + 2);
      v14 = cstdlib_strlen(__s2);
      CompoundAccent = do_pcre_exec(a4, v13, __s2, v14, 0, &v33);
      if ((CompoundAccent & 0x80000000) != 0)
      {
        return CompoundAccent;
      }
    }

    else if (!cstdlib_strcmp((*(a4 + 528) + *(*(a4 + 536) + 4 * **(*(a4 + 344) + 8 * v10))), __s2))
    {
      v33 = 1;
    }

    v10 = v12 + 1;
    v15 = v12;
  }

  while (!v33);
  if (v33 != 1)
  {
    return CompoundAccent;
  }

  v16 = *(*(a4 + 352) + 4 * v12);
  v17 = *(a4 + 528);
  v18 = v16 == 1;
  v19 = 4;
  if (v18)
  {
    v19 = 8;
  }

  v20 = *(*(a4 + 536) + 4 * *(*(*(a4 + 344) + 8 * v15) + v19));
  if (cstdlib_strcmp((v17 + v20), *(a4 + 640)))
  {
    v21 = a2;
    v22 = *(*(a5 + 1064) + 184 * a2 + 120);
    if (v22)
    {
      heap_Free(*(a1 + 8), v22);
      *(*(a5 + 1064) + 184 * a2 + 120) = 0;
    }

    v23 = *(a1 + 8);
    v24 = cstdlib_strlen((v17 + v20));
    v25 = heap_Calloc(v23, 1, (v24 + 52));
    *(*(a5 + 1064) + 184 * v21 + 120) = v25;
    if (v25)
    {
      cstdlib_strcpy(v25, (v17 + v20));
      goto LABEL_17;
    }

LABEL_24:
    CompoundAccent = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return CompoundAccent;
  }

  v32 = 0;
  v33 = 0;
  CompoundAccent = getCompoundAccent(a4, __s2, &v33, &v32 + 1, &v32);
  if ((CompoundAccent & 0x80000000) != 0)
  {
    return CompoundAccent;
  }

  if (!v33)
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "no stress information on first word of compound word : word index=%d pos=%s", a2, __s2);
    v21 = a2;
    v31 = *(*(a5 + 1064) + 184 * a2 + 120);
    if (v31)
    {
      heap_Free(*(a1 + 8), v31);
      *(*(a5 + 1064) + 184 * a2 + 120) = 0;
    }

    goto LABEL_17;
  }

  v27 = *(a1 + 8);
  v28 = cstdlib_strlen((v17 + v20));
  v29 = heap_Calloc(v27, 1, v28 + v32 - HIWORD(v32) + 2);
  *(*(a5 + 1064) + 184 * a2 + 120) = v29;
  if (!v29)
  {
    goto LABEL_24;
  }

  v21 = a2;
  cstdlib_strcpy(v29, (v17 + v20));
  cstdlib_strcat(*(*(a5 + 1064) + 184 * a2 + 120), "-");
  cstdlib_strncat(*(*(a5 + 1064) + 184 * a2 + 120), &__s2[HIWORD(v32)], v32 - HIWORD(v32));
LABEL_17:
  if (*(*(a5 + 1064) + 184 * v21 + 120))
  {
    v26 = *(a1 + 32);
    if (*(*(a4 + 352) + 4 * v15) == 1)
    {
      log_OutText(v26, "FE_PHRASING", 5, 0, "COMPOUND regex rule %d FIRED : SET %s -> %s");
    }

    else
    {
      log_OutText(v26, "FE_PHRASING", 5, 0, "COMPOUND normal rule FIRED : SET %s -> %s");
    }
  }

  return CompoundAccent;
}

uint64_t expandAndValidateCompoundsNN(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 1072))
  {
    for (i = 0; i < *(a2 + 1072); ++i)
    {
      v7 = *(*(a2 + 1064) + 184 * i + 120);
      if (v7)
      {
        v8 = *(a3 + 656);
        if (!v8)
        {
          if (!cstdlib_strncmp(v7, "B-", 2uLL) || !cstdlib_strncmp(*(*(a2 + 1064) + 184 * i + 120), "I-", 2uLL))
          {
            continue;
          }

          v8 = *(a3 + 656);
        }

        if (v8 != 1)
        {
          v9 = *(*(a2 + 1064) + 184 * i + 120);
          v10 = *(a3 + 640);
          v11 = cstdlib_strlen(v10);
          if (cstdlib_strncmp(v9, v10, v11))
          {
            if (i)
            {
              LOWORD(v12) = i;
              while (1)
              {
                v13 = *(*(a2 + 1064) + 184 * v12 + 120);
                if (!v13)
                {
                  break;
                }

                v14 = *(a3 + 640);
                v15 = cstdlib_strlen(v14);
                if (!cstdlib_strncmp(v13, v14, v15))
                {
                  break;
                }

                LOWORD(v12) = v12 - 1;
                if (!v12)
                {
                  LOWORD(v12) = 0;
                  break;
                }
              }

              v12 = v12;
            }

            else
            {
              v12 = 0;
            }

            v22 = *(*(a2 + 1064) + 184 * v12 + 120);
            if (!v22)
            {
LABEL_26:
              v21 = 184 * i;
              log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "no start word for internal compound word : word index=%d compound tag=%s");
LABEL_27:
              v28 = *(*(a2 + 1064) + v21 + 120);
              if (v28)
              {
                heap_Free(*(a1 + 8), v28);
                *(*(a2 + 1064) + 184 * i + 120) = 0;
              }

              continue;
            }

            v23 = *(a3 + 640);
            v24 = cstdlib_strlen(v23);
            v25 = cstdlib_strncmp(v22, v23, v24);
            v26 = *(a2 + 1064);
            if (v25)
            {
              v21 = 184 * i;
              log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "compound word has no beginning tag : word index=%d compound tag=%s");
              goto LABEL_27;
            }

            v27 = *(v26 + 184 * v12 + 120);
            if (!v27)
            {
              goto LABEL_26;
            }

            cstdlib_strcat(*(v26 + 184 * i + 120), (v27 + 1));
          }

          else
          {
            v16 = *(*(a2 + 1064) + 184 * i + 120);
            v17 = *(a3 + 640);
            v18 = cstdlib_strlen(v17);
            if (!cstdlib_strncmp(v16, v17, v18))
            {
              v19 = i + 1;
              v20 = *(a2 + 1072);
              if (i + 1 == v20 || i + 1 < v20 && ((v29 = *(*(a2 + 1064) + 184 * v19 + 120)) == 0 || (v30 = *(a3 + 640), v31 = cstdlib_strlen(v30), !cstdlib_strncmp(v29, v30, v31)) || !*(*(a2 + 1064) + 184 * v19 + 120)))
              {
                v21 = 184 * i;
                log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "single word cannot be a compound word : word index=%d compound tag=%s");
                goto LABEL_27;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t getWordIdxForMSPhrNN(uint64_t a1, uint64_t a2, int a3, int a4, _WORD *a5, _WORD *a6)
{
  if (*(a2 + 1072))
  {
    v6 = 0;
    v7 = *(a2 + 1064);
    v8 = (v7 + 18);
    v9 = 1;
    while (*(v7 + 184 * v6 + 16) != a3)
    {
      ++v6;
      ++v9;
      v8 += 92;
      if (v6 >= *(a2 + 1072))
      {
        goto LABEL_5;
      }
    }

    *a5 = v6;
    *a6 = v6;
    LODWORD(v11) = *(a2 + 1072);
    if (v6 >= v11)
    {
LABEL_12:
      v10 = 2315264000;
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "cant match MS terminal node with end word : start position=%d start word=%d unknown end=%d", a6);
    }

    else
    {
      while (1)
      {
        v13 = *v8;
        v8 += 92;
        v12 = v13;
        if (a4 - 1 == v13 || v9 == v11 && v12 == a4)
        {
          return 0;
        }

        *a6 = v9;
        v11 = *(a2 + 1072);
        if (v9++ >= v11)
        {
          goto LABEL_12;
        }
      }
    }
  }

  else
  {
LABEL_5:
    v10 = 2315264000;
    log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "cant match MS terminal node with start word : start position=%d", a6);
  }

  return v10;
}

uint64_t addPHRRangeNN(uint64_t a1, unsigned int a2, unsigned int a3, char *__s, uint64_t a5)
{
  if (a2 > a3)
  {
    return 0;
  }

  v11 = a2;
  while (1)
  {
    v12 = *(a1 + 8);
    v13 = cstdlib_strlen(__s);
    v14 = heap_Calloc(v12, 1, (v13 + 3));
    v15 = v11;
    *(*(a5 + 1064) + 184 * v11 + 88) = v14;
    if (!v14)
    {
      break;
    }

    if (cstdlib_strcmp(__s, "O"))
    {
      if (v11 == a2)
      {
        v16 = "B-";
      }

      else
      {
        v16 = "I-";
      }

      cstdlib_strcpy(*(*(a5 + 1064) + 184 * v11 + 88), v16);
      cstdlib_strcat(*(*(a5 + 1064) + 184 * v11 + 88), __s);
    }

    else
    {
      cstdlib_strcpy(*(*(a5 + 1064) + 184 * v11 + 88), __s);
    }

    *(*(a5 + 1064) + 184 * v11++ + 96) = a2;
    if (a3 < (v15 + 1))
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t addTokenNN(uint64_t a1, unsigned __int16 *a2, char *__s, uint64_t a4)
{
  v7 = *(a4 + 1072);
  v8 = *a2;
  if (*(a4 + 1072))
  {
    v9 = 0;
    v10 = v7 + 1;
    v11 = a2[1];
    v12 = (*(a4 + 1064) + 18);
    while (1)
    {
      v13 = *(v12 - 1);
      if (v8 == v13)
      {
        v10 = v9;
      }

      v14 = *v12;
      if (v11 == v14)
      {
        break;
      }

      if (v11 >= v13 && v11 < v14)
      {
        break;
      }

      v12 += 92;
      ++v9;
      v8 = *a2;
      if (v7 == v9)
      {
        goto LABEL_12;
      }
    }

    if (v7 + 1 != v10)
    {
      v19 = *(a1 + 8);
      v20 = cstdlib_strlen(__s);
      v21 = heap_Calloc(v19, 1, (v20 - 1));
      *(*(a4 + 1064) + 184 * v10 + 128) = v21;
      if (v21)
      {
        v22 = v21;
        v23 = cstdlib_strlen(__s + 1);
        cstdlib_strncpy(v22, __s + 1, v23 - 1);
        return 0;
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
        return 2315264010;
      }
    }
  }

  else
  {
LABEL_12:
    v11 = a2[1];
  }

  v16 = 2315264000;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", __s, v8, v11);
  if (*(a4 + 1072))
  {
    v17 = 0;
    v18 = 0;
    do
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "word[%d] %d,%d", v18++, *(*(a4 + 1064) + v17 + 16), *(*(a4 + 1064) + v17 + 18));
      v17 += 184;
    }

    while (v18 < *(a4 + 1072));
  }

  return v16;
}

uint64_t doMapStrNN(uint64_t a1, const char **a2, char *__s)
{
  v6 = cstdlib_strlen(__s);
  v7 = cstdlib_strlen(*a2);
  v8 = *a2;
  if (v6 <= v7)
  {
    goto LABEL_4;
  }

  v9 = *(a1 + 8);
  v10 = cstdlib_strlen(__s);
  v11 = heap_Realloc(v9, v8, (v10 + 1));
  if (v11)
  {
    v8 = v11;
    *a2 = v11;
LABEL_4:
    cstdlib_strcpy(v8, __s);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t doRetaggingnn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v18[2] = 0;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "applying %d retagging rules", *(a2 + 88));
  if (!*(a3 + 1072))
  {
    return 0;
  }

  v6 = 0;
  result = 0;
  while (1)
  {
    v19 = 0;
    if (*(a2 + 88))
    {
      break;
    }

LABEL_12:
    if (++v6 >= *(a3 + 1072))
    {
      return result;
    }
  }

  v8 = 0;
  v9 = 0;
  v10 = 184 * v6;
  while (1)
  {
    v17 = v6;
    v16 = 3;
    *v18 = 0;
    result = matchMAPRULE2STR_TRuleNN(0, 0, 0, 0, a2, a3, *(a2 + 80) + v8, &v16, &v19);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v11 = v19;
    if (v19 == 1)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "FIRED RETAGGING RULE %d RETAG POS %s to %s on word[%d]=%s", v9, *(*(a3 + 1064) + v10 + 48), (*(a2 + 528) + *(*(a2 + 536) + 4 * *(*(a2 + 80) + v8))), v6, *(*(a3 + 1064) + v10 + 56));
      result = doMapStrNN(a1, (*(a3 + 1064) + v10 + 48), (*(a2 + 528) + *(*(a2 + 536) + 4 * *(*(a2 + 80) + v8))));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v12 = *(a1 + 8);
      v13 = cstdlib_strlen(*(*(a3 + 1064) + 184 * v6 + 48));
      v14 = heap_Calloc(v12, 1, v13 + 1);
      v15 = *(a3 + 1064);
      *(v15 + 184 * v6 + 80) = v14;
      if (!v14)
      {
        log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
        return 2315264010;
      }

      cstdlib_strcpy(v14, *(v15 + 184 * v6 + 48));
      result = 0;
      v11 = v19;
    }

    if (!v11)
    {
      ++v9;
      v8 += 32;
      if (v9 < *(a2 + 88))
      {
        continue;
      }
    }

    goto LABEL_12;
  }
}

uint64_t insert_NLU_infoNN(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = a2;
  if (a2 == a3)
  {
    if (a2 + 1 == *(a5 + 1072))
    {
      v7 = a2 + 1;
    }

    else
    {
      v7 = a2;
    }
  }

  if (a2 >= v7)
  {
    return 0;
  }

  v10 = 184 * a2 + 88;
  v11 = a2 + 1;
  while (1)
  {
    v12 = *(a4 + 8);
    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = *(*(a5 + 1064) + v10);
    if (v13)
    {
      heap_Free(*(a1 + 8), v13);
      *(*(a5 + 1064) + v10) = 0;
      v12 = *(a4 + 8);
    }

    v14 = *(a1 + 8);
    v15 = cstdlib_strlen(v12);
    v16 = heap_Calloc(v14, 1, (v15 + 1));
    *(*(a5 + 1064) + v10) = v16;
    if (!v16)
    {
      break;
    }

    cstdlib_strcpy(v16, *(a4 + 8));
    *(*(a5 + 1064) + v10 + 8) = v8;
LABEL_12:
    v17 = *(a4 + 56);
    if (v17)
    {
      v18 = *(*(a5 + 1064) + v10 + 32);
      if (v18)
      {
        heap_Free(*(a1 + 8), v18);
        *(*(a5 + 1064) + v10 + 32) = 0;
        v17 = *(a4 + 56);
      }

      v19 = *(a1 + 8);
      v20 = cstdlib_strlen(v17);
      v21 = heap_Calloc(v19, 1, (v20 + 1));
      *(*(a5 + 1064) + v10 + 32) = v21;
      if (!v21)
      {
        break;
      }

      cstdlib_strcpy(v21, *(a4 + 56));
    }

    v22 = *(a4 + 40);
    if (v22)
    {
      v23 = cstdlib_strlen(v22);
      v24 = heap_Realloc(*(a1 + 8), *(*(a5 + 1064) + v10 + 56), (v23 + 32) & 0xFFFFFFE0);
      if (!v24)
      {
        break;
      }

      v25 = v24;
      cstdlib_strcpy(v24, *(a4 + 40));
      *(*(a5 + 1064) + v10 + 56) = v25;
    }

    v26 = *(a4 + 72);
    if (v26)
    {
      *(*(a5 + 1064) + v10 + 64) = v26;
      v27 = *(a4 + 64);
      if (v27)
      {
        v28 = *(a1 + 8);
        v29 = cstdlib_strlen(v27);
        v30 = heap_Alloc(v28, v29 + 1);
        *(*(a5 + 1064) + v10 + 72) = v30;
        if (!v30)
        {
          break;
        }

        cstdlib_strcpy(v30, *(a4 + 64));
      }
    }

    v10 += 184;
    if (v7 == v11++)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t addSynChunkNN(uint64_t a1, char *__s, const char *a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  if (a4 <= a5 && *(a6 + 1072) > a5)
  {
    v11 = *(a1 + 8);
    v12 = cstdlib_strlen(__s);
    v13 = v12;
    if (a3)
    {
      v14 = cstdlib_strlen(a3);
      v15 = heap_Calloc(v11, 1, (v13 + v14 + 1));
      *(*(a6 + 1064) + 184 * a4 + 128) = v15;
      if (v15)
      {
        cstdlib_strcpy(v15, __s);
        cstdlib_strcat(*(*(a6 + 1064) + 184 * a4 + 128), a3);
        return 0;
      }
    }

    else
    {
      v17 = heap_Calloc(v11, 1, (v12 + 1));
      *(*(a6 + 1064) + 184 * a4 + 128) = v17;
      if (v17)
      {
        cstdlib_strcpy(v17, __s);
        return 0;
      }
    }

    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return 2315264010;
  }

  v16 = 2315264000;
  log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "syntactic chunks out of order : fromWordIdx=%d toWordIdx=%d numWords=%d", a4, a5, *(a6 + 1072));
  return v16;
}

uint64_t resolvePHRNN(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = *MEMORY[0x277D85DE8];
  if (*(a3 + 1072))
  {
    v6 = 0;
    v7 = 88;
    while (1)
    {
      if (v7 == 88)
      {
        goto LABEL_24;
      }

      v8 = *(a3 + 1064);
      if (*(v8 + v7))
      {
        goto LABEL_24;
      }

      v9 = v8 + v7;
      v10 = *(v9 - 184);
      if (v10)
      {
        v11 = *(v9 - 72);
        if (v11 >= 2 && *(a1 + (v11 - 1)) == 95)
        {
          break;
        }
      }

      v21 = *(v9 - 184);
      if (v21)
      {
        v22 = *v21;
        if (v22 == 66)
        {
          v29 = *(a2 + 8);
          v30 = cstdlib_strlen(v21);
          v31 = heap_Calloc(v29, 1, (v30 + 3));
          v32 = *(a3 + 1064);
          *(v32 + v7) = v31;
          if (!v31)
          {
            goto LABEL_76;
          }

          cstdlib_strcpy(v31, *(v32 + v7 - 184));
          **(*(a3 + 1064) + v7) = 73;
          v33 = *(a2 + 8);
          v34 = cstdlib_strlen(*(*(a3 + 1064) + v7 - 224));
          v18 = heap_Calloc(v33, 1, (v34 + 3));
          v19 = *(a3 + 1064);
          *(v19 + v7 - 40) = v18;
          if (!v18)
          {
            goto LABEL_76;
          }

          v20 = "[3] set missing PHR on word : word index=%d to %s (also copy POS %s)";
        }

        else
        {
          if (v22 != 79 && v22 != 73)
          {
            goto LABEL_24;
          }

          v23 = *(a2 + 8);
          v24 = cstdlib_strlen(v21);
          v25 = heap_Calloc(v23, 1, (v24 + 3));
          v26 = *(a3 + 1064);
          *(v26 + v7) = v25;
          if (!v25)
          {
            goto LABEL_76;
          }

          cstdlib_strcpy(v25, *(v26 + v7 - 184));
          v27 = *(a2 + 8);
          v28 = cstdlib_strlen(*(*(a3 + 1064) + v7 - 224));
          v18 = heap_Calloc(v27, 1, (v28 + 3));
          v19 = *(a3 + 1064);
          *(v19 + v7 - 40) = v18;
          if (!v18)
          {
            goto LABEL_76;
          }

          v20 = "[2] set missing PHR on word : word index=%d to %s (also copy POS %s)";
        }

        goto LABEL_23;
      }

LABEL_24:
      ++v6;
      v35 = *(a3 + 1072);
      v7 += 184;
      if (v6 >= v35)
      {
        if (!*(a3 + 1072))
        {
          goto LABEL_75;
        }

        v36 = 0;
        v37 = 88;
        do
        {
          if (!*(*(a3 + 1064) + v37))
          {
            if ((insert_NLU_infoNN(a2, v36, (v36 + 1), &unk_279DACA10, a3) & 0x80000000) != 0)
            {
              log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Failed to fill out PHR=B-NIL on word : word index=%d");
LABEL_79:
              v61 = 2315264000;
              goto LABEL_80;
            }

            LODWORD(v35) = *(a3 + 1072);
          }

          ++v36;
          v37 += 184;
        }

        while (v36 < v35);
        if (!v35)
        {
          goto LABEL_75;
        }

        v38 = 0;
        v39 = (*(a3 + 1064) + 88);
        do
        {
          if (!*v39)
          {
            log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "could not work out PHR on word : word index=%d");
            goto LABEL_79;
          }

          ++v38;
          v39 += 23;
        }

        while (v35 != v38);
        v40 = 0;
        v41 = 88;
        do
        {
          if (!cstdlib_strncmp(*(*(a3 + 1064) + v41), "I-", 2uLL))
          {
            v42 = *(a3 + 1064);
            if (v41 == 88)
            {
              **(v42 + 88) = 66;
              log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", 0, *(*(a3 + 1064) + 88));
            }

            else if (cstdlib_strcmp(*(v42 + v41 - 184), *(v42 + v41)))
            {
              cstdlib_strcpy(__dst, *(*(a3 + 1064) + v41));
              __dst[0] = 66;
              if (cstdlib_strcmp(*(*(a3 + 1064) + v41 - 184), __dst))
              {
                **(*(a3 + 1064) + v41) = 66;
                log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", v40, *(*(a3 + 1064) + v41));
              }
            }
          }

          ++v40;
          v41 += 184;
        }

        while (v40 < *(a3 + 1072));
        if (!*(a3 + 1072))
        {
          return 0;
        }

        v43 = 0;
        v44 = 0;
        v45 = *(a3 + 1064);
        while (1)
        {
          v68 = v43;
          cstdlib_strcpy(__dst, *(v45 + 184 * v44 + 88));
          if (!cstdlib_strncmp(__dst, "B-", 2uLL))
          {
            cstdlib_strcpy(__dst, (*(*(a3 + 1064) + 184 * v44 + 88) + 2));
          }

          LODWORD(v46) = v44;
          if (*(a3 + 1072) > v44)
          {
            v47 = 184 * v44 + 88;
            v46 = v44;
            do
            {
              v48 = *(*(a3 + 1064) + v47);
              if (!v48 || cstdlib_strcmp(v48, __dst) && (cstdlib_strlen(*(*(a3 + 1064) + v47)) < 3 || cstdlib_strcmp((*(*(a3 + 1064) + v47) + 2), __dst) || cstdlib_strncmp(*(*(a3 + 1064) + v47), "I-", 2uLL)) && *(*(a3 + 1064) + v47 + 8) != *(*(a3 + 1064) + 184 * v44 + 96))
              {
                break;
              }

              ++v46;
              v47 += 184;
            }

            while (v46 < *(a3 + 1072));
          }

          v49 = v46 - 1;
          if (v49 <= v44)
          {
LABEL_66:
            log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[3] add syn chunk %s from %d to %d", __dst, v68, v46 - 1);
            v57 = (v46 - 1);
            v58 = a2;
            v59 = 0;
            v60 = v44;
          }

          else
          {
            v50 = 1;
            v51 = v44;
            v52 = v44;
            while (1)
            {
              v53 = *(a3 + 1064);
              v54 = v52;
              v55 = v52;
              if (*(v53 + 184 * v52 + 100) != 1)
              {
                break;
              }

LABEL_62:
              log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[1] add syn chunk %s%s from %d to %d", __dst, "-P", v52, v51);
              v56 = addSynChunkNN(a2, __dst, "-P", v52, v54, a3);
              if ((v56 & 0x80000000) != 0)
              {
                return v56;
              }

              v50 = 0;
              v52 = v54 + 1;
              v51 = (v54 + 1);
              if (v49 <= v51)
              {
                goto LABEL_73;
              }
            }

            while (v49 > ++v55)
            {
              if (*(v53 + 184 * v55 + 100) == 1)
              {
                v51 = v55;
                v54 = v55;
                goto LABEL_62;
              }
            }

            if (v50)
            {
              goto LABEL_66;
            }

LABEL_73:
            if (v46 <= v52)
            {
              goto LABEL_68;
            }

            log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, "[2] add syn chunk %s%s from %d to %d", __dst, "-P", v52, v46 - 1);
            v60 = v52;
            v57 = (v46 - 1);
            v58 = a2;
            v59 = "-P";
          }

          v56 = addSynChunkNN(v58, __dst, v59, v60, v57, a3);
          if ((v56 & 0x80000000) != 0)
          {
            return v56;
          }

LABEL_68:
          v61 = 0;
          v45 = *(a3 + 1064);
          *(v45 + 184 * v44 + 136) = 1;
          *(v45 + 184 * v49 + 140) = 1;
          if (v44 == v46)
          {
            v44 = v46 + 1;
          }

          else
          {
            v44 = v46;
          }

          v43 = v44;
          v62 = *(a3 + 1072);
          if (v44 >= v62)
          {
            goto LABEL_81;
          }
        }
      }
    }

    v12 = *(a2 + 8);
    v13 = cstdlib_strlen(v10);
    v14 = heap_Calloc(v12, 1, (v13 + 3));
    v15 = *(a3 + 1064);
    *(v15 + v7) = v14;
    if (!v14)
    {
      goto LABEL_76;
    }

    cstdlib_strcpy(v14, *(v15 + v7 - 184));
    if (cstdlib_strcmp(*(*(a3 + 1064) + v7), "O"))
    {
      **(*(a3 + 1064) + v7) = 73;
    }

    v16 = *(a2 + 8);
    v17 = cstdlib_strlen(*(*(a3 + 1064) + v7 - 224));
    v18 = heap_Calloc(v16, 1, (v17 + 3));
    v19 = *(a3 + 1064);
    *(v19 + v7 - 40) = v18;
    if (!v18)
    {
LABEL_76:
      v61 = 2315264010;
      log_OutPublic(*(a2 + 32), "FE_PHRASING", 37000, 0);
      goto LABEL_80;
    }

    v20 = "[1] set missing PHR on word : word index=%d to %s (also copy POS %s)";
LABEL_23:
    cstdlib_strcpy(v18, *(v19 + v7 - 224));
    log_OutText(*(a2 + 32), "FE_PHRASING", 5, 0, v20, v6, *(*(a3 + 1064) + v7), *(*(a3 + 1064) + v7 - 40));
    goto LABEL_24;
  }

LABEL_75:
  v61 = 0;
LABEL_80:
  v62 = *(a3 + 1072);
LABEL_81:
  if (v62)
  {
    v63 = 0;
    v64 = *(a3 + 1064);
    v65 = 88;
    do
    {
      v66 = *(v64 + v65);
      if (v66)
      {
        heap_Free(*(a2 + 8), v66);
        v64 = *(a3 + 1064);
        *(v64 + v65) = 0;
        LOWORD(v62) = *(a3 + 1072);
      }

      ++v63;
      v65 += 184;
    }

    while (v63 < v62);
  }

  return v61;
}

uint64_t addMarkerTypeNN(uint64_t a1, char *__s2, const char *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a5 + 74);
  v13 = 8 * v12;
  do
  {
    if (v12 >= *(a5 + 72) || (v14 = *(a5 + 528)) == 0)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Ignoring marker :%s, as not in DEFMAPPING list", __s2);
      return 0;
    }

    v15 = cstdlib_strcmp((v14 + *(*(a5 + 536) + 4 * *(*(a5 + 64) + v13))), __s2);
    ++v12;
    v13 += 8;
  }

  while (v15);
  if (v12 != 1)
  {
    return 0;
  }

  v16 = *(a1 + 8);
  v17 = cstdlib_strlen(a3);
  v18 = heap_Calloc(v16, 1, (v17 + 1));
  *(*(a6 + 1064) + 184 * a4 + 128) = v18;
  if (v18)
  {
    cstdlib_strcpy(v18, a3);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

uint64_t getNNSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v98 = 0;
  v97 = 0;
  v6 = *(a5 + 1088);
  if (!v6)
  {
    return 0;
  }

  v7 = a5;
  v11 = *(a5 + 1096);
  v80 = *(a5 + 1088);
  if (!cstdlib_strcmp(v6, ""))
  {
    return 0;
  }

  v12 = cstdlib_strlen(*(v7 + 1088));
  v13 = heap_Calloc(*(a1 + 8), 1, (v12 + 2));
  if (!v13)
  {
    inserted = 2315264010;
    log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
    return inserted;
  }

  v14 = v13;
  v87 = a2;
  v75 = v11;
  v76 = a3;
  v77 = a4;
  v99 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v15 = v80;
  if (!*(v7 + 1072))
  {
LABEL_102:
    v65 = (*(v87 + 104))(v76, v77, 2, v75, &v99);
    if ((v65 & 0x80000000) != 0)
    {
LABEL_114:
      inserted = v65;
    }

    else
    {
      while (v99)
      {
        v65 = (*(v87 + 168))(v76, v77);
        if ((v65 & 0x80000000) != 0)
        {
          goto LABEL_114;
        }

        if (v95 == 6)
        {
          v65 = (*(v87 + 168))(v76, v77, v99, 1, 1, &v93, &v96);
          if ((v65 & 0x80000000) != 0)
          {
            goto LABEL_114;
          }

          v65 = (*(v87 + 168))(v76, v77, v99, 2, 1, &v93 + 2, &v96);
          if ((v65 & 0x80000000) != 0)
          {
            goto LABEL_114;
          }

          if (v93 > HIWORD(v93))
          {
            inserted = 2315271857;
            goto LABEL_115;
          }

          v65 = (*(v87 + 176))(v76, v77, v99, 4, &v94, &v96);
          if ((v65 & 0x80000000) != 0)
          {
            goto LABEL_114;
          }

          if (cstdlib_strcmp(v94, "_PR_"))
          {
            v66 = addTokenNN(a1, &v93, v94, v7);
            if ((v66 & 0x80000000) != 0)
            {
              inserted = v66;
              if (v66 != -1979703296)
              {
                goto LABEL_115;
              }
            }
          }
        }

        v65 = (*(v87 + 120))(v76, v77, v99, &v99);
        if ((v65 & 0x80000000) != 0)
        {
          goto LABEL_114;
        }
      }

      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "Added words information", 0);
      inserted = (*(v87 + 176))(v76, v77, v75, 1, &v98, &v97);
      if ((inserted & 0x80000000) == 0)
      {
        LOWORD(v68) = v97;
        if (v97)
        {
          v69 = 0;
          v70 = 0;
          do
          {
            v71 = v98 + 32 * v70;
            if (*v71 == 21)
            {
              DomainFromPausingDefs = getDomainFromPausingDefs(v7 + 1104, *(v71 + 24), &v92);
              v68 = v97;
              if (DomainFromPausingDefs == 1)
              {
                for (i = v70 + 1; v68 > i; ++i)
                {
                  v74 = v98 + 32 * i;
                  if (*v74 == 21 && cstdlib_strcmp(*(v98 + 32 * v70 + 24), *(v74 + 24)))
                  {
                    LOWORD(v68) = v97;
                    v70 = i - (i + 1 != v69);
                    break;
                  }

                  v68 = v97;
                }
              }
            }

            v69 = ++v70;
          }

          while (v70 < v68);
        }
      }
    }

    goto LABEL_115;
  }

  v16 = 0;
  v79 = a1;
  v78 = v13;
  v88 = v7;
  while (1)
  {
    v17 = *(v7 + 1064) + 184 * v16;
    *(v17 + 80) = 0;
    *(v17 + 88) = 0;
    *(v17 + 120) = 0;
    *(v17 + 128) = 0;
    *(v17 + 144) = 0u;
    *(v17 + 160) = 0u;
    v93 = *(v17 + 16);
    v18 = v93;
    v19 = v93 >> 16;
    cstdlib_strncpy(v14, (v15 + v18), (v18 >> 16) - v18);
    v14[v19 - v93] = 0;
    if (v19 == v18)
    {
      log_OutText(*(a1 + 32), "FE_PHRASING", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", v18, v18);
      goto LABEL_98;
    }

    v20 = doesWordEndInComma(v14);
    v21 = *(v7 + 1064);
    if (v20)
    {
      *(v21 + 184 * *(v7 + 1072) - 84) = 1;
    }

    v22 = *(v21 + 184 * v16 + 40);
    if (v22)
    {
      break;
    }

LABEL_98:
    if (++v16 >= *(v7 + 1072))
    {
      goto LABEL_102;
    }
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v100 = 0u;
  v23 = *(a1 + 8);
  v24 = cstdlib_strlen(v22);
  v25 = heap_Calloc(v23, 1, (v24 + 1));
  if (!v25)
  {
LABEL_118:
    inserted = 2315264010;
    a1 = v79;
    log_OutPublic(*(v79 + 32), "FE_PHRASING", 37000, 0);
    v14 = v78;
    goto LABEL_115;
  }

  v26 = v25;
  __s = v22;
  cstdlib_strcpy(v25, v22);
  for (j = &v26[cstdlib_strlen(v26) - 1]; j >= v26; --j)
  {
    v28 = *j;
    v29 = v28 > 0x3B;
    v30 = (1 << v28) & 0x800000100002600;
    if (v29 || v30 == 0)
    {
      break;
    }

    *j = 0;
  }

  v32 = 0;
  v91 = 0;
  v89 = 0;
  v90 = 0uLL;
  v85 = 0;
  v86 = 0;
  v82 = 0;
  v83 = 0;
  v33 = 0;
  v84 = 0;
  v34 = v26;
  do
  {
    v35 = cstdlib_strchr(v34, 59);
    v36 = v35;
    if (v35)
    {
      *v35 = 0;
    }

    v37 = cstdlib_strchr(v34, 58);
    v38 = v37;
    if (v37)
    {
      *v37 = 0;
      v39 = v37 + 1;
    }

    else
    {
      v39 = "null";
    }

    if (cstdlib_strcmp(v34, "POS"))
    {
      if (cstdlib_strcmp(v34, "PHR"))
      {
        if (cstdlib_strcmp(v34, "BND"))
        {
          if (!cstdlib_strcmp(v34, "BNDSHAPE"))
          {
            inserted = 0;
            v89 = v39;
            goto LABEL_51;
          }

          if (!cstdlib_strcmp(v34, "S_POI"))
          {
            inserted = 0;
            v42 = "B";
LABEL_50:
            *(&v90 + 1) = v42;
            *&v90 = v39;
            goto LABEL_51;
          }

          if (!cstdlib_strcmp(v34, "I_POI"))
          {
            inserted = 0;
            v42 = "I";
            goto LABEL_50;
          }

          if (!cstdlib_strcmp(v34, "E_POI"))
          {
            inserted = 0;
            v42 = "S";
            if (!*(&v90 + 1))
            {
              v42 = "E";
            }

            goto LABEL_50;
          }

          if (cstdlib_strcmp(v34, "PRM"))
          {
            v40 = *(v88 + 1760);
            if (!v40)
            {
              if (!cstdlib_strcmp(v34, "COMP"))
              {
                inserted = 0;
                v85 = v39;
                goto LABEL_51;
              }

              v40 = *(v88 + 1760);
            }

            if (v40 == 1 && !cstdlib_strcmp(v34 + 1, "_COMP"))
            {
              v43 = *(v79 + 8);
              v44 = cstdlib_strlen(v39);
              v45 = heap_Calloc(v43, 1, (v44 + 3));
              if (!v45)
              {
                goto LABEL_118;
              }

              v46 = v45;
              if (cstdlib_strcmp(v34, "S_COMP"))
              {
                v47 = "I-";
              }

              else
              {
                v47 = "B-";
              }

              cstdlib_strcpy(v46, v47);
              cstdlib_strcat(v46, v39);
              v48 = v46;
              inserted = 0;
              v84 = v48;
              v85 = v48;
            }

            else
            {
              if (!v38 || v38 <= v34 + 1)
              {
                goto LABEL_41;
              }

              if (!cstdlib_strcmp(v34 + 1, "_CLASS"))
              {
                inserted = 0;
                v82 = v39;
                goto LABEL_51;
              }

              if (!cstdlib_strcmp(v34 + 1, "_PUNC"))
              {
                v49 = v83;
                if (!v83)
                {
                  v50 = *(v79 + 8);
                  v51 = cstdlib_strlen(__s);
                  v52 = heap_Calloc(v50, 1, (v51 + 1));
                  if (!v52)
                  {
                    inserted = 2315264010;
                    a1 = v79;
                    log_OutPublic(*(v79 + 32), "FE_PHRASING", 37000, 0);
                    v54 = v26;
                    v14 = v78;
                    v64 = v84;
LABEL_94:
                    heap_Free(*(a1 + 8), v54);
                    goto LABEL_95;
                  }

                  v49 = v52;
                  cstdlib_strcpy(v52, "");
                }

                *v38 = 58;
                v83 = v49;
                hlp_NLUStrJoin(v49, v34);
                inserted = 0;
              }

              else
              {
LABEL_41:
                inserted = addMarkerTypeNN(v79, v34, v39, v16, v88 + 1104, v88);
              }
            }
          }

          else
          {
            inserted = 0;
            v86 = v39;
          }
        }

        else
        {
          inserted = 0;
          v91 = v39;
        }
      }

      else
      {
        inserted = 0;
        v32 = v39;
      }
    }

    else
    {
      inserted = 0;
      v33 = v39;
    }

LABEL_51:
    if (!v36)
    {
      break;
    }

    v34 = v36 + 1;
  }

  while ((inserted & 0x80000000) == 0);
  v53 = v82;
  v54 = v83;
  v56 = v85;
  v55 = v86;
  *&v103 = v83;
  *(&v103 + 1) = v85;
  *&v102 = v86;
  *(&v102 + 1) = v82;
  v57 = v89;
  v59 = v90;
  v58 = v91;
  v104 = v90;
  *&v101 = v91;
  *(&v101 + 1) = v89;
  *&v100 = v33;
  *(&v100 + 1) = v32;
  v60 = "(null)";
  if (v33)
  {
    v61 = v33;
  }

  else
  {
    v61 = "(null)";
  }

  if (v32)
  {
    v62 = v32;
  }

  else
  {
    v62 = "(null)";
  }

  if (!v91)
  {
    v58 = "(null)";
  }

  if (!v89)
  {
    v57 = "(null)";
  }

  if (!v86)
  {
    v55 = "(null)";
  }

  if (!v82)
  {
    v53 = "(null)";
  }

  if (v83)
  {
    v63 = v83;
  }

  else
  {
    v63 = "(null)";
  }

  if (!v85)
  {
    v56 = "(null)";
  }

  if (!v90)
  {
    v59 = "(null)";
  }

  if (*(&v90 + 1))
  {
    v60 = *(&v90 + 1);
  }

  a1 = v79;
  log_OutText(*(v79 + 32), "FE_PHRASING", 5, 0, "parsed NLU %s[%d,%d] -> POS=%s, PHR=%s, BND=%s, BNDSHAPE=%s, PRM=%s, CLASS=%s, PUNC=%s, COMP=%s, POIClass=%s, POIPosi=%s", __s, v16, v16 + 1, v61, v62, v58, v57, v55, v53, v63, v56, v59, v60);
  v14 = v78;
  v64 = v84;
  if ((inserted & 0x80000000) == 0)
  {
    if (!v33)
    {
      log_OutText(*(v79 + 32), "FE_PHRASING", 5, 0, "missing POS in NLU string: arg=%s", v26);
    }

    inserted = insert_NLU_infoNN(v79, v16, (v16 + 1), &v100, v88);
  }

  heap_Free(*(v79 + 8), v26);
  if (v83)
  {
    goto LABEL_94;
  }

LABEL_95:
  v15 = v80;
  if (v64)
  {
    heap_Free(*(a1 + 8), v64);
  }

  v7 = v88;
  if ((inserted & 0x80000000) == 0)
  {
    goto LABEL_98;
  }

LABEL_115:
  heap_Free(*(a1 + 8), v14);
  return inserted;
}

uint64_t recursiveFindSplitNN(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, _WORD *a6, signed int a7)
{
  v11 = result;
  if (a2 <= a3)
  {
    v12 = 0;
    v13 = a2;
    do
    {
      v12 += *(result + 2 * v13);
      if (a4 >> 1 <= v12)
      {
        break;
      }

      ++v13;
    }

    while (a3 >= v13);
  }

  else
  {
    v12 = 0;
    v13 = a2;
  }

  if (a7 <= v12)
  {
    v14 = a4 - v12;
    if (v14 >= a7)
    {
      recursiveFindSplitNN(result, a2, v13, v12, a5, a6, a7);
      result = recursiveFindSplitNN(v11, (v13 + 1), a3, v14, a5, a6, a7);
      *(a5 + 2 * (*a6)++) = v13;
    }
  }

  return result;
}

uint64_t getDocumentClassNN(uint64_t a1)
{
  if (!*(a1 + 1072))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = v2;
    v4 = *(*(a1 + 1064) + 184 * v2 + 144);
    if (v4)
    {
      if (cstdlib_strstr(v4, "joyfulstyle"))
      {
        return 1;
      }

      v5 = *(*(a1 + 1064) + 184 * v3 + 144);
      if (v5)
      {
        if (cstdlib_strstr(v5, "didacticstyle"))
        {
          return 2;
        }

        v6 = *(*(a1 + 1064) + 184 * v3 + 144);
        if (v6)
        {
          if (cstdlib_strstr(v6, "neutralstyle"))
          {
            break;
          }
        }
      }
    }

    v2 = v3 + 1;
    if (*(a1 + 1072) <= (v3 + 1))
    {
      return 0;
    }
  }

  return 3;
}

uint64_t nnpuncPhrasing(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, const char *a6, char *__s)
{
  v7 = __s;
  if (cstdlib_strchr(__s, 44))
  {
  }

  DocumentClassNN = getDocumentClassNN(a2);
  v13 = *(a5 + *&aF_6[8 * DocumentClassNN]);
  if (!*(a5 + *&aF_6[8 * DocumentClassNN]))
  {
    v13 = 9;
  }

  v26 = v13;
  if (!*(a2 + 1088))
  {
    log_OutText(*(a1 + 32), "FE_PHRASING", 0, 0, "%s\n", "input parameter: sent is NULL");
    return 0;
  }

  if (*(a2 + 1072))
  {
    v14 = 0;
    v15 = 100;
    v16 = -1;
    while (1)
    {
      v17 = doesWordEndInCommaNN(*(*(a2 + 1064) + v15 - 36), a6);
      v18 = *(a2 + 1064);
      if ((v17 || *(v18 + v15) == 1 && *(v18 + v15 + 4)) && *(v18 + v15 + 8) && *(a2 + 1072))
      {
        *(v18 + v15 - 24) = 4;
      }

      if (*(v18 + v15) == 1)
      {
        v19 = cstdlib_strchr(v7, *(v18 + v15 + 4));
        v18 = *(a2 + 1064);
        if (v19)
        {
          if (*(v18 + v15 + 4) && !*(v18 + v15 + 8))
          {
            *(v18 + v15 - 24) = 3;
          }
        }
      }

      v20 = *(v18 + v15 + 52);
      if (!v20)
      {
        goto LABEL_28;
      }

      if (cstdlib_strcmp(v20, "B") && cstdlib_strcmp(*(*(a2 + 1064) + v15 + 52), "S"))
      {
        break;
      }

      if (v15 != 100)
      {
        v22 = (*(a2 + 1064) + 184 * v16 + 76);
LABEL_27:
        *v22 = 4;
      }

LABEL_28:
      ++v14;
      v15 += 184;
      ++v16;
      if (v14 >= *(a2 + 1072))
      {
        goto LABEL_29;
      }
    }

    if (cstdlib_strcmp(*(*(a2 + 1064) + v15 + 52), "E"))
    {
      goto LABEL_28;
    }

    v21 = *(a2 + 1064) + v15;
    if (*(v21 + 76) < v26)
    {
      goto LABEL_28;
    }

    v22 = (v21 - 24);
    goto LABEL_27;
  }

LABEL_29:
  printPhrasesNN(a1, a2);
  v23 = heap_Calloc(*(a1 + 8), 1024, 2);
  if (v23)
  {
    v24 = v23;
    printPhrasesNN(a1, a2);
    heap_Free(*(a1 + 8), v24);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_PHRASING", 37000, 0);
  return 2315264010;
}

size_t doesWordEndInCommaNN(size_t result, const char *a2)
{
  *__s = 0;
  if (result)
  {
    v3 = result;
    result = cstdlib_strlen(result);
    if (result)
    {
      v4 = Utf8_Utf8NbrOfSymbols(a2);
      if (v4 != 1)
      {
        v5 = 0;
        v6 = 0;
        v7 = (v4 - 1);
        do
        {
          v8 = v5;
          if ((utf8_getUTF8Char(a2, v5, __s) & 0x80000000) != 0)
          {
            break;
          }

          v9 = cstdlib_strlen(__s);
          if (cstdlib_strstr(v3, __s))
          {
            return 1;
          }

          v5 = v8 + v9;
          ++v6;
        }

        while (v6 < v7);
      }

      return 0;
    }
  }

  return result;
}

uint64_t printPhrasesNN(uint64_t result, uint64_t a2)
{
  if (*(a2 + 1072))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = log_OutText(*(v3 + 32), "FE_PHRASING", 5, 0, "%s\t\t%c\n", *(*(a2 + 1064) + v4 + 56), *(*(a2 + 1064) + v4 + 76));
      ++v5;
      v4 += 184;
    }

    while (v5 < *(a2 + 1072));
  }

  return result;
}

uint64_t updateLingdbNNPhrasing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, const char *a7, int a8)
{
  LODWORD(v8) = a8;
  v15 = a1;
  v103 = *MEMORY[0x277D85DE8];
  __s1 = 0;
  v16 = heap_Calloc(*(a1 + 8), 32, 1);
  if (v16)
  {
    v87 = v16;
    v97 = 0;
    v96 = 0;
    v95 = 0;
    v94 = 0;
    v92 = 0;
    v93 = 0;
    v91 = 0;
    v90 = 0;
    v17 = *(a5 + 1096);
    v18 = a5;
    v83 = *(a5 + 1088);
    v19 = (*(a2 + 176))(a3, a4, v17, 1, &v91, &v90);
    if ((v19 & 0x80000000) != 0)
    {
      return v19;
    }

    else
    {
      cstdlib_strcpy(__dst, "");
      v84 = a3;
      v20 = (*(a2 + 104))(a3, a4, 2, v17, &v97 + 2);
      if ((v20 & 0x80000000) != 0)
      {
        v75 = v87;
      }

      else
      {
        v21 = HIWORD(v97);
        if (HIWORD(v97))
        {
          v79 = a7;
          v81 = v8;
          v22 = 0;
          LOWORD(v8) = 0;
          v80 = a6;
          v85 = a4;
          v86 = v15;
          v23 = a3;
          v24 = v18;
          while (1)
          {
            v20 = (*(a2 + 168))(v23, a4, v21, 0, 1, &v95, &v96 + 2);
            if ((v20 & 0x80000000) != 0)
            {
              goto LABEL_125;
            }

            if (v95 <= 0xA && ((1 << v95) & 0x610) != 0)
            {
              break;
            }

LABEL_113:
            v20 = (*(a2 + 120))(v23, a4, HIWORD(v97), &v97 + 2);
            if ((v20 & 0x80000000) != 0)
            {
              goto LABEL_125;
            }

            v21 = HIWORD(v97);
            if (!HIWORD(v97))
            {
              goto LABEL_123;
            }
          }

          v26 = *(v24 + 1064);
          v93 = *(v26 + 184 * v22 + 16);
          if (v93 == HIWORD(v93))
          {
            v15 = v86;
            v27 = v87;
            goto LABEL_112;
          }

          HIWORD(v92) = 0;
          if (v22 | v8 && v8 >= v22)
          {
            __dst[0] = 0;
            goto LABEL_41;
          }

          v28 = *(v24 + 1072);
          LOWORD(v8) = v22;
          if (v28 > v22)
          {
            v29 = (v26 + 184 * v22 + 112);
            v8 = v22;
            while (*(v29 - 36) - 3 >= 2 && !*v29)
            {
              ++v8;
              v29 += 46;
              if (v28 == v8)
              {
                goto LABEL_23;
              }
            }
          }

          if (v28 == v8)
          {
LABEL_23:
            v94 = *(v26 + 184 * *(v24 + 1072) - 166);
            LOWORD(v8) = v28;
          }

          else
          {
            v94 = *(v26 + 184 * v8 + 18);
            v30 = "P";
            if (v8 + 1 != v28)
            {
LABEL_28:
              cstdlib_strcpy(__dst, v30);
              if (v22)
              {
                if (*(*(v24 + 1064) + 184 * (v22 - 1) + 76) == 3)
                {
                  v31 = 2;
                }

                else
                {
                  v31 = 1;
                }
              }

              else
              {
                v31 = 0;
              }

              HIWORD(v92) = v31;
              if (__dst[0])
              {
                LOWORD(v92) = 0;
                v32 = (*(a2 + 88))(v23, a4, HIWORD(v97), &v97);
                if ((v32 & 0x80000000) != 0 || (v95 = 15, v32 = (*(a2 + 160))(v23, a4, v97, 0, 1, &v95, &v96), (v32 & 0x80000000) != 0) || (v32 = (*(a2 + 160))(v23, a4, v97, 1, 1, &v93, &v96), (v32 & 0x80000000) != 0) || (v32 = (*(a2 + 160))(v23, a4, v97, 2, 1, &v94, &v96), (v32 & 0x80000000) != 0) || (v33 = *(a2 + 160), v34 = v97, v35 = cstdlib_strlen(__dst), v32 = v33(v23, a4, v34, 4, (v35 + 1), __dst, &v96), (v32 & 0x80000000) != 0) || (v32 = (*(a2 + 160))(v23, a4, v97, 7, 1, &v92 + 2, &v96), (v32 & 0x80000000) != 0) || (v32 = (*(a2 + 160))(v23, a4, v97, 8, 1, &v92, &v96), (v32 & 0x80000000) != 0))
                {
LABEL_130:
                  v20 = v32;
LABEL_131:
                  v15 = v86;
                  v27 = v87;
                  goto LABEL_132;
                }
              }

LABEL_41:
              LOWORD(v92) = 0;
              v36 = *(v24 + 1064) + 184 * v22;
              if (*(v36 + 76) == 4 && *(v24 + 1072) - 1 != v22)
              {
                v37 = cstdlib_strlen(*(v36 + 56));
                LOWORD(v92) = 100;
                if (doesWordEndInCommaNN(*(*(v24 + 1064) + 184 * v22 + 56), v79) || (v38 = *(v24 + 1064) + 184 * v22, *(v38 + 100)) || *(*(v38 + 56) + (v37 - 1)) == 46)
                {
                  LOWORD(v92) = v80;
                  if (v80)
                  {
                    goto LABEL_49;
                  }
                }

                else if (v92)
                {
                  goto LABEL_49;
                }
              }

              if (*(*(v24 + 1064) + 184 * v22 + 112))
              {
                LOWORD(v92) = v80;
              }

LABEL_49:
              v39 = HIWORD(v97);
              v100 = 0;
              v99 = 0;
              v98 = 0;
              v40 = (*(a2 + 184))(v23, a4, HIWORD(v97), 18, &v100);
              v20 = v40;
              if ((v40 & 0x80000000) != 0 || !v100)
              {
                if ((v40 & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }
              }

              else
              {
                v32 = (*(a2 + 176))(v23, a4, v39, 18, &v99, &v98);
                if ((v32 & 0x80000000) != 0)
                {
                  goto LABEL_130;
                }

                if (!cstdlib_strcmp(v99, "external"))
                {
                  goto LABEL_56;
                }
              }

              v32 = (*(a2 + 160))(v23, a4, HIWORD(v97), 8, 1, &v92, &v96);
              if ((v32 & 0x80000000) != 0)
              {
                goto LABEL_130;
              }

LABEL_56:
              v32 = (*(a2 + 176))(v23, a4, HIWORD(v97), 9, &__s1, &v96 + 2);
              if ((v32 & 0x80000000) != 0)
              {
                goto LABEL_130;
              }

              if (cstdlib_strcmp(__s1, "normal"))
              {
                v41 = cstdlib_strcmp(__s1, "mnx");
                v42 = *(v24 + 1064);
                if (v41)
                {
                  v43 = *(v42 + 184 * v22 + 77);
                }

                else
                {
                  v43 = 0;
                }
              }

              else
              {
                v43 = 0;
                v42 = *(v24 + 1064);
              }

              v44 = *(v42 + 184 * v22 + 128);
              if (v44)
              {
                if (cstdlib_strlen(v44) - 32 > 0xFFFFFFFFFFFFFFDELL)
                {
                  v27 = v87;
                }

                else
                {
                  v45 = *(v86 + 8);
                  v46 = cstdlib_strlen(*(*(v24 + 1064) + 184 * v22 + 128));
                  v27 = heap_Realloc(v45, v87, v46 + 1);
                  if (!v27)
                  {
                    v20 = 2315264010;
                    v15 = v86;
                    log_OutPublic(*(v86 + 32), "FE_PHRASING", 37000, 0);
                    v27 = v87;
                    goto LABEL_132;
                  }
                }

                if (cstdlib_strcmp(*(*(v24 + 1064) + 184 * v22 + 128), "O") && cstdlib_strcmp(*(*(v24 + 1064) + 184 * v22 + 128), "O-P"))
                {
                  cstdlib_strcpy(v27, "B-");
                  cstdlib_strcat(v27, *(*(v24 + 1064) + 184 * v22 + 128));
                }

                else
                {
                  cstdlib_strcpy(v27, *(*(v24 + 1064) + 184 * v22 + 128));
                }

                if (cstdlib_strlen(v27) >= 2)
                {
                  v47 = cstdlib_strlen(v27);
                  if (!cstdlib_strcmp(&v27[v47 - 2], "-P"))
                  {
                    v27[cstdlib_strlen(v27) - 2] = 0;
                  }
                }
              }

              else
              {
                if (*v87 && cstdlib_strcmp(v87, "O"))
                {
                  *v87 = 73;
                }

                v27 = v87;
              }

              v48 = *(v24 + 1064) + 184 * v22;
              v49 = *(v48 + 80);
              v82 = v43;
              if (v49)
              {
                v50 = *(v86 + 8);
                v51 = cstdlib_strlen(v49);
                v52 = heap_Alloc(v50, v51 + 1);
                if (!v52)
                {
                  goto LABEL_136;
                }

                v53 = v52;
                cstdlib_strcpy(v52, *(*(v24 + 1064) + 184 * v22 + 80));
              }

              else
              {
                v54 = *(v48 + 48);
                if (v54)
                {
                  v55 = hlp_NLUStrValueLen(v54);
                  v56 = heap_Alloc(*(v86 + 8), v55 + 1);
                  if (!v56)
                  {
LABEL_136:
                    v20 = 2315264010;
                    v15 = v86;
                    log_OutPublic(*(v86 + 32), "FE_PHRASING", 37000, 0);
                    goto LABEL_132;
                  }

                  v53 = v56;
                  cstdlib_strncpy(v56, *(*(v24 + 1064) + 184 * v22 + 48), v55);
                  v53[v55] = 0;
                }

                else
                {
                  v53 = 0;
                }
              }

              v57 = HIWORD(v97);
              v58 = *(v24 + 1064);
              v59 = *(v58 + 184 * v22 + 168);
              if (v81 && !*(v58 + 184 * v22 + 40))
              {
                if (!cstdlib_strcmp(v27, ""))
                {
                  v15 = v86;
                  if (!v53)
                  {
LABEL_111:
                    log_OutText(*(v15 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_PRM -> %d dur=%d", HIWORD(v97), v22, v82, v92);
                    LH_itoa(v82, __s, 0xAu);
                    v71 = *(a2 + 160);
                    v72 = HIWORD(v97);
                    v73 = cstdlib_strlen(__s);
                    v74 = v71(v84, v85, v72, 13, (v73 + 1), __s, &v96);
                    v23 = v84;
                    v20 = v74;
                    if ((v74 & 0x80000000) != 0)
                    {
                      goto LABEL_132;
                    }

LABEL_112:
                    ++v22;
                    v87 = v27;
                    a4 = v85;
                    if (*(v24 + 1072) <= v22)
                    {
                      goto LABEL_123;
                    }

                    goto LABEL_113;
                  }

LABEL_110:
                  heap_Free(*(v15 + 8), v53);
                  goto LABEL_111;
                }

                v58 = *(v24 + 1064);
              }

              v88 = v57;
              v60 = v58 + 184 * v22;
              v61 = *(v60 + 40);
              if (v61)
              {
                v62 = cstdlib_strlen(*(v60 + 40)) + 1;
                if (!v53)
                {
                  goto LABEL_92;
                }
              }

              else
              {
                v62 = 1;
                if (!v53)
                {
LABEL_92:
                  v64 = cstdlib_strlen(";PHR:");
                  v65 = v64 + v62 + cstdlib_strlen(v27);
                  if (v59)
                  {
                    v66 = cstdlib_strlen(";BNDSHAPE:");
                    v65 += v66 + cstdlib_strlen(v59);
                  }

                  v67 = heap_Alloc(*(v86 + 8), v65);
                  if (!v67)
                  {
                    v20 = 2315264010;
                    v15 = v86;
                    goto LABEL_132;
                  }

                  v68 = v67;
                  LOWORD(v99) = 0;
                  if (v61)
                  {
                    cstdlib_strcpy(v67, v61);
                    if (!v53)
                    {
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    *v67 = 0;
                    if (!v53)
                    {
                      goto LABEL_103;
                    }
                  }

                  if (*v53)
                  {
                    hlp_NLUStrSet(v68, "POS", v53);
                  }

LABEL_103:
                  if (*v27)
                  {
                    hlp_NLUStrSet(v68, "PHR", v27);
                  }

                  if (v59 && *v59)
                  {
                    hlp_NLUStrSet(v68, "BNDSHAPE", v59);
                  }

                  v78 = v61;
                  v15 = v86;
                  log_OutText(*(v86 + 32), "FE_PHRASING", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", v88, v22, v78, v68);
                  v69 = *(a2 + 160);
                  v70 = cstdlib_strlen(v68);
                  v20 = v69(v84, v85, v88, 14, (v70 + 1), v68, &v99);
                  heap_Free(*(v86 + 8), v68);
                  if ((v20 & 0x80000000) != 0)
                  {
                    goto LABEL_132;
                  }

                  if (!v53)
                  {
                    goto LABEL_111;
                  }

                  goto LABEL_110;
                }
              }

              v63 = cstdlib_strlen(";POS:");
              v62 += v63 + cstdlib_strlen(v53);
              goto LABEL_92;
            }
          }

          if (*(v24 + 1768))
          {
            v30 = *(v24 + 1768);
          }

          else
          {
            v30 = "T";
          }

          goto LABEL_28;
        }

LABEL_123:
        if (cstdlib_strcmp(__dst, "W") && cstdlib_strcmp(__dst, "AF"))
        {
LABEL_125:
          v27 = v87;
        }

        else
        {
          v76 = cstdlib_strrchr(v83, 63);
          v27 = v87;
          if (v76 && v76 != v83 && *(v76 - 1) != 32)
          {
            *v76 = 46;
          }
        }

LABEL_132:
        v75 = v27;
      }

      heap_Free(*(v15 + 8), v75);
    }
  }

  else
  {
    v20 = 2315264010;
    log_OutPublic(*(v15 + 32), "FE_PHRASING", 37000, 0);
  }

  return v20;
}