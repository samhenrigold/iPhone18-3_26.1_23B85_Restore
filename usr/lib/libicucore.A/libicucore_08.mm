BOOL sub_1952333A8(unsigned int a1)
{
  if (a1 >> 11 <= 0x1A)
  {
    v1 = a1 >> 5;
LABEL_11:
    v3 = (a1 & 0x1F) + 4 * word_19545BF78[v1];
    return ((1 << word_19545BF78[v3]) & 0x4F001) == 0;
  }

  if (!HIWORD(a1))
  {
    if (a1 >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (a1 >> 5);
    goto LABEL_11;
  }

  if (HIWORD(a1) <= 0x10u)
  {
    v1 = ((a1 >> 5) & 0x3F) + word_19545BF78[(a1 >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return ((1 << word_19545BF78[v3]) & 0x4F001) == 0;
}

UBool u_isgraph(UChar32 c)
{
  if (c >> 11 <= 0x1A)
  {
    v1 = c >> 5;
LABEL_11:
    v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
    return ((1 << word_19545BF78[v3]) & 0x5F001) == 0;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (c >> 5);
    goto LABEL_11;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return ((1 << word_19545BF78[v3]) & 0x5F001) == 0;
}

UBool u_ispunct(UChar32 c)
{
  if (c >> 11 <= 0x1A)
  {
    v1 = c >> 5;
LABEL_11:
    v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
    return ((1 << word_19545BF78[v3]) & 0x30F80000) != 0;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (c >> 5);
    goto LABEL_11;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return ((1 << word_19545BF78[v3]) & 0x30F80000) != 0;
}

UBool u_isIDIgnorable(UChar32 c)
{
  if (c > 159)
  {
    if (c >> 11 > 0x1A)
    {
      if (HIWORD(c))
      {
        if (HIWORD(c) > 0x10u)
        {
          v7 = 4876;
          return (word_19545BF78[v7] & 0x1F) == 16;
        }

        v5 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
      }

      else
      {
        if (c >> 10 >= 0x37)
        {
          v6 = 0;
        }

        else
        {
          v6 = 320;
        }

        v5 = v6 + (c >> 5);
      }
    }

    else
    {
      v5 = c >> 5;
    }

    v7 = (c & 0x1F) + 4 * word_19545BF78[v5];
    return (word_19545BF78[v7] & 0x1F) == 16;
  }

  v2 = (c - 32) < 0xFFFFFFE9 || (c - 14) < 0xE;
  v3 = (c - 32) >= 0x5F && v2;
  if (c <= 0x9F)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

UBool u_isJavaIDStart(UChar32 c)
{
  if (c >> 11 <= 0x1A)
  {
    v1 = c >> 5;
LABEL_11:
    v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
    return ((1 << word_19545BF78[v3]) & 0x240003E) != 0;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (c >> 5);
    goto LABEL_11;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return ((1 << word_19545BF78[v3]) & 0x240003E) != 0;
}

UBool u_isJavaIDPart(UChar32 c)
{
  if (c >> 11 > 0x1A)
  {
    if (HIWORD(c))
    {
      if (HIWORD(c) > 0x10u)
      {
        v3 = 4876;
        goto LABEL_12;
      }

      v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    }

    else
    {
      if (c >> 10 >= 0x37)
      {
        v2 = 0;
      }

      else
      {
        v2 = 320;
      }

      v1 = v2 + (c >> 5);
    }
  }

  else
  {
    v1 = c >> 5;
  }

  v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
LABEL_12:
  v4 = 1;
  if (((1 << word_19545BF78[v3]) & 0x240077E) == 0)
  {
    return u_isIDIgnorable(c) != 0;
  }

  return v4;
}

int32_t u_charDigitValue(UChar32 c)
{
  if (c >> 11 > 0x1A)
  {
    if (HIWORD(c))
    {
      if (HIWORD(c) > 0x10u)
      {
        v3 = 4876;
        goto LABEL_12;
      }

      v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    }

    else
    {
      if (c >> 10 >= 0x37)
      {
        v2 = 0;
      }

      else
      {
        v2 = 320;
      }

      v1 = v2 + (c >> 5);
    }
  }

  else
  {
    v1 = c >> 5;
  }

  v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
LABEL_12:
  v4 = word_19545BF78[v3];
  if (v4 >= 0x2C0)
  {
    return -1;
  }

  else
  {
    return (v4 >> 6) - 1;
  }
}

double u_getNumericValue(UChar32 c)
{
  if (c >> 11 > 0x1A)
  {
    if (HIWORD(c))
    {
      if (HIWORD(c) > 0x10u)
      {
        v3 = 4876;
        goto LABEL_12;
      }

      v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    }

    else
    {
      if (c >> 10 >= 0x37)
      {
        v2 = 0;
      }

      else
      {
        v2 = 320;
      }

      v1 = v2 + (c >> 5);
    }
  }

  else
  {
    v1 = c >> 5;
  }

  v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
LABEL_12:
  v4 = word_19545BF78[v3];
  result = -123456789.0;
  if (v4 < 0x40)
  {
    return result;
  }

  v6 = v4 >> 6;
  if (v4 <= 0x2BF)
  {
    return (v6 - 1);
  }

  if (v4 <= 0x53F)
  {
    return (v6 - 11);
  }

  if (v4 >> 10 <= 0xA)
  {
    return (v6 - 21);
  }

  if (v4 >> 11 <= 0xE)
  {
    v8 = ((v4 >> 10) - 12);
    v9 = (((v4 >> 6) & 0xF) + 1);
    return v8 / v9;
  }

  if (v4 >> 14 > 2)
  {
    v13 = v4 >> 8;
    if (v4 >> 8 <= 0xC8)
    {
      return (((v4 >> 8) - 191) * dword_1954796C0[v4 >> 6]);
    }

    if (v13 > 0xCE)
    {
      if (v13 > 0xD2)
      {
        return result;
      }

      v15 = (2 * (v4 >> 6)) | 1;
      v16 = (v6 - 828) >> 2;
      v17 = 32;
    }

    else
    {
      v15 = (2 * (v4 >> 6)) | 1;
      v16 = (v6 - 804) >> 2;
      v17 = 20;
    }

    v8 = v15;
    v9 = (v17 << v16);
    return v8 / v9;
  }

  v10 = (v4 >> 11) - 14;
  v11 = (v4 >> 6) & 0x1F;
  v12 = v11 + 2;
  result = v10;
  if (v11 >= 2)
  {
    do
    {
      result = result * 10000.0;
      v12 -= 4;
    }

    while (v12 > 3);
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v14 = 100.0;
    }

    else
    {
      v14 = 1000.0;
    }

    return result * v14;
  }

  else if (v12)
  {
    return result * 10.0;
  }

  return result;
}

int32_t u_digit(UChar32 ch, int8_t radix)
{
  v2 = radix;
  if ((radix - 2) > 0x22)
  {
    v8 = -1;
  }

  else
  {
    v4 = u_charDigitValue(ch);
    if ((ch - 65313) >= 0x1A)
    {
      v5 = v4;
    }

    else
    {
      v5 = ch - 23;
    }

    if ((ch - 65345) <= 0x19)
    {
      v6 = ch - 55;
    }

    else
    {
      v6 = v5;
    }

    if ((ch - 65) <= 0x19)
    {
      v7 = ch - 55;
    }

    else
    {
      v7 = v6;
    }

    if ((ch - 97) <= 0x19)
    {
      v8 = ch - 87;
    }

    else
    {
      v8 = v7;
    }

    if ((v4 & 0x80) == 0)
    {
      v8 = v4;
    }
  }

  if (v8 >= v2)
  {
    return -1;
  }

  else
  {
    return v8;
  }
}

UChar32 u_forDigit(int32_t digit, int8_t radix)
{
  v2 = digit + 87;
  if (digit <= 9)
  {
    v2 = digit + 48;
  }

  if ((radix - 2) <= 0x22 && radix > digit)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void u_getUnicodeVersion(UVersionInfo versionArray)
{
  if (versionArray)
  {
    *versionArray = 16;
  }
}

uint64_t sub_195233A44(unsigned int a1)
{
  if (a1 >> 11 <= 0x1A)
  {
    v1 = a1 >> 5;
LABEL_11:
    v3 = (a1 & 0x1F) + 4 * word_19545BF78[v1];
    return word_19545BF78[v3];
  }

  if (!HIWORD(a1))
  {
    if (a1 >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (a1 >> 5);
    goto LABEL_11;
  }

  if (HIWORD(a1) <= 0x10u)
  {
    v1 = ((a1 >> 5) & 0x3F) + word_19545BF78[(a1 >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return word_19545BF78[v3];
}

uint64_t sub_195233AB4(int a1)
{
  if (a1 == 2)
  {
    v1 = 49764913;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 12)
  {
    v2 = 338;
  }

  else
  {
    v2 = v1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 20687;
  }
}

void u_charAge(UChar32 c, UVersionInfo versionArray)
{
  if (versionArray)
  {
    v3 = sub_195232CE4(c, 0);
    *versionArray = v3 >> 26;
    versionArray[1] = HIBYTE(v3) & 3;
    *(versionArray + 1) = 0;
  }
}

uint64_t uscript_getScript(unsigned int a1, int *a2)
{
  if (!a2 || *a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1 >= 0x110000)
  {
    *a2 = 1;
    return 0xFFFFFFFFLL;
  }

  v3 = sub_195232CE4(a1, 0);
  v4 = v3 & 0xFFF;
  result = v3 & 0x3FF;
  if (v4 >= 0x400)
  {
    if (v4 >= 0x800)
    {
      if (v4 >= 0xC00)
      {
        return word_19545BB5C[result];
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL uscript_hasScript(unsigned int a1, unsigned int a2)
{
  v3 = sub_195232CE4(a1, 0);
  v4 = v3 & 0x3FF;
  if ((v3 & 0xFFFu) > 0x3FF)
  {
    v5 = &word_19545BB5C[v3 & 0x3FF];
    if ((v3 & 0xFFFu) >= 0xC00)
    {
      v5 = &word_19545BB5C[v5[1]];
    }

    if (a2 >> 15)
    {
      return 0;
    }

    do
    {
      v8 = *v5++;
      v7 = v8;
    }

    while (v8 < a2);
    v4 = v7 & 0x7FFF;
  }

  return v4 == a2;
}

uint64_t uscript_getScriptExtensions(unsigned int a1, int *a2, int a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (*a4 > 0)
  {
    return 0;
  }

  if (a3 < 0 || !a2 && a3)
  {
    result = 0;
    v8 = 1;
LABEL_9:
    *a4 = v8;
    return result;
  }

  v9 = sub_195232CE4(a1, 0);
  if ((v9 & 0xFFFu) > 0x3FF)
  {
    v10 = &word_19545BB5C[v9 & 0x3FF];
    if ((v9 & 0xFFFu) >= 0xC00)
    {
      v10 = &word_19545BB5C[v10[1]];
    }

    result = 0;
    do
    {
      while (1)
      {
        v12 = *v10++;
        v11 = v12;
        if (result >= a3)
        {
          break;
        }

        a2[result++] = v11 & 0x7FFF;
        if (v11 < 0)
        {
          return result;
        }
      }

      ++result;
    }

    while ((v11 & 0x8000) == 0);
    v8 = 15;
    goto LABEL_9;
  }

  if (a3)
  {
    *a2 = v9 & 0x3FF;
  }

  else
  {
    *a4 = 15;
  }

  return 1;
}

UBlockCode ublock_getCode(UChar32 c)
{
  if (c >= 0x110000)
  {
    v1 = c;
  }

  else
  {
    v1 = c >> 4;
  }

  return ucptrie_get(&off_1E74036E0, v1);
}

void *sub_195233D30(void *result, int *a2)
{
  if (*a2 <= 0)
  {
    v3 = result;
    utrie2_enum(&off_1E7403640, 0, sub_195233F68, result);
    (v3[1])(*v3, 9);
    (v3[1])(*v3, 10);
    (v3[1])(*v3, 14);
    (v3[1])(*v3, 28);
    (v3[1])(*v3, 32);
    (v3[1])(*v3, 133);
    (v3[1])(*v3, 134);
    (v3[1])(*v3, 127);
    (v3[1])(*v3, 8202);
    (v3[1])(*v3, 8208);
    (v3[1])(*v3, 8298);
    (v3[1])(*v3, 8304);
    (v3[1])(*v3, 65279);
    (v3[1])(*v3, 65280);
    (v3[1])(*v3, 160);
    (v3[1])(*v3, 161);
    (v3[1])(*v3, 8199);
    (v3[1])(*v3, 8200);
    (v3[1])(*v3, 8239);
    (v3[1])(*v3, 8240);
    (v3[1])(*v3, 97);
    (v3[1])(*v3, 123);
    (v3[1])(*v3, 65);
    (v3[1])(*v3, 91);
    (v3[1])(*v3, 65345);
    (v3[1])(*v3, 65371);
    (v3[1])(*v3, 65313);
    (v3[1])(*v3, 65339);
    (v3[1])(*v3, 103);
    (v3[1])(*v3, 71);
    (v3[1])(*v3, 65351);
    (v3[1])(*v3, 65319);
    (v3[1])(*v3, 8288);
    (v3[1])(*v3, 65520);
    (v3[1])(*v3, 65532);
    (v3[1])(*v3, 917504);
    (v3[1])(*v3, 921600);
    (v3[1])(*v3, 847);
    v4 = *v3;
    v5 = v3[1];

    return v5(v4, 848);
  }

  return result;
}

uint64_t *sub_195233F88(uint64_t *result, int *a2)
{
  if (*a2 <= 0)
  {
    return utrie2_enum(&off_1E7403690, 0, sub_195233F68, result);
  }

  return result;
}

uint64_t sub_195233FBC(uint64_t a1)
{
  v2 = 0;
  v5 = 0;
  do
  {
    result = ucptrie_getRange(&off_1E74036E0, v2, 0, 0, 0, 0, &v5);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v4 = result;
    result = (*(a1 + 8))(*a1, (16 * v2));
    v2 = v4 + 1;
  }

  while (v4 < 0x10FFF);
  return result;
}

void icu::UCharsTrie::~UCharsTrie(void **this)
{
  free(*this);
}

{
  free(*this);
}

uint64_t icu::UCharsTrie::current(icu::UCharsTrie *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  if ((*(this + 6) & 0x80000000) != 0)
  {
    v2 = *v1;
    if (v2 >= 0x40)
    {
      return (v2 >> 15) ^ 3;
    }
  }

  return 1;
}

uint64_t icu::UCharsTrie::firstForCodePoint(icu::UCharsTrie *this, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 0x10000)
  {
    *(this + 6) = -1;
    if (icu::UCharsTrie::nextImpl(this, *(this + 1), ((a2 >> 10) - 10304)))
    {

      return icu::UCharsTrie::next(this, v2 & 0x3FF | 0xDC00u);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(this + 6) = -1;
    v4 = *(this + 1);

    return icu::UCharsTrie::nextImpl(this, v4, v2);
  }
}

uint64_t icu::UCharsTrie::next(icu::UCharsTrie *this, uint64_t a2)
{
  v2 = a2;
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 6);
  if (v4 < 0)
  {
    return icu::UCharsTrie::nextImpl(this, v3, v2);
  }

  v6 = *v3;
  v5 = v3 + 1;
  if (v6 == v2)
  {
    *(this + 6) = v4 - 1;
    *(this + 2) = v5;
    if (v4)
    {
      return 1;
    }

    v7 = *v5;
    if (v7 < 0x40)
    {
      return 1;
    }

    else
    {
      return (v7 >> 15) ^ 3;
    }
  }

  else
  {
    v8 = 0;
    *(this + 2) = 0;
  }

  return v8;
}

uint64_t icu::UCharsTrie::nextForCodePoint(icu::UCharsTrie *this, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 0x10000)
  {
    if ((icu::UCharsTrie::next(this, ((a2 >> 10) - 10304)) & 1) == 0)
    {
      return 0;
    }

    v2 = v2 & 0x3FF | 0xDC00;
  }

  return icu::UCharsTrie::next(this, v2);
}

uint64_t icu::UCharsTrie::branchNext(uint64_t a1, unsigned __int16 *a2, int a3, int a4)
{
  if (!a3)
  {
    v4 = *a2++;
    a3 = v4;
  }

  v5 = a3 + 1;
  if (a3 < 5)
  {
    v6 = a3 + 1;
  }

  else
  {
    do
    {
      v6 = v5 >> 1;
      if (*a2 <= a4)
      {
        v6 = v5 - v6;
        v9 = a2[1];
        v10 = v9 >> 10;
        v11 = v9 == 0xFFFF;
        v12 = a2 + 3;
        if (v11)
        {
          v12 = a2 + 4;
        }

        if (v10 >= 0x3F)
        {
          a2 = v12;
        }

        else
        {
          a2 += 2;
        }
      }

      else
      {
        v7 = a2[1];
        if (v7 >> 10 < 0x3F)
        {
          v8 = a2 + 2;
        }

        else if (v7 == 0xFFFF)
        {
          v7 = a2[3] | (a2[2] << 16);
          v8 = a2 + 4;
        }

        else
        {
          v8 = a2 + 3;
          v7 = (a2[2] | (v7 << 16)) + 0x4000000;
        }

        a2 = &v8[v7];
      }

      v5 = v6;
    }

    while (v6 > 5);
  }

  v13 = v6 + 1;
  while (1)
  {
    v14 = a2 + 1;
    if (*a2 == a4)
    {
      break;
    }

    v15 = a2[1] & 0x7FFF;
    v16 = a2 + 4;
    if (v15 != 0x7FFF)
    {
      v16 = a2 + 3;
    }

    if (v15 >= 0x4000)
    {
      a2 = v16;
    }

    else
    {
      a2 += 2;
    }

    if (--v13 <= 2)
    {
      if (*a2 == a4)
      {
        v17 = a2[1];
        *(a1 + 16) = a2 + 1;
        LODWORD(v18) = (v17 >> 15) ^ 3;
        if (v17 >= 0x40)
        {
          return v18;
        }

        else
        {
          return 1;
        }
      }

      else
      {
        v18 = 0;
        *(a1 + 16) = 0;
      }

      return v18;
    }
  }

  if (*v14 < 0)
  {
    v18 = 2;
  }

  else
  {
    v19 = *v14;
    if (v19 >= 0x4000)
    {
      if (v19 == 0x7FFF)
      {
        v19 = a2[3] | (a2[2] << 16);
        v20 = a2 + 4;
      }

      else
      {
        v20 = a2 + 3;
        v19 = (a2[2] | (v19 << 16)) - 0x40000000;
      }
    }

    else
    {
      v20 = a2 + 2;
    }

    v14 = &v20[v19];
    v21 = *v14;
    if (v21 < 0x40)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v21 >> 15) ^ 3;
    }
  }

  *(a1 + 16) = v14;
  return v18;
}

uint64_t icu::UCharsTrie::nextImpl(uint64_t a1, unsigned __int16 *a2, int a3)
{
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 < 0x30)
  {
    return icu::UCharsTrie::branchNext(a1, v4, v5, a3);
  }

  v7 = v5 & 0x3F;
  while (v5 > 0x3F)
  {
    if (v5 >> 15)
    {
      goto LABEL_17;
    }

    v8 = v4 + 2;
    if (v5 >> 6 <= 0x1FE)
    {
      v8 = v4 + 1;
    }

    if (v5 >> 6 >= 0x101)
    {
      v4 = v8;
    }

    v5 = v7;
    if (v7 < 0x30)
    {
      v5 = v7;
      return icu::UCharsTrie::branchNext(a1, v4, v5, a3);
    }
  }

  v11 = *v4;
  v10 = v4 + 1;
  if (v11 != a3)
  {
LABEL_17:
    v14 = 0;
    *(a1 + 16) = 0;
    return v14;
  }

  *(a1 + 24) = v5 - 49;
  *(a1 + 16) = v10;
  if (v5 != 48)
  {
    return 1;
  }

  v12 = *v10;
  v13 = v12 >= 0x40;
  LODWORD(v14) = (v12 >> 15) ^ 3;
  if (v13)
  {
    return v14;
  }

  else
  {
    return 1;
  }
}

uint64_t icu::UCharsTrie::next(uint64_t a1, _WORD **a2, int a3)
{
  v3 = a3;
  v5 = *a2;
  if ((a3 & 0x80000000) == 0)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_45:
    v20 = *(a1 + 16);
    if (v20)
    {
      if ((*(a1 + 24) & 0x80000000) != 0)
      {
        v21 = *v20;
        if (v21 >= 0x40)
        {
          return (v21 >> 15) ^ 3;
        }
      }

      return 1;
    }

    return 0;
  }

  if (!*v5)
  {
    goto LABEL_45;
  }

LABEL_3:
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  if (a3 < 0)
  {
    goto LABEL_14;
  }

  while (v3)
  {
    v8 = 0;
    if (v7 >= -1)
    {
      v9 = -1;
    }

    else
    {
      v9 = v7;
    }

    v10 = 1 - v3;
    v11 = v7;
    while (1)
    {
      v12 = v5[v8];
      if (v11 < 0)
      {
        break;
      }

      if (v12 != v6[v8])
      {
LABEL_50:
        result = 0;
        *(a1 + 16) = 0;
        return result;
      }

      --v11;
      ++v8;
      if (++v10 == 1)
      {
        v6 += (v3 - 1) + 1;
        v7 -= v3;
        goto LABEL_51;
      }
    }

    v6 = (v6 + v8 * 2);
    v5 = (v5 + v8 * 2 + 2);
    v3 = -v10;
    while (1)
    {
      *(a1 + 24) = v9;
LABEL_25:
      v16 = *v6;
      v14 = v6 + 1;
      v15 = v16;
      v17 = v16 & 0x3F;
      while (1)
      {
        if (v15 <= 0x2F)
        {
          result = icu::UCharsTrie::branchNext(a1, v14, v15, v12);
          if (!result)
          {
            return result;
          }

          if (v3 < 0)
          {
            v12 = *v5;
            if (!*v5)
            {
              return result;
            }
          }

          else
          {
            if (!v3)
            {
              return result;
            }

            v12 = *v5;
            --v3;
          }

          if (result != 2)
          {
            ++v5;
            v6 = *(a1 + 16);
            goto LABEL_25;
          }

          goto LABEL_50;
        }

        if (v15 <= 0x3F)
        {
          break;
        }

        if (v15 >= 0x8000)
        {
          goto LABEL_50;
        }

        v18 = v15 >> 6;
        v15 = v17;
        if (v18 >= 0x101)
        {
          if (v18 <= 0x1FE)
          {
            ++v14;
          }

          else
          {
            v14 += 2;
          }

          v15 = v17;
        }
      }

      if (v12 != *v14)
      {
        goto LABEL_50;
      }

      v6 = v14 + 1;
      v7 = v15 - 49;
      if ((v3 & 0x80000000) == 0)
      {
        break;
      }

LABEL_14:
      v12 = *v5;
      if (!*v5)
      {
        goto LABEL_51;
      }

      if (v7 >= -1)
      {
        v9 = -1;
      }

      else
      {
        v9 = v7;
      }

      ++v5;
      while ((v7 & 0x80000000) == 0)
      {
        if (v12 != *v6)
        {
          goto LABEL_50;
        }

        ++v6;
        --v7;
        v13 = *v5++;
        v12 = v13;
        if (!v13)
        {
          goto LABEL_51;
        }
      }
    }
  }

LABEL_51:
  *(a1 + 24) = v7;
  *(a1 + 16) = v6;
  if ((v7 & 0x80000000) == 0)
  {
    return 1;
  }

  v22 = *v6;
  v23 = v22 >= 0x40;
  v24 = (v22 >> 15) ^ 3;
  if (v23)
  {
    return v24;
  }

  else
  {
    return 1;
  }
}

unsigned __int16 *icu::UCharsTrie::findUniqueValueFromBranch(unsigned __int16 *a1, int a2, uint64_t a3, int *a4)
{
  v6 = a2;
  if (a2 < 6)
  {
LABEL_15:
    v15 = v6 + 1;
    while (1)
    {
      v16 = a1 + 2;
      v17 = a1[1];
      v18 = v17 & 0x7FFF;
      if (v18 >= 0x4000)
      {
        if (v18 == 0x7FFF)
        {
          v19 = a1[2] << 16;
          v16 = a1 + 3;
          v20 = 8;
        }

        else
        {
          v19 = (v18 << 16) - 0x40000000;
          v20 = 6;
        }

        v18 = v19 | *v16;
        a1 = (a1 + v20);
        if ((v17 & 0x8000) == 0)
        {
LABEL_25:
          if (!icu::UCharsTrie::findUniqueValue(&a1[v18], a3, a4))
          {
            return 0;
          }

          goto LABEL_26;
        }
      }

      else
      {
        a1 += 2;
        if ((v17 & 0x8000) == 0)
        {
          goto LABEL_25;
        }
      }

      if (!a3)
      {
        *a4 = v18;
LABEL_26:
        LOBYTE(a3) = 1;
        goto LABEL_27;
      }

      if (v18 != *a4)
      {
        return 0;
      }

LABEL_27:
      if (--v15 <= 2)
      {
        return a1 + 1;
      }
    }
  }

  while (1)
  {
    v8 = a1[1];
    if (v8 >> 10 < 0x3F)
    {
      v9 = a1 + 2;
    }

    else if (v8 == 0xFFFF)
    {
      v8 = a1[3] | (a1[2] << 16);
      v9 = a1 + 4;
    }

    else
    {
      v9 = a1 + 3;
      v8 = (a1[2] | (v8 << 16)) + 0x4000000;
    }

    result = icu::UCharsTrie::findUniqueValueFromBranch(&v9[v8], v6 >> 1, a3, a4);
    if (!result)
    {
      return result;
    }

    v6 -= v6 >> 1;
    v11 = a1[1];
    v12 = v11 >> 10;
    v13 = v11 == 0xFFFF;
    v14 = a1 + 3;
    if (v13)
    {
      v14 = a1 + 4;
    }

    if (v12 >= 0x3F)
    {
      a1 = v14;
    }

    else
    {
      a1 += 2;
    }

    if (v6 <= 5)
    {
      goto LABEL_15;
    }
  }
}

uint64_t icu::UCharsTrie::findUniqueValue(unsigned __int16 *a1, char a2, int *a3)
{
  v6 = *a1;
  v4 = a1 + 1;
  for (i = v6; ; i &= 0x3Fu)
  {
    while (1)
    {
      while (i <= 0x2F)
      {
        if (!i)
        {
          v9 = *v4++;
          i = v9;
        }

        result = icu::UCharsTrie::findUniqueValueFromBranch(v4, i + 1, a2, a3);
        if (!result)
        {
          return result;
        }

        v11 = *result;
        v4 = (result + 2);
        i = v11;
        a2 = 1;
      }

      if (i > 0x3F)
      {
        break;
      }

      v7 = &v4[i - 47];
      v8 = *v7;
      v4 = v7 + 1;
      i = v8;
    }

    v12 = i >> 6;
    if (i >= 0x8000)
    {
      v13 = i & 0x7FFF;
      if (v13 >= 0x4000)
      {
        if (v13 == 0x7FFF)
        {
          v14 = v4 + 1;
          v15 = *v4 << 16;
        }

        else
        {
          v15 = (v13 << 16) - 0x40000000;
          v14 = v4;
        }

        v13 = v15 | *v14;
      }
    }

    else if (v12 > 0x100)
    {
      v13 = v12 > 0x1FE ? v4[1] | (*v4 << 16) : (*v4 | (((i >> 6) & 0x1FF) << 16)) - 16842752;
    }

    else
    {
      v13 = v12 - 1;
    }

    if (a2)
    {
      if (v13 != *a3)
      {
        return 0;
      }
    }

    else
    {
      *a3 = v13;
      a2 = 1;
    }

    if (i >> 15)
    {
      break;
    }

    if (v12 >= 0x101)
    {
      if (v12 > 0x1FE)
      {
        v4 += 2;
      }

      else
      {
        ++v4;
      }
    }
  }

  return 1;
}

uint64_t icu::UCharsTrie::getNextUChars(icu::UCharsTrie *this, icu::Appendable *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  if ((*(this + 6) & 0x80000000) == 0)
  {
    v4 = *v2;
LABEL_4:
    (*(*a2 + 24))(a2, v4);
    return 1;
  }

  v7 = v2 + 1;
  v6 = *v2;
  if (v6 >= 0x40)
  {
    if ((v6 & 0x8000) == 0)
    {
      v8 = v2 + 3;
      v9 = v2 + 2;
      if (v6 >> 6 > 0x1FE)
      {
        v9 = v8;
      }

      if (v6 >> 6 >= 0x101)
      {
        v7 = v9;
      }

      v6 &= 0x3Fu;
      goto LABEL_12;
    }

    return 0;
  }

LABEL_12:
  if (v6 > 0x2F)
  {
    v4 = *v7;
    goto LABEL_4;
  }

  if (!v6)
  {
    v10 = *v7++;
    v6 = v10;
  }

  v5 = v6 + 1;
  (*(*a2 + 48))(a2, v5);
  icu::UCharsTrie::getNextBranchUChars(v7, v5, a2);
  return v5;
}

uint64_t icu::UCharsTrie::getNextBranchUChars(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v4 = a2;
  if (a2 >= 6)
  {
    do
    {
      v6 = a1[1];
      if (v6 >> 10 < 0x3F)
      {
        v7 = a1 + 2;
      }

      else if (v6 == 0xFFFF)
      {
        v6 = a1[3] | (a1[2] << 16);
        v7 = a1 + 4;
      }

      else
      {
        v7 = a1 + 3;
        v6 = (a1[2] | (v6 << 16)) + 0x4000000;
      }

      icu::UCharsTrie::getNextBranchUChars(&v7[v6], v4 >> 1, a3);
      v4 -= v4 >> 1;
      v8 = a1[1];
      v9 = v8 >> 10;
      v10 = v8 == 0xFFFF;
      v11 = a1 + 3;
      if (v10)
      {
        v11 = a1 + 4;
      }

      if (v9 >= 0x3F)
      {
        a1 = v11;
      }

      else
      {
        a1 += 2;
      }
    }

    while (v4 > 5);
  }

  v12 = v4 + 1;
  do
  {
    (*(*a3 + 24))(a3, *a1);
    v13 = a1[1] & 0x7FFF;
    v14 = a1 + 4;
    if (v13 != 0x7FFF)
    {
      v14 = a1 + 3;
    }

    if (v13 >= 0x4000)
    {
      a1 = v14;
    }

    else
    {
      a1 += 2;
    }

    --v12;
  }

  while (v12 > 2);
  v15 = *a1;
  v16 = *(*a3 + 24);

  return v16(a3, v15);
}

unsigned int *sub_195234C14(unsigned int *result, uint64_t a2, unsigned int a3, uint64_t a4, int *a5)
{
  if (*a5 <= 0)
  {
    v20 = v5;
    v21 = v6;
    v10 = result;
    if (*(a2 + 8) < 0)
    {
      v11 = *(a2 + 12);
      if (v11 >= 0x10000)
      {
        *a5 = 8;
        return result;
      }
    }

    else
    {
      v11 = *(a2 + 8) >> 5;
    }

    v12 = *(a4 + 8);
    v13 = v12;
    v14 = v12 >> 5;
    if (v13 < 0)
    {
      v14 = *(a4 + 12);
    }

    *result = v14;
    v19 = v11;
    icu::UnicodeString::doAppend(a4, &v19, 0, 1);
    v10[1] = a3;
    v15 = *(a2 + 8);
    v16 = v15;
    v17 = v15 >> 5;
    if (v16 >= 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = *(a2 + 12);
    }

    return icu::UnicodeString::doAppend(a4, a2, 0, v18);
  }

  return result;
}

uint64_t sub_195234CF0(int *a1, int *a2, icu::UnicodeString *this)
{
  v19 = *MEMORY[0x1E69E9840];
  sub_195234DEC(&v16, this, a1);
  sub_195234DEC(&v12, this, a2);
  if (v13)
  {
    v8 = 1;
    v9 = (v17 & 1) == 0;
  }

  else
  {
    if ((v17 & 0x8000u) == 0)
    {
      v5 = v17 >> 5;
    }

    else
    {
      v5 = v18;
    }

    if ((v13 & 0x8000u) == 0)
    {
      v6 = v13 >> 5;
    }

    else
    {
      v6 = *&v14[2];
    }

    if ((v13 & 2) != 0)
    {
      v7 = v14;
    }

    else
    {
      v7 = v15;
    }

    v9 = icu::UnicodeString::doCompare(&v16, 0, v5, v7, v6 & (v6 >> 31), v6 & ~(v6 >> 31));
  }

  icu::UnicodeString::~UnicodeString(v8, &v12);
  icu::UnicodeString::~UnicodeString(v10, &v16);
  return v9;
}

icu::UnicodeString *sub_195234DEC@<X0>(icu::UnicodeString *__return_ptr a1@<X8>, icu::UnicodeString *this@<X1>, int *a3@<X0>)
{
  v3 = *a3;
  v4 = *(this + 4);
  if ((v4 & 0x8000u) == 0)
  {
    v5 = v4 >> 5;
  }

  else
  {
    v5 = *(this + 3);
  }

  if (v5 <= v3)
  {
    v7 = 0xFFFF;
  }

  else
  {
    if ((v4 & 2) != 0)
    {
      v6 = this + 10;
    }

    else
    {
      v6 = *(this + 3);
    }

    v7 = *&v6[2 * v3];
  }

  return icu::UnicodeString::tempSubString(a1, this, v3 + 1, v7);
}

double icu::UCharsTrieBuilder::UCharsTrieBuilder(icu::UCharsTrieBuilder *this, UErrorCode *a2)
{
  v2 = icu::StringTrieBuilder::StringTrieBuilder(this);
  *v2 = &unk_1F0933DE8;
  v2[2] = &unk_1F0935D00;
  *(v2 + 12) = 2;
  result = 0.0;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  return result;
}

{
  v2 = icu::StringTrieBuilder::StringTrieBuilder(this);
  *v2 = &unk_1F0933DE8;
  v2[2] = &unk_1F0935D00;
  *(v2 + 12) = 2;
  result = 0.0;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  return result;
}

void icu::UCharsTrieBuilder::~UCharsTrieBuilder(icu::UCharsTrieBuilder *this)
{
  *this = &unk_1F0933DE8;
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x19A8B25E0](v2, 0x1000C8000313F17);
  }

  free(*(this + 12));
  icu::UnicodeString::~UnicodeString(v3, (this + 16));

  icu::StringTrieBuilder::~StringTrieBuilder(this);
}

{
  icu::UCharsTrieBuilder::~UCharsTrieBuilder(this);

  JUMPOUT(0x19A8B2600);
}

icu::UCharsTrieBuilder *icu::UCharsTrieBuilder::add(icu::UCharsTrieBuilder *this, const icu::UnicodeString *a2, unsigned int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    if (*(this + 27) > 0)
    {
      v6 = U_NO_WRITE_PERMISSION;
LABEL_4:
      *a4 = v6;
      return this;
    }

    v7 = *(this + 23);
    if (v7 == *(this + 22))
    {
      operator new[]();
    }

    v8 = *(this + 10);
    *(this + 23) = v7 + 1;
    sub_195234C14((v8 + 8 * v7), a2, a3, this + 16, a4);
    if (*a4 <= 0 && (*(this + 12) & 1) != 0)
    {
      v6 = U_MEMORY_ALLOCATION_ERROR;
      goto LABEL_4;
    }
  }

  return this;
}

uint64_t icu::UCharsTrieBuilder::build(icu::StringTrieBuilder *a1, uint64_t a2, UErrorCode *a3)
{
  icu::UCharsTrieBuilder::buildUChars(a1, a2, a3);
  if (*a3 <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::UCharsTrieBuilder::buildUChars(icu::StringTrieBuilder *this, uint64_t a2, UErrorCode *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v4 = *(this + 27);
    if (!*(this + 12) || v4 <= 0)
    {
      if (!v4)
      {
        v10 = *(this + 23);
        if (!v10)
        {
          v20 = U_INDEX_OUTOFBOUNDS_ERROR;
          goto LABEL_42;
        }

        if (*(this + 12))
        {
LABEL_40:
          v20 = U_MEMORY_ALLOCATION_ERROR;
LABEL_42:
          *a3 = v20;
          return;
        }

        uprv_sortArray(*(this + 10), v10, 8, sub_195235468, this + 16, 0, a3);
        if (*a3 > 0)
        {
          return;
        }

        memset(v26, 0, sizeof(v26));
        sub_195234DEC(v26, (this + 16), *(this + 10));
        v11 = *(this + 23);
        if (v11 >= 2)
        {
          v12 = 1;
          v13 = 8;
          do
          {
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            sub_195234DEC(&v22, (this + 16), (*(this + 10) + v13));
            if (BYTE8(v26[0]))
            {
              if (BYTE8(v22))
              {
                goto LABEL_45;
              }
            }

            else
            {
              if ((SWORD4(v26[0]) & 0x8000u) == 0)
              {
                v14 = WORD4(v26[0]) >> 5;
              }

              else
              {
                v14 = HIDWORD(v26[0]);
              }

              if ((SWORD4(v22) & 0x8000u) == 0)
              {
                v15 = WORD4(v22) >> 5;
              }

              else
              {
                v15 = HIDWORD(v22);
              }

              if ((BYTE8(v22) & 1) == 0 && v14 == v15)
              {
                v16 = (BYTE8(v22) & 2) != 0 ? (&v22 + 10) : *(&v23 + 1);
                if (icu::UnicodeString::doEquals(v26, v16, v14))
                {
LABEL_45:
                  *a3 = U_ILLEGAL_ARGUMENT_ERROR;
                  icu::UnicodeString::~UnicodeString(1, &v22);
                  icu::UnicodeString::~UnicodeString(v21, v26);
                  return;
                }
              }
            }

            icu::UnicodeString::fastCopyFrom(v26, &v22);
            icu::UnicodeString::~UnicodeString(v17, &v22);
            ++v12;
            v11 = *(this + 23);
            v13 += 8;
          }

          while (v12 < v11);
        }

        icu::UnicodeString::~UnicodeString(v11, v26);
      }

      *(this + 27) = 0;
      v8 = *(this + 12);
      if ((v8 & 0x8000) != 0)
      {
        v9 = *(this + 7);
      }

      else
      {
        v9 = v8 >> 5;
      }

      if (v9 <= 1024)
      {
        v18 = 1024;
      }

      else
      {
        v18 = v9;
      }

      if (*(this + 26) < v18)
      {
        free(*(this + 12));
        v19 = malloc_type_malloc((2 * v18), 0x1000040BDFB0063uLL);
        *(this + 12) = v19;
        if (!v19)
        {
          *a3 = U_MEMORY_ALLOCATION_ERROR;
          *(this + 26) = 0;
          return;
        }

        *(this + 26) = v18;
      }

      icu::StringTrieBuilder::build(this, a2, *(this + 23), a3);
      if (*(this + 12))
      {
        return;
      }

      goto LABEL_40;
    }
  }
}

icu::UnicodeString *icu::UCharsTrieBuilder::buildUnicodeString(icu::StringTrieBuilder *a1, uint64_t a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  icu::UCharsTrieBuilder::buildUChars(a1, a2, a4);
  if (*a4 <= 0)
  {
    v7 = *(a1 + 27);
    v9 = (*(a1 + 12) + 2 * (*(a1 + 26) - v7));
    icu::UnicodeString::setTo(a3, 0, &v9, v7);
  }

  return a3;
}

uint64_t icu::UCharsTrieBuilder::getElementStringLength(icu::UCharsTrieBuilder *this, int a2)
{
  v2 = *(*(this + 10) + 8 * a2);
  v3 = *(this + 12);
  if ((v3 & 0x8000u) == 0)
  {
    v4 = v3 >> 5;
  }

  else
  {
    v4 = *(this + 7);
  }

  if (v4 <= v2)
  {
    return 0xFFFFLL;
  }

  if ((v3 & 2) != 0)
  {
    v5 = this + 26;
  }

  else
  {
    v5 = *(this + 5);
  }

  return *&v5[2 * v2];
}

uint64_t icu::UCharsTrieBuilder::getElementUnit(icu::UCharsTrieBuilder *this, int a2, int a3)
{
  v3 = a3 + *(*(this + 10) + 8 * a2) + 1;
  v4 = *(this + 12);
  if ((v4 & 0x8000u) == 0)
  {
    v5 = v4 >> 5;
  }

  else
  {
    v5 = *(this + 7);
  }

  if (v5 <= v3)
  {
    return 0xFFFFLL;
  }

  if ((v4 & 2) != 0)
  {
    v6 = this + 26;
  }

  else
  {
    v6 = *(this + 5);
  }

  return *&v6[2 * v3];
}

uint64_t icu::UCharsTrieBuilder::getLimitOfLinearMatch(icu::UCharsTrieBuilder *this, int a2, int a3, uint64_t a4)
{
  v4 = *(this + 10);
  v5 = *(v4 + 8 * a2);
  v6 = *(this + 12);
  if ((v6 & 0x8000u) == 0)
  {
    v7 = v6 >> 5;
  }

  else
  {
    v7 = *(this + 7);
  }

  if (v7 <= v5)
  {
    LODWORD(v9) = 0xFFFF;
  }

  else
  {
    v8 = this + 26;
    if ((v6 & 2) == 0)
    {
      v8 = *(this + 5);
    }

    LODWORD(v9) = *&v8[2 * v5];
  }

  v10 = (v4 + 8 * a3);
  v11 = v9;
  if (v9 <= a4 + 1)
  {
    v9 = (a4 + 1);
  }

  else
  {
    v9 = v9;
  }

  v12 = v5 + a4 + 2;
  for (i = a4 + 1; i < v11; ++i)
  {
    if (v7 <= v12)
    {
      v15 = 0xFFFF;
    }

    else
    {
      v14 = *(this + 5);
      if ((v6 & 2) != 0)
      {
        v14 = this + 26;
      }

      v15 = *&v14[2 * v12];
    }

    v16 = a4 + *v10 + 2;
    if (v7 <= v16)
    {
      v18 = 0xFFFF;
    }

    else
    {
      v17 = *(this + 5);
      if ((v6 & 2) != 0)
      {
        v17 = this + 26;
      }

      v18 = *&v17[2 * v16];
    }

    ++v12;
    a4 = (a4 + 1);
    if (v15 != v18)
    {
      return a4;
    }
  }

  return v9;
}

uint64_t icu::UCharsTrieBuilder::countElementUnits(icu::UCharsTrieBuilder *this, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = *(this + 10);
  v6 = a4 + 1;
  v7 = *(this + 12);
  if ((v7 & 0x8000u) == 0)
  {
    v8 = v7 >> 5;
  }

  else
  {
    v8 = *(this + 7);
  }

  v9 = a3;
LABEL_5:
  v10 = *(v5 + 8 * a2) + v6;
  if (v8 <= v10)
  {
    v12 = 0xFFFF;
  }

  else
  {
    v11 = *(this + 5);
    if ((v7 & 2) != 0)
    {
      v11 = this + 26;
    }

    v12 = *&v11[2 * v10];
  }

  a2 = a2;
  v13 = (v5 + 8 + 8 * a2);
  while (++a2 < v9)
  {
    v14 = *v13 + v6;
    if (v8 <= v14)
    {
      v16 = 0xFFFF;
    }

    else
    {
      v15 = *(this + 5);
      if ((v7 & 2) != 0)
      {
        v15 = this + 26;
      }

      v16 = *&v15[2 * v14];
    }

    v13 += 2;
    if (v12 != v16)
    {
      ++v4;
      goto LABEL_5;
    }
  }

  return (v4 + 1);
}

uint64_t icu::UCharsTrieBuilder::skipElementsBySomeUnits(icu::UCharsTrieBuilder *this, uint64_t a2, int a3, int a4)
{
  v4 = *(this + 10);
  v5 = a3 + 1;
  v6 = *(this + 12);
  if ((v6 & 0x8000u) == 0)
  {
    v7 = v6 >> 5;
  }

  else
  {
    v7 = *(this + 7);
  }

  do
  {
    v8 = *(v4 + 8 * a2) + v5;
    if (v7 <= v8)
    {
      v10 = 0xFFFF;
    }

    else
    {
      v9 = *(this + 5);
      if ((v6 & 2) != 0)
      {
        v9 = this + 26;
      }

      v10 = *&v9[2 * v8];
    }

    v11 = (v4 + 8 + 8 * a2);
    do
    {
      v12 = *v11;
      v11 += 2;
      v13 = v12 + v5;
      if (v7 <= v12 + v5)
      {
        v15 = 0xFFFF;
      }

      else
      {
        v14 = *(this + 5);
        if ((v6 & 2) != 0)
        {
          v14 = this + 26;
        }

        v15 = *&v14[2 * v13];
      }

      a2 = (a2 + 1);
    }

    while (v10 == v15);
    v16 = __OFSUB__(a4--, 1);
  }

  while (!((a4 < 0) ^ v16 | (a4 == 0)));
  return a2;
}

uint64_t icu::UCharsTrieBuilder::indexOfElementWithNextUnit(uint64_t a1, int a2, int a3, int a4)
{
  v4 = a3 + 1;
  v5 = *(a1 + 24);
  v6 = v5 >> 5;
  if ((v5 & 0x8000u) != 0)
  {
    v6 = *(a1 + 28);
  }

  LODWORD(v7) = a2 - 1;
  v8 = (*(a1 + 80) + 8 * a2);
  do
  {
    v9 = *v8;
    v8 += 2;
    v10 = v4 + v9;
    if (v6 <= v4 + v9)
    {
      v12 = 0xFFFF;
    }

    else
    {
      v11 = *(a1 + 40);
      if ((v5 & 2) != 0)
      {
        v11 = a1 + 26;
      }

      v12 = *(v11 + 2 * v10);
    }

    v7 = (v7 + 1);
  }

  while (v12 == a4);
  return v7;
}

uint64_t icu::UCharsTrieBuilder::UCTLinearMatchNode::UCTLinearMatchNode(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 + 37 * a3 + 298634171;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a2;
  *a1 = &unk_1F0933E98;
  *(a1 + 8) = ustr_hashUCharsN(a2, a3) + 37 * v6;
  return a1;
}

BOOL icu::UCharsTrieBuilder::UCTLinearMatchNode::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::StringTrieBuilder::LinearMatchNode::operator==(a1, a2);
  if (result)
  {
    return u_memcmp(*(a1 + 40), *(a2 + 40), *(a1 + 24)) == 0;
  }

  return result;
}

uint64_t icu::UCharsTrieBuilder::UCTLinearMatchNode::write(icu::UCharsTrieBuilder::UCTLinearMatchNode *this, icu::StringTrieBuilder *a2)
{
  (*(**(this + 4) + 40))(*(this + 4));
  icu::UCharsTrieBuilder::write(a2, *(this + 5), *(this + 6));
  v4 = *(this + 16);
  v5 = *(this + 5);
  v6 = (*(*a2 + 96))(a2);
  result = (*(*a2 + 144))(a2, v4, v5, (v6 + *(this + 6) - 1));
  *(this + 3) = result;
  return result;
}

uint64_t icu::UCharsTrieBuilder::write(uint64_t a1, const UChar *a2, int32_t a3)
{
  v6 = *(a1 + 108) + a3;
  if (icu::UCharsTrieBuilder::ensureCapacity(a1, v6))
  {
    *(a1 + 108) = v6;
    u_memcpy((*(a1 + 96) + 2 * (*(a1 + 104) - v6)), a2, a3);
  }

  return *(a1 + 108);
}

uint64_t icu::UCharsTrieBuilder::ensureCapacity(icu::UCharsTrieBuilder *this, int a2)
{
  if (!*(this + 12))
  {
    return 0;
  }

  v3 = *(this + 26);
  if (v3 >= a2)
  {
    return 1;
  }

  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v3 <= a2);
  v5 = malloc_type_malloc(4 * v4, 0x1000040BDFB0063uLL);
  v6 = v5;
  if (v5)
  {
    u_memcpy(&v5[v3 - *(this + 27)], (*(this + 12) + 2 * (*(this + 26) - *(this + 27))), *(this + 27));
    v7 = 1;
  }

  else
  {
    v3 = 0;
    v7 = 0;
  }

  free(*(this + 12));
  *(this + 12) = v6;
  *(this + 26) = v3;
  return v7;
}

uint64_t icu::UCharsTrieBuilder::write(icu::UCharsTrieBuilder *this, __int16 a2)
{
  v4 = *(this + 27);
  v5 = (v4 + 1);
  if (!icu::UCharsTrieBuilder::ensureCapacity(this, v4 + 1))
  {
    return *(this + 27);
  }

  *(this + 27) = v5;
  *(*(this + 12) + 2 * (*(this + 26) - v5)) = a2;
  return v5;
}

uint64_t icu::UCharsTrieBuilder::writeElementUnits(icu::UCharsTrieBuilder *this, int a2, int a3, int32_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  sub_195234DEC(&v11, (this + 16), (*(this + 10) + 8 * a2));
  if ((v12 & 0x11) != 0)
  {
    v7 = 0;
  }

  else if ((v12 & 2) != 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = *&v13[14];
  }

  v8 = icu::UCharsTrieBuilder::write(this, &v7[2 * a3], a4);
  icu::UnicodeString::~UnicodeString(v9, &v11);
  return v8;
}

uint64_t icu::UCharsTrieBuilder::writeValueAndFinal(icu::UCharsTrieBuilder *this, unsigned int a2, __int16 a3)
{
  if (a2 >> 14)
  {
    v11 = v3;
    v12 = v4;
    v10 = 0;
    if (a2 < 0x3FFF0000)
    {
      v8 = HIWORD(a2) | 0x4000;
      v7 = 2;
    }

    else
    {
      v10 = a2;
      v7 = 3;
      v8 = 0x7FFF;
      a2 >>= 16;
    }

    v9[1] = a2;
    v9[0] = v8 | (a3 << 15);
    return icu::UCharsTrieBuilder::write(this, v9, v7);
  }

  else
  {
    v5 = *(*this + 120);

    return v5();
  }
}

uint64_t icu::UCharsTrieBuilder::writeValueAndType(icu::UCharsTrieBuilder *this, int a2, unsigned int a3, __int16 a4)
{
  if (a2)
  {
    v11 = 0;
    if (a3 < 0xFE0000)
    {
      if (a3 > 0xFF)
      {
        v7 = ((a3 >> 10) & 0x3FC0) + 16448;
        LOWORD(v11) = a3;
        v6 = 2;
      }

      else
      {
        LOWORD(v7) = (a3 << 6) + 64;
        v6 = 1;
      }
    }

    else
    {
      HIDWORD(v5) = a3;
      LODWORD(v5) = a3;
      v11 = v5 >> 16;
      v6 = 3;
      LOWORD(v7) = 32704;
    }

    v10 = v7 | a4;
    return icu::UCharsTrieBuilder::write(this, &v10, v6);
  }

  else
  {
    v8 = *(*this + 120);

    return v8();
  }
}

uint64_t icu::UCharsTrieBuilder::writeDeltaTo(icu::UCharsTrieBuilder *this, int a2)
{
  v4 = *(this + 27) - a2;
  if (v4 > 64511)
  {
    v11 = v2;
    v12 = v3;
    v10 = 0;
    if (HIWORD(v4) > 0x3FEu)
    {
      LOWORD(v10) = HIWORD(v4);
      v8 = 2;
      v7 = -1;
    }

    else
    {
      v7 = HIWORD(v4) | 0xFC00;
      v8 = 1;
    }

    v9 = v7;
    *(&v9 + v8) = v4;
    return icu::UCharsTrieBuilder::write(this, &v9, v8 + 1);
  }

  else
  {
    v5 = *(*this + 120);

    return v5();
  }
}

void sub_195235EE4(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::UCharsTrie::Iterator::Iterator(uint64_t a1, uint64_t *a2, int a3, UErrorCode *a4)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v4;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0;
  *(a1 + 40) = &unk_1F0935D00;
  *(a1 + 48) = 2;
  *(a1 + 104) = a3;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  if (*a4 <= 0)
  {
    operator new();
  }

  return a1;
}

icu::UCharsTrie::Iterator *icu::UCharsTrie::Iterator::Iterator(icu::UCharsTrie::Iterator *this, const icu::UCharsTrie *a2, int a3, UErrorCode *a4)
{
  v4 = *(a2 + 2);
  *this = *(a2 + 1);
  *(this + 1) = v4;
  *(this + 2) = v4;
  v5 = *(a2 + 6);
  *(this + 6) = v5;
  *(this + 7) = v5;
  *(this + 32) = 0;
  *(this + 5) = &unk_1F0935D00;
  *(this + 24) = 2;
  *(this + 26) = a3;
  *(this + 27) = 0;
  *(this + 14) = 0;
  if (*a4 <= 0)
  {
    operator new();
  }

  return this;
}

void icu::UCharsTrie::Iterator::~Iterator(icu::UCharsTrie::Iterator *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 14);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeString::~UnicodeString(a2, (this + 40));
}

icu::UCharsTrie::Iterator *icu::UCharsTrie::Iterator::reset(icu::UCharsTrie::Iterator *this)
{
  v2 = *(this + 2);
  *(this + 1) = v2;
  v3 = *(this + 7);
  *(this + 6) = v3;
  *(this + 32) = 0;
  v4 = *(this + 26);
  if (v3 < v4 || v4 < 1)
  {
    v6 = v3 + 1;
  }

  else
  {
    v6 = *(this + 26);
  }

  v7 = *(this + 24);
  if ((v7 & 1) == 0 || v6)
  {
    if ((v7 & 0x8000) != 0)
    {
      v8 = *(this + 13);
    }

    else
    {
      v8 = v7 >> 5;
    }

    if (v8 > v6)
    {
      if (v6 > 1023)
      {
        *(this + 24) = v7 | 0xFFE0;
        *(this + 13) = v6;
      }

      else
      {
        *(this + 24) = *(this + 24) & 0x1F | (32 * v6);
      }
    }
  }

  else
  {
    icu::UnicodeString::unBogus(this + 40);
    v2 = *(this + 1);
    v3 = *(this + 6);
  }

  *(this + 1) = v2 + 2 * v6;
  *(this + 6) = v3 - v6;
  icu::UVector32::setSize(*(this + 14), 0);
  return this;
}

uint64_t icu::UCharsTrie::Iterator::next(icu::UCharsTrie::Iterator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v36 = v3;
  v37 = v4;
  v8 = *(this + 1);
  if (!v8)
  {
    v9 = *(this + 14);
    v10 = *(v9 + 8);
    if (!v10)
    {
      return 0;
    }

    if (v10 <= 0)
    {
      v12 = 0;
      v14 = 0;
      v13 = *this;
      v15 = v10 - 2;
    }

    else
    {
      v11 = *(v9 + 24);
      v12 = *(v11 + 4 * v10 - 4);
      v13 = *this;
      if (v10 == 1)
      {
        v14 = 0;
        v15 = -1;
      }

      else
      {
        v15 = v10 - 2;
        v14 = *(v11 + 4 * (v10 - 2));
      }
    }

    v26 = (v13 + 2 * v14);
    icu::UVector32::setSize(v9, v15);
    v27 = *(this + 24);
    if (v12 || (v27 & 1) == 0)
    {
      if ((v27 & 0x8000) != 0)
      {
        v28 = *(this + 13);
      }

      else
      {
        v28 = v27 >> 5;
      }

      if (v28 > v12)
      {
        if (v12 > 0x3FFu)
        {
          *(this + 24) = v27 | 0xFFE0;
          *(this + 13) = v12;
        }

        else
        {
          *(this + 24) = *(this + 24) & 0x1F | (32 * v12);
        }
      }
    }

    else
    {
      icu::UnicodeString::unBogus(this + 40);
    }

    if (v12 < 0x20000)
    {
      v32 = *v26;
      v8 = (v26 + 1);
      v35 = v32;
      icu::UnicodeString::doAppend(this + 40, &v35, 0, 1);
    }

    else
    {
      v8 = icu::UCharsTrie::Iterator::branchNext(this, v26, HIWORD(v12), a2);
      if (!v8)
      {
        return 1;
      }
    }
  }

  if ((*(this + 6) & 0x80000000) == 0)
  {
LABEL_5:
    *(this + 1) = 0;
    *(this + 27) = -1;
    return 1;
  }

  while (1)
  {
    v17 = (v8 + 1);
    v16 = *v8;
    if (v16 >= 0x40)
    {
      break;
    }

LABEL_18:
    v19 = *(this + 26);
    if (v19 < 1)
    {
      if (v16 < 0x30)
      {
        goto LABEL_26;
      }

      v22 = v16 - 47;
LABEL_34:
      icu::UnicodeString::doAppend(this + 40, v17, 0, v22);
      v8 = &v17[v22];
    }

    else
    {
      v20 = *(this + 24);
      if (*(this + 24) < 0)
      {
        v21 = *(this + 13);
      }

      else
      {
        v21 = v20 >> 5;
      }

      if (v21 == v19)
      {
        goto LABEL_5;
      }

      if (v16 >= 0x30)
      {
        v22 = v16 - 47;
        if ((v20 & 0x8000) != 0)
        {
          v31 = *(this + 13);
          if ((v31 + v22) > v19)
          {
            goto LABEL_53;
          }
        }

        else if (v22 + (v20 >> 5) > v19)
        {
          v31 = v20 >> 5;
LABEL_53:
          icu::UnicodeString::doAppend(this + 40, v17, 0, v19 - v31);
          goto LABEL_5;
        }

        goto LABEL_34;
      }

LABEL_26:
      if (!v16)
      {
        v23 = *v17++;
        v16 = v23;
      }

      v8 = icu::UCharsTrie::Iterator::branchNext(this, v17, v16 + 1, a2);
      if (!v8)
      {
        return 1;
      }
    }
  }

  if (*(this + 32))
  {
    v18 = v8 + 3;
    if (v16 >> 6 <= 0x1FE)
    {
      v18 = v8 + 2;
    }

    if (v16 >> 6 >= 0x101)
    {
      v17 = v18;
    }

    v16 &= 0x3Fu;
    *(this + 32) = 0;
    goto LABEL_18;
  }

  if ((v16 & 0x8000) != 0)
  {
    v29 = v16 & 0x7FFF;
    if (v29 >= 0x4000)
    {
      if (v29 == 0x7FFF)
      {
        v30 = v8[1] << 16;
        v17 = (v8 + 2);
      }

      else
      {
        v30 = (v29 << 16) - 0x40000000;
      }

      v29 = v30 | *v17;
    }

    *(this + 27) = v29;
    goto LABEL_71;
  }

  v24 = v16 >> 6;
  if (v24 > 0x100)
  {
    if (v24 > 0x1FE)
    {
      v25 = v8[2] | (v8[1] << 16);
    }

    else
    {
      v25 = (*v17 | ((v24 & 0x1FF) << 16)) - 16842752;
    }
  }

  else
  {
    v25 = v24 - 1;
  }

  *(this + 27) = v25;
  v33 = *(this + 26);
  if (v33 >= 1)
  {
    v34 = *(this + 24) < 0 ? *(this + 13) : *(this + 24) >> 5;
    if (v34 == v33)
    {
LABEL_71:
      *(this + 1) = 0;
      return 1;
    }
  }

  *(this + 1) = v8;
  result = 1;
  *(this + 32) = 1;
  return result;
}

unsigned __int16 *icu::UCharsTrie::Iterator::branchNext(uint64_t *a1, __int16 *a2, int a3, UErrorCode *a4)
{
  v5 = a3;
  if (a3 >= 6)
  {
    while (1)
    {
      v8 = a2 + 2;
      v9 = a2[1];
      v10 = a2 + 2;
      if (v9 >> 10 >= 0x3F)
      {
        if (v9 == 0xFFFF)
        {
          v10 = a2 + 4;
        }

        else
        {
          v10 = a2 + 3;
        }
      }

      v11 = a1[14];
      v12 = *a1;
      v13 = *(v11 + 8);
      if (v13 < -1 || *(v11 + 12) <= v13)
      {
        if (!icu::UVector32::expandCapacity(a1[14], v13 + 1, a4))
        {
          goto LABEL_11;
        }

        v13 = *(v11 + 8);
      }

      *(*(v11 + 24) + 4 * v13) = (v10 - v12) >> 1;
      ++*(v11 + 8);
LABEL_11:
      v14 = a1[14];
      if (a1[6] < 0)
      {
        v15 = *(a1 + 13);
      }

      else
      {
        v15 = *(a1 + 24) >> 5;
      }

      v16 = *(v14 + 8);
      if (v16 >= -1 && *(v14 + 12) > v16)
      {
        goto LABEL_18;
      }

      if (icu::UVector32::expandCapacity(a1[14], v16 + 1, a4))
      {
        v16 = *(v14 + 8);
LABEL_18:
        *(*(v14 + 24) + 4 * v16) = v15 | ((v5 - (v5 >> 1)) << 16);
        ++*(v14 + 8);
      }

      v17 = a2[1];
      if (v17 >> 10 >= 0x3F)
      {
        if (v17 == 0xFFFF)
        {
          v17 = a2[3] | (a2[2] << 16);
          v8 = a2 + 4;
        }

        else
        {
          v8 = a2 + 3;
          v17 = (a2[2] | (v17 << 16)) + 0x4000000;
        }
      }

      v18 = v5 >> 1;
      a2 = &v8[v17];
      v19 = v5 > 0xB;
      v5 >>= 1;
      if (!v19)
      {
        goto LABEL_26;
      }
    }
  }

  v18 = a3;
LABEL_26:
  v20 = a2 + 2;
  v21 = a2[1];
  v22 = v21 & 0x7FFF;
  if (v22 >= 0x4000)
  {
    if (v22 == 0x7FFF)
    {
      v23 = a2[2] << 16;
      v20 = a2 + 3;
      v24 = 4;
    }

    else
    {
      v23 = (v22 << 16) - 0x40000000;
      v24 = 3;
    }

    v22 = v23 | *v20;
    v20 = &a2[v24];
  }

  v25 = *a2;
  v26 = a1[14];
  v27 = *a1;
  v28 = *(v26 + 8);
  if (v28 < -1 || *(v26 + 12) <= v28)
  {
    if (!icu::UVector32::expandCapacity(a1[14], v28 + 1, a4))
    {
      goto LABEL_36;
    }

    v28 = *(v26 + 8);
  }

  *(*(v26 + 24) + 4 * v28) = (v20 - v27) >> 1;
  ++*(v26 + 8);
LABEL_36:
  v29 = a1[14];
  if (a1[6] < 0)
  {
    v30 = *(a1 + 13);
  }

  else
  {
    v30 = *(a1 + 24) >> 5;
  }

  v31 = *(v29 + 8);
  if (v31 < -1 || *(v29 + 12) <= v31)
  {
    if (!icu::UVector32::expandCapacity(a1[14], v31 + 1, a4))
    {
      goto LABEL_44;
    }

    v31 = *(v29 + 8);
  }

  *(*(v29 + 24) + 4 * v31) = v30 | ((v18 << 16) - 0x10000);
  ++*(v29 + 8);
LABEL_44:
  v33 = v25;
  icu::UnicodeString::doAppend((a1 + 5), &v33, 0, 1);
  if ((v21 & 0x8000) == 0)
  {
    return &v20[v22];
  }

  result = 0;
  a1[1] = 0;
  *(a1 + 27) = v22;
  return result;
}

void *icu::UCharCharacterIterator::UCharCharacterIterator(icu::UCharCharacterIterator *this)
{
  result = icu::CharacterIterator::CharacterIterator(this);
  *result = &unk_1F0933F08;
  result[3] = 0;
  return result;
}

{
  result = icu::CharacterIterator::CharacterIterator(this);
  *result = &unk_1F0933F08;
  result[3] = 0;
  return result;
}

uint64_t icu::UCharCharacterIterator::UCharCharacterIterator(icu::CharacterIterator *this, const UChar **a2, int32_t a3)
{
  if (*a2)
  {
    if (a3 < 0)
    {
      a3 = u_strlen(*a2);
    }
  }

  else
  {
    a3 = 0;
  }

  result = icu::CharacterIterator::CharacterIterator(this, a3);
  *this = &unk_1F0933F08;
  *(this + 3) = *a2;
  return result;
}

uint64_t icu::UCharCharacterIterator::UCharCharacterIterator(icu::CharacterIterator *this, const UChar **a2, int32_t a3, unsigned int a4)
{
  if (*a2)
  {
    if (a3 < 0)
    {
      a3 = u_strlen(*a2);
    }
  }

  else
  {
    a3 = 0;
  }

  result = icu::CharacterIterator::CharacterIterator(this, a3, a4);
  *this = &unk_1F0933F08;
  *(this + 3) = *a2;
  return result;
}

uint64_t icu::UCharCharacterIterator::UCharCharacterIterator(icu::CharacterIterator *this, const UChar **a2, int32_t a3, int a4, int a5, int a6)
{
  if (*a2)
  {
    if (a3 < 0)
    {
      a3 = u_strlen(*a2);
    }
  }

  else
  {
    a3 = 0;
  }

  result = icu::CharacterIterator::CharacterIterator(this, a3, a4, a5, a6);
  *this = &unk_1F0933F08;
  *(this + 3) = *a2;
  return result;
}

void icu::UCharCharacterIterator::UCharCharacterIterator(icu::UCharCharacterIterator *this, const icu::UCharCharacterIterator *a2)
{
  icu::CharacterIterator::CharacterIterator(this, a2);
  *v3 = &unk_1F0933F08;
  v3[3] = *(a2 + 3);
}

{
  icu::CharacterIterator::CharacterIterator(this, a2);
  *v3 = &unk_1F0933F08;
  v3[3] = *(a2 + 3);
}

uint64_t icu::UCharCharacterIterator::operator=(uint64_t a1, uint64_t a2)
{
  icu::CharacterIterator::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void icu::UCharCharacterIterator::~UCharCharacterIterator(icu::UCharCharacterIterator *this)
{
  icu::CharacterIterator::~CharacterIterator(this);

  JUMPOUT(0x19A8B2600);
}

BOOL icu::UCharCharacterIterator::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20);
  }

  return result;
}

uint64_t icu::UCharCharacterIterator::first(icu::UCharCharacterIterator *this)
{
  v1 = *(this + 5);
  v2 = *(this + 4);
  *(this + 3) = v2;
  if (v2 >= v1)
  {
    return 0xFFFFLL;
  }

  else
  {
    return *(*(this + 3) + 2 * v2);
  }
}

uint64_t icu::UCharCharacterIterator::firstPostInc(icu::UCharCharacterIterator *this)
{
  v1 = *(this + 5);
  v2 = *(this + 4);
  *(this + 3) = v2;
  if (v2 >= v1)
  {
    return 0xFFFFLL;
  }

  v3 = *(this + 3);
  *(this + 3) = v2 + 1;
  return *(v3 + 2 * v2);
}

uint64_t icu::UCharCharacterIterator::last(icu::UCharCharacterIterator *this)
{
  v2 = *(this + 4);
  v1 = *(this + 5);
  *(this + 3) = v1;
  if (v1 <= v2)
  {
    return 0xFFFFLL;
  }

  v3 = *(this + 3);
  v4 = v1 - 1;
  *(this + 3) = v4;
  return *(v3 + 2 * v4);
}

uint64_t icu::UCharCharacterIterator::setIndex(icu::UCharCharacterIterator *this, int a2)
{
  v2 = *(this + 4);
  if (v2 <= a2)
  {
    v3 = *(this + 5);
    if (v3 < a2)
    {
      *(this + 3) = v3;
      return 0xFFFFLL;
    }

    *(this + 3) = a2;
  }

  else
  {
    *(this + 3) = v2;
    v3 = *(this + 5);
    a2 = v2;
  }

  if (a2 < v3)
  {
    return *(*(this + 3) + 2 * a2);
  }

  return 0xFFFFLL;
}

uint64_t icu::UCharCharacterIterator::current(icu::UCharCharacterIterator *this)
{
  v1 = *(this + 3);
  if (v1 < *(this + 4) || v1 >= *(this + 5))
  {
    return 0xFFFFLL;
  }

  else
  {
    return *(*(this + 3) + 2 * v1);
  }
}

uint64_t icu::UCharCharacterIterator::next(icu::UCharCharacterIterator *this)
{
  v1 = *(this + 3);
  v2 = v1 + 1;
  if (v1 + 1 >= *(this + 5))
  {
    v3 = 0xFFFFLL;
    LODWORD(v2) = *(this + 5);
  }

  else
  {
    v3 = *(*(this + 3) + 2 * v2);
  }

  *(this + 3) = v2;
  return v3;
}

uint64_t icu::UCharCharacterIterator::nextPostInc(icu::UCharCharacterIterator *this)
{
  v1 = *(this + 3);
  if (v1 >= *(this + 5))
  {
    return 0xFFFFLL;
  }

  v2 = *(this + 3);
  *(this + 3) = v1 + 1;
  return *(v2 + 2 * v1);
}

uint64_t icu::UCharCharacterIterator::previous(icu::UCharCharacterIterator *this)
{
  v1 = *(this + 3);
  if (v1 <= *(this + 4))
  {
    return 0xFFFFLL;
  }

  v2 = *(this + 3);
  v3 = v1 - 1;
  *(this + 3) = v3;
  return *(v2 + 2 * v3);
}

uint64_t icu::UCharCharacterIterator::first32(icu::UCharCharacterIterator *this)
{
  v1 = *(this + 5);
  v2 = *(this + 4);
  *(this + 3) = v2;
  if (v2 >= v1)
  {
    return 0xFFFFLL;
  }

  v3 = *(this + 3);
  v4 = v2 + 1;
  result = *(v3 + 2 * v2);
  if ((result & 0xFC00) == 0xD800 && v4 != v1)
  {
    v7 = *(v3 + 2 * v4);
    if ((v7 & 0xFC00) == 0xDC00)
    {
      return (v7 + (result << 10) - 56613888);
    }
  }

  return result;
}

uint64_t icu::UCharCharacterIterator::first32PostInc(icu::UCharCharacterIterator *this)
{
  v1 = *(this + 5);
  v2 = *(this + 4);
  *(this + 3) = v2;
  if (v2 >= v1)
  {
    return 0xFFFFLL;
  }

  v3 = *(this + 3);
  v4 = v2 + 1;
  *(this + 3) = v2 + 1;
  v5 = *(v3 + 2 * v2);
  if ((v5 & 0xFC00) == 0xD800 && v4 != v1)
  {
    v7 = *(v3 + 2 * v4);
    if ((v7 & 0xFC00) == 0xDC00)
    {
      *(this + 3) = v2 + 2;
      return (v7 + (v5 << 10) - 56613888);
    }
  }

  return v5;
}

uint64_t icu::UCharCharacterIterator::last32(icu::UCharCharacterIterator *this)
{
  v1 = *(this + 4);
  v2 = *(this + 5);
  *(this + 3) = v2;
  if (v2 <= v1)
  {
    return 0xFFFFLL;
  }

  v3 = *(this + 3);
  *(this + 3) = v2 - 1;
  v4 = *(v3 + 2 * (v2 - 1));
  if (v2 - 1 > v1 && (v4 & 0xFC00) == 56320)
  {
    v6 = *(v3 + 2 * v2 - 4);
    if ((v6 & 0xFC00) == 0xD800)
    {
      *(this + 3) = v2 - 2;
      return (v4 + (v6 << 10) - 56613888);
    }
  }

  return v4;
}

uint64_t icu::UCharCharacterIterator::setIndex32(icu::UCharCharacterIterator *this, int a2)
{
  v4 = *(this + 4);
  v3 = *(this + 5);
  if (v3 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = *(this + 5);
  }

  if (v4 <= a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(this + 4);
  }

  if (v6 >= v3)
  {
    *(this + 3) = v6;
    return 0xFFFFLL;
  }

  else
  {
    v7 = *(this + 3);
    v8 = (v7 + 2 * v6);
    result = *v8;
    if (v6 > v4 && (result & 0xFC00) == 56320)
    {
      v6 -= (*(v8 - 1) & 0xFC00) == 55296;
      result = *(v7 + 2 * v6);
    }

    *(this + 3) = v6;
    v11 = v6 + 1;
    if ((result & 0xFC00) == 0xD800 && v11 != v3)
    {
      v13 = *(v7 + 2 * v11);
      if ((v13 & 0xFC00) == 0xDC00)
      {
        return (v13 + (result << 10) - 56613888);
      }
    }
  }

  return result;
}

uint64_t icu::UCharCharacterIterator::current32(icu::UCharCharacterIterator *this)
{
  v1 = *(this + 4);
  v2 = *(this + 3);
  if (v2 < v1)
  {
    return 0xFFFFLL;
  }

  v3 = *(this + 5);
  if (v2 >= v3)
  {
    return 0xFFFFLL;
  }

  v4 = *(this + 3);
  v5 = (v4 + 2 * v2);
  result = *v5;
  if ((result & 0xF800) == 0xD800)
  {
    if ((result & 0x400) != 0)
    {
      if (v2 > v1)
      {
        v10 = *(v5 - 1);
        if ((v10 & 0xFC00) == 0xD800)
        {
          v9 = result + (v10 << 10);
          return (v9 - 56613888);
        }
      }
    }

    else
    {
      v7 = v2 + 1;
      if (v7 != v3)
      {
        v8 = *(v4 + 2 * v7);
        if ((v8 & 0xFC00) == 0xDC00)
        {
          v9 = v8 + (result << 10);
          return (v9 - 56613888);
        }
      }
    }
  }

  return result;
}

uint64_t icu::UCharCharacterIterator::next32(icu::UCharCharacterIterator *this)
{
  v1 = *(this + 3);
  v2 = *(this + 5);
  if (v1 >= v2)
  {
    goto LABEL_15;
  }

  v3 = *(this + 3);
  v4 = v1 + 1;
  *(this + 3) = v1 + 1;
  v5 = (*(v3 + 2 * v1) & 0xFC00) != 0xD800 || v4 == v2;
  if (!v5 && (*(v3 + 2 * v4) & 0xFC00) == 0xDC00)
  {
    v4 = v1 + 2;
    *(this + 3) = v1 + 2;
  }

  if (v4 >= v2)
  {
LABEL_15:
    *(this + 3) = v2;
    return 0xFFFFLL;
  }

  else
  {
    v6 = v4 + 1;
    result = *(v3 + 2 * v4);
    if ((result & 0xFC00) == 0xD800 && v6 != v2)
    {
      v9 = *(v3 + 2 * v6);
      if ((v9 & 0xFC00) == 0xDC00)
      {
        return (v9 + (result << 10) - 56613888);
      }
    }
  }

  return result;
}

uint64_t icu::UCharCharacterIterator::next32PostInc(icu::UCharCharacterIterator *this)
{
  v1 = *(this + 3);
  v2 = *(this + 5);
  if (v1 >= v2)
  {
    return 0xFFFFLL;
  }

  v4 = *(this + 3);
  v5 = v1 + 1;
  *(this + 3) = v1 + 1;
  result = *(v4 + 2 * v1);
  if ((result & 0xFC00) == 0xD800 && v5 != v2)
  {
    v8 = *(v4 + 2 * v5);
    if ((v8 & 0xFC00) == 0xDC00)
    {
      *(this + 3) = v1 + 2;
      return (v8 + (result << 10) - 56613888);
    }
  }

  return result;
}

uint64_t icu::UCharCharacterIterator::previous32(icu::UCharCharacterIterator *this)
{
  v1 = *(this + 4);
  v2 = *(this + 3);
  if (v2 <= v1)
  {
    return 0xFFFFLL;
  }

  v4 = *(this + 3);
  *(this + 3) = v2 - 1;
  result = *(v4 + 2 * (v2 - 1));
  if (v2 - 1 > v1 && (result & 0xFC00) == 56320)
  {
    v7 = *(v4 + 2 * v2 - 4);
    if ((v7 & 0xFC00) == 0xD800)
    {
      *(this + 3) = v2 - 2;
      return (result + (v7 << 10) - 56613888);
    }
  }

  return result;
}

uint64_t icu::UCharCharacterIterator::move(_DWORD *a1, int a2, int a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v3 = a1[3];
    }

    else
    {
      if (a3 != 2)
      {
        v4 = a1[3];
        goto LABEL_9;
      }

      v3 = a1[5];
    }
  }

  else
  {
    v3 = a1[4];
  }

  v4 = (v3 + a2);
  a1[3] = v4;
LABEL_9:
  v5 = a1[4];
  if (v4 < v5 || (v5 = a1[5], v4 > v5))
  {
    a1[3] = v5;
    return v5;
  }

  return v4;
}

uint64_t icu::UCharCharacterIterator::move32(uint64_t a1, int a2, int a3)
{
  switch(a3)
  {
    case 2:
      v17 = *(a1 + 20);
      *(a1 + 12) = v17;
      if (a2 < 0)
      {
        v18 = *(a1 + 16);
        v19 = 1 - a2;
        do
        {
          if (v17 <= v18)
          {
            break;
          }

          v20 = *(a1 + 24);
          v21 = v17 - 1;
          *(a1 + 12) = v21;
          if (v21 > v18 && (*(v20 + 2 * v21) & 0xFC00) == 0xDC00 && (*(v20 + 2 * v17 - 4) & 0xFC00) == 0xD800)
          {
            LODWORD(v21) = v17 - 2;
            *(a1 + 12) = v17 - 2;
          }

          --v19;
          v17 = v21;
        }

        while (v19 > 1);
      }

      break;
    case 1:
      if (a2 < 1)
      {
        if (a2 < 0)
        {
          v23 = *(a1 + 12);
          v22 = *(a1 + 16);
          v24 = 1 - a2;
          do
          {
            if (v23 <= v22)
            {
              break;
            }

            v25 = *(a1 + 24);
            v26 = v23 - 1;
            *(a1 + 12) = v26;
            if (v26 > v22 && (*(v25 + 2 * v26) & 0xFC00) == 0xDC00 && (*(v25 + 2 * v23 - 4) & 0xFC00) == 0xD800)
            {
              LODWORD(v26) = v23 - 2;
              *(a1 + 12) = v23 - 2;
            }

            --v24;
            v23 = v26;
          }

          while (v24 > 1);
        }
      }

      else
      {
        v10 = *(a1 + 20);
        v11 = *(a1 + 12);
        v12 = a2 + 1;
        do
        {
          if (v11 >= v10)
          {
            if ((v10 & 0x80000000) == 0)
            {
              return *(a1 + 12);
            }

            v13 = *(a1 + 24);
            v14 = *(v13 + 2 * v11);
            if (!v14)
            {
              return *(a1 + 12);
            }
          }

          else
          {
            v13 = *(a1 + 24);
            v14 = *(v13 + 2 * v11);
          }

          v15 = v11 + 1;
          *(a1 + 12) = v15;
          v16 = (v14 & 0xFC00) != 0xD800 || v15 == v10;
          if (!v16 && (*(v13 + 2 * v15) & 0xFC00) == 0xDC00)
          {
            LODWORD(v15) = v11 + 2;
            *(a1 + 12) = v11 + 2;
          }

          --v12;
          v11 = v15;
        }

        while (v12 > 1);
      }

      break;
    case 0:
      v3 = *(a1 + 16);
      *(a1 + 12) = v3;
      if (a2 >= 1)
      {
        v4 = *(a1 + 20);
        v5 = a2 + 1;
        do
        {
          if (v3 >= v4)
          {
            if ((v4 & 0x80000000) == 0)
            {
              return *(a1 + 12);
            }

            v6 = *(a1 + 24);
            v7 = *(v6 + 2 * v3);
            if (!v7)
            {
              return *(a1 + 12);
            }
          }

          else
          {
            v6 = *(a1 + 24);
            v7 = *(v6 + 2 * v3);
          }

          v8 = v3 + 1;
          *(a1 + 12) = v8;
          v9 = (v7 & 0xFC00) != 0xD800 || v8 == v4;
          if (!v9 && (*(v6 + 2 * v8) & 0xFC00) == 0xDC00)
          {
            LODWORD(v8) = v3 + 2;
            *(a1 + 12) = v3 + 2;
          }

          --v5;
          v3 = v8;
        }

        while (v5 > 1);
      }

      break;
  }

  return *(a1 + 12);
}

uint64_t icu::UCharCharacterIterator::setText(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *a2;
  *(result + 24) = *a2;
  if (v3)
  {
    v4 = a3 & ~(a3 >> 31);
  }

  else
  {
    v4 = 0;
  }

  *(result + 16) = 0;
  *(result + 20) = v4;
  *(result + 8) = v4;
  *(result + 12) = 0;
  return result;
}

void *icu::UCharCharacterIterator::getText(icu::UCharCharacterIterator *this, icu::UnicodeString *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  icu::UnicodeString::UnicodeString(v5, *(this + 3), *(this + 2));
  icu::UnicodeString::operator=(a2, v5);
  return icu::UnicodeString::~UnicodeString(v3, v5);
}

uint64_t u_cleanup()
{
  umtx_lock(0);
  umtx_unlock(0);
  sub_1952375FC();
  sub_1951D2A54();

  return sub_1952A6378();
}

uint64_t sub_1952375FC()
{
  for (i = 0; i != 8; ++i)
  {
    v1 = qword_1ED4427F0[i];
    if (v1)
    {
      v1();
      qword_1ED4427F0[i] = 0;
    }
  }

  for (j = 0; j != 30; ++j)
  {
    v3 = qword_1ED442830[j];
    if (v3)
    {
      v3();
      qword_1ED442830[j] = 0;
    }
  }

  return 1;
}

uint64_t ucln_cleanupOne(uint64_t result)
{
  v1 = qword_1ED4427F0[result];
  if (v1)
  {
    v2 = result;
    result = v1();
    qword_1ED4427F0[v2] = 0;
  }

  return result;
}

void sub_1952376A4(uint64_t result, uint64_t a2)
{
  if (result == 29)
  {
    qword_1ED442918 = a2;
  }

  else if (result <= 0x1D)
  {
    v3 = result;
    umtx_lock(0);
    qword_1ED442830[v3] = a2;

    umtx_unlock(0);
  }
}

uint64_t ucln_registerCleanup(uint64_t result, uint64_t a2)
{
  if (result <= 7)
  {
    qword_1ED4427F0[result] = a2;
  }

  return result;
}

uint64_t sub_19523772C(_BYTE *a1)
{
  if (a1)
  {
    v1 = bswap32(*a1) >> 16;
    if (a1[8])
    {
      return v1;
    }

    else
    {
      return *a1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_195237758(_BYTE *a1)
{
  if (a1)
  {
    v1 = bswap32(*a1) >> 16;
    if (a1[4])
    {
      return v1;
    }

    else
    {
      return *a1;
    }
  }

  else
  {
    return 0;
  }
}

void sub_195237784(_OWORD *result, int *a2)
{
  if (*a2 <= 0)
  {
    if (!result)
    {
      goto LABEL_8;
    }

    v2 = *(result + 1);
    if (!v2 || v2[2] != 218 || v2[3] != 39 || v2[8] || v2[9])
    {
      goto LABEL_8;
    }

    v3 = v2[12];
    if (v3 == 84)
    {
      if (v2[13] == 111 && v2[14] == 67 && v2[15] == 80 && v2[16] == 1)
      {
        v4 = off_1F0934008;
        goto LABEL_21;
      }
    }

    else if (v3 == 67 && v2[13] == 109 && v2[14] == 110 && v2[15] == 68 && v2[16] == 1)
    {
      v4 = off_1F0933FF8;
LABEL_21:
      *result = v4;
      *(result + 2) = &v2[*v2];
      return;
    }

LABEL_8:
    *a2 = 3;
    udata_close(result);
  }
}

char *sub_195237870(uint64_t a1, unsigned __int8 *a2, int *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return *(a1 + 8);
  }

  v5 = v3 + 1;
  v4 = *v3;
  if (!*v3)
  {
    return 0;
  }

  v6 = v3 + v3[1];
  v7 = -1;
  v8 = a2;
  do
  {
    v10 = *v8++;
    v9 = v10;
    v12 = *v6++;
    v11 = v12;
    ++v7;
    if (v9)
    {
      v13 = v9 == v11;
    }

    else
    {
      v13 = 0;
    }
  }

  while (v13);
  if (v9 != v11)
  {
    v14 = v4 - 1;
    v16 = v3 + v5[2 * v4 - 2];
    v17 = -1;
    v18 = a2;
    do
    {
      v20 = *v18++;
      v19 = v20;
      v22 = *v16++;
      v21 = v22;
      ++v17;
      if (v19)
      {
        v23 = v19 == v21;
      }

      else
      {
        v23 = 0;
      }
    }

    while (v23);
    if (v19 == v21)
    {
      if (v4 >= 1)
      {
        goto LABEL_18;
      }
    }

    else if (v4 >= 3)
    {
      v26 = 1;
      v27 = v4 - 1;
      do
      {
        v14 = (v27 + v26) >> 1;
        if (v7 >= v17)
        {
          v28 = v17;
        }

        else
        {
          v28 = v7;
        }

        v29 = &a2[v28];
        v30 = v3 + v5[2 * ((v27 + v26) >> 1)] + v28;
        v31 = v28 - 1;
        do
        {
          v33 = *v29++;
          v32 = v33;
          v35 = *v30++;
          v34 = v35;
          ++v31;
          if (v32)
          {
            v36 = v32 == v34;
          }

          else
          {
            v36 = 0;
          }
        }

        while (v36);
        if (v32 >= v34)
        {
          if (v32 == v34)
          {
            goto LABEL_18;
          }

          v26 = v14 + 1;
          v7 = v31;
        }

        else
        {
          v17 = v31;
          v27 = (v27 + v26) >> 1;
        }
      }

      while (v26 < v27);
    }

    return 0;
  }

  v14 = 0;
LABEL_18:
  v24 = &v5[2 * v14];
  if ((v14 + 1) >= v4)
  {
    v25 = -1;
  }

  else
  {
    v25 = v24[3] - v24[1];
  }

  *a3 = v25;
  return v3 + v24[1];
}

uint64_t sub_1952379B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1952379D0(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return *(a1 + 8);
  }

  v6 = *v3;
  v4 = (v3 + 2);
  v5 = v6;
  if (v6)
  {
    v7 = *v4;
    v8 = -1;
    v9 = a2;
    do
    {
      v11 = *v9++;
      v10 = v11;
      v13 = *v7++;
      v12 = v13;
      ++v8;
      if (v10)
      {
        v14 = v10 == v12;
      }

      else
      {
        v14 = 0;
      }
    }

    while (v14);
    if (v10 == v12)
    {
      v15 = 0;
LABEL_18:
      *a3 = -1;
      return sub_19525ED8C(v4[2 * v15 + 1]);
    }

    v15 = v5 - 1;
    v17 = v4[2 * v5 - 2];
    v18 = -1;
    v19 = a2;
    do
    {
      v21 = *v19++;
      v20 = v21;
      v23 = *v17++;
      v22 = v23;
      ++v18;
      if (v20)
      {
        v24 = v20 == v22;
      }

      else
      {
        v24 = 0;
      }
    }

    while (v24);
    if (v20 == v22)
    {
      if (v5 >= 1)
      {
        goto LABEL_18;
      }
    }

    else if (v5 >= 3)
    {
      v25 = 1;
      v26 = v15;
      do
      {
        v15 = (v26 + v25) >> 1;
        if (v8 >= v18)
        {
          v27 = v18;
        }

        else
        {
          v27 = v8;
        }

        v28 = &a2[v27];
        v29 = &v4[2 * ((v26 + v25) >> 1)][v27];
        v30 = v27 - 1;
        do
        {
          v32 = *v28++;
          v31 = v32;
          v34 = *v29++;
          v33 = v34;
          ++v30;
          if (v31)
          {
            v35 = v31 == v33;
          }

          else
          {
            v35 = 0;
          }
        }

        while (v35);
        if (v31 >= v33)
        {
          if (v31 == v33)
          {
            goto LABEL_18;
          }

          v25 = v15 + 1;
          v8 = v30;
        }

        else
        {
          v18 = v30;
          v26 = (v26 + v25) >> 1;
        }
      }

      while (v25 < v26);
    }
  }

  return 0;
}

uint64_t sub_195237AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

_OWORD *ucnv_open(char *a1, UErrorCode *a2)
{
  if (a2 && *a2 <= 0)
  {
    return ucnv_createConverter(0, a1, a2);
  }

  else
  {
    return 0;
  }
}

_OWORD *ucnv_openU(UChar *s, UErrorCode *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a2 || *a2 > 0)
  {
    return 0;
  }

  if (s)
  {
    if (u_strlen(s) >= 60)
    {
      result = 0;
      *a2 = U_ILLEGAL_ARGUMENT_ERROR;
      return result;
    }

    memset(v6, 0, 60);
    v5 = u_austrcpy(v6, s);
    if (*a2 <= 0)
    {
      return ucnv_createConverter(0, v5, a2);
    }

    return 0;
  }

  return ucnv_createConverter(0, 0, a2);
}

_OWORD *ucnv_openCCSID(unsigned int a1, int a2, UErrorCode *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a3 || *a3 > 0)
  {
    return 0;
  }

  memset(v7, 0, 60);
  if (a2)
  {
    v6 = v7;
  }

  else
  {
    v6 = v7 + 4;
    strcpy(v7, "ibm-");
  }

  T_CString_integerToString(v6, a1, 0xAu);
  return ucnv_createConverter(0, v7, a3);
}

