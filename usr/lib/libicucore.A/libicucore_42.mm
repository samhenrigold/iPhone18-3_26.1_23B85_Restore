uint64_t ucal_getIanaTimeZoneID(uint64_t a1, uint64_t a2, UChar *a3, uint64_t a4, icu::UnicodeString *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v19 = 0;
  v18 = 0u;
  v15 = &unk_1F0935D00;
  LOWORD(v16) = 2;
  icu::UnicodeString::UnicodeString(v14, a1, a2);
  icu::TimeZone::getIanaID(v14, &v15, a5, v8);
  icu::UnicodeString::~UnicodeString(v9, v14);
  v13 = a3;
  v10 = icu::UnicodeString::extract(&v15, &v13, a4, a5);
  v12 = v13;
  icu::UnicodeString::~UnicodeString(&v12, &v15);
  return v10;
}

uint64_t ucal_getType(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return (*(*a1 + 184))();
  }

  else
  {
    return 0;
  }
}

uint64_t ucal_getDayOfWeekType(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*a1 + 192))(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t ucal_getWeekendTransition(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*a1 + 200))(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t ucal_isWeekend(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return (*(*a1 + 208))();
  }

  else
  {
    return 0;
  }
}

uint64_t ucal_getFieldDifference(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*a1 + 88))(a1, a2);
  }

  else
  {
    return 0;
  }
}

_OWORD *ucal_getKeywordValuesForLocale(int a1, char *a2, int a3, UErrorCode *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  ulocimp_getRegionForSupplementalData(a2, a4, 1, v23);
  v6 = ures_openDirect(0, "supplementalData", a4);
  ures_getByKey(v6, "calendarPreferenceData", v6, a4);
  v7 = ures_getByKey(v6, v23[0], 0, a4);
  v8 = *a4;
  if (v6 && v8 == U_MISSING_RESOURCE_ERROR)
  {
    *a4 = U_ZERO_ERROR;
    v7 = ures_getByKey(v6, "001", 0, a4);
    v8 = *a4;
  }

  if (v8 > U_ZERO_ERROR)
  {
    goto LABEL_5;
  }

  EmptyList = ulist_createEmptyList(a4);
  if (*a4 <= 0)
  {
    if (ures_getSize(v7) >= 1)
    {
      v13 = 0;
      while (1)
      {
        length = 0;
        StringByIndex = ures_getStringByIndex(v7, v13, &length, a4);
        v15 = malloc_type_malloc(length + 1, 0x100004077774924uLL);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        u_UCharsToChars(StringByIndex, v15, length);
        v16[length] = 0;
        ulist_addItemEndList(EmptyList, v16, 1, a4);
        if (*a4 < 1)
        {
          v13 = (v13 + 1);
          if (v13 < ures_getSize(v7))
          {
            continue;
          }
        }

        goto LABEL_22;
      }

      *a4 = U_MEMORY_ALLOCATION_ERROR;
    }

LABEL_22:
    v17 = *a4;
    if (!a3 && v17 <= U_ZERO_ERROR)
    {
      for (i = 0; i != 27; ++i)
      {
        while (1)
        {
          v19 = off_1E74101C8[i];
          v20 = strlen(v19);
          if (ulist_containsString(EmptyList, v19, v20))
          {
            break;
          }

          ulist_addItemEndList(EmptyList, v19, 0, a4);
          v17 = *a4;
          ++i;
          if (*a4 > 0 || i == 27)
          {
            goto LABEL_33;
          }
        }
      }

      v17 = *a4;
    }

LABEL_33:
    if (v17 >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      ulist_deleteList(EmptyList);
LABEL_5:
      EmptyList = 0;
    }
  }

  ures_close(v7);
  ures_close(v6);
  v10 = 0;
  if (*a4 <= 0 && EmptyList)
  {
    v10 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
    if (v10)
    {
      ulist_resetList(EmptyList);
      v11 = *&off_1F0943E00;
      *v10 = xmmword_1F0943DF0;
      v10[1] = v11;
      v10[2] = xmmword_1F0943E10;
      *(v10 + 6) = off_1F0943E20;
      *(v10 + 1) = EmptyList;
    }

    else
    {
      *a4 = U_MEMORY_ALLOCATION_ERROR;
      ulist_deleteList(EmptyList);
    }
  }

  if (BYTE4(v23[1]))
  {
    free(v23[0]);
  }

  return v10;
}

uint64_t ucal_getTimeZoneTransitionDate(icu::Calendar *a1, unsigned int a2, double *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v19 = v7;
  v20 = v6;
  v21 = v4;
  v22 = v5;
  TimeInMillis = icu::Calendar::getTimeInMillis(a1, a4);
  TimeZone = icu::Calendar::getTimeZone(a1);
  if (result)
  {
    if (*a4 > 0)
    {
      return 0;
    }

    v15 = result;
    memset(v18, 0, sizeof(v18));
    icu::TimeZoneTransition::TimeZoneTransition(v18);
    v16 = (a2 & 0xFFFFFFFD) == 1;
    v17 = *v15;
    if (a2 > 1)
    {
      if ((*(v17 + 120))(v15, v16, v18, TimeInMillis))
      {
        goto LABEL_8;
      }
    }

    else if ((*(v17 + 112))(v15, v16, v18, TimeInMillis))
    {
LABEL_8:
      *a3 = icu::TimeZoneTransition::getTime(v18);
      icu::TimeZoneTransition::~TimeZoneTransition(v18);
      return 1;
    }

    icu::TimeZoneTransition::~TimeZoneTransition(v18);
    return 0;
  }

  return result;
}

uint64_t ucal_getWindowsTimeZoneID(uint64_t a1, uint64_t a2, UChar *a3, uint64_t a4, icu::UnicodeString *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v18 = 0u;
    v19 = 0u;
    v21 = 0;
    v20 = 0u;
    v17 = &unk_1F0935D00;
    LOWORD(v18) = 2;
    icu::UnicodeString::UnicodeString(v16, a1, a2);
    icu::TimeZone::getWindowsID(v16, &v17, a5, v9, v10);
    icu::UnicodeString::~UnicodeString(v11, v16);
    v12 = *a5;
    if (v12 > 0)
    {
LABEL_4:
      v5 = 0;
LABEL_10:
      icu::UnicodeString::~UnicodeString(v12, &v17);
      return v5;
    }

    v12 = v18;
    if ((v12 & 0x80000000) != 0)
    {
      v5 = DWORD1(v18);
      if (SDWORD1(v18) <= 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = v18;
      if (v18 < 0x20u)
      {
        goto LABEL_4;
      }

      v5 = v18 >> 5;
    }

    v15 = a3;
    icu::UnicodeString::extract(&v17, &v15, a4, a5);
    v14 = v15;
    v12 = &v14;
    goto LABEL_10;
  }

  return 0;
}

uint64_t ucal_getTimeZoneIDForWindowsID(uint64_t a1, uint64_t a2, const icu::UnicodeString *a3, UChar *a4, uint64_t a5, UErrorCode *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v19 = 0u;
    v20 = 0u;
    v22 = 0;
    v21 = 0u;
    *v18 = &unk_1F0935D00;
    LOWORD(v19) = 2;
    icu::UnicodeString::UnicodeString(v17, a1, a2);
    icu::TimeZone::getIDForWindowsID(v17, a3, v18, a6, v11);
    icu::UnicodeString::~UnicodeString(v12, v17);
    v13 = *a6;
    if (v13 > 0)
    {
LABEL_4:
      v6 = 0;
LABEL_10:
      icu::UnicodeString::~UnicodeString(v13, v18);
      return v6;
    }

    v13 = v19;
    if ((v13 & 0x80000000) != 0)
    {
      v6 = DWORD1(v19);
      if (SDWORD1(v19) <= 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = v19;
      if (v19 < 0x20u)
      {
        goto LABEL_4;
      }

      v6 = v19 >> 5;
    }

    v16 = a4;
    icu::UnicodeString::extract(v18, &v16, a5, a6);
    v15 = v16;
    v13 = &v15;
    goto LABEL_10;
  }

  return 0;
}

void ucal_getTimeZoneOffsetFromLocal(icu::Calendar *a1, int a2, int a3, int a4, int a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    TimeInMillis = icu::Calendar::getTimeInMillis(a1, a6);
    if (*a6 <= 0)
    {
      v9 = TimeInMillis;
      TimeZone = icu::Calendar::getTimeZone(a1);
      if (v11)
      {
        v13 = *(*v11 + 160);
        v12.n128_f64[0] = v9;

        v13(v12);
      }

      else
      {
        *a6 = U_ILLEGAL_ARGUMENT_ERROR;
      }
    }
  }
}

uint64_t sub_1953FFFA0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  v5 = v3 < v4;
  v6 = v3 > v4;
  if (v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6;
  }
}

uint64_t uacal_getDayPeriod(uint64_t a1, signed int a2, unsigned int a3, int a4, UErrorCode *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    return 10;
  }

  if (a2 > 0x17 || a3 >= 0x3C)
  {
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return 10;
  }

  __base = 0u;
  memset(v48, 0, sizeof(v48));
  v10 = ures_openDirect(0, "dayPeriods", a5);
  v11 = v10;
  if (*a5 <= 0)
  {
    if (a4)
    {
      v14 = "locales";
    }

    else
    {
      v14 = "locales_selection";
    }

    v15 = ures_getByKey(v10, v14, 0, a5);
    if (*a5 > 0)
    {
      v12 = 10;
LABEL_27:
      if (v15)
      {
        ures_close(v15);
      }

      goto LABEL_29;
    }

    v46 = 0;
    v45 = 0;
    if (!a1 || (LODWORD(v44) = 0, uloc_getLanguage(a1, &v45, 12, &v44), *a5 > 0) || *a5 == U_STRING_NOT_TERMINATED_WARNING || !v45)
    {
      strcpy(&v45, "en");
    }

    v16 = ures_getByKey(v15, &v45, 0, a5);
    if (*a5 >= 1 && (*a5 = U_ZERO_ERROR, v16 = ures_getByKey(v15, "en", v16, a5), *a5 > 0) || (v44 = 0, v43 = 8, ures_getUTF8String(v16, &v44, &v43, 1, a5), *a5 > 0) || (v17 = ures_getByKey(v11, "rules", v15, a5), v15 = v17, *a5 > 0) || (v18 = ures_getByKey(v17, &v44, v11, a5), v11 = v18, *a5 > 0))
    {
      v12 = 10;
      goto LABEL_25;
    }

    v19 = 0;
    v20 = 0;
    if (ures_hasNext(v18))
    {
      while (1)
      {
        NextResource = ures_getNextResource(v11, v15, a5);
        v15 = NextResource;
        if (*a5 > 0)
        {
          goto LABEL_65;
        }

        Key = ures_getKey(NextResource);
        v38 = sub_195400528(Key);
        if (ures_hasNext(v15))
        {
          v39 = 24;
          do
          {
            v23 = ures_getNextResource(v15, v20, a5);
            v20 = v23;
            if (*a5 > 0)
            {
              goto LABEL_65;
            }

            v24 = ures_getKey(v23);
            v42 = 0;
            v40 = 6;
            *v41 = 0;
            ures_getUTF8String(v20, v41, &v40, 1, a5);
            if (*a5 >= 1)
            {
              goto LABEL_65;
            }

            v25 = atoi(v41);
            if (!strcmp(v24, "before"))
            {
              v39 = v25;
            }

            else
            {
              if (!strcmp(v24, "from"))
              {
                v26 = 1;
                if (v25 > v39 && v19 <= 11)
                {
                  v27 = &v48[-1] + 12 * v19;
                  *v27 = 0x100000000;
                  *(v27 + 2) = v38;
                  ++v19;
                  v26 = 1;
                }
              }

              else
              {
                v26 = 0;
              }

              if (v19 <= 11)
              {
                v28 = &v48[-1] + 3 * v19;
                *v28 = v25;
                v28[1] = v26;
                v28[2] = v38;
                ++v19;
              }
            }
          }

          while (ures_hasNext(v15));
        }

        if (!ures_hasNext(v11))
        {
          if (v19 < 12)
          {
            break;
          }

          qsort(&__base, v19, 0xCuLL, sub_1953FFFA0);
          goto LABEL_50;
        }
      }
    }

    v29 = v19;
    v30 = &v48[-1] + 12 * v19;
    *v30 = 24;
    *(v30 + 2) = 10;
    qsort(&__base, ++v19, 0xCuLL, sub_1953FFFA0);
    if ((v29 & 0x80000000) == 0)
    {
LABEL_50:
      v31 = 0;
      v32 = &__base + 1;
      do
      {
        if (!v31 || (*(v32 - 2) & 0xFFFFFFFE) != 8)
        {
          *v32 = 0;
        }

        ++v31;
        v32 += 3;
      }

      while (v19 != v31);
      if (v19 >= 2)
      {
        v33 = 0;
        v34 = (v19 - 1);
        v35 = v48;
        while (1)
        {
          v36 = *(v35 - 1);
          if (v36 > a2 || v36 >= a2 && *v35 > a3)
          {
            break;
          }

          ++v33;
          v35 += 3;
          if (v34 == v33)
          {
            goto LABEL_64;
          }
        }

        LODWORD(v34) = v33;
LABEL_64:
        v37 = &v48[-1] + 3 * v34;
        if (*v37 <= a2 && (*v37 < a2 || v37[1] <= a3))
        {
          v12 = v37[2];
          if (!v20)
          {
LABEL_25:
            if (v16)
            {
              ures_close(v16);
            }

            goto LABEL_27;
          }

LABEL_66:
          ures_close(v20);
          goto LABEL_25;
        }

LABEL_65:
        v12 = 10;
        if (!v20)
        {
          goto LABEL_25;
        }

        goto LABEL_66;
      }
    }

    LODWORD(v34) = 0;
    goto LABEL_64;
  }

  v12 = 10;
LABEL_29:
  if (v11)
  {
    ures_close(v11);
  }

  return v12;
}

uint64_t sub_195400528(char *__s1)
{
  v2 = &dword_1E74102B0;
  v3 = -16;
  while (strcmp(__s1, *(v2 - 1)))
  {
    v2 += 4;
    v3 += 16;
    if (v3 > 0x8F)
    {
      return 10;
    }
  }

  return *v2;
}

void sub_195400588(unsigned int a1, uint64_t a2)
{
  umtx_lock(0);
  ucln_registerCleanup(7, sub_1954005F4);
  if (a1 <= 0x25)
  {
    qword_1ED4432B8[a1] = a2;
  }

  umtx_unlock(0);
}

uint64_t sub_1954005F4()
{
  for (i = 0; i != 38; ++i)
  {
    v1 = qword_1ED4432B8[i];
    if (v1)
    {
      v1();
      qword_1ED4432B8[i] = 0;
    }
  }

  return 1;
}

icu::RuleBasedCollator *ucol_openBinary(const icu::CollationTailoring *a1, const unsigned __int8 *a2, const void *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t ucol_cloneBinary(void *a1, unsigned __int8 *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (a1)
  {
    if (!a1)
    {
      *a4 = U_UNSUPPORTED_ERROR;
      return 0;
    }
  }

  return icu::RuleBasedCollator::cloneBinary(a1, a2, a3, a4);
}

uint64_t ucol_safeClone(uint64_t result, uint64_t a2, int *a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (*a4 > 0)
  {
    return 0;
  }

  if (!result)
  {
    v7 = 1;
LABEL_18:
    *a4 = v7;
    return result;
  }

  if (a3)
  {
    v6 = *a3;
    *a3 = 1;
    if (!v6)
    {
      return 0;
    }
  }

  result = (*(*result + 40))(result, a2);
  if (result)
  {
    v7 = -126;
  }

  else
  {
    v7 = 7;
  }

  if (result)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t ucol_clone(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 > 0)
  {
    return 0;
  }

  if (a1)
  {
    result = (*(*a1 + 40))(a1);
    if (result)
    {
      return result;
    }

    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  result = 0;
  *a2 = v4;
  return result;
}

uint64_t ucol_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ucol_mergeSortkeys(char *__s, int a2, char *a3, int a4, _BYTE *a5, int a6)
{
  if (!a2 || (v8 = __s) == 0 || (v9 = a2, a2 < -1))
  {
LABEL_14:
    result = 0;
    if (a5)
    {
      if (a6 >= 1)
      {
        result = 0;
        *a5 = 0;
      }
    }

    return result;
  }

  v10 = a4;
  v11 = a3;
  if (a2 < 1)
  {
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  else if (!a3 || __s[a2 - 1])
  {
    goto LABEL_14;
  }

  if (a4 < -1 || !a4)
  {
    goto LABEL_14;
  }

  if (a4 < 1)
  {
    if (a6 < 0)
    {
      return 0;
    }
  }

  else if (a6 < 0 || a3[a4 - 1])
  {
    goto LABEL_14;
  }

  if (!a5 && a6)
  {
    return 0;
  }

  if (a2 < 0)
  {
    v9 = strlen(__s) + 1;
  }

  if (v10 < 0)
  {
    v10 = strlen(v11) + 1;
  }

  result = (v10 + v9);
  if (result <= a6)
  {
    for (i = a5; ; i += 2)
    {
      v14 = *v8;
      if (v14 >= 2)
      {
        do
        {
          *i++ = v14;
          v15 = *++v8;
          LOBYTE(v14) = v15;
        }

        while (v15 > 1);
      }

      *i = 2;
      v16 = i + 1;
      v17 = *v11;
      if (v17 >= 2)
      {
        do
        {
          *v16++ = v17;
          v18 = *++v11;
          v17 = v18;
        }

        while (v18 > 1);
        i = v16 - 1;
      }

      if (!v17 || *v8 != 1)
      {
        break;
      }

      ++v8;
      ++v11;
      *v16 = 1;
    }

    if (*v8)
    {
      v20 = v8;
    }

    else
    {
      v20 = v11;
    }

    LODWORD(result) = v16 - a5;
    do
    {
      v21 = *v20++;
      *v16++ = v21;
      result = (result + 1);
    }

    while (v21);
  }

  return result;
}

uint64_t ucol_nextSortKeyPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (a6 && *a6 <= 0)
  {
    return (*(*a1 + 304))(a1, a2, a3, a4, a5);
  }

  else
  {
    return 0;
  }
}

uint64_t ucol_getBound(_BYTE *__src, int a2, int a3, int a4, void *__dst, int a6, int *a7)
{
  if (!a7)
  {
    return 0;
  }

  if (*a7 > 0)
  {
    return 0;
  }

  if (!__src)
  {
    goto LABEL_18;
  }

  v10 = 0;
  while (1)
  {
    v12 = v10++;
    a4 -= __src[v12 + 1] == 1;
    if (!a4)
    {
      break;
    }

    if (__src[v12 + 1])
    {
      v13 = 1;
    }

    else
    {
      v13 = v10 < a2;
    }

    if (!v13)
    {
      *a7 = -123;
      break;
    }
  }

  if (!__dst || a3 + v12 + 1 > a6)
  {
    return (a3 + v12 + 2);
  }

  memcpy(__dst, __src, v10);
  if (a3 == 2)
  {
    *(__dst + v12 + 1) = -1;
    LODWORD(v10) = v12 + 3;
    *(__dst + v12 + 2) = -1;
  }

  else if (a3 == 1)
  {
    LODWORD(v10) = v12 + 2;
    *(__dst + v12 + 1) = 2;
  }

  else if (a3)
  {
LABEL_18:
    result = 0;
    *a7 = 1;
    return result;
  }

  result = (v10 + 1);
  *(__dst + v10) = 0;
  return result;
}

uint64_t ucol_setMaxVariable(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*result + 200))(result, a2);
  }

  return result;
}

