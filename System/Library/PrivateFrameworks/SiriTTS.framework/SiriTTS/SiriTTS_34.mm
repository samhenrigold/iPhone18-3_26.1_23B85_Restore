uint64_t utf8_Utf8CharTo16bit(unsigned __int8 *a1, uint64_t a2)
{
  v2 = UTF8_TRAILING_BYTES[*a1];
  if (utf8_Utf8ToUtf16(a1, v2 + 1, 0, a2, 1u, 0, 0) >= 0)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t utf8_Utf8ToUtf32(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, unsigned int a5, _DWORD *a6, unsigned int *a7)
{
  LODWORD(v7) = 0;
  v8 = 0;
  v9 = 0;
  LODWORD(v10) = 0;
  if (a2 && a5)
  {
    v7 = 0;
    v11 = 0;
    v9 = -1950342907;
    v12 = a5;
    while (1)
    {
      v13 = *(a1 + v11);
      v14 = UTF8_TRAILING_BYTES[*(a1 + v11)];
      if (v11 + v14 > a2)
      {
        v8 = 0;
        *(a4 + 4 * v7) = 0;
        v9 = 197140487;
        goto LABEL_38;
      }

      if ((UTF8_BYTE_INDICATOR_TEST[v14] & v13) != UTF8_BYTE_INDICATOR[v14])
      {
        break;
      }

      if (a7)
      {
        *a7 = v11;
        a7[1] = v11;
        a7 += 2;
        v13 = *(a1 + v11);
      }

      v10 = v11 + 1;
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v17 = *(a1 + v10);
          if (v13 == 237)
          {
            if (v17 >= 0xA0)
            {
              goto LABEL_35;
            }
          }

          else if (v13 == 224 && v17 < 0xA0)
          {
LABEL_35:
            *(a4 + 4 * v7) = 0;
            v8 = 1;
            goto LABEL_39;
          }

          if ((v17 & 0xC0) != 0x80)
          {
            goto LABEL_35;
          }

          v18 = *(a1 + v11 + 2);
          if ((v18 & 0xC0) != 0x80)
          {
            goto LABEL_35;
          }

          v11 += 3;
          v13 = (v17 << 6) + (v13 << 12) + v18;
        }

        else
        {
          if (v14 != 3)
          {
            goto LABEL_35;
          }

          v16 = *(a1 + v10);
          if (v13 == 244)
          {
            if (v16 >= 0x90)
            {
              goto LABEL_35;
            }
          }

          else if (v13 == 240 && v16 < 0x90)
          {
            goto LABEL_35;
          }

          if ((v16 & 0xC0) != 0x80)
          {
            goto LABEL_35;
          }

          v19 = *(a1 + v11 + 2);
          if ((v19 & 0xC0) != 0x80)
          {
            goto LABEL_35;
          }

          v20 = *(a1 + v11 + 3);
          if ((v20 & 0xC0) != 0x80)
          {
            goto LABEL_35;
          }

          v11 += 4;
          v13 = v20 + (((v16 << 6) + (v13 << 12) + v19) << 6);
        }
      }

      else if (v14)
      {
        v15 = *(a1 + v10);
        if ((v15 & 0xC0) != 0x80)
        {
          goto LABEL_35;
        }

        v11 += 2;
        v13 = v15 + (v13 << 6);
      }

      else
      {
        ++v11;
      }

      *(a4 + 4 * v7++) = v13 - UTF8_OFFSETS[v14];
      if (v11 >= a2 || v7 >= v12)
      {
        v8 = 0;
        v9 = 0;
        goto LABEL_38;
      }
    }

    *(a4 + 4 * v7) = 0;
    v8 = 1;
LABEL_38:
    LODWORD(v10) = v11;
  }

LABEL_39:
  if (a3)
  {
    *a3 = v10;
  }

  if (a6)
  {
    *a6 = v7;
  }

  if (v10 == a2)
  {
    v21 = 1;
  }

  else
  {
    v21 = v8;
  }

  if (v21)
  {
    return v9;
  }

  else
  {
    return 2344624137;
  }
}

uint64_t utf8_Utf8ToUtf32_Tolerant(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  LODWORD(v5) = 0;
  if (a2 && a4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(a1 + v6);
      v8 = UTF8_TRAILING_BYTES[*(a1 + v6++)];
      v9 = v7 & ~UTF8_BYTE_INDICATOR[v8];
      if (v7 >= 0xC2)
      {
        if (v8 <= 1)
        {
          LODWORD(v8) = 1;
        }

        do
        {
          v9 <<= 6;
          if (v6 < a2)
          {
            v10 = *(a1 + v6++);
            v9 |= v10 & 0x3F;
          }

          LODWORD(v8) = v8 - 1;
        }

        while (v8);
      }

      *(a3 + 4 * v5++) = v9;
    }

    while (v6 < a2 && v5 < a4);
  }

  if (a5)
  {
    *a5 = v5;
  }

  return 0;
}

uint64_t Utf32SymToUtf8Sym(unsigned int a1, _BYTE *a2, unsigned int a3)
{
  result = 2344624137;
  if (a3 >= 5)
  {
    if (a1 <= 0x7F)
    {
      result = 0;
      *a2 = a1;
      a2[1] = 0;
      return result;
    }

    if (a1 <= 0x7FF)
    {
      result = 0;
      a2[2] = 0;
      a2[1] = a1 & 0x3F | 0x80;
      v5 = (a1 >> 6) | 0xC0;
LABEL_10:
      *a2 = v5;
      return result;
    }

    if (!HIWORD(a1))
    {
      result = 0;
      a2[3] = 0;
      a2[2] = a1 & 0x3F | 0x80;
      a2[1] = (a1 >> 6) & 0x3F | 0x80;
      v5 = (a1 >> 12) | 0xE0;
      goto LABEL_10;
    }

    if (HIWORD(a1) <= 0x10u)
    {
      result = 0;
      a2[4] = 0;
      a2[3] = a1 & 0x3F | 0x80;
      a2[2] = (a1 >> 6) & 0x3F | 0x80;
      a2[1] = (a1 >> 12) & 0x3F | 0x80;
      v5 = (a1 >> 18) | 0xF0;
      goto LABEL_10;
    }

    *a2 = 0;
    return 2344624389;
  }

  return result;
}

uint64_t utf8_Utf32ToUtf8(uint64_t a1, int a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  *a5 = 0;
  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  result = 2344624137;
  while (1)
  {
    v9 = *(a1 + 4 * v6);
    if (v9 > 0x7F)
    {
      break;
    }

    v14 = *(a1 + 4 * v6);
    v10 = 1;
LABEL_11:
    if (v10 + v7 > a4)
    {
      return result;
    }

    v11 = v10;
    v12 = &v14;
    do
    {
      v13 = *v12++;
      *(a3 + v7++) = v13;
      --v11;
    }

    while (v11);
    *a5 += v10;
    if (++v6 == a2)
    {
      return 0;
    }
  }

  if (v9 <= 0x7FF)
  {
    v15 = v9 & 0x3F | 0x80;
    v14 = (v9 >> 6) | 0xC0;
    v10 = 2;
    goto LABEL_11;
  }

  if (!HIWORD(v9))
  {
    v16 = v9 & 0x3F | 0x80;
    v15 = (v9 >> 6) & 0x3F | 0x80;
    v14 = (v9 >> 12) | 0xE0;
    v10 = 3;
    goto LABEL_11;
  }

  if (HIWORD(v9) <= 0x10u)
  {
    v17 = v9 & 0x3F | 0x80;
    v16 = (v9 >> 6) & 0x3F | 0x80;
    v15 = (v9 >> 12) & 0x3F | 0x80;
    v14 = (v9 >> 18) | 0xF0;
    v10 = 4;
    goto LABEL_11;
  }

  return 2344624389;
}

uint64_t utf8_determineUTF8CharLength(unsigned int a1)
{
  result = 0;
  if (a1 <= 0xF5 && a1 - 194 <= 0xFFFFFFFD)
  {
    return UTF8_TRAILING_BYTES[a1] + 1;
  }

  return result;
}

uint64_t utf8_getUTF8Char(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v3 = *(a1 + a2);
  if (v3 > 0xF5 || v3 - 194 > 0xFFFFFFFD)
  {
    return 2344624389;
  }

  v6 = UTF8_TRAILING_BYTES[*(a1 + a2)];
  v7 = v6 + 1;
  v8 = a3;
  do
  {
    *v8++ = *(a1 + a2++);
    --v7;
  }

  while (v7);
  result = 0;
  a3[v6 + 1] = 0;
  return result;
}

uint64_t utf8_GetWCharFromUtf8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *MEMORY[0x1E69E9840];
  utf8_GetUtf8Symbol(a1, a2, a3, __s);
  if (Utf8_Utf8NbrOfSymbols(__s) > 2)
  {
    return 0;
  }

  v4 = 0;
  utf8_Utf8ToUtf16(__s, UTF8_TRAILING_BYTES[__s[0]] + 1, 0, &v4, 1u, 0, 0);
  return v4;
}

uint64_t utf8_GetUtf8Symbol(uint64_t result, unsigned int a2, unsigned int a3, char *__s)
{
  *__s = 0;
  if (result)
  {
    v4 = result;
    result = 0;
    if (a2 < a3)
    {
      LOBYTE(v5) = *v4;
      if (*v4)
      {
        if (a2)
        {
          while (v4[a2] <= -65)
          {
            if (!--a2)
            {
              goto LABEL_7;
            }
          }

          LOBYTE(v5) = v4[a2];
          if (!v5)
          {
            return 1;
          }
        }

        else
        {
LABEL_7:
          a2 = 0;
          result = 0;
          if (v5 < -64)
          {
            return result;
          }

          if (!*v4)
          {
            return 1;
          }
        }

        v7 = 0;
        v8 = a2 + 1;
        while (1)
        {
          v9 = &__s[v7];
          *v9 = v5;
          v9[1] = 0;
          v10 = strlen(__s);
          if (utf8_CheckValid(__s, v10))
          {
            break;
          }

          v11 = v7 + 1;
          if (v7 <= 7)
          {
            v5 = v4[(v8 + v7++)];
            if (v5)
            {
              continue;
            }
          }

          return (v11 + 1);
        }

        v11 = v7;
        return (v11 + 1);
      }
    }
  }

  return result;
}

uint64_t utf8_GetU32FromUtf8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *MEMORY[0x1E69E9840];
  utf8_GetUtf8Symbol(a1, a2, a3, __s);
  if (Utf8_Utf8NbrOfSymbols(__s) > 2)
  {
    return 0;
  }

  v4 = 0;
  utf8_Utf8ToUtf32(__s, UTF8_TRAILING_BYTES[__s[0]] + 1, 0, &v4, 1u, 0, 0);
  return v4;
}

size_t utf8_GetNextUtf8Offset(char *__s, int a2)
{
  if (!__s || !*__s)
  {
    return 0;
  }

  LODWORD(v3) = a2;
  v4 = strlen(__s);
  if (v4 > v3)
  {
    v5 = (v4 - 1) - v3;
    v6 = &__s[v3 + 1];
    while (v5)
    {
      v7 = *v6++;
      --v5;
      v3 = (v3 + 1);
      if (v7 >= -64)
      {
        return v3;
      }
    }
  }

  return v4;
}

uint64_t utf8_GetNextUtf8OffsetLimit(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !*a1)
  {
    return 1;
  }

  if (a2 < a3)
  {
    v3 = (a3 - 1) - a2;
    v4 = &a1[a2 + 1];
    while (v3)
    {
      v5 = *v4++;
      --v3;
      a2 = (a2 + 1);
      if (v5 >= -64)
      {
        return a2;
      }
    }
  }

  return a3;
}

uint64_t utf8_GetPreviousValidUtf8Offset(uint64_t result, unsigned int *a2)
{
  for (i = *a2; i; *a2 = --i)
  {
    if (*(result + i) > -65)
    {
      break;
    }
  }

  return result;
}

uint64_t utf8_GetPreviousUtf8Offset(uint64_t __s, unsigned int a2)
{
  if (__s)
  {
    v2 = __s;
    if (*__s)
    {
      v4 = strlen(__s);
      if (v4 >= a2)
      {
        v5 = a2;
      }

      else
      {
        v5 = v4;
      }

      if (!v5)
      {
        return 0xFFFFFFFFLL;
      }

      while (*(v2 + v5) < -64)
      {
        if (!--v5)
        {
          return 0xFFFFFFFFLL;
        }
      }

      v6 = v5 - 1;
      while (v6)
      {
        v7 = *(v2 + v6--);
        if (v7 >= -64)
        {
          return v6 + 1;
        }
      }
    }

    return 0;
  }

  return __s;
}

