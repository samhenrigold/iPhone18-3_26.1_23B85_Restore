uint64_t lidword_normalizedDup(uint64_t a1, char *a2, unsigned int a3, _WORD *a4, int a5)
{
  v6 = a4;
  v51 = *MEMORY[0x277D85DE8];
  a4[4] = 0;
  __s2[0] = 0;
  result = heap_Alloc(*(*(a1 + 16) + 8), (4 * a3) | 1);
  if (result)
  {
    v42 = result;
    if (a3)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v43 = a1;
      v44 = 0;
      v47 = 0;
      v48 = 0;
      v14 = 0;
      v15 = a1 + 135168;
      v41 = v6 + 5;
      v40 = a5;
      v16 = __s2;
      if (!a5)
      {
        v16 = __dst;
      }

      __src = v16;
      v45 = a3;
      v46 = 1;
      v17 = result;
      while (1)
      {
        v18 = &a2[v14];
        if (utf8_strchr(*(v15 + 800), v18))
        {
          break;
        }

        v20 = cstdlib_strlen(&a2[v14]);
        if (!utf8_BelongsToSet(0, &a2[v14], 0, v20))
        {
          if (v13)
          {
            v23 = v6[4];
            if (v23 > 9)
            {
              goto LABEL_56;
            }

            if (v46)
            {
              if (&v17[-v42 - v44 - v13 - v12 - 2] < 3)
              {
LABEL_55:
                v6[4] = v23 + 1;
                v41[v23] = v44;
                goto LABEL_56;
              }
            }

            else if (v47)
            {
              goto LABEL_56;
            }

            if (v48 | v11)
            {
              goto LABEL_55;
            }

LABEL_56:
            v12 = 0;
            v44 = (v17 - v42);
            ++*v6;
            if (!v47 || v48)
            {
              v46 = 1;
              v24 = 0;
              v25 = 0;
            }

            else
            {
              v24 = 0;
              v25 = 0;
              v12 = 0;
              ++v6[1];
              v46 = 1;
            }
          }

          else
          {
            v24 = v47;
            v25 = v48;
          }

          v26 = cstdlib_strlen(&a2[v14]);
          v27 = utf8_BelongsToSet(6, &a2[v14], 0, v26);
          if (!v27)
          {
            v24 = 1;
          }

          v47 = v24;
          if (v27)
          {
            v25 = 1;
          }

          v28 = utf8_determineUTF8CharLength(*v18);
          v48 = v25;
          if (v28 < 2)
          {
            v29 = *v18;
            if (v40)
            {
              LOBYTE(v29) = ssft_tolower(v29);
            }

            *v17 = v29;
            v31 = 0;
            if (v46)
            {
              v30 = cstdlib_strlen(&a2[v14]);
              if (utf8_BelongsToSet(6, &a2[v14], 0, v30) || *v17 != *v18)
              {
                v31 = 1;
              }
            }

            v46 = v31;
            v13 = 0;
            v11 = 0;
            ++v17;
            v21 = 1;
          }

          else
          {
            v21 = v28;
            __s2[0] = 0;
            cstdlib_strncpy(__dst, &a2[v14], v28);
            __dst[v21] = 0;
            utf8_ToLower(__dst, 0, __s2);
            v46 = v46 && cstdlib_strcmp(__dst, __s2);
            cstdlib_strcpy(v17, __src);
            v13 = 0;
            v11 = 0;
            v17 += cstdlib_strlen(__src);
          }

          goto LABEL_29;
        }

        *v17++ = 32;
        v21 = utf8_determineUTF8CharLength(*v18);
        ++v13;
LABEL_29:
        v14 += v21;
        if (v14 >= v45)
        {
          v32 = v47 == 0;
          v33 = v48 != 0;
          v34 = v11 != 0;
          v35 = v6[4];
          if (v35 >= 0xA)
          {
            goto LABEL_103;
          }

          if (v46)
          {
            v36 = v12;
            v37 = v13;
            result = v42;
            v38 = v44;
LABEL_99:
            if (&v17[-result - v38 - v37 - v36 - 2] >= 3 && !v33)
            {
LABEL_101:
              if (v34)
              {
                goto LABEL_102;
              }

LABEL_103:
              ++*v6;
              if (v32)
              {
                result = v42;
              }

              else
              {
                result = v42;
                if (!v33)
                {
                  ++v6;
                  goto LABEL_108;
                }
              }

              goto LABEL_109;
            }
          }

          else
          {
            if (v47)
            {
              v32 = 0;
              goto LABEL_103;
            }

            v32 = 1;
            LOWORD(v38) = v44;
            if (!v48)
            {
              goto LABEL_101;
            }
          }

LABEL_102:
          v6[4] = v35 + 1;
          v6[v35 + 5] = v38;
          goto LABEL_103;
        }
      }

      if (!v13)
      {
        v22 = v43;
        goto LABEL_27;
      }

      v19 = v6[4];
      if (v19 <= 9)
      {
        if (v46)
        {
          if (&v17[-v42 - v44 - v13 - v12 - 2] < 3)
          {
            goto LABEL_22;
          }
        }

        else if (v47)
        {
          goto LABEL_23;
        }

        if (v48 | v11)
        {
LABEL_22:
          v6[4] = v19 + 1;
          v41[v19] = v44;
        }
      }

LABEL_23:
      v12 = 0;
      v44 = (v17 - v42);
      ++*v6;
      v22 = v43;
      if (!v47 || v48)
      {
        v46 = 1;
        v47 = 0;
        v48 = 0;
        v11 = 0;
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v12 = 0;
        v11 = 0;
        ++v6[1];
        v46 = 1;
      }

LABEL_27:
      if (utf8_strchr(*(v15 + 808), &a2[v14]))
      {
LABEL_28:
        v21 = utf8_determineUTF8CharLength(*v18);
        cstdlib_strncpy(v17, &a2[v14], v21);
        v13 = 0;
        ++v12;
        v11 = 1;
        v17 += v21;
        goto LABEL_29;
      }

      if (!v14 || lidword_CharAtOffsetSatisfies(v22, a2, v14, -1, lidword_IsSpace) || lidword_CharAtOffsetSatisfies(v22, a2, v14, -1, lidword_IsPunc) && (!lidword_CharAtOffsetSatisfies(v22, a2, v14, -2, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, -2, lidword_IsSpace)))
      {
        if (!lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsSpace) || !lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsPunc) && lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_IsPunc) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsPunc) && (!lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_IsSpace)) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsPunc) && lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_IsPunc) && (!lidword_CharAtOffsetSatisfies(v22, a2, v14, 3, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 3, lidword_IsSpace)))
        {
          goto LABEL_28;
        }

        if (!v14)
        {
          goto LABEL_49;
        }
      }

      if (lidword_CharAtOffsetSatisfies(v22, a2, v14, -1, lidword_IsSpace) || lidword_CharAtOffsetSatisfies(v22, a2, v14, -1, lidword_IsPunc) && (!lidword_CharAtOffsetSatisfies(v22, a2, v14, -2, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, -2, lidword_IsSpace)) || !lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsSpace) || !lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsPunc) && lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_IsPunc) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsPunc) && (!lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_IsSpace)) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 1, lidword_IsPunc) && lidword_CharAtOffsetSatisfies(v22, a2, v14, 2, lidword_IsPunc) && (!lidword_CharAtOffsetSatisfies(v22, a2, v14, 3, lidword_True) || lidword_CharAtOffsetSatisfies(v22, a2, v14, 3, lidword_IsSpace)))
      {
LABEL_49:
        v21 = utf8_determineUTF8CharLength(*v18);
        v13 = 0;
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v35 = v6[4];
    if (v35 < 0xA)
    {
      v33 = 0;
      v38 = 0;
      v37 = 0;
      v36 = 0;
      v34 = 0;
      v32 = 1;
      v17 = result;
      goto LABEL_99;
    }

    v17 = result;
LABEL_108:
    ++*v6;
LABEL_109:
    *v17 = 0;
  }

  return result;
}

void *lidword_InitStruct(uint64_t a1)
{
  cstdlib_memset((a1 + 3088), 0, 0x20000uLL);
  memset((a1 + 134160), 255, 0x400uLL);
  cstdlib_memset((a1 + 135184), 0, 0x100uLL);
  cstdlib_memset((a1 + 135440), 0, 0x100uLL);

  return cstdlib_memset((a1 + 135696), 0, 0x100uLL);
}

uint64_t lidword_CheckTags(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, unsigned int *a4)
{
  v30 = 0;
  v31 = a2;
  v27 = a2;
  result = lidword_AdvanceSkippingSpacesInNormSW(&v31, &v30);
  v7 = v30;
  v6 = v31;
  if (v30 == v31)
  {
    return result;
  }

  v8 = 0;
  v9 = a1 + 2056;
  v26 = a1 + 134160;
  do
  {
    if (!*v6 || v8 > 0xFF)
    {
      return result;
    }

    v10 = *a3;
    v11 = *a4;
    v12 = v6 - v27;
    if (*(a1 + 2042) != 1)
    {
      goto LABEL_39;
    }

    if (!v12)
    {
      *(a1 + 2052) = 0;
      *(a1 + 3084) = 0;
      *(a1 + 3080) = 1;
      v13 = *v6;
      if (*v6)
      {
        v14 = 0;
        v15 = 0;
        v16 = v6 + 1;
        v17 = 1;
        while ((v13 & 0x80) == 0)
        {
          if (v13 >= 0x21)
          {
            if (!v17)
            {
              if (v15 != 255)
              {
                v14 = v15 + 1;
                *(a1 + 3084) = v15 + 1;
              }

              *(v9 + 4 * v14) = 0;
              v13 = *(v16 - 1);
              v15 = v14;
            }

            if (v13 - 48 <= 9)
            {
              v18 = (v9 + 4 * v14);
              v17 = 1;
              v15 = v14;
              goto LABEL_18;
            }

            v17 = 1;
LABEL_20:
            *(a1 + 3080) = v17;
          }

          v19 = *v16++;
          v13 = v19;
          if (!v19)
          {
            goto LABEL_22;
          }
        }

        v17 = 0;
        v18 = (a1 + 2052);
LABEL_18:
        *v18 = 1;
        goto LABEL_20;
      }

LABEL_22:
      *(a1 + 3084) = 0;
      *(a1 + 3080) = 1;
    }

    if (v6 >= v7)
    {
      goto LABEL_39;
    }

    v20 = 0;
    do
    {
      while (*v6 < 0)
      {
        *(a1 + 3080) = 0;
        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID no auto lid for non latin ascii words", v26);
LABEL_36:
        ++v6;
        v20 = 1;
        if (v6 == v7)
        {
          goto LABEL_56;
        }
      }

      if (*v6 >= 0x21u)
      {
        if (!*(a1 + 3080))
        {
          v21 = *(a1 + 3084);
          if (v21 != 255)
          {
            *(a1 + 3084) = v21 + 1;
          }
        }

        *(a1 + 3080) = 1;
        if (*(a1 + 2052))
        {
          if (*(v9 + 4 * *(a1 + 3084)))
          {
            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID no auto lid for latin ascii words in non latin sentence and with some digit context", v26);
            goto LABEL_36;
          }
        }
      }

      ++v6;
    }

    while (v6 != v7);
    if (v20)
    {
      goto LABEL_56;
    }

LABEL_39:
    if (v11 >= 2)
    {
      v22 = 0;
      v23 = 0;
      for (i = 1; i < v11; ++i)
      {
        v25 = v10 + 32 * i;
        if ((*(v10 + 12) + v12) < *(v25 + 12))
        {
          break;
        }

        if (*v25 == 36)
        {
          v22 = *(v25 + 24);
        }

        else if (*v25 == 21)
        {
          v23 = *(v25 + 24);
        }
      }

      if (v23 && !cstdlib_strcmp(v23, "spell"))
      {
        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID no auto lid from TN spell tag", v26);
LABEL_56:
        *(v26 + 4 * v8) = -4;
      }

      else if (v22 && *v22 && (!cstdlib_strstr(v22, *(a1 + 1912)) && !cstdlib_strstr(v22, "normal") || cstdlib_strstr(v22, "noautolid")))
      {
        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID no auto lid from language tag", v26);
        goto LABEL_56;
      }
    }

    result = lidword_AdvanceSkippingSpacesInNormEW(&v31, &v30);
    ++v8;
    v7 = v30;
    v6 = v31;
  }

  while (v30 != v31);
  return result;
}

unsigned __int8 **lidword_AdvanceSkippingSpacesInNormSW(unsigned __int8 **result, unsigned __int8 **a2)
{
  v3 = *result;
  if (**result)
  {
    v4 = result;
    do
    {
      v5 = cstdlib_strlen(v3);
      result = utf8_BelongsToSet(0, v3, 0, v5);
      v3 = *v4;
      if (!result)
      {
        break;
      }

      result = Utf8_LengthInBytes(*v4, 1);
      v3 = &(*v4)[result];
      *v4 = v3;
    }

    while (*v3);
  }

  while (1)
  {
    *a2 = v3;
    if (!*v3)
    {
      break;
    }

    v6 = cstdlib_strlen(v3);
    result = utf8_BelongsToSet(0, v3, 0, v6);
    if (result)
    {
      break;
    }

    result = Utf8_LengthInBytes(*a2, 1);
    v3 = &(*a2)[result];
  }

  return result;
}

uint64_t lidword_AdvanceSkippingSpacesInNormEW(uint64_t result, unsigned __int8 **a2)
{
  v3 = result;
  for (i = *a2; *i; *a2 = i)
  {
    v5 = cstdlib_strlen(i);
    result = utf8_BelongsToSet(0, i, 0, v5);
    i = *a2;
    if (!result)
    {
      break;
    }

    result = Utf8_LengthInBytes(*a2, 1);
    i = &(*a2)[result];
  }

  *v3 = i;
  for (j = *a2; *j; *a2 = j)
  {
    v7 = cstdlib_strlen(j);
    result = utf8_BelongsToSet(0, j, 0, v7);
    if (result)
    {
      break;
    }

    result = Utf8_LengthInBytes(*a2, 1);
    j = &(*a2)[result];
  }

  return result;
}

uint64_t lidword_ExtractFeats(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v16 = 0;
  v17 = a2;
  result = lidword_AdvanceSkippingSpacesInNormSW(&v17, &v16);
  v6 = v16;
  v7 = v17;
  if (v16 != v17)
  {
    v8 = 0;
    v9 = a1 + 135184;
    v10 = a1 + 135440;
    v11 = a1 + 135696;
    v15 = a3 - 1;
    do
    {
      if (!*v7 || v8 > 0xFF)
      {
        break;
      }

      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v7, v6 - v7);
      if (*v7)
      {
        if (lidword_IsUppercase(v7))
        {
          *(v9 + v8) = 1;
        }

        if (*v7 && utf8_strchr(*(a1 + 135968), v7))
        {
          *(v10 + v8) = 1;
          if (v8)
          {
            *(v11 + (v8 - 1)) = 1;
          }

          v13 = v7;
          if (*v7)
          {
            v13 = v7;
            while (utf8_strchr(*(a1 + 135968), v13))
            {
              v13 += Utf8_LengthInBytes(v13, 1);
              if (!*v13)
              {
                goto LABEL_16;
              }
            }

            v17 = v13;
            if (*v13 && lidword_IsUppercase(v13))
            {
              *(v9 + v8) = 1;
            }
          }

          else
          {
LABEL_16:
            v17 = v13;
          }
        }
      }

      v14 = &v7[PreviousUtf8Offset];
      if (*v14 && utf8_strchr(*(a1 + 135968), v14))
      {
        *(v11 + v8) = 1;
        if (v15 > v8)
        {
          *(v8 + v10 + 1) = 1;
        }
      }

      result = lidword_AdvanceSkippingSpacesInNormEW(&v17, &v16);
      ++v8;
      v6 = v16;
      v7 = v17;
    }

    while (v16 != v17);
  }

  return result;
}

uint64_t lidword_Smoothing(uint64_t result, unsigned int a2)
{
  if (a2)
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    v14 = result + 134160;
    v6 = (result + 134164);
    v7 = 1 - a2;
    for (i = (result + 134156); ; ++i)
    {
      v9 = i[1];
      if (v9 + 3 > 1)
      {
        goto LABEL_28;
      }

      if (a2 != 1 && !v4)
      {
        break;
      }

      if (!v4 || v7 || *i == *(v3 + 1930) || v9 != -2 || *i == -4)
      {
        if (!v4)
        {
          goto LABEL_19;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        v13 = *i;
        if (*i == *(v3 + 1930) || v13 == -4 || v13 != i[2])
        {
          goto LABEL_19;
        }

        v12 = (v14 + 4 * v5 - 4);
        v11 = "ML2 LID smoothing with previous word";
        goto LABEL_26;
      }

      v12 = i;
      result = log_OutText(*(*(v3 + 16) + 32), "FE_LID", 5, 0, "ML2 LID smoothing with previous word");
LABEL_27:
      v9 = *v12;
      i[1] = *v12;
LABEL_28:
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

LABEL_30:
      ++v5;
      ++v7;
      --v4;
      if (v7 == 1)
      {
        return result;
      }
    }

    v10 = *v6 != *(v3 + 1930) && v9 == -2;
    if (!v10 || (v11 = "ML2 LID smoothing with next word", v12 = v6, (*v6 & 0x80000000) != 0))
    {
LABEL_19:
      log_OutText(*(*(v3 + 16) + 32), "FE_LID", 5, 0, "ML2 LID fallback on main language");
      v9 = *(v3 + 1930);
      i[1] = v9;
LABEL_29:
      result = log_OutText(*(*(v3 + 16) + 32), "FE_LID", 5, 0, "ML2 LID final prediction : %s", (*(v3 + 1944) + 8 * v9));
      goto LABEL_30;
    }

LABEL_26:
    result = log_OutText(*(*(v3 + 16) + 32), "FE_LID", 5, 0, v11);
    goto LABEL_27;
  }

  return result;
}

uint64_t lidword_InsertLangTags(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, unsigned int *a4, unsigned int *a5, int a6, uint64_t *a7, unsigned int *a8, unsigned int *a9)
{
  v33 = *MEMORY[0x277D85DE8];
  v29 = a2;
  v30 = 0;
  v31 = a2;
  lidword_AdvanceSkippingSpacesInNormSW(&v31, &v30);
  v13 = v31;
  if (v30 != v31)
  {
    v14 = 0;
    inserted = 0;
    v16 = 0;
    v17 = 0;
    v18 = a1 + 134160;
    v19 = a6 - 1;
    while (1)
    {
      if (!*v13 || v14 > 0xFF)
      {
        return inserted;
      }

      v20 = *(v18 + 4 * v14);
      if ((v20 & 0x80000000) == 0 && v20 < *(a1 + 1928) && !cstdlib_strstr((*(a1 + 1944) + 8 * v20), *(a1 + 1912)))
      {
        cstdlib_strcpy(__dst, (*(a1 + 1944) + 8 * *(v18 + 4 * v14)));
        cstdlib_strcat(__dst, "_lid");
        if (*a5 >= 2)
        {
          v21 = 1;
          do
          {
            v22 = *a3 + 32 * v21;
            if ((*(*a3 + 12) + v13 - v29) < *(v22 + 12))
            {
              break;
            }

            if (*v22 == 36)
            {
              v17 = *(v22 + 24);
            }

            ++v21;
          }

          while (*a5 > v21);
        }

        if (!v17)
        {
          v17 = "normal";
        }

        if (cstdlib_strcmp(v17, __dst))
        {
          appended = hlp_AppendItemRaw32(a1, a3, a4, a5, 0x20u, 10);
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          inserted = lidword_InsertLangMarker(a1, *a3, *a5, v31 - v29, __dst, 1, a7, a8, a9);
          v16 = v17;
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }
        }

        else
        {
          inserted = 0;
        }

        if (v19 == v14)
        {
          if (!v16)
          {
            goto LABEL_8;
          }
        }

        else
        {
          if (v19 <= v14)
          {
            goto LABEL_8;
          }

          if (*(v18 + 4 * v14) == *(v18 + 4 * v14 + 4) || v16 == 0)
          {
            goto LABEL_8;
          }
        }

        appended = hlp_AppendItemRaw32(a1, a3, a4, a5, 0x20u, 10);
        if ((appended & 0x80000000) != 0)
        {
          return appended;
        }

        inserted = lidword_InsertLangMarker(a1, *a3, *a5, v30 - v29, v16, 0, a7, a8, a9);
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }
      }

LABEL_8:
      lidword_AdvanceSkippingSpacesInNormEW(&v31, &v30);
      ++v14;
      v13 = v31;
      if (v30 == v31)
      {
        return inserted;
      }
    }
  }

  return 0;
}

size_t lidword_AdjustMarkersAtSpacesAroundAscii(const char *a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  result = cstdlib_strlen(a1);
  if (result)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if (a1[v9] == 32 && *(a2 + v10) != 32)
      {
        v12 = *a4;
        if (*a4)
        {
          v13 = 0;
          v14 = *a3;
          do
          {
            v15 = (v14 + 12 + 32 * v13);
            if (*v15 - *(v14 + 12) > v10)
            {
              --*v15;
              v12 = *a4;
            }

            ++v13;
          }

          while (v12 > v13);
        }

        ++v11;
      }

      ++v11;
      ++v10;
      v9 = v11;
      result = cstdlib_strlen(a1);
    }

    while (result > v11);
  }

  return result;
}

uint64_t lidword_Init(void *a1)
{
  v69 = *MEMORY[0x277D85DE8];
  memset(v68, 0, 256);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  *__dst = 0u;
  memset(__c, 0, sizeof(__c));
  if (!a1)
  {
    return 2345672711;
  }

  v2 = a1 + 16896;
  v50 = 0;
  __s1 = 0;
  v3 = a1[136];
  v4 = (a1 + 17001);
  *(a1 + 8498) = 0uLL;
  *(a1 + 8499) = 0uLL;
  *(a1 + 68000) = 0;
  *(a1 + 17001) = 0uLL;
  *(a1 + 17003) = 0uLL;
  *(a1 + 481) = 0;
  if ((paramc_ParamGetStr(*(a1[2] + 40), "ml2lid", &__s1) & 0x80000000) == 0 && __s1 && !cstdlib_strcmp(__s1, "no") || (lidword_GetU16Param(a1, "nrlanguages", a1 + 964) & 0x80000000) != 0)
  {
    v26 = -1949294572;
    goto LABEL_60;
  }

  *(a1 + 481) = 1;
  *(a1 + 1012) = 21;
  U16Param = lidword_GetU16Param(a1, "maxwordlen", a1 + 1012);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  *(a1 + 1013) = 100;
  U16Param = lidword_GetU16Param(a1, "embdim", a1 + 1013);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  *(a1 + 1014) = 1;
  U16Param = lidword_GetU16Param(a1, "contextlength", a1 + 1014);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  *(a1 + 1020) = 1;
  U16Param = lidword_GetU16Param(a1, "nrpart", a1 + 1020);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  *(a1 + 1021) = 0;
  U16Param = lidword_GetU16Param(a1, "onlylatinascii", a1 + 1021);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  *(a1 + 1022) = 0;
  U16Param = lidword_GetU16Param(a1, "spacesaroundascii", a1 + 1022);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  *(a1 + 1023) = 0;
  U16Param = lidword_GetU16Param(a1, "acronymtonn", a1 + 1023);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  *(a1 + 1024) = 0;
  U16Param = lidword_GetU16Param(a1, "consonanttonn", a1 + 1024);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  *(a1 + 1025) = 0;
  *(a1 + 966) = 0;
  U16Param = lidword_GetU16Param(a1, "nntoenx", a1 + 1025);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  *(a1 + 508) = 1061997773;
  U16Param = lidword_GetF32Param(a1, "nnthreshold", a1 + 508);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  *(a1 + 509) = 1064514355;
  U16Param = lidword_GetF32Param(a1, "ctxtnnthreshold", a1 + 509);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  __s1 = 0;
  U16Param = lidword_GetTextParam(a1, "punclist", &__s1);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  v6 = __s1;
  if (!__s1)
  {
  }

  v7 = *(a1[2] + 8);
  v8 = cstdlib_strlen(v6);
  v9 = heap_Alloc(v7, v8 + 1);
  v2[100] = v9;
  if (!v9)
  {
    goto LABEL_93;
  }

  cstdlib_strcpy(v9, __s1);
  __s1 = 0;
  U16Param = lidword_GetTextParam(a1, "punccurrencylist", &__s1);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  v10 = __s1;
  if (!__s1)
  {
    v10 = "€£$";
    __s1 = "€£$";
  }

  v11 = *(a1[2] + 8);
  v12 = cstdlib_strlen(v10);
  v13 = heap_Alloc(v11, v12 + 1);
  v2[101] = v13;
  if (!v13)
  {
    goto LABEL_93;
  }

  cstdlib_strcpy(v13, __s1);
  __s1 = 0;
  U16Param = lidword_GetTextParam(a1, "puncincludedlist", &__s1);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  v14 = __s1;
  if (!__s1)
  {
    v14 = ".&-/";
    __s1 = ".&-/";
  }

  v15 = *(a1[2] + 8);
  v16 = cstdlib_strlen(v14);
  v17 = heap_Alloc(v15, v16 + 1);
  v2[102] = v17;
  if (!v17)
  {
    goto LABEL_93;
  }

  cstdlib_strcpy(v17, __s1);
  __s1 = 0;
  U16Param = lidword_GetTextParam(a1, "consonantlist", &__s1);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  v18 = __s1;
  if (!__s1)
  {
    v18 = "bcdfghjklmnpqrstvwxzß";
    __s1 = "bcdfghjklmnpqrstvwxzß";
  }

  v19 = *(a1[2] + 8);
  v20 = cstdlib_strlen(v18);
  v21 = heap_Alloc(v19, v20 + 1);
  v2[103] = v21;
  if (!v21)
  {
    goto LABEL_93;
  }

  cstdlib_strcpy(v21, __s1);
  *(v2 + 417) = 4;
  U16Param = lidword_GetU16Param(a1, "mdeminstemlen", v2 + 417);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  __s1 = 0;
  U16Param = lidword_GetTextParam(a1, "mdestemvowels", &__s1);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  v22 = __s1;
  if (!__s1)
  {
    v22 = "aeiouy";
    __s1 = "aeiouy";
  }

  v23 = *(a1[2] + 8);
  v24 = cstdlib_strlen(v22);
  v25 = heap_Alloc(v23, v24 + 1);
  *v4 = v25;
  if (!v25)
  {
    goto LABEL_93;
  }

  cstdlib_strcpy(v25, __s1);
  __s1 = 0;
  U16Param = lidword_GetTextParam(a1, "mdestemmingrules", &__s1);
  if ((U16Param & 0x80000000) != 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_57;
  }

  if (__s1)
  {
    v28 = *(a1[2] + 8);
    v29 = cstdlib_strlen(__s1);
    v30 = heap_Alloc(v28, v29 + 1);
    v2[106] = v30;
    if (!v30)
    {
      goto LABEL_93;
    }

    cstdlib_strcpy(v30, __s1);
    U16Param = lidmde_ParseStemmingRules(a1);
    if ((U16Param & 0x80000000) != 0)
    {
LABEL_57:
      v26 = U16Param;
      goto LABEL_60;
    }
  }

  v31 = heap_Calloc(*(a1[2] + 8), *(a1 + 964), 8);
  a1[242] = v31;
  v32 = a1[2];
  if (!v31)
  {
    goto LABEL_94;
  }

  v33 = heap_Calloc(*(v32 + 8), *(a1 + 964), 8);
  a1[243] = v33;
  v32 = a1[2];
  if (!v33)
  {
    goto LABEL_94;
  }

  v34 = heap_Calloc(*(v32 + 8), *(a1 + 964), 2);
  a1[244] = v34;
  if (!v34)
  {
LABEL_93:
    v32 = a1[2];
LABEL_94:
    log_OutPublic(*(v32 + 32), "FE_LID", 48000, 0);
    v26 = -1949294582;
LABEL_60:
    if ((v26 & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return v26;
    }
  }

  U16Param = lidword_InitLangParams(a1);
  if ((U16Param & 0x80000000) != 0)
  {
    goto LABEL_57;
  }

  v35 = *(v3 + 8);
  if (*(v3 + 8))
  {
    v36 = 0;
    LODWORD(v37) = *(a1 + 964);
    do
    {
      if (v37)
      {
        v38 = 0;
        v39 = 0;
        do
        {
          if (!cstdlib_strcmp((*(v3 + 16) + 8 * v36), (a1[242] + v38)))
          {
            *(a1[244] + 2 * v39) = v36;
          }

          ++v39;
          v37 = *(a1 + 964);
          v38 += 8;
        }

        while (v39 < v37);
        v35 = *(v3 + 8);
      }

      ++v36;
    }

    while (v36 < v35);
  }

  if (!*(a1 + 1025))
  {
    result = nn_word_lkp_GetInterface(1u, a1 + 245);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    a1[246] = safeh_GetNullHandle();
    a1[247] = v46;
    a1[248] = safeh_GetNullHandle();
    a1[249] = v47;
    result = (*(a1[245] + 16))(a1[246], a1[247], "lid", *a1, a1[1], a1 + 248);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = (*(a1[245] + 40))(a1[248], a1[249], a1 + 250);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    log_OutText(*(a1[2] + 32), "FE_LID", 5, 0, "word2vec length %d", *(a1 + 500));
    v48 = heap_Alloc(*(a1[2] + 8), 4 * *(a1 + 500));
    a1[251] = v48;
    if (!v48)
    {
      log_OutPublic(*(a1[2] + 32), "FE_LID", 48000, 0);
      return 2345672714;
    }

    *(a1 + 1015) = (2 * *(a1 + 1014)) | 1;
  }

  *&__c[1] = -1;
  result = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", "nrpart_tn", &__c[3], &__c[1], __c);
  v40 = result;
  if ((result & 0x80000000) == 0)
  {
    *(v2 + 792) = 1;
    if (*&__c[1])
    {
      v41 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v41)
      {
        *v41 = 0;
      }

      *(v2 + 792) = cstdlib_atoi(**&__c[3]);
    }

    result = v40;
    if (!*(a1 + 1025))
    {
      cstdlib_strcpy(__dst, "ml2rnn");
      cstdlib_strcat(__dst, a1[239]);
      result = brokeraux_ComposeBrokerString(a1[2], __dst, 1, 0, a1[239], 0, 0, v68, 0x100uLL);
      if ((result & 0x80000000) == 0)
      {
        result = fi_init(*a1, a1[1], a1[3], a1[4], &v50, 2, v68, "FINN", 1, 0);
        if ((result & 0x80000000) != 0)
        {
          result = brokeraux_ComposeBrokerString(a1[2], "ml2rnn", 1, 0, a1[239], 0, 0, v68, 0x100uLL);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = fi_init(*a1, a1[1], a1[3], a1[4], &v50, 0, v68, "FINN", 1, 0);
          if ((result & 0x80000000) != 0)
          {
            return 2345672704;
          }
        }

        v42 = *v50;
        v43 = *(a1 + 1012);
        if (*(*v50 + 52) == 2)
        {
          v44 = *(a1 + 1013);
          v45 = *(a1 + 964);
          if (*(*v50 + 56) == v43 && *(v42 + 60) == v44 + *(a1 + 1015) * v45 + 3)
          {
            v2[98] = v50;
            return result;
          }
        }

        else
        {
          v44 = *(a1 + 1013);
          v45 = *(a1 + 964);
        }

        log_OutText(*(a1[2] + 32), "FE_LID", 5, 0, "expected (%d, %d) got (%d, %d)", *(*v50 + 56), *(v42 + 60), v43, v44 + *(a1 + 1015) * v45 + 3);
        return 2345672729;
      }
    }
  }

  return result;
}

