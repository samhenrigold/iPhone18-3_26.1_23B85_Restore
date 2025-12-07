uint64_t SbfSetString(uint64_t a1, void *a2, char *a3, size_t a4)
{
  if (!a1)
  {
    sub_1000F84F4();
  }

  if (!a2)
  {
    sub_1000F84C8();
  }

  if (!a3)
  {
    sub_1000F849C();
  }

  result = sub_10000AE90(a1, a2, 8);
  if (!result)
  {
    if (a4 == -1)
    {
      a4 = strlen(a3);
    }

    v9 = sub_1000F6838(a1, a2, a4 + 1, 1);
    if (v9)
    {
      sub_10000BC58(v9, 0, a3, a4 + 1, 1u);
      a2[1] = a2[1] & 0xF0FFFFFFFFFFFFFFLL | 0x800000000000000;
      sub_10000A3E0(a1, a2);
      return 0;
    }

    else
    {
      return *(a1 + 92);
    }
  }

  return result;
}

uint64_t SbfSetBlob(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  if (!a1)
  {
    sub_1000F8578();
  }

  if (!a2)
  {
    sub_1000F854C();
  }

  if (!a3)
  {
    sub_1000F8520();
  }

  result = sub_10000AE90(a1, a2, 9);
  if (!result)
  {
    v9 = sub_1000F6838(a1, a2, a4, 1);
    if (v9)
    {
      sub_10000BC58(v9, 0, a3, a4, 0);
      a2[1] = a2[1] & 0xF0FFFFFFFFFFFFFFLL | 0x900000000000000;
      sub_10000A3E0(a1, a2);
      return 0;
    }

    else
    {
      return *(a1 + 92);
    }
  }

  return result;
}

void *SbfAddNone(uint64_t a1, uint64_t a2, char *a3)
{
  if (!a1)
  {
    sub_1000F85A4();
  }

  v4 = sub_100009F50(a1, a2, a3, 1, 0);
  v5 = v4;
  if (v4)
  {
    v4[1] &= 0xF0FFFFFFFFFFFFFFLL;
    sub_10000A3E0(a1, v4);
  }

  return v5;
}

void *SbfAddNull(uint64_t a1, uint64_t a2, char *a3)
{
  if (!a1)
  {
    sub_1000F85FC();
  }

  v4 = sub_100009F50(a1, a2, a3, 1, 0);
  if (v4)
  {
    SbfSetNull(a1, v4);
  }

  return v4;
}

void *SbfAddInt64(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000F8654();
  }

  v6 = sub_100009F50(a1, a2, a3, 3, 0);
  if (v6)
  {
    SbfSetInt64(a1, v6, a4);
  }

  return v6;
}

unint64_t SbfAddDouble(uint64_t a1, uint64_t a2, char *a3, long double a4)
{
  if (!a1)
  {
    sub_1000F86AC();
  }

  v6 = sub_100009F50(a1, a2, a3, 5, 0);
  if (v6)
  {
    SbfSetDouble(a1, v6, a4);
  }

  return v6;
}

void *SbfAddStringSpace(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000F87E0();
  }

  if (a4 == -1)
  {
    sub_1000F87B4();
  }

  v5 = a4 + 1;
  v6 = sub_100009F50(a1, a2, a3, 8, a4 + 1);
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 24) << 6;
    if (v8)
    {
      v9 = (v6 + 32 * (v8 >> 6));
      v12 = *v9;
      v10 = v9 + 2;
      v11 = v12;
      if (v12 >= v5)
      {
        v13 = v5;
      }

      else
      {
        v13 = v11;
      }

      bzero(v10, v13);
    }

    sub_10000A3E0(a1, v7);
  }

  return v7;
}

void *SbfAddFromAtom(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000F8864();
  }

  if (!a4)
  {
    sub_1000F8838();
  }

  v6 = *(a4 + 15) & 0xF;
  if (v6 >= 8)
  {
    v7 = *(a4 + 28);
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_100009F50(a1, a2, a3, *(a4 + 15) & 0xF, v7);
  v9 = v8;
  if (v8)
  {
    if (v6 >= 6)
    {
      if (v6 - 8 < 2)
      {
        v11 = *(v8 + 24);
        v12 = v11 << 6;
        v13 = v8 + 32 * (v11 << 38 >> 38);
        v14 = v12 ? v13 : 0;
        v15 = *(a4 + 24);
        v16 = v15 << 6;
        v17 = a4 + 32 * (v15 << 38 >> 38);
        v18 = v16 ? v17 : 0;
        if (v18 && v7 && v14)
        {
          v21 = *v14;
          v19 = v14 + 2;
          LODWORD(v20) = v21;
          v24 = *v18;
          v22 = v18 + 2;
          v23 = v24;
          if (v20 >= v24)
          {
            v20 = v23;
          }

          else
          {
            v20 = v20;
          }

          if (v20 >= v7)
          {
            v25 = v7;
          }

          else
          {
            v25 = v20;
          }

          memcpy(v19, v22, v25);
        }
      }
    }

    else
    {
      *(v8 + 24) = *(a4 + 24);
    }

    sub_10000A3E0(a1, v9);
  }

  return v9;
}

uint64_t SbfRemove(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000F88BC();
  }

  if (!a2)
  {
    sub_1000F8890();
  }

  v4 = SbfNext(a2);
  if (*(a1 + 60))
  {
    return 30;
  }

  v5 = v4;
  sub_1000F7004(a1, a2, 1);
  if (!v5)
  {
    return 0;
  }

  do
  {
    *(v5 + 8) = *(v5 + 8) & 0xFF000000FFFFFFFFLL | ((((*(v5 + 8) + 0xFFFFFF00000000) >> 32) & 0xFFFFFF) << 32);
    result = SbfNext(v5);
    v5 = result;
  }

  while (result);
  return result;
}

uint64_t sub_1000F7004(uint64_t result, uint64_t a2, int a3)
{
  if (!result)
  {
    sub_1000F8914();
  }

  v3 = a2;
  if (!a2)
  {
    sub_1000F88E8();
  }

  v5 = result;
  if ((*(a2 + 8) & 0xE00000000000000) == 0x600000000000000 && (*(a2 + 28) & 0xFFFFFF) != 0)
  {
    result = SbfFirst(a2);
    if (result)
    {
      v6 = result;
      do
      {
        sub_1000F7004(v5, v6, 1);
        result = SbfFirst(v3);
        v6 = result;
      }

      while (result);
    }
  }

  if (a3)
  {
    v7 = *(v5 + 32);
    v8 = v3;
    if (v7)
    {
      v8 = v7(v5, 1, v3, *(v5 + 40));
    }

    v9 = v3[1] << 38;
    if (v9)
    {
      v10 = v3 - (v9 >> 33);
      SbfTreeDelete(v10, (v10 + 24), v9 >> 38, SbfTreeIndexCompare);
      *(v10 + 28) = *(v10 + 28) & 0xFF000000 | (*(v10 + 28) - 1) & 0xFFFFFF;
      if (v8)
      {
        v3 = v10;
      }
    }

    result = sub_10000A3E0(v5, v3);
    if (v8)
    {

      return SbfFreeAtom(v5, v8);
    }
  }

  return result;
}

unsigned int *SbfSetImportContext(unsigned int *result, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  if (!result)
  {
    sub_1000F896C();
  }

  v5 = result;
  if (!*(result + 79))
  {
    if (*(result + 74))
    {
      v10 = result + 74;
    }

    else
    {
      v10 = ".";
    }

    v11 = sub_1000F619C(result, 0, a2, v19, 0x400uLL, v10);
    v12 = v11;
    v13 = 256;
    if (a5 < 0x100)
    {
      v13 = a5;
    }

    if (a4)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (!a3)
    {
      if (v11)
      {
        a3 = __str;
        snprintf(__str, 0xAuLL, "[%d]", *(a2 + 28) & 0xFFFFFF);
      }

      else
      {
        strcpy(__str, "<root>");
        a3 = __str;
      }
    }

    v15 = v5[23];
    v16 = v14 + v12 + strlen(a3) + 42;
    result = SbfAlloc(v5, v16 & 0xFFFFFFFFFFFFFFE0);
    if (result)
    {
      v17 = result;
      if (v14)
      {
        result = snprintf(result, v16 & 0xFFFFFFFFFFFFFFE0, "'%s%s%s' near '%.*s'");
      }

      else
      {
        result = snprintf(result, v16 & 0xFFFFFFFFFFFFFFE0, "'%s%s%s'");
      }

      *(v5 + 10) = v17;
    }

    v5[23] = v15;
    if (!v5[22])
    {
      if (v15)
      {
        goto LABEL_23;
      }

      v5[22] = 1;
    }

    v5[23] = 79;
LABEL_23:
    *(v5 + 79) = 1;
  }

  return result;
}

uint64_t Base64StreamEncodeInit(uint64_t result)
{
  *result = -19306;
  *(result + 2) = 0;
  *(result + 18) = 0;
  *(result + 10) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t Base64StreamEncode(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, _BYTE *a4, unint64_t a5, void *a6)
{
  if (*a1 != 46230)
  {
    return 22;
  }

  v6 = (2 * (((a3 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  if (v6 < a3)
  {
    return 84;
  }

  if (v6 > a5)
  {
    return 34;
  }

  v8 = a4;
  if (a3)
  {
    v9 = a1[2];
    v8 = a4;
    do
    {
      v10 = *a2++;
      v11 = v9 + 1;
      a1[2] = v9 + 1;
      a1[v9 + 3] = v10;
      if ((v9 + 1) == 3)
      {
        v11 = 0;
        *v8 = aAbcdefghijklmn[a1[3] >> 2];
        v8[1] = aAbcdefghijklmn[(a1[4] >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (a1[3] & 3))];
        v8[2] = aAbcdefghijklmn[(a1[5] >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (a1[4] & 0xF))];
        v8[3] = aAbcdefghijklmn[a1[5] & 0x3F];
        v8 += 4;
        a1[2] = 0;
      }

      v9 = v11;
      --a3;
    }

    while (a3);
  }

  if (v8 - a4 > v6)
  {
    sub_1000F9078();
  }

  result = 0;
  if (a6)
  {
    *a6 = v8 - a4;
  }

  return result;
}

uint64_t Base64StreamEncodeFinal(unsigned __int16 *a1, _BYTE *a2, uint64_t a3, void *a4)
{
  if (*a1 != 46230)
  {
    return 22;
  }

  v4 = *(a1 + 2);
  v5 = a2;
  if (*(a1 + 2))
  {
    if (v4 == 2)
    {
      if (a3 >= 4)
      {
        *a2 = aAbcdefghijklmn[*(a1 + 3) >> 2];
        a2[1] = aAbcdefghijklmn[(*(a1 + 4) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*(a1 + 3) & 3))];
        v6 = aAbcdefghijklmn[4 * (a1[2] & 0xF)];
        goto LABEL_11;
      }
    }

    else
    {
      if (v4 != 1)
      {
        sub_1000F90A4();
      }

      if (a3 >= 4)
      {
        *a2 = aAbcdefghijklmn[*(a1 + 3) >> 2];
        a2[1] = aAbcdefghijklmn[16 * (*(a1 + 3) & 3)];
        v6 = 61;
LABEL_11:
        a2[2] = v6;
        v5 = a2 + 4;
        a2[3] = 61;
        goto LABEL_12;
      }
    }

    return 34;
  }

LABEL_12:
  if (a4)
  {
    *a4 = v5 - a2;
  }

  v7 = 0;
  *a1 = 0;
  return v7;
}

uint64_t Base64Encode(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4, void *a5)
{
  v10 = -19306;
  v11 = 0;
  memset(v13, 0, sizeof(v13));
  v12 = 0;
  v9 = 0;
  result = Base64StreamEncode(&v10, a1, a2, a3, a4, &v9);
  if (!result)
  {
    result = Base64StreamEncodeFinal(&v10, &a3[v9], a4 - v9, a5);
    if (a5)
    {
      if (!result)
      {
        *a5 += v9;
      }
    }
  }

  return result;
}

uint64_t Base64StreamDecodeInit(uint64_t result)
{
  *result = -23102;
  *(result + 2) = 0;
  *(result + 18) = 0;
  *(result + 10) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t Base64StreamDecode(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  if (*a1 != 42434)
  {
    return 22;
  }

  if (a1[6])
  {
    v6 = 1;
  }

  else
  {
    v6 = a3 < 1;
  }

  v7 = a4;
  if (!v6)
  {
    v8 = &a2[a3];
    v7 = a4;
    do
    {
      v10 = *a2++;
      v9 = v10;
      v11 = byte_10015E204[v10];
      if (v11 != 128)
      {
        if (v11 == 255)
        {
          return 33;
        }

        if (v9 == 61)
        {
          a1[6] = 1;
          break;
        }

        v12 = a1[2];
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            a1[4] |= v11 >> 2;
            a1[5] = v11 << 6;
            v13 = 3;
          }

          else
          {
            if (v12 != 3)
            {
LABEL_30:
              sub_1000F90D0();
            }

            if (&a4[a5] - v7 < 3)
            {
              return 34;
            }

            v13 = 0;
            a1[5] |= v11;
            *v7 = a1[3];
            v7[1] = a1[4];
            v7[2] = a1[5];
            v7 += 3;
          }
        }

        else if (a1[2])
        {
          if (v12 != 1)
          {
            goto LABEL_30;
          }

          a1[3] |= v11 >> 4;
          a1[4] = 16 * v11;
          v13 = 2;
        }

        else
        {
          a1[3] = 4 * v11;
          v13 = 1;
        }

        a1[2] = v13;
      }
    }

    while (a2 < v8);
  }

  result = 0;
  if (a6)
  {
    *a6 = v7 - a4;
  }

  return result;
}

uint64_t Base64StreamDecodeFinal(unsigned __int16 *a1, _BYTE *a2, uint64_t a3, void *a4)
{
  if (*a1 != 42434)
  {
    return 22;
  }

  v4 = *(a1 + 2);
  v5 = a2;
  if (v4 >= 2)
  {
    if (v4 != 3)
    {
      if (v4 != 2)
      {
        sub_1000F90FC();
      }

      if (a3 >= 1)
      {
        *a2 = *(a1 + 3);
        v5 = a2 + 1;
        if (!*(a1 + 4))
        {
          goto LABEL_14;
        }

        return 94;
      }

      return 34;
    }

    if (a3 < 2)
    {
      return 34;
    }

    *a2 = *(a1 + 3);
    a2[1] = *(a1 + 4);
    if (*(a1 + 5))
    {
      return 94;
    }

    v5 = a2 + 2;
  }

LABEL_14:
  if (a4)
  {
    *a4 = v5 - a2;
  }

  v6 = 0;
  *a1 = -1;
  return v6;
}

uint64_t Base64Decode(unsigned __int8 *a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5)
{
  v10 = -23102;
  v11 = 0;
  memset(v13, 0, sizeof(v13));
  v12 = 0;
  v9 = 0;
  result = Base64StreamDecode(&v10, a1, a2, a3, a4, &v9);
  if (!result)
  {
    result = Base64StreamDecodeFinal(&v10, &a3[v9], a4 - v9, a5);
    if (a5)
    {
      if (!result)
      {
        *a5 += v9;
      }
    }
  }

  return result;
}

unsigned int *SbfImportSetError(unsigned int *result, int a2, int a3, const char *a4)
{
  if (result)
  {
    v4 = result;
    v5 = *result;
    if (*result)
    {
      *(v5 + 88) = a3;
      *(v5 + 92) = a2;
      v6 = *(result + 4);
      if (v6)
      {
        v8 = *(result + 5);
        if (v6 >= v8 - 4)
        {
          v9 = *(result + 4);
        }

        else
        {
          v9 = v8 - 4;
        }

        v10 = v8 + 4;
        if (*(result + 6) <= v10)
        {
          v11 = *(result + 6);
        }

        else
        {
          v11 = v10;
        }

        v12 = snprintf(__str, 0xFFuLL, "0x%04zx: ", v9 - v6);
        if (v12 <= 254)
        {
          v13 = &__str[v12];
          v14 = 255 - v12;
          while (v9 < v11)
          {
            if (v9++ == *(v4 + 5))
            {
              v16 = snprintf(v13, v14, "{{%02X}} ");
            }

            else
            {
              v16 = snprintf(v13, v14, "%02X ");
            }

            v13 += v16;
            v14 -= v16;
            if (v14 < 1)
            {
              goto LABEL_21;
            }
          }

          if (a4)
          {
            snprintf(v13, v14, " -- %s", a4);
          }
        }

LABEL_21:
        v17 = strlen(__str);
        return SbfSetImportContext(*v4, *(v4 + 2), *(v4 + 1), __str, v17);
      }

      else
      {
        *(v5 + 80) = "";
      }
    }
  }

  return result;
}

uint64_t SbfExportFormat(const void **a1, unint64_t a2, int a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    sub_1000FA2FC();
  }

  if (a3 > 5)
  {
    if (a3 <= 8)
    {
      if (a3 == 6)
      {

        return SbfExportPlistx(a1, a2, a4, a5);
      }

      else if (a3 == 7)
      {

        return SbfExportRaw(a1, a2, a4, a5);
      }

      else
      {

        return SbfExportSbf(a1, a2, a4, a5);
      }
    }

    if (a3 != 9)
    {
      if (a3 != 10)
      {
        if (a3 == 11)
        {

          return SbfExportYaml(a1, a2, a4, a5);
        }

        return 22;
      }

      goto LABEL_42;
    }

    if (!a4)
    {
      return 22;
    }

    v7 = *(a4 + 40) | 8;
LABEL_41:
    *(a4 + 40) = v7;
LABEL_42:

    return SbfExportTable(a1, a2, a4, a5);
  }

  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      if (!a4)
      {
        return 22;
      }

      v7 = *(a4 + 40) | 2;
    }

    else
    {
      if (a3 != 2 || !a4)
      {
        return 22;
      }

      v7 = *(a4 + 40) | 4;
    }

    goto LABEL_41;
  }

  if (a3 == 3)
  {

    return SbfExportJson(a1, a2, a4, a5);
  }

  else if (a3 == 4)
  {

    return SbfExportPlistb(a1, a2, a4, a5);
  }

  else
  {

    return SbfExportPlistd(a1, a2, a4, a5);
  }
}

void *SbfExportB64(void *result, unsigned __int8 *a2, unint64_t a3)
{
  if (!result)
  {
    sub_1000FA328();
  }

  v3 = a2;
  if (a2)
  {
    v4 = a3;
    if (a3)
    {
      v5 = result;
      memset(v11, 0, sizeof(v11));
      Base64StreamEncodeInit(v11);
      v10 = 0;
      v6 = *(v5 + 24);
      do
      {
        v7 = *(v5 + 32) - v6;
        if (v7 <= 3)
        {
          result = SbfExportFlush(v5);
          if (!result)
          {
            return result;
          }

          v6 = *(v5 + 24);
          v7 = *(v5 + 32) - v6;
        }

        if (v4 >= 3 * ((v7 + 3) >> 2))
        {
          v8 = 3 * ((v7 + 3) >> 2);
        }

        else
        {
          v8 = v4;
        }

        result = Base64StreamEncode(v11, v3, v8, v6, v7, &v10);
        if (result)
        {
          goto LABEL_14;
        }

        v3 += v8;
        v6 = (*(v5 + 24) + v10);
        *(v5 + 24) = v6;
        v4 -= v8;
      }

      while (v4);
      result = Base64StreamEncodeFinal(v11, __src, 4, &v10);
      if (result)
      {
LABEL_14:
        *(v5 + 64) = result;
        return result;
      }

      return SbfExportBuf(v5, __src, v10);
    }
  }

  return result;
}

uint64_t SbfExportFlush(uint64_t a1)
{
  if (!a1)
  {
    sub_1000FA354();
  }

  v4 = a1 + 16;
  v2 = *(a1 + 16);
  v3 = *(v4 + 8);
  v5 = v3 - v2;
  if (v3 == v2)
  {
    return 0;
  }

  v6 = *(*a1 + 24);
  if (v6 && (result = v6(), result))
  {
    *(a1 + 64) = result;
  }

  else
  {
    result = 0;
    *(a1 + 40) += v5;
  }

  return result;
}

void *SbfExportBuf(void *result, char *__src, size_t a3)
{
  if (!result)
  {
    sub_1000FA3AC();
  }

  v3 = __src;
  if (!__src)
  {
    sub_1000FA380();
  }

  v4 = a3;
  if (a3)
  {
    v5 = result;
    while (!*(v5 + 16))
    {
      result = *(v5 + 2);
      if (!result)
      {
        break;
      }

      v6 = *(v5 + 3);
      v7 = *(v5 + 4) - v6;
      if (v7)
      {
        if (v4 >= v7)
        {
          v8 = *(v5 + 4) - v6;
        }

        else
        {
          v8 = v4;
        }

        result = memcpy(*(v5 + 3), v3, v8);
        *(v5 + 3) += v8;
        v3 += v8;
        v4 -= v8;
      }

      else
      {
        v9 = *(*v5 + 24);
        if (v9)
        {
          result = v9(result, *(v5 + 5), v6 - result, *(*v5 + 32));
          if (result)
          {
            *(v5 + 16) = result;
          }

          else
          {
            v10 = *(v5 + 2);
            *(v5 + 5) += *(v5 + 3) - v10;
            *(v5 + 3) = v10;
          }
        }

        else
        {
          *(v5 + 16) = 34;
        }
      }

      if (!v4)
      {
        return result;
      }
    }

    *(v5 + 5) += v4;
  }

  return result;
}