uint64_t ucnv_safeClone(void (**a1)(void, void, void, void, void, void, void), uint64_t a2, int *a3, int *a4)
{
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  LOWORD(v31[0]) = 56;
  BYTE2(v31[0]) = 1;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  LOWORD(v29[0]) = 56;
  BYTE2(v29[0]) = 1;
  if (!a4 || *a4 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    v5 = 0;
    v12 = 1;
LABEL_12:
    *a4 = v12;
    return v5;
  }

  v8 = a3;
  v10 = *(*(a1[6] + 4) + 112);
  if (v10)
  {
    v34 = 0;
    v10(a1, 0, &v34, a4);
    if (*a4 >= 1)
    {
      return 0;
    }

    if (v8)
    {
      goto LABEL_9;
    }

LABEL_14:
    v11 = 1;
    v35 = 1;
    v8 = &v35;
    goto LABEL_15;
  }

  v34 = 288;
  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_9:
  v11 = *v8;
  v35 = v11;
  if (v11 <= 0)
  {
    v5 = 0;
    *v8 = v34;
    return v5;
  }

LABEL_15:
  if (a2)
  {
    v13 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = v34;
    v15 = v13 - a2 + v34;
    v16 = v15 <= v11;
    if (v15 > v11)
    {
      v17 = 1;
    }

    else
    {
      v17 = v11 - (v13 - a2);
    }

    if (v16)
    {
      v18 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v18 = a2;
    }

    v35 = v17;
    if (v17 >= v34 && v18)
    {
      v19 = 0;
      v5 = v18;
      goto LABEL_30;
    }
  }

  else
  {
    v18 = 0;
    v14 = v34;
  }

  v20 = malloc_type_malloc(v14, 0x10F0040CC9E9754uLL);
  v5 = v20;
  if (!v20)
  {
    v12 = 7;
    goto LABEL_12;
  }

  if (v8 != &v35)
  {
    *a4 = -126;
  }

  v14 = v34;
  *v8 = v34;
  v19 = v20;
LABEL_30:
  bzero(v5, v14);
  memcpy(v5, a1, 0x120uLL);
  *(v5 + 61) = 0;
  if (a1[5] == (a1 + 17))
  {
    *(v5 + 40) = v5 + 136;
  }

  else
  {
    v21 = malloc_type_malloc(0x40uLL, 0x100004077774924uLL);
    *(v5 + 40) = v21;
    if (!v21)
    {
LABEL_40:
      free(v19);
      return 0;
    }

    v22 = a1[5];
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[3];
    v21[2] = v22[2];
    v21[3] = v25;
    *v21 = v23;
    v21[1] = v24;
  }

  v26 = *(*(a1[6] + 4) + 112);
  if (v26 && (v5 = v26(a1, v5, v8, a4)) == 0 || *a4 >= 1)
  {
    if (v19)
    {
      v27 = v19[5];
      if (v27 != v19 + 17)
      {
        free(v27);
      }
    }

    goto LABEL_40;
  }

  v28 = a1[6];
  if (v28[25])
  {
    sub_19523E73C(v28);
  }

  if (v5 == v18)
  {
    *(v5 + 61) = 1;
  }

  *(&v29[0] + 1) = v5;
  *(&v31[0] + 1) = v5;
  v33 = 0;
  (a1[1])(a1[4], v31, 0, 0, 5, &v33);
  v33 = 0;
  (*a1)(a1[3], v29, 0, 0, 0, 5, &v33);
  return v5;
}

