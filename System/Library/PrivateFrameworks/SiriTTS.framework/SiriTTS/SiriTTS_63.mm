uint64_t lidword_normalizedDup(uint64_t a1, char *a2, unsigned int a3, _WORD *a4, int a5)
{
  v6 = a4;
  v51 = *MEMORY[0x1E69E9840];
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
      v15 = a1 + 0x20000;
      v41 = v6 + 5;
      v40 = a5;
      v16 = __s2;
      if (!a5)
      {
        v16 = __s1;
      }

      __src = v16;
      v45 = a3;
      v46 = 1;
      v17 = result;
      while (1)
      {
        v18 = &a2[v14];
        if (utf8_strchr(*(v15 + 3856), v18))
        {
          break;
        }

        v20 = strlen(&a2[v14]);
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

          v26 = strlen(&a2[v14]);
          v27 = utf8_BelongsToSet(6u, &a2[v14], 0, v26);
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
              v30 = strlen(&a2[v14]);
              if (utf8_BelongsToSet(6u, &a2[v14], 0, v30) || *v17 != *v18)
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
            __strncpy_chk();
            __s1[v21] = 0;
            utf8_ToLower(__s1, 0, __s2);
            v46 = v46 && strcmp(__s1, __s2);
            strcpy(v17, __src);
            v13 = 0;
            v11 = 0;
            v17 += strlen(__src);
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
      if (utf8_strchr(*(v15 + 3864), &a2[v14]))
      {
LABEL_28:
        v21 = utf8_determineUTF8CharLength(*v18);
        strncpy(v17, &a2[v14], v21);
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

uint64_t lidword_CheckLangTags(uint64_t a1, _BYTE *a2, uint64_t *a3, unsigned int *a4)
{
  v6 = a2;
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = a2;
  result = lidword_AdvanceSkippingSpacesInNormSW(&v17, &v16);
  v9 = v17;
  if (v16 != v17)
  {
    v10 = 0;
    do
    {
      if (!*v9 || v10 > 0xFF)
      {
        break;
      }

      v11 = *a3;
      v12 = *a4;
      __dst[0] = 0;
      if (v12 >= 2)
      {
        v13 = *(v11 + 12) + v9 - v6;
        for (i = 1; i < v12; ++i)
        {
          v15 = v11 + 32 * i;
          if (v13 < *(v15 + 12))
          {
            break;
          }

          if (*v15 == 36)
          {
            strncpy(__dst, *(v15 + 24), 0x13uLL);
          }
        }

        if (__dst[0] && (!strstr(__dst, *(a1 + 1912)) && !strstr(__dst, "normal") || strstr(__dst, "noautolid")))
        {
          *(a1 + 133116 + 4 * v10) = -4;
        }
      }

      result = lidword_AdvanceSkippingSpacesInNormEW(&v17, &v16);
      ++v10;
      v9 = v17;
    }

    while (v16 != v17);
  }

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
      v5 = strlen(v3);
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

    v6 = strlen(v3);
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
    v5 = strlen(i);
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
    v7 = strlen(j);
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
    v9 = a1 + 134140;
    v10 = a1 + 134396;
    v11 = a1 + 134652;
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

        if (*v7 && utf8_strchr(*(a1 + 134928), v7))
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
            while (utf8_strchr(*(a1 + 134928), v13))
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
      if (*v14 && utf8_strchr(*(a1 + 134928), v14))
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
    v14 = result + 133116;
    v6 = (result + 133120);
    v7 = 1 - a2;
    for (i = (result + 133112); ; ++i)
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
  v36 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = a2;
  v31 = a2;
  lidword_AdvanceSkippingSpacesInNormSW(&v34, &v33);
  v13 = v33;
  v12 = v34;
  if (v33 != v34)
  {
    v14 = 0;
    inserted = 0;
    v16 = 0;
    v17 = 0;
    v18 = a1 + 133116;
    v27 = a6 - 1;
    while (1)
    {
      if (!*v12 || v14 > 0xFF)
      {
        return inserted;
      }

      v19 = *(v18 + 4 * v14);
      if ((v19 & 0x80000000) == 0 && !strstr((*(a1 + 1944) + 8 * v19), *(a1 + 1912)))
      {
        __strcpy_chk();
        __strcat_chk();
        v20 = v12 - v31;
        if (*a5 < 2)
        {
          v21 = a3;
        }

        else
        {
          v21 = a3;
          v22 = 1;
          do
          {
            v23 = *a3 + 32 * v22;
            if ((*(*a3 + 12) + v20) < *(v23 + 12))
            {
              break;
            }

            if (*v23 == 36)
            {
              v17 = *(v23 + 24);
            }

            ++v22;
          }

          while (*a5 > v22);
        }

        if (!v17)
        {
          v17 = "normal";
        }

        if (!strcmp(v17, __s2))
        {
          inserted = 0;
        }

        else
        {
          appended = hlp_AppendItemRaw32(a1, v21, a4, a5, 0x20u, 10);
          if ((appended & 0x80000000) != 0)
          {
            return appended;
          }

          inserted = lidword_InsertLangMarker(a1, *v21, *a5, v20, __s2, 1, a7, a8, a9);
          v16 = v17;
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }
        }

        if (v27 == v14)
        {
          if (!v16)
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (v27 <= v14)
          {
            goto LABEL_7;
          }

          if (*(v18 + 4 * v14) == *(v18 + 4 * v14 + 4) || v16 == 0)
          {
            goto LABEL_7;
          }
        }

        appended = hlp_AppendItemRaw32(a1, a3, a4, a5, 0x20u, 10);
        if ((appended & 0x80000000) != 0)
        {
          return appended;
        }

        inserted = lidword_InsertLangMarker(a1, *a3, *a5, v13 - v31, v16, 0, a7, a8, a9);
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }
      }

LABEL_7:
      lidword_AdvanceSkippingSpacesInNormEW(&v34, &v33);
      ++v14;
      v13 = v33;
      v12 = v34;
      if (v33 == v34)
      {
        return inserted;
      }
    }
  }

  return 0;
}

uint64_t lidword_Init(void *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = 2345672714;
  memset(v52, 0, 256);
  memset(v51, 0, sizeof(v51));
  memset(__c, 0, sizeof(__c));
  if (!a1)
  {
    return 2345672711;
  }

  v3 = a1 + 0x4000;
  v49 = 0;
  __src = 0;
  v4 = a1[136];
  v5 = (a1 + 16871);
  *(a1 + 8433) = 0uLL;
  *(a1 + 8434) = 0uLL;
  *(a1 + 67480) = 0;
  *(a1 + 16871) = 0uLL;
  *(a1 + 16873) = 0uLL;
  *(a1 + 481) = 0;
  if ((paramc_ParamGetStr(*(a1[2] + 40), "ml2lid", &__src) & 0x80000000) == 0 && __src && *__src == 110 && __src[1] == 111 && !__src[2] || (lidword_GetU16Param(a1, "nrlanguages", a1 + 964) & 0x80000000) != 0)
  {
    LODWORD(v1) = -1949294572;
    goto LABEL_52;
  }

  *(a1 + 481) = 1;
  *(a1 + 1012) = 21;
  U16Param = lidword_GetU16Param(a1, "maxwordlen", a1 + 1012);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  *(a1 + 1013) = 100;
  U16Param = lidword_GetU16Param(a1, "embdim", a1 + 1013);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  *(a1 + 1014) = 1;
  U16Param = lidword_GetU16Param(a1, "contextlength", a1 + 1014);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  *(a1 + 1020) = 1;
  U16Param = lidword_GetU16Param(a1, "nrpart", a1 + 1020);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  *(a1 + 508) = 1061997773;
  U16Param = lidword_GetF32Param(a1, "nnthreshold", a1 + 508);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  *(a1 + 509) = 1064514355;
  U16Param = lidword_GetF32Param(a1, "ctxtnnthreshold", a1 + 509);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  __src = 0;
  U16Param = lidword_GetTextParam(a1, "punclist", &__src);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  v7 = __src;
  if (!__src)
  {
  }

  v8 = strlen(v7);
  v9 = heap_Alloc(*(a1[2] + 8), v8 + 1);
  v3[482] = v9;
  if (!v9)
  {
    goto LABEL_87;
  }

  strcpy(v9, __src);
  __src = 0;
  U16Param = lidword_GetTextParam(a1, "punccurrencylist", &__src);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  v10 = __src;
  if (!__src)
  {
    v10 = "€£$";
    __src = "€£$";
  }

  v11 = strlen(v10);
  v12 = heap_Alloc(*(a1[2] + 8), v11 + 1);
  v3[483] = v12;
  if (!v12)
  {
    goto LABEL_87;
  }

  strcpy(v12, __src);
  __src = 0;
  U16Param = lidword_GetTextParam(a1, "puncincludedlist", &__src);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  v13 = __src;
  if (!__src)
  {
    v13 = ".&-/";
    __src = ".&-/";
  }

  v14 = strlen(v13);
  v15 = heap_Alloc(*(a1[2] + 8), v14 + 1);
  v3[484] = v15;
  if (!v15)
  {
    goto LABEL_87;
  }

  strcpy(v15, __src);
  __src = 0;
  U16Param = lidword_GetTextParam(a1, "consonantlist", &__src);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  v16 = __src;
  if (!__src)
  {
    v16 = "bcdfghjklmnpqrstvwxzß";
    __src = "bcdfghjklmnpqrstvwxzß";
  }

  v17 = strlen(v16);
  v18 = heap_Alloc(*(a1[2] + 8), v17 + 1);
  v3[485] = v18;
  if (!v18)
  {
    goto LABEL_87;
  }

  strcpy(v18, __src);
  *(v3 + 1945) = 4;
  v47 = v3;
  U16Param = lidword_GetU16Param(a1, "mdeminstemlen", v3 + 1945);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  __src = 0;
  U16Param = lidword_GetTextParam(a1, "mdestemvowels", &__src);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  v19 = __src;
  if (!__src)
  {
    v19 = "aeiouy";
    __src = "aeiouy";
  }

  v20 = strlen(v19);
  v21 = heap_Alloc(*(a1[2] + 8), v20 + 1);
  *v5 = v21;
  if (!v21)
  {
    goto LABEL_87;
  }

  strcpy(v21, __src);
  __src = 0;
  U16Param = lidword_GetTextParam(a1, "mdestemmingrules", &__src);
  if (U16Param < 0 && (U16Param & 0x1FFF) != 0x14)
  {
    goto LABEL_49;
  }

  if (__src)
  {
    v23 = strlen(__src);
    v24 = heap_Alloc(*(a1[2] + 8), v23 + 1);
    v3[488] = v24;
    if (!v24)
    {
      goto LABEL_87;
    }

    strcpy(v24, __src);
    U16Param = lidmde_ParseStemmingRules(a1);
    if (U16Param < 0)
    {
      goto LABEL_49;
    }
  }

  v25 = heap_Calloc(*(a1[2] + 8), *(a1 + 964), 8);
  a1[242] = v25;
  v26 = a1[2];
  if (!v25)
  {
    goto LABEL_88;
  }

  v27 = heap_Calloc(*(v26 + 8), *(a1 + 964), 8);
  a1[243] = v27;
  v26 = a1[2];
  if (!v27)
  {
    goto LABEL_88;
  }

  v28 = heap_Calloc(*(v26 + 8), *(a1 + 964), 2);
  a1[244] = v28;
  if (v28)
  {
    U16Param = lidword_InitLangParams(a1);
    if ((U16Param & 0x80000000) == 0)
    {
      v29 = *(v4 + 8);
      if (*(v4 + 8))
      {
        v30 = 0;
        v31 = *(a1 + 964);
        v32 = v31;
        do
        {
          if (v32)
          {
            v33 = 0;
            v34 = (*(v4 + 16) + 8 * v30);
            v35 = a1[242];
            do
            {
              if (!strcmp(v34, v35))
              {
                *(a1[244] + 2 * v33) = v30;
                v31 = *(a1 + 964);
              }

              ++v33;
              v35 += 8;
            }

            while (v33 < v31);
            v29 = *(v4 + 8);
            v32 = v31;
          }

          ++v30;
        }

        while (v30 < v29);
      }

      Interface = nn_word_lkp_GetInterface(1u, a1 + 245);
      if ((Interface & 0x80000000) == 0)
      {
        a1[246] = safeh_GetNullHandle();
        a1[247] = v37;
        a1[248] = safeh_GetNullHandle();
        a1[249] = v38;
        Interface = (*(a1[245] + 16))(a1[246], a1[247], "lid", *a1, a1[1], a1 + 248);
        if ((Interface & 0x80000000) == 0)
        {
          Interface = (*(a1[245] + 40))(a1[248], a1[249], a1 + 250);
          if ((Interface & 0x80000000) == 0)
          {
            log_OutText(*(a1[2] + 32), "FE_LID", 5, 0, "word2vec length %d", *(a1 + 500));
            v39 = heap_Alloc(*(a1[2] + 8), 4 * *(a1 + 500));
            a1[251] = v39;
            if (!v39)
            {
              log_OutPublic(*(a1[2] + 32), "FE_LID", 48000, 0);
              return v1;
            }

            *(a1 + 1015) = (2 * *(a1 + 1014)) | 1;
            *&__c[1] = -1;
            Interface = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", "nrpart_tn", &__c[3], &__c[1], __c);
            if ((Interface & 0x80000000) == 0)
            {
              *(v47 + 3848) = 1;
              if (*&__c[1])
              {
                v40 = **&__c[3];
                v41 = strchr(**&__c[3], __c[0]);
                if (v41)
                {
                  *v41 = 0;
                  v40 = **&__c[3];
                }

                *(v47 + 3848) = atoi(v40);
              }

              strcpy(v51, "ml2rnn");
              __strcat_chk();
              Interface = brokeraux_ComposeBrokerString(a1[2], v51, 1, 0, a1[239], 0, 0, v52, 0x100uLL);
              if ((Interface & 0x80000000) == 0)
              {
                Interface = fi_init(*a1, a1[1], a1[3], a1[4], &v49, 2, v52, "FINN", 1, 0);
                if ((Interface & 0x80000000) != 0)
                {
                  Interface = brokeraux_ComposeBrokerString(a1[2], "ml2rnn", 1, 0, a1[239], 0, 0, v52, 0x100uLL);
                  if ((Interface & 0x80000000) != 0)
                  {
                    return Interface;
                  }

                  Interface = fi_init(*a1, a1[1], a1[3], a1[4], &v49, 0, v52, "FINN", 1, 0);
                  if ((Interface & 0x80000000) != 0)
                  {
                    return 2345672704;
                  }
                }

                v42 = *v49;
                v43 = *(*v49 + 56);
                if (*(*v49 + 52) == 2)
                {
                  v44 = *(a1 + 1013);
                  v45 = *(a1 + 964);
                  v46 = *(a1 + 1015);
                  if (v43 == *(a1 + 1012) && *(v42 + 60) == v44 + v46 * v45 + 3)
                  {
                    v47[480] = v49;
                    return Interface;
                  }
                }

                else
                {
                  v44 = *(a1 + 1013);
                  v45 = *(a1 + 964);
                  v46 = *(a1 + 1015);
                }

                log_OutText(*(a1[2] + 32), "FE_LID", 5, 0, "expected (%d, %d) got (%d, %d)", v43, *(v42 + 60), *(a1 + 1012), v44 + v46 * v45 + 3);
                return 2345672729;
              }
            }
          }
        }
      }

      return Interface;
    }

LABEL_49:
    LODWORD(v1) = U16Param;
    goto LABEL_52;
  }

LABEL_87:
  v26 = a1[2];
LABEL_88:
  log_OutPublic(*(v26 + 32), "FE_LID", 48000, 0);
LABEL_52:
  if ((v1 & 0x1FFF) == 0x14)
  {
    return 0;
  }

  else
  {
    return v1;
  }
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

  v12 = *(a1 + 134912);
  if (v12)
  {
    v7 = fi_deinit(*(a1 + 16), *(a1 + 40), v12);
    *(a1 + 134912) = 0;
  }

  v13 = *(a1 + 134928);
  if (v13)
  {
    heap_Free(*(*(a1 + 16) + 8), v13);
  }

  v14 = *(a1 + 134936);
  if (v14)
  {
    heap_Free(*(*(a1 + 16) + 8), v14);
  }

  v15 = *(a1 + 134944);
  if (v15)
  {
    heap_Free(*(*(a1 + 16) + 8), v15);
  }

  v16 = *(a1 + 134952);
  if (v16)
  {
    heap_Free(*(*(a1 + 16) + 8), v16);
  }

  v17 = *(a1 + 134968);
  if (v17)
  {
    heap_Free(*(*(a1 + 16) + 8), v17);
  }

  v18 = *(a1 + 134976);
  if (v18)
  {
    heap_Free(*(*(a1 + 16) + 8), v18);
  }

  v19 = *(a1 + 134984);
  if (v19)
  {
    heap_Free(*(*(a1 + 16) + 8), v19);
  }

  v20 = *(a1 + 134992);
  if (v20)
  {
    heap_Free(*(*(a1 + 16) + 8), v20);
  }

  *(a1 + 1928) = 0;
  return v7;
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
        v9 = strlen(__s);
        goto LABEL_11;
      }
    }

    return 0;
  }

  v9 = strlen(__s);
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

uint64_t lidword_IsSpace(int a1, char *__s)
{
  v3 = strlen(__s);

  return utf8_BelongsToSet(0, __s, 0, v3);
}

