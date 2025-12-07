icu::UnicodeString *icu::TimeZoneFormat::formatOffsetLocalizedGMT(UChar **this, int a2, int a3, icu::UnicodeString *a4, UErrorCode *a5)
{
  if (*a5 >= 1)
  {
    icu::UnicodeString::setToBogus(a4);
    return a4;
  }

  if ((a2 - 86400000) <= 0xF5B34800)
  {
    icu::UnicodeString::setToBogus(a4);
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return a4;
  }

  if (!a2)
  {
    icu::UnicodeString::copyFrom(a4, this + 133, 0);
    return a4;
  }

  if (a2 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = -a2;
  }

  v10 = v9 / 0x36EE80;
  v11 = v9 % 0x36EE80;
  v12 = v11 / 0xEA60;
  v13 = v11 % 0xEA60;
  if (a2 < 0)
  {
    if (v13 > 0x3E7)
    {
      v15 = 1288;
      goto LABEL_26;
    }

    v14 = v11 >> 5 >= 0x753 || a3 == 0;
    v15 = 1280;
    v16 = 1304;
  }

  else
  {
    if (v13 > 0x3E7)
    {
      v15 = 1272;
      goto LABEL_26;
    }

    v14 = v11 >> 5 >= 0x753 || a3 == 0;
    v15 = 1264;
    v16 = 1296;
  }

  if (!v14)
  {
    v15 = v16;
  }

LABEL_26:
  v17 = *(this + v15);
  icu::UnicodeString::copyFrom(a4, this + 142, 0);
  if (*(v17 + 2) >= 1)
  {
    v18 = 0;
    v19 = v13 / 0x3E8u;
    if (a3)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    do
    {
      v21 = icu::UVector::elementAt(v17, v18);
      v22 = *(v21 + 16);
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          v24 = this;
          v25 = a4;
          v26 = v12;
LABEL_39:
          v23 = 2;
LABEL_40:
          icu::TimeZoneFormat::appendOffsetDigits(v24, v25, v26, v23);
          goto LABEL_41;
        }

        if (v22 == 4)
        {
          v24 = this;
          v25 = a4;
          v26 = v19;
          goto LABEL_39;
        }
      }

      else if (v22)
      {
        if (v22 == 1)
        {
          v23 = v20;
          v24 = this;
          v25 = a4;
          v26 = v10;
          goto LABEL_40;
        }
      }

      else
      {
        icu::UnicodeString::doAppend(a4, *(v21 + 8), 0, 0xFFFFFFFFLL);
      }

LABEL_41:
      ++v18;
    }

    while (v18 < *(v17 + 2));
  }

  v27 = *(this + 604);
  v28 = v27;
  v29 = v27 >> 5;
  if (v28 >= 0)
  {
    v30 = v29;
  }

  else
  {
    v30 = *(this + 303);
  }

  icu::UnicodeString::doAppend(a4, (this + 150), 0, v30);
  return a4;
}