uint64_t ucol_setVariableTop(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (a1 && *a4 <= 0)
  {
    return (*(*a1 + 216))(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t ucol_getVariableTop(uint64_t a1, int *a2)
{
  if (a1 && *a2 <= 0)
  {
    return (*(*a1 + 240))();
  }

  else
  {
    return 0;
  }
}

uint64_t ucol_restoreVariableTop(uint64_t result, uint64_t a2, int *a3)
{
  if (result)
  {
    if (*a3 <= 0)
    {
      return (*(*result + 232))(result, a2);
    }
  }

  return result;
}

uint64_t ucol_setAttribute(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (result)
  {
    if (*a4 <= 0)
    {
      return (*(*result + 184))(result, a2, a3);
    }
  }

  return result;
}

uint64_t ucol_getAttribute(uint64_t a1, uint64_t a2, int *a3)
{
  if (a1 && *a3 <= 0)
  {
    return (*(*a1 + 192))(a1, a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ucol_setStrength(uint64_t result, uint64_t a2)
{
  v2 = 0;
  if (result)
  {
    return (*(*result + 184))(result, 5, a2, &v2);
  }

  return result;
}

uint64_t ucol_getStrength(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    return (*(*a1 + 192))(a1, 5, &v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ucol_getReorderCodes(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    return (*(*a1 + 160))(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t ucol_setReorderCodes(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    return (*(*result + 168))(result, a2, a3);
  }

  return result;
}

uint64_t ucol_strcollIter(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (a4 && *a4 <= 0)
  {
    if (a1 && a2 && a3)
    {
      return (*(*a1 + 96))();
    }

    *a4 = 1;
  }

  return 0;
}

uint64_t ucol_strcollUTF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (*a6 <= 0)
  {
    return (*(*a1 + 296))(a1, a2, a3, a4, a5);
  }

  else
  {
    return 0;
  }
}

uint64_t ucol_getUCAVersion(uint64_t result, _BYTE *a2)
{
  if (result)
  {
    v4 = 0;
    result = (*(*result + 176))(result, &v4);
    v3 = BYTE1(v4);
    *a2 = BYTE1(v4) >> 3;
    a2[1] = v3 & 7;
    a2[2] = BYTE2(v4) >> 6;
    a2[3] = 0;
  }

  return result;
}

void *ucol_getRules(icu::RuleBasedCollator *a1, unsigned int *a2)
{
  {
    *a2 = 0;
    return &unk_1954939E8;
  }

  else
  {
    Rules = icu::RuleBasedCollator::getRules(a1);
    v4 = *(Rules + 8);
    v5 = v4;
    v6 = v4 >> 5;
    if (v5 < 0)
    {
      v6 = *(Rules + 12);
    }

    *a2 = v6;
    v7 = *(Rules + 8);
    if ((v7 & 0x11) != 0)
    {
      return 0;
    }

    else if ((v7 & 2) != 0)
    {
      return (Rules + 10);
    }

    else
    {
      return *(Rules + 24);
    }
  }
}

uint64_t ucol_getRulesEx(void *a1, int a2, UChar *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v17 = 0;
  v16 = 0u;
  v13 = &unk_1F0935D00;
  LOWORD(v14) = 2;
  {
    icu::RuleBasedCollator::getRules(a1, a2, &v13);
  }

  if (a3 && a4 >= 1)
  {
    v12 = 0;
    v11 = a3;
    v7 = icu::UnicodeString::extract(&v13, &v11, a4, &v12);
    v10 = v11;
    v8 = &v10;
  }

  else
  {
    v8 = v14;
    if ((v8 & 0x80000000) != 0)
    {
      v7 = DWORD1(v14);
    }

    else
    {
      v8 = v14;
      v7 = v14 >> 5;
    }
  }

  icu::UnicodeString::~UnicodeString(v8, &v13);
  return v7;
}

const char *ucol_getLocaleByType(void *a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a1)
  {
    if (!a1)
    {
      *a3 = 16;
      return 0;
    }
  }

  return icu::RuleBasedCollator::internalGetLocaleID(a1, a2, a3);
}

icu::UnicodeSet *ucol_getTailoredSet(uint64_t a1, unsigned int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  result = (*(*a1 + 248))(a1);
  v4 = *a2;
  if (v4 >= 1)
  {
    if (result)
    {
      v5 = icu::UnicodeSet::~UnicodeSet(v4, result);
      MEMORY[0x19A8B2600](v5, 0x10B1C403432821BLL);
      return 0;
    }
  }

  return result;
}

uint64_t ucol_equals(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return (*(*a1 + 24))(a1);
  }
}

void sub_1954014FC(UErrorCode *a1)
{
  if (*a1 <= 0)
  {
    v2 = ures_open("icudt76l-coll", "root", a1);
    qword_1EAECA488 = v2;
    if (*a1 <= 0)
    {
      qword_1EAECA498 = ures_getStringByKey(v2, "UCARules", &dword_1EAECA490, a1);
      if (*a1 < 1)
      {

        sub_195400588(0x1Eu, sub_1954015BC);
      }

      else
      {
        ures_close(qword_1EAECA488);
        qword_1EAECA488 = 0;
      }
    }
  }
}

uint64_t sub_1954015BC()
{
  qword_1EAECA498 = 0;
  dword_1EAECA490 = 0;
  ures_close(qword_1EAECA488);
  qword_1EAECA488 = 0;
  atomic_store(0, &dword_1EAECA4A0);
  return 1;
}

void sub_195401608(uint64_t a1)
{
  v3 = 0;
  if (atomic_load_explicit(&dword_1EAECA4A0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAECA4A0))
  {
    sub_1954014FC(&v3);
    dword_1EAECA4A4 = v3;
    icu::umtx_initImplPostInit(&dword_1EAECA4A0);
    if (v3 > 0)
    {
      return;
    }

    goto LABEL_10;
  }

  if (dword_1EAECA4A4 <= 0 && v3 <= 0)
  {
LABEL_10:
    icu::UnicodeString::doAppend(a1, qword_1EAECA498, 0, dword_1EAECA490);
  }
}

void sub_1954016C4(char *result, char *__s, uint64_t a3, UErrorCode *a4)
{
  __dst[2] = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v8 = strlen(__s);
    if (v8 < 16)
    {
      memcpy(__dst, __s, v8 + 1);
      T_CString_toLowerCase(__dst);
      v9 = ures_open("icudt76l-coll", result, a4);
      v10 = ures_getByKey(v9, "collations", 0, a4);
      v11 = ures_getByKeyWithFallback(v10, __dst, 0, a4);
      v19 = 0;
      StringByKey = ures_getStringByKey(v11, "Sequence", &v19, a4);
      if (*a4 <= 0)
      {
        v13 = StringByKey;
        v14 = v19;
        icu::UnicodeString::unBogus(a3);
        v15 = *(a3 + 8);
        v16 = v15;
        v17 = v15 >> 5;
        v18 = v16 >= 0 ? v17 : *(a3 + 12);
        icu::UnicodeString::doReplace(a3, 0, v18, v13, 0, v14);
        if (*(a3 + 8))
        {
          *a4 = U_MEMORY_ALLOCATION_ERROR;
        }
      }

      if (v11)
      {
        ures_close(v11);
      }

      if (v10)
      {
        ures_close(v10);
      }

      if (v9)
      {
        ures_close(v9);
      }
    }

    else
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }
}

icu::SharedObject *sub_19540186C(uint64_t a1, int *a2)
{
  if (!*(a1 + 504))
  {
    return sub_195401C5C(a1, a2);
  }

  if (!*(a1 + 512))
  {
    return sub_195401DF8(a1, a2);
  }

  if (*(a1 + 520))
  {
    return sub_19540230C(a1, a2);
  }

  return sub_195402004(a1, a2);
}

UErrorCode *sub_195401894(uint64_t a1, icu::CollationRoot *this)
{
  v8[66] = *MEMORY[0x1E69E9840];
  RootCacheEntry = icu::CollationRoot::getRootCacheEntry(this, this);
  if (*this > 0)
  {
    return 0;
  }

  v5 = RootCacheEntry;
  v6 = *(a1 + 40);
  if (!*v6 || !strcmp(v6, "root"))
  {
    icu::SharedObject::addRef(v5);
  }

  else
  {
    *this = 0;
    bzero(v8, 0x210uLL);
    sub_195401A80(v8, v5, a1, this);
    v5 = sub_19540197C(v8, this);
    sub_195401C10(v8);
  }

  return v5;
}

icu::SharedObject *sub_19540197C(icu::SharedObject ***a1, UErrorCode *a2)
{
  v8[30] = *MEMORY[0x1E69E9840];
  memset(&v8[1], 0, 232);
  v8[0] = &unk_1F0943EB8;
  icu::Locale::Locale(&v8[2], (a1 + 30));
  v7 = 0;
  sub_1952C1AD0(*a1, v8, a1, &v7, a2);
  v4 = v7;
  v8[0] = &unk_1F0943EB8;
  icu::Locale::~Locale(v5, &v8[2]);
  icu::CacheKeyBase::~CacheKeyBase(v8);
  return v4;
}

uint64_t sub_195401A80(uint64_t a1, UErrorCode *a2, char **a3, UErrorCode *this)
{
  v14 = *MEMORY[0x1E69E9840];
  *a1 = icu::UnifiedCache::getInstance(this, a2);
  *(a1 + 8) = a2;
  icu::Locale::Locale((a1 + 16), (a2 + 6));
  icu::Locale::Locale((a1 + 240), a3);
  *(a1 + 496) = 0;
  *(a1 + 500) = 0;
  *(a1 + 464) = 0;
  *(a1 + 480) = 0;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  if (*this <= 0)
  {
    if (*(a1 + 456))
    {
      goto LABEL_3;
    }

    BaseName = icu::Locale::getBaseName((a1 + 240));
    if (!strcmp(*(a1 + 280), BaseName))
    {
      return a1;
    }

    icu::Locale::Locale(v13, BaseName, 0, 0, 0);
    icu::Locale::operator=(a1 + 240, v13);
    icu::Locale::~Locale(v10, v13);
    if (*(a1 + 456) || (v11 = (a1 + 464), KeywordValue = icu::Locale::getKeywordValue(a3, "collation", (a1 + 464), 15, this), *this >= 1))
    {
LABEL_3:
      *this = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v11[KeywordValue] = 0;
      if (KeywordValue)
      {
        if (uprv_stricmp((a1 + 464), "default"))
        {
          T_CString_toLowerCase((a1 + 464));
          sub_1951DE32C(a1 + 240, "collation", (a1 + 464), this);
        }

        else
        {
          *v11 = 0;
        }
      }
    }
  }

  return a1;
}

void **sub_195401C10(void **a1)
{
  ures_close(a1[65]);
  ures_close(a1[64]);
  ures_close(a1[63]);
  icu::Locale::~Locale(v2, (a1 + 30));
  icu::Locale::~Locale(v3, (a1 + 2));
  return a1;
}

icu::SharedObject *sub_195401C5C(uint64_t a1, UErrorCode *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    return 0;
  }

  BaseName = icu::Locale::getBaseName((a1 + 240));
  *(a1 + 504) = ures_openNoDefault("icudt76l-coll", BaseName, a2);
  if (*a2 == U_MISSING_RESOURCE_ERROR)
  {
    *a2 = U_USING_DEFAULT_WARNING;
    icu::SharedObject::addRef(*(a1 + 8));
    return *(a1 + 8);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    icu::Locale::Locale(v13, a1 + 240);
    LocaleByType = ures_getLocaleByType(*(a1 + 504), 0, a2);
    v7 = *a2;
    if (v7 <= 0)
    {
      icu::Locale::Locale(v12, LocaleByType, 0, 0, 0);
      v8 = icu::Locale::operator=(a1 + 16, v12);
      icu::Locale::operator=((a1 + 240), v8);
      icu::Locale::~Locale(v9, v12);
      if (*(a1 + 464))
      {
        sub_1951DE32C(a1 + 240, "collation", (a1 + 464), a2);
      }

      if (icu::Locale::operator==(a1 + 240, v13))
      {
        v10 = sub_195401DF8(a1, a2);
      }

      else
      {
        v10 = sub_19540197C(a1, a2);
      }

      v2 = v10;
    }

    else
    {
      v2 = 0;
    }

    icu::Locale::~Locale(v7, v13);
  }

  return v2;
}

icu::SharedObject *sub_195401DF8(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = ures_getByKey(*(a1 + 504), "collations", 0, a2);
  *(a1 + 512) = v5;
  if (*a2 == 2)
  {
    *a2 = -127;

    return sub_1954026A4(a1, v6, a2);
  }

  else
  {
    if (*a2 > 0)
    {
      return 0;
    }

    v12 = 0;
    v7 = ures_getByKeyWithFallback(v5, "default", 0, &v12);
    v11 = 0;
    String = ures_getString(v7, &v11, &v12);
    if (v12 > 0 || (v11 - 1) > 0xE)
    {
      strcpy((a1 + 480), "standard");
    }

    else
    {
      u_UCharsToChars(String, (a1 + 480), v11 + 1);
    }

    if (v7)
    {
      ures_close(v7);
    }

    if (*(a1 + 464))
    {
      if (!strcmp((a1 + 464), (a1 + 480)))
      {
        *(a1 + 496) |= 2u;
      }

      if (!strcmp((a1 + 464), "search"))
      {
        *(a1 + 496) |= 1u;
      }

      if (!strcmp((a1 + 464), "standard"))
      {
        *(a1 + 496) |= 4u;
      }

      return sub_195402004(a1, a2);
    }

    else
    {
      strcpy((a1 + 464), (a1 + 480));
      v9 = *(a1 + 496);
      v10 = v9 | 2;
      *(a1 + 496) = v9 | 2;
      if (!strcmp((a1 + 464), "search"))
      {
        v10 = v9 | 3;
        *(a1 + 496) = v9 | 3;
      }

      if (!strcmp((a1 + 464), "standard"))
      {
        *(a1 + 496) = v10 | 4;
      }

      sub_1951DE32C(a1 + 240, "collation", (a1 + 464), a2);
      return sub_19540197C(a1, a2);
    }
  }
}

void *sub_195402004(uint64_t a1, UErrorCode *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = ures_getByKeyWithFallback(*(a1 + 512), (a1 + 464), 0, a2);
  v6 = v5;
  if (*a2 == U_MISSING_RESOURCE_ERROR)
  {
    v7 = strlen((a1 + 464));
    *a2 = U_USING_DEFAULT_WARNING;
    *(a1 + 500) = 1;
    v9 = *(a1 + 496);
    if ((v9 & 1) == 0 && v7 >= 7 && !strncmp((a1 + 464), "search", 6uLL))
    {
      *(a1 + 496) = v9 | 1;
      *(a1 + 470) = 0;
    }

    else if ((v9 & 2) != 0)
    {
      if ((v9 & 4) != 0)
      {
        v19 = sub_1954026A4(a1, v8, a2);
        goto LABEL_25;
      }

      *(a1 + 496) = v9 | 4;
      strcpy((a1 + 464), "standard");
    }

    else
    {
      *(a1 + 496) = v9 | 2;
      strcpy((a1 + 464), (a1 + 480));
    }

    sub_1951DE32C(a1 + 240, "collation", (a1 + 464), a2);
    v19 = sub_19540197C(a1, a2);
LABEL_25:
    v2 = v19;
    if (!v6)
    {
      return v2;
    }

LABEL_26:
    ures_close(v6);
    return v2;
  }

  if (*a2 > 0)
  {
    v2 = 0;
    if (!v5)
    {
      return v2;
    }

    goto LABEL_26;
  }

  *(a1 + 520) = v5;
  LocaleByType = ures_getLocaleByType(v5, 0, a2);
  if (*a2 > 0)
  {
    return 0;
  }

  v11 = LocaleByType;
  BaseName = icu::Locale::getBaseName((a1 + 16));
  icu::Locale::Locale(v23, v11, 0, 0, 0);
  icu::Locale::Locale(v22, BaseName, 0, 0, 0);
  v13 = icu::Locale::operator==(v23, v22);
  icu::Locale::~Locale(v14, v22);
  icu::Locale::~Locale(v15, v23);
  if (strcmp((a1 + 464), (a1 + 480)))
  {
    sub_1951DE32C(a1 + 16, "collation", (a1 + 464), a2);
    if (*a2 > 0)
    {
      return 0;
    }
  }

  if ((!*v11 || !strcmp(v11, "root")) && !strcmp((a1 + 464), "standard"))
  {
    if (*(a1 + 500))
    {
      *a2 = U_USING_DEFAULT_WARNING;
    }

    return sub_1954026A4(a1, v16, a2);
  }

  else
  {
    icu::Locale::Locale(v23, v11, 0, 0, 0);
    icu::Locale::operator=(a1 + 240, v23);
    icu::Locale::~Locale(v17, v23);
    if (v13)
    {
      return sub_19540230C(a1, a2);
    }

    else
    {
      sub_1951DE32C(a1 + 240, "collation", (a1 + 464), a2);
      v21 = sub_19540197C(a1, a2);
      return sub_195402700(a1 + 16, v21, a2);
    }
  }
}

void *sub_19540230C(uint64_t a1, int *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

void *sub_1954026A4(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  icu::SharedObject::addRef(*(a1 + 8));
  v7 = *(a1 + 8);

  return sub_195402700(a1 + 16, v7, a3);
}

void *sub_195402700(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0 && !icu::Locale::operator==(a1, a2 + 24))
  {
    operator new();
  }

  return a2;
}

void sub_195402780(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F0943EB8;
  icu::Locale::~Locale(a2, (a1 + 16));

  icu::CacheKeyBase::~CacheKeyBase(a1);
}

icu::RuleBasedCollator *ucol_open(char *a1, const icu::Locale *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  icu::Locale::Locale(v7, a1, 0, 0, 0);
  Instance = icu::Collator::createInstance(v7, a2, v3);
  icu::Locale::~Locale(v5, v7);
  if (*a2 <= 0)
  {
    return Instance;
  }

  else
  {
    return 0;
  }
}

uint64_t ucol_getDisplayName(char *a1, const char *a2, char *a3, uint64_t a4, int *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = 0u;
  v23 = 0;
  v22 = 0u;
  v21 = 0u;
  v19 = &unk_1F0935D00;
  LOWORD(v20) = 2;
  if (a3 || a4)
  {
    icu::UnicodeString::setTo(&v19, a3, 0, a4);
  }

  icu::Locale::Locale(v18, a1, 0, 0, 0);
  icu::Locale::Locale(v17, a2, 0, 0, 0);
  icu::Collator::getDisplayName(v18, v17, &v19, v11);
  icu::Locale::~Locale(v12, v17);
  icu::Locale::~Locale(v13, v18);
  v16 = a3;
  v5 = icu::UnicodeString::extract(&v19, &v16, a4, a5);
  v15 = v16;
  icu::UnicodeString::~UnicodeString(&v15, &v19);
  return v5;
}

uint64_t ucol_getAvailable(int a1, int *a2)
{
  v5 = 0;
  AvailableLocales = icu::Collator::getAvailableLocales(&v5, a2);
  result = 0;
  if (AvailableLocales)
  {
    if (v5 > a1)
    {
      return *(AvailableLocales + 224 * a1 + 40);
    }
  }

  return result;
}

uint64_t ucol_countAvailable(uint64_t a1, int *a2)
{
  v3 = 0;
  icu::Collator::getAvailableLocales(&v3, a2);
  return v3;
}

_OWORD *ucol_getKeywords(int *a1)
{
  if (*a1 <= 0)
  {
    return uenum_openCharStringsEnumeration(&off_1E7410348, 1, a1);
  }

  else
  {
    return 0;
  }
}

void *ucol_getKeywordValues(const char *a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (!a1 || strcmp(a1, "collation"))
  {
    *a2 = 1;
    return 0;
  }

  return ures_getKeywordValues("icudt76l-coll");
}

_OWORD *ucol_getKeywordValuesForLocale(uint64_t a1, char *a2, uint64_t a3, UErrorCode *a4)
{
  v5 = ures_open("icudt76l-coll", a2, a4);
  v12 = 0;
  v10 = &unk_1F0943E70;
  EmptyList = ulist_createEmptyList(a4);
  ures_getAllItemsWithFallback(v5, "collations", &v10, a4);
  v6 = 0;
  if (*a4 <= 0)
  {
    v7 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
    v6 = v7;
    if (v7)
    {
      v8 = *&off_1F0943E38;
      *v7 = xmmword_1F0943E28;
      v7[1] = v8;
      v7[2] = xmmword_1F0943E48;
      *(v7 + 6) = off_1F0943E58;
      ulist_resetList(EmptyList);
      *(v6 + 1) = EmptyList;
      EmptyList = 0;
    }

    else
    {
      *a4 = U_MEMORY_ALLOCATION_ERROR;
    }
  }

  v10 = &unk_1F0943E70;
  ulist_deleteList(EmptyList);
  icu::ResourceSink::~ResourceSink(&v10);
  if (v5)
  {
    ures_close(v5);
  }

  return v6;
}

void sub_195402C20(icu::ResourceSink *a1)
{
  *a1 = &unk_1F0943E70;
  ulist_deleteList(*(a1 + 1));

  icu::ResourceSink::~ResourceSink(a1);
}

uint64_t ucol_isCompressibleLeadByte(unsigned int a1, icu::CollationRoot *this)
{
  Data = icu::CollationRoot::getData(this, this);
  if (*this <= 0)
  {
    return *(*(Data + 72) + a1);
  }

  else
  {
    return 0;
  }
}

void sub_195402D0C(icu::ResourceSink *a1)
{
  *a1 = &unk_1F0943E70;
  ulist_deleteList(*(a1 + 1));
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195402D78(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  __s1 = a2;
  if (*a5 > 0)
  {
    return;
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  (*(*a3 + 88))(v16, a3, a5);
  if (!icu::ResourceTable::getKeyAndValue(v16, 0, &__s1, a3))
  {
    return;
  }

  v8 = 1;
  while (1)
  {
    v9 = (*(*a3 + 24))(a3);
    if (v9 == 2)
    {
      v13 = __s1;
      if (strncmp(__s1, "private-", 8uLL))
      {
        v14 = strlen(v13);
        if (!ulist_containsString(*(a1 + 8), v13, v14))
        {
          ulist_addItemEndList(*(a1 + 8), __s1, 0, a5);
        }
      }

      goto LABEL_18;
    }

    if (!v9 && !*(a1 + 16) && !strcmp(__s1, "default"))
    {
      break;
    }

LABEL_18:
    if (*a5 < 1)
    {
      if (icu::ResourceTable::getKeyAndValue(v16, v8++, &__s1, a3))
      {
        continue;
      }
    }

    return;
  }

  v24 = 0;
  memset(&v22[1], 0, 48);
  v22[0] = &v22[1] + 5;
  LODWORD(v22[1]) = 40;
  v23 = 0;
  v20 = 0;
  v19 = (*(*a3 + 32))(a3, &v20, a5);
  icu::UnicodeString::UnicodeString(v21, 1, &v19, v20);
  icu::CharString::appendInvariantChars(v22, v21, a5);
  icu::UnicodeString::~UnicodeString(v10, v21);
  if (*a5 > 0 || !v23)
  {
LABEL_13:
    if (BYTE4(v22[1]))
    {
      free(v22[0]);
    }

    goto LABEL_18;
  }

  v11 = uprv_strdup(v22[0]);
  if (v11)
  {
    v12 = v11;
    ulist_removeString(*(a1 + 8), v22[0]);
    ulist_addItemBeginList(*(a1 + 8), v12, 1, a5);
    *(a1 + 16) = 1;
    goto LABEL_13;
  }

  *a5 = 7;
  if (BYTE4(v22[1]))
  {
    free(v22[0]);
  }
}

void sub_195403048(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F0943EB8;
  icu::Locale::~Locale(a2, (a1 + 16));
  icu::CacheKeyBase::~CacheKeyBase(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1954030B0(uint64_t a1)
{
  v2 = strlen((off_1F0938648 & 0x7FFFFFFFFFFFFFFFLL));
  v3 = ustr_hashCharsN((off_1F0938648 & 0x7FFFFFFFFFFFFFFFLL), v2);
  return icu::Locale::hashCode((a1 + 16)) + 37 * v3;
}

char *sub_19540317C(uint64_t a1, char *__dst, int a3)
{
  result = strncpy(__dst, *(a1 + 56), a3);
  __dst[a3 - 1] = 0;
  return result;
}

BOOL sub_1954031B8(void *a1, void *a2)
{
  result = sub_1952C1D2C(a1, a2);
  if (result)
  {

    return icu::Locale::operator==((a1 + 2), (a2 + 2));
  }

  return result;
}

void ucol_prepareShortStringOpen(const char *a1, uint64_t a2, char *a3, UErrorCode *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    return;
  }

  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = &v21;
  }

  *v6 = 0;
  *(v6 + 4) = 0;
  *(v6 + 20) = 0;
  bzero(v27, 0x670uLL);
  for (i = 0; i != 384; i += 64)
  {
    v8 = &v27[i];
    *v8 = &v27[i + 13];
    *(v8 + 2) = 40;
    *(v8 + 6) = 0;
    *(v8 + 14) = 0;
  }

  v9 = 0;
  v28 = &v30 + 1;
  v29 = 40;
  v30 = 0;
  v31 = 0;
  v37 = 0;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  do
  {
    v10 = &v27[v9];
    *(v10 + 70) = &v38[v9];
    *(v10 + 142) = 40;
    *(v10 + 286) = 0;
    *(v10 + 154) = 0;
    v9 += 64;
  }

  while (v9 != 1088);
  *&v11 = -1;
  *(&v11 + 1) = -1;
  v32 = v11;
  v33 = v11;
  sub_1954034DC(v27, a1, v6, a4);
  sub_195403650(v27, a4);
  memset(v26, 0, 64);
  ulocimp_canonicalize(v26, v28, a4);
  v12 = ures_open("icudt76l-coll", v26[0], a4);
  v13 = ures_getByKey(v12, "collations", 0, a4);
  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  v23 = 0u;
  ulocimp_getKeywordValue(v26[0], "collation", 9, a4, v22);
  if (!DWORD2(v25))
  {
    v15 = ures_getByKeyWithFallback(v13, "default", 0, a4);
    if (*a4 >= 1)
    {
      *a4 = U_INTERNAL_PROGRAM_ERROR;
      goto LABEL_13;
    }

    v18 = v15;
    v20 = 0;
    String = ures_getString(v15, &v20, a4);
    icu::CharString::appendInvariantChars(v22, String, v20, a4);
    ures_close(v18);
  }

  v14 = ures_getByKeyWithFallback(v13, v22[0], 0, a4);
  ures_close(v14);
  ures_close(v13);
  ures_close(v12);
LABEL_13:
  if (BYTE4(v22[1]))
  {
    free(v22[0]);
  }

  if (BYTE4(v26[1]))
  {
    free(v26[0]);
  }

  v16 = 68;
  do
  {
    if (BYTE12(v35[v16]))
    {
      free(*&v35[v16]);
    }

    v16 -= 4;
  }

  while (v16 * 16);
  if (v30)
  {
    free(v28);
  }

  v17 = 48;
  do
  {
    if (BYTE4(v26[v17 + 2]))
    {
      free(v26[v17 + 1]);
    }

    v17 -= 8;
  }

  while (v17 * 8);
}

const char *sub_1954034DC(uint64_t a1, const char *a2, uint64_t a3, UErrorCode *a4)
{
  v4 = a2;
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (*a4 > 0)
  {
LABEL_14:
    *(a3 + 4) = v5 - v4;
  }

  else
  {
    v8 = *a2;
    v5 = a2;
    while (v8)
    {
      v9 = -560;
      v10 = &dword_1F0943F38;
      while (v8 != *(v10 - 16))
      {
        v9 -= 64;
        v10 += 6;
        if (v9 == -1648)
        {
          *a4 = U_ILLEGAL_ARGUMENT_ERROR;
          goto LABEL_11;
        }
      }

      v11 = (*(v10 - 1))(a1, *v10, v5 + 1, a4);
      v15 = &v17 + 1;
      v16 = 40;
      v17 = 0;
      v18 = 0;
      icu::CharString::append(&v15, v5, v11 - v5, a4);
      icu::CharString::copyFrom((a1 - v9), &v15, a4);
      if (v17)
      {
        free(v15);
      }

      v5 = v11;
LABEL_11:
      --v5;
      do
      {
        v12 = *++v5;
        v8 = v12;
      }

      while (v12 == 95);
      if (*a4 > 0)
      {
        goto LABEL_14;
      }
    }
  }

  return v5;
}

icu::CharString *sub_195403650(icu::CharString *result, UErrorCode *a2)
{
  if (*(result + 110))
  {
    return result;
  }

  v10 = v2;
  v11 = v3;
  v5 = result;
  result = icu::CharString::append((result + 384), *result, *(result + 14), a2);
  if (*(v5 + 30))
  {
    icu::StringPiece::StringPiece(&v8, "_");
    icu::CharString::append((v5 + 384), v8, v9, a2);
    result = icu::CharString::append((v5 + 384), *(v5 + 8), *(v5 + 30), a2);
  }

  if (*(v5 + 46))
  {
    icu::StringPiece::StringPiece(&v8, "_");
    icu::CharString::append((v5 + 384), v8, v9, a2);
    v6 = *(v5 + 16);
    v7 = *(v5 + 46);
LABEL_8:
    result = icu::CharString::append((v5 + 384), v6, v7, a2);
    goto LABEL_9;
  }

  if (*(v5 + 62))
  {
    icu::StringPiece::StringPiece(&v8, "_");
    v6 = v8;
    v7 = v9;
    goto LABEL_8;
  }

LABEL_9:
  if (*(v5 + 62))
  {
    icu::StringPiece::StringPiece(&v8, "_");
    icu::CharString::append((v5 + 384), v8, v9, a2);
    result = icu::CharString::append((v5 + 384), *(v5 + 24), *(v5 + 62), a2);
  }

  if (*(v5 + 78))
  {
    icu::StringPiece::StringPiece(&v8, "@collation=");
    icu::CharString::append((v5 + 384), v8, v9, a2);
    result = icu::CharString::append((v5 + 384), *(v5 + 32), *(v5 + 78), a2);
  }

  if (*(v5 + 94))
  {
    icu::StringPiece::StringPiece(&v8, "@sp=");
    icu::CharString::append((v5 + 384), v8, v9, a2);
    return icu::CharString::append((v5 + 384), *(v5 + 40), *(v5 + 94), a2);
  }

  return result;
}

icu::RuleBasedCollator *ucol_openFromShortString(const char *a1, int a2, char *a3, UErrorCode *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    return 0;
  }

  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = &v22;
  }

  *v8 = 0;
  *(v8 + 4) = 0;
  *(v8 + 20) = 0;
  bzero(v25, 0x670uLL);
  for (i = 0; i != 384; i += 64)
  {
    v10 = &v25[i];
    *v10 = &v25[i + 13];
    *(v10 + 2) = 40;
    *(v10 + 6) = 0;
    *(v10 + 14) = 0;
  }

  v11 = 0;
  v26 = &v28 + 1;
  v27 = 40;
  v28 = 0;
  v29 = 0;
  v36 = 0;
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  do
  {
    v12 = &v25[v11];
    *(v12 + 70) = &v37[v11];
    *(v12 + 142) = 40;
    *(v12 + 286) = 0;
    *(v12 + 154) = 0;
    v11 += 64;
  }

  while (v11 != 1088);
  *&v13 = -1;
  *(&v13 + 1) = -1;
  v31 = v13;
  v30 = v13;
  v14 = sub_1954034DC(v25, a1, v8, a4);
  sub_195403650(v25, a4);
  *v23 = 0u;
  memset(v24, 0, sizeof(v24));
  ulocimp_canonicalize(v23, v26, a4);
  v4 = ucol_open(v23[0], a4);
  for (j = 0; j != 8; ++j)
  {
    v16 = &v25[4 * j];
    v17 = *(v16 + 112);
    if (v17 != -1)
    {
      if (a2 || (Attribute = ucol_getAttribute(v4, j, a4), v17 = *(v16 + 112), Attribute != v17))
      {
        ucol_setAttribute(v4, j, v17, a4);
      }

      if (*a4 >= 1)
      {
        *(v8 + 1) = v14 - a1;
LABEL_23:
        ucol_close(v4);
        v4 = 0;
        goto LABEL_24;
      }
    }
  }

  if (v36)
  {
    if (WORD2(v32))
    {
      ucol_setVariableTop(v4, &v32 + 4, v35, a4);
    }

    else
    {
      ucol_restoreVariableTop(v4, v32, a4);
    }
  }

  if (*a4 >= 1)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (BYTE4(v23[1]))
  {
    free(v23[0]);
  }

  v19 = 1088;
  do
  {
    if (v33[v19 + 12])
    {
      free(*&v33[v19]);
    }

    v19 -= 64;
  }

  while (v19);
  if (v28)
  {
    free(v26);
  }

  v20 = 384;
  do
  {
    if (BYTE4(v24[v20 / 0x10]))
    {
      free(v23[v20 / 8 + 1]);
    }

    v20 -= 64;
  }

  while (v20);
  return v4;
}

uint64_t ucol_getShortDefinitionString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    *a5 = 1;
    return 0;
  }

  return (*(*a1 + 288))(a1, a2, a3, a4);
}

uint64_t ucol_normalizeShortDefinitionString(const char *a1, void *a2, int a3, _BYTE *a4, UErrorCode *a5)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    return 0;
  }

  if (a2)
  {
    bzero(a2, a3);
  }

  bzero(v30, 0x670uLL);
  for (i = 0; i != 384; i += 64)
  {
    v12 = &v30[i];
    *v12 = &v30[i + 13];
    *(v12 + 2) = 40;
    *(v12 + 6) = 0;
    *(v12 + 14) = 0;
  }

  v13 = 0;
  v31 = &v33 + 1;
  v32 = 40;
  v33 = 0;
  v34 = 0;
  v40 = 0;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  do
  {
    v14 = &v30[v13];
    *(v14 + 70) = &v41[v13 + 13];
    *(v14 + 142) = 40;
    *(v14 + 286) = 0;
    *(v14 + 154) = 0;
    v13 += 64;
  }

  while (v13 != 1088);
  if (a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = v29;
  }

  *&v16 = -1;
  *(&v16 + 1) = -1;
  v35 = v16;
  v36 = v16;
  sub_1954034DC(v30, a1, v15, a5);
  if (*a5 <= 0)
  {
    __s = a2;
    v20 = 0;
    v5 = 0;
    do
    {
      v21 = &v41[64 * v20];
      v22 = *(v21 + 14);
      if (v22)
      {
        if (v5)
        {
          if (v5 < a3)
          {
            *&__s[strlen(__s)] = 95;
          }

          LODWORD(v5) = v5 + 1;
        }

        v23 = **v21 - 75;
        v24 = v23 > 0xB;
        v25 = (1 << v23) & 0x883;
        if (v24 || v25 == 0)
        {
          v5 = icu::CharString::extract(&v41[64 * v20], &__s[v5], (a3 - v5), a5) + v5;
        }

        else
        {
          if (v22 >= 1)
          {
            for (j = 0; j < v22; ++j)
            {
              if (v5 + j < a3)
              {
                __s[v5 + j] = uprv_toupper((*v21)[j]);
                v22 = *(v21 + 14);
              }
            }
          }

          v5 = (v22 + v5);
        }
      }

      ++v20;
    }

    while (v20 != 17);
  }

  else
  {
    v5 = 0;
  }

  v17 = 68;
  do
  {
    if (BYTE12(v38[v17]))
    {
      free(*&v38[v17]);
    }

    v17 -= 4;
  }

  while (v17 * 16);
  if (v33)
  {
    free(v31);
  }

  v18 = 384;
  do
  {
    if (v29[v18 + 20])
    {
      free(*&v29[v18 + 8]);
    }

    v18 -= 64;
  }

  while (v18);
  return v5;
}