uint64_t lidword_Deinit(uint64_t a1)
{
  if (!a1)
  {
    return 2345672711;
  }

  if (!*(a1 + 1924))
  {
    return 0;
  }

  v2 = *(a1 + 1936);
  if (v2)
  {
    heap_Free(*(*(a1 + 16) + 8), v2);
  }

  v3 = *(a1 + 1944);
  if (v3)
  {
    heap_Free(*(*(a1 + 16) + 8), v3);
  }

  v4 = *(a1 + 1952);
  if (v4)
  {
    heap_Free(*(*(a1 + 16) + 8), v4);
  }

  v5 = *(a1 + 2008);
  if (v5)
  {
    heap_Free(*(*(a1 + 16) + 8), v5);
  }

  v6 = *(a1 + 1960);
  if (v6)
  {
    v7 = (*(v6 + 24))(*(a1 + 1984), *(a1 + 1992));
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    *(a1 + 1960) = 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 2016);
  if (v8)
  {
    v9 = *(a1 + 2024);
    if (*(a1 + 2024))
    {
      v10 = 0;
      do
      {
        v11 = *(*(a1 + 2016) + 8 * v10);
        if (v11)
        {
          heap_Free(*(*(a1 + 16) + 8), v11);
          *(*(a1 + 2016) + 8 * v10) = 0;
          v9 = *(a1 + 2024);
        }

        ++v10;
      }

      while (v10 < v9);
      v8 = *(a1 + 2016);
    }

    heap_Free(*(*(a1 + 16) + 8), v8);
    *(a1 + 2016) = 0;
  }

  v12 = *(a1 + 135952);
  if (v12)
  {
    v7 = fi_deinit(*(a1 + 16), *(a1 + 40), v12);
    *(a1 + 135952) = 0;
  }

  v13 = *(a1 + 135968);
  if (v13)
  {
    heap_Free(*(*(a1 + 16) + 8), v13);
  }

  v14 = *(a1 + 135976);
  if (v14)
  {
    heap_Free(*(*(a1 + 16) + 8), v14);
  }

  v15 = *(a1 + 135984);
  if (v15)
  {
    heap_Free(*(*(a1 + 16) + 8), v15);
  }

  v16 = *(a1 + 135992);
  if (v16)
  {
    heap_Free(*(*(a1 + 16) + 8), v16);
  }

  v17 = *(a1 + 136008);
  if (v17)
  {
    heap_Free(*(*(a1 + 16) + 8), v17);
  }

  v18 = *(a1 + 136016);
  if (v18)
  {
    heap_Free(*(*(a1 + 16) + 8), v18);
  }

  v19 = *(a1 + 136024);
  if (v19)
  {
    heap_Free(*(*(a1 + 16) + 8), v19);
  }

  v20 = *(a1 + 136032);
  if (v20)
  {
    heap_Free(*(*(a1 + 16) + 8), v20);
  }

  *(a1 + 1928) = 0;
  return v7;
}

uint64_t lidword_IsSpace(int a1, char *__s)
{
  v3 = cstdlib_strlen(__s);

  return utf8_BelongsToSet(0, __s, 0, v3);
}

uint64_t lidword_CharAtOffsetSatisfies(uint64_t a1, char *__s, unsigned int PreviousUtf8Offset, int a4, uint64_t (*a5)(uint64_t, char *))
{
  v5 = a4;
  if (a4 < 0)
  {
    while (PreviousUtf8Offset)
    {
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, PreviousUtf8Offset);
      if (__CFADD__(v5++, 1))
      {
        v9 = cstdlib_strlen(__s);
        goto LABEL_11;
      }
    }

    return 0;
  }

  v9 = cstdlib_strlen(__s);
  if (v5)
  {
    v10 = v5 + 1;
    while (PreviousUtf8Offset < v9)
    {
      PreviousUtf8Offset = utf8_GetNextUtf8Offset(__s, PreviousUtf8Offset);
      if (--v10 <= 1)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_11:
  if (PreviousUtf8Offset >= v9)
  {
    return 0;
  }

  return a5(a1, &__s[PreviousUtf8Offset]);
}

const char **lidword_AdvanceToEndMultiword(const char **result)
{
  v1 = *result;
  if (**result)
  {
    v2 = result;
    while (1)
    {
      v3 = cstdlib_strlen(v1);
      result = utf8_BelongsToSet(0, v1, 0, v3);
      v4 = *v2;
      if (!result)
      {
        break;
      }

      result = Utf8_LengthInBytes(*v2, 1);
      v1 = &(*v2)[result];
      *v2 = v1;
      if (!*v1)
      {
        return result;
      }
    }

    while (*v4)
    {
      v5 = cstdlib_strlen(v4);
      result = utf8_BelongsToSet(0, v4, 0, v5);
      if (result)
      {
        break;
      }

      result = Utf8_LengthInBytes(*v2, 1);
      v4 = &(*v2)[result];
      *v2 = v4;
    }
  }

  return result;
}

void *calcWPenalties(void *result, unsigned int a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(result + 964);
  if (*(result + 964))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = a2;
    v10 = result[244];
    do
    {
      v11 = *(&result[64 * a2 + 386] + *(v10 + 2 * v6));
      v12 = v11 == 0;
      v13 = v11 != 0;
      if (!v12)
      {
        v8 = v6;
        ++v7;
      }

      __src[v6++] = v13;
    }

    while (v3 != v6);
    result = memcpy(&result[64 * a2 + 386], __src, 4 * v3);
    if (v7)
    {
      if (v7 == 1)
      {
        if (a3)
        {
          *(v5 + v9 + 33540) = v8;
        }

        return log_OutText(*(v5[2] + 32), "FE_LID", 5, 0, "ML2 LID found unambiguously in ML1 lexicon: %s", (v5[243] + 8 * v8));
      }

      else
      {
        v14 = *(v5[2] + 32);

        return log_OutText(v14, "FE_LID", 5, 0, "ML2 LID found ambiguously in ML1 lexicon");
      }
    }
  }

  return result;
}

uint64_t lidword_OutOfLID2(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 1088);
  v3 = *(v2 + 8);
  if (*(v2 + 8))
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      if (*(a1 + 3088 + (a2 << 9) + 4 * v4))
      {
        v6 = *(a1 + 1928);
        if (*(a1 + 1928))
        {
          v7 = *(a1 + 1952);
          do
          {
            v8 = *v7++;
            if (v4 == v8)
            {
              return 0;
            }
          }

          while (--v6);
        }

        v5 = 1;
      }

      if (++v4 == v3)
      {
        return v5;
      }
    }
  }

  return 0;
}

uint64_t lidword_InsertLangMarker(uint64_t a1, uint64_t a2, int a3, int a4, const char *a5, int a6, uint64_t *a7, unsigned int *a8, unsigned int *a9)
{
  v14 = a3 - 1;
  if (a6)
  {
    v15 = *(a2 + 12) + a4;
    v16 = 1;
    if (v14 >= 2)
    {
      do
      {
        if (v15 < *(a2 + 32 * v16 + 12))
        {
          break;
        }

        ++v16;
      }

      while (v14 > v16);
    }

    i = v16 - (v15 == *(a2 + 32 * v16 + 12));
  }

  else if (v14 < 2)
  {
    i = 1;
  }

  else
  {
    for (i = 1; i < v14; ++i)
    {
      if ((*(a2 + 12) + a4) <= *(a2 + 32 * i + 12))
      {
        break;
      }
    }
  }

  v18 = i;
  v19 = (a2 + 32 * i);
  cstdlib_memmove(v19 + 8, v19, 32 * (v14 - i));
  v20 = *a9;
  if (v20)
  {
    v21 = 0;
    v22 = *a7;
    do
    {
      v23 = *(v22 + 4 * v21);
      if (v23 >= v18)
      {
        *(v22 + 4 * v21) = v23 + 1;
        v20 = *a9;
      }

      ++v21;
    }

    while (v21 < v20);
  }

  *v19 = 36;
  v24 = *(*(a1 + 16) + 8);
  v25 = cstdlib_strlen(a5);
  v26 = heap_Alloc(v24, (v25 + 1));
  *(v19 + 3) = v26;
  if (!v26)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
    return 2345672714;
  }

  cstdlib_strcpy(v26, a5);
  *(v19 + 3) = (*(a2 + 12) + a4);
  if (v14 <= v18)
  {
    v28 = *(v19 - 7);
    goto LABEL_23;
  }

  v27 = v19[9];
  v28 = *(v19 - 7);
  if (v27 <= v28)
  {
LABEL_23:
    v27 = v28;
  }

  v19[1] = v27;
  v19[2] = 0;
  result = hlp_AppendItemRaw32(a1, a7, a8, a9, 4u, 10);
  if ((result & 0x80000000) == 0)
  {
    *(*a7 + 4 * (*a9 - 1)) = v18;
  }

  return result;
}

uint64_t lidword_GetU16Param(void *a1, uint64_t a2, _WORD *a3)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = 1;
  v4 = (*(a1[8] + 96))(a1[6], a1[7], "ml2cfg", a2, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v5 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v5)
      {
        *v5 = 0;
      }

      *a3 = LH_atou(**&__c[3]);
    }

    else
    {
      return 2345672724;
    }
  }

  return v4;
}

uint64_t lidword_GetF32Param(void *a1, uint64_t a2, _DWORD *a3)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = 1;
  v4 = (*(a1[8] + 96))(a1[6], a1[7], "ml2cfg", a2, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v5 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v5)
      {
        *v5 = 0;
      }

      cstdlib_atof(**&__c[3]);
      *&v6 = v6;
      *a3 = LODWORD(v6);
    }

    else
    {
      return 2345672724;
    }
  }

  return v4;
}

uint64_t lidword_GetTextParam(void *a1, uint64_t a2, void *a3)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = 1;
  v4 = (*(a1[8] + 96))(a1[6], a1[7], "ml2cfg", a2, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v5 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v5)
      {
        *v5 = 0;
      }

      *a3 = **&__c[3];
    }

    else
    {
      return 2345672724;
    }
  }

  return v4;
}

uint64_t lidword_InitLangParams(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  __s1 = 0;
  cstdlib_strcpy(*(a1 + 1936), "ged");
  cstdlib_strcpy((*(a1 + 1936) + 8), "enx");
  if (*(a1 + 1928) == 3)
  {
    cstdlib_strcpy((*(a1 + 1936) + 16), "frx");
  }

  LangParam = lidword_GetLangParam(a1, "languages");
  if ((LangParam & 0x80000000) == 0 || (v3 = LangParam, (LangParam & 0x1FFF) == 0x14))
  {
    *(a1 + 1930) = 0;
    cstdlib_strcpy(*(a1 + 1944), "ged");
    cstdlib_strcpy((*(a1 + 1944) + 8), "eng");
    if (*(a1 + 1928) == 3)
    {
      cstdlib_strcpy((*(a1 + 1944) + 16), "frf");
    }

    cstdlib_strcpy(__dst, "languages.");
    cstdlib_strcat(__dst, *(a1 + 1912));
    v4 = lidword_GetLangParam(a1, __dst);
    v3 = v4;
    if ((v4 & 0x80000000) == 0 || (v4 & 0x1FFF) == 0x14)
    {
      paramc_ParamGetStr(*(*(a1 + 16) + 40), "extraesclang", &__s1);
      if (__s1)
      {
        AdjustLanguageGroupMappingLID2((a1 + 1928), __s1);
      }
    }
  }

  return v3;
}

uint64_t lidword_GetLangParam(uint64_t a1, const char *a2)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = 1;
  v4 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "ml2cfg", a2, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v5 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v5)
      {
        *v5 = 0;
      }

      v6 = **&__c[3];
      v7 = cstdlib_strchr(**&__c[3], 44);
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        do
        {
          v10 = v9++;
          if (cstdlib_strcmp(a2, "languages"))
          {
            cstdlib_strncpy((*(a1 + 1944) + 8 * v10), v6, (v8 - v6));
          }

          else
          {
            cstdlib_strncpy((*(a1 + 1936) + 8 * v10), v6, (v8 - v6));
            if (!cstdlib_strcmp((*(a1 + 1936) + 8 * (v9 - 1)), "enx"))
            {
              *(a1 + 1932) = v9 - 1;
            }
          }

          v6 = v8 + 1;
          v8 = cstdlib_strchr(v8 + 1, 44);
        }

        while (v8);
      }

      else
      {
        v9 = 0;
      }

      if (cstdlib_strcmp(a2, "languages"))
      {
        cstdlib_strcpy((*(a1 + 1944) + 8 * v9), v6);
      }

      else
      {
        cstdlib_strcpy((*(a1 + 1936) + 8 * v9), v6);
        if (!cstdlib_strcmp((*(a1 + 1936) + 8 * v9), "enx"))
        {
          *(a1 + 1932) = v9;
        }
      }
    }

    else
    {
      return 2345672724;
    }
  }

  return v4;
}