void ucnv_close(void *a1)
{
  v12 = 0;
  if (a1)
  {
    v2 = a1[1];
    if (v2 != UCNV_TO_U_CALLBACK_SUBSTITUTE)
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      v7 = 65592;
      v8 = a1;
      v12 = 0;
      v2(a1[4], &v7, 0, 0, 4, &v12);
    }

    v3 = *a1;
    if (*a1 != UCNV_FROM_U_CALLBACK_SUBSTITUTE)
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      v7 = 65592;
      v8 = a1;
      v12 = 0;
      v3(a1[3], &v7, 0, 0, 0, 4, &v12);
    }

    v4 = *(*(a1[6] + 32) + 32);
    if (v4)
    {
      v4(a1);
    }

    v5 = a1[5];
    if (v5 != a1 + 17)
    {
      free(v5);
    }

    v6 = a1[6];
    if (*(v6 + 25))
    {
      sub_19523E6D8(v6);
    }

    if (!*(a1 + 61))
    {
      free(a1);
    }
  }
}

uint64_t ucnv_getAvailableName(unsigned int a1)
{
  if (HIWORD(a1))
  {
    return 0;
  }

  v2 = 0;
  result = sub_19523F2F0(a1, &v2);
  if (v2 >= 1)
  {
    return 0;
  }

  return result;
}