uint64_t ucol_getContractions(uint64_t ***a1, icu::UnicodeSet *a2, UErrorCode *a3)
{
  ucol_getContractionsAndExpansions(a1, a2, 0, 0, a3);

  return uset_getItemCount(a2);
}

uint64_t ***ucol_getContractionsAndExpansions(uint64_t ***result, icu::UnicodeSet *a2, icu::UnicodeSet *a3, char a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return result;
  }

  if (!result)
  {
    v9 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_9:
    *a5 = v9;
    return result;
  }

  if (!result)
  {
    v9 = U_UNSUPPORTED_ERROR;
    goto LABEL_9;
  }

  return icu::RuleBasedCollator::internalGetContractionsAndExpansions(result, a2, a3, a4, a5);
}

unsigned __int8 *sub_195403EFC(uint64_t a1, unsigned int a2, unsigned __int8 *a3, int *a4)
{
  v4 = &dword_195493A78;
  v5 = 12;
  while (*(v4 - 4) != *a3)
  {
    v4 += 2;
    if (!--v5)
    {
      *a4 = 1;
      v6 = -1;
      goto LABEL_6;
    }
  }

  v6 = *v4;
LABEL_6:
  *(a1 + 4 * a2 + 448) = v6;
  v9 = a3[1];
  v7 = a3 + 1;
  v8 = v9;
  v10 = v9 == 95 || v8 == 0;
  if (!v10 || *a4 >= 1)
  {
    *a4 = 1;
  }

  return v7;
}

char *sub_195403F6C(uint64_t a1, int a2, char *a3, int *a4)
{
  v12 = a3;
  if (a2)
  {
    *(a1 + 480) = sub_1954041E4(&v12, a4);
    v6 = *a4;
  }

  else
  {
    if (*a4 >= 1)
    {
      *(a1 + 548) = 0;
      return v12;
    }

    v7 = 0;
    do
    {
      if (!*v12 || *v12 == 95)
      {
        *(a1 + 548) = v7;
        goto LABEL_20;
      }

      v8 = sub_1954041E4(&v12, a4);
      v9 = v7 + 1;
      *(a1 + 484 + 2 * v7) = v8;
      v6 = *a4;
    }

    while (*a4 <= 0 && v7++ < 0x1F);
    *(a1 + 548) = v9;
    if (v9 == 32 && *v12 && *v12 != 95)
    {
      *a4 = 15;
      return v12;
    }
  }

  if (v6 <= 0)
  {
LABEL_20:
    *(a1 + 552) = 1;
  }

  return v12;
}

_BYTE *sub_19540405C(uint64_t a1, unsigned int a2, uint64_t a3, UErrorCode *a4)
{
  v6 = (a1 + (a2 << 6));
  v7 = (a3 + 1);
  v8 = 1 << a2;
  do
  {
    v9 = v7;
    if (a2 <= 5 && (v8 & 0x31) != 0)
    {
      v10 = uprv_asciitolower(*(v7 - 1));
    }

    else
    {
      v10 = *(v7 - 1);
    }

    icu::CharString::append(v6, v10, a4);
    if (!*v9)
    {
      break;
    }

    if (*v9 == 95)
    {
      break;
    }

    v7 = v9 + 1;
  }

  while (*a4 < 1);
  return v9;
}

const char *sub_195404100(uint64_t a1, int a2, char *__s, UErrorCode *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = __s + 1;
  v7 = strchr(__s + 2, *__s);
  if (v7 && (v8 = v7, v7 - v6 < 256))
  {
    v10 = &v12 + 1;
    v11 = 40;
    v12 = 0;
    v13 = 0;
    icu::CharString::append(&v10, v6, v7 - v6, a4);
    icu::CharString::copyFrom((a1 + 384), &v10, a4);
    if (v12)
    {
      free(v10);
    }

    return v8 + 1;
  }

  else
  {
    *a4 = U_BUFFER_OVERFLOW_ERROR;
  }

  return v6;
}

uint64_t sub_1954041E4(char **a1, _DWORD *a2)
{
  v2 = **a1;
  if (!v2)
  {
LABEL_13:
    v4 = 0;
LABEL_14:
    *a2 = 1;
    return v4;
  }

  v3 = 0;
  v4 = 0;
  v5 = *a1 + 1;
  do
  {
    v6 = v3;
    v7 = v2;
    if ((v2 - 48) >= 0xAu)
    {
      if ((v2 - 97) >= 6)
      {
        if ((v2 - 65) > 5)
        {
          goto LABEL_13;
        }

        v8 = -55;
      }

      else
      {
        v8 = -87;
      }
    }

    else
    {
      v8 = -48;
    }

    v4 = (v8 + v7) | (16 * v4);
    *a1 = v5;
    v9 = *v5++;
    v2 = v9;
    if (!v9)
    {
      break;
    }

    v3 = v6 + 1;
  }

  while (v6 < 3);
  if (v6 <= 2)
  {
    goto LABEL_14;
  }

  return v4;
}

void sub_195404284(uint64_t a1, int a2, int a3, int a4, int *a5)
{
  if (*a5 <= 0)
  {
    v9 = *(a1 + 200);
    v10 = *(a1 + 204);
    if (v9 < v10)
    {
      v11 = *(a1 + 192);
LABEL_8:
      v15 = &v11[12 * v9];
      *v15 = a2;
      *(v15 + 1) = a3;
      *(v15 + 2) = a4;
      *(a1 + 200) = v9 + 1;
      return;
    }

    v13 = malloc_type_malloc(12 * v10 + 96, 0x10000403E1C8BA9uLL);
    if (v13)
    {
      v11 = v13;
      memcpy(v13, *(a1 + 192), 12 * *(a1 + 204));
      v14 = *(a1 + 192);
      if (v14 != a1)
      {
        free(v14);
      }

      *(a1 + 192) = v11;
      v9 = *(a1 + 200);
      *(a1 + 204) += 8;
      goto LABEL_8;
    }

    *a5 = 7;
  }
}

void sub_195404370(uint64_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  if (*a5 <= 0)
  {
    v9 = *(a1 + 264);
    v10 = *(a1 + 268);
    if (v9 < v10)
    {
      v11 = *(a1 + 256);
LABEL_8:
      v15 = &v11[16 * v9];
      *v15 = a2;
      *(v15 + 2) = a3;
      *(v15 + 3) = a4;
      *(a1 + 264) = v9 + 1;
      return;
    }

    v13 = malloc_type_malloc(16 * v10 + 128, 0x1000040451B5BE8uLL);
    if (v13)
    {
      v11 = v13;
      memcpy(v13, *(a1 + 256), 16 * *(a1 + 268));
      v14 = *(a1 + 256);
      if (v14 != a1)
      {
        free(v14);
      }

      *(a1 + 256) = v11;
      *(a1 + 268) += 8;
      v9 = *(a1 + 264);
      goto LABEL_8;
    }

    *a5 = 7;
  }
}

void *sub_195404460(void *a1, uint64_t a2)
{
  a1[32] = a1;
  a1[33] = 0x1000000000;
  a1[34] = a2;
  sub_1954044A0(a1, *(a2 + 16));
  return a1;
}

uint64_t sub_1954044A0(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  *(a1 + 280) = (*(*a2 + 192))(a2, 5, &v5);
  *(a1 + 284) = (*(*a2 + 192))(a2, 1, &v5) == 20;
  *(a1 + 285) = 0;
  result = (*(*a2 + 240))(a2, &v5);
  *(a1 + 288) = result;
  return result;
}

void *sub_195404574(void *a1)
{
  v2 = a1[32];
  if (v2 != a1)
  {
    free(v2);
  }

  return a1;
}

unint64_t sub_1954045A8(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 280);
  v3 = a2 << 16;
  if (v2 == 1)
  {
    v3 = 0;
  }

  v4 = BYTE1(a2) << 32;
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v4 = *(a1 + 280);
    v5 = v4;
  }

  v6 = HIWORD(a2);
  if (*(a1 + 284) && a2 >= 0x10000 && *(a1 + 288) > a2)
  {
    v7 = 0;
    if (v2 <= 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = HIWORD(a2);
    }

    *(a1 + 285) = 1;
  }

  else
  {
    if (!v6 && *(a1 + 285))
    {
      return 0;
    }

    v10 = v2 <= 2;
    v8 = 0xFFFFLL;
    if (v10)
    {
      v8 = 0;
    }

    *(a1 + 285) = 0;
    v7 = v4 | (v6 << 48) | v5;
  }

  return v7 | v8;
}

icu::CollationElementIterator *ucol_openElements(const void *a1, const UChar *a2, unsigned int a3, int *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    return 0;
  }

  if (!a1 || !a2 && a3)
  {
    CollationElementIterator = 0;
    v8 = 1;
LABEL_7:
    *a4 = v8;
    return CollationElementIterator;
  }

  if (!v10)
  {
    CollationElementIterator = 0;
    v8 = 16;
    goto LABEL_7;
  }

  v11 = v10;
  memset(v14, 0, sizeof(v14));
  v13 = a2;
  icu::UnicodeString::UnicodeString(v14, a3 >> 31, &v13, a3);
  CollationElementIterator = icu::RuleBasedCollator::createCollationElementIterator(v11, v14);
  if (!CollationElementIterator)
  {
    v12 = 7;
    *a4 = 7;
  }

  icu::UnicodeString::~UnicodeString(v12, v14);
  return CollationElementIterator;
}