char *lid_make_language_group(char *a1, const char *a2)
{
  cstdlib_strcpy(a1, a2);
  a1[2] = 120;
  v4 = &FE_LID_LANG_2_LANG_GROUP;
  v5 = 4;
  do
  {
    result = cstdlib_strcmp(v4, a2);
    if (!result)
    {
      result = cstdlib_strcpy(a1, v4 + 4);
    }

    v4 += 8;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t fe_lid_HlpClose(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 40);
  v16 = a1;
  v15 = xmmword_287EED198;
  v17 = xmmword_287EED198;
  paramc_ListenerRemove(v2, "extraesclang", &v16);
  v3 = *(*(a1 + 16) + 40);
  v16 = a1;
  v17 = v15;
  paramc_ListenerRemove(v3, "lidlanguages", &v16);
  v4 = *(*(a1 + 16) + 40);
  v16 = a1;
  v17 = v15;
  paramc_ListenerRemove(v4, "lidscope", &v16);
  v5 = *(*(a1 + 16) + 40);
  v16 = a1;
  v17 = v15;
  paramc_ListenerRemove(v5, "lidmode", &v16);
  v6 = *(*(a1 + 16) + 40);
  v16 = a1;
  v17 = v15;
  paramc_ListenerRemove(v6, "lidvoiceswitch", &v16);
  v7 = *(*(a1 + 16) + 40);
  v16 = a1;
  v17 = v15;
  paramc_ListenerRemove(v7, "membiasedrejectparam1", &v16);
  v8 = *(*(a1 + 16) + 40);
  v16 = a1;
  v17 = v15;
  paramc_ListenerRemove(v8, "membiasedrejectparam2", &v16);
  v9 = *(a1 + 1880);
  if (v9)
  {
    heap_Free(*(*(a1 + 16) + 8), v9);
    *(a1 + 1880) = 0;
  }

  v10 = *(a1 + 1024);
  if (v10)
  {
    heap_Free(*(*(a1 + 16) + 8), v10);
    *(a1 + 1024) = 0;
  }

  v11 = *(a1 + 1072);
  if (v11)
  {
    heap_Free(*(*(a1 + 16) + 8), v11);
    *(a1 + 1072) = 0;
  }

  v12 = *(a1 + 1904);
  if (v12)
  {
    heap_Free(*(*(a1 + 16) + 8), v12);
    *(a1 + 1904) = 0;
  }

  v13 = *(a1 + 1120);
  if (v13)
  {
    heap_Free(*(*(a1 + 16) + 8), v13);
    *(a1 + 1120) = 0;
    *(a1 + 1112) = 0;
  }

  lid_Deinit(a1);
  return lidword_Deinit(a1);
}

uint64_t fe_lid_ParamCheckChange(int a1, char *__s1, char *a3, _DWORD *a4)
{
  if (!cstdlib_strcmp(__s1, "lidscope"))
  {
    if (LH_stricmp(a3, "none"))
    {
      v7 = "user-defined";
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  if (!cstdlib_strcmp(__s1, "lidmode"))
  {
    if (LH_stricmp(a3, "rejection") && LH_stricmp(a3, "memory-bias") && LH_stricmp(a3, "bias-mlset"))
    {
      v7 = "forced-choice";
      goto LABEL_9;
    }

LABEL_28:
    v8 = 0;
    goto LABEL_29;
  }

  if (!cstdlib_strcmp(__s1, "lidlanguages"))
  {
    if (a3 && *a3)
    {
      v8 = 2345672719;
      cstdlib_strlen(a3);
      v9 = 0;
      v10 = 1;
      while (1)
      {
        v11 = a3[v9];
        if ((v10 & 3) != 0)
        {
          if ((v11 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6)
          {
            goto LABEL_29;
          }
        }

        else if (a3[v9] && v11 != 44)
        {
          goto LABEL_29;
        }

        v9 = v10;
        if (cstdlib_strlen(a3) < v10++)
        {
          goto LABEL_28;
        }
      }
    }

    goto LABEL_28;
  }

  if (cstdlib_strcmp(__s1, "lidvoiceswitch"))
  {
    if (cstdlib_strcmp(__s1, "membiasedrejectparam1"))
    {
      cstdlib_strcmp(__s1, "membiasedrejectparam2");
    }

    goto LABEL_28;
  }

  if (!LH_stricmp(a3, "yes"))
  {
    goto LABEL_28;
  }

  v7 = "no";
LABEL_9:
  if (LH_stricmp(a3, v7))
  {
    v8 = 2345672719;
  }

  else
  {
    v8 = 0;
  }

LABEL_29:
  *a4 = v8 >= 0;
  return v8;
}

uint64_t fe_lid_ParamLearnChange(uint64_t a1, char *__s1, char *a3)
{
  if (!cstdlib_strcmp(__s1, "lidscope"))
  {
    result = LH_stricmp(a3, "none");
    if (!result)
    {
      *(a1 + 1004) = 0;
      return result;
    }

    result = LH_stricmp(a3, "user-defined");
    if (result)
    {
      result = LH_stricmp(a3, "message");
      if (result)
      {
        return 2345672719;
      }

      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    *(a1 + 1004) = v11;
    return result;
  }

  if (!cstdlib_strcmp(__s1, "lidmode"))
  {
    result = LH_stricmp(a3, "rejection");
    if (result)
    {
      result = LH_stricmp(a3, "forced-choice");
      if (!result)
      {
        *(a1 + 1140) = 0;
        *(a1 + 1188) = 0;
        *(a1 + 1200) = 0;
        *(a1 + 1128) = 0;
        return result;
      }

      result = LH_stricmp(a3, "memory-bias");
      if (result)
      {
        result = LH_stricmp(a3, "bias-mlset");
        if (result)
        {
          return 2345672719;
        }

        v12 = (a1 + 1128);
        *(a1 + 1188) = 1;
        *(a1 + 1200) = 1;
      }

      else
      {
        v12 = (a1 + 1128);
        *(a1 + 1188) = 1;
        *(a1 + 1200) = 0;
      }

      *v12 = xmmword_26ECDB570;
      v13 = 279172874250000;
    }

    else
    {
      *(a1 + 1188) = 0;
      *(a1 + 1200) = 0;
      *(a1 + 1128) = xmmword_26ECDB580;
      v13 = 1000;
    }

    *(a1 + 1144) = v13;
    return result;
  }

  if (cstdlib_strcmp(__s1, "lidlanguages"))
  {
    if (cstdlib_strcmp(__s1, "lidvoiceswitch"))
    {
      if (cstdlib_strcmp(__s1, "membiasedrejectparam1"))
      {
        if (cstdlib_strcmp(__s1, "membiasedrejectparam2"))
        {
          if (!cstdlib_strcmp(__s1, "extraesclang"))
          {
            if (*(a1 + 1066))
            {
              v6 = 0;
              v7 = 20;
              do
              {
                v8 = *(a1 + 1072);
                if (*(v8 + v7) == 1)
                {
                  cstdlib_strcpy(__dst, (v8 + v7 - 12));
                  __dst[2] = 0;
                  v9 = cstdlib_strstr(a3, __dst);
                  if (v9)
                  {
                    if (v9 == a3 || *(v9 - 1) == 44)
                    {
                      cstdlib_strncpy((*(a1 + 1072) + v7 - 12), v9, 3uLL);
                    }
                  }
                }

                ++v6;
                v7 += 24;
              }

              while (v6 < *(a1 + 1066));
            }

            AdjustLanguageGroupMappingLID2((a1 + 1928), a3);
          }

          return 0;
        }

        else
        {
          v15 = LH_atou(a3);
          result = 0;
          *(a1 + 1136) = v15;
          *(a1 + 1148) = v15;
        }
      }

      else
      {
        v14 = LH_atou(a3);
        result = 0;
        *(a1 + 1132) = v14;
        *(a1 + 1144) = v14;
      }

      return result;
    }

    result = LH_stricmp(a3, "yes");
    if (!result)
    {
      *(a1 + 1008) = 0;
      return result;
    }

    result = LH_stricmp(a3, "no");
    if (!result)
    {
      *(a1 + 1008) = 1;
      return result;
    }

    return 2345672719;
  }

  return hlp_SetActiveLngs(a1, a3);
}

uint64_t fe_lid_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v5 = 2345672711;
  v21 = 0;
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v23);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(a1, a2, &v22);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = heap_Calloc(*(v23 + 8), 1, 136040);
  if (!v12)
  {
    log_OutPublic(*(v23 + 32), "FE_LID", 48000, 0);
    return 2345672714;
  }

  v13 = v12;
  *v12 = a3;
  v12[1] = a4;
  v15 = v22;
  v14 = v23;
  v12[2] = v23;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = v15;
  Object = objc_GetObject(*(v14 + 48), "SYNTHSTREAM", &v21);
  if ((Object & 0x80000000) != 0 || (*(v13 + 72) = *(v21 + 8), Object = objc_GetObject(*(v23 + 48), "FE_DCTLKP", &v21), (Object & 0x80000000) != 0))
  {
    v5 = Object;
    *a5 = v13;
    *(a5 + 8) = 62400;
LABEL_11:
    fe_lid_ObjClose(v13, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return v5;
  }

  v17 = v21;
  *(v13 + 64) = *(v21 + 8);
  *(v13 + 48) = *(v17 + 16);
  if ((objc_GetObject(*(v23 + 48), "COMPQUERY", &v21) & 0x80000000) != 0)
  {
    *(v13 + 96) = 0;
    *(v13 + 80) = safeh_GetNullHandle();
    *(v13 + 88) = v19;
  }

  else
  {
    v18 = v21;
    *(v13 + 96) = *(v21 + 8);
    *(v13 + 80) = *(v18 + 16);
  }

  v5 = fe_lid_HlpOpen(v13);
  *a5 = v13;
  *(a5 + 8) = 62400;
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  return v5;
}

uint64_t fe_lid_HlpOpen(uint64_t a1)
{
  v110 = *MEMORY[0x277D85DE8];
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  __s1 = 0;
  __s = 0;
  v97 = 0;
  __src = 0;
  v2 = *(a1 + 16);
  if ((paramc_ParamGetStr(*(v2 + 40), "mlset", &__s) & 0x80000000) != 0 || !cstdlib_strlen(__s))
  {
    Str = paramc_ParamGetStr(*(v2 + 40), "langcode", &__s);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_235;
    }
  }

  v4 = 2345672714;
  v5 = __s;
  v6 = *(*(a1 + 16) + 8);
  v7 = cstdlib_strlen(__s);
  v8 = heap_Alloc(v6, v7 + 1);
  if (!v8)
  {
    *(a1 + 1904) = 0;
    return v4;
  }

  v9 = cstdlib_strcpy(v8, v5);
  *(a1 + 1904) = v9;
  if (v9)
  {
    if (cstdlib_strlen(v9) >= 1)
    {
      v10 = 0;
      do
      {
        *(*(a1 + 1904) + v10) = cstdlib_tolower(*(*(a1 + 1904) + v10));
        ++v10;
      }

      while (cstdlib_strlen(*(a1 + 1904)) > v10);
    }

    if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "extraesclang", &__s1) & 0x80000000) != 0 || (v11 = *(v2 + 40), *__s2 = a1, v108 = xmmword_287EED198, v12 = paramc_ListenerAdd(v11, "extraesclang", __s2), (v12 & 0x80000000) == 0))
    {
      paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &__src);
      *(a1 + 1008) = 0;
      if ((paramc_ParamGetStr(*(v2 + 40), "lidvoiceswitch", &v101) & 0x80000000) == 0)
      {
        if (!LH_stricmp(v101, "yes"))
        {
          v13 = 0;
          goto LABEL_19;
        }

        if (!LH_stricmp(v101, "no"))
        {
          v13 = 1;
LABEL_19:
          *(a1 + 1008) = v13;
        }

LABEL_20:
        v15 = *(a1 + 1904);
        if (!v15)
        {
          goto LABEL_65;
        }

        if (cstdlib_strlen(v15) < 4)
        {
          goto LABEL_65;
        }

        paramc_ParamGetStr(*(v2 + 40), "lidlanguages", &v97);
        if (!__s1 || !cstdlib_strcmp(__s1, &unk_26ECDB61A))
        {
          goto LABEL_65;
        }

        cstdlib_strlen(__s1);
        v16 = 0;
        v17 = 0;
        v18 = 0;
        do
        {
          if ((++v18 & 3) != 0)
          {
            v19 = __s1[v16];
            if ((v19 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5)
            {
              __s2[v17++] = ssft_tolower(v19);
            }

            else
            {
              log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 60003, "%s%s", "extraesclang", __s1);
            }
          }

          else
          {
            __s2[v17] = 0;
            if (__s1[v16] && __s1[v16] != 44)
            {
              log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 60003, "%s%s", "extraesclang", __s1);
            }

            else if (!cstdlib_strstr(*(a1 + 1904), __s2) || !LH_stricmp(__src, __s2))
            {
              log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 60004, "%s%s", "language", __s2);
            }

            v17 = 0;
          }

          v16 = v18;
        }

        while (cstdlib_strlen(__s1) >= v18);
        v20 = *(*(a1 + 16) + 8);
        v21 = cstdlib_strlen(__s1);
        v22 = heap_Alloc(v20, (v21 + 5));
        if (!v22)
        {
          v32 = *(*(a1 + 16) + 32);
          v33 = 60000;
LABEL_238:
          log_OutPublic(v32, "FE_LID", v33, 0);
          return v4;
        }

        v23 = v22;
        cstdlib_strcpy(v22, __src);
        cstdlib_strcat(v23, ",");
        cstdlib_strcat(v23, __s1);
        paramc_ParamGetStr(*(v2 + 40), "lidlanguages", &v97);
        v24 = v97;
        if (*v23)
        {
          if (v97 && *v97)
          {
            __s2[0] = 0;
            cstdlib_strncpy(__dst, v23, 0x7FuLL);
            __dst[127] = 0;
            v25 = __dst[0];
            if (__dst[0])
            {
              v26 = 0;
              v27 = __dst;
              do
              {
                v28 = v27;
                while (!cstdlib_strchr(",", v25))
                {
                  v29 = *++v28;
                  v25 = v29;
                  ++v26;
                  if (!v29)
                  {
                    goto LABEL_52;
                  }
                }

                LOBYTE(v30) = *v28;
                if (*v28)
                {
                  v31 = 0;
                  do
                  {
                    if (!cstdlib_strchr(",", v30))
                    {
                      break;
                    }

                    v28[v31] = 0;
                    v30 = v28[++v31];
                  }

                  while (v30);
                  v26 += v31;
                }

LABEL_52:
                if (cstdlib_strstr(v24, v27))
                {
                  if (__s2[0])
                  {
                    cstdlib_strcat(__s2, ",");
                  }

                  cstdlib_strcat(__s2, v27);
                }

                v27 = &__dst[v26];
                v25 = __dst[v26];
              }

              while (v25);
            }

            goto LABEL_63;
          }

          v34 = v23;
        }

        else
        {
          if (!v97)
          {
            __s2[0] = 0;
            goto LABEL_63;
          }

          v34 = v97;
        }

        cstdlib_strcpy(__s2, v34);
LABEL_63:
        active = paramc_ParamSetStr(*(*(a1 + 16) + 40), "lidlanguages", __s2);
        if ((active & 0x80000000) != 0)
        {
          return active;
        }

        heap_Free(*(*(a1 + 16) + 8), v23);
LABEL_65:
        v36 = *(v2 + 40);
        *__s2 = a1;
        v96 = xmmword_287EED198;
        v108 = xmmword_287EED198;
        v37 = paramc_ListenerAdd(v36, "lidvoiceswitch", __s2);
        v38 = *(a1 + 16);
        if ((v37 & 0x80000000) != 0)
        {
          log_OutPublic(*(v38 + 32), "FE_LID", 48000, 0);
          return v37;
        }

        active = hlp_FillDicLMLanguages(v38, a1 + 1016, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 1904), __s1, 0xFFFF);
        if ((active & 0x80001FFF) == 0x8000000A)
        {
          return active;
        }

        active = hlp_FillDicLMLanguages(*(a1 + 16), a1 + 1064, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 1904), __s1, 1);
        if ((active & 0x80001FFF) == 0x8000000A)
        {
          return active;
        }

        if (!*(a1 + 1018) && !*(a1 + 1066))
        {
          return 0;
        }

        *(a1 + 1004) = 0;
        active = paramc_ParamGet(*(*(a1 + 16) + 40), "langcode", (a1 + 1912), 0);
        if ((active & 0x80000000) != 0)
        {
          return active;
        }

        v39 = *(a1 + 1018);
        if (v39 | *(a1 + 1066))
        {
          v40 = *(a1 + 1066);
          *(a1 + 1152) = 69077;
          if (v39 <= v40)
          {
            v39 = v40;
          }

          v41 = heap_Calloc(*(*(a1 + 16) + 8), 1, 32 * v39);
          *(a1 + 1880) = v41;
          if (!v41)
          {
            goto LABEL_236;
          }

          if (*(a1 + 1018) <= *(a1 + 1066))
          {
            v42 = *(a1 + 1066);
          }

          else
          {
            v42 = *(a1 + 1018);
          }

          if (v42)
          {
            v43 = vextq_s8(*(a1 + 1904), *(a1 + 1904), 8uLL);
            v44 = (v41 + 16);
            do
            {
              *v44 = v43;
              v44 += 2;
              --v42;
            }

            while (v42);
          }

          Str = lid_Init(a1);
          if ((Str & 0x80000000) != 0)
          {
            goto LABEL_235;
          }

          if (*(a1 + 1066))
          {
            Str = lidword_Init(a1);
            if ((Str & 0x80000000) != 0)
            {
              goto LABEL_235;
            }
          }

          v45 = *(a1 + 96);
          if (v45)
          {
            v4 = (*(v45 + 64))(*(a1 + 80), *(a1 + 88), &unk_26ECDB61A, 0, &v103);
            if ((v4 & 0x80001FFF) == 0x8000000A)
            {
              return v4;
            }

            if (v103)
            {
              v46 = heap_Calloc(*(v2 + 8), v103, 86);
              if (!v46)
              {
                v32 = *(v2 + 32);
LABEL_237:
                v33 = 48000;
                goto LABEL_238;
              }

              v47 = v46;
              active = (*(*(a1 + 96) + 64))(*(a1 + 80), *(a1 + 88), &unk_26ECDB61A, v46, &v103);
              if ((active & 0x80000000) != 0)
              {
                return active;
              }

              if (v103)
              {
                v48 = 0;
                do
                {
                  v49 = v48;
                  v50 = v47 + 86 * v48;
                  v53 = *(v50 + 64);
                  v52 = (v50 + 64);
                  v51 = v53;
                  if (v53)
                  {
                    v54 = 0;
                    v55 = v52;
                    do
                    {
                      *v55 = ssft_tolower(v51);
                      v56 = v47 + 86 * v49 + ++v54;
                      v57 = *(v56 + 64);
                      v55 = (v56 + 64);
                      v51 = v57;
                    }

                    while (v57);
                  }

                  ModelLng = hlp_FindModelLng(a1, v52, 1);
                  if (ModelLng || (lid_make_language_group(__dst, v52), (ModelLng = hlp_FindModelLng(a1, __dst, 1)) != 0))
                  {
                    *(ModelLng + 16) = 1;
                  }

                  v59 = hlp_FindModelLng(a1, v52, 0);
                  if (v59 || (lid_make_language_group(__dst, v52), (v59 = hlp_FindModelLng(a1, __dst, 1)) != 0))
                  {
                    *(v59 + 16) = 1;
                  }

                  v48 = v49 + 1;
                }

                while (v103 > (v49 + 1));
              }

              heap_Free(*(v2 + 8), v47);
            }
          }

          v105 = -1;
          active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "lidscope", &v106, &v105, &v104);
          if ((active & 0x80000000) != 0)
          {
            return active;
          }

          if (v105)
          {
            goto LABEL_248;
          }

          v105 = 1;
          active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "lidscope", &v106, &v105, &v104);
          if ((active & 0x80000000) != 0)
          {
            return active;
          }

          if (v105)
          {
LABEL_248:
            if (cstdlib_strstr(*v106, "user-defined"))
            {
              v60 = 1;
            }

            else
            {
              v60 = 2;
            }

            *(a1 + 1004) = v60;
          }
        }

        if ((paramc_ParamGetStr(*(v2 + 40), "lidlanguages", &v101) & 0x80000000) != 0)
        {
          Str = paramc_ParamSetStr(*(v2 + 40), "lidlanguages", &unk_26ECDB61A);
          if ((Str & 0x80000000) != 0)
          {
            goto LABEL_235;
          }
        }

        else
        {
          active = hlp_SetActiveLngs(a1, v101);
          if ((active & 0x80000000) != 0)
          {
            return active;
          }
        }

        v61 = *(v2 + 40);
        *__s2 = a1;
        v108 = v96;
        Str = paramc_ListenerAdd(v61, "lidlanguages", __s2);
        if ((Str & 0x80000000) != 0)
        {
          goto LABEL_235;
        }

        if ((paramc_ParamGetStr(*(v2 + 40), "lidscope", &v101) & 0x80000000) != 0)
        {
          v65 = *(a1 + 1004);
          v66 = "message";
          if (v65 == 1)
          {
            v66 = "user-defined";
          }

          if (v65)
          {
            v67 = v66;
          }

          else
          {
            v67 = "none";
          }

          Str = paramc_ParamSetStr(*(v2 + 40), "lidscope", v67);
          v63 = v96;
          if ((Str & 0x80000000) != 0)
          {
            goto LABEL_235;
          }

LABEL_131:
          v68 = *(v2 + 40);
          *__s2 = a1;
          v108 = v63;
          Str = paramc_ListenerAdd(v68, "lidscope", __s2);
          if ((Str & 0x80000000) != 0)
          {
            goto LABEL_235;
          }

          if ((paramc_ParamGetUInt(*(v2 + 40), "membiasedrejectparam1", &v102 + 1) & 0x80000000) != 0)
          {
            v69 = 0;
            HIDWORD(v102) = 0;
          }

          else
          {
            if ((paramc_ParamGetUInt(*(v2 + 40), "membiasedrejectparam2", &v102) & 0x80000000) == 0)
            {
              v69 = v102 != 0;
              v70 = v102 == 0;
              goto LABEL_138;
            }

            v69 = 0;
            v102 = 0;
          }

          v70 = 1;
LABEL_138:
          *(a1 + 1140) = 0;
          *(a1 + 1128) = 0;
          *(a1 + 1188) = 0;
          *(a1 + 1200) = 0;
          v105 = -1;
          active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "lidmode", &v106, &v105, &v104);
          if ((active & 0x80000000) == 0)
          {
            if (v105 && cstdlib_strstr(*v106, "rejection"))
            {
              *(a1 + 1128) = 1;
            }

            v105 = 1;
            v71 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "lidmode", &v106, &v105, &v104);
            if ((v71 & 0x80000000) == 0 && v105 && cstdlib_strstr(*v106, "rejection"))
            {
              *(a1 + 1140) = 1;
            }

            v72 = 0;
            if ((v71 & 0x80000000) == 0 && v105)
            {
              if (cstdlib_strstr(*v106, "memory-bias"))
              {
                v72 = 1;
                *(a1 + 1188) = 1;
                *(a1 + 1200) = 0;
              }

              else
              {
                v72 = 0;
              }
            }

            if ((v71 & 0x80000000) == 0 && v105 && cstdlib_strstr(*v106, "bias-mlset"))
            {
              v72 = 1;
              *(a1 + 1188) = 1;
              *(a1 + 1200) = 1;
            }

            if ((paramc_ParamGetStr(*(v2 + 40), "lidmode", &v101) & 0x80000000) != 0)
            {
              if (*(a1 + 1128) || *(a1 + 1140))
              {
                v78 = *(v2 + 40);
                v79 = "rejection";
              }

              else if (*(a1 + 1188))
              {
                v78 = *(v2 + 40);
                v79 = "memory-bias";
              }

              else
              {
                v78 = *(v2 + 40);
                if (*(a1 + 1200))
                {
                  v79 = "bias-mlset";
                }

                else
                {
                  v79 = "forced-choice";
                }
              }

              v4 = paramc_ParamSetStr(v78, "lidmode", v79);
              v74 = v96;
              if ((v4 & 0x80000000) != 0)
              {
                goto LABEL_236;
              }

LABEL_175:
              v80 = *(v2 + 40);
              *__s2 = a1;
              v108 = v74;
              Str = paramc_ListenerAdd(v80, "lidmode", __s2);
              if ((Str & 0x80000000) == 0)
              {
                v81 = (a1 + 1132);
                *(a1 + 1132) = 0x3200000000;
                *(a1 + 1144) = 0x3200000000;
                v82 = *(a1 + 1128);
                if (v82)
                {
                  if (*(a1 + 1188) != 1)
                  {
                    if (v82 == 1)
                    {
LABEL_183:
                      v85 = 0;
                      *v81 = 1000;
                      *(a1 + 1144) = 1000;
LABEL_207:
                      *(a1 + 1148) = v85;
                      goto LABEL_208;
                    }

                    v83 = *(a1 + 1140);
                    goto LABEL_182;
                  }
                }

                else
                {
                  v83 = *(a1 + 1140);
                  v84 = *(a1 + 1188);
                  if (v83)
                  {
                    if (v84 != 1)
                    {
LABEL_182:
                      if (v83 == 1)
                      {
                        goto LABEL_183;
                      }

LABEL_208:
                      Str = paramc_ParamSetUInt(*(v2 + 40), "membiasedrejectparam1", *(a1 + 1144));
                      if ((Str & 0x80000000) == 0)
                      {
                        Str = paramc_ParamSetUInt(*(v2 + 40), "membiasedrejectparam2", *(a1 + 1148));
                        if ((Str & 0x80000000) == 0)
                        {
                          v89 = *(v2 + 40);
                          *__s2 = a1;
                          v108 = v96;
                          Str = paramc_ListenerAdd(v89, "membiasedrejectparam1", __s2);
                          if ((Str & 0x80000000) == 0)
                          {
                            v90 = *(v2 + 40);
                            *__s2 = a1;
                            v108 = v96;
                            Str = paramc_ListenerAdd(v90, "membiasedrejectparam2", __s2);
                            if ((Str & 0x80000000) == 0)
                            {
                              *(a1 + 1180) = 0;
                              v105 = -1;
                              active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "numfallback", &v106, &v105, &v104);
                              if ((active & 0x80000000) != 0)
                              {
                                return active;
                              }

                              if (v105)
                              {
                                *(a1 + 1180) = 1;
                              }

                              v105 = 1;
                              if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "numfallback", &v106, &v105, &v104) & 0x80000000) == 0 && v105)
                              {
                                *(a1 + 1184) = 1;
                              }

                              *(a1 + 1156) = 0x3E800000000;
                              cstdlib_memcpy((a1 + 1164), "enx", 4uLL);
                              *(a1 + 1168) = 0x3E800000000;
                              cstdlib_memcpy((a1 + 1176), "enx", 4uLL);
                              v105 = -1;
                              active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "fuzzythreshold", &v106, &v105, &v104);
                              if ((active & 0x80000000) != 0)
                              {
                                return active;
                              }

                              if (v105)
                              {
                                *(a1 + 1156) = 1;
                                v91 = LH_atou(*v106);
                                *(a1 + 1160) = v91;
                                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "setting fuzzy matching threshold to %7lu", v91);
                              }

                              v105 = 1;
                              if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "fuzzythreshold", &v106, &v105, &v104) & 0x80000000) == 0 && v105)
                              {
                                *(a1 + 1168) = 1;
                                v92 = LH_atou(*v106);
                                *(a1 + 1172) = v92;
                                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "setting common fuzzy matching threshold to %7lu", v92);
                              }

                              v105 = -1;
                              active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "fuzzyfallbacklang", &v106, &v105, &v104);
                              if ((active & 0x80000000) != 0)
                              {
                                return active;
                              }

                              if (v105)
                              {
                                v93 = cstdlib_strlen(*v106);
                                *(a1 + 1156) = 1;
                                cstdlib_memcpy((a1 + 1164), *v106, 4uLL);
                                if (v93 >= 4)
                                {
                                  *(a1 + 1167) = 0;
                                }

                                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "setting fuzzy matching fallback language to %s", (a1 + 1164));
                              }

                              v105 = 1;
                              v4 = 0;
                              if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "fuzzyfallbacklang", &v106, &v105, &v104) & 0x80000000) == 0 && v105)
                              {
                                v94 = cstdlib_strlen(*v106);
                                *(a1 + 1156) = 1;
                                cstdlib_memcpy((a1 + 1164), *v106, 4uLL);
                                if (v94 >= 4)
                                {
                                  *(a1 + 1167) = 0;
                                }

                                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "setting fuzzy matching fallback language to %s", (a1 + 1164));
                                return 0;
                              }

                              return v4;
                            }
                          }
                        }
                      }

                      goto LABEL_235;
                    }
                  }

                  else if (v84 != 1)
                  {
                    if (!v84)
                    {
                      v85 = 0;
                      *(a1 + 1136) = 0;
                      goto LABEL_207;
                    }

                    goto LABEL_208;
                  }
                }

                if (v69)
                {
                  v87 = v102;
                  v86 = HIDWORD(v102);
                  *(a1 + 1132) = HIDWORD(v102);
                  *(a1 + 1136) = v87;
                  *(a1 + 1144) = v86;
                  *(a1 + 1148) = v87;
                }

                if (v72)
                {
                  v88 = !v70;
                }

                else
                {
                  v88 = 1;
                }

                if (v88)
                {
                  if (((!v70 | v72) & 1) == 0)
                  {
                    *v81 = 279172874250000;
                    *(a1 + 1144) = 10000;
                    v85 = 65000;
                    goto LABEL_207;
                  }
                }

                else
                {
                  v105 = -1;
                  active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "rejectparam1", &v106, &v105, &v104);
                  if ((active & 0x80000000) != 0)
                  {
                    return active;
                  }

                  if (v105)
                  {
                    *v81 = LH_atou(*v106);
                  }

                  v105 = -1;
                  active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "rejectparam2", &v106, &v105, &v104);
                  if ((active & 0x80000000) != 0)
                  {
                    return active;
                  }

                  if (v105)
                  {
                    *(a1 + 1136) = LH_atou(*v106);
                  }

                  v105 = 1;
                  if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "rejectparam1", &v106, &v105, &v104) & 0x80000000) == 0 && v105)
                  {
                    *(a1 + 1144) = LH_atou(*v106);
                  }

                  v105 = 1;
                  if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "rejectparam2", &v106, &v105, &v104) & 0x80000000) == 0 && v105)
                  {
                    v85 = LH_atou(*v106);
                    goto LABEL_207;
                  }
                }

                goto LABEL_208;
              }

LABEL_235:
              v4 = Str;
LABEL_236:
              v32 = *(*(a1 + 16) + 32);
              goto LABEL_237;
            }

            if (LH_stricmp(v101, "rejection"))
            {
              if (LH_stricmp(v101, "forced-choice"))
              {
                if (LH_stricmp(v101, "memory-bias"))
                {
                  v73 = LH_stricmp(v101, "bias-mlset");
                  v74 = v96;
                  if (v73)
                  {
                    goto LABEL_175;
                  }

                  v75 = 0;
                  v76 = 1;
                  v77 = 1;
                  goto LABEL_174;
                }

                v75 = 0;
                v77 = 0;
                v76 = 1;
              }

              else
              {
                v75 = 0;
                v76 = 0;
                v77 = 0;
              }
            }

            else
            {
              v76 = 0;
              v77 = 0;
              v75 = 1;
            }

            v74 = v96;
LABEL_174:
            *(a1 + 1128) = v75;
            *(a1 + 1140) = v75;
            *(a1 + 1188) = v76;
            *(a1 + 1200) = v77;
            goto LABEL_175;
          }

          return active;
        }

        if (LH_stricmp(v101, "none"))
        {
          if (LH_stricmp(v101, "user-defined"))
          {
            v62 = LH_stricmp(v101, "message");
            v63 = v96;
            if (v62)
            {
              goto LABEL_131;
            }

            v64 = 2;
            goto LABEL_130;
          }

          v64 = 1;
        }

        else
        {
          v64 = 0;
        }

        v63 = v96;
LABEL_130:
        *(a1 + 1004) = v64;
        goto LABEL_131;
      }

      v12 = paramc_ParamSetStr(*(v2 + 40), "lidvoiceswitch", "no");
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    v14 = v12;
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
    return v14;
  }

  return v4;
}

uint64_t fe_lid_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62400, 136040);
  if ((result & 0x80000000) != 0)
  {
    return 2345672712;
  }

  if (a1)
  {
    if (a1[9])
    {
      objc_ReleaseObject(*(a1[2] + 48), "SYNTHSTREAM");
    }

    if (a1[8])
    {
      objc_ReleaseObject(*(a1[2] + 48), "FE_DCTLKP");
    }

    if (a1[12])
    {
      objc_ReleaseObject(*(a1[2] + 48), "COMPQUERY");
    }

    fe_lid_HlpClose(a1);
    heap_Free(*(a1[2] + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_lid_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  __s1 = 0;
  v12 = 0;
  __src = 0;
  v7 = safeh_HandleCheck(a1, a2, 62400, 136040);
  if ((v7 & 0x80000000) != 0)
  {
    return 2345672712;
  }

  v8 = v7;
  synstrmaux_InitStreamOpener(a1 + 104, *(*(a1 + 16) + 32), "FE_LID");
  *(a1 + 1000) = 0;
  if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "textanalysison", &__s1) & 0x80000000) == 0 && __s1 && *__s1 && !cstdlib_strcmp(__s1, "yes"))
  {
    *(a1 + 996) = 1;
  }

  if (*(a1 + 1188))
  {
    *(a1 + 1192) = *(a1 + 1144);
    if (*(a1 + 996))
    {
      *(a1 + 1000) = 0;
      paramc_ParamSetUInt(*(*(a1 + 16) + 40), "initcommonbiasvalue", 0);
      paramc_ParamSetStr(*(*(a1 + 16) + 40), "initcommonbiaslanguage", &unk_26ECDB61A);
    }

    else
    {
      if ((paramc_ParamGetUInt(*(*(a1 + 16) + 40), "initcommonbiasvalue", &v12) & 0x80000000) != 0 || !v12 || (paramc_ParamGetStr(*(*(a1 + 16) + 40), "initcommonbiaslanguage", &__src) & 0x80000000) != 0 || (v9 = __src) == 0)
      {
        *(a1 + 1000) = 0;
LABEL_19:
        cstdlib_memcpy((a1 + 1196), *(a1 + 1912), 4uLL);
        goto LABEL_20;
      }

      *(a1 + 1192) = v12;
      *(a1 + 1000) = 1;
      cstdlib_memcpy((a1 + 1196), v9, 4uLL);
    }

    if (*(a1 + 1000))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_20:
  if (*(a1 + 1004))
  {
    if (*(a1 + 1018) || *(a1 + 1066))
    {
      synstrmaux_RegisterInStream((a1 + 104), "text/plain;charset=utf-8", 0, a1 + 928);
      synstrmaux_RegisterInStream((a1 + 104), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 944);
      synstrmaux_RegisterOutStream((a1 + 104), "text/plain;charset=utf-8", a1 + 960);
      synstrmaux_RegisterOutStream((a1 + 104), "application/x-realspeak-markers-pp;version=4.0", a1 + 976);
      v8 = synstrmaux_OpenStreams((a1 + 104), *(a1 + 72), a3, a4);
      if ((v8 & 0x80000000) != 0)
      {
        synstrmaux_CloseStreams((a1 + 104), *(a1 + 72));
      }
    }

    else
    {
      log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48002, 0);
      return 2345672707;
    }
  }

  return v8;
}

uint64_t hlp_AppendItemRaw32(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, unsigned int a5, int a6)
{
  v6 = 2345672714;
  if (!a2)
  {
    return 2345672711;
  }

  v10 = *a2;
  if (v10)
  {
    v11 = *a4 + 1;
    v12 = *a3;
    if (v11 <= *a3)
    {
LABEL_9:
      v6 = 0;
      *a4 = v11;
      return v6;
    }

    v13 = v12 + a6;
    v14 = heap_Realloc(*(*(a1 + 16) + 8), v10, (v12 + a6) * a5);
    if (!v14)
    {
      return v6;
    }

LABEL_8:
    *a2 = v14;
    *a3 = v13;
    v11 = *a4 + 1;
    goto LABEL_9;
  }

  *a3 = 0;
  *a4 = 0;
  v13 = *a3 + a6;
  v14 = heap_Calloc(*(*(a1 + 16) + 8), a5, v13);
  if (v14)
  {
    goto LABEL_8;
  }

  return v6;
}