const char **lidword_AdvanceToEndMultiword(const char **result)
{
  v1 = *result;
  if (**result)
  {
    v2 = result;
    while (1)
    {
      v3 = strlen(v1);
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
      v5 = strlen(v4);
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
  v16 = *MEMORY[0x1E69E9840];
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
      v11 = *(&result[64 * a2 + 255] + *(v10 + 2 * v6) + 1);
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
    result = memcpy(&result[64 * a2 + 255] + 4, __src, 4 * v3);
    if (v7)
    {
      if (v7 == 1)
      {
        if (a3)
        {
          *(v5 + v9 + 33279) = v8;
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
      if (*(a1 + 2044 + (a2 << 9) + 4 * v4))
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
    if (v14 >= 2)
    {
      for (i = 1; i < v14; ++i)
      {
        if ((*(a2 + 12) + a4) < *(a2 + 32 * i + 12))
        {
          break;
        }
      }

      j = i - 1;
    }

    else
    {
      j = 0;
    }
  }

  else if (v14 >= 2)
  {
    for (j = 1; j < v14; ++j)
    {
      if ((*(a2 + 12) + a4) <= *(a2 + 32 * j + 12))
      {
        break;
      }
    }
  }

  else
  {
    j = 1;
  }

  v17 = j;
  v18 = (a2 + 32 * j);
  memmove(v18 + 8, v18, 32 * (v14 - j));
  v19 = *a9;
  if (v19)
  {
    v20 = 0;
    v21 = *a7;
    do
    {
      v22 = *(v21 + 4 * v20);
      if (v22 >= v17)
      {
        *(v21 + 4 * v20) = v22 + 1;
        v19 = *a9;
      }

      ++v20;
    }

    while (v20 < v19);
  }

  *v18 = 36;
  v23 = strlen(a5);
  v24 = heap_Alloc(*(*(a1 + 16) + 8), (v23 + 1));
  *(v18 + 3) = v24;
  if (!v24)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
    return 2345672714;
  }

  strcpy(v24, a5);
  *(v18 + 3) = (*(a2 + 12) + a4);
  if (v14 <= v17)
  {
    v26 = *(v18 - 7);
    goto LABEL_24;
  }

  v25 = v18[9];
  v26 = *(v18 - 7);
  if (v25 <= v26)
  {
LABEL_24:
    v25 = v26;
  }

  v18[1] = v25;
  v18[2] = 0;
  result = hlp_AppendItemRaw32(a1, a7, a8, a9, 4u, 10);
  if ((result & 0x80000000) == 0)
  {
    *(*a7 + 4 * (*a9 - 1)) = v17;
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
      v5 = **&__c[3];
      v6 = strchr(**&__c[3], __c[0]);
      if (v6)
      {
        *v6 = 0;
        v5 = **&__c[3];
      }

      *a3 = LH_atou(v5);
    }

    else
    {
      return 2345672724;
    }
  }

  return v4;
}

uint64_t lidword_GetF32Param(void *a1, uint64_t a2, float *a3)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = 1;
  v4 = (*(a1[8] + 96))(a1[6], a1[7], "ml2cfg", a2, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v5 = **&__c[3];
      v6 = strchr(**&__c[3], __c[0]);
      if (v6)
      {
        *v6 = 0;
        v5 = **&__c[3];
      }

      v7 = atof(v5);
      *a3 = v7;
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
      v5 = **&__c[3];
      v6 = strchr(**&__c[3], __c[0]);
      if (v6)
      {
        *v6 = 0;
        v5 = **&__c[3];
      }

      *a3 = v5;
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
  v8 = *MEMORY[0x1E69E9840];
  __s1 = 0;
  **(a1 + 1936) = 6579559;
  *(*(a1 + 1936) + 8) = 7892581;
  if (*(a1 + 1928) == 3)
  {
    *(*(a1 + 1936) + 16) = 7893606;
  }

  LangParam = lidword_GetLangParam(a1, "languages");
  if ((LangParam & 0x80000000) == 0 || (v3 = LangParam, (LangParam & 0x1FFF) == 0x14))
  {
    *(a1 + 1930) = 0;
    **(a1 + 1944) = 6579559;
    *(*(a1 + 1944) + 8) = 6778469;
    if (*(a1 + 1928) == 3)
    {
      *(*(a1 + 1944) + 16) = 6713958;
    }

    strcpy(v7, "languages.");
    __strcat_chk();
    v4 = lidword_GetLangParam(a1, v7);
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

uint64_t lidword_GetLangParam(void *a1, const char *a2)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = 1;
  v4 = (*(a1[8] + 96))(a1[6], a1[7], "ml2cfg", a2, &__c[3], &__c[1], __c);
  if ((v4 & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      v5 = **&__c[3];
      v6 = strchr(**&__c[3], __c[0]);
      if (v6)
      {
        *v6 = 0;
        v5 = **&__c[3];
      }

      v7 = strchr(v5, 44);
      if (v7)
      {
        v8 = 0;
        do
        {
          if (!strcmp(a2, "languages"))
          {
            v9 = 242;
          }

          else
          {
            v9 = 243;
          }

          strncpy((a1[v9] + 8 * v8++), v5, (v7 - v5));
          v5 = v7 + 1;
          v7 = strchr(v7 + 1, 44);
        }

        while (v7);
        v7 = v8;
      }

      v10 = strcmp(a2, "languages");
      v11 = 243;
      if (!v10)
      {
        v11 = 242;
      }

      strcpy((a1[v11] + 8 * v7), v5);
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
  strcpy(a1, a2)[2] = 120;
  v4 = &FE_LID_LANG_2_LANG_GROUP;
  v5 = 4;
  do
  {
    result = strcmp(v4, a2);
    if (!result)
    {
      result = strcpy(a1, v4 + 4);
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
  v15 = xmmword_1F42D3E60;
  v17 = xmmword_1F42D3E60;
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
  if (!strcmp(__s1, "lidscope"))
  {
    if (!LH_stricmp(a3, "none"))
    {
      goto LABEL_25;
    }

    v7 = "user-defined";
  }

  else
  {
    if (strcmp(__s1, "lidmode"))
    {
      if (!strcmp(__s1, "lidlanguages"))
      {
        if (a3 && *a3)
        {
          v8 = 2345672719;
          v9 = strlen(a3);
          v10 = 0;
          v11 = 1;
          do
          {
            v12 = a3[v10];
            if ((v11 & 3) != 0)
            {
              if ((v12 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6)
              {
                goto LABEL_26;
              }
            }

            else if (v12 && v12 != 44)
            {
              goto LABEL_26;
            }

            v10 = v11;
          }

          while (v9 >= v11++);
        }
      }

      else if (!strcmp(__s1, "lidvoiceswitch") && LH_stricmp(a3, "yes"))
      {
        v7 = "no";
        goto LABEL_9;
      }

LABEL_25:
      v8 = 0;
      goto LABEL_26;
    }

    if (!LH_stricmp(a3, "rejection") || !LH_stricmp(a3, "memory-bias") || !LH_stricmp(a3, "bias-mlset"))
    {
      goto LABEL_25;
    }

    v7 = "forced-choice";
  }

LABEL_9:
  if (LH_stricmp(a3, v7))
  {
    v8 = 2345672719;
  }

  else
  {
    v8 = 0;
  }

LABEL_26:
  *a4 = v8 >= 0;
  return v8;
}

uint64_t fe_lid_ParamLearnChange(uint64_t a1, char *__s1, char *a3)
{
  if (!strcmp(__s1, "lidscope"))
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

      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    *(a1 + 1004) = v10;
    return result;
  }

  if (!strcmp(__s1, "lidmode"))
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

        v11 = (a1 + 1128);
        *(a1 + 1188) = 1;
        *(a1 + 1200) = 1;
      }

      else
      {
        v11 = (a1 + 1128);
        *(a1 + 1188) = 1;
        *(a1 + 1200) = 0;
      }

      *v11 = xmmword_1C37BE010;
      v12 = 279172874250000;
    }

    else
    {
      *(a1 + 1188) = 0;
      *(a1 + 1200) = 0;
      *(a1 + 1128) = xmmword_1C37BE020;
      v12 = 1000;
    }

    *(a1 + 1144) = v12;
    return result;
  }

  if (strcmp(__s1, "lidlanguages"))
  {
    if (strcmp(__s1, "lidvoiceswitch"))
    {
      if (!strcmp(__s1, "membiasedrejectparam1"))
      {
        v13 = LH_atou(a3);
        result = 0;
        *(a1 + 1132) = v13;
        *(a1 + 1144) = v13;
      }

      else if (!strcmp(__s1, "membiasedrejectparam2"))
      {
        v14 = LH_atou(a3);
        result = 0;
        *(a1 + 1136) = v14;
        *(a1 + 1148) = v14;
      }

      else
      {
        if (!strcmp(__s1, "extraesclang"))
        {
          if (*(a1 + 1066))
          {
            v6 = 0;
            v7 = 20;
            do
            {
              if (*(*(a1 + 1072) + v7) == 1)
              {
                __strcpy_chk();
                __s2[2] = 0;
                v8 = strstr(a3, __s2);
                if (v8)
                {
                  if (v8 == a3 || *(v8 - 1) == 44)
                  {
                    strncpy((*(a1 + 1072) + v7 - 12), v8, 3uLL);
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

  v12 = heap_Calloc(*(v23 + 8), 1, 135000);
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
  v107 = *MEMORY[0x1E69E9840];
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v98 = 0;
  v99 = 0;
  v96 = 0;
  __s = 0;
  v94 = 0;
  __src = 0;
  v2 = *(a1 + 16);
  if ((paramc_ParamGetStr(*(v2 + 40), "mlset", &__s) & 0x80000000) != 0 || (v3 = __s, !*__s))
  {
    Str = paramc_ParamGetStr(*(v2 + 40), "langcode", &__s);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v3 = __s;
  }

  v5 = strlen(v3);
  v6 = heap_Alloc(*(*(a1 + 16) + 8), v5 + 1);
  if (!v6)
  {
    v12 = 2345672714;
    *(a1 + 1904) = 0;
    return v12;
  }

  v7 = v6;
  v8 = strcpy(v6, v3);
  *(a1 + 1904) = v8;
  if (strlen(v8) >= 1)
  {
    v9 = 0;
    do
    {
      v7[v9] = __tolower(v7[v9]);
      ++v9;
      v7 = *(a1 + 1904);
    }

    while (strlen(v7) > v9);
  }

  if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "extraesclang", &v96) & 0x80000000) == 0)
  {
    v10 = *(v2 + 40);
    *__s2 = a1;
    v105 = xmmword_1F42D3E60;
    Str = paramc_ListenerAdd(v10, "extraesclang", __s2);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &__src);
  *(a1 + 1008) = 0;
  if ((paramc_ParamGetStr(*(v2 + 40), "lidvoiceswitch", &v98) & 0x80000000) != 0)
  {
    Str = paramc_ParamSetStr(*(v2 + 40), "lidvoiceswitch", "no");
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!LH_stricmp(v98, "yes"))
    {
      v11 = 0;
      goto LABEL_20;
    }

    if (!LH_stricmp(v98, "no"))
    {
      v11 = 1;
LABEL_20:
      *(a1 + 1008) = v11;
    }
  }

  v14 = *(a1 + 1904);
  if (!v14)
  {
    goto LABEL_63;
  }

  if (strlen(v14) < 4)
  {
    goto LABEL_63;
  }

  paramc_ParamGetStr(*(v2 + 40), "lidlanguages", &v94);
  v15 = v96;
  if (!v96 || !*v96)
  {
    goto LABEL_63;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  do
  {
    if ((++v18 & 3) != 0)
    {
      v19 = v15[v16];
      if ((v19 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5)
      {
        __s2[v17++] = ssft_tolower(v19);
      }

      else
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 60003, "%s%s", "extraesclang", v15);
      }
    }

    else
    {
      __s2[v17] = 0;
      if (v15[v16] && v15[v16] != 44)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 60003, "%s%s", "extraesclang", v15);
      }

      else if (!strstr(*(a1 + 1904), __s2) || !LH_stricmp(__src, __s2))
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 60004, "%s%s", "language", __s2);
      }

      v17 = 0;
    }

    v16 = v18;
    v15 = v96;
    v20 = strlen(v96);
  }

  while (v20 >= v18);
  v21 = heap_Alloc(*(*(a1 + 16) + 8), v20 + 5);
  if (!v21)
  {
    v12 = 2345672714;
    v13 = *(*(a1 + 16) + 32);
    v32 = 60000;
LABEL_75:
    log_OutPublic(v13, "FE_LID", v32, 0);
    return v12;
  }

  v22 = v21;
  v23 = strcpy(v21, __src);
  *&v22[strlen(v23)] = 44;
  strcat(v22, v96);
  paramc_ParamGetStr(*(v2 + 40), "lidlanguages", &v94);
  v24 = v94;
  if (*v22)
  {
    if (v94 && *v94)
    {
      __s2[0] = 0;
      strncpy(__dst, v22, 0x7FuLL);
      __dst[127] = 0;
      v25 = __dst[0];
      if (__dst[0])
      {
        v26 = 0;
        v27 = __dst;
        do
        {
          v28 = v27;
          if (v25)
          {
            while (v25 != 44)
            {
              v29 = *++v28;
              v25 = v29;
              ++v26;
              if (!v29)
              {
                goto LABEL_51;
              }
            }

            v30 = 0;
            do
            {
              v28[v30] = 0;
              v31 = v28[++v30];
            }

            while (v31 == 44);
            v26 += v30;
          }

LABEL_51:
          if (strstr(v24, v27))
          {
            if (__s2[0])
            {
              __strcat_chk();
            }

            __strcat_chk();
          }

          v27 = &__dst[v26];
          v25 = __dst[v26];
        }

        while (__dst[v26]);
      }

      goto LABEL_61;
    }
  }

  else if (!v94)
  {
    __s2[0] = 0;
    goto LABEL_61;
  }

  __strcpy_chk();
LABEL_61:
  active = paramc_ParamSetStr(*(*(a1 + 16) + 40), "lidlanguages", __s2);
  if ((active & 0x80000000) != 0)
  {
    return active;
  }

  heap_Free(*(*(a1 + 16) + 8), v22);
LABEL_63:
  v34 = *(v2 + 40);
  *__s2 = a1;
  v93 = xmmword_1F42D3E60;
  v105 = xmmword_1F42D3E60;
  v12 = paramc_ListenerAdd(v34, "lidvoiceswitch", __s2);
  v35 = *(a1 + 16);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = *(v35 + 32);
    goto LABEL_74;
  }

  active = hlp_FillDicLMLanguages(v35, a1 + 1016, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 1904), v96, 0xFFFF);
  if ((active & 0x80001FFF) == 0x8000000A)
  {
    return active;
  }

  active = hlp_FillDicLMLanguages(*(a1 + 16), a1 + 1064, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 1904), v96, 1);
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

  v36 = *(a1 + 1018);
  if (!(v36 | *(a1 + 1066)))
  {
    goto LABEL_70;
  }

  v37 = *(a1 + 1066);
  *(a1 + 1152) = 69077;
  if (v36 <= v37)
  {
    v36 = v37;
  }

  v38 = heap_Calloc(*(*(a1 + 16) + 8), 1, 16 * v36);
  *(a1 + 1880) = v38;
  if (!v38)
  {
    v12 = 2345672714;
    goto LABEL_18;
  }

  Str = lid_Init(a1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if (*(a1 + 1066))
  {
    Str = lidword_Init(a1);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  v39 = *(a1 + 96);
  if (v39)
  {
    v12 = (*(v39 + 64))(*(a1 + 80), *(a1 + 88), &unk_1C37BE0C2, 0, &v100);
    if ((v12 & 0x80001FFF) == 0x8000000A)
    {
      return v12;
    }

    if (v100)
    {
      v40 = heap_Calloc(*(v2 + 8), v100, 86);
      if (!v40)
      {
        v13 = *(v2 + 32);
        goto LABEL_74;
      }

      v41 = v40;
      active = (*(*(a1 + 96) + 64))(*(a1 + 80), *(a1 + 88), &unk_1C37BE0C2, v40, &v100);
      if ((active & 0x80000000) == 0)
      {
        if (v100)
        {
          v42 = 0;
          do
          {
            v43 = v42;
            v44 = v41 + 86 * v42;
            v47 = *(v44 + 64);
            v46 = (v44 + 64);
            v45 = v47;
            if (v47)
            {
              v48 = 0;
              v49 = v46;
              do
              {
                *v49 = ssft_tolower(v45);
                v50 = v41 + 86 * v43 + ++v48;
                v51 = *(v50 + 64);
                v49 = (v50 + 64);
                v45 = v51;
              }

              while (v51);
            }

            ModelLng = hlp_FindModelLng(a1, v46, 1);
            if (ModelLng || (lid_make_language_group(__dst, v46), (ModelLng = hlp_FindModelLng(a1, __dst, 1)) != 0))
            {
              *(ModelLng + 4) = 1;
            }

            v53 = hlp_FindModelLng(a1, v46, 0);
            if (v53 || (lid_make_language_group(__dst, v46), (v53 = hlp_FindModelLng(a1, __dst, 1)) != 0))
            {
              *(v53 + 4) = 1;
            }

            v42 = v43 + 1;
          }

          while (v100 > (v43 + 1));
        }

        heap_Free(*(v2 + 8), v41);
        goto LABEL_100;
      }

      return active;
    }
  }

LABEL_100:
  v102 = -1;
  active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "lidscope", &v103, &v102, &v101);
  if ((active & 0x80000000) != 0)
  {
    return active;
  }

  if (v102)
  {
    goto LABEL_235;
  }

  v102 = 1;
  active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "lidscope", &v103, &v102, &v101);
  if ((active & 0x80000000) != 0)
  {
    return active;
  }

  if (v102)
  {
LABEL_235:
    if (strstr(*v103, "user-defined"))
    {
      v54 = 1;
    }

    else
    {
      v54 = 2;
    }

    *(a1 + 1004) = v54;
  }

LABEL_70:
  if ((paramc_ParamGetStr(*(v2 + 40), "lidlanguages", &v98) & 0x80000000) != 0)
  {
    Str = paramc_ParamSetStr(*(v2 + 40), "lidlanguages", &unk_1C37BE0C2);
    if ((Str & 0x80000000) == 0)
    {
      goto LABEL_107;
    }

LABEL_17:
    v12 = Str;
LABEL_18:
    v13 = *(*(a1 + 16) + 32);
LABEL_74:
    v32 = 48000;
    goto LABEL_75;
  }

  active = hlp_SetActiveLngs(a1, v98);
  if ((active & 0x80000000) != 0)
  {
    return active;
  }

LABEL_107:
  v55 = *(v2 + 40);
  *__s2 = a1;
  v105 = v93;
  Str = paramc_ListenerAdd(v55, "lidlanguages", __s2);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if ((paramc_ParamGetStr(*(v2 + 40), "lidscope", &v98) & 0x80000000) == 0)
  {
    if (LH_stricmp(v98, "none"))
    {
      if (LH_stricmp(v98, "user-defined"))
      {
        v56 = LH_stricmp(v98, "message");
        v57 = v93;
        if (v56)
        {
          goto LABEL_126;
        }

        v58 = 2;
        goto LABEL_125;
      }

      v58 = 1;
    }

    else
    {
      v58 = 0;
    }

    v57 = v93;
LABEL_125:
    *(a1 + 1004) = v58;
    goto LABEL_126;
  }

  v59 = *(a1 + 1004);
  v60 = "message";
  if (v59 == 1)
  {
    v60 = "user-defined";
  }

  if (v59)
  {
    v61 = v60;
  }

  else
  {
    v61 = "none";
  }

  Str = paramc_ParamSetStr(*(v2 + 40), "lidscope", v61);
  v57 = v93;
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_126:
  v62 = *(v2 + 40);
  *__s2 = a1;
  v105 = v57;
  Str = paramc_ListenerAdd(v62, "lidscope", __s2);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if ((paramc_ParamGetUInt(*(v2 + 40), "membiasedrejectparam1", &v99 + 1) & 0x80000000) != 0)
  {
    v63 = 0;
    HIDWORD(v99) = 0;
  }

  else
  {
    if ((paramc_ParamGetUInt(*(v2 + 40), "membiasedrejectparam2", &v99) & 0x80000000) == 0)
    {
      v63 = v99 != 0;
      v64 = v99 == 0;
      goto LABEL_133;
    }

    v63 = 0;
    v99 = 0;
  }

  v64 = 1;
LABEL_133:
  *(a1 + 1140) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1188) = 0;
  *(a1 + 1200) = 0;
  v102 = -1;
  active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "lidmode", &v103, &v102, &v101);
  if ((active & 0x80000000) != 0)
  {
    return active;
  }

  if (v102 && strstr(*v103, "rejection"))
  {
    *(a1 + 1128) = 1;
  }

  v102 = 1;
  v65 = 0;
  if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "lidmode", &v103, &v102, &v101) & 0x80000000) == 0 && v102)
  {
    v66 = *v103;
    if (strstr(*v103, "rejection"))
    {
      *(a1 + 1140) = 1;
    }

    if (strstr(v66, "memory-bias"))
    {
      v65 = 1;
      *(a1 + 1188) = 1;
      *(a1 + 1200) = 0;
    }

    else
    {
      v65 = 0;
    }

    if (strstr(v66, "bias-mlset"))
    {
      v65 = 1;
      *(a1 + 1188) = 1;
      *(a1 + 1200) = 1;
    }
  }

  if ((paramc_ParamGetStr(*(v2 + 40), "lidmode", &v98) & 0x80000000) == 0)
  {
    if (LH_stricmp(v98, "rejection"))
    {
      if (LH_stricmp(v98, "forced-choice"))
      {
        if (LH_stricmp(v98, "memory-bias"))
        {
          v67 = LH_stricmp(v98, "bias-mlset");
          v68 = v93;
          if (v67)
          {
            goto LABEL_166;
          }

          v69 = 0;
          v70 = 1;
          v71 = 1;
          goto LABEL_165;
        }

        v69 = 0;
        v71 = 0;
        v70 = 1;
      }

      else
      {
        v69 = 0;
        v70 = 0;
        v71 = 0;
      }
    }

    else
    {
      v70 = 0;
      v71 = 0;
      v69 = 1;
    }

    v68 = v93;
LABEL_165:
    *(a1 + 1128) = v69;
    *(a1 + 1140) = v69;
    *(a1 + 1188) = v70;
    *(a1 + 1200) = v71;
    goto LABEL_166;
  }

  if (*(a1 + 1128) || *(a1 + 1140))
  {
    v72 = *(v2 + 40);
    v73 = "rejection";
  }

  else if (*(a1 + 1188))
  {
    v72 = *(v2 + 40);
    v73 = "memory-bias";
  }

  else
  {
    v72 = *(v2 + 40);
    if (*(a1 + 1200))
    {
      v73 = "bias-mlset";
    }

    else
    {
      v73 = "forced-choice";
    }
  }

  v12 = paramc_ParamSetStr(v72, "lidmode", v73);
  v68 = v93;
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_166:
  v74 = *(v2 + 40);
  *__s2 = a1;
  v105 = v68;
  Str = paramc_ListenerAdd(v74, "lidmode", __s2);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v75 = (a1 + 1132);
  *(a1 + 1132) = 0x3200000000;
  *(a1 + 1144) = 0x3200000000;
  v76 = *(a1 + 1128);
  if (v76)
  {
    if (*(a1 + 1188) != 1)
    {
      if (v76 == 1)
      {
LABEL_174:
        v79 = 0;
        *v75 = 1000;
        *(a1 + 1144) = 1000;
LABEL_198:
        *(a1 + 1148) = v79;
        goto LABEL_199;
      }

      v77 = *(a1 + 1140);
      goto LABEL_173;
    }

LABEL_178:
    if (v63)
    {
      v81 = v99;
      v80 = HIDWORD(v99);
      *(a1 + 1132) = HIDWORD(v99);
      *(a1 + 1136) = v81;
      *(a1 + 1144) = v80;
      *(a1 + 1148) = v81;
    }

    if (v65)
    {
      v82 = !v64;
    }

    else
    {
      v82 = 1;
    }

    if (v82)
    {
      if (((!v64 | v65) & 1) == 0)
      {
        *v75 = 279172874250000;
        *(a1 + 1144) = 10000;
        v79 = 65000;
        goto LABEL_198;
      }
    }

    else
    {
      v102 = -1;
      active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "rejectparam1", &v103, &v102, &v101);
      if ((active & 0x80000000) != 0)
      {
        return active;
      }

      if (v102)
      {
        *v75 = LH_atou(*v103);
      }

      v102 = -1;
      active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "rejectparam2", &v103, &v102, &v101);
      if ((active & 0x80000000) != 0)
      {
        return active;
      }

      if (v102)
      {
        *(a1 + 1136) = LH_atou(*v103);
      }

      v102 = 1;
      if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "rejectparam1", &v103, &v102, &v101) & 0x80000000) == 0 && v102)
      {
        *(a1 + 1144) = LH_atou(*v103);
      }

      v102 = 1;
      if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "rejectparam2", &v103, &v102, &v101) & 0x80000000) == 0 && v102)
      {
        v79 = LH_atou(*v103);
        goto LABEL_198;
      }
    }

    goto LABEL_199;
  }

  v77 = *(a1 + 1140);
  v78 = *(a1 + 1188);
  if (!v77)
  {
    if (v78 != 1)
    {
      if (!v78)
      {
        v79 = 0;
        *(a1 + 1136) = 0;
        goto LABEL_198;
      }

      goto LABEL_199;
    }

    goto LABEL_178;
  }

  if (v78 == 1)
  {
    goto LABEL_178;
  }