void *SbfExportECMAString(void *result, char *a2, uint64_t a3)
{
  if (!result)
  {
    sub_1000FA404();
  }

  if (!a2)
  {
    sub_1000FA3D8();
  }

  v3 = result;
  v4 = &a2[a3 - 1];
  if (v4 > a2)
  {
    v5 = a2;
    while (2)
    {
      v6 = "\";
      switch(*v5)
      {
        case 0:
          v6 = "\\u0000";
          goto LABEL_41;
        case 1:
          v6 = "\\u0001";
          goto LABEL_41;
        case 2:
          v6 = "\\u0002";
          goto LABEL_41;
        case 3:
          v6 = "\\u0003";
          goto LABEL_41;
        case 4:
          v6 = "\\u0004";
          goto LABEL_41;
        case 5:
          v6 = "\\u0005";
          goto LABEL_41;
        case 6:
          v6 = "\\u0006";
          goto LABEL_41;
        case 7:
          v6 = "\\u0007";
          goto LABEL_41;
        case 8:
          v6 = "\\b";
          goto LABEL_41;
        case 9:
          v6 = "\\t";
          goto LABEL_41;
        case 10:
          v6 = "\\n";
          goto LABEL_41;
        case 11:
          v6 = "\\u000b";
          goto LABEL_41;
        case 12:
          v6 = "\\f";
          goto LABEL_41;
        case 13:
          v6 = "\\r";
          goto LABEL_41;
        case 14:
          v6 = "\\u000e";
          goto LABEL_41;
        case 15:
          v6 = "\\u000f";
          goto LABEL_41;
        case 16:
          v6 = "\\u0010";
          goto LABEL_41;
        case 17:
          v6 = "\\u0011";
          goto LABEL_41;
        case 18:
          v6 = "\\u0012";
          goto LABEL_41;
        case 19:
          v6 = "\\u0013";
          goto LABEL_41;
        case 20:
          v6 = "\\u0014";
          goto LABEL_41;
        case 21:
          v6 = "\\u0015";
          goto LABEL_41;
        case 22:
          v6 = "\\u0016";
          goto LABEL_41;
        case 23:
          v6 = "\\u0017";
          goto LABEL_41;
        case 24:
          v6 = "\\u0018";
          goto LABEL_41;
        case 25:
          v6 = "\\u0019";
          goto LABEL_41;
        case 26:
          v6 = "\\u001a";
          goto LABEL_41;
        case 27:
          v6 = "\\u001b";
          goto LABEL_41;
        case 28:
          v6 = "\\u001c";
          goto LABEL_41;
        case 29:
          v6 = "\\u001d";
          goto LABEL_41;
        case 30:
          v6 = "\\u001e";
          goto LABEL_41;
        case 31:
          v6 = "\\u001f";
          goto LABEL_41;
        case 32:
        case 33:
          goto LABEL_9;
        case 34:
          goto LABEL_41;
        default:
          if (*v5 == 92)
          {
            v6 = "\\\"";
LABEL_41:
            if (v5 - a2 >= 1)
            {
              SbfExportBuf(v3, a2, v5 - a2);
            }

            ++v5;
            v7 = strlen(v6);
            result = SbfExportBuf(v3, v6, v7);
            a2 = v5;
          }

          else
          {
LABEL_9:
            ++v5;
          }

          if (v5 >= v4)
          {
            goto LABEL_47;
          }

          continue;
      }
    }
  }

  v5 = a2;
LABEL_47:
  if (v5 - a2 >= 1)
  {

    return SbfExportBuf(v3, a2, v5 - a2);
  }

  return result;
}

void *SbfExportNull(void *a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FA430();
  }

  return SbfExportBuf(a1, "null", 4uLL);
}

void *SbfExportBool(void *a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FA45C();
  }

  if (a2)
  {
    v3 = "true";
    v4 = 4;
  }

  else
  {
    v3 = "false";
    v4 = 5;
  }

  return SbfExportBuf(a1, v3, v4);
}

void *SbfExportUint(void *a1, unint64_t a2)
{
  if (!a1)
  {
    sub_1000FA488();
  }

  if (a2)
  {
    v2 = 0;
    do
    {
      v5[v2-- + 19] = (a2 % 0xA) | 0x30;
      v3 = a2 > 9;
      a2 /= 0xAuLL;
    }

    while (v3);
    return SbfExportBuf(a1, &v5[v2 + 20], -v2);
  }

  else
  {

    return SbfExportBuf(a1, "0", 1uLL);
  }
}

void *SbfExportInt(void *a1, unint64_t a2)
{
  if (!a1)
  {
    sub_1000FA4B4();
  }

  v2 = a2;
  v3 = a1;
  if ((a2 & 0x8000000000000000) != 0)
  {
    if (a2 == 0x8000000000000000)
    {

      return SbfExportBuf(a1, "-9223372036854775808", 0x14uLL);
    }

    SbfExportBuf(a1, "-", 1uLL);
    a2 = -v2;
    a1 = v3;
  }

  return SbfExportUint(a1, a2);
}

void *SbfExportIndent(void *result, uint64_t a2)
{
  if (!result)
  {
    sub_1000FA4E0();
  }

  if (*(*result + 40))
  {
    if (!xmmword_1001C023C)
    {
      *&v3 = 0x2020202020202020;
      *(&v3 + 1) = 0x2020202020202020;
      unk_1001C032B = v3;
      xmmword_1001C030C = v3;
      unk_1001C031C = v3;
      xmmword_1001C02EC = v3;
      unk_1001C02FC = v3;
      xmmword_1001C02CC = v3;
      unk_1001C02DC = v3;
      xmmword_1001C02AC = v3;
      unk_1001C02BC = v3;
      xmmword_1001C028C = v3;
      unk_1001C029C = v3;
      xmmword_1001C026C = v3;
      unk_1001C027C = v3;
      xmmword_1001C024C = v3;
      unk_1001C025C = v3;
      xmmword_1001C023C = v3;
    }

    v4 = 2 * result[1];

    return SbfExportBuf(result, &xmmword_1001C023C, v4);
  }

  return result;
}