icu::CollationElementIterator *ucol_closeElements@<X0>(icu::CollationElementIterator *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    icu::CollationElementIterator::~CollationElementIterator(result, a2);

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t ucol_next(icu::CollationElementIterator *a1, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    return icu::CollationElementIterator::next(a1, a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t ucol_nextProcessed(uint64_t a1, _DWORD *a2, _DWORD *a3, UErrorCode *a4)
{
  v10 = v9;
  v11 = 0x1000000000;
  v12 = a1;
  sub_1954044A0(v9, *(a1 + 16));
  v7 = sub_19540487C(v9, a2, a3, a4);
  if (v10 != v9)
  {
    free(v10);
  }

  return v7;
}

unint64_t sub_19540487C(uint64_t a1, _DWORD *a2, _DWORD *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a1 + 264) = 0;
  while (1)
  {
    Offset = icu::CollationElementIterator::getOffset(*(a1 + 272));
    v10 = icu::CollationElementIterator::next(*(a1 + 272), a4);
    v11 = icu::CollationElementIterator::getOffset(*(a1 + 272));
    if (v10 == -1)
    {
      break;
    }

    result = sub_1954045A8(a1, v10);
    if (result)
    {
      if (!a2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a2)
  {
LABEL_7:
    *a2 = Offset;
  }

LABEL_8:
  if (a3)
  {
    *a3 = v11;
  }

  return result;
}

uint64_t ucol_previous(icu::CollationElementIterator *a1, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    return icu::CollationElementIterator::previous(a1, a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ucol_previousProcessed(uint64_t a1, _DWORD *a2, _DWORD *a3, UErrorCode *a4)
{
  v10 = v9;
  v11 = 0x1000000000;
  v12 = a1;
  sub_1954044A0(v9, *(a1 + 16));
  v7 = sub_1954049E0(v9, a2, a3, a4);
  if (v10 != v9)
  {
    free(v10);
  }

  return v7;
}

uint64_t sub_1954049E0(uint64_t a1, _DWORD *a2, _DWORD *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v29 = v7;
  v30 = v6;
  v31 = v4;
  v32 = v5;
  do
  {
    v13 = *(a1 + 264);
    if (v13 > 0)
    {
      goto LABEL_28;
    }

    memset(v26, 0, sizeof(v26));
    v27 = v26;
    v28 = 0x1000000000;
    while (1)
    {
      Offset = icu::CollationElementIterator::getOffset(*(a1 + 272));
      v15 = icu::CollationElementIterator::previous(*(a1 + 272), a4);
      v16 = icu::CollationElementIterator::getOffset(*(a1 + 272));
      if (v15 == -1)
      {
        break;
      }

      sub_195404284(v26, v15, v16, Offset, a4);
      v17 = *a4;
      if (*a4 > 0)
      {
        goto LABEL_21;
      }

      if (v15 >= 0x10000 && (v15 & 0xC0) != 0xC0)
      {
        goto LABEL_10;
      }
    }

    if (v28 <= 0)
    {
      v22 = 6;
      goto LABEL_23;
    }

    v17 = *a4;
    if (*a4 > 0)
    {
LABEL_21:
      v22 = 1;
      goto LABEL_23;
    }

LABEL_10:
    v18 = v28;
    if (v28 >= 1)
    {
      do
      {
        LODWORD(v28) = v18 - 1;
        v19 = v27 + 12 * (v18 - 1);
        v20 = sub_1954045A8(a1, *v19);
        if (v20)
        {
          sub_195404370(a1, v20, *(v19 + 1), *(v19 + 2), a4);
        }

        v17 = *a4;
        v18 = v28;
      }

      while (*a4 <= 0 && v28 > 0);
    }

    v22 = v17 > U_ZERO_ERROR;
LABEL_23:
    if (v27 != v26)
    {
      free(v27);
    }
  }

  while (!v22);
  if (v22 != 6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = *(a1 + 264);
  if (v13 <= 0)
  {
    if (a2)
    {
      *a2 = -1;
    }

    if (a3)
    {
      *a3 = -1;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_28:
  v23 = *(a1 + 256);
  v24 = v13 - 1;
  *(a1 + 264) = v24;
  v25 = (v23 + 16 * v24);
  if (a2)
  {
    *a2 = v25[2];
  }

  if (a3)
  {
    *a3 = v25[3];
  }

  return *v25;
}

UChar **ucol_setText(UChar **result, const UChar *a2, unsigned int a3, UErrorCode *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v5 = result;
    if (a2 || !a3)
    {
      memset(v8, 0, sizeof(v8));
      v7 = a2;
      icu::UnicodeString::UnicodeString(v8, a3 >> 31, &v7, a3);
      icu::CollationElementIterator::setText(v5, v8, a4);
      return icu::UnicodeString::~UnicodeString(v6, v8);
    }

    else
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return result;
}

unint64_t ucol_setOffset(unint64_t this, uint64_t a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    return icu::CollationElementIterator::setOffset(this, a2, a3);
  }

  return this;
}

void *ucsdet_open(int *a1)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t ucsdet_close(uint64_t result)
{
  if (result)
  {
    sub_1952E4460(result);

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t ucsdet_setText(uint64_t a1, char *a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    return sub_1952E4464(a1, a2, a3);
  }

  return a1;
}

uint64_t ucsdet_getName(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return sub_1952E4DC4(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t ucsdet_getConfidence(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return sub_1952E4DD4(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t ucsdet_getLanguage(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return sub_1952E4DCC(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t ucsdet_detect(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return sub_1952E44BC(a1, a2);
  }

  else
  {
    return 0;
  }
}

char *ucsdet_setDeclaredEncoding(char *a1, char *a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    return sub_1952E44B4(a1, a2, a3);
  }

  return a1;
}

uint64_t ucsdet_detectAll(void *a1, _DWORD *a2, int *a3)
{
  if (*a3 <= 0)
  {
    return sub_1952E4510(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t ucsdet_isInputFilterEnabled(uint64_t a1)
{
  if (a1)
  {
    return sub_1952E44AC(a1);
  }

  return a1;
}

uint64_t ucsdet_enableInputFilter(uint64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    v4 = sub_1952E44AC(result);
    sub_1952E4494(v3, a2);
    return v4;
  }

  return result;
}

uint64_t ucsdet_getUChars(uint64_t *a1, unint64_t a2, uint64_t a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    return sub_1952E4DDC(a1, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t udat_toCalendarDateField(unsigned int a1)
{
  if (a1 > 0x25)
  {
    return 25;
  }

  else
  {
    return dword_195493AF0[a1];
  }
}

uint64_t udat_patternCharToDateFormatField(icu::DateFormatSymbols *a1)
{
  v1 = a1;
  PatternUChars = icu::DateFormatSymbols::getPatternUChars(a1);
  v3 = u_strchr(PatternUChars, v1);
  if (v3)
  {
    return ((v3 - PatternUChars) >> 1);
  }

  else
  {
    return 38;
  }
}

void udat_registerOpener(uint64_t (*a1)(void, void, void, void, void, void, void, void), int *a2)
{
  if (*a2 <= 0)
  {
    umtx_lock(0);
    if (off_1EAECA4A8)
    {
      *a2 = 1;
    }

    else
    {
      off_1EAECA4A8 = a1;
    }

    umtx_unlock(0);
  }
}

uint64_t (*udat_unregisterOpener(uint64_t (*a1)(void, void, void, void, void, void, void, void), int *a2))(void, void, void, void, void, void, void, void)
{
  if (*a2 > 0)
  {
    return 0;
  }

  umtx_lock(0);
  v2 = off_1EAECA4A8;
  if (off_1EAECA4A8)
  {
    v5 = off_1EAECA4A8 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    off_1EAECA4A8 = 0;
  }

  else
  {
    v2 = 0;
    *a2 = 1;
  }

  umtx_unlock(0);
  return v2;
}

icu::SimpleDateFormat *udat_open(icu::Locale *a1, uint64_t a2, char *a3, const UChar *a4, uint64_t a5, const UChar *a6, uint64_t a7, UErrorCode *a8)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a8 > 0)
  {
    return 0;
  }

  v10 = a7;
  v13 = a2;
  v14 = a1;
  if (!off_1EAECA4A8 || (a1 = off_1EAECA4A8(a1, a2, a3, a4, a5, a6, a7, a8), (v8 = a1) == 0))
  {
    if (v14 == -2)
    {
      memset(v17, 0, sizeof(v17));
      v16 = a6;
      icu::UnicodeString::UnicodeString(v17, v10 == -1, &v16, v10);
      operator new();
    }

    if (a3)
    {
      icu::Locale::Locale(v18, a3, 0, 0, 0);
      icu::DateFormat::createDateTimeInstance(v13, v14, v18);
    }

    Default = icu::Locale::getDefault(a1);
    icu::DateFormat::createDateTimeInstance(v13, v14, Default);
  }

  return v8;
}

uint64_t udat_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t udat_clone(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  result = (*(*a1 + 32))(a1);
  if (!result)
  {
    *a2 = 7;
  }

  return result;
}

uint64_t udat_format(icu::DateFormat *this, char *a2, uint64_t a3, uint64_t a4, int *a5, double a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if ((a3 & 0x80000000) != 0)
  {
LABEL_9:
    *a5 = 1;
    return 0xFFFFFFFFLL;
  }

LABEL_4:
  v20 = 0u;
  v21 = 0u;
  v23 = 0;
  v22 = 0u;
  v19 = &unk_1F0935D00;
  LOWORD(v20) = 2;
  if (a2)
  {
    icu::UnicodeString::setTo(&v19, a2, 0, a3);
  }

  v17 = &unk_1F093AD90;
  v18 = 0xFFFFFFFFuLL;
  if (a4)
  {
    LODWORD(v18) = *a4;
    icu::DateFormat::format(this, a6, &v19, &v17);
    *(a4 + 4) = *(&v18 + 4);
  }

  else
  {
    icu::DateFormat::format(this, a6, &v19, &v17);
  }

  v16 = a2;
  v12 = icu::UnicodeString::extract(&v19, &v16, a3, a5);
  v15 = v16;
  icu::FieldPosition::~FieldPosition(&v15, &v17);
  icu::UnicodeString::~UnicodeString(v14, &v19);
  return v12;
}

uint64_t udat_formatCalendar(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if ((a4 & 0x80000000) != 0)
  {
LABEL_12:
    *a6 = 1;
    return 0xFFFFFFFFLL;
  }

LABEL_4:
  v20 = 0u;
  v21 = 0u;
  v23 = 0;
  v22 = 0u;
  v19 = &unk_1F0935D00;
  LOWORD(v20) = 2;
  if (a3)
  {
    icu::UnicodeString::setTo(&v19, a3, 0, a4);
  }

  v17 = &unk_1F093AD90;
  v18 = 0xFFFFFFFFuLL;
  if (a5)
  {
    LODWORD(v18) = *a5;
  }

  (*(*a1 + 64))(a1, a2, &v19, &v17);
  if (a5)
  {
    *(a5 + 4) = *(&v18 + 4);
  }

  v16 = a3;
  v12 = icu::UnicodeString::extract(&v19, &v16, a4, a6);
  v15 = v16;
  icu::FieldPosition::~FieldPosition(&v15, &v17);
  icu::UnicodeString::~UnicodeString(v13, &v19);
  return v12;
}

uint64_t udat_formatForFields(icu::DateFormat *this, char *a2, uint64_t a3, icu::FieldPositionIterator *a4, UErrorCode *a5, double a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if ((a3 & 0x80000000) != 0)
  {
LABEL_8:
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0xFFFFFFFFLL;
  }

LABEL_4:
  v17 = 0u;
  v18 = 0u;
  v20 = 0;
  v19 = 0u;
  v16 = &unk_1F0935D00;
  LOWORD(v17) = 2;
  if (a2)
  {
    icu::UnicodeString::setTo(&v16, a2, 0, a3);
  }

  icu::DateFormat::format(this, a6, &v16, a4, a5);
  v15 = a2;
  v12 = icu::UnicodeString::extract(&v16, &v15, a3, a5);
  v14 = v15;
  icu::UnicodeString::~UnicodeString(&v14, &v16);
  return v12;
}

uint64_t udat_formatCalendarForFields(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if ((a4 & 0x80000000) != 0)
  {
LABEL_8:
    *a6 = 1;
    return 0xFFFFFFFFLL;
  }

LABEL_4:
  v17 = 0u;
  v18 = 0u;
  v20 = 0;
  v19 = 0u;
  v16 = &unk_1F0935D00;
  LOWORD(v17) = 2;
  if (a3)
  {
    icu::UnicodeString::setTo(&v16, a3, 0, a4);
  }

  (*(*a1 + 72))(a1, a2, &v16, a5, a6);
  v15 = a3;
  v12 = icu::UnicodeString::extract(&v16, &v15, a4, a6);
  v14 = v15;
  icu::UnicodeString::~UnicodeString(&v14, &v16);
  return v12;
}

double udat_parse(icu::DateFormat *a1, const UChar *a2, int32_t a3, int *a4, int *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  if (*a5 <= 0)
  {
    memset(v16, 0, sizeof(v16));
    v15 = a2;
    icu::UnicodeString::UnicodeString(v16, a3 == -1, &v15, a3);
    v12 = &unk_1F0932C70;
    v14 = -1;
    if (a4)
    {
      v9 = *a4;
    }

    else
    {
      v9 = 0;
    }

    v13 = v9;
    v5 = icu::DateFormat::parse(a1, v16, &v12);
    if (v14 == -1)
    {
      if (a4)
      {
        *a4 = v13;
      }
    }

    else
    {
      if (a4)
      {
        *a4 = v14;
      }

      *a5 = 9;
    }

    icu::ParsePosition::~ParsePosition(&v12);
    icu::UnicodeString::~UnicodeString(v10, v16);
  }

  return v5;
}

void *udat_parseCalendar(void *result, uint64_t a2, const UChar *a3, int32_t a4, int *a5, int *a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v9 = result;
    memset(v16, 0, sizeof(v16));
    v15 = a3;
    icu::UnicodeString::UnicodeString(v16, a4 == -1, &v15, a4);
    v12 = &unk_1F0932C70;
    v14 = -1;
    if (a5)
    {
      v10 = *a5;
    }

    else
    {
      v10 = 0;
    }

    v13 = v10;
    (*(*v9 + 88))(v9, v16, a2, &v12);
    if (v14 == -1)
    {
      if (a5)
      {
        *a5 = v13;
      }
    }

    else
    {
      if (a5)
      {
        *a5 = v14;
      }

      *a6 = 9;
    }

    icu::ParsePosition::~ParsePosition(&v12);
    return icu::UnicodeString::~UnicodeString(v11, v16);
  }

  return result;
}

uint64_t udat_getBooleanAttribute(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*a1 + 224))(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t udat_setBooleanAttribute(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    return (*(*result + 216))(result, a2, a3);
  }

  return result;
}

uint64_t udat_getNumberFormatForField(void *a1, unsigned int a2)
{
  v6 = 0;
  sub_195405D44(a1, &v6);
  if (v6 < 1)
  {

    return icu::SimpleDateFormat::getNumberFormatForField(a1, a2);
  }

  else
  {
    v4 = *(*a1 + 152);

    return v4(a1);
  }
}

void *sub_195405D44(void *result, int *a2)
{
  {
    *a2 = 1;
  }

  return result;
}

void *udat_adoptNumberFormatForFields(void *a1, _WORD *a2, icu::NumberFormat *a3, int *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = a2;
  result = sub_195405D44(a1, a4);
  if (*a4 <= 0 && a2 != 0)
  {
    memset(v12, 0, sizeof(v12));
    sub_1951F3478(v12, &v11);
    icu::SimpleDateFormat::adoptNumberFormat(a1, v12, a3, a4);
    return icu::UnicodeString::~UnicodeString(v10, v12);
  }

  return result;
}

double udat_get2DigitYearStart(double *a1, int *a2)
{
  sub_195405D44(a1, a2);
  result = 0.0;
  if (*a2 <= 0)
  {
    return a1[98];
  }

  return result;
}

void *udat_set2DigitYearStart(void *a1, int *a2, double a3)
{
  result = sub_195405D44(a1, a2);
  if (*a2 <= 0)
  {
    v8 = *(*a1 + 232);
    v7.n128_f64[0] = a3;

    return v8(a1, a2, v7);
  }

  return result;
}

uint64_t udat_toPattern(void *lpsrc, int a2, char *a3, uint64_t a4, int *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (a3)
    {
      if ((a4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (!a4)
    {
LABEL_4:
      v19 = 0u;
      v20 = 0u;
      v22 = 0;
      v21 = 0u;
      v18 = &unk_1F0935D00;
      LOWORD(v19) = 2;
      if (a3)
      {
        icu::UnicodeString::setTo(&v18, a3, 0, a4);
      }

      if (lpsrc)
      {
        if (v10)
        {
          v11 = *v10;
          if (a2)
          {
            (*(v11 + 248))();
          }

          else
          {
            (*(v11 + 240))();
          }

          goto LABEL_19;
        }

        if (!a2)
        {
          if (v15)
          {
            (*(*v15 + 232))(v15, &v18, a5);
LABEL_19:
            v17 = a3;
            v12 = icu::UnicodeString::extract(&v18, &v17, a4, a5);
            v16 = v17;
            v14 = &v16;
            goto LABEL_20;
          }
        }
      }

      v14 = 1;
      *a5 = 1;
      v12 = 0xFFFFFFFFLL;
LABEL_20:
      icu::UnicodeString::~UnicodeString(v14, &v18);
      return v12;
    }

    *a5 = 1;
  }

  return 0xFFFFFFFFLL;
}

void *udat_applyPattern(uint64_t *a1, int a2, const UChar *a3, int32_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v10 = a3;
  icu::UnicodeString::UnicodeString(v11, a4 == -1, &v10, a4);
  v9 = 0;
  sub_195405D44(a1, &v9);
  v6 = v9;
  if (v9 <= 0)
  {
    v7 = *a1;
    if (a2)
    {
      (*(v7 + 264))(a1, v11, &v9);
    }

    else
    {
      (*(v7 + 256))(a1, v11);
    }
  }

  return icu::UnicodeString::~UnicodeString(v6, v11);
}

uint64_t udat_getSymbols(const void *a1, uint64_t a2, signed int a3, char *a4, uint64_t a5, int *a6)
{
  v50[9] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = a2;
  if (v12)
  {
    v13 = v12;
    v14 = (*(*v12 + 272))(v12);
    v15 = (v13 + 824);
    goto LABEL_6;
  }

  if (!v16)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = v16;
  v14 = (*(*v16 + 264))(v16);
  v15 = (v17 + 752);
LABEL_6:
  v18 = *v15;
  v48 = 0;
  switch(v10)
  {
    case 0u:
      Eras = icu::DateFormatSymbols::getEras(v14, &v48);
      break;
    case 1u:
      Eras = icu::DateFormatSymbols::getMonths(v14, &v48);
      break;
    case 2u:
      Eras = icu::DateFormatSymbols::getShortMonths(v14, &v48);
      break;
    case 3u:
      Eras = icu::DateFormatSymbols::getWeekdays(v14, &v48);
      break;
    case 4u:
      Eras = icu::DateFormatSymbols::getShortWeekdays(v14, &v48);
      break;
    case 5u:
      Eras = icu::DateFormatSymbols::getAmPmStrings(v14, &v48);
      break;
    case 6u:
      memset(v49 + 8, 0, 56);
      *&v49[0] = &unk_1F0935D00;
      WORD4(v49[0]) = 2;
      if (a4 || a5)
      {
        icu::UnicodeString::setTo(v49, a4, 0, a5);
      }

      icu::DateFormatSymbols::getLocalPatternChars(v14, v49);
      v47 = a4;
      v20 = icu::UnicodeString::extract(v49, &v47, a5, a6);
      v44 = v47;
      v31 = &v44;
      v32 = v49;
      goto LABEL_73;
    case 7u:
      Eras = icu::DateFormatSymbols::getEraNames(v14, &v48);
      break;
    case 8u:
      v27 = v14;
      v28 = 0;
      goto LABEL_43;
    case 9u:
      v24 = v14;
      v25 = 0;
      goto LABEL_23;
    case 0xAu:
      v27 = v14;
      v28 = 1;
      v29 = 1;
      goto LABEL_44;
    case 0xBu:
      v27 = v14;
      v28 = 1;
      v29 = 0;
      goto LABEL_44;
    case 0xCu:
      v27 = v14;
      v28 = 1;
LABEL_43:
      v29 = 2;
LABEL_44:
      Eras = icu::DateFormatSymbols::getMonths(v27, &v48, v28, v29);
      break;
    case 0xDu:
      v24 = v14;
      v25 = 1;
      v26 = 1;
      goto LABEL_34;
    case 0xEu:
      v24 = v14;
      v25 = 1;
      v26 = 0;
      goto LABEL_34;
    case 0xFu:
      v24 = v14;
      v25 = 1;
LABEL_23:
      v26 = 2;
      goto LABEL_34;
    case 0x10u:
      v22 = v14;
      v23 = 0;
      goto LABEL_40;
    case 0x11u:
      v22 = v14;
      v23 = 0;
      goto LABEL_47;
    case 0x12u:
      v22 = v14;
      v23 = 1;
LABEL_40:
      v33 = 1;
      goto LABEL_53;
    case 0x13u:
      v22 = v14;
      v23 = 1;
LABEL_47:
      v33 = 0;
      goto LABEL_53;
    case 0x14u:
      v24 = v14;
      v25 = 0;
      goto LABEL_32;
    case 0x15u:
      v24 = v14;
      v25 = 1;
LABEL_32:
      v26 = 3;
LABEL_34:
      Eras = icu::DateFormatSymbols::getWeekdays(v24, &v48, v25, v26);
      break;
    case 0x16u:
      v30 = v14;
      goto LABEL_49;
    case 0x17u:
      v30 = v14;
      goto LABEL_49;
    case 0x18u:
      v30 = v14;
LABEL_49:
      Eras = icu::DateFormatSymbols::getYearNames(v30, &v48);
      break;
    case 0x19u:
      v21 = v14;
      goto LABEL_55;
    case 0x1Au:
      v21 = v14;
      goto LABEL_55;
    case 0x1Bu:
      v21 = v14;
LABEL_55:
      Eras = icu::DateFormatSymbols::getZodiacNames(v21, &v48);
      break;
    case 0x1Cu:
      v22 = v14;
      v23 = 0;
      goto LABEL_52;
    case 0x1Du:
      v22 = v14;
      v23 = 1;
LABEL_52:
      v33 = 2;
LABEL_53:
      Eras = icu::DateFormatSymbols::getQuarters(v22, &v48, v23, v33);
      break;
    default:
      if (v10 == 128)
      {
        Eras = icu::DateFormatSymbols::getZodiacNames(v14, &v48);
        if (a3 < 1)
        {
          a3 = 0;
        }

        else
        {
          a3 = (a3 - 1) % 0xCu;
        }
      }

      else
      {
        Eras = 0;
      }

      break;
  }

  if (a3 >= v48)
  {
    return 0;
  }

  v34 = (Eras + (a3 << 6));
  v35 = icu::UnicodeString::char32At(v34, 0);
  if (!u_islower(v35) || !v18)
  {
    goto LABEL_70;
  }

  v36 = (*(*a1 + 208))(a1, 1, a6);
  switch(v36)
  {
    case 258:
      goto LABEL_66;
    case 259:
      v37 = 0;
      break;
    case 260:
      v37 = 1;
      break;
    default:
LABEL_70:
      v45 = a4;
      return icu::UnicodeString::extract(v34, &v45, a5, a6);
  }

  if (!*(v14 + 2 * sub_195406A30(v10) + v37 + 832))
  {
    goto LABEL_70;
  }

LABEL_66:
  memset(v50, 0, 64);
  icu::UnicodeString::UnicodeString(v50, v34);
  v38 = (*(*v18 + 32))(v18);
  if (!v38)
  {
LABEL_69:
    icu::UnicodeString::~UnicodeString(v39, v50);
    goto LABEL_70;
  }

  v40 = v38;
  memset(v49, 0, sizeof(v49));
  icu::BreakIterator::getLocale(v38, 0, v49, a6);
  if (*a6 >= 1)
  {
    (*(*v40 + 8))(v40);
    icu::Locale::~Locale(v41, v49);
    goto LABEL_69;
  }

  icu::UnicodeString::toTitle(v50, v40, v49, 768);
  (*(*v40 + 8))(v40);
  v46 = a4;
  v20 = icu::UnicodeString::extract(v50, &v46, a5, a6);
  v43 = v46;
  icu::Locale::~Locale(&v43, v49);
  v32 = v50;
LABEL_73:
  icu::UnicodeString::~UnicodeString(v31, v32);
  return v20;
}

uint64_t sub_195406A30(unsigned int a1)
{
  if (a1 > 0x15)
  {
    return 0;
  }

  else
  {
    return dword_195493B88[a1];
  }
}

void *udat_countSymbols(void *result, int a2)
{
  if (result)
  {
    v3 = result;
    if (v4)
    {
      v5 = (*(*v4 + 272))(v4);
    }

    else
    {
      if (!result)
      {
        return result;
      }

      v5 = (*(*result + 264))(result);
    }

    v12 = 0;
    switch(a2)
    {
      case 0:
        icu::DateFormatSymbols::getEras(v5, &v12);
        return v12;
      case 1:
        icu::DateFormatSymbols::getMonths(v5, &v12);
        return v12;
      case 2:
        icu::DateFormatSymbols::getShortMonths(v5, &v12);
        return v12;
      case 3:
        icu::DateFormatSymbols::getWeekdays(v5, &v12);
        return v12;
      case 4:
        icu::DateFormatSymbols::getShortWeekdays(v5, &v12);
        return v12;
      case 5:
        icu::DateFormatSymbols::getAmPmStrings(v5, &v12);
        return v12;
      case 6:
        v12 = 1;
        return v12;
      case 7:
        icu::DateFormatSymbols::getEraNames(v5, &v12);
        return v12;
      case 8:
        v8 = 0;
        goto LABEL_25;
      case 9:
        v6 = 0;
        goto LABEL_31;
      case 10:
        v8 = 1;
        v9 = 1;
        goto LABEL_26;
      case 11:
        v8 = 1;
        v9 = 0;
        goto LABEL_26;
      case 12:
        v8 = 1;
LABEL_25:
        v9 = 2;
LABEL_26:
        icu::DateFormatSymbols::getMonths(v5, &v12, v8, v9);
        return v12;
      case 13:
        v6 = 1;
        v7 = 1;
        goto LABEL_35;
      case 14:
        v6 = 1;
        v7 = 0;
        goto LABEL_35;
      case 15:
        v6 = 1;
LABEL_31:
        v7 = 2;
        goto LABEL_35;
      case 16:
        v10 = 0;
        goto LABEL_37;
      case 17:
        v10 = 0;
        goto LABEL_29;
      case 18:
        v10 = 1;
LABEL_37:
        v11 = 1;
        goto LABEL_42;
      case 19:
        v10 = 1;
LABEL_29:
        v11 = 0;
        goto LABEL_42;
      case 20:
        v6 = 0;
        goto LABEL_34;
      case 21:
        v6 = 1;
LABEL_34:
        v7 = 3;
LABEL_35:
        icu::DateFormatSymbols::getWeekdays(v5, &v12, v6, v7);
        return v12;
      case 22:
      case 23:
      case 24:
        icu::DateFormatSymbols::getYearNames(v5, &v12);
        return v12;
      case 25:
      case 26:
      case 27:
        goto LABEL_43;
      case 28:
        v10 = 0;
        goto LABEL_41;
      case 29:
        v10 = 1;
LABEL_41:
        v11 = 2;
LABEL_42:
        icu::DateFormatSymbols::getQuarters(v5, &v12, v10, v11);
        break;
      default:
        if (a2 == 128)
        {
LABEL_43:
          icu::DateFormatSymbols::getZodiacNames(v5, &v12);
        }

        break;
    }

    return v12;
  }

  return result;
}

void *udat_setSymbols(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = a3;
  result = sub_195405D44(a1, a6);
  if (*a6 <= 0)
  {
    result = (*(*a1 + 272))(a1);
    switch(a2)
    {
      case 0:
        v13 = result[1];
        v14 = *(result + 4);
        goto LABEL_31;
      case 1:
        v13 = result[7];
        v14 = *(result + 16);
        goto LABEL_31;
      case 2:
        v13 = result[9];
        v14 = *(result + 20);
        goto LABEL_31;
      case 3:
        v13 = result[19];
        v14 = *(result + 40);
        goto LABEL_31;
      case 4:
        v13 = result[21];
        v14 = *(result + 44);
        goto LABEL_31;
      case 5:
        v13 = result[35];
        v14 = *(result + 72);
        goto LABEL_31;
      case 6:
        v15 = result + 96;
        v14 = 1;
        v16 = 0;
        goto LABEL_32;
      case 7:
        v13 = result[3];
        v14 = *(result + 8);
        goto LABEL_31;
      case 8:
        v13 = result[11];
        v14 = *(result + 24);
        goto LABEL_31;
      case 9:
        v13 = result[25];
        v14 = *(result + 52);
        goto LABEL_31;
      case 10:
        v13 = result[13];
        v14 = *(result + 28);
        goto LABEL_31;
      case 11:
        v13 = result[15];
        v14 = *(result + 32);
        goto LABEL_31;
      case 12:
        v13 = result[17];
        v14 = *(result + 36);
        goto LABEL_31;
      case 13:
        v13 = result[27];
        v14 = *(result + 56);
        goto LABEL_31;
      case 14:
        v13 = result[29];
        v14 = *(result + 60);
        goto LABEL_31;
      case 15:
        v13 = result[33];
        v14 = *(result + 68);
        goto LABEL_31;
      case 16:
        v13 = result[47];
        v14 = *(result + 96);
        goto LABEL_31;
      case 17:
        v13 = result[49];
        v14 = *(result + 100);
        goto LABEL_31;
      case 18:
        v13 = result[53];
        v14 = *(result + 108);
        goto LABEL_31;
      case 19:
        v13 = result[55];
        v14 = *(result + 112);
        goto LABEL_31;
      case 20:
        v13 = result[23];
        v14 = *(result + 48);
        goto LABEL_31;
      case 21:
        v13 = result[31];
        v14 = *(result + 64);
        goto LABEL_31;
      case 23:
        v13 = result[61];
        v14 = *(result + 124);
        goto LABEL_31;
      case 26:
        v13 = result[63];
        v14 = *(result + 128);
        goto LABEL_31;
      case 28:
        v13 = result[51];
        v14 = *(result + 104);
        goto LABEL_31;
      case 29:
        v13 = result[57];
        v14 = *(result + 116);
LABEL_31:
        v15 = v13;
        v16 = v9;
LABEL_32:

        result = sub_195407568(v15, v14, v16, a4, a5, a6);
        break;
      default:
        *a6 = 16;
        break;
    }
  }

  return result;
}

uint64_t udat_getLocaleByType(uint64_t a1, int a2, int *a3)
{
  if (a1)
  {
    return icu::Format::getLocaleID(a1, a2, a3);
  }

  if (*a3 <= 0)
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t udat_setContext(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*result + 200))(result, a2);
  }

  return result;
}

uint64_t udat_getContext(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*a1 + 208))(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t udat_toPatternRelativeDate(void *a1, char *a2, uint64_t a3, int *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  sub_195407244(a1, a4);
  if (*a4 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if ((a3 & 0x80000000) != 0)
  {
LABEL_8:
    *a4 = 1;
    return 0xFFFFFFFFLL;
  }

LABEL_4:
  v13 = 0u;
  v14 = 0u;
  v16 = 0;
  v15 = 0u;
  v12 = &unk_1F0935D00;
  LOWORD(v13) = 2;
  if (a2)
  {
    icu::UnicodeString::setTo(&v12, a2, 0, a3);
  }

  (*(*a1 + 240))(a1, &v12, a4);
  v11 = a2;
  v8 = icu::UnicodeString::extract(&v12, &v11, a3, a4);
  v10 = v11;
  icu::UnicodeString::~UnicodeString(&v10, &v12);
  return v8;
}

void *sub_195407244(void *result, int *a2)
{
  {
    *a2 = 1;
  }

  return result;
}

uint64_t udat_toPatternRelativeTime(void *a1, char *a2, uint64_t a3, int *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  sub_195407244(a1, a4);
  if (*a4 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if ((a3 & 0x80000000) != 0)
  {
LABEL_8:
    *a4 = 1;
    return 0xFFFFFFFFLL;
  }

LABEL_4:
  v13 = 0u;
  v14 = 0u;
  v16 = 0;
  v15 = 0u;
  v12 = &unk_1F0935D00;
  LOWORD(v13) = 2;
  if (a2)
  {
    icu::UnicodeString::setTo(&v12, a2, 0, a3);
  }

  (*(*a1 + 248))(a1, &v12, a4);
  v11 = a2;
  v8 = icu::UnicodeString::extract(&v12, &v11, a3, a4);
  v10 = v11;
  icu::UnicodeString::~UnicodeString(&v10, &v12);
  return v8;
}

void *udat_applyPatternRelative(void *a1, const UChar *a2, int32_t a3, const UChar *a4, int32_t a5, int *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  result = sub_195407244(a1, a6);
  if (*a6 <= 0)
  {
    memset(v18, 0, sizeof(v18));
    v16 = a2;
    icu::UnicodeString::UnicodeString(v18, a3 == -1, &v16, a3);
    memset(v17, 0, sizeof(v17));
    v15 = a4;
    icu::UnicodeString::UnicodeString(v17, a5 == -1, &v15, a5);
    (*(*a1 + 256))(a1, v18, v17, a6);
    icu::UnicodeString::~UnicodeString(v13, v17);
    return icu::UnicodeString::~UnicodeString(v14, v18);
  }

  return result;
}

uint64_t sub_195407568(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (!result)
  {
    return result;
  }

  if (a3 >= a2)
  {
    v10 = 8;
LABEL_8:
    *a6 = v10;
    return result;
  }

  if (!a4)
  {
    v10 = 1;
    goto LABEL_8;
  }

  v8 = result + (a3 << 6);
  icu::UnicodeString::unBogus(v8);
  if (*(v8 + 8) < 0)
  {
    v9 = *(v8 + 12);
  }

  else
  {
    v9 = *(v8 + 8) >> 5;
  }

  return icu::UnicodeString::doReplace(v8, 0, v9, a4, 0, a5);
}

uint64_t udtitvfmt_openResult(int *a1)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t udtitvfmt_resultAsValue(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 > 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (result)
  {
    if (*(result + 16) == 1178880342)
    {
      goto LABEL_8;
    }

    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  result = 0;
  *a2 = v2;
LABEL_8:
  if (v2 >= 1)
  {
    return 0;
  }

  return result;
}

_DWORD *udtitvfmt_closeResult(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if (result[4] == 1178880342)
    {
      icu::FormattedDateInterval::~FormattedDateInterval((result + 6));
      v1[4] = 0;
      *v1 = 0;

      JUMPOUT(0x19A8B2600);
    }
  }

  return result;
}

uint64_t udtitvfmt_open(const char *a1, const UChar *a2, int32_t a3, const UChar *a4, int32_t a5, UErrorCode *a6)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    if (a2)
    {
      if (a3 < -1)
      {
        goto LABEL_10;
      }
    }

    else if (a3)
    {
      goto LABEL_10;
    }

    if (a4)
    {
      if (a5 > -2)
      {
        goto LABEL_8;
      }
    }

    else if (!a5)
    {
LABEL_8:
      memset(v12, 0, sizeof(v12));
      v10 = a2;
      icu::UnicodeString::UnicodeString(v12, a3 == -1, &v10, a3);
      icu::Locale::Locale(v11, a1, 0, 0, 0);
      icu::DateIntervalFormat::createInstance(v12, v11, a6, v8);
    }

LABEL_10:
    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

uint64_t udtitvfmt_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t udtitvfmt_format(icu::DateIntervalFormat *a1, char *a2, uint64_t a3, uint64_t a4, UErrorCode *a5, double a6, double a7)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_5;
    }

LABEL_12:
    v7 = 0;
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return v7;
  }

  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  v23 = 0u;
  v24 = 0u;
  v26 = 0;
  v25 = 0u;
  v22 = &unk_1F0935D00;
  LOWORD(v23) = 2;
  if (a2)
  {
    icu::UnicodeString::setTo(&v22, a2, 0, a3);
  }

  v20 = &unk_1F093AD90;
  v21 = 0xFFFFFFFFuLL;
  if (a4)
  {
    LODWORD(v21) = *a4;
  }

  memset(v19, 0, sizeof(v19));
  icu::DateInterval::DateInterval(v19, a6, a7);
  icu::DateIntervalFormat::format(a1, v19, &v22, &v20, a5);
  if (*a5 <= 0)
  {
    if (a4)
    {
      *(a4 + 4) = *(&v21 + 4);
    }

    v18 = a2;
    v7 = icu::UnicodeString::extract(&v22, &v18, a3, a5);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  icu::DateInterval::~DateInterval(v19);
  icu::FieldPosition::~FieldPosition(v15, &v20);
  icu::UnicodeString::~UnicodeString(v16, &v22);
  return v7;
}

uint64_t udtitvfmt_setAttribute(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    return (*(*result + 104))(result, a2, a3);
  }

  return result;
}

void udtitvfmt_formatToResult(icu::DateIntervalFormat *a1, uint64_t a2, UErrorCode *a3, double a4, double a5)
{
  if (*a3 > 0)
  {
    return;
  }

  v11[7] = v5;
  v11[8] = v6;
  v8 = a2;
  if (!a2)
  {
    v9 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_6;
  }

  if (*(a2 + 16) != 1178880342)
  {
    v9 = U_INVALID_FORMAT_ERROR;
LABEL_6:
    v8 = 0;
    *a3 = v9;
  }

  memset(v11, 0, 24);
  icu::DateInterval::DateInterval(v11, a4, a5);
  if (v8)
  {
    icu::DateIntervalFormat::formatToValue(a3, v10);
    icu::FormattedDateInterval::operator=(v8 + 24, v10);
    icu::FormattedDateInterval::~FormattedDateInterval(v10);
  }

  icu::DateInterval::~DateInterval(v11);
}

void udtitvfmt_formatCalendarToResult(icu::DateIntervalFormat *a1, icu::Calendar *a2, icu::Calendar *a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v10 = v5;
    v11 = v6;
    if (a4)
    {
      if (*(a4 + 16) == 1178880342)
      {
        icu::DateIntervalFormat::formatToValue(a5, v9);
        icu::FormattedDateInterval::operator=(a4 + 24, v9);
        icu::FormattedDateInterval::~FormattedDateInterval(v9);
        return;
      }

      v8 = U_INVALID_FORMAT_ERROR;
    }

    else
    {
      v8 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    *a5 = v8;
  }
}

uint64_t udtitvfmt_setContext(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*result + 88))(result, a2);
  }

  return result;
}

uint64_t udtitvfmt_getContext(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*a1 + 96))(a1, a2);
  }

  else
  {
    return 0;
  }
}

void *udtitvfmt_getPatternString(icu::DateIntervalFormat *a1, _WORD *a2, uint64_t a3, UChar *a4, uint64_t a5, int *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v18 = 0u;
  v19 = 0u;
  v21 = 0;
  v20 = 0u;
  v17 = &unk_1F0935D00;
  LOWORD(v18) = 2;
  DateIntervalInfo = icu::DateIntervalFormat::getDateIntervalInfo(a1);
  sub_1951F3478(v16, &v15);
  icu::DateIntervalInfo::getIntervalPattern(DateIntervalInfo, v16, a3, &v17, a6);
  icu::UnicodeString::~UnicodeString(v11, v16);
  v14 = a4;
  icu::UnicodeString::extract(&v17, &v14, a5, a6);
  v13 = v14;
  return icu::UnicodeString::~UnicodeString(&v13, &v17);
}

uint64_t udatpg_open(char *a1, UErrorCode *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    icu::Locale::Locale(v6, a1, 0, 0, 0);
    Instance = icu::DateTimePatternGenerator::createInstance(v6, this, 0);
    icu::Locale::~Locale(v4, v6);
    return Instance;
  }

  else
  {

    return icu::DateTimePatternGenerator::createInstance(this, this);
  }
}

uint64_t udatpg_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t udatpg_clone(icu::DateTimePatternGenerator *a1, int *a2)
{
  if (*a2 <= 0)
  {
    icu::DateTimePatternGenerator::clone(a1);
  }

  return 0;
}

uint64_t udatpg_getBestPatternWithOptions(_DWORD *a1, const UChar *a2, unsigned int a3, uint64_t a4, UChar *a5, uint64_t a6, UErrorCode *a7)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    return 0;
  }

  if (a2 || !a3)
  {
    memset(v19, 0, sizeof(v19));
    v17 = a2;
    icu::UnicodeString::UnicodeString(v19, a3 >> 31, &v17, a3);
    v15[1] = v17;
    memset(v18, 0, sizeof(v18));
    icu::DateTimePatternGenerator::getBestPattern(a1, v19, a4, a7, v18);
    v16 = a5;
    v7 = icu::UnicodeString::extract(v18, &v16, a6, a7);
    v15[0] = v16;
    icu::UnicodeString::~UnicodeString(v15, v18);
    icu::UnicodeString::~UnicodeString(v13, v19);
  }

  else
  {
    v7 = 0;
    *a7 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return v7;
}

uint64_t udatpg_getSkeleton(uint64_t a1, const UChar *a2, unsigned int a3, UChar *a4, uint64_t a5, int *a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    return 0;
  }

  if (a2 || !a3)
  {
    memset(v16, 0, sizeof(v16));
    v14 = a2;
    icu::UnicodeString::UnicodeString(v16, a3 >> 31, &v14, a3);
    v12[1] = v14;
    memset(v15, 0, sizeof(v15));
    icu::DateTimePatternGenerator::staticGetSkeleton(v15, v16);
    v13 = a4;
    v6 = icu::UnicodeString::extract(v15, &v13, a5, a6);
    v12[0] = v13;
    icu::UnicodeString::~UnicodeString(v12, v15);
    icu::UnicodeString::~UnicodeString(v10, v16);
  }

  else
  {
    v6 = 0;
    *a6 = 1;
  }

  return v6;
}

uint64_t udatpg_getBaseSkeleton(uint64_t a1, const UChar *a2, unsigned int a3, UChar *a4, uint64_t a5, int *a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    return 0;
  }

  if (a2 || !a3)
  {
    memset(v16, 0, sizeof(v16));
    v14 = a2;
    icu::UnicodeString::UnicodeString(v16, a3 >> 31, &v14, a3);
    v12[1] = v14;
    memset(v15, 0, sizeof(v15));
    icu::DateTimePatternGenerator::staticGetBaseSkeleton(v16, v15);
    v13 = a4;
    v6 = icu::UnicodeString::extract(v15, &v13, a5, a6);
    v12[0] = v13;
    icu::UnicodeString::~UnicodeString(v12, v15);
    icu::UnicodeString::~UnicodeString(v10, v16);
  }

  else
  {
    v6 = 0;
    *a6 = 1;
  }

  return v6;
}

uint64_t udatpg_addPattern(icu::DateTimePatternGenerator *a1, const UChar *a2, unsigned int a3, int a4, UChar *a5, uint64_t a6, _DWORD *a7, UErrorCode *a8)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a8 > 0)
  {
    return 0;
  }

  if (a2 || !a3)
  {
    memset(v26, 0, sizeof(v26));
    v20 = a2;
    icu::UnicodeString::UnicodeString(v26, a3 >> 31, &v20, a3);
    v18[1] = v20;
    v22 = 0u;
    v25 = 0;
    v24 = 0u;
    v23 = 0u;
    v21 = &unk_1F0935D00;
    LOWORD(v22) = 2;
    v8 = icu::DateTimePatternGenerator::addPattern(a1, v26, a4, &v21, a8);
    v19 = a5;
    v15 = icu::UnicodeString::extract(&v21, &v19, a6, a8);
    v18[0] = v19;
    if (a7)
    {
      *a7 = v15;
    }

    icu::UnicodeString::~UnicodeString(v18, &v21);
    icu::UnicodeString::~UnicodeString(v16, v26);
  }

  else
  {
    v8 = 0;
    *a8 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return v8;
}

void *udatpg_setAppendItemFormat(uint64_t a1, unsigned int a2, const UChar *a3, unsigned int a4)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  v8 = a3;
  icu::UnicodeString::UnicodeString(v9, a4 >> 31, &v8, a4);
  icu::DateTimePatternGenerator::setAppendItemFormat(a1, a2, v9);
  return icu::UnicodeString::~UnicodeString(v6, v9);
}