uint64_t icu::TimeZoneFormat::appendOffsetDigits(icu::TimeZoneFormat *this, icu::UnicodeString *a2, int a3, int a4)
{
  if (a3 > 9)
  {
    v7 = -2;
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 + a4;
  if (v7 + a4 >= 1)
  {
    do
    {
      icu::UnicodeString::append(a2, *(this + 256));
      --v8;
    }

    while (v8);
  }

  if (a3 > 9)
  {
    icu::UnicodeString::append(a2, *(this + a3 / 0xAuLL + 256));
  }

  v9 = *(this + a3 % 10 + 256);

  return icu::UnicodeString::append(a2, v9);
}

uint64_t icu::TimeZoneFormat::parseAsciiOffsetFields(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  result = 0;
  v22 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 8);
  v21 = 0;
  v20 = 0;
  v19 = -1;
  v18 = 0xFFFFFFFF00000000;
  v8 = *(a1 + 8);
  v9 = a1 + 10;
  if ((v8 & 2) == 0)
  {
    v9 = *(a1 + 24);
  }

  v10 = v7;
  v11 = *(a1 + 12);
  if ((v8 & 0x8000) != 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  if (v10 < (v8 >> 5))
  {
    v12 = v8 >> 5;
    while (result <= a5)
    {
      if (v12 <= v10)
      {
        v13 = 0xFFFF;
      }

      else
      {
        v13 = *(v9 + 2 * v10);
      }

      if (v13 == a3)
      {
        if (result)
        {
          if (*(&v18 + result) != -1)
          {
            break;
          }

          *(&v18 + result) = 0;
        }

        else if (!v18)
        {
          v16 = -1;
          v17 = 0;
          goto LABEL_30;
        }
      }

      else
      {
        v14 = *(&v18 + result);
        if (v14 == -1)
        {
          break;
        }

        v15 = v13 - 48;
        if (v15 >= 0xA)
        {
          v15 = -1;
        }

        if ((v15 & 0x80000000) != 0)
        {
          break;
        }

        *(&v20 + result) = v15 + 10 * *(&v20 + result);
        *(&v18 + result) = v14 + 1;
        if (v14 <= 0)
        {
          result = result;
        }

        else
        {
          result = (result + 1);
        }
      }

      ++v10;
      if ((v8 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

LABEL_6:
      if (v10 >= v11)
      {
        break;
      }

      LODWORD(v12) = v11;
    }
  }

  if (v18)
  {
    if (v20 < 24)
    {
      v16 = 0;
      result = (3600000 * v20);
      if (HIDWORD(v18) == 2)
      {
        v17 = v18;
        if (SHIDWORD(v20) <= 59)
        {
          result = (result + 60000 * HIDWORD(v20));
          v17 = v18 + 3;
          v16 = 1;
          if (v19 == 2 && v21 <= 59)
          {
            result = (result + 1000 * v21);
            v17 = v18 + 6;
            v16 = 2;
          }
        }
      }

      else
      {
        v17 = v18;
      }
    }

    else
    {
      v16 = 0;
      result = 3600000 * (v20 / 0xA);
      v17 = 1;
    }
  }

  else
  {
    result = 0;
    v17 = 0;
    v16 = -1;
  }

LABEL_30:
  if (v16 >= a4)
  {
    *(a2 + 8) = v17 + v7;
  }

  else
  {
    result = 0;
    *(a2 + 12) = v7;
  }

  return result;
}

uint64_t icu::TimeZoneFormat::parseAbuttingAsciiOffsetFields(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 8);
  v6 = ((__PAIR64__(2 * a3, a5) - 1) >> 32) + 2;
  v7 = (2 * a4 + 2);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v7 < 1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v8 = 0;
    v9 = v5;
    v10 = *(a1 + 8);
    v11 = *(a1 + 12);
    v12 = a1 + 10;
    if ((v10 & 2) == 0)
    {
      v12 = *(a1 + 24);
    }

    while (1)
    {
      if ((v10 & 0x8000) != 0)
      {
        LODWORD(v13) = v11;
        if (v9 >= v11)
        {
          break;
        }
      }

      else
      {
        v13 = v10 >> 5;
        if (v9 >= (v10 >> 5))
        {
          break;
        }
      }

      if (v13 <= v9)
      {
        break;
      }

      v14 = *(v12 + 2 * v9) - 48;
      if (v14 >= 0xA)
      {
        v14 = -1;
      }

      if ((v14 & 0x80000000) != 0)
      {
        break;
      }

      *(&v23 + v8++) = v14;
      ++v9;
      if (v7 == v8)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v7) = v8;
  }

LABEL_16:
  v15 = v7 & ~(a5 != 0);
  if (v15 < v6)
  {
LABEL_49:
    result = 0;
    *(a2 + 12) = v5;
  }

  else
  {
    if (a5)
    {
      v16 = -2;
    }

    else
    {
      v16 = -1;
    }

    while (1)
    {
      if (v15 == 6)
      {
        v17 = HIDWORD(v23) + 10 * v23;
      }

      else
      {
        v17 = 0;
      }

      if (v15 == 6)
      {
        v18 = HIDWORD(v24) + 10 * v24;
      }

      else
      {
        v18 = 0;
      }

      if (v15 == 6)
      {
        v19 = HIDWORD(v25) + 10 * v25;
      }

      else
      {
        v19 = 0;
      }

      if (v15 == 5)
      {
        v17 = v23;
        v18 = v24 + 10 * HIDWORD(v23);
        v19 = v25 + 10 * HIDWORD(v24);
      }

      if (v15 == 4)
      {
        v17 = HIDWORD(v23) + 10 * v23;
        v18 = HIDWORD(v24) + 10 * v24;
        v19 = 0;
      }

      if (v15 == 3)
      {
        v20 = v23;
      }

      else
      {
        v20 = 0;
      }

      if (v15 == 3)
      {
        v21 = v24 + 10 * HIDWORD(v23);
      }

      else
      {
        v21 = 0;
      }

      if (v15 == 2)
      {
        v20 = HIDWORD(v23) + 10 * v23;
        v21 = 0;
      }

      if (v15 == 1)
      {
        v20 = v23;
        v21 = 0;
      }

      if (v15 <= 3)
      {
        v17 = v20;
        v18 = v21;
        v19 = 0;
      }

      if (v17 <= 23 && v18 <= 59 && v19 < 60)
      {
        break;
      }

      v15 += v16;
      if (v15 < v6)
      {
        goto LABEL_49;
      }
    }

    *(a2 + 8) = v5 + v15;
    return (1000 * (v19 + 60 * (v18 + 60 * v17)));
  }

  return result;
}

uint64_t icu::TimeZoneFormat::parseOffsetLocalizedGMTPattern(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, int a3, signed __int8 a4, int *a5)
{
  v9 = *(this + 572);
  if (*(this + 572) < 0)
  {
    v10 = *(this + 287);
  }

  else
  {
    v10 = v9 >> 5;
  }

  v22 = v10;
  if (v10 >= 1)
  {
    if (v9)
    {
      if ((*(a2 + 8) & 1) == 0)
      {
LABEL_13:
        v13 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      if ((v9 & 0x8000u) == 0)
      {
        v11 = v9 >> 5;
      }

      else
      {
        v11 = *(this + 287);
      }

      if ((v9 & 2) != 0)
      {
        v12 = this + 1146;
      }

      else
      {
        v12 = *(this + 145);
      }

      if (icu::UnicodeString::doCaseCompare(a2, a3, v10, v12, v11 & (v11 >> 31), v11 & ~(v11 >> 31), 0))
      {
        goto LABEL_13;
      }
    }
  }

  v14 = v10 + a3;
  v13 = icu::TimeZoneFormat::parseOffsetFields(this, a2, v10 + a3, 0, &v22);
  v15 = v22;
  if (v22)
  {
    v16 = *(this + 604);
    if (*(this + 604) < 0)
    {
      v17 = *(this + 303);
    }

    else
    {
      v17 = v16 >> 5;
    }

    if (v17 >= 1)
    {
      if (v16)
      {
        if ((*(a2 + 8) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if ((v16 & 0x8000u) == 0)
        {
          v18 = v16 >> 5;
        }

        else
        {
          v18 = *(this + 303);
        }

        if ((v16 & 2) != 0)
        {
          v19 = this + 1210;
        }

        else
        {
          v19 = *(this + 153);
        }

        if (icu::UnicodeString::doCaseCompare(a2, v22 + v14, v17, v19, v18 & (v18 >> 31), v18 & ~(v18 >> 31), 0))
        {
          goto LABEL_28;
        }
      }
    }

    v20 = v15 + v10 + v17;
    goto LABEL_31;
  }

LABEL_28:
  v20 = 0;
LABEL_31:
  *a5 = v20;
  return v13;
}

uint64_t icu::TimeZoneFormat::parseOffsetDefaultLocalizedGMT(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, int a3, int *a4)
{
  v8 = 3;
  v9 = L"GMT";
  while (1)
  {
    v10 = u_strlen(v9);
    if (!icu::UnicodeString::doCaseCompare(a2, a3, v10, v9, 0, v10, 0))
    {
      break;
    }

    v9 += 4;
    if (!--v8)
    {
      goto LABEL_17;
    }
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = v10 + a3;
  v12 = v10 + a3 + 1;
  v13 = *(a2 + 4);
  if (*(a2 + 4) < 0)
  {
    v14 = *(a2 + 3);
    if (v12 >= v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v12 >= (v13 >> 5))
    {
      goto LABEL_17;
    }

    v14 = v13 >> 5;
  }

  if (v14 <= v11)
  {
    goto LABEL_17;
  }

  if ((v13 & 2) != 0)
  {
    v15 = a2 + 10;
  }

  else
  {
    v15 = *(a2 + 3);
  }

  v16 = *&v15[2 * v11];
  if (v16 == 43)
  {
    v17 = 1;
    goto LABEL_20;
  }

  if (v16 != 45)
  {
LABEL_17:
    v18 = 0;
    result = 0;
    goto LABEL_18;
  }

  v17 = -1;
LABEL_20:
  v27 = 0;
  v20 = icu::TimeZoneFormat::parseDefaultOffsetFields(this, a2, v12, 58, &v27);
  v21 = v27;
  v22 = *(a2 + 4);
  v23 = v22;
  v24 = v22 >> 5;
  if (v23 < 0)
  {
    v24 = *(a2 + 3);
  }

  if (v27 != v24 - v12)
  {
    v26 = 0;
    v25 = icu::TimeZoneFormat::parseAbuttingOffsetFields(this, a2, v12, &v26);
    if (v21 <= v26)
    {
      v20 = v25;
      v21 = v26;
    }
  }

  result = (v20 * v17);
  v18 = v10 + v21 + 1;
LABEL_18:
  *a4 = v18;
  return result;
}

uint64_t icu::TimeZoneFormat::parseOffsetFields(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, int a3, signed __int8 a4, int *a5)
{
  v9 = 0;
  *a5 = 0;
  memset(v22, 0, sizeof(v22));
  v10 = this + 1264;
  while (1)
  {
    v11 = icu::TimeZoneFormat::parseOffsetFieldsWithPattern(this, a2, a3, *&v10[8 * dword_19549358C[v9]], 0, &v22[2], &v22[1], v22);
    if (v11 >= 1)
    {
      break;
    }

    if (++v9 == 6)
    {
      return 0;
    }
  }

  if (v9)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  if (v9 == 4)
  {
    v13 = 1;
  }

  if (v9 == 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  v15 = v11;
  if (*(this + 1312))
  {
    v16 = 0;
    v21 = 0;
    *v20 = 0;
    while (1)
    {
      v17 = icu::TimeZoneFormat::parseOffsetFieldsWithPattern(this, a2, a3, *&v10[8 * dword_19549358C[v16]], 1, &v21, &v20[1], v20);
      if (v17 >= 1)
      {
        break;
      }

      if (++v16 == 6)
      {
        v18 = 1;
        goto LABEL_26;
      }
    }

    if (v16)
    {
      v19 = -1;
    }

    else
    {
      v19 = 1;
    }

    if (v16 == 4)
    {
      v19 = 1;
    }

    v18 = v16 == 2 ? 1 : v19;
LABEL_26:
    if (v17 > v15)
    {
      v22[2] = v21;
      *v22 = *v20;
      v14 = v18;
      v15 = v17;
    }

    if (v15 < 1)
    {
      return 0;
    }
  }

  result = (1000 * v14 * (v22[0] + 60 * (v22[1] + 60 * v22[2])));
  *a5 = v15;
  return result;
}

uint64_t icu::TimeZoneFormat::parseOffsetFieldsWithPattern(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, int a3, icu::UVector *a4, int a5, int *a6, int *a7, int *a8)
{
  v8 = a3;
  if (*(a4 + 2) >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    if (a5)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    v35 = v15;
    v36 = 0;
    while (1)
    {
      v37 = 0;
      v16 = icu::UVector::elementAt(a4, v13);
      v17 = *(v16 + 16);
      if (v17 > 1)
      {
        break;
      }

      if (v17)
      {
        if (v17 != 1)
        {
          goto LABEL_39;
        }

        v12 = icu::TimeZoneFormat::parseOffsetFieldWithLocalizedDigits(this, a2, v8, 1u, v35, 0, 23, &v37);
        goto LABEL_34;
      }

      v18 = *(v16 + 8);
      v19 = u_strlen(v18);
      if (!v13)
      {
        v20 = *(a2 + 4);
        v21 = v20;
        v22 = v20 >> 5;
        if (v21 < 0)
        {
          v22 = *(a2 + 3);
        }

        if (v8 < v22)
        {
          v23 = icu::UnicodeString::char32At(a2, v8);
          if (!icu::PatternProps::isWhiteSpace(v23) && v19 >= 1)
          {
            do
            {
              v24 = *v18;
              if ((v24 & 0xF800) == 0xD800 && (v24 & 0x400) == 0 && v19 != 1)
              {
                v25 = v18[1];
                v26 = (v25 & 0xFC00) == 56320;
                v27 = v25 + (v24 << 10) - 56613888;
                if (v26)
                {
                  v24 = v27;
                }

                else
                {
                  v24 = *v18;
                }
              }

              if (!icu::PatternProps::isWhiteSpace(v24))
              {
                break;
              }

              v28 = v24 < 0x10000 ? 1 : 2;
              v18 += v28;
              v29 = __OFSUB__(v19, v28);
              v19 = v19 - v28;
            }

            while (!((v19 < 0) ^ v29 | (v19 == 0)));
          }
        }
      }

      if (icu::UnicodeString::doCaseCompare(a2, v8, v19, v18, 0, v19, 0))
      {
LABEL_39:
        result = 0;
        *a8 = 0;
        *a7 = 0;
        *a6 = 0;
        return result;
      }

LABEL_35:
      v8 += v19;
      if (++v13 >= *(a4 + 2))
      {
        goto LABEL_38;
      }
    }

    if (v17 == 2)
    {
      v36 = icu::TimeZoneFormat::parseOffsetFieldWithLocalizedDigits(this, a2, v8, 2u, 2u, 0, 59, &v37);
    }

    else
    {
      if (v17 != 4)
      {
        goto LABEL_39;
      }

      v14 = icu::TimeZoneFormat::parseOffsetFieldWithLocalizedDigits(this, a2, v8, 2u, 2u, 0, 59, &v37);
    }

LABEL_34:
    LODWORD(v19) = v37;
    if (!v37)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v36 = 0;
  v14 = 0;
  v12 = 0;
LABEL_38:
  *a6 = v12;
  *a7 = v36;
  result = (v8 - a3);
  *a8 = v14;
  return result;
}

uint64_t icu::TimeZoneFormat::parseOffsetFieldWithLocalizedDigits(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, int a3, unsigned int a4, unsigned int a5, int a6, int a7, int *a8)
{
  v10 = 0;
  v11 = 0;
  *a8 = 0;
  v12 = *(a2 + 4);
  v13 = v12;
  v14 = v12 >> 5;
  if (v13 < 0)
  {
    v14 = *(a2 + 3);
  }

  v30 = 0;
  v15 = v14 <= a3 || a5 == 0;
  v16 = a3;
  if (!v15)
  {
    v21 = 0;
    v10 = 0;
    v16 = a3;
    while (1)
    {
      v22 = icu::TimeZoneFormat::parseSingleLocalizedDigit(this, a2, v16, &v30);
      if (v22 < 0)
      {
        break;
      }

      v11 = (v22 + 10 * v21);
      if (v11 > a7)
      {
        break;
      }

      ++v10;
      v16 += v30;
      v23 = *(a2 + 4);
      v24 = v23;
      v25 = v23 >> 5;
      if (v24 < 0)
      {
        v25 = *(a2 + 3);
      }

      v26 = v16 >= v25 || v10 >= a5;
      v21 = (v22 + 10 * v21);
      if (v26)
      {
        goto LABEL_19;
      }
    }

    v11 = v21;
  }

LABEL_19:
  result = 0xFFFFFFFFLL;
  if (v10 >= a4 && v11 >= a6)
  {
    *a8 = v16 - a3;
    return v11;
  }

  return result;
}

uint64_t icu::TimeZoneFormat::parseAbuttingOffsetFields(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, int a3, int *a4)
{
  v8 = 0;
  v27 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = 0;
  v26 = 0;
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  v9 = a3;
  while (1)
  {
    v10 = icu::TimeZoneFormat::parseSingleLocalizedDigit(this, a2, v9, &v22);
    *(&v24 + v8) = v10;
    if (v10 < 0)
    {
      break;
    }

    v9 += v22;
    *(v23 + v8++) = v9 - a3;
    if (v8 == 6)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v21 = 0;
    result = 0;
    goto LABEL_46;
  }

  if (v8 < 1)
  {
    return 0;
  }

LABEL_7:
  v11 = v23 + (v8 - 1);
  while (1)
  {
    if (v8 == 6)
    {
      v12 = HIDWORD(v24) + 10 * v24;
    }

    else
    {
      v12 = 0;
    }

    if (v8 == 6)
    {
      v13 = HIDWORD(v25) + 10 * v25;
    }

    else
    {
      v13 = 0;
    }

    if (v8 == 6)
    {
      v14 = HIDWORD(v26) + 10 * v26;
    }

    else
    {
      v14 = 0;
    }

    if (v8 == 5)
    {
      v12 = v24;
      v13 = v25 + 10 * HIDWORD(v24);
      v14 = v26 + 10 * HIDWORD(v25);
    }

    if (v8 == 4)
    {
      v12 = HIDWORD(v24) + 10 * v24;
      v13 = HIDWORD(v25) + 10 * v25;
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (v8 == 3)
    {
      v16 = v24;
    }

    else
    {
      v16 = 0;
    }

    if (v8 == 3)
    {
      v17 = v25 + 10 * HIDWORD(v24);
    }

    else
    {
      v17 = 0;
    }

    if (v8 == 2)
    {
      v16 = HIDWORD(v24) + 10 * v24;
      v17 = 0;
    }

    if (v8 == 1)
    {
      v16 = v24;
      v17 = 0;
    }

    if (v8 <= 3)
    {
      v13 = v17;
    }

    else
    {
      v16 = v12;
    }

    v18 = v8 <= 3 ? 0 : v15;
    if (v16 <= 23 && v13 <= 59 && v18 <= 59)
    {
      break;
    }

    --v11;
    v19 = __OFSUB__(v8, 1);
    LODWORD(v8) = v8 - 1;
    if ((v8 < 0) ^ v19 | (v8 == 0))
    {
      return 0;
    }
  }

  result = (3600000 * v16 + 60000 * v13 + 1000 * v18);
  v21 = *v11;
LABEL_46:
  *a4 = v21;
  return result;
}

uint64_t icu::TimeZoneFormat::parseSingleLocalizedDigit(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, int a3, int *a4)
{
  *a4 = 0;
  v4 = *(a2 + 4);
  v5 = v4;
  v6 = v4 >> 5;
  if (v5 < 0)
  {
    v6 = *(a2 + 3);
  }

  if (v6 <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = icu::UnicodeString::char32At(a2, a3);
  v12 = 0;
  while (v11 != *(this + v12 + 256))
  {
    if (++v12 == 10)
    {
      v12 = u_charDigitValue(v11);
      if (v12 >= 0xA)
      {
        return 0xFFFFFFFFLL;
      }

      break;
    }
  }

  *a4 = icu::UnicodeString::moveIndex32(a2, a3, 1) - a3;
  return v12;
}

uint64_t icu::TimeZoneFormat::parseDefaultOffsetFields(icu::TimeZoneFormat *a1, uint64_t a2, int a3, int a4, _DWORD *a5)
{
  v10 = *(a2 + 8);
  v11 = v10;
  v12 = v10 >> 5;
  if (v11 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(a2 + 12);
  }

  v31 = 0;
  *a5 = 0;
  v14 = icu::TimeZoneFormat::parseOffsetFieldWithLocalizedDigits(a1, a2, a3, 1u, 2u, 0, 23, &v31);
  if (!v31)
  {
    return 0;
  }

  v15 = v14;
  v16 = v31 + a3;
  v17 = v31 + a3 + 1;
  if (v17 >= v13 || ((v18 = *(a2 + 8), (v18 & 0x8000u) == 0) ? (v19 = v18 >> 5) : (v19 = *(a2 + 12)), v19 <= v16 ? (v21 = 0xFFFF) : ((v18 & 2) != 0 ? (v20 = a2 + 10) : (v20 = *(a2 + 24)), v21 = *(v20 + 2 * v16)), v21 != a4))
  {
    v22 = 0;
LABEL_27:
    v23 = 0;
    goto LABEL_28;
  }

  v22 = icu::TimeZoneFormat::parseOffsetFieldWithLocalizedDigits(a1, a2, v16 + 1, 2u, 2u, 0, 59, &v31);
  v23 = v31;
  if (!v31)
  {
    goto LABEL_28;
  }

  v16 = v17 + v31;
  v24 = v17 + v31 + 1;
  if (v24 >= v13)
  {
    goto LABEL_27;
  }

  v25 = *(a2 + 8);
  v26 = (v25 & 0x8000u) == 0 ? v25 >> 5 : *(a2 + 12);
  if (v26 <= v16)
  {
    v28 = 0xFFFF;
  }

  else
  {
    v27 = (v25 & 2) != 0 ? a2 + 10 : *(a2 + 24);
    v28 = *(v27 + 2 * v16);
  }

  if (v28 != a4)
  {
    goto LABEL_27;
  }

  v30 = icu::TimeZoneFormat::parseOffsetFieldWithLocalizedDigits(a1, a2, v16 + 1, 2u, 2u, 0, 59, &v31);
  if (v31)
  {
    v16 = v24 + v31;
  }

  v23 = 1000 * v30;
LABEL_28:
  if (v16 == a3)
  {
    return 0;
  }

  *a5 = v16 - a3;
  return (3600000 * v15 + 60000 * v22 + v23);
}

icu::UnicodeString *icu::TimeZoneFormat::formatOffsetWithAsciiDigits(int a1, int a2, int a3, int a4, icu::UnicodeString *this)
{
  LODWORD(v6) = a4;
  v21 = *MEMORY[0x1E69E9840];
  if (a1 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = -a1;
  }

  if (a1 >= 0)
  {
    v10 = 43;
  }

  else
  {
    v10 = 45;
  }

  LOWORD(v20[0]) = v10;
  icu::UnicodeString::unBogus(this);
  v11 = *(this + 4);
  v12 = v11;
  v13 = v11 >> 5;
  if (v12 >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(this + 3);
  }

  icu::UnicodeString::doReplace(this, 0, v14, v20, 0, 1);
  v20[0] = v9 / 0x36EE80;
  v20[1] = v9 % 0x36EE80 / 0xEA60;
  v20[2] = v9 % 0x36EE80 % 0xEA60 / 0x3E8;
  if (v6 <= a3)
  {
LABEL_15:
    if ((v6 & 0x80000000) != 0)
    {
      return this;
    }

    goto LABEL_18;
  }

  v6 = v6;
  while (!v20[v6])
  {
    if (--v6 <= a3)
    {
      LODWORD(v6) = a3;
      goto LABEL_15;
    }
  }

  if ((v6 & 0x80000000) == 0)
  {
LABEL_18:
    v15 = 0;
    v16 = 4 * (v6 + 1);
    do
    {
      if (a2 && v15)
      {
        v19 = a2;
        icu::UnicodeString::doAppend(this, &v19, 0, 1);
      }

      v17 = v20[v15 / 4];
      v19 = v17 / 10 + 48;
      icu::UnicodeString::doAppend(this, &v19, 0, 1);
      v19 = v17 % 10 + 48;
      icu::UnicodeString::doAppend(this, &v19, 0, 1);
      v15 += 4;
    }

    while (v16 != v15);
  }

  return this;
}

const icu::UnicodeString *icu::TimeZoneFormat::unquote(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, icu::UnicodeString *a3)
{
  v5 = *(this + 4);
  v6 = v5;
  v7 = v5 >> 5;
  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(this + 3);
  }

  if ((icu::UnicodeString::doIndexOf(this, 0x27u, 0, v8) & 0x80000000) == 0)
  {
    v9 = 0;
    v10 = 0;
    if (*(a2 + 4))
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a2 + 4) & 0x1E;
    }

    *(a2 + 4) = v11;
    while (1)
    {
      v12 = *(this + 4);
      if (v12 < 0)
      {
        v13 = *(this + 3);
        if (v9 >= v13)
        {
          return a2;
        }

        v13 = v13;
      }

      else
      {
        if (v9 >= *(this + 4) >> 5)
        {
          return a2;
        }

        v13 = *(this + 4) >> 5;
      }

      if (v13 <= v9)
      {
        break;
      }

      if ((v12 & 2) != 0)
      {
        v14 = this + 10;
      }

      else
      {
        v14 = *(this + 3);
      }

      v15 = *&v14[2 * v9];
      if (v15 != 39)
      {
        goto LABEL_22;
      }

      if (!v10)
      {
        v10 = 1;
        goto LABEL_24;
      }

      v18 = 39;
      v16 = &v18;
LABEL_23:
      icu::UnicodeString::doAppend(a2, v16, 0, 1);
      v10 = 0;
LABEL_24:
      ++v9;
    }

    LOWORD(v15) = -1;
LABEL_22:
    v19 = v15;
    v16 = &v19;
    goto LABEL_23;
  }

  icu::UnicodeString::copyFrom(a2, this, 0);
  return a2;
}

uint64_t sub_1953F0680(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1953F06B0()
{
  nullsub_17();

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953F06E8(uint64_t a1, int a2, uint64_t a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v6 = *a3;
  if (*a3)
  {
    if ((!*(a3 + 14) || (v6 = icu::UVector::elementAt(v6, 0)) != 0) && *(a1 + 8) < a2)
    {
      *(a1 + 16) = v6;
      *(a1 + 8) = a2;
    }
  }

  return 1;
}

uint64_t sub_1953F0870(UErrorCode *a1)
{
  sub_195400588(0x10u, sub_1953F09F8);
  result = icu::TimeZone::createTimeZoneIDEnumeration(1, 0, 0, a1);
  if (*a1 <= 0)
  {
    operator new();
  }

  if (result)
  {
    v3 = *(*result + 8);

    return v3(result);
  }

  return result;
}

uint64_t sub_1953F09F8()
{
  if (qword_1EAECA298)
  {
    (*(*qword_1EAECA298 + 8))(qword_1EAECA298);
  }

  qword_1EAECA298 = 0;
  atomic_store(0, &dword_1EAECA2F8);
  if (qword_1EAECA2A0)
  {
    (*(*qword_1EAECA2A0 + 8))(qword_1EAECA2A0);
  }

  qword_1EAECA2A0 = 0;
  atomic_store(0, &dword_1EAECA300);
  return 1;
}

icu::UnicodeString *sub_1953F0A98(icu::UVector **a1, signed int a2, icu::UnicodeString *a3)
{
  v4 = icu::UVector::elementAt(*a1, a2);
  if (v4 && *(*v4 + 8))
  {
    v6 = *(*v4 + 8);
    icu::UnicodeString::setTo(a3, 1, &v6, 0xFFFFFFFF);
  }

  else
  {
    icu::UnicodeString::setToBogus(a3);
  }

  return a3;
}

void sub_1953F0B0C(void *a1)
{
  *a1 = &unk_1F0943600;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  nullsub_17();
}

void sub_1953F0B8C(void *a1)
{
  sub_1953F0B0C(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953F0BC4(uint64_t a1, int a2, _BYTE *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (*a3)
  {
    if (a3[14])
    {
      v9 = *(*a3 + 8);
      if (v9 < 1)
      {
        return 1;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = 0;
    do
    {
      v11 = *a3;
      if (a3[14])
      {
        v11 = icu::UVector::elementAt(*a3, v10);
      }

      if (!v11)
      {
        break;
      }

      if ((*(a1 + 8) & *v11) != 0)
      {
        if (!*(a1 + 16))
        {
          operator new();
        }

        result = malloc_type_malloc(0x10uLL, 0x1060040C2E02434uLL);
        if (!result)
        {
          *a4 = U_MEMORY_ALLOCATION_ERROR;
          return result;
        }

        *result = v11;
        *(result + 8) = a2;
        *(result + 12) = 0;
        icu::UVector::adoptElement(*(a1 + 16), result, a4);
        if (*a4 > 0)
        {
          return 0;
        }

        if (*(a1 + 24) < a2)
        {
          *(a1 + 24) = a2;
        }
      }
    }

    while (v9 != ++v10);
  }

  return 1;
}

uint64_t sub_1953F0D6C(uint64_t a1, char **a2, UErrorCode *a3)
{
  *a1 = &unk_1F0943628;
  icu::Locale::Locale((a1 + 8), a2);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  icu::UnicodeString::UnicodeString(a1 + 264, 0);
  icu::UnicodeString::UnicodeString(a1 + 336, 0);
  *(a1 + 400) = 0;
  icu::ZNStringPool::ZNStringPool((a1 + 408), a3);
  icu::TextTrieMap::TextTrieMap(a1 + 424, 1, j__free_3);
  *(a1 + 480) = 0;
  *(a1 + 488) = a1 + 501;
  *(a1 + 496) = 40;
  *(a1 + 500) = 0;
  *(a1 + 544) = 0;
  sub_1953F0E3C(a1, a2, a3);
  return a1;
}

char *sub_1953F0E3C(char *result, char **a2, const icu::Locale *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v5 = result;
    result = icu::TimeZoneNames::createInstance(a2, a3, a3);
    *(v5 + 29) = result;
    if (*a3 <= 0)
    {
      memset(v21, 0, 64);
      v19 = L"{0}";
      icu::UnicodeString::UnicodeString(v21, 1, &v19, -1);
      memset(v20, 0, sizeof(v20));
      v18 = L"{1} ({0})";
      icu::UnicodeString::UnicodeString(v20, 1, &v18, -1);
      v17 = 0;
      v6 = ures_open("icudt76l-zone", a2[5], &v17);
      v7 = ures_getByKeyWithFallback(v6, "zoneStrings", v6, &v17);
      v8 = v7;
      if (v17 <= 0)
      {
        StringByKeyWithFallback = ures_getStringByKeyWithFallback(v7, "regionFormat", 0, &v17);
        if (v17 <= 0)
        {
          v10 = StringByKeyWithFallback;
          if (u_strlen(StringByKeyWithFallback) >= 1)
          {
            icu::UnicodeString::unBogus(v21);
            if (SLOWORD(v21[2]) >= 0)
            {
              v11 = LOWORD(v21[2]) >> 5;
            }

            else
            {
              v11 = v21[3];
            }

            icu::UnicodeString::doReplace(v21, 0, v11, v10, 0, 0xFFFFFFFFLL);
          }
        }

        v17 = 0;
        v12 = ures_getStringByKeyWithFallback(v8, "fallbackFormat", 0, &v17);
        if (v17 <= 0)
        {
          v13 = v12;
          if (u_strlen(v12) >= 1)
          {
            icu::UnicodeString::unBogus(v20);
            if ((SWORD4(v20[0]) & 0x8000u) == 0)
            {
              v14 = WORD4(v20[0]) >> 5;
            }

            else
            {
              v14 = HIDWORD(v20[0]);
            }

            icu::UnicodeString::doReplace(v20, 0, v14, v13, 0, 0xFFFFFFFFLL);
          }
        }
      }

      ures_close(v8);
      icu::SimpleFormatter::applyPatternMinMaxArguments((v5 + 256), v21, 1, 1, 0, a3);
      icu::SimpleFormatter::applyPatternMinMaxArguments((v5 + 328), v20, 2, 2, 0, a3);
      if (*a3 < 1)
      {
        icu::LocaleDisplayNames::createInstance(a2, 0);
      }

      sub_1953F12E8(v5);
      icu::UnicodeString::~UnicodeString(v15, v20);
      return icu::UnicodeString::~UnicodeString(v16, v21);
    }
  }

  return result;
}

uint64_t sub_1953F126C(uint64_t a1)
{
  *a1 = &unk_1F0943628;
  sub_1953F12E8(a1);
  if (*(a1 + 500))
  {
    free(*(a1 + 488));
  }

  icu::TextTrieMap::~TextTrieMap((a1 + 424));
  icu::ZNStringPool::~ZNStringPool((a1 + 408));
  icu::SimpleFormatter::~SimpleFormatter((a1 + 328), v2);
  icu::SimpleFormatter::~SimpleFormatter((a1 + 256), v3);
  icu::Locale::~Locale(v4, (a1 + 8));
  return a1;
}

void sub_1953F12E8(uint64_t a1)
{
  v2 = *(a1 + 400);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 232);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  uhash_close(*(a1 + 240));
  uhash_close(*(a1 + 248));
  *(a1 + 400) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
}

void sub_1953F1384(uint64_t a1)
{
  sub_1953F126C(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t *sub_1953F13BC(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  sub_1951F3478(v10, a1);
  v9 = 38;
  v2 = icu::UnicodeString::doAppend(v10, &v9, 0, 1);
  v3 = icu::UnicodeString::doAppend(v2, *(a1 + 8), 0, 0xFFFFFFFFLL);
  v9 = 35;
  v4 = icu::UnicodeString::doAppend(v3, &v9, 0, 1);
  if (*(a1 + 16))
  {
    v5 = 76;
  }

  else
  {
    v5 = 83;
  }

  v9 = v5;
  icu::UnicodeString::doAppend(v4, &v9, 0, 1);
  v6 = icu::UnicodeString::doHashCode(v10);
  icu::UnicodeString::~UnicodeString(v7, v10);
  return v6;
}

BOOL sub_1953F14B8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

void *sub_1953F1514(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  sub_1953F21D0(a1, a2);
  v19 = 0;
  v26 = 0u;
  v27 = 0u;
  v29 = 0;
  v28 = 0u;
  v24 = 0;
  v25 = &unk_1F0935D00;
  LOWORD(v26) = 2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = &unk_1F0935D00;
  LOWORD(v21) = 2;
  v4 = (*(**(a1 + 232) + 48))(*(a1 + 232), a2, &v19);
  v5 = (*(*v4 + 56))(v4, &v19);
  if (v5)
  {
    v6 = v19 <= 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v5;
    do
    {
      (*(**(a1 + 232) + 64))(*(a1 + 232), v7, *(a1 + 488), &v25);
      v8 = *(a2 + 8);
      if (v8)
      {
        if ((v26 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v9 = v8;
        v10 = v8 >> 5;
        if (v9 >= 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = *(a2 + 12);
        }

        if ((v26 & 0x8000u) == 0)
        {
          v12 = v26 >> 5;
        }

        else
        {
          v12 = DWORD1(v26);
        }

        if ((v26 & 1) != 0 || v11 != v12 || ((v26 & 2) != 0 ? (v13 = &v26 + 2) : (v13 = v27), !icu::UnicodeString::doEquals(a2, v13, v11)))
        {
LABEL_22:
          for (i = 0; i != 2; ++i)
          {
            (*(**(a1 + 232) + 72))(*(a1 + 232), v7, dword_1954936A8[i], &v20);
            if (v21 >= 0x20u)
            {
              sub_1953F26CC(a1, a2, v7, i == 0, &v20);
            }
          }
        }
      }

      v7 = (*(*v4 + 56))(v4, &v19);
      if (v7)
      {
        v15 = v19 < 1;
      }

      else
      {
        v15 = 0;
      }
    }

    while (v15);
  }

  (*(*v4 + 8))(v4);
  icu::UnicodeString::~UnicodeString(v16, &v20);
  return icu::UnicodeString::~UnicodeString(v17, &v25);
}

icu::UnicodeString *sub_1953F17E8(uint64_t a1, icu::ZoneMeta *a2, int a3, icu::UnicodeString *this, double a5)
{
  v20 = *MEMORY[0x1E69E9840];
  icu::UnicodeString::setToBogus(this);
  if (a3 == 4 || a3 == 2)
  {
    sub_1953F19F4(a1, a2, a3, this, a5);
    if (*(this + 4) <= 0x1Fu)
    {
      CanonicalCLDRID = icu::ZoneMeta::getCanonicalCLDRID(a2, v13);
      if (CanonicalCLDRID)
      {
        v17 = CanonicalCLDRID;
        icu::UnicodeString::UnicodeString(v19, 1, &v17, -1);
        sub_1953F1938(a1, v19, this);
        icu::UnicodeString::~UnicodeString(v15, v19);
      }
    }
  }

  else if (a3 == 1)
  {
    v11 = icu::ZoneMeta::getCanonicalCLDRID(a2, v10);
    if (v11)
    {
      v18 = v11;
      icu::UnicodeString::UnicodeString(v19, 1, &v18, -1);
      sub_1953F1938(a1, v19, this);
      icu::UnicodeString::~UnicodeString(v12, v19);
    }
  }

  return this;
}

icu::UnicodeString *sub_1953F1938(uint64_t a1, uint64_t a2, icu::UnicodeString *this)
{
  if (*(a2 + 8) > 0x1Fu && (umtx_lock(&unk_1EAECA318), v6 = sub_1953F21D0(a1, a2), umtx_unlock(&unk_1EAECA318), v6))
  {
    v7 = u_strlen(v6);
    icu::UnicodeString::unBogus(this);
    v8 = *(this + 4);
    v9 = v8;
    v10 = v8 >> 5;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = *(this + 3);
    }

    icu::UnicodeString::doReplace(this, 0, v11, v6, 0, v7);
  }

  else
  {
    icu::UnicodeString::setToBogus(this);
  }

  return this;
}

icu::UnicodeString *sub_1953F19F4(uint64_t a1, icu::ZoneMeta *a2, int a3, icu::UnicodeString *this, double a5)
{
  v60 = *MEMORY[0x1E69E9840];
  icu::UnicodeString::setToBogus(this);
  CanonicalCLDRID = icu::ZoneMeta::getCanonicalCLDRID(a2, v10);
  if (CanonicalCLDRID)
  {
    memset(v59, 0, 64);
    v31 = CanonicalCLDRID;
    icu::UnicodeString::UnicodeString(v59, 1, &v31, -1);
    if (a3 == 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 8;
    }

    (*(**(a1 + 232) + 80))(*(a1 + 232), v59, v12, this);
    v13 = *(this + 4);
    if (v13 > 0x1F)
    {
      goto LABEL_40;
    }

    memset(v58, 0, sizeof(v58));
    memset(v57, 0, sizeof(v57));
    icu::UnicodeString::UnicodeString(v57, v58, 0, 0x20u);
    (*(**(a1 + 232) + 56))(*(a1 + 232), v59, v57, a5);
    v14 = v57[4];
    if (v57[4] < 0x20u)
    {
      goto LABEL_39;
    }

    v30 = 0;
    v29 = 0;
    memset(v56, 0, sizeof(v56));
    (*(*a2 + 48))(a2, 0, &v30, &v29, &v30 + 4, a5);
    v14 = HIDWORD(v30);
    if (SHIDWORD(v30) > 0)
    {
      goto LABEL_39;
    }

    if (!v29)
    {
      v15 = (*(*a2 + 96))(a2);
      v16 = *v15;
      {
        v36 = 0u;
        v37 = 0u;
        icu::TimeZoneTransition::TimeZoneTransition(&v36);
        if ((*(*v15 + 120))(v15, 1, &v36, a5) && a5 - icu::TimeZoneTransition::getTime(&v36) < 1.58976e10 && (v17 = icu::TimeZoneTransition::getFrom(&v36), icu::TimeZoneRule::getDSTSavings(v17)))
        {
          v18 = 0;
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
          icu::TimeZoneTransition::TimeZoneTransition(&v52);
          if ((*(*v15 + 112))(v15, 0, &v52, a5) && icu::TimeZoneTransition::getTime(&v52) - a5 < 1.58976e10)
          {
            v19 = icu::TimeZoneTransition::getTo(&v52);
            v18 = icu::TimeZoneRule::getDSTSavings(v19) == 0;
          }

          else
          {
            v18 = 1;
          }

          icu::TimeZoneTransition::~TimeZoneTransition(&v52);
        }

        icu::TimeZoneTransition::~TimeZoneTransition(&v36);
      }

      else
      {
        (*(v16 + 48))(v15, 0, &v30, &v29, &v30 + 4, a5 + -1.58976e10);
        v18 = 0;
        if (!v29)
        {
          (*(*v15 + 48))(v15, 0, &v30, &v29, &v30 + 4, a5 + 1.58976e10);
          v18 = v29 == 0;
        }

        if (SHIDWORD(v30) >= 1)
        {
          (*(*v15 + 8))(v15);
          goto LABEL_39;
        }
      }

      (*(*v15 + 8))(v15);
      if (v18)
      {
        v54 = 0u;
        v55 = 0u;
        if (a3 == 2)
        {
          v20 = 2;
        }

        else
        {
          v20 = 16;
        }

        v52 = 0uLL;
        v53 = 0uLL;
        icu::UnicodeString::UnicodeString(&v52, v56, 0, 0x80u);
        (*(**(a1 + 232) + 96))(*(a1 + 232), v59, v20, &v52, a5);
        v21 = WORD4(v52);
        if (WORD4(v52) >= 0x20u)
        {
          icu::UnicodeString::copyFrom(this, &v52, 0);
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          icu::UnicodeString::UnicodeString(&v32, &v36, 0, 0x80u);
          (*(**(a1 + 232) + 72))(*(a1 + 232), v57, v12, &v32);
          if (!sub_1953F257C(&v52, &v32, 0))
          {
            icu::UnicodeString::setToBogus(this);
          }

          icu::UnicodeString::~UnicodeString(v22, &v32);
        }

        icu::UnicodeString::~UnicodeString(v21, &v52);
      }
    }

    v14 = *(this + 4);
    if (v14 > 0x1F)
    {
LABEL_39:
      icu::UnicodeString::~UnicodeString(v14, v57);
LABEL_40:
      icu::UnicodeString::~UnicodeString(v13, v59);
      return this;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    icu::UnicodeString::UnicodeString(&v36, v56, 0, 0x80u);
    (*(**(a1 + 232) + 72))(*(a1 + 232), v57, v12, &v36);
    v23 = WORD4(v36);
    if (WORD4(v36) < 0x20u)
    {
LABEL_38:
      icu::UnicodeString::~UnicodeString(v23, &v36);
      goto LABEL_39;
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    icu::UnicodeString::UnicodeString(&v32, &v52, 0, 0x20u);
    (*(**(a1 + 232) + 64))(*(a1 + 232), v57, *(a1 + 488), &v32);
    if (WORD4(v32) >= 0x20u && !sub_195213DE4(&v32, v59))
    {
      TimeZone = icu::TimeZone::createTimeZone(&v32);
      v27 = 0;
      v28 = 0;
      (*(*TimeZone + 48))(TimeZone, 1, &v28, &v27, &v30 + 4, v30 + a5 + v29);
      (*(*TimeZone + 8))(TimeZone);
      v24 = HIDWORD(v30);
      if (SHIDWORD(v30) > 0)
      {
        goto LABEL_37;
      }

      if (v30 != v28 || v29 != v27)
      {
        sub_1953F25E0(a1, v59, v57, a3 == 2, &v36, this);
        goto LABEL_37;
      }
    }

    icu::UnicodeString::copyFrom(this, &v36, 0);
LABEL_37:
    icu::UnicodeString::~UnicodeString(v24, &v32);
    goto LABEL_38;
  }

  return this;
}

UChar *sub_1953F21D0(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = v2;
  v4 = v2 >> 5;
  if (v3 < 0)
  {
    v4 = *(a2 + 12);
  }

  if (v4 > 128)
  {
    return 0;
  }

  v22 = U_ZERO_ERROR;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v21 = v38;
  *(v38 + icu::UnicodeString::extract(a2, &v21, 129, &v22)) = 0;
  v8 = uhash_get(*(a1 + 240), v38);
  if (!v8)
  {
    v34 = 0u;
    v37 = 0;
    v36 = 0u;
    v35 = 0u;
    v32 = 0;
    v33 = &unk_1F0935D00;
    LOWORD(v34) = 2;
    v29 = 0u;
    v31 = 0u;
    v30 = 0u;
    v28 = &unk_1F0935D00;
    LOWORD(v29) = 2;
    v20 = 0;
    icu::ZoneMeta::getCanonicalCountry(a2, &v28, &v20, v9);
    if (v29 < 0x20u)
    {
      goto LABEL_17;
    }

    if (v20)
    {
      *v19 = 0;
      v11 = (v29 & 0x8000u) == 0 ? v29 >> 5 : DWORD1(v29);
      v19[icu::UnicodeString::extract(&v28, 0, v11, v19, 4)] = 0;
      v24 = 0u;
      v27 = 0;
      v26 = 0u;
      v25 = 0u;
      v23 = &unk_1F0935D00;
      LOWORD(v24) = 2;
      (*(**(a1 + 400) + 88))(*(a1 + 400), v19, &v23);
    }

    else
    {
      v24 = 0u;
      v27 = 0;
      v26 = 0u;
      v25 = 0u;
      v23 = &unk_1F0935D00;
      LOWORD(v24) = 2;
      (*(**(a1 + 232) + 88))(*(a1 + 232), a2, &v23);
    }

    icu::SimpleFormatter::format((a1 + 256), &v23, &v33, &v22);
    icu::UnicodeString::~UnicodeString(v12, &v23);
    v13 = v22;
    if (v22 <= U_ZERO_ERROR)
    {
LABEL_17:
      if (v34 < 0x20u)
      {
        v5 = 0;
      }

      else
      {
        v5 = icu::ZNStringPool::get((a1 + 408), &v33, &v22);
      }

      v13 = v22;
      if (v22 > U_ZERO_ERROR)
      {
        goto LABEL_24;
      }

      TimeZoneID = icu::ZoneMeta::findTimeZoneID(a2, v10);
      v15 = *(a1 + 240);
      if (!v5)
      {
        uhash_put(v15, TimeZoneID, &unk_1954936A4, &v22);
        goto LABEL_24;
      }

      uhash_put(v15, TimeZoneID, v5, &v22);
      v13 = v22;
      if (v22 <= U_ZERO_ERROR)
      {
        v18 = malloc_type_malloc(0x10uLL, 0x105004037B82EA9uLL);
        if (v18)
        {
          *v18 = 1;
          v18[1] = TimeZoneID;
          icu::TextTrieMap::put(a1 + 424, v5, v18, &v22);
        }

        goto LABEL_24;
      }
    }

    v5 = 0;
LABEL_24:
    icu::UnicodeString::~UnicodeString(v13, &v28);
    icu::UnicodeString::~UnicodeString(v16, &v33);
    return v5;
  }

  if (v8 == &unk_1954936A4)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1953F257C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  if (*(a1 + 8) < 0)
  {
    v5 = *(a1 + 12);
  }

  else
  {
    v5 = v4 >> 5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    return (v4 & 1) == 0;
  }

  if ((v6 & 0x8000u) == 0)
  {
    v7 = v6 >> 5;
  }

  else
  {
    v7 = *(a2 + 12);
  }

  if ((v6 & 2) != 0)
  {
    v8 = a2 + 10;
  }

  else
  {
    v8 = *(a2 + 24);
  }

  return icu::UnicodeString::doCaseCompare(a1, 0, v5, v8, v7 & (v7 >> 31), v7 & ~(v7 >> 31), a3);
}

icu::UnicodeString *sub_1953F25E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, icu::UnicodeString *this)
{
  v8 = a4;
  icu::UnicodeString::setToBogus(this);
  if (*(a2 + 8) >= 0x20u && *(a3 + 8) >= 0x20u && a5[4] >= 0x20u)
  {
    umtx_lock(&unk_1EAECA318);
    v12 = sub_1953F26CC(a1, a2, a3, v8, a5);
    umtx_unlock(&unk_1EAECA318);
    if (v12)
    {
      v14 = v12;
      icu::UnicodeString::setTo(this, 1, &v14, 0xFFFFFFFF);
    }

    else
    {
      icu::UnicodeString::setToBogus(this);
    }
  }

  return this;
}

void *sub_1953F26CC(uint64_t a1, uint64_t a2, UChar **a3, int a4, const icu::UnicodeString *a5)
{
  v47 = *MEMORY[0x1E69E9840];
  *&v30 = icu::ZoneMeta::findTimeZoneID(a2, a2);
  *(&v30 + 1) = icu::ZoneMeta::findMetaZoneID(a3, v10);
  v31 = a4;
  v12 = uhash_get(*(a1 + 248), &v30);
  if (v12)
  {
    return v12;
  }

  v43 = 0u;
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  LOWORD(v43) = 2;
  v38 = 0u;
  v39 = 0u;
  v41 = 0;
  v42 = &unk_1F0935D00;
  v40 = 0u;
  v37 = &unk_1F0935D00;
  LOWORD(v38) = 2;
  icu::ZoneMeta::getCanonicalCountry(a2, &v37, 0, v11);
  if (v38 < 0x20u)
  {
    (*(**(a1 + 232) + 88))(*(a1 + 232), a2, &v42);
    if (v43 <= 0x1Fu)
    {
      icu::UnicodeString::copyFrom(&v42, a2, 0);
    }

    goto LABEL_25;
  }

  v29 = U_ZERO_ERROR;
  if ((v38 & 0x8000u) == 0)
  {
    v13 = v38 >> 5;
  }

  else
  {
    v13 = DWORD1(v38);
  }

  *(&v29 + icu::UnicodeString::extract(&v37, 0, v13, &v29, 4)) = 0;
  v33 = 0u;
  v34 = 0u;
  v36 = 0;
  v35 = 0u;
  v32 = &unk_1F0935D00;
  LOWORD(v33) = 2;
  (*(**(a1 + 232) + 64))(*(a1 + 232), a3, &v29, &v32);
  v14 = *(a2 + 8);
  if ((v14 & 1) == 0)
  {
    v15 = v14;
    v16 = v14 >> 5;
    if (v15 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = *(a2 + 12);
    }

    if ((v33 & 0x8000u) == 0)
    {
      v18 = v33 >> 5;
    }

    else
    {
      v18 = DWORD1(v33);
    }

    if ((v33 & 1) == 0 && v17 == v18)
    {
      v19 = (v33 & 2) != 0 ? (&v33 + 2) : v34;
      if (icu::UnicodeString::doEquals(a2, v19, v17))
      {
        goto LABEL_19;
      }
    }

LABEL_23:
    (*(**(a1 + 232) + 88))(*(a1 + 232), a2, &v42);
    goto LABEL_24;
  }

  if ((v33 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  (*(**(a1 + 400) + 88))(*(a1 + 400), &v29, &v42);
LABEL_24:
  icu::UnicodeString::~UnicodeString(v20, &v32);
LABEL_25:
  v29 = U_ZERO_ERROR;
  v33 = 0u;
  v34 = 0u;
  v36 = 0;
  v35 = 0u;
  v32 = &unk_1F0935D00;
  LOWORD(v33) = 2;
  icu::SimpleFormatter::format((a1 + 328), &v42, a5, &v32, &v29);
  v12 = 0;
  v21 = v29;
  if (v29 <= U_ZERO_ERROR)
  {
    v12 = icu::ZNStringPool::get((a1 + 408), &v32, &v29);
    v21 = v29;
    if (v29 <= U_ZERO_ERROR)
    {
      v25 = malloc_type_malloc(0x18uLL, 0x10500400F228431uLL);
      if (v25)
      {
        v26 = v25;
        *v25 = v30;
        *(v25 + 16) = v31;
        uhash_put(*(a1 + 248), v25, v12, &v29);
        if (v29 < U_ILLEGAL_ARGUMENT_ERROR)
        {
          v27 = malloc_type_malloc(0x10uLL, 0x105004037B82EA9uLL);
          if (v27)
          {
            if (a4)
            {
              v28 = 2;
            }

            else
            {
              v28 = 4;
            }

            *v27 = v28;
            v27[1] = v30;
            icu::TextTrieMap::put(a1 + 424, v12, v27, &v29);
          }
        }

        else
        {
          free(v26);
        }
      }
    }
  }

  icu::UnicodeString::~UnicodeString(v21, &v32);
  icu::UnicodeString::~UnicodeString(v22, &v37);
  icu::UnicodeString::~UnicodeString(v23, &v42);
  return v12;
}

uint64_t sub_1953F2B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, UChar **this, _DWORD *a6, UErrorCode *a7)
{
  v9 = this;
  v10 = a4;
  v48 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  icu::UnicodeString::setToBogus(this);
  if (*a7 <= 0)
  {
    v14 = sub_1953F2F38(a1, a2, a3, v10);
    if (*a7 <= 0)
    {
      v17 = v14;
      v44 = 0u;
      v47 = 0;
      v46 = 0u;
      v45 = 0u;
      v43 = &unk_1F0935D00;
      LOWORD(v44) = 2;
      if (v14)
      {
        v39 = 0uLL;
        v42 = 0;
        v41 = 0uLL;
        v40 = 0uLL;
        v38 = &unk_1F0935D00;
        LOWORD(v39) = 2;
        if (icu::TimeZoneNames::MatchInfoCollection::size(v14) >= 1)
        {
          v36 = v9;
          v37 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            MatchLengthAt = icu::TimeZoneNames::MatchInfoCollection::getMatchLengthAt(v17, v19);
            if (MatchLengthAt <= v18)
            {
              v15 = v18;
            }

            else
            {
              v15 = MatchLengthAt;
              if (!icu::TimeZoneNames::MatchInfoCollection::getTimeZoneIDAt(v17, v19, &v43) && icu::TimeZoneNames::MatchInfoCollection::getMetaZoneIDAt(v17, v19, &v38))
              {
                (*(**(a1 + 232) + 64))(*(a1 + 232), &v38, *(a1 + 488), &v43);
              }

              NameTypeAt = icu::TimeZoneNames::MatchInfoCollection::getNameTypeAt(v17, v19);
              if (*a7 > 0)
              {
LABEL_23:
                v22 = v37 != 0;
                v9 = v36;
                goto LABEL_26;
              }

              if (NameTypeAt > 15)
              {
                if (NameTypeAt == 16)
                {
LABEL_21:
                  v37 = 0x100000001;
                  goto LABEL_22;
                }

                if (NameTypeAt == 32)
                {
LABEL_20:
                  HIDWORD(v37) = 2;
                  goto LABEL_22;
                }
              }

              else
              {
                if (NameTypeAt == 2)
                {
                  goto LABEL_21;
                }

                if (NameTypeAt == 4)
                {
                  goto LABEL_20;
                }
              }

              HIDWORD(v37) = 0;
            }

LABEL_22:
            ++v19;
            v18 = v15;
            if (v19 >= icu::TimeZoneNames::MatchInfoCollection::size(v17))
            {
              goto LABEL_23;
            }
          }
        }

        v22 = 0;
        HIDWORD(v37) = 0;
        v15 = 0;
LABEL_26:
        (*(*v17 + 1))(v17);
        v23 = *a7;
        if (v23 > 0)
        {
          v15 = 0;
LABEL_49:
          icu::UnicodeString::~UnicodeString(v23, &v38);
LABEL_50:
          icu::UnicodeString::~UnicodeString(v29, &v43);
          return v15;
        }

        v24 = *(a2 + 8);
        v25 = v24;
        v26 = v24 >> 5;
        if (v25 < 0)
        {
          v26 = *(a2 + 12);
        }

        v27 = ((v15 != v26 - a3) | v22);
        if ((v27 & 1) == 0)
        {
          icu::UnicodeString::copyFrom(v9, &v43, 0);
          v23 = HIDWORD(v37);
          *a6 = HIDWORD(v37);
          goto LABEL_49;
        }

        icu::UnicodeString::~UnicodeString(v27, &v38);
      }

      else
      {
        HIDWORD(v37) = 0;
        v15 = 0;
      }

      v28 = sub_1953F2F84(a1, a2, a3, v10, a7);
      v29 = *a7;
      if (v29 <= 0)
      {
        v30 = v28;
        if (v28)
        {
          v31 = *v28;
          if (*v30)
          {
            v32 = 0;
            while (v32 < *(v31 + 2))
            {
              v33 = icu::UVector::elementAt(v31, v32);
              if (v33)
              {
                v34 = *(v33 + 8);
              }

              else
              {
                v34 = -1;
              }

              if (v34 >= v15)
              {
                v35 = icu::UVector::elementAt(*v30, v32);
                if (v35)
                {
                  v15 = *(v35 + 8);
                }

                else
                {
                  v15 = 0xFFFFFFFFLL;
                }

                sub_1953F0A98(v30, v32, &v43);
                HIDWORD(v37) = 0;
              }

              ++v32;
              v31 = *v30;
              if (!*v30)
              {
                goto LABEL_52;
              }
            }

            (*(*v31 + 8))(v31);
          }

LABEL_52:
          MEMORY[0x19A8B2600](v30, 0x20C4093837F09);
        }

        if (v15 >= 1)
        {
          *a6 = HIDWORD(v37);
          icu::UnicodeString::copyFrom(v9, &v43, 0);
        }
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_50;
    }
  }

  return 0;
}

uint64_t sub_1953F2F38(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = (a4 << 30 >> 31) & 3;
  if ((a4 & 4) != 0)
  {
    v5 = v4 | 0x18;
  }

  else
  {
    v5 = v4;
  }

  return (*(**(a1 + 232) + 120))(*(a1 + 232), a2, a3, v5);
}

void *sub_1953F2F84(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, UErrorCode *a5)
{
  v24 = 0;
  v25 = 0;
  v23[0] = &unk_1F0943600;
  v23[1] = a4;
  umtx_lock(&unk_1EAECA318);
  icu::TextTrieMap::search((a1 + 424), a2, a3, v23, a5);
  umtx_unlock(&unk_1EAECA318);
  if (*a5 <= 0)
  {
    v9 = v24;
    v10 = v25;
    v24 = 0;
    LODWORD(v25) = 0;
    if (v9)
    {
      v11 = *(a2 + 8);
      v12 = v11;
      v13 = v11 >> 5;
      if (v12 < 0)
      {
        v13 = *(a2 + 12);
      }

      if (v10 == v13 - a3 || *(a1 + 480))
      {
        goto LABEL_28;
      }

      (*(*v9 + 8))(v9);
    }

    umtx_lock(&unk_1EAECA318);
    if (!*(a1 + 480))
    {
      TimeZoneIDEnumeration = icu::TimeZone::createTimeZoneIDEnumeration(1, 0, 0, a5);
      v15 = TimeZoneIDEnumeration;
      if (*a5 <= 0)
      {
        v16 = (*(*TimeZoneIDEnumeration + 56))(TimeZoneIDEnumeration, a5);
        if (v16)
        {
          v17 = *a5 <= U_ZERO_ERROR;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v18 = v16;
          do
          {
            sub_1953F1514(a1, v18);
            v18 = (*(*v15 + 56))(v15, a5);
            if (v18)
            {
              v19 = *a5 < U_ILLEGAL_ARGUMENT_ERROR;
            }

            else
            {
              v19 = 0;
            }
          }

          while (v19);
        }
      }

      else if (!TimeZoneIDEnumeration)
      {
        goto LABEL_25;
      }

      (*(*v15 + 8))(v15);
      if (*a5 <= 0)
      {
        *(a1 + 480) = 1;
      }
    }

LABEL_25:
    umtx_unlock(&unk_1EAECA318);
    if (*a5 > 0)
    {
      goto LABEL_29;
    }

    umtx_lock(&unk_1EAECA318);
    icu::TextTrieMap::search((a1 + 424), a2, a3, v23, a5);
    umtx_unlock(&unk_1EAECA318);
    v20 = v24;
    v21 = v25;
    v24 = 0;
    LODWORD(v25) = 0;
    if (!v20 || v21 < 1)
    {
      goto LABEL_29;
    }

LABEL_28:
    operator new();
  }

LABEL_29:
  sub_1953F0B0C(v23);
  return 0;
}

void *icu::TimeZoneGenericNames::TimeZoneGenericNames(void *this)
{
  *this = &unk_1F0943648;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F0943648;
  this[1] = 0;
  return this;
}

void icu::TimeZoneGenericNames::~TimeZoneGenericNames(icu::TimeZoneGenericNames *this)
{
  *this = &unk_1F0943648;
  umtx_lock(&unk_1EAECA368);
  v2 = *(this + 1);
  if (v2)
  {
    --*(v2 + 8);
  }

  umtx_unlock(&unk_1EAECA368);
}

{
  icu::TimeZoneGenericNames::~TimeZoneGenericNames(this);

  JUMPOUT(0x19A8B2600);
}

void *icu::TimeZoneGenericNames::createInstance(icu::TimeZoneGenericNames *this, UErrorCode *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

void sub_1953F36D0(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  free(a1);
}

uint64_t sub_1953F3730()
{
  if (qword_1EAECA310)
  {
    uhash_close(qword_1EAECA310);
    qword_1EAECA310 = 0;
  }

  byte_1EAECA308 = 0;
  return 1;
}

void *sub_1953F3870(void *a1, uint64_t a2, int *a3)
{
  *a1 = &unk_1F09436C8;
  umtx_lock(&unk_1ED443218);
  if ((byte_1ED443200 & 1) == 0)
  {
    v6 = uhash_open(uhash_hashChars, uhash_compareChars, 0, a3);
    qword_1ED443208 = v6;
    if (*a3 > 0)
    {
      goto LABEL_17;
    }

    uhash_setKeyDeleter(v6, MEMORY[0x1E69E9B38]);
    uhash_setValueDeleter(qword_1ED443208, sub_1953F3B88);
    byte_1ED443200 = 1;
    sub_195400588(0x13u, sub_1953F3BE8);
  }

  if (*a3 <= 0)
  {
    v7 = uhash_get(qword_1ED443208, *(a2 + 40));
    if (!v7)
    {
      operator new();
    }

    v8 = v7;
    ++*(v7 + 8);
    *(v7 + 16) = uprv_getUTCtime();
    v9 = dword_1ED443210++;
    if (v9 >= 99)
    {
      v15 = -1;
      UTCtime = uprv_getUTCtime();
      v11 = uhash_nextElement(qword_1ED443208, &v15);
      if (v11)
      {
        v12 = v11;
        do
        {
          v13 = *(v12 + 8);
          if (*(v13 + 8) <= 0 && UTCtime - *(v13 + 16) > 180000.0)
          {
            uhash_removeElement(qword_1ED443208, v12);
          }

          v12 = uhash_nextElement(qword_1ED443208, &v15);
        }

        while (v12);
      }

      dword_1ED443210 = 0;
    }

    a1[1] = v8;
  }

LABEL_17:
  umtx_unlock(&unk_1ED443218);
  return a1;
}

void sub_1953F3B88(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  free(a1);
}

uint64_t sub_1953F3BE8()
{
  if (qword_1ED443208)
  {
    uhash_close(qword_1ED443208);
    qword_1ED443208 = 0;
  }

  byte_1ED443200 = 0;
  return 1;
}

void sub_1953F3C24(icu::UObject *a1)
{
  *a1 = &unk_1F09436C8;
  umtx_lock(&unk_1ED443218);
  v2 = *(a1 + 1);
  if (v2)
  {
    --*(v2 + 8);
  }

  umtx_unlock(&unk_1ED443218);

  icu::UObject::~UObject(a1);
}

void sub_1953F3CA8(icu::UObject *a1)
{
  sub_1953F3C24(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953F3CE0(void *a1, void *lpsrc)
{
  if (a1 == lpsrc)
  {
    return 1;
  }

  if (result)
  {
    return a1[1] == *(result + 8);
  }

  return result;
}

void *icu::TimeZoneNames::createInstance(icu::TimeZoneNames *this, const icu::Locale *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t icu::TimeZoneNames::createTZDBInstance(icu::TimeZoneNames *this, const icu::Locale *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t icu::TimeZoneNames::getDisplayName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v14 = *MEMORY[0x1E69E9840];
  (*(*a1 + 80))(a1);
  if (*(a4 + 8) <= 0x1Fu)
  {
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    icu::UnicodeString::UnicodeString(v12, v13, 0, 0x20u);
    (*(*a1 + 56))(a1, a2, v12, a5);
    (*(*a1 + 72))(a1, v12, a3, a4);
    icu::UnicodeString::~UnicodeString(v10, v12);
  }

  return a4;
}

void *icu::TimeZoneNames::getDisplayNames(void *result, uint64_t a2, unsigned int *a3, unsigned int a4, uint64_t a5, int *a6, double a7)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0 && *(a2 + 8) >= 0x20u)
  {
    v15 = 0u;
    v16 = 0u;
    v18 = 0;
    v17 = 0u;
    v14 = &unk_1F0935D00;
    v9 = 2;
    LOWORD(v15) = 2;
    if (a4 >= 1)
    {
      v12 = result;
      v13 = a4;
      do
      {
        (*(*v12 + 80))(v12, a2, *a3, a5);
        v9 = *(a5 + 8);
        if (v9 <= 0x1F)
        {
          if (v15 <= 0x1Fu)
          {
            (*(*v12 + 56))(v12, a2, &v14, a7);
          }

          (*(*v12 + 72))(v12, &v14, *a3, a5);
        }

        a5 += 64;
        ++a3;
        --v13;
      }

      while (v13);
    }

    return icu::UnicodeString::~UnicodeString(v9, &v14);
  }

  return result;
}

void *icu::TimeZoneNames::MatchInfoCollection::MatchInfoCollection(void *this)
{
  *this = &unk_1F0943790;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F0943790;
  this[1] = 0;
  return this;
}

void icu::TimeZoneNames::MatchInfoCollection::~MatchInfoCollection(icu::TimeZoneNames::MatchInfoCollection *this)
{
  *this = &unk_1F0943790;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_1F0943790;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_1F0943790;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19A8B2600);
}

void icu::TimeZoneNames::MatchInfoCollection::addZone(uint64_t result, int a2, int a3, UChar **a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v13 = v10;
    v14 = v9;
    v15 = v8;
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v19 = v11;
    v20 = v12;
    operator new();
  }
}

uint64_t icu::TimeZoneNames::MatchInfoCollection::matches(icu::TimeZoneNames::MatchInfoCollection *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  result = *(this + 1);
  if (!result)
  {
    operator new();
  }

  return result;
}

void icu::TimeZoneNames::MatchInfoCollection::addMetaZone(uint64_t result, int a2, int a3, UChar **a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v13 = v10;
    v14 = v9;
    v15 = v8;
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v19 = v11;
    v20 = v12;
    operator new();
  }
}

uint64_t icu::TimeZoneNames::MatchInfoCollection::size(icu::TimeZoneNames::MatchInfoCollection *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

unsigned int *icu::TimeZoneNames::MatchInfoCollection::getNameTypeAt(icu::UVector **this, signed int a2)
{
  result = icu::UVector::elementAt(this[1], a2);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t icu::TimeZoneNames::MatchInfoCollection::getMatchLengthAt(icu::UVector **this, signed int a2)
{
  result = icu::UVector::elementAt(this[1], a2);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t icu::TimeZoneNames::MatchInfoCollection::getTimeZoneIDAt(icu::UVector **this, signed int a2, icu::UnicodeString *a3)
{
  if (*(a3 + 4))
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a3 + 4) & 0x1E;
  }

  *(a3 + 4) = v4;
  result = icu::UVector::elementAt(this[1], a2);
  if (result)
  {
    if (*(result + 76))
    {
      icu::UnicodeString::copyFrom(a3, (result + 8), 0);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t icu::TimeZoneNames::MatchInfoCollection::getMetaZoneIDAt(icu::UVector **this, signed int a2, icu::UnicodeString *a3)
{
  if (*(a3 + 4))
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a3 + 4) & 0x1E;
  }

  *(a3 + 4) = v4;
  result = icu::UVector::elementAt(this[1], a2);
  if (result)
  {
    if (*(result + 76))
    {
      return 0;
    }

    else
    {
      icu::UnicodeString::copyFrom(a3, (result + 8), 0);
      return 1;
    }
  }

  return result;
}

uint64_t sub_1953F48D0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    icu::UnicodeString::~UnicodeString(a2, (result + 8));

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t *sub_1953F4960@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    icu::UnicodeString::~UnicodeString(a2, (v3 + 8));
    MEMORY[0x19A8B2600](v3, 0x1092C40F16F4E99);
  }

  return a1;
}

uint64_t *sub_1953F49AC(uint64_t *result, void *a2, uint64_t (*a3)(void *), UErrorCode *a4)
{
  if (*a4 < 1)
  {
    v4 = *result;
    if (*result)
    {
      if (!*(result + 14))
      {
        operator new();
      }

      if (*(v4 + 24))
      {

        return icu::UVector::adoptElement(v4, a2, a4);
      }

      else
      {

        return icu::UVector::addElement(v4, a2, a4);
      }
    }

    else
    {
      *result = a2;
    }
  }

  else if (a3)
  {

    return a3(a2);
  }

  return result;
}

uint64_t icu::TextTrieMap::TextTrieMap(uint64_t this, char a2, void (*a3)(void *))
{
  *this = &unk_1F0943858;
  *(this + 8) = a2;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 40) = 1;
  *(this + 48) = a3;
  return this;
}

{
  *this = &unk_1F0943858;
  *(this + 8) = a2;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 40) = 1;
  *(this + 48) = a3;
  return this;
}

void icu::TextTrieMap::~TextTrieMap(icu::TextTrieMap *this)
{
  *this = &unk_1F0943858;
  if (*(this + 7) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(this + 2);
      v5 = *(v4 + v2);
      if (v5)
      {
        if (*(v4 + v2 + 14))
        {
          (*(*v5 + 8))(v5);
        }

        else
        {
          v6 = *(this + 6);
          if (v6)
          {
            v6();
          }
        }
      }

      ++v3;
      v2 += 16;
    }

    while (v3 < *(this + 7));
  }

  free(*(this + 2));
  v7 = *(this + 4);
  if (v7)
  {
    if (*(v7 + 2) >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(this + 6);
        if (v9)
        {
          v10 = icu::UVector::elementAt(v7, v8 + 1);
          v9(v10);
          v7 = *(this + 4);
        }

        v8 += 2;
      }

      while (v8 < *(v7 + 2));
    }

    (*(*v7 + 8))(v7);
  }
}

{
  icu::TextTrieMap::~TextTrieMap(this);

  JUMPOUT(0x19A8B2600);
}

icu::UVector *icu::TextTrieMap::put(icu::TextTrieMap *this, const icu::UnicodeString *a2, void *a3, icu::ZNStringPool *a4, UErrorCode *a5)
{
  TerminatedBuffer = icu::UnicodeString::getTerminatedBuffer(a2);
  v10 = icu::ZNStringPool::get(a4, TerminatedBuffer, a5);

  return icu::TextTrieMap::put(this, v10, a3, a5);
}

UChar *icu::ZNStringPool::get(icu::ZNStringPool *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  TerminatedBuffer = icu::UnicodeString::getTerminatedBuffer(a2);

  return icu::ZNStringPool::get(this, TerminatedBuffer, a3);
}

icu::UVector *icu::TextTrieMap::put(uint64_t a1, void *a2, void *a3, UErrorCode *a4)
{
  *(a1 + 40) = 0;
  result = *(a1 + 32);
  if (!result)
  {
    operator new();
  }

  if (*a4 <= 0 && (result = icu::UVector::addElement(result, a2, a4), *a4 <= 0))
  {
    v9 = *(a1 + 32);

    return icu::UVector::addElement(v9, a3, a4);
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {

      return v8(a3);
    }
  }

  return result;
}

void *icu::TextTrieMap::putImpl(icu::TextTrieMap *this, const icu::UnicodeString *a2, void *a3, UErrorCode *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!*(this + 2))
  {
    *(this + 6) = 512;
    result = malloc_type_malloc(0x2000uLL, 0x1080040FC6463CFuLL);
    *(this + 2) = result;
    if (!result)
    {
      *a4 = U_MEMORY_ALLOCATION_ERROR;
      return result;
    }

    *result = 0;
    result[1] = 0;
    *(this + 7) = 1;
  }

  v18 = 0u;
  v19 = 0u;
  v21 = 0;
  v20 = 0u;
  v17 = &unk_1F0935D00;
  LOWORD(v18) = 2;
  if (!*(this + 8))
  {
    v10 = *(a2 + 4);
    if ((v10 & 0x11) != 0)
    {
      v11 = 0;
      if ((v10 & 0x8000) == 0)
      {
        goto LABEL_21;
      }
    }

    else if ((v10 & 2) != 0)
    {
      v11 = a2 + 10;
      if ((v10 & 0x8000) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v11 = *(a2 + 3);
      if ((v10 & 0x8000) == 0)
      {
        goto LABEL_21;
      }
    }

    v12 = *(a2 + 3);
    goto LABEL_22;
  }

  v9 = icu::UnicodeString::fastCopyFrom(&v17, a2);
  icu::UnicodeString::foldCase(v9, 0);
  v10 = v18;
  if ((v18 & 0x11) != 0)
  {
    v11 = 0;
    if ((v18 & 0x8000) != 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    v12 = v10 >> 5;
    goto LABEL_22;
  }

  if ((v18 & 2) == 0)
  {
    v11 = v19;
    if ((v18 & 0x8000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v11 = &v18 + 2;
  if ((v18 & 0x8000) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v12 = DWORD1(v18);
LABEL_22:
  v13 = *(this + 2);
  if (v12 >= 1)
  {
    v14 = v12;
    do
    {
      v15 = *v11;
      v11 += 2;
      v13 = icu::TextTrieMap::addChildNode(this, v13, v15, a4);
      --v14;
    }

    while (v14);
  }

  sub_1953F49AC(v13, a3, *(this + 6), a4);
  return icu::UnicodeString::~UnicodeString(v16, &v17);
}

uint64_t icu::TextTrieMap::addChildNode(icu::TextTrieMap *this, uint64_t a2, unsigned int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v6 = a3;
  v7 = a2;
  v9 = *(a2 + 10);
  if (*(a2 + 10))
  {
    v10 = 0;
    while (1)
    {
      v11 = v9;
      result = *(this + 2) + 16 * v9;
      v12 = *(result + 8);
      if (v12 == a3)
      {
        break;
      }

      if (v12 > a3)
      {
        goto LABEL_11;
      }

      v9 = *(result + 12);
      v10 = v11;
      if (!*(result + 12))
      {
        v10 = v11;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v10 = 0;
LABEL_10:
    LOWORD(v11) = 0;
LABEL_11:
    v13 = *(this + 7);
    v14 = *(this + 2);
    if (v13 == *(this + 6))
    {
      if (!icu::TextTrieMap::growNodes(this))
      {
        result = 0;
        *a4 = 7;
        return result;
      }

      v15 = v7 - v14;
      v14 = *(this + 2);
      v7 = v14 + 16 * (v15 >> 4);
      v13 = *(this + 7);
    }

    result = v14 + 16 * v13;
    *result = 0;
    *(result + 8) = 0;
    *(result + 8) = v6;
    *(result + 12) = v11;
    v16 = *(this + 7);
    if (v10)
    {
      *(*(this + 2) + 16 * v10 + 12) = v16;
    }

    else
    {
      *(v7 + 10) = v16;
    }

    *(this + 7) = v16 + 1;
  }

  return result;
}

uint64_t icu::TextTrieMap::growNodes(icu::TextTrieMap *this)
{
  v1 = *(this + 6);
  if (v1 == 0xFFFF)
  {
    return 0;
  }

  if (v1 >= 64535)
  {
    v1 = 64535;
  }

  v4 = v1 + 1000;
  result = malloc_type_malloc(16 * (v1 + 1000), 0x1080040FC6463CFuLL);
  if (result)
  {
    v5 = result;
    memcpy(result, *(this + 2), 16 * *(this + 7));
    free(*(this + 2));
    *(this + 2) = v5;
    *(this + 6) = v4;
    return 1;
  }

  return result;
}

uint64_t icu::TextTrieMap::getChildNode(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 10);
  if (!*(a2 + 10))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  while (1)
  {
    result = v4 + 16 * v3;
    v6 = *(result + 8);
    if (v6 == a3)
    {
      break;
    }

    if (v6 <= a3)
    {
      v3 = *(result + 12);
      if (*(result + 12))
      {
        continue;
      }
    }

    return 0;
  }

  return result;
}

icu::UVector *icu::TextTrieMap::buildTrie(icu::TextTrieMap *this, UErrorCode *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  result = *(this + 4);
  if (result)
  {
    if (*(result + 2) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = icu::UVector::elementAt(result, v5);
        v7 = icu::UVector::elementAt(*(this + 4), v5 + 1);
        memset(v10, 0, sizeof(v10));
        v9 = v6;
        icu::UnicodeString::UnicodeString(v10, 1, &v9, -1);
        icu::TextTrieMap::putImpl(this, v10, v7, a2);
        icu::UnicodeString::~UnicodeString(v8, v10);
        result = *(this + 4);
        v5 += 2;
      }

      while (v5 < *(result + 2));
    }

    result = (*(*result + 8))(result, a2);
    *(this + 4) = 0;
  }

  return result;
}

void icu::TextTrieMap::search(unsigned __int16 **a1, uint64_t a2, uint64_t a3, uint64_t (***a4)(void, void, unsigned __int16 *, int *), UErrorCode *a5)
{
  v7 = a3;
  umtx_lock(&unk_1EAECA3B8);
  if (a1[4])
  {
    icu::TextTrieMap::buildTrie(a1, a5);
  }

  umtx_unlock(&unk_1EAECA3B8);
  v10 = a1[2];
  if (v10)
  {

    icu::TextTrieMap::search(a1, v10, a2, v7, v7, a4, a5);
  }
}

void *icu::TextTrieMap::search(void *result, unsigned __int16 *a2, uint64_t a3, int a4, unsigned int a5, uint64_t (***a6)(void, void, unsigned __int16 *, int *), int *a7)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    return result;
  }

  v12 = a2;
  v13 = result;
  if (*a2)
  {
    result = (**a6)(a6, a5 - a4, a2, a7);
    if (!result || *a7 > 0)
    {
      return result;
    }
  }

  if (*(v13 + 8))
  {
    v15 = icu::UnicodeString::char32At(a3, a5);
    v32 = 0u;
    v33 = 0u;
    if (v15 < 0x10000)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v17 = v16 + a5;
    v30 = 0uLL;
    v31 = 0uLL;
    icu::UnicodeString::UnicodeString(&v30, v15);
    icu::UnicodeString::foldCase(&v30, 0);
    v18 = 0;
    v19 = &v30 | 0xA;
    if ((BYTE8(v30) & 2) == 0)
    {
      v19 = *(&v31 + 1);
    }

    while (1)
    {
      if ((WORD4(v30) & 0x8000) != 0)
      {
        v20 = HIDWORD(v30);
        if (v18 >= SHIDWORD(v30))
        {
LABEL_43:
          icu::UnicodeString::~UnicodeString(v18, &v30);
          return icu::TextTrieMap::search(v13, v12, a3, a4, v17, a6, a7);
        }
      }

      else
      {
        v20 = WORD4(v30) >> 5;
        if (v18 >= v20)
        {
          goto LABEL_43;
        }
      }

      if (v20 <= v18)
      {
        v21 = 0xFFFF;
      }

      else
      {
        v21 = *(v19 + 2 * v18);
      }

      v22 = v12[5];
      if (!v12[5])
      {
        return icu::UnicodeString::~UnicodeString(v18, &v30);
      }

      ++v18;
      while (1)
      {
        v12 = (v13[2] + 16 * v22);
        v23 = v12[4];
        if (v23 == v21)
        {
          break;
        }

        if (v23 <= v21)
        {
          v22 = v12[6];
          if (v12[6])
          {
            continue;
          }
        }

        return icu::UnicodeString::~UnicodeString(v18, &v30);
      }
    }
  }

  v24 = *(a3 + 8);
  if ((v24 & 0x8000u) == 0)
  {
    v25 = v24 >> 5;
  }

  else
  {
    v25 = *(a3 + 12);
  }

  if (v25 <= a5)
  {
    v27 = 0xFFFF;
  }

  else
  {
    if ((v24 & 2) != 0)
    {
      v26 = a3 + 10;
    }

    else
    {
      v26 = *(a3 + 24);
    }

    v27 = *(v26 + 2 * a5);
  }

  v28 = v12[5];
  if (v12[5])
  {
    v17 = a5 + 1;
    do
    {
      v12 = (v13[2] + 16 * v28);
      v29 = v12[4];
      if (v29 == v27)
      {
        return icu::TextTrieMap::search(v13, v12, a3, a4, v17, a6, a7);
      }

      if (v29 > v27)
      {
        break;
      }

      v28 = v12[6];
    }

    while (v12[6]);
  }

  return result;
}

icu::ZNStringPool *icu::ZNStringPool::ZNStringPool(icu::ZNStringPool *this, UErrorCode *a2)
{
  *this = 0;
  *(this + 1) = 0;
  if (*a2 <= 0)
  {
    operator new();
  }

  return this;
}

void icu::ZNStringPool::~ZNStringPool(icu::ZNStringPool *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    uhash_close(v2);
    *(this + 1) = 0;
  }

  v3 = *this;
  if (*this)
  {
    do
    {
      v4 = *v3;
      MEMORY[0x19A8B2600]();
      *this = v4;
      v3 = v4;
    }

    while (v4);
  }
}

UChar *icu::ZNStringPool::get(uint64_t *a1, const UChar *a2, int *a3)
{
  if (*a3 <= 0)
  {
    v3 = uhash_get(a1[1], a2);
    if (v3)
    {
      return v3;
    }

    v7 = u_strlen(a2);
    v8 = v7;
    v9 = *(*a1 + 8);
    if (2000 - v9 > v7)
    {
      v3 = (*a1 + 2 * v9 + 12);
      u_strcpy(v3, a2);
      v10 = a1[1];
      *(*a1 + 8) += v8 + 1;
      uhash_put(v10, v3, v3, a3);
      return v3;
    }

    if (v7 < 2000)
    {
      operator new();
    }

    *a3 = 5;
  }

  return &unk_195493760;
}

void *icu::ZNStringPool::adopt(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return &unk_195493760;
  }

  v3 = a2;
  if (a2 && !uhash_get(*(a1 + 8), a2))
  {
    uhash_put(*(a1 + 8), v3, v3, a3);
  }

  return v3;
}

void sub_1953F594C(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953F5990(uint64_t a1, void *a2)
{
  result = icu::StringEnumeration::StringEnumeration(a1);
  *result = &unk_1F0943878;
  *(result + 116) = 0;
  *(result + 120) = 0;
  *(result + 136) = *a2;
  *a2 = 0;
  v4 = *(result + 136);
  *(result + 128) = v4;
  if (v4)
  {
    *(result + 116) = *(v4 + 8);
  }

  return result;
}

uint64_t sub_1953F59F4(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = *(a1 + 128);
  if (!v5)
  {
    return 0;
  }

  v6 = *(a1 + 120);
  if (v6 >= *(a1 + 116))
  {
    return 0;
  }

  v2 = a1 + 8;
  *(a1 + 120) = v6 + 1;
  v7 = icu::UVector::elementAt(v5, v6);
  icu::UnicodeString::unBogus(a1 + 8);
  if (*(a1 + 16) < 0)
  {
    v8 = *(a1 + 20);
  }

  else
  {
    v8 = *(a1 + 16) >> 5;
  }

  icu::UnicodeString::doReplace(a1 + 8, 0, v8, v7, 0, 0xFFFFFFFFLL);
  return v2;
}

void sub_1953F5AA4(icu::StringEnumeration *this)
{
  *this = &unk_1F0943878;
  v2 = *(this + 17);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::StringEnumeration::~StringEnumeration(this);
}

void sub_1953F5B24(icu::StringEnumeration *a1)
{
  sub_1953F5AA4(a1);

  JUMPOUT(0x19A8B2600);
}

void *sub_1953F5B5C(void *a1)
{
  *a1 = &unk_1F09438E0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1953F5BC8(void *a1)
{
  *a1 = &unk_1F09438E0;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953F5C54(uint64_t a1, int a2, _BYTE *a3, UErrorCode *a4)
{
  v16[8] = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    return 0;
  }

  if (*a3)
  {
    if (a3[14])
    {
      v9 = *(*a3 + 8);
      if (v9 < 1)
      {
        return 1;
      }
    }

    else
    {
      v9 = 1;
    }

    for (i = 0; i != v9; ++i)
    {
      v11 = *a3;
      if (a3[14])
      {
        v11 = icu::UVector::elementAt(*a3, i);
      }

      if (v11 && (*(a1 + 8) & *v11) != 0)
      {
        v12 = *(a1 + 16);
        if (!v12)
        {
          operator new();
        }

        if (*a4 <= 0)
        {
          v13 = *(v11 + 8);
          v14 = *v11;
          if (v13)
          {
            icu::UnicodeString::UnicodeString(v16, v13, 0xFFFFFFFFLL);
            icu::TimeZoneNames::MatchInfoCollection::addZone(v12, v14, a2, v16, a4);
          }

          else
          {
            icu::UnicodeString::UnicodeString(v16, *(v11 + 16), 0xFFFFFFFFLL);
            icu::TimeZoneNames::MatchInfoCollection::addMetaZone(v12, v14, a2, v16, a4);
          }

          icu::UnicodeString::~UnicodeString(v15, v16);
          if (*a4 <= 0 && *(a1 + 12) < a2)
          {
            *(a1 + 12) = a2;
          }
        }
      }
    }
  }

  return 1;
}

uint64_t sub_1953F5E0C(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = &unk_1F0943908;
  icu::Locale::Locale((a1 + 8), a2);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = &unk_1F0943858;
  *(a1 + 272) = 1;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 304) = 1;
  *(a1 + 312) = j__free_4;
  sub_1953F5EC4(a1, a2, a3);
  return a1;
}

void sub_1953F5EC4(void *result, uint64_t a2, int *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v11 = 0;
    v5 = ures_open("icudt76l-zone", *(a2 + 40), &v11);
    result[29] = v5;
    result[29] = ures_getByKeyWithFallback(v5, "zoneStrings", v5, &v11);
    if (v11 >= 1)
    {
      *a3 = v11;
LABEL_5:
      sub_1953F606C(result);
      return;
    }

    result[31] = uhash_open(uhash_hashUChars, uhash_compareUChars, 0, a3);
    result[30] = uhash_open(uhash_hashUChars, uhash_compareUChars, 0, a3);
    if (*a3 >= 1)
    {
      goto LABEL_5;
    }

    uhash_setValueDeleter(result[31], sub_1953F60BC);
    v6 = uhash_setValueDeleter(result[30], sub_1953F60BC);
    Default = icu::TimeZone::createDefault(v6);
    CanonicalCLDRID = icu::ZoneMeta::getCanonicalCLDRID(Default, v8);
    if (CanonicalCLDRID)
    {
      sub_1951F3478(v12, &CanonicalCLDRID);
      sub_1953F6128(result, v12, a3);
      icu::UnicodeString::~UnicodeString(v9, v12);
    }

    (*(*Default + 8))(Default);
  }
}

void sub_1953F606C(void *a1)
{
  v2 = a1[29];
  if (v2)
  {
    ures_close(v2);
    a1[29] = 0;
  }

  v3 = a1[31];
  if (v3)
  {
    uhash_close(v3);
    a1[31] = 0;
  }

  v4 = a1[30];
  if (v4)
  {
    uhash_close(v4);
    a1[30] = 0;
  }
}

uint64_t sub_1953F60BC(uint64_t result)
{
  if (result != "<empty>" && result != 0)
  {
    if (*(result + 57))
    {
      free(*result);
    }

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t sub_1953F6128(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1953F627C(a1, a2, a3);
  result = (*(*a1 + 48))(a1, a2, a3);
  v7 = result;
  if (*a3 <= 0)
  {
    v8 = (*(*result + 56))(result, a3);
    if (v8)
    {
      v9 = *a3 <= 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = v8;
      do
      {
        sub_1953F6434(a1, v10, a3);
        v10 = (*(*v7 + 56))(v7, a3);
        if (v10)
        {
          v11 = *a3 <= 0;
        }

        else
        {
          v11 = 0;
        }
      }

      while (v11);
    }
  }

  else if (!result)
  {
    return result;
  }

  v12 = *(*v7 + 8);

  return v12(v7);
}

uint64_t sub_1953F627C(uint64_t a1, uint64_t a2, int *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v7 = v6;
  v8 = v6 >> 5;
  if (v7 < 0)
  {
    v8 = *(a2 + 12);
  }

  if (v8 >= 129)
  {
    v3 = 0;
    *a3 = 5;
    return v3;
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v18 = v19;
  *(v19 + icu::UnicodeString::extract(a2, &v18, 128, a3)) = 0;
  v10 = uhash_get(*(a1 + 240), v19);
  if (v10)
  {
    return v10;
  }

  v15 = &unk_1F0943AD0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  sub_1953F6E8C(&v15, *(a1 + 232), a2, a3);
  v12 = *(a1 + 240);
  for (i = 8; i != 64; i += 8)
  {
    if (*(&v15 + i) == &unk_195493900)
    {
      *(&v15 + i) = 0;
    }
  }

  v3 = sub_1953F7038(v12, v16, a2, a3);
  v14 = *a3;
  icu::ResourceSink::~ResourceSink(&v15);
  if (v14 > 0)
  {
    return 0;
  }

  return v3;
}

char *sub_1953F6434(uint64_t a1, uint64_t a2, int *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v7 = v6;
  v8 = v6 >> 5;
  if (v7 < 0)
  {
    v8 = *(a2 + 12);
  }

  if (v8 >= 124)
  {
    result = 0;
    *a3 = 5;
    return result;
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v21 = v22;
  icu::UnicodeString::extract(a2, &v21, 128, a3);
  if (*a3 > 0)
  {
    return 0;
  }

  v10 = *(a2 + 8);
  v11 = v10;
  v12 = v10 >> 5;
  if (v11 < 0)
  {
    v12 = *(a2 + 12);
  }

  *(v22 + v12) = 0;
  v13 = uhash_get(*(a1 + 248), v22);
  if (!v13)
  {
    v18 = &unk_1F0943AD0;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    sub_1953F6CEC(&v18, *(a1 + 232), a2, a3);
    v15 = *(a1 + 248);
    for (i = 8; i != 64; i += 8)
    {
      if (*(&v18 + i) == &unk_195493900)
      {
        *(&v18 + i) = 0;
      }
    }

    v14 = sub_1953F6DC0(v15, v19, a2, a3);
    v17 = *a3;
    icu::ResourceSink::~ResourceSink(&v18);
    if (v17 <= 0)
    {
      goto LABEL_13;
    }

    return 0;
  }

  v14 = v13;
LABEL_13:
  if (v14 == "<empty>")
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

void sub_1953F661C(void *a1)
{
  *a1 = &unk_1F0943908;
  v2 = (a1 + 1);
  sub_1953F606C(a1);
  icu::TextTrieMap::~TextTrieMap((a1 + 33));
  icu::Locale::~Locale(v3, v2);

  icu::TimeZoneNames::~TimeZoneNames(a1);
}

void sub_1953F6688(void *a1)
{
  sub_1953F661C(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953F6724(icu::ZoneMeta *a1)
{
  if (*a1 <= 0)
  {
    icu::ZoneMeta::getAvailableMetazoneIDs(a1);
    operator new();
  }

  return 0;
}

uint64_t sub_1953F67C4(icu::ZoneMeta *a1, const icu::UnicodeString *a2)
{
  if (*a2 <= 0)
  {
    v12 = v7;
    v13 = v6;
    v14 = v5;
    v15 = v4;
    v16 = v3;
    v17 = v2;
    v18 = v8;
    v19 = v9;
    if (icu::ZoneMeta::getMetazoneMappings(a1, a2))
    {
      v11 = 0;
      operator new();
    }

    operator new();
  }

  return 0;
}

const icu::UnicodeString *sub_1953F6A10(icu::ZoneMeta *a1, char *a2, const icu::UnicodeString *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  icu::UnicodeString::UnicodeString(v8, a2, -1);
  icu::ZoneMeta::getZoneIdByMetazone(a1, v8, a3, v5);
  icu::UnicodeString::~UnicodeString(v6, v8);
  return a3;
}

icu::UnicodeString *sub_1953F6A94(uint64_t a1, uint64_t a2, uint64_t a3, icu::UnicodeString *this)
{
  icu::UnicodeString::setToBogus(this);
  if (*(a2 + 8) >= 0x20u)
  {
    umtx_lock(&unk_1ED443268);
    v14 = 0;
    v8 = sub_1953F6434(a1, a2, &v14);
    v9 = v14;
    umtx_unlock(&unk_1ED443268);
    if (v9 <= 0 && v8 != 0)
    {
      v11 = sub_1953F9430(a3);
      if ((v11 & 0x80000000) == 0)
      {
        if (*&v8[8 * v11])
        {
          v13 = *&v8[8 * v11];
          icu::UnicodeString::setTo(this, 1, &v13, 0xFFFFFFFF);
        }
      }
    }
  }

  return this;
}

icu::UnicodeString *sub_1953F6B68(uint64_t a1, uint64_t a2, uint64_t a3, icu::UnicodeString *this)
{
  icu::UnicodeString::setToBogus(this);
  if (*(a2 + 8) >= 0x20u)
  {
    umtx_lock(&unk_1ED443268);
    v14 = 0;
    v8 = sub_1953F627C(a1, a2, &v14);
    v9 = v14;
    umtx_unlock(&unk_1ED443268);
    if (v9 <= 0 && v8 != 0)
    {
      v11 = sub_1953F9430(a3);
      if ((v11 & 0x80000000) == 0)
      {
        if (*(v8 + 8 * v11))
        {
          v13 = *(v8 + 8 * v11);
          icu::UnicodeString::setTo(this, 1, &v13, 0xFFFFFFFF);
        }
      }
    }
  }

  return this;
}

icu::UnicodeString *sub_1953F6C3C(uint64_t a1, uint64_t a2, icu::UnicodeString *this)
{
  icu::UnicodeString::setToBogus(this);
  umtx_lock(&unk_1ED443268);
  v10 = 0;
  v6 = sub_1953F627C(a1, a2, &v10);
  LODWORD(a1) = v10;
  umtx_unlock(&unk_1ED443268);
  v7 = a1 > 0 || v6 == 0;
  if (!v7 && *v6)
  {
    v9 = *v6;
    icu::UnicodeString::setTo(this, 1, &v9, 0xFFFFFFFF);
  }

  return this;
}

void sub_1953F6CEC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1953F9130(a3, v8, a4);
    v7 = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    ures_getAllItemsWithFallback(a2, v8, a1, &v7);
    if (v7 <= 0)
    {
      *a4 = v7;
    }
  }
}

char *sub_1953F6DC0(uint64_t a1, const icu::UnicodeString *a2, UChar **a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  MetaZoneID = icu::ZoneMeta::findMetaZoneID(a3, a2);
  if (memcmp(a2, &unk_1954938C8, 0x38uLL))
  {
    operator new();
  }

  v4 = "<empty>";
  uhash_put(a1, MetaZoneID, "<empty>", a4);
  return v4;
}

void *sub_1953F6E8C(uint64_t a1, uint64_t a2, UChar **a3, _DWORD *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  icu::UnicodeString::UnicodeString(&v22, a3);
  v7 = 0;
  while ((SWORD4(v22) & 0x80000000) == 0)
  {
    v8 = WORD4(v22) >> 5;
    if (v7 >= v8)
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *v13 = 0u;
      v14 = 0u;
      if (WORD4(v22) >> 5 <= 0x80u)
      {
        goto LABEL_17;
      }

LABEL_15:
      v10 = 5;
      goto LABEL_18;
    }

LABEL_7:
    if (v8 > v7)
    {
      if ((BYTE8(v22) & 2) != 0)
      {
        v9 = &v22 | 0xA;
      }

      else
      {
        v9 = *(&v23 + 1);
      }

      if (*(v9 + 2 * v7) == 47)
      {
        icu::UnicodeString::setCharAt(&v22, v7, 58);
      }
    }

    ++v7;
  }

  v8 = SHIDWORD(v22);
  if (v7 < SHIDWORD(v22))
  {
    v8 = HIDWORD(v22);
    goto LABEL_7;
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *v13 = 0u;
  v14 = 0u;
  if (SHIDWORD(v22) > 128)
  {
    goto LABEL_15;
  }

LABEL_17:
  icu::UnicodeString::extract(&v22, 0, v8, v13, 129);
  v12 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  ures_getAllItemsWithFallback(a2, v13, a1, &v12);
  v10 = v12;
  if (v12 > 0)
  {
    return icu::UnicodeString::~UnicodeString(v10, &v22);
  }

LABEL_18:
  *a4 = v10;
  return icu::UnicodeString::~UnicodeString(v10, &v22);
}

uint64_t sub_1953F7038(uint64_t a1, const icu::UnicodeString *a2, icu::ZoneMeta *a3, int *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    if (!*a2)
    {
      v13 = 0u;
      v14 = 0u;
      v16 = 0;
      v15 = 0u;
      v12 = &unk_1F0935D00;
      LOWORD(v13) = 2;
      sub_1953F7C9C(a3, &v12);
      LODWORD(v6) = v13 >> 5;
      if ((v13 & 0x8000u) == 0)
      {
        v6 = v6;
      }

      else
      {
        v6 = DWORD1(v13);
      }

      if (v6 >= 1)
      {
        TerminatedBuffer = icu::UnicodeString::getTerminatedBuffer(&v12);
        v8 = v13 >> 5;
        if ((v13 & 0x8000u) != 0)
        {
          v8 = DWORD1(v13);
        }

        v9 = 2 * v8 + 2;
        v10 = malloc_type_malloc(v9, 0x1000040BDFB0063uLL);
        if (!v10)
        {
          *a4 = 7;
          icu::UnicodeString::~UnicodeString(7, &v12);
          return 0;
        }

        memcpy(v10, TerminatedBuffer, v9);
      }

      icu::UnicodeString::~UnicodeString(v6, &v12);
    }

    icu::ZoneMeta::findTimeZoneID(a3, a2);
    operator new();
  }

  return 0;
}

uint64_t sub_1953F722C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, UErrorCode *a5)
{
  v13 = &unk_1F09438E0;
  v14 = a4;
  v15 = 0;
  v16 = 0;
  umtx_lock(&unk_1ED443268);
  v9 = sub_1953F73A0(a1, &v13, a2, a3, a5);
  if (*a5 > 0)
  {
    goto LABEL_2;
  }

  v10 = v9;
  if (!v9)
  {
    sub_1953F746C(a1, a5);
    v12 = sub_1953F73A0(a1, &v13, a2, a3, a5);
    if (*a5 > 0)
    {
      goto LABEL_2;
    }

    v10 = v12;
    if (v12)
    {
      goto LABEL_4;
    }

    sub_1953F7558(a1, a5);
    sub_1953F746C(a1, a5);
    *(a1 + 256) = 1;
    if (*a5 > 0)
    {
LABEL_2:
      v10 = 0;
      goto LABEL_4;
    }

    v10 = sub_1953F73A0(a1, &v13, a2, a3, a5);
  }

LABEL_4:
  umtx_unlock(&unk_1ED443268);
  v13 = &unk_1F09438E0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  return v10;
}

uint64_t sub_1953F73A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  v6 = a4;
  icu::TextTrieMap::search((a1 + 264), a3, a4, a2, a5);
  if (*a5 > 0)
  {
    return 0;
  }

  result = *(a2 + 16);
  v11 = *(a2 + 12);
  *(a2 + 16) = 0;
  *(a2 + 12) = 0;
  if (result)
  {
    v12 = *(a3 + 8);
    v13 = v12;
    v14 = v12 >> 5;
    if (v13 < 0)
    {
      v14 = *(a3 + 12);
    }

    if (v11 != v14 - v6 && !*(a1 + 256))
    {
      (*(*result + 8))(result);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1953F746C(uint64_t result, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v8 = v2;
    v9 = v3;
    v5 = result;
    v7 = -1;
    v6 = uhash_nextElement(*(result + 248), &v7);
    if (v6)
    {
      while (1)
      {
        if (*(v6 + 8) != "<empty>")
        {
          result = sub_1953F94A8(*(v6 + 8), *(v6 + 16), 0, v5 + 264, a2);
          if (*a2 >= 1)
          {
            break;
          }
        }

        v6 = uhash_nextElement(*(v5 + 248), &v7);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v7 = -1;
      while (1)
      {
        result = uhash_nextElement(*(v5 + 240), &v7);
        if (!result)
        {
          break;
        }

        if (*(result + 8) != "<empty>")
        {
          result = sub_1953F94A8(*(result + 8), 0, *(result + 16), v5 + 264, a2);
          if (*a2 >= 1)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

void sub_1953F7558(uint64_t a1, int *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 257))
  {
    *(a1 + 257) = 1;
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    sub_1953F95C4(v13, a1, a2);
    sub_1953F7AE8(v13, a2);
    if (*a2 <= 0)
    {
      TimeZoneIDEnumeration = icu::TimeZone::createTimeZoneIDEnumeration(1, 0, 0, a2);
      v5 = TimeZoneIDEnumeration;
      if (*a2 <= 0)
      {
        v6 = (*(*TimeZoneIDEnumeration + 56))(TimeZoneIDEnumeration, a2);
        if (v6)
        {
          v7 = *a2 <= 0;
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          v8 = v6;
          do
          {
            memset(v15, 0, sizeof(v15));
            icu::UnicodeString::UnicodeString(v15, v8);
            v9 = *(a1 + 240);
            TerminatedBuffer = icu::UnicodeString::getTerminatedBuffer(v15);
            if (!uhash_get(v9, TerminatedBuffer))
            {
              sub_1953F6128(a1, v8, a2);
            }

            icu::UnicodeString::~UnicodeString(v11, v15);
            v8 = (*(*v5 + 56))(v5, a2);
            if (v8)
            {
              v12 = *a2 < 1;
            }

            else
            {
              v12 = 0;
            }
          }

          while (v12);
        }

        goto LABEL_18;
      }

      if (TimeZoneIDEnumeration)
      {
LABEL_18:
        (*(*v5 + 8))(v5);
      }
    }

    v13[0] = &unk_1F0943998;
    uhash_close(v14);
    icu::ResourceSink::~ResourceSink(v13);
  }
}

void sub_1953F7760(void ***a1)
{
  *a1 = &unk_1F0943998;
  uhash_close(a1[2]);

  icu::ResourceSink::~ResourceSink(a1);
}

void sub_1953F77B8(void ***a1)
{
  *a1 = &unk_1F0943998;
  uhash_close(a1[2]);
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953F7824(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    umtx_lock(&unk_1ED443268);
    sub_1953F7558(a1, a2);

    umtx_unlock(&unk_1ED443268);
  }
}

void sub_1953F7890(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4, icu::UnicodeString *a5, int *a6, double a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0 && *(a2 + 8) >= 0x20u)
  {
    umtx_lock(&unk_1ED443268);
    v12 = sub_1953F627C(a1, a2, a6);
    v13 = *a6;
    umtx_unlock(&unk_1ED443268);
    if (v13 <= 0 && a4 >= 1)
    {
      v14 = 0;
      for (i = a4; i; --i)
      {
        v17 = *a3++;
        v16 = v17;
        v18 = sub_1953F9430(v17);
        if ((v18 & 0x80000000) == 0)
        {
          v19 = *(v12 + 8 * v18);
          if (v19)
          {
            goto LABEL_18;
          }
        }

        if (!v14)
        {
          v31 = 0;
          v30 = 0u;
          v29 = 0u;
          v28 = 0u;
          v27 = &unk_1F0935D00;
          LOWORD(v28) = 2;
          (*(*a1 + 56))(a1, a2, &v27, a7);
          v20 = v28;
          v14 = "<empty>";
          if (v28 >= 0x20u)
          {
            umtx_lock(&unk_1ED443268);
            v21 = sub_1953F6434(a1, &v27, a6);
            v22 = *a6;
            v14 = v21 ? v21 : "<empty>";
            umtx_unlock(&unk_1ED443268);
            if (v22 > 0)
            {
              icu::UnicodeString::~UnicodeString(v20, &v27);
              return;
            }
          }

          icu::UnicodeString::~UnicodeString(v20, &v27);
        }

        if (v14 == "<empty>" || (v23 = sub_1953F9430(v16), v23 < 0) || (v19 = *&v14[8 * v23]) == 0)
        {
          icu::UnicodeString::setToBogus(a5);
        }

        else
        {
LABEL_18:
          v26 = v19;
          icu::UnicodeString::setTo(a5, 1, &v26, 0xFFFFFFFF);
        }

        a5 = (a5 + 64);
      }
    }
  }
}

void sub_1953F7AE8(uint64_t a1, UErrorCode *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  ures_getAllItemsWithFallback(*(*(a1 + 8) + 232), "", a1, a2);
  if (*a2 <= 0)
  {
    v13 = -1;
    for (i = uhash_nextElement(*(a1 + 16), &v13); i; i = uhash_nextElement(*(a1 + 16), &v13))
    {
      v5 = *(i + 8);
      if (v5 != "<dummy>")
      {
        v6 = *(i + 16);
        if (sub_1953F96AC(a1, v6))
        {
          v16 = 0uLL;
          v17 = 0uLL;
          v14 = 0uLL;
          v15 = 0uLL;
          v7 = strlen(v6);
          icu::UnicodeString::UnicodeString(&v14, (v6 + 5), v7 - 5);
          v8 = *(*(a1 + 8) + 248);
          for (j = 8; j != 64; j += 8)
          {
            if (*&v5[j] == &unk_195493900)
            {
              *&v5[j] = 0;
            }
          }

          sub_1953F6DC0(v8, (v5 + 8), &v14, a2);
        }

        else
        {
          v16 = 0uLL;
          v17 = 0uLL;
          v14 = 0uLL;
          v15 = 0uLL;
          sub_1953F9704(v6, &v14);
          v11 = *(*(a1 + 8) + 240);
          for (k = 8; k != 64; k += 8)
          {
            if (*&v5[k] == &unk_195493900)
            {
              *&v5[k] = 0;
            }
          }

          sub_1953F7038(v11, (v5 + 8), &v14, a2);
        }

        icu::UnicodeString::~UnicodeString(v10, &v14);
        if (*a2 >= 1)
        {
          break;
        }
      }
    }
  }
}

int32_t *sub_1953F7C9C(uint64_t a1, int32_t *this)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) < 0x20u || icu::UnicodeString::doEqualsSubstring(a1, 0, 4, "E", 0, 4) || icu::UnicodeString::doEqualsSubstring(a1, 0, 8, &aTcSystemvRiyad[3], 0, 8))
  {
    goto LABEL_8;
  }

  if (*(a1 + 8) < 0)
  {
    v5 = *(a1 + 12);
    v4 = v5 & (v5 >> 31);
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 8) >> 5;
  }

  if (icu::UnicodeString::indexOf(a1, &aTcSystemvRiyad[11], 0, 7, v4, v5 - v4) > 0)
  {
    goto LABEL_8;
  }

  v7 = *(a1 + 8);
  v8 = v7;
  v9 = v7 >> 5;
  v10 = v8 >= 0 ? v9 : *(a1 + 12);
  IndexOf = icu::UnicodeString::doLastIndexOf(a1, 0x2Fu, 0, v10);
  if (IndexOf < 1)
  {
    goto LABEL_8;
  }

  v12 = IndexOf;
  v13 = IndexOf + 1;
  v14 = *(a1 + 8);
  v15 = v14;
  v16 = v14 >> 5;
  if (v15 < 0)
  {
    v16 = *(a1 + 12);
  }

  if (v13 >= v16)
  {
LABEL_8:
    icu::UnicodeString::setToBogus(this);
    return this;
  }

  icu::UnicodeString::unBogus(this);
  v17 = *(a1 + 8);
  if (*(a1 + 8) < 0)
  {
    v18 = *(a1 + 12);
    if (v18 <= v12)
    {
      goto LABEL_21;
    }
  }

  else if (v12 >= v17 >> 5)
  {
    v18 = v17 >> 5;
LABEL_21:
    v13 = v18;
  }

  v19 = v17;
  v20 = *(this + 4);
  v21 = v20;
  v22 = v20 >> 5;
  if (v21 >= 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = this[3];
  }

  v24 = v17 >> 5;
  if (v19 < 0)
  {
    v24 = *(a1 + 12);
  }

  icu::UnicodeString::doReplace(this, 0, v23, a1, v13, v24 - v13);
  icu::UnicodeString::UnicodeString(v36, 95);
  icu::UnicodeString::UnicodeString(v33, 32);
  v25 = *(this + 4);
  v26 = v25;
  v27 = v25 >> 5;
  if (v26 >= 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = this[3];
  }

  if ((v37 & 0x8000u) == 0)
  {
    v29 = v37 >> 5;
  }

  else
  {
    v29 = v38;
  }

  v30 = v34 >> 5;
  if ((v34 & 0x8000u) != 0)
  {
    v30 = v35;
  }

  icu::UnicodeString::findAndReplace(this, 0, v28, v36, 0, v29, v33, 0, v30);
  icu::UnicodeString::~UnicodeString(v31, v33);
  icu::UnicodeString::~UnicodeString(v32, v36);
  return this;
}

uint64_t sub_1953F7F38(uint64_t a1)
{
  *a1 = &unk_1F09439C8;
  v2 = *(a1 + 8);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (*(a1 + 24) >= 1)
    {
      v4 = 0;
      do
      {
        free(v3[v4++]);
      }

      while (v4 < *(a1 + 24));
      v3 = *(a1 + 16);
    }

    free(v3);
  }

  return a1;
}

void sub_1953F7FCC(uint64_t a1)
{
  sub_1953F7F38(a1);

  JUMPOUT(0x19A8B2600);
}

void **sub_1953F8004(uint64_t a1, _BYTE *a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (!*a2)
    {
      return 0;
    }

    *length = 0;
    v4 = ures_getByKey(a1, a2, 0, &length[1]);
    if (length[1] > 0)
    {
      return 0;
    }

    v5 = v4;
    result = malloc_type_malloc(0x10uLL, 0x50040EE9192B6uLL);
    if (result)
    {
      v6 = result;
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = v7;
          length[1] = 0;
          StringByKey = ures_getStringByKey(v5, off_1E7410160[v7], length, &length[1]);
          if (length[1] > 0 || length[0] == 0)
          {
            break;
          }

          v6[v9] = StringByKey;
          v7 = 1;
          v8 = 1;
          if (v9)
          {
            goto LABEL_20;
          }
        }

        v6[v9] = 0;
        v7 = 1;
      }

      while (!v9);
      if ((v8 & 1) == 0)
      {
        v17 = v6;
        goto LABEL_32;
      }

LABEL_20:
      v12 = ures_getByKey(v5, "parseRegions", 0, &length[1]);
      v13 = v12;
      if (length[1] <= 0)
      {
        Size = ures_getSize(v12);
        v14 = Size;
        if (Size > 0)
        {
          v21 = malloc_type_malloc(8 * Size, 0x10040436913F5uLL);
          v15 = v21;
          if (v21)
          {
            bzero(v21, 8 * v14);
            v22 = 0;
            while (1)
            {
              length[1] = 0;
              StringByIndex = ures_getStringByIndex(v13, v22, length, &length[1]);
              if (length[1] > 0)
              {
                break;
              }

              v24 = StringByIndex;
              v25 = malloc_type_malloc(length[0] + 1, 0x100004077774924uLL);
              v15[v22] = v25;
              if (!v25)
              {
                break;
              }

              u_UCharsToChars(v24, v25, length[0]);
              *(v15[v22++] + length[0]) = 0;
              if (v14 == v22)
              {
                goto LABEL_23;
              }
            }

            v16 = 0;
            goto LABEL_24;
          }

LABEL_23:
          v16 = 1;
LABEL_24:
          ures_close(v13);
          ures_close(v5);
          if (v16)
          {
            operator new();
          }

          free(v6);
          if (!v15)
          {
            return 0;
          }

          if (v14 >= 1)
          {
            v18 = v15;
            do
            {
              v19 = *v18++;
              free(v19);
              LODWORD(v14) = v14 - 1;
            }

            while (v14);
          }

          v17 = v15;
LABEL_32:
          free(v17);
          return 0;
        }
      }

      else
      {
        LODWORD(v14) = 0;
      }

      v15 = 0;
      goto LABEL_23;
    }
  }

  return result;
}

void *sub_1953F82A0(void *a1)
{
  *a1 = &unk_1F09439E8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1953F830C(void *a1)
{
  *a1 = &unk_1F09439E8;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953F8398(uint64_t a1, int a2, _BYTE *a3, UErrorCode *a4)
{
  v20[8] = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    return 0;
  }

  if (*a3)
  {
    if (a3[14])
    {
      v9 = *(*a3 + 8);
      if (v9 < 1)
      {
        return 1;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *a3;
      if (a3[14])
      {
        v13 = icu::UVector::elementAt(*a3, v11);
      }

      if (v13 && (*(a1 + 8) & *(v13 + 8)) != 0)
      {
        if (*(v13 + 16))
        {
          if (*(v13 + 24) >= 1)
          {
            v14 = 0;
            while (1)
            {
              icu::StringPiece::StringPiece(v20, *(*(v13 + 16) + 8 * v14));
              if (icu::operator==((a1 + 24), v20))
              {
                break;
              }

              if (++v14 >= *(v13 + 24))
              {
                goto LABEL_18;
              }
            }

            v10 = v13;
            goto LABEL_27;
          }

LABEL_18:
          v15 = v10 == 0;
        }

        else
        {
          v15 = v12 == 0;
          if (!v12)
          {
            v12 = v13;
          }
        }

        if (v15)
        {
          v10 = v13;
        }
      }

      ++v11;
    }

    while (v11 != v9);
    if (!v10)
    {
      return 1;
    }

LABEL_27:
    v16 = *(v10 + 8);
    if (*(v10 + 12))
    {
      v17 = v16 == 32 || v16 == 16;
      if (v17 && (~*(a1 + 8) & 0x30) == 0)
      {
        v16 = 8;
      }
    }

    v18 = *(a1 + 16);
    if (!v18)
    {
      operator new();
    }

    if (*a4 <= 0)
    {
      icu::UnicodeString::UnicodeString(v20, *v10, 0xFFFFFFFFLL);
      icu::TimeZoneNames::MatchInfoCollection::addMetaZone(v18, v16, a2, v20, a4);
      icu::UnicodeString::~UnicodeString(v19, v20);
      if (*a4 <= 0 && *(a1 + 12) < a2)
      {
        *(a1 + 12) = a2;
      }
    }
  }

  return 1;
}

uint64_t sub_1953F85B4(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0943A10;
  v3 = a1 + 245;
  icu::Locale::Locale((a1 + 8), a2);
  *(a1 + 232) = v3;
  *(a1 + 240) = 40;
  *(a1 + 244) = 0;
  *(a1 + 288) = 0;
  v4 = strlen((a1 + 34));
  if (v4)
  {
    LODWORD(v11[0]) = 0;
    v5 = v11;
    v6 = (a1 + 232);
    v7 = (a1 + 34);
LABEL_7:
    icu::CharString::append(v6, v7, v4, v5);
    return a1;
  }

  v10 = U_ZERO_ERROR;
  v13 = 0u;
  v14 = 0u;
  *v11 = 0u;
  v12 = 0u;
  ulocimp_addLikelySubtags(v11, *(a1 + 48), &v10);
  ulocimp_getSubtags(v11[0], 0, 0, (a1 + 232), 0, 0, &v10);
  v8 = v10;
  if (BYTE4(v11[1]))
  {
    free(v11[0]);
  }

  if (v8 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v10 = U_ZERO_ERROR;
    icu::StringPiece::StringPiece(v11, "001");
    v7 = v11[0];
    v4 = v11[1];
    v5 = &v10;
    v6 = (a1 + 232);
    goto LABEL_7;
  }

  return a1;
}

void sub_1953F8704(uint64_t a1)
{
  *a1 = &unk_1F0943A10;
  v2 = *(a1 + 244);
  if (*(a1 + 244))
  {
    free(*(a1 + 232));
  }

  icu::Locale::~Locale(v2, (a1 + 8));

  icu::TimeZoneNames::~TimeZoneNames(a1);
}

void sub_1953F8770(uint64_t a1)
{
  sub_1953F8704(a1);

  JUMPOUT(0x19A8B2600);
}

icu::UnicodeString *sub_1953F8854(int a1, uint64_t a2, int a3, icu::UnicodeString *this)
{
  icu::UnicodeString::setToBogus(this);
  if (*(a2 + 8) >= 0x20u)
  {
    v13 = 0;
    v7 = sub_1953F890C(a2, &v13);
    if (v13 <= 0 && v7 != 0)
    {
      v9 = v7[1];
      if (v9)
      {
        if (a3 != 16)
        {
          if (a3 != 32)
          {
            return this;
          }

          ++v9;
        }

        v10 = *v9;
        if (v10)
        {
          v12 = v10;
          icu::UnicodeString::setTo(this, 1, &v12, 0xFFFFFFFF);
        }
      }
    }
  }

  return this;
}

void **sub_1953F890C(uint64_t a1, int *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAECA478, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAECA478))
  {
    v6 = dword_1EAECA47C;
    if (dword_1EAECA47C >= 1)
    {
      v2 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1953F9088(a2);
    dword_1EAECA47C = *a2;
    icu::umtx_initImplPostInit(&dword_1EAECA478);
  }

  if (*a2 <= 0)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v14 = v17;
    icu::UnicodeString::extract(a1, &v14, 128, a2);
    if (*a2 <= 0)
    {
      if (*(a1 + 8) < 0)
      {
        v7 = *(a1 + 12);
      }

      else
      {
        v7 = *(a1 + 8) >> 5;
      }

      *(v17 + v7) = 0;
      if (uprv_isInvariantUString(v17, v7))
      {
        umtx_lock(&unk_1EAECA418);
        v8 = uhash_get(qword_1EAECA468, v17);
        if (v8)
        {
          if (v8 == "<empty>")
          {
            v2 = 0;
          }

          else
          {
            v2 = v8;
          }

          goto LABEL_33;
        }

        v9 = ures_openDirect("icudt76l-zone", "tzdbNames", a2);
        v10 = ures_getByKey(v9, "zoneStrings", v9, a2);
        v16 = 0;
        memset(v15, 0, sizeof(v15));
        sub_1953F9130(a1, v15, a2);
        if (*a2 <= 0)
        {
          v2 = sub_1953F8004(v10, v15);
          MetaZoneID = icu::ZoneMeta::findMetaZoneID(a1, v11);
          if (MetaZoneID)
          {
            if (v2)
            {
              v13 = v2;
            }

            else
            {
              v13 = "<empty>";
            }

            uhash_put(qword_1EAECA468, MetaZoneID, v13, a2);
            if (!v2 || *a2 <= 0)
            {
              goto LABEL_32;
            }
          }

          else if (!v2)
          {
LABEL_32:
            ures_close(v10);
LABEL_33:
            umtx_unlock(&unk_1EAECA418);
            return v2;
          }

          (*(*v2 + 1))(v2);
        }

        v2 = 0;
        goto LABEL_32;
      }

      v2 = 0;
      v6 = 1;
LABEL_9:
      *a2 = v6;
      return v2;
    }
  }

  return 0;
}

uint64_t sub_1953F8BEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v21 = v5;
  v22 = v6;
  if (atomic_load_explicit(&dword_1EAECA470, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAECA470))
  {
    if (dword_1EAECA474 >= 1)
    {
      result = 0;
      *a5 = dword_1EAECA474;
      return result;
    }
  }

  else
  {
    sub_1953F8D50(a5);
    dword_1EAECA474 = *a5;
    icu::umtx_initImplPostInit(&dword_1EAECA470);
  }

  if (*a5 > 0)
  {
    return 0;
  }

  v13 = *(a1 + 232);
  v14 = *(a1 + 288);
  v15 = &unk_1F09439E8;
  v16 = a4;
  v17 = 0;
  v18 = 0;
  v19 = v13;
  v20 = v14;
  icu::TextTrieMap::search(qword_1EAECA410, a2, a3, &v15, a5);
  result = v18;
  if (*a5 >= 1)
  {
    v15 = &unk_1F09439E8;
    if (v18)
    {
      (*(*v18 + 8))();
      return 0;
    }
  }

  return result;
}

int *sub_1953F8D50(int *result)
{
  if (*result <= 0)
  {
    operator new();
  }

  return result;
}

void sub_1953F9088(int *a1)
{
  v2 = uhash_open(uhash_hashUChars, uhash_compareUChars, 0, a1);
  qword_1EAECA468 = v2;
  if (*a1 < 1)
  {
    uhash_setValueDeleter(v2, sub_1953F9844);

    sub_195400588(0x11u, sub_1953F97C4);
  }

  else
  {
    qword_1EAECA468 = 0;
  }
}

uint64_t sub_1953F9130(uint64_t result, _BYTE *a2, int *a3)
{
  if (*a3 <= 0)
  {
    if (*(result + 8) <= 0x1Fu)
    {
      *a2 = 0;
    }

    else
    {
      a2[4] = 58;
      *a2 = 1635018093;
      if (*(result + 8) < 0)
      {
        v4 = *(result + 12);
        if ((v4 - 124) < 0xFFFFFF7E)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v4 = *(result + 8) >> 5;
        if ((v4 - 124) <= 0xFFFFFF7D)
        {
LABEL_5:
          *a2 = 0;
          *a3 = 5;
          return result;
        }
      }

      result = icu::UnicodeString::extract(result, 0, v4, a2 + 5, 124);
      a2[result + 5] = 0;
    }
  }

  return result;
}

void *sub_1953F91E8(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v13 = 0;
  v14 = a2;
  memset(v12, 0, sizeof(v12));
  result = (*(*a3 + 88))(v12, a3, a5);
  if (*a5 <= 0)
  {
    result = icu::ResourceTable::getKeyAndValue(v12, 0, &v14, a3);
    if (result)
    {
      v9 = a1 + 8;
      v10 = 1;
      do
      {
        if ((*(*a3 + 96))(a3))
        {
          v11 = sub_1953F9920(v14);
          if (v11 != -1 && !*(v9 + 8 * v11))
          {
            *(v9 + 8 * v11) = &unk_195493900;
          }
        }

        else
        {
          sub_1953F9880(a1, v14, a3, a5);
        }

        result = icu::ResourceTable::getKeyAndValue(v12, v10++, &v14, a3);
      }

      while (result);
    }
  }

  return result;
}

void *sub_1953F9314(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v12 = 0;
  v13 = a2;
  memset(v11, 0, sizeof(v11));
  result = (*(*a3 + 88))(v11, a3, a5);
  if (*a5 <= 0)
  {
    result = icu::ResourceTable::getKeyAndValue(v11, 0, &v13, a3);
    if (result)
    {
      v10 = 1;
      do
      {
        result = (*(*a3 + 24))(a3);
        if (result == 2)
        {
          result = sub_1953F99B4(a1, v13, a3, a4, a5);
        }

        if (*a5 >= 1)
        {
          break;
        }

        result = icu::ResourceTable::getKeyAndValue(v11, v10++, &v13, a3);
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_1953F9430(uint64_t result)
{
  if (result > 7)
  {
    if (result > 31)
    {
      if (result == 32)
      {
        return 6;
      }

      if (result == 64)
      {
        return 0;
      }
    }

    else
    {
      if (result == 8)
      {
        return 4;
      }

      if (result == 16)
      {
        return 5;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (result != 1 && result != 2)
  {
    if (result == 4)
    {
      return 3;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

_BYTE *sub_1953F94A8(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v5 = result;
    if (!result[56])
    {
      v10 = 0;
      result[56] = 1;
      while (1)
      {
        v11 = *&v5[8 * v10];
        if (v11)
        {
          result = malloc_type_malloc(0x18uLL, 0x1050040C62AA19FuLL);
          if (!result)
          {
            *a5 = U_MEMORY_ALLOCATION_ERROR;
            return result;
          }

          v12 = result;
          *(result + 1) = a3;
          *(result + 2) = a2;
          *result = sub_1953F95A4(v10);
          result = icu::TextTrieMap::put(a4, v11, v12, a5);
          if (*a5 > 0 || v10 >= 6)
          {
            return result;
          }
        }

        else if (v10 > 5)
        {
          return result;
        }

        ++v10;
      }
    }
  }

  return result;
}

uint64_t sub_1953F95A4(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return *&asc_195493910[4 * a1];
  }
}

void *sub_1953F95C4(void *a1, uint64_t a2, int *a3)
{
  *a1 = &unk_1F0943998;
  a1[1] = a2;
  v5 = uhash_open(uhash_hashChars, uhash_compareChars, 0, a3);
  a1[2] = v5;
  if (*a3 <= 0)
  {
    uhash_setKeyDeleter(v5, MEMORY[0x1E69E9B38]);
    uhash_setValueDeleter(a1[2], sub_1953F9670);
  }

  return a1;
}

char *sub_1953F9670(char *result)
{
  if (result != "<dummy>" && result != 0)
  {
    return (*(*result + 8))();
  }

  return result;
}

BOOL sub_1953F96AC(int a1, char *__s)
{
  if (strlen(__s) < 5)
  {
    return 0;
  }

  return *__s == 1635018093 && __s[4] == 58;
}

icu::UnicodeString *sub_1953F9704@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = icu::UnicodeString::UnicodeString(a2, a1, -1);
  for (i = 0; ; ++i)
  {
    v5 = *(a2 + 8);
    if (v5 < 0)
    {
      break;
    }

    if (i >= *(a2 + 8) >> 5)
    {
      return result;
    }

    v6 = *(a2 + 8) >> 5;
LABEL_7:
    if (v6 > i)
    {
      if ((v5 & 2) != 0)
      {
        v7 = a2 + 10;
      }

      else
      {
        v7 = *(a2 + 24);
      }

      if (*(v7 + 2 * i) == 58)
      {
        result = icu::UnicodeString::setCharAt(a2, i, 47);
      }
    }
  }

  v6 = *(a2 + 12);
  if (i < v6)
  {
    v6 = v6;
    goto LABEL_7;
  }

  return result;
}

void sub_1953F97B8(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_1953F97C4()
{
  if (qword_1EAECA468)
  {
    uhash_close(qword_1EAECA468);
    qword_1EAECA468 = 0;
  }

  atomic_store(0, &dword_1EAECA478);
  if (qword_1EAECA410)
  {
    (*(*qword_1EAECA410 + 8))(qword_1EAECA410);
    qword_1EAECA410 = 0;
  }

  atomic_store(0, &dword_1EAECA470);
  return 1;
}

char *sub_1953F9844(char *result)
{
  if (result != "<empty>" && result != 0)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_1953F9880(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  result = sub_1953F9920(a2);
  if (result != -1)
  {
    v8 = result;
    v9 = a1 + 8;
    if (!*(v9 + 8 * result))
    {
      v10 = 0;
      if (a3)
      {
        result = (*(*a3 + 32))(a3, &v10, a4);
      }

      else
      {
        result = &unk_195493900;
      }

      *(v9 + 8 * v8) = result;
    }
  }

  return result;
}

uint64_t sub_1953F9920(unsigned __int8 *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1[1];
  if (!a1[1] || a1[2])
  {
    return 0xFFFFFFFFLL;
  }

  if (v1 == 115)
  {
    if (v2 == 100)
    {
      v10 = 6;
    }

    else
    {
      v10 = -1;
    }

    if (v2 == 115)
    {
      v11 = 5;
    }

    else
    {
      v11 = v10;
    }

    if (v2 == 103)
    {
      return 4;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    v5 = v1 != 101 || v2 != 99;
    v6 = v5 << 31 >> 31;
    if (v2 == 100)
    {
      v7 = 3;
    }

    else
    {
      v7 = -1;
    }

    if (v2 == 115)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7;
    }

    if (v2 == 103)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (v1 == 108)
    {
      return v9;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1953F99B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v9 = result;
    result = uhash_get(*(result + 16), a2);
    v10 = result;
    if (result)
    {
      goto LABEL_3;
    }

    memset(v15, 0, sizeof(v15));
    if (sub_1953F96AC(v9, a2))
    {
      v11 = strlen(a2);
      icu::UnicodeString::UnicodeString(v15, (a2 + 5), v11 - 5);
      v12 = *(*(v9 + 8) + 248);
    }

    else
    {
      sub_1953F9704(a2, v15);
      v12 = *(*(v9 + 8) + 240);
    }

    TerminatedBuffer = icu::UnicodeString::getTerminatedBuffer(v15);
    if (!uhash_get(v12, TerminatedBuffer))
    {
      operator new();
    }

    v10 = "<dummy>";
    icu::UnicodeString::~UnicodeString(v14, v15);
    result = sub_1953F9BE4(v9, a2, a5);
    if (*a5 < 1)
    {
      result = uhash_put(*(v9 + 16), result, "<dummy>", a5);
      if (*a5 <= 0)
      {
LABEL_3:
        if (v10 != "<dummy>")
        {
          return (*(*v10 + 24))(v10, a2, a3, a4, a5);
        }
      }
    }
  }

  return result;
}

_BYTE *sub_1953F9BE4(int a1, char *__s, _DWORD *a3)
{
  v5 = strlen(__s);
  v6 = v5;
  v7 = ((v5 << 32) + 0x100000000) >> 32;
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  v9 = v8;
  if (v8)
  {
    memcpy(v8, __s, v7);
    v9[v6] = 0;
  }

  else
  {
    *a3 = 7;
  }

  return v9;
}

icu::TimeZoneRule *icu::TimeZoneRule::TimeZoneRule(icu::TimeZoneRule *this, UChar **a2, int a3, int a4)
{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::UnicodeString((this + 8), a2);
  *(this + 18) = a3;
  *(this + 19) = a4;
  return this;
}

icu::TimeZoneRule *icu::TimeZoneRule::TimeZoneRule(icu::TimeZoneRule *this, UChar **a2)
{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::UnicodeString((this + 8), a2 + 1);
  *(this + 9) = a2[9];
  return this;
}

void icu::TimeZoneRule::~TimeZoneRule(icu::TimeZoneRule *this@<X0>, void *a2@<X8>)
{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::~UnicodeString(a2, (this + 8));

  icu::UObject::~UObject(this);
}

uint64_t icu::TimeZoneRule::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::UnicodeString::operator=((a1 + 8), (a2 + 8));
    *(a1 + 72) = *(a2 + 72);
  }

  return a1;
}

BOOL icu::TimeZoneRule::operator==(uint64_t a1, uint64_t a2)
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
    v5 = *(a1 + 16);
    if (v5)
    {
      if ((*(a2 + 16) & 1) == 0)
      {
        return 0;
      }

LABEL_20:
      if (*(a1 + 72) == *(a2 + 72))
      {
        return *(a1 + 76) == *(a2 + 76);
      }

      return 0;
    }

    if ((v5 & 0x8000) != 0)
    {
      v6 = *(a1 + 20);
    }

    else
    {
      v6 = v5 >> 5;
    }

    result = 0;
    v7 = *(a2 + 16);
    if ((v7 & 0x8000u) == 0)
    {
      v8 = v7 >> 5;
    }

    else
    {
      v8 = *(a2 + 20);
    }

    if ((v7 & 1) == 0 && v6 == v8)
    {
      v9 = (v7 & 2) != 0 ? (a2 + 18) : *(a2 + 32);
      result = icu::UnicodeString::doEquals(a1 + 8, v9, v6);
      if (result)
      {
        goto LABEL_20;
      }
    }
  }

  return result;
}

BOOL icu::TimeZoneRule::isEquivalentTo(icu::TimeZoneRule *this, const icu::TimeZoneRule *a2)
{
  if (this == a2)
  {
    return 1;
  }

  if (!this)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*this - 8), *(*a2 - 8));
  if (result)
  {
    return *(this + 18) == *(a2 + 18) && *(this + 19) == *(a2 + 19);
  }

  return result;
}

icu::InitialTimeZoneRule *icu::InitialTimeZoneRule::InitialTimeZoneRule(icu::InitialTimeZoneRule *this, UChar **a2, int a3, int a4)
{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::UnicodeString((this + 8), a2);
  *(this + 18) = a3;
  *(this + 19) = a4;
  *this = &unk_1F0943C28;
  return this;
}

{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::UnicodeString((this + 8), a2);
  *(this + 18) = a3;
  *(this + 19) = a4;
  *this = &unk_1F0943C28;
  return this;
}

icu::InitialTimeZoneRule *icu::InitialTimeZoneRule::InitialTimeZoneRule(icu::InitialTimeZoneRule *this, UChar **a2)
{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::UnicodeString((this + 8), a2 + 1);
  *(this + 9) = a2[9];
  *this = &unk_1F0943C28;
  return this;
}

{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::UnicodeString((this + 8), a2 + 1);
  *(this + 9) = a2[9];
  *this = &unk_1F0943C28;
  return this;
}

void icu::InitialTimeZoneRule::~InitialTimeZoneRule(icu::InitialTimeZoneRule *this@<X0>, void *a2@<X8>)
{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::~UnicodeString(a2, (this + 8));

  icu::UObject::~UObject(this);
}

{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::~UnicodeString(a2, (this + 8));

  icu::UObject::~UObject(this);
}

{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::~UnicodeString(a2, (this + 8));
  icu::UObject::~UObject(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::InitialTimeZoneRule::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::UnicodeString::operator=((a1 + 8), (a2 + 8));
    *(a1 + 72) = *(a2 + 72);
  }

  return a1;
}

BOOL icu::InitialTimeZoneRule::operator==(void *a1, void *a2)
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

    return icu::TimeZoneRule::operator==(a1, a2);
  }

  return result;
}

uint64_t icu::InitialTimeZoneRule::isEquivalentTo(icu::InitialTimeZoneRule *this, const icu::TimeZoneRule *a2)
{
  if (this == a2)
  {
    return 1;
  }

  if (!this)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*this - 8), *(*a2 - 8));
  if (result)
  {

    return icu::TimeZoneRule::isEquivalentTo(this, a2);
  }

  return result;
}

void icu::AnnualTimeZoneRule::AnnualTimeZoneRule(icu::AnnualTimeZoneRule *this, UChar **a2, int a3, int a4, const icu::DateTimeRule *a5, int a6, int a7)
{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::UnicodeString((this + 8), a2);
  *(this + 18) = a3;
  *(this + 19) = a4;
  *this = &unk_1F0943C90;
  operator new();
}

icu::AnnualTimeZoneRule *icu::AnnualTimeZoneRule::AnnualTimeZoneRule(icu::AnnualTimeZoneRule *this, UChar **a2, int a3, int a4, icu::DateTimeRule *a5, int a6, int a7)
{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::UnicodeString((this + 8), a2);
  *(this + 18) = a3;
  *(this + 19) = a4;
  *this = &unk_1F0943C90;
  *(this + 10) = a5;
  *(this + 22) = a6;
  *(this + 23) = a7;
  return this;
}

{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::UnicodeString((this + 8), a2);
  *(this + 18) = a3;
  *(this + 19) = a4;
  *this = &unk_1F0943C90;
  *(this + 10) = a5;
  *(this + 22) = a6;
  *(this + 23) = a7;
  return this;
}

void icu::AnnualTimeZoneRule::AnnualTimeZoneRule(icu::AnnualTimeZoneRule *this, UChar **a2)
{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::UnicodeString((this + 8), a2 + 1);
  *(this + 9) = a2[9];
  *this = &unk_1F0943C90;
  operator new();
}

void icu::AnnualTimeZoneRule::~AnnualTimeZoneRule(icu::AnnualTimeZoneRule *this@<X0>, void *a2@<X8>)
{
  *this = &unk_1F0943C90;
  v3 = *(this + 10);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_1F0943BC0;
  icu::UnicodeString::~UnicodeString(a2, (this + 8));

  icu::UObject::~UObject(this);
}

{
  icu::AnnualTimeZoneRule::~AnnualTimeZoneRule(this, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::AnnualTimeZoneRule::operator=(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 != a2)
  {
    icu::UnicodeString::operator=((a1 + 8), (a2 + 8));
    *(v2 + 72) = *(a2 + 72);
    v4 = *(v2 + 80);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    icu::DateTimeRule::clone(*(a2 + 80));
  }

  return a1;
}

BOOL icu::AnnualTimeZoneRule::operator==(uint64_t a1, uint64_t a2)
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
    result = icu::DateTimeRule::operator==(*(a1 + 80), *(a2 + 80));
    if (result)
    {
      return *(a1 + 88) == *(a2 + 88) && *(a1 + 92) == *(a2 + 92);
    }
  }

  return result;
}

uint64_t icu::AnnualTimeZoneRule::getStartInYear(icu::AnnualTimeZoneRule *this, int a2, int a3, int a4, double *a5)
{
  if (*(this + 22) > a2)
  {
    return 0;
  }

  if (*(this + 23) < a2)
  {
    return 0;
  }

  DateRuleType = icu::DateTimeRule::getDateRuleType(*(this + 10));
  v12 = *(this + 10);
  if (DateRuleType == 1)
  {
    RuleWeekInMonth = icu::DateTimeRule::getRuleWeekInMonth(v12);
    RuleMonth = icu::DateTimeRule::getRuleMonth(*(this + 10));
    if (RuleWeekInMonth < 1)
    {
      v29 = icu::DateTimeRule::getRuleMonth(*(this + 10));
      HIDWORD(v31) = -1030792151 * a2 + 85899344;
      LODWORD(v31) = HIDWORD(v31);
      v30 = v31 >> 2;
      LODWORD(v31) = HIDWORD(v31);
      if ((v31 >> 4) >= 0xA3D70B)
      {
        v32 = 0;
      }

      else
      {
        v32 = 12;
      }

      if (v30 <= 0x28F5C28)
      {
        v33 = v32;
      }

      else
      {
        v33 = 12;
      }

      if ((a2 & 3) != 0)
      {
        v33 = 0;
      }

      v20 = (7 * RuleWeekInMonth + 7) + sub_195328D5C(a2, RuleMonth, byte_19548DBC2[v33 + v29]);
      v19 = 1;
    }

    else
    {
      v18 = sub_195328D5C(a2, RuleMonth, 1);
      v19 = 0;
      v20 = (7 * RuleWeekInMonth - 7) + v18;
    }

    goto LABEL_35;
  }

  if (DateRuleType)
  {
    v21 = icu::DateTimeRule::getRuleMonth(v12);
    RuleDayOfMonth = icu::DateTimeRule::getRuleDayOfMonth(*(this + 10));
    v23 = RuleDayOfMonth;
    v24 = DateRuleType == 3;
    v19 = DateRuleType == 3;
    if (v24)
    {
      HIDWORD(v26) = -1030792151 * a2 + 85899344;
      LODWORD(v26) = HIDWORD(v26);
      v25 = v26 >> 2;
      LODWORD(v26) = HIDWORD(v26);
      if ((v26 >> 4) >= 0xA3D70B)
      {
        v27 = 28;
      }

      else
      {
        v27 = 29;
      }

      if (v25 <= 0x28F5C28)
      {
        v28 = v27;
      }

      else
      {
        v28 = 29;
      }

      if ((a2 & 3) != 0)
      {
        v28 = 28;
      }

      if (RuleDayOfMonth != 29)
      {
        v28 = RuleDayOfMonth;
      }

      if (v21 == 1)
      {
        v23 = v28;
      }

      else
      {
        v23 = RuleDayOfMonth;
      }
    }

    v20 = sub_195328D5C(a2, v21, v23);
LABEL_35:
    v34 = sub_195329204(v20);
    RuleDayOfWeek = icu::DateTimeRule::getRuleDayOfWeek(*(this + 10));
    v36 = RuleDayOfWeek > v34;
    if (v19)
    {
      v37 = -7;
    }

    else
    {
      v37 = 7;
    }

    if (!v19)
    {
      v36 = RuleDayOfWeek < v34;
    }

    if (v36)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v15 = v20 + (RuleDayOfWeek - v34 + v38);
    goto LABEL_44;
  }

  v13 = icu::DateTimeRule::getRuleMonth(v12);
  v14 = icu::DateTimeRule::getRuleDayOfMonth(*(this + 10));
  v15 = sub_195328D5C(a2, v13, v14);
LABEL_44:
  *a5 = icu::DateTimeRule::getRuleMillisInDay(*(this + 10)) + v15 * 86400000.0;
  if (icu::DateTimeRule::getTimeRuleType(*(this + 10)) != 2)
  {
    *a5 = *a5 - a3;
  }

  if (!icu::DateTimeRule::getTimeRuleType(*(this + 10)))
  {
    *a5 = *a5 - a4;
  }

  return 1;
}

BOOL icu::AnnualTimeZoneRule::isEquivalentTo(icu::AnnualTimeZoneRule *this, const icu::TimeZoneRule *a2)
{
  if (this == a2)
  {
    return 1;
  }

  if (!this)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*this - 8), *(*a2 - 8));
  if (result)
  {
    result = icu::TimeZoneRule::isEquivalentTo(this, a2);
    if (result)
    {
      result = icu::DateTimeRule::operator==(*(this + 10), *(a2 + 10));
      if (result)
      {
        return *(this + 22) == *(a2 + 22) && *(this + 23) == *(a2 + 23);
      }
    }
  }

  return result;
}

uint64_t icu::AnnualTimeZoneRule::getFinalStart(icu::AnnualTimeZoneRule *this, int a2, int a3, double *a4)
{
  v7 = *(this + 23);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return icu::AnnualTimeZoneRule::getStartInYear(this, v7, a2, a3, a4);
  }
}

uint64_t icu::AnnualTimeZoneRule::getNextStart(icu::AnnualTimeZoneRule *this, double a2, uint64_t a3, uint64_t a4, int a5, double *a6)
{
  v16 = 0;
  *v17 = 0;
  v15 = 0;
  v14 = 0;
  sub_195329158(&v17[1], v17, &v16 + 1, &v16, &v15 + 1, &v15, &v14, a2);
  if (v17[1] < *(this + 22))
  {
    return (*(*this + 56))(this, a3, a4, a6);
  }

  v13 = 0.0;
  result = icu::AnnualTimeZoneRule::getStartInYear(this, v17[1], a3, a4, &v13);
  if (result)
  {
    if (v13 >= a2 && (a5 || v13 != a2))
    {
      *a6 = v13;
      return 1;
    }

    else
    {
      return icu::AnnualTimeZoneRule::getStartInYear(this, v17[1] + 1, a3, a4, a6);
    }
  }

  return result;
}

uint64_t icu::AnnualTimeZoneRule::getPreviousStart(icu::AnnualTimeZoneRule *this, double a2, uint64_t a3, uint64_t a4, int a5, double *a6)
{
  v16 = 0;
  *v17 = 0;
  v15 = 0;
  v14 = 0;
  sub_195329158(&v17[1], v17, &v16 + 1, &v16, &v15 + 1, &v15, &v14, a2);
  if (v17[1] > *(this + 23))
  {
    return (*(*this + 64))(this, a3, a4, a6);
  }

  v13 = 0.0;
  result = icu::AnnualTimeZoneRule::getStartInYear(this, v17[1], a3, a4, &v13);
  if (result)
  {
    if (v13 <= a2 && (a5 || v13 != a2))
    {
      *a6 = v13;
      return 1;
    }

    else
    {
      return icu::AnnualTimeZoneRule::getStartInYear(this, v17[1] - 1, a3, a4, a6);
    }
  }

  return result;
}

uint64_t icu::TimeArrayTimeZoneRule::TimeArrayTimeZoneRule(uint64_t a1, UChar **a2, int a3, int a4, const double *a5, uint64_t a6, int a7)
{
  *a1 = &unk_1F0943BC0;
  icu::UnicodeString::UnicodeString((a1 + 8), a2);
  *(a1 + 72) = a3;
  *(a1 + 76) = a4;
  *a1 = &unk_1F0943CF8;
  *(a1 + 80) = a7;
  *(a1 + 88) = 0;
  v14 = U_ZERO_ERROR;
  icu::TimeArrayTimeZoneRule::initStartTimes(a1, a5, a6, &v14);
  return a1;
}

uint64_t icu::TimeArrayTimeZoneRule::initStartTimes(icu::TimeArrayTimeZoneRule *this, const double *a2, uint64_t a3, UErrorCode *a4)
{
  v8 = *(this + 11);
  v9 = this + 96;
  if (v8)
  {
    v10 = v8 == v9;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    free(v8);
  }

  if (a3 < 33)
  {
    *(this + 11) = v9;
    v11 = this + 96;
  }

  else
  {
    v11 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
    *(this + 11) = v11;
    if (!v11)
    {
      *a4 = U_MEMORY_ALLOCATION_ERROR;
      v12 = (this + 84);
LABEL_14:
      v13 = 0;
      *v12 = 0;
      return v13;
    }
  }

  memcpy(v11, a2, 8 * a3);
  *(this + 21) = a3;
  v12 = (this + 84);
  v13 = 1;
  uprv_sortArray(*(this + 11), a3, 8, sub_1953FB808, 0, 1, a4);
  if (*a4 >= 1)
  {
    v14 = *(this + 11);
    if (v14 && v14 != v9)
    {
      free(v14);
    }

    goto LABEL_14;
  }

  return v13;
}

icu::TimeArrayTimeZoneRule *icu::TimeArrayTimeZoneRule::TimeArrayTimeZoneRule(icu::TimeArrayTimeZoneRule *this, const icu::TimeArrayTimeZoneRule *a2)
{
  *this = &unk_1F0943BC0;
  icu::UnicodeString::UnicodeString((this + 8), a2 + 1);
  *(this + 9) = *(a2 + 9);
  *this = &unk_1F0943CF8;
  v4 = *(a2 + 21);
  *(this + 20) = *(a2 + 20);
  *(this + 11) = 0;
  v6 = U_ZERO_ERROR;
  icu::TimeArrayTimeZoneRule::initStartTimes(this, *(a2 + 11), v4, &v6);
  return this;
}

void icu::TimeArrayTimeZoneRule::~TimeArrayTimeZoneRule(icu::TimeArrayTimeZoneRule *this)
{
  *this = &unk_1F0943CF8;
  v2 = *(this + 11);
  v3 = this + 96;
  if (v2)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    free(v2);
  }

  *this = &unk_1F0943BC0;
  icu::UnicodeString::~UnicodeString(v3, (this + 8));

  icu::UObject::~UObject(this);
}

{
  icu::TimeArrayTimeZoneRule::~TimeArrayTimeZoneRule(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::TimeArrayTimeZoneRule::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::UnicodeString::operator=((a1 + 8), (a2 + 8));
    *(a1 + 72) = *(a2 + 72);
    v5 = U_ZERO_ERROR;
    icu::TimeArrayTimeZoneRule::initStartTimes(a1, *(a2 + 88), *(a2 + 84), &v5);
    *(a1 + 80) = *(a2 + 80);
  }

  return a1;
}

BOOL icu::TimeArrayTimeZoneRule::operator==(uint64_t a1, uint64_t a2)
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
    result = icu::TimeZoneRule::operator==(a1, a2);
    if (result)
    {
      if (*(a1 + 80) != *(a2 + 80))
      {
        return 0;
      }

      v5 = *(a1 + 84);
      if (v5 != *(a2 + 84))
      {
        return 0;
      }

      if (v5 >= 1)
      {
        v6 = *(a1 + 88);
        v7 = *(a2 + 88);
        v8 = v5 - 1;
        do
        {
          v9 = *v6++;
          v10 = v9;
          v11 = *v7++;
          v12 = v11;
          v14 = v8-- != 0;
          result = v10 == v12;
        }

        while (v10 == v12 && v14);
        return result;
      }

      return 1;
    }
  }

  return result;
}

uint64_t icu::TimeArrayTimeZoneRule::getStartTimeAt(icu::TimeArrayTimeZoneRule *this, signed int a2, double *a3)
{
  result = 0;
  if ((a2 & 0x80000000) == 0 && *(this + 21) > a2)
  {
    *a3 = *(*(this + 11) + 8 * a2);
    return 1;
  }

  return result;
}

BOOL icu::TimeArrayTimeZoneRule::isEquivalentTo(double **this, double **a2)
{
  if (this == a2)
  {
    return 1;
  }

  if (!this)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*this - 1), *(*a2 - 1));
  if (result)
  {
    result = icu::TimeZoneRule::isEquivalentTo(this, a2);
    if (result)
    {
      if (*(this + 20) != *(a2 + 20))
      {
        return 0;
      }

      v5 = *(this + 21);
      if (v5 != *(a2 + 21))
      {
        return 0;
      }

      if (v5 >= 1)
      {
        v6 = this[11];
        v7 = a2[11];
        result = 1;
        while (*v6 == *v7)
        {
          ++v7;
          ++v6;
          if (!--v5)
          {
            return result;
          }
        }

        return 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t icu::TimeArrayTimeZoneRule::getFirstStart(icu::TimeArrayTimeZoneRule *this, int a2, int a3, double *a4)
{
  if (*(this + 21) < 1)
  {
    return 0;
  }

  v4 = *(this + 11);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  v6 = *(this + 20);
  if (v6 != 2)
  {
    v5 = v5 - a2;
  }

  if (!v6)
  {
    v5 = v5 - a3;
  }

  *a4 = v5;
  return 1;
}

double icu::TimeArrayTimeZoneRule::getUTC(icu::TimeArrayTimeZoneRule *this, double result, int a3, int a4)
{
  v4 = *(this + 20);
  if (v4 != 2)
  {
    result = result - a3;
  }

  if (!v4)
  {
    return result - a4;
  }

  return result;
}

uint64_t icu::TimeArrayTimeZoneRule::getFinalStart(icu::TimeArrayTimeZoneRule *this, int a2, int a3, double *a4)
{
  v4 = *(this + 21);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = *(this + 11);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8 * v4 - 8);
  v7 = *(this + 20);
  if (v7 != 2)
  {
    v6 = v6 - a2;
  }

  if (!v7)
  {
    v6 = v6 - a3;
  }

  *a4 = v6;
  return 1;
}

BOOL icu::TimeArrayTimeZoneRule::getNextStart(icu::TimeArrayTimeZoneRule *this, double a2, int a3, int a4, int a5, double *a6)
{
  v6 = *(this + 21);
  if (v6 < 1)
  {
    LODWORD(v9) = *(this + 21);
  }

  else
  {
    v7 = *(this + 20);
    v8 = *(this + 11) - 8;
    v9 = *(this + 21);
    while (1)
    {
      v10 = a5 == 0;
      v11 = *(v8 + 8 * v9);
      if (v7 != 2)
      {
        v11 = v11 - a3;
      }

      if (!v7)
      {
        v11 = v11 - a4;
      }

      if (v11 != a2)
      {
        v10 = 0;
      }

      if (v11 < a2 || v10)
      {
        break;
      }

      --v9;
      *a6 = v11;
      if ((v9 + 1) <= 1)
      {
        LODWORD(v9) = 0;
        return v9 != v6;
      }
    }
  }

  return v9 != v6;
}

uint64_t icu::TimeArrayTimeZoneRule::getPreviousStart(icu::TimeArrayTimeZoneRule *this, double a2, int a3, int a4, int a5, double *a6)
{
  v6 = *(this + 21);
  while (v6 >= 1)
  {
    v7 = a5 != 0;
    v8 = *(this + 11) + 8 * v6--;
    v9 = *(v8 - 8);
    v10 = *(this + 20);
    if (v10 != 2)
    {
      v9 = v9 - a3;
    }

    if (!v10)
    {
      v9 = v9 - a4;
    }

    if (v9 != a2)
    {
      v7 = 0;
    }

    if (v9 < a2 || v7)
    {
      *a6 = v9;
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1953FB808(uint64_t a1, double *a2, double *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 != *a3;
  }
}

icu::TimeZoneTransition *icu::TimeZoneTransition::TimeZoneTransition(icu::TimeZoneTransition *this, double a2, const icu::TimeZoneRule *a3, const icu::TimeZoneRule *a4)
{
  *this = &unk_1F0943DC0;
  *(this + 1) = a2;
  *(this + 2) = (*(*a3 + 24))(a3);
  *(this + 3) = (*(*a4 + 24))(a4);
  return this;
}

{
  *this = &unk_1F0943DC0;
  *(this + 1) = a2;
  *(this + 2) = (*(*a3 + 24))(a3);
  *(this + 3) = (*(*a4 + 24))(a4);
  return this;
}

void *icu::TimeZoneTransition::TimeZoneTransition(void *this)
{
  *this = &unk_1F0943DC0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F0943DC0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

icu::TimeZoneTransition *icu::TimeZoneTransition::TimeZoneTransition(icu::TimeZoneTransition *this, const icu::TimeZoneTransition *a2)
{
  *this = &unk_1F0943DC0;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = 0;
  v4 = (this + 16);
  *(this + 3) = 0;
  v5 = *(a2 + 2);
  if (v5)
  {
    *v4 = (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 3);
  if (v6)
  {
    *(this + 3) = (*(*v6 + 24))(v6);
  }

  return this;
}

void icu::TimeZoneTransition::~TimeZoneTransition(icu::TimeZoneTransition *this)
{
  *this = &unk_1F0943DC0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UObject::~UObject(this);
}

{
  icu::TimeZoneTransition::~TimeZoneTransition(this);

  JUMPOUT(0x19A8B2600);
}

icu::TimeZoneTransition *icu::TimeZoneTransition::operator=(icu::TimeZoneTransition *this, uint64_t a2)
{
  if (this != a2)
  {
    *(this + 1) = *(a2 + 8);
    icu::TimeZoneTransition::setFrom(this, *(a2 + 16));
    icu::TimeZoneTransition::setTo(this, *(a2 + 24));
  }

  return this;
}

uint64_t icu::TimeZoneTransition::setFrom(icu::TimeZoneTransition *this, const icu::TimeZoneRule *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = (*(*a2 + 24))(a2);
  *(this + 2) = result;
  return result;
}

uint64_t icu::TimeZoneTransition::setTo(icu::TimeZoneTransition *this, const icu::TimeZoneRule *a2)
{
  v4 = *(this + 3);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = (*(*a2 + 24))(a2);
  *(this + 3) = result;
  return result;
}

BOOL icu::TimeZoneTransition::operator==(uint64_t a1, uint64_t a2)
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
    if (*(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }

    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5 | v6)
    {
      if (!v5 || !v6 || !(*(*v5 + 32))(v5))
      {
        return 0;
      }
    }

    v7 = *(a1 + 24);
    v8 = *(a2 + 24);
    if (v7 | v8)
    {
      if (!v7 || !v8 || ((*(*v7 + 32))(v7) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t icu::TimeZoneTransition::adoptFrom(icu::TimeZoneTransition *this, icu::TimeZoneRule *a2)
{
  result = *(this + 2);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 2) = a2;
  return result;
}

uint64_t icu::TimeZoneTransition::adoptTo(icu::TimeZoneTransition *this, icu::TimeZoneRule *a2)
{
  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 3) = a2;
  return result;
}

uint64_t uameasfmt_open(const char *a1, unsigned int a2, icu::NumberFormat *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    if (a2 < 5)
    {
      operator new();
    }

    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

uint64_t uameasfmt_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t uameasfmt_formatGetPosition(icu::MeasureFormat *this, int a2, char *a3, uint64_t a4, uint64_t a5, icu::MeasureUnit *a6, double a7)
{
  if (*a6 > 0)
  {
    return 0;
  }

  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_5;
    }

LABEL_14:
    *a6 = 1;
    return 0;
  }

  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (icu::MeasureFormat::getWidth(this) == 3 && (a2 & 0xFFFFFFFE) == 2560)
  {
    v11 = 2563;
  }

  else
  {
    v11 = a2;
  }

  icu::MeasureUnit::createFromUAMeasureUnit(v11, a6);
  if (*a6 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t uameasfmt_formatMultipleForFields(icu::MeasureFormat *this, UErrorCode *a2, unsigned int a3, char *a4, unsigned int a5, icu::FieldPositionIterator *a6, icu::MeasureUnit *a7)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    if (a4)
    {
      if ((a5 & 0x80000000) != 0)
      {
        goto LABEL_7;
      }
    }

    else if (a5)
    {
LABEL_7:
      *a7 = 1;
      return 0;
    }

    if (a3 - 9 <= 0xFFFFFFF7)
    {
      goto LABEL_7;
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    if (*a7 <= 0)
    {
      if (a3)
      {
        v9 = *(a2 + 2);
        Width = icu::MeasureFormat::getWidth(this);
        if ((v9 & 0xFFFFFFFE) == 0xA00 && Width == 3)
        {
          v12 = 2563;
        }

        else
        {
          v12 = v9;
        }

        icu::MeasureUnit::createFromUAMeasureUnit(v12, a7);
        operator new();
      }

      icu::MeasureUnit::createGForce(a7, a2);
      operator new();
    }
  }

  return 0;
}

uint64_t uameasfmt_getUnitName(icu::MeasureFormat *a1, int a2, char *a3, uint64_t a4, icu::MeasureUnit *this)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*this > 0)
  {
    return 0;
  }

  if (a3)
  {
    if ((a4 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    *this = 1;
    return v5;
  }

  if (a4)
  {
    goto LABEL_9;
  }

LABEL_5:
  v10 = icu::MeasureUnit::createFromUAMeasureUnit(a2, this);
  v11 = v10;
  if (*this > 0)
  {
    v5 = 0;
    if (!v10)
    {
      return v5;
    }

    goto LABEL_14;
  }

  v17 = 0u;
  v18 = 0u;
  v20 = 0;
  v19 = 0u;
  v16 = &unk_1F0935D00;
  LOWORD(v17) = 2;
  icu::UnicodeString::setTo(&v16, a3, 0, a4);
  icu::MeasureFormat::getUnitName(a1, v11, &v16);
  v12 = v17;
  if (v17)
  {
    v5 = 0;
    *this = 2;
  }

  else
  {
    v15 = a3;
    v5 = icu::UnicodeString::extract(&v16, &v15, a4, this);
    v14 = v15;
    v12 = &v14;
  }

  icu::UnicodeString::~UnicodeString(v12, &v16);
  if (v11)
  {
LABEL_14:
    (*(*v11 + 8))(v11);
  }

  return v5;
}

uint64_t uameasfmt_getMultipleUnitNames(icu::MeasureFormat *a1, uint64_t a2, int a3, int a4, char *a5, uint64_t a6, icu::MeasureUnit *this)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*this > 0)
  {
    return 0;
  }

  if (a5)
  {
    if ((a6 & 0x80000000) != 0)
    {
      goto LABEL_8;
    }
  }

  else if (a6)
  {
LABEL_8:
    v7 = 0;
    *this = 1;
    return v7;
  }

  if ((a3 - 9) <= 0xFFFFFFF7)
  {
    goto LABEL_8;
  }

  v16 = 0;
  v17 = a3;
  memset(v29, 0, sizeof(v29));
  do
  {
    if (*this > 0)
    {
      goto LABEL_15;
    }

    *(v29 + v16) = icu::MeasureUnit::createFromUAMeasureUnit(*(a2 + 4 * v16), this);
    ++v16;
  }

  while (a3 != v16);
  if (*this >= 1)
  {
    LODWORD(v16) = a3;
LABEL_15:
    if (v16 >= 1)
    {
      v18 = v16 + 1;
      v19 = v29 + v16 - 1;
      do
      {
        if (*v19)
        {
          (*(**v19 + 8))(*v19);
        }

        --v18;
        --v19;
      }

      while (v18 > 1);
    }

    return 0;
  }

  v25 = 0u;
  v28 = 0;
  v27 = 0u;
  v26 = 0u;
  v24 = &unk_1F0935D00;
  LOWORD(v25) = 2;
  icu::UnicodeString::setTo(&v24, a5, 0, a6);
  v20 = v29;
  icu::MeasureFormat::getMultipleUnitNames(a1, v29, a3, a4, &v24);
  do
  {
    if (*v20)
    {
      (*(**v20 + 8))(*v20);
    }

    ++v20;
    --v17;
  }

  while (v17);
  if (v25)
  {
    v7 = 0;
    v21 = 2;
    *this = 2;
  }

  else
  {
    v23 = a5;
    v7 = icu::UnicodeString::extract(&v24, &v23, a6, this);
    v22 = v23;
    v21 = &v22;
  }

  icu::UnicodeString::~UnicodeString(v21, &v24);
  return v7;
}

void uameasfmt_getUnitsForUsage(const char *a1, const char *a2, const char *a3, _DWORD *a4, int a5, UErrorCode *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = 0;
  memset(&v24[1], 0, 48);
  icu::StringPiece::StringPiece(__key, a2);
  v24[0] = &v24[1] + 5;
  LODWORD(v24[1]) = 40;
  WORD2(v24[1]) = 0;
  LODWORD(v25) = 0;
  icu::CharString::append(v24, *__key, *&__key[8], a6);
  v23 = 0;
  memset(&v22[1], 0, 48);
  icu::StringPiece::StringPiece(__key, a3);
  v22[0] = &v22[1] + 5;
  LODWORD(v22[1]) = 40;
  WORD2(v22[1]) = 0;
  LODWORD(v23) = 0;
  icu::CharString::append(v22, *__key, *&__key[8], a6);
  memset(&__key[8], 0, 56);
  *__key = &__key[13];
  *&__key[8] = 40;
  icu::CharString::append(__key, v24[0], v25, a6);
  icu::StringPiece::StringPiece(__s, "/");
  icu::CharString::append(__key, __s[0], __s[1], a6);
  v8 = v23;
  if (v23)
  {
    v9 = v22[0];
  }

  else
  {
    icu::StringPiece::StringPiece(__s, "default");
    v9 = __s[0];
    v8 = __s[1];
  }

  icu::CharString::append(__key, v9, v8, a6);
  if (*a6 <= 0)
  {
    v10 = bsearch(*__key, off_1EAEC92E8, 0x1DuLL, 0x10uLL, sub_1953FD0F8);
    if (v10)
    {
      LODWORD(v23) = 0;
      *v22[0] = 0;
      icu::StringPiece::StringPiece(__s, v10[1]);
      icu::CharString::append(v22, __s[0], __s[1], a6);
      icu::StringPiece::StringPiece(__s, "/");
      if (icu::CharString::contains(v22, __s[0], __s[1]))
      {
        *&__s[1] = 0u;
        v19 = 0;
        v18 = 0u;
        v17 = 0u;
        __s[0] = &__s[1] + 5;
        LODWORD(__s[1]) = 40;
        icu::CharString::append(__s, v22[0], v23, a6);
        v11 = __s[0];
        v12 = strchr(__s[0], 47);
        *v12 = 0;
        v13 = v12 + 1;
        LODWORD(v25) = 0;
        *v24[0] = 0;
        icu::StringPiece::StringPiece(v21, v11);
        icu::CharString::append(v24, v21[0], v21[1], a6);
        LODWORD(v23) = 0;
        *v22[0] = 0;
        icu::StringPiece::StringPiece(v21, v13);
        icu::CharString::append(v22, v21[0], v21[1], a6);
        if (BYTE4(__s[1]))
        {
          free(__s[0]);
        }
      }

      icu::StringPiece::StringPiece(__s, "[");
      if (icu::CharString::contains(v22, __s[0], __s[1]))
      {
        *&__s[1] = 0u;
        v19 = 0;
        v18 = 0u;
        v17 = 0u;
        __s[0] = &__s[1] + 5;
        LODWORD(__s[1]) = 40;
        icu::CharString::append(__s, v22[0], v23, a6);
        v14 = __s[0];
        v15 = strchr(__s[0], 91);
        icu::CharString::truncate(v22, v15 - v14);
        atoi(v15 + 1);
        if (BYTE4(__s[1]))
        {
          free(__s[0]);
        }
      }
    }
  }

  if (__key[12])
  {
    free(*__key);
  }

  operator new();
}

const char *uameasfmt_getUnitCategory(int a1, icu::MeasureUnit *a2)
{
  if (*a2 <= 0)
  {
    v4 = icu::MeasureUnit::createFromUAMeasureUnit(a1, a2);
    v5 = v4;
    if (*a2 <= 0)
    {
      Type = icu::MeasureUnit::getType(v4);
      if (!v5)
      {
        return Type;
      }
    }

    else
    {
      Type = 0;
      if (!v4)
      {
        return Type;
      }
    }

    (*(*v5 + 8))(v5);
    return Type;
  }

  return 0;
}

unsigned int *sub_1953FD100(unsigned int *a1)
{
  v2 = *a1;
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 1) + 8 * v3);
      if (v4)
      {
        icu::UnicodeString::~UnicodeString(v2, (v4 + 80));
        if (*(v4 + 20))
        {
          free(*(v4 + 8));
        }

        MEMORY[0x19A8B2600](v4, 0x1092C40DFBAF056);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 1));
  }

  return a1;
}

uint64_t *sub_1953FD19C(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    sub_1953FD100((v2 + 88));
    v3 = sub_1953FD1EC(v2);
    MEMORY[0x19A8B2600](v3, 0x10A0C409C1F706FLL);
  }

  return a1;
}

uint64_t sub_1953FD1EC(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        if (*(v4 + 148))
        {
          free(*(v4 + 136));
        }

        if (*(v4 + 84))
        {
          free(*(v4 + 72));
        }

        if (*(v4 + 20))
        {
          free(*(v4 + 8));
        }

        MEMORY[0x19A8B2600](v4, 0x1010C40687BE35DLL);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

uint64_t uatmufmt_openWithNumberFormat(const char *a1, unsigned int a2, icu::NumberFormat *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    if (a2 < 4)
    {
      operator new();
    }

    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

uint64_t uatmufmt_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void uatmufmt_setNumberFormat(icu::SharedObject *result, uint64_t a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v6 = (*(*a2 + 32))(a2);

    icu::MeasureFormat::adoptNumberFormat(result, v6, a3);
  }
}

uint64_t uatmufmt_format(uint64_t a1, UErrorCode *a2, char *a3, uint64_t a4, icu::MeasureUnit *this, double a6)
{
  if (*this > 0)
  {
    return 0;
  }

  if (a3)
  {
    if ((a4 & 0x80000000) != 0)
    {
      goto LABEL_7;
    }
  }

  else if (a4)
  {
    goto LABEL_7;
  }

  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        icu::MeasureUnit::createDay(this, a2);
      }

      else if (a2 == 3)
      {
        icu::MeasureUnit::createWeek(this, a2);
      }

      else
      {
        icu::MeasureUnit::createHour(this, a2);
      }

      goto LABEL_29;
    }

    if (!a2)
    {
      icu::MeasureUnit::createYear(this, a2);
      goto LABEL_29;
    }

    if (a2 == 1)
    {
      icu::MeasureUnit::createMonth(this, a2);
      goto LABEL_29;
    }

LABEL_7:
    *this = 1;
    return 0;
  }

  if (a2 > 6)
  {
    switch(a2)
    {
      case 7:
        icu::MeasureUnit::createMillisecond(this, a2);
        goto LABEL_29;
      case 8:
        icu::MeasureUnit::createMicrosecond(this, a2);
        goto LABEL_29;
      case 9:
        icu::MeasureUnit::createNanosecond(this, a2);
        goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (a2 == 5)
  {
    icu::MeasureUnit::createMinute(this, a2);
  }

  else
  {
    icu::MeasureUnit::createSecond(this, a2);
  }

LABEL_29:
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

double uatmufmt_parse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (*a6 <= 0)
  {
    *a6 = 16;
  }

  return 0.0;
}

uint64_t uatmufmt_getTimePattern(char *a1, unsigned int a2, UChar *a3, int32_t a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v16 = v5;
  v17 = v6;
  if (a3)
  {
    if (a4 < 0)
    {
      goto LABEL_11;
    }
  }

  else if (a4)
  {
LABEL_11:
    result = 0;
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return result;
  }

  if (a2 >= 3)
  {
    goto LABEL_11;
  }

  v11 = off_1E7410170[a2];
  v15 = 0;
  v12 = ures_open("icudt76l-unit", a1, a5);
  v13 = ures_getByKeyWithFallback(v12, "durationUnits", v12, a5);
  StringByKeyWithFallback = ures_getStringByKeyWithFallback(v13, v11, &v15, a5);
  if (*a5 <= 0)
  {
    u_strncpy(a3, StringByKeyWithFallback, a4);
  }

  ures_close(v13);
  return u_terminateUChars(a3, a4, v15, a5);
}

uint64_t uatmufmt_getListPattern(char *a1, unsigned int a2, unsigned int a3, UChar *a4, int32_t a5, UErrorCode *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v19 = v6;
  v20 = v7;
  if (a4)
  {
    if (a5 < 0)
    {
      goto LABEL_12;
    }
  }

  else if (a5)
  {
LABEL_12:
    result = 0;
    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
    return result;
  }

  if (a2 >= 4 || a3 >= 4)
  {
    goto LABEL_12;
  }

  v12 = off_1E7410188[a2];
  v13 = off_1E74101A8[a3];
  v18 = 0;
  v14 = ures_open(0, a1, a6);
  v15 = ures_getByKeyWithFallback(v14, "listPattern", v14, a6);
  v16 = ures_getByKeyWithFallback(v15, v12, v15, a6);
  StringByKeyWithFallback = ures_getStringByKeyWithFallback(v16, v13, &v18, a6);
  if (*a6 <= 0)
  {
    u_strncpy(a4, StringByKeyWithFallback, a5);
  }

  ures_close(v16);
  return u_terminateUChars(a4, a5, v18, a6);
}

uint64_t *uatimezone_open(UChar *s, unsigned int a2, int *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    return 0;
  }

  if (s)
  {
    v7 = a2;
    if ((a2 & 0x80000000) != 0)
    {
      v7 = u_strlen(s);
    }

    v12 = 0u;
    v13 = 0u;
    v15 = 0;
    v14 = 0u;
    v10 = s;
    v11 = &unk_1F0935D00;
    LOWORD(v12) = 2;
    icu::UnicodeString::setTo(&v11, a2 >> 31, &v10, v7);
    TimeZone = icu::TimeZone::createTimeZone(&v11);
    if (!TimeZone)
    {
      v8 = 7;
      *a3 = 7;
    }

    icu::UnicodeString::~UnicodeString(v8, &v11);
    if (*a3 >= 1)
    {
      return 0;
    }

    else
    {
      return TimeZone;
    }
  }

  else
  {
    result = 0;
    *a3 = 1;
  }

  return result;
}