uint64_t SbfExportAtom(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t), uint64_t a5)
{
  if (!a1)
  {
    sub_1000FA590();
  }

  if (!a2)
  {
    sub_1000FA564();
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  v10 = a4(a1, a2, 0, a5);
  v11 = 0;
  if (v10 <= 1)
  {
    if (!v10)
    {
      goto LABEL_13;
    }

    if (v10 == 1)
    {
      return v11;
    }

LABEL_12:
    v11 = 0;
    *(a1 + 64) = 22;
    return v11;
  }

  v12 = a4;
  if (v10 == 4)
  {
    goto LABEL_14;
  }

  if (v10 == 3)
  {
LABEL_9:
    LOBYTE(v11) = 0;
    v12 = 0;
    goto LABEL_14;
  }

  if (v10 != 2)
  {
    goto LABEL_12;
  }

  LOBYTE(v11) = 1;
LABEL_13:
  v12 = a4;
LABEL_14:
  v13 = *(a1 + 72);
  if (*(a1 + 8))
  {
    v14 = *(a2 + 8);
    if ((v14 & 0x3FFFFFF) == 0)
    {
      sub_1000FA50C();
    }

    if (a3)
    {
      if ((*(a2 - 32 * (v14 << 38 >> 38) + 8) & 0xF00000000000000) == 0x600000000000000)
      {
        v15 = a2 + 32;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    (*(v13 + 96))(a1, v15, (v14 & 0xE00000000000000) == 0x600000000000000);
  }

  v16 = *(a2 + 8);
  v17 = HIBYTE(v16) & 0xF;
  if ((HIBYTE(v16) & 0xFu) > 4)
  {
    if ((HIBYTE(v16) & 0xFu) <= 7)
    {
      if ((v17 - 6) < 2)
      {
        v18 = v16 & 0xF00000000000000;
        (*(v13 + 80))(a1, (v16 & 0xF00000000000000) == 0x600000000000000);
        *(a1 + 80) = 1;
        if (a4)
        {
          while (a4(a1, a2, 2, a5))
          {
            *(a1 + 80) = 0;
          }
        }

        if ((v11 & 1) == 0)
        {
          v32 = v18;
          LODWORD(v19) = *(a2 + 24);
          if (v19)
          {
            v20 = 0;
            v21 = 1;
            do
            {
              if (v21)
              {
                if (v20 >= 0x1F)
                {
                  sub_1000FA538();
                }

                v33[v20++] = v19;
                v22 = *(a2 + 32 * v19) << 38;
              }

              else
              {
                v23 = v33[--v20];
                if (v23)
                {
                  v24 = (a2 + 32 * v23);
                }

                else
                {
                  v24 = &sbfSentinel;
                }

                v22 = *v24 << 12;
                v25 = **a1;
                if (((*(*(a1 + 48) + 60) & 0x10) != 0 || v24[2] > v25) && (v25 || (*(v24 + 15) & 0xF) != 0) && (!a4 || a4(a1, v24, 4, a5) != 1) && SbfExportAtom(a1, v24, 1, v12, a5))
                {
                  *(a1 + 80) = 0;
                }
              }

              v19 = v22 >> 38;
              v21 = v22 >> 38 != 0;
            }

            while (v20 || v22 >> 38);
          }

          v18 = v32;
        }

        if (a4)
        {
          while (a4(a1, a2, 3, a5))
          {
            *(a1 + 80) = 0;
          }
        }

        (*(v13 + 88))(a1, v18 == 0x600000000000000);
        goto LABEL_74;
      }

      if (v17 == 5)
      {
        (*(v13 + 56))(a1, *(a2 + 24));
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    if (v17 == 8)
    {
      v26 = *(v13 + 72);
    }

    else
    {
      if (v17 != 9)
      {
LABEL_73:
        *(a1 + 64) = 79;
        goto LABEL_74;
      }

      v26 = *(v13 + 64);
    }

    v27 = *(a2 + 24);
    v28 = v27 << 6;
    v29 = a2 + 32 * (v27 << 38 >> 38) + 8;
    if (v28)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v26(a1, v30, *(a2 + 28));
    goto LABEL_74;
  }

  if ((HIBYTE(v16) & 0xFu) > 1)
  {
    switch(v17)
    {
      case 2:
        (*(v13 + 32))(a1, *(a2 + 24) != 0);
        goto LABEL_74;
      case 3:
        (*(v13 + 40))(a1, *(a2 + 24));
        goto LABEL_74;
      case 4:
        (*(v13 + 48))(a1, *(a2 + 24));
        goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (v17)
  {
    (*(v13 + 24))(a1);
  }

  else
  {
    (*(v13 + 16))(a1);
  }

LABEL_74:
  v11 = 1;
  if (a4)
  {
    a4(a1, a2, 1, a5);
  }

  return v11;
}

void (**SbfExportFuncsInitDefault(void (**result)()))()
{
  if (!result)
  {
    sub_1000FA5E8();
  }

  v1 = 0;
  *result = nullsub_11;
  result[1] = nullsub_12;
  result[2] = nullsub_13;
  result[3] = SbfExportNull;
  result[4] = SbfExportBool;
  result[5] = SbfExportInt;
  result[6] = SbfExportUint;
  result[7] = nullsub_14;
  result[8] = SbfExportB64;
  result[9] = SbfExportECMAString;
  result[10] = nullsub_15;
  result[11] = nullsub_16;
  result[12] = nullsub_17;
  do
  {
    if (!result[v1])
    {
      sub_1000FA5BC();
    }
  }

  while (v1++ < 12);
  return result;
}

uint64_t SbfExportText(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4, void (*a5)(_OWORD *))
{
  if (!a1)
  {
    sub_1000FA614();
  }

  if (!a3)
  {
    return 22;
  }

  v8 = a2;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v20[0] = a3;
  v20[1] = 0;
  v10 = a3[1];
  v21 = v10;
  v22 = v10;
  if (v10)
  {
    v11 = v10 + a3[2];
  }

  else
  {
    v11 = 0;
  }

  v23 = v11;
  v24 = 0;
  v25 = a1;
  v26 = 0;
  v28 = v30;
  LOBYTE(v29) = 1;
  if (!a2)
  {
    v8 = *(a1 + 16);
  }

  if (SbfCheckAtom(a1, v8))
  {
    return 22;
  }

  SbfExportFuncsInitDefault(v30);
  a5(v30);
  v13 = *a3;
  if (((*(a1 + 60) & 0x10) != 0 || *(v8 + 16) > v13) && (v13 || (*(v8 + 15) & 0xF) != 0))
  {
    (*&v30[0])(v20);
    SbfExportAtom(v20, v8, 0, a3[11], a3[12]);
    (*(&v30[0] + 1))(v20);
    v10 = v21;
    v14 = v22;
    v15 = v24 != 0;
  }

  else
  {
    v15 = 0;
    v14 = v10;
  }

  if (v14 != v10 || v15)
  {
    if (a3[5])
    {
      SbfExportBuf(v20, "\n", 1uLL);
    }

    if (!a3[3])
    {
      SbfExportBuf(v20, byte_10015E304, 1uLL);
    }
  }

  v16 = v22 - v21;
  if (v22 == v21)
  {
    goto LABEL_28;
  }

  v17 = v24;
  v18 = *(v20[0] + 24);
  if (!v18)
  {
LABEL_27:
    v24 = v17 + v16;
LABEL_28:
    if (a4)
    {
      *a4 = v24;
    }

    return v27;
  }

  v19 = v18();
  if (!v19)
  {
    v17 = v24;
    goto LABEL_27;
  }

  LODWORD(v27) = v19;
  return v27;
}

uint64_t (**SbfImportFuncsInit(uint64_t (**result)(uint64_t a1)))(uint64_t a1)
{
  if (!result)
  {
    sub_1000FAFBC();
  }

  v1 = 0;
  *result = sub_1000FA73C;
  result[1] = sub_1000FA790;
  result[2] = sub_1000FA7E0;
  result[3] = sub_1000FA868;
  result[4] = sub_1000FA8F4;
  result[5] = sub_1000FA980;
  result[6] = sub_1000FAA0C;
  result[7] = sub_1000FAA94;
  result[8] = sub_1000FABB8;
  result[9] = sub_1000FACD0;
  result[10] = sub_1000FADD4;
  result[11] = sub_1000FAE64;
  do
  {
    if (!result[v1])
    {
      sub_1000FAF90();
    }
  }

  while (v1++ < 11);
  return result;
}

uint64_t sub_1000FA73C(uint64_t a1)
{
  *(a1 + 512) = 0;
  *a1 = 0;
  v1 = *(a1 + 536);
  if (!v1)
  {
    return 1;
  }

  v3 = 0;
  return v1(*(a1 + 520), &v3, 0, *(a1 + 544));
}

uint64_t sub_1000FA790(void *a1, int a2)
{
  v2 = a1[67];
  if (v2)
  {
    v5 = 0;
    if (a2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    v2(a1[65], &v5, v3, a1[68]);
  }

  return 1;
}

uint64_t sub_1000FA7E0(uint64_t a1, char *a2)
{
  v3 = SbfAddNull(*(a1 + 520), *(a1 + 528), a2);
  v7 = v3;
  if (v3)
  {
    v4 = *(a1 + 536);
    if (v4)
    {
      v5 = v4(*(a1 + 520), &v7, 3, *(a1 + 544));
      if (v5)
      {
        v3 = v7;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8 * *(a1 + 512)) = v3;
  return v5 & 1;
}

uint64_t sub_1000FA868(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = SbfAddBoolean(*(a1 + 520), *(a1 + 528), a2, a3);
  v8 = v4;
  if (v4)
  {
    v5 = *(a1 + 536);
    if (v5)
    {
      v6 = v5(*(a1 + 520), &v8, 3, *(a1 + 544));
      if (v6)
      {
        v4 = v8;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8 * *(a1 + 512)) = v4;
  return v6 & 1;
}

uint64_t sub_1000FA8F4(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = SbfAddInt64(*(a1 + 520), *(a1 + 528), a2, a3);
  v8 = v4;
  if (v4)
  {
    v5 = *(a1 + 536);
    if (v5)
    {
      v6 = v5(*(a1 + 520), &v8, 3, *(a1 + 544));
      if (v6)
      {
        v4 = v8;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8 * *(a1 + 512)) = v4;
  return v6 & 1;
}

uint64_t sub_1000FA980(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = SbfAddUint64(*(a1 + 520), *(a1 + 528), a2, a3);
  v8 = v4;
  if (v4)
  {
    v5 = *(a1 + 536);
    if (v5)
    {
      v6 = v5(*(a1 + 520), &v8, 3, *(a1 + 544));
      if (v6)
      {
        v4 = v8;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8 * *(a1 + 512)) = v4;
  return v6 & 1;
}

uint64_t sub_1000FAA0C(uint64_t a1, char *a2, long double a3)
{
  v4 = SbfAddDouble(*(a1 + 520), *(a1 + 528), a2, a3);
  v8 = v4;
  if (v4)
  {
    v5 = *(a1 + 536);
    if (v5)
    {
      v6 = v5(*(a1 + 520), &v8, 3, *(a1 + 544));
      if (v6)
      {
        v4 = v8;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8 * *(a1 + 512)) = v4;
  return v6 & 1;
}

uint64_t sub_1000FAA94(uint64_t a1, char *a2, uint64_t a3, char *__s, size_t a5)
{
  v5 = a3;
  if ((a3 - 1) >= 2)
  {
    if (a3)
    {
      sub_1000FAFE8(a3);
    }

    v9 = SbfAddString(*(a1 + 520), *(a1 + 528), a2, __s, a5);
    v15 = v9;
    if (v9)
    {
      v10 = *(a1 + 536);
      if (v10)
      {
        LOBYTE(v8) = v10(*(a1 + 520), &v15, 4, *(a1 + 544));
        if (v8)
        {
          v9 = v15;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        LOBYTE(v8) = 1;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    goto LABEL_23;
  }

  v7 = *(a1 + 8 * *(a1 + 512));
  v15 = v7;
  if (v7)
  {
    if (a5)
    {
      v8 = SbfAppendString(*(a1 + 520), v7, __s, a5) != 0;
    }

    else
    {
      v8 = 1;
    }

    v11 = *(a1 + 536);
    if (v11)
    {
      if (v5 == 1)
      {
        v12 = 5;
      }

      else
      {
        v12 = 7;
      }

      if (v8)
      {
        v13 = 6;
      }

      else
      {
        v13 = v12;
      }

      v11(*(a1 + 520), &v15, v13, *(a1 + 544));
      v9 = v15;
LABEL_23:
      *(a1 + 8 * *(a1 + 512)) = v9;
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8 & 1;
}

uint64_t sub_1000FABB8(uint64_t a1, char *a2, uint64_t a3, void *a4, size_t a5)
{
  v5 = a3;
  if ((a3 - 1) >= 2)
  {
    if (a3)
    {
      sub_1000FB04C(a3);
    }

    v13 = SbfAddBlob(*(a1 + 520), *(a1 + 528), a2, a4, a5);
    v16 = v13;
    if (v13)
    {
      v14 = *(a1 + 536);
      if (v14)
      {
        v9 = v14(*(a1 + 520), &v16, 4, *(a1 + 544));
        if (v9)
        {
          v13 = v16;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 8 * *(a1 + 512)) = v13;
  }

  else
  {
    v7 = *(a1 + 8 * *(a1 + 512));
    v16 = v7;
    if (v7)
    {
      appended = SbfAppendBlob(*(a1 + 520), v7, a4, a5);
      v9 = appended != 0;
      v10 = *(a1 + 536);
      if (v10)
      {
        if (v5 == 1)
        {
          v11 = 5;
        }

        else
        {
          v11 = 7;
        }

        if (appended)
        {
          v12 = v11;
        }

        else
        {
          v12 = 6;
        }

        v10(*(a1 + 520), &v16, v12, *(a1 + 544));
      }
    }

    else
    {
      v9 = 1;
    }
  }

  return v9 & 1;
}

uint64_t sub_1000FACD0(uint64_t a1, char *a2, int a3)
{
  if (*(a1 + 512) > 62)
  {
    return 0;
  }

  v12[3] = v3;
  v12[4] = v4;
  v7 = *(a1 + 528);
  v12[0] = v7;
  if (!v7)
  {
    v8 = 0;
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = SbfAddArray(*(a1 + 520), v7, a2);
    goto LABEL_9;
  }

  v8 = *(v7 + 15) & 0xF;
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (a2 || v8 == 7)
  {
LABEL_6:
    v9 = SbfAddObject(*(a1 + 520), v7, a2);
LABEL_9:
    v7 = v9;
    v12[0] = v9;
    goto LABEL_10;
  }

  if (v8 != 6)
  {
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (v7 != SbfRoot(*(a1 + 520), 0))
  {
    return 0;
  }

LABEL_10:
  if (!v7)
  {
    return 0;
  }

  v10 = *(a1 + 536);
  if (v10)
  {
    result = v10(*(a1 + 520), v12, 8, *(a1 + 544));
    if (!result)
    {
      return result;
    }

    v7 = v12[0];
  }

  v11 = *(a1 + 512);
  *(a1 + 8 * v11) = v7;
  *(a1 + 512) = v11 + 1;
  *(a1 + 528) = v7;
  return 1;
}

uint64_t sub_1000FADD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 512);
  if (v2 <= 0)
  {
    sub_1000FB0B0();
  }

  v4 = *(a1 + 536);
  if (v4)
  {
    v9 = *(a1 + 528);
    v5 = *(a1 + 520);
    if (a2)
    {
      v6 = 9;
    }

    else
    {
      v6 = 10;
    }

    v4(v5, &v9, v6, *(a1 + 544));
    v2 = *(a1 + 512);
  }

  *(a1 + 512) = v2 - 1;
  if (v2 < 2)
  {
    v7 = SbfRoot(*(a1 + 520), a2);
  }

  else
  {
    v7 = *(a1 + 8 * (v2 - 2));
  }

  *(a1 + 528) = v7;
  return 1;
}

uint64_t sub_1000FAE64(void *a1, unsigned int a2, void *a3, char *a4)
{
  v5 = a1[65];
  if (!v5[22])
  {
    v5[22] = a2;
    v8 = a1[67];
    if (v8)
    {
      v8();
      v5 = a1[65];
    }

    v10 = a3[4];
    v9 = a3[5];
    if ((a3[9] - (a3[8] + v9) + v10) >= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = a3[9] - (a3[8] + v9) + v10;
    }

    SbfSetImportContext(v5, a1[66], a4, v9, v11);
  }

  return 0;
}

uint64_t SbfImportFillBuffer(void *a1)
{
  if (!a1)
  {
    sub_1000FB0DC();
  }

  if (!*(a1[3] + 16))
  {
    return a1[9] - (a1[8] + a1[5]) + a1[4];
  }

  v2 = a1[4];
  v3 = a1[5];
  v4 = v3 - v2;
  memmove(v2, v3, a1[9] - a1[8] - (v3 - v2));
  v6 = a1[3];
  v5 = a1[4];
  a1[5] = v5;
  v7 = a1[8] + v4;
  a1[8] = v7;
  v8 = (*(v6 + 16))(v5 + a1[9] - v7);
  v9 = a1[8];
  v10 = a1[9] + v8;
  a1[9] = v10;
  return v10 - v9;
}

void sub_1000FAFE8(int a1)
{
  fprintf(__stderrp, "PANIC: %s:%d", "/Library/Caches/com.apple.xbs/Sources/AOP_MicroAPSD/src/libsbf/src/import.c", 153);
  fprintf(__stderrp, "invalid import phase %d", a1);
  fputc(10, __stderrp);
  abort();
}

void sub_1000FB04C(int a1)
{
  fprintf(__stderrp, "PANIC: %s:%d", "/Library/Caches/com.apple.xbs/Sources/AOP_MicroAPSD/src/libsbf/src/import.c", 197);
  fprintf(__stderrp, "invalid import phase %d", a1);
  fputc(10, __stderrp);
  abort();
}

uint64_t SbfFirst(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 8) & 0xE00000000000000) == 0x600000000000000)
    {
      v2 = SbfTreeMin(result, *(result + 24));
      if (v2)
      {
        return v1 + 32 * v2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SbfNext(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8) << 38;
    v2 = result - 32 * (v1 >> 38);
    if (v1)
    {
      v3 = result - 32 * (v1 >> 38);
    }

    else
    {
      v3 = 0;
    }

    if (v1)
    {
      v4 = v3 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }

    else
    {
      v5 = SbfTreeNext(result - 32 * (v1 >> 38), *(v2 + 24), v1 >> 38, SbfTreeIndexCompare);
      if (v5)
      {
        return v2 + 32 * v5;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t SbfParent(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8) << 38;
    if (v1)
    {
      result -= 32 * (v1 >> 38);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SbfNameAsIndex(char *__str, size_t a2)
{
  if (!__str)
  {
    sub_1000FB9BC();
  }

  v2 = __str;
  v3 = *__str;
  if (!*__str)
  {
    return 0x7FFFFFFFLL;
  }

  v4 = a2;
  if (a2 == -1)
  {
    v4 = strlen(__str);
  }

  if (v3 == 91)
  {
    if (v4 < 3)
    {
      return 0x7FFFFFFFLL;
    }

    ++v2;
    v4 -= 2;
  }

  __endptr = 0;
  v6 = strtol(v2, &__endptr, 10);
  if (v6 >> 24)
  {
    v7 = 0;
  }

  else
  {
    v7 = __endptr == &v2[v4];
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

  if (__endptr == v2)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return v8;
  }
}

uint64_t SbfIterate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    sub_1000FBA14();
  }

  if ((a3 & 6) == 0)
  {
    return 22;
  }

  v10 = a2;
  if (!a2)
  {
    v10 = *(a1 + 16);
  }

  if ((*(v10 + 8) & 0xE00000000000000) != 0x600000000000000)
  {
    return 22;
  }

  LODWORD(v12) = *(v10 + 24);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (v13)
      {
        v15 = v21[--v14];
        if (v15)
        {
          v16 = (v10 + 32 * v15);
        }

        else
        {
          v16 = &sbfSentinel;
        }

        v18 = *v16;
        v17 = v16[1];
        if ((a3 & 2) != 0)
        {
          result = a4(a1, v16, a5, 2, a6);
          if (result)
          {
            return result;
          }
        }

        if ((a3 & 1) != 0 && (v17 & 0xE00000000000000) == 0x600000000000000)
        {
          result = SbfIterate(a1, v16, a3, a4, a5, (a6 + 1));
          if (result)
          {
            return result;
          }
        }

        v20 = v18 << 12;
        if ((a3 & 4) != 0)
        {
          result = a4(a1, v16, a5, 4, a6);
          if (result)
          {
            return result;
          }
        }
      }

      else
      {
        if (v14 >= 0x1F)
        {
          sub_1000FB9E8();
        }

        v21[v14++] = v12;
        v20 = *(v10 + 32 * v12) << 38;
      }

      v12 = v20 >> 38;
      v13 = v20 >> 38 == 0;
    }

    while (v14 || v20 >> 38);
  }

  return 0;
}

unint64_t SbfAtomToIndex(uint64_t a1, unint64_t a2)
{
  if (SbfCheckAtom(a1, a2))
  {
    return -1;
  }

  result = -1;
  if (a2)
  {
    v4 = *(a2 + 8);
    if (v4 << 38)
    {
      if ((*(a2 - ((v4 << 38) >> 33) + 8) & 0xE00000000000000) == 0x600000000000000)
      {
        return HIDWORD(v4) & 0xFFFFFF;
      }
    }
  }

  return result;
}

uint64_t SbfCompare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    sub_1000FBA98();
  }

  if (!a3)
  {
    sub_1000FBA6C();
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v5 = v7;
  if (a5)
  {
    v5 = a5;
  }

  v5[4] = 0;
  *v5 = 0;
  v5[1] = 0;
  if (!a2)
  {
    a2 = *(a1 + 16);
    if (a4)
    {
      return sub_1000FB56C(a2, a4, v5);
    }

LABEL_9:
    a4 = *(a3 + 16);
    return sub_1000FB56C(a2, a4, v5);
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  return sub_1000FB56C(a2, a4, v5);
}

uint64_t sub_1000FB56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = HIBYTE(v6) & 0xF;
  if (v7 > 9)
  {
LABEL_22:
    if (*(a1 + 24) != *(a2 + 24))
    {
      goto LABEL_23;
    }

    return 1;
  }

  if (((1 << v7) & 3) != 0)
  {
    if (((*(a2 + 8) ^ v6) & 0xF00000000000000) == 0)
    {
      return 1;
    }

    goto LABEL_23;
  }

  if (((1 << v7) & 0xC0) != 0)
  {
    v10 = *(a2 + 8);
    if (((v10 ^ v6) & 0xF00000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (!a3)
    {
      sub_1000FBAF0();
    }

    if ((v6 & 0xE00000000000000) == 0x600000000000000)
    {
      v11 = SbfTreeMin(a1, *(a1 + 24));
      if (v11)
      {
        v12 = a1 + 32 * v11;
      }

      else
      {
        v12 = 0;
      }

      v10 = *(a2 + 8);
    }

    else
    {
      v12 = 0;
    }

    if ((v10 & 0xE00000000000000) == 0x600000000000000)
    {
      v14 = SbfTreeMin(a2, *(a2 + 24));
      if (v14)
      {
        v15 = a2 + 32 * v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a1 + 8);
    if ((v16 & 0xF00000000000000) == 0x700000000000000)
    {
      if (((*(a2 + 28) ^ *(a1 + 28)) & 0xFFFFFF) != 0)
      {
        goto LABEL_75;
      }

      if (!v12)
      {
LABEL_38:
        if (!v15)
        {
          return 1;
        }

        v17 = *(a3 + 24);
        v18 = *(a3 + 32);
        *(a3 + 32) = v18 + 1;
        if (v18 < v17)
        {
          return 1;
        }

        result = 0;
        *a3 = 0;
        *(a3 + 8) = v15;
        goto LABEL_78;
      }

      while (v15)
      {
        result = sub_1000FB56C(v12, v15, a3);
        if (!result)
        {
          return result;
        }

        v12 = SbfNext(v12);
        v15 = SbfNext(v15);
        if (!v12)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      if (!v12)
      {
LABEL_54:
        if ((v16 & 0xE00000000000000) == 0x600000000000000)
        {
          v20 = *(a1 + 28) & 0xFFFFFF;
        }

        else
        {
          v20 = -1;
        }

        if ((*(a2 + 8) & 0xE00000000000000) == 0x600000000000000)
        {
          v31 = *(a2 + 28) & 0xFFFFFF;
        }

        else
        {
          v31 = -1;
        }

        if (v20 == v31)
        {
          return 1;
        }

        v32 = *(a3 + 24);
        v33 = *(a3 + 32);
        *(a3 + 32) = v33 + 1;
        if (v33 < v32)
        {
          return 1;
        }

        result = 0;
        v30 = v32 + 1;
        *a3 = 0;
        *(a3 + 8) = 0;
        goto LABEL_79;
      }

      while (v15)
      {
        while (strcmp((v12 + 32), (v15 + 32)))
        {
          v15 = SbfNext(v15);
          if (!v15)
          {
            goto LABEL_56;
          }
        }

        if ((sub_1000FB56C(v12, v15, a3) & 1) == 0)
        {
          return 0;
        }

        v12 = SbfNext(v12);
        if ((*(a2 + 8) & 0xE00000000000000) == 0x600000000000000)
        {
          v19 = SbfTreeMin(a2, *(a2 + 24));
          if (v19)
          {
            v15 = a2 + 32 * v19;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        if (!v12)
        {
          v16 = *(a1 + 8);
          goto LABEL_54;
        }
      }
    }

LABEL_56:
    v17 = *(a3 + 24);
    v21 = *(a3 + 32);
    *(a3 + 32) = v21 + 1;
    if (v21 < v17)
    {
      return 1;
    }

    result = 0;
    *a3 = v12;
    *(a3 + 8) = 0;
LABEL_78:
    v30 = v17 + 1;
LABEL_79:
    *(a3 + 24) = v30;
    return result;
  }

  if (((1 << v7) & 0x300) == 0)
  {
    goto LABEL_22;
  }

  if (((*(a2 + 8) ^ v6) & 0xF00000000000000) == 0)
  {
    if (!a3)
    {
      sub_1000FBAC4();
    }

    v8 = *(a1 + 28);
    if (!v8 && !*(a2 + 28))
    {
      return 1;
    }

    if (v6 & 0xF00000000000000) != 0x900000000000000 && (*(a3 + 16))
    {
      v9 = 0;
LABEL_59:
      v34 = 0;
      v22 = *(a1 + 24);
      if (v22 << 6)
      {
        v23 = a1 + 32 * ((v22 << 6) >> 6) + 8;
      }

      else
      {
        v23 = 0;
      }

      if ((v22 & 0x3FFFFFF) != 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = &v34;
      }

      v25 = *(a2 + 24);
      if (v25 << 6)
      {
        v26 = a2 + 32 * ((v25 << 6) >> 6) + 8;
      }

      else
      {
        v26 = 0;
      }

      if ((v25 & 0x3FFFFFF) != 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = &v34;
      }

      if (v9)
      {
        v28 = memcmp(v24, v27, v8);
      }

      else
      {
        v28 = fnmatch(v24, v27, 0);
      }

      if (!v28)
      {
        return 1;
      }

      goto LABEL_75;
    }

    if (v8 == *(a2 + 28))
    {
      v9 = 1;
      goto LABEL_59;
    }

LABEL_75:
    v17 = *(a3 + 24);
    v29 = *(a3 + 32);
    *(a3 + 32) = v29 + 1;
    if (v29 < v17)
    {
      return 1;
    }

    result = 0;
    *a3 = a1;
    *(a3 + 8) = a2;
    goto LABEL_78;
  }

LABEL_23:

  return sub_1000FB950(a3, a1, a2);
}

BOOL sub_1000FB950(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    sub_1000FBB1C();
  }

  v4 = a1[3];
  v3 = a1[4];
  a1[4] = v3 + 1;
  if (v3 >= v4)
  {
    *a1 = a2;
    a1[1] = a3;
    a1[3] = v4 + 1;
  }

  return v3 < v4;
}

uint64_t SbfCreateAt(size_t size, char *a2)
{
  if (size - 536870913 > 0xFFFFFFFFE000003ELL)
  {
    v4 = size;
    v5 = a2;
    if (a2 || (v5 = malloc_type_malloc(size, 0xBFD91B47uLL)) != 0)
    {
      v6 = malloc_type_malloc(0x60uLL, 0x10F00401EC52248uLL);
      v2 = v6;
      if (v6)
      {
        *(v6 + 11) = 0;
        *(v6 + 72) = 0u;
        *(v6 + 56) = 0u;
        *(v6 + 40) = 0u;
        *(v6 + 24) = 0u;
        *(v6 + 8) = 0u;
        *(v5 + 3) = 0u;
        *v5 = 0u;
        *(v5 + 1) = 0u;
        *(v5 + 2) = 0u;
        *v6 = 0;
        *(v6 + 2) = v5 + 32;
        *(v5 + 5) &= 0xF0FFFFFFFFFFFFFFLL;
        *(v6 + 36) = 1;
        *v5 = 0x64DDAFAD00;
        *(v5 + 3) = v4;
        *(v5 + 4) = 64;
        SbfClearImportContext(v6, v7);
        *(v2 + 8) = v5;
        if (!a2)
        {
          *(v2 + 60) = 8;
        }

        *(v5 + 5) = v4;
        SbfFree(v2, v5 + 16, v4 - *(v5 + 4));
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    *__error() = 22;
  }

  return v2;
}

uint64_t SbfImportFormat(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FD028();
  }

  return *(a1 + 78);
}

uint64_t SbfIdentifyFormat(_DWORD *a1, unint64_t a2)
{
  if (!a1)
  {
    sub_1000FD054();
  }

  if (!SbfCheckDom(a1, a2, 0))
  {
    return 8;
  }

  if (!SbfCheckPlistb(a1, a2))
  {
    return 4;
  }

  if (!SbfCheckPlistd(a1))
  {
    return 5;
  }

  if (!SbfCheckPlistx(a1))
  {
    return 6;
  }

  if (SbfCheckJson(a1))
  {
    return 0;
  }

  return 3;
}

const char *SbfFormatToName(int a1, int a2)
{
  if (a1 <= 5)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        return "JSON";
      }

      if (a1 == 4)
      {
        v2 = "plistb";
        v3 = "binary property list";
      }

      else
      {
        v2 = "plistd";
        v3 = "DER-encoded property list";
      }

      goto LABEL_24;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "HTML";
      }

      return "unknown";
    }

    v2 = "CSV";
    v3 = "comma-separated value";
  }

  else
  {
    if (a1 <= 8)
    {
      if (a1 == 6)
      {
        v2 = "plistx";
        v3 = "XML-encoded property list";
      }

      else if (a1 == 7)
      {
        v2 = "raw";
        v3 = "Raw format";
      }

      else
      {
        v2 = "sbf";
        v3 = "native SBF";
      }

      goto LABEL_24;
    }

    if (a1 != 9)
    {
      if (a1 == 10)
      {
        return "table";
      }

      if (a1 == 11)
      {
        v2 = "YAML";
        v3 = "YAML Ain't Markup Language";
        goto LABEL_24;
      }

      return "unknown";
    }

    v2 = "style";
    v3 = "style specification";
  }

LABEL_24:
  if (a2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t SbfFormatFromName(char *__s2)
{
  if (!strncmp("CSV", __s2, 5uLL) || !strncmp("csv", __s2, 5uLL))
  {
    return 1;
  }

  if (!strncmp("HTML", __s2, 6uLL) || !strncmp("html", __s2, 6uLL))
  {
    return 2;
  }

  if (!strncmp("JSON", __s2, 6uLL) || !strncmp("json", __s2, 6uLL))
  {
    return 3;
  }

  if (!strncmp("plistb", __s2, 8uLL) || !strncmp("bplist", __s2, 8uLL))
  {
    return 4;
  }

  if (!strncmp("plistd", __s2, 8uLL) || !strncmp("asn1", __s2, 6uLL))
  {
    return 5;
  }

  v2 = 5;
  if (strncmp("der", __s2, 5uLL))
  {
    if (!strncmp("plistx", __s2, 8uLL) || !strncmp("plist", __s2, 7uLL) || !strncmp("xml", __s2, 5uLL))
    {
      return 6;
    }

    else if (!strncmp("raw", __s2, 5uLL))
    {
      return 7;
    }

    else if (!strncmp("sbf", __s2, 5uLL) || !strncmp("SBF", __s2, 5uLL))
    {
      return 8;
    }

    else if (!strncmp("style", __s2, 7uLL))
    {
      return 9;
    }

    else if (!strncmp("table", __s2, 7uLL))
    {
      return 10;
    }

    else
    {
      v2 = 11;
      if (strncmp("YAML", __s2, 6uLL))
      {
        if (!strncmp("yaml", __s2, 6uLL))
        {
          return 11;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t SbfCreateFromDom(_DWORD *a1, unint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    sub_1000FD080();
  }

  v3 = a3;
  v4 = a2;
  if ((a3 & 2) != 0)
  {
    v6 = 79;
  }

  else
  {
    v6 = SbfCheckDom(a1, a2, 0);
  }

  return sub_1000FC180(a1, v4, v3, v6);
}

uint64_t sub_1000FC180(uint64_t a1, int a2, int a3, int a4)
{
  v4 = a3;
  if ((a3 & 2) != 0)
  {
    if (a3)
    {
      v8 = __error();
      v7 = 0;
      v9 = 22;
    }

    else
    {
      if (a4 || (*(a1 + 8) & 1) == 0)
      {
        goto LABEL_11;
      }

      v8 = __error();
      v7 = 0;
      v9 = 30;
    }

    *v8 = v9;
    return v7;
  }

  if (a4)
  {
    v7 = 0;
    *__error() = a4;
    return v7;
  }

  v4 = *(a1 + 8) | a3;
LABEL_11:
  v10 = malloc_type_malloc(0x60uLL, 0x10F00401EC52248uLL);
  v7 = v10;
  if (v10)
  {
    if ((v4 & 2) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    sub_100009C64(v10, v11, a1, a2);
    *(v7 + 60) = v4 & 0xFFFFFFFD;
    if ((v4 & 2) != 0)
    {
      v12 = *(*(v7 + 8) + 12);
      *(a1 + 20) = v12;
      SbfFree(v7, (a1 + 64), v12 - *(a1 + 16));
    }

    *(v7 + 78) = 8;
  }

  return v7;
}

_WORD *SbfCreateFromRef(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FD0AC();
  }

  v5 = malloc_type_malloc(0x60uLL, 0x10F00401EC52248uLL);
  if (v5)
  {
    if (!a2)
    {
      a2 = SbfRoot(a1, v4);
    }

    v6 = *(a1 + 8);
    if (v5 == a1)
    {
      *v5 = 0;
      v5[36] = 1;
    }

    else
    {
      v7 = *(a1 + 16);
      *v5 = *a1;
      *(v5 + 1) = v7;
      v8 = *(a1 + 32);
      v9 = *(a1 + 48);
      v10 = *(a1 + 80);
      *(v5 + 4) = *(a1 + 64);
      *(v5 + 5) = v10;
      *(v5 + 2) = v8;
      *(v5 + 3) = v9;
    }

    *(v5 + 2) = v6 + 32;
    SbfClearImportContext(v5, v4);
    ++*(a1 + 72);
    v5[36] = 1;
    *v5 = a1;
    *(v5 + 1) = v6;
    *(v5 + 2) = a2;
    *(v5 + 15) = *(a1 + 60) & 0xFFFFFFF1;
    *(v5 + 78) = 8;
  }

  return v5;
}

uint64_t SbfCreateFromData(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    sub_1000FD104();
  }

  v4 = *a1;
  if (!v4)
  {
    sub_1000FD0D8();
  }

  v7 = SbfCheckDom(v4, *(a1 + 8), 1);
  v8 = *a1;
  v9 = a3 & 0xFFFFFFF5;
  if (v7)
  {
    v10 = (a3 & 1) == 0;
  }

  else
  {
    v9 |= v8[2];
    if (v9)
    {
      v12 = sub_1000FC180(*a1, a2, v9, 0);
      if (v12)
      {
        v8 = 0;
      }

      if ((v9 & 4) != 0)
      {
        goto LABEL_11;
      }

      return v12;
    }

    v10 = 1;
  }

  v11 = SbfCreateAt(0x20000000uLL, 0);
  v12 = v11;
  if (v11)
  {
    *(v11 + 60) |= v9 & 0xFFFFFFF0;
    SbfSetNow(v11, 0);
    sub_1000FC4D0(v12, 0, 0, a1, v7 == 0);
    if (!v10)
    {
      *(v12 + 60) |= 1u;
    }
  }

  if ((v9 & 4) != 0)
  {
LABEL_11:
    if (v8)
    {
      free(v8);
    }
  }

  return v12;
}

uint64_t SbfSetFlags(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FD130();
  }

  result = *(a1 + 60);
  *(a1 + 60) = result | a2;
  if (*a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((result | a2) & 1) == 0;
  }

  if (v4)
  {
    *(*(a1 + 8) + 8) |= a2 & 1;
  }

  return result;
}

void *sub_1000FC4D0(uint64_t a1, unint64_t a2, char *a3, void *a4, int a5)
{
  if (!a1)
  {
    sub_1000FD188();
  }

  if (!a4)
  {
    sub_1000FD15C();
  }

  if (a5)
  {
    *(a1 + 78) = 8;
    v9 = *a4;

    return sub_1000FCD38(a1, a2, a3, v9, 0);
  }

  v11 = SbfIdentifyFormat(*a4, a4[1]);
  *(a1 + 78) = v11;
  if (v11 > 4)
  {
    if (v11 == 5)
    {

      return SbfImportPlistd(a1);
    }

    else
    {
      if (v11 != 6)
      {
        goto LABEL_18;
      }

      return SbfImportPlistx(a1);
    }
  }

  else
  {
    if (v11 != 3)
    {
      if (v11 == 4)
      {

        return SbfImportPlistb(a1, a2, a3, a4);
      }

LABEL_18:
      *(a1 + 88) = 0x4F00000000;
      return 0;
    }

    return SbfImportJson(a1);
  }
}

uint64_t SbfCreateFromFd(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v9 = read(v1, __src, 0x1000uLL);
  if (v9 < 0)
  {
    return 0;
  }

  v10 = v9;
  memset(v36, 0, sizeof(v36));
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v36;
  }

  v12 = SbfIdentifyFormat(__src, v9);
  if (!v12)
  {
    v14 = 0;
    *__error() = 79;
    return v14;
  }

  v13 = v12;
  memset(&v35, 0, sizeof(v35));
  if (fstat(v8, &v35))
  {
    return 0;
  }

  if (v13 <= 6 && ((1 << v13) & 0x68) != 0)
  {
    v17 = (v35.st_mode & 0x8000u) != 0 && v35.st_size > 0x20000;
    if (!v17)
    {
      v20 = __src;
      v18 = v10;
LABEL_25:
      v37[1] = v10;
      v37[0] = v8;
      if (!v7)
      {
        v7 = v36;
      }

      v7[3] = v37;
      *v11 = v20;
      v7[1] = v18;
      v7[2] = sub_1000FCF8C;
      v21 = SbfCreateAt(0x20000000uLL, 0);
      v14 = v21;
      if (!v21)
      {
        goto LABEL_58;
      }

      *(v21 + 60) |= v3 & 0xFFFFFFF0;
      SbfSetNow(v21, 0);
      switch(v13)
      {
        case 6u:
          v22 = SbfImportPlistx(v14);
          break;
        case 5u:
          v22 = SbfImportPlistd(v14);
          break;
        case 3u:
          v22 = SbfImportJson(v14);
          break;
        default:
LABEL_58:
          v7[3] = 0;
          if (v17)
          {
            free(v20);
          }

          return v14;
      }

      if ((v3 & 1) != 0 && v22)
      {
        *(v14 + 60) |= 1u;
      }

      goto LABEL_58;
    }

    if (v10 <= 0x10000)
    {
      v18 = 0x10000;
    }

    else
    {
      v18 = v10;
    }

    v19 = malloc_type_malloc(v18, 0x4CB1D294uLL);
    if (v19)
    {
      v20 = v19;
      memcpy(v19, __src, v10);
      goto LABEL_25;
    }

    return 0;
  }

  st_mode = v35.st_mode;
  st_size = v35.st_size;
  v25 = malloc_type_malloc(v10, 0x7C8CCBD0uLL);
  if (!v25)
  {
    return 0;
  }

  v26 = v25;
  v27 = (v3 & 1) == 0 || v5 == 0;
  v28 = 0x10000;
  if (!v27)
  {
    v28 = v5;
  }

  if (v28 <= st_size)
  {
    v29 = st_size;
  }

  else
  {
    v29 = v28;
  }

  if (st_mode >= 0)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  memcpy(v25, __src, v10);
  v31 = v10;
  while (1)
  {
    while (1)
    {
      if (v31 == v10)
      {
        v10 += v30;
        v32 = reallocf(v26, v10);
        if (!v32)
        {
          return 0;
        }

        v26 = v32;
      }

      v33 = read(v8, &v26[v31], v10 - v31);
      if (v33 != -1)
      {
        break;
      }

      v14 = 0;
      v30 = 0x10000;
      if (*__error() != 40)
      {
        return v14;
      }
    }

    if (!v33)
    {
      break;
    }

    v31 += v33;
    v30 = 0x10000;
  }

  *v11 = v26;
  v34 = v36;
  if (v7)
  {
    v34 = v7;
  }

  *(v34 + 1) = v31;
  return SbfCreateFromData(v11, v5, v3 | 4u);
}

uint64_t SbfCreateFromFile(int a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    sub_1000FD1B4();
  }

  v5 = openat(a1, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = v5;
  if (!a4)
  {
    fstat(v5, &v9);
  }

  v7 = SbfCreateFromFd(v6);
  close(v6);
  return v7;
}

void sub_1000FCA70(void **a1)
{
  if (a1 && *a1[1] == -575689472)
  {
    if (!*(a1 + 36))
    {
      sub_1000FD1E0();
    }

    v2 = *(a1 + 36) - 1;
    *(a1 + 36) = v2;
    if (!v2)
    {
      v3 = *a1;
      if (*a1)
      {
        sub_1000FCA70(v3);
      }

      v4 = *(a1 + 15);
      if ((v4 & 8) != 0)
      {
        if (a1[6])
        {
          goto LABEL_11;
        }
      }

      else if ((v4 & 4) == 0)
      {
LABEL_11:

        free(a1);
        return;
      }

      free(a1[1]);
      goto LABEL_11;
    }
  }
}

uint64_t SbfDomUsed(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FD238();
  }

  return *(*(a1 + 8) + 16);
}

uint64_t SbfDomSize(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FD264();
  }

  return *(*(a1 + 8) + 12);
}

uint64_t SbfDomDataRO(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FD290();
  }

  return *(a1 + 8);
}

uint64_t SbfDomDataRW(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FD2BC();
  }

  v3 = 0;
  v4 = a1;
  do
  {
    v5 = v4;
    v3 |= *(v4 + 60);
    v4 = *v4;
  }

  while (v4);
  if (v5 != a1)
  {
    v6 = 22;
LABEL_8:
    v7 = __error();
    result = 0;
    *v7 = v6;
    return result;
  }

  if ((*(*(v5 + 8) + 8) | v3))
  {
    v6 = 30;
    goto LABEL_8;
  }

  SbfClearImportContext(a1, a2);
  return *(a1 + 8);
}

uint64_t SbfDomRestoreSize(uint64_t *a1, unint64_t a2)
{
  if (!a1)
  {
    sub_1000FD314();
  }

  v2 = 0;
  v3 = a1;
  do
  {
    v4 = v3;
    v2 |= *(v3 + 60);
    v3 = *v3;
  }

  while (v3);
  v5 = v4[1];
  if ((*(v5 + 8) | v2))
  {
    return 30;
  }

  v6 = 22;
  if (a2 <= 0x20000000 && v4 == a1)
  {
    if (*(v5 + 16) <= a2)
    {
      *(v5 + 12) = a2;
      if (*(v5 + 20) > a2)
      {
        *(v5 + 20) = a2;
      }

      v8 = (v5 + 28);
      while (1)
      {
        v6 = *v8;
        if (!v6)
        {
          break;
        }

        if (a2 - 8 <= v6)
        {
          goto LABEL_18;
        }

        v8 = (v6 + v5);
        if (*(v6 + v5 + 4) + v6 > a2)
        {
          v8[1] = a2 - v6;
LABEL_18:
          v6 = 0;
          *v8 = 0;
          return v6;
        }
      }
    }

    else
    {
      return 22;
    }
  }

  return v6;
}

void *SbfImportDom(uint64_t a1, unint64_t a2, char *a3, _DWORD *a4, unint64_t a5)
{
  if (!a1)
  {
    sub_1000FD340();
  }

  v9 = SbfCheckDom(a4, a5, 0);

  return sub_1000FCD38(a1, a2, a3, a4, v9);
}

void *sub_1000FCD38(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, int a5)
{
  if (a5)
  {
    result = 0;
    *(a1 + 92) = a5;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    memset(&v12[2], 0, 32);
    v12[0] = 0u;
    WORD4(v13) = 1;
    v12[1] = (a4 + 32);
    SbfClearImportContext(v12, a2);
    *(&v12[0] + 1) = a4;
    v11 = SbfRoot(v12, v10);
    return SbfAddSbf(a1, a2, a3, v11);
  }

  return result;
}

void *SbfImportData(uint64_t a1, unint64_t a2, char *a3, void *a4)
{
  if (!a1)
  {
    sub_1000FD36C();
  }

  v8 = SbfCheckDom(*a4, a4[1], 0) == 0;

  return sub_1000FC4D0(a1, a2, a3, a4, v8);
}

uint64_t SbfClearFlags(uint64_t *a1, int a2)
{
  if (!a1)
  {
    sub_1000FD398();
  }

  v2 = *(a1 + 15);
  if (a2)
  {
    v3 = 0;
    v4 = a1;
    do
    {
      v5 = v4;
      v3 |= *(v4 + 60);
      v4 = *v4;
    }

    while (v4);
    if ((*(v5[1] + 8) | v3))
    {
      a2 &= ~1u;
    }
  }

  *(a1 + 15) = v2 & ~a2;
  return v2;
}

uint64_t SbfSetDelimiter(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    sub_1000FD3C4();
  }

  *(result + 74) = a2;
  return result;
}

uint64_t SbfSetCallout(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    sub_1000FD3F0();
  }

  if (*(a1 + 32))
  {
    return 16;
  }

  result = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  return result;
}

const char *SbfImportErrorString(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return "Unknown";
  }

  else
  {
    return off_10018B6A0[a1];
  }
}

uint64_t SbfImportContext(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FD41C();
  }

  return *(a1 + 80);
}

uint64_t SbfImportError(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FD448();
  }

  return *(a1 + 88);
}

uint64_t SbfCheckRef(uint64_t a1)
{
  if (a1)
  {
    return SbfCheckDom(*(a1 + 8), *(*(a1 + 8) + 20), 0);
  }

  else
  {
    return 79;
  }
}

const char *SbfAtomTypeName(unsigned int a1)
{
  if (a1 > 9)
  {
    return "<invalid>";
  }

  else
  {
    return off_10018B710[a1];
  }
}

ssize_t sub_1000FCF8C(void *a1, uint64_t a2, size_t a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000FD524();
  }

  if (!a4)
  {
    sub_1000FD4F8();
  }

  result = *(a4 + 8);
  if (result)
  {
    *(a4 + 8) = 0;
  }

  else
  {
    v6 = read(*a4, a1, a3);
    return v6 & ~(v6 >> 63);
  }

  return result;
}

uint64_t SbfTreeDelete(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!a1)
  {
    sub_1000FDC14();
  }

  if (!a2)
  {
    sub_1000FDBE8();
  }

  if (!a4)
  {
    sub_1000FDBBC();
  }

  result = sub_1000FD594(a1, *a2, a3, a4);
  *a2 = result;
  return result;
}

uint64_t sub_1000FD594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!a1)
  {
    sub_1000FDC6C();
  }

  if (!a4)
  {
    sub_1000FDC40();
  }

  v5 = a2;
  if (!a2)
  {
    goto LABEL_18;
  }

  v8 = (a1 + 32 * a2);
  if (a2 == a3)
  {
    v9 = v8->i64[0] << 38;
    if (v9)
    {
      v10 = (v8->i64[0] & 0xFFFFFFC000000) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!v9)
      {
        v9 = v8->i64[0] << 12;
      }

      v5 = v9 >> 38;
      if (!(v9 >> 38))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v14 = v8->i64[0] << 38;
      do
      {
        v5 = v14 >> 38;
        v15 = *(a1 + 32 * (v14 >> 38));
        v14 = v15 << 12;
      }

      while (((v15 >> 26) & 0x3FFFFFF) != 0);
      v16 = (a1 + 32 * v5);
      v17 = v16->i64[0] & 0xFFFFFFFFFC000000 | sub_1000FD594(a1, v9 >> 38, v5, a4) & 0x3FFFFFF;
      v16->i64[0] = v17;
      v18.i64[0] = v17;
      v18.i64[1] = v16->i64[1];
      *v16 = vbslq_s8(xmmword_10015E320, v18, *v8);
      if (!v5)
      {
LABEL_18:
        v5 = 0;
        v8 = &sbfSentinel;
        goto LABEL_21;
      }
    }

    v8 = (a1 + 32 * v5);
    goto LABEL_21;
  }

  v11 = a4(a1, a1 + 32 * a2, a3);
  v12 = v8->i64[0];
  if (v11 < 0)
  {
    v13 = v8->i64[0] & 0xFFF0000003FFFFFFLL | ((sub_1000FD594(a1, v12 << 12 >> 38, a3, a4) & 0x3FFFFFF) << 26);
  }

  else
  {
    v13 = v8->i64[0] & 0xFFFFFFFFFC000000 | sub_1000FD594(a1, ((v12 << 6) >> 6), a3, a4) & 0x3FFFFFF;
  }

  v8->i64[0] = v13;
LABEL_21:
  v19 = v8->u64[1];
  v20 = (a1 + 32 * (v8->i64[0] << 12 >> 38));
  if (((v8->i64[0] >> 26) & 0x3FFFFFF) == 0)
  {
    v20 = &sbfSentinel;
  }

  v21 = v8->i64[0] << 38;
  if (v21)
  {
    v22 = (a1 + (v21 >> 33));
  }

  else
  {
    v22 = &sbfSentinel;
  }

  v23 = v22[1] << 32 >> 58;
  v24 = (v19 >> 26) - 1;
  v25 = v20[1] << 32 >> 58;
  if (v24 <= v23 && v24 <= *(v20 + 2) >> 26)
  {
    return v5;
  }

  v27 = (v19 >> 26) + 63;
  v8->i64[1] = v19 & 0xFFFFFFFF03FFFFFFLL | ((v27 & 0x3F) << 26);
  if (v25 > v27 << 58 >> 58)
  {
    v20[1] = v20[1] & 0xFFFFFFFF03FFFFFFLL | ((v27 & 0x3F) << 26);
  }

  v28 = sub_10000B0D8(a1, v5);

  return sub_10000B020(a1, v28);
}

uint64_t SbfTreeSearch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!a1)
  {
    sub_1000FDCC4();
  }

  if (!a4)
  {
    sub_1000FDC98();
  }

  v5 = a2;
  if (!a2)
  {
    return 0;
  }

  do
  {
    v8 = a4(a1, a1 + 32 * v5, a3);
    result = v5;
    if (!v8)
    {
      break;
    }

    v10 = v8 >= 0 ? 38 : 12;
    v11 = *(a1 + 32 * v5) << v10;
    result = v11 >> 38;
    v5 = v11 >> 38;
  }

  while (v11 >> 38);
  return result;
}

uint64_t SbfTreeMin(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FDCF0();
  }

  if (!a2)
  {
    return 0;
  }

  do
  {
    v2 = a2;
    v3 = *(a1 + 32 * a2);
    a2 = ((v3 << 6) >> 6);
  }

  while (v3 << 38);
  return v2;
}

uint64_t SbfTreeMax(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000FDD1C();
  }

  if (!a2)
  {
    return 0;
  }

  do
  {
    v2 = a2;
    v3 = *(a1 + 32 * a2);
    a2 = (v3 << 12) >> 38;
  }

  while (((v3 >> 26) & 0x3FFFFFF) != 0);
  return v2;
}

uint64_t SbfTreeNext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t))
{
  if (!a1)
  {
    sub_1000FDD74();
  }

  if (!a4)
  {
    sub_1000FDD48();
  }

  v7 = (a1 + 32 * a3);
  if (!a3)
  {
    v7 = &sbfSentinel;
  }

  v8 = *v7;
  if (((v8 >> 26) & 0x3FFFFFF) != 0)
  {
    v15 = v8 << 12;
    do
    {
      v9 = v15 >> 38;
      if (v15 >> 38)
      {
        v16 = (a1 + 32 * (v15 >> 38));
      }

      else
      {
        v16 = &sbfSentinel;
      }

      v15 = *v16 << 38;
    }

    while (v15);
  }

  else
  {
    v9 = 0;
    v10 = a2;
    if (a2)
    {
      do
      {
        v11 = (a1 + 32 * v10);
        v12 = a4(a1, v11, a3);
        if (v12 <= 0)
        {
          if ((v12 & 0x8000000000000000) == 0)
          {
            return v9;
          }

          v13 = 12;
          v10 = v9;
        }

        else
        {
          v13 = 38;
        }

        v9 = v10;
        v14 = *v11 << v13;
        v10 = v14 >> 38;
      }

      while (v14 >> 38);
    }
  }

  return v9;
}

uint64_t SbfTreeIterate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!a1)
  {
    sub_1000FDDCC();
  }

  if (!a3)
  {
    sub_1000FDDA0();
  }

  if (a2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      if (v6)
      {
        v13[v5++] = a2;
        v7 = *(a1 + 32 * a2) << 38;
      }

      else
      {
        v8 = v13[--v5];
        if (v8)
        {
          v9 = (a1 + 32 * v8);
        }

        else
        {
          v9 = &sbfSentinel;
        }

        v10 = *v9;
        result = a3();
        if (result)
        {
          return result;
        }

        v7 = v10 << 12;
      }

      a2 = v7 >> 38;
      v12 = v7 >> 38;
      v6 = v7 >> 38 != 0;
    }

    while (v5 || v12);
  }

  return 0;
}

uint64_t rpc_afk_interface_find_with_timeout(const char *a1, const char *a2, uint64_t a3, _DWORD *a4, _DWORD *a5, double a6)
{
  snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "fwd");
  interface = rpctools_find_interface(__str, "AFKEndpointInterface", a6);
  *a4 = interface;
  if (interface)
  {
    result = 0;
  }

  else
  {
    result = 5;
  }

  if (a5 && interface)
  {
    snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "rev");
    v13 = rpctools_find_interface(__str, "AFKEndpointInterface", a6);
    *a5 = v13;
    if (v13)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t rpctools_find_interface(const char *a1, char *name, double a3)
{
  v5 = IOServiceMatching(name);
  if (v5)
  {
    v6 = v5;
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v5);
    CFRelease(v6);
    if (MutableCopy)
    {
      v8 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(MutableCopy, @"IONameMatch", v8);
      }

      else
      {
        v9 = MutableCopy;
        MutableCopy = 0;
      }

      CFRelease(v9);
    }
  }

  else
  {
    MutableCopy = 0;
  }

  *notification = 0;
  Current = CFRunLoopGetCurrent();
  v11 = IONotificationPortCreate(kIOMainPortDefault);
  if (v11)
  {
    v12 = v11;
    RunLoopSource = IONotificationPortGetRunLoopSource(v11);
    if (RunLoopSource)
    {
      v14 = RunLoopSource;
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
      if (IOServiceAddMatchingNotification(v12, "IOServiceFirstMatch", MutableCopy, sub_1000FE218, notification, &notification[1]))
      {
        v15 = 0;
        notification[0] = 0;
      }

      else
      {
        v16 = IOIteratorNext(notification[1]);
        v15 = 0;
        notification[0] = v16;
        if (a3 != 0.0 && !v16)
        {
          if (a3 >= 0.0)
          {
            v17 = CFAbsoluteTimeGetCurrent();
            v15 = CFRunLoopTimerCreate(kCFAllocatorDefault, v17 + a3, 0.0, 0, 0, sub_1000FE268, 0);
            CFRunLoopAddTimer(Current, v15, kCFRunLoopDefaultMode);
          }

          else
          {
            v15 = 0;
          }

          CFRunLoopRun();
        }
      }

      CFRunLoopRemoveSource(Current, v14, kCFRunLoopDefaultMode);
      if (notification[1])
      {
        IOObjectRelease(notification[1]);
      }

      IONotificationPortDestroy(v12);
      if (v15)
      {
        CFRunLoopRemoveTimer(Current, v15, kCFRunLoopDefaultMode);
        CFRunLoopTimerInvalidate(v15);
        CFRelease(v15);
      }
    }

    else
    {
      IONotificationPortDestroy(v12);
    }
  }

  return notification[0];
}

void sub_1000FE218(io_object_t *a1, io_iterator_t iterator)
{
  v3 = IOIteratorNext(iterator);
  if (v3)
  {
    *a1 = v3;
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

void sub_1000FE268()
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

char *rpc_get_matching_server(const char *a1)
{
  v5 = 0;
  v1 = sub_1000FE300(0, a1, &v5);
  v2 = v5;
  if (v1 || !*v5)
  {
    v3 = 0;
  }

  else
  {
    v3 = strdup(*v5);
  }

  sub_1000FE430(v2);
  return v3;
}

uint64_t sub_1000FE300(const char *a1, const char *a2, void ***a3)
{
  v13 = 0;
  if (pthread_mutex_lock(&stru_1001BF5B8))
  {
    v6 = 0;
    v7 = 6;
  }

  else
  {
    v8 = qword_1001C0340;
    if (qword_1001C0340)
    {
      v9 = 0;
      do
      {
        v9 += sub_1000FE840(v8, a1, a2);
        v8 = *(v8 + 224);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v7 = sub_1000FE7D8(8 * v9 + 8, &v13);
    v6 = v13;
    if (v7)
    {
LABEL_9:
      sub_1000FE430(v6);
      v6 = 0;
    }

    else
    {
      v7 = qword_1001C0340;
      if (qword_1001C0340)
      {
        v11 = 0;
        do
        {
          if (v11 >= v9)
          {
            v7 = 3;
            goto LABEL_9;
          }

          if (sub_1000FE840(v7, a1, a2))
          {
            v12 = strdup(v7);
            if (!v12)
            {
              v7 = 4;
              goto LABEL_9;
            }

            v6[v11++] = v12;
          }

          v7 = *(v7 + 224);
        }

        while (v7);
      }
    }

    pthread_mutex_unlock(&stru_1001BF5B8);
  }

  *a3 = v6;
  return v7;
}

void sub_1000FE430(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = 1;
      do
      {
        free(v2);
        v2 = a1[v3++];
      }

      while (v2);
    }

    free(a1);
  }
}

void **rpc_get_all_matching_servers(const char *a1)
{
  v2 = 0;
  sub_1000FE300(0, a1, &v2);
  return v2;
}

char *rpc_get_server_by_name(const char *a1)
{
  v7 = 0;
  v2 = sub_1000FE300(a1, 0, &v7);
  v3 = 0;
  v4 = v7;
  if (!v2)
  {
    v5 = *v7;
    if (!*v7)
    {
      v5 = a1;
    }

    v3 = strdup(v5);
  }

  sub_1000FE430(v4);
  return v3;
}

void rpc_release_server(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t rpc_interface_open_with_timeout(const char *a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double a6)
{
  if (!pthread_mutex_lock(&stru_1001BF5B8))
  {
    v13 = qword_1001C0340;
    if (!qword_1001C0340)
    {
      goto LABEL_7;
    }

    while (strcmp(v13, a1) || strcmp((v13 + 128), a2))
    {
      v13 = *(v13 + 224);
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v12 = (*(v13 + 192))(*(v13 + 200), a3, a4, a5);
    if (v12 == 5)
    {
LABEL_7:
      v17 = 0;
      if (a5)
      {
        v14 = &v17;
      }

      else
      {
        v14 = 0;
      }

      v15 = rpc_afk_interface_find_with_timeout(a1, a2, a3, &v17 + 1, v14, a6);
      if (v15)
      {
        return v15;
      }

      *a4 = tb_endpoint_create_with_data();
      if (a5)
      {
        *a5 = tb_endpoint_create_with_data();
      }

      v12 = 0;
    }

    pthread_mutex_unlock(&stru_1001BF5B8);
    return v12;
  }

  return 6;
}

uint64_t rpc_register_static_route(const char *a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (strlen(a1) > 0x3F || strlen(a2) > 0x3F || strlen(a3) > 0x3F)
  {
    return 3;
  }

  v10 = malloc_type_malloc(0xE8uLL, 0xF83BD267uLL);
  if (!v10)
  {
    return 4;
  }

  v11 = v10;
  v10[28] = 0;
  *(v10 + 12) = 0u;
  *(v10 + 13) = 0u;
  *(v10 + 10) = 0u;
  *(v10 + 11) = 0u;
  *(v10 + 9) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 8) = 0u;
  *(v10 + 4) = 0u;
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  v11[24] = a4;
  v11[25] = a5;
  if (pthread_mutex_lock(&stru_1001BF5B8))
  {
    free(v11);
    return 6;
  }

  else
  {
    v11[28] = qword_1001C0340;
    qword_1001C0340 = v11;
    pthread_mutex_unlock(&stru_1001BF5B8);
    return 0;
  }
}

uint64_t sub_1000FE7D8(size_t a1, void *a2)
{
  v4 = malloc_type_malloc(a1, 0xF83BD267uLL);
  *a2 = v4;
  if (!v4)
  {
    return 4;
  }

  bzero(v4, a1);
  return 0;
}

void rpc_free(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_1000FE840(char *__s1, const char *a2, const char *a3)
{
  if (!a2)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v6 | v5;
  }

  v5 = strcmp(__s1, a2) == 0;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = strcmp(__s1 + 64, a3) == 0;
  return v6 | v5;
}

uint64_t X509PolicySetFlagsForCommonNames(uint64_t a1)
{
  v2 = (a1 + 104);
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  result = X509CertificateSubjectNameGetCommonName(v2, v5);
  if (!result)
  {
    result = compare_octet_string(&iPhoneCAName, v5);
    if (result)
    {
      result = compare_octet_string(&CodeSigningCAName, v5);
      if (result)
      {
        result = compare_octet_string_partial(&MFi4AccessoryCAName, v5);
        if (result)
        {
          result = compare_octet_string_partial(&MFi4AttestationCAName, v5);
          if (result)
          {
            result = compare_octet_string_partial(&MFi4ProvisioningCAName, v5);
            if (result)
            {
              return result;
            }

            v4 = 0x1000000000;
          }

          else
          {
            v4 = 0x800000000;
          }
        }

        else
        {
          v4 = 0x400000000;
        }
      }

      else
      {
        v4 = 0x800000000008;
      }
    }

    else
    {
      v4 = 3840;
    }

    *(a1 + 240) |= v4;
  }

  return result;
}

double X509PolicySetFlagsForMFI(uint64_t a1)
{
  v2 = (a1 + 104);
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  if (!X509CertificateSubjectNameGetCommonName(v2, v8))
  {
    if (compare_octet_string_partial(&MFICommonNamePrefix, v8))
    {
      goto LABEL_4;
    }

    v7 = 0;
    X509CertificateGetNotBefore(a1, &v7);
    if (!v4)
    {
      memset(&v6, 0, sizeof(v6));
      strptime("2006-05-31", "%F", &v6);
      v5 = timegm(&v6);
      result = difftime(v5, v7);
      if (result < 0.0)
      {
        *(a1 + 240) |= 0x8000000uLL;
LABEL_4:
        if (!compare_octet_string_partial(&MFi4ProvisioningHostNamePrefix, v8))
        {
          *(a1 + 240) |= 0x1000000000uLL;
        }
      }
    }
  }

  return result;
}

uint64_t X509PolicySetFlagsForRoots(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 16) == 1)
  {
    v4 = numAppleProdRoots;
    if (numAppleProdRoots)
    {
      if (a2 + 88 <= (a2 + 104))
      {
        v5 = AppleRootSPKIs;
        while (1)
        {
          v6 = v5 + 1;
          v7 = v5 < AppleRootSPKIs || v6 > dword_10018EB48;
          if (v7 || v5 >= v6)
          {
            break;
          }

          result = compare_octet_string(a2 + 88, *v5);
          if (!result)
          {
            *(a2 + 240) |= 0xD8E30653FFF8uLL;
            goto LABEL_17;
          }

          ++v5;
          if (!--v4)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_50;
    }
  }

LABEL_17:
  v9 = *(v3 + 8);
  if ((v9 & 0x1000000) != 0)
  {
    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &UcrtRootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1000000;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v9 & 0x1C00000000) == 0)
    {
      goto LABEL_28;
    }

    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &MFi4RootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1C00000000;
LABEL_27:
      *(a2 + 240) = v10;
      goto LABEL_28;
    }
  }

  if (*(v3 + 17) == 1)
  {
    result = sub_1000FED10(v3, a2);
  }

LABEL_28:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1 && numAppleProdRoots < numAppleRoots)
  {
    if (a2 + 88 <= (a2 + 104))
    {
      v11 = &AppleRootSPKIs[numAppleProdRoots];
      v12 = numAppleRoots - numAppleProdRoots;
      while (1)
      {
        v13 = v11 + 1;
        v14 = v11 < AppleRootSPKIs || v13 > dword_10018EB48;
        if (v14 || v11 >= v13)
        {
          break;
        }

        result = compare_octet_string(a2 + 88, *v11);
        if (!result)
        {
          *(a2 + 240) |= 0xD8E30653FFF8uLL;
          goto LABEL_44;
        }

        ++v11;
        if (!--v12)
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_50;
  }

LABEL_44:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1)
  {
    result = a2 + 88;
    if (a2 + 88 <= (a2 + 104))
    {
      result = compare_octet_string(result, &TestAppleRootECCSPKI);
      if (!result)
      {
        *(a2 + 240) |= 0x6400000uLL;
      }

      return result;
    }

LABEL_50:
    __break(0x5519u);
  }

  return result;
}

uint64_t sub_1000FED10(void *a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  if (a2 + 88 > (a2 + 104))
  {
    __break(0x5519u);
  }

  result = X509CertificateParseSPKI((a2 + 88), v6, 0, v5);
  if (!result)
  {
    result = compare_octet_string(a1[4], v6);
    if (!result)
    {
      result = compare_octet_string(a1[3], v5);
      if (!result)
      {
        *(a2 + 240) |= a1[1];
      }
    }
  }

  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

int *find_digest(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = &dword_10018EB48[v2 / 4 + 2];
    if (result > &dword_10018EB48[v2 / 4 + 6])
    {
      __break(0x5519u);
      goto LABEL_9;
    }

    result = compare_octet_string_raw(result, *a1, *(a1 + 8));
    if (!result)
    {
      break;
    }

    v2 += 32;
    if (v2 == 160)
    {
      return 0;
    }
  }

  if (v2 <= ~dword_10018EB48)
  {
    return &dword_10018EB48[v2 / 4];
  }

LABEL_9:
  __break(0x5513u);
  return result;
}

int *find_digest_by_type(int *result)
{
  v1 = 0;
  while (dword_10018EB48[v1 / 4] != result)
  {
    v1 += 32;
    if (v1 == 160)
    {
      return 0;
    }
  }

  if (v1 <= ~dword_10018EB48)
  {
    return &dword_10018EB48[v1 / 4];
  }

  __break(0x5513u);
  return result;
}

uint64_t find_digestOID_for_signingOID(uint64_t a1, void *a2)
{
  if (!compare_octet_string_raw(a1, &sha1WithRSA_oid, 9uLL) || !compare_octet_string_raw(a1, &sha1WithECDSA_oid, 7uLL))
  {
    v6 = &CTOidSha1;
    v4 = 5;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha256WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha256;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha256WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha256;
LABEL_18:
    v4 = 9;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha384WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha384WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_18;
  }

  v4 = 9;
  if (compare_octet_string_raw(a1, &sha512WithRSA_oid, 9uLL))
  {
    if (compare_octet_string_raw(a1, &sha512WithECDSA_oid, 8uLL))
    {
      return 0;
    }

    v6 = &CTOidSha512;
    goto LABEL_18;
  }

  v6 = &CTOidSha512;
LABEL_11:
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

void validateSignatureRSA(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = 0;
  if (!a1 || !a2 || !a3 || !a4 || !a5)
  {
    return;
  }

  if (a5 + 7 > a5 + 9)
  {
    goto LABEL_32;
  }

  if (compare_octet_string(&rsaEncryption, (a5 + 7)) && !sub_1000FF2B8(&off_10018EC38, (a5 + 3), (a5 + 7)))
  {
    return;
  }

  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v9 = a5[9];
  v8 = a5[10];
  if (__CFADD__(v9, v8))
  {
    goto LABEL_33;
  }

  if (v9 > v9 + v8)
  {
    goto LABEL_32;
  }

  v22 = a5[9];
  v23 = v9 + v8;
  if (v8 && !ccder_blob_check_null(&v22))
  {
    return;
  }

  if (__CFADD__(a1, a2))
  {
    goto LABEL_33;
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_32;
  }

  v10 = ccder_decode_rsa_pub_n();
  if (!v10)
  {
    return;
  }

  v11 = v10;
  if (v10 >> 58)
  {
LABEL_34:
    __break(0x550Cu);
    return;
  }

  v12 = v10 << 6;
  if (v10 << 6 < 0x400)
  {
    return;
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = -21846;
  v25 = 6;
  if (&vars0 == 82 || (v13 = a5[4], LOBYTE(v26) = v13, &v25 > 0xFFFFFFFFFFFFFFFDLL))
  {
LABEL_33:
    __break(0x5513u);
    goto LABEL_34;
  }

  if (v13 >= 0xA)
  {
    goto LABEL_32;
  }

  v14 = __memcpy_chk();
  if (v14 > v14 + v13)
  {
    goto LABEL_32;
  }

  if (v12 > 0x1068)
  {
    return;
  }

  __chkstk_darwin(v14);
  v17 = (&v21 - 4 * v16);
  v18 = 0;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  do
  {
    v20 = &v17[v18 / 8];
    *v20 = v19;
    *(v20 + 1) = v19;
    v18 += 32;
  }

  while ((v15 & 0x7FFFFFFFFFFFFFE0) != v18);
  if (v17 + 4 > &v21 || v17 > v17 + 4)
  {
LABEL_32:
    __break(0x5519u);
    goto LABEL_33;
  }

  *v17 = v11;
  if (!ccrsa_import_pub())
  {
    if (ccrsa_verify_pkcs1v15_allowshortsigs())
    {
      v24 = 0;
    }
  }
}

unint64_t sub_1000FF2B8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 1;
  while (v5 < v5 + 16)
  {
    result = compare_octet_string(v5, a2);
    if (result)
    {
      goto LABEL_11;
    }

    if (v5 + 16 > v5 + 32)
    {
      break;
    }

    result = compare_octet_string(v5 + 16, a3);
    if (result)
    {
LABEL_11:
      v7 = v6 < 3;
      v5 += 32;
      if (++v6 != 4)
      {
        continue;
      }
    }

    return v7;
  }

  __break(0x5519u);
  return result;
}

_UNKNOWN **oidForPubKeyLength()
{
  v0 = ccec_x963_import_pub_size();
  is_supported = ccec_keysize_is_supported();
  v2 = &CTOidSECP256r1;
  v3 = &CTOidSECP521r1;
  v4 = &CTOidSECP384r1;
  if (v0 != 384)
  {
    v4 = 0;
  }

  if (v0 != 521)
  {
    v3 = v4;
  }

  if (v0 != 256)
  {
    v2 = v3;
  }

  if (is_supported)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t *validateSignatureEC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v18 = 0;
  if (!result)
  {
    return (v5 & 1);
  }

  if (!a2)
  {
    return (v5 & 1);
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    return (v5 & 1);
  }

  v7 = a5 + 72;
  if (a5 + 56 > (a5 + 72))
  {
    goto LABEL_32;
  }

  result = compare_octet_string(&ecPublicKey, a5 + 56);
  if (result)
  {
    result = sub_1000FF2B8(&off_10018ECB8, a5 + 24, a5 + 56);
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (v7 > a5 + 88)
  {
    goto LABEL_32;
  }

  result = sub_1000FF5F8((a5 + 72));
  if (!result)
  {
LABEL_27:
    v5 = 0;
    return (v5 & 1);
  }

  if (result >= result + 4)
  {
    goto LABEL_32;
  }

  v8 = *result;
  if (*result >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    goto LABEL_33;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_34;
  }

  result = __chkstk_darwin(result);
  v14 = &v17[-16 * v13];
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 < 0x10)
  {
    goto LABEL_35;
  }

  *v14 = result;
  if (v14 + 2 > v17 || v14 > v14 + 2)
  {
LABEL_32:
    __break(0x5519u);
LABEL_33:
    __break(0x550Cu);
LABEL_34:
    __break(0x5500u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (ccec_import_pub())
  {
    goto LABEL_30;
  }

  result = ccec_x963_import_pub_size();
  if (result != 256 || *(a5 + 96) != 64)
  {
    if (ccec_verify())
    {
LABEL_29:
      v18 = 0;
    }

LABEL_30:
    v5 = v18;
    return (v5 & 1);
  }

  if (*(a5 + 88) < 0xFFFFFFFFFFFFFFE0)
  {
    if (!ccec_verify_composite())
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000FF5F8(int **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 != 7)
  {
    if (v1 == 10 && **a1 == 0x33DCE48862A0806 && *(*a1 + 4) == 1793)
    {
      return _ccec_cp_256();
    }

    return 0;
  }

  v3 = *a1;
  if (**a1 == -2127887098 && *(*a1 + 3) == 570426497)
  {
    return _ccec_cp_384();
  }

  v5 = *v3;
  v6 = *(v3 + 3);
  if (v5 != -2127887098 || v6 != 587203713)
  {
    return 0;
  }

  return _ccec_cp_521();
}

uint64_t compressECPublicKey(void *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000FF5F8(a2);
  if (!v6)
  {
    return 655366;
  }

  v7 = v6;
  if (v6 >= v6 + 4)
  {
    goto LABEL_20;
  }

  v8 = *v6;
  if (*v6 >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    goto LABEL_21;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_22:
    __break(0x5500u);
  }

  result = __chkstk_darwin(v6);
  v15 = &v18 - 2 * v14;
  v16 = 0;
  do
  {
    v17 = &v15[v16 / 8];
    *v17 = 0xAAAAAAAAAAAAAAAALL;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 += 16;
  }

  while ((v13 & 0xFFFFFFFFFFFFFFF0) != v16);
  if (v13 < 0x10)
  {
    __break(1u);
    return result;
  }

  *v15 = v7;
  if (v15 + 2 > &v18 || v15 > v15 + 2)
  {
LABEL_20:
    __break(0x5519u);
LABEL_21:
    __break(0x550Cu);
    goto LABEL_22;
  }

  result = ccec_import_pub();
  if (!result)
  {
    if (ccec_compressed_x962_export_pub_size() == a4)
    {
      if (!a3 || a4)
      {
        return ccec_compressed_x962_export_pub();
      }

      goto LABEL_20;
    }

    return 393220;
  }

  return result;
}

uint64_t decompressECPublicKey(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000FF5F8(a2);
  if (!v6)
  {
    return 655366;
  }

  if (v6 >= v6 + 4)
  {
LABEL_23:
    __break(0x5519u);
    goto LABEL_24;
  }

  v7 = *v6;
  if (*v6 >> 61 || !is_mul_ok(8 * v7, 3uLL))
  {
LABEL_25:
    __break(0x550Cu);
  }

  v8 = 24 * v7;
  v9 = __CFADD__(v8, 16);
  v10 = v8 + 16;
  if (v9 || v10 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_24;
  }

  result = __chkstk_darwin(v6);
  v14 = &v19 - 2 * v13;
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 >= 0x10)
  {
    *v14 = result;
    if (v14 + 2 <= &v19 && v14 <= v14 + 2)
    {
      v17 = ccec_compressed_x962_import_pub();
      if (!v17)
      {
        v18 = cczp_bitlen();
        if (v18 < 0xFFFFFFFFFFFFFFF9)
        {
          if (!a3 || a4)
          {
            if ((((v18 + 7) >> 2) | 1) == a4)
            {
              v17 = 0;
            }

            else
            {
              v17 = 393220;
            }

            ccec_export_pub();
            return v17;
          }

          goto LABEL_23;
        }

LABEL_24:
        __break(0x5500u);
        goto LABEL_25;
      }

      return v17;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t CMSParseContentInfoSignedDataWithOptions(char *a1, uint64_t a2, unint64_t *a3, char a4)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_110;
  }

  if (&a1[a2] < a1)
  {
    goto LABEL_108;
  }

  v4 = 65537;
  v27 = a1;
  v28 = &a1[a2];
  v26 = 0;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v7 = sub_100100070(&v27, 0x2000000000000010, &v26 + 1, &v25);
  result = 65537;
  if (v7)
  {
    v23 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v27, v25))
    {
      goto LABEL_110;
    }

    if (v27 > &v27[v25] || &v27[v25] > v28)
    {
      goto LABEL_108;
    }

    v23 = v27;
    v24 = &v27[v25];
    if (ccder_blob_decode_tl())
    {
      if (v24 < v23 || v25 > v24 - v23)
      {
        goto LABEL_108;
      }

      if (compare_octet_string_raw(&off_10018ED38, v23, v25))
      {
        return 65539;
      }

      if (__CFADD__(v23, v25))
      {
        goto LABEL_110;
      }

      if (v23 > &v23[v25] || &v23[v25] > v24)
      {
        goto LABEL_108;
      }

      v23 += v25;
      if (!sub_100100070(&v23, 0xA000000000000000, &v26, &v25))
      {
        return 65540;
      }

      v21 = 0xAAAAAAAAAAAAAAAALL;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      if (__CFADD__(v23, v25))
      {
        goto LABEL_110;
      }

      if (v23 > &v23[v25] || &v23[v25] > v24)
      {
        goto LABEL_108;
      }

      v21 = v23;
      v22 = &v23[v25];
      v30 = 0;
      memset(v29, 170, sizeof(v29));
      if ((sub_100100070(&v21, 0x2000000000000010, &v30 + 1, v29) & 1) == 0)
      {
        return 131073;
      }

      if (__CFADD__(v21, v29[0]))
      {
        goto LABEL_110;
      }

      v9 = 131080;
      if (&v21[v29[0]] != v22)
      {
        return 131082;
      }

      if (!ccder_blob_decode_uint64())
      {
        return 131074;
      }

      v10 = a3[11];
      result = 131092;
      if (v10 <= 4 && ((1 << v10) & 0x1A) != 0)
      {
        if (!sub_100101D28(&v21, 0x2000000000000011, 0, 125))
        {
          return 131075;
        }

        v34 = 0;
        v33 = 0;
        if ((sub_100100070(&v21, 0x2000000000000010, &v34, &v33) & 1) == 0)
        {
          return 131076;
        }

        v31 = 0xAAAAAAAAAAAAAAAALL;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        if (__CFADD__(v21, v33))
        {
          goto LABEL_110;
        }

        if (v21 > &v21[v33] || &v21[v33] > v22)
        {
          goto LABEL_108;
        }

        v31 = v21;
        v32 = &v21[v33];
        if (!ccder_blob_decode_tl())
        {
          return 131077;
        }

        if (v32 < v31 || v33 > v32 - v31)
        {
          goto LABEL_108;
        }

        if (compare_octet_string_raw(&off_10018ED48, v31, v33))
        {
          return 131078;
        }

        if (__CFADD__(v31, v33))
        {
          goto LABEL_110;
        }

        v11 = &v31[v33];
        if (v31 > &v31[v33] || v11 > v32)
        {
          goto LABEL_108;
        }

        v31 += v33;
        v12 = v34;
        if (v11 != v32 || (v34 & 1) != 0)
        {
          v39 = 0;
          v37 = v32;
          v38 = 0;
          v36 = v11;
          if (sub_100100070(&v36, 0xA000000000000000, &v39, &v38))
          {
            if ((v12 & 1) == 0)
            {
              if (__CFADD__(v36, v38))
              {
                goto LABEL_110;
              }

              if (&v36[v38] != v32)
              {
                return v9;
              }
            }

            if (v36 > v37)
            {
              goto LABEL_108;
            }

            v31 = v36;
            v32 = v37;
            v35 = 0;
            v15 = v39;
            if (v39 == 1 && !sub_100100070(&v31, 0x2000000000000004, &v35, &v38))
            {
              return 131079;
            }

            v40 = 0;
            if (!ccder_blob_decode_tl())
            {
              return 131090;
            }

            v16 = v31;
            v17 = v32;
            if (v32 < v31)
            {
              goto LABEL_108;
            }

            v18 = v40;
            if (v40 > v32 - v31)
            {
              goto LABEL_108;
            }

            a3[9] = v31;
            a3[10] = v18;
            if (__CFADD__(v16, v18))
            {
LABEL_110:
              __break(0x5513u);
              return 0;
            }

            v19 = &v16[v18];
            if (v19 > v17 || v16 > v19)
            {
              goto LABEL_108;
            }

            v31 = v19;
            if ((sub_100100110(&v31, v35) & 1) == 0)
            {
              return 131089;
            }
          }

          else
          {
            if (!v12)
            {
              return v9;
            }

            v15 = v39;
          }

          if ((sub_100100110(&v31, v15 & 1) & 1) == 0)
          {
            return 131088;
          }

          v11 = v31;
        }

        if (v11 > v22 || v21 > v11)
        {
          goto LABEL_108;
        }

        v21 = v11;
        if ((sub_100100110(&v21, v12) & 1) == 0)
        {
          return 131081;
        }

        v36 = 0xAAAAAAAAAAAAAAAALL;
        v37 = 0xAAAAAAAAAAAAAAAALL;
        if (v21 > v22)
        {
          goto LABEL_108;
        }

        v36 = v21;
        v37 = v22;
        if ((sub_100100070(&v36, 0xA000000000000000, &v30, v29) & 1) == 0)
        {
          v13 = v21;
          v14 = v22;
          goto LABEL_85;
        }

        v31 = 0xAAAAAAAAAAAAAAAALL;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        if (!__CFADD__(v36, v29[0]))
        {
          if (v36 > &v36[v29[0]] || &v36[v29[0]] > v37)
          {
            goto LABEL_108;
          }

          v31 = v36;
          v32 = &v36[v29[0]];
          if (!sub_100101A58(&v31, a3[1], *a3, a3 + 3, a3 + 2))
          {
            return 131085;
          }

          if (!sub_100100110(&v31, v30))
          {
            return 131086;
          }

          v13 = v31;
          if (v31 >= v36 != v31 - v36 < 0)
          {
            if (v36 > v31)
            {
              goto LABEL_108;
            }

            v14 = v37;
            if (v31 > v37)
            {
              goto LABEL_108;
            }

            v21 = v31;
            v22 = v37;
LABEL_85:
            if (v13 <= v14)
            {
              v36 = v13;
              v37 = v14;
              if (sub_100101D28(&v36, 0xA000000000000001, 0, 125))
              {
                if (v36 > v37)
                {
                  goto LABEL_108;
                }

                v21 = v36;
                v22 = v37;
              }

              if (!sub_100101D28(&v21, 0x2000000000000011, &v29[1], 125))
              {
                return 131083;
              }

              if (v29[2] >= v29[1])
              {
                v20 = &v21[-v29[1]];
                if (&v21[-v29[1]] <= v29[2] - v29[1])
                {
                  a3[5] = v29[1];
                  a3[6] = v20;
                  if ((sub_100100110(&v21, HIBYTE(v30)) & 1) == 0)
                  {
                    return 131084;
                  }

                  if (!sub_100100110(&v21, v26))
                  {
                    return 65541;
                  }

                  if (v21 <= v24 && v23 <= v21)
                  {
                    v23 = v21;
                    if (sub_100100110(&v23, HIBYTE(v26)))
                    {
                      if ((a4 & 1) == 0 && v23 != v28)
                      {
                        return 65543;
                      }

                      return 0;
                    }

                    return (v4 + 5);
                  }
                }
              }
            }

LABEL_108:
            __break(0x5519u);
            return (v4 + 5);
          }
        }

        goto LABEL_110;
      }
    }

    else
    {
      return 65538;
    }
  }

  return result;
}

uint64_t sub_100100070(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8)
  {
    if (a2 == 0xAAAAAAAAAAAAAAAALL)
    {
      return sub_100101894(a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_100100110(unint64_t *a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return result;
  }

  v4 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_12:
    __break(0x5519u);
    return result;
  }

  v5 = v4 - 0x5555555555555556;
  if (v4 > v4 - 0x5555555555555556 || v5 > a1[1])
  {
    goto LABEL_12;
  }

  *a1 = v5;
  return 1;
}

uint64_t CMSParseSignerInfos(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __int128 *))
{
  v81 = 0xAAAAAAAAAAAAAAAALL;
  v82 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (__CFADD__(v4, v3))
  {
    goto LABEL_94;
  }

  if (v4 > v4 + v3)
  {
    goto LABEL_93;
  }

  v81 = *(a1 + 40);
  v82 = v4 + v3;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  if (v4 >= v4 + v3)
  {
    v48 = 0;
    result = 0;
    if (v3)
    {
      return (v48 << 8) + 196616;
    }

    return result;
  }

  v8 = 0;
  v59 = 0;
  v9 = 196871;
  v10 = 256;
  do
  {
    v68 = 0;
    v79 = 0u;
    v80 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    DWORD2(v80) = 327681;
    LOBYTE(v79) = v8 + 1;
    if ((sub_100100070(&v81, 0x2000000000000010, &v68, &v69) & 1) == 0)
    {
      return (v9 - 6);
    }

    v66 = 0xAAAAAAAAAAAAAAAALL;
    v67 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v81, v69))
    {
      goto LABEL_94;
    }

    if (v81 > v81 + v69 || v81 + v69 > v82)
    {
      goto LABEL_93;
    }

    v66 = v81;
    v67 = v81 + v69;
    if ((ccder_blob_decode_uint64() & 1) == 0)
    {
      return (v9 - 5);
    }

    v11 = v66;
    v12 = v67;
    v64 = 0xAAAAAAAAAAAAAAAALL;
    v65 = 0xAAAAAAAAAAAAAAAALL;
    if (v66 > v67)
    {
      goto LABEL_93;
    }

    v64 = v66;
    v65 = v67;
    v62 = v66;
    v63 = v67;
    if (ccder_blob_decode_tl())
    {
      v13 = v66;
    }

    else
    {
      if (ccder_blob_decode_tl())
      {
        v13 = v64;
        v14 = v65;
      }

      else
      {
        if (!ccder_blob_decode_tl())
        {
          v58 = 196611;
          return (v58 + v10);
        }

        v13 = v62;
        v14 = v63;
      }

      if (v13 > v14)
      {
        goto LABEL_93;
      }

      v66 = v13;
      v67 = v14;
    }

    if (__CFADD__(v69, v13 - v11))
    {
      goto LABEL_95;
    }

    if (v69 + v13 - v11 > v12 - v11)
    {
      goto LABEL_93;
    }

    *(&v70 + 1) = v11;
    *&v71 = v69 + v13 - v11;
    if (__CFADD__(v13, v69))
    {
      goto LABEL_94;
    }

    if (v13 > v13 + v69 || v13 + v69 > v67)
    {
      goto LABEL_93;
    }

    v66 = v13 + v69;
    if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, &v71 + 1))
    {
      v58 = 196612;
      return (v58 + v10);
    }

    v60 = 0xAAAAAAAAAAAAAAAALL;
    v61 = 0xAAAAAAAAAAAAAAAALL;
    if (v66 > v67)
    {
      goto LABEL_93;
    }

    v60 = v66;
    v61 = v67;
    if (ccder_blob_decode_tl())
    {
      if (v61 < v60 || v69 > v61 - v60)
      {
        goto LABEL_93;
      }

      *(&v72 + 1) = v60;
      *&v73 = v69;
      if (__CFADD__(v60, v69))
      {
        goto LABEL_94;
      }

      if (v60 + v69 > v61 || v60 > v60 + v69)
      {
        goto LABEL_93;
      }

      v66 = v60 + v69;
      v67 = v61;
    }

    else
    {
      *(&v72 + 1) = 0;
      *&v73 = 0;
    }

    if ((ccder_blob_decode_AlgorithmIdentifierNULL(&v66, &v73 + 1) & 1) == 0)
    {
      return (v9 - 2);
    }

    if ((ccder_blob_decode_tl() & 1) == 0)
    {
      return (v9 - 1);
    }

    if (v67 < v66 || v69 > v67 - v66)
    {
      goto LABEL_93;
    }

    *(&v75 + 1) = v66;
    *&v76 = v69;
    if (__CFADD__(v66, v69))
    {
      goto LABEL_94;
    }

    v15 = v66 + v69;
    if (v66 + v69 > v67 || v66 > v15)
    {
      goto LABEL_93;
    }

    v66 += v69;
    v60 = v15;
    v61 = v67;
    if (sub_100101D28(&v60, 0xA000000000000001, 0, 125))
    {
      if (v60 > v61)
      {
        goto LABEL_93;
      }

      v66 = v60;
      v67 = v61;
    }

    if (!sub_100100110(&v66, v68))
    {
      return v9;
    }

    digest = find_digest(&v71 + 8);
    if (digest)
    {
      v17 = digest;
      v18 = *(a1 + 96);
      if (!v18 || *digest <= v18)
      {
        result = a3(a2, a1, &v70);
        if (result != 327710)
        {
          if (result)
          {
            return result;
          }

          v20 = *(a1 + 64);
          if (v20 <= v59)
          {
            if (v20)
            {
              v32 = *(a1 + 56);
              v33 = 176 * v59 - 176;
              if (__CFADD__(v32, v33))
              {
                goto LABEL_94;
              }

              v34 = v32 + v33;
              if (v32 + v33 < v32 || v34 + 176 > v32 + 176 * v20 || v34 > v34 + 176 || v34 + 24 > v34 + 40)
              {
                goto LABEL_93;
              }

              v35 = find_digest(v34 + 24);
              if (v35)
              {
                if (*v17 > *v35)
                {
                  v36 = *(a1 + 96);
                  if (!v36 || *v17 <= v36)
                  {
                    v37 = *(a1 + 56);
                    if (__CFADD__(v37, v33))
                    {
                      goto LABEL_94;
                    }

                    v38 = 176 * *(a1 + 64);
                    if ((v38 - v33) < 0xB0)
                    {
                      goto LABEL_93;
                    }

                    v39 = (v37 + v33);
                    if (v37 + v33 > v37 + v38)
                    {
                      goto LABEL_93;
                    }

                    if (v37 > v39)
                    {
                      goto LABEL_93;
                    }

                    v40 = v70;
                    v41 = v72;
                    v39[1] = v71;
                    v39[2] = v41;
                    *v39 = v40;
                    v42 = v73;
                    v43 = v74;
                    v44 = v76;
                    v39[5] = v75;
                    v39[6] = v44;
                    v39[3] = v42;
                    v39[4] = v43;
                    v45 = v77;
                    v46 = v78;
                    v47 = v80;
                    v39[9] = v79;
                    v39[10] = v47;
                    v39[7] = v45;
                    v39[8] = v46;
                    if (v39 >= v39 + 11)
                    {
                      goto LABEL_93;
                    }
                  }
                }
              }
            }
          }

          else
          {
            v21 = *(a1 + 96);
            if (!v21 || *v17 <= v21)
            {
              v22 = *(a1 + 56);
              if (__CFADD__(v22, 176 * v59))
              {
                goto LABEL_94;
              }

              if (176 * (v20 - v59) < 0xB0)
              {
                goto LABEL_93;
              }

              v23 = (v22 + 176 * v59);
              v24 = v70;
              v25 = v72;
              v23[1] = v71;
              v23[2] = v25;
              *v23 = v24;
              v26 = v73;
              v27 = v74;
              v28 = v76;
              v23[5] = v75;
              v23[6] = v28;
              v23[3] = v26;
              v23[4] = v27;
              v29 = v77;
              v30 = v78;
              v31 = v80;
              v23[9] = v79;
              v23[10] = v31;
              v23[7] = v29;
              v23[8] = v30;
              if (v23 >= v23 + 11)
              {
                goto LABEL_93;
              }

              if (v59 == 0xFF)
              {
                __break(0x5507u);
                return result;
              }

              ++v59;
            }
          }
        }
      }
    }

    if (v66 > v82 || v81 > v66)
    {
      goto LABEL_93;
    }

    v81 = v66;
    v48 = v8 + 1;
    if (v8 > 6)
    {
      break;
    }

    v10 += 256;
    v9 = (v9 + 256);
    ++v8;
  }

  while (v66 < v82);
  if (v66 == v82)
  {
    if (v59)
    {
      return 0;
    }

    if (!*(a1 + 64))
    {
      return 0;
    }

    v49 = *(a1 + 56);
    v50 = v70;
    v51 = v72;
    v49[1] = v71;
    v49[2] = v51;
    *v49 = v50;
    v52 = v73;
    v53 = v74;
    v54 = v76;
    v49[5] = v75;
    v49[6] = v54;
    v49[3] = v52;
    v49[4] = v53;
    v55 = v77;
    v56 = v78;
    v57 = v80;
    v49[9] = v79;
    v49[10] = v57;
    v49[7] = v55;
    v49[8] = v56;
    if (v49 < v49 + 11)
    {
      return 0;
    }

LABEL_93:
    __break(0x5519u);
LABEL_94:
    __break(0x5513u);
LABEL_95:
    __break(0x5500u);
  }

  return (v48 << 8) + 196616;
}