const void **ucnv_getSubstChars(const void **result, void *__dst, _BYTE *a3, int *a4)
{
  if (*a4 <= 0)
  {
    v5 = result;
    v6 = *(result + 89);
    if (v6 <= 0)
    {
      *a3 = 0;
    }

    else if (*a3 >= v6)
    {
      result = memcpy(__dst, result[5], v6);
      *a3 = *(v5 + 89);
    }

    else
    {
      *a4 = 8;
    }
  }

  return result;
}

void **ucnv_setSubstChars(void **result, const void *a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    v4 = a3;
    v5 = result;
    v6 = *(result[6] + 2);
    if (*(v6 + 71) >= a3 && *(v6 + 70) <= a3)
    {
      result = memcpy(result[5], a2, a3);
      *(v5 + 89) = v4;
      *(v5 + 94) = 0;
    }

    else
    {
      *a4 = 1;
    }
  }

  return result;
}

void ucnv_setSubstString(uint64_t a1, const UChar *a2, uint64_t a3, int *a4)
{
  v5 = a3;
  v17 = *MEMORY[0x1E69E9840];
  bzero(v16, 0x400uLL);
  memset(__src, 0, sizeof(__src));
  v14 = 1024;
  v8 = ucnv_safeClone(a1, v16, &v14, a4);
  v9 = v8;
  if (*a4 <= 0)
  {
    *v8 = UCNV_FROM_U_CALLBACK_STOP;
    v8[3] = 0;
  }

  v10 = ucnv_fromUChars(v8, __src, 32, a2, v5, a4);
  ucnv_close(v9);
  if (*a4 <= 0)
  {
    v11 = *(a1 + 48);
    if (*(*(v11 + 32) + 104) && (*(*(v11 + 16) + 69) != 2 || sub_195251E20(a1) == 9))
    {
      if (v5 >= 33)
      {
        v12 = 15;
LABEL_9:
        *a4 = v12;
        return;
      }

      if (v5 < 0)
      {
        v5 = u_strlen(a2);
      }

      v10 = 2 * v5;
    }

    else
    {
      a2 = __src;
    }

    if (v10 < 5)
    {
      if (!v10)
      {
LABEL_21:
        *(a1 + 89) = v10;
        *(a1 + 94) = 0;
        return;
      }
    }

    else if (*(a1 + 40) == a1 + 136)
    {
      v13 = malloc_type_malloc(0x40uLL, 0x100004077774924uLL);
      *(a1 + 40) = v13;
      if (!v13)
      {
        *(a1 + 40) = a1 + 136;
        v12 = 7;
        goto LABEL_9;
      }

      v13[2] = 0u;
      v13[3] = 0u;
      *v13 = 0u;
      v13[1] = 0u;
    }

    memcpy(*(a1 + 40), a2, v10);
    if (a2 != __src)
    {
      v10 = -v5;
    }

    goto LABEL_21;
  }
}

void *ucnv_setFromUCallBack(void *result, uint64_t a2, uint64_t a3, void *a4, void *a5, int *a6)
{
  if (*a6 <= 0)
  {
    if (a4)
    {
      *a4 = *result;
    }

    *result = a2;
    if (a5)
    {
      *a5 = result[3];
    }

    result[3] = a3;
  }

  return result;
}

uint64_t ucnv_fromUChars(uint64_t a1, _BYTE *a2, uint64_t a3, const UChar *a4, int32_t a5, int *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a2;
  if (!a6 || *a6 > 0)
  {
    return 0;
  }

  if (!a1 || (v9 = a3, (a3 & 0x80000000) != 0) || (a3 ? (v11 = a2 == 0) : (v11 = 0), v11 || (v12 = a5, a5 < -1) || !a4 && a5))
  {
    result = 0;
    *a6 = 1;
  }

  else
  {
    sub_195238684(a1, 2, 1);
    if (v12 == -1)
    {
      v12 = u_strlen(a4);
    }

    if (v12 < 1)
    {
      v17 = 0;
    }

    else
    {
      v14 = &a4[v12];
      v15 = a2 + 0x7FFFFFFF;
      if (a2 > 0xFFFFFFFF80000000)
      {
        v15 = -1;
      }

      v16 = v15 - a2;
      if (v16 >= v9)
      {
        v16 = v9;
      }

      if (v9)
      {
        v9 = v16;
      }

      else
      {
        v9 = 0;
      }

      ucnv_fromUnicode(a1, &v19, &a2[v9], &v18, v14, 0, 1, a6);
      v17 = (v19 - a2);
      if (*a6 == 15)
      {
        bzero(v20, 0x400uLL);
        do
        {
          v19 = v20;
          *a6 = 0;
          ucnv_fromUnicode(a1, &v19, &v21, &v18, v14, 0, 1, a6);
          v17 = v17 + v19 - v20;
        }

        while (*a6 == 15);
      }
    }

    return u_terminateChars(a2, v9, v17, a6);
  }

  return result;
}