uint64_t uatimezone_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t uatimezone_getOffset(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a5)
  {
    if (*a5 <= 0)
    {
      return (*(*result + 48))(result, a2, a3, a4);
    }
  }

  return result;
}

void *uatimezone_getOffsetFromLocal(void *result, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  if (*a7 <= 0)
  {
    {
      v10 = *(*result + 160);
      v9.n128_f64[0] = a2;

      return v10(v9);
    }

    else
    {
      *a7 = 1;
    }
  }

  return result;
}

uint64_t uatimezone_getDisplayName(icu::Calendar *a1, int a2, char *a3, char *a4, uint64_t a5, int *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v22 = 0u;
    v25 = 0;
    v24 = 0u;
    v23 = 0u;
    v21 = &unk_1F0935D00;
    LOWORD(v22) = 2;
    if (a4 || a5)
    {
      icu::UnicodeString::setTo(&v21, a4, 0, a5);
    }

    if (a2 > 1)
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          icu::Locale::Locale(v20, a3, 0, 0, 0);
          v13 = a1;
          v14 = 1;
          goto LABEL_13;
        }

LABEL_18:
        v19 = a4;
        v6 = icu::UnicodeString::extract(&v21, &v19, a5, a6);
        v18 = v19;
        icu::UnicodeString::~UnicodeString(&v18, &v21);
        return v6;
      }

      icu::Locale::Locale(v20, a3, 0, 0, 0);
      v13 = a1;
      v14 = 1;
    }

    else
    {
      if (a2)
      {
        if (a2 == 1)
        {
          icu::Locale::Locale(v20, a3, 0, 0, 0);
          v13 = a1;
          v14 = 0;
LABEL_13:
          v15 = 2;
LABEL_17:
          icu::TimeZone::getDisplayName(v13, v14, v15, v20, &v21);
          icu::Locale::~Locale(v16, v20);
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      icu::Locale::Locale(v20, a3, 0, 0, 0);
      v13 = a1;
      v14 = 0;
    }

    v15 = 1;
    goto LABEL_17;
  }

  return 0xFFFFFFFFLL;
}