uint64_t fe_lid_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v165 = *MEMORY[0x277D85DE8];
  v150 = 0;
  v148 = 0;
  v149 = 0;
  v146 = 0;
  v147 = 0;
  v145 = 0;
  v7 = safeh_HandleCheck(a1, a2, 62400, 136040);
  if ((v7 & 0x80000000) != 0)
  {
    return 2345672712;
  }

  Str = v7;
  *a5 = 1;
  v9 = *(a1 + 928);
  if (v9)
  {
    v10 = (*(*(a1 + 72) + 144))(v9, *(a1 + 936), &v150, &v149);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    Str = (*(*(a1 + 72) + 144))(*(a1 + 944), *(a1 + 952), &v149 + 4, &v149);
    if ((Str & 0x80000000) == 0)
    {
      if (v150)
      {
        v162 = 0;
        v163 = 0;
        v161 = 0;
        v160 = 0;
        v158 = 0;
        __src = 0;
        v156 = 0;
        v157 = 0;
        v155 = 0;
        v154 = 0;
        *(a1 + 992) = 1;
        if (((*(*(a1 + 64) + 80))(*(a1 + 48), *(a1 + 56), "mertfrq", 0, &v154) & 0x80000000) != 0 || !v154)
        {
          v19 = (*(*(a1 + 64) + 80))(*(a1 + 48), *(a1 + 56), "mertfrq_latn", 0, &v154) < 0 || v154 == 0;
          v11 = v19;
          v12 = 1180;
          if (v19)
          {
            v12 = 1184;
          }
        }

        else
        {
          v11 = 0;
          v12 = 1180;
        }

        *(a1 + 992) = v11;
        v20 = *(a1 + v12);
        appended = (*(*(a1 + 72) + 88))(*(a1 + 928), *(a1 + 936), &v163, &v162 + 4);
        if ((appended & 0x80000000) != 0 || (v22 = HIDWORD(v162), appended = (*(*(a1 + 72) + 88))(*(a1 + 944), *(a1 + 952), &v161, &v160), (appended & 0x80000000) != 0) || (v160 >>= 5, v158 = 0, appended = hlp_AppendItemRaw32(a1, &v158, &v157, &v157 + 1, 0x20u, v160 + 10), (appended & 0x80000000) != 0))
        {
          Str = appended;
          v23 = 0;
          goto LABEL_41;
        }

        HIDWORD(v157) = 0;
        if (*v161 == 0x4000)
        {
          LODWORD(v162) = v161[3];
        }

        else
        {
          (*(*(a1 + 72) + 136))(*(a1 + 928), *(a1 + 936), &v162);
        }

        v135 = v22;
        cstdlib_strcpy(__dst, &unk_26ECDB61A);
        if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "lidon", &__src) & 0x80000000) != 0)
        {
          v140 = 0;
        }

        else
        {
          cstdlib_strcpy(__dst, __src);
          v32 = cstdlib_strcmp(__src, "unknown") == 0;
          if (cstdlib_strlen(__src) == 3)
          {
            v32 = 2;
          }

          if (!cstdlib_strncmp(__src, "vceunkn", 7uLL))
          {
            v32 = 3;
          }

          if (cstdlib_strcmp(__src, "unknown:noautolid"))
          {
            v33 = v32;
          }

          else
          {
            v33 = 4;
          }

          v140 = v33;
        }

        v136 = v20;
        if (v160)
        {
          v34 = 0;
          v35 = 0;
          do
          {
            v36 = &v161[8 * v35];
            v37 = *v36 == 36 && cstdlib_strcmp(*(v36 + 24), "unknownint") && cstdlib_strcmp(*(v36 + 24), "normal") != 0;
            if (*(a1 + 996))
            {
              if (*v36 == 36)
              {
                hlp_SetParamcTAHasUserUnknown(a1, v36, v160 - v34);
                if (!cstdlib_strcmp(*(v36 + 24), "ins_unknown"))
                {
                  cstdlib_strcpy(*(v36 + 24), "unknown");
                }
              }
            }

            v34 = ++v35;
          }

          while (v160 > v35 && !v37);
          if (v160)
          {
            v141 = 0;
            v38 = 0;
            v137 = 0;
            v138 = v140;
            v39 = v140;
            while (1)
            {
              v40 = &v161[8 * v38];
              if (*(a1 + 1004) == 2)
              {
                v41 = *(v40 + 3);
                v42 = v41 != v162;
                if (v41 == v162)
                {
                  v43 = 0;
                }

                else
                {
                  v43 = HIDWORD(v162);
                }
              }

              else
              {
                v42 = 0;
                v43 = 0;
              }

              v44 = *v40;
              if (v140 && v44 == 36)
              {
                if (!cstdlib_strcmp(v40[3], "unknown"))
                {
                  v39 = 1;
                }

                if (cstdlib_strlen(v40[3]) == 3)
                {
                  v39 = 2;
                }

                if (!cstdlib_strncmp(v40[3], "vceunkn", 7uLL))
                {
                  v39 = 3;
                }

                if (!cstdlib_strcmp(v40[3], "unknown:noautolid"))
                {
                  v39 = 4;
                }

                cstdlib_strcpy(__dst, v40[3]);
                v44 = *v40;
                v138 = v39;
              }

              if (v44 == 36 && *(a1 + 1188) && (!cstdlib_strcmp(v40[3], "normal") || !cstdlib_strcmp(v40[3], "normal:noautolid")))
              {
                *(a1 + 1192) = *(a1 + 1144);
                cstdlib_memcpy((a1 + 1196), *(a1 + 1912), 4uLL);
              }

              if (*v40 != 36 || (cstdlib_strcmp(v40[3], "unknownint") != 0 || v37) && cstdlib_strcmp(v40[3], "unknown") && cstdlib_strcmp(v40[3], "unknown:noautolid") && cstdlib_strncmp(v40[3], "vceunkn", 7uLL) && cstdlib_strcmp(v40[3], "unknownmem"))
              {
                __s1 = v39;
                v45 = 0;
                v46 = 0;
                if (!v42)
                {
                  goto LABEL_145;
                }
              }

              else
              {
                *(a1 + 1920) = 0;
                if (!cstdlib_strcmp(v40[3], "unknownmem"))
                {
                  *(a1 + 1920) = 1;
                }

                if (!cstdlib_strncmp(v40[3], "vceunkn", 7uLL))
                {
                  *(a1 + 1008) = 0;
                }

                v47 = *(v40 + 3);
                v46 = v47 - v162;
                v43 = HIDWORD(v162) - (v47 - v162);
                v48 = v38;
                while (v160 > ++v48)
                {
                  v49 = v161[8 * v48];
                  if (v49 == 36 || v49 == 7)
                  {
                    __s1 = 0;
                    v43 = v161[8 * v48 + 3] - v47;
                    goto LABEL_127;
                  }
                }

                __s1 = 0;
LABEL_127:
                v45 = 1;
              }

              if (v43)
              {
                if (cstdlib_strncmp(v40[3], "vceunkn", 7uLL))
                {
                  v51 = 0;
                  v52 = 0;
                }

                else
                {
                  __s = 0;
                  Str = paramc_ParamGetStr(*(*(a1 + 16) + 40), "lidlanguages", &__s);
                  if (__s && *__s)
                  {
                    v53 = *(*(a1 + 16) + 8);
                    v54 = cstdlib_strlen(__s);
                    v55 = heap_Alloc(v53, (v54 + 1));
                    if (!v55)
                    {
                      goto LABEL_331;
                    }

                    v52 = v55;
                    cstdlib_strcpy(v55, __s);
                  }

                  else
                  {
                    v52 = 0;
                  }

                  if ((Str & 0x80000000) == 0)
                  {
                    v56 = paramc_ParamSetStr(*(*(a1 + 16) + 40), "lidlanguages", 0);
                    if ((v56 & 0x80000000) != 0)
                    {
                      Str = v56;
                      if (v52)
                      {
                        heap_Free(*(*(a1 + 16) + 8), v52);
                      }

LABEL_331:
                      v23 = v137;
LABEL_41:
                      v24 = 0;
LABEL_42:
                      v25 = HIDWORD(v155);
                      if (HIDWORD(v155))
                      {
                        v26 = 0;
                        do
                        {
                          v27 = *(v158 + 32 * v156[v26] + 24);
                          if (v27)
                          {
                            heap_Free(*(*(a1 + 16) + 8), v27);
                            v25 = HIDWORD(v155);
                          }

                          ++v26;
                        }

                        while (v26 < v25);
                      }

                      if (v23)
                      {
                        v28 = *(v23 + 24);
                        if (v28)
                        {
                          heap_Free(*(*(a1 + 16) + 8), v28);
                        }
                      }

                      if (v158)
                      {
                        heap_Free(*(*(a1 + 16) + 8), v158);
                      }

                      if (v156)
                      {
                        heap_Free(*(*(a1 + 16) + 8), v156);
                      }

                      if (v24)
                      {
                        v29 = *(*(a1 + 16) + 8);
                        v30 = v24;
                        goto LABEL_59;
                      }

                      return Str;
                    }
                  }

                  v57 = v40[3];
                  v51 = &v57[cstdlib_strlen("vceunkn")];
                }

                if (!cstdlib_strcmp(v40[3], "unknown:noautolid"))
                {
                  v58 = v40[3];
                  v51 = &v58[cstdlib_strlen("unknown")];
                }

                v59 = lid_Identify(a1, v163 + v46, v43);
                if ((v59 & 0x80000000) != 0)
                {
                  Str = v59;
                  if (v52)
                  {
                    heap_Free(*(*(a1 + 16) + 8), v52);
                  }

                  goto LABEL_321;
                }

                v60 = hlp_AppendLidResultAsMarkers(a1, &v158, &v157, &v157 + 1, &v156, &v155, &v155 + 1, v162 + v46, v51);
                if ((v60 & 0x80000000) != 0)
                {
                  Str = v60;
                  v23 = v137;
                  if (v52)
                  {
                    heap_Free(*(*(a1 + 16) + 8), v52);
                  }

                  goto LABEL_41;
                }

                if (v52)
                {
                  Str = paramc_ParamSetStr(*(*(a1 + 16) + 40), "lidlanguages", v52);
                  heap_Free(*(*(a1 + 16) + 8), v52);
                  if ((Str & 0x80000000) != 0)
                  {
                    goto LABEL_321;
                  }
                }
              }

LABEL_145:
              if (v45)
              {
                goto LABEL_165;
              }

              v61 = hlp_AppendItemRaw32(a1, &v158, &v157, &v157 + 1, 0x20u, 10);
              if ((v61 & 0x80000000) != 0)
              {
                goto LABEL_318;
              }

              v62 = HIDWORD(v157) - 1;
              if (SHIDWORD(v157) > 1)
              {
                v63 = 0;
                v64 = HIDWORD(v157) - 2;
                while (*(v158 + 32 * v64 + 12) > *(v40 + 3))
                {
                  ++v63;
                  v65 = v64-- <= 0;
                  if (v65)
                  {
                    v64 = -1;
                    goto LABEL_155;
                  }
                }

                LOWORD(v62) = v63;
LABEL_155:
                v66 = (v64 + 1);
                if (v62)
                {
                  cstdlib_memmove((v158 + 32 * v66 + 32), (v158 + 32 * v66), 32 * v62);
                  v67 = HIDWORD(v155);
                  if (HIDWORD(v155))
                  {
                    v68 = v156;
                    do
                    {
                      if (*v68 >= v66)
                      {
                        ++*v68;
                      }

                      ++v68;
                      --v67;
                    }

                    while (v67);
                  }

                  goto LABEL_164;
                }

                v62 = v64 + 1;
              }

              v66 = v62;
LABEL_164:
              cstdlib_memcpy((v158 + 32 * v66), v40, 0x20uLL);
LABEL_165:
              v39 = __s1;
              v69 = *v40 == 0x4000 && (__s1 & 0xFFFFFFFD) == 1;
              if (v69 && v160 - 1 > v141 && *(v40 + 8) != 36)
              {
                v70 = *(v40 + 3);
                v71 = v70 - v162;
                v72 = HIDWORD(v162) - (v70 - v162);
                v73 = v38;
                while (v160 > ++v73)
                {
                  v74 = v161[8 * v73];
                  if (v74 == 36 || v74 == 7)
                  {
                    v72 = v161[8 * v73 + 3] - v70;
                    break;
                  }
                }

                if (v72)
                {
                  v61 = lid_Identify(a1, v163 + v71, v72);
                  if ((v61 & 0x80000000) != 0 || (v61 = hlp_AppendLidResultAsMarkers(a1, &v158, &v157, &v157 + 1, &v156, &v155, &v155 + 1, v162 + v71, 0), (v61 & 0x80000000) != 0))
                  {
LABEL_318:
                    Str = v61;
LABEL_321:
                    v24 = 0;
                    goto LABEL_322;
                  }
                }

                goto LABEL_209;
              }

              if (*v40 != 0x4000 || __s1 != 2)
              {
                goto LABEL_210;
              }

              if (v160 - 1 > v141 && *(v40 + 8) != 36)
              {
                Str = hlp_AppendItemRaw32(a1, &v158, &v157, &v157 + 1, 0x20u, 10);
                if ((Str & 0x80000000) != 0)
                {
                  goto LABEL_321;
                }

                v76 = HIDWORD(v157) - 1;
                if (SHIDWORD(v157) > 1)
                {
                  v77 = 0;
                  v78 = HIDWORD(v157) - 2;
                  while (*(v158 + 32 * v78 + 12) > *(v40 + 3))
                  {
                    ++v77;
                    v65 = v78-- <= 0;
                    if (v65)
                    {
                      v78 = -1;
                      goto LABEL_198;
                    }
                  }

                  LOWORD(v76) = v77;
LABEL_198:
                  v79 = (v78 + 1);
                  if (v76)
                  {
                    cstdlib_memmove((v158 + 32 * v79 + 32), (v158 + 32 * v79), 32 * v76);
                    v80 = HIDWORD(v155);
                    if (HIDWORD(v155))
                    {
                      v81 = v156;
                      do
                      {
                        if (*v81 >= v79)
                        {
                          ++*v81;
                        }

                        ++v81;
                        --v80;
                      }

                      while (v80);
                    }

LABEL_207:
                    v82 = v158 + 32 * v79;
                    v83 = *(v82 - 16);
                    *v82 = *(v82 - 32);
                    *(v82 + 16) = v83;
                    *v82 = 36;
                    v84 = *(*(a1 + 16) + 8);
                    v85 = cstdlib_strlen("unknown");
                    v86 = heap_Alloc(v84, (v85 + 1));
                    v137 = v82;
                    *(v82 + 24) = v86;
                    if (!v86)
                    {
                      goto LABEL_321;
                    }

                    cstdlib_strcpy(v86, __dst);
LABEL_209:
                    v39 = 0;
                    goto LABEL_210;
                  }

                  v76 = v78 + 1;
                }

                v79 = v76;
                goto LABEL_207;
              }

              v39 = 2;
LABEL_210:
              v141 = ++v38;
              if (v160 <= v38)
              {
                goto LABEL_213;
              }
            }
          }
        }

        v137 = 0;
        v138 = v140;
LABEL_213:
        if (v138 > 2)
        {
          v87 = v136;
          if (v138 == 3)
          {
            v88 = "vceunkn";
          }

          else
          {
            v88 = "unknown:noautolid";
          }
        }

        else
        {
          v87 = v136;
          if (v138 == 1)
          {
            v88 = "unknown";
          }

          else if (v138 == 2)
          {
            v88 = __dst;
          }

          else
          {
            v88 = &unk_26ECDB61A;
          }
        }

        paramc_ParamSetStr(*(*(a1 + 16) + 40), "lidon", v88);
        v94 = HIDWORD(v157);
        if (HIDWORD(v157))
        {
          v95 = 0;
          v24 = 0;
          v96 = 0;
          v97 = 0;
          v98 = 0;
          __s1a = "normal";
          while (1)
          {
            v99 = (v158 + 32 * v98);
            v100 = *v99;
            if (*v99 == 21)
            {
              goto LABEL_297;
            }

            if (v100 == 34)
            {
              v96 = 1;
              goto LABEL_298;
            }

            if (v100 == 36)
            {
              if (cstdlib_strcmp(v99[3], "unknown") && cstdlib_strcmp(*(v158 + 32 * v98 + 24), "unknown:noautolid") && cstdlib_strcmp(*(v158 + 32 * v98 + 24), "unknownint") && cstdlib_strncmp(*(v158 + 32 * v98 + 24), "vceunkn", 7uLL) && cstdlib_strcmp(*(v158 + 32 * v98 + 24), "unknownmem"))
              {
                v97 = 0;
                __s1a = *(v158 + 32 * v98++ + 24);
              }

              else
              {
                HIDWORD(v157) = --v94;
                if (v94 > v95)
                {
                  cstdlib_memmove((v158 + 32 * v98), (v158 + 32 * v98 + 32), 32 * (v94 - v95));
                  v104 = HIDWORD(v155);
                  if (HIDWORD(v155))
                  {
                    v105 = v156;
                    do
                    {
                      if (*v105 > v95)
                      {
                        --*v105;
                      }

                      ++v105;
                      --v104;
                    }

                    while (v104);
                  }
                }
              }

              goto LABEL_299;
            }

            if (v100 == 1 && v87 != 0)
            {
              break;
            }

LABEL_298:
            ++v98;
            v94 = HIDWORD(v157);
LABEL_299:
            v95 = v98;
            if (v94 <= v98)
            {
              goto LABEL_302;
            }
          }

          if (v96)
          {
            v102 = 0;
            v103 = 1;
          }

          else
          {
            v139 = v97;
            v142 = v24;
            v106 = v162;
            v107 = *(*(a1 + 16) + 8);
            v108 = v163;
            v109 = *(v99 + 3);
            v110 = *(v99 + 4);
            v111 = heap_Alloc(v107, (v110 + 1));
            if (v111)
            {
              v112 = v111;
              v134 = v109 - v106;
              cstdlib_strncpy(v111, &v108[v109 - v106], v110);
              v112[v110] = 0;
              CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v112, 0);
              v114 = CurrentUtf8Offset + v110;
              if (CurrentUtf8Offset < CurrentUtf8Offset + v110)
              {
                NextUtf8Offset = CurrentUtf8Offset;
                while (!utf8_BelongsToSet(6, v112, NextUtf8Offset, v110))
                {
                  NextUtf8Offset = utf8_GetNextUtf8Offset(v112, NextUtf8Offset);
                  if (NextUtf8Offset >= v114)
                  {
                    goto LABEL_265;
                  }
                }

                heap_Free(v107, v112);
                v122 = heap_Realloc(*(*(a1 + 16) + 8), v142, (*(v158 + 32 * v98 + 16) + 7));
                if (!v122)
                {
                  log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
                  return 2345672714;
                }

                v24 = v122;
                cstdlib_strcpy(v122, "mlnum_");
                v87 = v136;
                v96 = 0;
                if (*(v158 + 32 * v98 + 16))
                {
                  v123 = 0;
                  LOWORD(v124) = 0;
                  while (1)
                  {
                    v125 = *(v163 + (v123 + v134));
                    if (v125 == 255)
                    {
                      break;
                    }

                    *(v24 + 6 + v124) = v125;
                    LOWORD(v124) = v124 + 1;
                    v123 = v124;
                    if (*(v158 + 32 * v98 + 16) <= v124)
                    {
                      v124 = v124;
                      goto LABEL_287;
                    }
                  }

                  v102 = 1;
                }

                else
                {
                  v124 = 0;
LABEL_287:
                  __s = 0;
                  v151 = 0;
                  if (*(a1 + 992))
                  {
                    v126 = 1;
                  }

                  else
                  {
                    v126 = -1;
                  }

                  v152 = v126;
                  *(v24 + v124 + 6) = 0;
                  v116 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", v24, &__s, &v152, &v151);
                  v102 = v152 == 0;
                  if ((v116 & 0x80000000) != 0)
                  {
                    goto LABEL_317;
                  }
                }

                v97 = v139;
                v103 = !v102;
                if (v102 && !v139)
                {
                  v97 = 1;
                  if (cstdlib_strcmp(__s1a, "normal"))
                  {
                    v103 = 0;
LABEL_270:
                    v116 = hlp_AppendItemRaw32(a1, &v158, &v157, &v157 + 1, 0x20u, 10);
                    if ((v116 & 0x80000000) != 0)
                    {
                      goto LABEL_317;
                    }

                    cstdlib_memmove((v158 + 32 * v98 + 32), (v158 + 32 * v98), 32 * (HIDWORD(v157) + ~v95));
                    v117 = HIDWORD(v155);
                    if (HIDWORD(v155))
                    {
                      v118 = v156;
                      do
                      {
                        if (*v118 >= v95)
                        {
                          ++*v118;
                        }

                        ++v118;
                        --v117;
                      }

                      while (v117);
                    }

                    v119 = v158 + 32 * v98;
                    *v119 = 36;
                    v120 = __s1a;
                    if (!v103)
                    {
                      v120 = "normal";
                    }

                    *(v119 + 24) = v120;
                    v121 = v158 + 32 * v98;
                    *(v121 + 4) = 0;
                    *(v121 + 8) = 0;
                    *(v121 + 12) = *(v121 + 44);
                    ++v98;
                    goto LABEL_298;
                  }

LABEL_297:
                  v96 = 0;
                  goto LABEL_298;
                }

                goto LABEL_267;
              }

LABEL_265:
              heap_Free(v107, v112);
            }

            v102 = 0;
            v103 = 1;
            v87 = v136;
            v24 = v142;
            v97 = v139;
            v96 = 0;
          }

LABEL_267:
          if (!v97 || v102)
          {
            v97 = v102;
          }

          else
          {
            v97 = 0;
            if (cstdlib_strcmp(__s1a, "normal"))
            {
              goto LABEL_270;
            }
          }

          goto LABEL_298;
        }

        v24 = 0;
LABEL_302:
        v116 = lidword_Identify(a1, v163, HIDWORD(v162), &v158, &v157, &v157 + 1, &v156, &v155, &v155 + 1);
        if ((v116 & 0x80000000) != 0)
        {
LABEL_317:
          Str = v116;
LABEL_322:
          v23 = v137;
          goto LABEL_42;
        }

        v127 = HIDWORD(v157);
        v23 = v137;
        if (HIDWORD(v157))
        {
          v128 = 0;
          do
          {
            v129 = v158 + 32 * v128;
            if (*v129 == 36)
            {
              v130 = cstdlib_strstr(*(v129 + 24), ":noautolid");
              if (v130)
              {
                *v130 = 0;
              }
            }

            ++v128;
            v127 = HIDWORD(v157);
          }

          while (HIDWORD(v157) > v128);
        }

        if (v135)
        {
          v131 = (*(*(a1 + 72) + 104))(*(a1 + 960), *(a1 + 968), v163);
          if ((v131 & 0x80000000) != 0)
          {
LABEL_316:
            Str = v131;
            goto LABEL_42;
          }

          v127 = HIDWORD(v157);
        }

        v131 = (*(*(a1 + 72) + 104))(*(a1 + 976), *(a1 + 984), v158, (32 * v127));
        if ((v131 & 0x80000000) == 0)
        {
          if (!HIDWORD(v162) || (v131 = (*(*(a1 + 72) + 96))(*(a1 + 928), *(a1 + 936)), (v131 & 0x80000000) == 0))
          {
            v131 = (*(*(a1 + 72) + 96))(*(a1 + 944), *(a1 + 952), 32 * v160);
          }
        }

        goto LABEL_316;
      }

      v13 = v149;
      if (!v149)
      {
        *a5 = 0;
        goto LABEL_57;
      }

      if (!HIDWORD(v149))
      {
        goto LABEL_25;
      }

      InputOutputMarkers = hlp_GetInputOutputMarkers(a1, &v148, &v147, &v146 + 1, &v146, &v145);
      if ((InputOutputMarkers & 0x80000000) != 0)
      {
        Str = InputOutputMarkers;
      }

      else
      {
        if (!v149 && *(a1 + 1004) == 1 && v146)
        {
          v89 = v146 - 1;
          v90 = v146 - 1;
          v91 = "unknown";
          while (1)
          {
            v92 = v147 + 32 * v89;
            if (*v92 == 36)
            {
              if (!cstdlib_strcmp(*(v92 + 24), "unknown"))
              {
                goto LABEL_328;
              }

              if (!cstdlib_strcmp(*(v147 + 32 * v89 + 24), "unknown:noautolid"))
              {
                v91 = "unknown:noautolid";
                goto LABEL_328;
              }

              if (!cstdlib_strncmp(*(v147 + 32 * v89 + 24), "vceunkn", 7uLL))
              {
                v91 = "vceunkn";
                goto LABEL_328;
              }

              if (!cstdlib_strcmp(*(v147 + 32 * v89 + 24), "normal"))
              {
                break;
              }
            }

            --v89;
            if (!v90--)
            {
              goto LABEL_15;
            }
          }

          v91 = "normal";
LABEL_328:
          v132 = v147 + 32 * v89;
          v133 = *(v132 + 16);
          *(a1 + 1816) = *v132;
          *(a1 + 1832) = v133;
          *(a1 + 1840) = v91;
        }

LABEL_15:
        v15 = HIDWORD(v146);
        if (*(a1 + 996))
        {
          v16 = HIDWORD(v146) == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          v17 = 0;
          v18 = 0;
          do
          {
            hlp_SetParamcTAHasUserUnknown(a1, &v148[4 * v18++], v15 - v17);
            v17 = v18;
            v15 = HIDWORD(v146);
          }

          while (HIDWORD(v146) > v18);
        }

        Str = (*(*(a1 + 72) + 120))(*(a1 + 976), *(a1 + 984), (32 * v146));
        v147 = 0;
        if ((Str & 0x80000000) != 0)
        {
          goto LABEL_57;
        }

        if (!HIDWORD(v146) || (Str = (*(*(a1 + 72) + 96))(*(a1 + 944), *(a1 + 952), (32 * HIDWORD(v146))), (Str & 0x80000000) == 0))
        {
          v13 = v149;
LABEL_25:
          if (v13)
          {
            Str = synstrmaux_CloseOutStreamsOnly((a1 + 104), *(a1 + 72));
          }

          goto LABEL_57;
        }
      }

      if (v147)
      {
        (*(*(a1 + 72) + 120))(*(a1 + 976), *(a1 + 984), 0);
      }

LABEL_57:
      v30 = v145;
      if (v145)
      {
        v29 = *(*(a1 + 16) + 8);
LABEL_59:
        heap_Free(v29, v30);
      }
    }
  }

  return Str;
}