unint64_t udatpg_getAppendItemFormat(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  AppendItemFormat = icu::DateTimePatternGenerator::getAppendItemFormat(a1, a2);
  if (a3)
  {
    v5 = *(AppendItemFormat + 8);
    v6 = v5;
    v7 = v5 >> 5;
    if (v6 < 0)
    {
      v7 = *(AppendItemFormat + 12);
    }

    *a3 = v7;
  }

  v8 = *(AppendItemFormat + 8);
  if ((v8 & 0x11) != 0)
  {
    return 0;
  }

  if ((v8 & 2) != 0)
  {
    return AppendItemFormat + 10;
  }

  return *(AppendItemFormat + 24);
}

void *udatpg_setAppendItemName(uint64_t a1, unsigned int a2, const UChar *a3, unsigned int a4)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  v8 = a3;
  icu::UnicodeString::UnicodeString(v9, a4 >> 31, &v8, a4);
  icu::DateTimePatternGenerator::setAppendItemName(a1, a2, v9);
  return icu::UnicodeString::~UnicodeString(v6, v9);
}

uint64_t udatpg_getAppendItemName(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  AppendItemName = icu::DateTimePatternGenerator::getAppendItemName(a1, a2);
  if (a3)
  {
    v5 = *(AppendItemName + 8);
    v6 = v5;
    v7 = v5 >> 5;
    if (v6 < 0)
    {
      v7 = *(AppendItemName + 12);
    }

    *a3 = v7;
  }

  v8 = *(AppendItemName + 8);
  if ((v8 & 0x11) != 0)
  {
    return 0;
  }

  if ((v8 & 2) != 0)
  {
    return AppendItemName + 10;
  }

  return *(AppendItemName + 24);
}

uint64_t udatpg_getFieldDisplayName(uint64_t a1, unsigned int a2, unsigned int a3, UChar *a4, uint64_t a5, int *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    if (!a5)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      icu::DateTimePatternGenerator::getFieldDisplayName(a1, a2, a3, &v14);
      v10 = SWORD4(v14);
      if ((v10 & 0x80000000) != 0)
      {
        v9 = HIDWORD(v14);
      }

      else
      {
        v10 = WORD4(v14);
        v9 = WORD4(v14) >> 5;
      }

      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if ((a5 & 0x80000000) != 0)
  {
LABEL_7:
    *a6 = 1;
    return 0xFFFFFFFFLL;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  icu::DateTimePatternGenerator::getFieldDisplayName(a1, a2, a3, &v14);
  v13 = a4;
  v9 = icu::UnicodeString::extract(&v14, &v13, a5, a6);
  v12 = v13;
  v10 = &v12;
LABEL_5:
  icu::UnicodeString::~UnicodeString(v10, &v14);
  return v9;
}

void *udatpg_setDateTimeFormat(icu::DateTimePatternGenerator *a1, const UChar *a2, unsigned int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  v6 = a2;
  icu::UnicodeString::UnicodeString(v7, a3 >> 31, &v6, a3);
  icu::DateTimePatternGenerator::setDateTimeFormat(a1, v7);
  return icu::UnicodeString::~UnicodeString(v4, v7);
}

char *udatpg_getDateTimeFormatForStyle(uint64_t a1, unsigned int a2, unsigned int *a3, int *a4)
{
  if (*a4 < 1)
  {
    DateTimeFormat = icu::DateTimePatternGenerator::getDateTimeFormat(a1, a2, a4);
    if (a3)
    {
      v7 = *(DateTimeFormat + 4);
      v8 = v7;
      v9 = v7 >> 5;
      if (v8 < 0)
      {
        v9 = DateTimeFormat[3];
      }

      *a3 = v9;
    }

    v10 = *(DateTimeFormat + 4);
    if ((v10 & 0x11) != 0)
    {
      return 0;
    }

    else if ((v10 & 2) != 0)
    {
      return DateTimeFormat + 10;
    }

    else
    {
      return *(DateTimeFormat + 3);
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    return &unk_195493BE0;
  }
}

void *udatpg_setDateTimeFormatForStyle(void *result, unsigned int a2, const UChar *a3, unsigned int a4, int *a5)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (a3)
    {
      v7 = result;
      memset(v10, 0, sizeof(v10));
      v9 = a3;
      icu::UnicodeString::UnicodeString(v10, a4 >> 31, &v9, a4);
      icu::DateTimePatternGenerator::setDateTimeFormat(v7, a2, v10, a5);
      return icu::UnicodeString::~UnicodeString(v8, v10);
    }

    else
    {
      *a5 = 1;
    }
  }

  return result;
}

void *udatpg_setDecimal(UChar **a1, const UChar *a2, unsigned int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  v6 = a2;
  icu::UnicodeString::UnicodeString(v7, a3 >> 31, &v6, a3);
  icu::DateTimePatternGenerator::setDecimal(a1, v7);
  return icu::UnicodeString::~UnicodeString(v4, v7);
}

uint64_t udatpg_getDecimal(icu::DateTimePatternGenerator *a1, unsigned int *a2)
{
  Decimal = icu::DateTimePatternGenerator::getDecimal(a1);
  if (a2)
  {
    v4 = *(Decimal + 8);
    v5 = v4;
    v6 = v4 >> 5;
    if (v5 < 0)
    {
      v6 = *(Decimal + 12);
    }

    *a2 = v6;
  }

  v7 = *(Decimal + 8);
  if ((v7 & 0x11) != 0)
  {
    return 0;
  }

  if ((v7 & 2) != 0)
  {
    return Decimal + 10;
  }

  return *(Decimal + 24);
}

uint64_t udatpg_replaceFieldTypesWithOptions(uint64_t *a1, const UChar *a2, unsigned int a3, const UChar *a4, unsigned int a5, uint64_t a6, UChar *a7, uint64_t a8, int *a9)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a9 > 0)
  {
    return 0;
  }

  if ((a2 || !a3) && (a4 || !a5))
  {
    memset(v25, 0, sizeof(v25));
    v22 = a2;
    icu::UnicodeString::UnicodeString(v25, a3 >> 31, &v22, a3);
    v19[2] = v22;
    memset(v24, 0, sizeof(v24));
    v21 = a4;
    icu::UnicodeString::UnicodeString(v24, a5 >> 31, &v21, a5);
    v19[1] = v21;
    memset(v23, 0, sizeof(v23));
    icu::DateTimePatternGenerator::replaceFieldTypes(a1, v25, v24, a6, a9, v23);
    v20 = a7;
    v9 = icu::UnicodeString::extract(v23, &v20, a8, a9);
    v19[0] = v20;
    icu::UnicodeString::~UnicodeString(v19, v23);
    icu::UnicodeString::~UnicodeString(v16, v24);
    icu::UnicodeString::~UnicodeString(v17, v25);
  }

  else
  {
    v9 = 0;
    *a9 = 1;
  }

  return v9;
}

_OWORD *udatpg_openSkeletons(icu::DateTimePatternGenerator *a1, UErrorCode *a2)
{
  Skeletons = icu::DateTimePatternGenerator::getSkeletons(a1, a2);

  return uenum_openFromStringEnumeration(Skeletons, a2);
}

_OWORD *udatpg_openBaseSkeletons(icu::DateTimePatternGenerator *a1, UErrorCode *a2)
{
  BaseSkeletons = icu::DateTimePatternGenerator::getBaseSkeletons(a1, a2);

  return uenum_openFromStringEnumeration(BaseSkeletons, a2);
}

char *udatpg_getPatternForSkeleton(icu::DateTimePatternGenerator *a1, const UChar *a2, unsigned int a3, unsigned int *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  v13 = a2;
  icu::UnicodeString::UnicodeString(v14, a3 >> 31, &v13, a3);
  PatternForSkeleton = icu::DateTimePatternGenerator::getPatternForSkeleton(a1, v14);
  if (a4)
  {
    v7 = *(PatternForSkeleton + 4);
    v8 = v7;
    v9 = v7 >> 5;
    if (v8 < 0)
    {
      v9 = *(PatternForSkeleton + 3);
    }

    *a4 = v9;
  }

  v10 = *(PatternForSkeleton + 4);
  if ((v10 & 0x11) != 0)
  {
    v11 = 0;
  }

  else if ((v10 & 2) != 0)
  {
    v11 = PatternForSkeleton + 10;
  }

  else
  {
    v11 = PatternForSkeleton[3];
  }

  icu::UnicodeString::~UnicodeString(v10, v14);
  return v11;
}

uint64_t uadatpg_remapPatternWithOptions(_DWORD *a1, const UChar *a2, unsigned int a3, uint64_t a4, UChar *a5, uint64_t a6, UErrorCode *a7)
{
  v54 = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    if (a2)
    {
      v11 = a4;
      if (a5)
      {
        if ((a6 & 0x80000000) == 0)
        {
LABEL_6:
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v37 = a2;
          icu::UnicodeString::UnicodeString(&v50, a3 >> 31, &v37, a3);
          v35[1] = v37;
          if ((v11 & 0x60000000) == 0x40000000 || (v11 & 0x60000000) == 0x20000000)
          {
            v46 = 0u;
            v49 = 0;
            v48 = 0u;
            v47 = 0u;
            v44 = 0;
            v45 = &unk_1F0935D00;
            LOWORD(v46) = 2;
            v41 = 0u;
            v43 = 0u;
            v42 = 0u;
            v40 = &unk_1F0935D00;
            LOWORD(v41) = 2;
            memset(v39, 0, sizeof(v39));
            icu::UnicodeString::UnicodeString(v39, "abBhHKkmsSzZOvVXx", -1);
            v13 = (WORD4(v50) >> 5);
            if ((SWORD4(v50) & 0x8000u) == 0)
            {
              v14 = WORD4(v50) >> 5;
            }

            else
            {
              v14 = HIDWORD(v50);
            }

            if (v14 >= 1)
            {
              v31 = v11 & 0x60000000;
              v32 = 0;
              v15 = 0;
              v16 = 0;
              v29 = 0;
              v30 = 0;
              v17 = 0;
              v33 = 0;
              v34 = -1;
              while (1)
              {
                if ((SWORD4(v50) & 0x8000u) == 0)
                {
                  v18 = WORD4(v50) >> 5;
                }

                else
                {
                  v18 = HIDWORD(v50);
                }

                if (v18 <= v16)
                {
                  v20 = 0xFFFF;
                }

                else
                {
                  if ((BYTE8(v50) & 2) != 0)
                  {
                    v19 = &v50 | 0xA;
                  }

                  else
                  {
                    v19 = *(&v51 + 1);
                  }

                  v20 = *(v19 + 2 * v16);
                  if (v20 == 39)
                  {
                    v15 = !v15;
                    goto LABEL_61;
                  }
                }

                if (v15)
                {
                  v15 = 1;
                }

                else
                {
                  if ((SWORD4(v39[0]) & 0x8000u) == 0)
                  {
                    v21 = WORD4(v39[0]) >> 5;
                  }

                  else
                  {
                    v21 = HIDWORD(v39[0]);
                  }

                  if ((icu::UnicodeString::doIndexOf(v39, v20, 0, v21) & 0x80000000) == 0)
                  {
                    if (!v17)
                    {
                      v32 = 0;
                      if (v46)
                      {
                        v22 = 2;
                      }

                      else
                      {
                        v22 = v46 & 0x1E;
                      }

                      LOWORD(v46) = v22;
                      if (v41)
                      {
                        v23 = 2;
                      }

                      else
                      {
                        v23 = v41 & 0x1E;
                      }

                      LOWORD(v41) = v23;
                      v34 = -1;
                      LODWORD(v30) = v16;
                    }

                    if (v20 > 103)
                    {
                      if (v20 != 107)
                      {
                        if (v20 == 104)
                        {
                          goto LABEL_49;
                        }

LABEL_40:
                        if (v34 < 0 && (v20 == 115 || v20 == 109))
                        {
                          v34 = v16;
                        }

                        goto LABEL_54;
                      }
                    }

                    else if (v20 != 72)
                    {
                      if (v20 != 75)
                      {
                        goto LABEL_40;
                      }

LABEL_49:
                      if (v31 == 0x40000000)
                      {
                        v34 = v16 + 1;
                        ++v32;
                        v24 = 72;
                        goto LABEL_53;
                      }

LABEL_54:
                      v24 = v20;
LABEL_55:
                      v38 = v20;
                      icu::UnicodeString::doAppend(&v45, &v38, 0, 1);
                      v38 = v24;
                      icu::UnicodeString::doAppend(&v40, &v38, 0, 1);
LABEL_56:
                      if (u_isUWhiteSpace(v20) || (HIDWORD(v30) = v16 + 1, v34 < 0) || (v20 - 66) <= 0x20 && ((1 << (v20 - 66)) & 0x180000001) != 0)
                      {
                        v15 = 0;
                        v17 = 1;
                      }

                      else
                      {
                        v15 = 0;
                        v17 = 1;
                        v29 = v16 + 1;
                      }

                      goto LABEL_61;
                    }

                    if (v31 != 0x20000000)
                    {
                      goto LABEL_54;
                    }

                    v34 = v16 + 1;
                    v24 = 104;
LABEL_53:
                    v33 = 1;
                    goto LABEL_55;
                  }

                  if ((v20 - 65) >= 0x1A)
                  {
                    if ((v20 - 97) <= 0x19 && v17)
                    {
LABEL_65:
                      v15 = v33;
                      if (v33)
                      {
                        v25 = sub_1954092B8(a1, v11, v32 > 1, &v50, &v45, &v40, v30, SHIDWORD(v30), v34, v29, a7);
                        v17 = 0;
                        v33 = 0;
                        v15 = 0;
                        v14 += v25;
                        v16 += v25;
                      }

                      else
                      {
                        v17 = 0;
                        v33 = 0;
                      }

                      goto LABEL_61;
                    }

                    if (v17)
                    {
                      goto LABEL_56;
                    }
                  }

                  else if (v17)
                  {
                    goto LABEL_65;
                  }

                  v15 = 0;
                }

LABEL_61:
                if (++v16 >= v14)
                {
                  v13 = v33;
                  if (v33)
                  {
                    sub_1954092B8(a1, v11, v32 > 1, &v50, &v45, &v40, v30, SHIDWORD(v30), v34, v29, a7);
                  }

                  break;
                }
              }
            }

            icu::UnicodeString::~UnicodeString(v13, v39);
            icu::UnicodeString::~UnicodeString(v26, &v40);
            icu::UnicodeString::~UnicodeString(v27, &v45);
          }

          v36 = a5;
          v7 = icu::UnicodeString::extract(&v50, &v36, a6, a7);
          v35[0] = v36;
          icu::UnicodeString::~UnicodeString(v35, &v50);
          return v7;
        }
      }

      else if (!a6)
      {
        goto LABEL_6;
      }
    }

    v7 = 0;
    *a7 = U_ILLEGAL_ARGUMENT_ERROR;
    return v7;
  }

  return 0;
}