uint64_t uatimezone_getTimeZoneTransitionDate(const void *a1, unsigned int a2, double *a3, int *a4, double a5)
{
  v9 = 0;
  if (a1 && *a4 <= 0)
  {
    v19 = v8;
    v20 = v7;
    v21 = v5;
    v22 = v6;
    if (v13)
    {
      v14 = v13;
      memset(v18, 0, sizeof(v18));
      icu::TimeZoneTransition::TimeZoneTransition(v18);
      v15 = (a2 & 0xFFFFFFFD) == 1;
      v16 = *v14;
      if (a2 > 1)
      {
        if ((*(v16 + 120))(v14, v15, v18, a5))
        {
          goto LABEL_6;
        }
      }

      else if ((*(v16 + 112))(v14, v15, v18, a5))
      {
LABEL_6:
        *a3 = icu::TimeZoneTransition::getTime(v18);
        icu::TimeZoneTransition::~TimeZoneTransition(v18);
        return 1;
      }

      icu::TimeZoneTransition::~TimeZoneTransition(v18);
    }

    return 0;
  }

  return v9;
}

_OWORD *ucal_openTimeZoneIDEnumeration(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  TimeZoneIDEnumeration = icu::TimeZone::createTimeZoneIDEnumeration(a1, a2, a3, a4);

  return uenum_openFromStringEnumeration(TimeZoneIDEnumeration, a4);
}