LABEL_173:
  if (v77 == 1)
  {
    goto LABEL_174;
  }

LABEL_199:
  Str = paramc_ParamSetUInt(*(v2 + 40), "membiasedrejectparam1", *(a1 + 1144));
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  Str = paramc_ParamSetUInt(*(v2 + 40), "membiasedrejectparam2", *(a1 + 1148));
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v83 = *(v2 + 40);
  *__s2 = a1;
  v105 = v93;
  Str = paramc_ListenerAdd(v83, "membiasedrejectparam1", __s2);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v84 = *(v2 + 40);
  *__s2 = a1;
  v105 = v93;
  Str = paramc_ListenerAdd(v84, "membiasedrejectparam2", __s2);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  *(a1 + 1180) = 0;
  v102 = -1;
  active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "numfallback", &v103, &v102, &v101);
  if ((active & 0x80000000) != 0)
  {
    return active;
  }

  if (v102)
  {
    *(a1 + 1180) = 1;
  }

  v102 = 1;
  if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "numfallback", &v103, &v102, &v101) & 0x80000000) == 0 && v102)
  {
    *(a1 + 1184) = 1;
  }

  *(a1 + 1156) = xmmword_1C37BE030;
  *(a1 + 1172) = 0x786E65000003E8;
  v102 = -1;
  active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "fuzzythreshold", &v103, &v102, &v101);
  if ((active & 0x80000000) != 0)
  {
    return active;
  }

  if (v102)
  {
    *(a1 + 1156) = 1;
    v85 = LH_atou(*v103);
    *(a1 + 1160) = v85;
    log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "setting fuzzy matching threshold to %7lu", v85);
  }

  v102 = 1;
  if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "fuzzythreshold", &v103, &v102, &v101) & 0x80000000) == 0 && v102)
  {
    *(a1 + 1168) = 1;
    v86 = LH_atou(*v103);
    *(a1 + 1172) = v86;
    log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "setting common fuzzy matching threshold to %7lu", v86);
  }

  v102 = -1;
  active = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "fuzzyfallbacklang", &v103, &v102, &v101);
  if ((active & 0x80000000) != 0)
  {
    return active;
  }

  v87 = (a1 + 1164);
  if (v102)
  {
    v88 = *v103;
    v89 = strlen(*v103);
    *(a1 + 1156) = 1;
    *v87 = *v88;
    if (v89 >= 4)
    {
      *(a1 + 1167) = 0;
    }

    log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "setting fuzzy matching fallback language to %s", (a1 + 1164));
  }

  v102 = 1;
  v12 = 0;
  if (((*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", "fuzzyfallbacklang", &v103, &v102, &v101) & 0x80000000) == 0 && v102)
  {
    v90 = *v103;
    v91 = strlen(*v103);
    *(a1 + 1156) = 1;
    *v87 = *v90;
    if (v91 >= 4)
    {
      *(a1 + 1167) = 0;
    }

    log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "setting fuzzy matching fallback language to %s", (a1 + 1164));
    return 0;
  }

  return v12;
}

uint64_t fe_lid_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62400, 135000);
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
  v11 = 0;
  v7 = safeh_HandleCheck(a1, a2, 62400, 135000);
  if ((v7 & 0x80000000) != 0)
  {
    return 2345672712;
  }

  v8 = v7;
  synstrmaux_InitStreamOpener(a1 + 104, *(*(a1 + 16) + 32), "FE_LID");
  *(a1 + 1000) = 0;
  if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "textanalysison", &__s1) & 0x80000000) == 0 && __s1 && *__s1 && !strcmp(__s1, "yes"))
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
      paramc_ParamSetStr(*(*(a1 + 16) + 40), "initcommonbiaslanguage", &unk_1C37BE0C2);
      if (*(a1 + 1000))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((paramc_ParamGetUInt(*(*(a1 + 16) + 40), "initcommonbiasvalue", &v12) & 0x80000000) == 0)
      {
        if (v12)
        {
          if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "initcommonbiaslanguage", &v11) & 0x80000000) == 0)
          {
            v9 = v11;
            if (v11)
            {
              *(a1 + 1192) = v12;
              *(a1 + 1000) = 1;
LABEL_19:
              *(a1 + 1196) = *v9;
              goto LABEL_20;
            }
          }
        }
      }

      *(a1 + 1000) = 0;
    }

    v9 = *(a1 + 1912);
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
  v182 = *MEMORY[0x1E69E9840];
  v167 = 0;
  v165 = 0;
  v166 = 0;
  v163 = 0;
  v164 = 0;
  v162 = 0;
  v7 = safeh_HandleCheck(a1, a2, 62400, 135000);
  if ((v7 & 0x80000000) != 0)
  {
    return 2345672712;
  }

  Str = v7;
  *a5 = 1;
  v9 = *(a1 + 928);
  if (v9)
  {
    v10 = (*(*(a1 + 72) + 144))(v9, *(a1 + 936), &v167, &v166);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    Str = (*(*(a1 + 72) + 144))(*(a1 + 944), *(a1 + 952), &v166 + 4, &v166);
    if ((Str & 0x80000000) == 0)
    {
      if (v167)
      {
        v179 = 0;
        v180 = 0;
        v178 = 0;
        v177 = 0;
        v176 = 0;
        v174 = 0;
        v175 = 0;
        v172 = 0;
        v173 = 0;
        v171 = 0;
        *(a1 + 992) = 1;
        if (((*(*(a1 + 64) + 80))(*(a1 + 48), *(a1 + 56), "mertfrq", 0, &v171) & 0x80000000) != 0 || !v171)
        {
          v22 = (*(*(a1 + 64) + 80))(*(a1 + 48), *(a1 + 56), "mertfrq_latn", 0, &v171) < 0 || v171 == 0;
          v11 = v22;
          v12 = 1180;
          if (v22)
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
        v23 = *(a1 + v12);
        appended = (*(*(a1 + 72) + 88))(*(a1 + 928), *(a1 + 936), &v180, &v179 + 4);
        if ((appended & 0x80000000) != 0 || (v25 = HIDWORD(v179), appended = (*(*(a1 + 72) + 88))(*(a1 + 944), *(a1 + 952), &v178, &v177), (appended & 0x80000000) != 0) || (v177 >>= 5, v175 = 0, appended = hlp_AppendItemRaw32(a1, &v175, &v174, &v174 + 1, 0x20u, v177 + 10), (appended & 0x80000000) != 0))
        {
          Str = appended;
          v26 = 0;
          goto LABEL_39;
        }

        HIDWORD(v174) = 0;
        if (*v178 == 0x4000)
        {
          LODWORD(v179) = v178[3];
        }

        else
        {
          (*(*(a1 + 72) + 136))(*(a1 + 928), *(a1 + 936), &v179);
        }

        v152 = v23;
        v150 = v25;
        __src[0] = 0;
        if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "lidon", &v176) & 0x80000000) != 0)
        {
          v36 = 0;
        }

        else
        {
          __strcpy_chk();
          v34 = v176;
          v35 = strcmp(v176, "unknown") == 0;
          if (strlen(v34) == 3)
          {
            v35 = 2;
          }

          if (!strncmp(v34, "vceunkn", 7uLL))
          {
            v35 = 3;
          }

          if (!strcmp(v34, "unknown:noautolid"))
          {
            v36 = 4;
          }

          else
          {
            v36 = v35;
          }
        }

        v37 = v177;
        if (v177)
        {
          v154 = v36;
          v38 = 0;
          v39 = 0;
          do
          {
            v40 = &v178[8 * v39];
            if (*v40 == 36)
            {
              v41 = *(v40 + 24);
              v42 = strcmp(v41, "unknownint") && strcmp(v41, "normal") != 0;
              if (*(a1 + 996))
              {
                hlp_SetParamcTAHasUserUnknown(a1, v40, v37 - v38);
                v43 = *(v40 + 24);
                if (!strcmp(v43, "ins_unknown"))
                {
                  *v43 = 0x6E776F6E6B6E75;
                }
              }
            }

            else
            {
              v42 = 0;
            }

            v38 = ++v39;
            v37 = v177;
          }

          while (v177 > v39 && !v42);
          if (v177)
          {
            v158 = 0;
            v45 = 0;
            v153 = 0;
            v46 = v154;
            v155 = v154;
            v47 = v154;
            while (1)
            {
              v48 = &v178[8 * v45];
              if (*(a1 + 1004) == 2)
              {
                v49 = v48[3];
                v50 = v49 != v179;
                if (v49 == v179)
                {
                  v51 = 0;
                }

                else
                {
                  v51 = HIDWORD(v179);
                }
              }

              else
              {
                v50 = 0;
                v51 = 0;
              }

              v52 = *v48;
              if (v46 && v52 == 36)
              {
                v53 = *(v48 + 3);
                if (!strcmp(v53, "unknown"))
                {
                  v47 = 1;
                }

                if (strlen(v53) == 3)
                {
                  v47 = 2;
                }

                if (!strncmp(v53, "vceunkn", 7uLL))
                {
                  v47 = 3;
                }

                if (!strcmp(v53, "unknown:noautolid"))
                {
                  v47 = 4;
                }

                __strcpy_chk();
                v52 = *v48;
                v155 = v47;
              }

              if (v52 == 36 && (!*(a1 + 1188) || (v54 = *(v48 + 3), strcmp(v54, "normal")) && strcmp(v54, "normal:noautolid") || (*(a1 + 1192) = *(a1 + 1144), *(a1 + 1196) = **(a1 + 1912), *v48 == 36)) && ((v55 = *(v48 + 3), !(strcmp(v55, "unknownint") | v42)) || !strcmp(v55, "unknown") || !strcmp(v55, "unknown:noautolid") || !strncmp(v55, "vceunkn", 7uLL) || !strcmp(v55, "unknownmem")))
              {
                *(a1 + 1920) = 0;
                *(a1 + 1920) = strcmp(*(v48 + 3), "unknownmem") == 0;
                if (!strncmp(*(v48 + 3), "vceunkn", 7uLL))
                {
                  *(a1 + 1008) = 0;
                }

                v58 = v48[3];
                v57 = v58 - v179;
                v51 = HIDWORD(v179) - (v58 - v179);
                v59 = v45;
                while (v177 > ++v59)
                {
                  v60 = v178[8 * v59];
                  if (v60 == 36 || v60 == 7)
                  {
                    __s1 = 0;
                    v51 = v178[8 * v59 + 3] - v58;
                    goto LABEL_120;
                  }
                }

                __s1 = 0;
LABEL_120:
                v56 = 1;
              }

              else
              {
                __s1 = v47;
                v56 = 0;
                v57 = 0;
                if (!v50)
                {
                  goto LABEL_138;
                }
              }

              if (v51)
              {
                v62 = *(v48 + 3);
                v157 = v57;
                if (!strncmp(v62, "vceunkn", 7uLL))
                {
                  v151 = v51;
                  __s = 0;
                  Str = paramc_ParamGetStr(*(*(a1 + 16) + 40), "lidlanguages", &__s);
                  if (__s && *__s)
                  {
                    v67 = strlen(__s);
                    v68 = heap_Alloc(*(*(a1 + 16) + 8), (v67 + 1));
                    if (!v68)
                    {
                      goto LABEL_313;
                    }

                    v66 = v68;
                    strcpy(v68, __s);
                  }

                  else
                  {
                    v66 = 0;
                  }

                  if ((Str & 0x80000000) == 0)
                  {
                    v69 = paramc_ParamSetStr(*(*(a1 + 16) + 40), "lidlanguages", 0);
                    if ((v69 & 0x80000000) != 0)
                    {
                      Str = v69;
                      if (v66)
                      {
                        heap_Free(*(*(a1 + 16) + 8), v66);
                      }

LABEL_313:
                      v26 = v153;
LABEL_39:
                      v27 = 0;
LABEL_40:
                      v28 = HIDWORD(v172);
                      if (HIDWORD(v172))
                      {
                        v29 = 0;
                        do
                        {
                          v30 = *(v175 + 32 * v173[v29] + 24);
                          if (v30)
                          {
                            heap_Free(*(*(a1 + 16) + 8), v30);
                            v28 = HIDWORD(v172);
                          }

                          ++v29;
                        }

                        while (v29 < v28);
                      }

                      if (v26)
                      {
                        v31 = *(v26 + 24);
                        if (v31)
                        {
                          heap_Free(*(*(a1 + 16) + 8), v31);
                        }
                      }

                      if (v175)
                      {
                        heap_Free(*(*(a1 + 16) + 8), v175);
                      }

                      if (v173)
                      {
                        heap_Free(*(*(a1 + 16) + 8), v173);
                      }

                      if (v27)
                      {
                        v32 = *(*(a1 + 16) + 8);
                        v33 = v27;
                        goto LABEL_332;
                      }

                      return Str;
                    }
                  }

                  v63 = v45;
                  v64 = v56;
                  v65 = *(v48 + 3) + 7;
                  v62 = *(v48 + 3);
                  v51 = v151;
                }

                else
                {
                  v63 = v45;
                  v64 = v56;
                  v65 = 0;
                  v66 = 0;
                }

                v70 = strcmp(v62, "unknown:noautolid");
                v71 = lid_Identify(a1, v180 + v157, v51);
                if ((v71 & 0x80000000) != 0)
                {
                  Str = v71;
                  if (v66)
                  {
                    heap_Free(*(*(a1 + 16) + 8), v66);
                  }

                  goto LABEL_307;
                }

                v72 = v62 + 7;
                if (v70)
                {
                  v72 = v65;
                }

                v73 = hlp_AppendLidResultAsMarkers(a1, &v175, &v174, &v174 + 1, &v173, &v172, &v172 + 1, v179 + v157, v72);
                if ((v73 & 0x80000000) != 0)
                {
                  Str = v73;
                  v26 = v153;
                  if (v66)
                  {
                    heap_Free(*(*(a1 + 16) + 8), v66);
                  }

                  goto LABEL_39;
                }

                v46 = v154;
                v56 = v64;
                v45 = v63;
                if (v66)
                {
                  Str = paramc_ParamSetStr(*(*(a1 + 16) + 40), "lidlanguages", v66);
                  heap_Free(*(*(a1 + 16) + 8), v66);
                  if ((Str & 0x80000000) != 0)
                  {
                    goto LABEL_307;
                  }
                }
              }

LABEL_138:
              if (v56)
              {
                goto LABEL_158;
              }

              v74 = hlp_AppendItemRaw32(a1, &v175, &v174, &v174 + 1, 0x20u, 10);
              if ((v74 & 0x80000000) != 0)
              {
                goto LABEL_304;
              }

              v75 = HIDWORD(v174) - 1;
              if (SHIDWORD(v174) > 1)
              {
                v76 = 0;
                v77 = HIDWORD(v174) - 2;
                while (*(v175 + 32 * v77 + 12) > v48[3])
                {
                  ++v76;
                  v78 = v77-- <= 0;
                  if (v78)
                  {
                    v77 = -1;
                    goto LABEL_148;
                  }
                }

                LOWORD(v75) = v76;
LABEL_148:
                v79 = (v77 + 1);
                if (v75)
                {
                  memmove((v175 + 32 * v79 + 32), (v175 + 32 * v79), 32 * v75);
                  v80 = HIDWORD(v172);
                  if (HIDWORD(v172))
                  {
                    v81 = v173;
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

                  goto LABEL_157;
                }

                v75 = v77 + 1;
              }

              v79 = v75;
LABEL_157:
              v82 = (v175 + 32 * v79);
              v83 = *(v48 + 1);
              *v82 = *v48;
              v82[1] = v83;
LABEL_158:
              v47 = __s1;
              v84 = *v48 == 0x4000 && (__s1 & 0xFFFFFFFD) == 1;
              if (v84 && v177 - 1 > v158 && v48[8] != 36)
              {
                v85 = v48[3];
                v86 = v85 - v179;
                v87 = HIDWORD(v179) - (v85 - v179);
                v88 = v45;
                while (v177 > ++v88)
                {
                  v89 = v178[8 * v88];
                  if (v89 == 36 || v89 == 7)
                  {
                    v87 = v178[8 * v88 + 3] - v85;
                    break;
                  }
                }

                if (v87)
                {
                  v74 = lid_Identify(a1, v180 + v86, v87);
                  if ((v74 & 0x80000000) != 0 || (v74 = hlp_AppendLidResultAsMarkers(a1, &v175, &v174, &v174 + 1, &v173, &v172, &v172 + 1, v179 + v86, 0), (v74 & 0x80000000) != 0))
                  {
LABEL_304:
                    Str = v74;
LABEL_307:
                    v27 = 0;
                    goto LABEL_308;
                  }
                }

                goto LABEL_202;
              }

              if (*v48 != 0x4000 || __s1 != 2)
              {
                goto LABEL_203;
              }

              if (v177 - 1 > v158 && v48[8] != 36)
              {
                Str = hlp_AppendItemRaw32(a1, &v175, &v174, &v174 + 1, 0x20u, 10);
                if ((Str & 0x80000000) != 0)
                {
                  goto LABEL_307;
                }

                v91 = HIDWORD(v174) - 1;
                if (SHIDWORD(v174) > 1)
                {
                  v92 = 0;
                  v93 = HIDWORD(v174) - 2;
                  while (*(v175 + 32 * v93 + 12) > v48[3])
                  {
                    ++v92;
                    v78 = v93-- <= 0;
                    if (v78)
                    {
                      v93 = -1;
                      goto LABEL_191;
                    }
                  }

                  LOWORD(v91) = v92;
LABEL_191:
                  v94 = (v93 + 1);
                  if (v91)
                  {
                    memmove((v175 + 32 * v94 + 32), (v175 + 32 * v94), 32 * v91);
                    v95 = HIDWORD(v172);
                    if (HIDWORD(v172))
                    {
                      v96 = v173;
                      do
                      {
                        if (*v96 >= v94)
                        {
                          ++*v96;
                        }

                        ++v96;
                        --v95;
                      }

                      while (v95);
                    }

LABEL_200:
                    v97 = v175 + 32 * v94;
                    v98 = *(v97 - 16);
                    *v97 = *(v97 - 32);
                    *(v97 + 16) = v98;
                    *v97 = 36;
                    v99 = heap_Alloc(*(*(a1 + 16) + 8), 8);
                    v153 = v97;
                    *(v97 + 24) = v99;
                    if (!v99)
                    {
                      goto LABEL_307;
                    }

                    strcpy(v99, __src);
LABEL_202:
                    v47 = 0;
                    goto LABEL_203;
                  }

                  v91 = v93 + 1;
                }

                v94 = v91;
                goto LABEL_200;
              }

              v47 = 2;
LABEL_203:
              v158 = ++v45;
              if (v177 <= v45)
              {
                goto LABEL_211;
              }
            }
          }

          v153 = 0;
          v36 = v154;
        }

        else
        {
          v153 = 0;
        }

        v155 = v36;
LABEL_211:
        if (v155 > 2)
        {
          v100 = v152;
          if (v155 == 3)
          {
            v101 = "vceunkn";
          }

          else
          {
            v101 = "unknown:noautolid";
          }
        }

        else
        {
          v100 = v152;
          if (v155 == 1)
          {
            v101 = "unknown";
          }

          else if (v155 == 2)
          {
            v101 = __src;
          }

          else
          {
            v101 = &unk_1C37BE0C2;
          }
        }

        paramc_ParamSetStr(*(*(a1 + 16) + 40), "lidon", v101);
        v102 = HIDWORD(v174);
        if (HIDWORD(v174))
        {
          v103 = 0;
          v27 = 0;
          v104 = 0;
          v105 = 0;
          v106 = 0;
          __s1a = "normal";
          while (1)
          {
            v107 = (v175 + 32 * v106);
            v108 = *v107;
            if (*v107 == 21)
            {
              goto LABEL_283;
            }

            if (v108 == 34)
            {
              break;
            }

            if (v108 != 36)
            {
              if (v108 != 1 || v100 == 0)
              {
                goto LABEL_284;
              }

              if (v104)
              {
                v112 = 0;
                v113 = 1;
                goto LABEL_253;
              }

              v156 = v105;
              v159 = v27;
              v116 = v179;
              v117 = *(*(a1 + 16) + 8);
              v118 = v180;
              v120 = v107[3];
              v119 = v107[4];
              v121 = heap_Alloc(v117, (v119 + 1));
              if (v121)
              {
                v122 = v121;
                v123 = v120 - v116;
                v124 = strncpy(v121, &v118[v123], v119);
                v124[v119] = 0;
                CurrentUtf8Offset = utf8_GetCurrentUtf8Offset(v124, 0);
                v126 = CurrentUtf8Offset + v119;
                if (CurrentUtf8Offset < CurrentUtf8Offset + v119)
                {
                  NextUtf8Offset = CurrentUtf8Offset;
                  while (!utf8_BelongsToSet(6u, v122, NextUtf8Offset, v119))
                  {
                    NextUtf8Offset = utf8_GetNextUtf8Offset(v122, NextUtf8Offset);
                    if (NextUtf8Offset >= v126)
                    {
                      goto LABEL_251;
                    }
                  }

                  heap_Free(v117, v122);
                  v134 = heap_Realloc(*(*(a1 + 16) + 8), v159, (*(v175 + 32 * v106 + 16) + 7));
                  if (!v134)
                  {
                    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
                    return 2345672714;
                  }

                  v27 = v134;
                  strcpy(v134, "mlnum_");
                  v100 = v152;
                  v104 = 0;
                  if (*(v175 + 32 * v106 + 16))
                  {
                    v135 = 0;
                    LOWORD(v136) = 0;
                    while (1)
                    {
                      v137 = *(v180 + (v135 + v123));
                      if (v137 == 255)
                      {
                        break;
                      }

                      v134[v136 + 6] = v137;
                      LOWORD(v136) = v136 + 1;
                      v135 = v136;
                      if (*(v175 + 32 * v106 + 16) <= v136)
                      {
                        v136 = v136;
                        goto LABEL_273;
                      }
                    }

                    v112 = 1;
                  }

                  else
                  {
                    v136 = 0;
LABEL_273:
                    __s = 0;
                    v168 = 0;
                    if (*(a1 + 992))
                    {
                      v138 = 1;
                    }

                    else
                    {
                      v138 = -1;
                    }

                    v169 = v138;
                    v134[v136 + 6] = 0;
                    v128 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", v134, &__s, &v169, &v168);
                    v112 = v169 == 0;
                    if ((v128 & 0x80000000) != 0)
                    {
                      goto LABEL_303;
                    }
                  }

                  v105 = v156;
                  v113 = !v112;
                  if (!v112 || v156)
                  {
LABEL_253:
                    if (!v105 || v112)
                    {
                      v105 = v112;
                    }

                    else
                    {
                      v105 = 0;
                      if (strcmp(__s1a, "normal"))
                      {
                        goto LABEL_256;
                      }
                    }
                  }

                  else
                  {
                    v105 = 1;
                    if (!strcmp(__s1a, "normal"))
                    {
LABEL_283:
                      v104 = 0;
                    }

                    else
                    {
                      v113 = 0;
LABEL_256:
                      v128 = hlp_AppendItemRaw32(a1, &v175, &v174, &v174 + 1, 0x20u, 10);
                      if ((v128 & 0x80000000) != 0)
                      {
                        goto LABEL_303;
                      }

                      memmove((v175 + 32 * v106 + 32), (v175 + 32 * v106), 32 * (HIDWORD(v174) + ~v103));
                      v129 = HIDWORD(v172);
                      if (HIDWORD(v172))
                      {
                        v130 = v173;
                        do
                        {
                          if (*v130 >= v103)
                          {
                            ++*v130;
                          }

                          ++v130;
                          --v129;
                        }

                        while (v129);
                      }

                      v131 = v175 + 32 * v106;
                      *v131 = 36;
                      v132 = "normal";
                      if (v113)
                      {
                        v132 = __s1a;
                      }

                      *(v131 + 24) = v132;
                      v133 = v175 + 32 * v106;
                      *(v133 + 4) = 0;
                      *(v133 + 8) = 0;
                      *(v133 + 12) = *(v133 + 44);
                      ++v106;
                    }
                  }

LABEL_284:
                  ++v106;
                  v102 = HIDWORD(v174);
                  goto LABEL_285;
                }

LABEL_251:
                heap_Free(v117, v122);
              }

              v112 = 0;
              v113 = 1;
              v100 = v152;
              v27 = v159;
              v105 = v156;
              v104 = 0;
              goto LABEL_253;
            }

            v109 = v104;
            v110 = *(v107 + 3);
            if (!strcmp(v110, "unknown") || !strcmp(v110, "unknown:noautolid") || !strcmp(v110, "unknownint") || !strncmp(v110, "vceunkn", 7uLL) || !strcmp(v110, "unknownmem"))
            {
              HIDWORD(v174) = --v102;
              if (v102 > v103)
              {
                memmove(v107, v107 + 8, 32 * (v102 - v103));
                v114 = HIDWORD(v172);
                v104 = v109;
                if (HIDWORD(v172))
                {
                  v115 = v173;
                  do
                  {
                    if (*v115 > v103)
                    {
                      --*v115;
                    }

                    ++v115;
                    --v114;
                  }

                  while (v114);
                }

                goto LABEL_285;
              }
            }

            else
            {
              v105 = 0;
              ++v106;
              __s1a = v110;
            }

            v104 = v109;
LABEL_285:
            v103 = v106;
            if (v102 <= v106)
            {
              goto LABEL_288;
            }
          }

          v104 = 1;
          goto LABEL_284;
        }

        v27 = 0;
LABEL_288:
        v128 = lidword_Identify(a1, v180, HIDWORD(v179), &v175, &v174, &v174 + 1, &v173, &v172, &v172 + 1);
        if ((v128 & 0x80000000) != 0)
        {
LABEL_303:
          Str = v128;
LABEL_308:
          v26 = v153;
          goto LABEL_40;
        }

        v139 = HIDWORD(v174);
        if (HIDWORD(v174))
        {
          v140 = 0;
          do
          {
            v141 = v175 + 32 * v140;
            if (*v141 == 36)
            {
              v142 = strstr(*(v141 + 24), ":noautolid");
              if (v142)
              {
                *v142 = 0;
                v139 = HIDWORD(v174);
              }
            }

            ++v140;
          }

          while (v139 > v140);
        }

        v26 = v153;
        if (v150)
        {
          v143 = (*(*(a1 + 72) + 104))(*(a1 + 960), *(a1 + 968), v180);
          if ((v143 & 0x80000000) != 0)
          {
LABEL_302:
            Str = v143;
            goto LABEL_40;
          }

          v139 = HIDWORD(v174);
        }

        v143 = (*(*(a1 + 72) + 104))(*(a1 + 976), *(a1 + 984), v175, 32 * v139);
        if ((v143 & 0x80000000) == 0)
        {
          if (!HIDWORD(v179) || (v143 = (*(*(a1 + 72) + 96))(*(a1 + 928), *(a1 + 936)), (v143 & 0x80000000) == 0))
          {
            v143 = (*(*(a1 + 72) + 96))(*(a1 + 944), *(a1 + 952), 32 * v177);
          }
        }

        goto LABEL_302;
      }

      v13 = v166;
      if (!v166)
      {
        *a5 = 0;
        goto LABEL_330;
      }

      if (!HIDWORD(v166))
      {
        goto LABEL_328;
      }

      InputOutputMarkers = hlp_GetInputOutputMarkers(a1, &v165, &v164, &v163 + 1, &v163, &v162);
      if ((InputOutputMarkers & 0x80000000) != 0)
      {
        Str = InputOutputMarkers;
      }

      else
      {
        if (!v166 && *(a1 + 1004) == 1 && v163)
        {
          v15 = v163 - 1;
          v16 = v164;
          v17 = v163 - 1;
          v18 = "unknown";
          while (1)
          {
            v19 = v16 + 32 * v15;
            if (*v19 == 36)
            {
              v20 = *(v19 + 24);
              if (!strcmp(v20, "unknown"))
              {
                goto LABEL_317;
              }

              if (!strcmp(v20, "unknown:noautolid"))
              {
                v18 = "unknown:noautolid";
                goto LABEL_317;
              }

              if (!strncmp(v20, "vceunkn", 7uLL))
              {
                v18 = "vceunkn";
                goto LABEL_317;
              }

              if (!strcmp(v20, "normal"))
              {
                break;
              }
            }

            --v15;
            if (!v17--)
            {
              goto LABEL_318;
            }
          }

          v18 = "normal";
LABEL_317:
          v144 = *v19;
          *(a1 + 1832) = *(v19 + 16);
          *(a1 + 1816) = v144;
          *(a1 + 1840) = v18;
        }

LABEL_318:
        v145 = HIDWORD(v163);
        if (*(a1 + 996))
        {
          v146 = HIDWORD(v163) == 0;
        }

        else
        {
          v146 = 1;
        }

        if (!v146)
        {
          v147 = 0;
          v148 = 0;
          do
          {
            hlp_SetParamcTAHasUserUnknown(a1, v165 + 32 * v148++, v145 - v147);
            v147 = v148;
            v145 = HIDWORD(v163);
          }

          while (HIDWORD(v163) > v148);
        }

        Str = (*(*(a1 + 72) + 120))(*(a1 + 976), *(a1 + 984), (32 * v163));
        v164 = 0;
        if ((Str & 0x80000000) != 0)
        {
          goto LABEL_330;
        }

        if (!HIDWORD(v163) || (Str = (*(*(a1 + 72) + 96))(*(a1 + 944), *(a1 + 952), (32 * HIDWORD(v163))), (Str & 0x80000000) == 0))
        {
          v13 = v166;
LABEL_328:
          if (v13)
          {
            Str = synstrmaux_CloseOutStreamsOnly((a1 + 104), *(a1 + 72));
          }

          goto LABEL_330;
        }
      }

      if (v164)
      {
        (*(*(a1 + 72) + 120))(*(a1 + 976), *(a1 + 984), 0);
      }

LABEL_330:
      v33 = v162;
      if (v162)
      {
        v32 = *(*(a1 + 16) + 8);
LABEL_332:
        heap_Free(v32, v33);
      }
    }
  }

  return Str;
}