uint64_t utf8_GetPreviousUtf8OffsetLimit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (result)
  {
    if (*result)
    {
      v3 = a3 - 1;
      if (a2 < a3)
      {
        v3 = a2;
      }

      if (!v3)
      {
        return 0xFFFFFFFFLL;
      }

      while (*(result + v3) < -64)
      {
        if (!--v3)
        {
          return 0xFFFFFFFFLL;
        }
      }

      v4 = v3 - 1;
      while (v4)
      {
        v5 = *(result + v4--);
        if (v5 >= -64)
        {
          return v4 + 1;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t utf8_GetCurrentUtf8Offset(unint64_t __s, unsigned int a2)
{
  if (__s)
  {
    v2 = __s;
    if (*__s)
    {
      LODWORD(__s) = strlen(__s);
      if (__s >= a2)
      {
        __s = a2;
      }

      else
      {
        __s = __s;
      }

      for (; __s; __s = (__s - 1))
      {
        if (v2[__s] > -65)
        {
          break;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return __s;
}

uint64_t utf8_BelongsToSet(unsigned int a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  switch(a1)
  {
    case 4u:
      v7 = (a2 + a3);
      if (*v7 == 239)
      {
LABEL_10:
        if (v7[1] != 187 || v7[2] != 191)
        {
          break;
        }

        return 1;
      }

      if (a3 <= a4 && !*v7)
      {
        return 1;
      }

      break;
    case 3u:
      if (a3 <= a4 && !*(a2 + a3))
      {
        return 1;
      }

      break;
    case 2u:
      v7 = (a2 + a3);
      if (*v7 != 239)
      {
        break;
      }

      goto LABEL_10;
    default:
      break;
  }

  result = Utf8_GetWCharClassifier(a1);
  if (result)
  {
    v9 = result;
    result = utf8_GetWCharFromUtf8(a2, a3, a4);
    if (result)
    {

      return v9();
    }
  }

  return result;
}

BOOL utf8_ToLower(const char *a1, unsigned int a2, uint64_t a3)
{
  v6 = strlen(a1);
  WCharFromUtf8 = utf8_GetWCharFromUtf8(a1, a2, v6);
  WCharClassifier = Utf8_GetWCharClassifier(0x12u);
  if (WCharClassifier && (WCharClassifier)(WCharFromUtf8))
  {
    goto LABEL_5;
  }

  v9 = Utf8_GetWCharClassifier(0x15u);
  if (v9)
  {
    if ((v9)(WCharFromUtf8))
    {
      goto LABEL_5;
    }
  }

  v13 = Utf8_GetWCharClassifier(0x18u);
  if (v13 && (v13)(WCharFromUtf8))
  {
    if (WCharFromUtf8 == 304)
    {
      LOWORD(v10) = -199;
    }

    else
    {
      if (WCharFromUtf8 != 376)
      {
        v11 = 1;
        LOWORD(v10) = 1;
        goto LABEL_7;
      }

      LOWORD(v10) = -121;
    }

    goto LABEL_6;
  }

  v14 = Utf8_GetWCharClassifier(0x1Bu);
  if (v14 && (v14)(WCharFromUtf8))
  {
    if ((WCharFromUtf8 - 902) < 0xA)
    {
      LOWORD(v10) = asc_1C37ABEBC[(WCharFromUtf8 - 902)];
      goto LABEL_6;
    }

LABEL_5:
    LOWORD(v10) = 32;
LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  v10 = Utf8_GetWCharClassifier(0x1Eu);
  if (v10)
  {
    v15 = (v10)(WCharFromUtf8);
    if (((WCharFromUtf8 - 1040) & 0xFFE0) != 0)
    {
      v16 = 1;
    }

    else
    {
      v16 = 32;
    }

    if ((WCharFromUtf8 & 0xFFF0) == 0x400)
    {
      v17 = 80;
    }

    else
    {
      v17 = v16;
    }

    v11 = v15 != 0;
    if (v15)
    {
      LOWORD(v10) = v17;
    }

    else
    {
      LOWORD(v10) = 0;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_7:
  v18[0] = v10 + WCharFromUtf8;
  v18[1] = 0;
  utf8_16bitToUtf8(v18, a3);
  return v11;
}

char *utf8_strchr(char *a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (v3 > 0xF5 || v3 - 194 > 0xFFFFFFFD)
  {
    v5 = 0;
  }

  else
  {
    v5 = UTF8_TRAILING_BYTES[*a2] + 1;
  }

  __strncpy_chk();
  __s2[v5] = 0;
  return strstr(a1, __s2);
}

BOOL utf8_IsChineseLetter(const char *a1)
{
  v5 = 0;
  v2 = strlen(a1);
  v4 = 0;
  utf8_Utf8ToUtf32_Tolerant(a1, v2, &v5, 1u, &v4);
  return v4 && wchar_IsChineseLetter(v5) != 0;
}

uint64_t utf8_GetChineseUTFCharNum(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + v2);
      if (v4 > 0xF5 || v4 - 194 > 0xFFFFFFFD)
      {
        v6 = 0;
      }

      else
      {
        v6 = UTF8_TRAILING_BYTES[*(a1 + v2)] + 1;
      }

      ++v3;
      v2 = (v6 + v2);
    }

    while (v2 < a2);
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t utf8_countNbrOfPhonWords(uint64_t a1, unsigned int a2, _WORD *a3, _WORD *a4)
{
  *a3 = 0;
  *a4 = a2;
  if (!a2)
  {
    v9 = -1;
LABEL_8:
    v10 = v9;
    do
    {
      if (!utf8_BelongsToSet(0, a1, v10, a2))
      {
        break;
      }

      --*a4;
      --v10;
    }

    while (v10);
    goto LABEL_11;
  }

  for (i = 0; i != a2; ++i)
  {
    if (!utf8_BelongsToSet(0, a1, i, a2))
    {
      break;
    }

    ++*a3;
  }

  v9 = a2 - 1;
  if (a2 != 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  v11 = *a3;
  v12 = *a4;
  if (v11 >= v12)
  {
    return 0;
  }

  else
  {
    v13 = 0;
    v14 = 95;
    do
    {
      v15 = *(a1 + v11);
      if (v15 == 35 || v15 == 95)
      {
        if (v14 != 35 && v14 != 95)
        {
          ++v13;
        }
      }

      else if (v15 == 92)
      {
        v16 = v11 + 1;
        if (v16 < v12 && *(a1 + v16) == 84)
        {
          for (j = v11 + 2; j < v12; j += v20)
          {
            v18 = *(a1 + j);
            if (v18 == 92)
            {
              break;
            }

            if (v18 > 0xF5 || v18 - 194 > 0xFFFFFFFD)
            {
              v20 = 0;
            }

            else
            {
              v20 = UTF8_TRAILING_BYTES[*(a1 + j)] + 1;
            }
          }

          if (*(a1 + j) == 92)
          {
            v11 = j;
          }
        }
      }

      if (!utf8_BelongsToSet(0, a1, v11, a2))
      {
        v14 = *(a1 + v11);
      }

      ++v11;
      v12 = *a4;
    }

    while (v12 > v11);
    if (v14 == 95)
    {
      v21 = v13;
    }

    else
    {
      v21 = v13 + 1;
    }

    if (v14 == 35)
    {
      return v13;
    }

    else
    {
      return v21;
    }
  }
}

uint64_t wchar_IsChineseLetter(unsigned int a1)
{
  v1 = vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1C37ABEE0, vaddq_s32(vdupq_n_s32(a1), xmmword_1C37ABED0))));
  v3 = (a1 - 173824) >> 4 < 0x27B || a1 - 194560 < 0x21E;
  return v1 & 1 | (a1 - 0x20000 < 0xA6D7) | v3;
}

uint64_t (*Utf8_GetWCharClassifier(unsigned int a1))()
{
  if (a1 > 0x24)
  {
    return 0;
  }

  else
  {
    return off_1F42D0B00[a1];
  }
}

BOOL wchar_IsBlank(unsigned int a1)
{
  if (LH_wcschr(&szBLANKS, a1))
  {
    return 1;
  }

  if (a1 < 0xA0)
  {
    return 0;
  }

  v3 = 0;
  v4 = 24;
  while (1)
  {
    v5 = (v3 + v4) / 2;
    v6 = wchar_IsBlank_wisspaceList[v5];
    if (v6 <= a1)
    {
      break;
    }

    v4 = v5 - 1;
LABEL_9:
    if (v3 > v4)
    {
      return 0;
    }
  }

  if (v6 < a1)
  {
    v3 = v5 + 1;
    goto LABEL_9;
  }

  return v5 != 0xFFFF;
}

uint64_t wchar_IsWordChar(unsigned int a1)
{
  v1 = 1;
  if ((a1 - 162 > 0x1C || ((1 << (a1 + 94)) & 0x1D8BD1AB) == 0) && (a1 - 36 > 0x3A || ((1 << (a1 - 36)) & 0x400000012000087) == 0) && a1 != 126)
  {
    v3 = vcgt_u16(vadd_s16(vdup_n_s16(a1), 0xFF40FF9FFFBFFFD0), 0xFFBAFFF9FFF8FFF0);
    v3.i16[0] = vmaxv_u16(v3);
    LODWORD(v1) = (((a1 - 8304) >> 4) < 0xFF9u) & ~v3.i32[0];
    if (((a1 + 16) >> 6) >= 0x3F9u || (a1 & 0xFFC0) == 12288)
    {
      return 0;
    }

    else
    {
      return v1;
    }
  }

  return v1;
}

uint64_t wchar_IsPunctuation(unsigned int a1)
{
  v1 = vmaxv_u16(vcgt_u16(0x4500060007000FLL, vadd_s16(vdup_n_s16(a1), 0xFF85FFA5FFC6FFDFLL)));
  v3 = (a1 + 464) < 0x1C0u || (a1 & 0xFFC0) == 12288;
  return v1 & 1 | (a1 - 0x2000 < 0x70) | v3;
}

uint64_t wchar_IsLatinExtendedACapitalLetter(int a1)
{
  v1 = (a1 - 256) <= 0x36 && (a1 & 1) == 0;
  if (v1 || (a1 - 328) >= 0xFFFFFFF1 && (a1 & 1) != 0 || (a1 - 330) <= 0x2E && (a1 & 1) == 0)
  {
    return 1;
  }

  if ((a1 - 377) >= 5)
  {
    return 0;
  }

  return a1 & 1;
}

BOOL wchar_IsGreekCapitalLetter(int a1)
{
  if (a1 - 902) < 7 && ((0x5Du >> (a1 + 122)))
  {
    return 1;
  }

  v2 = (a1 - 913) < 0x11u || (a1 - 931) < 9;
  return (a1 & 0xFFFE) == 0x38E || v2;
}

BOOL wchar_IsCyrillicCapitalLetter(int a1)
{
  if ((a1 - 1024) < 0x30 || (a1 - 1120) <= 0x20 && (a1 & 1) == 0)
  {
    return 1;
  }

  if ((a1 - 1164) <= 0x32)
  {
    goto LABEL_8;
  }

  v1 = ((a1 - 1217) >> 1) | ((a1 - 1217) << 15);
  if (v1 < 6u && ((0x2Bu >> v1) & 1) != 0)
  {
    return 1;
  }

  if ((a1 - 1232) <= 0x24)
  {
LABEL_8:
    if ((a1 & 1) == 0)
    {
      return 1;
    }
  }

  return a1 == 1272;
}

char *LH_MapModuleNameToId(char *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      v2 = &word_1E81A1870;
      v3 = 239;
      while (LH_stricmp(v1, *(v2 - 1)))
      {
        v2 += 8;
        if (!--v3)
        {
          return 0;
        }
      }

      return *v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t LH_MapModuleNamesToIds(char *a1, char *a2, unsigned int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 18;
  }

  v5 = a1;
  *a2 = 0;
  if (!a1 || !*a1)
  {
    v5 = "all";
  }

  if (LH_stricmp(v5, "all"))
  {
    for (i = v5; ; ++i)
    {
      v7 = *i;
      v8 = v7 > 0x3B;
      v9 = (1 << v7) & 0x800100100000001;
      if (v8 || v9 == 0)
      {
        continue;
      }

      if ((i - v5 - 1) <= 0x3E)
      {
        __strncpy_chk();
        __s[i - v5] = 0;
        if (__s[0] - 48 > 9)
        {
          v11 = LH_MapModuleNameToId(__s);
          if (v11)
          {
LABEL_16:
            if (*a2 && strlen(a2) + 1 < a3)
            {
              *&a2[strlen(a2)] = 32;
            }

            __sprintf_chk(__s, 0, 0x40uLL, "%d", v11);
            v12 = strlen(a2);
            if (strlen(__s) + v12 < a3)
            {
              strcat(a2, __s);
            }
          }
        }

        else
        {
          v11 = LH_atoi(__s);
          if (v11)
          {
            goto LABEL_16;
          }
        }
      }

      if (!*i)
      {
        return 0;
      }

      LODWORD(v5) = i++ + 1;
    }
  }

  snprintf(a2, a3, "%s", v5);
  return 0;
}

uint64_t base64_encode(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3 && a4)
  {
    v5 = 0;
    v6 = 0;
    *a4 = 0;
    v7 = a2;
    while (2)
    {
      v8 = 0;
      v9 = 0;
      v10 = 16;
      while (1)
      {
        v11 = *(a1 + v5 + v8);
        v12 = v9 | v11;
        if (v8 == 2)
        {
          break;
        }

        v9 = (v12 << 8);
        ++v8;
        v10 -= 8;
        if (v7 - v5 == v8)
        {
          v15 = (v9 << v10);
          v16 = (a3 + v6);
          *v16 = base64_alphabet_[v15 >> 18];
          v16[1] = base64_alphabet_[(v15 >> 12) & 0x3F];
          v17 = 61;
          if (v8 != 1)
          {
            v17 = base64_alphabet_[(v15 >> 6) & 0x3CLL];
          }

          *(a3 + (v6 | 2)) = v17;
          v6 += 4;
          v16[3] = 61;
          goto LABEL_15;
        }
      }

      v13 = (a3 + v6);
      *v13 = base64_alphabet_[v9 >> 18];
      v13[1] = base64_alphabet_[(v9 >> 12) & 0x3F];
      v13[2] = base64_alphabet_[(v12 >> 6) & 0x3F];
      v6 += 4;
      v13[3] = base64_alphabet_[v11 & 0x3F];
      v14 = ~v5 + v7;
      v5 += v8 + 1;
      if (v14 != v8)
      {
        continue;
      }

      break;
    }

LABEL_15:
    v4 = 0;
    *a4 = v6;
  }

  return v4;
}

unint64_t ssft_bsearch(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  v5 = (a3 - 1) * a4;
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v10 = a2 + v5;
    v11 = -a4;
    do
    {
      if (a3 >= 2)
      {
        v16 = a3 >> 1;
        v17 = (a3 & 1) + (a3 >> 1) - 1;
        v18 = v8 + v17 * a4;
        v19 = a5(a1, v18);
        if (!v19)
        {
          v8 += v17 * a4;
          return v8;
        }

        v13 = v18 + a4;
        v14 = v18 + v11;
        v15 = v19 >= 0;
        if (v19 < 0)
        {
          a3 = v17;
        }

        else
        {
          a3 = v16;
        }
      }

      else
      {
        if (!a3)
        {
          return 0;
        }

        v12 = a5(a1, v8);
        if (!v12)
        {
          return v8;
        }

        v13 = v8 + a4;
        v14 = v10 + v11;
        v15 = v12 >= 0;
        a3 = 1;
      }

      if (v15)
      {
        v8 = v13;
      }

      else
      {
        v10 = v14;
      }
    }

    while (v8 <= v10);
  }

  return 0;
}

uint64_t ssft_qsort(uint64_t result, unint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v35 = result;
  if (a2 < 2)
  {
    return result;
  }

  v5 = a3;
  v6 = a2 >> 1;
  v7 = result + (a2 >> 1) * a3;
  v33 = -a3;
  do
  {
    v8 = 0;
    v9 = a2 - 1;
    v30 = a2 - 1;
    v31 = a2;
    while (1)
    {
      v36 = v9;
      v10 = v8 - 2;
      v11 = v8 - 1;
      v12 = v35 + v5 * (v8 - 1);
      v13 = v35 + v5 * v8;
      do
      {
        v14 = v11;
        v15 = a4(v13, v7);
        ++v10;
        v12 += v5;
        v13 += v5;
        v11 = v14 + 1;
      }

      while (v15 < 0);
      v16 = 0;
      v34 = v10 - v6;
      v17 = v6 - 1;
      v18 = v5 * v36;
      v19 = v35 + v5;
      v20 = v7;
      v21 = a4;
      v22 = v19 + v18;
      v23 = v35 + v18;
      do
      {
        result = v21(v23, v20);
        ++v16;
        ++v14;
        ++v17;
        v22 += v33;
        v23 += v33;
      }

      while (result > 0);
      v24 = v21;
      v9 = v36 - v16 + 1;
      v8 = v10 + 1;
      if (v10 + 1 < v9)
      {
        v25 = v20;
        v5 = a3;
        if (a3 >= 1)
        {
          v26 = 0;
          do
          {
            v27 = *(v12 + v26);
            *(v12 + v26) = *(v22 + v26);
            *(v22 + v26++) = v27;
          }

          while (a3 != v26);
        }

        if (v36 == v17)
        {
          v28 = v10 + 1;
        }

        else
        {
          v28 = v6;
        }

        if (v36 == v17)
        {
          v29 = v12;
        }

        else
        {
          v29 = v25;
        }

        v8 = v10 + 2;
        if (v34 == -1)
        {
          v6 = v36 - v16 + 1;
        }

        else
        {
          v6 = v28;
        }

        if (v34 == -1)
        {
          v7 = v22;
        }

        else
        {
          v7 = v29;
        }

        v9 = v36 - v16;
        goto LABEL_27;
      }

      v7 = v20;
      v5 = a3;
      if (v36 == v14)
      {
        break;
      }

LABEL_27:
      a4 = v24;
      if (v8 >= v9)
      {
        if (!v9)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    v8 = v10 + 2;
    v9 = v10;
    a4 = v24;
    if (v10)
    {
LABEL_29:
      result = ssft_qsort(v35, v9 + 1, v5, a4);
    }

LABEL_30:
    if (v8 >= v30)
    {
      break;
    }

    a2 = v31 - v8;
    v6 = (v31 - v8) >> 1;
    v35 += v8 * v5;
    v7 = v35 + v6 * v5;
  }

  while (v31 - v8 > 1);
  return result;
}

uint64_t LH_stricmp(char *a1, char *a2)
{
  v4 = *a1;
  v5 = __tolower(*a1);
  v6 = __tolower(*a2);
  if (v5 != v6)
  {
    return (v5 - v6);
  }

  v7 = v4;
  v8 = 1;
  while (v7)
  {
    v7 = a1[v8];
    v5 = __tolower(v7);
    v6 = __tolower(a2[v8++]);
    if (v5 != v6)
    {
      return (v5 - v6);
    }
  }

  return 0;
}

uint64_t LH_strnicmp(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  if (a3)
  {
    v7 = 1;
    do
    {
      v8 = *(a1 + v6);
      v9 = __tolower(v8);
      v10 = *(a2 + v6);
      v11 = __tolower(v10);
      if (v10)
      {
        v12 = v8 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12 || v9 != v11)
      {
        break;
      }

      v6 = v7++;
    }

    while (v6 < a3);
  }

  if (v6 == a3)
  {
    return 0;
  }

  v15 = __tolower(*(a1 + v6));
  return (v15 - __tolower(*(a2 + v6)));
}

char *LH_itoa(unsigned int a1, char *a2, unsigned int a3)
{
  if (a1)
  {
    if (a3 - 37 >= 0xFFFFFFDD)
    {
      if ((a1 & 0x80000000) != 0 && a3 == 10)
      {
        *a2 = 45;
        v3 = a2 + 1;
        a1 = -a1;
      }

      else
      {
        v3 = a2;
      }

      v4 = v3 - 1;
      do
      {
        if (a1 % a3 >= 0xA)
        {
          v5 = a1 % a3 + 87;
        }

        else
        {
          v5 = (a1 % a3) | 0x30;
        }

        *++v4 = v5;
        v6 = a1 >= a3;
        a1 /= a3;
      }

      while (v6);
      v4[1] = 0;
      if (v4 > v3)
      {
        v7 = v3 + 1;
        do
        {
          v8 = *v4;
          *v4-- = *(v7 - 1);
          *(v7 - 1) = v8;
        }

        while (v4 > v7++);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *a2 = 48;
  }

  return a2;
}

const char *LH_atoi(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result);
    if (v2 < 1)
    {
      LODWORD(v3) = 0;
    }

    else
    {
      v3 = 0;
      while (1)
      {
        v4 = v1[v3];
        if (v4 != 32 && v4 != 9)
        {
          break;
        }

        if ((v2 & 0x7FFFFFFF) == ++v3)
        {
          return 0;
        }
      }
    }

    LODWORD(v6) = v3;
    if (v3 < v2 - 1)
    {
      v7 = v1[v3];
      if (v7 == 45 || (LODWORD(v6) = v3, v7 == 43))
      {
        LODWORD(v6) = v3 + 1;
      }
    }

    if (v6 < v2)
    {
      v8 = &v1[v6];
      while (1)
      {
        v9 = *v8++;
        if ((v9 - 48) > 9)
        {
          break;
        }

        LODWORD(v6) = v6 + 1;
        if (v2 == v6)
        {
          LODWORD(v6) = v2;
          break;
        }
      }
    }

    if (v6 <= v3)
    {
      return 0;
    }

    else
    {
      result = 0;
      v6 = v6;
      v10 = 1;
      do
      {
        v11 = v1[v6 - 1];
        if ((v11 - 48) > 9)
        {
          if (v3 + 1 != v6)
          {
            return 0;
          }

          if (v11 != 43)
          {
            if (v11 != 45)
            {
              return 0;
            }

            result = -result;
          }
        }

        else
        {
          result = (result + v10 * (v11 - 48));
          v10 *= 10;
        }

        --v6;
      }

      while (v6 > v3);
    }
  }

  return result;
}

char *LH_utoa(unsigned int a1, char *a2, unsigned int a3)
{
  if (a1)
  {
    v3 = a2 - 1;
    do
    {
      if (a1 % a3 >= 0xA)
      {
        v4 = a1 % a3 + 87;
      }

      else
      {
        v4 = (a1 % a3) | 0x30;
      }

      *++v3 = v4;
      v5 = a1 >= a3;
      a1 /= a3;
    }

    while (v5);
    v3[1] = 0;
    if (v3 > a2)
    {
      v6 = a2 + 1;
      do
      {
        v7 = *v3;
        *v3-- = *(v6 - 1);
        *(v6 - 1) = v7;
      }

      while (v3 > v6++);
    }
  }

  else
  {
    *a2 = 48;
  }

  return a2;
}

const char *LH_atou(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result);
    if (v2 < 1)
    {
      LODWORD(v3) = 0;
    }

    else
    {
      v3 = 0;
      while (1)
      {
        v4 = v1[v3];
        if (v4 != 32 && v4 != 9)
        {
          break;
        }

        if ((v2 & 0x7FFFFFFF) == ++v3)
        {
          return 0;
        }
      }
    }

    LODWORD(v6) = v3;
    if (v3 < v2 - 1)
    {
      if (v1[v3] == 43)
      {
        LODWORD(v6) = v3 + 1;
      }

      else
      {
        LODWORD(v6) = v3;
      }
    }

    if (v6 < v2)
    {
      v7 = &v1[v6];
      while (1)
      {
        v8 = *v7++;
        if ((v8 - 48) > 9)
        {
          break;
        }

        LODWORD(v6) = v6 + 1;
        if (v2 == v6)
        {
          LODWORD(v6) = v2;
          break;
        }
      }
    }

    if (v6 > v3)
    {
      v9 = 0;
      v6 = v6;
      v10 = 1;
      while (1)
      {
        v11 = v1[v6 - 1];
        if ((v11 - 48) > 9)
        {
          result = 0;
          if (v3 + 1 != v6 || v11 != 43)
          {
            return result;
          }
        }

        else
        {
          v9 = (v9 + v10 * (v11 - 48));
          v10 *= 10;
        }

        --v6;
        result = v9;
        if (v6 <= v3)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

size_t wcslen(const __int32 *a1)
{
  v1 = 0;
    ;
  }

  return ((v1 * 4) >> 2) - 1;
}

char *__cdecl strtok_r(char *__str, const char *__sep, char **__lasts)
{
  v5 = __str;
  if (!__str)
  {
    v5 = *__lasts;
  }

  v6 = &v5[strspn(v5, __sep)];
  if (!*v6)
  {
    return 0;
  }

  v7 = strpbrk(v6, __sep);
  if (v7)
  {
    *v7 = 0;
    v8 = v7 + 1;
  }

  else
  {
    v8 = &v6[strlen(v6)];
  }

  *__lasts = v8;
  return v6;
}

uint64_t depes_tolower(uint64_t result)
{
  if ((result - 65) <= 0x19)
  {
    return result | 0x20;
  }

  if (result > 145)
  {
    if (result > 153)
    {
      if (result == 154)
      {
        return 129;
      }

      else if (result == 165)
      {
        return 164;
      }
    }

    else if (result == 146)
    {
      return 145;
    }

    else if (result == 153)
    {
      return 148;
    }
  }

  else if (result > 142)
  {
    if (result == 143)
    {
      return 134;
    }

    else if (result == 144)
    {
      return 130;
    }
  }

  else if (result == 128)
  {
    return 135;
  }

  else if (result == 142)
  {
    return 132;
  }

  return result;
}

uint64_t ssft_tolower(int a1)
{
  switch(a1)
  {
    case 138:
      return a1 | 0x10u;
    case 159:
      return -1;
    case 140:
      return a1 | 0x10u;
    default:
      v3 = (a1 + 64) < 0x17u || (a1 - 65) < 0x1Au || (a1 & 0xF8) == 216;
      v1 = a1 + 32;
      if (!v3)
      {
        return a1;
      }

      break;
  }

  return v1;
}

const char *TxtEncodingGetName(int a1)
{
  v2 = &dword_1E81A2760;
  v3 = 128;
  result = "default";
  while (*v2 != a1)
  {
    v2 += 8;
    if (!--v3)
    {
      return result;
    }
  }

  return *(v2 - 1);
}

uint64_t TxtEncodingGetId(unsigned __int8 *a1)
{
  v1 = 0;
  while (1)
  {
    v2 = &(&TXTENC_EncodingTable)[4 * v1];
    v3 = *v2;
    v4 = a1;
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = v6 | 0x20;
      if ((v6 - 65) < 0x1A)
      {
        v5 = v7;
      }

      v9 = *v3++;
      v8 = v9;
      v10 = v9 | 0x20;
      if ((v9 - 65) < 0x1A)
      {
        v8 = v10;
      }

      if (v5)
      {
        v11 = v5 == v8;
      }

      else
      {
        v11 = 0;
      }
    }

    while (v11);
    if (v5 == v8)
    {
      break;
    }

    if (++v1 == 128)
    {
      return 0;
    }
  }

  return *(v2 + 2);
}

uint64_t TxtEncodingGetMap(int a1, int a2)
{
  v2 = 128;
  for (i = &qword_1E81A2768; *(i - 2) != a1; i += 4)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  if (!a2)
  {
    ++i;
  }

  return *i;
}

uint64_t TxtEncodingCharToWChar(uint64_t result, _DWORD *a2)
{
  if (a2)
  {
    if (a2 == BuckToWChar)
    {
      LODWORD(result) = BuckToWChar[result];
    }

    else if ((result & 0x80) != 0)
    {
      LODWORD(result) = a2[result & 0x7F];
    }
  }

  return result;
}

uint64_t TxtEncodingWCharToChar(uint64_t result, __int16 *a2)
{
  if (!a2 || result <= 0x7F && a2 != WCharToBuck)
  {
    return result;
  }

  v2 = 0;
  if (a2 == WCharToBuck)
  {
    v3 = 94;
  }

  else
  {
    v3 = 127;
  }

  while (1)
  {
    v4 = a2[2 * ((v3 + v2) / 2)];
    if (v4 <= result)
    {
      break;
    }

    v3 = (v3 + v2) / 2 - 1;
LABEL_12:
    if (v2 > v3)
    {
      return 0;
    }
  }

  if (v4 != result)
  {
    v2 = (v3 + v2) / 2 + 1;
    goto LABEL_12;
  }

  return LOBYTE(a2[2 * ((v3 + v2 + ((v3 + v2) >> 31)) >> 1) + 1]);
}

uint64_t TxtEncodingCharUTF8ToUTF16(char *a1)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  v1 = *a1;
  if (*a1 < 0)
  {
    v2 = a1[1];
    if ((v1 - 194) <= 0x1D)
    {
      v3 = v2 + (v1 << 6);
      v4 = -12416;
LABEL_11:
      LOWORD(v1) = v3 + v4;
      return v1;
    }

    if (a1[1])
    {
      v5 = a1[2];
      if ((v1 & 0xF0) != 0xE0)
      {
        if (a1[2])
        {
          v6 = a1[3] - 128;
          v5 <<= 6;
          goto LABEL_13;
        }

LABEL_12:
        v6 = -128;
LABEL_13:
        if ((v1 - 240) <= 4)
        {
          LOWORD(v1) = v5 + (v2 << 12) + v6 - 0x2000;
          return v1;
        }

LABEL_15:
        LOWORD(v1) = 0;
        return v1;
      }
    }

    else
    {
      v5 = 0;
      if ((v1 & 0xF0) != 0xE0)
      {
        goto LABEL_12;
      }
    }

    v3 = (v2 << 6) + (v1 << 12);
    v4 = v5 - 8320;
    goto LABEL_11;
  }

  return v1;
}

uint64_t TxtEncodingCharUTF16ToUTF8(unsigned int a1, uint64_t a2)
{
  *a2 = 0;
  if (a1 > 0x7F)
  {
    if (a1 > 0x7FE)
    {
      if (a1 != 0xFFFF)
      {
        *a2 = (a1 >> 12) | 0xE0;
        *(a2 + 1) = (a1 >> 6) & 0x3F | 0x80;
        *(a2 + 2) = a1 & 0x3F | 0x80;
      }
    }

    else
    {
      *a2 = (a1 >> 6) | 0xC0;
      *(a2 + 1) = a1 & 0x3F | 0x80;
    }
  }

  else
  {
    *a2 = a1;
  }

  return a2;
}

char *TxtEncodingConvert(uint64_t a1, int a2, int a3, char *a4, unint64_t a5, uint64_t a6, size_t a7, unint64_t *a8)
{
  v9 = a6;
  v11 = a4;
  v128 = *MEMORY[0x1E69E9840];
  v126 = 0;
  if (a8)
  {
    *a8 = 0;
  }

  if (!a4)
  {
    return 0;
  }

  switch(a2)
  {
    case 65001:
      switch(a3)
      {
        case 1200:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 1;
          v20 = 6;
          goto LABEL_35;
        case 1201:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v20 = 9;
          v14 = 1;
          goto LABEL_26;
        case 65001:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v20 = 1;
          goto LABEL_26;
      }

      v14 = 0;
      v15 = 0;
      v19 = 0;
      v16 = 0;
      v23 = 0;
      v17 = 1;
      v20 = 6;
LABEL_31:
      v22 = 1;
      v21 = 1;
      v18 = 1;
      goto LABEL_38;
    case 1201:
      switch(a3)
      {
        case 1200:
LABEL_23:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 1;
          v20 = 10;
LABEL_35:
          v22 = 1;
          goto LABEL_36;
        case 1201:
LABEL_24:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 1;
          v20 = 2;
          goto LABEL_35;
        case 65001:
          v14 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v20 = 8;
          v15 = 1;
LABEL_26:
          v19 = 1;
          goto LABEL_35;
      }

      v14 = 0;
      v15 = 0;
      v19 = 0;
      v16 = 0;
      v23 = 0;
      v17 = 1;
      v20 = 10;
      goto LABEL_31;
    case 1200:
      if (a3 != 1200)
      {
        if (a3 != 1201)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 1;
          if (a3 == 65001)
          {
            v20 = 7;
          }

          else
          {
            v20 = 5;
          }

          goto LABEL_35;
        }

        goto LABEL_23;
      }

      goto LABEL_24;
  }

  if (a3 == 1200)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1;
    v20 = 4;
    goto LABEL_35;
  }

  if (a3 == 1201)
  {
    v14 = 0;
    v15 = 0;
    v19 = 0;
    v16 = 0;
    v22 = 0;
    v18 = 0;
    v17 = 1;
    v20 = 4;
LABEL_36:
    v21 = 1;
    goto LABEL_37;
  }

  if (a3 != 65001)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1;
    v20 = 3;
    goto LABEL_35;
  }

  v14 = 0;
  v15 = 0;
  v19 = 0;
  v21 = 0;
  v18 = 0;
  v16 = 1;
  v20 = 4;
  v17 = 1;
  v22 = 1;
LABEL_37:
  v23 = 1;
LABEL_38:
  if (!(a1 | a6))
  {
    return 0;
  }

  if (v20 <= 5)
  {
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        if (v19)
        {
          if (a6)
          {
            v50 = 0;
            if (a5)
            {
              while (a4[v50])
              {
                if (a5 == ++v50)
                {
                  v50 = a5;
                  break;
                }
              }
            }

            if (v50 >= a7)
            {
              v51 = a7;
            }

            else
            {
              v51 = v50;
            }
          }

          else
          {
            v51 = 0;
            if (a5)
            {
              while (a4[v51])
              {
                if (a5 == ++v51)
                {
                  v51 = a5;
                  break;
                }
              }
            }

            v9 = heap_Alloc(a1, (v51 + 1));
            if (!v9)
            {
              return v9;
            }
          }

          v63 = &qword_1E81A2770;
          v64 = 128;
          while (*(v63 - 4) != a3)
          {
            v63 += 4;
            if (!--v64)
            {
              v65 = 0;
              goto LABEL_198;
            }
          }

          v65 = *v63;
LABEL_198:
          v66 = &qword_1E81A2768;
          v67 = 128;
          while (*(v66 - 2) != a2)
          {
            v66 += 4;
            if (!--v67)
            {
              v68 = 0;
              goto LABEL_203;
            }
          }

          v68 = *v66;
LABEL_203:
          v69 = 0;
          if (v51)
          {
            v70 = v9;
            do
            {
              v72 = *v11++;
              v71 = v72;
              if (v68)
              {
                if (v68 == BuckToWChar)
                {
                  v71 = BuckToWChar[v71];
                }

                else if ((v71 & 0x80) != 0)
                {
                  v71 = v68[v71 & 0x7F];
                }
              }

              if (!v71)
              {
                break;
              }

              v73 = TxtEncodingWCharToChar(v71, v65);
              *v70 = v73;
              if (v73)
              {
                v9[v69++] = v73;
              }

              ++v70;
              --v51;
            }

            while (v51);
          }

          if (a8)
          {
            *a8 = v69;
          }

          v9[v69] = 0;
          return v9;
        }

        return 0;
      }

      if (v20 == 4)
      {
        v25 = v16 ^ 1;
        if (a6)
        {
          v25 = 1;
        }

        if (v25)
        {
          if ((v22 & v17 & v21 & 1) == 0)
          {
            __s[0] = 0;
            v26 = a6;
            if (a6)
            {
              goto LABEL_324;
            }

            if (a5)
            {
              v27 = 0;
              while (a4[v27])
              {
                if (a5 == ++v27)
                {
                  LODWORD(v27) = a5;
                  break;
                }
              }

              v28 = a7;
              v29 = (2 * v27 + 2);
            }

            else
            {
              v28 = a7;
              v29 = 2;
            }

            v26 = heap_Alloc(a1, v29);
            a7 = v28;
            if (v26)
            {
LABEL_324:
              v105 = &qword_1E81A2768;
              v106 = 128;
              while (*(v105 - 2) != a2)
              {
                v105 += 4;
                if (!--v106)
                {
                  v107 = 0;
                  goto LABEL_329;
                }
              }

              v107 = *v105;
LABEL_329:
              if (a5)
              {
                v108 = 0;
                v109 = 0;
                v110 = 2;
                v123 = v107;
                v125 = v26;
                while (1)
                {
                  v111 = v11[v109];
                  if (v107)
                  {
                    if (v107 == BuckToWChar)
                    {
                      v111 = BuckToWChar[v11[v109]];
                    }

                    else if ((v111 & 0x80) != 0)
                    {
                      v111 = v107[v111 & 0x7F];
                    }
                  }

                  if (!v111)
                  {
                    break;
                  }

                  v112 = bswap32(v111) >> 16;
                  if (v22)
                  {
                    v113 = v111;
                  }

                  else
                  {
                    v113 = v112;
                  }

                  if (v16)
                  {
                    *__s = 0;
                    v114 = a7;
                    if (v113 > 0x7Fu)
                    {
                      if (v113 > 0x7FEu)
                      {
                        if (v113 != 0xFFFF)
                        {
                          __s[0] = (v113 >> 12) | 0xE0;
                          __s[1] = (v113 >> 6) & 0x3F | 0x80;
                          __s[2] = v113 & 0x3F | 0x80;
                        }
                      }

                      else
                      {
                        __s[0] = (v113 >> 6) | 0xC0;
                        __s[1] = v113 & 0x3F | 0x80;
                      }
                    }

                    else
                    {
                      __s[0] = v113;
                    }

                    v115 = strlen(__s);
                    v110 = 1;
                    a7 = v114;
                    v107 = v123;
                    v26 = v125;
                  }

                  else
                  {
                    v115 = 1;
                  }

                  if (!v9)
                  {
                    goto LABEL_352;
                  }

                  v116 = v115 + v108;
                  if (v115 + v108 >= a7 / v110)
                  {
                    break;
                  }

                  if (v110 != 2)
                  {
                    v117 = (v26 + v108);
                    v118 = a7;
                    v119 = v110;
                    memcpy(v117, __s, v115);
                    v110 = v119;
                    v107 = v123;
                    v26 = v125;
                    a7 = v118;
                    v108 = v116;
                  }

                  else
                  {
LABEL_352:
                    *(v26 + 2 * v108++) = v113;
                  }

                  if (a5 == ++v109)
                  {
                    v109 = a5;
                    break;
                  }
                }

                v120 = v110 == 1;
              }

              else
              {
                v109 = 0;
                v108 = 0;
                v120 = 0;
              }

              if (a8)
              {
                *a8 = v109;
              }

              if (v120)
              {
                *(v26 + v108) = 0;
              }

              else
              {
                *(v26 + 2 * v108) = 0;
              }
            }

            return v26;
          }

          return 0;
        }

        goto LABEL_169;
      }

      if (!v19)
      {
        return 0;
      }

      if (a6)
      {
        v52 = 0;
        if (a5)
        {
          while (*&a4[2 * v52])
          {
            if (a5 == ++v52)
            {
              v52 = a5;
              break;
            }
          }
        }

        v53 = a7 - 1;
        if (v52 < a7 - 1)
        {
          v53 = v52;
        }

        if (a7 == 1)
        {
          v53 = 0;
        }

        if (a7)
        {
          v54 = v53;
        }

        else
        {
          v54 = v52;
        }
      }

      else
      {
        v54 = 0;
        if (a5)
        {
          while (*&a4[2 * v54])
          {
            if (a5 == ++v54)
            {
              v54 = a5;
              break;
            }
          }
        }

        v9 = heap_Alloc(a1, (v54 + 1));
        if (!v9)
        {
          return v9;
        }
      }

      v74 = &qword_1E81A2770;
      v75 = 128;
      while (*(v74 - 4) != a3)
      {
        v74 += 4;
        if (!--v75)
        {
          v76 = 0;
          goto LABEL_227;
        }
      }

      v76 = *v74;
LABEL_227:
      for (i = 0; v54; --v54)
      {
        v77 = *v11;
        v11 += 2;
        v78 = TxtEncodingWCharToChar(v77, v76);
        if (v78)
        {
          v9[i++] = v78;
        }
      }

      goto LABEL_316;
    }

    if (v20 == 1)
    {
      if (!v19)
      {
        return 0;
      }

      if (a6)
      {
        if (a5)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          while (1)
          {
            v40 = v11[v38];
            if (!v11[v38])
            {
              goto LABEL_300;
            }

            if ((v40 & 0x80) == 0)
            {
              break;
            }

            if ((v40 - 194) < 0x1E)
            {
              v41 = 2;
              goto LABEL_91;
            }

            if ((v40 & 0xF0) == 0xE0)
            {
              v41 = 3;
              goto LABEL_91;
            }

            if ((v40 - 245) >= 0xFFFFFFFB)
            {
              v41 = 4;
              goto LABEL_91;
            }

            v42 = a7;
            v41 = 1;
LABEL_93:
            if (++v39 < a5)
            {
              v38 += v41;
              a7 = v42;
              if (v38 < a5)
              {
                continue;
              }
            }

            goto LABEL_300;
          }

          v41 = 1;
LABEL_91:
          v43 = v41 + v37;
          if (v41 + v37 >= a7)
          {
            goto LABEL_300;
          }

          v42 = a7;
          memcpy(&v9[v37], &v11[v38], v41);
          v37 = v43;
          goto LABEL_93;
        }

        v39 = 0;
        v37 = 0;
LABEL_300:
        v9[v37] = 0;
        if (!a8)
        {
          return v9;
        }
      }

      else
      {
        if (a5)
        {
          v79 = 0;
          v39 = 0;
          while (1)
          {
            v80 = v11[v79];
            if (!v11[v79])
            {
              break;
            }

            if ((v80 & 0x80) != 0)
            {
              if ((v80 - 194) >= 0x1E)
              {
                v82 = v80 & 0xF0;
                if ((v80 - 245) < 0xFFFFFFFB)
                {
                  v81 = 1;
                }

                else
                {
                  v81 = 4;
                }

                if (v82 == 224)
                {
                  v81 = 3;
                }
              }

              else
              {
                v81 = 2;
              }
            }

            else
            {
              v81 = 1;
            }

            v79 += v81;
            if (a5 == ++v39)
            {
              v39 = a5;
              break;
            }
          }
        }

        else
        {
          v39 = 0;
          v79 = 0;
        }

        v104 = strhelper_StringAppend(a1, 0, v11, v79, &v126, 0x100uLL);
        v9 = v104;
        if (!a8 || !v104)
        {
          return v9;
        }
      }

LABEL_321:
      *a8 = v39;
      return v9;
    }

    if (!v19)
    {
      return 0;
    }

    if (!a6)
    {
      v83 = TxtwStringAppend(a1, a4, a5, &v126);
      v9 = v83;
      if (a8 && v83)
      {
        *a8 = LH_wcslen(v83);
      }

      return v9;
    }

    v55 = 0;
    if (a5)
    {
      while (*&a4[2 * v55])
      {
        if (a5 == ++v55)
        {
          v55 = a5;
          break;
        }
      }
    }

    v56 = (a7 >> 1) - 1;
    if (v55 < v56)
    {
      v56 = v55;
    }

    if (a7 == 1)
    {
      v56 = 0;
    }

    if (a7)
    {
      v57 = v56;
    }

    else
    {
      v57 = v55;
    }

    LH_wcsncpy(a6, a4, v57);
    *&v9[2 * v57] = 0;
    if (!a8)
    {
      return v9;
    }

    goto LABEL_168;
  }

  if (v20 > 8)
  {
    if (v20 != 9)
    {
      if (!v19)
      {
        if (!v18)
        {
          return 0;
        }

        if (a6)
        {
          v60 = 0;
          if (a5)
          {
            while (*&a4[2 * v60])
            {
              if (a5 == ++v60)
              {
                v60 = a5;
                break;
              }
            }
          }

          v61 = a7 - 1;
          if (v60 < a7 - 1)
          {
            v61 = v60;
          }

          if (a7 == 1)
          {
            v61 = 0;
          }

          if (a7)
          {
            v62 = v61;
          }

          else
          {
            v62 = v60;
          }
        }

        else
        {
          v62 = 0;
          if (a5)
          {
            while (*&a4[2 * v62])
            {
              if (a5 == ++v62)
              {
                v62 = a5;
                break;
              }
            }
          }

          v9 = heap_Alloc(a1, (v62 + 1));
          if (!v9)
          {
            return v9;
          }
        }

        v99 = &qword_1E81A2770;
        v100 = 128;
        while (*(v99 - 4) != a3)
        {
          v99 += 4;
          if (!--v100)
          {
            v101 = 0;
            goto LABEL_312;
          }
        }

        v101 = *v99;
LABEL_312:
        for (i = 0; v62; --v62)
        {
          v102 = *v11;
          v11 += 2;
          v103 = TxtEncodingWCharToChar(bswap32(v102) >> 16, v101);
          if (v103)
          {
            v9[i++] = v103;
          }
        }

LABEL_316:
        v9[i] = 0;
        if (!a8)
        {
          return v9;
        }

LABEL_317:
        *a8 = i;
        return v9;
      }

      if (!a6)
      {
        v39 = 0;
        if (a5)
        {
          while (*&a4[2 * v39])
          {
            if (a5 == ++v39)
            {
              v39 = a5;
              break;
            }
          }
        }

        v9 = heap_Alloc(a1, (2 * v39 + 2));
        if (!v9)
        {
          return v9;
        }

        TXTENC_swab(v11, v9, 2 * v39 + 2);
        if (!a8)
        {
          return v9;
        }

        goto LABEL_321;
      }

      v58 = 0;
      if (a5)
      {
        while (*&a4[2 * v58])
        {
          if (a5 == ++v58)
          {
            v58 = a5;
            break;
          }
        }
      }

      v59 = (a7 >> 1) - 1;
      if (v58 < v59)
      {
        v59 = v58;
      }

      if (a7 == 1)
      {
        v59 = 0;
      }

      if (a7)
      {
        v57 = v59;
      }

      else
      {
        v57 = v58;
      }

      TXTENC_swab(a4, a6, 2 * v57 + 2);
      if (!a8)
      {
        return v9;
      }

LABEL_168:
      *a8 = v57;
      return v9;
    }

    goto LABEL_97;
  }

  if ((v20 - 7) >= 2)
  {
LABEL_97:
    if (v17 & v23)
    {
      return 0;
    }

    v124 = v14;
    if (a6)
    {
      goto LABEL_262;
    }

    if (!a5)
    {
      v49 = a7;
      LODWORD(v45) = 0;
      goto LABEL_258;
    }

    v44 = 0;
    v45 = 0;
    while (1)
    {
      v46 = a4[v44];
      if (!a4[v44])
      {
        v49 = a7;
LABEL_258:
        v84 = (v45 + 1);
        v85 = (2 * v45 + 2);
        if (v23)
        {
          v86 = v85;
        }

        else
        {
          v86 = v84;
        }

        v9 = heap_Alloc(a1, v86);
        a7 = v49;
        if (!v9)
        {
          return v9;
        }

LABEL_262:
        v87 = &qword_1E81A2770;
        v88 = 128;
        while (*(v87 - 4) != a3)
        {
          v87 += 4;
          if (!--v88)
          {
            v122 = 0;
            goto LABEL_267;
          }
        }

        v122 = *v87;
LABEL_267:
        v89 = 0;
        if (!a5)
        {
LABEL_294:
          if (a8)
          {
            *a8 = v89;
          }

          if (v18)
          {
            v9[v89] = 0;
          }

          else
          {
            *&v9[2 * v89] = 0;
          }

          return v9;
        }

        v90 = 0;
        v91 = 0;
        v92 = a7 - 1;
        v121 = (a7 - 1) >> 1;
        while (2)
        {
          v93 = v11[v90];
          if (!v11[v90])
          {
            goto LABEL_294;
          }

          if ((v93 & 0x80) == 0)
          {
            v94 = 1;
            goto LABEL_279;
          }

          if ((v93 - 194) < 0x1E)
          {
            v94 = 2;
            goto LABEL_279;
          }

          if ((v93 & 0xF0) == 0xE0)
          {
            v94 = 3;
            goto LABEL_279;
          }

          if ((v93 - 245) <= 0xFFFFFFFA)
          {
            ++v90;
            goto LABEL_293;
          }

          v94 = 4;
LABEL_279:
          __strncpy_chk();
          __s[v94] = 0;
          LODWORD(v95) = TxtEncodingCharUTF8ToUTF16(__s);
          v96 = __rev16(v95);
          if (v124)
          {
            v95 = v96;
          }

          else
          {
            v95 = v95;
          }

          if (v18)
          {
            if (v89 >= v92)
            {
              goto LABEL_294;
            }

            v97 = TxtEncodingWCharToChar(v95, v122);
            if (v97)
            {
              v9[v89] = v97;
              goto LABEL_288;
            }
          }

          else
          {
            if (v89 >= v121)
            {
              goto LABEL_294;
            }

            *&v9[2 * v89] = v95;
LABEL_288:
            ++v89;
          }

          v98 = v94 + v90;
          if (v90 < v94 + v90)
          {
            while (v11[v90])
            {
              ++v90;
              if (!--v94)
              {
                v90 = v98;
                break;
              }
            }
          }

LABEL_293:
          if (++v91 == a5)
          {
            goto LABEL_294;
          }

          continue;
        }
      }

      if ((v46 & 0x80) == 0)
      {
        v47 = 1;
        goto LABEL_111;
      }

      if ((v46 - 194) < 0x1E)
      {
        v47 = 2;
        goto LABEL_111;
      }

      if ((v46 & 0xF0) == 0xE0)
      {
        break;
      }

      if ((v46 - 245) >= 0xFFFFFFFB)
      {
        v47 = 4;
LABEL_111:
        v48 = v47 + v44;
        if (v44 < v47 + v44)
        {
          while (a4[v44])
          {
            ++v44;
            if (!--v47)
            {
              v44 = v48;
              goto LABEL_115;
            }
          }
        }

        goto LABEL_115;
      }

      ++v44;
LABEL_115:
      if (++v45 == a5)
      {
        v49 = a7;
        LODWORD(v45) = a5;
        goto LABEL_258;
      }
    }

    v47 = 3;
    goto LABEL_111;
  }

  if (!v19)
  {
    return 0;
  }

  if (a6)
  {
    if (a5)
    {
      v30 = 0;
      i = 0;
      v32 = a7 - 1;
      while (1)
      {
        v33 = *&v11[2 * i];
        if (!*&v11[2 * i])
        {
          break;
        }

        v34 = __rev16(v33);
        if (v15)
        {
          v33 = v34;
        }

        *__s = 0;
        if (v33 > 0x7F)
        {
          if (v33 > 0x7FE)
          {
            if (v33 != 0xFFFF)
            {
              __s[0] = (v33 >> 12) | 0xE0;
              __s[1] = (v33 >> 6) & 0x3F | 0x80;
              __s[2] = v33 & 0x3F | 0x80;
            }
          }

          else
          {
            __s[0] = (v33 >> 6) | 0xC0;
            __s[1] = v33 & 0x3F | 0x80;
          }
        }

        else
        {
          __s[0] = v33;
        }

        v35 = strlen(__s);
        v36 = v35 + v30;
        if (v35 + v30 >= v32)
        {
          break;
        }

        if (v35)
        {
          strncpy(&v9[v30], __s, v35);
        }

        ++i;
        v30 = v36;
        if (a5 == i)
        {
          i = a5;
          v30 = v36;
          break;
        }
      }
    }

    else
    {
      i = 0;
      v30 = 0;
    }

    v9[v30] = 0;
    if (!a8)
    {
      return v9;
    }

    goto LABEL_317;
  }

LABEL_169:

  return ToUTF8(a1, a4, a5, a2, a8);
}

_WORD *TxtwStringAppend(uint64_t a1, unsigned __int16 *a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  if (a3 == -1)
  {
    v5 = LH_wcslen(a2);
  }

  *a4 = v5 + 257;
  v8 = heap_Alloc(a1, 2 * ((v5 + 257) & 0x7FFFFFFF));
  v9 = v8;
  if (v8)
  {
    *v8 = 0;
    v10 = LH_wcslen(v8);
    LH_wcsncpy(&v9[v10], a2, v5);
    v9[v5] = 0;
  }

  return v9;
}

char *TXTENC_swab(char *result, _BYTE *a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if ((a3 & 0xE) != 0)
  {
    v4 = v3 - 1;
    do
    {
      v5 = *result;
      v6 = result + 2;
      v7 = a2 + 2;
      *a2 = result[1];
      a2[1] = v5;
      a2 += 2;
      result += 2;
    }

    while (v4-- & 7);
    v3 += -(a3 >> 1) | 0xFFFFFFFFFFFFFFF8;
    result = v6;
    a2 = v7;
  }

  if (v3)
  {
    v9 = v3 >> 3;
    do
    {
      v10 = *result;
      *a2 = result[1];
      a2[1] = v10;
      v11 = result[2];
      a2[2] = result[3];
      a2[3] = v11;
      v12 = result[4];
      a2[4] = result[5];
      a2[5] = v12;
      v13 = result[6];
      a2[6] = result[7];
      a2[7] = v13;
      v14 = result[8];
      a2[8] = result[9];
      a2[9] = v14;
      v15 = result[10];
      a2[10] = result[11];
      a2[11] = v15;
      v16 = result[12];
      a2[12] = result[13];
      a2[13] = v16;
      v17 = result[14];
      a2[14] = result[15];
      a2[15] = v17;
      a2 += 16;
      result += 16;
      --v9;
    }

    while (v9);
  }

  return result;
}

char *ToUTF8(uint64_t *a1, uint64_t a2, unint64_t a3, int a4, unint64_t *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v10 = a4 & 0xFFFFFFFE;
  if ((a4 & 0xFFFFFFFE) == 0x4B0)
  {
    if (a3)
    {
      v11 = 0;
      while (*(a2 + 2 * v11))
      {
        if (a3 == ++v11)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_13;
    }
  }

  else if (a3)
  {
    v11 = 0;
    while (*(a2 + v11))
    {
      if (a3 == ++v11)
      {
LABEL_11:
        v11 = a3;
        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:
  v12 = v11 / 0x14;
  if (v12 <= 0x100)
  {
    v12 = 256;
  }

  v29 = v12;
  v13 = heap_Alloc(a1, v12);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = &qword_1E81A2768;
  v16 = 128;
  v30 = a1;
  v27 = a5;
  while (*(v15 - 2) != a4)
  {
    v15 += 4;
    if (!--v16)
    {
      v28 = 0;
      goto LABEL_22;
    }
  }

  v28 = *v15;
LABEL_22:
  v17 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    __src[0] = 0;
    if (v10 == 1200)
    {
      if (v18 < a3)
      {
        LODWORD(v20) = *(a2 + 2 * v18);
        if (*(a2 + 2 * v18))
        {
          goto LABEL_42;
        }
      }
    }

    else if (v18 < a3)
    {
      v20 = *(a2 + v18);
      if (*(a2 + v18))
      {
        if (v28)
        {
          if (v28 == BuckToWChar)
          {
            LODWORD(v20) = BuckToWChar[v20];
          }

          else if ((v20 & 0x80) != 0)
          {
            LODWORD(v20) = v28[v20 & 0x7F];
          }
        }

LABEL_42:
        v25 = bswap32(v20) >> 16;
        if (a4 == 1201)
        {
          LODWORD(v20) = v25;
        }

        *__src = 0;
        if (v20 > 0x7Fu)
        {
          if (v20 > 0x7FEu)
          {
            if (v20 != 0xFFFF)
            {
              __src[0] = (v20 >> 12) | 0xE0;
              __src[1] = (v20 >> 6) & 0x3F | 0x80;
              __src[2] = v20 & 0x3F | 0x80;
            }
          }

          else
          {
            __src[0] = (v20 >> 6) | 0xC0;
            __src[1] = v20 & 0x3F | 0x80;
          }
        }

        else
        {
          __src[0] = v20;
        }

        v21 = strlen(__src);
        v22 = 0;
        ++v18;
        if (v21 + v19 < v29)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }
    }

    v21 = 0;
    v22 = 1;
LABEL_34:
    v14[v19] = 0;
    v23 = v30;
    v24 = strhelper_StringAppend(v30, v17, v14, 0xFFFFFFFFFFFFFFFFLL, &v31, 0x100uLL);
    if (!v24)
    {
      heap_Free(v30, v17);
      v17 = 0;
      goto LABEL_56;
    }

    v19 = 0;
    v17 = v24;
LABEL_36:
    if (v21 && !v22)
    {
      memcpy(&v14[v19], __src, v21);
      v19 += v21;
    }
  }

  while (!v22);
  if (v27)
  {
    *v27 = v18;
  }

  v23 = v30;
LABEL_56:
  heap_Free(v23, v14);
  return v17;
}

size_t TxtEncodingGetOutputBytesRequired(char *__s, size_t a2, int a3, int a4, size_t *a5)
{
  v7 = a2;
  v9 = 128;
  v10 = &qword_1E81A2768;
  do
  {
    if (*(v10 - 2) == a3)
    {
      v11 = *v10;
      if (__s)
      {
        goto LABEL_7;
      }

      return 0;
    }

    v10 += 4;
    --v9;
  }

  while (v9);
  v11 = 0;
  if (!__s)
  {
    return 0;
  }

LABEL_7:
  v13 = a4 & 0xFFFFFFFE;
  if ((a3 - 1200) < 2)
  {
    if (a4 == 65001)
    {
      if (a2 == -1)
      {
        v14 = -1;
      }

      else
      {
        v14 = a2 >> 1;
      }

      if (v14)
      {
        v15 = 0;
        v12 = 0;
        while (1)
        {
          v16 = *&__s[2 * v15];
          if (!*&__s[2 * v15])
          {
            break;
          }

          v17 = __rev16(v16);
          if (a3 == 1201)
          {
            v16 = v17;
          }

          *__sa = 0;
          if (v16 > 0x7F)
          {
            if (v16 > 0x7FE)
            {
              if (v16 != 0xFFFF)
              {
                __sa[0] = (v16 >> 12) | 0xE0;
                __sa[1] = (v16 >> 6) & 0x3F | 0x80;
                __sa[2] = v16 & 0x3F | 0x80;
              }
            }

            else
            {
              __sa[0] = (v16 >> 6) | 0xC0;
              __sa[1] = v16 & 0x3F | 0x80;
            }
          }

          else
          {
            __sa[0] = v16;
          }

          v12 += strlen(__sa);
          if (v14 == ++v15)
          {
            v15 = v14;
            break;
          }
        }
      }

      else
      {
        v12 = 0;
        v15 = 0;
      }

      if (a5)
      {
        *a5 = v15;
      }

      return v12;
    }

    if (a2 == -1)
    {
      v23 = LH_wcslen(__s);
      if (a5)
      {
LABEL_45:
        *a5 = v23;
      }
    }

    else
    {
      v23 = a2 >> 1;
      if (a5)
      {
        goto LABEL_45;
      }
    }

    return v23 << (v13 == 1200);
  }

  if (a3 == 65001)
  {
    if (a2)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = __s[v19];
        if (!__s[v19])
        {
          break;
        }

        if ((v20 & 0x80) != 0)
        {
          if ((v20 - 194) >= 0x1E)
          {
            if ((v20 & 0xF0) == 0xE0)
            {
              v21 = 3;
            }

            else
            {
              v21 = 4 * ((v20 - 245) > 0xFFFFFFFA);
            }
          }

          else
          {
            v21 = 2;
          }
        }

        else
        {
          v21 = 1;
        }

        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        v19 += v22;
        if (v21)
        {
          ++v18;
        }
      }

      while (v19 < a2);
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    if (a5)
    {
      *a5 = v18;
    }

    v27 = v18 << (v13 == 1200);
    if (a4 == 65001)
    {
      return v19;
    }

    else
    {
      return v27;
    }
  }

  if (a4 != 65001)
  {
    if (a2 == -1)
    {
      v7 = strlen(__s);
    }

    if (a5)
    {
      *a5 = v7;
    }

    return v7 << (v13 == 1200);
  }

  if (a2)
  {
    v24 = 0;
    v12 = 0;
    while (1)
    {
      v25 = __s[v24];
      if (!__s[v24])
      {
        goto LABEL_83;
      }

      if (v11)
      {
        if (v11 == BuckToWChar)
        {
          v26 = BuckToWChar[v25];
        }

        else
        {
          if ((v25 & 0x80) == 0)
          {
            v29 = 0;
            goto LABEL_59;
          }

          v26 = v11[v25 & 0x7F];
        }
      }

      else
      {
        v26 = __s[v24];
      }

      v29 = 0;
      LOBYTE(v25) = v26;
      if (v26 > 0x7Fu)
      {
        if (v26 > 0x7FEu)
        {
          if (v26 != 0xFFFF)
          {
            LOBYTE(v29) = (v26 >> 12) | 0xE0;
            BYTE1(v29) = (v26 >> 6) & 0x3F | 0x80;
            BYTE2(v29) = v26 & 0x3F | 0x80;
          }
        }

        else
        {
          LOBYTE(v29) = (v26 >> 6) | 0xC0;
          BYTE1(v29) = v26 & 0x3F | 0x80;
        }

        goto LABEL_64;
      }

LABEL_59:
      LOBYTE(v29) = v25;
LABEL_64:
      v12 += strlen(&v29);
      if (v7 == ++v24)
      {
        v24 = v7;
        goto LABEL_83;
      }
    }
  }

  v12 = 0;
  v24 = 0;
LABEL_83:
  if (a5)
  {
    *a5 = v24;
  }

  return v12;
}

uint64_t TxtEncodingDetect(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (!a2)
  {
    return 65001;
  }

  v5 = *a1;
  if (v5 != 239)
  {
    if (v5 == 254)
    {
      v8 = a1[1];
      if (v8 == 255)
      {
        result = 1201;
      }

      else
      {
        result = 28591;
      }

      if (!a3 || v8 != 255)
      {
        return result;
      }

      *a3 = 2;
    }

    else
    {
      if (v5 == 255)
      {
        v6 = a1[1];
        if (v6 == 254)
        {
          result = 1200;
        }

        else
        {
          result = 28591;
        }

        if (a3 && v6 == 254)
        {
          *a3 = 2;
          return 1200;
        }

        return result;
      }

      v11 = a2 - 1;
      if (a2 == 1)
      {
        return 65001;
      }

      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      if (a2 >= 0xFA00)
      {
        v16 = 64000;
      }

      else
      {
        v16 = a2;
      }

      while (2)
      {
        while (2)
        {
          v17 = 0;
          v18 = v12;
          while (1)
          {
            v19 = a1[v15 + v17];
            if ((v19 - 127) < 0xFFFFFF82)
            {
              break;
            }

            ++v17;
            if (v15 + v17 >= a2)
            {
              goto LABEL_74;
            }
          }

          v20 = v15 + v17;
          if (v15 + v17 < v11 && (v19 & 0xE0) == 0xC0 && (a1[v15 + 1 + v17] & 0xC0) == 0x80)
          {
            v27 = 2;
          }

          else if (v20 < a2 - 2 && (v19 & 0xF0) == 0xE0 && (v21 = &a1[v15 + v17], (v21[1] & 0xC0) == 0x80) && (v21[2] & 0xC0) == 0x80)
          {
            v27 = 3;
          }

          else if (v20 < a2 - 3 && (v19 & 0xF8) == 0xF0 && (v22 = &a1[v15 + v17], (v22[1] & 0xC0) == 0x80) && (v22[2] & 0xC0) == 0x80 && (a1[v15 + 3 + v17] & 0xC0) == 0x80)
          {
            v27 = 4;
          }

          else if (v20 < a2 - 4 && (v19 & 0xFC) == 0xF8 && (v23 = &a1[v15 + v17], (v23[1] & 0xC0) == 0x80) && (v23[2] & 0xC0) == 0x80 && (v24 = &a1[v15 + v17], (v24[3] & 0xC0) == 0x80) && (v24[4] & 0xC0) == 0x80)
          {
            v27 = 5;
          }

          else
          {
            if (v20 >= a2 - 5 || (v19 & 0xFE) != 0xFC || (v25 = &a1[v15 + v17], (v25[1] & 0xC0) != 0x80) || (v25[2] & 0xC0) != 0x80 || (v26 = &a1[v15 + v17], (v26[3] & 0xC0) != 0x80) || (v26[4] & 0xC0) != 0x80 || (a1[v15 + 5 + v17] & 0xC0) != 0x80)
            {
              v12 = v18 + v17;
              ++v13;
              v15 += v17 + 1;
              if (v15 < a2)
              {
                continue;
              }

LABEL_74:
              v12 = v18 + v17;
              goto LABEL_75;
            }

            v27 = 6;
          }

          break;
        }

        v15 += v27 + v17;
        ++v14;
        v12 = v18 + v17;
        if (v15 < a2)
        {
          continue;
        }

        break;
      }

LABEL_75:
      if (v13)
      {
        v28 = 1;
      }

      else
      {
        v28 = v14 == 0;
      }

      result = 65001;
      if (!v28 || v12 == a2)
      {
        return result;
      }

      v55 = (a2 & 1) == 0 && (!v12 || 10 * a2 / v12 > 0xA);
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v56 = v16;
      if (v16 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v16;
      }

      do
      {
        v36 = a1[v34];
        if (memchr("\xAF\xB3\xB9\x9F\xE6\xD0\xFD", a1[v34], 6uLL))
        {
          ++v29;
        }

        if (memchr("\xF0\xD0\xFDvocalizer", v36, 4uLL))
        {
          ++v30;
        }

        v33 += v36;
        v32 += (v34 << 63 >> 63) & v36;
        if (v34)
        {
          v37 = 0;
        }

        else
        {
          v37 = v36;
        }

        v31 += v37;
        ++v34;
      }

      while (v35 != v34);
      v38 = v33 / v56;
      v39 = v33 / v56;
      v40 = v33 / v56;
      if (a2 != 2)
      {
        v39 = v32 / (v56 >> 1);
        v40 = v31 / (v56 >> 1);
      }

      v41 = v39 < 4 && v55;
      if (v41 && v40 > 0x32)
      {
        return 1200;
      }

      v42 = v40 < 4 && v55;
      if (!v42 || v39 <= 0x32)
      {
        if (!v55)
        {
          goto LABEL_127;
        }

        v43 = 0;
        v44 = 0;
        v45 = 0;
        for (i = 0; i != v35; ++i)
        {
          v47 = a1[i];
          v45 += ((v47 - v38) * (v47 - v38));
          v48 = ((v47 - v39) * (v47 - v39));
          v44 += (i << 63 >> 63) & v48;
          if (i)
          {
            v48 = 0;
          }

          v43 += v48;
        }

        if (a2 <= 0x20)
        {
          goto LABEL_127;
        }

        v49 = v45 / v56;
        v50 = v44 / (v56 >> 1);
        v51 = v45 / v56 - v50;
        if (v51 < 0)
        {
          v51 = v50 - v45 / v56;
        }

        if (v51 > 0x3E8)
        {
          return 1200;
        }

        v52 = v43 / (v56 >> 1);
        v53 = v52 - v49;
        if (v52 - v49 < 0)
        {
          v53 = v49 - v52;
        }

        if (v53 > 0x3E8)
        {
          return 1200;
        }

        v54 = v52 - v50;
        if (v52 - v50 < 0)
        {
          v54 = v50 - v52;
        }

        if (v54 > 0x3E8)
        {
          return 1200;
        }

        result = 1200;
        if (v50 <= 2 * v49 && 2 * v50 >= v52 && 2 * v52 >= v49)
        {
LABEL_127:
          if (v38 <= 0x80)
          {
            if (v30 <= 5)
            {
              if (v29 <= 0xA)
              {
                return 28591;
              }

              else
              {
                return 28592;
              }
            }

            else
            {
              return 28599;
            }
          }

          else
          {
            return 28597;
          }
        }

        return result;
      }
    }

    return 1201;
  }

  if (a2 < 3)
  {
    return 28591;
  }

  v9 = a1[1];
  result = 28591;
  if (v9 == 187)
  {
    v10 = a1[2];
    result = v10 == 191 ? 65001 : 28591;
    if (a3 && v10 == 191)
    {
      *a3 = 3;
      return 65001;
    }
  }

  return result;
}

uint64_t txtlog_ObjOpen(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4)
{
  v4 = 2226135046;
  if (a4)
  {
    *a4 = 0;
    v9 = heap_Calloc(*(a1 + 8), 1, 552);
    if (v9)
    {
      v10 = v9;
      *v9 = a1;
      strncpy((v9 + 8), a2, 0x100uLL);
      *(v10 + 263) = 0;
      *(v10 + 520) = a3;
      *(v10 + 528) = 0;
      *(v10 + 536) = 0;
      *(v10 + 544) = 0;
      txtlog_resetLogFileName(v10);
      v4 = 0;
      *a4 = v10;
    }

    else
    {
      return 2226135050;
    }
  }

  return v4;
}

uint64_t txtlog_resetLogFileName(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  strcpy(v4, "vocalizer");
  v1 = a1 + 8;
  v2 = "";
  if (*(a1 + 8))
  {
    v2 = "/";
  }

  result = __sprintf_chk((a1 + 264), 0, 0x100uLL, "%s%s%s_%lu.txt", (a1 + 8), v2, v4, *(a1 + 536));
  ++*(v1 + 528);
  return result;
}

uint64_t txtlog_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2226135046;
  }

  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t txtlog_startSession(uint64_t *a1)
{
  if (!a1)
  {
    return 2226135046;
  }

  if ((filespi_fopen(*(*a1 + 64), *(*a1 + 8), (a1 + 33), "w", a1 + 68) & 0x80000000) != 0)
  {
    FileSize = 0;
  }

  else
  {
    FileSize = filespi_GetFileSize(a1[68]);
  }

  result = 0;
  a1[66] = FileSize;
  return result;
}

uint64_t txtlog_stopSession(uint64_t a1)
{
  if (!a1)
  {
    return 2226135046;
  }

  result = *(a1 + 544);
  if (result)
  {
    result = filespi_fclose(result);
    *(a1 + 544) = 0;
  }

  return result;
}

uint64_t txtlog_recordEntry(uint64_t *a1, char *__s)
{
  if (!a1)
  {
    return 2226135046;
  }

  v4 = strlen(__s);
  v5 = a1[65];
  v6 = v5 >= v4;
  v7 = v5 - v4;
  if (v6 && a1[66] <= v7)
  {
    result = 0;
  }

  else
  {
    result = txtlog_switchLogFiles(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  v9 = a1[68];
  if (v9)
  {
    if (filespi_fwrite(__s, 1, v4, v9))
    {
      result = filespi_fflush(a1[68]);
      a1[66] += v4;
    }

    else
    {
      return 2226135045;
    }
  }

  return result;
}

uint64_t txtlog_switchLogFiles(uint64_t *a1)
{
  v2 = a1 + 68;
  v3 = a1[68];
  if (!v3 || (result = filespi_fclose(v3), *v2 = 0, (result & 0x80000000) == 0))
  {
    txtlog_resetLogFileName(a1);
    LODWORD(result) = filespi_fopen(*(*a1 + 64), *(*a1 + 8), (a1 + 33), "w", v2);
    if (result >= 0)
    {
      result = result;
    }

    else
    {
      result = 2226135043;
    }

    a1[66] = 0;
  }

  return result;
}

uint64_t txtlog_changeDirectory(uint64_t a1, const char *a2)
{
  if (!a1 || !a2)
  {
    return 2226135046;
  }

  strncpy((a1 + 8), a2, 0x100uLL);
  *(a1 + 263) = 0;
  *(a1 + 536) = 0;

  return txtlog_switchLogFiles(a1);
}

uint64_t txtfmt_printEntry(uint64_t a1, char *__str, size_t __size)
{
  v3 = __size;
  v6 = *(a1 + 128);
  v7 = *(a1 + 136);
  v8 = *(v6 + 64);
  if (*(a1 + 148))
  {
    snprintf(__str, __size, "%s|%hu|%s|%s|%lu|%p|SEVERE|%lu|%s", a1, v8, v6, (v6 + 32), 0, v7, *(a1 + 148), *(a1 + 152));
    if (*(a1 + 164))
    {
      v9 = 0;
      do
      {
        *&__str[strlen(__str)] = 124;
        v10 = strcat(__str, *(*(a1 + 168) + 8 * v9));
        *&__str[strlen(v10)] = 61;
        strcat(__str, *(*(a1 + 176) + 8 * v9++));
      }

      while (v9 < *(a1 + 164));
    }

    *&__str[strlen(__str)] = 10;
  }

  else
  {
    snprintf(__str, __size, "%s|%hu|%s|%s|%lu|%p|%d|%s\n", a1, v8, v6, (v6 + 32), 0, v7, *(a1 + 144), *(a1 + 152));
  }

  __str[v3 - 1] = 0;
  return 0;
}

uint64_t txtfmt_vsprintFormattedEntry_v(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, va_list a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  v21 = v20;
  v22 = v9;
  v41 = *MEMORY[0x1E69E9840];
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  if (v15)
  {
    v23 = v15;
    bzero(&v37, 0x800uLL);
    v24 = *v23;
    if (*v23)
    {
      v25 = 0;
      v26 = 0;
      do
      {
        __str[v25 + 2046] = v24;
        v27 = v26 + 1;
        if (v24 == 37)
        {
          v28 = v26 + 2;
          if (v23[v27] == 108)
          {
            LODWORD(v27) = v28;
          }
        }

        v24 = v23[v27];
        ++v25;
        v29 = v27 > 0x7FF || v24 == 0;
        v26 = v27;
      }

      while (!v29);
      v25 = v25;
    }

    else
    {
      v25 = 0;
    }

    __str[v25 + 2046] = v24;
    vsnprintf(__str, 0x800uLL, &v37, a9);
    __str[2047] = 0;
    v35 = __str;
    v30 = v19;
    v31 = v18;
    v32 = v17;
    v33 = v16;
    v34 = 0;
  }

  else
  {
    v30 = v10;
    v31 = v11;
    v32 = v12;
    v33 = v13;
    v34 = v14;
    v35 = 0;
  }

  txtfmt_fillLogEntry(v39, v30, v31, v32, v33, v34, v35);
  txtfmt_printEntry(v39, v22, v21);
  return 0;
}

size_t txtfmt_fillLogEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, const char *a7)
{
  v20 = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  osspi_time(*(a2 + 64), &v20);
  osspi_ctime(*(a2 + 64), &v20, 128, a1);
  v14 = strlen(a1);
  v15 = v14;
  if (v14)
  {
    v16 = a1 - 1;
    do
    {
      v17 = *(v16 + v15);
      if (v17 != 13 && v17 != 10)
      {
        break;
      }

      *(v16 + v15--) = 0;
    }

    while (v15);
  }

  *(a1 + 128) = a4;
  *(a1 + 136) = a3;
  *(a1 + 144) = a5;
  *(a1 + 148) = a6;
  *(a1 + 152) = a7;
  if (a7)
  {
    result = strlen(a7);
  }

  else
  {
    result = 0;
  }

  *(a1 + 160) = result;
  return result;
}

uint64_t logsub_logfile_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2226135041;
  }

  result = 0;
  *a2 = &ITxtWriter;
  return result;
}

uint64_t txtwriter_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = 2226135040;
  v31 = 0;
  if (!a3)
  {
    return 2226135046;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  if ((InitRsrcFunction(a1, a2, &v31) & 0x80000000) != 0)
  {
    return 2226135047;
  }

  v5 = heap_Calloc(*(v31 + 8), 1, 464);
  if (!v5)
  {
    return 2226135050;
  }

  v6 = v5;
  v7 = v31;
  *v5 = v31;
  updated = critsec_ObjOpen(*(v7 + 16), *(v7 + 8), v5 + 53);
  if ((updated & 0x80000000) != 0)
  {
    goto LABEL_49;
  }

  v9 = *(v31 + 40);
  if (!v9)
  {
    v3 = 2226135046;
    goto LABEL_52;
  }

  if ((v33[0] = 0, (paramc_ParamGetStr(v9, "logfile.enabled", v33) & 0x80000000) != 0) && ((v10 = getenv("TTS_FILELOG_ENABLE")) != 0 ? (v11 = v10) : (v11 = "0"), v33[0] = v11, updated = paramc_ParamSetStr(v9, "logfile.enabled", v11), (updated & 0x80000000) != 0) || (v12 = v33[0], updated = txtwriter_UpdateEnabled(v6, v33[0]), (updated & 0x80000000) != 0))
  {
LABEL_49:
    v3 = updated;
    goto LABEL_52;
  }

  if (v12)
  {
    paramc_ParamRelease(v9);
  }

  v33[0] = 0;
  if ((paramc_ParamGetStr(v9, "logfile.filter.level", v33) & 0x80000000) != 0)
  {
    v13 = getenv("TTS_FILELOG_LEVEL");
    v14 = v13 ? v13 : "0";
    v33[0] = v14;
    if ((paramc_ParamSetStr(v9, "logfile.filter.level", v14) & 0x80000000) != 0)
    {
      goto LABEL_52;
    }
  }

  v15 = v33[0];
  v16 = atoi(v33[0]);
  if ((v16 & 0x80000000) == 0)
  {
    *(v6 + 280) = v16;
    if (v15)
    {
      paramc_ParamRelease(v9);
    }

    v32 = 0;
    bzero(v33, 0x400uLL);
    if ((paramc_ParamGetStr(v9, "logfile.filter.modules", &v32) & 0x80000000) != 0)
    {
      v17 = getenv("TTS_FILELOG_MODULES");
      if (!v17)
      {
        v17 = "";
      }

      v32 = v17;
      LH_MapModuleNamesToIds(v17, v33, 0x400u);
      v32 = v33;
      if ((paramc_ParamSetStr(v9, "logfile.filter.modules", v33) & 0x80000000) != 0)
      {
        goto LABEL_52;
      }
    }

    v18 = v32;
    updated = txtwriter_UpdateModules(v6, v32);
    if ((updated & 0x80000000) == 0)
    {
      if (v18 != "")
      {
        paramc_ParamRelease(v9);
      }

      v33[0] = 0;
      if ((paramc_ParamGetStr(v9, "logfile.filename.1", v33) & 0x80000000) == 0 || ((v19 = getenv("TTS_FILELOG_DIRECTORY")) != 0 ? (v20 = v19) : (v20 = ""), v33[0] = v20, (paramc_ParamSetStr(v9, "logfile.filename.1", v20) & 0x80000000) == 0))
      {
        v21 = v33[0];
        __strcpy_chk();
        txtlog_changeDirectory(*(v6 + 432), v21);
        if (v33[0] != "")
        {
          paramc_ParamRelease(v9);
        }

        v33[0] = 0;
        if ((paramc_ParamGetStr(v9, "logfile.max_size", v33) & 0x80000000) == 0 || ((v22 = getenv("TTS_FILELOG_MAXSIZE")) != 0 ? (v23 = v22) : (v23 = "0"), v33[0] = v23, (paramc_ParamSetStr(v9, "logfile.max_size", v23) & 0x80000000) == 0))
        {
          v24 = LH_atou(v33[0]);
          *(v6 + 272) = v24;
          if (v33[0] != "0")
          {
            paramc_ParamRelease(v9);
            v24 = *(v6 + 272);
          }

          v3 = txtlog_ObjOpen(*v6, (v6 + 12), v24, (v6 + 432));
          if ((v3 & 0x80000000) == 0 && *(v6 + 8) == 1)
          {
            txtlog_startSession(*(v6 + 432));
          }
        }
      }

      goto LABEL_52;
    }

    goto LABEL_49;
  }

  v3 = 2226135047;
LABEL_52:
  *(v6 + 440) = 0;
  *(v6 + 448) = 0;
  *(v6 + 440) = v6;
  *(v6 + 448) = txtwriter_ParamCheckChange;
  *(v6 + 456) = 0;
  *(v6 + 456) = txtwriter_ParamLearnChange;
  v25 = *(v31 + 40);
  *v33 = *(v6 + 440);
  v34 = txtwriter_ParamLearnChange;
  paramc_ListenerAdd(v25, "logfile.enabled", v33);
  v26 = *(v31 + 40);
  *v33 = *(v6 + 440);
  v34 = *(v6 + 456);
  paramc_ListenerAdd(v26, "logfile.filter.level", v33);
  v27 = *(v31 + 40);
  *v33 = *(v6 + 440);
  v34 = *(v6 + 456);
  paramc_ListenerAdd(v27, "logfile.filter.modules", v33);
  v28 = *(v31 + 40);
  *v33 = *(v6 + 440);
  v34 = *(v6 + 456);
  paramc_ListenerAdd(v28, "logfile.filename.1", v33);
  v29 = *(v31 + 40);
  *v33 = *(v6 + 440);
  v34 = *(v6 + 456);
  paramc_ListenerAdd(v29, "logfile.max_size", v33);
  *a3 = v6;
  *(a3 + 8) = 472934;
  if ((v3 & 0x80000000) != 0)
  {
    txtwriter_ClassClose(v6, *(a3 + 8));
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return v3;
}

uint64_t txtwriter_ClassClose(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 472934, 464);
  v4 = v3;
  if ((v3 & 0x80000000) != 0)
  {
    return v3 & 0x1FFF | 0x84B02000;
  }

  v5 = *a1;
  v6 = a1[54];
  if (v6)
  {
    if (*(a1 + 2))
    {
      txtlog_stopSession(v6);
      v6 = a1[54];
    }

    txtlog_ObjClose(v6);
  }

  v7 = *(v5 + 40);
  v15 = *(a1 + 55);
  v16 = a1[57];
  paramc_ListenerRemove(v7, "logfile.enabled", &v15);
  v8 = *(v5 + 40);
  v15 = *(a1 + 55);
  v16 = a1[57];
  paramc_ListenerRemove(v8, "logfile.filter.level", &v15);
  v9 = *(v5 + 40);
  v15 = *(a1 + 55);
  v16 = a1[57];
  paramc_ListenerRemove(v9, "logfile.filter.modules", &v15);
  v10 = *(v5 + 40);
  v15 = *(a1 + 55);
  v16 = a1[57];
  paramc_ListenerRemove(v10, "logfile.filename.1", &v15);
  v11 = *(v5 + 40);
  v15 = *(a1 + 55);
  v16 = a1[57];
  paramc_ListenerRemove(v11, "logfile.max_size", &v15);
  v12 = a1[53];
  if (v12)
  {
    v13 = critsec_ObjClose(v12);
  }

  else
  {
    v13 = v4;
  }

  heap_Free(*(*a1 + 8), a1);
  return v13;
}

uint64_t txtwriter_ObjOpen(uint64_t a1, int a2, void *a3)
{
  v5 = safeh_HandleCheck(a1, a2, 472934, 464);
  v6 = v5;
  if ((v5 & 0x80000000) != 0)
  {
    return v5 & 0x1FFF | 0x84B02000;
  }

  if (!a3)
  {
    return 2226135046;
  }

  *a3 = 0;
  v7 = heap_Calloc(*(*a1 + 8), 1, 8);
  if (!v7)
  {
    return 2226135050;
  }

  *v7 = a1;
  *a3 = v7;
  return v6;
}

uint64_t txtwriter_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2226135046;
  }

  heap_Free(*(**a1 + 8), a1);
  return 0;
}