_OWORD *ucal_openTimeZones(int *a1)
{
  TimeZoneIDEnumeration = icu::TimeZone::createTimeZoneIDEnumeration(0, 0, 0, a1);

  return uenum_openFromStringEnumeration(TimeZoneIDEnumeration, a1);
}

_OWORD *ucal_openCountryTimeZones(uint64_t a1, int *a2)
{
  TimeZoneIDEnumeration = icu::TimeZone::createTimeZoneIDEnumeration(0, a1, 0, a2);

  return uenum_openFromStringEnumeration(TimeZoneIDEnumeration, a2);
}

uint64_t ucal_getDefaultTimeZone(icu::TimeZone *a1, uint64_t a2, int *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3 || *a3 > 0)
  {
    return 0;
  }

  Default = icu::TimeZone::createDefault(a1);
  if (Default)
  {
    v9 = Default;
    v13 = 0u;
    v14 = 0u;
    v16 = 0;
    v15 = 0u;
    v12 = &unk_1F0935D00;
    LOWORD(v13) = 2;
    icu::UnicodeString::operator=(&v12, (Default + 8));
    (*(*v9 + 8))(v9);
    v11 = a1;
    v4 = icu::UnicodeString::extract(&v12, &v11, a2, a3);
    v10 = v11;
    icu::UnicodeString::~UnicodeString(&v10, &v12);
  }

  else
  {
    v4 = 0;
    *a3 = 7;
  }

  return v4;
}