uint64_t sub_1954092B8(_DWORD *a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, UErrorCode *a11)
{
  v57 = *MEMORY[0x1E69E9840];
  v55 = 0u;
  v56 = 0u;
  if (a3)
  {
    v16 = a2 | 0x800;
  }

  else
  {
    v16 = a2;
  }

  v53 = 0uLL;
  v54 = 0uLL;
  icu::DateTimePatternGenerator::getBestPattern(a1, a6, v16, a11, &v53);
  v17 = *a11;
  if (v17 > 0)
  {
    v18 = 0;
    goto LABEL_81;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  icu::DateTimePatternGenerator::getBestPattern(a1, a5, 0xFFFFLL, a11, &v49);
  if (*a11 <= 0)
  {
    if ((SWORD4(v49) & 0x8000u) == 0)
    {
      v31 = WORD4(v49) >> 5;
    }

    else
    {
      v31 = HIDWORD(v49);
    }

    if ((BYTE8(v49) & 1) == 0 && v31 >= 1)
    {
      v32 = *(a4 + 8);
      v33 = v32;
      v34 = v32 >> 5;
      v35 = v33 >= 0 ? v34 : *(a4 + 12);
      v36 = (BYTE8(v49) & 2) != 0 ? &v49 | 0xA : *(&v50 + 1);
      v37 = icu::UnicodeString::indexOf(a4, v36, 0, v31, 0, v35);
      if ((v37 & 0x80000000) == 0)
      {
        if ((SWORD4(v49) & 0x8000u) == 0)
        {
          v38 = WORD4(v49) >> 5;
        }

        else
        {
          v38 = HIDWORD(v49);
        }

        if ((SWORD4(v53) & 0x8000u) == 0)
        {
          v39 = WORD4(v53) >> 5;
        }

        else
        {
          v39 = HIDWORD(v53);
        }

        icu::UnicodeString::doReplace(a4, v37, v38, &v53, 0, v39);
        LODWORD(v40) = WORD4(v53) >> 5;
        if ((SWORD4(v53) & 0x8000u) == 0)
        {
          v40 = v40;
        }

        else
        {
          v40 = HIDWORD(v53);
        }

        v18 = (v40 - v38);
        goto LABEL_80;
      }
    }
  }

  else
  {
    *a11 = U_ZERO_ERROR;
  }

  if (a9 < 0 || a10 <= a9)
  {
    goto LABEL_73;
  }

  v45 = 0u;
  v48 = 0;
  v47 = 0u;
  v46 = 0u;
  v44 = &unk_1F0935D00;
  LOWORD(v45) = 2;
  (*(*a4 + 24))(a4);
  v19 = WORD4(v53) >> 5;
  if ((SWORD4(v53) & 0x8000u) == 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = HIDWORD(v53);
  }

  if (v20 < 1)
  {
    goto LABEL_72;
  }

  v21 = 0;
  v22 = 0;
  LOBYTE(v19) = 0;
  v23 = 0;
  v24 = 0xFFFFFFFFLL;
  do
  {
    if ((SWORD4(v53) & 0x8000u) == 0)
    {
      v25 = WORD4(v53) >> 5;
    }

    else
    {
      v25 = HIDWORD(v53);
    }

    if (v21 >= v25)
    {
      v27 = 0xFFFF;
    }

    else
    {
      if ((BYTE8(v53) & 2) != 0)
      {
        v26 = &v53 | 0xA;
      }

      else
      {
        v26 = *(&v54 + 1);
      }

      v27 = *(v26 + 2 * v21);
      if (v27 == 39)
      {
        v19 = v19 == 0;
        goto LABEL_38;
      }
    }

    if (v19)
    {
      v19 = 1;
    }

    else
    {
      if ((v27 - 72) <= 0x23 && ((1 << (v27 - 72)) & 0x900000009) != 0)
      {
        v24 = (v22 + 1);
      }

      else if ((v24 & 0x80000000) != 0 && (v27 == 115 || v27 == 109))
      {
        v24 = v21;
      }

      isUWhiteSpace = u_isUWhiteSpace(v27);
      v19 = 0;
      if (v24 > -1 && isUWhiteSpace == 0 && v27 != 97)
      {
        v23 = v21 + 1;
      }
    }

LABEL_38:
    ++v21;
    ++v22;
  }

  while (v20 != v21);
  if ((v24 & 0x80000000) == 0 && v23 > v24)
  {
    if ((v45 & 0x8000u) == 0)
    {
      v41 = v45 >> 5;
    }

    else
    {
      v41 = DWORD1(v45);
    }

    icu::UnicodeString::doReplace(&v53, v24, (v23 - v24), &v44, 0, v41);
  }

LABEL_72:
  icu::UnicodeString::~UnicodeString(v19, &v44);
LABEL_73:
  if ((SWORD4(v53) & 0x8000u) == 0)
  {
    v42 = WORD4(v53) >> 5;
  }

  else
  {
    v42 = HIDWORD(v53);
  }

  icu::UnicodeString::doReplace(a4, a7, (a8 - a7), &v53, 0, v42);
  LODWORD(v40) = WORD4(v53) >> 5;
  if ((SWORD4(v53) & 0x8000u) == 0)
  {
    v40 = v40;
  }

  else
  {
    v40 = HIDWORD(v53);
  }

  v18 = (a7 - a8 + v40);
LABEL_80:
  icu::UnicodeString::~UnicodeString(v40, &v49);
LABEL_81:
  icu::UnicodeString::~UnicodeString(v17, &v53);
  return v18;
}

uint64_t ufieldpositer_open(int *a1)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t ufieldpositer_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ufieldpositer_next(icu::FieldPositionIterator *a1, _DWORD *a2, _DWORD *a3)
{
  v10 = 0;
  v8 = &unk_1F093AD90;
  v9 = 0xFFFFFFFFLL;
  if (icu::FieldPositionIterator::next(a1, &v8))
  {
    v6 = v9;
    if (a2)
    {
      v5 = HIDWORD(v9);
      *a2 = HIDWORD(v9);
    }

    if (a3)
    {
      v5 = v10;
      *a3 = v10;
    }
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  icu::FieldPosition::~FieldPosition(v5, &v8);
  return v6;
}

void icu::UIterCollationIterator::~UIterCollationIterator(icu::UIterCollationIterator *this@<X0>, void *a2@<X8>)
{
  icu::CollationIterator::~CollationIterator(this, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::UIterCollationIterator::resetToOffset(icu::UIterCollationIterator *this)
{
  icu::CollationIterator::reset(this);
  v2 = *(*(this + 49) + 40);

  return v2();
}

uint64_t icu::UIterCollationIterator::handleNextCE32(icu::UIterCollationIterator *this, unsigned int *a2, UErrorCode *a3)
{
  v5 = (*(*(this + 49) + 72))();
  *a2 = v5;
  if ((v5 & 0x80000000) != 0)
  {
    return 192;
  }

  else
  {
    return *(*(*(this + 1) + 16) + 4 * ((v5 & 0x1F) + 4 * *(**(this + 1) + 2 * (v5 >> 5))));
  }
}

uint64_t icu::UIterCollationIterator::handleGetTrailSurrogate(icu::UIterCollationIterator *this)
{
  v2 = (*(*(this + 49) + 72))();
  v3 = v2;
  if ((v2 & 0x80000000) == 0 && (v2 & 0xFFFFFC00) != 0xDC00)
  {
    (*(*(this + 49) + 80))();
  }

  return v3;
}

uint64_t icu::UIterCollationIterator::forwardNumCodePoints(uint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v3 = a2;
    v4 = this;
    do
    {
      this = uiter_next32(*(v4 + 392));
      v5 = __OFSUB__(v3--, 1);
    }

    while ((this & 0x80000000) == 0 && !((v3 < 0) ^ v5 | (v3 == 0)));
  }

  return this;
}

uint64_t icu::UIterCollationIterator::backwardNumCodePoints(uint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v3 = a2;
    v4 = this;
    do
    {
      this = uiter_previous32(*(v4 + 392));
      v5 = __OFSUB__(v3--, 1);
    }

    while ((this & 0x80000000) == 0 && !((v3 < 0) ^ v5 | (v3 == 0)));
  }

  return this;
}

void icu::FCDUIterCollationIterator::~FCDUIterCollationIterator(icu::FCDUIterCollationIterator *this@<X0>, void *a2@<X8>)
{
  *this = &unk_1F09440D0;
  icu::UnicodeString::~UnicodeString(a2, (this + 424));

  icu::CollationIterator::~CollationIterator(this, v3);
}

{
  *this = &unk_1F09440D0;
  icu::UnicodeString::~UnicodeString(a2, (this + 424));

  icu::CollationIterator::~CollationIterator(this, v3);
}

{
  *this = &unk_1F09440D0;
  icu::UnicodeString::~UnicodeString(a2, (this + 424));
  icu::CollationIterator::~CollationIterator(this, v3);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::FCDUIterCollationIterator::resetToOffset(icu::FCDUIterCollationIterator *this, int a2)
{
  icu::CollationIterator::reset(this);
  result = (*(*(this + 49) + 40))();
  *(this + 101) = a2;
  *(this + 100) = 0;
  return result;
}

uint64_t icu::FCDUIterCollationIterator::getOffset(icu::FCDUIterCollationIterator *this)
{
  v2 = *(this + 100);
  if (v2 <= 1)
  {
    return (*(*(this + 49) + 32))();
  }

  result = *(this + 102);
  if (v2 != 2)
  {
    if (result)
    {
      return *(this + 103);
    }

    else
    {
      return *(this + 101);
    }
  }

  return result;
}

uint64_t icu::FCDUIterCollationIterator::handleNextCE32(icu::FCDUIterCollationIterator *this, int *a2, UErrorCode *a3)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 100);
      if (v6 == 2)
      {
        if (*(this + 102) != *(this + 103))
        {
          *a2 = (*(*(this + 49) + 72))();
          ++*(this + 102);
          return *(*(*(this + 1) + 16) + 4 * ((*a2 & 0x1F) + 4 * *(**(this + 1) + 2 * (*a2 >> 5))));
        }

        goto LABEL_20;
      }

      if (v6)
      {
        break;
      }

      v7 = (*(*(this + 49) + 72))();
      *a2 = v7;
      if ((v7 & 0x80000000) != 0)
      {
        return 192;
      }

      if (v7 < 0xC0)
      {
        return *(*(*(this + 1) + 16) + 4 * ((*a2 & 0x1F) + 4 * *(**(this + 1) + 2 * (*a2 >> 5))));
      }

      if (!icu::CollationFCD::tcccIndex[v7 >> 5])
      {
        return *(*(*(this + 1) + 16) + 4 * ((*a2 & 0x1F) + 4 * *(**(this + 1) + 2 * (*a2 >> 5))));
      }

      if (((icu::CollationFCD::tcccBits[icu::CollationFCD::tcccIndex[v7 >> 5]] >> v7) & 1) == 0)
      {
        return *(*(*(this + 1) + 16) + 4 * ((*a2 & 0x1F) + 4 * *(**(this + 1) + 2 * (*a2 >> 5))));
      }

      if ((v7 & 0x1FFF01) != 0xF01)
      {
        v8 = (*(*(this + 49) + 64))();
        if (v8 < 768 || !icu::CollationFCD::lcccIndex[v8 >> 5] || ((icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[v8 >> 5]] >> v8) & 1) == 0)
        {
          return *(*(*(this + 1) + 16) + 4 * ((*a2 & 0x1F) + 4 * *(**(this + 1) + 2 * (*a2 >> 5))));
        }
      }

      (*(*(this + 49) + 80))();
      if (!icu::FCDUIterCollationIterator::nextSegment(this, a3))
      {
        *a2 = -1;
        return 192;
      }
    }

    if (v6 < 3)
    {
      goto LABEL_20;
    }

    v9 = *(this + 102);
    v10 = *(this + 216);
    if ((*(this + 216) & 0x80000000) == 0)
    {
      break;
    }

    v12 = *(this + 109);
    if (v9 != v12)
    {
      goto LABEL_22;
    }

LABEL_20:
    icu::FCDUIterCollationIterator::switchToForward(this);
  }

  if (v9 == v10 >> 5)
  {
    goto LABEL_20;
  }

  v12 = v10 >> 5;
LABEL_22:
  *(this + 102) = v9 + 1;
  if (v12 <= v9)
  {
    v14 = 0xFFFF;
  }

  else
  {
    if ((v10 & 2) != 0)
    {
      v13 = this + 434;
    }

    else
    {
      v13 = *(this + 56);
    }

    v14 = *&v13[2 * v9];
  }

  *a2 = v14;
  return *(*(*(this + 1) + 16) + 4 * ((*a2 & 0x1F) + 4 * *(**(this + 1) + 2 * (*a2 >> 5))));
}

uint64_t icu::FCDUIterCollationIterator::nextSegment(icu::FCDUIterCollationIterator *this, UErrorCode *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = 0;
  *(this + 102) = (*(*(this + 49) + 32))();
  v22 = 0u;
  v23 = 0u;
  v25 = 0;
  v24 = 0u;
  v21 = &unk_1F0935D00;
  LOWORD(v22) = 2;
  while (1)
  {
    v6 = uiter_next32(*(this + 49));
    if (v6 < 0)
    {
      goto LABEL_23;
    }

    v7 = v6;
    v8 = sub_1951FAB08(*(this + 52), v6);
    v9 = v8;
    if (v8 > 0xFF)
    {
      break;
    }

    if (v22 > 0x1Fu)
    {
      uiter_previous32(*(this + 49));
LABEL_23:
      v15 = *(this + 102);
      if (v22 < 0)
      {
        v16 = DWORD1(v22) + v15;
      }

      else
      {
        v16 = v15 + (v22 >> 5);
      }

      *(this + 103) = v16;
      v2 = 1;
      (*(*(this + 49) + 40))();
      v17 = 2;
      *(this + 100) = 2;
      goto LABEL_33;
    }

    icu::UnicodeString::append(&v21, v7);
LABEL_15:
    v5 = v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v10 = v8 >> 8;
  icu::UnicodeString::append(&v21, v7);
  if (v10 >= v5 && v9 != 33156 && v9 != 33154)
  {
    goto LABEL_15;
  }

  v13 = uiter_next32(*(this + 49));
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v13;
    while (sub_1951FAB08(*(this + 52), v14) > 0xFF)
    {
      icu::UnicodeString::append(&v21, v14);
      v14 = uiter_next32(*(this + 49));
      if (v14 < 0)
      {
        goto LABEL_28;
      }
    }

    uiter_previous32(*(this + 49));
  }

LABEL_28:
  icu::Normalizer2Impl::decompose(*(this + 52), &v21, (this + 424), a2);
  v17 = *a2;
  if (v17 <= 0)
  {
    v18 = *(this + 102);
    *(this + 101) = v18;
    v19 = v22 >> 5;
    if ((v22 & 0x8000u) != 0)
    {
      v19 = DWORD1(v22);
    }

    *(this + 103) = v19 + v18;
    v17 = 3;
    *(this + 100) = 3;
    *(this + 102) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

LABEL_33:
  icu::UnicodeString::~UnicodeString(v17, &v21);
  return v2;
}

uint64_t icu::FCDUIterCollationIterator::switchToForward(uint64_t this)
{
  v1 = this;
  v2 = *(this + 400);
  if (v2 == 4)
  {
    this = (*(*(this + 392) + 40))();
    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v4 = 0;
    goto LABEL_8;
  }

  if (v2 != 1)
  {
LABEL_7:
    v4 = 0;
    v1[101] = v1[103];
    goto LABEL_8;
  }

  this = (*(*(this + 392) + 32))();
  v3 = this != v1[103];
  v1[102] = this;
  v1[101] = this;
  v4 = 2 * v3;
LABEL_8:
  v1[100] = v4;
  return this;
}

uint64_t icu::FCDUIterCollationIterator::handleGetTrailSurrogate(icu::FCDUIterCollationIterator *this)
{
  if (*(this + 100) > 2)
  {
    v4 = *(this + 102);
    v5 = *(this + 216);
    if (*(this + 216) < 0)
    {
      v6 = *(this + 109);
    }

    else
    {
      v6 = v5 >> 5;
    }

    if (v6 <= v4)
    {
      return 0xFFFFLL;
    }

    else
    {
      if ((v5 & 2) != 0)
      {
        v8 = this + 434;
      }

      else
      {
        v8 = *(this + 56);
      }

      result = *&v8[2 * v4];
      if ((result & 0xFC00) == 0xDC00)
      {
        *(this + 102) = v4 + 1;
      }
    }
  }

  else
  {
    v2 = (*(*(this + 49) + 72))();
    v3 = v2;
    if (v2 >> 10 == 55)
    {
      if (*(this + 100) == 2)
      {
        ++*(this + 102);
      }
    }

    else if ((v2 & 0x80000000) == 0)
    {
      (*(*(this + 49) + 80))();
    }

    return v3;
  }

  return result;
}

uint64_t icu::FCDUIterCollationIterator::nextCodePoint(icu::FCDUIterCollationIterator *this, UErrorCode *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 100);
      if (v4 == 2)
      {
        if (*(this + 102) == *(this + 103))
        {
          goto LABEL_20;
        }

        v11 = uiter_next32(*(this + 49));
LABEL_27:
        v6 = v11;
        if (v11 < 0x10000)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        *(this + 102) += v12;
        return v6;
      }

      if (!v4)
      {
        break;
      }

      if (v4 >= 3)
      {
        v8 = *(this + 216) < 0 ? *(this + 109) : *(this + 216) >> 5;
        v9 = *(this + 102);
        if (v9 != v8)
        {
          v11 = icu::UnicodeString::char32At((this + 424), v9);
          goto LABEL_27;
        }
      }

LABEL_20:
      icu::FCDUIterCollationIterator::switchToForward(this);
    }

    v5 = (*(*(this + 49) + 72))();
    v6 = v5;
    if ((v5 & 0x80000000) != 0)
    {
      return v6;
    }

    if (v5 < 0xC0)
    {
      break;
    }

    if (!icu::CollationFCD::tcccIndex[v5 >> 5])
    {
      break;
    }

    if (((icu::CollationFCD::tcccBits[icu::CollationFCD::tcccIndex[v5 >> 5]] >> v5) & 1) == 0)
    {
      break;
    }

    if ((v5 & 0x1FFF01) != 0xF01)
    {
      v7 = (*(*(this + 49) + 64))();
      if (v7 < 768 || !icu::CollationFCD::lcccIndex[v7 >> 5] || ((icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[v7 >> 5]] >> v7) & 1) == 0)
      {
        break;
      }
    }

    (*(*(this + 49) + 80))();
    if (!icu::FCDUIterCollationIterator::nextSegment(this, a2))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if ((v6 & 0x7FFFFC00) == 0xD800)
  {
    v10 = (*(*(this + 49) + 72))();
    if (v10 >> 10 == 55)
    {
      return v10 + (v6 << 10) - 56613888;
    }

    else if ((v10 & 0x80000000) == 0)
    {
      (*(*(this + 49) + 80))();
    }
  }

  return v6;
}

uint64_t icu::FCDUIterCollationIterator::previousCodePoint(icu::FCDUIterCollationIterator *this, UErrorCode *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 100);
      if (v4 != 2)
      {
        break;
      }

      if (*(this + 102) != *(this + 101))
      {
        v10 = uiter_previous32(*(this + 49));
LABEL_31:
        v6 = v10;
        if (v10 >= 0x10000)
        {
          v11 = -2;
        }

        else
        {
          v11 = -1;
        }

        *(this + 102) += v11;
        return v6;
      }

LABEL_13:
      icu::FCDUIterCollationIterator::switchToBackward(this);
    }

    if (v4 != 1)
    {
      if (v4 >= 3)
      {
        v8 = *(this + 102);
        if (v8)
        {
          v10 = icu::UnicodeString::char32At((this + 424), v8 - 1);
          goto LABEL_31;
        }
      }

      goto LABEL_13;
    }

    v5 = (*(*(this + 49) + 80))();
    if ((v5 & 0x80000000) != 0)
    {
      *(this + 102) = 0;
      *(this + 50) = 2;
      return 0xFFFFFFFFLL;
    }

    v6 = v5;
    if (v5 < 0x300 || !icu::CollationFCD::lcccIndex[v5 >> 5] || ((icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[v5 >> 5]] >> v5) & 1) == 0)
    {
      return v6;
    }

    if ((v5 & 0x1FFF01) != 0xF01)
    {
      break;
    }

    v7 = -1;
LABEL_17:
    (*(*(this + 49) + 72))();
    if ((v7 & 0x80000000) == 0)
    {
      (*(*(this + 49) + 72))();
    }

    if (!icu::FCDUIterCollationIterator::previousSegment(this, a2))
    {
      return 0xFFFFFFFFLL;
    }
  }

  v9 = (*(*(this + 49) + 80))();
  v7 = v9;
  if (v9 >= 192 && icu::CollationFCD::tcccIndex[v9 >> 5] && ((icu::CollationFCD::tcccBits[icu::CollationFCD::tcccIndex[v9 >> 5]] >> v9) & 1) != 0)
  {
    goto LABEL_17;
  }

  if ((v6 & 0x7FFFFC00) != 0xDC00)
  {
    goto LABEL_28;
  }

  if (v9 < 0)
  {
    v7 = (*(*(this + 49) + 80))();
  }

  if (v7 >> 10 == 54)
  {
    return v6 + (v7 << 10) - 56613888;
  }

LABEL_28:
  if ((v7 & 0x80000000) == 0)
  {
    (*(*(this + 49) + 72))();
  }

  return v6;
}

uint64_t icu::FCDUIterCollationIterator::previousSegment(icu::FCDUIterCollationIterator *this, UErrorCode *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    return 0;
  }

  LOBYTE(v5) = 0;
  *(this + 102) = (*(*(this + 49) + 32))();
  v22 = 0u;
  v23 = 0u;
  v25 = 0;
  v24 = 0u;
  v21 = &unk_1F0935D00;
  LOWORD(v22) = 2;
  while (1)
  {
    v6 = uiter_previous32(*(this + 49));
    if (v6 < 0)
    {
      goto LABEL_33;
    }

    v7 = v6;
    v8 = sub_1951FAB08(*(this + 52), v6);
    if (!v8)
    {
      if (v22 > 0x1Fu)
      {
        uiter_next32(*(this + 49));
LABEL_33:
        if ((v22 & 0x8000u) == 0)
        {
          v19 = v22 >> 5;
        }

        else
        {
          v19 = DWORD1(v22);
        }

        *(this + 101) = *(this + 102) - v19;
        v2 = 1;
        (*(*(this + 49) + 40))();
        v15 = 2;
        *(this + 100) = 2;
        goto LABEL_39;
      }

      icu::UnicodeString::append(&v21, v7);
      goto LABEL_16;
    }

    icu::UnicodeString::append(&v21, v7);
    if (v5 && v8 > v5)
    {
      if (v8 >= 0x100)
      {
        break;
      }

      goto LABEL_24;
    }

    if (v8 == 33154 || v8 == 33156)
    {
      break;
    }

LABEL_16:
    v5 = v8 >> 8;
    if (v8 <= 0xFF)
    {
      goto LABEL_33;
    }
  }

  do
  {
    v10 = uiter_previous32(*(this + 49));
    if (v10 < 0)
    {
      break;
    }

    v11 = v10;
    v12 = sub_1951FAB08(*(this + 52), v10);
    if (!v12)
    {
      uiter_next32(*(this + 49));
      break;
    }

    v13 = v12;
    icu::UnicodeString::append(&v21, v11);
  }

  while (v13 > 0xFF);
LABEL_24:
  if ((v22 & 0x8000u) == 0)
  {
    v14 = v22 >> 5;
  }

  else
  {
    v14 = DWORD1(v22);
  }

  icu::UnicodeString::doReverse(&v21, 0, v14);
  icu::Normalizer2Impl::decompose(*(this + 52), &v21, (this + 424), a2);
  v2 = 0;
  v15 = *a2;
  if (v15 <= 0)
  {
    v16 = *(this + 102);
    *(this + 103) = v16;
    v17 = v22 >> 5;
    if ((v22 & 0x8000u) != 0)
    {
      v17 = DWORD1(v22);
    }

    *(this + 101) = v16 - v17;
    *(this + 100) = 4;
    v18 = *(this + 216);
    if ((v18 & 0x8000) != 0)
    {
      v15 = *(this + 109);
    }

    else
    {
      v15 = v18 >> 5;
    }

    *(this + 102) = v15;
    v2 = 1;
  }

LABEL_39:
  icu::UnicodeString::~UnicodeString(v15, &v21);
  return v2;
}

uint64_t icu::FCDUIterCollationIterator::switchToBackward(uint64_t this)
{
  v1 = this;
  v2 = *(this + 400);
  if (v2 == 3)
  {
    this = (*(*(this + 392) + 40))();
    goto LABEL_8;
  }

  if (v2 == 2)
  {
LABEL_9:
    v3 = 1;
    goto LABEL_10;
  }

  if (v2)
  {
LABEL_8:
    v1[103] = v1[101];
    goto LABEL_9;
  }

  this = (*(*(this + 392) + 32))();
  v1[102] = this;
  v1[103] = this;
  if (this == v1[101])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

LABEL_10:
  v1[100] = v3;
  return this;
}

uint64_t icu::FCDUIterCollationIterator::forwardNumCodePoints(uint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = this;
    do
    {
      this = icu::FCDUIterCollationIterator::nextCodePoint(v5, a3);
      v6 = __OFSUB__(v4--, 1);
    }

    while ((this & 0x80000000) == 0 && !((v4 < 0) ^ v6 | (v4 == 0)));
  }

  return this;
}

uint64_t icu::FCDUIterCollationIterator::backwardNumCodePoints(uint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = this;
    do
    {
      this = icu::FCDUIterCollationIterator::previousCodePoint(v5, a3);
      v6 = __OFSUB__(v4--, 1);
    }

    while ((this & 0x80000000) == 0 && !((v4 < 0) ^ v6 | (v4 == 0)));
  }

  return this;
}

void *ulistfmt_open(char *a1, UErrorCode *a2)
{
  v8[28] = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    return 0;
  }

  icu::Locale::Locale(v8, a1, 0, 0, 0);
  Instance = icu::ListFormatter::createInstance(v8, a2, v5, v6);
  icu::Locale::~Locale(v7, v8);
  if (*a2 >= 1 && Instance)
  {
    (*(*Instance + 8))(Instance);
    return 0;
  }

  return Instance;
}

void *ulistfmt_openForType(char *a1, int a2, int a3, UErrorCode *a4)
{
  v10[28] = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    return 0;
  }

  icu::Locale::Locale(v10, a1, 0, 0, 0);
  Instance = icu::ListFormatter::createInstance(v10, a2, a3, a4);
  icu::Locale::~Locale(v9, v10);
  if (*a4 >= 1 && Instance)
  {
    (*(*Instance + 8))(Instance);
    return 0;
  }

  return Instance;
}