uint64_t sub_195238684(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    v4 = result;
    if (a3)
    {
      if (a2 > 1)
      {
        goto LABEL_7;
      }

      v5 = *(result + 8);
      if (v5 != UCNV_TO_U_CALLBACK_SUBSTITUTE)
      {
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        v9 = 65592;
        v10 = result;
        v14 = 0;
        result = v5(*(result + 32), &v9, 0, 0, 3, &v14);
      }

      if (a2 != 1)
      {
LABEL_7:
        v6 = *v4;
        if (*v4 != UCNV_FROM_U_CALLBACK_SUBSTITUTE)
        {
          v13 = 0;
          v11 = 0u;
          v12 = 0u;
          v9 = 65592;
          v10 = v4;
          v14 = 0;
          result = v6(*(v4 + 24), &v9, 0, 0, 0, 3, &v14);
        }
      }
    }

    v7 = *(v4 + 48);
    if (a2 > 1 || (*(v4 + 72) = *(v7 + 40), *(v4 + 64) = 0, *(v4 + 93) = 0, *(v4 + 90) = 0, *(v4 + 282) = 0, a2 != 1))
    {
      *(v4 + 80) = 0;
      *(v4 + 91) = 0;
      *(v4 + 208) = -1;
      *(v4 + 281) = 0;
    }

    v8 = *(*(v7 + 32) + 40);
    if (v8)
    {
      return v8(v4, a2);
    }
  }

  return result;
}

uint64_t ucnv_getName(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = *(*(v4 + 32) + 96);
  if (v5)
  {
    result = v5(a1);
    if (result)
    {
      return result;
    }

    v4 = *(a1 + 48);
  }

  return *(v4 + 16) + 4;
}

uint64_t ucnv_getCCSID(uint64_t a1, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 48);
  v5 = *(v4 + 16);
  result = *(v5 + 64);
  if (!result)
  {
    v7 = *(*(v4 + 32) + 96);
    if (v7)
    {
      v8 = v7(a1);
      if (v8)
      {
LABEL_9:
        StandardName = ucnv_getStandardName(v8, "IBM", a2);
        result = 0;
        if (*a2 <= 0 && StandardName)
        {
          result = strchr(StandardName, 45);
          if (result)
          {
            return atol((result + 1));
          }
        }

        return result;
      }

      v5 = *(*(a1 + 48) + 16);
    }

    v8 = (v5 + 4);
    goto LABEL_9;
  }

  return result;
}

uint64_t ucnv_getPlatform(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return *(*(*(a1 + 48) + 16) + 68);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ucnv_getToUCallBack(uint64_t result, void *a2, void *a3)
{
  *a2 = *(result + 8);
  *a3 = *(result + 32);
  return result;
}

void *ucnv_getFromUCallBack(void *result, void *a2, void *a3)
{
  *a2 = *result;
  *a3 = result[3];
  return result;
}

uint64_t ucnv_setToUCallBack(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, int *a6)
{
  if (*a6 <= 0)
  {
    if (a4)
    {
      *a4 = *(result + 8);
    }

    *(result + 8) = a2;
    if (a5)
    {
      *a5 = *(result + 32);
    }

    *(result + 32) = a3;
  }

  return result;
}

uint64_t ucnv_fromUnicode(uint64_t result, unint64_t *a2, _BYTE *a3, unint64_t *a4, unint64_t a5, _DWORD *a6, int a7, int *a8)
{
  v31 = a6;
  if (a8 && *a8 <= 0)
  {
    v9 = result;
    if (!result || !a2 || !a4)
    {
      goto LABEL_30;
    }

    v13 = *a4;
    v14 = *a2;
    v15 = a5 + 0x7FFFFFFF;
    if (a5 >= 0xFFFFFFFF80000001)
    {
      v15 = -1;
    }

    v16 = a5 - (v15 == a5);
    v17 = v16 < v13 || v14 > a3;
    if (!v17 && ((v18 = v16 - v13, v16 > v13) ? (v19 = v18 > 0x7FFFFFFE) : (v19 = 0), !v19 && ((a3 - v14) >> 31 ? (v20 = a3 > v14) : (v20 = 0), v20 ? (v21 = 0) : (v21 = 1), (v18 & 1) == 0 && (v21 & 1) != 0)))
    {
      v25[0] = 0;
      if (*(result + 91) < 1 || (result = sub_195238B00(result, a2, a3, &v31, a8), !result))
      {
        if (a7 || v13 != v16 || *(v9 + 281) < 0)
        {
          BYTE2(v25[0]) = a7;
          v25[1] = v9;
          v26 = v13;
          v23 = *a2;
          v27 = v16;
          v28 = v23;
          v29 = a3;
          v30 = v31;
          LOWORD(v25[0]) = 56;
          result = sub_195238BB4(v25, a8);
          v24 = v28;
          *a4 = v26;
          *a2 = v24;
        }
      }
    }

    else
    {
LABEL_30:
      *a8 = 1;
    }
  }

  return result;
}

uint64_t sub_195238B00(uint64_t a1, void *a2, _BYTE *a3, _DWORD **a4, _DWORD *a5)
{
  v5 = *a2;
  if (a4)
  {
    v6 = *a4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 91);
  if (v7 < 1)
  {
LABEL_10:
    *(a1 + 91) = 0;
    *a2 = v5;
    result = 0;
    if (v6)
    {
      *a4 = v6;
    }
  }

  else
  {
    v8 = -1;
    v9 = (a1 + 104);
    while (v5 != a3)
    {
      *v5++ = *v9;
      if (v6)
      {
        *v6++ = -1;
      }

      --v8;
      ++v9;
      if (v7 + v8 == -1)
      {
        goto LABEL_10;
      }
    }

    v11 = 0;
    v12 = -v8;
    do
    {
      *(a1 + 104 + v11) = v9[v11];
      v13 = v12 + v11++;
    }

    while (v13 < v7);
    *(a1 + 91) = v11;
    *a2 = v5;
    if (v6)
    {
      *a4 = v6;
    }

    *a5 = 15;
    return 1;
  }

  return result;
}

void *sub_195238BB4(void *result, int *a2)
{
  v3 = result;
  v27 = *MEMORY[0x1E69E9840];
  memset(__dst, 0, sizeof(__dst));
  v4 = result[1];
  v5 = result[2];
  v6 = result[6];
  v7 = *(*(v4 + 48) + 32);
  if (v6)
  {
    v21 = *(v7 + 72);
    if (v21)
    {
      v25 = 0;
      goto LABEL_7;
    }

    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  v21 = *(v7 + 64);
LABEL_7:
  v8 = result[4];
  v9 = *(v4 + 281);
  if (v9 < 0)
  {
    v24 = result[3];
    v23 = *(result + 2);
    result = memcpy(__dst, (v4 + 212), (-2 * v9));
    v3[2] = __dst;
    v3[3] = &__dst[-2 * v9];
    *(v3 + 2) = 0;
    *(v4 + 281) = 0;
    v11 = 0xFFFFFFFFLL;
    v10 = v5;
  }

  else
  {
    v10 = 0;
    v24 = 0;
    v23 = 0;
    v11 = v25;
    v25 = 0;
  }

  v12 = *a2;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v13 = v12 > 0 || (result = v21(v3, a2), *a2 > 0) || !*(v3 + 2) || v3[2] != v3[3] || *(v4 + 84) != 0;
        v22 = v13;
        LODWORD(v14) = 0;
        v15 = 0;
        if (!v6)
        {
          goto LABEL_19;
        }

LABEL_15:
        v16 = v3[4] - v8;
        if (v16 >= 1)
        {
          result = sub_19523ABF0(v6, v16, v11, v14);
          v6 += 4 * (v16 & 0x7FFFFFFF);
          v3[6] = v6;
        }

        if ((v11 & 0x80000000) == 0)
        {
          v17 = v11 + ((v3[2] - v5) >> 1);
          goto LABEL_20;
        }

        while (1)
        {
LABEL_19:
          v17 = v11;
LABEL_20:
          v18 = *(v4 + 281);
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_23;
          }

          if (v10)
          {
            *a2 = 5;
LABEL_23:
            v11 = v17;
            goto LABEL_24;
          }

          v10 = v3[2];
          v24 = v3[3];
          v23 = *(v3 + 2);
          result = memcpy(__dst, (v4 + 212), (-2 * v18));
          v3[2] = __dst;
          v3[3] = &__dst[-2 * v18];
          *(v3 + 2) = 0;
          v11 = v17 + v18 < 0 != __OFADD__(v17, v18) ? 0xFFFFFFFFLL : (v17 + v18);
          *(v4 + 281) = 0;
          v25 = v17;
LABEL_24:
          v5 = v3[2];
          v8 = v3[4];
          v12 = *a2;
          if (*a2 <= 0)
          {
            break;
          }

          if (v15 & 1 | ((v12 - 13) < 0xFFFFFFFD))
          {
            if (v10)
            {
              v20 = v3[3] - v5;
              if ((v20 >> 1) >= 1)
              {
                result = u_memcpy((v4 + 212), v3[2], v20 >> 1);
                *(v4 + 281) = -(v20 >> 1);
              }

              v3[2] = v10;
              v3[3] = v24;
              *(v3 + 2) = v23;
            }

            return result;
          }

          v19 = *(v4 + 84);
LABEL_32:
          if (HIWORD(v19))
          {
            *(v4 + 140) = (v19 >> 10) - 10304;
            *(v4 + 142) = v19 & 0x3FF | 0xDC00;
            v14 = 2;
          }

          else
          {
            *(v4 + 140) = v19;
            v14 = 1;
          }

          *(v4 + 92) = v14;
          *(v4 + 84) = 0;
          result = (*v4)(*(v4 + 24), v3, v4 + 140, v14);
          v15 = 1;
          if (v6)
          {
            goto LABEL_15;
          }
        }

        if (v5 < v3[3])
        {
          continue;
        }

        break;
      }

      if (v10)
      {
        v3[2] = v10;
        v3[3] = v24;
        v11 = v25;
        *(v3 + 2) = v23;
        v10 = 0;
        continue;
      }

      break;
    }

    if (!*(v3 + 2))
    {
      return result;
    }

    v19 = *(v4 + 84);
    if (v19)
    {
      *a2 = 11;
      goto LABEL_32;
    }

    v10 = 0;
    if (v22)
    {
      continue;
    }

    return sub_195238684(v4, 2, 0);
  }
}

uint64_t ucnv_toUnicode(uint64_t result, unint64_t *a2, unint64_t a3, unint64_t *a4, unint64_t a5, _DWORD *a6, int a7, int *a8)
{
  v31 = a6;
  if (a8 && *a8 <= 0)
  {
    v9 = result;
    if (!result || !a2 || !a4)
    {
      goto LABEL_19;
    }

    v13 = *a4;
    v14 = a3 + 0x7FFFFFFF;
    if (a3 >= 0xFFFFFFFF80000001)
    {
      v14 = -1;
    }

    if ((v15 = v14 == a3, v13 <= a5) && (v16 = *a2, v17 = (a3 - v15), a3 - v15 >= *a2) && (a5 <= v13 || !((a5 - v13) >> 31)) && ((v20 = v17 >= v16, v19 = v17 - v16, v19 != 0 && v20) ? (v20 = v19 >= 0x7FFFFFFF) : (v20 = 0), (v21 = v19 & 1, !v20) ? (v22 = v21 == 0) : (v22 = 0), v22))
    {
      v25[0] = 0;
      if (*(result + 93) < 1 || (result = sub_19523907C(result, a2, v17, &v31, a8), !result))
      {
        if (a7 || v13 != a5 || *(v9 + 282) < 0)
        {
          BYTE2(v25[0]) = a7;
          v25[1] = v9;
          v26 = v13;
          v23 = *a2;
          v27 = a5;
          v28 = v23;
          v29 = v17;
          v30 = v31;
          LOWORD(v25[0]) = 56;
          result = sub_195239124(v25, a8);
          v24 = v28;
          *a4 = v26;
          *a2 = v24;
        }
      }
    }

    else
    {
LABEL_19:
      *a8 = 1;
    }
  }

  return result;
}

uint64_t sub_19523907C(uint64_t a1, _WORD **a2, _WORD *a3, _DWORD **a4, _DWORD *a5)
{
  v5 = *a2;
  if (a4)
  {
    v6 = *a4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 93);
  if (v7 < 1)
  {
LABEL_10:
    *(a1 + 93) = 0;
    *a2 = v5;
    result = 0;
    if (v6)
    {
      *a4 = v6;
    }
  }

  else
  {
    v8 = 0;
    v9 = a1 + 144;
    while (v5 != a3)
    {
      *v5++ = *(v9 + 2 * v8);
      if (v6)
      {
        *v6++ = -1;
      }

      if (v7 == ++v8)
      {
        goto LABEL_10;
      }
    }

    v11 = 0;
    do
    {
      *(v9 + 2 * v11++) = *(v9 + 2 * v8++);
    }

    while (v8 < v7);
    *(a1 + 93) = v11;
    *a2 = v5;
    if (v6)
    {
      *a4 = v6;
    }

    *a5 = 15;
    return 1;
  }

  return result;
}

void *sub_195239124(void *result, int *a2)
{
  v3 = result;
  __dst[4] = *MEMORY[0x1E69E9840];
  v4 = result[1];
  v5 = result[2];
  v6 = result[6];
  v7 = *(*(v4 + 48) + 32);
  if (v6)
  {
    v24 = *(v7 + 56);
    if (v24)
    {
      v28 = 0;
      goto LABEL_7;
    }

    v28 = -1;
  }

  else
  {
    v28 = 0;
  }

  v24 = *(v7 + 48);
LABEL_7:
  v8 = result[4];
  memset(__dst, 0, 31);
  v9 = *(v4 + 282);
  if (v9 < 0)
  {
    v27 = result[3];
    v26 = *(result + 2);
    result = memcpy(__dst, (v4 + 250), -v9);
    v3[2] = __dst;
    v3[3] = __dst - v9;
    *(v3 + 2) = 0;
    *(v4 + 282) = 0;
    v11 = 0xFFFFFFFFLL;
    v10 = v5;
  }

  else
  {
    v10 = 0;
    v27 = 0;
    v26 = 0;
    v11 = v28;
    v28 = 0;
  }

  v12 = *a2;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v13 = v12 > 0 || (result = v24(v3, a2), *a2 > 0) || !*(v3 + 2) || v3[2] != v3[3] || *(v4 + 64) != 0;
        v25 = v13;
        LODWORD(v14) = 0;
        v15 = 1;
        if (!v6)
        {
          goto LABEL_19;
        }

LABEL_15:
        v16 = v3[4] - v8;
        if ((v16 >> 1) >= 1)
        {
          result = sub_19523ABF0(v6, v16 >> 1, v11, v14);
          v6 += 4 * (v16 >> 1);
          v3[6] = v6;
        }

        if ((v11 & 0x80000000) == 0)
        {
          v17 = (v11 + *(v3 + 4) - v5);
          goto LABEL_20;
        }

        while (1)
        {
LABEL_19:
          v17 = v11;
LABEL_20:
          v18 = *(v4 + 282);
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_23;
          }

          if (v10)
          {
            *a2 = 5;
LABEL_23:
            v11 = v17;
            goto LABEL_24;
          }

          v10 = v3[2];
          v27 = v3[3];
          v26 = *(v3 + 2);
          result = memcpy(__dst, (v4 + 250), -v18);
          v3[2] = __dst;
          v3[3] = __dst - v18;
          *(v3 + 2) = 0;
          v11 = v17 + v18 < 0 != __OFADD__(v17, v18) ? 0xFFFFFFFFLL : (v17 + v18);
          *(v4 + 282) = 0;
          v28 = v17;
LABEL_24:
          v5 = v3[2];
          v8 = v3[4];
          v12 = *a2;
          if (*a2 <= 0)
          {
            break;
          }

          if ((v15 & 1) == 0 || ((v19 = v12 > 0x13, v20 = (1 << v12) & 0xC1C00, !v19) ? (v21 = v20 == 0) : (v21 = 1), v21))
          {
            if (v10)
            {
              v23 = v3[3] - v5;
              if (v23 >= 1)
              {
                result = memcpy((v4 + 250), v3[2], v23 & 0x7FFFFFFF);
                *(v4 + 282) = -v23;
              }

              v3[2] = v10;
              v3[3] = v27;
              *(v3 + 2) = v26;
            }

            return result;
          }

          v14 = *(v4 + 64);
          *(v4 + 90) = *(v4 + 64);
          if (v14 >= 1)
          {
            goto LABEL_37;
          }

LABEL_38:
          *(v4 + 64) = 0;
          v22 = *(v4 + 284);
          if (v22 == 1)
          {
            if (*a2 == 10)
            {
              v22 = 0;
              *(v4 + 284) = 0;
            }

            else
            {
              v22 = 1;
            }
          }

          result = (*(v4 + 8))(*(v4 + 32), v3, v4 + 96, v14, v22, a2);
          v15 = 0;
          *(v4 + 284) = 1;
          if (v6)
          {
            goto LABEL_15;
          }
        }

        if (v5 < v3[3])
        {
          continue;
        }

        break;
      }

      if (v10)
      {
        v3[2] = v10;
        v3[3] = v27;
        v11 = v28;
        *(v3 + 2) = v26;
        v10 = 0;
        continue;
      }

      break;
    }

    if (!*(v3 + 2))
    {
      return result;
    }

    v14 = *(v4 + 64);
    if (v14 >= 1)
    {
      *a2 = 11;
      *(v4 + 90) = v14;
LABEL_37:
      memcpy((v4 + 96), (v4 + 65), v14);
      goto LABEL_38;
    }

    v10 = 0;
    if (v25)
    {
      continue;
    }

    return sub_195238684(v4, 1, 0);
  }
}

uint64_t ucnv_toUChars(uint64_t a1, unint64_t a2, uint64_t a3, const char *a4, int a5, int *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a2;
  if (!a6 || *a6 > 0)
  {
    return 0;
  }

  if (!a1 || (v9 = a3, (a3 & 0x80000000) != 0) || (a3 ? (v11 = a2 == 0) : (v11 = 0), v11 || (v12 = a5, a5 < -1) || !a4 && a5))
  {
    result = 0;
    *a6 = 1;
  }

  else
  {
    sub_195238684(a1, 1, 1);
    if (v12 == -1)
    {
      v12 = strlen(a4);
    }

    if (v12 < 1)
    {
      v17 = 0;
    }

    else
    {
      v14 = &a4[v12];
      v15 = a2 + 0x7FFFFFFF;
      if (a2 > 0xFFFFFFFF80000000)
      {
        v15 = 0x1FFFFFFFFLL;
      }

      v16 = (v15 - a2) >> 1;
      if (v16 >= v9)
      {
        LODWORD(v16) = v9;
      }

      if (v9)
      {
        v9 = v16;
      }

      else
      {
        v9 = 0;
      }

      ucnv_toUnicode(a1, &v19, a2 + 2 * v9, &v18, v14, 0, 1, a6);
      v17 = &v19[-a2] >> 1;
      if (*a6 == 15)
      {
        bzero(v20, 0x800uLL);
        do
        {
          v19 = v20;
          *a6 = 0;
          ucnv_toUnicode(a1, &v19, &v21, &v18, v14, 0, 1, a6);
          v17 = v17 + ((v19 - v20) >> 1);
        }

        while (*a6 == 15);
      }
    }

    return u_terminateUChars(a2, v9, v17, a6);
  }

  return result;
}

uint64_t ucnv_getNextUChar(uint64_t a1, unint64_t *a2, unint64_t a3, int *a4)
{
  if (!a4 || *a4 > 0)
  {
    return 0xFFFFLL;
  }

  if (!a1 || !a2 || (v8 = *a2, *a2 > a3) || a3 > v8 && (a3 - v8) >> 31)
  {
    *a4 = 1;
    return 0xFFFFLL;
  }

  v11 = *(a1 + 93);
  if (v11 < 1)
  {
    LODWORD(v9) = -1;
  }

  else
  {
    v12 = (a1 + 144);
    v9 = *(a1 + 144);
    v13 = 1;
    if (v11 != 1 && (v9 & 0xFC00) == 0xD800)
    {
      v14 = *(a1 + 146);
      v15 = (v14 & 0xFC00) == 56320;
      v16 = v14 + (v9 << 10) - 56613888;
      if (v15)
      {
        v9 = v16;
      }

      else
      {
        v9 = *(a1 + 144);
      }

      if (v15)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }
    }

    *(a1 + 93) = v11 - v13;
    if ((v11 - v13) >= 1)
    {
      memmove(v12, &v12[2 * v13], 2 * ((v11 - v13) & 0x7F));
    }

    if (v9 >> 10 != 54 || v13 < v11)
    {
      return v9;
    }
  }

  v28 = 0;
  v29[0] = 65592;
  v29[1] = a1;
  v30 = v8;
  v31 = a3;
  v32 = &v28;
  v33 = &v28 + 2;
  v34 = 0;
  if ((v9 & 0x80000000) == 0)
  {
    LOWORD(v28) = v9;
    v32 = &v28 + 2;
    LODWORD(v17) = 1;
    if (*a4 >= 1)
    {
      v18 = 0;
      v9 = 0xFFFFLL;
LABEL_55:
      v26 = v17 - v18;
      v27 = *(a1 + 93);
      if (*(a1 + 93) >= 1)
      {
        memmove((a1 + 144 + 2 * v26), (a1 + 144), 2 * v27);
      }

      *(a1 + 93) = v27 + v26;
      *(a1 + 144) = *(&v28 | (2 * v18));
      if (v26 >= 2)
      {
        *(a1 + 146) = *(&v28 + (v18 + 1));
      }

      goto LABEL_59;
    }

    v19 = v9;
    goto LABEL_37;
  }

  if (*(a1 + 64))
  {
    goto LABEL_30;
  }

  v23 = *(*(*(a1 + 48) + 32) + 80);
  if (!v23)
  {
    goto LABEL_30;
  }

  v24 = v23(v29, a4);
  *a2 = v30;
  if (*a4 == 8)
  {
    sub_195238684(a1, 1, 0);
    return 0xFFFFLL;
  }

  if (*a4 > 0 || (v9 = v24, (v24 & 0x80000000) != 0))
  {
LABEL_30:
    sub_195239124(v29, a4);
    if (*a4 == 15)
    {
      *a4 = 0;
      v17 = (v32 - &v28) >> 1;
    }

    else
    {
      v17 = (v32 - &v28) >> 1;
      if (*a4 >= 1)
      {
        v18 = 0;
        v9 = 0xFFFFLL;
        goto LABEL_54;
      }
    }

    if (!v17)
    {
      *a4 = 8;
      v9 = 0xFFFFLL;
      goto LABEL_59;
    }

    v19 = v28;
LABEL_37:
    v9 = v19;
    if ((v19 & 0xFC00) == 0xD800)
    {
      v20 = *(a1 + 93);
      if (v20 < 1)
      {
        if (v30 < a3)
        {
          v33 = v29;
          sub_195239124(v29, a4);
          v25 = *a4;
          if (*a4 == 15)
          {
            v25 = 0;
            *a4 = 0;
          }

          v17 = (v32 - &v28) >> 1;
          v18 = 1;
          if (v25 <= 0 && v17 == 2)
          {
            if ((HIWORD(v28) & 0xFC00) != 0xDC00)
            {
              LODWORD(v17) = 2;
              goto LABEL_55;
            }

            v9 = HIWORD(v28) + (v9 << 10) - 56613888;
            goto LABEL_59;
          }

LABEL_54:
          if (v18 < v17)
          {
            goto LABEL_55;
          }

LABEL_59:
          *a2 = v30;
          return v9;
        }
      }

      else
      {
        v21 = *(a1 + 144);
        if ((v21 & 0xFC00) == 0xDC00)
        {
          v9 = (v21 + (v9 << 10) - 56613888);
          v22 = v20 - 1;
          *(a1 + 93) = v22;
          if (v22)
          {
            memmove((a1 + 144), (a1 + 146), 2 * v22);
          }
        }
      }
    }

    v18 = 1;
    goto LABEL_54;
  }

  return v9;
}