uint64_t hlp_GetInputOutputMarkers(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int *a4, unsigned int *a5, void *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  __s1 = 0;
  *a5 = 0;
  *a4 = 0;
  v12 = (*(*(a1 + 72) + 88))(*(a1 + 944), *(a1 + 952), a2);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  *a4 >>= 5;
  v43[0] = 0;
  if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "lidon", &__s1) & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  __strcpy_chk();
  v13 = __s1;
  if (!strcmp(__s1, "unknown:noautolid"))
  {
    v17 = 4;
    goto LABEL_13;
  }

  v14 = strncmp(v13, "vceunkn", 7uLL);
  v15 = strlen(v13);
  v16 = strcmp(v13, "unknown") == 0;
  if (v15 == 3)
  {
    v16 = 2;
  }

  if (v14)
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
      goto LABEL_29;
    }

    v19 = *a2;
    if (**a2 != 0x4000 || v19[8] != 36)
    {
      goto LABEL_29;
    }

    v20 = *(v19 + 7);
    if (strcmp(v20, "unknown"))
    {
      if (!strcmp(v20, "vceunkn"))
      {
        goto LABEL_26;
      }

      v21 = strcmp(v20, "unknown:noautolid");
      v22 = *(*(a1 + 16) + 40);
      if (!v21)
      {
LABEL_24:
        v24 = "unknown:noautolid";
LABEL_27:
        paramc_ParamSetStr(v22, "lidon", v24);
        goto LABEL_28;
      }

      paramc_ParamSetStr(v22, "lidon", v13);
      if (*(*a2 + 64) != 36)
      {
LABEL_28:
        v17 = 0;
        goto LABEL_29;
      }

      v23 = *(*a2 + 88);
      if (strcmp(v23, "unknown"))
      {
        if (strncmp(v23, "vceunkn", 7uLL))
        {
          if (!strcmp(v23, "unknown:noautolid"))
          {
            v22 = *(*(a1 + 16) + 40);
            goto LABEL_24;
          }

          goto LABEL_28;
        }

LABEL_26:
        v22 = *(*(a1 + 16) + 40);
        v24 = "vceunkn";
        goto LABEL_27;
      }
    }

    v22 = *(*(a1 + 16) + 40);
    v24 = "unknown";
    goto LABEL_27;
  }

LABEL_29:
  v18 = (*(*(a1 + 72) + 112))(*(a1 + 976), *(a1 + 984), a3, 32 * *a4 + 160);
  if ((v18 & 0x80000000) == 0)
  {
    v25 = *a4;
    if (v25)
    {
      if (*(a1 + 1816) == 36)
      {
        v26 = *a2;
        if (**a2 == 0x4000)
        {
          v27 = *a3;
          v28 = v26[1];
          *v27 = *v26;
          v27[1] = v28;
          v29 = *a3;
          *(v29 + 8) = *(a1 + 1816);
          *(v29 + 7) = *(a1 + 1840);
          *(*a3 + 44) = *(*a2 + 12);
          *(a1 + 1816) = 0u;
          *(a1 + 1832) = 0u;
          v30 = *a4;
          if (*a4 >= 2)
          {
            memcpy((*a3 + 64), (*a2 + 32), 32 * (v30 - 1));
            v30 = *a4;
          }

          v31 = v30 + 1;
          goto LABEL_45;
        }
      }

      v32 = *a3;
      v33 = *a2;
      if (v17 == 2)
      {
        v36 = v33[1];
        *v32 = *v33;
        v32[1] = v36;
        *(*a3 + 32) = 36;
        *(*a3 + 56) = heap_Alloc(*(*(a1 + 16) + 8), 8);
        v37 = *(*a3 + 56);
        if (!v37)
        {
          return 2345672714;
        }

        strcpy(v37, __s1);
        *a6 = *(*a3 + 56);
      }

      else
      {
        if (v17 != 1)
        {
          memcpy(v32, v33, 32 * v25);
          v31 = *a4;
LABEL_45:
          *a5 = v31;
          return v18;
        }

        v34 = v33[1];
        *v32 = *v33;
        v32[1] = v34;
        v35 = *a3;
        *(v35 + 32) = 36;
        *(v35 + 56) = "unknown";
      }

      v38 = *a2;
      v39 = *a3;
      *(*a3 + 44) = *(*a2 + 12);
      v40 = *a4;
      if (*a4 >= 2)
      {
        memcpy((v39 + 64), (v38 + 32), 32 * (v40 - 1));
        v40 = *a4;
      }

      v31 = v40 + 1;
      goto LABEL_45;
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
      v8 = *(a2 + 12);
      while (1)
      {
        v9 = a2 + 32 * v7;
        if (v8 == *(v9 + 12) && *v9 == 36)
        {
          v10 = *(v9 + 24);
          if (!strcmp(v10, "unknown"))
          {
            break;
          }

          result = strcmp(v10, "unknown:noautolid");
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

      v11 = *(a2 + 24);
      if (!strcmp(v11, "ins_unknown"))
      {
        strcpy(v11, v10);
      }

      v12 = *(*(v6 + 16) + 40);

      return paramc_ParamSetStr(v12, "hasuserunknowninserted", "yes");
    }
  }

  return result;
}

uint64_t fe_lid_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62400, 135000) & 0x80000000) != 0)
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
      result = strstr(__s1, (*(v3 + 2) + v4));
      if (!result)
      {
        __strcpy_chk();
        __s2[2] = 0;
        result = strstr(__s1, __s2);
        if (result)
        {
          if (result == __s1 || *(result - 1) == 44)
          {
            result = strncpy((*(v3 + 2) + v4), result, 3uLL);
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
      v13 = **&__c[3];
      v14 = strchr(**&__c[3], __c[0]);
      if (v14)
      {
        *v14 = 0;
        v13 = **&__c[3];
      }

      v15 = 1;
      *(a2 + 2) = 1;
      v16 = strchr(v13, 44);
      if (v16)
      {
        LOWORD(v15) = 1;
        do
        {
          LOWORD(v15) = v15 + 1;
          *(a2 + 2) = v15;
          v16 = strchr(v16 + 1, 44);
        }

        while (v16);
        v15 = v15;
      }

      v17 = heap_Calloc(*(a1 + 8), v15, 24);
      *(a2 + 8) = v17;
      if (v17)
      {
        v18 = **&__c[3];
        v19 = strchr(**&__c[3], 44);
        v20 = v19;
        if (v19)
        {
          *v19 = 0;
        }

        if (*(a2 + 2))
        {
          v21 = 0;
          while (1)
          {
            __strcpy_chk();
            __strcpy_chk();
            *(*(a2 + 8) + 24 * v21 + 16) = 0;
            __strcpy_chk();
            __s2[2] = 0;
            if (!a7)
            {
              goto LABEL_18;
            }

            v22 = strstr(a7, __s2);
            v23 = v22;
            if (v22)
            {
              if (v22 != a7)
              {
                break;
              }
            }

LABEL_19:
            if (!a6 || v23 || (v24 = strstr(a6, __s2), (v23 = v24) == 0) || v24 == a6)
            {
              if (!v23)
              {
LABEL_26:
                v25 = 4;
                v26 = &FE_LID_LANG_2_LANG_GROUP;
                while (strcmp(v26 + 4, v18))
                {
                  v26 += 8;
                  if (!--v25)
                  {
                    goto LABEL_33;
                  }
                }

                v23 = strstr(a6, v26);
                if (v23)
                {
                  goto LABEL_31;
                }

LABEL_33:
                *(*(a2 + 8) + 24 * v21 + 20) = 0;
                if (!v20)
                {
                  goto LABEL_36;
                }

LABEL_34:
                v18 = v20 + 1;
                v28 = strchr(v20 + 1, 44);
                v20 = v28;
                if (v28)
                {
                  *v28 = 0;
                }

                goto LABEL_36;
              }
            }

            else if (*(v24 - 1) != 44)
            {
              goto LABEL_26;
            }

LABEL_31:
            v27 = *(a2 + 8) + 24 * v21;
            *(v27 + 20) = 1;
            strncpy((v27 + 8), v23, 3uLL);
            if (v20)
            {
              goto LABEL_34;
            }

LABEL_36:
            if (++v21 >= *(a2 + 2))
            {
              return v12;
            }
          }

          if (*(v22 - 1) == 44)
          {
            goto LABEL_31;
          }

LABEL_18:
          v23 = 0;
          goto LABEL_19;
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

const char *hlp_FindModelLng(uint64_t a1, char *__s1, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 1066);
    if (*(a1 + 1066))
    {
      for (i = *(a1 + 1072); strcmp(__s1, i); i += 24)
      {
        if (!--v4)
        {
          return 0;
        }
      }

      return i;
    }

    return 0;
  }

  v6 = *(a1 + 1018);
  if (!*(a1 + 1018))
  {
    return 0;
  }

  for (i = *(a1 + 1024); strcmp(__s1, i); i += 24)
  {
    if (!--v6)
    {
      return 0;
    }
  }

  return i;
}

uint64_t hlp_SetActiveLngs(uint64_t a1, char *__s)
{
  *__s1 = 0;
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

  v5 = strlen(__s);
  if (v5)
  {
    v6 = 1;
    v7 = __s;
    LODWORD(v8) = 1;
    do
    {
      v9 = *v7++;
      if (v9 == 44)
      {
        v8 = (v8 + 1);
      }

      else
      {
        v8 = v8;
      }
    }

    while (v5 > v6++);
  }

  else
  {
    v8 = 1;
  }

  v11 = heap_Calloc(*(*(a1 + 16) + 8), v8, 16);
  *(a1 + 1120) = v11;
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = __s[v12];
      if (v16 != 44 && v16 != 0)
      {
        if (v13 > 2)
        {
          v15 = 1;
        }

        else
        {
          __s1[v13 + 4] = ssft_tolower(v16);
        }

        ++v13;
        goto LABEL_56;
      }

      if (v13 == 3)
      {
        break;
      }

      v13 = 0;
      v15 = 1;
LABEL_56:
      v12 = ++v14;
      if (strlen(__s) < v14)
      {
        if (v15)
        {
          log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48005, "%s%s", "languageCodeList", __s);
        }

        return 0;
      }
    }

    lid_make_language_group(__s1, &__s1[4]);
    v18 = *(a1 + 1066);
    if (*(a1 + 1066))
    {
      v19 = *(a1 + 1072);
      v20 = v19;
      v21 = *(a1 + 1066);
      while (strcmp(&__s1[4], v20))
      {
        v20 += 24;
        if (!--v21)
        {
          v22 = v19;
          goto LABEL_32;
        }
      }

      v22 = v19;
      if (v19)
      {
LABEL_36:
        if (*(v20 + 4) || *(v20 + 5))
        {
LABEL_52:
          __strcpy_chk();
          strcpy((*(a1 + 1120) + 16 * *(a1 + 1112) + 8), __s1);
          v13 = 0;
          ++*(a1 + 1112);
          goto LABEL_56;
        }

        v23 = 1;
LABEL_40:
        v24 = *(a1 + 1018);
        if (!*(a1 + 1018))
        {
          goto LABEL_53;
        }

        v25 = *(a1 + 1024);
        v26 = v25;
        v27 = *(a1 + 1018);
        while (strcmp(&__s1[4], v26))
        {
          v26 += 24;
          if (!--v27)
          {
            v28 = v25;
            goto LABEL_46;
          }
        }

        v28 = v25;
        if (!v25)
        {
LABEL_46:
          while (strcmp(__s1, v28))
          {
            v28 += 24;
            if (!--v24)
            {
              goto LABEL_53;
            }
          }

          v26 = v28;
          if (!v25)
          {
LABEL_53:
            if ((v23 & 1) == 0)
            {
              log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Language %s cannot be added to the language identifier active languages: not supported by the Vocalizer models", &__s1[4]);
            }

LABEL_55:
            v13 = 0;
            goto LABEL_56;
          }
        }

        if (!*(v26 + 4) && !*(v26 + 5))
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      }

LABEL_32:
      while (strcmp(__s1, v22))
      {
        v22 += 24;
        if (!--v18)
        {
          goto LABEL_39;
        }
      }

      v20 = v22;
      if (v19)
      {
        goto LABEL_36;
      }
    }

LABEL_39:
    v23 = 0;
    goto LABEL_40;
  }

  log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
  return 2345672714;
}