void ucal_setDefaultTimeZone(UChar *a1, int *a2)
{
  v2 = sub_1953FE234(a1, 0xFFFFFFFF, a2);
  if (v2)
  {

    icu::TimeZone::adoptDefault(v2, v3);
  }
}

uint64_t *sub_1953FE234(UChar *s, unsigned int a2, int *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3 || *a3 > 0)
  {
    return 0;
  }

  v7 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    v7 = u_strlen(s);
  }

  v12 = 0u;
  v13 = 0u;
  v15 = 0;
  v14 = 0u;
  v10 = s;
  v11 = &unk_1F0935D00;
  LOWORD(v12) = 2;
  icu::UnicodeString::setTo(&v11, a2 >> 31, &v10, v7);
  TimeZone = icu::TimeZone::createTimeZone(&v11);
  if (!TimeZone)
  {
    v8 = 7;
    *a3 = 7;
  }

  icu::UnicodeString::~UnicodeString(v8, &v11);
  return TimeZone;
}

uint64_t ucal_getHostTimeZone(icu::TimeZone *a1, uint64_t a2, int *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3 || *a3 > 0)
  {
    return 0;
  }

  v8 = icu::TimeZone::detectHostTimeZone(a1);
  if (v8)
  {
    v9 = v8;
    v13 = 0u;
    v14 = 0u;
    v16 = 0;
    v15 = 0u;
    v12 = &unk_1F0935D00;
    LOWORD(v13) = 2;
    icu::UnicodeString::operator=(&v12, v8 + 1);
    (*(*v9 + 8))(v9);
    v11 = a1;
    v4 = icu::UnicodeString::extract(&v12, &v11, a2, a3);
    v10 = v11;
    icu::UnicodeString::~UnicodeString(&v10, &v12);
  }

  else
  {
    v4 = 0;
    *a3 = 7;
  }

  return v4;
}