void ucnv_convertEx(uint64_t a1, uint64_t a2, unint64_t *a3, _BYTE *a4, const char **a5, const char *a6, uint64_t *a7, uint64_t **a8, uint64_t *a9, uint64_t *a10, char a11, char a12, int *a13)
{
  v61 = *MEMORY[0x1E69E9840];
  v59 = 0;
  if (!a13 || *a13 > 0)
  {
    return;
  }

  if (!a1)
  {
    goto LABEL_21;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  if (!a5)
  {
    goto LABEL_21;
  }

  if (!a3)
  {
    goto LABEL_21;
  }

  v17 = *a5;
  if (!*a5)
  {
    goto LABEL_21;
  }

  if (!a4)
  {
    goto LABEL_21;
  }

  v19 = *a3;
  if (!*a3)
  {
    goto LABEL_21;
  }

  v20 = a6;
  if (v17 > a6 && a6 != 0)
  {
    goto LABEL_21;
  }

  if (v19 > a4)
  {
    goto LABEL_21;
  }

  v22 = a8;
  v23 = a7;
  if (a6 > v17)
  {
    if (&a6[-v17] >> 31)
    {
      goto LABEL_21;
    }
  }

  v24 = a4 >= v19;
  v25 = &a4[-v19];
  if (v25 != 0 && v24)
  {
    if (v25 >> 31)
    {
      goto LABEL_21;
    }
  }

  v58 = 0;
  if (a7)
  {
    if (!a8 || (v27 = a10, a7 >= a10) || (v28 = a9) == 0 || !*a8 || !*a9)
    {
LABEL_21:
      v26 = 1;
LABEL_22:
      *a13 = v26;
      return;
    }
  }

  else
  {
    if (!a12)
    {
      goto LABEL_21;
    }

    v23 = v60;
    v58 = v60;
    v59 = v60;
    v27 = &v61;
    v22 = &v59;
    v28 = &v58;
  }

  v45 = v27;
  v47 = v28;
  bzero(v60, 0x800uLL);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v48 = 0u;
  v49 = 0u;
  if (!v20)
  {
    v20 = (v17 + strlen(v17));
  }

  if (a11)
  {
    sub_195238684(a2, 1, 1);
    sub_195238684(a1, 2, 1);
    v29 = v47;
    *v47 = v23;
    *v22 = v23;
  }

  else
  {
    v29 = v47;
    if (*(a1 + 91) >= 1)
    {
      v43 = sub_195238B00(a1, a3, a4, 0, a13);
      v29 = v47;
      if (v43 || !a12 && (*(a1 + 281) & 0x80000000) == 0 && *v22 == *v47 && !*(a2 + 93) && (*(a2 + 282) & 0x80000000) == 0 && v17 == v20)
      {
        return;
      }
    }
  }

  v44 = (v23 + 2);
  v30 = *(a2 + 48);
  v31 = *(a1 + 48);
  if ((*(*(v30 + 16) + 69) != 4 || (v32 = *(*(v31 + 32) + 136)) == 0) && (*(*(v31 + 16) + 69) != 4 || (v32 = *(*(v30 + 32) + 128)) == 0))
  {
    v32 = 0;
  }

  v33 = v45;
  BYTE2(v48) = 0;
  v46 = v32;
  v34 = v45 - v23 <= 64 || v32 == 0;
  v35 = *a3;
  if (!v34)
  {
    v33 = v23 + 8;
  }

  *(&v48 + 1) = a1;
  v50 = v35;
  v51 = a4;
  v52 = 0;
  LOWORD(v48) = 56;
  BYTE2(v53) = a12;
  v56 = v33;
  v57 = 0;
  *(&v53 + 1) = a2;
  *&v54 = v17;
  *(&v54 + 1) = v20;
  v36 = v33;
  LOWORD(v53) = 56;
  while (1)
  {
    v37 = *v29;
    if (*v22 >= *v29)
    {
      v38 = *a13;
      if (*a13 <= 0 && (*(a1 + 281) & 0x80000000) == 0 && !BYTE2(v48))
      {
        goto LABEL_52;
      }
    }

    *&v49 = *v22;
    *(&v49 + 1) = v37;
    sub_195238BB4(&v48, a13);
    v38 = *a13;
    if (*a13 >= 1)
    {
      break;
    }

    v29 = v47;
LABEL_52:
    *v29 = v23;
    *v22 = v23;
    if (*(a2 + 93) < 1)
    {
      if (v54 == v20 && (*(a2 + 282) & 0x80000000) == 0 && !*(a2 + 64) && (!a12 || BYTE2(v48)))
      {
        goto LABEL_91;
      }

      if (!v46 || (*(a1 + 208) & 0x80000000) == 0 || *(a2 + 282))
      {
        goto LABEL_59;
      }

      if (v38 == -127)
      {
        *a13 = 0;
      }

      v46(&v48, &v53, a13);
      v38 = *a13;
      if (*a13 == 15)
      {
        goto LABEL_91;
      }

      v29 = v47;
      if (v38 < 1)
      {
        if (v38 == -127)
        {
          v41 = 0;
        }

        else
        {
          if (!a12)
          {
LABEL_106:
            *a5 = v54;
            *a3 = v50;
            return;
          }

          if (*(a2 + 64) <= 0)
          {
            sub_195238684(a2, 1, 0);
            sub_195238684(a1, 2, 0);
            *a5 = v54;
            v42 = v50;
            *a3 = v50;
            v38 = *a13;
            goto LABEL_92;
          }

          v41 = 11;
        }

        *a13 = v41;
        goto LABEL_59;
      }

      if (*(a2 + 64) > 0)
      {
LABEL_59:
        v55 = v23;
        sub_195239124(&v53, a13);
        v29 = v47;
        v40 = v55;
        *v47 = v55;
        v38 = *a13;
        if (*a13 == 15)
        {
          *a13 = 0;
          if (a12)
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v38 > 0)
          {
            goto LABEL_91;
          }

          if (a12)
          {
LABEL_67:
            if (v54 == v20 && (*(a2 + 282) & 0x80000000) == 0 && !*(a2 + 93))
            {
              BYTE2(v48) = 1;
            }
          }

          else if (v40 == v23)
          {
            goto LABEL_106;
          }
        }
      }

      else
      {
        *v47 = v44;
        *v22 = v44;
      }
    }

    else
    {
      v39 = sub_19523907C(a2, v47, v36, 0, a13);
      v29 = v47;
      if (v39)
      {
        *a13 = 0;
      }
    }
  }

  *v22 = v49;
LABEL_91:
  *a5 = v54;
  v42 = v50;
  *a3 = v50;
  if (!a12)
  {
    return;
  }

LABEL_92:
  if (v38 > 0)
  {
    return;
  }

  if (v42 == a4)
  {
    v26 = -124;
    goto LABEL_22;
  }

  *v42 = 0;
  if (*a13 == -124)
  {
    *a13 = 0;
  }
}

uint64_t ucnv_convert(char *a1, char *a2, uint64_t a3, uint64_t a4, char *a5, int a6, UErrorCode *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a7 || *a7 > 0)
  {
    return 0;
  }

  if ((a4 & 0x80000000) != 0 || !a5 || a6 < -1 || !a3 && a4)
  {
    v8 = 0;
    *a7 = U_ILLEGAL_ARGUMENT_ERROR;
    return v8;
  }

  if (a6 && ((a6 & 0x80000000) == 0 || *a5))
  {
    memset(v20, 0, sizeof(v20));
    memset(v19, 0, sizeof(v19));
    Converter = ucnv_createConverter(v20, a2, a7);
    if (*a7 <= 0)
    {
      v16 = Converter;
      v17 = ucnv_createConverter(v19, a1, a7);
      if (*a7 < 1)
      {
        v18 = v17;
        v8 = sub_19523A170(v17, v16, a3, a4, a5, a6, a7);
        ucnv_close(v16);
        ucnv_close(v18);
        return v8;
      }

      ucnv_close(v16);
    }

    return 0;
  }

  return u_terminateChars(a3, a4, 0, a7);
}

uint64_t sub_19523A170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s, unsigned int a6, int *a7)
{
  v9 = a4;
  v22[0] = *MEMORY[0x1E69E9840];
  v19 = __s;
  if ((a6 & 0x80000000) != 0)
  {
    v13 = strlen(__s);
    if (v13)
    {
LABEL_3:
      bzero(v21, 0x800uLL);
      v17 = v21;
      v18 = v21;
      v16 = a3;
      if (v9 < 1)
      {
        v14 = 0;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        ucnv_convertEx(a1, a2, &v16, (a3 + v9), &v19, &__s[v13], v21, &v18, &v17, v22, 0, 1, a7);
        v14 = (v16 - a3);
      }

      if (*a7 != 15)
      {
        return v14;
      }

LABEL_11:
      bzero(v20, 0x400uLL);
      do
      {
        *a7 = 0;
        v16 = v20;
        ucnv_convertEx(a1, a2, &v16, v21, &v19, &__s[v13], v21, &v18, &v17, v22, 0, 1, a7);
        v14 = v14 + v16 - v20;
      }

      while (*a7 == 15);
      return u_terminateChars(a3, v9, v14, a7);
    }
  }

  else
  {
    v13 = a6;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  return u_terminateChars(a3, v9, 0, a7);
}

uint64_t sub_19523A3A8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, signed int a7, int *a8)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a8 || *a8 > 0)
  {
    return 0;
  }

  if ((a5 & 0x80000000) != 0 || !a3 || !a6 || a7 < -1 || !a4 && a5)
  {
    v9 = 0;
    *a8 = 1;
    return v9;
  }

  if (a7 && ((a7 & 0x80000000) == 0 || *a6))
  {
    memset(v23, 0, sizeof(v23));
    v17 = sub_19523EFD4(v23, a2, "", 0, a8);
    if (*a8 <= 0)
    {
      v18 = v17;
      v19 = a1 == 0;
      if (a1)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (a1)
      {
        v21 = v17;
      }

      else
      {
        v21 = a3;
      }

      if (v19)
      {
        v22 = v17;
      }

      else
      {
        v22 = a3;
      }

      sub_195238684(a3, v20, 1);
      v9 = sub_19523A170(v21, v22, a4, a5, a6, a7, a8);
      ucnv_close(v18);
      return v9;
    }

    return 0;
  }

  return u_terminateChars(a4, a5, 0, a8);
}

uint64_t ucnv_fromAlgorithmic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, signed int a6, int *a7)
{
  if (a2 < 0x22)
  {
    return sub_19523A3A8(0, a2, a1, a3, a4, a5, a6, a7);
  }

  *a7 = 1;
  return 0;
}

uint64_t ucnv_getType(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 16) + 69) == 2)
  {
    return sub_195251E20(a1);
  }

  else
  {
    return *(*(*(a1 + 48) + 16) + 69);
  }
}

uint64_t ucnv_getStarters(uint64_t result, uint64_t a2, int *a3)
{
  if (a3 && *a3 <= 0)
  {
    v3 = *(*(*(result + 48) + 32) + 88);
    if (v3)
    {
      return v3();
    }

    else
    {
      *a3 = 1;
    }
  }

  return result;
}

char **ucnv_fixFileSeparator(char **result, _WORD *a2, unsigned int a3)
{
  if (result)
  {
    v3 = a2;
    if (a2)
    {
      if (a3 >= 1)
      {
        result = sub_19523A674(result);
        if (result)
        {
          v5 = *(result + 4);
          v6 = a3;
          do
          {
            if (*v3 == v5)
            {
              *v3 = 92;
            }

            ++v3;
            --v6;
          }

          while (v6);
        }
      }
    }
  }

  return result;
}

char **sub_19523A674(char **a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  v2 = a1[6];
  v3 = *(*(v2 + 4) + 96);
  if (v3)
  {
    v4 = v3(a1);
    if (v4)
    {
      goto LABEL_6;
    }

    v2 = v1[6];
  }

  v4 = (*(v2 + 2) + 4);
LABEL_6:
  v1 = &off_1E7403710;
  v5 = 11;
  while (strcmp(v4, *v1))
  {
    v1 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  return v1;
}

char *ucnv_getInvalidChars(char *result, void *__dst, _BYTE *a3, int *a4)
{
  if (a4 && *a4 <= 0)
  {
    if (result && __dst && a3)
    {
      v4 = result[90];
      if (*a3 >= v4)
      {
        *a3 = v4;
        if (v4 >= 1)
        {
          return memcpy(__dst, result + 96, v4);
        }

        return result;
      }

      v5 = 8;
    }

    else
    {
      v5 = 1;
    }

    *a4 = v5;
  }

  return result;
}

UChar *ucnv_getInvalidUChars(UChar *result, UChar *dest, _BYTE *a3, int *a4)
{
  if (a4 && *a4 <= 0)
  {
    if (result && dest && a3)
    {
      v4 = *(result + 92);
      if (*a3 >= v4)
      {
        *a3 = v4;
        if (v4 >= 1)
        {
          return u_memcpy(dest, result + 70, v4);
        }

        return result;
      }

      v5 = 8;
    }

    else
    {
      v5 = 1;
    }

    *a4 = v5;
  }

  return result;
}

const char *ucnv_detectUnicodeSignature(char *__s, int a2, int *a3, int *a4)
{
  v14 = -91;
  __dst = -1515870811;
  if (!a4 || *a4 > 0)
  {
    return 0;
  }

  if (!__s || a2 <= -2)
  {
    result = 0;
    *a4 = 1;
    return result;
  }

  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  if (a2 <= 0)
  {
    v10 = 0;
    v11 = BYTE2(__dst);
    v8 = 165;
    v9 = 165;
  }

  else
  {
    v7 = a2 - 1;
    if ((a2 - 1) >= 4)
    {
      v7 = 4;
    }

    memcpy(&__dst, __s, (v7 + 1));
    v8 = __dst;
    v9 = BYTE1(__dst);
    if (__dst == 254 && BYTE1(__dst) == 255)
    {
      if (a3)
      {
        *a3 = 2;
      }

      return "UTF-16BE";
    }

    v10 = BYTE1(__dst) == 254;
    if (__dst == 255 && BYTE1(__dst) == 254)
    {
      if (BYTE2(__dst) | HIBYTE(__dst))
      {
        if (a3)
        {
          *a3 = 2;
        }

        return "UTF-16LE";
      }

      else
      {
        if (a3)
        {
          *a3 = 4;
        }

        return "UTF-32LE";
      }
    }

    v11 = BYTE2(__dst);
    if (__dst == 239 && BYTE1(__dst) == 187 && BYTE2(__dst) == 191)
    {
      if (a3)
      {
        *a3 = 3;
      }

      return "UTF-8";
    }
  }

  if (!v8 && !v9 && v11 == 254 && HIBYTE(__dst) == 255)
  {
    if (a3)
    {
      *a3 = 4;
    }

    return "UTF-32BE";
  }

  if (v8 == 14 && v10 && v11 == 255)
  {
    if (a3)
    {
      *a3 = 3;
    }

    return "SCSU";
  }

  if (v8 == 251 && v9 == 238 && v11 == 40)
  {
    if (a3)
    {
      *a3 = 3;
    }

    return "BOCU-1";
  }

  if (v8 == 43 && v9 == 47 && v11 == 118)
  {
    if (HIBYTE(__dst) == 56 && v14 == 45)
    {
      if (a3)
      {
        v12 = 5;
LABEL_69:
        *a3 = v12;
        return "UTF-7";
      }

      return "UTF-7";
    }

    if (HIBYTE(__dst) <= 0x39u && ((1 << SHIBYTE(__dst)) & 0x300880000000000) != 0)
    {
      if (a3)
      {
        v12 = 4;
        goto LABEL_69;
      }

      return "UTF-7";
    }
  }

  else if (v8 == 221 && v9 == 115 && v11 == 102 && HIBYTE(__dst) == 115)
  {
    if (a3)
    {
      *a3 = 4;
    }

    return "UTF-EBCDIC";
  }

  if (!a3)
  {
    return 0;
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t ucnv_fromUCountPending(uint64_t a1, int *a2)
{
  if (!a2 || *a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1)
  {
    *a2 = 1;
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 208);
  if ((v3 & 0x80000000) != 0)
  {
    v5 = *(a1 + 281);
    if (v5 < 0)
    {
      return -v5;
    }

    else
    {
      return *(a1 + 84) > 0;
    }
  }

  else
  {
    if (v3 < 0x10000)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    return (v4 + *(a1 + 281));
  }
}

uint64_t ucnv_toUCountPending(uint64_t a1, int *a2)
{
  if (!a2 || *a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1)
  {
    *a2 = 1;
    return 0xFFFFFFFFLL;
  }

  result = *(a1 + 282);
  if (result <= 0)
  {
    if ((result & 0x80000000) != 0)
    {
      return -result;
    }

    else
    {
      return *(a1 + 64) & ~(*(a1 + 64) >> 31);
    }
  }

  return result;
}

uint64_t ucnv_isFixedWidth(uint64_t result, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (result)
  {
    v2 = *(*(*(result + 48) + 16) + 69);
    if (v2 == 2)
    {
      v2 = sub_195251E20(result);
    }

    result = 1;
    v3 = v2 > 0x1E;
    v4 = (1 << v2) & 0x44000183;
    if (v3 || v4 == 0)
    {
      return 0;
    }
  }

  else
  {
    *a2 = 1;
  }

  return result;
}

unint64_t sub_19523ABF0(unint64_t result, unsigned int a2, int a3, int a4)
{
  v4 = a3 - a4;
  if (a3 < 0)
  {
    v4 = -1;
  }

  if (v4)
  {
    if (v4 <= 0)
    {
      if (a2)
      {
        v6 = result + 4 * a2;
        if (v6 <= result + 4)
        {
          v6 = result + 4;
        }

        return memset(result, 255, ((v6 + ~result) & 0xFFFFFFFFFFFFFFFCLL) + 4);
      }
    }

    else if (a2)
    {
      v5 = result + 4 * a2;
      do
      {
        if ((*result & 0x80000000) == 0)
        {
          *result += v4;
        }

        result += 4;
      }

      while (result < v5);
    }
  }

  return result;
}

void sub_19523AC64(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(__dst, 32, 6);
  v6 = malloc_type_malloc(0x98uLL, 0x1020040C8C3A754uLL);
  *(a1 + 16) = v6;
  if (!v6)
  {
    v13 = 7;
LABEL_16:
    *a3 = v13;
    return;
  }

  v7 = v6;
  memset(v22, 0, sizeof(v22));
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  LODWORD(v19[0]) = 40;
  BYTE8(v19[0]) = *(a2 + 8);
  v6[18] = 0;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *v6 = 0u;
  *(a1 + 80) = 0;
  v8 = *(a2 + 32);
  if (!v8)
  {
    *(v6 + 27) = *(a2 + 12) & 0xF;
    goto LABEL_15;
  }

  strncpy(__dst, v8, 6uLL);
  v9 = __dst[0];
  v10 = *(a2 + 12) & 0xF;
  *(v7 + 27) = v10;
  if (v9 != 107)
  {
    if (v9 == 106)
    {
      if ((__dst[1] == 112 || __dst[1] == 97) && (__dst[2] == 95 || !__dst[2]) && v10 < 5)
      {
        if (v10 > 1)
        {
          v7[2] = sub_19523E7A4("ISO8859_7", v22, v19, a3);
          v7[4] = sub_19523E7A4("Shift-JIS", v22, v19, a3);
          v7[5] = sub_19523E7A4("jisx-212", v22, v19, a3);
          v7[6] = sub_19523E7A4("ibm-5478", v22, v19, a3);
          v11 = "ksc_5601";
          v12 = 7;
        }

        else
        {
          v7[4] = sub_19523E7A4("Shift-JIS", v22, v19, a3);
          if (!v10)
          {
LABEL_37:
            *(a1 + 48) = &unk_1E74038E8;
            strcpy(v7 + 143, "ja");
            strcpy(v7 + 113, "ISO_2022,locale=ja,version=");
            v16 = v7 + strlen(v7 + 113) + 113;
            *v16 = *(v7 + 108) + 48;
            v16[1] = 0;
            goto LABEL_47;
          }

          v11 = "jisx-212";
          v12 = 5;
        }

        v7[v12] = sub_19523E7A4(v11, v22, v19, a3);
        goto LABEL_37;
      }

      goto LABEL_15;
    }

    if ((v9 == 122 && __dst[1] == 104 || v9 == 99 && __dst[1] == 110) && (__dst[2] == 95 || !__dst[2]) && v10 < 3)
    {
      v7[1] = sub_19523E7A4("ibm-5478", v22, v19, a3);
      if (v10)
      {
        v7[2] = sub_19523E7A4("iso-ir-165", v22, v19, a3);
        v7[3] = sub_19523E7A4("cns-11643-1992", v22, v19, a3);
        *(a1 + 48) = &unk_1E7403B38;
        strcpy(v7 + 143, "cn");
        if (v10 == 1)
        {
          *(v7 + 27) = 1;
          v15 = "ISO_2022,locale=zh,version=1";
        }

        else
        {
          *(v7 + 27) = 2;
          v15 = "ISO_2022,locale=zh,version=2";
        }
      }

      else
      {
        v7[3] = sub_19523E7A4("cns-11643-1992", v22, v19, a3);
        *(a1 + 48) = &unk_1E7403B38;
        strcpy(v7 + 143, "cn");
        *(v7 + 27) = 0;
        v15 = "ISO_2022,locale=zh,version=0";
      }

      *(v7 + 113) = *v15;
      *(v7 + 126) = *(v15 + 13);
      goto LABEL_47;
    }

LABEL_15:
    v13 = 2;
    goto LABEL_16;
  }

  if (__dst[1] != 114 && __dst[1] != 111 || __dst[2] != 95 && __dst[2] || v10 >= 2)
  {
    goto LABEL_15;
  }

  if (v10 == 1)
  {
    v14 = "icu-internal-25546";
  }

  else
  {
    *(v7 + 27) = 0;
    v14 = "ibm-949";
  }

  if (*(a2 + 8))
  {
    sub_19523EECC(v14, a3);
    free(*(a1 + 16));
    *(a1 + 16) = 0;
    return;
  }

  v17 = ucnv_open(v14, a3);
  v7[10] = v17;
  if (*a3 >= 1)
  {
    goto LABEL_49;
  }

  if (v10 == 1)
  {
    strcpy(v7 + 113, "ISO_2022,locale=ko,version=1");
    **(a1 + 40) = **(v17 + 5);
    v17 = v7[10];
    *(a1 + 89) = *(v17 + 89);
  }

  else
  {
    strcpy(v7 + 113, "ISO_2022,locale=ko,version=0");
  }

  v18 = *(v7 + 27);
  if (v18 == 1)
  {
    *(v17 + 9) = 0;
    *(v17 + 64) = 0;
  }

  if (!*(a1 + 91))
  {
    *(a1 + 91) = 4;
    *(a1 + 104) = 1126769691;
    v18 = *(v7 + 27);
  }

  if (v18 == 1)
  {
    *(v7[10] + 80) = 1;
  }

  *(a1 + 48) = &unk_1E7403A10;
  strcpy(v7 + 143, "ko");
LABEL_47:
  *(a1 + 88) = *(*(*(a1 + 48) + 16) + 71);
  if (*a3 > 0 || *(a2 + 8))
  {
LABEL_49:
    sub_19523B194(a1);
  }
}

void sub_19523B194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    for (i = 0; i != 80; i += 8)
    {
      v4 = *(v1 + i);
      if (v4)
      {
        sub_19523E6D8(v4);
      }
    }

    ucnv_close(*(v1 + 80));
    if (!*(a1 + 62))
    {
      free(*(a1 + 16));
      *(a1 + 16) = 0;
    }
  }
}

uint64_t sub_19523B1FC(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (a2 > 1)
  {
    *(v2 + 102) = 0;
    *(v2 + 98) = 0;
    if (*(v2 + 143) != 107)
    {
      return result;
    }
  }

  else
  {
    *(v2 + 96) = 0;
    *(v2 + 92) = 0;
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
    if (a2 == 1)
    {
      if (*(v2 + 143) == 107 && *(v2 + 108) == 1)
      {
        v3 = *(v2 + 80);
        *(v3 + 72) = 0;
        *(v3 + 64) = 0;
      }

      return result;
    }

    *(v2 + 102) = 0;
    *(v2 + 98) = 0;
    if (*(v2 + 143) != 107)
    {
      return result;
    }

    if (*(v2 + 108) == 1)
    {
      v4 = *(v2 + 80);
      *(v4 + 72) = 0;
      *(v4 + 64) = 0;
    }
  }

  if (!*(result + 91))
  {
    *(result + 91) = 4;
    *(result + 104) = 1126769691;
  }

  if (*(v2 + 108) == 1)
  {
    *(*(v2 + 80) + 80) = 1;
  }

  return result;
}

uint64_t sub_19523B2CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 113;
  }

  else
  {
    return 0;
  }
}