void *ulistfmt_openWithPatterns(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, UErrorCode *a10)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*a10 <= 0)
  {
    memset(v28, 0, sizeof(v28));
    icu::Locale::Locale(v28, a1, 0, 0, 0);
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    icu::UnicodeString::UnicodeString(v25, a2, a3);
    icu::UnicodeString::UnicodeString(v24, a4, a5);
    icu::UnicodeString::UnicodeString(v23, a6, a7);
    icu::UnicodeString::UnicodeString(v22, a8, a9);
    sub_19540B374(v26, v25, v24, v23, v22, v28);
    icu::UnicodeString::~UnicodeString(v17, v22);
    icu::UnicodeString::~UnicodeString(v18, v23);
    icu::UnicodeString::~UnicodeString(v19, v24);
    icu::UnicodeString::~UnicodeString(v20, v25);
    operator new();
  }

  return 0;
}

uint64_t ulistfmt_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ulistfmt_openResult(int *a1)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t ulistfmt_resultAsValue(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 > 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (result)
  {
    if (*(result + 16) == 1179407188)
    {
      goto LABEL_8;
    }

    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  result = 0;
  *a2 = v2;
LABEL_8:
  if (v2 >= 1)
  {
    return 0;
  }

  return result;
}

_DWORD *ulistfmt_closeResult(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if (result[4] == 1179407188)
    {
      icu::FormattedList::~FormattedList((result + 6));
      v1[4] = 0;
      *v1 = 0;

      JUMPOUT(0x19A8B2600);
    }
  }

  return result;
}

uint64_t ulistfmt_format(icu::ListFormatter *a1, const UChar **a2, unsigned int *a3, unsigned int a4, char *a5, uint64_t a6, UErrorCode *a7)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a6;
  if (a5)
  {
    if ((a6 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    *a7 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0xFFFFFFFFLL;
  }

  if (a6)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = 0;
  memset(v25, 0, sizeof(v25));
  do
  {
    v13 = &v25[v12];
    *v13 = &unk_1F0935D00;
    *(v13 + 4) = 2;
    v12 += 4;
  }

  while (v12 != 16);
  v19 = 0;
  v14 = sub_19540B064(a2, a3, a4, v25, &v19, a7);
  if (*a7 <= 0)
  {
    v16 = v14;
    v21 = 0u;
    v24 = 0;
    v23 = 0u;
    v22 = 0u;
    v20 = &unk_1F0935D00;
    LOWORD(v21) = 2;
    if (a5)
    {
      icu::UnicodeString::setTo(&v20, a5, 0, v8);
    }

    icu::ListFormatter::format(a1, v16, a4, &v20, a7);
  }

  sub_1951DB10C(&v19);
  for (i = 12; i != -4; i -= 4)
  {
    icu::UnicodeString::~UnicodeString(v17, &v25[i]);
  }

  return 0xFFFFFFFFLL;
}

icu::UnicodeString *sub_19540B064(const UChar **a1, unsigned int *a2, unsigned int a3, icu::UnicodeString *this, icu::UnicodeString **a5, int *a6)
{
  if ((a3 & 0x80000000) != 0 || (v6 = this, v7 = a2, (v8 = a1) == 0) && a3)
  {
    v6 = 0;
    *a6 = 1;
  }

  else
  {
    if (a3 >= 5)
    {
      operator new[]();
    }

    if (a2)
    {
      if (a3)
      {
        v10 = a3;
        v11 = this;
        do
        {
          v13 = *v7++;
          v12 = v13;
          v14 = v13 >> 31;
          v15 = *v8++;
          v19 = v15;
          icu::UnicodeString::setTo(v11, v14, &v19, v12);
          v11 = (v11 + 64);
          --v10;
        }

        while (v10);
      }
    }

    else if (a3)
    {
      v16 = a3;
      v17 = this;
      do
      {
        v18 = *v8++;
        v20 = v18;
        icu::UnicodeString::setTo(v17, 1, &v20, 0xFFFFFFFF);
        v17 = (v17 + 64);
        --v16;
      }

      while (v16);
    }
  }

  return v6;
}

icu::ListFormatter *ulistfmt_formatStringsToResult(icu::ListFormatter *result, const UChar **a2, unsigned int *a3, unsigned int a4, uint64_t a5, int *a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    return result;
  }

  if (!a5)
  {
    v14 = 1;
LABEL_13:
    *a6 = v14;
    return result;
  }

  if (*(a5 + 16) != 1179407188)
  {
    v14 = 3;
    goto LABEL_13;
  }

  v8 = result;
  v9 = 0;
  memset(v16, 0, sizeof(v16));
  do
  {
    v10 = &v16[v9];
    *v10 = &unk_1F0935D00;
    *(v10 + 4) = 2;
    v9 += 4;
  }

  while (v9 != 16);
  v15 = 0;
  v11 = sub_19540B064(a2, a3, a4, v16, &v15, a6);
  if (*a6 <= 0)
  {
    icu::ListFormatter::formatStringsToValue(v8, v11, a4, a6);
  }

  sub_1951DB10C(&v15);
  for (i = 12; i != -4; i -= 4)
  {
    result = icu::UnicodeString::~UnicodeString(v12, &v16[i]);
  }

  return result;
}

uint64_t sub_19540B374(uint64_t a1, UChar **a2, UChar **a3, UChar **a4, UChar **a5, uint64_t a6)
{
  icu::UnicodeString::UnicodeString((a1 + 8), a2);
  icu::UnicodeString::UnicodeString((a1 + 72), a3);
  icu::UnicodeString::UnicodeString((a1 + 136), a4);
  icu::UnicodeString::UnicodeString((a1 + 200), a5);
  icu::Locale::Locale((a1 + 264), a6);
  return a1;
}

void *sub_19540B3F0(void *result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v8 = result;
    v9 = *result;
    if (*result)
    {
      v10 = v9 - 16;
      v11 = *(v9 - 8);
      if (v11)
      {
        v12 = (v9 + (v11 << 6));
        v13 = (v12 - 64);
        v14 = -64 * v11;
        do
        {
          v13 = (icu::UnicodeString::~UnicodeString(v12, v13) - 64);
          v14 += 64;
        }

        while (v14);
      }

      result = MEMORY[0x19A8B25E0](v10, 0x1093C808E78F3FDLL);
    }

    *v8 = a2;
    if (!a2)
    {
      *a3 = 7;
    }
  }

  else if (a2)
  {
    v4 = *(a2 - 8);
    if (v4)
    {
      v5 = (a2 + (v4 << 6) - 64);
      v6 = -64 * v4;
      do
      {
        v5 = (icu::UnicodeString::~UnicodeString(v4, v5) - 64);
        v6 += 64;
      }

      while (v6);
    }

    JUMPOUT(0x19A8B25E0);
  }

  return result;
}

uint64_t u_vformatMessage(const char *a1, UChar *a2, uint64_t a3, UChar *a4, uint64_t a5, double *a6, UErrorCode *a7)
{
  v11 = umsg_open(a2, a3, a1, 0, a7);
  v12 = umsg_vformat(v11, a4, a5, a6, a7);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return v12;
}

unsigned __int8 *umsg_open(UChar *s, int32_t a2, const char *a3, UParseError *a4, UErrorCode *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a5 && *a5 <= 0)
  {
    if (s && a2 > -2)
    {
      v16 = 0;
      v8 = 0uLL;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v9 = a2;
      if (a2 == -1)
      {
        v10 = u_strlen(s);
        v8 = 0uLL;
        v9 = v10;
      }

      v17[2] = v8;
      v17[3] = v8;
      v17[0] = v8;
      v17[1] = v8;
      v11 = s;
      icu::UnicodeString::UnicodeString(v17, a2 == -1, &v11, v9);
      operator new();
    }

    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

uint64_t umsg_vformat(uint64_t a1, UChar *a2, uint64_t a3, double *a4, UErrorCode *a5)
{
  if (a5 && *a5 <= 0)
  {
    if (a1 && (a3 & 0x80000000) == 0 && (a2 || !a3))
    {
      if (*(a1 + 704) <= 1u)
      {
        v6 = 1;
      }

      else
      {
        v6 = *(a1 + 704);
      }

      is_mul_ok(v6, 0x70uLL);
      operator new[]();
    }

    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0xFFFFFFFFLL;
}

uint64_t umsg_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t u_vformatMessageWithError(const char *a1, UChar *s, int32_t a3, UChar *a4, uint64_t a5, UParseError *a6, double *a7, UErrorCode *a8)
{
  v12 = umsg_open(s, a3, a1, a6, a8);
  v13 = umsg_vformat(v12, a4, a5, a7, a8);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return v13;
}

void *u_vparseMessage(const char *a1, UChar *s, int32_t a3, UChar *a4, uint64_t a5, uint64_t *a6, UErrorCode *a7)
{
  v11 = umsg_open(s, a3, a1, 0, a7);
  v13 = 0;
  result = umsg_vparse(v11, a4, a5, &v13, a6, a7);
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

void *umsg_vparse(void *result, UChar *s, uint64_t a3, unsigned int *a4, uint64_t *a5, int *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a6 && *a6 <= 0)
  {
    v7 = result;
    if (result && s && a3 >= -1 && a4)
    {
      if (a3 == -1)
      {
        a3 = u_strlen(s);
      }

      memset(v35, 0, sizeof(v35));
      icu::UnicodeString::UnicodeString(v35, s, a3);
      v10 = (*(*v7 + 192))(v7, v35, a4, a6);
      v11 = v10;
      v31 = 0u;
      v34 = 0;
      v33 = 0u;
      v32 = 0u;
      v30 = &unk_1F0935D00;
      LOWORD(v31) = 2;
      v12 = *a4;
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = v10;
        do
        {
          Type = icu::Formattable::getType(v14);
          if (Type > 2)
          {
            if (Type <= 4)
            {
              if (Type != 3)
              {
                goto LABEL_33;
              }

              v18 = a5++;
              v19 = *v18;
              if (*v18)
              {
                icu::UnicodeString::operator=(&v30, v14[1]);
                if ((v31 & 0x8000u) == 0)
                {
                  v20 = v31 >> 5;
                }

                else
                {
                  v20 = DWORD1(v31);
                }

                icu::UnicodeString::doExtract(&v30, 0, v20, v19, 0);
                *(v19 + 2 * v20) = 0;
                goto LABEL_29;
              }

LABEL_28:
              *a6 = 1;
              goto LABEL_29;
            }

            if (Type != 5)
            {
              if (Type == 6)
              {
LABEL_33:
                abort();
              }

              goto LABEL_29;
            }

            v23 = a5++;
            v24 = *v23;
            if (!v24)
            {
              goto LABEL_28;
            }

            *v24 = v14[1];
          }

          else if (Type < 2)
          {
            v21 = a5++;
            v22 = *v21;
            if (!v22)
            {
              goto LABEL_28;
            }

            *v22 = v14[1];
          }

          else if (Type == 2)
          {
            v16 = a5++;
            v17 = *v16;
            if (!v17)
            {
              goto LABEL_28;
            }

            *v17 = v14[1];
          }

LABEL_29:
          ++v13;
          v12 = *a4;
          v14 += 14;
        }

        while (v13 < v12);
      }

      if (v11)
      {
        v25 = *(v11 - 8);
        if (v25)
        {
          v26 = (v11 + 112 * v25 - 112);
          v27 = -112 * v25;
          do
          {
            v26 = (icu::Formattable::~Formattable(v25, v26) - 112);
            v27 += 112;
          }

          while (v27);
        }

        MEMORY[0x19A8B25E0](v11 - 16, 0x10B3C80062A7C37);
      }

      icu::UnicodeString::~UnicodeString(v12, &v30);
      return icu::UnicodeString::~UnicodeString(v28, v35);
    }

    else
    {
      *a6 = 1;
    }
  }

  return result;
}

void *u_vparseMessageWithError(const char *a1, UChar *s, int32_t a3, UChar *a4, uint64_t a5, uint64_t *a6, UParseError *a7, UErrorCode *a8)
{
  v12 = umsg_open(s, a3, a1, a7, a8);
  v14 = 0;
  result = umsg_vparse(v12, a4, a5, &v14, a6, a8);
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t umsg_clone(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 > 0)
  {
    return 0;
  }

  if (a1)
  {
    result = (*(*a1 + 32))(a1);
    if (result)
    {
      return result;
    }

    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  result = 0;
  *a2 = v4;
  return result;
}

void *umsg_setLocale(void *result, const char *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    icu::Locale::Locale(v4, a2, 0, 0, 0);
    (*(*v2 + 64))(v2, v4);
    return icu::Locale::~Locale(v3, v4);
  }

  return result;
}

const char *umsg_getLocale(uint64_t a1)
{
  if (a1)
  {
    return *((*(*a1 + 72))(a1) + 40);
  }

  else
  {
    return "";
  }
}

void *umsg_applyPattern(void *result, uint64_t a2, uint64_t a3, _OWORD *a4, int *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a5 && *a5 <= 0)
  {
    v6 = result;
    if (!result || (!a2 ? (v7 = a3 == 0) : (v7 = 1), v7 ? (v8 = 0) : (v8 = 1), a3 < -1 || v8))
    {
      *a5 = 1;
    }

    else
    {
      v12 = 0;
      memset(v11, 0, sizeof(v11));
      if (a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v11;
      }

      icu::UnicodeString::UnicodeString(v13, a2, a3);
      (*(*v6 + 88))(v6, v13, v9, a5);
      return icu::UnicodeString::~UnicodeString(v10, v13);
    }
  }

  return result;
}

uint64_t umsg_toPattern(uint64_t a1, char *a2, uint64_t a3, int *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a4 || *a4 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1 || (a3 & 0x80000000) != 0 || !a2 && a3)
  {
    *a4 = 1;
    return 0xFFFFFFFFLL;
  }

  v13 = 0u;
  v14 = 0u;
  v16 = 0;
  v15 = 0u;
  v12 = &unk_1F0935D00;
  LOWORD(v13) = 2;
  if (a2 || a3)
  {
    icu::UnicodeString::setTo(&v12, a2, 0, a3);
  }

  (*(*a1 + 104))(a1, &v12);
  v11 = a2;
  v8 = icu::UnicodeString::extract(&v12, &v11, a3, a4);
  v10 = v11;
  icu::UnicodeString::~UnicodeString(&v10, &v12);
  return v8;
}

uint64_t umsg_autoQuoteApostrophe(UChar *s, int32_t a2, uint64_t a3, int a4, int *a5)
{
  if (!a5 || *a5 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = s;
  if (!s || a2 < -1 || !a3 && a4 >= 1)
  {
    *a5 = 1;
    return 0xFFFFFFFFLL;
  }

  if (a2 == -1)
  {
    a2 = u_strlen(s);
  }

  if (a2 < 1)
  {
    v21 = 0;
    goto LABEL_49;
  }

  LODWORD(v10) = 0;
  v11 = 0;
  v12 = 0;
  v13 = a2;
  do
  {
    v15 = *v6++;
    v14 = v15;
    if (v12 > 1)
    {
      v16 = v11 - 1;
      if (v11 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 3;
      }

      if (v14 == 123)
      {
        v18 = v11 + 1;
      }

      else
      {
        v18 = v11;
      }

      if (v14 != 125)
      {
        v17 = 3;
        v16 = v18;
      }

      v19 = v12 == 2;
      if (v12 == 2)
      {
        v12 = 2 * (v14 != 39);
      }

      else
      {
        v12 = v17;
      }

      if (!v19)
      {
        v11 = v16;
      }

      goto LABEL_31;
    }

    if (!v12)
    {
      v12 = v14 == 39;
      if (v14 == 123)
      {
        v12 = 3;
        ++v11;
      }

      goto LABEL_31;
    }

    if (v14 == 39)
    {
      v12 = 0;
      goto LABEL_31;
    }

    if (v14 == 125 || v14 == 123)
    {
      v12 = 2;
LABEL_31:
      v20 = v10;
      goto LABEL_32;
    }

    if (v10 < a4)
    {
      *(a3 + 2 * v10) = 39;
    }

    v12 = 0;
    v20 = v10 + 1;
LABEL_32:
    if (v20 < a4)
    {
      *(a3 + 2 * v20) = v14;
    }

    v10 = v20 + 1;
    --v13;
  }

  while (v13);
  if ((v12 - 1) >= 2)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = (v20 + 2);
    if (v10 < a4)
    {
      *(a3 + 2 * v10) = 39;
    }
  }

LABEL_49:

  return u_terminateUChars(a3, a4, v21, a5);
}

void sub_19540C658()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = L"Hex-Any/Unicode";
  v0 = icu::UnicodeString::UnicodeString(v2, 1, &v1, -1);
  icu::Transliterator::_registerFactory(v0, sub_19540C89C, 0);
}

void *sub_19540CBE4(char *a1)
{
  v2 = 0;
  do
  {
    v3 = *&a1[v2];
    v2 += 2;
  }

  while (v3 != -1);
  result = malloc_type_malloc(v2 & 0xFFFFFFFE, 0x1000040BDFB0063uLL);
  if (result)
  {

    return memcpy(result, a1, v2 & 0xFFFFFFFE);
  }

  return result;
}

void sub_19540CC58(void **a1)
{
  *a1 = &unk_1F0944220;
  free(a1[11]);

  icu::Transliterator::~Transliterator(a1, v2);
}

void sub_19540CCB0(void **a1)
{
  *a1 = &unk_1F0944220;
  free(a1[11]);
  icu::Transliterator::~Transliterator(a1, v2);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19540CD8C(uint64_t result, uint64_t a2, _DWORD *a3, int a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3[2];
  v5 = a3[3];
  if (v4 >= v5)
  {
    goto LABEL_51;
  }

  v7 = result;
  v41 = result;
  do
  {
    v8 = *(v7 + 88);
    v9 = *v8;
    if (v9 == 0xFFFF)
    {
      goto LABEL_43;
    }

    v10 = 0;
    v43 = v4;
    v37 = v4;
    while (1)
    {
      v42 = v8[1];
      LOWORD(v11) = v8[2];
      v38 = v8[3];
      v12 = v10 + 5;
      v13 = v4;
      v14 = v8[4];
      v40 = v9;
      v39 = v12;
      if (!v9)
      {
        break;
      }

      v15 = 0;
      v16 = 2 * v12;
      v17 = 1;
      v18 = v9;
      while (1)
      {
        v19 = v15;
        if (v43 + v15 >= v5 && v15 != 0)
        {
          break;
        }

        result = (*(*a2 + 72))(a2);
        if (result == *(*(v7 + 88) + v16))
        {
          v15 = v19 + 1;
          v17 = v19 + 1 < v18;
          v16 += 2;
          if (v18 != v19 + 1)
          {
            continue;
          }
        }

        if (v17)
        {
          goto LABEL_37;
        }

        v13 = v43 + v19 + 1;
        goto LABEL_16;
      }

LABEL_36:
      if (a4)
      {
LABEL_50:
        LODWORD(v4) = v37;
        goto LABEL_51;
      }

LABEL_37:
      v7 = v41;
      v10 = v39 + v40 + v42;
      v8 = (*(v41 + 88) + 2 * v10);
      v9 = *v8;
      v4 = v37;
      if (v9 == 0xFFFF)
      {
        goto LABEL_43;
      }
    }

LABEL_16:
    v21 = 0;
    v22 = 0;
    v11 = v11;
    while (v13 < v5)
    {
      v23 = (*(*a2 + 80))(a2, v13);
      result = u_digit(v23, v11);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_25;
      }

      if (v23 < 0x10000)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      v13 = (v24 + v13);
      v21 = result + v21 * v11;
      if (v14 == ++v22)
      {
        v22 = v14;
        goto LABEL_25;
      }
    }

    if (a4)
    {
      goto LABEL_50;
    }

LABEL_25:
    if (v22 < v38)
    {
      goto LABEL_37;
    }

    v25 = v42;
    if (v42)
    {
      if (v13 <= v5)
      {
        v26 = v5;
      }

      else
      {
        v26 = v13;
      }

      v27 = (v26 - v13);
      v28 = 2 * (v39 + v40);
      v29 = 1;
      v30 = 1;
      while (v27)
      {
        v31 = v29;
        result = (*(*a2 + 72))(a2, v13 + v29 - 1);
        if (result == *(*(v41 + 88) + v28))
        {
          v30 = v31 < v42;
          v28 += 2;
          --v27;
          v29 = v31 + 1;
          if (--v25)
          {
            continue;
          }
        }

        if (v30)
        {
          goto LABEL_37;
        }

        v13 = (v13 + v31);
        goto LABEL_39;
      }

      goto LABEL_36;
    }

LABEL_39:
    memset(v44, 0, sizeof(v44));
    icu::UnicodeString::UnicodeString(v44, v21);
    v4 = v37;
    (*(*a2 + 32))(a2, v37, v13, v44);
    LODWORD(v32) = WORD4(v44[0]) >> 5;
    if ((SWORD4(v44[0]) & 0x8000u) == 0)
    {
      v32 = v32;
    }

    else
    {
      v32 = HIDWORD(v44[0]);
    }

    v5 = v37 + v5 - v13 + v32;
    result = icu::UnicodeString::~UnicodeString(v32, v44);
    v7 = v41;
LABEL_43:
    if (v4 < v5)
    {
      result = (*(*a2 + 80))(a2, v4);
      if (result < 0x10000)
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      v4 = (v33 + v4);
    }
  }

  while (v4 < v5);
LABEL_51:
  v34 = v5 - a3[3] + a3[1];
  a3[2] = v4;
  a3[3] = v5;
  a3[1] = v34;
  return result;
}

icu::Transliterator *sub_19540D16C(icu::Transliterator *a1, icu::UnicodeFilter *a2)
{
  v7[8] = *MEMORY[0x1E69E9840];
  v6 = L"Any-Name";
  icu::UnicodeString::UnicodeString(v7, 1, &v6, 8);
  icu::Transliterator::Transliterator(a1, v7, a2);
  icu::UnicodeString::~UnicodeString(v4, v7);
  *a1 = &unk_1F09442D0;
  return a1;
}

void sub_19540D230(icu::Transliterator *a1@<X0>, void *a2@<X8>)
{
  icu::Transliterator::~Transliterator(a1, a2);

  JUMPOUT(0x19A8B2600);
}

char *sub_19540D2C4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  result = uprv_getMaxCharNameLength();
  if (result && (v6 = result, (result = malloc_type_malloc(result, 0x100004077774924uLL)) != 0))
  {
    v7 = result;
    v8 = a3[2];
    v9 = a3[3];
    memset(v28, 0, sizeof(v28));
    v23 = L"\\N{";
    icu::UnicodeString::UnicodeString(v28, 0, &v23, 3);
    for (pErrorCode = U_ZERO_ERROR; v8 < v9; v8 = (v12 + v8))
    {
      v10 = (*(*a2 + 80))(a2, v8);
      if (v10 >= 0x10000)
      {
        v11 = -2;
      }

      else
      {
        v11 = -1;
      }

      if (v10 < 0x10000)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      pErrorCode = U_ZERO_ERROR;
      v13 = u_charName(v10, U_EXTENDED_CHAR_NAME, v7, v6, &pErrorCode);
      if (v13 >= 1 && pErrorCode <= U_ZERO_ERROR)
      {
        v15 = v13;
        v16 = WORD4(v28[0]) >> 5;
        if (SWORD4(v28[0]) < 0)
        {
          v16 = HIDWORD(v28[0]);
        }

        if (v16 >= 4)
        {
          WORD4(v28[0]) = BYTE8(v28[0]) & 0x1F | 0x60;
        }

        icu::UnicodeString::UnicodeString(v25, v7, v13);
        if ((v26 & 0x8000u) == 0)
        {
          v17 = v26 >> 5;
        }

        else
        {
          v17 = v27;
        }

        v18 = icu::UnicodeString::doAppend(v28, v25, 0, v17);
        v24 = 125;
        icu::UnicodeString::doAppend(v18, &v24, 0, 1);
        icu::UnicodeString::~UnicodeString(v19, v25);
        (*(*a2 + 32))(a2, v8, (v12 + v8), v28);
        v12 = v15 + 4;
        v9 += v11 + v15 + 4;
      }
    }

    v20 = v9 - a3[3] + a3[1];
    a3[2] = v8;
    a3[3] = v9;
    a3[1] = v20;
    free(v7);
    return icu::UnicodeString::~UnicodeString(v21, v28);
  }

  else
  {
    a3[2] = a3[3];
  }

  return result;
}

uint64_t icu::units::ComplexUnitsConverter::ComplexUnitsConverter(uint64_t a1, icu::MeasureUnitImpl *this, int *a3, UErrorCode *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 8;
  *(a1 + 28) = 0;
  icu::MeasureUnitImpl::extractIndividualUnitsWithIndices(this, a4, a1 + 96);
  if (*a4 <= 0)
  {
    v7 = (**(a1 + 104) + 8);
    if (*(a1 + 96) >= 2)
    {
      v8 = 1;
      do
      {
        v9 = icu::units::UnitsConverter::compareTwoUnits((*(*(a1 + 104) + 8 * v8) + 8), v7, a3, a4);
        v10 = *a4;
        if (v9 >= 1 && v10 <= U_ZERO_ERROR)
        {
          v7 = (*(*(a1 + 104) + 8 * v8) + 8);
        }

        else if (v10 >= U_ILLEGAL_ARGUMENT_ERROR)
        {
          return a1;
        }

        ++v8;
      }

      while (v8 < *(a1 + 96));
    }

    icu::units::ComplexUnitsConverter::init(a1, v7, a3, a4);
  }

  return a1;
}