uint64_t hlp_GetInputOutputMarkers(uint64_t a1, const char ***a2, uint64_t *a3, unsigned int *a4, unsigned int *a5, void *a6)
{
  v44 = *MEMORY[0x277D85DE8];
  __src = 0;
  *a5 = 0;
  *a4 = 0;
  v12 = (*(*(a1 + 72) + 88))(*(a1 + 944), *(a1 + 952), a2);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  *a4 >>= 5;
  cstdlib_strcpy(__dst, &unk_26ECDB61A);
  if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "lidon", &__src) & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  cstdlib_strcpy(__dst, __src);
  v13 = cstdlib_strcmp(__src, "unknown");
  v14 = cstdlib_strlen(__src);
  v15 = cstdlib_strncmp(__src, "vceunkn", 7uLL);
  if (!cstdlib_strcmp(__src, "unknown:noautolid"))
  {
    v17 = 4;
    goto LABEL_13;
  }

  v16 = v13 == 0;
  if (v14 == 3)
  {
    v16 = 2;
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 3;
  }

  if (v17)
  {
LABEL_13:
    if (*a4 < 2)
    {
      goto LABEL_31;
    }

    v19 = *a2;
    if (**a2 != 0x4000 || *(v19 + 8) != 36)
    {
      goto LABEL_31;
    }

    if (cstdlib_strcmp(v19[7], "unknown"))
    {
      if (!cstdlib_strcmp((*a2)[7], "vceunkn"))
      {
        goto LABEL_28;
      }

      v20 = cstdlib_strcmp((*a2)[7], "unknown:noautolid");
      v21 = *(*(a1 + 16) + 40);
      if (!v20)
      {
LABEL_26:
        v22 = "unknown:noautolid";
LABEL_29:
        paramc_ParamSetStr(v21, "lidon", v22);
        goto LABEL_30;
      }

      paramc_ParamSetStr(v21, "lidon", __src);
      if (*(*a2 + 16) != 36)
      {
LABEL_30:
        v17 = 0;
        goto LABEL_31;
      }

      if (cstdlib_strcmp((*a2)[11], "unknown"))
      {
        if (*(*a2 + 16) == 36)
        {
          if (cstdlib_strncmp((*a2)[11], "vceunkn", 7uLL))
          {
            if (*(*a2 + 16) != 36 || cstdlib_strcmp((*a2)[11], "unknown:noautolid"))
            {
              goto LABEL_30;
            }

            v21 = *(*(a1 + 16) + 40);
            goto LABEL_26;
          }

LABEL_28:
          v21 = *(*(a1 + 16) + 40);
          v22 = "vceunkn";
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    v21 = *(*(a1 + 16) + 40);
    v22 = "unknown";
    goto LABEL_29;
  }

LABEL_31:
  v18 = (*(*(a1 + 72) + 112))(*(a1 + 976), *(a1 + 984), a3, 32 * *a4 + 160);
  if ((v18 & 0x80000000) == 0)
  {
    v23 = *a4;
    if (v23)
    {
      if (*(a1 + 1816) == 36)
      {
        v24 = *a2;
        if (**a2 == 0x4000)
        {
          v25 = *a3;
          v26 = *(v24 + 1);
          *v25 = *v24;
          v25[1] = v26;
          v27 = *a3;
          *(v27 + 8) = *(a1 + 1816);
          *(v27 + 7) = *(a1 + 1840);
          *(*a3 + 44) = *(*a2 + 3);
          cstdlib_memset((a1 + 1816), 0, 0x20uLL);
          v28 = *a4;
          if (*a4 >= 2)
          {
            cstdlib_memcpy((*a3 + 64), *a2 + 4, 32 * (v28 - 1));
            v28 = *a4;
          }

          v29 = v28 + 1;
          goto LABEL_47;
        }
      }

      v30 = *a3;
      v31 = *a2;
      if (v17 == 2)
      {
        v34 = *(v31 + 1);
        *v30 = *v31;
        v30[1] = v34;
        *(*a3 + 32) = 36;
        v35 = *(*(a1 + 16) + 8);
        v36 = cstdlib_strlen("unknown");
        *(*a3 + 56) = heap_Alloc(v35, (v36 + 1));
        v37 = *(*a3 + 56);
        if (!v37)
        {
          return 2345672714;
        }

        cstdlib_strcpy(v37, __src);
        *a6 = *(*a3 + 56);
      }

      else
      {
        if (v17 != 1)
        {
          cstdlib_memcpy(v30, v31, 32 * v23);
          v29 = *a4;
LABEL_47:
          *a5 = v29;
          return v18;
        }

        v32 = *(v31 + 1);
        *v30 = *v31;
        v30[1] = v32;
        v33 = *a3;
        *(v33 + 32) = 36;
        *(v33 + 56) = "unknown";
      }

      v38 = *a2;
      v39 = *a3;
      *(*a3 + 44) = *(*a2 + 3);
      v40 = *a4;
      if (*a4 >= 2)
      {
        cstdlib_memcpy((v39 + 64), v38 + 4, 32 * (v40 - 1));
        v40 = *a4;
      }

      v29 = v40 + 1;
      goto LABEL_47;
    }
  }

  return v18;
}

uint64_t hlp_SetParamcTAHasUserUnknown(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(result + 996))
  {
    if (*a2 == 36 && a3 != 0)
    {
      v6 = result;
      v7 = 0;
      while (1)
      {
        v8 = a2 + 32 * v7;
        if (*(a2 + 12) == *(v8 + 12) && *v8 == 36)
        {
          if (!cstdlib_strcmp(*(v8 + 24), "unknown"))
          {
            break;
          }

          result = cstdlib_strcmp(*(v8 + 24), "unknown:noautolid");
          if (!result)
          {
            break;
          }
        }

        if (a3 <= ++v7)
        {
          return result;
        }
      }

      if (!cstdlib_strcmp(*(a2 + 24), "ins_unknown"))
      {
        cstdlib_strcpy(*(a2 + 24), *(v8 + 24));
      }

      v9 = *(*(v6 + 16) + 40);

      return paramc_ParamSetStr(v9, "hasuserunknowninserted", "yes");
    }
  }

  return result;
}

uint64_t fe_lid_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62400, 136040) & 0x80000000) != 0)
  {
    return 2345672712;
  }

  if (*(a1 + 996) == 1)
  {
    *(a1 + 996) = 0;
  }

  v3 = *(a1 + 72);

  return synstrmaux_CloseStreams((a1 + 104), v3);
}

char *AdjustLanguageGroupMappingLID2(char *result, char *__s1)
{
  if (*result)
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = cstdlib_strstr(__s1, (*(v3 + 2) + v4));
      if (!result)
      {
        cstdlib_strcpy(__dst, (*(v3 + 2) + v4));
        __dst[2] = 0;
        result = cstdlib_strstr(__s1, __dst);
        if (result)
        {
          if (result == __s1 || *(result - 1) == 44)
          {
            result = cstdlib_strncpy((*(v3 + 2) + v4), result, 3uLL);
          }
        }
      }

      ++v5;
      v4 += 8;
    }

    while (v5 < *v3);
  }

  return result;
}

uint64_t fe_lid_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2345672705;
  }

  result = 0;
  *a2 = &IFeLid;
  return result;
}

uint64_t hlp_FillDicLMLanguages(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7, __int16 a8)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = a8;
  v12 = (*(a5 + 96))(a3, a4, "lidcfg", "languages", &__c[3], &__c[1], __c);
  if ((v12 & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v13 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v13)
      {
        *v13 = 0;
      }

      *(a2 + 2) = 1;
      for (i = **&__c[3]; ; i = v15 + 1)
      {
        v15 = cstdlib_strchr(i, 44);
        if (!v15)
        {
          break;
        }

        ++*(a2 + 2);
      }

      v16 = heap_Calloc(*(a1 + 8), *(a2 + 2), 24);
      *(a2 + 8) = v16;
      if (v16)
      {
        v17 = **&__c[3];
        v18 = cstdlib_strchr(**&__c[3], 44);
        v19 = v18;
        if (v18)
        {
          *v18 = 0;
        }

        if (*(a2 + 2))
        {
          v20 = 0;
          while (1)
          {
            cstdlib_strcpy((*(a2 + 8) + 24 * v20), v17);
            cstdlib_strcpy((*(a2 + 8) + 24 * v20 + 8), v17);
            *(*(a2 + 8) + 24 * v20 + 16) = 0;
            cstdlib_strcpy(__dst, v17);
            __dst[2] = 0;
            if (!a7)
            {
              goto LABEL_17;
            }

            v21 = cstdlib_strstr(a7, __dst);
            v22 = v21;
            if (v21)
            {
              if (v21 != a7)
              {
                break;
              }
            }

LABEL_18:
            if (!a6 || v22 || (v23 = cstdlib_strstr(a6, __dst), (v22 = v23) == 0) || v23 == a6)
            {
              if (!v22)
              {
LABEL_25:
                v24 = 4;
                v25 = &FE_LID_LANG_2_LANG_GROUP;
                while (cstdlib_strcmp(v25 + 4, v17))
                {
                  v25 += 8;
                  if (!--v24)
                  {
                    goto LABEL_32;
                  }
                }

                v22 = cstdlib_strstr(a6, v25);
                if (v22)
                {
                  goto LABEL_30;
                }

LABEL_32:
                *(*(a2 + 8) + 24 * v20 + 20) = 0;
                if (!v19)
                {
                  goto LABEL_35;
                }

LABEL_33:
                v17 = v19 + 1;
                v27 = cstdlib_strchr(v19 + 1, 44);
                v19 = v27;
                if (v27)
                {
                  *v27 = 0;
                }

                goto LABEL_35;
              }
            }

            else if (*(v23 - 1) != 44)
            {
              goto LABEL_25;
            }

LABEL_30:
            v26 = *(a2 + 8) + 24 * v20;
            *(v26 + 20) = 1;
            cstdlib_strncpy((v26 + 8), v22, 3uLL);
            if (v19)
            {
              goto LABEL_33;
            }

LABEL_35:
            if (++v20 >= *(a2 + 2))
            {
              return v12;
            }
          }

          if (*(v21 - 1) == 44)
          {
            goto LABEL_30;
          }

LABEL_17:
          v22 = 0;
          goto LABEL_18;
        }
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_LID", 48000, 0);
        return 2345672714;
      }
    }

    else
    {
      *(a2 + 2) = 0;
      *(a2 + 8) = 0;
    }
  }

  return v12;
}

uint64_t hlp_FindModelLng(uint64_t a1, char *__s1, int a3)
{
  if (!a3)
  {
    if (*(a1 + 1018))
    {
      v8 = 0;
      v6 = 0;
      v7 = (a1 + 1024);
      while (cstdlib_strcmp(__s1, (*v7 + v8)))
      {
        ++v6;
        v8 += 24;
        if (v6 >= *(a1 + 1018))
        {
          return 0;
        }
      }

      return *v7 + 24 * v6;
    }

    return 0;
  }

  if (!*(a1 + 1066))
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = (a1 + 1072);
  while (cstdlib_strcmp(__s1, (*v7 + v5)))
  {
    ++v6;
    v5 += 24;
    if (v6 >= *(a1 + 1066))
    {
      return 0;
    }
  }

  return *v7 + 24 * v6;
}

uint64_t hlp_SetActiveLngs(uint64_t a1, char *__s)
{
  *__src = 0;
  v4 = *(a1 + 1120);
  if (v4)
  {
    heap_Free(*(*(a1 + 16) + 8), v4);
    *(a1 + 1120) = 0;
    *(a1 + 1112) = 0;
  }

  if (!__s || !*__s)
  {
    return 0;
  }

  if (cstdlib_strlen(__s))
  {
    v5 = 0;
    v6 = 1;
    LODWORD(v7) = 1;
    do
    {
      if (__s[v5] == 44)
      {
        v7 = (v7 + 1);
      }

      else
      {
        v7 = v7;
      }

      v5 = v6;
    }

    while (cstdlib_strlen(__s) > v6++);
  }

  else
  {
    v7 = 1;
  }

  v9 = heap_Calloc(*(*(a1 + 16) + 8), v7, 16);
  *(a1 + 1120) = v9;
  if (v9)
  {
    cstdlib_strlen(__s);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    for (i = 1; ; ++i)
    {
      v14 = __s[v10];
      if (v14 != 44 && v14 != 0)
      {
        if (v11 > 2)
        {
          v12 = 1;
        }

        else
        {
          __src[v11 + 4] = ssft_tolower(v14);
        }

        ++v11;
        goto LABEL_37;
      }

      if (v11 == 3)
      {
        break;
      }

      v11 = 0;
      v12 = 1;
LABEL_37:
      v10 = i;
      if (cstdlib_strlen(__s) < i)
      {
        if (v12)
        {
          log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48005, "%s%s", "languageCodeList", __s);
        }

        return 0;
      }
    }

    lid_make_language_group(__src, &__src[4]);
    ModelLng = hlp_FindModelLng(a1, &__src[4], 1);
    if (ModelLng || (ModelLng = hlp_FindModelLng(a1, __src, 1)) != 0)
    {
      if (*(ModelLng + 16) || *(ModelLng + 20))
      {
LABEL_36:
        cstdlib_strcpy((*(a1 + 1120) + 16 * *(a1 + 1112)), &__src[4]);
        cstdlib_strcpy((*(a1 + 1120) + 16 * *(a1 + 1112) + 8), __src);
        v11 = 0;
        ++*(a1 + 1112);
        goto LABEL_37;
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    v18 = hlp_FindModelLng(a1, &__src[4], 0);
    if (!v18)
    {
      v18 = hlp_FindModelLng(a1, __src, 0);
      if (!v18)
      {
        if ((v17 & 1) == 0)
        {
          log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Language %s cannot be added to the language identifier active languages: not supported by the Vocalizer models", &__src[4]);
        }

LABEL_41:
        v11 = 0;
        goto LABEL_37;
      }
    }

    if (!*(v18 + 16) && !*(v18 + 20))
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
  return 2345672714;
}

uint64_t hlp_AppendLidResultAsMarkers(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5, unsigned int *a6, unsigned int *a7, int a8, const char *a9)
{
  v81 = *MEMORY[0x277D85DE8];
  v72 = *(a1 + 1890);
  if (!*(a1 + 1890))
  {
    return 0;
  }

  v9 = a5;
  v10 = a4;
  v12 = 0;
  v66 = (a1 + 1128);
  v67 = (a1 + 1140);
  while (2)
  {
    v13 = *(a1 + 1008);
    v14 = *(a1 + 1896) + 56 * v12;
    v15 = *(v14 + 10);
    v73 = v12;
    v74 = v14;
    v16 = *(v14 + 16);
    v80 = 0;
    v79 = 0u;
    memset(v78, 0, sizeof(v78));
    memset(__b, 0, sizeof(__b));
    __src = 0;
    result = paramc_ParamGetStr(*(*(a1 + 16) + 40), "lidoriginalvoice", &__src);
    if ((result & 0x80000000) != 0)
    {
      result = 0;
      __src = 0;
      if (!v15)
      {
        goto LABEL_49;
      }
    }

    else if (!v15)
    {
      goto LABEL_49;
    }

    v70 = result;
    v18 = 0;
    while (1)
    {
      v19 = *(v16 + 32 * v18);
      if (v18 && *(a1 + 1200))
      {
        if (LH_stricmp(*(v16 + 32 * v18), *(a1 + 1912)))
        {
          goto LABEL_46;
        }
      }

      else
      {
        ModelLng = hlp_FindModelLng(a1, *(v16 + 32 * v18), 1);
        if (!ModelLng || (v13 || !*(ModelLng + 16)) && (!v13 || !*(ModelLng + 20)))
        {
          v21 = hlp_FindModelLng(a1, v19, 0);
          if (!v21 || (v13 || !*(v21 + 16)) && (!v13 || !*(v21 + 20)))
          {
            goto LABEL_46;
          }
        }
      }

      cstdlib_memset(__b, 0, 0x154uLL);
      v22 = *(v19 + 2);
      if (*(a1 + 1120))
      {
        break;
      }

      if (v13 || !*(a1 + 96))
      {
        goto LABEL_48;
      }

      if (v22 == 120)
      {
        v27 = &v79;
      }

      else
      {
        v27 = v78;
      }

      cstdlib_strcpy(v27, v19);
      if (__src)
      {
        cstdlib_strcpy(&v78[4] + 8, __src);
      }

      if (((*(*(a1 + 96) + 112))(*(a1 + 80), *(a1 + 88), *(*(a1 + 16) + 24), *(*(a1 + 16) + 40), __b) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      cstdlib_strcpy(&v78[4] + 8, &unk_26ECDB61A);
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), *(*(a1 + 16) + 24), *(*(a1 + 16) + 40), __b) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

LABEL_46:
      if (++v18 == v15)
      {
        v9 = a5;
        v10 = a4;
        result = v70;
        goto LABEL_49;
      }
    }

    if (!*(a1 + 1112))
    {
      goto LABEL_46;
    }

    v23 = 0;
    v24 = 0;
    while (1)
    {
      v25 = *(a1 + 1120);
      v26 = (v22 == 120 ? v25 + v23 + 8 : v25 + v23);
      if (!cstdlib_strcmp(v19, v26))
      {
        if (v13 || !*(a1 + 96))
        {
          break;
        }

        cstdlib_strcpy(v78, (*(a1 + 1120) + v23));
        if (__src)
        {
          cstdlib_strcpy(&v78[4] + 8, __src);
        }

        if (((*(*(a1 + 96) + 112))(*(a1 + 80), *(a1 + 88), *(*(a1 + 16) + 24), *(*(a1 + 16) + 40), __b) & 0x80000000) == 0)
        {
          break;
        }

        cstdlib_strcpy(&v78[4] + 8, &unk_26ECDB61A);
        if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), *(*(a1 + 16) + 24), *(*(a1 + 16) + 40), __b) & 0x80000000) == 0)
        {
          break;
        }
      }

      ++v24;
      v23 += 16;
      if (v24 >= *(a1 + 1112))
      {
        goto LABEL_46;
      }
    }

LABEL_48:
    result = 0;
    LODWORD(v15) = v18;
    v9 = a5;
    v10 = a4;
LABEL_49:
    v28 = v74;
    if (v15 >= *(v74 + 10))
    {
      goto LABEL_82;
    }

    v29 = result;
    v30 = hlp_FindModelLng(a1, *(*(v74 + 16) + 32 * v15), *(a1 + 992));
    v31 = 32 * v15;
    v32 = v66;
    if (*(a1 + 992))
    {
      v33 = *(v74 + 16);
      v34 = *(v33 + 32 * v15 + 8);
      v32 = v67;
      if (v34)
      {
        v35 = v34 / *(v74 + 24);
        v36 = *(a1 + 1148);
        v37 = v36 >= v35;
        v38 = v36 - v35;
        if (!v37)
        {
          v38 = 0;
        }

        *(a1 + 1192) = *(a1 + 1144) + v38;
        cstdlib_memcpy((a1 + 1196), *(v33 + 32 * v15), 4uLL);
        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Setting bias %u: %s", *(a1 + 1192), *(*(v74 + 16) + 32 * v15));
        v32 = v67;
      }
    }

    if (*v32)
    {
      v39 = *(v74 + 26);
      if (*(v74 + 26))
      {
        if (v32[1] > v39)
        {
          break;
        }

        v40 = *(v74 + 30);
        if (v32[2] < v40)
        {
          break;
        }
      }

      else
      {
        v40 = *(v74 + 30);
      }

      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Rejection for message: %u %u, %u %u, %u %u", v15, *(a1 + 1018), v39, *(a1 + 1132), v40, *(a1 + 1136));
      v51 = v73;
      result = v29;
LABEL_85:
      v12 = v51 + 1;
      if (v12 == v72)
      {
        return result;
      }

      continue;
    }

    break;
  }

  result = hlp_AppendItemRaw32(a1, a2, a3, v10, 0x20u, 10);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v41 = *a2 + 32 * (*v10 - 1);
  if (*(a1 + 996) && *(a1 + 1188))
  {
    result = hlp_AppendItemRaw32(a1, a2, a3, v10, 0x20u, 10);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v42 = *a2;
    v43 = *v10;
    v44 = *a2 + 32 * (v43 - 1);
    *v44 = 42;
    v45 = *v74;
    v46 = *(v74 + 4);
    *(v44 + 8) = 0;
    *(v44 + 12) = v45 + a8;
    *(v44 + 16) = v46 - v45;
    LH_utoa(*(a1 + 1192), __s1, 0xAu);
    cstdlib_strcat(__s1, ",");
    cstdlib_strcat(__s1, (a1 + 1196));
    v47 = *(*(a1 + 16) + 8);
    v48 = cstdlib_strlen(__s1);
    v49 = heap_Alloc(v47, (v48 + 1));
    *(v44 + 24) = v49;
    if (!v49)
    {
      return 2345672714;
    }

    v41 = v42 + 32 * (v43 - 2);
    cstdlib_strcpy(v49, __s1);
    v10 = a4;
    v28 = v74;
  }

  v50 = *(*(v28 + 16) + v31);
  v51 = v73;
  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Identified language for segment %u: %s", v73, v50);
  if (!v30)
  {
    v60 = 2345672711;
    v61 = 48001;
LABEL_90:
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", v61, 0);
    return v60;
  }

  v52 = cstdlib_strlen((v30 + 8));
  if (a9)
  {
    v53 = v52 + cstdlib_strlen(a9) + 6;
  }

  else
  {
    v53 = v52 + 5;
  }

  v54 = heap_Alloc(*(*(a1 + 16) + 8), v53);
  if (!v54)
  {
    v61 = 48000;
    v60 = 2345672714;
    goto LABEL_90;
  }

  v55 = v54;
  cstdlib_strcpy(v54, (v30 + 8));
  if (*(a1 + 1008))
  {
    v56 = "_lid";
  }

  else
  {
    v56 = "_vli";
  }

  cstdlib_strcat(v55, v56);
  if (a9)
  {
    cstdlib_strcat(v55, a9);
  }

  *(v41 + 24) = v55;
  *v41 = 36;
  v57 = *v28;
  v58 = *(v28 + 4);
  v59 = *v28 + a8;
  *(v41 + 8) = 0;
  *(v41 + 12) = v59;
  *(v41 + 16) = v58 - v57;
  if (*(a1 + 996) && *(a1 + 1188))
  {
    result = hlp_AppendItemRaw32(a1, v9, a6, a7, 4u, 10);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    *(*v9 + 4 * (*a7 - 1)) = *v10 - 2;
    result = hlp_AppendItemRaw32(a1, v9, a6, a7, 4u, 10);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = 0;
    *(*v9 + 4 * (*a7 - 1)) = *v10 - 1;
LABEL_82:
    v51 = v73;
    goto LABEL_85;
  }

  result = hlp_AppendItemRaw32(a1, v9, a6, a7, 4u, 10);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    *(*v9 + 4 * (*a7 - 1)) = *v10 - 1;
    goto LABEL_85;
  }

  return result;
}

uint64_t fe_lid_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2345672711;
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

uint64_t fe_lid_ObjReopen(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62400, 136040) & 0x80000000) != 0)
  {
    return 2345672712;
  }

  fe_lid_HlpClose(a1);

  return fe_lid_HlpOpen(a1);
}

uint64_t lidmde_ParseStemmingRules(uint64_t a1)
{
  v2 = a1 + 135168;
  v3 = *(a1 + 136016);
  v4 = cstdlib_strchr(v3, 59);
  if (v4)
  {
    v5 = 2;
    do
    {
      v4 = cstdlib_strchr(v4 + 1, 59);
      ++v5;
    }

    while (v4);
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  v7 = 2345672711;
  v8 = heap_Calloc(*(*(a1 + 16) + 8), v6, 8);
  *(v2 + 856) = v8;
  v9 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_16;
  }

  v10 = heap_Calloc(*(v9 + 8), v6, 8);
  *(v2 + 864) = v10;
  if (!v10)
  {
    v9 = *(a1 + 16);
LABEL_16:
    log_OutPublic(*(v9 + 32), "FE_LID", 48000, 0);
    return 2345672714;
  }

  v11 = cstdlib_strchr(v3, 59);
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      *v12 = 0;
      v15 = cstdlib_strchr(v3, 44);
      if (!v15)
      {
        break;
      }

      *v15 = 0;
      v16 = v15 + 1;
      *(*(v2 + 856) + 8 * v14) = v3;
      *(*(v2 + 864) + 8 * v14) = v16;
      v3 = v12 + 1;
      if ((v12 - v16) >= v13)
      {
        v13 = v12 - v16;
      }

      v12 = cstdlib_strchr(v12 + 1, 59);
      ++v14;
      if (!v12)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
LABEL_18:
    v17 = cstdlib_strchr(v3, 44);
    if (v17)
    {
      *v17 = 0;
      v18 = v17 + 1;
      *(*(v2 + 856) + 8 * v14) = v3;
      *(*(v2 + 864) + 8 * v14) = v17 + 1;
      if (cstdlib_strlen(v17 + 1) >= v13)
      {
        v13 = cstdlib_strlen(v18);
      }

      v7 = 0;
      *(v2 + 832) = v13;
      v19 = (v14 + 1);
      *(*(v2 + 856) + 8 * v19) = 0;
      *(*(v2 + 864) + 8 * v19) = 0;
    }
  }

  return v7;
}