uint64_t ucal_getDSTSavings(UChar *a1, int *a2)
{
  v3 = sub_1953FE234(a1, 0xFFFFFFFF, a2);
  v4 = v3;
  if (*a2 <= 0)
  {
    {
      v5 = (*(*v3 + 104))(v3);
    }

    else
    {
      Now = icu::Calendar::getNow(v3);
      LODWORD(v5) = 0;
      v7 = 53;
      do
      {
        v12 = 0;
        (*(*v4 + 48))(v4, 0, &v12 + 4, &v12, a2, Now);
        v8 = *a2;
        if (v12)
        {
          v9 = v12;
        }

        else
        {
          v9 = v5;
        }

        if (v8 >= 1)
        {
          v5 = v5;
        }

        else
        {
          v5 = v9;
        }

        if (v8 > 0 || v12 != 0)
        {
          break;
        }

        Now = Now + 604800000.0;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
    if (!v3)
    {
      return v5;
    }
  }

  (*(*v4 + 8))(v4);
  return v5;
}

uint64_t ucal_open(UChar *a1, unsigned int a2, const char *a3, int a4, int *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    return 0;
  }

  if (a1)
  {
    Default = sub_1953FE234(a1, a2, a5);
  }

  else
  {
    Default = icu::TimeZone::createDefault(0);
  }

  v10 = Default;
  v11 = *a5;
  if (Default || v11 > 0)
  {
    if (v11 <= 0)
    {
      if (a4 != 1)
      {
        icu::Locale::Locale(&v17, a3, 0, 0, 0);
        Instance = icu::Calendar::createInstance(v10, &v17, a5, v12);
        icu::Locale::~Locale(v13, &v17);
        return Instance;
      }

      if (!a3)
      {
        a3 = uloc_getDefault(Default);
      }

      v20 = 0;
      memset(&v19[1], 0, 48);
      icu::StringPiece::StringPiece(&v17, a3);
      v19[0] = &v19[1] + 5;
      LODWORD(v19[1]) = 40;
      WORD2(v19[1]) = 0;
      LODWORD(v20) = 0;
      icu::CharString::append(v19, v17, v18, a5);
      ulocimp_setKeywordValue("calendar", 8, "gregorian", 9, v19, a5);
      if (*a5 <= 0)
      {
        icu::Locale::Locale(&v17, v19[0], 0, 0, 0);
        Instance = icu::Calendar::createInstance(v10, &v17, a5, v15);
        icu::Locale::~Locale(v16, &v17);
        v10 = 0;
      }

      else
      {
        Instance = 0;
      }

      if (BYTE4(v19[1]))
      {
        free(v19[0]);
      }
    }

    else
    {
      Instance = 0;
    }

    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    Instance = 0;
    *a5 = 7;
  }

  return Instance;
}

uint64_t ucal_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ucal_clone(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  result = (*(*a1 + 24))(a1);
  if (!result)
  {
    *a2 = 7;
  }

  return result;
}

icu::TimeZone *ucal_setTimeZone(icu::TimeZone *result, const UChar *a2, unsigned int a3, int *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v5 = result;
    if (!a2)
    {
      result = icu::TimeZone::createDefault(result);
      v11 = result;
LABEL_21:
      if (v11)
      {
        return icu::Calendar::adoptTimeZone(v5, v11);
      }

      *a4 = 7;
      return result;
    }

    v21 = 0u;
    v22 = 0u;
    v24 = 0;
    v23 = 0u;
    v19 = 0;
    v20 = &unk_1F0935D00;
    LOWORD(v21) = 2;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v14 = a2;
    v15 = &unk_1F0935D00;
    LOWORD(v16) = 2;
    icu::UnicodeString::setTo(&v20, a3 >> 31, &v14, a3);
    TimeZone = icu::Calendar::getTimeZone(v5);
    icu::UnicodeString::operator=(&v15, TimeZone + 1);
    if (v16)
    {
      v10 = v21;
      if (v21)
      {
LABEL_16:
        v11 = 0;
        v12 = 1;
        goto LABEL_20;
      }
    }

    else
    {
      if ((v16 & 0x8000u) == 0)
      {
        v7 = v16 >> 5;
      }

      else
      {
        v7 = DWORD1(v16);
      }

      if ((v21 & 0x8000u) == 0)
      {
        v8 = v21 >> 5;
      }

      else
      {
        v8 = DWORD1(v21);
      }

      if ((v21 & 1) == 0 && v7 == v8)
      {
        v9 = (v21 & 2) != 0 ? (&v21 + 2) : v22;
        if (icu::UnicodeString::doEquals(&v15, v9, v7))
        {
          goto LABEL_16;
        }
      }
    }

    v11 = icu::TimeZone::createTimeZone(&v20);
    v12 = 0;
LABEL_20:
    icu::UnicodeString::~UnicodeString(v10, &v15);
    result = icu::UnicodeString::~UnicodeString(v13, &v20);
    if (v12)
    {
      return result;
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t ucal_getTimeZoneID(icu::Calendar *a1, UChar *a2, uint64_t a3, int *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    return 0;
  }

  TimeZone = icu::Calendar::getTimeZone(a1);
  v13 = 0u;
  v14 = 0u;
  v16 = 0;
  v15 = 0u;
  v12 = &unk_1F0935D00;
  LOWORD(v13) = 2;
  icu::UnicodeString::operator=(&v12, TimeZone + 1);
  v11 = a2;
  v4 = icu::UnicodeString::extract(&v12, &v11, a3, a4);
  v10 = v11;
  icu::UnicodeString::~UnicodeString(&v10, &v12);
  return v4;
}

uint64_t ucal_getTimeZoneDisplayName(icu::Calendar *a1, int a2, const char *a3, char *a4, uint64_t a5, int *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    TimeZone = icu::Calendar::getTimeZone(a1);
    v22 = 0u;
    v25 = 0;
    v24 = 0u;
    v23 = 0u;
    v21 = &unk_1F0935D00;
    LOWORD(v22) = 2;
    if (a4 || a5)
    {
      icu::UnicodeString::setTo(&v21, a4, 0, a5);
    }

    if (a2 > 1)
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          icu::Locale::Locale(v20, a3, 0, 0, 0);
          v13 = TimeZone;
          v14 = 1;
          goto LABEL_13;
        }

LABEL_18:
        v19 = a4;
        v6 = icu::UnicodeString::extract(&v21, &v19, a5, a6);
        v18 = v19;
        icu::UnicodeString::~UnicodeString(&v18, &v21);
        return v6;
      }

      icu::Locale::Locale(v20, a3, 0, 0, 0);
      v13 = TimeZone;
      v14 = 1;
    }

    else
    {
      if (a2)
      {
        if (a2 == 1)
        {
          icu::Locale::Locale(v20, a3, 0, 0, 0);
          v13 = TimeZone;
          v14 = 0;
LABEL_13:
          v15 = 1;
LABEL_17:
          icu::TimeZone::getDisplayName(v13, v14, v15, v20, &v21);
          icu::Locale::~Locale(v16, v20);
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      icu::Locale::Locale(v20, a3, 0, 0, 0);
      v13 = TimeZone;
      v14 = 0;
    }

    v15 = 2;
    goto LABEL_17;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ucal_inDaylightTime(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return (*(*a1 + 96))();
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

icu::GregorianCalendar *ucal_setGregorianChange(icu::GregorianCalendar *lpsrc, UErrorCode *a2, double a3)
{
  if (*a2 > 0)
  {
    return lpsrc;
  }

  v4 = lpsrc;
  if (!lpsrc)
  {
    v8 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_10:
    *a2 = v8;
    return lpsrc;
  }

  v6 = *lpsrc;
  {
    lpsrc = sub_19520B9EC(*(*v4 - 8), &unk_1F093DBA8);
    if ((lpsrc & 1) == 0)
    {
      v8 = U_UNSUPPORTED_ERROR;
      goto LABEL_10;
    }
  }

  return icu::GregorianCalendar::setGregorianChange(v7, a3, a2);
}

double ucal_getGregorianChange(uint64_t *lpsrc, int *a2)
{
  if (*a2 > 0)
  {
    return 0.0;
  }

  if (!lpsrc)
  {
    v7 = 1;
LABEL_10:
    *a2 = v7;
    return 0.0;
  }

  v4 = *lpsrc;
  {
    v7 = 16;
    goto LABEL_10;
  }

  return icu::GregorianCalendar::getGregorianChange(v5);
}

uint64_t ucal_getAttribute(icu::Calendar *this, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {

        return icu::Calendar::getFirstDayOfWeek(this);
      }
    }

    else
    {
      return icu::Calendar::isLenient(this);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return icu::Calendar::getMinimalDaysInFirstWeek(this);
      case 3:

        return icu::Calendar::getRepeatedWallTimeOption(this);
      case 4:

        return icu::Calendar::getSkippedWallTimeOption(this);
    }
  }

  return result;
}

uint64_t ucal_setAttribute(uint64_t result, int a2, unsigned __int8 a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return icu::Calendar::setFirstDayOfWeek(result, a3);
      }
    }

    else
    {
      return icu::Calendar::setLenient(result, a3);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return icu::Calendar::setMinimalDaysInFirstWeek(result, a3);
      case 3:
        return icu::Calendar::setRepeatedWallTimeOption(result, a3);
      case 4:
        return icu::Calendar::setSkippedWallTimeOption(result, a3);
    }
  }

  return result;
}