void icu::units::ComplexUnitsConverter::init(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  uprv_sortArray(*(a1 + 104), *(a1 + 96), 8, sub_19540E0F0, a3, 0, a4);
  v8 = *(a1 + 96);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 8 * v8 - 8;
    while (1)
    {
      v11 = *a4;
      if (v9)
      {
        if (v11 > 0)
        {
          return;
        }

        v12 = sub_19540E134((a1 + 8), *(*(a1 + 104) + v9 - 8) + 8, *(*(a1 + 104) + v9) + 8, a3, a4);
      }

      else
      {
        if (v11 > 0)
        {
          return;
        }

        v12 = sub_19540E134((a1 + 8), a2, **(a1 + 104) + 8, a3, a4);
      }

      v13 = *a4 <= 0 && v12 == 0;
      if (v13)
      {
        break;
      }

      if (*a4 <= 0)
      {
        v13 = v10 == v9;
        v9 += 8;
        if (!v13)
        {
          continue;
        }
      }

      return;
    }

    *a4 = 7;
  }
}

uint64_t icu::units::ComplexUnitsConverter::ComplexUnitsConverter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, UErrorCode *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 8;
  *(a1 + 28) = 0;
  *(a1 + 96) = 0;
  v7 = (a1 + 120);
  *(a1 + 104) = a1 + 120;
  *(a1 + 112) = 8;
  *(a1 + 116) = 0;
  if (*a6 <= 0)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    memset(v33, 0, sizeof(v33));
    icu::MeasureUnitImpl::forIdentifier(a2, a3, a6, v33);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    memset(v28, 0, sizeof(v28));
    icu::MeasureUnitImpl::forIdentifier(a4, a5, a6, v28);
    icu::MeasureUnitImpl::extractIndividualUnitsWithIndices(v28, a6, &v20);
    v11 = *(a1 + 96);
    *(a1 + 96) = v20;
    v20 = v11;
    memset(v26, 0, sizeof(v26));
    v27 = 0;
    v12 = *(a1 + 104);
    v25 = v12;
    v13 = *(a1 + 112);
    LODWORD(v26[0]) = v13;
    v14 = *(a1 + 116);
    BYTE4(v26[0]) = *(a1 + 116);
    if (v12 == v7)
    {
      v15 = v26 + 8;
      v25 = v26 + 8;
      memcpy(v26 + 8, v7, 8 * v13);
      if (v14)
      {
        free(v12);
      }
    }

    else
    {
      v15 = v12;
    }

    v16 = v22;
    *(a1 + 112) = v22;
    v17 = v23;
    *(a1 + 116) = v23;
    v18 = v21;
    if (v21 == v24)
    {
      *(a1 + 104) = v7;
      memcpy(v7, v24, 8 * v16);
      if (v17)
      {
        free(v18);
        v13 = v26[0];
        v14 = BYTE4(v26[0]);
        v15 = v25;
      }
    }

    else
    {
      *(a1 + 104) = v21;
    }

    v22 = v13;
    v23 = v14;
    if (v15 == v26 + 8)
    {
      v21 = v24;
      memcpy(v24, v26 + 8, 8 * v13);
      if (v14)
      {
        free(v15);
      }
    }

    else
    {
      v21 = v15;
    }

    sub_19537B688(&v20);
    v20 = 0;
    v21 = v24;
    v22 = 8;
    v23 = 0;
    icu::units::getAllConversionRates(&v20, a6);
    icu::units::ComplexUnitsConverter::init(a1, v33, &v20, a6);
    sub_19537B4F0(&v20);
    if (BYTE12(v29))
    {
      free(v29);
    }

    sub_195342340(&v28[1]);
    if (BYTE12(v34))
    {
      free(v34);
    }

    sub_195342340(&v33[1]);
  }

  return a1;
}

uint64_t icu::units::ComplexUnitsConverter::ComplexUnitsConverter(uint64_t a1, uint64_t a2, icu::MeasureUnitImpl *this, uint64_t a4, UErrorCode *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 8;
  *(a1 + 28) = 0;
  icu::MeasureUnitImpl::extractIndividualUnitsWithIndices(this, a5, a1 + 96);
  if (*a5 <= 0)
  {
    icu::units::ComplexUnitsConverter::init(a1, a2, a4, a5);
  }

  return a1;
}

void icu::units::ComplexUnitsConverter::convert(uint64_t a1@<X0>, uint64_t a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v29 = *MEMORY[0x1E69E9840];
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 80) = 0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 8) = a4 + 24;
  *(a4 + 16) = 8;
  v8 = a5 < 0.0;
  v9 = *(a1 + 8);
  v10 = v9 - 1;
  v11 = v9 > 1;
  if (v8 && v11)
  {
    v12 = -a5;
  }

  else
  {
    v12 = a5;
  }

  if (v8 && v11)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  v26 = 0;
  v24 = 0uLL;
  v25 = 0uLL;
  *v23 = 0uLL;
  sub_19540DE44(v23, v10, *a3);
  if (*a3 <= 0)
  {
    bzero(v23[0], 8 * *(a1 + 8) - 8);
    v14 = *(a1 + 8);
    if (v14 >= 1)
    {
      for (i = 0; i != v14; ++i)
      {
        v16 = icu::units::UnitsConverter::convert(*(*(a1 + 16) + 8 * i), v12);
        v12 = v16;
        if (i < (v14 - 1))
        {
          isNaN = uprv_isNaN(v16);
          v18 = vcvtmd_s64_f64(v12 * 1.0);
          if (isNaN)
          {
            v18 = 0;
          }

          *(v23[0] + i) = v18;
          if (v12 - v18 >= 0.0)
          {
            v12 = v12 - v18;
          }

          else
          {
            v12 = 0.0;
          }
        }
      }
    }

    v27 = v12;
    icu::units::ComplexUnitsConverter::applyRounder(a1, v23, &v27, a2, a3);
    v21 = 0u;
    v22 = 0u;
    *v20 = 0u;
    sub_19540E05C(v20, *(a1 + 8), *a3);
    if (*a3 < 1)
    {
      v19 = *(a1 + 8);
      if (v19 >= 1)
      {
        memset(v28, 0, sizeof(v28));
        if (v19 == 1)
        {
          icu::Formattable::Formattable(v28, v27 * v13);
        }

        else
        {
          icu::Formattable::Formattable(v28, *v23[0] * v13);
        }

        operator new();
      }
    }

    if (BYTE4(v20[1]))
    {
      free(v20[0]);
    }
  }

  if (BYTE4(v23[1]))
  {
    free(v23[0]);
  }
}

uint64_t sub_19540DE44(uint64_t a1, unsigned int a2, int a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 5;
  *(a1 + 12) = 0;
  if (a2 >= 6 && a3 <= 0)
  {
    v5 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 12))
      {
        free(*a1);
      }

      *a1 = v6;
      *(a1 + 8) = a2;
      *(a1 + 12) = 1;
    }
  }

  return a1;
}

void icu::units::ComplexUnitsConverter::applyRounder(uint64_t a1, uint64_t *a2, double *a3, uint64_t a4, UErrorCode *a5)
{
  if (!uprv_isInfinite(*a3))
  {
    isNaN = uprv_isNaN(*a3);
    if (a4)
    {
      if (!isNaN)
      {
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        icu::number::impl::DecimalQuantity::DecimalQuantity(v23);
        icu::number::impl::DecimalQuantity::setToDouble(v23, *a3);
        sub_195374000(a4, v23, a5);
        if (*a5 <= 0)
        {
          v11 = icu::number::impl::DecimalQuantity::toDouble(v23);
          *a3 = v11;
          v12 = *(a1 + 8);
          v13 = v12 - 1;
          if (v12 != 1)
          {
            v14 = vcvtmd_s64_f64(icu::units::UnitsConverter::convertInverse(*(*(a1 + 16) + 8 * v13), v11) * 1.0);
            if (v14 >= 1)
            {
              *a3 = *a3 - icu::units::UnitsConverter::convert(*(*(a1 + 16) + 8 * v13), v14);
              v15 = (v12 - 2);
              v16 = *a2;
              *(*a2 + 8 * v15) += v14;
              if (v12 >= 3)
              {
                v17 = *(v16 + 8 * v15);
                do
                {
                  v18 = vcvtmd_s64_f64(icu::units::UnitsConverter::convertInverse(*(*(a1 + 16) + 8 * v15), v17) * 1.0);
                  if (v18 < 1)
                  {
                    break;
                  }

                  v19 = icu::units::UnitsConverter::convert(*(*(a1 + 16) + 8 * v15), v18);
                  v20 = (*a2 + 8 * v15);
                  v21 = *v20 - llround(v19);
                  v17 = *(v20 - 1) + v18;
                  *(v20 - 1) = v17;
                  *v20 = v21;
                }

                while (v15-- > 1);
              }
            }
          }
        }

        icu::number::impl::DecimalQuantity::~DecimalQuantity(v23);
      }
    }
  }
}

uint64_t sub_19540E05C(uint64_t a1, unsigned int a2, int a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  if (a2 >= 5 && a3 <= 0)
  {
    v5 = malloc_type_malloc(8 * a2, 0x2004093837F09uLL);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 12))
      {
        free(*a1);
      }

      *a1 = v6;
      *(a1 + 8) = a2;
      *(a1 + 12) = 1;
    }
  }

  return a1;
}

void *sub_19540E134(const void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 4);
  if (*a1 != v6)
  {
    goto LABEL_16;
  }

  if (v6 == 8)
  {
    v7 = 32;
  }

  else
  {
    v7 = 2 * v6;
  }

  if (v7 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v7, 0x2004093837F09uLL);
  if (result)
  {
    v9 = result;
    if (v6 >= 1)
    {
      v10 = *(a1 + 4);
      if (v10 >= v6)
      {
        v10 = v6;
      }

      if (v10 >= v7)
      {
        v10 = v7;
      }

      memcpy(result, a1[1], 8 * v10);
    }

    if (*(a1 + 20))
    {
      free(a1[1]);
    }

    a1[1] = v9;
    *(a1 + 4) = v7;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

void *sub_19540E258(const void **a1, const icu::Measure *a2)
{
  v3 = *(a1 + 4);
  if (*a1 != v3)
  {
    goto LABEL_16;
  }

  if (v3 == 8)
  {
    v4 = 32;
  }

  else
  {
    v4 = 2 * v3;
  }

  if (v4 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v4, 0x2004093837F09uLL);
  if (result)
  {
    v6 = result;
    if (v3 >= 1)
    {
      v7 = *(a1 + 4);
      if (v7 >= v3)
      {
        v7 = v3;
      }

      if (v7 >= v4)
      {
        v7 = v4;
      }

      memcpy(result, a1[1], 8 * v7);
    }

    if (*(a1 + 20))
    {
      free(a1[1]);
    }

    a1[1] = v6;
    *(a1 + 4) = v4;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

float64x2_t *icu::units::Factor::multiplyBy(float64x2_t *result, float64x2_t *a2)
{
  v2 = 0;
  *result = vmulq_f64(*a2, *result);
  do
  {
    *(&result[1].f64[1] + v2 + 4) += *(&a2[1].f64[1] + v2 + 4);
    v2 += 4;
  }

  while (v2 != 60);
  v3 = a2[1].f64[0];
  if (v3 < result[1].f64[0])
  {
    v3 = result[1].f64[0];
  }

  result[1].f64[0] = v3;
  return result;
}

double *icu::units::Factor::divideBy(double *result, double *a2)
{
  v2 = 0;
  v3 = result[1];
  *result = a2[1] * *result;
  result[1] = *a2 * v3;
  do
  {
    *(result + v2 + 28) -= *(a2 + v2 + 28);
    v2 += 4;
  }

  while (v2 != 60);
  v4 = a2[2];
  if (v4 < result[2])
  {
    v4 = result[2];
  }

  result[2] = v4;
  return result;
}

void icu::units::Factor::power(icu::units::Factor *this, int a2)
{
  for (i = 28; i != 88; i += 4)
  {
    *(this + i) *= a2;
  }

  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  v6 = v5;
  v7 = pow(*this, v5);
  *this = v7;
  v8 = pow(*(this + 1), v6);
  *(this + 1) = v8;
  if (a2 < 0)
  {
    *this = v8;
    *(this + 1) = v7;
  }
}

double icu::units::Factor::applyPrefix(uint64_t a1, int a2, double result)
{
  if (a2 != 30)
  {
    PrefixPower = umeas_getPrefixPower(a2);
    PrefixBase = umeas_getPrefixBase(a2);
    if (PrefixPower >= 0)
    {
      v7 = PrefixPower;
    }

    else
    {
      v7 = -PrefixPower;
    }

    v8 = pow(PrefixBase, v7);
    v9 = (PrefixPower >> 28) & 8;
    result = v8 * *(a1 + v9);
    *(a1 + v9) = result;
  }

  return result;
}

void icu::units::Factor::substituteConstants(icu::units::Factor *this)
{
  v2 = 0;
  v3 = this + 28;
  do
  {
    v4 = *&v3[4 * v2];
    if (v4)
    {
      if ((v4 & 0x80000000) == 0)
      {
        v5 = *&v3[4 * v2];
      }

      else
      {
        v5 = -v4;
      }

      *(this + ((v4 >> 28) & 8)) = pow(dbl_195493D60[v2], v5) * *(this + ((v4 >> 28) & 8));
      *&v3[4 * v2] = 0;
    }

    ++v2;
  }

  while (v2 != 15);
}

void icu::units::addSingleFactorConstant(unsigned __int8 *a1, uint64_t a2, int a3, int a4, uint64_t a5, _DWORD *a6)
{
  v16 = a1;
  v17 = a2;
  icu::StringPiece::StringPiece(v15, "ft_to_m");
  if (icu::operator==(&v16, v15))
  {
    v10 = *(a5 + 28) + a4 * a3;
LABEL_7:
    *(a5 + 28) = v10;
    return;
  }

  icu::StringPiece::StringPiece(v15, "ft2_to_m2");
  if (icu::operator==(&v16, v15))
  {
    v10 = *(a5 + 28) + 2 * a4 * a3;
    goto LABEL_7;
  }

  icu::StringPiece::StringPiece(v15, "ft3_to_m3");
  if (icu::operator==(&v16, v15))
  {
    v10 = *(a5 + 28) + 3 * a4 * a3;
    goto LABEL_7;
  }

  icu::StringPiece::StringPiece(v15, "in3_to_m3");
  if (icu::operator==(&v16, v15))
  {
    *(a5 + 28) += 3 * a4 * a3;
    v11 = (a4 * a3);
LABEL_12:
    v12 = pow(1728.0, v11) * *(a5 + 8);
LABEL_13:
    *(a5 + 8) = v12;
    return;
  }

  icu::StringPiece::StringPiece(v15, "gal_to_m3");
  if (icu::operator==(&v16, v15))
  {
    *(a5 + 28) += 3 * a4 * a3;
    *a5 = pow(231.0, (a4 * a3)) * *a5;
    v11 = (a4 * a3);
    goto LABEL_12;
  }

  icu::StringPiece::StringPiece(v15, "gal_imp_to_m3");
  if (icu::operator==(&v16, v15))
  {
    *(a5 + 44) += a4 * a3;
  }

  else
  {
    icu::StringPiece::StringPiece(v15, "G");
    if (icu::operator==(&v16, v15))
    {
      *(a5 + 40) += a4 * a3;
    }

    else
    {
      icu::StringPiece::StringPiece(v15, "gravity");
      if (icu::operator==(&v16, v15))
      {
        *(a5 + 36) += a4 * a3;
      }

      else
      {
        icu::StringPiece::StringPiece(v15, "lb_to_kg");
        if (icu::operator==(&v16, v15))
        {
          *(a5 + 48) += a4 * a3;
        }

        else
        {
          icu::StringPiece::StringPiece(v15, "glucose_molar_mass");
          if (icu::operator==(&v16, v15))
          {
            *(a5 + 52) += a4 * a3;
          }

          else
          {
            icu::StringPiece::StringPiece(v15, "item_per_mole");
            if (icu::operator==(&v16, v15))
            {
              *(a5 + 56) += a4 * a3;
            }

            else
            {
              icu::StringPiece::StringPiece(v15, "meters_per_AU");
              if (icu::operator==(&v16, v15))
              {
                *(a5 + 60) += a4 * a3;
              }

              else
              {
                icu::StringPiece::StringPiece(v15, "PI");
                if (icu::operator==(&v16, v15))
                {
                  *(a5 + 32) += a4 * a3;
                }

                else
                {
                  icu::StringPiece::StringPiece(v15, "sec_per_julian_year");
                  if (icu::operator==(&v16, v15))
                  {
                    *(a5 + 64) += a4 * a3;
                  }

                  else
                  {
                    icu::StringPiece::StringPiece(v15, "speed_of_light_meters_per_second");
                    if (icu::operator==(&v16, v15))
                    {
                      *(a5 + 68) += a4 * a3;
                    }

                    else
                    {
                      icu::StringPiece::StringPiece(v15, "sho_to_m3");
                      if (icu::operator==(&v16, v15))
                      {
                        *(a5 + 72) += a4 * a3;
                      }

                      else
                      {
                        icu::StringPiece::StringPiece(v15, "tsubo_to_m2");
                        if (icu::operator==(&v16, v15))
                        {
                          *(a5 + 76) += a4 * a3;
                        }

                        else
                        {
                          icu::StringPiece::StringPiece(v15, "shaku_to_m");
                          if (icu::operator==(&v16, v15))
                          {
                            *(a5 + 80) += a4 * a3;
                          }

                          else
                          {
                            icu::StringPiece::StringPiece(v15, "AMU");
                            if (icu::operator==(&v16, v15))
                            {
                              *(a5 + 84) += a4 * a3;
                            }

                            else
                            {
                              sub_19540E9E4(v16, v17, a6);
                              v14 = pow(v13, a3);
                              if (a4 == -1)
                              {
                                v12 = *(a5 + 8) * v14;
                                goto LABEL_13;
                              }

                              *a5 = *a5 * v14;
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

void sub_19540E9E4(unsigned __int8 *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a2;
  v7 = 0;
  v10 = 0;
  v6 = 0u;
  v8 = "";
  v9 = "";
  v5 = 0;
  sub_195300368(&v6, a1, a2, &v5);
  if (v5 != v4)
  {
    *a3 = 3;
  }
}

uint64_t icu::units::extractCompoundBaseUnit@<X0>(uint64_t result@<X0>, int *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 16) = a4 + 32;
  *(a4 + 24) = 8;
  *(a4 + 96) = a4 + 109;
  *(a4 + 104) = 40;
  *(a4 + 152) = 0;
  if (*a3 <= 0)
  {
    v6 = result;
    v15 = *(result + 8);
    if (v15 >= 1)
    {
      for (i = 0; i != v15; ++i)
      {
        v10 = *(*(v6 + 16) + 8 * i);
        SimpleUnitID = icu::SingleUnitImpl::getSimpleUnitID(v10);
        icu::StringPiece::StringPiece(&v18, SimpleUnitID);
        result = icu::units::ConversionRates::extractConversionInfo(a2, v18, v19, a3);
        if (*a3 > 0)
        {
          break;
        }

        if (!result)
        {
          *a3 = U_INTERNAL_PROGRAM_ERROR;
          return result;
        }

        v17 = 0;
        memset(v16, 0, sizeof(v16));
        v4 = v4 & 0xFFFFFFFF00000000 | *(result + 128);
        icu::MeasureUnitImpl::forIdentifier(*(result + 72), v4, a3, &v18);
        LODWORD(v16[0]) = v19;
        *(&v16[0] + 1) = v20;
        LODWORD(v16[1]) = v21;
        BYTE4(v16[1]) = v22;
        if (v20 == v23)
        {
          *(&v16[0] + 1) = &v16[1] + 8;
          memcpy(&v16[1] + 8, v23, 8 * v21);
        }

        else
        {
          v20 = v23;
          v21 = 8;
          v22 = 0;
        }

        LODWORD(v19) = 0;
        if (v25)
        {
          free(v24);
        }

        sub_195342340(&v19);
        if (SLODWORD(v16[0]) >= 1)
        {
          v12 = 0;
          v13 = 8 * LODWORD(v16[0]);
          do
          {
            v14 = *(*(&v16[0] + 1) + v12);
            *(v14 + 2) *= *(v10 + 2);
            icu::MeasureUnitImpl::appendSingleUnit(a4, v14, a3);
            if (*a3 >= 1)
            {
              return sub_195342340(v16);
            }

            v12 += 8;
          }

          while (v13 != v12);
        }

        result = sub_195342340(v16);
      }
    }
  }

  return result;
}

uint64_t icu::units::extractConvertibility(_DWORD *a1, _DWORD *a2, int *a3, UErrorCode *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*a1 == 2 || *a2 == 2)
  {
    *a4 = U_ARGUMENT_TYPE_MISMATCH;
    return 2;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  memset(v33, 0, sizeof(v33));
  icu::units::extractCompoundBaseUnit(a1, a3, a4, v33);
  v31 = 0u;
  v32 = 0u;
  *v29 = 0u;
  v30 = 0u;
  memset(v28, 0, sizeof(v28));
  icu::units::extractCompoundBaseUnit(a2, a3, a4, v28);
  if (*a4 <= 0)
  {
    v25[0] = 0;
    memset(v26, 0, sizeof(v26));
    v27 = 0;
    v25[1] = v26 + 8;
    LODWORD(v26[0]) = 8;
    v22[0] = 0;
    memset(v23, 0, sizeof(v23));
    v24 = 0;
    v22[1] = v23 + 8;
    LODWORD(v23[0]) = 8;
    v6 = 1;
    sub_19540EFA4(v25, v33, 1);
    sub_19540EFA4(v22, v33, 1);
    sub_19540EFA4(v25, v28, -1);
    sub_19540EFA4(v22, v28, 1);
    if (SLODWORD(v25[0]) >= 1)
    {
      if (*(*v25[1] + 4))
      {
        goto LABEL_15;
      }

      v9 = 1;
      do
      {
        v10 = v9;
        if (LODWORD(v25[0]) == v9)
        {
          break;
        }
      }

      while (!*(*(v25[1] + v9++) + 4));
      if (v10 < LODWORD(v25[0]))
      {
LABEL_15:
        if (SLODWORD(v22[0]) < 1)
        {
          v6 = 0;
LABEL_29:
          if (BYTE4(v23[0]))
          {
            free(v22[1]);
          }

          v18 = v25[0];
          if (SLODWORD(v25[0]) >= 1)
          {
            v19 = 0;
            do
            {
              v20 = *(v25[1] + v19);
              if (v20)
              {
                MEMORY[0x19A8B2600](v20, 0x1000C4000313F17);
                v18 = v25[0];
              }

              ++v19;
            }

            while (v19 < v18);
          }

          if (BYTE4(v26[0]))
          {
            free(v25[1]);
          }

          goto LABEL_38;
        }

        if (*(*v22[1] + 4))
        {
          v6 = 2;
        }

        else
        {
          v12 = 1;
          do
          {
            v13 = v12;
            if (LODWORD(v22[0]) == v12)
            {
              break;
            }
          }

          while (!*(*(v22[1] + v12++) + 4));
          v6 = 2 * (v13 < LODWORD(v22[0]));
        }
      }

      else
      {
        v6 = 1;
      }
    }

    v15 = v22[0];
    if (SLODWORD(v22[0]) >= 1)
    {
      v16 = 0;
      do
      {
        v17 = *(v22[1] + v16);
        if (v17)
        {
          MEMORY[0x19A8B2600](v17, 0x1000C4000313F17);
          v15 = v22[0];
        }

        ++v16;
      }

      while (v16 < v15);
    }

    goto LABEL_29;
  }

  v6 = 2;
LABEL_38:
  if (BYTE4(v29[1]))
  {
    free(v29[0]);
  }

  sub_195342340(v28 + 8);
  if (BYTE12(v34))
  {
    free(v34);
  }

  sub_195342340(v33 + 8);
  return v6;
}

unsigned int *sub_19540EFA4(unsigned int *result, uint64_t a2, int a3)
{
  if (*(a2 + 8) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 16) + 8 * v6);
      v8 = *v7;
      v9 = v7[2];
      v10 = *v5;
      if (*v5 < 1)
      {
LABEL_7:
        if (v10 != v5[4])
        {
          goto LABEL_22;
        }

        if (v10 == 8)
        {
          v13 = 32;
        }

        else
        {
          v13 = 2 * v10;
        }

        if (v13 >= 1)
        {
          result = malloc_type_malloc(8 * v13, 0x2004093837F09uLL);
          if (result)
          {
            v14 = result;
            if (v10 >= 1)
            {
              v15 = v5[4];
              if (v15 >= v10)
              {
                v15 = v10;
              }

              if (v15 >= v13)
              {
                v15 = v13;
              }

              memcpy(result, *(v5 + 1), 8 * v15);
            }

            if (*(v5 + 20))
            {
              free(*(v5 + 1));
            }

            *(v5 + 1) = v14;
            v5[4] = v13;
            *(v5 + 20) = 1;
LABEL_22:
            operator new();
          }
        }
      }

      else
      {
        v11 = *(v5 + 1);
        v12 = *v5;
        while (**v11 != v8)
        {
          v11 += 8;
          if (!--v12)
          {
            goto LABEL_7;
          }
        }

        *(*v11 + 4) += v9 * a3;
      }

      ++v6;
    }

    while (v6 < *(a2 + 8));
  }

  return result;
}