uint64_t lidmde_MainLangPlusSomeOtherLangs(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  if (a1[a2])
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v4 = a2;
  v5 = a3;
  while (!v4 || !*a1)
  {
    ++a1;
    --v4;
    if (!--v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t lidmde_SingleLang(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0xFFFF;
    do
    {
      if (*(a1 + 4 * v2))
      {
        if (v3 != 0xFFFF)
        {
          goto LABEL_8;
        }

        v3 = v2;
      }

      ++v2;
    }

    while (a2 != v2);
  }

  else
  {
LABEL_8:
    LOWORD(v3) = -1;
  }

  return v3;
}

uint64_t lidmde_FindLangs(uint64_t a1, char *a2, __int16 a3, const char *a4, __int16 a5, _DWORD *a6, _DWORD *a7)
{
  v43 = *MEMORY[0x277D85DE8];
  v14 = a1 + 135168;
  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Start ML2 LID MDE : %s", a2);
  __s1 = a2;
  v39 = a5;
  v15 = (a3 - a2);
  if (v15 <= (a5 - a4))
  {
    v15 = (a5 - a4);
  }

  v16 = heap_Alloc(*(*(a1 + 16) + 8), v15 + *(v14 + 832) + 1);
  if (v16)
  {
    v17 = v16;
    if (*(a1 + 1928))
    {
      bzero(a6, 4 * *(a1 + 1928));
    }

    if (**(v14 + 856))
    {
      v35 = a3;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        cstdlib_strcpy(v17, "");
        v40 = 0;
        v20 = lidmde_StemLookup2(a1, a4, v39, *(*(v14 + 856) + 8 * v18), *(*(v14 + 864) + 8 * v18), v17, a6, &v40);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_43;
        }

        if (!v40)
        {
          if (!cstdlib_strcmp(__s1, a4))
          {
            goto LABEL_20;
          }

          v20 = lidmde_StemLookup2(a1, __s1, v35, *(*(v14 + 856) + 8 * v18), *(*(v14 + 864) + 8 * v18), v17, a6, &v40);
          if ((v20 & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          if (!v40)
          {
LABEL_20:
            v25 = *(a1 + 1088);
            *a7 = 0;
            if (!lidmde_HasVowelWord(*(v14 + 840), v17) || Utf8_Utf8NbrOfSymbols(v17) < *(v14 + 834))
            {
              v20 = 0;
LABEL_23:
              v22 = *a7 == 0;
              goto LABEL_24;
            }

            memset(v41, 0, 30);
            v20 = calcWScore(a1, v17, "merwfrq_latn", 1, *(v25 + 8), v42, v41);
            if ((v20 & 0x80000000) != 0)
            {
              goto LABEL_43;
            }

            if (!*(v25 + 8))
            {
              goto LABEL_23;
            }

            v26 = 0;
            v27 = 0;
            v36 = v25;
            v37 = v19;
            do
            {
              if (v42[v27])
              {
                v28 = v17;
                v29 = v14;
                v30 = a4;
                v31 = *(a1 + 1928);
                if (v31)
                {
                  v32 = 0;
                  for (i = 0; i < v31; ++i)
                  {
                    if (v27 == *(*(a1 + 1952) + 2 * i))
                    {
                      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) stem found as %s", (*(a1 + 1936) + v32));
                      v26 = 1;
                      a6[i] = 1;
                      *a7 = 0;
                      v31 = *(a1 + 1928);
                    }

                    v32 += 8;
                  }
                }

                a4 = v30;
                v14 = v29;
                v17 = v28;
                v25 = v36;
                v19 = v37;
                if (!v26)
                {
                  *a7 = 1;
                }
              }

              ++v27;
            }

            while (v27 < *(v25 + 8));
            v40 = v26;
            v22 = *a7 == 0;
            if (!v26)
            {
              goto LABEL_24;
            }
          }
        }

        v21 = *(a1 + 1928);
        v22 = 1;
        if (*(a1 + 1928))
        {
          v23 = *(a1 + 1930);
          if (a6[v23])
          {
            v24 = a6;
            while (!v23 || !*v24)
            {
              ++v24;
              --v23;
              if (!--v21)
              {
                v22 = 1;
                goto LABEL_24;
              }
            }

            goto LABEL_43;
          }
        }

LABEL_24:
        v18 = ++v19;
        if (!*(*(v14 + 856) + 8 * v19) || !v22)
        {
          goto LABEL_43;
        }
      }
    }

    v20 = 0;
LABEL_43:
    heap_Free(*(*(a1 + 16) + 8), v17);
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
    return 2345672714;
  }

  return v20;
}

uint64_t lidmde_StemLookup2(uint64_t a1, const char *a2, __int16 a3, const char *a4, char *__s, char *a6, _DWORD *a7, _DWORD *a8)
{
  cstdlib_strlen(__s);
  v16 = a3 - a2 - cstdlib_strlen(a4);
  LOBYTE(__c[0]) = 0;
  v22 = 0;
  if (v16 < 0)
  {
    return 0;
  }

  v17 = v16 & 0x7FFF;
  if (cstdlib_strcmp(&a2[v17], a4))
  {
    return 0;
  }

  cstdlib_strncpy(a6, a2, v17);
  cstdlib_strcpy(&a6[v17], __s);
  if (!lidmde_HasVowelWord(*(a1 + 136008), a6) || Utf8_Utf8NbrOfSymbols(a6) < *(a1 + 136002))
  {
    return 0;
  }

  *(__c + 1) = 1;
  v18 = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", a6, &v22, __c + 1, __c, *(a1 + 2040));
  if ((v18 & 0x80000000) == 0 && *(__c + 1))
  {
    v20 = cstdlib_strchr(*v22, LOBYTE(__c[0]));
    if (v20)
    {
      *v20 = 0;
    }

    if (cstdlib_strcmp(*v22, "all"))
    {
      if (*(a1 + 1928))
      {
        v21 = 0;
        while (cstdlib_strcmp(*v22, (*(a1 + 1936) + 8 * v21)))
        {
          if (++v21 >= *(a1 + 1928))
          {
            goto LABEL_20;
          }
        }

        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) stem found: %s as %s", a6, *v22);
        a7[v21] = 1;
      }
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) stem found: %s as all", a6);
      if (*(a1 + 1928))
      {
        memset_pattern16(a7, &unk_26ECDB6D0, 4 * *(a1 + 1928));
      }
    }

LABEL_20:
    *a8 = 1;
  }

  return v18;
}

uint64_t lidmde_HasVowelWord(char *a1, unsigned __int8 *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v2 = a2;
  while (!utf8_strchr(a1, v2))
  {
    v2 += Utf8_LengthInBytes(v2, 1);
    if (!*v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t calcWScore(uint64_t a1, const char *a2, uint64_t a3, __int16 a4, unsigned int a5, void *a6, uint64_t a7)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = a4;
  v12 = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), a3, a2, &__c[3], &__c[1], __c, *(a1 + 1848));
  if ((v12 & 0x80000000) == 0)
  {
    if (a5)
    {
      bzero(a6, 4 * a5);
    }

    if (*&__c[1])
    {
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "LID found: %s", a2);
      ++*(a7 + 4);
      v13 = **&__c[3];
      v14 = cstdlib_strchr(**&__c[3], __c[0]);
      v15 = a5 != 0;
      if (v14)
      {
        v16 = a5 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v17 = v14;
        v18 = 0;
        do
        {
          if (v17 != v13)
          {
            *v17 = 0;
            *(a6 + v18) = LH_atou(v13);
          }

          ++v18;
          v13 = v17 + 1;
          v17 = cstdlib_strchr(v17 + 1, __c[0]);
          v15 = v18 < a5;
          if (v17)
          {
            v19 = v18 >= a5;
          }

          else
          {
            v19 = 1;
          }
        }

        while (!v19);
      }

      if (*v13)
      {
        v20 = !v15;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        *(a6 + v18) = LH_atou(v13);
      }
    }
  }

  return v12;
}

uint64_t lid_Init(uint64_t a1)
{
  *(a1 + 1896) = 0;
  *(a1 + 1888) = 0;
  cstdlib_strcpy((a1 + 1204), "mertfrq");
  cstdlib_strcpy((a1 + 1460), "merwfrq");
  result = initLanguagesModel(a1, a1 + 1016, 0xFFFF);
  if ((result & 0x80000000) == 0)
  {
    result = initLanguagesModel(a1, a1 + 1064, 1);
    if ((result & 0x80000000) == 0 || *(a1 + 1018))
    {
      return 0;
    }
  }

  return result;
}

uint64_t initLanguagesModel(uint64_t a1, uint64_t a2, __int16 a3)
{
  v47 = *MEMORY[0x277D85DE8];
  __c_3 = 0;
  __c = 0;
  *a2 = a3;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  __c_1 = a3;
  v6 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "nrpartwgram_lid", &__c_3, &__c_1, &__c);
  v7 = 1;
  if ((v6 & 0x80000000) == 0 && __c_1)
  {
    v7 = LH_atou(*__c_3);
  }

  *(a1 + 1848) = v7;
  __c_1 = a3;
  v8 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "scripts", &__c_3, &__c_1, &__c);
  if ((v8 & 0x80000000) == 0)
  {
    if (!__c_1)
    {
      return 0;
    }

    v9 = *__c_3;
    v10 = cstdlib_strchr(*__c_3, __c);
    if (v10)
    {
      *v10 = 0;
    }

    *(a2 + 16) = 1;
    for (i = v9; ; i = v12 + 1)
    {
      v12 = cstdlib_strchr(i, 44);
      if (!v12)
      {
        break;
      }

      ++*(a2 + 16);
    }

    v13 = heap_Calloc(*(*(a1 + 16) + 8), *(a2 + 16), 536);
    *(a2 + 24) = v13;
    if (!v13)
    {
LABEL_71:
      appended = 2345672714;
      log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
      return appended;
    }

    v14 = cstdlib_strchr(v9, 44);
    v15 = v14;
    if (v14)
    {
      *v14 = 0;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_72;
    }

    v16 = 0;
    v17 = 0;
    do
    {
      cstdlib_strcpy((*(a2 + 24) + v16), v9);
      if (v15)
      {
        v9 = v15 + 1;
        v18 = cstdlib_strchr(v15 + 1, 44);
        v15 = v18;
        if (v18)
        {
          *v18 = 0;
        }
      }

      ++v17;
      v16 += 536;
    }

    while (v17 < *(a2 + 16));
    if (!*(a2 + 16))
    {
LABEL_72:
      appended = 0;
      *(a2 + 40) = 0;
      return appended;
    }

    v19 = 0;
    while (1)
    {
      v20 = *(a2 + 24) + 536 * v19;
      *&v45[3] = 0;
      v45[0] = 0;
      cstdlib_strcpy(__dst, "mertfrq_");
      cstdlib_strcat(__dst, v20);
      cstdlib_strcpy((v20 + 24), __dst);
      cstdlib_strcpy(__dst, "merwfrq_");
      cstdlib_strcat(__dst, v20);
      cstdlib_strcpy((v20 + 280), __dst);
      cstdlib_strcpy(__dst, "languages.");
      cstdlib_strcat(__dst, v20);
      *&v45[1] = a3;
      v8 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", __dst, &v45[3], &v45[1], v45);
      if ((v8 & 0x80000000) != 0)
      {
        break;
      }

      v21 = **&v45[3];
      v22 = cstdlib_strchr(**&v45[3], v45[0]);
      if (v22)
      {
        *v22 = 0;
      }

      *(v20 + 8) = 1;
      for (j = v21; ; j = v24 + 1)
      {
        v24 = cstdlib_strchr(j, 44);
        if (!v24)
        {
          break;
        }

        ++*(v20 + 8);
      }

      v25 = heap_Calloc(*(*(a1 + 16) + 8), *(v20 + 8), 8);
      *(v20 + 16) = v25;
      if (!v25)
      {
        goto LABEL_71;
      }

      v26 = cstdlib_strchr(v21, 44);
      v27 = v26;
      if (v26)
      {
        *v26 = 0;
      }

      if (*(v20 + 8))
      {
        v28 = 0;
        v29 = 0;
        do
        {
          cstdlib_strcpy((*(v20 + 16) + v28), v21);
          if (v27)
          {
            v21 = v27 + 1;
            v30 = cstdlib_strchr(v27 + 1, 44);
            v27 = v30;
            if (v30)
            {
              *v30 = 0;
            }
          }

          ++v29;
          v28 += 8;
        }

        while (v29 < *(v20 + 8));
      }

      ++v19;
      v31 = *(a2 + 16);
      if (v19 >= v31)
      {
        *(a2 + 40) = 0;
        if (v31)
        {
          v32 = 0;
          v33 = 0;
          while (1)
          {
            v34 = *(a2 + 24);
            if (cstdlib_strcmp((v34 + v32), "latn"))
            {
              if (cstdlib_strcmp((v34 + v32), "cyrl"))
              {
                if (cstdlib_strcmp((v34 + v32), "deva"))
                {
                  if (cstdlib_strcmp((v34 + v32), "tami"))
                  {
                    if (cstdlib_strcmp((v34 + v32), "telu"))
                    {
                      if (cstdlib_strcmp((v34 + v32), "beng"))
                      {
                        if (cstdlib_strcmp((v34 + v32), "kann"))
                        {
                          if (cstdlib_strcmp((v34 + v32), "hanx"))
                          {
                            if (cstdlib_strcmp((v34 + v32), "hrkt"))
                            {
                              if (cstdlib_strcmp((v34 + v32), "hang"))
                              {
                                if (cstdlib_strcmp((v34 + v32), "arab"))
                                {
                                  if (cstdlib_strcmp((v34 + v32), "grek"))
                                  {
                                    if (cstdlib_strcmp((v34 + v32), "hebr"))
                                    {
                                      return 2345672711;
                                    }

                                    appendUnicodeRange(a1, a2 + 32, v33, 1424, 1535);
                                    v35 = a2 + 32;
                                    v36 = a1;
                                    v37 = v33;
                                    v38 = 64285;
                                    v39 = 64320;
                                  }

                                  else
                                  {
                                    appendUnicodeRange(a1, a2 + 32, v33, 880, 1023);
                                    v35 = a2 + 32;
                                    v36 = a1;
                                    v37 = v33;
                                    v38 = 7936;
                                    v39 = 0x1FFF;
                                  }
                                }

                                else
                                {
                                  appendUnicodeRange(a1, a2 + 32, v33, 1536, 1791);
                                  appendUnicodeRange(a1, a2 + 32, v33, 1872, 1919);
                                  appendUnicodeRange(a1, a2 + 32, v33, 64336, 65023);
                                  v35 = a2 + 32;
                                  v36 = a1;
                                  v37 = v33;
                                  v38 = 65136;
                                  v39 = 65279;
                                }
                              }

                              else
                              {
                                appendUnicodeRange(a1, a2 + 32, v33, 4352, 4607);
                                appendUnicodeRange(a1, a2 + 32, v33, 44032, 55215);
                                v35 = a2 + 32;
                                v36 = a1;
                                v37 = v33;
                                v38 = 65440;
                                v39 = 65500;
                              }
                            }

                            else
                            {
                              appendUnicodeRange(a1, a2 + 32, v33, 12352, 12543);
                              v35 = a2 + 32;
                              v36 = a1;
                              v37 = v33;
                              v38 = 65381;
                              v39 = 65439;
                            }
                          }

                          else
                          {
                            appendUnicodeRange(a1, a2 + 32, v33, 13312, 19903);
                            appendUnicodeRange(a1, a2 + 32, v33, 19968, 40879);
                            appendUnicodeRange(a1, a2 + 32, v33, 0x20000, 173782);
                            appendUnicodeRange(a1, a2 + 32, v33, 173824, 183983);
                            v35 = a2 + 32;
                            v39 = 195101;
                            v36 = a1;
                            v37 = v33;
                            v38 = 194560;
                          }
                        }

                        else
                        {
                          v37 = v33;
                          v35 = a2 + 32;
                          v36 = a1;
                          v38 = 3200;
                          v39 = 3327;
                        }
                      }

                      else
                      {
                        v37 = v33;
                        v35 = a2 + 32;
                        v36 = a1;
                        v38 = 2432;
                        v39 = 2559;
                      }
                    }

                    else
                    {
                      v37 = v33;
                      v35 = a2 + 32;
                      v36 = a1;
                      v38 = 3072;
                      v39 = 3199;
                    }
                  }

                  else
                  {
                    v37 = v33;
                    v35 = a2 + 32;
                    v36 = a1;
                    v38 = 2944;
                    v39 = 3071;
                  }
                }

                else
                {
                  v37 = v33;
                  v35 = a2 + 32;
                  v36 = a1;
                  v38 = 2304;
                  v39 = 2431;
                }
              }

              else
              {
                appendUnicodeRange(a1, a2 + 32, v33, 1024, 1327);
                appendUnicodeRange(a1, a2 + 32, v33, 11744, 11775);
                v35 = a2 + 32;
                v36 = a1;
                v37 = v33;
                v38 = 42560;
                v39 = 42655;
              }
            }

            else
            {
              v37 = v33;
              v35 = a2 + 32;
              v36 = a1;
              v38 = 0;
              v39 = 591;
            }

            appended = appendUnicodeRange(v36, v35, v37, v38, v39);
            if ((appended & 0x80000000) == 0)
            {
              ++v33;
              v32 += 536;
              if (v33 < *(a2 + 16))
              {
                continue;
              }
            }

            return appended;
          }
        }

        return 0;
      }
    }
  }

  return v8;
}

uint64_t lid_Deinit(uint64_t a1)
{
  v2 = *(a1 + 1888);
  if (*(a1 + 1888))
  {
    v3 = 16;
    do
    {
      heap_Free(*(*(a1 + 16) + 8), *(*(a1 + 1896) + v3));
      v3 += 56;
      --v2;
    }

    while (v2);
  }

  v4 = *(a1 + 1896);
  if (v4)
  {
    heap_Free(*(*(a1 + 16) + 8), v4);
  }

  *(a1 + 1896) = 0;
  *(a1 + 1888) = 0;
  deinitLanguagesModel(a1, a1 + 1016);
  deinitLanguagesModel(a1, a1 + 1064);
  return 0;
}

void *deinitLanguagesModel(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (*(a2 + 16))
  {
    v5 = 0;
    v6 = 16;
    do
    {
      v7 = *(a2 + 24);
      if (v7)
      {
        v8 = *(v7 + v6);
        if (v8)
        {
          result = heap_Free(*(v3[2] + 8), v8);
          v4 = *(a2 + 16);
        }
      }

      ++v5;
      v6 += 536;
    }

    while (v5 < v4);
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    result = heap_Free(*(v3[2] + 8), v9);
    *(a2 + 24) = 0;
  }

  v10 = *(a2 + 40);
  if (v10)
  {
    result = heap_Free(*(v3[2] + 8), v10);
    *(a2 + 40) = 0;
  }

  return result;
}

uint64_t lid_IdentifyMonolingual(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 1850);
  v41 = 0;
  v5 = *(a1 + 992);
  v6 = 1066;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v6 = 1018;
    v7 = -1;
  }

  v8 = *(a1 + v6);
  if (*(a1 + v6))
  {
    v9 = 0;
    v10 = v5 == 0;
    v11 = 1072;
    if (v10)
    {
      v11 = 1024;
    }

    v12 = (*(a1 + 1880) + 8);
    do
    {
      *v12 = 0;
      *(v12 - 1) = *(a1 + v11) + v9;
      v9 += 24;
      v12 += 8;
    }

    while (24 * v8 != v9);
  }

  *v4 = 0;
  v13 = normalizedDup(a1, a2, a3, (a1 + 1850));
  if (!v13)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
    return 2345672714;
  }

  v14 = v13;
  v40 = 0;
  v39 = 0;
  v42 = v13;
  v15 = nextWord(&v42);
  if (v15)
  {
    v16 = v15;
    v40 = v7;
    v17 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), a1 + 1460, v15, &v41, &v40, &v39);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }

    v37 = v4;
    while (1)
    {
      v18 = v16;
      v16 = nextWord(&v42);
      if (!v40)
      {
        v19 = *v18;
        if (*v18)
        {
          v20 = (v18 + 1);
          do
          {
            {
              *(v20 - 1) = 32;
            }

            v21 = *v20++;
            v19 = v21;
          }

          while (v21);
        }
      }

      if (!v16)
      {
        break;
      }

      for (i = v16 - 1; i > v14 && (!*i || cstdlib_strchr(" \t\n", *i)); --i)
      {
        *i = 32;
      }

      v40 = v7;
      v17 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), a1 + 1460, v16, &v41, &v40, &v39);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }
    }
  }

  else
  {
    v37 = v4;
    v17 = 0;
  }

  v42 = v14;
  v23 = nextWord(&v42);
  if (!v23)
  {
LABEL_39:
    if (*v37)
    {
      *(a1 + 1856) = 100 * *(a1 + 1854) / *v37;
    }

    if (*(a1 + 1156))
    {
      v33 = compareScoreOld;
    }

    else if (*(a1 + 1168))
    {
      v33 = compareScoreOld;
    }

    else
    {
      v33 = compareScore;
    }

    ssft_qsort(*(a1 + 1880), v8, 32, v33);
    if (*(a1 + 992))
    {
      if (v8 >= 2 && *(a1 + 1168) && *(a1 + 1172) > cstdlib_labs(*(*(a1 + 1880) + 8) - *(*(a1 + 1880) + 40)))
      {
        v34 = *(*(a1 + 1880) + 32);
        v35 = (a1 + 1176);
        goto LABEL_55;
      }
    }

    else if (v8 >= 2 && *(a1 + 1156) && *(a1 + 1160) > cstdlib_labs(*(*(a1 + 1880) + 8) - *(*(a1 + 1880) + 40)))
    {
      v34 = *(*(a1 + 1880) + 32);
      v35 = (a1 + 1164);
LABEL_55:
      if (!cstdlib_strcmp(v34, v35))
      {
        memset(__dst, 0, sizeof(__dst));
        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "fuzzy fallback from %s to %s: %7lu -> %7lu", **(a1 + 1880), *(*(a1 + 1880) + 32), *(*(a1 + 1880) + 8), *(*(a1 + 1880) + 40));
        cstdlib_memcpy(__dst, (*(a1 + 1880) + 32), 0x20uLL);
        cstdlib_memcpy((*(a1 + 1880) + 32), *(a1 + 1880), 0x20uLL);
        cstdlib_memcpy(*(a1 + 1880), __dst, 0x20uLL);
      }
    }

    traceScore(a1, "lid_IdentifyOldMonolingual COMBINED", "Result", v8, *(a1 + 1880), 0);
    heap_Free(*(*(a1 + 16) + 8), v14);
    return v17;
  }

  v24 = v23;
  while (1)
  {
    v25 = calcTScore(a1, v24, a1 + 1204, v7, v8, v44, *(a1 + 1880));
    if ((v25 & 0x80000000) != 0)
    {
      return v25;
    }

    traceScore(a1, "lid_IdentifyOldMonolingual TSCORE", v24, v8, *(a1 + 1880), v44);
    v17 = calcWScore(a1, v24, a1 + 1460, v7, v8, v43, v37);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }

    v26 = *(a1 + 1880);
    if (v8)
    {
      v27 = v26 + 1;
      v28 = v44;
      v29 = v43;
      v30 = v8;
      do
      {
        v32 = *v29++;
        v31 = v32;
        if (!v32)
        {
          v31 = *v28;
        }

        *v27 += v31;
        v27 += 8;
        ++v28;
        --v30;
      }

      while (v30);
    }

    traceScore(a1, "lid_IdentifyOldMonolingual WSCORE", v24, v8, v26, 0);
    v24 = nextWord(&v42);
    if (!v24)
    {
      goto LABEL_39;
    }
  }
}