uint64_t hlp_AppendLidResultAsMarkers(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5, unsigned int *a6, unsigned int *a7, int a8, const char *a9)
{
  v109 = *MEMORY[0x1E69E9840];
  v78 = *(a1 + 1890);
  if (!*(a1 + 1890))
  {
    return 0;
  }

  v10 = 0;
  v75 = (a1 + 1128);
  v76 = (a1 + 1140);
  while (1)
  {
    v84 = *(a1 + 1008);
    v11 = *(a1 + 1896) + 56 * v10;
    v12 = *(v11 + 10);
    v83 = *(v11 + 16);
    v108 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0;
    result = paramc_ParamGetStr(*(*(a1 + 16) + 40), "lidoriginalvoice", &v85);
    if ((result & 0x80000000) != 0)
    {
      result = 0;
      v85 = 0;
    }

    v82 = v10;
    if (v12)
    {
      v80 = result;
      v79 = v11;
      v14 = 0;
      while (1)
      {
        v15 = *(v83 + 16 * v14);
        if (v14 && *(a1 + 1200))
        {
          if (LH_stricmp(*(v83 + 16 * v14), *(a1 + 1912)))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v16 = *(a1 + 1066);
          if (!*(a1 + 1066))
          {
            goto LABEL_21;
          }

          v17 = *(a1 + 1072);
          v18 = v17;
          while (strcmp(v15, v18))
          {
            v18 += 24;
            if (!--v16)
            {
              goto LABEL_21;
            }
          }

          if (!v17 || (v84 || !*(v18 + 16)) && (!v84 || !*(v18 + 20)))
          {
LABEL_21:
            v19 = *(a1 + 1018);
            if (!*(a1 + 1018))
            {
              goto LABEL_53;
            }

            v20 = *(a1 + 1024);
            v21 = v20;
            while (strcmp(v15, v21))
            {
              v21 += 24;
              if (!--v19)
              {
                goto LABEL_53;
              }
            }

            if (!v20 || (v84 || !*(v21 + 16)) && (!v84 || !*(v21 + 20)))
            {
              goto LABEL_53;
            }
          }
        }

        v108 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v22 = *(v15 + 2);
        if (*(a1 + 1120))
        {
          v23 = *(a1 + 1112);
          if (v23)
          {
            v24 = 0;
            v25 = 8;
            do
            {
              v26 = *(a1 + 1120);
              if (v22 == 120)
              {
                v27 = (v26 + v25);
              }

              else
              {
                v27 = (v26 + v25 - 8);
              }

              if (!strcmp(v15, v27))
              {
                if (v84 || !*(a1 + 96))
                {
                  goto LABEL_55;
                }

                __strcpy_chk();
                if (v85)
                {
                  __strcpy_chk();
                }

                if (((*(*(a1 + 96) + 112))(*(a1 + 80), *(a1 + 88), *(*(a1 + 16) + 24), *(*(a1 + 16) + 40), &v87) & 0x80000000) == 0)
                {
                  goto LABEL_55;
                }

                BYTE8(v95) = 0;
                if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), *(*(a1 + 16) + 24), *(*(a1 + 16) + 40), &v87) & 0x80000000) == 0)
                {
                  goto LABEL_55;
                }

                v23 = *(a1 + 1112);
              }

              ++v24;
              v25 += 16;
            }

            while (v24 < v23);
          }
        }

        else
        {
          if (v84 || !*(a1 + 96))
          {
            goto LABEL_55;
          }

          __strcpy_chk();
          if (v85)
          {
            __strcpy_chk();
          }

          if (((*(*(a1 + 96) + 112))(*(a1 + 80), *(a1 + 88), *(*(a1 + 16) + 24), *(*(a1 + 16) + 40), &v87) & 0x80000000) == 0 || (BYTE8(v95) = 0, ((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), *(*(a1 + 16) + 24), *(*(a1 + 16) + 40), &v87) & 0x80000000) == 0))
          {
LABEL_55:
            result = 0;
            LODWORD(v12) = v14;
            v10 = v82;
            v11 = v79;
            break;
          }
        }

LABEL_53:
        if (++v14 == v12)
        {
          v10 = v82;
          v11 = v79;
          result = v80;
          break;
        }
      }
    }

    if (v12 < *(v11 + 10))
    {
      break;
    }

LABEL_92:
    if (++v10 == v78)
    {
      return result;
    }
  }

  v81 = result;
  v28 = v11;
  v29 = *(v11 + 16);
  v30 = v12;
  v31 = *(v29 + 16 * v12);
  v32 = *(a1 + 992);
  ModelLng = hlp_FindModelLng(a1, v31, v32);
  v34 = v75;
  if (v32)
  {
    v35 = *(v29 + 16 * v12 + 8);
    v34 = v76;
    if (v35)
    {
      v36 = v35 / *(v28 + 24);
      v37 = *(a1 + 1148);
      v38 = v37 >= v36;
      v39 = v37 - v36;
      if (!v38)
      {
        v39 = 0;
      }

      v40 = *(a1 + 1144) + v39;
      *(a1 + 1192) = v40;
      *(a1 + 1196) = *v31;
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Setting bias %u: %s", v40, *(*(v28 + 16) + 16 * v12));
      v34 = v76;
    }
  }

  v41 = v28;
  if (*v34)
  {
    v42 = *(v28 + 26);
    if (!*(v28 + 26))
    {
      v43 = *(v28 + 30);
LABEL_76:
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Rejection for message: %u %u, %u %u, %u %u", v12, *(a1 + 1018), v42, *(a1 + 1132), v43, *(a1 + 1136));
      v10 = v82;
      result = v81;
      goto LABEL_92;
    }

    if (v34[1] <= v42)
    {
      v43 = *(v28 + 30);
      if (v34[2] >= v43)
      {
        goto LABEL_76;
      }
    }
  }

  v44 = a4;
  result = hlp_AppendItemRaw32(a1, a2, a3, a4, 0x20u, 10);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v45 = *a2 + 32 * (*a4 - 1);
  if (*(a1 + 996) && *(a1 + 1188))
  {
    result = hlp_AppendItemRaw32(a1, a2, a3, a4, 0x20u, 10);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v46 = *a2;
    v47 = *a4;
    v48 = *a2 + 32 * (*a4 - 1);
    *v48 = 42;
    v49 = *v28;
    v50 = *(v28 + 4);
    v51 = *v28 + a8;
    *(v48 + 8) = 0;
    *(v48 + 12) = v51;
    *(v48 + 16) = v50 - v49;
    LH_utoa(*(a1 + 1192), __s, 0xAu);
    __strcat_chk();
    __strcat_chk();
    v52 = strlen(__s);
    v53 = heap_Alloc(*(*(a1 + 16) + 8), (v52 + 1));
    *(v48 + 24) = v53;
    if (!v53)
    {
      return 2345672714;
    }

    v45 = v46 + 32 * (v47 - 2);
    strcpy(v53, __s);
    v44 = a4;
    v41 = v28;
  }

  v10 = v82;
  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Identified language for segment %u: %s", v82, *(*(v41 + 16) + 16 * v30));
  if (ModelLng)
  {
    v54 = strlen(ModelLng + 8);
    if (a9)
    {
      v55 = v54 + strlen(a9) + 6;
    }

    else
    {
      v55 = v54 + 5;
    }

    v56 = heap_Alloc(*(*(a1 + 16) + 8), v55);
    if (!v56)
    {
      v68 = 48000;
      v67 = 2345672714;
      goto LABEL_97;
    }

    v57 = v56;
    v58 = strcpy(v56, ModelLng + 8);
    v59 = &v57[strlen(v58)];
    if (*(a1 + 1008))
    {
      v59[4] = 0;
      v60 = 1684630623;
    }

    else
    {
      v59[4] = 0;
      v60 = 1768715871;
    }

    *v59 = v60;
    if (a9)
    {
      strcat(v57, a9);
    }

    *(v45 + 24) = v57;
    *v45 = 36;
    v61 = *v41;
    v62 = *(v41 + 4);
    v63 = *v41 + a8;
    *(v45 + 8) = 0;
    *(v45 + 12) = v63;
    *(v45 + 16) = v62 - v61;
    if (*(a1 + 996) && *(a1 + 1188))
    {
      v64 = a7;
      result = hlp_AppendItemRaw32(a1, a5, a6, a7, 4u, 10);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      *(*a5 + 4 * (*a7 - 1)) = *v44 - 2;
      result = hlp_AppendItemRaw32(a1, a5, a6, a7, 4u, 10);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = 0;
      v65 = *v44 - 1;
      v66 = *a5;
    }

    else
    {
      v64 = a7;
      result = hlp_AppendItemRaw32(a1, a5, a6, a7, 4u, 10);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = 0;
      v65 = *v44 - 1;
      v66 = *a5;
    }

    *(v66 + 4 * (*v64 - 1)) = v65;
    goto LABEL_92;
  }

  v67 = 2345672711;
  v68 = 48001;
LABEL_97:
  log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", v68, 0);
  return v67;
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
  if ((safeh_HandleCheck(a1, a2, 62400, 135000) & 0x80000000) != 0)
  {
    return 2345672712;
  }

  fe_lid_HlpClose(a1);

  return fe_lid_HlpOpen(a1);
}