double ucal_getMillis(icu::Calendar *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    return icu::Calendar::getTimeInMillis(this, a2);
  }

  else
  {
    return 0.0;
  }
}

uint64_t ucal_setMillis(uint64_t this, double a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    return icu::Calendar::setTimeInMillis(this, a2, a3);
  }

  return this;
}

icu::Calendar *ucal_setDate(icu::Calendar *this, int a2, int a3, int a4, int *a5)
{
  if (*a5 <= 0)
  {
    return icu::Calendar::set(this, a2, a3, a4);
  }

  return this;
}

icu::Calendar *ucal_setDateTime(icu::Calendar *this, int a2, int a3, int a4, int a5, int a6, int a7, int *a8)
{
  if (*a8 <= 0)
  {
    return icu::Calendar::set(this, a2, a3, a4, a5, a6, a7);
  }

  return this;
}

uint64_t ucal_add(uint64_t result, unsigned int a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a2 < 0x19)
    {
      return (*(*result + 56))();
    }

    else
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t ucal_roll(uint64_t result, unsigned int a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a2 < 0x19)
    {
      return (*(*result + 72))();
    }

    else
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t ucal_get(icu::Calendar *a1, unsigned int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 >= 0x19)
  {
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0xFFFFFFFFLL;
  }

  return icu::Calendar::get(a1, a2, a3);
}

_BYTE *ucal_set(_BYTE *this, unsigned int a2, int a3)
{
  if (a2 <= 0x18)
  {
    return icu::Calendar::set(this, a2, a3);
  }

  return this;
}

_BYTE *ucal_clearField(_BYTE *result, unsigned int a2)
{
  if (a2 <= 0x18)
  {
    return icu::Calendar::clear(result, a2);
  }

  return result;
}

uint64_t ucal_getLimit(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  if (!a4 || *a4 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 >= 0x19)
  {
    *a4 = 1;
    return 0xFFFFFFFFLL;
  }

  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        return (*(*a1 + 160))();
      case 4:
        return (*(*a1 + 168))();
      case 5:
        return (*(*a1 + 176))();
      default:
        return 0xFFFFFFFFLL;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return (*(*a1 + 128))();
    }

    else
    {
      if (a3 != 2)
      {
        return 0xFFFFFFFFLL;
      }

      return (*(*a1 + 144))();
    }
  }

  else
  {
    return (*(*a1 + 112))();
  }
}

uint64_t ucal_getLocaleByType(uint64_t a1, int a2, int *a3)
{
  if (a1)
  {
    return icu::Calendar::getLocaleID(a1, a2, a3);
  }

  if (*a3 <= 0)
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t ucal_getCanonicalTimeZoneID(uint64_t a1, uint64_t a2, UChar *a3, uint64_t a4, _BYTE *a5, icu::UnicodeString *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a6 || *a6 > 0)
  {
    return 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a1 && a2 && a3 && a4 > 0)
  {
    v20 = 0u;
    v21 = 0u;
    v23 = 0;
    v22 = 0u;
    v19 = &unk_1F0935D00;
    LOWORD(v20) = 2;
    v17 = 0;
    icu::UnicodeString::UnicodeString(v18, a1, a2);
    icu::TimeZone::getCanonicalID(v18, &v19, &v17, a6, v12);
    icu::UnicodeString::~UnicodeString(v13, v18);
    v7 = 0;
    v14 = *a6;
    if (v14 <= 0)
    {
      if (a5)
      {
        *a5 = v17;
      }

      v16 = a3;
      v7 = icu::UnicodeString::extract(&v19, &v16, a4, a6);
      v15 = v16;
      v14 = &v15;
    }

    icu::UnicodeString::~UnicodeString(v14, &v19);
  }

  else
  {
    v7 = 0;
    *a6 = 1;
  }

  return v7;
}