void *sub_19523B2E0(void *a1, uint64_t a2, int *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  v6 = *(v5 + 16);
  v20[0] = 0;
  v7 = *(v5 + 40);
  v8 = *(v6 + 143);
  if (v8 == 99)
  {
    v9 = v20;
    if (!*(v6 + 102))
    {
      goto LABEL_19;
    }

    *(v6 + 102) = 0;
LABEL_18:
    v9 = v20 + 1;
    LOBYTE(v20[0]) = 15;
    goto LABEL_19;
  }

  if (v8 != 107)
  {
    if (v8 != 106)
    {
      v9 = v20;
      return ucnv_cbFromUWriteBytes(a1, v20, v9 - v20, a2, a3);
    }

    v9 = v20;
    if (*(v6 + 102) == 1)
    {
      *(v6 + 102) = 0;
      v9 = v20 + 1;
      LOBYTE(v20[0]) = 15;
    }

    if (*(v6 + 98))
    {
      v10 = *(v6 + 98) == 3;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      *(v6 + 98) = 0;
      *v9 = 27;
      *(v9 + 1) = 16936;
      v9 += 3;
    }

LABEL_19:
    *v9 = *v7;
    LODWORD(v9) = v9 + 1;
    return ucnv_cbFromUWriteBytes(a1, v20, v9 - v20, a2, a3);
  }

  v11 = *(v5 + 89);
  if (!*(v6 + 108))
  {
    v18 = *(v5 + 80);
    if (v11 != 1)
    {
      v19 = v20;
      if (!v18)
      {
        *(v5 + 80) = 1;
        v19 = v20 + 1;
        LOBYTE(v20[0]) = 14;
      }

      *v19 = *v7;
      LODWORD(v9) = v19 + 2;
      v19[1] = v7[1];
      return ucnv_cbFromUWriteBytes(a1, v20, v9 - v20, a2, a3);
    }

    v9 = v20;
    if (!v18)
    {
      goto LABEL_19;
    }

    *(v5 + 80) = 0;
    goto LABEL_18;
  }

  v12 = *(v6 + 80);
  v13 = *(v12 + 40);
  v14 = *(v12 + 89);
  *(v12 + 40) = v7;
  *(v12 + 89) = v11;
  a1[1] = v12;
  *(v12 + 84) = *(v5 + 84);
  result = ucnv_cbFromUWriteSub(a1, 0, a3);
  v16 = *(v6 + 80);
  *(v5 + 84) = *(v16 + 84);
  a1[1] = v5;
  *(v16 + 40) = v13;
  *(v16 + 89) = v14;
  if (*a3 == 15)
  {
    v17 = *(v16 + 91);
    if (v17 >= 1)
    {
      result = memcpy((v5 + 104), (v16 + 104), v17);
      v16 = *(v6 + 80);
      LOBYTE(v17) = *(v16 + 91);
    }

    *(v5 + 91) = v17;
    *(v16 + 91) = 0;
  }

  return result;
}

uint64_t sub_19523B4E4(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (!*a3)
  {
    v7 = 0;
    *a3 = 728;
    return v7;
  }

  v7 = a2;
  v21 = 0;
  v9 = *(a1 + 16);
  v10 = *(v9 + 144);
  v11 = *(v9 + 96);
  v12 = *(v9 + 128);
  *(a2 + 688) = *(v9 + 112);
  *(a2 + 704) = v12;
  *(a2 + 672) = v11;
  *(a2 + 720) = v10;
  v13 = *(v9 + 16);
  *(a2 + 576) = *v9;
  *(a2 + 592) = v13;
  v14 = *(v9 + 32);
  v15 = *(v9 + 48);
  v16 = *(v9 + 80);
  *(a2 + 640) = *(v9 + 64);
  *(a2 + 656) = v16;
  *(a2 + 608) = v14;
  *(a2 + 624) = v15;
  *(a2 + 16) = a2 + 576;
  *(a2 + 62) = 1;
  v17 = *(v9 + 80);
  if (v17)
  {
    v21 = 288;
    *(a2 + 656) = ucnv_safeClone(v17, a2 + 288, &v21, a4);
    if (*a4 > 0)
    {
      return 0;
    }
  }

  for (i = 0; i != 80; i += 8)
  {
    v20 = *(v9 + i);
    if (v20)
    {
      sub_19523E73C(v20);
    }
  }

  return v7;
}