uint64_t lid_Identify(int8x16_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v5 = a1;
  __s1[64] = *MEMORY[0x277D85DE8];
  v6 = 532;
  if (!a1[62].i32[0])
  {
    v6 = 508;
  }

  v106 = &a1->i8[v6 * 2];
  a1[118].i16[1] = 0;
  if (!a1[1].i16[v6])
  {
    __s1[0] = 0;
    appended = appendCoLangSegment(a1, __s1);
    if ((appended & 0x80000000) != 0)
    {
      return appended;
    }

    v26 = __s1[0];
    *__s1[0] = 0;
    *(v26 + 1) = v3;
    *(v26 + 2) = 0xFFFF;
    v25 = v106;
    goto LABEL_50;
  }

  __b[0] = 0;
  a1[118].i16[1] = 0;
  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  appended = 0;
  v9 = 0;
  v10 = -1;
  v11 = -1;
  v102 = -1;
  do
  {
    U32FromUtf8 = utf8_GetU32FromUtf8(a2, v9, v3);
    v13 = U32FromUtf8;
    v14 = *(v106 + 17);
    if (*(v106 + 17))
    {
      v15 = (*(v106 + 5) + 8);
      while (*(v15 - 2) > U32FromUtf8 || *(v15 - 1) <= U32FromUtf8)
      {
        v15 += 6;
        if (!--v14)
        {
          goto LABEL_11;
        }
      }

      v16 = *v15;
    }

    else
    {
LABEL_11:
      v16 = -1;
    }

    v17 = a2;
    if (U32FromUtf8 > 0xFE)
    {
      v18 = 1;
    }

    else
    {
      v18 = (U32FromUtf8 & 0xDF) - 65 < 0x1A;
      if (U32FromUtf8 == 9 || U32FromUtf8 == 32)
      {
        v11 = v9;
      }

      __s1[0] = 0;
      if ((paramc_ParamGetStr(*(a1[1].i64[0] + 40), "liddigitmain", __s1) & 0x80000000) == 0)
      {
        if (__s1[0])
        {
          v20 = cstdlib_strcmp(__s1[0], "yes");
          if (v13 - 48 <= 9 && !v20)
          {
            v18 = 1;
            v16 = 200;
          }
        }
      }
    }

    if (v11 != v9 - 1 && v10 == 200)
    {
      v22 = 200;
    }

    else
    {
      v22 = v16;
    }

    if (v22 < 0 || !v18)
    {
      goto LABEL_35;
    }

    v23 = v22;
    if (v22 == v10)
    {
      v102 = v9;
LABEL_35:
      a2 = v17;
      goto LABEL_43;
    }

    a2 = v17;
    if (v7)
    {
      *(v7 + 4) = v102 + 1;
    }

    appended = appendCoLangSegment(a1, __b);
    if ((appended & 0x80000000) != 0)
    {
      return appended;
    }

    v7 = __b[0];
    *(__b[0] + 8) = v23;
    if (v11 >= v102)
    {
      v24 = v11 + 1;
    }

    else
    {
      v24 = v9;
    }

    *v7 = v24;
    *(v7 + 10) = 0;
    v10 = v23;
    v102 = v9;
LABEL_43:
    v9 += utf8_determineUTF8CharLength(*(a2 + v9));
    v3 = a3;
  }

  while (v9 < a3);
  if (v7)
  {
    *(v7 + 4) = v102 + 1;
  }

  v5 = a1;
  v25 = v106;
  if ((appended & 0x80000000) != 0)
  {
    return appended;
  }

LABEL_50:
  v27 = *(v5 + 1890);
  if (!*(v5 + 1890))
  {
    return appended;
  }

  v28 = 0;
  v29 = v27 - 1;
  v30 = v5 + 1204;
  v31 = v5 + 1460;
  v95 = *(v5 + 1890);
  v94 = v27 - 1;
  v92 = v5 + 1460;
  v93 = v5 + 1204;
  while (2)
  {
    v32 = (*(v5 + 1896) + 56 * v28);
    if (!v28)
    {
      *v32 = 0;
    }

    if (v29 == v28)
    {
      v32[1] = v3;
    }

    v33 = *(v32 + 4);
    v34 = *(v32 + 2);
    if (v33 == 200)
    {
      *v34 = *(v5 + 1912);
      *(v32 + 5) = 1;
      goto LABEL_58;
    }

    if ((v33 & 0x8000) == 0)
    {
      v35 = *(v25 + 3) + 536 * *(v32 + 4);
      v36 = *(v35 + 8);
      if (*(v35 + 8))
      {
        v98 = v35 + 24;
        v101 = v35 + 280;
        v37 = *(v35 + 16);
        v38 = v34 + 1;
        v39 = v36;
        do
        {
          *v38 = 0;
          *(v38 - 1) = v37;
          v37 += 8;
          v38 += 8;
          --v39;
        }

        while (v39);
        v40 = v36;
        goto LABEL_68;
      }

LABEL_87:
      appended = 0;
      *(v32 + 5) = 0;
LABEL_150:
      if (++v28 == v27)
      {
        return appended;
      }

      continue;
    }

    break;
  }

  v40 = *(v25 + 1);
  if (!*(v25 + 1))
  {
    goto LABEL_87;
  }

  v41 = *(v25 + 1);
  v42 = v34 + 1;
  v43 = *(v25 + 1);
  do
  {
    *v42 = 0;
    *(v42 - 1) = v41;
    v41 += 24;
    v42 += 8;
    --v43;
  }

  while (v43);
  v98 = v30;
  v101 = v31;
LABEL_68:
  *(v32 + 5) = v40;
  v25 = v106;
  if (v40 < 2)
  {
    if (v40 == 1)
    {
LABEL_58:
      appended = 0;
      *(v34 + 2) = 0;
      *(v32 + 3) = 0;
    }

    else
    {
      appended = 0;
    }

    goto LABEL_150;
  }

  v100 = v40;
  v97 = v28;
  v44 = *v32;
  v45 = v32[1] - v44;
  v103 = *v106;
  v110 = 0;
  v111 = 0;
  v109 = 0;
  v108 = 0;
  cstdlib_memset(__s1, 0, 0x80uLL);
  cstdlib_memset(__b, 0, 0x80uLL);
  *(v32 + 3) = 0;
  v46 = normalizedDup(v5, a2 + v44, v45, v32 + 12);
  if (!v46)
  {
    log_OutPublic(*(*(v5 + 16) + 32), "FE_LID", 48000, 0);
    return 2345672714;
  }

  v47 = v46;
  v111 = v46;
  v48 = nextWord(&v111);
  if (!v48)
  {
    appended = 0;
LABEL_91:
    v111 = v47;
    v53 = nextWord(&v111);
    v54 = v100;
    if (v53)
    {
      v55 = v53;
      v96 = a2;
      do
      {
        v56 = v32;
        v57 = (v32 + 6);
        v58 = v54;
        v99 = calcWScore(v5, v55, v101, v103, v54, __b, v57);
        if ((v99 & 0x80000000) != 0)
        {
          return v99;
        }

        v59 = __b;
        traceScore(v5, "doLidString WSCORE THIS WORD", v55, v58, v34, __b);
        bzero(__s1, 4 * v100);
        v60 = 0;
        v61 = 0;
        v62 = v100;
        do
        {
          if (*v59++)
          {
            v60 = 1;
          }

          else
          {
            v61 = 1;
          }

          --v62;
        }

        while (v62);
        v32 = v56;
        if (v61)
        {
          if (v60 || !IsFlatDistribution(v5, (v56 + 6), v55, (v55 - v47)))
          {
            v64 = v100;
            appended = calcTScore(v5, v55, v98, v103, v100, __s1, v34);
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }
          }

          else
          {
            if (*(v5 + 1188))
            {
              v65 = __s1;
              v66 = v34;
              v67 = v100;
              v68 = a1;
              do
              {
                v69 = *v66;
                v66 += 4;
                if (LH_strnicmp(v69, &a1[74].i64[1] + 4, 2uLL))
                {
                  v70 = 100;
                }

                else
                {
                  v70 = 10;
                }

                *v65 = v70;
                v65 = (v65 + 4);
                --v67;
              }

              while (v67);
            }

            else
            {
              v71 = __s1;
              v72 = v34;
              v73 = v100;
              v68 = a1;
              do
              {
                v74 = *v72;
                v72 += 4;
                if (LH_strnicmp(v74, a1[119].i64[1], 2uLL))
                {
                  v75 = 100;
                }

                else
                {
                  v75 = 10;
                }

                *v71 = v75;
                v71 = (v71 + 4);
                --v73;
              }

              while (v73);
            }

            v5 = v68;
            a2 = v96;
            v64 = v100;
            v32 = v56;
            appended = v99;
          }

          traceScore(v5, "doLidString TSCORE THIS WORD", v55, v64, v34, __s1);
        }

        else
        {
          appended = v99;
        }

        v76 = __s1;
        v77 = __b;
        v78 = 1;
        v79 = v100;
        do
        {
          v81 = *v77++;
          v80 = v81;
          if (!v81)
          {
            v80 = *v76;
          }

          LODWORD(v34[v78]) += v80;
          v76 = (v76 + 4);
          v78 += 4;
          --v79;
        }

        while (v79);
        v54 = v100;
        traceScore(v5, "doLidString COMBINED ALL WORDS UNTIL THIS WORD NOT BIASED", v55, v100, v34, 0);
        v55 = nextWord(&v111);
      }

      while (v55);
    }

    v82 = a2;
    traceScore(v5, "doLidString ALL WORDS COMBINED NOT BIASED, NOT SORTED", "Result", v54, v34, 0);
    if (*(v32 + 12))
    {
      *(v32 + 15) = 100 * *(v32 + 14) / *(v32 + 12);
    }

    v27 = v95;
    if (*(v5 + 1188))
    {
      v83 = v100;
      v84 = (v34 + 1);
      while (cstdlib_strncmp(*(v84 - 1), (v5 + 1196), 2uLL))
      {
        v84 += 8;
        if (!--v83)
        {
          goto LABEL_135;
        }
      }

      if (*(v32 + 13) && *(v32 + 14) && !*(v5 + 1920))
      {
        v88 = *(v5 + 1192) * *(v32 + 13);
        v89 = *v84 >= v88;
        v90 = *v84 - v88;
        if (v90 == 0 || !v89)
        {
          v90 = 1;
        }

        *v84 = v90;
      }

      else
      {
        *v84 = 0;
      }
    }

LABEL_135:
    if (*(v5 + 1156))
    {
      v85 = compareScoreOld;
    }

    else if (*(v5 + 1168))
    {
      v85 = compareScoreOld;
    }

    else
    {
      v85 = compareScore;
    }

    v3 = a3;
    a2 = v82;
    ssft_qsort(v34, v100, 32, v85);
    if (*(v5 + 992))
    {
      if (*(v5 + 1168) && *(v5 + 1172) > cstdlib_labs(*(v34 + 2) - *(v34 + 10)))
      {
        v86 = v34[4];
        v87 = (v5 + 1176);
        goto LABEL_147;
      }
    }

    else if (*(v5 + 1156) && *(v5 + 1160) > cstdlib_labs(*(v34 + 2) - *(v34 + 10)))
    {
      v86 = v34[4];
      v87 = (v5 + 1164);
LABEL_147:
      if (!cstdlib_strcmp(v86, v87))
      {
        memset(__dst, 0, sizeof(__dst));
        log_OutText(*(*(v5 + 16) + 32), "FE_LID", 5, 0, "fuzzy fallback from %s to %s: %7lu -> %7lu", *v34, v34[4], *(v34 + 2), *(v34 + 10));
        cstdlib_memcpy(__dst, v34 + 4, 0x20uLL);
        cstdlib_memcpy(v34 + 4, v34, 0x20uLL);
        cstdlib_memcpy(v34, __dst, 0x20uLL);
      }
    }

    traceScore(v5, "doLidString ALL WORDS COMBINED BIASED AND/OR FUZZY CORRECTED, SORTED", "Result", v100, v34, 0);
    heap_Free(*(*(v5 + 16) + 8), v47);
    v25 = v106;
    v29 = v94;
    v31 = v92;
    v30 = v93;
    v28 = v97;
    goto LABEL_150;
  }

  v49 = v48;
  while (1)
  {
    v109 = v103;
    appended = (*(*(v5 + 64) + 152))(*(v5 + 48), *(v5 + 56), v101, v49, &v110, &v109, &v108, *(v5 + 1848));
    if ((appended & 0x80000000) != 0)
    {
      return appended;
    }

    v50 = nextWord(&v111);
    if (!v109 && !IsFlatDistribution(v5, (v32 + 6), v49, (v49 - v47)))
    {
      while (*v49)
      {
        {
          v51 = 32;
          *v49 = 32;
        }

        else
        {
          v51 = *v49;
        }

        v49 += utf8_determineUTF8CharLength(v51);
      }
    }

    if (!v50)
    {
      goto LABEL_91;
    }

    v52 = v50 - 1;
    v49 = v50;
    if (v50 - 1 > v47)
    {
      do
      {
        if (*v52 && !cstdlib_strchr(" \t\n", *v52))
        {
          break;
        }

        *v52-- = 32;
      }

      while (v52 > v47);
      v49 = v50;
    }
  }
}

uint64_t appendCoLangSegment(int8x16_t *a1, void *a2)
{
  v4 = a1[118].u16[0];
  v5 = &a1[118].i64[1];
  result = appendItemRaw16(a1, &a1[118].i64[1], &a1[118], &a1[118].i16[1], 0x38u);
  if ((result & 0x80000000) == 0)
  {
    if (v4 >= a1[118].u16[0])
    {
LABEL_14:
      result = 0;
      *a2 = *v5 + 56 * a1[118].u16[1] - 56;
    }

    else
    {
      LOWORD(v7) = a1[63].i16[5];
      LOWORD(v8) = a1[66].i16[5];
      while (1)
      {
        v9 = a1[118].i64[1];
        v7 = v7;
        if (v7 <= v8)
        {
          v7 = v8;
        }

        v10 = heap_Calloc(*(a1[1].i64[0] + 8), 1, 32 * v7);
        *(v9 + 56 * v4 + 16) = v10;
        if (!v10)
        {
          break;
        }

        v7 = a1[63].u16[5];
        v8 = a1[66].u16[5];
        if (v7 <= v8)
        {
          v11 = a1[66].u16[5];
        }

        else
        {
          v11 = a1[63].u16[5];
        }

        if (v11)
        {
          v12 = vextq_s8(a1[119], a1[119], 8uLL);
          v13 = (v10 + 16);
          do
          {
            *v13 = v12;
            v13 += 2;
            --v11;
          }

          while (v11);
        }

        if (++v4 >= a1[118].u16[0])
        {
          goto LABEL_14;
        }
      }

      log_OutPublic(*(a1[1].i64[0] + 32), "FE_LID", 48000, 0);
      return 2345672714;
    }
  }

  return result;
}

uint64_t appendUnicodeRange(uint64_t a1, uint64_t a2, __int16 a3, int a4, int a5)
{
  result = appendItemRaw16(a1, (a2 + 8), a2, (a2 + 2), 0xCu);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a2 + 8) + 12 * *(a2 + 2);
    if (v10 != 12)
    {
      *(v10 - 4) = a3;
      *(v10 - 12) = a4;
      *(v10 - 8) = a5 + 1;
    }
  }

  return result;
}

uint64_t appendItemRaw16(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, _WORD *a4, unsigned int a5)
{
  v5 = 2345672714;
  if (!a2)
  {
    return 2345672711;
  }

  v9 = *a2;
  if (v9)
  {
    v10 = *a4;
    v11 = *a3;
    if (v10 < v11)
    {
LABEL_9:
      v5 = 0;
      *a4 = v10 + 1;
      return v5;
    }

    v12 = v11 + 10;
    v13 = heap_Realloc(*(*(a1 + 16) + 8), v9, (v11 + 10) * a5);
    if (v13)
    {
LABEL_8:
      *a2 = v13;
      *a3 = v12;
      LOWORD(v10) = *a4;
      goto LABEL_9;
    }
  }

  else
  {
    *a3 = 0;
    *a4 = 0;
    v12 = *a3 + 10;
    v13 = heap_Alloc(*(*(a1 + 16) + 8), v12 * a5);
    if (v13)
    {
      goto LABEL_8;
    }
  }

  return v5;
}

uint64_t normalizedDup(uint64_t a1, uint64_t a2, unsigned int a3, _WORD *a4)
{
  v4 = a4;
  v52 = *MEMORY[0x277D85DE8];
  a4[4] = 0;
  __s2[0] = 0;
  result = heap_Alloc(*(*(a1 + 16) + 8), (4 * a3) | 1);
  if (result)
  {
    if (a3)
    {
      v8 = 0;
      v9 = 0;
      LOWORD(v10) = 0;
      v48 = 0;
      v49 = 0;
      v11 = 0;
      v12 = 0;
      v43 = v4 + 5;
      v13 = result;
      v14 = a3 - 1;
      v44 = a3 - 2;
      v46 = 1;
      v47 = a3;
      v45 = result;
      v15 = a3;
      while (1)
      {
        v16 = (a2 + v12);
        v17 = *v16;
        v18 = v17 - 10;
        if ((v17 - 10) > 0x36)
        {
          goto LABEL_10;
        }

        if (((1 << v18) & 0x7F003FFF800000) != 0)
        {
          goto LABEL_15;
        }

        if (((1 << v18) & 0x420009) == 0)
        {
LABEL_10:
          v20 = (v17 - 91);
          if (v20 > 0x22)
          {
            break;
          }

          if (((1 << (v17 - 91)) & 0x70000002FLL) != 0)
          {
            goto LABEL_15;
          }

          if (v20 != 4)
          {
            break;
          }
        }

        *v13++ = 32;
        LOWORD(v10) = v10 + 1;
        v19 = 1;
LABEL_49:
        v12 += v19;
        if (v12 >= v15)
        {
          v37 = v11 == 0;
          v38 = v49 != 0;
          v39 = v8 != 0;
          v40 = v4[4];
          if (v40 >= 0xA)
          {
            result = v45;
            goto LABEL_91;
          }

          result = v45;
          if (v46)
          {
            v41 = v9;
            v10 = v10;
            v42 = v48;
LABEL_86:
            if (&v13[-result - v42 - v10 - v41 - 2] >= 3 && !v38)
            {
LABEL_88:
              if (v39)
              {
                goto LABEL_89;
              }

LABEL_91:
              ++*v4;
              if (!v37 && !v38)
              {
                ++v4;
                goto LABEL_95;
              }

              goto LABEL_96;
            }
          }

          else
          {
            if (v11)
            {
              v37 = 0;
              goto LABEL_91;
            }

            v37 = 1;
            LOWORD(v42) = v48;
            if (!v49)
            {
              goto LABEL_88;
            }
          }

LABEL_89:
          v4[4] = v40 + 1;
          v4[v40 + 5] = v42;
          goto LABEL_91;
        }
      }

      v21 = v17 - 171;
      v22 = v21 > 0x10;
      v23 = (1 << v21) & 0x10019;
      if (!v22 && v23 != 0)
      {
LABEL_15:
        if (!v10)
        {
          goto LABEL_26;
        }

        v25 = v4[4];
        if (v25 > 9)
        {
LABEL_23:
          v9 = 0;
          v48 = (v13 - v45);
          ++*v4;
          if (!v11 || v49)
          {
            v46 = 1;
            v11 = 0;
            v49 = 0;
            v8 = 0;
            if (!v12)
            {
LABEL_30:
              {
                LOWORD(v10) = 0;
                *v13++ = *v16;
                ++v9;
                v19 = 1;
LABEL_47:
                v8 = 1;
LABEL_48:
                v15 = v47;
                goto LABEL_49;
              }

              if (v12)
              {
                v26 = v12 - 1;
LABEL_38:
                v27 = cstdlib_strchr("_ \r\n\x1B", *(a2 + v26));
                LOWORD(v10) = 0;
                v19 = 1;
                if (v27 || v12 == v14)
                {
                  goto LABEL_48;
                }

                {
                  LOWORD(v10) = 0;
                  goto LABEL_48;
                }

                LOWORD(v10) = 0;
                *v13++ = *v16;
                ++v9;
                goto LABEL_47;
              }

              LOWORD(v10) = 0;
LABEL_52:
              v19 = 1;
              goto LABEL_48;
            }

LABEL_29:
            v26 = v12 - 1;
            if (!cstdlib_strchr("_ \r\n\x1B", *(a2 + v26)))
            {
              goto LABEL_38;
            }

            goto LABEL_30;
          }

          v11 = 0;
          v49 = 0;
          v9 = 0;
          v8 = 0;
          ++v4[1];
          v46 = 1;
LABEL_26:
          if (!v12)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        if (v46)
        {
          if (&v13[-v45 - v48 - v10 - v9 - 2] < 3)
          {
LABEL_22:
            v4[4] = v25 + 1;
            v43[v25] = v48;
            goto LABEL_23;
          }
        }

        else if (v11)
        {
          goto LABEL_23;
        }

        if (!(v49 | v8))
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (!v10)
      {
        v29 = v49;
        v30 = v46;
LABEL_67:
        v31 = *v16;
        if ((v31 - 48) < 0xAu)
        {
          v29 = 1;
        }

        else
        {
          v11 = 1;
        }

        v49 = v29;
        v32 = utf8_determineUTF8CharLength(v31);
        if (v32 >= 2)
        {
          v19 = v32;
          __s2[0] = 0;
          cstdlib_strncpy(__dst, (a2 + v12), v32);
          __dst[v19] = 0;
          utf8_ToLower(__dst, 0, __s2);
          v46 = v30 && cstdlib_strcmp(__dst, __s2);
          cstdlib_strcpy(v13, __s2);
          v36 = cstdlib_strlen(__s2);
          LOWORD(v10) = 0;
          v8 = 0;
          v13 += v36;
          goto LABEL_48;
        }

        v33 = ssft_tolower(*v16);
        *v13 = v33;
        if (!v30 || (v34 = *v16, v35 = 1, (v34 - 58) <= 0xFFFFFFF5) && v33 == v34)
        {
          v35 = 0;
        }

        v46 = v35;
        LOWORD(v10) = 0;
        v8 = 0;
        ++v13;
        goto LABEL_52;
      }

      v28 = v4[4];
      if (v28 <= 9)
      {
        if (v46)
        {
          if (&v13[-v45 - v48 - v10 - v9 - 2] < 3)
          {
            goto LABEL_62;
          }
        }

        else if (v11)
        {
          goto LABEL_63;
        }

        if (v49 | v8)
        {
LABEL_62:
          v4[4] = v28 + 1;
          v43[v28] = v48;
        }
      }

LABEL_63:
      v9 = 0;
      v48 = (v13 - v45);
      ++*v4;
      v30 = 1;
      if (!v11 || v49)
      {
        v11 = 0;
        v29 = 0;
      }

      else
      {
        v11 = 0;
        v29 = 0;
        v9 = 0;
        ++v4[1];
      }

      goto LABEL_67;
    }

    v40 = v4[4];
    if (v40 < 0xA)
    {
      v38 = 0;
      v42 = 0;
      v10 = 0;
      v41 = 0;
      v39 = 0;
      v37 = 1;
      v13 = result;
      goto LABEL_86;
    }

    v13 = result;
LABEL_95:
    ++*v4;
LABEL_96:
    *v13 = 0;
  }

  return result;
}

char *nextWord(char **a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return v2;
  }

  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  while (cstdlib_strchr(" \t\n", v3))
  {
    v4 = *++v2;
    v3 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  if (!*v2)
  {
    return 0;
  }

  *a1 = v2;
  LOBYTE(v5) = *v2;
  if (!*v2)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v6 = cstdlib_strchr(" \t\n", v5);
    v7 = *a1;
    if (v6)
    {
      break;
    }

    *a1 = v7 + 1;
    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  if (*v7)
  {
    *v7 = 0;
    v9 = (*a1 + 1);
  }

  else
  {
LABEL_16:
    v9 = 0;
  }

  *a1 = v9;
  return v2;
}

uint64_t calcTScore(uint64_t a1, char *__s, uint64_t a3, __int16 a4, uint64_t a5, void *a6, void *a7)
{
  v8 = a5;
  v51 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    bzero(a6, 4 * a5);
  }

  v11 = (cstdlib_strlen(__s) + 4);
  v12 = heap_Alloc(*(*(a1 + 16) + 8), v11 + 1);
  if (v12)
  {
    v13 = v12;
    memset(__c, 0, sizeof(__c));
    cstdlib_strcpy(v12, "__");
    cstdlib_strcpy((v13 + 2), __s);
    cstdlib_strcpy((v13 + v11 - 2), "__");
    v14 = 0;
    __dst[3] = 0;
    if (v11 < 3)
    {
LABEL_43:
      heap_Free(*(*(a1 + 16) + 8), v13);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v41 = v11 - 2;
      v39 = v8 != 0;
      v17 = v8;
      v40 = 4 * v8;
      v42 = v8;
      v43 = a6;
      while (1)
      {
        cstdlib_strcpy(__dst, "");
        v47 = v16;
        v18 = (v13 + v16);
        v19 = utf8_determineUTF8CharLength(*v18);
        v20 = 0;
        v21 = 0;
        do
        {
          v22 = utf8_determineUTF8CharLength(*(v13 + (v20 + v15)));
          cstdlib_strncat(__dst, &v18[v20], v22);
          v20 += v22;
          v31 = v21++ >= 2;
        }

        while (!v31);
        v23 = v19 <= 1 ? 0 : v19;
        v24 = v23 ? v23 - 1 : 0;
        *&__c[1] = a4;
        v14 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), a3, __dst, &__c[3], &__c[1], __c);
        if ((v14 & 0x80000000) != 0)
        {
          break;
        }

        if (v42)
        {
          bzero(v49, v40);
        }

        if (*&__c[1])
        {
          v25 = **&__c[3];
          v26 = cstdlib_strchr(**&__c[3], __c[0]);
          if (v26)
          {
            v27 = v42 == 0;
          }

          else
          {
            v27 = 1;
          }

          if (v27)
          {
            v30 = 0;
            v28 = v39;
          }

          else
          {
            v29 = v26;
            v30 = 0;
            do
            {
              if (v29 != v25)
              {
                *v29 = 0;
                v49[v30] = LH_atou(v25);
              }

              ++v30;
              v25 = v29 + 1;
              v29 = cstdlib_strchr(v29 + 1, __c[0]);
              v28 = v30 < v17;
              if (v29)
              {
                v31 = v30 >= v17;
              }

              else
              {
                v31 = 1;
              }
            }

            while (!v31);
          }

          if (*v25)
          {
            v32 = !v28;
          }

          else
          {
            v32 = 1;
          }

          if (!v32)
          {
            v49[v30] = LH_atou(v25);
          }
        }

        if (v42)
        {
          v33 = v49;
          v34 = v17;
          v35 = v43;
          do
          {
            v37 = *v33++;
            v36 = v37;
            if (!v37)
            {
              v36 = *(a1 + 1152);
            }

            *v35++ += v36;
            --v34;
          }

          while (v34);
        }

        traceScore(a1, "calcTScore TSCORES ACCUMULATED", __dst, v42, a7, v43);
        v16 = v47 + v24 + 1;
        v15 = (v47 + v24 + 1);
        if (v41 <= v16)
        {
          goto LABEL_43;
        }
      }
    }
  }

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
    return 2345672714;
  }

  return v14;
}

uint64_t traceScore(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, _DWORD *a6)
{
  LODWORD(v8) = a4;
  v10 = *(*(a1 + 16) + 32);
  if (a2)
  {
    result = log_OutText(v10, "FE_LID", 5, 0, "%s %s");
  }

  else
  {
    result = log_OutText(v10, "FE_LID", 5, 0, "%s");
  }

  if (a6)
  {
    if (v8)
    {
      v12 = v8;
      do
      {
        v14 = *a5;
        a5 += 4;
        v13 = v14;
        LODWORD(v14) = *a6++;
        result = log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "%s: %7lu", v13, v14);
        --v12;
      }

      while (v12);
    }
  }

  else if (v8)
  {
    v8 = v8;
    v15 = a5 + 1;
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v15 += 8;
      result = log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "%s: %7lu", v16, v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t compareScore(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  if (v2 == v3)
  {
    if (cstdlib_strcmp(*a1, *a2))
    {
      if (!cstdlib_strncmp(*a1, a1[2], 2uLL))
      {
        return 0xFFFFFFFFLL;
      }

      if (!cstdlib_strncmp(*a2, a2[2], 2uLL))
      {
        return 1;
      }

      cstdlib_strncpy(__dst, *a1, 2uLL);
      __dst[2] = 0;
      cstdlib_strncpy(__s2, *a2, 2uLL);
      __s2[2] = 0;
      if (cstdlib_strstr(a1[3], __dst))
      {
        if (!cstdlib_strstr(a1[3], __s2))
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (!cstdlib_strstr(a1[3], __dst) && cstdlib_strstr(a1[3], __s2))
      {
        return 1;
      }

      v6 = **a1;
      v7 = **a2;
      if (v6 == v7)
      {
        v2 = (*a1)[1];
        v3 = (*a2)[1];
      }

      else
      {
        v2 = v6;
        v3 = v7;
      }
    }

    else
    {
      v2 = *(a1 + 2);
      v3 = *(a2 + 2);
    }
  }

  return (v2 - v3);
}

uint64_t IsFlatDistribution(uint64_t a1, uint64_t a2, char *__s, int a4)
{
  v8 = cstdlib_strchr(__s, 64);
  if ((!v8 || !cstdlib_strchr(v8, 46)) && !cstdlib_strstr(__s, "http") && !cstdlib_strstr(__s, "ftp") && !cstdlib_strstr(__s, "www."))
  {
    v9 = cstdlib_strstr(__s, ".com");
    v10 = v9 == 0;
    if (*(a2 + 8) && !v9)
    {
      v11 = (a2 + 10);
      v12 = 1;
      do
      {
        v14 = *v11++;
        v13 = v14;
        v10 = v14 != a4;
        if (v12 >= *(a2 + 8))
        {
          break;
        }

        ++v12;
      }

      while (v13 != a4);
    }

    if (v10)
    {
      return 0;
    }
  }

  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Acronym or digit or punctuation or url or e-mail address: %s => flat distribution with very small bias toward main language or memory", __s);
  return 1;
}

uint64_t dcteg_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 2)
  {
    return 2231377921;
  }

  result = 0;
  *a2 = &IDcteg;
  return result;
}

uint64_t dcteg_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v8 = 2231377927;
  v15 = 0;
  NullHandle = safeh_GetNullHandle();
  v11 = safeh_HandlesEqual(a3, a4, NullHandle, v10);
  if (a5)
  {
    if (!v11)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      if ((InitRsrcFunction(a3, a4, &v15) & 0x80000000) == 0)
      {
        v12 = heap_Calloc(*(v15 + 8), 1, 80);
        if (v12)
        {
          v13 = v12;
          *v12 = a3;
          v12[1] = a4;
          v12[2] = v15;
          v8 = dcteg_hlp_ObjInit(v12);
          dctlist_ObjOpen(v13 + 3, *(v15 + 8));
          *a5 = v13;
          *(a5 + 8) = 752;
        }

        else
        {
          log_OutPublic(*(v15 + 32), "DCTEG", 4400, 0);
          return 2231377930;
        }
      }
    }
  }

  return v8;
}

uint64_t dcteg_ObjClose(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = 0;
  v3 = safeh_HandleCheck(a1, a2, 752, 80);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v9);
  if ((inited & 0x80000000) == 0)
  {
    Next = dctlist_GetNext(a1 + 24, &v10);
    if (Next)
    {
      v6 = Next;
      do
      {
        p_unloadDct(a1, v6);
        v6 = dctlist_GetNext(a1 + 24, &v10);
      }

      while (v6);
    }

    dctlist_ObjClose(a1 + 24);
    v7 = *(a1 + 48);
    if (v7)
    {
      inited = CloseEDCTObj(v7);
    }

    heap_Free(*(v9 + 8), a1);
  }

  return inited;
}