uint64_t lidmde_ParseStemmingRules(uint64_t a1)
{
  v2 = a1 + 0x20000;
  v3 = *(a1 + 134976);
  v4 = strchr(v3, 59);
  if (v4)
  {
    v5 = 2;
    do
    {
      v4 = strchr(v4 + 1, 59);
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
  *(v2 + 3912) = v8;
  v9 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_16;
  }

  v10 = heap_Calloc(*(v9 + 8), v6, 8);
  *(v2 + 3920) = v10;
  if (!v10)
  {
    v9 = *(a1 + 16);
LABEL_16:
    log_OutPublic(*(v9 + 32), "FE_LID", 48000, 0);
    return 2345672714;
  }

  v11 = strchr(v3, 59);
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      *v12 = 0;
      v15 = strchr(v3, 44);
      if (!v15)
      {
        break;
      }

      *v15 = 0;
      v16 = v15 + 1;
      *(*(v2 + 3912) + 8 * v14) = v3;
      *(*(v2 + 3920) + 8 * v14) = v16;
      v3 = v12 + 1;
      if ((v12 - v16) >= v13)
      {
        v13 = v12 - v16;
      }

      v12 = strchr(v12 + 1, 59);
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
    v17 = strchr(v3, 44);
    if (v17)
    {
      *v17 = 0;
      v18 = v17 + 1;
      *(*(v2 + 3912) + 8 * v14) = v3;
      *(*(v2 + 3920) + 8 * v14) = v18;
      v19 = strlen(v18);
      v7 = 0;
      if (v19 >= v13)
      {
        v20 = v19;
      }

      else
      {
        v20 = v13;
      }

      *(v2 + 3888) = v20;
      v21 = (v14 + 1);
      *(*(v2 + 3912) + 8 * v21) = 0;
      *(*(v2 + 3920) + 8 * v21) = 0;
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

uint64_t lidmde_FindLangs(uint64_t a1, char *a2, __int16 a3, const char *a4, __int16 a5, void *a6, _DWORD *a7)
{
  v43 = *MEMORY[0x1E69E9840];
  v14 = a1 + 0x20000;
  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "Start ML2 LID MDE : %s", a2);
  __s1 = a2;
  v39 = a5;
  v15 = (a3 - a2);
  if (v15 <= (a5 - a4))
  {
    v15 = (a5 - a4);
  }

  v16 = heap_Alloc(*(*(a1 + 16) + 8), v15 + *(v14 + 3888) + 1);
  if (v16)
  {
    v17 = v16;
    if (*(a1 + 1928))
    {
      bzero(a6, 4 * *(a1 + 1928));
    }

    if (**(v14 + 3912))
    {
      v35 = a3;
      v18 = 0;
      v19 = 0;
      v40 = 0;
      while (1)
      {
        *v17 = 0;
        v20 = lidmde_StemLookup2(a1, a4, v39, *(*(v14 + 3912) + 8 * v18), *(*(v14 + 3920) + 8 * v18), v17, a6, &v40);
        if ((v20 & 0x80000000) != 0)
        {
          goto LABEL_43;
        }

        if (!v40)
        {
          if (!strcmp(__s1, a4))
          {
            goto LABEL_20;
          }

          v20 = lidmde_StemLookup2(a1, __s1, v35, *(*(v14 + 3912) + 8 * v18), *(*(v14 + 3920) + 8 * v18), v17, a6, &v40);
          if ((v20 & 0x80000000) != 0)
          {
            goto LABEL_43;
          }

          if (!v40)
          {
LABEL_20:
            v25 = *(a1 + 1088);
            v40 = 0;
            *a7 = 0;
            if (!lidmde_HasVowelWord(*(v14 + 3896), v17) || Utf8_Utf8NbrOfSymbols(v17) < *(v14 + 3890))
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
                      *(a6 + i) = 1;
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
          if (*(a6 + v23))
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
        if (!*(*(v14 + 3912) + 8 * v19) || !v22)
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

uint64_t lidmde_StemLookup2(uint64_t a1, const char *a2, __int16 a3, char *__s, const char *a5, char *a6, void *a7, _DWORD *a8)
{
  *a8 = 0;
  v15 = a3 - a2 - strlen(__s);
  LOBYTE(__c[0]) = 0;
  v26 = 0;
  if (v15 < 0)
  {
    return 0;
  }

  v16 = v15 & 0x7FFF;
  if (strcmp(&a2[v16], __s))
  {
    return 0;
  }

  strncpy(a6, a2, v16);
  strcpy(&a6[v16], a5);
  if (!lidmde_HasVowelWord(*(a1 + 134968), a6) || Utf8_Utf8NbrOfSymbols(a6) < *(a1 + 134962))
  {
    return 0;
  }

  *(__c + 1) = 1;
  v17 = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", a6, &v26, __c + 1, __c, *(a1 + 2040));
  if ((v17 & 0x80000000) == 0 && *(__c + 1))
  {
    v19 = *v26;
    v20 = strchr(*v26, LOBYTE(__c[0]));
    if (v20)
    {
      *v20 = 0;
      v19 = *v26;
    }

    if (!strcmp(v19, "all"))
    {
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) stem found: %s as all", a6);
      if (*(a1 + 1928))
      {
        memset_pattern16(a7, &unk_1C37BE170, 4 * *(a1 + 1928));
      }
    }

    else
    {
      v21 = *(a1 + 1928);
      if (*(a1 + 1928))
      {
        v22 = 0;
        v23 = *v26;
        v24 = *(a1 + 1936);
        while (1)
        {
          v25 = v22;
          if (!strcmp(v23, (v24 + 8 * v22)))
          {
            break;
          }

          v22 = v25 + 1;
          if (v25 + 1 >= v21)
          {
            goto LABEL_20;
          }
        }

        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) stem found: %s as %s", a6, v23);
        *(a7 + v25) = 1;
      }
    }

LABEL_20:
    *a8 = 1;
  }

  return v17;
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
      v14 = __c[0];
      v15 = strchr(**&__c[3], __c[0]);
      v16 = a5 != 0;
      if (v15)
      {
        v17 = a5 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v18 = v15;
        v19 = 0;
        do
        {
          if (v18 != v13)
          {
            *v18 = 0;
            *(a6 + v19) = LH_atou(v13);
            v14 = __c[0];
          }

          ++v19;
          v13 = v18 + 1;
          v20 = strchr(v18 + 1, v14);
          v16 = v19 < a5;
          if (!v20)
          {
            break;
          }

          v18 = v20;
        }

        while (v19 < a5);
      }

      if (*v13)
      {
        v21 = !v16;
      }

      else
      {
        v21 = 1;
      }

      if (!v21)
      {
        *(a6 + v19) = LH_atou(v13);
      }
    }
  }

  return v12;
}

uint64_t lid_Init(uint64_t a1)
{
  *(a1 + 1896) = 0;
  *(a1 + 1888) = 0;
  *(a1 + 1204) = 0x7172667472656DLL;
  *(a1 + 1460) = 0x7172667772656DLL;
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
  v49 = *MEMORY[0x1E69E9840];
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
    v10 = strchr(*__c_3, __c);
    if (v10)
    {
      *v10 = 0;
    }

    v11 = 1;
    *(a2 + 16) = 1;
    v12 = strchr(v9, 44);
    if (v12)
    {
      LOWORD(v11) = 1;
      do
      {
        LOWORD(v11) = v11 + 1;
        *(a2 + 16) = v11;
        v12 = strchr(v12 + 1, 44);
      }

      while (v12);
      v11 = v11;
    }

    v13 = heap_Calloc(*(*(a1 + 16) + 8), v11, 536);
    *(a2 + 24) = v13;
    if (!v13)
    {
LABEL_74:
      appended = 2345672714;
      log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0, v43[0]);
      return appended;
    }

    v14 = strchr(v9, 44);
    v15 = v14;
    if (v14)
    {
      *v14 = 0;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_75;
    }

    v16 = 0;
    v17 = 0;
    do
    {
      __strcpy_chk();
      if (v15)
      {
        v18 = strchr(v15 + 1, 44);
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
LABEL_75:
      appended = 0;
      *(a2 + 40) = 0;
      return appended;
    }

    v19 = 0;
    qmemcpy(v43, "merwfrq_mertfrq_", sizeof(v43));
    while (1)
    {
      v20 = *(a2 + 24) + 536 * v19;
      v47[0] = 0;
      *&v47[3] = 0;
      *__src = v43[1];
      __src[8] = 0;
      __strcat_chk();
      __strcpy_chk();
      __src[8] = 0;
      *__src = v43[0];
      __strcat_chk();
      strcpy((v20 + 280), __src);
      strcpy(__src, "languages.");
      __strcat_chk();
      *&v47[1] = a3;
      v8 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "lidcfg", __src, &v47[3], &v47[1], v47);
      if ((v8 & 0x80000000) != 0)
      {
        break;
      }

      v21 = **&v47[3];
      v22 = strchr(**&v47[3], v47[0]);
      if (v22)
      {
        *v22 = 0;
      }

      *(v20 + 8) = 1;
      v23 = strchr(v21, 44);
      if (v23)
      {
        v24 = 1;
        do
        {
          *(v20 + 8) = ++v24;
          v23 = strchr(v23 + 1, 44);
        }

        while (v23);
        v25 = v24;
      }

      else
      {
        v25 = 1;
      }

      v26 = heap_Calloc(*(*(a1 + 16) + 8), v25, 8);
      *(v20 + 16) = v26;
      if (!v26)
      {
        goto LABEL_74;
      }

      v27 = strchr(v21, 44);
      v28 = v27;
      if (v27)
      {
        *v27 = 0;
      }

      if (*(v20 + 8))
      {
        v29 = 0;
        v30 = 0;
        do
        {
          strcpy((*(v20 + 16) + v29), v21);
          if (v28)
          {
            v21 = v28 + 1;
            v31 = strchr(v28 + 1, 44);
            v28 = v31;
            if (v31)
            {
              *v31 = 0;
            }
          }

          ++v30;
          v29 += 8;
        }

        while (v30 < *(v20 + 8));
      }

      ++v19;
      v32 = *(a2 + 16);
      if (v19 >= v32)
      {
        *(a2 + 40) = 0;
        if (v32)
        {
          v33 = 0;
          v34 = 0;
          LODWORD(v43[1]) = -1949294585;
          while (1)
          {
            v35 = *(a2 + 24);
            if (!strcmp((v35 + v33), "latn"))
            {
              v38 = v34;
              v36 = a2 + 32;
              v37 = a1;
              v39 = 0;
              v40 = 591;
            }

            else if (!strcmp((v35 + v33), "cyrl"))
            {
              appendUnicodeRange(a1, a2 + 32, v34, 1024, 1327);
              appendUnicodeRange(a1, a2 + 32, v34, 11744, 11775);
              v36 = a2 + 32;
              v37 = a1;
              v38 = v34;
              v39 = 42560;
              v40 = 42655;
            }

            else if (!strcmp((v35 + v33), "deva"))
            {
              v38 = v34;
              v36 = a2 + 32;
              v37 = a1;
              v39 = 2304;
              v40 = 2431;
            }

            else if (!strcmp((v35 + v33), "tami"))
            {
              v38 = v34;
              v36 = a2 + 32;
              v37 = a1;
              v39 = 2944;
              v40 = 3071;
            }

            else if (!strcmp((v35 + v33), "telu"))
            {
              v38 = v34;
              v36 = a2 + 32;
              v37 = a1;
              v39 = 3072;
              v40 = 3199;
            }

            else if (!strcmp((v35 + v33), "beng"))
            {
              v38 = v34;
              v36 = a2 + 32;
              v37 = a1;
              v39 = 2432;
              v40 = 2559;
            }

            else if (!strcmp((v35 + v33), "kann"))
            {
              v38 = v34;
              v36 = a2 + 32;
              v37 = a1;
              v39 = 3200;
              v40 = 3327;
            }

            else if (!strcmp((v35 + v33), "hanx"))
            {
              appendUnicodeRange(a1, a2 + 32, v34, 13312, 19903);
              appendUnicodeRange(a1, a2 + 32, v34, 19968, 40879);
              appendUnicodeRange(a1, a2 + 32, v34, 0x20000, 173782);
              appendUnicodeRange(a1, a2 + 32, v34, 173824, 183983);
              v36 = a2 + 32;
              v40 = 195101;
              v37 = a1;
              v38 = v34;
              v39 = 194560;
            }

            else if (!strcmp((v35 + v33), "hrkt"))
            {
              appendUnicodeRange(a1, a2 + 32, v34, 12352, 12543);
              v36 = a2 + 32;
              v37 = a1;
              v38 = v34;
              v39 = 65381;
              v40 = 65439;
            }

            else if (!strcmp((v35 + v33), "hang"))
            {
              appendUnicodeRange(a1, a2 + 32, v34, 4352, 4607);
              appendUnicodeRange(a1, a2 + 32, v34, 44032, 55215);
              v36 = a2 + 32;
              v37 = a1;
              v38 = v34;
              v39 = 65440;
              v40 = 65500;
            }

            else if (!strcmp((v35 + v33), "arab"))
            {
              appendUnicodeRange(a1, a2 + 32, v34, 1536, 1791);
              appendUnicodeRange(a1, a2 + 32, v34, 1872, 1919);
              appendUnicodeRange(a1, a2 + 32, v34, 64336, 65023);
              v36 = a2 + 32;
              v37 = a1;
              v38 = v34;
              v39 = 65136;
              v40 = 65279;
            }

            else if (!strcmp((v35 + v33), "grek"))
            {
              appendUnicodeRange(a1, a2 + 32, v34, 880, 1023);
              v36 = a2 + 32;
              v37 = a1;
              v38 = v34;
              v39 = 7936;
              v40 = 0x1FFF;
            }

            else
            {
              if (strcmp((v35 + v33), "hebr"))
              {
                return LODWORD(v43[1]);
              }

              appendUnicodeRange(a1, a2 + 32, v34, 1424, 1535);
              v36 = a2 + 32;
              v37 = a1;
              v38 = v34;
              v39 = 64285;
              v40 = 64320;
            }

            appended = appendUnicodeRange(v37, v36, v38, v39, v40);
            if ((appended & 0x80000000) == 0)
            {
              ++v34;
              v33 += 536;
              if (v34 < *(a2 + 16))
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

uint64_t lid_Identify(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v101 = *MEMORY[0x1E69E9840];
  v6 = 1064;
  if (!*(a1 + 992))
  {
    v6 = 1016;
  }

  v94 = a1 + v6;
  *(a1 + 1890) = 0;
  if (*(a1 + v6 + 16))
  {
    *&v100[0] = 0;
    *(a1 + 1890) = 0;
    if (!a3)
    {
      return 0;
    }

    v7 = 0;
    appended = 0;
    v9 = 0;
    v90 = -1;
    v10 = -1;
    v92 = -1;
    do
    {
      U32FromUtf8 = utf8_GetU32FromUtf8(v4, v9, v3);
      v12 = (U32FromUtf8 & 0xDF) - 65 < 0x1A;
      if (U32FromUtf8 == 9 || U32FromUtf8 == 32)
      {
        v14 = v9;
      }

      else
      {
        v14 = v10;
      }

      if (U32FromUtf8 > 0xFE)
      {
        v12 = 1;
      }

      else
      {
        v10 = v14;
      }

      v15 = *(v94 + 34);
      if (*(v94 + 34))
      {
        v16 = (*(v94 + 40) + 8);
        while (*(v16 - 2) > U32FromUtf8 || *(v16 - 1) <= U32FromUtf8)
        {
          v16 += 6;
          if (!--v15)
          {
            goto LABEL_32;
          }
        }

        v17 = *v16;
        if (v17 >= 0 && v12)
        {
          if (*v16 != v90)
          {
            if (v7)
            {
              *(v7 + 4) = v92 + 1;
            }

            appended = appendCoLangSegment(a1, v100);
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }

            v7 = *&v100[0];
            *(*&v100[0] + 8) = v17;
            if (v10 >= v92)
            {
              v18 = v10 + 1;
            }

            else
            {
              v18 = v9;
            }

            *v7 = v18;
            *(v7 + 10) = 0;
            v90 = v17;
          }

          v92 = v9;
        }

        v4 = a2;
      }

LABEL_32:
      v9 += utf8_determineUTF8CharLength(*(v4 + v9));
    }

    while (v9 < v3);
    if (v7)
    {
      *(v7 + 4) = v92 + 1;
    }

    v19 = v94;
    if ((appended & 0x80000000) != 0)
    {
      return appended;
    }
  }

  else
  {
    *&v100[0] = 0;
    appended = appendCoLangSegment(a1, v100);
    if ((appended & 0x80000000) != 0)
    {
      return appended;
    }

    v20 = *&v100[0];
    **&v100[0] = 0;
    *(v20 + 4) = v3;
    *(v20 + 8) = 0xFFFF;
    v19 = v94;
  }

  v21 = *(a1 + 1890);
  if (!*(a1 + 1890))
  {
    return appended;
  }

  v22 = 0;
  v23 = v21 - 1;
  v24 = a1 + 1204;
  v25 = a1 + 1460;
  v26 = 0uLL;
  v83 = *(a1 + 1890);
  v82 = v21 - 1;
  while (1)
  {
    v27 = (*(a1 + 1896) + 56 * v22);
    if (!v22)
    {
      *v27 = 0;
    }

    if (v23 == v22)
    {
      v27[1] = v3;
    }

    v28 = *(v27 + 2);
    if ((v27[2] & 0x8000000000000000) != 0)
    {
      break;
    }

    v29 = *(v19 + 24) + 536 * *(v27 + 4);
    v30 = *(v29 + 8);
    if (*(v29 + 8))
    {
      v86 = v29 + 24;
      v91 = v29 + 280;
      v31 = *(v29 + 16);
      v32 = v28 + 1;
      v33 = v30;
      do
      {
        *v32 = 0;
        *(v32 - 1) = v31;
        v31 += 8;
        v32 += 4;
        --v33;
      }

      while (v33);
      goto LABEL_54;
    }

LABEL_72:
    appended = 0;
    *(v27 + 5) = 0;
LABEL_135:
    if (++v22 == v21)
    {
      return appended;
    }
  }

  v34 = *(v19 + 2);
  if (!*(v19 + 2))
  {
    goto LABEL_72;
  }

  v35 = *(v19 + 8);
  v36 = v28 + 1;
  v37 = *(v19 + 2);
  do
  {
    *v36 = 0;
    *(v36 - 1) = v35;
    v35 += 24;
    v36 += 4;
    --v34;
  }

  while (v34);
  v86 = v24;
  v91 = v25;
  v30 = v37;
LABEL_54:
  *(v27 + 5) = v30;
  if (v30 < 2)
  {
    appended = 0;
    if (v30 == 1)
    {
      *(v28 + 2) = 0;
      *(v27 + 3) = 0;
    }

    goto LABEL_135;
  }

  v87 = v30;
  v38 = *v27;
  v39 = v27[1] - v38;
  v93 = *v19;
  v100[0] = v26;
  v100[1] = v26;
  v100[2] = v26;
  v100[3] = v26;
  v100[4] = v26;
  v100[5] = v26;
  v100[6] = v26;
  v100[7] = v26;
  v99[0] = v26;
  v99[1] = v26;
  v99[2] = v26;
  v99[3] = v26;
  v99[4] = v26;
  v99[5] = v26;
  v99[6] = v26;
  v99[7] = v26;
  *(v27 + 3) = 0;
  v89 = v27;
  v40 = normalizedDup(a1, v4 + v38, v39, v27 + 12);
  if (!v40)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
    return 2345672714;
  }

  v41 = v40;
  v85 = v22;
  v97 = 0;
  v98 = v40;
  v96 = 0;
  v95 = 0;
  Word = nextWord(&v98);
  if (!Word)
  {
    appended = 0;
LABEL_77:
    v98 = v41;
    v47 = nextWord(&v98);
    v48 = v87;
    if (v47)
    {
      v49 = v47;
      v84 = v3;
      do
      {
        appended = calcWScore(a1, v49, v91, v93, v48, v99, (v89 + 12));
        if ((appended & 0x80000000) != 0)
        {
          return appended;
        }

        v50 = v48;
        v51 = v99;
        traceScore(a1, "doLidString WSCORE THIS WORD", v49, v50, v28, v99);
        bzero(v100, 4 * v87);
        v52 = 0;
        v53 = 0;
        v54 = v87;
        do
        {
          if (*v51++)
          {
            v52 = 1;
          }

          else
          {
            v53 = 1;
          }

          --v54;
        }

        while (v54);
        if (v53)
        {
          v48 = v87;
          if (v52 || !IsFlatDistribution(a1, (v89 + 12), v49, (v49 - v41)))
          {
            appended = calcTScore(a1, v49, v86, v93, v87, v100, v28);
            if ((appended & 0x80000000) != 0)
            {
              return appended;
            }
          }

          else
          {
            if (*(a1 + 1188))
            {
              v56 = v100;
              v57 = v28;
              v58 = v87;
              do
              {
                v59 = *v57;
                v57 += 2;
                if (LH_strnicmp(v59, a1 + 1196, 2uLL))
                {
                  v60 = 100;
                }

                else
                {
                  v60 = 10;
                }

                *v56++ = v60;
                --v58;
              }

              while (v58);
            }

            else
            {
              v61 = v100;
              v62 = v28;
              v63 = v87;
              do
              {
                v64 = *v62;
                v62 += 2;
                if (LH_strnicmp(v64, *(a1 + 1912), 2uLL))
                {
                  v65 = 100;
                }

                else
                {
                  v65 = 10;
                }

                *v61++ = v65;
                --v63;
              }

              while (v63);
            }

            v3 = v84;
            v48 = v87;
          }

          traceScore(a1, "doLidString TSCORE THIS WORD", v49, v48, v28, v100);
        }

        else
        {
          v48 = v87;
        }

        v66 = 0;
        v67 = v87;
        do
        {
          v68 = *(v99 + v66 * 2);
          if (!v68)
          {
            v68 = *(v100 + v66 * 2);
          }

          LODWORD(v28[v66 + 1]) += v68;
          v66 += 2;
          --v67;
        }

        while (v67);
        traceScore(a1, "doLidString COMBINED ALL WORDS UNTIL THIS WORD NOT BIASED", v49, v48, v28, 0);
        v49 = nextWord(&v98);
      }

      while (v49);
    }

    traceScore(a1, "doLidString ALL WORDS COMBINED NOT BIASED, NOT SORTED", "Result", v48, v28, 0);
    if (v89[12])
    {
      v89[15] = 100 * v89[14] / v89[12];
    }

    if (*(a1 + 1188))
    {
      v69 = (v28 + 1);
      v70 = v48;
      while (strncmp(*(v69 - 1), (a1 + 1196), 2uLL))
      {
        v69 += 4;
        if (!--v70)
        {
          goto LABEL_121;
        }
      }

      if (v89[13] && v89[14] && !*(a1 + 1920))
      {
        v78 = *(a1 + 1192) * v89[13];
        v79 = *v69 >= v78;
        v80 = *v69 - v78;
        if (v80 == 0 || !v79)
        {
          v80 = 1;
        }

        *v69 = v80;
      }

      else
      {
        *v69 = 0;
      }
    }

LABEL_121:
    ssft_qsort(v28, v48, 16, compareScore);
    if (*(a1 + 992))
    {
      v22 = v85;
      if (!*(a1 + 1168))
      {
        goto LABEL_134;
      }

      v71 = *(v28 + 2);
      v72 = *(v28 + 6);
      v73 = v71 - v72;
      if (v71 - v72 < 0)
      {
        v73 = v72 - v71;
      }

      if (v73 >= *(a1 + 1172))
      {
        goto LABEL_134;
      }

      v74 = v28[2];
      v75 = (a1 + 1176);
    }

    else
    {
      v22 = v85;
      if (!*(a1 + 1156))
      {
        goto LABEL_134;
      }

      v71 = *(v28 + 2);
      v72 = *(v28 + 6);
      v76 = v71 - v72;
      if (v71 - v72 < 0)
      {
        v76 = v72 - v71;
      }

      if (v76 >= *(a1 + 1160))
      {
        goto LABEL_134;
      }

      v74 = v28[2];
      v75 = (a1 + 1164);
    }

    if (!strcmp(v74, v75))
    {
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "fuzzy fallback from %s to %s: %7lu -> %7lu", *v28, v74, v71, v72);
      v77 = *v28;
      *v28 = *(v28 + 1);
      *(v28 + 1) = v77;
    }

LABEL_134:
    traceScore(a1, "doLidString ALL WORDS COMBINED BIASED AND/OR FUZZY CORRECTED, SORTED", "Result", v87, v28, 0);
    heap_Free(*(*(a1 + 16) + 8), v41);
    v4 = a2;
    v19 = v94;
    v21 = v83;
    v23 = v82;
    v25 = a1 + 1460;
    v24 = a1 + 1204;
    v26 = 0uLL;
    goto LABEL_135;
  }

  v43 = Word;
  while (1)
  {
    v96 = v93;
    appended = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), v91, v43, &v97, &v96, &v95, *(a1 + 1848));
    if ((appended & 0x80000000) != 0)
    {
      return appended;
    }

    v44 = nextWord(&v98);
    if (!v96 && !IsFlatDistribution(a1, (v89 + 12), v43, (v43 - v41)))
    {
      while (1)
      {
        v45 = *v43;
        if (!*v43)
        {
          break;
        }

        {
          v45 = 32;
          *v43 = 32;
        }

        v43 += utf8_determineUTF8CharLength(v45);
      }
    }

    if (!v44)
    {
      goto LABEL_77;
    }

    v46 = v44 - 1;
    v43 = v44;
    if ((v44 - 1) > v41)
    {
      do
      {
        if (*v46 && !memchr(" \t\n", *v46, 4uLL))
        {
          break;
        }

        *v46-- = 32;
      }

      while (v46 > v41);
      v43 = v44;
    }
  }
}

uint64_t appendCoLangSegment(uint64_t a1, void *a2)
{
  v4 = *(a1 + 1888);
  v5 = (a1 + 1896);
  result = appendItemRaw16(a1, (a1 + 1896), (a1 + 1888), (a1 + 1890), 0x38u);
  if ((result & 0x80000000) == 0)
  {
    if (v4 >= *(a1 + 1888))
    {
LABEL_8:
      result = 0;
      *a2 = *v5 + 56 * *(a1 + 1890) - 56;
    }

    else
    {
      v7 = 56 * v4 + 16;
      while (1)
      {
        v8 = *(a1 + 1896);
        v9 = *(a1 + 1018);
        if (v9 <= *(a1 + 1066))
        {
          v9 = *(a1 + 1066);
        }

        v10 = heap_Calloc(*(*(a1 + 16) + 8), 1, 16 * v9);
        *(v8 + v7) = v10;
        if (!v10)
        {
          break;
        }

        ++v4;
        v7 += 56;
        if (v4 >= *(a1 + 1888))
        {
          goto LABEL_8;
        }
      }

      log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
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
  v52 = *MEMORY[0x1E69E9840];
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
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v11 = 0;
      v43 = v4 + 5;
      v12 = result;
      v13 = a3 - 1;
      v44 = a3 - 2;
      v14 = 1;
      v45 = result;
      v15 = a3;
      v46 = a3;
      while (1)
      {
        v16 = (a2 + v11);
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

        *v12++ = 32;
        LOWORD(v10) = v10 + 1;
        v19 = 1;
LABEL_46:
        v11 += v19;
        if (v11 >= v15)
        {
          v37 = v48 == 0;
          v38 = v49 != 0;
          v39 = v8 != 0;
          v40 = v4[4];
          if (v40 >= 0xA)
          {
            result = v45;
            goto LABEL_92;
          }

          result = v45;
          if (v14)
          {
            v41 = v9;
            v10 = v10;
            v42 = v47;
LABEL_87:
            if (&v12[-result - v42 - v10 - v41 - 2] >= 3 && !v38)
            {
LABEL_89:
              if (v39)
              {
                goto LABEL_90;
              }

LABEL_92:
              ++*v4;
              if (!v37 && !v38)
              {
                ++v4;
                goto LABEL_96;
              }

              goto LABEL_97;
            }
          }

          else
          {
            if (v48)
            {
              v37 = 0;
              goto LABEL_92;
            }

            v37 = 1;
            LOWORD(v42) = v47;
            if (!v49)
            {
              goto LABEL_89;
            }
          }

LABEL_90:
          v4[4] = v40 + 1;
          v4[v40 + 5] = v42;
          goto LABEL_92;
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
          v47 = (v12 - v45);
          ++*v4;
          v14 = 1;
          if (!v48 || v49)
          {
            v48 = 0;
            v49 = 0;
            v8 = 0;
            if (!v11)
            {
LABEL_30:
              {
                LOWORD(v10) = 0;
                *v12++ = *v16;
                goto LABEL_44;
              }

              if (!v11)
              {
LABEL_51:
                LOWORD(v10) = 0;
LABEL_52:
                v19 = 1;
                goto LABEL_45;
              }

              v26 = v11 - 1;
LABEL_38:
              v27 = memchr("_ \r\n\x1B", *(a2 + v26), 6uLL);
              LOWORD(v10) = 0;
              v19 = 1;
              if (v27 || v11 == v13)
              {
                goto LABEL_45;
              }

              if (v11 < v13 && memchr("_ \r\n\x1B", v16[1], 6uLL))
              {
                LOWORD(v10) = 0;
LABEL_45:
                v15 = v46;
                goto LABEL_46;
              }

              if (v11 == v44)
              {
                LODWORD(v16) = *v16;
                {
                  goto LABEL_51;
                }
              }

              else
              {
                LOBYTE(v16) = *v16;
              }

              LOWORD(v10) = 0;
              *v12++ = v16;
LABEL_44:
              ++v9;
              v19 = 1;
              v8 = 1;
              goto LABEL_45;
            }

LABEL_29:
            v26 = v11 - 1;
            if (!memchr("_ \r\n\x1B", *(a2 + v26), 6uLL))
            {
              goto LABEL_38;
            }

            goto LABEL_30;
          }

          v48 = 0;
          v49 = 0;
          v9 = 0;
          v8 = 0;
          ++v4[1];
LABEL_26:
          if (!v11)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        if (v14)
        {
          if (&v12[-v45 - v47 - v10 - v9 - 2] < 3)
          {
LABEL_22:
            v4[4] = v25 + 1;
            v43[v25] = v47;
            goto LABEL_23;
          }
        }

        else if (v48)
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
        v30 = v48;
        v31 = v49;
LABEL_68:
        v32 = *v16;
        if ((v32 - 48) < 0xAu)
        {
          v31 = 1;
        }

        else
        {
          v30 = 1;
        }

        v48 = v30;
        v49 = v31;
        v33 = utf8_determineUTF8CharLength(v32);
        if (v33 >= 2)
        {
          v19 = v33;
          __s2[0] = 0;
          __strncpy_chk();
          __s1[v19] = 0;
          utf8_ToLower(__s1, 0, __s2);
          v14 = v14 && strcmp(__s1, __s2);
          strcpy(v12, __s2);
          v36 = strlen(__s2);
          LOWORD(v10) = 0;
          v8 = 0;
          v12 += v36;
          goto LABEL_45;
        }

        v34 = ssft_tolower(*v16);
        *v12 = v34;
        if (!v14 || (v35 = *v16, v14 = 1, (v35 - 58) <= 0xFFFFFFF5) && v34 == v35)
        {
          v14 = 0;
        }

        LOWORD(v10) = 0;
        v8 = 0;
        ++v12;
        goto LABEL_52;
      }

      v29 = v4[4];
      if (v29 <= 9)
      {
        if (v14)
        {
          if (&v12[-v45 - v47 - v10 - v9 - 2] < 3)
          {
            goto LABEL_63;
          }
        }

        else if (v48)
        {
          goto LABEL_64;
        }

        if (v49 | v8)
        {
LABEL_63:
          v4[4] = v29 + 1;
          v43[v29] = v47;
        }
      }

LABEL_64:
      v9 = 0;
      v47 = (v12 - v45);
      ++*v4;
      v14 = 1;
      if (!v48 || v49)
      {
        v30 = 0;
        v31 = 0;
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v9 = 0;
        ++v4[1];
      }

      goto LABEL_68;
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
      v12 = result;
      goto LABEL_87;
    }

    v12 = result;
LABEL_96:
    ++*v4;
LABEL_97:
    *v12 = 0;
  }

  return result;
}

unsigned __int8 *nextWord(uint64_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  v4 = v2 + 1;
  while (memchr(" \t\n", v3, 4uLL))
  {
    v5 = *v4++;
    v3 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  v6 = v4 - 1;
  *a1 = (v4 - 1);
  v8 = *(v4 - 1);
  if (v8)
  {
    while (!memchr(" \t\n", v8, 4uLL))
    {
      *a1 = v4;
      v9 = *v4++;
      v8 = v9;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    *(v4 - 1) = 0;
    v10 = *a1 + 1;
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

  *a1 = v10;
  return v6;
}

uint64_t calcTScore(uint64_t a1, char *__s, uint64_t a3, __int16 a4, uint64_t a5, void *a6, void *a7)
{
  v8 = a5;
  v53 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    bzero(a6, 4 * a5);
  }

  v11 = (strlen(__s) + 4);
  v12 = heap_Alloc(*(*(a1 + 16) + 8), v11 + 1);
  if (v12)
  {
    v13 = v12;
    memset(__c, 0, sizeof(__c));
    strcpy(v12, "__");
    strcpy(v12 + 2, __s);
    v14 = 0;
    strcpy((v13 + v11 - 2), "__");
    v52[3] = 0;
    if (v11 < 3)
    {
LABEL_40:
      heap_Free(*(*(a1 + 16) + 8), v13);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v43 = v11 - 2;
      v41 = v8 != 0;
      v17 = v8;
      v42 = 4 * v8;
      v44 = a6;
      v48 = v8;
      while (1)
      {
        v52[0] = 0;
        v49 = v16;
        v18 = utf8_determineUTF8CharLength(*(v13 + v16));
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = utf8_determineUTF8CharLength(*(v13 + (v19 + v15)));
          __strncat_chk();
          v19 += v21;
        }

        while (v20++ < 2);
        v23 = v18 <= 1 ? 0 : v18;
        v24 = v23 ? v23 - 1 : 0;
        *&__c[1] = a4;
        v14 = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), a3, v52, &__c[3], &__c[1], __c);
        if ((v14 & 0x80000000) != 0)
        {
          break;
        }

        v25 = v48;
        if (v48)
        {
          bzero(v51, v42);
        }

        if (*&__c[1])
        {
          v26 = **&__c[3];
          v27 = __c[0];
          v28 = strchr(**&__c[3], __c[0]);
          if (v28)
          {
            v29 = v48 == 0;
          }

          else
          {
            v29 = 1;
          }

          if (v29)
          {
            v32 = 0;
            v30 = v41;
          }

          else
          {
            v31 = v28;
            v32 = 0;
            do
            {
              if (v31 != v26)
              {
                *v31 = 0;
                v51[v32] = LH_atou(v26);
                v27 = __c[0];
              }

              ++v32;
              v26 = v31 + 1;
              v33 = strchr(v31 + 1, v27);
              v30 = v32 < v17;
              if (!v33)
              {
                break;
              }

              v31 = v33;
            }

            while (v32 < v17);
          }

          if (*v26)
          {
            v34 = !v30;
          }

          else
          {
            v34 = 1;
          }

          v25 = v48;
          if (!v34)
          {
            v51[v32] = LH_atou(v26);
          }
        }

        if (v25)
        {
          v35 = v51;
          v36 = v17;
          v37 = v44;
          do
          {
            v39 = *v35++;
            v38 = v39;
            if (!v39)
            {
              v38 = *(a1 + 1152);
            }

            *v37++ += v38;
            --v36;
          }

          while (v36);
        }

        traceScore(a1, "calcTScore TSCORES ACCUMULATED", v52, v25, a7, v44);
        v16 = v49 + v24 + 1;
        v15 = (v49 + v24 + 1);
        if (v43 <= v16)
        {
          goto LABEL_40;
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
        a5 += 2;
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
      v15 += 4;
      result = log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "%s: %7lu", v16, v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t IsFlatDistribution(uint64_t a1, uint64_t a2, char *__s, int a4)
{
  v8 = strchr(__s, 64);
  if ((!v8 || !strchr(v8, 46)) && !strstr(__s, "http") && !strstr(__s, "ftp") && !strstr(__s, "www."))
  {
    v9 = strstr(__s, ".com");
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
  v18 = 0;
  NullHandle = safeh_GetNullHandle();
  v11 = safeh_HandlesEqual(a3, a4, NullHandle, v10);
  if (a5)
  {
    if (!v11)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      inited = InitRsrcFunction(a3, a4, &v18);
      if ((inited & 0x80000000) == 0)
      {
        v13 = inited;
        v14 = heap_Calloc(*(v18 + 8), 1, 80);
        if (v14)
        {
          v15 = v14;
          *v14 = a3;
          *(v14 + 8) = a4;
          v16 = v18;
          *(v14 + 16) = v18;
          *(v14 + 72) = 1;
          dctlist_ObjOpen((v14 + 24), *(v16 + 8));
          *a5 = v15;
          *(a5 + 8) = 752;
          return v13;
        }

        else
        {
          log_OutPublic(*(v18 + 32), "DCTEG", 4400, 0);
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

uint64_t dcteg_LoadDictionary(uint64_t a1, int a2, const char **a3, uint64_t a4)
{
  v4 = 2231377930;
  v52 = 0;
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

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v52);
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

    log_OutText(v52[4], "DCTEG", 3, 0, "dcteg_LoadDictionary failed, already loaded: %s", v10);
    return 2231378968;
  }

  v12 = a3[1];
  if (v12 && *v12 && p_checkIfPresent(a1, v12))
  {
    v13 = a3[1];
    if (!v13)
    {
      v13 = "Unknown";
    }

    log_OutText(v52[4], "DCTEG", 3, 0, "dcteg_LoadDictionary failed, already loaded: %s", v13);
    return 2231377939;
  }

  if (!*a3)
  {
    if (!a3[2])
    {
      log_OutPublic(v52[4], "DCTEG", 4408, 0);
      return v5;
    }

    v24 = heap_Calloc(v52[1], 1, 112);
    v15 = v52;
    if (!v24)
    {
      goto LABEL_44;
    }

    v16 = v24;
    *v24 = v52[1];
    v22 = a3[4];
    if (v22)
    {
      v25 = "application/edct-bin-dictionary";
      if (strstr(a3[4], "application/edct-bin-dictionary"))
      {
        goto LABEL_40;
      }

      if (strstr(v22, "application/octet-stream"))
      {
        goto LABEL_40;
      }

      v25 = "application/cdct-bin-dictionary";
      if (strstr(v22, "application/cdct-bin-dictionary"))
      {
        goto LABEL_40;
      }

      v25 = "application/x-vocalizer-userdct-pointer";
      if (strstr(v22, "application/x-vocalizer-userdct-pointer"))
      {
        goto LABEL_40;
      }

      if (strstr(v22, "application/vmp-bin-dictionary"))
      {
        v25 = "application/edct-bin-dictionary";
LABEL_40:
        *(v16 + 16) = v25;
        v26 = strstr(v22, "mode=langoverwriting");
        v27 = "mode=standard";
        if (v26)
        {
          v27 = "mode=langoverwriting";
        }

        *(v16 + 32) = v27;
        if (strstr(v22, "application/x-vocalizer-userdct-pointer"))
        {
          v28 = 4;
        }

        else
        {
          v28 = *(a3 + 6);
        }

        *(v16 + 64) = v28;
        *(v16 + 44) = 0;
        *(v16 + 48) = a3[2];
        goto LABEL_50;
      }
    }

    log_OutPublic(v52[4], "DCTEG", 4403, "%s%s%s%s", "name", "Unknown", "contentType", v22);
    v4 = 2231378966;
    goto LABEL_90;
  }

  v14 = heap_Calloc(v52[1], 1, 112);
  v15 = v52;
  if (!v14)
  {
LABEL_44:
    log_OutPublic(v15[4], "DCTEG", 4400, 0);
    return 2231377930;
  }

  v16 = v14;
  *v14 = v52[1];
  v17 = *(a1 + 16);
  *(v14 + 96) = 0;
  v18 = (v14 + 96);
  *(v14 + 48) = 0;
  v19 = v14 + 48;
  *(v14 + 44) = 0;
  *(v14 + 64) = 0;
  v20 = v14 + 64;
  UDct = brk_DataOpenEx(*(v17 + 24), *a3, 0, v14 + 96);
  if ((UDct & 0x80000000) != 0)
  {
    goto LABEL_89;
  }

  UDct = brk_DataMapEx(*(v17 + 24), *v18, 0, v20, v19);
  if ((UDct & 0x80000000) != 0)
  {
    goto LABEL_89;
  }

  v22 = a3[4];
  if (!v22 || !*v22)
  {
    log_OutPublic(*(v17 + 32), "DCTEG", 4415, "%s%s", "uri", *a3);
    v4 = 2231377922;
    goto LABEL_90;
  }

  v23 = "application/edct-bin-dictionary";
  if (strstr(a3[4], "application/edct-bin-dictionary") || strstr(v22, "application/octet-stream") || (v23 = "application/cdct-bin-dictionary", strstr(v22, "application/cdct-bin-dictionary")) || (v23 = "application/x-vocalizer-userdct-pointer", strstr(v22, "application/x-vocalizer-userdct-pointer")))
  {
    *(v16 + 16) = v23;
  }

  else
  {
    *(v16 + 16) = "application/octet-stream";
  }

  if (strstr(v22, "mode=langoverwriting"))
  {
    *(v16 + 32) = "mode=langoverwriting";
  }

  else
  {
    *(v16 + 32) = "mode=standard";
  }

LABEL_50:
  v29 = v52;
  v30 = strstr(v22, "type=");
  if (v30)
  {
    v31 = v30 + 5;
    v32 = strchr(v30 + 5, 59);
    if (!v32)
    {
      v32 = &v31[strlen(v31)];
    }

    v33 = v32 - v31;
    v34 = heap_Alloc(v29[1], (v32 - v31 + 1));
    *(v16 + 24) = v34;
    if (!v34)
    {
      v46 = v29[4];
      goto LABEL_79;
    }

    v35 = v33;
    if (v33)
    {
      v36 = 0;
      do
      {
        *(*(v16 + 24) + v36) = __tolower(v31[v36]);
        ++v36;
      }

      while (v35 != v36);
      v34 = *(v16 + 24);
    }

    *(v34 + v35) = 0;
    v29 = v52;
  }

  else
  {
    *(v16 + 24) = 0;
  }

  if (a3[1])
  {
    v37 = a3[1];
  }

  else
  {
    v37 = "Unknown";
  }

  v38 = strlen(v37);
  v39 = heap_Alloc(v29[1], (v38 + 1));
  *(v16 + 8) = v39;
  if (!v39 || ((strcpy(v39, v37), *a3) ? (v40 = *a3) : (v40 = "Unknown"), v41 = strlen(v40), v42 = heap_Alloc(v52[1], (v41 + 1)), (*(v16 + 56) = v42) == 0))
  {
    v46 = v52[4];
LABEL_79:
    log_OutPublic(v46, "DCTEG", 4400, 0);
    goto LABEL_90;
  }

  strcpy(v42, v40);
  v43 = *(v16 + 56);
  if (v43 && a3[4])
  {
    log_OutEvent(v52[4], 12, "%s%s%s%s", "URI", v43, "CONTENT-TYPE", *(v16 + 16));
  }

  v44 = *(v16 + 16);
  if (strcmp(v44, "application/edct-bin-dictionary") && strcmp(v44, "application/cdct-bin-dictionary") && strcmp(v44, "application/x-vocalizer-userdct-pointer"))
  {
    v45 = *a3;
    if (!*a3)
    {
      v45 = "Unknown";
    }

    log_OutPublic(v52[4], "DCTEG", 4403, "%s%s%s%s", "name", v45, "contentType", v44);
LABEL_88:
    v4 = v5;
    goto LABEL_90;
  }

  v47 = *(a1 + 48);
  if (!v47)
  {
    UDct = OpenEDCTObj(*a1, *(a1 + 8), a1 + 48);
    if ((UDct & 0x80000000) != 0)
    {
      goto LABEL_89;
    }

    v47 = *(a1 + 48);
  }

  UDct = LoadUDct(v47, v16);
  if ((UDct & 0x80000000) == 0)
  {
    if (!*(a1 + 72) || (UDct = dcteg_hlp_InitializeMWDct(v52, a1, v16), (UDct & 0x80000000) == 0))
    {
      *(v16 + 40) = 1;
      v5 = dctlist_Add(a1 + 24, v16);
      if ((v5 & 0x80000000) != 0)
      {
        v51 = *(v16 + 8);
        if (!v51)
        {
          v51 = "Unknown";
        }

        log_OutPublic(v52[4], "DCTEG", 4418, "%s%s", "name", v51);
        v4 = v5 | 0x85002000;
        goto LABEL_90;
      }

      *a4 = v16;
      *(a4 + 8) = 753;
      goto LABEL_88;
    }
  }

LABEL_89:
  v4 = UDct;
LABEL_90:
  v48 = *(v16 + 56);
  if (v48 && a3[4])
  {
    log_OutEvent(v52[4], 13, "%s%s%s%s", "URI", v48, "FRST", "SUCCESS");
  }

  v49 = *(v16 + 48);
  if (v49)
  {
    brk_DataUnmap(v52[3], *(v16 + 96), v49);
  }

  v50 = *(v16 + 96);
  if (v50)
  {
    brk_DataClose(v52[3], v50);
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

  inited = safeh_HandleCheck(a3, a4, 753, 112);
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
  v7 = 0;
  if ((safeh_HandleCheck(a1, a2, 752, 80) & 0x80000000) != 0)
  {
    return 0;
  }

  Next = dctlist_GetNext(a1 + 24, &v7);
  if (!Next)
  {
    return *(a1 + 56) != 0;
  }

  v4 = Next;
  while (1)
  {
    v5 = *(v4 + 16);
    if ((!strcmp(v5, "application/edct-bin-dictionary") || !strcmp(v5, "application/cdct-bin-dictionary") || !strcmp(v5, "application/x-vocalizer-userdct-pointer")) && *(v4 + 40) == 1)
    {
      break;
    }

    v4 = dctlist_GetNext(a1 + 24, &v7);
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

  inited = safeh_HandleCheck(a3, a4, 753, 112);
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
  inited = safeh_HandleCheck(a3, a4, 753, 112);
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

uint64_t dcteg_Lookup_Utf8(void *a1, uint64_t a2, _BYTE *a3, const char *a4, const char *a5, _WORD *a6, const char *a7, _DWORD *a8, char *a9, char *a10, void *a11, int a12)
{
  v64 = *MEMORY[0x1E69E9840];
  v19 = 2231377920;
  v61 = 0;
  v62 = 0;
  NullHandle = safeh_GetNullHandle();
  if (a12 == 2)
  {
    v22 = 111;
  }

  else
  {
    v22 = 0;
  }

  if (a12 == 1)
  {
    v22 = 108;
  }

  if (!a1)
  {
    return 2231377928;
  }

  LODWORD(v56) = v21;
  v57 = NullHandle;
  v59 = a8;
  v58 = v22;
  v23 = *(a1[2] + 40);
  *__s1 = 0;
  __s[0] = 0;
  Str = paramc_ParamGetStr(v23, "langcode", __s1);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (!*__s1 || strlen(*__s1) != 3)
  {
    return 2231377920;
  }

  v54 = a7;
  __strcpy_chk();
  if ((objc_GetObject(*(a1[2] + 48), "CLMOBJECT", &v61) & 0x80000000) != 0)
  {
    v25 = 1;
  }

  else
  {
    v56 = v61[3];
    v57 = v61[2];
    v25 = v61[1] == 0;
  }

  v55 = v25;
  __s1[0] = 0;
  if (a4 && (v27 = strlen(a4)) != 0)
  {
    if (v27 + 1 > 0xC)
    {
      goto LABEL_78;
    }

    __strcpy_chk();
    if (strlen(__s1) >= 1)
    {
      v28 = 0;
      do
      {
        __s1[v28] = __tolower(__s1[v28]);
        ++v28;
      }

      while (strlen(__s1) > v28);
    }

    v29 = strstr(__s1, "normal");
    if (v29 || (v29 = strstr(__s1, "lid")) != 0)
    {
      strcpy(v29, __s);
    }
  }

  else
  {
    __strcpy_chk();
  }

  if (!a5)
  {
    v32 = 0;
LABEL_37:
    Next = dctlist_GetNext((a1 + 3), &v62);
    if (Next)
    {
      v37 = Next;
      while (1)
      {
        v38 = *(v37 + 16);
        if (strcmp(v38, "application/edct-bin-dictionary"))
        {
          if (strcmp(v38, "application/cdct-bin-dictionary") && strcmp(v38, "application/x-vocalizer-userdct-pointer"))
          {
            break;
          }
        }

        if (*(v37 + 40) == 1)
        {
          if (!strcmp(*(v37 + 32), "mode=langoverwriting"))
          {
            v39 = 0;
          }

          else
          {
            v39 = __s1;
          }

          UDctEntry = RetrieveUDctEntry(a1, v37, v39, v32, a3, v54, a6, a9, a10, v59);
          Str = UDctEntry;
          if (UDctEntry >= 0 && !v55)
          {
            v47 = safeh_GetNullHandle();
            v49 = a11;
            if (!safeh_HandlesEqual(v57, v56, v47, v48) && *v59 == 1)
            {
              v50 = "";
              if (a9)
              {
                v51 = a9;
              }

              else
              {
                v51 = "";
              }

              if (a10)
              {
                v52 = a10;
              }

              else
              {
                v52 = "";
              }

              if (*(v37 + 8))
              {
                v50 = *(v37 + 8);
              }

              log_OutText(*(a1[2] + 32), "DCTEG", 4, 0, "Validating transcription [%s] [LNG=%s LOO=%s] [%s]", v54, v51, v52, v50);
              Str = 0;
            }

            goto LABEL_68;
          }

          if ((UDctEntry & 0x80000000) == 0)
          {
            v49 = a11;
LABEL_68:
            if (v49)
            {
              *v49 = *(v37 + 56);
            }

            if (a12)
            {
              log_OutTraceTuningData(*(a1[2] + 32), v58, "%s%s %s%s %s%s %s%u", v41, v42, v43, v44, v45, "NAME");
            }

            goto LABEL_75;
          }

          if (a12)
          {
            log_OutTraceTuningData(*(a1[2] + 32), v58, "%s%s %s%s %s%u", v41, v42, v43, v44, v45, "NAME");
          }
        }

        v37 = dctlist_GetNext((a1 + 3), &v62);
        if (!v37)
        {
          goto LABEL_51;
        }
      }

      v53 = *(v37 + 8);
      if (!v53)
      {
        v53 = "Unknown";
      }

      log_OutPublic(*(a1[2] + 32), "DCTEG", 4413, "%s%s%s%s", "name", v53, "contentType", v38);
      Str = 2231377927;
    }

    else
    {
LABEL_51:
      v46 = a1[7];
      if (v46)
      {
        Str = v46(a1[8], a3, a6, v54);
      }

      else if (Str < 0)
      {
        Str = Str;
      }

      else
      {
        Str = 2231377940;
      }
    }

LABEL_75:
    if (v32)
    {
      heap_Free(*(a1[2] + 8), v32);
    }

    v19 = Str;
    goto LABEL_78;
  }

  v30 = strlen(a5);
  v31 = heap_Alloc(*(a1[2] + 8), (v30 + 1));
  if (v31)
  {
    v32 = v31;
    if (strlen(a5) < 1)
    {
      v35 = 0;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      do
      {
        utf8_ToLower(a5, v33, &v32[v34++]);
        v33 = v34;
      }

      while (v34 < strlen(a5));
      v35 = v34;
    }

    v32[v35] = 0;
    goto LABEL_37;
  }

  log_OutPublic(*(a1[2] + 32), "DCTEG", 4400, 0);
  v19 = 2231377930;
LABEL_78:
  if (!v55)
  {
    objc_ReleaseObject(*(a1[2] + 48), "CLMOBJECT");
  }

  return v19;
}

uint64_t dcteg_LookupMultiWordLengths(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, char *a5, unsigned __int16 *a6)
{
  v28[2] = *MEMORY[0x1E69E9840];
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
  if (!v13 || (v14 = *(v13 + 40)) == 0 || (paramc_ParamGetStr(v14, "disablemultiworddictionarywithoutescseqlookup", &__s1) & 0x80000000) != 0 || !__s1 || strcmp(__s1, "yes"))
  {
    *a5 = 0;
    Next = dctlist_GetNext(a1 + 24, v28);
    if (Next)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        while ((ssftmap_FindReadOnly(*(Next + 88), a3, &__s) & 0x80000000) == 0 && strlen(__s) + v16 < v7)
        {
          strcat(a5, __s);
          v16 += strlen(__s);
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
        v18 = strlen(a5);
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

uint64_t p_unloadDct(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v23);
  if ((inited & 0x80000000) == 0)
  {
    log_OutTraceTuningData(*(v23 + 32), 103, "%s%s %s%s", v4, v5, v6, v7, v8, "BEG");
    v10 = *(a2 + 88);
    if (!v10 || (inited = ssftmap_ObjClose(v10), (inited & 0x80000000) == 0))
    {
      v16 = *(a2 + 16);
      if (!v16)
      {
        inited = 2231377927;
        log_OutPublic(*(v23 + 32), "DCTEG", 4405, "%s%s");
        goto LABEL_13;
      }

      if (strcmp(*(a2 + 16), "application/edct-bin-dictionary") && strcmp(v16, "application/cdct-bin-dictionary") && strcmp(v16, "application/x-vocalizer-userdct-pointer"))
      {
        inited = 2231377927;
        log_OutPublic(*(v23 + 32), "DCTEG", 4404, "%s%s%s%s");
LABEL_13:
        v18 = *(a2 + 8);
        if (v18)
        {
          heap_Free(*(v23 + 8), v18);
        }

        v19 = *(a2 + 24);
        if (v19)
        {
          heap_Free(*(v23 + 8), v19);
        }

        v20 = *(a2 + 56);
        if (v20)
        {
          heap_Free(*(v23 + 8), v20);
        }

        v21 = *(a2 + 48);
        if (v21 && *(a2 + 44))
        {
          heap_Free(*(v23 + 8), v21);
        }

        heap_Free(*(v23 + 8), a2);
        goto LABEL_23;
      }

      v17 = *(a1 + 48);
      if (!v17)
      {
        goto LABEL_13;
      }

      inited = UnloadUDct(v17, a2);
      if ((inited & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_23:
    log_OutTraceTuningData(*(v23 + 32), 103, "%s%s %s%u", v11, v12, v13, v14, v15, "END");
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

  while (Next && strcmp(a2, *(Next + 8)));
  return v5;
}

uint64_t dcteg_hlp_InitializeMWDct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v56 = 0;
  v57 = 0;
  v4 = *(*(a2 + 16) + 8);
  *__s1 = xmmword_1F42D3EF0;
  v54 = *off_1F42D3F00;
  v55 = off_1F42D3F10;
  v5 = ssftmap_ObjOpen(v4, 0, __s1, (a3 + 88));
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  v6 = *(a3 + 72);
  if (v6)
  {
    Dictionary_FetchKeys(v6, &v57, &v56);
  }

  else
  {
    if (strstr(*(a3 + 16), "application/x-vocalizer-userdct-pointer"))
    {
      v36 = *(a3 + 48);
      if (v36)
      {
        __s1[0] = 0;
        v37 = (*(*v36 + 24))(v36 - *(*v36 + 48));
        if (v37)
        {
          v38 = (**v37)(v37 - *(*v37 + 64), 414531107, __s1);
          v5 = LH_ERROR_to_VERROR(v38);
          if ((v5 & 0x80000000) == 0 && __s1[0])
          {
            v39 = (*(*__s1[0] + 16))(&__s1[0][-*(*__s1[0] + 32)], &v57, &v56);
            v5 = LH_ERROR_to_VERROR(v39);
          }

          if ((v5 & 0x80000000) != 0)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_5;
      }
    }

    v50 = *(a3 + 80);
    if (!v50)
    {
      goto LABEL_5;
    }

    Keys = CDSObject_FetchKeys(v50, &v57, &v56);
  }

  v5 = LH_ERROR_to_VERROR(Keys);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_61:
    v23 = 0;
    goto LABEL_62;
  }

LABEL_5:
  if (!v56)
  {
    goto LABEL_61;
  }

  v8 = 0;
  v9 = 0;
  v51 = 0;
  while (1)
  {
    v10 = v57[v8];
    v11 = strlen(v10);
    v12 = v11;
    if (v11)
    {
      v13 = 0;
      v14 = 0;
      v15 = v11;
      do
      {
        if (v12 > v14)
        {
          v16 = v14;
          if (utf8_BelongsToSet(0, v10, v14, v12))
          {
            while (1)
            {
              NextUtf8Offset = utf8_GetNextUtf8Offset(v10, v14);
              v14 = NextUtf8Offset;
              if (v12 <= NextUtf8Offset)
              {
                break;
              }

              LOWORD(v16) = NextUtf8Offset;
              if (!utf8_BelongsToSet(0, v10, NextUtf8Offset, v12))
              {
                v16 = v16;
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_14:
            if (v12 > v14 && !utf8_BelongsToSet(0, v10, v14, v12))
            {
              do
              {
                v14 = utf8_GetNextUtf8Offset(v10, v14);
              }

              while (v12 > v14 && !utf8_BelongsToSet(0, v10, v14, v12));
              v16 = v14;
            }

            ++v13;
            v14 = v16;
          }
        }
      }

      while (v14 < v15);
      if (v13 >= 2)
      {
        break;
      }
    }

    v23 = v9;
LABEL_52:
    ++v8;
    v9 = v23;
    if (v8 >= v56)
    {
      goto LABEL_62;
    }
  }

  v18 = v57[v8];
  v19 = strlen(v18);
  if (v19)
  {
    v20 = 0;
    if (utf8_BelongsToSet(0, v18, 0, v19))
    {
      while (1)
      {
        v21 = utf8_GetNextUtf8Offset(v18, v20);
        v20 = v21;
        if (v19 <= v21)
        {
          break;
        }

        if (!utf8_BelongsToSet(0, v18, v21, v19))
        {
          goto LABEL_26;
        }
      }

      LOWORD(v22) = v21;
    }

    else
    {
LABEL_26:
      v22 = v20;
      do
      {
        if (utf8_BelongsToSet(0, v18, v22, v19))
        {
          break;
        }

        v22 = utf8_GetNextUtf8Offset(v18, v22);
      }

      while (v19 > v22);
    }
  }

  else
  {
    LOWORD(v20) = 0;
    LOWORD(v22) = 0;
  }

  v24 = (v22 - v20);
  if (v51 >= v24)
  {
    v23 = v9;
  }

  else
  {
    v23 = heap_Realloc(*(a1 + 8), v9, v24 + 1);
    v51 = (v22 - v20);
    if (!v23)
    {
      v5 = 2231377930;
      log_OutPublic(*(a1 + 32), "DCTEG", 4400, 0);
      v23 = v9;
      goto LABEL_62;
    }
  }

  for (i = 0; v19 > i; i = utf8_GetNextUtf8Offset(v18, i))
  {
    if (!utf8_BelongsToSet(0, v18, i, v19))
    {
      break;
    }
  }

  v26 = 0;
  if (v24)
  {
    v27 = 0;
    do
    {
      utf8_ToLower(v18, i, v23 + v26);
      i += utf8_determineUTF8CharLength(v18[i]);
      v27 += utf8_determineUTF8CharLength(*(v23 + v26));
      v26 = v27;
    }

    while (v24 > v27);
  }

  *(v23 + v26) = 0;
  v28 = *(a3 + 88);
  __s1[0] = 0;
  __s2 = 32;
  LH_itoa(v13, v59, 0xAu);
  __strcat_chk();
  if ((ssftmap_FindReadOnly(v28, v23, __s1) & 0x80000000) != 0)
  {
    v5 = ssftmap_Insert(v28, v23, &__s2);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_52;
  }

  v29 = __s1[0];
  if (strstr(__s1[0], &__s2))
  {
    v5 = 0;
    goto LABEL_52;
  }

  v30 = strlen(v29);
  v31 = strlen(&__s2);
  v32 = heap_Calloc(*(a1 + 8), v31 + v30, 1);
  if (!v32)
  {
    v5 = 2231377930;
    log_OutPublic(*(a1 + 32), "DCTEG", 4400, 0);
    goto LABEL_62;
  }

  v33 = v32;
  v34 = strcpy(v32, __s1[0]);
  strcat(v34, v59);
  v35 = ssftmap_Remove(v28, v23);
  if ((v35 & 0x80000000) == 0)
  {
    v35 = ssftmap_Insert(v28, v23, v33);
  }

  v5 = v35;
  heap_Free(*(a1 + 8), v33);
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

  while (1)
  {
LABEL_62:
    if (v23)
    {
      heap_Free(*(a1 + 8), v23);
    }

    v40 = *(a3 + 72);
    if (v40)
    {
      Dictionary_ReturnKeys(v40, v57);
      return v5;
    }

    if (!strstr(*(a3 + 16), "application/x-vocalizer-userdct-pointer") || (v41 = *(a3 + 48)) == 0 || v5)
    {
      v48 = *(a3 + 80);
      if (v48)
      {
        CDSObject_ReturnKeys(v48, v57);
      }

      return v5;
    }

    v42 = v57;
    __s1[0] = 0;
    v43 = (*(*v41 + 24))(v41 - *(*v41 + 48));
    if (!v43)
    {
      break;
    }

    v44 = (**v43)(v43 - *(*v43 + 64), 414531107, __s1);
    v45 = LH_ERROR_to_VERROR(v44);
    if ((v45 & 0x80000000) == 0 && __s1[0])
    {
      v46 = (*(*__s1[0] + 24))(&__s1[0][-*(*__s1[0] + 32)], v42);
      v45 = LH_ERROR_to_VERROR(v46);
    }

    v5 = 0;
    v47 = 0;
    if ((v45 & 0x80000000) == 0)
    {
      return v47;
    }
  }

  return 0;
}

uint64_t dctlist_ObjOpen(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  return 0;
}

uint64_t dctlist_ObjClose(uint64_t a1)
{
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    dctlist_Remove(a1, *(i + 8));
  }

  return 0;
}

uint64_t dctlist_Remove(uint64_t a1, uint64_t a2)
{
  result = 2231377940;
  v5 = *(a1 + 8);
  if (v5)
  {
    if (*(v5 + 8) == a2)
    {
      v8 = *(v5 + 16);
      *(a1 + 8) = v8;
      if (!v8)
      {
        *(a1 + 16) = 0;
      }

      heap_Free(*a1, v5);
      return 0;
    }

    else
    {
      while (1)
      {
        v6 = v5;
        v5 = *(v5 + 16);
        if (!v5)
        {
          break;
        }

        if (*(v5 + 8) == a2)
        {
          v7 = *(v5 + 16);
          heap_Free(*a1, v5);
          *(v6 + 16) = v7;
          if (v7)
          {
            return 0;
          }

          result = 0;
          *(a1 + 16) = v6;
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t dctlist_Add(uint64_t a1, uint64_t a2)
{
  v4 = heap_Calloc(*a1, 1, 24);
  if (v4)
  {
    *v4 = -1;
    *(v4 + 8) = a2;
    *(v4 + 16) = 0;
    v6 = (a1 + 8);
    v5 = *(a1 + 8);
    if (v5)
    {
      if (*v5 == -1)
      {
        *(v4 + 16) = v5;
        goto LABEL_10;
      }

      do
      {
        v7 = v5;
        v5 = *(v5 + 16);
      }

      while (v5);
      *(v7 + 16) = v4;
    }

    else
    {
      *(a1 + 8) = v4;
    }

    v6 = (a1 + 16);
LABEL_10:
    v8 = 0;
    *v6 = v4;
    return v8;
  }

  return 2231377930;
}

uint64_t dctlist_Move(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 2231377940;
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(a1 + 8);
    do
    {
      v10 = *(v9 + 8);
      v11 = *v9;
      if (v10 == a2)
      {
        v6 = v8;
        if (v11 == a3)
        {
          return 0;
        }
      }

      if (a3 != -1 && v11 == a3)
      {
        return 2231378969;
      }

      if (v11 <= a3 && v10 != a2)
      {
        v7 = v9;
      }

      if (v6 && v7)
      {
        break;
      }

      v8 = v9;
      v9 = *(v9 + 16);
    }

    while (v9);
    if (a3 == -1 && v7 && *(v7 + 16) != *(a1 + 16))
    {
      v7 = *(a1 + 16);
    }

    if (v6 == v7)
    {
      if (v6)
      {
        v4 = *(v6 + 16);
      }

      goto LABEL_34;
    }

    if (v6)
    {
      v13 = *(v6 + 16);
      v14 = *(v13 + 16);
      *(v6 + 16) = v14;
      v15 = v4;
      v4 = v13;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (*(v4 + 8) != a2)
      {
        return v3;
      }

      v15 = *(v4 + 16);
      *v5 = v15;
      if (v15)
      {
LABEL_28:
        if (v7)
        {
          *(v4 + 16) = *(v7 + 16);
          *(v7 + 16) = v4;
          if (*(v4 + 16))
          {
LABEL_34:
            v3 = 0;
            *v4 = a3;
            return v3;
          }

          v5 = (a1 + 16);
        }

        else
        {
          *(v4 + 16) = v15;
        }

        *v5 = v4;
        goto LABEL_34;
      }

      v6 = 0;
      v13 = v4;
    }

    *(a1 + 16) = v6;
    v4 = v13;
    goto LABEL_28;
  }

  return v3;
}

uint64_t dctlist_GetNext(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = *(*a2 + 16);
  }

  else
  {
    v2 = *(a1 + 8);
  }

  *a2 = v2;
  if (v2)
  {
    return *(v2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t OpenEDCTObj(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  inited = InitRsrcFunction(a1, a2, &v12);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v7 = heap_Calloc(*(v12 + 8), 1, 128);
  *a3 = v7;
  if (!v7)
  {
    v9 = 2231377930;
    v10 = 4400;
    goto LABEL_7;
  }

  *v7 = a1;
  v7[1] = a2;
  *(*a3 + 16) = heap_Alloc;
  *(*a3 + 24) = heap_Calloc;
  *(*a3 + 32) = heap_Realloc;
  *(*a3 + 40) = heap_Free;
  *(*a3 + 88) = dcteg_fread;
  *(*a3 + 96) = dcteg_fseek;
  *(*a3 + 112) = dcteg_ffinished;
  *(*a3 + 104) = dcteg_ferror;
  *(*a3 + 120) = 0;
  v8 = OOCAllocator_Con(*a3 + 48, (*a3 + 16), *(v12 + 8));
  v9 = LH_ERROR_to_VERROR(v8);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 4477;
LABEL_7:
    log_OutPublic(*(v12 + 32), "DCTEG", v10, 0);
  }

  return v9;
}

size_t dcteg_fread(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 68);
  if (a3 * a2 >= (*(a4 + 64) - v5))
  {
    v6 = (*(a4 + 64) - v5);
  }

  else
  {
    v6 = a3 * a2;
  }

  if (v6)
  {
    memcpy(a1, (*(a4 + 48) + v5), v6);
    *(a4 + 68) += v6;
  }

  return v6 / a2;
}