uint64_t txtwriter_OutText(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, va_list a6)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = 2226135046;
  if (a1 && a2 && a5)
  {
    v7 = *a1;
    if (!*(*a1 + 8) || *(v7 + 280) < a3)
    {
      return 0;
    }

    if (*(v7 + 284) == 1)
    {
      goto LABEL_15;
    }

    v9 = *(v7 + 416);
    if (!*(v7 + 416))
    {
      return 0;
    }

    v10 = *(a2 + 64);
    if (*(v7 + 288) == v10)
    {
      goto LABEL_15;
    }

    v11 = (v7 + 290);
    v12 = 1;
    do
    {
      v13 = v12;
      if (v9 == v12)
      {
        break;
      }

      v14 = *v11++;
      ++v12;
    }

    while (v14 != v10);
    if (v13 < v9)
    {
LABEL_15:
      v15 = txtfmt_vsprintFormattedEntry_v(__s, 3072, *v7, a1, a2, a3, 0, a5, a6);
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v15 = critsec_Enter(*(v7 + 424));
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      else
      {
        v6 = txtlog_recordEntry(*(v7 + 432), __s);
        critsec_Leave(*(v7 + 424));
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t txtwriter_OutPublic(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = 2226135046;
  if (a1 && a2)
  {
    v9 = *a1;
    if (*(*a1 + 8))
    {
      v20 = 0;
      memset(__s, 0, sizeof(__s));
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      osspi_time((*v9)[8], &v20);
      osspi_ctime((*v9)[8], &v20, 128, __s);
      v14 = strlen(__s);
      v15 = v14;
      if (v14)
      {
        do
        {
          v16 = __str[v15 + 3071];
          if (v16 != 13 && v16 != 10)
          {
            break;
          }

          __str[v15-- + 3071] = 0;
        }

        while (v15);
      }

      *&v23 = a2;
      *(&v23 + 1) = a1;
      LODWORD(v24) = 0;
      DWORD1(v24) = a3;
      *(&v24 + 1) = "";
      LODWORD(v25) = 0;
      DWORD1(v25) = a4;
      *(&v25 + 1) = a5;
      v26 = a6;
      v18 = txtfmt_printEntry(__s, __str, 0xC00uLL);
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v18 = critsec_Enter(v9[53]);
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      else
      {
        v6 = txtlog_recordEntry(v9[54], __str);
        critsec_Leave(v9[53]);
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t txtwriter_GetLogLevel(uint64_t result)
{
  if (result)
  {
    if (*(*result + 8))
    {
      return *(*result + 280);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL txtwriter_IsModuleEnabled(_BOOL8 result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (*(*result + 284) == 1)
    {
      return 1;
    }

    v3 = v2[208];
    if (v2[208])
    {
      if (v2[144] == a2)
      {
        return 1;
      }

      v4 = v2 + 145;
      v5 = 1;
      do
      {
        v6 = v5;
        if (v3 == v5)
        {
          break;
        }

        v7 = *v4++;
        ++v5;
      }

      while (v7 != a2);
      return v6 < v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t txtwriter_ParamCheckChange(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a4)
  {
    *a4 = 1;
  }

  return 0;
}

uint64_t txtwriter_ParamLearnChange(uint64_t a1, char *__s1, char *a3)
{
  if (a3 && *a3)
  {
    v6 = &off_1F42D0CB0;
    v7 = 5;
    while (strcmp(__s1, *(v6 - 1)))
    {
      v6 += 2;
      if (!--v7)
      {
        return 0;
      }
    }

    critsec_Enter(*(a1 + 424));
    (*v6)(a1, a3);
    critsec_Leave(*(a1 + 424));
  }

  return 0;
}

uint64_t txtwriter_UpdateEnabled(uint64_t a1, char *a2)
{
  result = 2226135047;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = atoi(a2);
      result = 0;
      v7 = ((v4 - 84) & 0xDF) == 0 || v5 > 0;
      *(a1 + 8) = v7;
    }
  }

  return result;
}

uint64_t txtwriter_UpdateLevel(uint64_t a1, char *a2)
{
  v3 = atoi(a2);
  if (v3 < 0)
  {
    return 2226135047;
  }

  v4 = v3;
  result = 0;
  *(a1 + 280) = v4;
  return result;
}

uint64_t txtwriter_UpdateModules(uint64_t a1, unsigned __int8 *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v2 = 0;
  *(a1 + 284) = 1;
  *(a1 + 416) = 0;
LABEL_3:
  v3 = a2;
  while (1)
  {
    v4 = *v3;
    if (!*v3)
    {
      break;
    }

    v3 += 3;
    while (v4 == 32)
    {
      v4 = *(v3 - 2);
      ++v3;
    }

    if (v4 != 65 && v4 != 97)
    {
      a2 = v3 - 3;
      if ((v4 - 48) > 9u)
      {
LABEL_18:
        v7 = 0;
      }

      else
      {
        v7 = 0;
        do
        {
          v7 = 10 * v7 + (v4 - 48);
          v8 = *++a2;
          v4 = v8;
        }

        while ((v8 - 48) < 0xA);
      }

      v6 = (v4 & 0xDF) == 0;
      if ((v4 | 0x20) == 0x20 && v2 <= 0x3Fu)
      {
        *(a1 + 288 + 2 * v2) = v7;
        v2 = *(a1 + 416) + 1;
        *(a1 + 416) = v2;
        *(a1 + 284) = 0;
        goto LABEL_3;
      }

      v5 = 0;
      v3 = a2;
      goto LABEL_22;
    }

    a2 = v3 - 3;
    if ((*(v3 - 2) | 0x20) != 0x6C || (*(v3 - 1) | 0x20) != 0x6C || (*v3 | 0x20) != 0x20)
    {
      goto LABEL_18;
    }

    v5 = 1;
    v6 = 1;
LABEL_22:
    *(a1 + 284) = v5;
    if (!v6)
    {
      return 2226135047;
    }
  }

  if (v2 <= 0x3Fu)
  {
    return 0;
  }

  return 2226135047;
}

uint64_t txtwriter_UpdateDirectory(uint64_t a1, const char *a2)
{
  __strcpy_chk();
  txtlog_changeDirectory(*(a1 + 432), a2);
  return 0;
}

uint64_t featextract_closeStreams(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = (a2 + 16 * v4);
    if (*v8)
    {
      v9 = (*(a1 + 72))(*v8, v8[1]);
      *v8 = safeh_GetNullHandle();
      v8[1] = v10;
      if (v5 > -1 && v9 < 0)
      {
        v5 = v9;
      }

      else
      {
        v5 = v5;
      }
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  return v5;
}

uint64_t featextract_logFeatures(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 10);
  if (log_GetLogLevel(*(a1 + 32)) >= 8)
  {
    v5 = v4 & ~(v4 >> 31);
    LH_itoa(0x4Eu, v12, 0xAu);
    v6 = 0;
    while (v6 != 4)
    {
      if (v6 == 3)
      {
        v7 = "application/x-realspeak-usdurs;version=4.0";
        goto LABEL_9;
      }

      if (v6 == 2)
      {
        v11 = 5;
        v10 = 0;
        log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v12, "text/x-realspeak-usphonemes;charset=tts", &v11, 1u, 0);
        log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v12, "text/x-realspeak-usphonemes;charset=tts", *(a2 + 8 * v6 + 16), v5, 0);
        log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v12, "text/x-realspeak-usphonemes;charset=tts", &v10, 1u, 0);
      }

LABEL_13:
      if (++v6 == 218)
      {
        return 0;
      }
    }

    v7 = "application/x-realspeak-usplosives;version=4.0";
LABEL_9:
    v8 = *(*a2 + v6 + 2748);
    if (v8 == 2)
    {
      log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v12, v7, *(a2 + 8 * v6 + 1760), 2 * v5, 0);
    }

    else if (v8 == 1)
    {
      log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v12, v7, *(a2 + 8 * v6 + 16), v5, 0);
    }

    goto LABEL_13;
  }

  return 0;
}

uint64_t featextract_writeFeatures(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v169 = 0;
  v10 = (*(a2 + 112))(*(a3 + 16), *(a3 + 24), &v169, 864 * *(a5 + 10));
  if ((v10 & 0x80000000) != 0)
  {
    v167 = v10;
    goto LABEL_301;
  }

  v11 = *(a5 + 10);
  if (v11 < 1)
  {
    goto LABEL_298;
  }

  v12 = 0;
  v13 = 0;
  do
  {
    for (i = 12; i != 50; ++i)
    {
      v169[i] = 0;
    }

    v15 = 0;
    *(v169 + 25) = 0;
    do
    {
      v16 = v169;
      v17 = &v169[4 * v15];
      *(v17 + 18) = 0;
      *(v17 + 89) = 0;
      v16[v15++ + 640] = 0;
    }

    while (v15 != 71);
    v18 = v169 + 712;
    *(v169 + 712) = 0uLL;
    v18[1] = 0uLL;
    v18[2] = 0uLL;
    v18[3] = 0uLL;
    for (j = 778; j != 863; ++j)
    {
      v169[j] = 0;
    }

    v20 = v169;
    *(v169 + 60) = 0;
    *(v20 + 52) = 0;
    v20[68] = 0;
    v21 = *(a5 + 1800);
    if (v21)
    {
      *v20 = *(v21 + 2 * v13);
    }

    v22 = *(a5 + 32);
    if (v22)
    {
      v20[2] = *(v22 + v13);
    }

    v23 = *(a4 + 3578);
    if (*(a4 + 3578))
    {
      v24 = *(a5 + 3608);
      *(v20 + 1) = *(v24 + 4 * v13 * v23);
      *(v20 + 2) = *(v24 + 4 * (v23 + v13 * v23) - 4);
    }

    v25 = *(a5 + 1696);
    if (v25)
    {
      v20[776] = *(v25 + v13);
    }

    v26 = *(a5 + 1704);
    if (v26)
    {
      v20[777] = *(v26 + v13);
    }

    if (*(a4 + 2966))
    {
      v27 = 0;
      v28 = 0;
      while (1)
      {
        v29 = v13 * *(*a5 + 2966);
        v30 = v169;
        v31 = &v169[4 * v28];
        *(v31 + 18) = *(*(a5 + 3568) + 4 * (v28 + v29));
        *(v31 + 89) = *(*(a5 + 3576) + 4 * (v28 + v29));
        v30[v28 + 640] = *(*(a5 + 3600) + v29 + v28);
        switch(*(*(a4 + 2968) + v27))
        {
          case 5:
            v48 = *(a5 + 216);
            if (v48)
            {
              v169[22] = *(v48 + v13);
            }

            v49 = *(a5 + 224);
            if (v49)
            {
              v169[23] = *(v49 + v13);
            }

            v50 = *(a5 + 1712);
            if (!v50)
            {
              v51 = v169;
LABEL_100:
              *(v51 + 22) = 0;
              goto LABEL_110;
            }

            v51 = v169;
            if (!*(a5 + 1720))
            {
              goto LABEL_100;
            }

            v169[44] = *(v50 + v13);
            v51[45] = *(*(a5 + 1720) + v13);
LABEL_110:
            ++v28;
            v27 += 32;
            if (v28 >= *(a4 + 2966))
            {
              goto LABEL_111;
            }

            break;
          case 6:
            v52 = *(a5 + 232);
            if (v52)
            {
              v169[24] = *(v52 + v13);
            }

            v53 = *(a5 + 240);
            if (v53)
            {
              v169[25] = *(v53 + v13);
            }

            v54 = *(a5 + 1728);
            if (!v54)
            {
              v55 = v169;
LABEL_102:
              *(v55 + 23) = 0;
              goto LABEL_110;
            }

            v55 = v169;
            if (!*(a5 + 1736))
            {
              goto LABEL_102;
            }

            v169[46] = *(v54 + v13);
            v55[47] = *(*(a5 + 1736) + v13);
            goto LABEL_110;
          case 7:
            v45 = *(a5 + 152);
            if (v45)
            {
              v169[13] = *(v45 + v13);
            }

            goto LABEL_110;
          case 8:
            v60 = *(a5 + 160);
            if (v60)
            {
              v169[14] = *(v60 + v13);
            }

            goto LABEL_110;
          case 9:
            v61 = *(a5 + 176);
            if (v61)
            {
              v169[15] = *(v61 + v13);
            }

            goto LABEL_110;
          case 0xA:
            v46 = *(a5 + 184);
            if (v46)
            {
              v169[16] = *(v46 + v13);
            }

            goto LABEL_110;
          case 0xB:
            v56 = *(a5 + 248);
            if (v56)
            {
              v169[17] = *(v56 + v13);
            }

            goto LABEL_110;
          case 0xC:
          case 0x13:
            v32 = *(a5 + 144);
            if (v32)
            {
              v169[18] = *(v32 + v13);
            }

            goto LABEL_110;
          case 0xD:
          case 0x14:
            v33 = *(a5 + 88);
            if (v33)
            {
              v169[21] = *(v33 + v13);
            }

            goto LABEL_110;
          case 0xE:
            v44 = *(a5 + 264);
            if (v44)
            {
              v169[26] = *(v44 + v13);
            }

            goto LABEL_110;
          case 0xF:
            v41 = *(a5 + 272);
            if (v41)
            {
              v169[27] = *(v41 + v13);
            }

            goto LABEL_110;
          case 0x10:
            v36 = *(a5 + 168);
            if (v36)
            {
              v169[28] = *(v36 + v13);
            }

            goto LABEL_110;
          case 0x12:
            v57 = *(a5 + 280);
            if (v57)
            {
              v169[29] = *(v57 + v13);
            }

            goto LABEL_110;
          case 0x1E:
            v58 = *(a5 + 536);
            if (v58)
            {
              v169[30] = *(v58 + v13);
            }

            else
            {
              v169[30] = 0;
            }

            goto LABEL_110;
          case 0x1F:
            v63 = *(a5 + 544);
            if (v63)
            {
              v169[31] = *(v63 + v13);
            }

            else
            {
              v169[31] = 0;
            }

            goto LABEL_110;
          case 0x20:
            v62 = *(a5 + 552);
            if (v62)
            {
              v169[32] = *(v62 + v13);
            }

            else
            {
              v169[32] = 0;
            }

            goto LABEL_110;
          case 0x21:
            v34 = *(a5 + 560);
            if (v34)
            {
              v169[33] = *(v34 + v13);
            }

            else
            {
              v169[33] = 0;
            }

            goto LABEL_110;
          case 0x22:
            v42 = *(a5 + 568);
            if (v42)
            {
              v169[34] = *(v42 + v13);
            }

            else
            {
              v169[34] = 0;
            }

            goto LABEL_110;
          case 0x23:
            v64 = *(a5 + 576);
            if (v64)
            {
              v169[35] = *(v64 + v13);
            }

            else
            {
              v169[35] = 0;
            }

            goto LABEL_110;
          case 0x24:
            v35 = *(a5 + 632);
            if (v35)
            {
              v169[36] = *(v35 + v13);
            }

            else
            {
              v169[36] = 0;
            }

            goto LABEL_110;
          case 0x25:
            v40 = *(a5 + 592);
            if (v40)
            {
              v169[37] = *(v40 + v13);
            }

            else
            {
              v169[37] = 0;
            }

            goto LABEL_110;
          case 0x26:
            v38 = *(a5 + 600);
            if (v38)
            {
              v169[38] = *(v38 + v13);
            }

            else
            {
              v169[38] = 0;
            }

            goto LABEL_110;
          case 0x27:
            v47 = *(a5 + 608);
            if (v47)
            {
              v169[39] = *(v47 + v13);
            }

            else
            {
              v169[39] = 0;
            }

            goto LABEL_110;
          case 0x28:
            v37 = *(a5 + 616);
            if (v37)
            {
              v169[40] = *(v37 + v13);
            }

            goto LABEL_110;
          case 0x29:
            v66 = *(a5 + 624);
            if (v66)
            {
              v169[41] = *(v66 + v13);
            }

            else
            {
              v169[41] = 0;
            }

            goto LABEL_110;
          case 0x2B:
            v65 = *(a5 + 1384);
            if (v65)
            {
              v169[42] = *(v65 + v13);
            }

            else
            {
              v169[42] = 0;
            }

            goto LABEL_110;
          case 0x2C:
            v39 = *(a5 + 1392);
            if (v39)
            {
              v169[43] = *(v39 + v13);
            }

            else
            {
              v169[43] = 0;
            }

            goto LABEL_110;
          case 0x45:
            v43 = *(a5 + 1744);
            if (v43)
            {
              v169[48] = *(v43 + v13);
            }

            else
            {
              v169[48] = 0;
            }

            goto LABEL_110;
          case 0x46:
            v59 = *(a5 + 1752);
            if (v59)
            {
              v169[49] = *(v59 + v13);
            }

            else
            {
              v169[49] = 0;
            }

            goto LABEL_110;
          default:
            goto LABEL_110;
        }
      }
    }

LABEL_111:
    if (*(*(a5 + 72) + v13))
    {
      v169[19] = *(*(a5 + 72) + v13);
    }

    v67 = *(a5 + 80);
    if (v67)
    {
      v169[20] = *(v67 + v13);
    }

    v68 = *(a5 + 48);
    if (v68)
    {
      v169[12] = *(v68 + v13);
    }

    v69 = *(a5 + 1784);
    if (v69)
    {
      *(v169 + 25) = *(v69 + 2 * v13);
    }

    v70 = *(a4 + 3360);
    if (*(a4 + 3360))
    {
      v71 = v169 + 744;
      v72 = v12 * *(*a5 + 3360);
      v73 = (*(a5 + 3592) + v72);
      v74 = (*(a5 + 3584) + v72);
      do
      {
        v75 = *v74++;
        *(v71 - 8) = v75;
        v76 = *v73++;
        *v71++ = v76;
        --v70;
      }

      while (v70);
    }

    v77 = *(a5 + 3552);
    if (v77)
    {
      *(v169 + 52) = *(v77 + 8 * v13);
    }

    if (*(a4 + 2560))
    {
      v78 = v169;
      v79 = *(a5 + 3560) + 9 * v13;
      v80 = *(v79 + 8);
      *(v169 + 60) = *v79;
      v78[68] = v80;
    }

    v81 = *(a5 + 1000);
    if (v81)
    {
      v169[778] = *(v81 + v13);
    }

    v82 = *(a5 + 32);
    if (v82)
    {
      v169[779] = *(v82 + v13);
    }

    v83 = *(a5 + 1008);
    if (v83)
    {
      v169[780] = *(v83 + v13);
    }

    v84 = *(a5 + 600);
    if (v84)
    {
      v169[781] = *(v84 + v13);
    }

    v85 = *(a5 + 72);
    if (v85)
    {
      v169[782] = *(v85 + v13);
    }

    v86 = *(a5 + 80);
    if (v86)
    {
      v169[783] = *(v86 + v13);
    }

    v87 = *(a5 + 560);
    if (v87)
    {
      v169[784] = *(v87 + v13);
    }

    v88 = *(a5 + 112);
    if (v88)
    {
      v169[785] = *(v88 + v13);
    }

    v89 = *(a5 + 184);
    if (v89)
    {
      v169[786] = *(v89 + v13);
    }

    v90 = *(a5 + 304);
    if (v90)
    {
      v169[787] = *(v90 + v13);
    }

    v91 = *(a5 + 288);
    if (v91)
    {
      v169[788] = *(v91 + v13);
    }

    v92 = *(a5 + 312);
    if (v92)
    {
      v169[789] = *(v92 + v13);
    }

    v93 = *(a5 + 296);
    if (v93)
    {
      v169[790] = *(v93 + v13);
    }

    v94 = *(a5 + 128);
    if (v94)
    {
      v169[791] = *(v94 + v13);
    }

    v95 = *(a5 + 96);
    if (v95)
    {
      v169[792] = *(v95 + v13);
    }

    v96 = *(a5 + 104);
    if (v96)
    {
      v169[793] = *(v96 + v13);
    }

    v97 = *(a5 + 144);
    if (v97)
    {
      v169[794] = *(v97 + v13);
    }

    v98 = *(a5 + 192);
    if (v98)
    {
      v169[795] = *(v98 + v13);
    }

    v99 = *(a5 + 544);
    if (v99)
    {
      v169[796] = *(v99 + v13);
    }

    v100 = *(a5 + 608);
    if (v100)
    {
      v169[797] = *(v100 + v13);
    }

    v101 = *(a5 + 168);
    if (v101)
    {
      v169[798] = *(v101 + v13);
    }

    v102 = *(a5 + 248);
    if (v102)
    {
      v169[799] = *(v102 + v13);
    }

    v103 = *(a5 + 120);
    if (v103)
    {
      v169[800] = *(v103 + v13);
    }

    v104 = *(a5 + 136);
    if (v104)
    {
      v169[801] = *(v104 + v13);
    }

    v105 = *(a5 + 176);
    if (v105)
    {
      v169[802] = *(v105 + v13);
    }

    v106 = *(a5 + 264);
    if (v106)
    {
      v169[803] = *(v106 + v13);
    }

    v107 = *(a5 + 272);
    if (v107)
    {
      v169[804] = *(v107 + v13);
    }

    v108 = *(a5 + 616);
    if (v108)
    {
      v169[805] = *(v108 + v13);
    }

    v109 = *(a5 + 624);
    if (v109)
    {
      v169[806] = *(v109 + v13);
    }

    v110 = *(a5 + 568);
    if (v110)
    {
      v169[807] = *(v110 + v13);
    }

    v111 = *(a5 + 576);
    if (v111)
    {
      v169[808] = *(v111 + v13);
    }

    v112 = *(a5 + 584);
    if (v112)
    {
      v169[809] = *(v112 + v13);
    }

    v113 = *(a5 + 592);
    if (v113)
    {
      v169[810] = *(v113 + v13);
    }

    v114 = *(a5 + 152);
    if (v114)
    {
      v169[811] = *(v114 + v13);
    }

    v115 = *(a5 + 88);
    if (v115)
    {
      v169[812] = *(v115 + v13);
    }

    v116 = *(a5 + 160);
    if (v116)
    {
      v169[813] = *(v116 + v13);
    }

    v117 = *(a5 + 552);
    if (v117)
    {
      v169[814] = *(v117 + v13);
    }

    v118 = *(a5 + 456);
    if (v118)
    {
      v169[815] = *(v118 + v13);
    }

    v119 = *(a5 + 984);
    if (v119)
    {
      v169[816] = *(v119 + v13);
    }

    v120 = *(a5 + 992);
    if (v120)
    {
      v169[817] = *(v120 + v13);
    }

    v121 = *(a5 + 1000);
    if (v121)
    {
      v169[818] = *(v121 + v13);
    }

    v122 = *(a5 + 1008);
    if (v122)
    {
      v169[819] = *(v122 + v13);
    }

    v123 = *(a5 + 1016);
    if (v123)
    {
      v169[820] = *(v123 + v13);
    }

    v124 = *(a5 + 1024);
    if (v124)
    {
      v169[821] = *(v124 + v13);
    }

    v125 = *(a5 + 1032);
    if (v125)
    {
      v169[822] = *(v125 + v13);
    }

    v126 = *(a5 + 1040);
    if (v126)
    {
      v169[823] = *(v126 + v13);
    }

    v127 = *(a5 + 1048);
    if (v127)
    {
      v169[824] = *(v127 + v13);
    }

    v128 = *(a5 + 1056);
    if (v128)
    {
      v169[825] = *(v128 + v13);
    }

    v129 = *(a5 + 1064);
    if (v129)
    {
      v169[826] = *(v129 + v13);
    }

    v130 = *(a5 + 1072);
    if (v130)
    {
      v169[827] = *(v130 + v13);
    }

    v131 = *(a5 + 1080);
    if (v131)
    {
      v169[828] = *(v131 + v13);
    }

    v132 = *(a5 + 1088);
    if (v132)
    {
      v169[829] = *(v132 + v13);
    }

    v133 = *(a5 + 1096);
    if (v133)
    {
      v169[830] = *(v133 + v13);
    }

    v134 = *(a5 + 1104);
    if (v134)
    {
      v169[831] = *(v134 + v13);
    }

    v135 = *(a5 + 1112);
    if (v135)
    {
      v169[832] = *(v135 + v13);
    }

    v136 = *(a5 + 1120);
    if (v136)
    {
      v169[833] = *(v136 + v13);
    }

    v137 = *(a5 + 1128);
    if (v137)
    {
      v169[834] = *(v137 + v13);
    }

    v138 = *(a5 + 1136);
    v139 = v169;
    if (v138)
    {
      v169[835] = *(v138 + v13);
    }

    v140 = *(a5 + 1144);
    if (v140)
    {
      v139[836] = *(v140 + v13);
    }

    v141 = *(a5 + 1160);
    if (v141)
    {
      v139[837] = *(v141 + v13);
    }

    v142 = *(a5 + 1152);
    if (v142)
    {
      v139[838] = *(v142 + v13);
    }

    v143 = *(a5 + 1168);
    if (v143)
    {
      v139[839] = *(v143 + v13);
    }

    v144 = *(a5 + 1176);
    if (v144)
    {
      v139[840] = *(v144 + v13);
    }

    v145 = *(a5 + 1184);
    if (v145)
    {
      v139[841] = *(v145 + v13);
    }

    v146 = *(a5 + 1192);
    if (v146)
    {
      v139[842] = *(v146 + v13);
    }

    v147 = *(a5 + 1200);
    if (v147)
    {
      v139[843] = *(v147 + v13);
    }

    v148 = *(a5 + 1208);
    if (v148)
    {
      v139[844] = *(v148 + v13);
    }

    v149 = *(a5 + 1216);
    if (v149)
    {
      v139[845] = *(v149 + v13);
    }

    v150 = *(a5 + 1224);
    if (v150)
    {
      v139[846] = *(v150 + v13);
    }

    v151 = *(a5 + 1232);
    if (v151)
    {
      v139[847] = *(v151 + v13);
    }

    v152 = *(a5 + 1240);
    if (v152)
    {
      v139[848] = *(v152 + v13);
    }

    v153 = *(a5 + 1248);
    if (v153)
    {
      v139[849] = *(v153 + v13);
    }

    v154 = *(a5 + 1256);
    if (v154)
    {
      v139[850] = *(v154 + v13);
    }

    v155 = *(a5 + 1264);
    if (v155)
    {
      v139[851] = *(v155 + v13);
    }

    v156 = *(a5 + 1272);
    if (v156)
    {
      v139[852] = *(v156 + v13);
    }

    v157 = *(a5 + 1280);
    if (v157)
    {
      v139[853] = *(v157 + v13);
    }

    v158 = *(a5 + 1288);
    if (v158)
    {
      v139[854] = *(v158 + v13);
    }

    v159 = *(a5 + 1296);
    if (v159)
    {
      v139[855] = *(v159 + v13);
    }

    v160 = *(a5 + 1304);
    if (v160)
    {
      v139[856] = *(v160 + v13);
    }

    v161 = *(a5 + 1312);
    if (v161)
    {
      v139[857] = *(v161 + v13);
    }

    v162 = *(a5 + 1320);
    if (v162)
    {
      v139[860] = *(v162 + v13);
    }

    v163 = *(a5 + 1328);
    if (v163)
    {
      v139[861] = *(v163 + v13);
    }

    v164 = *(a5 + 1336);
    if (v164)
    {
      v139[862] = *(v164 + v13);
    }

    v165 = *(a5 + 1384);
    if (v165)
    {
      v139[858] = *(v165 + v13);
    }

    v166 = *(a5 + 1392);
    if (v166)
    {
      v139[859] = *(v166 + v13);
    }

    v169 = v139 + 864;
    ++v13;
    v12 += 4;
  }

  while (v13 < *(a5 + 10));
  LOWORD(v11) = *(a5 + 10);
LABEL_298:
  v167 = (*(a2 + 120))(*(a3 + 16), *(a3 + 24), 864 * v11);
  if ((v167 & 0x80000000) != 0)
  {
LABEL_301:
    log_OutPublic(*(a1 + 32), "FEATEXTRACT", 55008, "%s%s%s%x", "contentType", "application/x-realspeak-feat-vector", "lhError", v167);
  }

  return v167;
}

uint64_t featextract_adjustSilAudioOrder(uint64_t result)
{
  v1 = *(result + 3512);
  if (v1)
  {
    if (*(result + 3520))
    {
      v2 = *(result + 1800);
      v3 = *v2;
      if (*v2)
      {
        v4 = 0;
        while (*v1 != 26)
        {
          ++v4;
          v1 += 8;
          if (v3 == v4)
          {
            return result;
          }
        }

        if (v3 <= v4)
        {
          goto LABEL_15;
        }

        v5 = 0;
        v6 = v3 - v4;
        do
        {
          v7 = *v1;
          v1 += 8;
          if (v7 == 8)
          {
            v5 = 1;
          }

          --v6;
        }

        while (v6);
        if (!v5)
        {
LABEL_15:
          v2[1] += v3 - v4;
          *v2 = v4;
        }
      }
    }
  }

  return result;
}

uint64_t MapProsodyValue_Scaling(int a1, int a2, unsigned int a3, int a4, int a5)
{
  v5 = ((2 * a4 * a5) | 1) / (2 * a2);
  if (v5 <= a1)
  {
    v5 = a1;
  }

  if (v5 >= a3)
  {
    return a3;
  }

  else
  {
    return v5;
  }
}

uint64_t betX_CreateRegularBrokerString(uint64_t a1, int a2, char *a3, size_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0;
  __s = 0;
  *a3 = 0;
  if ((a2 & 0xFFFFFFFD) != 0)
  {
    return 2364547079;
  }

  if (a2)
  {
    v9 = "synth";
  }

  else
  {
    v9 = "select";
  }

  result = strhelper_SafeCat(a3, v9, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "voice", &__s);
    if ((result & 0x80000000) == 0)
    {
      result = strhelper_SafeCat(a3, "/", 0xFFFFFFFFFFFFFFFFLL, a4);
      if ((result & 0x80000000) == 0)
      {
        result = strhelper_SafeCat(a3, __s, 0xFFFFFFFFFFFFFFFFLL, a4);
        if ((result & 0x80000000) == 0)
        {
          result = paramc_ParamGetStr(*(a1 + 40), "voicemodel", &__s);
          if ((result & 0x80000000) == 0)
          {
            result = strhelper_SafeCat(a3, "/", 0xFFFFFFFFFFFFFFFFLL, a4);
            if ((result & 0x80000000) == 0)
            {
              result = strhelper_SafeCat(a3, __s, 0xFFFFFFFFFFFFFFFFLL, a4);
              if ((result & 0x80000000) == 0)
              {
                result = paramc_ParamGetStr(*(a1 + 40), "reduction", &__s);
                if ((result & 0x80000000) == 0)
                {
                  result = strhelper_SafeCat(a3, "/", 0xFFFFFFFFFFFFFFFFLL, a4);
                  if ((result & 0x80000000) == 0)
                  {
                    result = strhelper_SafeCat(a3, __s, 0xFFFFFFFFFFFFFFFFLL, a4);
                    if ((result & 0x80000000) == 0)
                    {
                      if (a2 != 2 || (result = paramc_ParamGetStr(*(a1 + 40), "coder", &__s), (result & 0x80000000) == 0) && (result = strhelper_SafeCat(a3, "/", 0xFFFFFFFFFFFFFFFFLL, a4), (result & 0x80000000) == 0) && (result = strhelper_SafeCat(a3, __s, 0xFFFFFFFFFFFFFFFFLL, a4), (result & 0x80000000) == 0))
                      {
                        result = paramc_ParamGetInt(*(a1 + 40), "frequencyhz", &v12);
                        if ((result & 0x80000000) == 0)
                        {
                          result = strhelper_SafeCat(a3, "/", 0xFFFFFFFFFFFFFFFFLL, a4);
                          if ((result & 0x80000000) == 0)
                          {
                            result = strhelper_SafeCat(a3, "f", 0xFFFFFFFFFFFFFFFFLL, a4);
                            if ((result & 0x80000000) == 0)
                            {
                              v10 = strlen(a3);
                              LH_itoa(v12 / 1000, &a3[v10], 0xAu);
                              result = paramc_ParamGetStr(*(a1 + 40), "datapackagename", &__s);
                              if ((result & 0x80000000) == 0 && __s && *__s)
                              {
                                result = brokeraux_ComposeBrokerString(a1, a3, 0, 0, 0, 0, 0, v13, a4);
                                if ((result & 0x80000000) == 0)
                                {
                                  *a3 = 0;
                                  return strhelper_SafeCat(a3, v13, 0xFFFFFFFFFFFFFFFFLL, a4);
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
  }

  return result;
}

uint64_t betX_CreateVAOBrokerString(uint64_t a1, int a2, char *a3, size_t a4, int a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v5 = 2364547079;
  __s = 0;
  v29 = 0;
  v27 = 0;
  *a3 = 0;
  if ((a2 & 0xFFFFFFFD) != 1)
  {
    return v5;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voiceaddon", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v12 = strlen(__s);
  v13 = heap_Calloc(*(a1 + 8), 1, v12 + 19);
  if (!v13)
  {
    return 2364547082;
  }

  v14 = v13;
  strcpy(v13, "voiceaddonbaseuri.");
  strcat(v13, __s);
  v15 = paramc_ParamGetStr(*(a1 + 40), v14, &v29);
  heap_Free(*(a1 + 8), v14);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  if (v29 && *v29)
  {
    Str = strhelper_SafeCat(a3, v29, 0xFFFFFFFFFFFFFFFFLL, a4);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a3, "/", 0xFFFFFFFFFFFFFFFFLL, a4);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v16 = 0;
    v17 = "_";
  }

  else
  {
    v17 = "/";
    v16 = 1;
  }

  if (a2 == 1)
  {
    v18 = "selectvao";
  }

  else
  {
    v18 = "synthvao";
  }

  Str = strhelper_SafeCat(a3, v18, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &v29);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a3, v17, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v19 = v29;
  if (v29)
  {
    v20 = strlen(a3);
    if (strlen(v29) + v20 >= a4)
    {
      return 2364547081;
    }

    v26 = v16;
    if (*v29)
    {
      v21 = 0;
      do
      {
        v22 = v20 + 1;
        a3[v20] = __tolower(v19[v21++]);
        v19 = v29;
        ++v20;
      }

      while (v21 < strlen(v29));
    }

    else
    {
      v22 = v20;
    }

    a3[v22] = 0;
    v16 = v26;
  }

  Str = strhelper_SafeCat(a3, v17, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a3, __s, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voicemodel", &v29);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a3, v17, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a3, v29, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a3, v17, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a3, "vao", 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a3, v17, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (a2 == 3)
  {
    Str = paramc_ParamGetStr(*(a1 + 40), "coder", &v29);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a3, v29, 0xFFFFFFFFFFFFFFFFLL, a4);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a3, v17, 0xFFFFFFFFFFFFFFFFLL, a4);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }
  }

  Str = paramc_ParamGetInt(*(a1 + 40), "frequencyhz", &v30);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v5 = strhelper_SafeCat(a3, "f", 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((v5 & 0x80000000) == 0)
  {
    v23 = strlen(a3);
    LH_itoa(v30 / 1000, &a3[v23], 0xAu);
    if (v16)
    {
      if (!a5 && v29)
      {
        if (*v29)
        {
          Str = brokeraux_ComposeBrokerString(a1, a3, 0, 0, 0, 0, 0, v31, a4);
          if ((Str & 0x80000000) == 0)
          {
            *a3 = 0;
            return strhelper_SafeCat(a3, v31, 0xFFFFFFFFFFFFFFFFLL, a4);
          }

          return Str;
        }

        return v5;
      }

      if (!a5)
      {
        return v5;
      }
    }

    else
    {
      v24 = strhelper_SafeCat(a3, ".dat", 0xFFFFFFFFFFFFFFFFLL, a4);
      v5 = v24;
      if (!a5 || (v24 & 0x80000000) != 0)
      {
        return v5;
      }
    }

    if (!cupreader_IsCupInTheScope(a1, &v27))
    {
      return v5;
    }

    return cupreader_PrependCupName(a3, v27, a4);
  }

  return v5;
}

uint64_t betX_CreateAddonListParamName(uint64_t a1, char **a2)
{
  __s = 0;
  v16 = 0;
  __s2 = 0;
  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &v16);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voiceoperatingpoint", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v5 = paramc_ParamGetStr(*(a1 + 40), "vopversion", &__s2);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = strlen(__s);
    if (__s2)
    {
      v7 = strlen(__s2);
    }

    else
    {
      v7 = 0;
    }

    v8 = strlen(v16);
    v9 = heap_Calloc(*(a1 + 8), 1, v7 + v6 + v8 + 15);
    if (v9)
    {
      v10 = v9;
      strcpy(v9, "voiceaddons.");
      v11 = v8;
      if (v8)
      {
        v12 = 0;
        do
        {
          v10[v12 + 12] = __tolower(v16[v12]);
          ++v12;
        }

        while (v11 != v12);
      }

      *&v10[strlen(v10)] = 46;
      strcat(v10, __s);
      if (__s2)
      {
        *&v10[strlen(v10)] = 46;
        strcat(v10, __s2);
      }

      *a2 = v10;
    }

    else
    {
      return 2364547082;
    }
  }

  return v5;
}

uint64_t betX_GetVAOName(const char *a1, size_t *a2, char *a3, size_t a4)
{
  v5 = *a2;
  *a3 = 0;
  if (a1)
  {
    while (a1[v5] == 59)
    {
      ++v5;
    }

    if (!a1[v5])
    {
      return 0;
    }

    v11 = strchr(&a1[v5], 59);
    if (v11)
    {
      v10 = v11 - a1 + 1;
    }

    else
    {
      v10 = strlen(a1);
    }

    if (a1[v10 - 1] == 59)
    {
      v12 = ~v5;
    }

    else
    {
      v12 = -v5;
    }

    strhelper_SafeCat(a3, &a1[v5], v10 + v12, a4);
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
  return 1;
}

uint64_t nnfeatex_Init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 7;
  if (a3 && a2 && a1 && a5)
  {
    v11 = heap_Alloc(*(a5 + 8), 56);
    if (v11)
    {
      v12 = v11;
      result = 0;
      *v12 = a5;
      *(v12 + 8) = a2;
      *(v12 + 16) = a3;
      *(v12 + 24) = a4;
      *(v12 + 48) = 0;
      *(v12 + 32) = 0;
      *(v12 + 38) = 0;
      *a1 = v12;
      *(a1 + 8) = -28879052;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t nnfeatex_DeInit(uint64_t *a1)
{
  if ((safeh_HandleCheck(*a1, a1[1], -28879052, 56) & 0x80000000) != 0)
  {
    return 8;
  }

  heap_Free(*(**a1 + 8), *a1);
  result = 0;
  *a1 = 0;
  *(a1 + 2) = 0;
  return result;
}

uint64_t nnfeatex_ProcessStart(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5)
{
  if ((safeh_HandleCheck(*a1, a1[1], -28879052, 56) & 0x80000000) != 0)
  {
    return 8;
  }

  v10 = *a1;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v11 = *(v10 + 8);
  v12 = (*(v11 + 104))(a2, a3, 1, 0, &v26 + 2);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  inited = (*(*(v10 + 8) + 152))(a2, a3, 2, BYTE2(v26), &v26);
  if ((inited & 0x80000000) == 0)
  {
    v14 = v26;
    if (v26)
    {
      v15 = 1;
      while (1)
      {
        inited = (*(*(v10 + 8) + 120))(a2, a3, v14, &v26);
        if ((inited & 0x80000000) != 0)
        {
          break;
        }

        v14 = v26;
        if (!v26)
        {
          goto LABEL_11;
        }

        if (__CFADD__(v15++, 1))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v15 = 0;
LABEL_11:
      if (((*(v11 + 184))(a2, a3, HIWORD(v26), 1, &v25) & 0x80000000) == 0 && v25 == 1)
      {
        inited = (*(v11 + 176))(a2, a3, HIWORD(v26), 1, &v24, &v23);
        if ((inited & 0x80000000) != 0)
        {
          return inited;
        }

        v17 = v23;
        if (v23)
        {
          v18 = v24;
          do
          {
            v19 = *v18;
            v18 += 8;
            v20 = (1 << v19) & 0x270F0100;
            if (v19 <= 0x1D && v20 != 0)
            {
              v15 += 3;
            }

            --v17;
          }

          while (v17);
        }
      }

      if (!v15 || (inited = Init_WrdRec(*v10, (v10 + 32), v15), (inited & 0x80000000) == 0))
      {
        *(v10 + 48) = v15;
        if (!inited)
        {
          inited = Lingdb2NnWordRec(*v10, 0, *(v10 + 8), a2, a3, a4, a5, *(v10 + 32), (v10 + 40), (v10 + 42), (v10 + 44));
          if ((inited & 0x80000000) != 0)
          {
            if (*(v10 + 48))
            {
              Free_WrdRec(*v10, *(v10 + 32), *(v10 + 48));
            }
          }
        }
      }
    }
  }

  return inited;
}

uint64_t nnfeatex_Process(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, _DWORD *a8, int a9)
{
  if ((safeh_HandleCheck(*a1, a1[1], -28879052, 56) & 0x80000000) != 0)
  {
    return 8;
  }

  v14 = *a1;
  if (a9)
  {
    v20 = 0;
    v21 = 0;
    v15 = v14[2];
    if (*(v15 + 895))
    {
      v16 = 1;
    }

    else
    {
      v16 = *(v15 + 3578);
    }

    if (nnextract_Allocate(*v14, &v20, v14[4], *(v14 + 22), *(v14 + 20), *(v14 + 21)))
    {
      return 10;
    }

    v17 = nnextract_Process2Buff(*v14, v20, 1, v16, 0, v14[3], &v21, 0, v14[2] + 2400, (v14[2] + 268), a7, a8);
    v18 = v21;
    if (!v17)
    {
      v17 = nnfeatex_CheckFeatures(v14, v21, a4);
    }

    nnextract_Deallocate(*v14, v20, 1u, v18, v16);
  }

  else
  {
    v21 = 0;
    if (nnextract_Allocate(*v14, &v21, v14[4], *(v14 + 22), *(v14 + 20), *(v14 + 21)))
    {
      return 10;
    }

    v17 = nnextract_Rolled(*v14, v21, 1u, *(v14[2] + 3578), 0, v14[3], a6, 0, v14[2] + 2400, (v14[2] + 268));
    if (!v17)
    {
      return nnfeatex_CheckFeatures(v14, *a6, a4);
    }
  }

  return v17;
}

uint64_t nnfeatex_ProcessEnd(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  if ((safeh_HandleCheck(*a1, a1[1], -28879052, 56) & 0x80000000) != 0)
  {
    return 8;
  }

  v6 = *a1;
  if (*(v6 + 12))
  {
    Free_WrdRec(*v6, v6[4], *(v6 + 12));
  }

  heap_Free(*(*v6 + 8), *a2);
  result = 0;
  *a2 = 0;
  *a3 = 0;
  *(v6 + 38) = 0;
  v6[4] = 0;
  return result;
}

uint64_t nnfeatex_CheckFeatures(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 6;
  if (a2 && a3)
  {
    v5 = *(a1 + 16);
    v6 = *(v5 + 3580);
    if (v6)
    {
      if (v6 != 1 || *(a2 + 4024) == *(a3 + 10))
      {
        return 0;
      }
    }

    else if (*(a2 + 4024) / *(v5 + 3578) == *(a3 + 10))
    {
      return 0;
    }

    return 21;
  }

  return result;
}

uint64_t NNFX_logMsg(uint64_t result, int a2)
{
  if (!a2)
  {
    return log_OutPublic(*(result + 32), "NNFEATEXTRACT", 0, 0);
  }

  return result;
}

uint64_t Init_WrdRec(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v6 = a3;
  v7 = heap_Calloc(a1[1], a3, 144);
  *a2 = v7;
  if (v7)
  {
    if (!v3)
    {
      return 0;
    }

    v8 = 0;
    v9 = 144 * v6;
    while (1)
    {
      v10 = *a2 + v8;
      *v10 = 4;
      *(v10 + 4) = 0;
      *(v10 + 20) = 0;
      *(v10 + 12) = 0;
      v11 = heap_Alloc(a1[1], 100);
      *(*a2 + v8 + 32) = v11;
      if (!v11)
      {
        break;
      }

      **(*a2 + v8 + 32) = 0;
      v12 = heap_Alloc(a1[1], 100);
      *(*a2 + v8 + 40) = v12;
      if (!v12)
      {
        break;
      }

      **(*a2 + v8 + 40) = 0;
      v13 = heap_Alloc(a1[1], 100);
      *(*a2 + v8 + 48) = v13;
      if (!v13)
      {
        break;
      }

      **(*a2 + v8 + 48) = 0;
      v14 = heap_Alloc(a1[1], 100);
      *(*a2 + v8 + 56) = v14;
      if (!v14)
      {
        break;
      }

      **(*a2 + v8 + 56) = 0;
      v15 = heap_Alloc(a1[1], 100);
      *(*a2 + v8 + 64) = v15;
      if (!v15)
      {
        break;
      }

      **(*a2 + v8 + 64) = 0;
      v16 = heap_Alloc(a1[1], 100);
      *(*a2 + v8 + 72) = v16;
      if (!v16)
      {
        break;
      }

      **(*a2 + v8 + 72) = 0;
      v17 = heap_Alloc(a1[1], 100);
      *(*a2 + v8 + 80) = v17;
      if (!v17)
      {
        break;
      }

      **(*a2 + v8 + 80) = 0;
      v18 = heap_Alloc(a1[1], 100);
      *(*a2 + v8 + 88) = v18;
      if (!v18)
      {
        break;
      }

      **(*a2 + v8 + 88) = 0;
      v19 = heap_Alloc(a1[1], 100);
      *(*a2 + v8 + 96) = v19;
      if (!v19)
      {
        break;
      }

      **(*a2 + v8 + 96) = 0;
      v20 = heap_Alloc(a1[1], 100);
      *(*a2 + v8 + 104) = v20;
      if (!v20)
      {
        break;
      }

      **(*a2 + v8 + 104) = 0;
      v21 = heap_Alloc(a1[1], 100);
      *(*a2 + v8 + 112) = v21;
      if (!v21)
      {
        break;
      }

      **(*a2 + v8 + 112) = 0;
      *(*a2 + v8 + 120) = 78;
      v22 = heap_Alloc(a1[1], 512);
      *(*a2 + v8 + 136) = v22;
      if (!v22)
      {
        break;
      }

      **(*a2 + v8 + 136) = 0;
      v23 = heap_Alloc(a1[1], 512);
      *(*a2 + v8 + 128) = v23;
      if (!v23)
      {
        break;
      }

      **(*a2 + v8 + 128) = 0;
      v8 += 144;
      if (v9 == v8)
      {
        return 0;
      }
    }
  }

  NNFX_logMsg(a1, 0);
  Free_WrdRec(a1, *a2, v3);
  return 2364547082;
}

void *Free_WrdRec(void *result, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v4 = result;
    if (a3)
    {
      v5 = a3;
      v6 = (a2 + 72);
      do
      {
        v7 = *(v6 - 5);
        if (v7)
        {
          heap_Free(v4[1], v7);
        }

        v8 = *(v6 - 4);
        if (v8)
        {
          heap_Free(v4[1], v8);
        }

        v9 = *(v6 - 3);
        if (v9)
        {
          heap_Free(v4[1], v9);
        }

        v10 = *(v6 - 2);
        if (v10)
        {
          heap_Free(v4[1], v10);
        }

        v11 = *(v6 - 1);
        if (v11)
        {
          heap_Free(v4[1], v11);
        }

        if (*v6)
        {
          heap_Free(v4[1], *v6);
        }

        v12 = v6[1];
        if (v12)
        {
          heap_Free(v4[1], v12);
        }

        v13 = v6[3];
        if (v13)
        {
          heap_Free(v4[1], v13);
        }

        v14 = v6[2];
        if (v14)
        {
          heap_Free(v4[1], v14);
        }

        v15 = v6[4];
        if (v15)
        {
          heap_Free(v4[1], v15);
        }

        v16 = v6[5];
        if (v16)
        {
          heap_Free(v4[1], v16);
        }

        v17 = v6[7];
        if (v17)
        {
          heap_Free(v4[1], v17);
        }

        v18 = v6[8];
        if (v18)
        {
          heap_Free(v4[1], v18);
        }

        v6 += 18;
        --v5;
      }

      while (v5);
    }

    v19 = v4[1];

    return heap_Free(v19, a2);
  }

  return result;
}

uint64_t InitFromWrdRec(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 120) = *(a2 + 120);
    v5 = *(a3 + 32);
    v6 = *(a2 + 32);
    v8 = v6[4];
    v7 = v6[5];
    v9 = v6[3];
    *(v5 + 96) = *(v6 + 24);
    *(v5 + 64) = v8;
    *(v5 + 80) = v7;
    *(v5 + 48) = v9;
    v10 = *v6;
    v11 = v6[2];
    *(v5 + 16) = v6[1];
    *(v5 + 32) = v11;
    *v5 = v10;
    v12 = *(a3 + 40);
    v13 = *(a2 + 40);
    v15 = v13[4];
    v14 = v13[5];
    v16 = v13[3];
    *(v12 + 96) = *(v13 + 24);
    *(v12 + 64) = v15;
    *(v12 + 80) = v14;
    *(v12 + 48) = v16;
    v17 = *v13;
    v18 = v13[2];
    *(v12 + 16) = v13[1];
    *(v12 + 32) = v18;
    *v12 = v17;
    v19 = *(a3 + 48);
    v20 = *(a2 + 48);
    v22 = v20[4];
    v21 = v20[5];
    v23 = v20[3];
    *(v19 + 96) = *(v20 + 24);
    *(v19 + 64) = v22;
    *(v19 + 80) = v21;
    *(v19 + 48) = v23;
    v24 = *v20;
    v25 = v20[2];
    *(v19 + 16) = v20[1];
    *(v19 + 32) = v25;
    *v19 = v24;
    v26 = *(a3 + 56);
    v27 = *(a2 + 56);
    v29 = v27[4];
    v28 = v27[5];
    v30 = v27[3];
    *(v26 + 96) = *(v27 + 24);
    *(v26 + 64) = v29;
    *(v26 + 80) = v28;
    *(v26 + 48) = v30;
    v31 = *v27;
    v32 = v27[2];
    *(v26 + 16) = v27[1];
    *(v26 + 32) = v32;
    *v26 = v31;
    v33 = *(a3 + 64);
    v34 = *(a2 + 64);
    v36 = v34[4];
    v35 = v34[5];
    v37 = v34[3];
    *(v33 + 96) = *(v34 + 24);
    *(v33 + 64) = v36;
    *(v33 + 80) = v35;
    *(v33 + 48) = v37;
    v38 = *v34;
    v39 = v34[2];
    *(v33 + 16) = v34[1];
    *(v33 + 32) = v39;
    *v33 = v38;
    v40 = *(a3 + 72);
    v41 = *(a2 + 72);
    v43 = v41[4];
    v42 = v41[5];
    v44 = v41[3];
    *(v40 + 96) = *(v41 + 24);
    *(v40 + 64) = v43;
    *(v40 + 80) = v42;
    *(v40 + 48) = v44;
    v45 = *v41;
    v46 = v41[2];
    *(v40 + 16) = v41[1];
    *(v40 + 32) = v46;
    *v40 = v45;
    v47 = *(a3 + 80);
    v48 = *(a2 + 80);
    v50 = v48[4];
    v49 = v48[5];
    v51 = v48[3];
    *(v47 + 96) = *(v48 + 24);
    *(v47 + 64) = v50;
    *(v47 + 80) = v49;
    *(v47 + 48) = v51;
    v52 = *v48;
    v53 = v48[2];
    *(v47 + 16) = v48[1];
    *(v47 + 32) = v53;
    *v47 = v52;
    v54 = *(a3 + 88);
    v55 = *(a2 + 88);
    v57 = v55[4];
    v56 = v55[5];
    v58 = v55[3];
    *(v54 + 96) = *(v55 + 24);
    *(v54 + 64) = v57;
    *(v54 + 80) = v56;
    *(v54 + 48) = v58;
    v59 = *v55;
    v60 = v55[2];
    *(v54 + 16) = v55[1];
    *(v54 + 32) = v60;
    *v54 = v59;
    v61 = *(a3 + 96);
    v62 = *(a2 + 96);
    v64 = v62[4];
    v63 = v62[5];
    v65 = v62[3];
    *(v61 + 96) = *(v62 + 24);
    *(v61 + 64) = v64;
    *(v61 + 80) = v63;
    *(v61 + 48) = v65;
    v66 = *v62;
    v67 = v62[2];
    *(v61 + 16) = v62[1];
    *(v61 + 32) = v67;
    *v61 = v66;
    v68 = *(a3 + 104);
    v69 = *(a2 + 104);
    v71 = v69[4];
    v70 = v69[5];
    v72 = v69[3];
    *(v68 + 96) = *(v69 + 24);
    *(v68 + 64) = v71;
    *(v68 + 80) = v70;
    *(v68 + 48) = v72;
    v73 = *v69;
    v74 = v69[2];
    *(v68 + 16) = v69[1];
    *(v68 + 32) = v74;
    *v68 = v73;
    v75 = *(a3 + 112);
    v76 = *(a2 + 112);
    v78 = v76[4];
    v77 = v76[5];
    v79 = v76[3];
    *(v75 + 96) = *(v76 + 24);
    *(v75 + 64) = v78;
    *(v75 + 80) = v77;
    *(v75 + 48) = v79;
    v80 = *v76;
    v81 = v76[2];
    *(v75 + 16) = v76[1];
    *(v75 + 32) = v81;
    *v75 = v80;
    memcpy(*(a3 + 128), *(a2 + 128), 0x200uLL);
    memcpy(*(a3 + 136), *(a2 + 136), 0x200uLL);
    return 0;
  }

  else
  {
    NNFX_logMsg(a1, 0);
    return 2364547079;
  }
}

uint64_t Compile_SntWrdRec(uint64_t a1, _DWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t *a6)
{
  v12 = heap_Calloc(*(a1 + 8), 1, 80);
  *a6 = v12;
  if (!v12 || (*(v12 + 8) = a4, (v13 = heap_Calloc(*(a1 + 8), a4, 8)) == 0) || (v14 = v13, **a6 = v13, *(*a6 + 24) = a5, (v15 = heap_Calloc(*(a1 + 8), a5, 8)) == 0))
  {
    NNFX_logMsg(a1, 0);
    v21 = 2364547082;
    goto LABEL_15;
  }

  v16 = v15;
  *(*a6 + 16) = v15;
  if (!a3)
  {
LABEL_13:
    v21 = 0;
    v22 = *a6;
    *(v22 + 72) = 0;
    *(v22 + 64) = 0;
    v23 = *a6;
    *(v23 + 56) = 0;
    *(v23 + 48) = 0;
    v24 = *a6;
    *(v24 + 40) = 0;
    a6 = (v24 + 32);
    goto LABEL_17;
  }

  v17 = 0;
  v18 = 0;
  v19 = a3;
  while (1)
  {
    if ((*a2 - 5) < 3)
    {
      goto LABEL_12;
    }

    if (*a2 != 15)
    {
      break;
    }

    v20 = Copy_WrdRec(a1, a2, (v16 + 8 * v17));
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

    ++v17;
LABEL_12:
    a2 += 36;
    if (!--v19)
    {
      goto LABEL_13;
    }
  }

  v20 = Copy_WrdRec(a1, a2, (v14 + 8 * v18));
  if ((v20 & 0x80000000) == 0)
  {
    ++v18;
    goto LABEL_12;
  }

LABEL_19:
  v21 = v20;
  if (v18)
  {
    v26 = 8 * v18;
    v27 = v14 - 8;
    do
    {
      v28 = *(v27 + v26);
      if (v28)
      {
        heap_Free(*(a1 + 8), v28);
      }

      v26 -= 8;
    }

    while (v26);
  }

  if (v17)
  {
    v29 = 8 * v17;
    v30 = v16 - 8;
    do
    {
      v31 = *(v30 + v29);
      if (v31)
      {
        heap_Free(*(a1 + 8), v31);
      }

      v29 -= 8;
    }

    while (v29);
  }

LABEL_15:
  if (*a6)
  {
    *(*a6 + 16) = 0;
    **a6 = 0;
    heap_Free(*(a1 + 8), *a6);
LABEL_17:
    *a6 = 0;
  }

  return v21;
}

uint64_t Copy_WrdRec(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = 2364547079;
  if (a2)
  {
    v7 = heap_Calloc(*(a1 + 8), 1, 144);
    *a3 = v7;
    if (v7)
    {
      v8 = v7;
      *v7 = *a2;
      *(v7 + 16) = *(a2 + 16);
      *(v7 + 24) = *(a2 + 24);
      *(v7 + 120) = *(a2 + 120);
      v9 = DupWrdRecField(a1, (v7 + 32), 100, *(a2 + 32));
      if ((v9 & 0x80000000) == 0)
      {
        v9 = DupWrdRecField(a1, v8 + 5, 100, *(a2 + 40));
        if ((v9 & 0x80000000) == 0)
        {
          v9 = DupWrdRecField(a1, v8 + 6, 100, *(a2 + 48));
          if ((v9 & 0x80000000) == 0)
          {
            v9 = DupWrdRecField(a1, v8 + 7, 100, *(a2 + 56));
            if ((v9 & 0x80000000) == 0)
            {
              v9 = DupWrdRecField(a1, v8 + 8, 100, *(a2 + 64));
              if ((v9 & 0x80000000) == 0)
              {
                v9 = DupWrdRecField(a1, v8 + 9, 100, *(a2 + 72));
                if ((v9 & 0x80000000) == 0)
                {
                  v9 = DupWrdRecField(a1, v8 + 10, 100, *(a2 + 80));
                  if ((v9 & 0x80000000) == 0)
                  {
                    v9 = DupWrdRecField(a1, v8 + 11, 100, *(a2 + 88));
                    if ((v9 & 0x80000000) == 0)
                    {
                      v9 = DupWrdRecField(a1, v8 + 12, 100, *(a2 + 96));
                      if ((v9 & 0x80000000) == 0)
                      {
                        v9 = DupWrdRecField(a1, v8 + 13, 100, *(a2 + 104));
                        if ((v9 & 0x80000000) == 0)
                        {
                          v9 = DupWrdRecField(a1, v8 + 14, 100, *(a2 + 112));
                          if ((v9 & 0x80000000) == 0)
                          {
                            v9 = DupWrdRecField(a1, v8 + 17, 512, *(a2 + 136));
                            if ((v9 & 0x80000000) == 0)
                            {
                              v9 = DupWrdRecField(a1, v8 + 16, 512, *(a2 + 128));
                              if ((v9 & 0x80000000) == 0)
                              {
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
            }
          }
        }
      }

      v3 = v9;
    }

    else
    {
      NNFX_logMsg(a1, 0);
      v3 = 2364547082;
    }

    v10 = *a3;
    if (*a3)
    {
      v11 = v10[4];
      if (v11)
      {
        heap_Free(*(a1 + 8), v11);
      }

      v10[4] = 0;
      v12 = v10[5];
      if (v12)
      {
        heap_Free(*(a1 + 8), v12);
      }

      v10[5] = 0;
      v13 = v10[6];
      if (v13)
      {
        heap_Free(*(a1 + 8), v13);
      }

      v10[6] = 0;
      v14 = v10[7];
      if (v14)
      {
        heap_Free(*(a1 + 8), v14);
      }

      v10[7] = 0;
      v15 = v10[8];
      if (v15)
      {
        heap_Free(*(a1 + 8), v15);
      }

      v10[8] = 0;
      v16 = v10[9];
      if (v16)
      {
        heap_Free(*(a1 + 8), v16);
      }

      v10[9] = 0;
      v17 = v10[10];
      if (v17)
      {
        heap_Free(*(a1 + 8), v17);
      }

      v10[10] = 0;
      v18 = v10[11];
      if (v18)
      {
        heap_Free(*(a1 + 8), v18);
      }

      v10[11] = 0;
      v19 = v10[12];
      if (v19)
      {
        heap_Free(*(a1 + 8), v19);
      }

      v10[12] = 0;
      v20 = v10[13];
      if (v20)
      {
        heap_Free(*(a1 + 8), v20);
      }

      v10[13] = 0;
      v21 = v10[14];
      if (v21)
      {
        heap_Free(*(a1 + 8), v21);
      }

      v10[14] = 0;
      v22 = v10[17];
      if (v22)
      {
        heap_Free(*(a1 + 8), v22);
      }

      v10[17] = 0;
      v23 = v10[16];
      if (v23)
      {
        heap_Free(*(a1 + 8), v23);
      }

      v10[16] = 0;
      heap_Free(*(a1 + 8), *a3);
    }

    *a3 = 0;
  }

  return v3;
}

void *MakeSilWord(uint64_t a1, int a2, int a3, int a4, char a5, char *a6)
{
  if (!a6)
  {
    goto LABEL_25;
  }

  v12 = heap_Alloc(*(a1 + 8), 200);
  v13 = v12;
  if (v12)
  {
    *(v12 + 140) = a2;
    *(v12 + 144) = 1;
    *(v12 + 192) = 1;
    *(v12 + 136) = 78;
    *v12 = 0;
    *(v12 + 4) = a3;
    *(v12 + 20) = 0;
    *(v12 + 24) = 0;
    *(v12 + 12) = 0;
    *(v12 + 16) = a4;
    *(v12 + 8) = a3;
    v14 = stringdup(a1, "");
    v13[4] = v14;
    if (!v14 || (v15 = stringdup(a1, ""), (v13[5] = v15) == 0) || (v16 = stringdup(a1, ""), (v13[6] = v16) == 0) || (v17 = stringdup(a1, ""), (v13[7] = v17) == 0) || (v18 = stringdup(a1, ""), (v13[8] = v18) == 0) || (v19 = stringdup(a1, ""), (v13[9] = v19) == 0) || (v20 = stringdup(a1, ""), (v13[10] = v20) == 0) || (v21 = stringdup(a1, ""), (v13[11] = v21) == 0) || (v22 = stringdup(a1, ""), (v13[12] = v22) == 0) || (v23 = stringdup(a1, ""), (v13[14] = v23) == 0) || (v24 = stringdup(a1, ""), (v13[13] = v24) == 0) || (v25 = stringdup(a1, ""), (v13[15] = v25) == 0) || (v26 = stringdup(a1, ""), (v13[16] = v26) == 0) || (v27 = heap_Alloc(*(a1 + 8), 2), (v13[19] = v27) == 0) || (*v27 = a5, *(v13[19] + 1) = 0, v28 = heap_Alloc(*(a1 + 8), 2), (v13[20] = v28) == 0) || (*v28 = 32, *(v13[20] + 1) = 0, v29 = heap_Alloc(*(a1 + 8), 4), (v13[22] = v29) == 0) || (*v29 = 0, v30 = heap_Alloc(*(a1 + 8), 4), (v13[23] = v30) == 0) || (*v30 = 1, v31 = heap_Alloc(*(a1 + 8), 8), (v13[21] = v31) == 0) || (v32 = stringdup(a1, a6), (*v13[21] = v32) == 0))
    {
LABEL_25:
      NNFX_logMsg(a1, 0);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
  }

  return v13;
}

void *FillProsWords(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4, _DWORD *a5, char *a6, char *a7, uint64_t a8)
{
  v14 = 2;
  *a4 = 2;
  if (a3)
  {
    v15 = 0;
    v14 = 2;
    do
    {
      v16 = *(a2 + 8 * v15);
      if (*(v16 + 2))
      {
        v17 = 0;
        v18 = *v16;
        do
        {
          *a4 = v14 + 1;
          if (*(*(v18 + 8 * v17) + 16))
          {
            v14 += 2;
            *a4 = v14;
          }

          else
          {
            ++v14;
          }

          ++v17;
        }

        while (v17 < *(v16 + 2));
      }

      else
      {
        LODWORD(v17) = 0;
      }

      ++v15;
    }

    while (v15 != a3);
    if (!v14)
    {
LABEL_13:
      v19 = a1;
      goto LABEL_158;
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v20 = heap_Alloc(*(a1 + 8), 8 * v14);
  if (!v20)
  {
    NNFX_logMsg(a1, 0);
    return v20;
  }

  if (**(***a2 + 136) == 35)
  {
    v21 = 0;
    if (a3)
    {
      goto LABEL_18;
    }

LABEL_136:
    v104 = 0;
    LODWORD(v26) = -1;
    v24 = v21;
    v25 = a1;
    goto LABEL_137;
  }

  SilWord = MakeSilWord(a1, 0, 0, 200, 35, a6);
  *v20 = SilWord;
  if (!SilWord)
  {
    v19 = a1;
    goto LABEL_158;
  }

  v21 = 1;
  if (!a3)
  {
    goto LABEL_136;
  }

LABEL_18:
  v22 = 0;
  v23 = 0;
  v117 = 0;
  v128 = 0;
  v114 = a3;
  v120 = 32;
  v135 = v21;
  v24 = v21;
  v25 = a1;
  while (1)
  {
    v132 = v22;
    if (v23)
    {
      heap_Free(*(v25 + 8), v23);
    }

    v23 = stringdup(v25, a6);
    if (!v23)
    {
      goto LABEL_157;
    }

    v26 = v132;
    v27 = *(a2 + 8 * v132);
    if (*(v27 + 8))
    {
      break;
    }

    LODWORD(v17) = 0;
LABEL_131:
    v22 = v26 + 1;
    if (v26 + 1 == v114)
    {
      v104 = v23;
      LODWORD(v21) = v135;
LABEL_137:
      v106 = v17 - 1;
      v107 = v24;
      v108 = v24;
      v109 = v21;
      if (!InsertSilWord(v25, a2, v20, v26, v106, v21 - 1, v107, *a4, a6))
      {
        return 0;
      }

      if (v109 + 1 < *a4)
      {
        v110 = heap_Realloc(*(a1 + 8), v20, 8 * (v109 + 1));
        if (v110)
        {
          *a4 = v109 + 1;
          v20 = v110;
        }
      }

      if (v104)
      {
        heap_Free(*(a1 + 8), v104);
      }

      *a5 = v108 + 1;
      return v20;
    }
  }

  v115 = a6;
  v116 = v23;
  v112 = a5;
  v17 = 0;
  v118 = a8;
  v119 = v20;
  while (1)
  {
    v131 = v17;
    v28 = strlen(*(*(*v27 + 8 * v17) + 136));
    v29 = v28 + 1;
    v30 = heap_Alloc(*(v25 + 8), v29);
    if (!v30)
    {
      goto LABEL_157;
    }

    v125 = v30;
    v31 = heap_Alloc(*(v25 + 8), v29);
    if (!v31)
    {
      goto LABEL_157;
    }

    v124 = v31;
    v121 = heap_Calloc(*(v25 + 8), v29, 4);
    if (!v121)
    {
      goto LABEL_157;
    }

    v123 = heap_Calloc(*(v25 + 8), v29, 4);
    if (!v123)
    {
      goto LABEL_157;
    }

    v133 = heap_Alloc(*(v25 + 8), 8 * v29);
    if (!v133)
    {
      goto LABEL_157;
    }

    v126 = v24;
    if (v28 == -1)
    {
      break;
    }

    bzero(v133, 8 * v29);
    v33 = v17;
    v32 = v132;
    v34 = v128;
    if (v28)
    {
      goto LABEL_33;
    }

    v20 = v119;
LABEL_123:
    v117 = *(*(**(a2 + 8 * v32) + 8 * v33) + 16);
    heap_Free(*(v25 + 8), v121);
    heap_Free(*(v25 + 8), v125);
    heap_Free(*(v25 + 8), v124);
    heap_Free(*(v25 + 8), v123);
    a8 = v118;
    if (v29)
    {
      v103 = v133;
      do
      {
        if (*v103)
        {
          heap_Free(*(v25 + 8), *v103);
          *v103 = 0;
        }

        ++v103;
        --v29;
      }

      while (v29);
    }

    heap_Free(*(v25 + 8), v133);
    v26 = v132;
    v17 = v131 + 1;
    v27 = *(a2 + 8 * v132);
    v24 = v126;
    if (v131 + 1 >= *(v27 + 8))
    {
      a5 = v112;
      a6 = v115;
      v23 = v116;
      goto LABEL_131;
    }
  }

  v33 = v17;
  v32 = v132;
  v34 = v128;
LABEL_33:
  v35 = 0;
  v36 = 0;
  v122 = v28;
  v37 = v28;
  v38 = 1;
LABEL_34:
  for (i = v36; i < v37; ++i)
  {
    v40 = *(*(**(a2 + 8 * v32) + 8 * v33) + 136);
    v41 = *(v40 + i);
    if (!v41)
    {
      break;
    }

    v42 = *(v40 + i);
    if (v42 == 92)
    {
      v113 = v35;
      v130 = v34;
      v57 = i + 1;
      v58 = strchr((v40 + (i + 1)), 92);
      if (v58)
      {
        v59 = v58 - v40;
      }

      else
      {
        v59 = i;
      }

      if (!v58)
      {
        NNFX_logMsg(a1, 1);
        goto LABEL_79;
      }

      if ((v59 - i + 1) <= 2)
      {
        NNFX_logMsg(a1, 1);
        if (v59 + 1 == i)
        {
          v60 = 1;
        }

        else
        {
          v60 = v59 - i;
        }

        v57 = v60 + i;
        goto LABEL_79;
      }

      heap_Free(*(a1 + 8), v116);
      v61 = heap_Alloc(*(a1 + 8), (v59 - i));
      if (!v61)
      {
        goto LABEL_13;
      }

      v62 = 0;
      v63 = (~i + v59);
      v33 = v131;
      v32 = v132;
      do
      {
        v61[v62] = *(*(*(**(a2 + 8 * v132) + 8 * v131) + 136) + (i + v62 + 1));
        ++v62;
      }

      while (v62 < v63);
      v61[v63] = 0;
      if (*v61 == 47)
      {
        heap_Free(*(a1 + 8), v61);
        v64 = stringdup(a1, v115);
        if (!v64)
        {
          goto LABEL_13;
        }

        v116 = v64;
        v57 = v59;
LABEL_79:
        v33 = v131;
        v32 = v132;
      }

      else
      {
        v116 = v61;
        v57 = v59;
      }

      v34 = v130;
      v35 = v113;
      v36 = v57 + 1;
      if (v57 + 1 < v122)
      {
        goto LABEL_34;
      }

      break;
    }

    if ((v41 & 0xF7) == 0x25)
    {
      v34 = 0;
      v38 = 1;
    }

    else
    {
      if (*(v40 + i) > 0x29u)
      {
        if (v42 == 42)
        {
          continue;
        }

        if (v42 == 96)
        {
          v34 = 2;
          continue;
        }
      }

      else
      {
        if (v42 == 34)
        {
          v34 = 1;
          continue;
        }

        if (v42 == 39)
        {
          v34 = 3;
          continue;
        }
      }

      if (!a7 || (v43 = *(v40 + i), v44 = v34, v129 = v37, v45 = v38, v46 = v35, v47 = strchr(a7, v43), v35 = v46, v38 = v45, v37 = v129, v33 = v131, v34 = v44, v32 = v132, !v47))
      {
        if (v35 >= v122)
        {
          goto LABEL_13;
        }

        if (*(v118 + v41) == 255)
        {
          v50 = v34;
          v51 = v37;
          v52 = v38;
          v53 = v35;
          NNFX_logMsg(a1, 1);
          v33 = v131;
          v32 = v132;
          v35 = v53;
          v38 = v52;
          v37 = v51;
        }

        else
        {
          *(v125 + v35) = v42;
          *(v121 + 4 * v35) = v34;
          *(v124 + v35) = 32;
          if (v35)
          {
            v48 = (v35 - 1);
            *(v124 + v48) = v120;
            *(v123 + 4 * v35) = 0;
            if (v38 == 1)
            {
              v49 = 1;
              goto LABEL_59;
            }
          }

          else
          {
            v49 = 0;
            v48 = 0;
LABEL_59:
            *(v123 + 4 * v48) = v49;
          }

          v54 = v35;
          v50 = v34;
          v55 = v35;
          v56 = stringdup(a1, v116);
          *(v133 + v55) = v56;
          if (!v56)
          {
            goto LABEL_13;
          }

          v38 = 0;
          v35 = (v54 + 1);
          v120 = 32;
          v33 = v131;
          v32 = v132;
        }

        v34 = v50;
        continue;
      }

      v120 = v42;
    }
  }

  v65 = v135;
  if (v35 > v122)
  {
    goto LABEL_13;
  }

  v25 = a1;
  v128 = v34;
  if (!v122)
  {
    v20 = v119;
LABEL_90:
    v135 = v65;
    if (v35)
    {
      *(v125 + v35) = 0;
      v67 = v35 - 1;
      *(v124 + (v35 - 1)) = v120;
      *(v124 + v35) = 0;
      if (v65 < *a4)
      {
        v68 = v35;
        v69 = heap_Alloc(*(a1 + 8), 200);
        v20[v135] = v69;
        if (v69)
        {
          v70 = *(**(a2 + 8 * v132) + 8 * v131);
          *v69 = *v70;
          *(v69 + 16) = *(v70 + 16);
          *(v69 + 24) = *(v70 + 24);
          *(v69 + 136) = *(v70 + 120);
          v71 = stringdup(a1, *(v70 + 128));
          *(v20[v135] + 32) = v71;
          if (v71)
          {
            v72 = stringdup(a1, *(*(**(a2 + 8 * v132) + 8 * v131) + 136));
            *(v20[v135] + 40) = v72;
            if (v72)
            {
              v73 = stringdup(a1, *(*(**(a2 + 8 * v132) + 8 * v131) + 32));
              *(v20[v135] + 48) = v73;
              if (v73)
              {
                v74 = stringdup(a1, *(*(**(a2 + 8 * v132) + 8 * v131) + 40));
                *(v20[v135] + 56) = v74;
                if (v74)
                {
                  v75 = stringdup(a1, *(*(**(a2 + 8 * v132) + 8 * v131) + 48));
                  *(v20[v135] + 64) = v75;
                  if (v75)
                  {
                    v76 = stringdup(a1, *(*(**(a2 + 8 * v132) + 8 * v131) + 56));
                    *(v20[v135] + 72) = v76;
                    if (v76)
                    {
                      v77 = stringdup(a1, *(*(**(a2 + 8 * v132) + 8 * v131) + 64));
                      *(v20[v135] + 80) = v77;
                      if (v77)
                      {
                        v78 = stringdup(a1, *(*(**(a2 + 8 * v132) + 8 * v131) + 72));
                        *(v20[v135] + 88) = v78;
                        if (v78)
                        {
                          v79 = stringdup(a1, *(*(**(a2 + 8 * v132) + 8 * v131) + 80));
                          *(v20[v135] + 96) = v79;
                          if (v79)
                          {
                            v80 = stringdup(a1, *(*(**(a2 + 8 * v132) + 8 * v131) + 96));
                            *(v20[v135] + 112) = v80;
                            if (v80)
                            {
                              v81 = stringdup(a1, *(*(**(a2 + 8 * v132) + 8 * v131) + 88));
                              *(v20[v135] + 104) = v81;
                              if (v81)
                              {
                                v82 = stringdup(a1, *(*(**(a2 + 8 * v132) + 8 * v131) + 104));
                                *(v20[v135] + 120) = v82;
                                if (v82)
                                {
                                  v83 = stringdup(a1, *(*(**(a2 + 8 * v132) + 8 * v131) + 112));
                                  *(v20[v135] + 128) = v83;
                                  if (v83)
                                  {
                                    *(v123 + 4 * v67) = 1;
                                    v84 = v20[v135];
                                    v84[35] = v126;
                                    v84[36] = v68;
                                    v85 = v131 == *(*(a2 + 8 * v132) + 8) - 1;
                                    v84[48] = 0;
                                    v84[49] = v85;
                                    v86 = heap_Calloc(*(a1 + 8), v68, 4);
                                    *(v20[v135] + 176) = v86;
                                    if (v86)
                                    {
                                      v87 = *(v20[v135] + 176);
                                      v88 = v68;
                                      v89 = v121;
                                      do
                                      {
                                        v90 = *v89++;
                                        *v87++ = v90;
                                        --v88;
                                      }

                                      while (v88);
                                      v91 = heap_Alloc(*(a1 + 8), v68 + 1);
                                      *(*(v119 + 8 * v135) + 152) = v91;
                                      if (v91)
                                      {
                                        v126 += v68;
                                        for (j = 0; j != v68; ++j)
                                        {
                                          *(*(*(v119 + 8 * v135) + 152) + j) = *(v125 + j);
                                        }

                                        *(*(*(v119 + 8 * v135) + 152) + v68) = 0;
                                        v93 = heap_Alloc(*(a1 + 8), v68 + 1);
                                        *(*(v119 + 8 * v135) + 160) = v93;
                                        if (v93)
                                        {
                                          v20 = v119;
                                          for (k = 0; k != v68; ++k)
                                          {
                                            *(*(*(v119 + 8 * v135) + 160) + k) = *(v124 + k);
                                          }

                                          *(*(*(v119 + 8 * v135) + 160) + v68) = 0;
                                          v95 = heap_Calloc(*(a1 + 8), v68, 4);
                                          *(*(v119 + 8 * v135) + 184) = v95;
                                          if (v95)
                                          {
                                            v96 = *(*(v119 + 8 * v135) + 184);
                                            v97 = v68;
                                            v98 = v123;
                                            do
                                            {
                                              v99 = *v98++;
                                              *v96++ = v99;
                                              --v97;
                                            }

                                            while (v97);
                                            v100 = heap_Alloc(*(a1 + 8), 8 * v68);
                                            *(*(v119 + 8 * v135) + 168) = v100;
                                            if (v100)
                                            {
                                              v101 = 0;
                                              while (1)
                                              {
                                                v102 = stringdup(a1, *(v133 + v101));
                                                *(*(*(v119 + 8 * v135) + 168) + 8 * v101) = v102;
                                                if (!v102)
                                                {
                                                  break;
                                                }

                                                if (v68 == ++v101)
                                                {
                                                  v128 = 0;
                                                  v135 = (v135 + 1);
                                                  v120 = 32;
                                                  v33 = v131;
                                                  v32 = v132;
                                                  goto LABEL_123;
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
                  }
                }
              }
            }
          }
        }
      }

LABEL_157:
      v19 = v25;
LABEL_158:
      NNFX_logMsg(v19, 0);
      return 0;
    }

    goto LABEL_123;
  }

  v20 = v119;
  if (!v117 || v126 < 2)
  {
    goto LABEL_90;
  }

  v66 = v35;
  if (InsertSilWord(a1, a2, v119, v32, v33 - 1, v135 - 1, v126, *a4, v115))
  {
    ++v126;
    v65 = (v135 + 1);
    v33 = v131;
    v32 = v132;
    LODWORD(v35) = v66;
    goto LABEL_90;
  }

  return 0;
}

uint64_t InsertSilWord(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, unsigned int a8, char *a9)
{
  if (a6 < a8 && (v15 = *(**(a2 + 8 * a4) + 8 * a5), SilWord = MakeSilWord(a1, a7, *(v15 + 8), *(v15 + 16), 35, a9), (*(a3 + 8 * (a6 + 1)) = SilWord) != 0))
  {
    v17 = *(a3 + 8 * a6);
    v18 = *(*(a2 + 8 * a4) + 8) - 1;
    if (*(v17 + 144))
    {
      v19 = v18 == a5;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      *(v17 + 196) = 0;
    }

    v20 = 1;
    if (v18 == a5)
    {
      *(SilWord + 49) = 1;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0);
    return 0;
  }

  return v20;
}

void *freepWRI(uint64_t a1, void *a2)
{
  v4 = a2[16];
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
  }

  v5 = a2[17];
  if (v5)
  {
    heap_Free(*(a1 + 8), v5);
  }

  v6 = a2[4];
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
  }

  v7 = a2[5];
  if (v7)
  {
    heap_Free(*(a1 + 8), v7);
  }

  v8 = a2[6];
  if (v8)
  {
    heap_Free(*(a1 + 8), v8);
  }

  v9 = a2[7];
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
  }

  v10 = a2[8];
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
  }

  v11 = a2[9];
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
  }

  v12 = a2[10];
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
  }

  v13 = a2[12];
  if (v13)
  {
    heap_Free(*(a1 + 8), v13);
  }

  v14 = a2[11];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
  }

  v15 = a2[13];
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
  }

  v16 = a2[14];
  if (v16)
  {
    heap_Free(*(a1 + 8), v16);
  }

  v17 = *(a1 + 8);

  return heap_Free(v17, a2);
}

void *freepSRI(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*a2 + 8 * i);
      if (v6)
      {
        freepWRI(a1, v6);
        *(*a2 + 8 * i) = 0;
        v4 = *(a2 + 8);
      }
    }
  }

  if (*a2)
  {
    heap_Free(*(a1 + 8), *a2);
    *a2 = 0;
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    for (j = 0; j < v7; ++j)
    {
      v9 = *(*(a2 + 16) + 8 * j);
      if (v9)
      {
        freepWRI(a1, v9);
        *(*(a2 + 16) + 8 * j) = 0;
        v7 = *(a2 + 24);
      }
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *(a2 + 16) = 0;
  }

  v11 = *(a2 + 40);
  if (v11)
  {
    for (k = 0; k < v11; ++k)
    {
      v13 = *(*(a2 + 32) + 8 * k);
      if (v13)
      {
        freepWRI(a1, v13);
        *(*(a2 + 32) + 8 * k) = 0;
        v11 = *(a2 + 40);
      }
    }
  }

  v14 = *(a2 + 32);
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    *(a2 + 32) = 0;
  }

  v15 = *(a2 + 56);
  if (v15)
  {
    for (m = 0; m < v15; ++m)
    {
      v17 = *(*(a2 + 48) + 8 * m);
      if (v17)
      {
        freepWRI(a1, v17);
        *(*(a2 + 48) + 8 * m) = 0;
        v15 = *(a2 + 56);
      }
    }
  }

  v18 = *(a2 + 48);
  if (v18)
  {
    heap_Free(*(a1 + 8), v18);
    *(a2 + 48) = 0;
  }

  v19 = *(a2 + 72);
  if (v19)
  {
    for (n = 0; n < v19; ++n)
    {
      v21 = *(*(a2 + 64) + 8 * n);
      if (v21)
      {
        freepWRI(a1, v21);
        *(*(a2 + 64) + 8 * n) = 0;
        v19 = *(a2 + 72);
      }
    }
  }

  v22 = *(a2 + 64);
  if (v22)
  {
    heap_Free(*(a1 + 8), v22);
    *(a2 + 64) = 0;
  }

  v23 = *(a1 + 8);

  return heap_Free(v23, a2);
}

void *freepPWRI(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    *(a2 + 32) = 0;
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    heap_Free(*(a1 + 8), v5);
    *(a2 + 40) = 0;
  }

  v6 = *(a2 + 48);
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
    *(a2 + 48) = 0;
  }

  v7 = *(a2 + 56);
  if (v7)
  {
    heap_Free(*(a1 + 8), v7);
    *(a2 + 56) = 0;
  }

  v8 = *(a2 + 64);
  if (v8)
  {
    heap_Free(*(a1 + 8), v8);
    *(a2 + 64) = 0;
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
    *(a2 + 72) = 0;
  }

  v10 = *(a2 + 88);
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *(a2 + 88) = 0;
  }

  v11 = *(a2 + 80);
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
    *(a2 + 80) = 0;
  }

  v12 = *(a2 + 96);
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
    *(a2 + 96) = 0;
  }

  v13 = *(a2 + 112);
  if (v13)
  {
    heap_Free(*(a1 + 8), v13);
    *(a2 + 112) = 0;
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    *(a2 + 104) = 0;
  }

  v15 = *(a2 + 120);
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
    *(a2 + 120) = 0;
  }

  v16 = *(a2 + 128);
  if (v16)
  {
    heap_Free(*(a1 + 8), v16);
    *(a2 + 128) = 0;
  }

  v17 = *(a2 + 152);
  if (v17)
  {
    heap_Free(*(a1 + 8), v17);
    *(a2 + 152) = 0;
  }

  v18 = *(a2 + 160);
  if (v18)
  {
    heap_Free(*(a1 + 8), v18);
    *(a2 + 160) = 0;
  }

  v19 = *(a2 + 176);
  if (v19)
  {
    heap_Free(*(a1 + 8), v19);
    *(a2 + 176) = 0;
  }

  v20 = *(a2 + 184);
  if (v20)
  {
    heap_Free(*(a1 + 8), v20);
    *(a2 + 184) = 0;
  }

  v21 = *(a2 + 144);
  if (v21)
  {
    for (i = 0; i < v21; ++i)
    {
      v23 = *(*(a2 + 168) + 8 * i);
      if (v23)
      {
        heap_Free(*(a1 + 8), v23);
        *(*(a2 + 168) + 8 * i) = 0;
        v21 = *(a2 + 144);
      }
    }
  }

  v24 = *(a2 + 168);
  if (v24)
  {
    heap_Free(*(a1 + 8), v24);
    *(a2 + 168) = 0;
  }

  v25 = *(a1 + 8);

  return heap_Free(v25, a2);
}

void *freeppSRI(void *result, uint64_t *a2, unsigned int a3)
{
  if (a2)
  {
    v4 = result;
    if (a3 >= 1)
    {
      v5 = a3;
      v6 = a2;
      do
      {
        if (*v6)
        {
          freepSRI(v4, *v6);
          *v6 = 0;
        }

        ++v6;
        --v5;
      }

      while (v5);
    }

    v7 = v4[1];

    return heap_Free(v7, a2);
  }

  return result;
}

uint64_t ParseWnluStr(const char *a1, char **a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = strlen(a1);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = a1[v9];
      if (!a1[v9])
      {
        break;
      }

      if (v10 == 58)
      {
        if (v9 <= v8)
        {
          v12 = 0;
        }

        else
        {
          memcpy(__dst, &a1[v8], v9 + ~v8 + 1);
          v12 = v9 - v8;
        }

        v6 = __dst;
        __dst[v12] = 0;
        ++v9;
        if (__dst[1] == 95)
        {
          v24 = __dst[0];
          v25 = memchr("SsEeIi", __dst[0], 7uLL);
          v6 = &__dst[2 * (v25 != 0)];
          if (v25)
          {
            v5 = v24;
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          v5 = 0;
        }

LABEL_26:
        v8 = v9;
        goto LABEL_27;
      }

      if (v10 == 59)
      {
        break;
      }

      ++v9;
LABEL_27:
      if (v9 > v4)
      {
        return v7;
      }
    }

    if (v5)
    {
      __src[0] = v5;
      __src[1] = 95;
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    if (v9 > v8)
    {
      v13 = &a1[v8];
      v14 = v9 - v8;
      do
      {
        v15 = *v13++;
        __src[v11++] = v15;
        --v14;
      }

      while (v14);
    }

    __src[v11] = 0;
    if (v6)
    {
      v16 = strcmp(v6, "POS");
      v17 = a2 + 8;
      if (!v16 || (v18 = strcmp(v6, "PHR"), v17 = a2 + 9, !v18) || (v19 = strcmp(v6, "CLASS"), v17 = a2 + 10, !v19) || (v20 = strcmp(v6, "PUNC"), v17 = a2 + 12, !v20) || (v21 = strcmp(v6, "COMP"), v17 = a2 + 11, !v21) || (v22 = strcmp(v6, "BNDSHAPE"), v17 = a2 + 13, !v22) || (v23 = strcmp(v6, "COMPPOS"), v17 = a2 + 14, !v23))
      {
        strcpy(*v17, __src);
      }

      ++v7;
    }

    v5 = 0;
    ++v9;
    goto LABEL_26;
  }

  return 0;
}

uint64_t DupWrdRecField(uint64_t a1, char **a2, uint64_t a3, const char *a4)
{
  v8 = heap_Alloc(*(a1 + 8), a3);
  v9 = v8;
  if (v8)
  {
    strncpy(v8, a4, a3 - 1);
    result = 0;
    v9[a3 - 1] = 0;
  }

  else
  {
    NNFX_logMsg(a1, 0);
    result = 2364547082;
  }

  *a2 = v9;
  return result;
}

uint64_t nnextract_Allocate(uint64_t a1, uint64_t **a2, _DWORD *a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v12 = heap_Alloc(*(a1 + 8), 8);
  *a2 = v12;
  if (v12 && (Compile_SntWrdRec(a1, a3, a4, a5, a6, v12) & 0x80000000) == 0)
  {
    return 0;
  }

  NNFX_logMsg(a1, 0);
  return 1;
}

uint64_t nnextract_Process2Buff(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t *a7, uint64_t a8, char *a9, uint64_t a10, uint64_t *a11, _DWORD *a12)
{
  v13 = *(a6 + 8);
  if (!v13)
  {
    goto LABEL_10;
  }

  v18 = a4;
  v19 = a3;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  GetLingTabIndex(v13, v29);
  if (SLOWORD(v29[0]) == -1)
  {
    NNFX_logMsg(a1, 1);
  }

  if (SWORD1(v29[0]) == -1)
  {
    NNFX_logMsg(a1, 1);
  }

  LOBYTE(v28) = a5;
  NnFeatures = extractNnFeatures(a1, *(a6 + 8), v29, a9, a10, a2, v19, v18, v28, a8);
  *a7 = NnFeatures;
  if (NnFeatures && (v22 = heap_Calloc(*(a1 + 8), 1, 16)) != 0)
  {
    v23 = v22;
    SymTabInit(v22);
    Buf = SymTabReadBuf(a1, v23, *(a6 + 16), *(a6 + 24), a7);
    if (Buf)
    {
      v25 = Buf;
    }

    else
    {
      v26 = SymTabToIntInplaceActive(a1, v23, a7, 0, 0x2Du);
      if (v26)
      {
        v25 = v26;
      }

      else
      {
        v25 = unrollNnFeatures(a1, a7, v23, a11, a12);
        if (!v25)
        {
          NNFX_logMsg(a1, 2);
          SymTabFree(a1, v23);
          heap_Free(*(a1 + 8), v23);
          return v25;
        }
      }
    }

    NNFX_logMsg(a1, 0);
  }

  else
  {
LABEL_10:
    NNFX_logMsg(a1, 0);
    return 1;
  }

  return v25;
}

uint64_t GetLingTabIndex(const char **a1, _WORD *a2)
{
  v4 = 0;
  v5 = a2 + 1;
  v6 = a2 + 2;
  v7 = a2 + 3;
  v41 = a2 + 4;
  v39 = a2 + 6;
  v40 = a2 + 5;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(a2 + 1) = v8;
  v37 = a2 + 8;
  v38 = a2 + 7;
  v35 = a2 + 10;
  v36 = a2 + 9;
  v33 = a2 + 12;
  v34 = a2 + 11;
  v31 = a2 + 14;
  v32 = a2 + 13;
  *a2 = v8;
  v30 = a2 + 15;
  a2[16] = -1;
  v29 = a2 + 16;
  do
  {
    v9 = *a1;
    if (!*a1)
    {
      break;
    }

    v10 = strcmp(*a1, "VOWELS");
    v11 = a2;
    if (v10)
    {
      v12 = strcmp(v9, "VOICEDPHONES");
      v11 = v5;
      if (v12)
      {
        v13 = strcmp(v9, "BC_MONOVOWELS");
        v11 = v6;
        if (v13)
        {
          v14 = strcmp(v9, "BC_DIPTHVOWELS");
          v11 = v7;
          if (v14)
          {
            v15 = strcmp(v9, "BC_AFFRICATES");
            v11 = v41;
            if (v15)
            {
              v16 = strcmp(v9, "BC_FRICATIVES");
              v11 = v40;
              if (v16)
              {
                v17 = strcmp(v9, "BC_STOPS");
                v11 = v39;
                if (v17)
                {
                  v18 = strcmp(v9, "BC_LIQUIDS_TAP");
                  v11 = v38;
                  if (v18)
                  {
                    v19 = strcmp(v9, "BC_NASALS");
                    v11 = v37;
                    if (v19)
                    {
                      v20 = strcmp(v9, "BC_GLIDES");
                      v11 = v36;
                      if (v20)
                      {
                        v21 = strcmp(v9, "COMMON_WORDLIST");
                        v11 = v35;
                        if (v21)
                        {
                          v22 = strcmp(v9, "FXN_WORDLIST");
                          v11 = v34;
                          if (v22)
                          {
                            v23 = strcmp(v9, "WH_WORDLIST");
                            v11 = v33;
                            if (v23)
                            {
                              v24 = strcmp(v9, "CONJ_WORDLIST");
                              v11 = v32;
                              if (v24)
                              {
                                v25 = strcmp(v9, "AUXV_WORDLIST");
                                v11 = v31;
                                if (v25)
                                {
                                  v26 = strcmp(v9, "ADPOS_WORDLIST");
                                  v11 = v30;
                                  if (v26)
                                  {
                                    v27 = strcmp(v9, "EXCL_FEATLIST");
                                    v11 = v29;
                                    if (v27)
                                    {
                                      continue;
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
      }
    }

    *v11 = v4++;
    a1 += 2;
  }

  while (v4 != 17);
  return v4;
}