uint64_t dcteg_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 752, 80);
  if ((result & 0x80000000) != 0)
  {
    return 2231377928;
  }

  if (a1)
  {

    return dcteg_hlp_ObjInit(a1);
  }

  return result;
}

uint64_t dcteg_LoadDictionary(uint64_t a1, int a2, const char **a3, uint64_t a4)
{
  v4 = 2231377930;
  v68 = 0;
  v5 = 2231377927;
  if (!a3 || !a4)
  {
    return v5;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  inited = safeh_HandleCheck(a1, a2, 752, 80);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v68);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (*a3 && p_checkIfPresent(a1, *a3))
  {
    v10 = *a3;
    if (!*a3)
    {
      v10 = "Unknown";
    }

    log_OutText(v68[4], "DCTEG", 3, 0, "dcteg_LoadDictionary failed, already loaded: %s", v10);
    return 2231378968;
  }

  v12 = a3[1];
  if (v12 && cstdlib_strlen(v12) && p_checkIfPresent(a1, a3[1]))
  {
    v13 = a3[1];
    if (!v13)
    {
      v13 = "Unknown";
    }

    log_OutText(v68[4], "DCTEG", 3, 0, "dcteg_LoadDictionary failed, already loaded: %s", v13);
    return 2231377939;
  }

  if (!*a3)
  {
    if (!a3[2])
    {
      log_OutPublic(v68[4], "DCTEG", 4408, 0);
      return v5;
    }

    v29 = heap_Calloc(v68[1], 1, 120);
    v15 = v68;
    if (!v29)
    {
      goto LABEL_40;
    }

    v16 = v29;
    *v29 = v68[1];
    v30 = a3[4];
    if (!v30)
    {
      goto LABEL_52;
    }

    v31 = "application/edct-bin-dictionary";
    if (cstdlib_strstr(v30, "application/edct-bin-dictionary"))
    {
      goto LABEL_35;
    }

    v35 = a3[4];
    if (!v35)
    {
      goto LABEL_52;
    }

    if (cstdlib_strstr(v35, "application/octet-stream"))
    {
      goto LABEL_35;
    }

    v36 = a3[4];
    if (!v36)
    {
      goto LABEL_52;
    }

    v31 = "application/cdct-bin-dictionary";
    if (cstdlib_strstr(v36, "application/cdct-bin-dictionary"))
    {
      goto LABEL_35;
    }

    v37 = a3[4];
    if (!v37)
    {
      goto LABEL_52;
    }

    v31 = "application/x-vocalizer-userdct-pointer";
    if (cstdlib_strstr(v37, "application/x-vocalizer-userdct-pointer"))
    {
      goto LABEL_35;
    }

    v38 = a3[4];
    if (v38)
    {
      if (cstdlib_strstr(v38, "application/vmp-bin-dictionary"))
      {
        v31 = "application/edct-bin-dictionary";
LABEL_35:
        *(v16 + 16) = v31;
        v32 = a3[4];
        if (!v32 || (v33 = "mode=langoverwriting", !cstdlib_strstr(v32, "mode=langoverwriting")))
        {
          v33 = "mode=standard";
        }

        *(v16 + 32) = v33;
        if (cstdlib_strstr(a3[4], "application/x-vocalizer-userdct-pointer"))
        {
          v34 = 4;
        }

        else
        {
          v34 = *(a3 + 6);
        }

        *(v16 + 64) = v34;
        *(v16 + 44) = 0;
        *(v16 + 48) = a3[2];
        goto LABEL_57;
      }

      v39 = a3[4];
    }

    else
    {
LABEL_52:
      v39 = 0;
    }

    log_OutPublic(v68[4], "DCTEG", 4403, "%s%s%s%s", "name", "Unknown", "contentType", v39);
    v4 = 2231378966;
    goto LABEL_100;
  }

  v14 = heap_Calloc(v68[1], 1, 120);
  v15 = v68;
  if (!v14)
  {
LABEL_40:
    log_OutPublic(*(v15 + 32), "DCTEG", 4400, 0);
    return 2231377930;
  }

  v16 = v14;
  *v14 = v68[1];
  v17 = *(a1 + 16);
  *(v14 + 104) = 0;
  v18 = (v14 + 104);
  *(v14 + 48) = 0;
  v19 = v14 + 48;
  *(v14 + 44) = 0;
  *(v14 + 64) = 0;
  v20 = v14 + 64;
  UDct = brk_DataOpenEx(*(v17 + 24), *a3, 0, v14 + 104);
  if ((UDct & 0x80000000) != 0)
  {
    goto LABEL_97;
  }

  UDct = brk_DataMapEx(*(v17 + 24), *v18, 0, v20, v19);
  if ((UDct & 0x80000000) != 0)
  {
    goto LABEL_97;
  }

  v27 = a3[4];
  if (!v27 || !*v27)
  {
    log_OutPublic(*(v17 + 32), "DCTEG", 4415, "%s%s", "uri", *a3);
    v4 = 2231377922;
    goto LABEL_100;
  }

  v28 = "application/edct-bin-dictionary";
  if (cstdlib_strstr(a3[4], "application/edct-bin-dictionary") || cstdlib_strstr(v27, "application/octet-stream") || (v28 = "application/cdct-bin-dictionary", cstdlib_strstr(v27, "application/cdct-bin-dictionary")) || (v28 = "application/x-vocalizer-userdct-pointer", cstdlib_strstr(v27, "application/x-vocalizer-userdct-pointer")))
  {
    *(v16 + 16) = v28;
  }

  else
  {
    *(v16 + 16) = "application/octet-stream";
  }

  if (cstdlib_strstr(v27, "mode=langoverwriting"))
  {
    *(v16 + 32) = "mode=langoverwriting";
  }

  else
  {
    *(v16 + 32) = "mode=standard";
  }

LABEL_57:
  v40 = a3[4];
  if (v40)
  {
    v41 = v68;
    v42 = cstdlib_strstr(v40, "type=");
    if (v42)
    {
      v43 = v42 + 5;
      v44 = cstdlib_strchr(v42 + 5, 59);
      if (!v44)
      {
        v44 = &v43[cstdlib_strlen(v43)];
      }

      v45 = v44 - v43;
      v46 = heap_Alloc(*(v41 + 8), (v44 - v43 + 1));
      *(v16 + 24) = v46;
      if (!v46)
      {
        v63 = *(v41 + 32);
        goto LABEL_99;
      }

      v47 = v45;
      if (v45)
      {
        v48 = 0;
        do
        {
          *(*(v16 + 24) + v48) = cstdlib_tolower(v43[v48]);
          ++v48;
        }

        while (v47 != v48);
        v46 = *(v16 + 24);
      }

      *(v46 + v47) = 0;
    }

    else
    {
      *(v16 + 24) = 0;
    }
  }

  if (a3[1])
  {
    v49 = a3[1];
  }

  else
  {
    v49 = "Unknown";
  }

  v50 = v68[1];
  v51 = cstdlib_strlen(v49);
  v52 = heap_Alloc(v50, (v51 + 1));
  *(v16 + 8) = v52;
  if (v52)
  {
    cstdlib_strcpy(v52, v49);
    v53 = *a3 ? *a3 : "Unknown";
    v54 = v68[1];
    v55 = cstdlib_strlen(v53);
    v56 = heap_Alloc(v54, (v55 + 1));
    *(v16 + 56) = v56;
    if (v56)
    {
      cstdlib_strcpy(v56, v53);
      if (*(v16 + 56) && a3[4])
      {
        log_OutEvent(v68[4], 12, "%s%s%s%s", v57, v58, v59, v60, v61, "URI");
      }

      if (cstdlib_strcmp(*(v16 + 16), "application/edct-bin-dictionary") && cstdlib_strcmp(*(v16 + 16), "application/cdct-bin-dictionary") && cstdlib_strcmp(*(v16 + 16), "application/x-vocalizer-userdct-pointer"))
      {
        v62 = *a3;
        if (!*a3)
        {
          v62 = "Unknown";
        }

        log_OutPublic(v68[4], "DCTEG", 4403, "%s%s%s%s", "name", v62, "contentType", *(v16 + 16));
LABEL_96:
        v4 = v5;
        goto LABEL_100;
      }

      v64 = *(a1 + 48);
      if (v64)
      {
        goto LABEL_89;
      }

      UDct = OpenEDCTObj(*a1, *(a1 + 8), a1 + 48);
      if ((UDct & 0x80000000) == 0)
      {
        v64 = *(a1 + 48);
LABEL_89:
        UDct = LoadUDct(v64, v16);
        if ((UDct & 0x80000000) == 0)
        {
          if (!*(a1 + 72) || (UDct = dcteg_hlp_InitializeMWDct(v68, a1, v16), (UDct & 0x80000000) == 0))
          {
            *(v16 + 96) = 0;
            if (!*(a1 + 76) || (UDct = dcteg_hlp_FetchURLHashtag(v68, v16), (UDct & 0x80000000) == 0))
            {
              *(v16 + 40) = 1;
              v5 = dctlist_Add(a1 + 24, v16);
              if ((v5 & 0x80000000) != 0)
              {
                v67 = *(v16 + 8);
                if (!v67)
                {
                  v67 = "Unknown";
                }

                log_OutPublic(v68[4], "DCTEG", 4418, "%s%s", "name", v67);
                v4 = v5 | 0x85002000;
                goto LABEL_100;
              }

              *a4 = v16;
              *(a4 + 8) = 753;
              goto LABEL_96;
            }
          }
        }
      }

LABEL_97:
      v4 = UDct;
      goto LABEL_100;
    }
  }

  v63 = v68[4];
LABEL_99:
  log_OutPublic(v63, "DCTEG", 4400, 0);
LABEL_100:
  if (*(v16 + 56) && a3[4])
  {
    log_OutEvent(v68[4], 13, "%s%s%s%s", v22, v23, v24, v25, v26, "URI");
  }

  v65 = *(v16 + 48);
  if (v65)
  {
    brk_DataUnmap(v68[3], *(v16 + 104), v65);
  }

  v66 = *(v16 + 104);
  if (v66)
  {
    brk_DataClose(v68[3], v66);
  }

  if ((v4 & 0x80000000) != 0)
  {
    p_unloadDct(a1, v16);
  }

  return v4;
}

uint64_t dcteg_UnloadDictionary(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v12 = 0;
  inited = safeh_HandleCheck(a1, a2, 752, 80);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = safeh_HandleCheck(a3, a4, 753, 120);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v12);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v8 = dctlist_Remove(a1 + 24, a3);
  if ((v8 & 0x80000000) == 0)
  {
    return p_unloadDct(a1, a3);
  }

  v9 = v8;
  v11 = *(a3 + 8);
  if (!v11)
  {
    v11 = "Unknown";
  }

  log_OutPublic(*(v12 + 32), "DCTEG", 4410, "%s%s", "name", v11);
  return v9;
}

uint64_t dcteg_SetExternalCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  result = safeh_HandleCheck(a1, a2, 752, 80);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*a1, *(a1 + 8), &v8);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 56) = a3;
      *(a1 + 64) = a4;
    }
  }

  return result;
}

BOOL dcteg_IsDictActive(uint64_t a1, int a2)
{
  v6 = 0;
  if ((safeh_HandleCheck(a1, a2, 752, 80) & 0x80000000) != 0)
  {
    return 0;
  }

  Next = dctlist_GetNext(a1 + 24, &v6);
  if (!Next)
  {
    return *(a1 + 56) != 0;
  }

  v4 = Next;
  while (cstdlib_strcmp(*(v4 + 16), "application/edct-bin-dictionary") && cstdlib_strcmp(*(v4 + 16), "application/cdct-bin-dictionary") && cstdlib_strcmp(*(v4 + 16), "application/x-vocalizer-userdct-pointer") || *(v4 + 40) != 1)
  {
    v4 = dctlist_GetNext(a1 + 24, &v6);
    if (!v4)
    {
      return *(a1 + 56) != 0;
    }
  }

  return 1;
}

uint64_t dcteg_EnableDictionary(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a5;
  v14 = 0;
  inited = safeh_HandleCheck(a1, a2, 752, 80);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = safeh_HandleCheck(a3, a4, 753, 120);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v14);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (*(a3 + 40) == 1)
  {
    v10 = *(a3 + 8);
    if (!v10)
    {
      v10 = "Unknown";
    }

    log_OutText(*(v14 + 32), "DCTEG", 3, 0, "dcteg_EnableDictionary failed, already enabled: %s", v10);
    return 2231378970;
  }

  else
  {
    v11 = dctlist_Move(a1 + 24, a3, v5);
    if ((v11 & 0x80000000) != 0)
    {
      v13 = *(a3 + 8);
      if (!v13)
      {
        v13 = "Unknown";
      }

      log_OutPublic(*(v14 + 32), "DCTEG", 4411, "%s%s", "name", v13);
    }

    else
    {
      *(a3 + 40) = 1;
    }
  }

  return v11;
}

uint64_t dcteg_DisableDictionary(uint64_t a1, int a2, uint64_t a3, int a4)
{
  inited = safeh_HandleCheck(a3, a4, 753, 120);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = 0;
  inited = safeh_HandleCheck(a1, a2, 752, 80);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v12);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (*(a3 + 40))
  {
    v8 = dctlist_Move(a1 + 24, a3, 0xFFFFFFFF);
    if ((v8 & 0x80000000) != 0)
    {
      v11 = *(a3 + 8);
      if (!v11)
      {
        v11 = "Unknown";
      }

      log_OutPublic(*(v12 + 32), "DCTEG", 4412, "%s%s", "name", v11);
      return v8 | 0x85002000;
    }

    else
    {
      *(a3 + 40) = 0;
    }
  }

  else
  {
    v10 = *(a3 + 8);
    if (!v10)
    {
      v10 = "Unknown";
    }

    log_OutText(*(v12 + 32), "DCTEG", 3, 0, "dcteg_DisableDictionary failed, already disabled: %s", v10);
    return 2231378957;
  }

  return v8;
}

uint64_t dcteg_DisableAllDictionaries(uint64_t a1, int a2)
{
  v6 = 0;
  v3 = safeh_HandleCheck(a1, a2, 752, 80);
  if ((v3 & 0x80000000) == 0)
  {
    for (i = dctlist_GetNext(a1 + 24, &v6); i; i = dctlist_GetNext(a1 + 24, &v6))
    {
      *v6 = -1;
      *(i + 40) = 0;
    }
  }

  return v3;
}

uint64_t dcteg_Lookup_Utf8(void *a1, uint64_t a2, _BYTE *a3, const char *a4, char *a5, __int16 *a6, char *a7, _DWORD *a8, char *a9, char *a10, void *a11, int a12)
{
  v68 = *MEMORY[0x277D85DE8];
  v18 = 2231377920;
  v65 = 0;
  v66 = 0;
  NullHandle = safeh_GetNullHandle();
  if (a12 == 2)
  {
    v21 = 111;
  }

  else
  {
    v21 = 0;
  }

  if (a12 == 1)
  {
    v22 = 108;
  }

  else
  {
    v22 = v21;
  }

  if (!a1)
  {
    return 2231377928;
  }

  v60 = v20;
  v61 = NullHandle;
  v23 = *(a1[2] + 40);
  *__s = 0;
  __dst[0] = 0;
  Str = paramc_ParamGetStr(v23, "langcode", __s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (!*__s || cstdlib_strlen(*__s) != 3)
  {
    return 2231377920;
  }

  v55 = v22;
  cstdlib_strcpy(__dst, *__s);
  if (cstdlib_strlen(__dst))
  {
    v58 = a3;
    v25 = a7;
    v26 = 0;
    do
    {
      __dst[v26] = cstdlib_tolower(__dst[v26]);
      ++v26;
    }

    while (v26 < cstdlib_strlen(__dst));
    a7 = v25;
    a3 = v58;
  }

  if ((objc_GetObject(*(a1[2] + 48), "CLMOBJECT", &v65) & 0x80000000) != 0)
  {
    v59 = 0;
  }

  else
  {
    v61 = v65[2];
    v59 = v65[1];
    v60 = v65[3];
  }

  __s[0] = 0;
  if (a4 && cstdlib_strlen(a4))
  {
    if (cstdlib_strlen(a4) + 1 > 0xC)
    {
      goto LABEL_96;
    }

    cstdlib_strcpy(__s, a4);
    if (cstdlib_strlen(__s) >= 1)
    {
      v28 = 0;
      do
      {
        __s[v28] = cstdlib_tolower(__s[v28]);
        ++v28;
      }

      while (cstdlib_strlen(__s) > v28);
    }

    v29 = cstdlib_strstr(__s, "normal");
    if (!v29)
    {
      v29 = cstdlib_strstr(__s, "lid");
      if (!v29)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    v29 = __s;
  }

  cstdlib_strcpy(v29, __dst);
LABEL_32:
  if (a5)
  {
    v30 = cstdlib_strstr(a5, "\x14");
    if (v30)
    {
      v31 = v30 - a5;
    }

    else
    {
      v31 = cstdlib_strlen(a5);
    }

    v33 = v31;
    v34 = heap_Alloc(*(a1[2] + 8), v31 + 1);
    if (!v34)
    {
      log_OutPublic(*(a1[2] + 32), "DCTEG", 4400, 0);
      v18 = 2231377930;
      goto LABEL_96;
    }

    v32 = v34;
    if (v33)
    {
      v56 = a7;
      for (i = 0; i < v33; ++i)
      {
        v32[i] = cstdlib_tolower(a5[i]);
      }

      v36 = i;
      a7 = v56;
    }

    else
    {
      v36 = 0;
    }

    v32[v36] = 0;
  }

  else
  {
    v32 = 0;
  }

  Next = dctlist_GetNext((a1 + 3), &v66);
  if (!Next)
  {
LABEL_78:
    v51 = a1[7];
    if (v51)
    {
      Str = v51(a1[8], a3, a6, a7);
    }

    else if (Str < 0)
    {
      Str = Str;
    }

    else
    {
      Str = 2231377940;
    }

    goto LABEL_93;
  }

  v38 = Next;
  v57 = 0;
  v39 = a9;
  if (!a9)
  {
    v39 = "";
  }

  v54 = v39;
  if (a10)
  {
    v40 = a10;
  }

  else
  {
    v40 = "";
  }

  v53 = v40;
  while (!cstdlib_strcmp(*(v38 + 16), "application/edct-bin-dictionary") || !cstdlib_strcmp(*(v38 + 16), "application/cdct-bin-dictionary") || !cstdlib_strcmp(*(v38 + 16), "application/x-vocalizer-userdct-pointer"))
  {
    if (*(v38 + 40) == 1)
    {
      if (cstdlib_strcmp(*(v38 + 32), "mode=langoverwriting"))
      {
        v41 = __s;
      }

      else
      {
        v41 = 0;
      }

      if (a6)
      {
        v57 = *a6;
      }

      Str = RetrieveUDctEntry(a1, v38, v41, v32, a3, a7, a6, a9, a10, a8);
      if ((Str & 0x80000000) == 0)
      {
        v63 = 1;
        if (!v59)
        {
          goto LABEL_89;
        }

        v47 = safeh_GetNullHandle();
        if (safeh_HandlesEqual(v61, v60, v47, v48) || *a8 != 1)
        {
          goto LABEL_89;
        }

        if (*(v38 + 8))
        {
          v49 = *(v38 + 8);
        }

        else
        {
          v49 = "";
        }

        log_OutText(*(a1[2] + 32), "DCTEG", 4, 0, "Validating transcription [%s] [LNG=%s LOO=%s] [%s]", a7, v54, v53, v49);
        Str = (*(v59 + 88))(v61, v60, a9, a10, a7, &v63);
        if ((Str & 0x80000000) != 0)
        {
          if (a6)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v50 = *(a1[2] + 32);
          if (v63)
          {
            log_OutText(v50, "DCTEG", 4, 0, "Valid transcription");
LABEL_89:
            if (a11)
            {
              *a11 = *(v38 + 56);
            }

            if (a12)
            {
              log_OutTraceTuningData(*(a1[2] + 32), v55, "%s%s %s%s %s%s %s%u", v42, v43, v44, v45, v46, "NAME");
            }

            goto LABEL_93;
          }

          log_OutText(v50, "DCTEG", 4, 0, "Skipping invalid transcription [%s]", a7);
          LODWORD(Str) = -2063589356;
          if (a6)
          {
LABEL_71:
            *a6 = v57;
          }
        }
      }

      if (a12)
      {
        log_OutTraceTuningData(*(a1[2] + 32), v55, "%s%s %s%s %s%u", v42, v43, v44, v45, v46, "NAME");
      }
    }

    v38 = dctlist_GetNext((a1 + 3), &v66);
    if (!v38)
    {
      goto LABEL_78;
    }
  }

  v52 = "Unknown";
  if (*(v38 + 8))
  {
    v52 = *(v38 + 8);
  }

  log_OutPublic(*(a1[2] + 32), "DCTEG", 4413, "%s%s%s%s", "name", v52, "contentType", *(v38 + 16));
  Str = 2231377927;
LABEL_93:
  if (v32)
  {
    heap_Free(*(a1[2] + 8), v32);
  }

  v18 = Str;
LABEL_96:
  if (v59)
  {
    objc_ReleaseObject(*(a1[2] + 48), "CLMOBJECT");
  }

  return v18;
}

uint64_t dcteg_LookupMultiWordLengths(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, char *a5, unsigned __int16 *a6)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v6 = 2231377940;
  __s = 0;
  v28[0] = 0;
  v7 = *a4;
  __s1 = 0;
  if (!a1)
  {
    return 2231377928;
  }

  v13 = *(a1 + 16);
  if (!v13 || (v14 = *(v13 + 40)) == 0 || (paramc_ParamGetStr(v14, "disablemultiworddictionarywithoutescseqlookup", &__s1) & 0x80000000) != 0 || !__s1 || cstdlib_strcmp(__s1, "yes"))
  {
    *a5 = 0;
    Next = dctlist_GetNext(a1 + 24, v28);
    if (Next)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        while ((ssftmap_Find(*(Next + 88), a3, &__s) & 0x80000000) == 0 && cstdlib_strlen(__s) + v16 < v7)
        {
          cstdlib_strcat(a5, __s);
          v16 += cstdlib_strlen(__s);
          *a4 = v16;
          Next = dctlist_GetNext(a1 + 24, v28);
          v6 = 0;
          v17 = 1;
          if (!Next)
          {
            goto LABEL_17;
          }
        }

        Next = dctlist_GetNext(a1 + 24, v28);
      }

      while (Next);
      if ((v17 & 1) == 0)
      {
        return v6;
      }

LABEL_17:
      if (*a4)
      {
        v18 = cstdlib_strlen(a5);
        v19 = v18;
        if (v18)
        {
          v20 = 0;
          v21 = v18;
          do
          {
            while (v19 > v20 && a5[v20] == 32)
            {
              ++v20;
            }

            if (v19 <= v20)
            {
              v22 = 0;
            }

            else
            {
              LOWORD(v22) = 0;
              do
              {
                v23 = a5[v20];
                if (v23 == 32)
                {
                  break;
                }

                *(v28 + v22) = v23;
                ++v20;
                LOWORD(v22) = v22 + 1;
              }

              while (v19 > v20);
              v22 = v22;
            }

            *(v28 + v22) = 0;
            v24 = LH_atoi(v28);
            if (*a6 < v24)
            {
              *a6 = v24;
            }
          }

          while (v20 < v21);
        }
      }

      return 0;
    }
  }

  return v6;
}

uint64_t dcteg_CheckProtectURLHashtag(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = 0;
  v10 = 0;
  if (!a1)
  {
    return 2231377928;
  }

  v6 = *(a1 + 76);
  if (v6)
  {
    while (1)
    {
      result = dctlist_GetNext(a1 + 24, &v10);
      if (!result)
      {
        v6 = 0;
        goto LABEL_11;
      }

      result = ssftmap_FindReadOnly(*(result + 96), a3, &v9);
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      if ((result & 0x1FFF) != 0x14)
      {
        return result;
      }
    }

    v6 = 1;
  }

  else
  {
    result = 0;
  }

LABEL_11:
  *a4 = v6;
  return result;
}

uint64_t dcteg_hlp_ObjInit(uint64_t a1)
{
  __s1 = 0;
  *(a1 + 72) = 1;
  Str = paramc_ParamGetStr(*(*(a1 + 16) + 40), "udcturlhashtag", &__s1);
  result = 0;
  if ((Str & 0x80000000) == 0 && __s1)
  {
    if (cstdlib_strcmp(__s1, "yes"))
    {
      return 0;
    }

    else
    {
      *(a1 + 76) = 1;
      return Str;
    }
  }

  return result;
}

uint64_t p_unloadDct(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v24);
  if ((inited & 0x80000000) == 0)
  {
    log_OutTraceTuningData(*(v24 + 32), 103, "%s%s %s%s", v4, v5, v6, v7, v8, "BEG");
    v10 = *(a2 + 88);
    if (!v10 || (inited = ssftmap_ObjClose(v10), (inited & 0x80000000) == 0))
    {
      v16 = *(a2 + 96);
      if (!v16 || (inited = ssftmap_ObjClose(v16), (inited & 0x80000000) == 0))
      {
        v17 = *(a2 + 16);
        if (!v17)
        {
          inited = 2231377927;
          log_OutPublic(*(v24 + 32), "DCTEG", 4405, "%s%s");
          goto LABEL_15;
        }

        if (cstdlib_strcmp(v17, "application/edct-bin-dictionary") && cstdlib_strcmp(*(a2 + 16), "application/cdct-bin-dictionary") && cstdlib_strcmp(*(a2 + 16), "application/x-vocalizer-userdct-pointer"))
        {
          inited = 2231377927;
          log_OutPublic(*(v24 + 32), "DCTEG", 4404, "%s%s%s%s");
LABEL_15:
          v19 = *(a2 + 8);
          if (v19)
          {
            heap_Free(*(v24 + 8), v19);
          }

          v20 = *(a2 + 24);
          if (v20)
          {
            heap_Free(*(v24 + 8), v20);
          }

          v21 = *(a2 + 56);
          if (v21)
          {
            heap_Free(*(v24 + 8), v21);
          }

          v22 = *(a2 + 48);
          if (v22 && *(a2 + 44))
          {
            heap_Free(*(v24 + 8), v22);
          }

          heap_Free(*(v24 + 8), a2);
          goto LABEL_25;
        }

        v18 = *(a1 + 48);
        if (!v18)
        {
          goto LABEL_15;
        }

        inited = UnloadUDct(v18, a2);
        if ((inited & 0x80000000) == 0)
        {
          goto LABEL_15;
        }
      }
    }

LABEL_25:
    log_OutTraceTuningData(*(v24 + 32), 103, "%s%s %s%u", v11, v12, v13, v14, v15, "END");
  }

  return inited;
}

uint64_t p_checkIfPresent(uint64_t a1, const char *a2)
{
  v7 = 0;
  do
  {
    Next = dctlist_GetNext(a1 + 24, &v7);
    v5 = Next;
  }

  while (Next && cstdlib_strcmp(a2, *(Next + 8)));
  return v5;
}