uint64_t CMSBuildPath(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v3 = a3[1];
  v4 = a3[2];
  if (__CFADD__(v3, v4))
  {
LABEL_55:
    __break(0x5513u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_54;
  }

  v19 = a3[1];
  v20 = v5;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (*a3 == 3)
  {
    if (*(a2 + 88) == 1)
    {
      return 524298;
    }

    v17[2] = 0xAAAAAAAAAAAAAAAALL;
    v17[3] = 0xAAAAAAAAAAAAAAAALL;
    v17[0] = v3;
    v17[1] = v5;
    if (ccder_blob_decode_tl())
    {
      v11 = v19;
      v12 = v20;
    }

    else
    {
      if (!ccder_blob_decode_tl() || !ccder_blob_decode_tl())
      {
        return 524294;
      }

      v11 = v17[0];
      v12 = v17[1];
      if (v17[0] > v17[1])
      {
        goto LABEL_54;
      }

      v19 = v17[0];
      v20 = v17[1];
    }

    if (v12 < v11 || v18 > v12 - v11)
    {
      goto LABEL_54;
    }

    v17[2] = v11;
    v17[3] = v18;
    if (__CFADD__(v11, v18))
    {
      goto LABEL_55;
    }

    if (v11 + v18 > v12 || v11 > v11 + v18)
    {
      goto LABEL_54;
    }

    v19 = v11 + v18;
    CertificateUsingKeyIdentifier = X509ChainGetCertificateUsingKeyIdentifier((a2 + 24), &v17[2]);
    if (!CertificateUsingKeyIdentifier)
    {
      return 524295;
    }

LABEL_38:
    if (v19 != v20)
    {
      return 524543;
    }

    if (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && a2 + 24 <= (a2 + 40))
    {
      v13 = a3 + 19;
      v14 = a3 + 21;
      if (v13 <= v14)
      {
        v15 = X509ChainBuildPath(CertificateUsingKeyIdentifier, (a2 + 24), v13);
        v8 = v15;
        if (*v14 == 327681)
        {
          *v14 = v15;
        }

        return v8;
      }
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

  if (*a3 != 1)
  {
    return 524289;
  }

  v8 = 524290;
  memset(v17, 170, sizeof(v17));
  if (ccder_blob_decode_tl())
  {
    if (ccder_blob_decode_tl())
    {
      if (v20 < v19 || v18 > v20 - v19)
      {
        goto LABEL_54;
      }

      v17[0] = v19;
      v17[1] = v18;
      if (__CFADD__(v19, v18))
      {
        goto LABEL_55;
      }

      if (v19 + v18 > v20 || v19 > v19 + v18)
      {
        goto LABEL_54;
      }

      v19 += v18;
      if (ccder_blob_decode_tl())
      {
        if (v20 < v19 || v18 > v20 - v19)
        {
          goto LABEL_54;
        }

        v17[2] = v19;
        v17[3] = v18;
        if (__CFADD__(v19, v18))
        {
          goto LABEL_55;
        }

        if (v19 + v18 > v20)
        {
          goto LABEL_54;
        }

        if (v19 > v19 + v18)
        {
          goto LABEL_54;
        }

        v19 += v18;
        v9 = (a2 + 24);
        if (a2 + 24 > (a2 + 40))
        {
          goto LABEL_54;
        }

        CertificateUsingKeyIdentifier = *v9;
        if (*v9)
        {
          while (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && CertificateUsingKeyIdentifier + 15 <= CertificateUsingKeyIdentifier + 17)
          {
            if (!compare_octet_string(v17, (CertificateUsingKeyIdentifier + 15)))
            {
              if (CertificateUsingKeyIdentifier + 17 > CertificateUsingKeyIdentifier + 19)
              {
                goto LABEL_54;
              }

              if (!compare_octet_string(&v17[2], (CertificateUsingKeyIdentifier + 17)))
              {
                goto LABEL_38;
              }
            }

            CertificateUsingKeyIdentifier = CertificateUsingKeyIdentifier[34];
            if (!CertificateUsingKeyIdentifier)
            {
              return 524293;
            }
          }

          goto LABEL_54;
        }

        return 524293;
      }

      else
      {
        return 524292;
      }
    }

    else
    {
      return 524291;
    }
  }

  return v8;
}

uint64_t validateSignerInfo(unint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3 + 24;
  v4 = (a3 + 40);
  if (a3 + 24 > (a3 + 40))
  {
    goto LABEL_183;
  }

  digest = find_digest(a3 + 24);
  if (!digest)
  {
    return 327682;
  }

  v9 = (*(digest + 3))();
  v10 = v9;
  memset(v89, 0, sizeof(v89));
  v11 = a2[13];
  v12 = a2[14];
  if (!v11 || !v12)
  {
    if (a2[9] && a2[10])
    {
      v11 = v89;
      v13 = ccdigest();
      v12 = *v10;
      if (*v10 >= 0x41)
      {
        goto LABEL_183;
      }

      goto LABEL_14;
    }

    if (!v11)
    {
      goto LABEL_144;
    }
  }

  if (*v9 != v12)
  {
LABEL_144:
    *(a3 + 168) = 327710;
    return 327710;
  }

  if (v12 >= 0x41)
  {
    goto LABEL_183;
  }

  v13 = __memcpy_chk();
  if (v13 > v13 + v12)
  {
    goto LABEL_183;
  }

LABEL_14:
  v15 = a1 + 16;
  *(a3 + 128) = v11;
  *(a3 + 136) = v12;
  v16 = (a3 + 128);
  v17 = *(a3 + 48);
  if (!v17)
  {
    goto LABEL_157;
  }

  if (v15 < a1)
  {
    goto LABEL_183;
  }

  v74 = a1 + 16;
  v75 = v10;
  v83 = 0xAAAAAAAAAAAAAAAALL;
  v84 = 0xAAAAAAAAAAAAAAAALL;
  v18 = *v4;
  if (__CFADD__(*v4, v17))
  {
    goto LABEL_184;
  }

  v19 = v18 + v17;
  if (v18 > v19)
  {
    goto LABEL_183;
  }

  v83 = *v4;
  v84 = v19;
  v82 = 0xAAAAAAAAAAAAAAAALL;
  if (v18 >= v19)
  {
LABEL_145:
    result = 262156;
    goto LABEL_179;
  }

  v20 = 0;
  v21 = 0x96463F78648862ALL;
  v78 = 0x2000000000000010;
  v73 = 262146;
  v77 = 262147;
  v76 = 262148;
  do
  {
    if (!ccder_blob_decode_tl())
    {
      result = 262145;
      goto LABEL_179;
    }

    if (__CFADD__(v83, v82))
    {
      goto LABEL_184;
    }

    v22 = &v83[v82];
    v81 = 0xAAAAAAAAAAAAAAAALL;
    v80 = 0xAAAAAAAAAAAAAAAALL;
    if (v83 > &v83[v82] || v22 > v84)
    {
      goto LABEL_183;
    }

    v80 = v83;
    v81 = &v83[v82];
    if (!ccder_blob_decode_tl())
    {
      result = v73;
      goto LABEL_179;
    }

    v24 = v80;
    if (__CFADD__(v80, v82))
    {
      goto LABEL_184;
    }

    if (&v80[v82] > v81 || v80 > &v80[v82])
    {
      goto LABEL_183;
    }

    v80 += v82;
    if (v82 != 9)
    {
      goto LABEL_147;
    }

    if (v81 - v24 < 9)
    {
      goto LABEL_183;
    }

    if (*v24 == 0x9010DF78648862ALL && v24[8] == 3)
    {
      if (v20)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v35 = ccder_blob_decode_tl();
      result = v77;
      if (v35)
      {
        if (sub_100101E68(&v80))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 1u;
      goto LABEL_134;
    }

    if (*v24 == 0x9010DF78648862ALL && v24[8] == 4)
    {
      if ((v20 & 2) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v38 = ccder_blob_decode_tl();
      result = v77;
      if (v38)
      {
        if (sub_100101F20(&v80, v36, v37, a3))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 2u;
      goto LABEL_134;
    }

    if (*v24 == v21 && v24[8] == 2)
    {
      if ((v20 & 0x10) != 0)
      {
        goto LABEL_149;
      }

      v87 = 0xAAAAAAAAAAAAAAAALL;
      v39 = ccder_blob_decode_tl();
      result = v77;
      if (v39)
      {
        v40 = v80;
        v41 = v81;
        if (v80 >= v81)
        {
LABEL_110:
          if (v40 == v41)
          {
            result = 0;
          }

          else
          {
            result = 262155;
          }
        }

        else
        {
          v72 = a1;
          while (1)
          {
            if (!ccder_blob_decode_tl())
            {
              result = 262157;
              goto LABEL_132;
            }

            v88[0] = 0xAAAAAAAAAAAAAAAALL;
            v88[1] = 0xAAAAAAAAAAAAAAAALL;
            if (__CFADD__(v80, v87))
            {
              goto LABEL_184;
            }

            if (v80 > &v80[v87] || &v80[v87] > v81)
            {
              goto LABEL_183;
            }

            v43 = v21;
            v88[0] = v80;
            v88[1] = &v80[v87];
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              result = 262151;
              goto LABEL_131;
            }

            v85 = 0xAAAAAAAAAAAAAAAALL;
            v86 = 0xAAAAAAAAAAAAAAAALL;
            if (v88[1] < v88[0] || v87 > v88[1] - v88[0])
            {
              goto LABEL_183;
            }

            v85 = v88[0];
            v86 = v87;
            if (__CFADD__(v88[0], v87))
            {
              goto LABEL_184;
            }

            if (v88[0] + v87 > v88[1] || v88[0] > v88[0] + v87)
            {
              goto LABEL_183;
            }

            v88[0] += v87;
            if (!ccder_blob_decode_tl())
            {
              result = 262152;
              goto LABEL_131;
            }

            v44 = v88[0];
            if (__CFADD__(v88[0], v87))
            {
              goto LABEL_184;
            }

            v45 = v88[1];
            v46 = v88[0] + v87;
            if (v88[0] + v87 > v88[1] || v88[0] > v46)
            {
              goto LABEL_183;
            }

            v88[0] += v87;
            if (v46 != v88[1])
            {
              break;
            }

            v47 = find_digest(&v85);
            if (v47)
            {
              v48 = *v47;
              if (*v47 > *(a3 + 104))
              {
                v49 = *(v72 + 8);
                if (!v49 || v48 <= v49)
                {
                  *(a3 + 104) = v48;
                  v50 = v87;
                  if (v87 > v45 - v44)
                  {
                    goto LABEL_183;
                  }

                  *(a3 + 112) = v44;
                  *(a3 + 120) = v50;
                }
              }
            }

            v40 = v88[0];
            v41 = v81;
            if (v88[0] > v81 || v80 > v88[0])
            {
              goto LABEL_183;
            }

            v80 = v88[0];
            v21 = v43;
            if (v88[0] >= v81)
            {
              a1 = v72;
              goto LABEL_110;
            }
          }

          result = 262153;
LABEL_131:
          v21 = v43;
LABEL_132:
          a1 = v72;
        }
      }

      v20 |= 0x10u;
      goto LABEL_134;
    }

    if (*v24 == 0x9010DF78648862ALL && v24[8] == 5)
    {
      if ((v20 & 4) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v51 = ccder_blob_decode_tl();
      result = v77;
      if (v51)
      {
        if (sub_100102044(&v80))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 4u;
      goto LABEL_134;
    }

    if (*v24 == v21 && v24[8] == 1)
    {
      if ((v20 & 8) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v54 = ccder_blob_decode_tl();
      result = v77;
      if (v54)
      {
        if (sub_100102114(&v80, v52, v53, a3))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 8u;
LABEL_134:
      if (result)
      {
        goto LABEL_179;
      }

      goto LABEL_135;
    }

    if (*v24 != 0x9010DF78648862ALL || v24[8] != 52)
    {
      v31 = *v24;
      v32 = v24[8];
      if (v31 != 0x9010DF78648862ALL || v32 != 15)
      {
LABEL_147:
        result = 262150;
        goto LABEL_179;
      }

      if ((v20 & 0x40) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v34 = ccder_blob_decode_tl();
      result = v77;
      if (v34)
      {
        if (sub_1001021CC(&v80))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 0x40u;
      goto LABEL_134;
    }

    if ((v20 & 0x20) != 0)
    {
LABEL_149:
      result = 262149;
      goto LABEL_179;
    }

    v20 |= 0x20u;
LABEL_135:
    if (v22 > v84 || v83 > v22)
    {
      goto LABEL_183;
    }

    v83 = v22;
  }

  while (v22 < v84);
  if ((~v20 & 3) != 0)
  {
    goto LABEL_145;
  }

  v56 = ccder_sizeof_tag();
  result = ccder_sizeof_len();
  v57 = __CFADD__(v56, result);
  v58 = v56 + result;
  v10 = v75;
  if (v57)
  {
    goto LABEL_185;
  }

  if (v58 > 0x14)
  {
    result = 327689;
    goto LABEL_179;
  }

  memset(v88, 170, 20);
  if (__CFADD__(v88, v58))
  {
LABEL_184:
    __break(0x5513u);
  }

  v85 = v88;
  v86 = v88 + v58;
  result = ccder_blob_encode_tl();
  if (!result)
  {
    result = 327688;
    goto LABEL_179;
  }

  v59 = v75[1];
  v57 = __CFADD__(v59, 8);
  v60 = v59 + 8;
  if (v57 || (v61 = v75[2], v57 = __CFADD__(v60, v61), v62 = v60 + v61, v57) || (v57 = __CFADD__(v62, 4), v63 = v62 + 4, v57) || v63 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_185:
    __break(0x5500u);
    return result;
  }

  __chkstk_darwin(result);
  v65 = &v71 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v65, 170, ((v66 - 9) & 0xFFFFFFFFFFFFFFF8) + 8);
  ccdigest_init();
  ccdigest_update();
  ccdigest_update();
  v13 = (v10[7])(v10, v65, v89);
  v15 = v74;
LABEL_157:
  if (v15 <= a1)
  {
LABEL_183:
    __break(0x5519u);
    goto LABEL_184;
  }

  result = CMSBuildPath(v13, a2, a3);
  if (result <= 524294)
  {
    if (!result)
    {
      goto LABEL_169;
    }

    if (result != 524293)
    {
      goto LABEL_179;
    }

    goto LABEL_166;
  }

  switch(result)
  {
    case 0x80007:
LABEL_166:
      *(a3 + 168) = result;
      return 0;
    case 0x80009:
      v67 = 524297;
LABEL_168:
      *(a3 + 168) = v67;
      break;
    case 0x80008:
      if (*(a3 + 168) == 458753)
      {
        v67 = 524296;
        goto LABEL_168;
      }

      break;
    default:
      goto LABEL_179;
  }

LABEL_169:
  v68 = *v10;
  if (*v10 > 0x40)
  {
    goto LABEL_183;
  }

  v79[0] = v89;
  v79[1] = v68;
  v69 = *(a3 + 152);
  if (v69 >= v69 + 304)
  {
    goto LABEL_183;
  }

  result = X509CertificateCheckSignatureDigest(29, v69, v79, v3);
  if (!result || result == 655648 || result == 655632)
  {
    v70 = *(a3 + 168);
    if (!v70 || v70 == 458753 || v70 == 327681)
    {
      *(a3 + 168) = result;
    }

    result = 0;
  }

LABEL_179:
  if (*v16 == v89)
  {
    *v16 = 0;
    *(a3 + 136) = 0;
  }

  return result;
}

uint64_t validateSignerInfoAndChain(uint64_t *a1, void *a2, uint64_t a3)
{
  result = validateSignerInfo(a1, a2, a3);
  v6 = result;
  if (result)
  {
    return v6;
  }

  v7 = (a3 + 152);
  v8 = (a3 + 168);
  if (v7 <= v8)
  {
    v9 = X509ChainCheckPath(29, v7, *a1);
    if (v9)
    {
      if (!*v8)
      {
        *v8 = v9;
      }
    }

    return v6;
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_1001015E8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v29 = 0;
  v30[0] = 0;
  memset(v28, 0, sizeof(v28));
  v26 = 0;
  v25 = 0;
  v23 = 0u;
  v24 = &v23 + 8;
  v30[1] = 0;
  memset(__b, 170, sizeof(__b));
  v22[0] = 4;
  v22[1] = __b;
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  v27 = v19;
  *&v28[0] = 1;
  DWORD2(v21) = 327681;
  if (a2 < 0)
  {
    goto LABEL_20;
  }

  result = CMSParseContentInfoSignedDataWithOptions(a1, a2, v22, 0);
  if (result)
  {
    return result;
  }

  if (a4)
  {
    result = 131091;
    if (*(v28 + 8) != 0)
    {
      return result;
    }

    if (a4 < 0)
    {
      goto LABEL_20;
    }

    *(&v28[0] + 1) = a3;
    *&v28[1] = a4;
  }

  v30[0] = a5;
  DWORD2(v21) = 458753;
  result = CMSParseSignerInfos(v22, v30, validateSignerInfoAndChain);
  if (result)
  {
    return result;
  }

  result = DWORD2(v21);
  if (DWORD2(v21))
  {
    return result;
  }

  if (a6 && a7)
  {
    if (*(&v20 + 1) < (*(&v20 + 1) + 304))
    {
      result = X509CertificateParseKey(*(&v20 + 1), a6, a7);
      goto LABEL_14;
    }

LABEL_20:
    __break(0x5519u);
  }

LABEL_14:
  if (!a4)
  {
    if (a8)
    {
      if (a9)
      {
        v18 = *&v28[1];
        if (*&v28[1])
        {
          if (*(&v28[0] + 1))
          {
            *a8 = *(&v28[0] + 1);
            *a9 = v18;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CMSVerifySignedData(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = 0;
  return sub_1001015E8(a1, a2, a3, a4, a5, &v6, &v7, &v8, &v9);
}

uint64_t CMSVerifyAndReturnSignedData(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = 0;
  v7 = 0;
  return sub_1001015E8(a1, a2, 0, 0, a5, &v6, &v7, a3, a4);
}

uint64_t sub_100101894(uint64_t result, _BYTE *a2, unint64_t *a3)
{
  *a2 = 0;
  v3 = *result;
  if (!*result)
  {
    return 0;
  }

  v4 = *(result + 8);
  if (v3 >= v4)
  {
    return 0;
  }

  if (v3 == -1)
  {
    goto LABEL_48;
  }

  v5 = v3 + 1;
  if (v3 >= v3 + 1 || v5 > v4)
  {
    goto LABEL_47;
  }

  *result = v5;
  v7 = *v3;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = *v3;
  if (v9 > 0x81)
  {
    if (v9 == 130)
    {
      if ((v4 - v5) < 2)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          v10 = v3 + 3;
          if (v5 <= v3 + 3 && v10 <= v4)
          {
            v11 = v3[1] << 8;
            v12 = v3[2];
            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      if (v9 != 131)
      {
        return v8;
      }

      if ((v4 - v5) < 3)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          if (v3 + 3 >= v5 && (v3 + 3) < v4)
          {
            if (v5 > 0xFFFFFFFFFFFFFFFCLL)
            {
              goto LABEL_48;
            }

            v10 = v3 + 4;
            if (v5 <= v3 + 4 && v10 <= v4)
            {
              v11 = (v3[1] << 16) | (v3[2] << 8);
              v12 = v3[3];
LABEL_45:
              v7 = v11 | v12;
              *result = v10;
              goto LABEL_46;
            }
          }
        }
      }
    }

LABEL_47:
    __break(0x5519u);
    goto LABEL_48;
  }

  if (v9 == 128)
  {
    v7 = v4 - v5;
    *a2 = 1;
    goto LABEL_9;
  }

  if (v9 != 129)
  {
    return v8;
  }

  if ((v4 - v5) < 1)
  {
    return 0;
  }

  if (v3 != -2)
  {
    v10 = v3 + 2;
    if (v5 <= v3 + 2 && v10 <= v4)
    {
      *result = v10;
      v7 = *v5;
LABEL_46:
      v5 = v10;
LABEL_9:
      if (v4 - v5 >= v7)
      {
        *a3 = v7;
        return 1;
      }

      return 0;
    }

    goto LABEL_47;
  }

LABEL_48:
  __break(0x5513u);
  return result;
}

uint64_t sub_100101A58(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4 || (memset(v31, 170, sizeof(v31)), v6 = *a1, v7 = a1[1], *a1 > v7))
  {
LABEL_47:
    __break(0x5519u);
LABEL_48:
    __break(0x5513u);
  }

  v31[0] = *a1;
  v31[1] = v7;
  if (v6 < v7 && a3 != 0)
  {
    v11 = 0;
    v12 = 304 * a3;
    v13 = a2 + 304 * a3;
    v26 = ~a2;
    v14 = a4 + 1;
    v15 = a2 + 304;
    while (1)
    {
      v30 = 0;
      if (!ccder_blob_decode_tag())
      {
        return 0;
      }

      if (!v31[2])
      {
        goto LABEL_9;
      }

      if (!sub_100101894(v31, &v30, &v29) || (v30 & 1) != 0 || v31[2] != 0x2000000000000010)
      {
        return 0;
      }

      if ((v11 * 304) >> 64 != (304 * v11) >> 63 || 304 * v11 > v26)
      {
        goto LABEL_48;
      }

      v16 = (v15 - 304);
      if (v15 - 304 > v13)
      {
        goto LABEL_47;
      }

      if (v16 < a2)
      {
        goto LABEL_47;
      }

      v17 = v12 >= 0x130;
      v12 -= 304;
      if (!v17)
      {
        goto LABEL_47;
      }

      *(v15 - 32) = 0u;
      *(v15 - 16) = 0u;
      *(v15 - 64) = 0u;
      *(v15 - 48) = 0u;
      *(v15 - 96) = 0u;
      *(v15 - 80) = 0u;
      *(v15 - 128) = 0u;
      *(v15 - 112) = 0u;
      *(v15 - 160) = 0u;
      *(v15 - 144) = 0u;
      *(v15 - 192) = 0u;
      *(v15 - 176) = 0u;
      *(v15 - 224) = 0u;
      *(v15 - 208) = 0u;
      *(v15 - 256) = 0u;
      *(v15 - 240) = 0u;
      *(v15 - 288) = 0u;
      *(v15 - 272) = 0u;
      *v16 = 0u;
      if (v16 > v15)
      {
        goto LABEL_47;
      }

      if (v11)
      {
        if (v15 > v13)
        {
          goto LABEL_47;
        }

        *(v15 - 32) = 0;
        v18 = *v14;
        *(v15 - 24) = *v14;
        if (v16 > v15)
        {
          goto LABEL_47;
        }

        *v18 = v16;
        *v14 = v15 - 32;
        if (v15 != 304)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v15 > v13)
        {
          goto LABEL_47;
        }

        v19 = *a4;
        *(v15 - 32) = *a4;
        v20 = v15 - 32;
        v21 = (v15 - 24);
        if (v19)
        {
          if (v20 > v21)
          {
            goto LABEL_47;
          }

          v22 = (v19 + 280);
        }

        else
        {
          v22 = v14;
          if (v20 > v21)
          {
            goto LABEL_47;
          }
        }

        *v22 = v20;
        if (v16 > v15)
        {
          goto LABEL_47;
        }

        *a4 = v16;
        if (v14 < a4)
        {
          goto LABEL_47;
        }

        *v21 = a4;
        if (v15 != 304)
        {
LABEL_37:
          if (v15 > v13 || v16 > v15)
          {
            goto LABEL_47;
          }
        }
      }

      if (X509CertificateParseImplicit(v15 - 304, v31, 0, 0))
      {
        return 0;
      }

      v23 = v31[0];
      v24 = v31[0] - v6;
      if (v31[0] - v6 > v7 - v6)
      {
        goto LABEL_47;
      }

      if (v15 > v13)
      {
        goto LABEL_47;
      }

      *v16 = v6;
      *(v15 - 296) = v24;
      v7 = v31[1];
      if (v23 > v31[1])
      {
        goto LABEL_47;
      }

      *a1 = v23;
      a1[1] = v7;
      ++v11;
      if (v23 < v7)
      {
        v15 += 304;
        v6 = v23;
        if (v11 < a3)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_9:
  if (a5)
  {
    *a5 = v11;
  }

  return 1;
}

uint64_t sub_100101D28(unint64_t *a1, uint64_t a2, unint64_t *a3, int a4)
{
  v15 = 0;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8 && v14 == a2)
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    result = sub_100101894(a1, &v15, &v13);
    if ((result & 1) == 0)
    {
      return 0;
    }

    if (a3)
    {
      v10 = a1[1];
      if (*a1 > v10)
      {
        goto LABEL_18;
      }

      *a3 = *a1;
      a3[1] = v10;
    }

    if (v15 == 1)
    {
      if (a4 >= 1)
      {
        result = sub_100101D28(a1, 0, 0, (a4 - 1));
        if (!result)
        {
          return result;
        }

        return (sub_100100110(a1, 1) & 1) != 0;
      }

      return 0;
    }

    v11 = *a1;
    if (__CFADD__(*a1, v13))
    {
LABEL_19:
      __break(0x5513u);
      return result;
    }

    v12 = v11 + v13;
    if (v11 <= v11 + v13 && v12 <= a1[1])
    {
      *a1 = v12;
      return 1;
    }

LABEL_18:
    __break(0x5519u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100101E68(const void **a1)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      if (v3 - 0x5555555555555556 != a1[1])
      {
        return 0;
      }

      if (v3 <= v3 - 0x5555555555555556)
      {
        return compare_octet_string_raw(&off_10018ED48, v3, 0xAAAAAAAAAAAAAAAALL) == 0;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t sub_100101F20(const void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      if (*a1 - 0x5555555555555556 != a1[1])
      {
        return 0;
      }

      result = a4 + 24;
      if (a4 + 24 <= (a4 + 40))
      {
        result = find_digest(result);
        if (!result)
        {
          return result;
        }

        if (*(a4 + 136) != 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_14;
        }

        result = (*(result + 24))();
        if (*result != 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_14;
        }

        v7 = a1[1];
        v8 = v7 >= *a1;
        v9 = v7 - *a1;
        if (v8 && *(a4 + 136) >= 0xAAAAAAAAAAAAAAAALL && v9 >= 0xAAAAAAAAAAAAAAAALL)
        {
          if (!memcmp(*(a4 + 128), *a1, 0xAAAAAAAAAAAAAAAALL))
          {
            return 1;
          }

LABEL_14:
          *(a4 + 168) = 458754;
          return 1;
        }
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t sub_100102044(unint64_t *a1)
{
  if (*a1 > a1[1])
  {
    goto LABEL_10;
  }

  v4 = *a1;
  v5 = a1[1];
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    goto LABEL_7;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return result;
  }

  v3 = v4;
  if (v4 > v5)
  {
LABEL_10:
    __break(0x5519u);
  }

  *a1 = v4;
  a1[1] = v5;
LABEL_7:
  if (v3 < 0x5555555555555556)
  {
    return v3 - 0x5555555555555556 == a1[1];
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_100102114(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      if (v7 - 0x5555555555555556 != a1[1])
      {
        return 0;
      }

      if (*(a4 + 104))
      {
        return 1;
      }

      if (v7 <= v7 - 0x5555555555555556)
      {
        *(a4 + 112) = v7;
        *(a4 + 120) = 0xAAAAAAAAAAAAAAAALL;
        return 1;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t sub_1001021CC(void *a1)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 >= 0x5555555555555556uLL)
    {
      __break(0x5513u);
    }

    else
    {
      return *a1 - 0x5555555555555556 == a1[1];
    }
  }

  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_raw(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, a3);
  }

  if (v3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_partial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 <= *(a2 + 8))
  {
    return memcmp(*a2, *a1, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unint64_t *a1, unint64_t *a2)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_20;
    }

    v5 = *a1;
    v6 = *a1;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return result;
    }

    if (a2)
    {
      if (v6 < v5)
      {
        goto LABEL_20;
      }

      *a2 = v5;
      a2[1] = 0;
    }

    if (v5 == v6)
    {
      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

    else if (v5 <= v6)
    {
      result = ccder_blob_decode_tl();
      if (!result)
      {
        return result;
      }

      if (v5 != v6)
      {
        return 0;
      }

      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

LABEL_20:
    __break(0x5519u);
  }

  return result;
}

uint64_t ccder_blob_decode_Time(unint64_t *a1, unint64_t *a2)
{
  if (*a1 > a1[1])
  {
    goto LABEL_6;
  }

  if (ccder_blob_decode_tl())
  {
    return 0;
  }

  if (*a1 > a1[1])
  {
LABEL_6:
    __break(0x5519u);
  }

  ccder_blob_decode_tl();
  return 0;
}

uint64_t ccder_blob_decode_GeneralName(unint64_t *a1, int *a2, unint64_t *a3)
{
  result = 0;
  if (a2 && a3)
  {
    *a3 = 0;
    a3[1] = 0;
    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      *a2 = 0;
LABEL_6:
      v7 = v10;
LABEL_16:
      if (v7 <= a1[1] && *a1 <= v7)
      {
        *a1 = v7;
        return 1;
      }

LABEL_42:
      __break(0x5519u);
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v11 = *a1;
    v16 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v11;
      if (v16 < v11)
      {
        goto LABEL_42;
      }

      *a3 = v11;
      a3[1] = 0;
      v8 = 1;
LABEL_15:
      *a2 = v8;
      goto LABEL_16;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v12 = *a1;
    v17 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v12;
      if (v17 < v12)
      {
        goto LABEL_42;
      }

      *a3 = v12;
      a3[1] = 0;
      v8 = 2;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      v9 = 3;
LABEL_23:
      *a2 = v9;
      goto LABEL_6;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v13 = *a1;
    v18 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v13;
      if (v18 < v13)
      {
        goto LABEL_42;
      }

      *a3 = v13;
      a3[1] = 0;
      v8 = 4;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      v9 = 5;
      goto LABEL_23;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v14 = *a1;
    v19 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v14;
      if (v19 < v14)
      {
        goto LABEL_42;
      }

      *a3 = v14;
      a3[1] = 0;
      v8 = 6;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v15 = *a1;
    v20 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v15;
      if (v20 < v15)
      {
        goto LABEL_42;
      }

      *a3 = v15;
      a3[1] = 0;
      v8 = 7;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    result = ccder_blob_decode_tl();
    if (result)
    {
      v9 = 8;
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t CTParseCertificateSet(unint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  if (a1 < a2 && a4)
  {
    v8 = 0;
    v9 = a4 - 1;
    v10 = a3;
    v11 = &a3[a4];
    while (1)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17[17] = v12;
      v17[18] = v12;
      v17[15] = v12;
      v17[16] = v12;
      v17[13] = v12;
      v17[14] = v12;
      v17[11] = v12;
      v17[12] = v12;
      v17[9] = v12;
      v17[10] = v12;
      v17[7] = v12;
      v17[8] = v12;
      v17[5] = v12;
      v17[6] = v12;
      v17[3] = v12;
      v17[4] = v12;
      v17[1] = v12;
      v17[2] = v12;
      v17[0] = v12;
      v15 = a1;
      v16 = a2;
      result = X509CertificateParse(v17, &v15);
      if (result)
      {
        break;
      }

      a1 = v15;
      a2 = v16;
      if (v15 > v16 || v10 < a3 || v10 + 1 > v11 || v10 > v10 + 1)
      {
        __break(0x5519u);
      }

      *v10 = v17[0];
      v6 = v8 + 1;
      if (a1 < a2)
      {
        ++v10;
        if (v9 != v8++)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
LABEL_12:
    result = 0;
    if (a5)
    {
      *a5 = v6;
    }
  }

  return result;
}

uint64_t CTParseExtensionValue(unint64_t a1, uint64_t a2, const void *a3, size_t a4, void *a5, void *a6)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_11;
  }

  v10[0] = a1;
  v10[1] = a1 + a2;
  result = X509CertificateParseWithExtension(v11, v10, a3, a4);
  if (!result)
  {
    result = 720914;
    if (*(&v12 + 1))
    {
      v9 = v13;
      if (v13)
      {
        result = 0;
        if (a5)
        {
          if (a6)
          {
            result = 0;
            *a5 = *(&v12 + 1);
            *a6 = v9;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CTParseKey(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  memset(v8, 0, sizeof(v8));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_7:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_7;
  }

  v7[0] = a1;
  v7[1] = a1 + a2;
  result = X509CertificateParse(v8, v7);
  if (!result)
  {
    return X509CertificateParseKey(v8, a3, a4);
  }

  return result;
}

uint64_t sub_100102C18(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, _BYTE *a7, uint64_t a8, const void *a9, size_t a10, BOOL *a11, uint64_t a12, uint64_t a13)
{
  memset(__b, 170, sizeof(__b));
  memset(v35, 170, sizeof(v35));
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_42;
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_41;
  }

  v32 = a1;
  v33 = a1 + a2;
  CommonName = X509ChainParseCertificateSet(&v32, __b, 4, &v35[2], &v34);
  if (CommonName)
  {
    return CommonName;
  }

  v22 = 327690;
  if (v32 != v33)
  {
    return v22;
  }

  if (v34 != 2)
  {
    return 327692;
  }

  X509ChainResetChain(v35, &v35[2]);
  __b[74] = v35[0];
  v23 = v35[0] ? (v35[0] + 296) : &v35[1];
  *v23 = &__b[74];
  if ((&__b[38] + 1) != 0 && __b >= 0xFFFFFFFFFFFFFECFLL)
  {
LABEL_42:
    __break(0x5513u);
  }

  v35[0] = &__b[38];
  __b[75] = v35;
  __b[36] = 0;
  __b[37] = v35[1];
  *v35[1] = __b;
  v35[1] = &__b[36];
  CommonName = X509ChainCheckPathWithOptions(12, v35, a12, 0);
  if (CommonName)
  {
    return CommonName;
  }

  v24 = **(v35[1] + 8);
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v30 = a3;
  v31 = a4;
  v25 = oidForPubKeyLength();
  if (v24 > v24 + 304 || v24 + 16 > v24 + 32 || v24 + 40 > v24 + 56 || v24 + 56 > v24 + 72)
  {
    goto LABEL_41;
  }

  CommonName = X509CertificateCheckSignatureWithPublicKey(&v30, &ecPublicKey, v25, v24 + 16, v24 + 40);
  if (CommonName)
  {
    return CommonName;
  }

  if (a9 && a10)
  {
    if ((a10 & 0x8000000000000000) != 0 || v24 + 248 > v24 + 264)
    {
      goto LABEL_41;
    }

    if (compare_octet_string_raw(v24 + 248, a9, a10))
    {
      return 590085;
    }
  }

  v27 = v35[0];
  if (v35[0] >= v35[0] + 304)
  {
LABEL_41:
    __break(0x5519u);
    goto LABEL_42;
  }

  v28 = X509CertificateParseKey(v35[0], a5, a6);
  if (v28)
  {
    v22 = v28;
  }

  else
  {
    v22 = 327691;
  }

  if (v27 && !v28)
  {
    if (a11)
    {
      *a11 = (*(v27 + 240) & a13) != 0;
    }

    if (!a7 || !a8)
    {
      return 0;
    }

    v29[0] = 0;
    v29[1] = 0;
    if (v27 + 104 <= v27 + 120)
    {
      CommonName = X509CertificateSubjectNameGetCommonName((v27 + 104), v29);
      if (CommonName)
      {
        return CommonName;
      }

      if ((a8 & 0x8000000000000000) == 0)
      {
        CommonName = sub_100103E54(v29, a7, a8);
        if (CommonName)
        {
          return CommonName;
        }

        return 0;
      }
    }

    goto LABEL_41;
  }

  return v22;
}

uint64_t CTEvaluateCertsForPolicy(unint64_t a1, uint64_t a2, char a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, __int128 *a11)
{
  memset(v41, 170, sizeof(v41));
  bzero(v42, 0x4C0uLL);
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_47:
    __break(0x5513u);
  }

  v40 = 0xAAAAAAAAAAAAAAAALL;
  if (a1 + a2 < a1)
  {
    goto LABEL_46;
  }

  v38 = a1;
  v39 = a1 + a2;
  result = X509ChainParseCertificateSet(&v38, v42, 4, &v41[2], &v40);
  if (result)
  {
    return result;
  }

  if (v38 != v39)
  {
    return 327690;
  }

  if ((a4 & 1) == 0 && !v43)
  {
    X509ChainResetChain(v41, &v41[2]);
    v20 = v41[0];
    v21 = (v41[0] + 296);
    if (!v41[0])
    {
      v21 = &v41[1];
    }

    *v21 = v44;
    v41[0] = v42;
    v44[0] = v20;
    v44[1] = v41;
LABEL_23:
    v37[0] = a7;
    v37[1] = a8;
    if (a7)
    {
      v24 = a8 == 0;
    }

    else
    {
      v24 = 1;
    }

    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = 0xAAAAAAAAAAAAAAAALL;
    v34 = v25;
    v35 = v25;
    v33 = *a11;
    LOBYTE(v34) = *(a11 + 16);
    if (v24)
    {
      v26 = a3;
    }

    else
    {
      v26 = 1;
    }

    BYTE1(v34) = v26;
    WORD1(v34) = *(a11 + 9);
    if (!v24)
    {
      v27 = *(a11 + 4);
      *(&v34 + 1) = v37;
      *&v35 = v27;
      v28 = oidForPubKeyLength();
LABEL_33:
      v30 = *(a11 + 6);
      *(&v35 + 1) = v28;
      v36 = v30;
      result = X509ChainCheckPathWithOptions(12, v41, &v33, 0);
      if (result)
      {
        return result;
      }

      v31 = v41[0];
      if (!a5 || !a6 || !v41[0])
      {
LABEL_40:
        if (a10 && v31)
        {
          v32 = v31[32];
          *a10 = v31[31];
          a10[1] = v32;
        }

        result = 0;
        if (a9)
        {
          if (v31)
          {
            result = 0;
            *a9 = v31[30];
          }
        }

        return result;
      }

      if (v41[0] < v41[0] + 304)
      {
        result = X509CertificateParseKey(v41[0], a5, a6);
        if (result)
        {
          return result;
        }

        goto LABEL_40;
      }

      goto LABEL_46;
    }

    if (*(a11 + 3) < (*(a11 + 3) + 16))
    {
      v29 = *(a11 + 4);
      v28 = *(a11 + 5);
      *(&v34 + 1) = *(a11 + 3);
      *&v35 = v29;
      goto LABEL_33;
    }

LABEL_46:
    __break(0x5519u);
    goto LABEL_47;
  }

  if (v42[265] != 1)
  {
    v23 = &v45;
    v22 = v42;
    goto LABEL_20;
  }

  if (!v41[2])
  {
    v22 = 0;
    goto LABEL_22;
  }

  v22 = v41[2];
  do
  {
    if ((v22[265] & 1) == 0)
    {
      v23 = (v22 + 304);
      if (v22 < v22 + 304)
      {
        goto LABEL_20;
      }

      goto LABEL_46;
    }

    v22 = *(v22 + 34);
  }

  while (v22);
  v23 = (v41[2] + 304);
  v22 = v41[2];
LABEL_20:
  if (v22 + 304 > v23 || v22 > v22 + 304)
  {
    goto LABEL_46;
  }

LABEL_22:
  result = X509ChainBuildPathPartial(v22, &v41[2], v41, a4 ^ 1u);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t CTEvaluatePragueSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v9 = 0xAAAAAAAA0000AA01;
  v8 = xmmword_100163490;
  BYTE1(v9) = a5;
  v10 = 0u;
  v11 = 0u;
  return CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v8, a6, a7);
}

uint64_t CTEvaluateKDLSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v9 = 0xAAAAAAAA0000AA01;
  v8 = xmmword_1001634A0;
  BYTE1(v9) = a5;
  v10 = 0u;
  v11 = 0u;
  return CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v8, a6, a7);
}

uint64_t CTVerifyAppleMarkerExtension(void *a1, uint64_t a2)
{
  result = 327700;
  v4 = a1[31];
  v5 = a1[32];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 327707;
  }

  v7 = a1[30];
  if ((v7 & 0x100000000) == 0)
  {
    if ((v7 & 0x200000000) == 0)
    {
      return result;
    }

    if (!__CFADD__(v4, v5))
    {
      v11 = v4 + v5;
      if (v4 + v5 != -1)
      {
        if (v5 > 0x13)
        {
          return 327704;
        }

        v15 = (v11 - 1);
        if (v11 - 1 >= v4)
        {
          v16 = 0;
          v10 = 0;
          v17 = 0;
          while (v15 < v11)
          {
            v18 = *v15;
            if ((v18 - 58) < 0xFFFFFFF6)
            {
              return 327705;
            }

            v19 = (&powersOfTen + v16);
            if ((&powersOfTen + v16) < &powersOfTen || v19 + 1 > &CTOidCommonName || v19 > v19 + 1)
            {
              break;
            }

            if (v16 == 160 || (v17 & 0x1FFFFFFFFFFFFFFFLL) == 0x14)
            {
              goto LABEL_42;
            }

            v20 = v18 & 0xF;
            v21 = *v19;
            if (!is_mul_ok(v20, v21))
            {
              goto LABEL_43;
            }

            v22 = v20 * v21;
            v14 = __CFADD__(v10, v22);
            v10 += v22;
            if (v14)
            {
              goto LABEL_41;
            }

            ++v17;
            --v15;
            v16 += 8;
            if (v15 < v4)
            {
              goto LABEL_23;
            }
          }

LABEL_40:
          __break(0x5519u);
LABEL_41:
          __break(0x5500u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(0x550Cu);
          goto LABEL_44;
        }

        goto LABEL_13;
      }
    }

LABEL_44:
    __break(0x5513u);
    return result;
  }

  if (__CFADD__(v4, v5))
  {
    goto LABEL_44;
  }

  v8 = v4 + v5;
  if (v4 + v5 == -1)
  {
    goto LABEL_44;
  }

  v9 = (v8 - 1);
  if (v8 - 1 >= v4)
  {
    LOBYTE(v12) = 0;
    v10 = 0;
    while (v9 < v8)
    {
      v13 = (*v9 & 0x7F) << (7 * v12);
      v14 = __CFADD__(v10, v13);
      v10 += v13;
      if (v14)
      {
        goto LABEL_41;
      }

      if (--v9 >= v4)
      {
        v12 = (v12 + 1);
        if (v12 < 9)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_13:
  v10 = 0;
LABEL_23:
  if (v10 == a2)
  {
    return 0;
  }

  else
  {
    return 589829;
  }
}

uint64_t CTVerifyHostname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 327702;
  if (*(a1 + 232) && *(a1 + 224))
  {
    v7[1] = a3;
    v8 = 0xAAAAAAAAAAAAAA00;
    v7[0] = a2;
    v4 = X509CertificateParseGeneralNamesContent(a1, sub_1001036E8, v7);
    if (v8)
    {
      v5 = 0;
    }

    else
    {
      v5 = 327706;
    }

    if (v4)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  return v3;
}

uint64_t sub_1001036E8(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != 2)
  {
    return 1;
  }

  v3 = *a3;
  v4 = a3[1];
  v5 = ~*a3;
  if (v4 > v5)
  {
    goto LABEL_55;
  }

  v6 = &v3[v4];
  if (&v3[v4] == -1)
  {
    goto LABEL_55;
  }

  v7 = v6 - 1;
  if (v6)
  {
    v8 = v7 >= v3;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_54;
  }

  if (a3 + 3 < a3)
  {
    goto LABEL_54;
  }

  v9 = a3 + 2;
  if (a3 + 2 < a3)
  {
    goto LABEL_54;
  }

  v11 = *v7;
  result = compare_octet_string(a2, a3);
  if (!result)
  {
    goto LABEL_53;
  }

  if (v11 != 46)
  {
    goto LABEL_16;
  }

  v12 = v4 - 1;
  if (v4)
  {
    if (v12 <= v4)
    {
      result = compare_octet_string_raw(a2, v3, v12);
      if (result)
      {
LABEL_16:
        v13 = a2[1];
        if (v13 < 3)
        {
          return 1;
        }

        v14 = *a2;
        if (**a2 != 42)
        {
          return 1;
        }

        if (v14 != -1)
        {
          if (v14[1] == 46)
          {
            v15 = -2;
            if (v14 < 0xFFFFFFFFFFFFFFFELL)
            {
              v15 = *a2;
            }

            v16 = -v15;
            v17 = 2;
            result = 1;
            while (v16 != v17)
            {
              if (v14[v17] == 46)
              {
                if (v13 == v17)
                {
                  return 1;
                }

                v18 = 0;
                if (v4)
                {
                  while (1)
                  {
                    v19 = &v3[v18];
                    if (&v3[v18] >= v6 || v19 < v3)
                    {
                      goto LABEL_54;
                    }

                    if (*v19 == 46)
                    {
                      break;
                    }

                    if (v4 == ++v18)
                    {
                      v18 = v4;
                      break;
                    }
                  }
                }

                v21 = v13 - 1;
                v8 = v4 >= v18;
                v22 = v4 - v18;
                if (!v8)
                {
                  goto LABEL_56;
                }

                if (v21 == v22)
                {
                  if (v18 > v5)
                  {
                    goto LABEL_55;
                  }

                  v23 = &v3[v18];
                  if (&v3[v18] > v6 || v3 > v23)
                  {
                    goto LABEL_54;
                  }

                  result = memcmp(v14 + 1, v23, v13 - 1);
                  if (!result)
                  {
                    goto LABEL_53;
                  }
                }

                if (v11 != 46)
                {
                  return 1;
                }

                if (!v22)
                {
                  goto LABEL_56;
                }

                if (v21 != v22 - 1)
                {
                  return 1;
                }

                if (v18 > v5)
                {
                  goto LABEL_55;
                }

                v24 = &v3[v18];
                if (&v3[v18] > v6 || v3 > v24 || v21 > v22)
                {
                  goto LABEL_54;
                }

                if (!memcmp(v14 + 1, v24, v21))
                {
                  goto LABEL_53;
                }

                return 1;
              }

              if (v13 == ++v17)
              {
                return result;
              }
            }

            goto LABEL_55;
          }

          return 1;
        }

LABEL_55:
        __break(0x5513u);
        goto LABEL_56;
      }

LABEL_53:
      result = 0;
      *v9 = 1;
      return result;
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

LABEL_56:
  __break(0x5515u);
  return result;
}