uint64_t sub_19523B5D8(uint64_t result, uint64_t *a2, uint64_t a3, int *a4)
{
  if (*a4 > 0)
  {
    return result;
  }

  v8 = *(result + 16);
  v9 = *(v8 + 143);
  if (v9 <= 0x6A)
  {
    if (v9 != 99)
    {
      if (v9 == 106)
      {
        (a2[1])(*a2, 165);
        (a2[1])(*a2, 8254);
        v10 = *(v8 + 108) >= 2u ? 255 : 127;
        (a2[2])(*a2, 0, v10);
        v11 = *(v8 + 108);
        v12 = v11 == 3 || a3 == 1;
        if (v12 || v11 == 4)
        {
          (a2[2])(*a2, 65377, 65439);
        }
      }

      goto LABEL_21;
    }

LABEL_19:
    (a2[2])(*a2, 0, 127);
    goto LABEL_21;
  }

  if (v9 != 107)
  {
    if (v9 != 122)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  (*(*(*(*(v8 + 80) + 48) + 32) + 120))();
LABEL_21:
  for (i = 0; i != 80; i += 8)
  {
    v15 = *(v8 + i);
    if (v15)
    {
      v16 = *(v8 + 143);
      if (i == 32 && v16 == 106)
      {
        v17 = 3;
      }

      else if ((v16 == 122 || v16 == 99) && i == 24 && !*(v8 + 108))
      {
        v17 = 2;
      }

      else
      {
        v17 = 4 * (i == 56);
      }

      sub_19524F140(v15, a2, a3, v17, a4);
    }
  }

  (a2[4])(*a2, 14);
  (a2[4])(*a2, 15);
  (a2[4])(*a2, 27);
  v18 = a2[5];
  v19 = *a2;

  return v18(v19, 128, 159);
}

uint64_t sub_19523B7B4(void *a1, int *a2)
{
  v44 = 0;
  v6 = a1 + 1;
  result = a1[1];
  v5 = v6[1];
  v43 = v5;
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(result + 16);
  v10 = (v9 + 92);
  if (*(v9 + 104))
  {
LABEL_42:
    v21 = *(result + 64);
    result = sub_19523C934(result, &v43, v7, 1, a2);
    if (*(v9 + 108))
    {
      v22 = *a2;
    }

    else
    {
      v22 = *a2;
      if (!*(v9 + 104))
      {
        if (v22 <= 0)
        {
          if (!*(v9 + 112))
          {
            goto LABEL_46;
          }

          *a2 = 18;
          v23 = a1[1];
          *(v23 + 284) = 2;
          *(v23 + 64) = v21 + v43 - v5;
        }

LABEL_52:
        a1[4] = v8;
        a1[2] = v43;
        *(v9 + 112) = 0;
        return result;
      }
    }

    if (v22 < 1)
    {
LABEL_46:
      if (!*(v9 + 104))
      {
        *(v9 + 112) = 1;
      }

      v5 = v43;
      goto LABEL_9;
    }

    goto LABEL_52;
  }

  v11 = *(result + 64) != 1 || v5 >= v7;
  if (v11 || v8 >= a1[5])
  {
    goto LABEL_9;
  }

  v12 = *(result + 65);
  *(result + 64) = 0;
  LOBYTE(v13) = v10[*(v9 + 96)];
  while (2)
  {
    v25 = *v5;
    LODWORD(v17) = v25 | (v12 << 8);
    if (((v12 - 33) & 0xFEu) <= 0x5D && (v25 - 33) <= 0x5Du)
    {
      v43 = ++v5;
      if (v13 == 7)
      {
        v26 = v17 + 32896;
      }

      else
      {
        v26 = v25 | (v12 << 8);
        if (v13 == 4)
        {
          if (v25 < 0x60)
          {
            v27 = 31;
          }

          else
          {
            v27 = 32;
          }

          if ((v12 & 1) == 0)
          {
            v27 = 126;
          }

          v28 = (v12 & 1) + v12;
          v29 = v28;
          v30 = v28;
          LOBYTE(v26) = v25 + v27;
          v28 >>= 1;
          v31 = v28 + 112;
          LOBYTE(v12) = v28 - 80;
          if (v30 < 0)
          {
            LOBYTE(v12) = 0;
          }

          if (v29 < 0x60)
          {
            LOBYTE(v12) = v31;
          }

          goto LABEL_102;
        }
      }

      v12 = v26 >> 8;
LABEL_102:
      LOBYTE(v44) = v12;
      HIBYTE(v44) = v26;
      result = sub_1952505B4(*(v9 + 8 * v13), &v44, 2);
      goto LABEL_103;
    }

    result = 0xFFFFLL;
    if ((v25 - 33) >= 0x5Eu && (v25 <= 0x1F ? (v32 = ((1 << v25) & 0x800C000) == 0) : (v32 = 1), v32))
    {
      v43 = ++v5;
      LODWORD(v17) = v17 + 0x10000;
    }

    else
    {
      LODWORD(v17) = v12;
    }

LABEL_103:
    while (2)
    {
      while (2)
      {
        while (2)
        {
          while (2)
          {
            if (result <= 0xFFFD)
            {
              v33 = a1[6];
              if (v33)
              {
                if (v17 >= 0x100)
                {
                  v34 = -2;
                }

                else
                {
                  v34 = -1;
                }

                *(v33 + 2 * (v8 - a1[4])) = v34 + v5 - *(a1 + 4);
              }

              *v8++ = result;
              goto LABEL_9;
            }

            if (result < 0x10000)
            {
              v41 = a1[1];
              if (v17 < 0x100)
              {
                v42 = 1;
              }

              else
              {
                v41[66] = v17;
                v42 = 2;
                LODWORD(v17) = v17 >> 8;
              }

              v41[65] = v17;
              v41[64] = v42;
              if (result == 65534)
              {
                v20 = 10;
              }

              else
              {
                v20 = 12;
              }

LABEL_38:
              *a2 = v20;
              goto LABEL_39;
            }

            *v8 = ((result + 67043328) >> 10) - 10240;
            v35 = a1[6];
            if (v35)
            {
              if (v17 >= 0x100)
              {
                v36 = -2;
              }

              else
              {
                v36 = -1;
              }

              v37 = v36 + v5 - *(a1 + 4);
              v38 = a1[4];
              v39 = a1[5];
              *(v35 + 2 * (v8 - v38)) = v37;
              v40 = v8 + 1;
              if ((v8 + 1) < v39)
              {
                *v40 = result & 0x3FF | 0xDC00;
                *(v35 + 2 * (v40 - v38)) = v37;
LABEL_119:
                v8 += 2;
                goto LABEL_9;
              }
            }

            else
            {
              v40 = v8 + 1;
              if ((v8 + 1) < a1[5])
              {
                *v40 = result & 0x3FF | 0xDC00;
                goto LABEL_119;
              }
            }

            v14 = a1[1];
            v15 = *(v14 + 93);
            *(v14 + 93) = v15 + 1;
            *(v14 + 2 * v15 + 144) = result & 0x3FF | 0xDC00;
            v8 = v40;
LABEL_9:
            if (v5 >= v7)
            {
              goto LABEL_39;
            }

            v16 = v7 - v5;
            while (1)
            {
              if (v8 >= a1[5])
              {
                v20 = 15;
                goto LABEL_38;
              }

              v17 = *v5;
              if (*v5 > 0xEu)
              {
                break;
              }

              if (v17 != 14)
              {
                if (v17 != 10 && v17 != 13)
                {
                  goto LABEL_57;
                }

                v43 = v5 + 1;
                v13 = *v10;
                if (*v10 && v13 != 3)
                {
                  v13 = 0;
                  *v10 = 0;
                }

                *(v9 + 94) = 0;
                *(v9 + 96) = 0;
                *(v9 + 112) = 0;
                goto LABEL_30;
              }

              if (*(v9 + 108) != 3)
              {
                v43 = ++v5;
                *(v9 + 112) = 0;
                result = 0xFFFFLL;
                LODWORD(v17) = 14;
                goto LABEL_103;
              }

              *(v9 + 93) = 8;
              v18 = 1;
LABEL_19:
              *(v9 + 96) = v18;
              ++v5;
              if (!--v16)
              {
                v5 = v7;
                goto LABEL_39;
              }
            }

            if (v17 == 15)
            {
              if (*(v9 + 108) != 3)
              {
                v43 = ++v5;
                *(v9 + 112) = 0;
                result = 0xFFFFLL;
                LODWORD(v17) = 15;
                continue;
              }

              v18 = 0;
              goto LABEL_19;
            }

            break;
          }

          if (v17 == 27)
          {
            v43 = v5;
            result = a1[1];
            goto LABEL_42;
          }

LABEL_57:
          v43 = v5 + 1;
          *(v9 + 112) = 0;
          v24 = *(v9 + 96);
          v13 = v10[v24];
          if ((v17 - 161) <= 0x3E && *(v9 + 108) == 4 && (v13 & 0xFC) != 4)
          {
            result = (v17 + 65216);
            if (v24 >= 2)
            {
              *(v9 + 96) = *(v9 + 97);
            }

            ++v5;
            continue;
          }

          break;
        }

LABEL_30:
        ++v5;
        if (v13 <= 1)
        {
          if (v13)
          {
            *(v9 + 96) = *(v9 + 97);
            if ((v17 & 0x80u) != 0)
            {
              result = 0xFFFFLL;
            }

            else
            {
              result = v17 | 0x80;
            }
          }

          else if ((v17 & 0x80u) != 0)
          {
            result = 0xFFFFLL;
          }

          else
          {
            result = v17;
          }

          continue;
        }

        break;
      }

      switch(v13)
      {
        case 2:
          result = 0xFFFFLL;
          if ((v17 & 0x80) == 0)
          {
            result = *(*(*(v9 + 16) + 56) + 4 * v17 + 512);
          }

          *(v9 + 96) = *(v9 + 97);
          continue;
        case 3:
          result = 0xFFFFLL;
          if ((v17 & 0x80) != 0)
          {
            continue;
          }

          if (v17 >= 0x5C)
          {
            if (v17 == 126)
            {
              result = 8254;
              continue;
            }

            if (v17 == 92)
            {
              result = 165;
              continue;
            }
          }

          result = v17;
          continue;
        case 8:
          if ((v17 - 33) >= 0x3F)
          {
            result = 0xFFFFLL;
          }

          else
          {
            result = (v17 + 65344);
          }

          continue;
      }
    }

    if (v5 < v7)
    {
      v12 = v17;
      continue;
    }

    break;
  }

  *(a1[1] + 65) = v17;
  *(a1[1] + 64) = 1;
LABEL_39:
  a1[4] = v8;
  a1[2] = v5;
  return result;
}

unint64_t sub_19523BD80(unint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v105) = 0;
  v5 = 0;
  v111[1] = *MEMORY[0x1E69E9840];
  v6 = *(result + 16);
  v8 = *(result + 24);
  v9 = *(result + 32);
  v10 = *(result + 40);
  v92 = *(result + 8);
  v7 = v92;
  v93 = result;
  v107 = *(result + 48);
  v111[0] = 0;
  v110 = 0;
  v109 = 0;
  v104 = *(v92 + 16);
  v11 = (v104 + 98);
  LODWORD(v106) = *(v92 + 84);
  v95 = v8;
  v96 = v10;
  if (v106)
  {
    v12 = v9 >= v10;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_6;
  }

LABEL_10:
  if (v6 >= v95)
  {
    *(v7 + 84) = v106;
LABEL_147:
    if (*a2 <= 0 && (*(v104 + 102) || *v11) && *(v93 + 2) && v6 >= v95 && !*(v7 + 84))
    {
      if (*(v104 + 102))
      {
        LOBYTE(v111[0]) = 15;
        *(v104 + 102) = 0;
        v68 = 1;
      }

      else
      {
        v68 = 0;
      }

      if (*v11)
      {
        v87 = v111 | v68;
        *(v87 + 2) = 66;
        *v87 = 10267;
        v68 += 3;
        *v11 = 0;
      }

      v88 = *(v93 + 16);
      v89 = (v6 - v88) >> 1;
      v90 = v89 - 1;
      if (v89 < 1)
      {
        v90 = -1;
      }

      else if ((*(v88 + 2 * v90) & 0xFC00) == 0xDC00 && (v89 == 1 || (*(v88 + 2 * (v89 - 2)) & 0xFC00) == 0xD800))
      {
        v90 = v89 - 2;
      }

      v108 = v9;
      result = sub_195240168(v7, v111, v68, &v108, v96, &v107, v90, a2);
      v9 = v108;
    }

    goto LABEL_192;
  }

  v14 = *v6;
  if ((v14 & 0xFC00) != 0xDC00)
  {
LABEL_139:
    *a2 = 12;
    *(v7 + 84) = v106;
    goto LABEL_192;
  }

  ++v6;
  v106 = (v14 + (v106 << 10) - 56613888);
  *(v7 + 84) = 0;
  while (1)
  {
    if (v106 <= 31 && ((1 << v106) & 0x800C000) != 0)
    {
      goto LABEL_139;
    }

    v99 = v9;
    if (!v105)
    {
      v16 = 0;
      v17 = *(v104 + 108);
      v18 = word_1954797A4[v17];
      if ((v17 - 3) <= 1)
      {
        LOBYTE(v109) = 8;
        v16 = 1;
      }

      v19 = *(v104 + 98);
      v105 = v16 + 1;
      *(&v109 | v16) = v19;
      v20 = v18 & ~(1 << v19) & 0xFFFFFEFF;
      v21 = *(v104 + 100);
      if (v21)
      {
        *(&v109 | v105) = v21;
        v20 &= ~(1 << v21);
        LODWORD(v105) = v16 | 2;
      }

      for (i = 0; i != 9; ++i)
      {
        v23 = dword_195479B1C[i];
        if (((1 << v23) & v20) != 0)
        {
          *(&v109 + v105) = v23;
          v20 &= ~(1 << v23);
          LODWORD(v105) = v105 + 1;
        }
      }
    }

    if (v105 < 1)
    {
LABEL_138:
      *a2 = 10;
      *(v7 + 84) = v106;
      v9 = v99;
      goto LABEL_192;
    }

    v98 = v6;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = *(v7 + 63);
    v103 = v106 >> 10;
    v28 = (v106 >> 4) & 0x3F;
    v29 = v106 & 0xF;
    v30 = (0x10000 << (v106 & 0xF));
    v97 = v106 - 983040;
    v31 = (v106 - 65377);
    v32 = v106 - 160;
    v33 = v105;
    v34 = &v109;
    v35 = 1;
    v100 = v106 - 57344;
    do
    {
      LODWORD(v108) = 0;
      v37 = *v34++;
      v36 = v37;
      v38 = v37;
      if (v37 > 2u)
      {
        if (v38 == 3)
        {
          if (v106 <= 0x7F)
          {
            if (v106 != 92 && v106 != 126)
            {
              v5 = v106;
              goto LABEL_155;
            }

            goto LABEL_135;
          }

          if (v106 == 165)
          {
            v5 = 92;
LABEL_155:
            v6 = v98;
            LODWORD(v25) = 0;
            LOBYTE(v38) = 3;
            goto LABEL_156;
          }

          if (v106 != 8254)
          {
            goto LABEL_135;
          }

          LODWORD(v25) = 0;
          v5 = 126;
LABEL_140:
          v6 = v98;
LABEL_156:
          v11 = (v104 + 98);
          v7 = v92;
          goto LABEL_157;
        }

        if (v38 != 4)
        {
          if (v38 != 8)
          {
            goto LABEL_50;
          }

          if (v31 > 0x3E)
          {
            goto LABEL_135;
          }

          v42 = *(v104 + 108);
          if (v42 == 4)
          {
            LODWORD(v25) = 0;
            v11 = (v104 + 98);
            v7 = v92;
            if ((*(v104 + 98) & 0xFC) == 4)
            {
              LOBYTE(v38) = 3;
            }

            else
            {
              LOBYTE(v38) = *(v104 + 98);
            }

            v5 = (v106 - 65216);
            v6 = v98;
            goto LABEL_157;
          }

          if (v42 != 3)
          {
            goto LABEL_135;
          }

          LOBYTE(v38) = 8;
          *(v104 + 99) = 8;
          LODWORD(v25) = 1;
          v5 = (v106 - 65344);
          goto LABEL_140;
        }

        v45 = *(v104 + 32);
        if (v106 >= 0x10000 && (*(v45 + 253) & 1) == 0)
        {
          goto LABEL_87;
        }

        v46 = *(*(v45 + 232) + 2 * (v29 & 0xFFF0000F | (16 * *(*(v45 + 88) + 4 * (v28 + *(*(v45 + 88) + 2 * v103))))));
        if (v46 >= 0x100)
        {
          result = 4294967294;
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((*(*(v45 + 88) + 4 * (v28 + *(*(v45 + 88) + 2 * v103))) & v30) != 0)
        {
          if (v46 >= 0x100)
          {
            v47 = 2;
            goto LABEL_122;
          }

          goto LABEL_90;
        }

        if ((v27 || v100 >> 8 < 0x19 || !(v97 >> 17)) && *(*(v45 + 232) + 2 * (v29 & 0xFFF0000F | (16 * *(*(v45 + 88) + 4 * (v28 + *(*(v45 + 88) + 2 * v103)))))))
        {
          LODWORD(v108) = *(*(v45 + 232) + 2 * (v29 & 0xFFF0000F | (16 * *(*(v45 + 88) + 4 * (v28 + *(*(v45 + 88) + 2 * v103))))));
        }

        else
        {
LABEL_87:
          result = *(v45 + 288);
          if (!result)
          {
LABEL_90:
            v59 = v24 == 0;
LABEL_106:
            if (v59 && v27)
            {
              if (v31 > 0x3E)
              {
                v24 = 0;
              }

              else
              {
                v27 = 0;
                v25 = 0;
                v5 = word_195479B40[v31];
                v24 = 4294967294;
                v26 = 4;
              }
            }

            goto LABEL_135;
          }

          v102 = v27;
          v52 = v5;
          v53 = v25;
          v54 = v26;
          v55 = v28;
          v56 = v30;
          v57 = v33;
          v58 = v24;
          result = sub_1952429FC(result, v106, &v108, v27);
          v24 = v58;
          v33 = v57;
          v32 = v106 - 160;
          v31 = (v106 - 65377);
          v27 = v102;
          v30 = v56;
          v28 = v55;
          v26 = v54;
          v25 = v53;
          v5 = v52;
          if (result == 2)
          {
            v47 = 2;
            goto LABEL_121;
          }
        }

        v59 = v24 == 0;
        if (result == -2 && v24 == 0)
        {
          v47 = 4294967294;
LABEL_121:
          v46 = v108;
LABEL_122:
          if (v46 <= 0xEFFC)
          {
            v27 = 0;
            v25 = 0;
            if ((v46 & 0xFF00) >= 0x9F01)
            {
              v64 = -45056;
            }

            else
            {
              v64 = -28672;
            }

            v65 = 2 * (v64 + (v46 & 0xFF00));
            if (v46 >= 0x7Fu)
            {
              v66 = -32;
            }

            else
            {
              v66 = -31;
            }

            if (v46 >= 0x9Fu)
            {
              v67 = -126;
            }

            else
            {
              v65 -= 256;
              v67 = v66;
            }

            v5 = v65 | (v67 + v46);
            v26 = 4;
            v24 = v47;
          }

          goto LABEL_135;
        }

        goto LABEL_106;
      }

      switch(v38)
      {
        case 0:
          if (v106 >= 128)
          {
            goto LABEL_135;
          }

          LODWORD(v25) = 0;
          v5 = v106;
          goto LABEL_140;
        case 1:
          if (v32 >= 0x60)
          {
            goto LABEL_135;
          }

          LODWORD(v25) = 2;
          v6 = v98;
          v11 = (v104 + 98);
          v7 = v92;
          v5 = (v106 - 128);
LABEL_157:
          LODWORD(v24) = 1;
          LOBYTE(v26) = v38;
          goto LABEL_158;
        case 2:
          v39 = *(v104 + 16);
          if (v106 < 0x10000 || (*(v39 + 253) & 1) != 0)
          {
            v40 = *(*(v39 + 232) + 2 * (v29 + *(*(v39 + 88) + 2 * (v28 + *(*(v39 + 88) + 2 * v103)))));
            if (v40 <= 0xEFF)
            {
              if (v27)
              {
                if (v40 <= 0x7FF)
                {
                  goto LABEL_135;
                }
              }

              else if (v40 < 0xC00)
              {
                v27 = 0;
                goto LABEL_135;
              }

              v41 = 0xFFFFFFFFLL;
            }

            else
            {
              v41 = 1;
            }

            v63 = !v24 || v40 > 0xEFF;
            if (v63 && v40 - 160 <= 0x5F)
            {
              v27 = 0;
              v5 = v40 - 128;
              v26 = 2;
              v25 = 2;
              goto LABEL_119;
            }
          }

          goto LABEL_135;
      }

LABEL_50:
      v43 = *(v104 + 8 * v36);
      if (v106 < 0x10000 || (*(v43 + 253) & 1) != 0)
      {
        v44 = *(*(v43 + 232) + 2 * (v29 & 0xFFF0000F | (16 * *(*(v43 + 88) + 4 * (v28 + *(*(v43 + 88) + 2 * v103))))));
        if (v44 >= 0x100)
        {
          result = 4294967294;
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((*(*(v43 + 88) + 4 * (v28 + *(*(v43 + 88) + 2 * v103))) & v30) != 0)
        {
          LODWORD(v108) = *(*(v43 + 232) + 2 * (v29 & 0xFFF0000F | (16 * *(*(v43 + 88) + 4 * (v28 + *(*(v43 + 88) + 2 * v103))))));
          if (v44 < 0x100)
          {
            goto LABEL_135;
          }

          goto LABEL_81;
        }

        if ((v27 || v100 >> 8 < 0x19 || !(v97 >> 17)) && *(*(v43 + 232) + 2 * (v29 & 0xFFF0000F | (16 * *(*(v43 + 88) + 4 * (v28 + *(*(v43 + 88) + 2 * v103)))))))
        {
          LODWORD(v108) = *(*(v43 + 232) + 2 * (v29 & 0xFFF0000F | (16 * *(*(v43 + 88) + 4 * (v28 + *(*(v43 + 88) + 2 * v103))))));
LABEL_91:
          if (result != -2 || v24 != 0)
          {
            goto LABEL_135;
          }

          v41 = 4294967294;
          goto LABEL_97;
        }
      }

      result = *(v43 + 288);
      if (!result)
      {
        goto LABEL_135;
      }

      v101 = v27;
      v48 = v25;
      v49 = v28;
      v50 = v29;
      v51 = v30;
      v94 = v24;
      result = sub_1952429FC(result, v106, &v108, v27);
      v24 = v94;
      v32 = v106 - 160;
      v31 = (v106 - 65377);
      v27 = v101;
      v30 = v51;
      v29 = v50;
      v28 = v49;
      v25 = v48;
      if (result != 2)
      {
        goto LABEL_91;
      }

LABEL_81:
      v41 = 2;
LABEL_97:
      v61 = v108;
      if (v38 != 7 || ((v108 + 24159) & 0xFFFEu) <= 0x5D5D && ((v108 + 95) & 0xFEu) <= 0x5D && (v61 = (v108 - 32896), v108 != 32896))
      {
        v27 = 0;
        v25 = 0;
        v5 = v61;
        v26 = v38;
LABEL_119:
        v24 = v41;
      }

LABEL_135:
      if (v35 >= v33)
      {
        break;
      }

      ++v35;
    }

    while (v24 < 1);
    v6 = v98;
    v11 = (v104 + 98);
    v7 = v92;
    if (!v24)
    {
      goto LABEL_138;
    }

LABEL_158:
    v69 = 0;
    if (v24 >= 0)
    {
      v70 = v24;
    }

    else
    {
      v70 = -v24;
    }

    v71 = *(v104 + 102);
    if (v71 == 1 && !v25)
    {
      v71 = 0;
      LOBYTE(v111[0]) = 15;
      *(v104 + 102) = 0;
      v69 = 1;
    }

    if (v11[v25] != v26)
    {
      v72 = byte_195479BBE[v26];
      v73 = v26;
      v74 = &unk_195479BC7 + 6 * v26;
      v75 = byte_195479BBE[v26];
      v76 = v25;
      result = memcpy((v111 | v69), v74, v75);
      LODWORD(v25) = v76;
      LODWORD(v105) = 0;
      v69 += v72;
      v11[v76] = v73;
      v71 = *(v104 + 102);
    }

    if (v25 != v71)
    {
      v77 = v69 + 1;
      if (v25 == 1)
      {
        *(v111 + v69) = 14;
        *(v104 + 102) = 1;
        ++v69;
      }

      else
      {
        *(v111 + v69) = 27;
        v69 += 2;
        *(v111 + v77) = 78;
      }
    }

    v78 = 1;
    v79 = v69;
    if (v70 != 1)
    {
      v79 = v69 + 1;
      *(v111 + v69) = BYTE1(v5);
      v78 = 2;
    }

    v80 = v69 + v78;
    *(v111 + v79) = v5;
    if (v106 == 13 || v106 == 10)
    {
      LODWORD(v105) = 0;
      *(v104 + 100) = 0;
    }

    if (v80 != 2)
    {
      break;
    }

    if ((v99 + 1) > v96)
    {
      goto LABEL_180;
    }

    *v99 = v111[0];
    v84 = v107;
    if (v107)
    {
      if (v106 >= 0x10000)
      {
        v85 = -2;
      }

      else
      {
        v85 = -1;
      }

      v86 = ((v6 - *(v93 + 16)) >> 1) + v85;
      *v107 = v86;
      v107 = v84 + 2;
      v84[1] = v86;
    }

    v9 = v99 + 1;
LABEL_6:
    if (v6 >= v95)
    {
      goto LABEL_147;
    }

    if (v9 >= v96)
    {
      *a2 = 15;
      goto LABEL_192;
    }

    v13 = *v6++;
    v106 = v13;
    if ((v13 & 0xF800) == 0xD800)
    {
      if ((v106 & 0x400) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_139;
    }
  }

  if (v80 == 1)
  {
    *v99 = v111[0];
    v9 = (v99 + 1);
    v81 = v107;
    if (v107)
    {
      *v107 = ((v6 - *(v93 + 16)) >> 1) - 1;
      v107 = v81 + 1;
    }

    goto LABEL_6;
  }

LABEL_180:
  v82 = (v6 - *(v93 + 16)) >> 1;
  if (v106 >= 0x10000)
  {
    v83 = -2;
  }

  else
  {
    v83 = -1;
  }

  v108 = v99;
  result = sub_195240168(v7, v111, v80, &v108, v96, &v107, v82 + v83, a2);
  v9 = v108;
  if (*a2 < 1)
  {
    goto LABEL_6;
  }

LABEL_192:
  *(v93 + 16) = v6;
  *(v93 + 32) = v9;
  return result;
}

unint64_t sub_19523C934(unint64_t result, unsigned __int8 **a2, unint64_t a3, int a4, int *a5)
{
  v5 = *a2;
  if (*a2 >= a3)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + 16);
  v9 = *(result + 64);
  v10 = *(v8 + 104);
  v11 = result + 65;
  do
  {
    *a2 = v5 + 1;
    v12 = *v5;
    v13 = *(v7 + 64);
    *(v7 + 64) = v13 + 1;
    *(v11 + v13) = v12;
    result = byte_195479A1A[v12];
    if (!byte_195479A1A[v12])
    {
LABEL_15:
      v10 = 0;
LABEL_16:
      *(v8 + 104) = v10;
LABEL_17:
      *a5 = 18;
LABEL_18:
      v19 = *(v7 + 64);
      if (v19 >= 2)
      {
        v20 = (v19 - v9);
        if (v20 >= (v19 - 1))
        {
          v21 = (v19 - 1);
        }

        else
        {
          *(v7 + 282) = 1 - v9;
          result = memcpy((v7 + 250), (v7 + 66), -(1 - v9));
          v21 = v20;
        }

        *a2 -= v21;
        *(v7 + 64) = 1;
      }

      return result;
    }

    v14 = 0;
    v15 = 0;
    v16 = 74;
    v10 = result + 32 * v10;
    while (1)
    {
      result = v14;
      v14 = ((v15 + v16) >> 1);
      if (v14 == result)
      {
        goto LABEL_15;
      }

      v17 = dword_1954798A8[v14];
      result = ((v15 + v16) >> 1);
      if (v17 <= v10)
      {
        v15 = (v15 + v16) >> 1;
        result = v16;
        if (v17 >= v10)
        {
          break;
        }
      }

      v16 = result;
      if (result == v15)
      {
        goto LABEL_15;
      }
    }

    v18 = byte_1954799D0[v14];
    if ((v18 - 1) < 2)
    {
      *(v8 + 104) = 0;
      goto LABEL_25;
    }

    if (v18 == 255)
    {
      goto LABEL_16;
    }

    v5 = *a2;
  }

  while (*a2 < a3);
  *(v8 + 104) = v10;
  if (!v18)
  {
    return result;
  }

LABEL_25:
  if (a4 == 3)
  {
    v22 = byte_19547985E[v14];
    if (v22 <= 0x10)
    {
      switch(v22)
      {
        case 1u:
          goto LABEL_59;
        case 2u:
          if (!*(v8 + 108))
          {
            goto LABEL_64;
          }

          goto LABEL_59;
        case 0x10u:
LABEL_42:
          if (!*(v8 + 94))
          {
            goto LABEL_17;
          }

          v24 = *(v8 + 96);
          if (v24 <= 1)
          {
            *(v8 + 97) = v24;
          }

          v25 = 2;
LABEL_57:
          *(v8 + 96) = v25;
          goto LABEL_60;
      }
    }

    else
    {
      if (byte_19547985E[v14] <= 0x21u)
      {
        if (v22 == 17)
        {
          if (!*(v8 + 95))
          {
            goto LABEL_17;
          }

          v26 = *(v8 + 96);
          if (v26 <= 1)
          {
            *(v8 + 97) = v26;
          }

          v25 = 3;
          goto LABEL_57;
        }

        if (v22 != 33)
        {
          goto LABEL_50;
        }

LABEL_59:
        *(v8 + 93) = v22;
        goto LABEL_60;
      }

      if (v22 == 34)
      {
        goto LABEL_52;
      }

      if (v22 == 255)
      {
        goto LABEL_64;
      }
    }

LABEL_50:
    if (!*(v8 + 108))
    {
      goto LABEL_64;
    }

    *(v8 + 95) = v22;
    goto LABEL_60;
  }

  if (a4 != 2)
  {
    v23 = byte_195479814[v14];
    LOBYTE(v22) = v23;
    if (v23 - 1 >= 2)
    {
      if (v23 == 255)
      {
        goto LABEL_64;
      }

      if (v23 != 16)
      {
        if (((word_1954797A4[*(v8 + 108)] >> v23) & 1) == 0)
        {
          goto LABEL_64;
        }

        *(v8 + 92) = v23;
        goto LABEL_60;
      }

      goto LABEL_42;
    }

    if (((word_1954797A4[*(v8 + 108)] >> v23) & 1) == 0)
    {
LABEL_64:
      *a5 = 19;
      goto LABEL_65;
    }

LABEL_52:
    *(v8 + 94) = v22;
    goto LABEL_60;
  }

  if (v14 != 48)
  {
    goto LABEL_64;
  }

LABEL_60:
  v27 = *a5;
  if (*a5 <= 0)
  {
    *(v7 + 64) = 0;
    return result;
  }

  if (v27 == 18)
  {
    goto LABEL_18;
  }

  if (v27 == 19)
  {
LABEL_65:
    *(v7 + 284) = 0;
  }

  return result;
}

uint64_t sub_19523CC34(uint64_t __src, int *a2)
{
  v3 = __src;
  v43 = 0;
  v6 = *(__src + 16);
  v4 = *(__src + 24);
  v5 = (__src + 16);
  v42 = v6;
  v7 = *(__src + 8);
  v8 = *(v7 + 16);
  if (*(v8 + 108) != 1)
  {
    v10 = *(__src + 32);
    v11 = *(*(v8 + 80) + 48);
    if (*(v8 + 104))
    {
      goto LABEL_55;
    }

    v12 = *(v7 + 64) != 1 || v6 >= v4;
    if (v12 || v10 >= *(__src + 40))
    {
      goto LABEL_40;
    }

    LOWORD(v13) = *(v7 + 65);
    *(v7 + 64) = 0;
LABEL_59:
    v33 = *v6;
    v34 = v33 - 33;
    v35 = v33 | (v13 << 8);
    if (((v13 - 33) & 0xFEu) > 0x5D || v34 > 0x5D)
    {
      __src = 0xFFFFLL;
      if (v34 < 0x5E || v33 <= 0x1F && ((1 << v33) & 0x800C000) != 0)
      {
        goto LABEL_67;
      }

      v42 = ++v6;
    }

    else
    {
      v42 = ++v6;
      LOBYTE(v43) = v13 ^ 0x80;
      HIBYTE(v43) = v33 | 0x80;
      __src = sub_1952505B4(v11, &v43, 2);
    }

    LOWORD(v13) = v35;
LABEL_67:
    if (__src > 65533)
    {
      v39 = *(v3 + 8);
      if (v13 < 0x100u)
      {
        v40 = 1;
      }

      else
      {
        v39[66] = v13;
        LOBYTE(v13) = BYTE1(v13);
        v40 = 2;
      }

      v39[65] = v13;
      v39[64] = v40;
      if (__src == 65534)
      {
        v41 = 10;
      }

      else
      {
        v41 = 12;
      }

      *a2 = v41;
      v6 = v42;
      goto LABEL_51;
    }

    v36 = *(v3 + 48);
    if (v36)
    {
      if (v13 >= 0x100u)
      {
        v37 = -2;
      }

      else
      {
        v37 = -1;
      }

      *(v36 + 2 * (v10 - *(v3 + 32))) = v37 + v6 - *(v3 + 16);
    }

    *v10++ = __src;
    while (1)
    {
LABEL_40:
      if (v6 >= v4)
      {
        goto LABEL_51;
      }

      v30 = *(v3 + 40);
      v31 = v4 - v6;
      v32 = v6;
      while (1)
      {
        if (v10 >= v30)
        {
          *a2 = 15;
          goto LABEL_51;
        }

        v13 = *v32;
        if (v13 != 14)
        {
          break;
        }

        *(v8 + 96) = 1;
        *(v8 + 112) = 1;
LABEL_48:
        ++v32;
        if (!--v31)
        {
          v6 = v4;
          goto LABEL_51;
        }
      }

      if (v13 == 15)
      {
        break;
      }

      if (v13 != 27)
      {
        v6 = v32 + 1;
        v42 = v32 + 1;
        *(v8 + 112) = 0;
        if (*(v8 + 96) != 1)
        {
          __src = 0xFFFFLL;
          if ((v13 & 0x80000000) == 0)
          {
            __src = sub_1952505B4(v11, v32, 1);
          }

          goto LABEL_67;
        }

        if (v6 >= v4)
        {
          *(*(v3 + 8) + 65) = v13;
          *(*(v3 + 8) + 64) = 1;
          goto LABEL_51;
        }

        goto LABEL_59;
      }

      v42 = v32;
      v7 = *(v3 + 8);
LABEL_55:
      *(v8 + 112) = 0;
      __src = sub_19523C934(v7, &v42, v4, 2, a2);
      v6 = v42;
      if (*a2 >= 1)
      {
LABEL_51:
        *(v3 + 32) = v10;
        *(v3 + 16) = v6;
        return __src;
      }
    }

    *(v8 + 96) = 0;
    if (*(v8 + 112))
    {
      *(v8 + 112) = 0;
      *a2 = 18;
      v38 = *(v3 + 8);
      *(v38 + 284) = 2;
      *(v38 + 65) = 15;
      *(*(v3 + 8) + 64) = 1;
      *(v3 + 32) = v10;
      *(v3 + 16) = v32 + 1;
      return __src;
    }

    goto LABEL_48;
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  __dst = 0u;
  if (*__src >= 0x38u)
  {
    v9 = 56;
  }

  else
  {
    v9 = *__src;
  }

  __src = memcpy(&__dst, __src, v9);
  LOWORD(__dst) = v9;
  *(&__dst + 1) = *(v8 + 80);
  if (*(v8 + 104))
  {
    goto LABEL_39;
  }

  while (1)
  {
    v14 = *a2;
    if (*a2 > 0)
    {
      return __src;
    }

    v15 = *(v3 + 16);
    v16 = *(v3 + 24);
    if (v15 >= v16)
    {
      return __src;
    }

    *&v45 = *(v3 + 16);
    v17 = v15;
    while (*v17 != 27)
    {
      if (++v17 == v16)
      {
        v17 = v16;
        break;
      }
    }

    *(&v45 + 1) = v17;
    if (v15 != v17)
    {
      v18 = *(v3 + 8);
      v19 = *(v18 + 64);
      v20 = *(&__dst + 1);
      if (v19 >= 1)
      {
        memcpy((*(&__dst + 1) + 65), (v18 + 65), v19);
        LOBYTE(v19) = *(*(v3 + 8) + 64);
      }

      *(v20 + 64) = v19;
      __src = sub_19524F568(&__dst, a2);
      v21 = *(v3 + 48);
      if (v21)
      {
        if (v6 != *v5)
        {
          v22 = *(v3 + 32);
          v23 = v46;
          if (v22 < v46)
          {
            v24 = *v5 - v6;
            do
            {
              if ((*v21 & 0x80000000) == 0)
              {
                *v21 += v24;
              }

              ++v21;
              v22 += 2;
            }

            while (v22 < v23);
          }
        }
      }

      v25 = *(&__dst + 1);
      *(v3 + 16) = v45;
      v26 = v47;
      *(v3 + 32) = v46;
      *(v3 + 48) = v26;
      v27 = v25[64];
      if (v27 >= 1)
      {
        __src = memcpy((*(v3 + 8) + 65), v25 + 65, v27);
        LOBYTE(v27) = v25[64];
      }

      v28 = *(v3 + 8);
      v28[64] = v27;
      v14 = *a2;
      if (*a2 == 15)
      {
        v29 = v25[93];
        if (v29 >= 1)
        {
          __src = memcpy(v28 + 144, v25 + 144, v29);
          LOBYTE(v29) = v25[93];
          v28 = *(v3 + 8);
          v14 = *a2;
        }

        v28[93] = v29;
        v25[93] = 0;
      }
    }

    if (v14 > 0)
    {
      return __src;
    }

    v4 = *(v3 + 24);
    if (*(v3 + 16) == v4)
    {
      return __src;
    }

    v7 = *(v3 + 8);
LABEL_39:
    __src = sub_19523C934(v7, v5, v4, 2, a2);
  }
}

uint64_t sub_19523D10C(uint64_t result, int *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = result;
  v7 = *(result + 24);
  v6 = *(result + 32);
  v8 = *(result + 40);
  v57 = *(result + 48);
  v56 = 0;
  v9 = *(result + 8);
  v10 = *(result + 16);
  v11 = *(v9 + 16);
  v12 = *(v11 + 80);
  if (*(v11 + 108) == 1)
  {
    *(result + 8) = v12;
    *(v12 + 84) = *(v9 + 84);
    result = sub_195250778(result, a2);
    v13 = *(v11 + 80);
    *(v9 + 84) = *(v13 + 84);
    if (*v4 == 15)
    {
      v14 = *(v13 + 91);
      if (v14 >= 1)
      {
        result = memcpy((v9 + 104), (v13 + 104), v14);
        v13 = *(v11 + 80);
        LOBYTE(v14) = *(v13 + 91);
      }

      *(v9 + 91) = v14;
      *(v13 + 91) = 0;
    }

    *(v5 + 8) = v9;
    return result;
  }

  v16 = *(v9 + 80);
  LODWORD(v15) = *(v9 + 84);
  if (v15)
  {
    v17 = v6 >= v8;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
LABEL_68:
    if (v10 >= v7)
    {
      v49 = 0;
    }

    else
    {
      v46 = *v10;
      v47 = (v46 & 0xFC00) == 56320;
      v48 = v46 + (v15 << 10) - 56613888;
      if ((v46 & 0xFC00) == 0xDC00)
      {
        v49 = 10;
      }

      else
      {
        v49 = 12;
      }

      if (v47)
      {
        LODWORD(v15) = v48;
      }

      v10 += v47;
    }

    goto LABEL_79;
  }

  if (v10 < v7)
  {
    v18 = *(v12 + 48);
    v19 = v10 + 1;
    v20 = *(v9 + 63);
    v21 = *(v9 + 80);
    while (1)
    {
      LOBYTE(v16) = v21;
      v22 = v10;
      v56 = 0xFFFF;
      if (v6 >= *(v5 + 40))
      {
        *v4 = 15;
        goto LABEL_81;
      }

      ++v10;
      v15 = *v22;
      if (v15 <= 0x1F && ((1 << v15) & 0x800C000) != 0)
      {
        *v4 = 12;
        *(*(v5 + 8) + 84) = v15;
        ++v22;
        goto LABEL_81;
      }

      if (*(v18[29] + 2 * (v15 & 0xF | (16 * *(v18[11] + 4 * (((v15 >> 4) & 0x3F) + *(v18[11] + ((v15 >> 9) & 0x7E))))))) < 0x100u)
      {
        result = 1;
      }

      else
      {
        result = 2;
      }

      if (((*(v18[11] + 4 * (((v15 >> 4) & 0x3F) + *(v18[11] + ((v15 >> 9) & 0x7E)))) >> (v15 & 0xF)) & 0x10000) != 0 || ((v15 - 63744) < 0xFFFFE700 ? (v24 = v20 == 0) : (v24 = 0), !v24 && *(v18[29] + 2 * (v15 & 0xF | (16 * *(v18[11] + 4 * (((v15 >> 4) & 0x3F) + *(v18[11] + ((v15 >> 9) & 0x7E)))))))))
      {
        v56 = *(v18[29] + 2 * (v15 & 0xF | (16 * *(v18[11] + 4 * (((v15 >> 4) & 0x3F) + *(v18[11] + ((v15 >> 9) & 0x7E)))))));
      }

      else
      {
        result = v18[36];
        if (!result)
        {
          goto LABEL_65;
        }

        v39 = *v22;
        v54 = v4;
        v55 = v22;
        v40 = v8;
        v41 = v18;
        v42 = v7;
        v43 = v6;
        result = sub_1952429FC(result, v39, &v56, v20);
        v6 = v43;
        v7 = v42;
        v18 = v41;
        v8 = v40;
        v4 = v54;
        v22 = v55;
        if ((result & 0x80000000) != 0)
        {
          result = -result;
        }
      }

      v25 = result > 2 || result == 0;
      if (v25 || result == 1 && v56 > 0x7F || result == 2 && (((v56 + 24159) & 0xFFFEu) > 0x5D5D || ((v56 + 95) & 0xFEu) >= 0x5E))
      {
LABEL_65:
        v56 = 0xFFFF;
LABEL_66:
        v10 = v22 + 1;
        if ((v15 & 0xF800) == 0xD800)
        {
          if ((v15 & 0x400) == 0)
          {
            goto LABEL_68;
          }

          v49 = 12;
        }

        else
        {
          v49 = 10;
        }

LABEL_79:
        *v4 = v49;
        *(*(v5 + 8) + 84) = v15;
        break;
      }

      if (v56 == 0xFFFF)
      {
        goto LABEL_66;
      }

      v21 = v56 > 0xFF;
      if (v21 != v16)
      {
        v26 = v56 > 0xFF ? 14 : 15;
        *v6++ = v26;
        v27 = v57;
        if (v57)
        {
          *v57 = ((v19 - *(v5 + 16)) >> 1) - 1;
          v57 = v27 + 1;
        }
      }

      v28 = v56;
      if (v56 > 0xFF)
      {
        v30 = (v56 >> 8) ^ 0xFFFFFF80;
        if (v6 < v8)
        {
          *v6 = v30;
          v31 = v6 + 1;
          v32 = v57;
          if (v57)
          {
            *v57 = ((v19 - *(v5 + 16)) >> 1) - 1;
            v57 = v32 + 1;
          }

          v33 = v56 ^ 0x80;
          if (v31 >= v8)
          {
            v44 = *(v5 + 8);
            v45 = *(v44 + 91);
            *(v44 + 91) = v45 + 1;
            *(v44 + v45 + 104) = v33;
            *v4 = 15;
          }

          else
          {
            v31 = v6 + 2;
            v6[1] = v33;
            v34 = v57;
            if (v57)
            {
              *v57 = ((v19 - *(v5 + 16)) >> 1) - 1;
              v57 = v34 + 1;
            }
          }

          v6 = v31;
          goto LABEL_63;
        }

        v35 = *(v5 + 8);
        v36 = *(v35 + 91);
        *(v35 + 91) = v36 + 1;
        *(v35 + v36 + 104) = v30;
        v28 = v56 ^ 0x80;
      }

      else if (v6 < v8)
      {
        *v6++ = v56;
        v29 = v57;
        if (v57)
        {
          *v57 = ((v19 - *(v5 + 16)) >> 1) - 1;
          v57 = v29 + 1;
        }

        goto LABEL_63;
      }

      v37 = *(v5 + 8);
      v38 = *(v37 + 91);
      *(v37 + 91) = v38 + 1;
      *(v37 + v38 + 104) = v28;
      *v4 = 15;
LABEL_63:
      ++v19;
      if (v10 >= v7)
      {
        ++v22;
        LOBYTE(v16) = v21;
        goto LABEL_81;
      }
    }
  }

  v22 = v10;
LABEL_81:
  if (*v4 <= 0 && v16 != 0)
  {
    if (*(v5 + 2))
    {
      if (v22 >= v7)
      {
        result = *(v5 + 8);
        if (!*(result + 84))
        {
          v51 = *(v5 + 16);
          v52 = (v22 - v51) >> 1;
          v53 = v52 - 1;
          if (v52 < 1)
          {
            v53 = -1;
          }

          else if ((*(v51 + 2 * v53) & 0xFC00) == 0xDC00 && (v52 == 1 || (*(v51 + 2 * (v52 - 2)) & 0xFC00) == 0xD800))
          {
            v53 = v52 - 2;
          }

          v58 = v6;
          result = sub_195240168(result, byte_195479C64, 1, &v58, v8, &v57, v53, v4);
          LOBYTE(v16) = 0;
          v6 = v58;
        }
      }
    }
  }

  *(v5 + 16) = v22;
  *(v5 + 32) = v6;
  *(*(v5 + 8) + 80) = v16;
  return result;
}