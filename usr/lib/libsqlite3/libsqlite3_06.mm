uint64_t sub_1818D0A24(unsigned __int8 *a1)
{
LABEL_1:
  while (2)
  {
    v1 = a1 + 1;
    v2 = *a1;
    while (v2 > 171)
    {
      if (v2 != 172)
      {
        if (v2 == 177)
        {
LABEL_21:
          a1 = *(*(a1 + 4) + 8);
        }

        else
        {
          if (v2 != 178)
          {
            goto LABEL_16;
          }

          a1 = *(*(*(*(a1 + 2) + 32) + 32) + 24 * *(a1 + 12) + 8);
        }

        goto LABEL_1;
      }

      if (*v1 == 88)
      {
        goto LABEL_21;
      }

LABEL_16:
      if ((*(a1 + 5) & 0x420) != 0)
      {
        a1 = *(a1 + 2);
        goto LABEL_1;
      }

      if (v2 == 176)
      {
        v2 = a1[2];
        if (v2 != 176)
        {
          continue;
        }
      }

      goto LABEL_53;
    }

    if (v2 > 169)
    {
      if (v2 == 170)
      {
        v3 = *(a1 + 9);
        if (v3)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_16;
    }

    if (v2 == 36)
    {
      v4 = *(a1 + 1);
      v5 = *v4;
      if (!*v4)
      {
        return 67;
      }

      v6 = 0;
      v7 = v4 + 1;
      v8 = 67;
      while (1)
      {
        v6 = byte_181A20298[v5] | (v6 << 8);
        v11 = 66;
        if (v6 > 1668050785)
        {
          if (v6 == 1668050786 || v6 == 1952807028)
          {
            goto LABEL_30;
          }
        }

        else if (v6 == 1651273570)
        {
          v11 = 65;
          if (v8 == 67 || v8 == 69)
          {
            goto LABEL_30;
          }
        }

        else if (v6 == 1667785074)
        {
          goto LABEL_30;
        }

        v13 = v6 == 1718382433 || v6 == 1919246700 || v6 == 1685026146;
        if (v13 && v8 == 67)
        {
          v11 = 69;
        }

        else
        {
          v11 = v8;
          if ((v6 & 0xFFFFFF) == 0x696E74)
          {
            return 68;
          }
        }

LABEL_30:
        v10 = *v7++;
        v5 = v10;
        v8 = v11;
        if (!v10)
        {
          return v11;
        }
      }
    }

    if (v2 == 139)
    {
      a1 = *(*(*(a1 + 4) + 32) + 8);
      continue;
    }

    break;
  }

  if (v2 != 168)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 9);
LABEL_50:
  v14 = *(a1 + 12);
  if ((v14 & 0x80000000) != 0 || v14 >= *(v3 + 54))
  {
    return 68;
  }

  v1 = (*(v3 + 8) + 16 * v14 + 9);
LABEL_53:
  LOBYTE(v11) = *v1;
  return v11;
}

uint64_t sub_1818D0C40(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BOOL8 a5, uint64_t a6)
{
  v6 = a6;
  v9 = **a2;
  if (v9 == 54)
  {
LABEL_4:
    v6 = sub_1818B8080(a1, *(*a2 + 24), a6);
    goto LABEL_9;
  }

  if (v9 != 51)
  {
    if (v9 != 45)
    {
      sub_18197ACA8(a1, a2, a3, a4, a5, a6);
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  v10 = *(a1 + 16);
  v11 = *(v10 + 144);
  if (*(v10 + 148) <= v11)
  {
    sub_18194C8AC(v10, 75, 0, a6, 0);
  }

  else
  {
    *(v10 + 144) = v11 + 1;
    v12 = *(v10 + 136) + 40 * v11;
    *v12 = 75;
    *(v12 + 8) = a6;
    *(v12 + 12) = 0;
    *(v12 + 28) = 0;
    *(v12 + 20) = 0;
    *(v12 + 36) = 0;
  }

LABEL_9:
  if ((*(*(a3 + 96) + 50) & 0x20) == 0 || (*(a2 + 10) & 0x800) == 0)
  {
    sub_1818E1F5C(a3, a2);
  }

  return v6;
}

uint64_t sub_1818D0D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 20);
  v4 = *(a2 + 20);
  if ((v4 | v3))
  {
    return (v4 & 1) - (v3 & 1u);
  }

  if (((v4 | v3) & 0x2C) == 0)
  {
    if (((v4 | v3) & 2) != 0)
    {
      if ((v3 & 2) == 0)
      {
        return 1;
      }

      if ((v4 & 2) == 0)
      {
        return 0xFFFFFFFFLL;
      }

      if (a3)
      {
        return sub_1819433F0(a1, a2, a3, 0);
      }
    }

    return sub_1819435AC(a1, a2);
  }

  if ((v4 & v3 & 0x24) != 0)
  {
    goto LABEL_4;
  }

  if ((v4 & v3 & 8) != 0)
  {
    if (*a1 >= *a2)
    {
      return *a1 > *a2;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if ((v3 & 0x24) != 0)
    {
      if ((v4 & 8) == 0)
      {
        if ((v4 & 0x24) != 0)
        {
LABEL_4:
          if (*a1 >= *a2)
          {
            return *a1 > *a2;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }

        return 0xFFFFFFFFLL;
      }

      v8 = *a2;
      if (*a2 >= -9.22337204e18)
      {
        if (v8 >= 9.22337204e18)
        {
          return 0xFFFFFFFFLL;
        }

        v9 = *a1;
        if (*a1 < v8)
        {
          return 0xFFFFFFFFLL;
        }

        if (*a1 <= v8)
        {
          v11 = v8 <= v9;
          v10 = v8 < v9;
          if (v11)
          {
            return v10;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }

      return 1;
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    if ((v4 & 0x24) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = *a1;
    result = 0xFFFFFFFFLL;
    if (v6 < -9.22337204e18)
    {
      return result;
    }

    if (v6 >= 9.22337204e18)
    {
      return 1;
    }

    v7 = *a2;
    if (*a2 < v6)
    {
      return 1;
    }

    if (*a2 <= v6)
    {
      v11 = v6 <= v7;
      if (v6 >= v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = -1;
      }

      if (v11)
      {
        return v12;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1818D0EC0(int a1, int a2, void *__s1, int a4, void *__s2)
{
  v5 = a2 - a4;
  if (a2 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2;
  }

  LODWORD(result) = memcmp(__s1, __s2, v6);
  if (result)
  {
    return result;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1818D0EFC(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  sub_181938B20(a2);
  v6 = *(a2 + 64);
  WORD2(v22) = 0;
  *(&v22 + 1) = a1;
  LODWORD(v23) = 0;
  result = sub_18193E044(a2, v6, &v21, v7);
  if (result)
  {
    return result;
  }

  v9 = *(&v21 + 1);
  v10 = **(&v21 + 1);
  if ((v10 & 0x80000000) != 0)
  {
    v15 = *(*(&v21 + 1) + 1);
    if (*(*(&v21 + 1) + 1) < 0)
    {
      v16 = *(*(&v21 + 1) + 2);
      if (v16 < 0)
      {
        v25 = 0;
        sub_1818C7200(*(&v21 + 1), &v25);
        if (HIDWORD(v25))
        {
          v10 = -1;
        }

        else
        {
          v10 = v25;
        }

        if (v10 >= 3)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v10 = ((v10 & 0x7F) << 14) | ((v15 & 0x7F) << 7) | v16;
        if (v10 >= 3)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      v10 = v15 | ((v10 & 0x7F) << 7);
      if (v10 >= 3)
      {
        goto LABEL_4;
      }
    }

LABEL_30:
    if (v23)
    {
      sub_18193CA00(&v21);
    }

    return sub_18190EDA8(98972);
  }

  if (v10 < 3)
  {
    goto LABEL_30;
  }

LABEL_4:
  v11 = v22;
  if (v10 > v22)
  {
    goto LABEL_30;
  }

  v12 = (v9 + v10 - 1);
  v13 = *v12;
  if (v13 < 0)
  {
    v14 = v12[1];
    if (v12[1] < 0)
    {
      v17 = v12[2];
      if (v17 < 0)
      {
        v25 = 0;
        sub_1818C7200(v12, &v25);
        if (HIDWORD(v25))
        {
          v13 = -1;
        }

        else
        {
          v13 = v25;
        }
      }

      else
      {
        v13 = ((v13 & 0x7F) << 14) | ((v14 & 0x7F) << 7) | v17;
      }
    }

    else
    {
      v13 = v14 | ((v13 & 0x7F) << 7);
    }
  }

  if (v13 == 7 || (v13 - 10) < 0xFFFFFFF7)
  {
    goto LABEL_30;
  }

  v19 = byte_181A20DA4[v13];
  if (v11 < v10 + v19)
  {
    goto LABEL_30;
  }

  sub_1818C7394((v9 + v11 - v19), v13, v20);
  *a3 = *&v20[0];
  if (v23)
  {
    sub_18193CA00(&v21);
  }

  return 0;
}

uint64_t sub_1818D10D4(uint64_t *a1, unsigned int a2, const char **a3, const char **a4)
{
  v5 = a3;
  v9 = *(a1 + 4);
  v8 = *(a1 + 5);
  if (a3)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = a2 << v11;
  if (v12 + *(a1 + 7) > v9)
  {
    *(a1 + 4) = v12 + 2 * v9;
    v13 = sub_18190287C(*a1, 8 * (v12 + 2 * v9), 0x10040436913F5);
    if (!v13)
    {
LABEL_33:
      *(a1 + 8) = 7;
      return 1;
    }

    *a1 = v13;
    v8 = *(a1 + 5);
  }

  if (v8)
  {
    if (*(a1 + 6) != a2)
    {
      v14 = a1[1];
      if (v14)
      {
        v15 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
          --qword_1ED456A90;
          off_1ED452EB0(v14);
          v14 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_19;
          }

          v15 = &xmmword_1ED452F28;
        }

        (*v15)(v14);
      }

LABEL_19:
      a1[1] = sqlite3_mprintf("sqlite3_get_table() called with two or more incompatible queries");
      result = 1;
      *(a1 + 8) = 1;
      return result;
    }

    goto LABEL_24;
  }

  *(a1 + 6) = a2;
  if (a2 >= 1)
  {
    v17 = a2;
    do
    {
      v18 = sqlite3_mprintf("%s", *a4);
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = *a1;
      v20 = *(a1 + 7);
      *(a1 + 7) = v20 + 1;
      *(v19 + 8 * v20) = v18;
      ++a4;
    }

    while (--v17);
  }

LABEL_24:
  if (!v5)
  {
    return 0;
  }

  if (a2 >= 1)
  {
    for (i = a2; i; --i)
    {
      if (*v5)
      {
        v25 = strlen(*v5);
        if (sqlite3_initialize())
        {
          goto LABEL_33;
        }

        v26 = v25 & 0x3FFFFFFF;
        v27 = sub_181902484(v26 + 1, 3848184466);
        if (!v27)
        {
          goto LABEL_33;
        }

        v22 = v27;
        memcpy(v27, *v5, v26 + 1);
      }

      else
      {
        v22 = 0;
      }

      v23 = *a1;
      v24 = *(a1 + 7);
      *(a1 + 7) = v24 + 1;
      *(v23 + 8 * v24) = v22;
      ++v5;
    }
  }

  result = 0;
  ++*(a1 + 5);
  return result;
}

char *sqlite3_mprintf(const char *a1, ...)
{
  va_start(va, a1);
  if (sqlite3_initialize())
  {
    return 0;
  }

  else
  {
    return sqlite3_vmprintf(a1, va);
  }
}

void sqlite3_free_table(char **result)
{
  if (!result)
  {
    return;
  }

  v1 = result;
  v2 = result - 1;
  if (*(result - 1) >= 2)
  {
    for (i = (*(result - 1) & 0x7FFFFFFF) - 1; i; --i)
    {
      v4 = *v1;
      if (*v1)
      {
        v5 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
          --qword_1ED456A90;
          off_1ED452EB0(v4);
          v4 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_5;
          }

          v5 = &xmmword_1ED452F28;
        }

        (*v5)(v4);
      }

LABEL_5:
      ++v1;
    }
  }

  v6 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_17;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
  --qword_1ED456A90;
  off_1ED452EB0(v2);
  v2 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v6 = &xmmword_1ED452F28;
LABEL_17:
    v7 = *v6;

    v7(v2);
  }
}

void sub_1818D14E4(uint64_t *result, int a2)
{
  v3 = *result;
  v4 = *(*result + 528);
  if (v4 && !*(v3 + 197) && !*(result + 302))
  {
    v16 = result;
    v17 = v4(*(v3 + 536), 22, "BEGIN", 0, 0, result[46]);
    if (v17 == 1)
    {
      v18 = 23;
      sub_181910730(v16, "not authorized");
    }

    else
    {
      if ((v17 & 0xFFFFFFFD) == 0)
      {
        v19 = v17;
        result = v16;
        if (v19)
        {
          return;
        }

        goto LABEL_4;
      }

      v18 = 1;
      sub_181910730(v16, "authorizer malfunction");
    }

    *(v16 + 6) = v18;
    return;
  }

LABEL_4:
  v5 = sub_1818E7DFC(result);
  if (v5)
  {
    v6 = v5;
    if (a2 != 7 && *(v3 + 40) >= 1)
    {
      v7 = 0;
      if (a2 == 9)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      v9 = 8;
      do
      {
        v10 = *(*(v3 + 32) + v9);
        if (v10 && (*(*(v10 + 8) + 40) & 1) != 0)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8;
        }

        v12 = *(v6 + 144);
        if (*(v6 + 148) <= v12)
        {
          sub_18194C8AC(v6, 2, v7, v11, 0);
        }

        else
        {
          *(v6 + 144) = v12 + 1;
          v13 = *(v6 + 136) + 40 * v12;
          *v13 = 2;
          *(v13 + 4) = v7;
          *(v13 + 8) = v11;
          *(v13 + 12) = 0;
          *(v13 + 28) = 0;
          *(v13 + 20) = 0;
          *(v13 + 36) = 0;
        }

        *(v6 + 272) |= 1 << v7;
        if (v9 != 40 && *(*(*(*v6 + 32) + v9) + 17))
        {
          *(v6 + 276) |= 1 << v7;
        }

        ++v7;
        v9 += 32;
      }

      while (v7 < *(v3 + 40));
    }

    v14 = *(v6 + 144);
    if (*(v6 + 148) <= v14)
    {

      sub_18194C8AC(v6, 1, 0, 0, 0);
    }

    else
    {
      *(v6 + 144) = v14 + 1;
      v15 = *(v6 + 136) + 40 * v14;
      *v15 = 1;
      *(v15 + 1) = 0u;
      *(v15 + 17) = 0u;
      *(v15 + 32) = 0;
    }
  }
}

uint64_t sub_1818D1728(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(v2 + 80);
  v4 = *(v2 + 112);
  v5 = *(v4 + 40);
  if ((*(v4 + 52) & 4) != 0 && v5[8] >= *(v4 + 48))
  {
    if (!v5[32])
    {
LABEL_12:
      strcpy(v3, "SQLite format 3");
      *(v3 + 16) = BYTE1(*(a1 + 52));
      *(v3 + 17) = *(a1 + 54);
      *(v3 + 18) = 257;
      *(v3 + 20) = *(a1 + 52) - *(a1 + 56);
      *(v3 + 21) = 8256;
      *(v3 + 23) = 32;
      *(v3 + 24) = 0u;
      *(v3 + 40) = 0u;
      *(v3 + 56) = 0u;
      *(v3 + 72) = 0u;
      *(v3 + 84) = 0u;
      v11 = *(v2 + 72);
      v10 = *(v2 + 80);
      v12 = *(v2 + 9);
      if ((*(v11 + 40) & 0xC) != 0)
      {
        v13 = a1;
        bzero((v10 + v12), (*(v11 + 56) - v12));
        a1 = v13;
      }

      v6 = 0;
      v14 = v10 + v12;
      *v14 = 13;
      *(v14 + 1) = 0;
      *(v14 + 7) = 0;
      *(v14 + 5) = BYTE1(*(v11 + 56));
      *(v14 + 6) = *(v11 + 56);
      *(v2 + 20) = (*(v11 + 56) - (v12 + 8));
      v15 = *(v2 + 72);
      *(v2 + 11) = *(v15 + 37);
      *(v2 + 10) = 0;
      *(v2 + 8) = 1;
      *(v2 + 120) = sub_1819355AC;
      *(v2 + 128) = sub_1818C7030;
      *(v2 + 1) = 257;
      *(v2 + 14) = *(v15 + 46);
      *(v2 + 18) = v12 + 8;
      v16 = *(v11 + 52);
      *(v2 + 88) = v10 + v16;
      *(v2 + 96) = v10 + v12 + 8;
      *(v2 + 104) = v10;
      *(v2 + 12) = 0;
      *(v2 + 26) = v16 - 1;
      *(v2 + 24) = 0;
      *v2 = 1;
      *(a1 + 40) |= 2u;
      LOBYTE(v16) = *(a1 + 33);
      *(v3 + 52) = 0;
      *(v3 + 54) = 0;
      *(v3 + 55) = v16;
      LOBYTE(v16) = *(a1 + 34);
      *(v3 + 64) = 0;
      *(v3 + 66) = 0;
      *(v3 + 67) = v16;
      *(a1 + 64) = 1;
      *(v3 + 31) = 1;
      return v6;
    }

    v7 = a1;
    v9 = sub_1819360C0(*(v2 + 112));
  }

  else
  {
    v6 = v5[12];
    if (v6)
    {
      return v6;
    }

    v7 = a1;
    v8 = *(v2 + 112);
    if (v5[46] <= v5[50])
    {
      v9 = sub_1818D8DD8(v8);
    }

    else
    {
      v9 = sub_181936438(v8);
    }
  }

  v6 = v9;
  a1 = v7;
  if (!v6)
  {
    goto LABEL_12;
  }

  return v6;
}

void *sub_1818D195C(void **a1, uint64_t a2, uint64_t a3, int *a4, unsigned int a5, unsigned int **a6)
{
  v8 = a3;
  *v270 = 0;
  v269 = 0;
  v267 = 0u;
  v268 = 0u;
  v266 = 0;
  v10 = *a1;
  if (*(a1 + 13))
  {
    result = sub_1818BB5B0(*a1, a2, a3, a4);
    v13 = 0;
    v14 = 0;
    goto LABEL_51;
  }

  DWORD1(v267) = 0;
  if (a3 && (*(a3 + 5) & 2) != 0 && !*(a3 + 80))
  {
    v16 = *(a3 + 32);
    *(a3 + 32) = 0;
    sub_1818BB408(v10, a3, 1, a4);
    v8 = 0;
    if ((*(a2 + 35) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v18 = *(a2 + 72);
    v19 = (*a1)[4];
    if (v18)
    {
      v20 = (v19 + 24);
      v21 = 0xFFFFFFFF00000000;
      do
      {
        v22 = *v20;
        v20 += 4;
        v21 += 0x100000000;
      }

      while (v22 != v18);
      v23 = v21 >> 32;
    }

    else
    {
      v23 = -32768;
    }

    v17 = (v19 + 32 * v23);
    goto LABEL_15;
  }

  v16 = 0;
  if (*(a2 + 35))
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = (a2 + 72);
LABEL_15:
  v26 = sub_1818CA520(a1, 0, *(a2 + 8), *v17);
  v27 = *(a2 + 24);
  if (v27)
  {
    v28 = *a1;
    if ((*a1)[103] || (v29 = *(v27 + 44) - 1, (*(v27 + 44) = v29) == 0))
    {
      sub_18194E094(v28, v27, v24, v25);
    }
  }

  *(a2 + 24) = v26;
  *(a2 + 33) |= 0x400u;
  if (!v26)
  {
    goto LABEL_48;
  }

  ++*(v26 + 44);
  if ((*(a2 + 33) & 2) == 0)
  {
    goto LABEL_30;
  }

  v30 = *(v26 + 16);
  if (!v30)
  {
LABEL_29:
    sub_181910730(a1, "no such index: %s", *(a2 + 48));
    v14 = 0;
    v13 = 0;
    *(a1 + 43) |= 8u;
    goto LABEL_49;
  }

LABEL_22:
  v31 = *v30;
  for (i = *(a2 + 48); *v31 != *i; ++i)
  {
    if (byte_181A20298[*v31] != byte_181A20298[*i])
    {
      v30 = *(v30 + 40);
      if (!v30)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_24:
    ++v31;
  }

  if (*v31)
  {
    goto LABEL_24;
  }

  *(a2 + 56) = v30;
LABEL_30:
  v33 = *(v26 + 96);
  v34 = *(v10 + 32);
  if (v33)
  {
    v35 = (v34 + 24);
    v36 = -1;
    do
    {
      v37 = *v35;
      v35 += 4;
      ++v36;
    }

    while (v37 != v33);
  }

  else
  {
    v36 = -32768;
  }

  v38 = *a1;
  v39 = (*a1)[66];
  if (v39 && !v38[197] && !*(a1 + 302))
  {
    v53 = v39(*(v38 + 67), 18, *v26, 0, *(v34 + 32 * v36), a1[46]);
    if (v53 == 1)
    {
      v54 = 23;
      sub_181910730(a1, "not authorized");
    }

    else
    {
      if ((v53 & 0xFFFFFFFD) == 0)
      {
        if (!v53)
        {
          goto LABEL_38;
        }

LABEL_48:
        v14 = 0;
        v13 = 0;
        goto LABEL_49;
      }

      v54 = 1;
      sub_181910730(a1, "authorizer malfunction");
    }

    v14 = 0;
    v13 = 0;
    *(a1 + 6) = v54;
    goto LABEL_49;
  }

LABEL_38:
  v259 = *(v26 + 48);
  if ((*(v26 + 88) || (v41 = *((*a1)[4] + 56)) != 0 && *(v41 + 64)) && !*(a1 + 42))
  {
    v40 = sub_181980B5C(a1, v26, 128, 0, &v266);
  }

  else
  {
    v40 = 0;
    v266 = 0;
  }

  v257 = *(v26 + 63);
  if ((v257 == 1 || *(v26 + 54) <= 0) && sub_181960D84(a1, v26))
  {
    goto LABEL_48;
  }

  if (sub_181980528(a1, v26, v40))
  {
    goto LABEL_48;
  }

  v45 = sub_1818E7DFC(a1);
  if (!v45)
  {
    goto LABEL_48;
  }

  v256 = v26;
  v253 = v16;
  if (!*(a1 + 30))
  {
    *(v45 + 268) |= 0x10u;
  }

  v251 = v40;
  v252 = v45;
  v46 = (v8 | v40) != 0;
  if (a1[19])
  {
    v47 = a1[19];
  }

  else
  {
    v47 = a1;
  }

  v48 = *(v47 + 116);
  v49 = 1 << v36;
  if ((v48 & (1 << v36)) == 0)
  {
    *(v47 + 116) = v48 | v49;
    if (v36 == 1)
    {
      sub_1819108F4(v47);
    }
  }

  *(v47 + 112) |= v49;
  *(v47 + 32) |= v46;
  v50 = v256;
  if (!a4 && v8 && !v251 && sub_1818F75F0(a1, v256, v8, a5, v36))
  {
    v51 = 0;
    v14 = 0;
    v13 = 0;
    v16 = v253;
LABEL_80:
    if (!*(a1 + 30) && !a1[20] && a1[18])
    {
      v52 = v51;
      sub_18198590C(a1);
      v51 = v52;
    }

    if (v51)
    {
      sub_181980A28(v252, v51, "rows inserted", v25);
    }

    goto LABEL_49;
  }

  v55 = sub_181987B00(a1, v36, v256);
  v56 = *(a1 + 15);
  v57 = *(v256 + 54);
  v58 = v56 + 1 + v57;
  *(a1 + 15) = v58;
  v237 = v56 + 1;
  v250 = v56 + 1;
  v16 = v253;
  if (*(v256 + 63) == 1)
  {
    v250 = v56 + 2;
    *(a1 + 15) = v58 + 1;
  }

  v236 = v55;
  v59 = (*(v256 + 48) & 0x440) == 0;
  if (a4)
  {
    v242 = (*(v256 + 48) & 0x440) == 0;
    v13 = sub_18190C56C(v10, 4 * v57, 0x100004052888210);
    if (!v13)
    {
      v14 = 0;
      goto LABEL_49;
    }

    v60 = *a4;
    if (*a4 >= 1)
    {
      v61 = 0;
      v62 = a4 + 2;
      v63 = *(v256 + 8);
      v64 = *(v256 + 54);
      v65 = v256 + 104;
      if (v64 <= 1)
      {
        v66 = 1;
      }

      else
      {
        v66 = v64;
      }

      v67 = -1;
      v59 = v242;
      v254 = v13;
      v228 = v66;
      while (1)
      {
        v68 = *&v62[2 * v61];
        if (v68 && (v69 = *v68) != 0)
        {
          v70 = 0;
          v71 = v68 + 1;
          do
          {
            v70 += byte_181A20298[v69];
            v72 = *v71++;
            v69 = v72;
          }

          while (v72);
        }

        else
        {
          v70 = 0;
        }

        j = *(v65 + (v70 & 0xF));
        v74 = v63 + 16 * j;
        if (*(v74 + 11) != v70)
        {
LABEL_110:
          for (j = 0; j != v66; ++j)
          {
            v77 = v63 + 16 * j;
            if (*(v77 + 11) == v70)
            {
              v78 = *v77;
              for (k = *&v62[2 * v61]; ; ++k)
              {
                if (*v78 == *k)
                {
                  if (!*v78)
                  {
                    goto LABEL_118;
                  }
                }

                else if (byte_181A20298[*v78] != byte_181A20298[*k])
                {
                  break;
                }

                ++v78;
              }
            }
          }

          v243 = v60;
          if (sub_18191882C(v68) && (v259 & 0x80) == 0)
          {
            v59 = 0;
            v67 = v61;
            v13 = v254;
            v62 = a4 + 2;
            v66 = v228;
            v65 = v256 + 104;
            v60 = v243;
            goto LABEL_126;
          }

          sub_181910730(a1, "table %S has no column named %s", (a2 + 8), v68);
          v14 = 0;
          *(a1 + 43) |= 8u;
LABEL_253:
          v16 = v253;
          v13 = v254;
          goto LABEL_49;
        }

        v75 = *v74;
        for (m = *&v62[2 * v61]; *v75 != *m; ++m)
        {
          if (byte_181A20298[*v75] != byte_181A20298[*m])
          {
            goto LABEL_110;
          }

LABEL_106:
          ++v75;
        }

        if (*v75)
        {
          goto LABEL_106;
        }

LABEL_118:
        v13 = v254;
        v80 = j;
        if (!*(v254 + j))
        {
          *(v254 + j) = v61 + 1;
        }

        v81 = v63 + 16 * j;
        if ((*(v81 + 14) & 0x60) != 0)
        {
          sub_181910730(a1, "cannot INSERT into generated column %s", *v81);
          v14 = 0;
          v16 = v253;
          goto LABEL_49;
        }

        if (v80 == *(v256 + 52))
        {
          v67 = v61;
        }

        if (v61 != v80)
        {
          v59 = 0;
        }

        v60 = *a4;
LABEL_126:
        if (++v61 >= v60)
        {
          v16 = v253;
          v50 = v256;
          goto LABEL_139;
        }
      }
    }

    v67 = -1;
    v59 = v242;
  }

  else
  {
    v13 = 0;
    v67 = -1;
  }

LABEL_139:
  v82 = v250 + 1;
  if (!v8)
  {
    v87 = 0uLL;
    v265 = 0u;
    v264 = 0u;
    v263 = 0u;
    v262 = a1;
    if (v16)
    {
      v88 = v67;
      v230 = *v16;
      if (sub_18195EDEC(&v262, v16))
      {
        sub_1818BB5B0(v10, a2, v89, v90);
        v14 = 0;
        goto LABEL_50;
      }

      v67 = v88;
      v82 = v250 + 1;
      v91 = v230;
    }

    else
    {
      v91 = 0;
    }

    v224 = 0;
    v225 = 1;
    v227 = -1;
    goto LABEL_181;
  }

  v244 = v59;
  v240 = v250 + 1;
  v234 = v67;
  v83 = *(v8 + 40);
  v255 = v13;
  if (*v83 == 1 && (*(v83 + 33) & 0x40) != 0 && !*(v8 + 80))
  {
    v94 = (v83 + 8);
    v95 = *(v83 + 72);
    v224 = v95[4];
    DWORD1(v267) = v95[3];
    v231 = **(*v95 + 32);
    sub_18195AD8C(a1, 0, "SCAN %S", v94);
    if (v244 && v231 == *(v50 + 54))
    {
      v250 = v224 - 1;
      v237 = v224 - 1 - (*(v50 + 63) == 1);
      v240 = v224;
    }
  }

  else
  {
    v84 = (*(a1 + 15) + 1);
    *(a1 + 15) = v84;
    v229 = *(v252 + 144);
    sub_1818A2964(v252, 11, v84, 0, (v229 + 1));
    LOBYTE(v267) = 13;
    *(&v267 + 4) = v84;
    *(&v268 + 1) = 0;
    v85 = v250 + 1;
    if (!v244)
    {
      v85 = 0;
    }

    v86 = *(v50 + 54);
    HIDWORD(v267) = v85;
    LODWORD(v268) = v86;
    if (sub_1818A9A10(a1, v8, &v267) || *(a1 + 13))
    {
      v14 = 0;
      v13 = v255;
      goto LABEL_49;
    }

    v224 = HIDWORD(v267);
    sub_1818A2964(v252, 68, v84, 0, 0);
    v92 = *(v252 + 24);
    *(v92 + 31) = 0;
    *(v92 + 44) = 0;
    if (*(*v252 + 103))
    {
      v93 = &byte_1EA831A58;
    }

    else
    {
      v93 = (*(v252 + 136) + 40 * v229);
    }

    v13 = v255;
    v50 = v256;
    *(v93 + 2) = *(v252 + 144);
    v231 = **(v8 + 32);
  }

  if (v251 || sub_181987C40(a1, v36, v50))
  {
    v227 = *(a1 + 14);
    *(a1 + 14) = v227 + 1;
    v96 = *(a1 + 31);
    if (v96)
    {
      *(a1 + 31) = v96 - 1;
      v97 = *(a1 + (v96 - 1) + 46);
      if (v96 != 1)
      {
        v245 = *(a1 + (v96 - 1) + 46);
        v98 = v96 - 2;
        *(a1 + 31) = v98;
        v221 = *(a1 + v98 + 46);
        goto LABEL_170;
      }

      v99 = *(a1 + 15);
    }

    else
    {
      v99 = *(a1 + 15) + 1;
      v97 = v99;
    }

    v245 = v97;
    v221 = v99 + 1;
    *(a1 + 15) = v99 + 1;
LABEL_170:
    sub_1818A2964(v252, 117, v227, v231, 0);
    v226 = sub_1818A2964(v252, 12, DWORD1(v267), 0, 0);
    sub_1818A2964(v252, 97, v224, v231, v245);
    sub_1818A2964(v252, 127, v227, v221, 0);
    sub_1818A2964(v252, 128, v227, v245, v221);
    sub_1818A2964(v252, 9, 0, v226, 0);
    if (*(*v252 + 103))
    {
      v100 = &byte_1EA831A58;
    }

    else
    {
      v100 = (*(v252 + 136) + 40 * v226);
    }

    v13 = v255;
    v50 = v256;
    v67 = v234;
    *(v100 + 2) = *(v252 + 144);
    if (v245)
    {
      v101 = *(a1 + 31);
      if (v101 <= 7)
      {
        *(a1 + 31) = v101 + 1;
        *(a1 + v101 + 46) = v245;
      }
    }

    if (v221 && (v102 = *(a1 + 31), v102 <= 7))
    {
      v225 = 0;
      *(a1 + 31) = v102 + 1;
      *(a1 + v102 + 46) = v221;
    }

    else
    {
      v225 = 0;
    }
  }

  else
  {
    v225 = 1;
    v227 = 0;
    v67 = v234;
  }

  v82 = v240;
  v91 = v231;
LABEL_181:
  v241 = v82;
  if (!a4 && v91 >= 1)
  {
    v103 = *(v50 + 52);
    v104 = *(v50 + 48);
    if ((v103 & 0x80000000) == 0 && *(v50 + 52) && (v104 & 0x60) != 0)
    {
      v105 = *(v50 + 8);
      if (v103 < 2)
      {
        v106 = *(v50 + 52);
        goto LABEL_192;
      }

      v107 = 0;
      v106 = *(v50 + 52) & 1;
      v108 = (v105 + 16 * v103 - 2);
      v109 = *(v50 + 52) & 0x7FFE;
      v110 = *(v50 + 52);
      do
      {
        v110 -= (*v108 & 0x60) != 0;
        v107 -= (*(v108 - 8) & 0x60) != 0;
        v108 -= 16;
        v109 -= 2;
      }

      while (v109);
      v67 = v107 + v110;
      v111 = (*(v50 + 52) & 0x7FFE) == v103;
      LODWORD(v103) = v107 + v110;
      if (!v111)
      {
LABEL_192:
        v112 = v106 + 1;
        v113 = (v105 + 16 * v106 - 2);
        v67 = v103;
        do
        {
          v114 = *v113;
          v113 -= 8;
          v67 -= (v114 & 0x60) != 0;
          --v112;
        }

        while (v112 > 1);
      }
    }

    else
    {
      v67 = *(v50 + 52);
    }

    v115 = 0;
    v116 = *(v50 + 54);
    if ((v104 & 0x62) != 0 && v116 >= 1)
    {
      v117 = *(v50 + 8);
      if (v116 < 5)
      {
        v118 = 0;
        v115 = 0;
        goto LABEL_210;
      }

      if (v116 < 0x11)
      {
        v115 = 0;
        v118 = 0;
        goto LABEL_205;
      }

      v119 = 16;
      if ((*(v50 + 54) & 0xF) != 0)
      {
        v119 = *(v50 + 54) & 0xF;
      }

      v118 = v116 - v119;
      v120 = (v117 + 142);
      v121 = 0uLL;
      v122.i64[0] = 0x62006200620062;
      v122.i64[1] = 0x62006200620062;
      v123.i64[0] = 0x100000001;
      v123.i64[1] = 0x100000001;
      v124 = *(v50 + 54);
      v125 = 0uLL;
      v126 = 0uLL;
      v127 = 0uLL;
      do
      {
        v128.i16[0] = *(v120 - 64);
        v128.i16[1] = *(v120 - 56);
        v128.i16[2] = *(v120 - 48);
        v128.i16[3] = *(v120 - 40);
        v128.i16[4] = *(v120 - 32);
        v128.i16[5] = *(v120 - 24);
        v128.i16[6] = *(v120 - 16);
        v128.i16[7] = *(v120 - 8);
        v129.i16[0] = *v120;
        v129.i16[1] = v120[8];
        v129.i16[2] = v120[16];
        v129.i16[3] = v120[24];
        v129.i16[4] = v120[32];
        v129.i16[5] = v120[40];
        v129.i16[6] = v120[48];
        v129.i16[7] = v120[56];
        v130 = vtstq_s16(v128, v122);
        v131 = vtstq_s16(v129, v122);
        v125 = vaddq_s32(v125, vandq_s8(vmovl_high_u16(v130), v123));
        v121 = vaddq_s32(v121, vandq_s8(vmovl_u16(*v130.i8), v123));
        v127 = vaddq_s32(v127, vandq_s8(vmovl_high_u16(v131), v123));
        v126 = vaddq_s32(v126, vandq_s8(vmovl_u16(*v131.i8), v123));
        v124 -= 16;
        v120 += 128;
      }

      while (v119 != v124);
      v87 = vaddq_s32(vaddq_s32(v126, v121), vaddq_s32(v127, v125));
      v87.n128_u32[0] = vaddvq_s32(v87);
      v115 = v87.n128_u32[0];
      v50 = v256;
      if (v119 >= 5)
      {
LABEL_205:
        v132 = v116 & 3;
        if ((v116 & 3) == 0)
        {
          v132 = 4;
        }

        v133 = v117 + 16 * v118;
        v134 = v132 + v118;
        v118 = v116 - v132;
        v87 = v115;
        v135 = (v133 + 46);
        v136 = v134 - v116;
        v137.i64[0] = 0x100000001;
        v137.i64[1] = 0x100000001;
        do
        {
          v138.i16[0] = *(v135 - 16);
          v138.i16[1] = *(v135 - 8);
          v138.i16[2] = *v135;
          v138.i16[3] = v135[8];
          v87 = vaddq_s32(v87, vandq_s8(vmovl_u16(vtst_s16(v138, 0x62006200620062)), v137));
          v135 += 32;
          v136 += 4;
        }

        while (v136);
        v87.n128_u32[0] = vaddvq_s32(v87);
        v115 = v87.n128_u32[0];
      }

LABEL_210:
      v139 = (v117 + 16 * v118 + 14);
      v140 = v116 - v118;
      do
      {
        v141 = *v139;
        v139 += 8;
        if ((v141 & 0x62) != 0)
        {
          ++v115;
        }

        --v140;
      }

      while (v140);
    }

    if (v91 != v116 - v115)
    {
      sub_181910730(a1, "table %S has %d columns but %d values were supplied");
LABEL_231:
      v14 = 0;
      goto LABEL_49;
    }
  }

  if (a4 && v91 != *a4)
  {
    sub_181910730(a1, "%d values for %d columns");
    goto LABEL_231;
  }

  v235 = v67;
  if ((*(v10 + 52) & 1) == 0 || *(a1 + 30) || a1[20] || *(a1 + 40))
  {
    v220 = 0;
  }

  else
  {
    v204 = *(a1 + 15);
    v205 = (v204 + 1);
    *(a1 + 15) = v205;
    v220 = v204 + 1;
    sub_1818A2964(v252, 71, 0, v205, 0);
  }

  v232 = v91;
  v254 = v13;
  if (v257 == 2)
  {
    v14 = 0;
  }

  else
  {
    v142 = sub_1818D348C(a1, v50, 0x71u, 0, 0xFFFFFFFFLL, 0, &v270[1], v270);
    v143 = sub_181929E8C(v10, 4 * v142 + 8, 0x100004052888210);
    v14 = v143;
    if (!v143)
    {
      v13 = v254;
      goto LABEL_49;
    }

    v144 = *(a1 + 15);
    if (v142 < 1)
    {
      v146 = 0;
    }

    else
    {
      v145 = (v50 + 16);
      v146 = v142;
      v147 = v142;
      v148 = v143;
      do
      {
        v149 = *v145;
        v150 = v144 + 1;
        *(a1 + 15) = v150;
        *v148++ = v150;
        v144 = *(a1 + 15) + *(v149 + 96);
        *(a1 + 15) = v144;
        v145 = (v149 + 40);
        --v147;
      }

      while (v147);
    }

    v151 = v144 + 1;
    *(a1 + 15) = v151;
    *(v143 + v146) = v151;
  }

  if (!a6)
  {
LABEL_246:
    if (v225)
    {
      v16 = v253;
      v156 = v256;
      if (v8)
      {
        v157 = sub_1818A2964(v252, 12, DWORD1(v267), 0, 0);
        v218 = v157;
        if ((v235 & 0x80000000) != 0)
        {
          v219 = v157;
        }

        else
        {
          v158 = v157;
          sub_1818A2964(v252, 80, v235 + v224, v250, 0);
          v219 = v158;
        }
      }

      else
      {
        v218 = 0;
        v219 = 0;
      }

      v159 = a5;
    }

    else
    {
      v218 = sub_1818A2964(v252, 36, v227, 0, 0);
      v219 = *(v252 + 144);
      v159 = a5;
      v16 = v253;
      v156 = v256;
    }

    LODWORD(v160) = *(v156 + 54);
    if (v160 >= 1)
    {
      v161 = 0;
      v162 = 0;
      v238 = 0;
      v217 = v16 + 2;
      v163 = v241;
      do
      {
        if (v162 == *(v156 + 52))
        {
          goto LABEL_259;
        }

        v167 = *(v156 + 8);
        v168 = *(v167 + v161 + 14);
        if ((v168 & 0x62) != 0)
        {
          ++v238;
          if ((v168 & 0x20) != 0)
          {
            LODWORD(v163) = v163 - 1;
            goto LABEL_260;
          }

          if ((v168 & 0x40) != 0)
          {
            if ((v266 & 1) == 0)
            {
              goto LABEL_260;
            }

LABEL_259:
            v246 = v163;
            v164 = v162;
            v165 = v156;
            v166 = v161;
            sub_1818A2964(v252, 76, v163, 0, 0);
            LODWORD(v163) = v246;
            v161 = v166;
            v156 = v165;
            v162 = v164;
            v16 = v253;
            v159 = a5;
            goto LABEL_260;
          }

          if (!a4)
          {
            v169 = *(v167 + v161 + 12);
            v222 = v161;
            if (!v169)
            {
              goto LABEL_294;
            }

            if (*(v156 + 63))
            {
              goto LABEL_294;
            }

            v170 = *(v156 + 80);
            if (!v170)
            {
              goto LABEL_294;
            }

            goto LABEL_305;
          }
        }

        else if (!a4)
        {
          if (!v232)
          {
            v169 = *(v167 + v161 + 12);
            v222 = v161;
            if (!v169 || *(v156 + 63))
            {
LABEL_294:
              v175 = 0;
              goto LABEL_295;
            }

            v170 = *(v156 + 80);
            if (v170)
            {
LABEL_305:
              if (*v170 < v169)
              {
                goto LABEL_306;
              }

              v175 = *&v170[6 * (v169 - 1) + 2];
            }

            else
            {
LABEL_306:
              v175 = 0;
            }

            v16 = v253;
            v156 = v256;
LABEL_295:
            v247 = v163;
            v176 = a1;
            v177 = v163;
LABEL_296:
            sub_18195CD44(v176, v175, v177);
            goto LABEL_297;
          }

          v172 = (v162 - v238);
          goto LABEL_278;
        }

        v171 = *(v254 + v162);
        if (!v171)
        {
          v174 = *(v167 + v161 + 12);
          v222 = v161;
          if (v174 && !*(v156 + 63) && (v181 = *(v156 + 80)) != 0 && *v181 >= v174)
          {
            v175 = *&v181[6 * (v174 - 1) + 2];
          }

          else
          {
            v175 = 0;
          }

          v176 = a1;
          v177 = v163;
          v247 = v163;
          goto LABEL_296;
        }

        v172 = (v171 - 1);
LABEL_278:
        if ((v225 & 1) == 0)
        {
          v173 = v163;
          v223 = v161;
          sub_1818A2964(v252, 94, v227, v172, v163);
          LODWORD(v163) = v173;
          v161 = v223;
LABEL_300:
          v159 = a5;
          v156 = v256;
          goto LABEL_260;
        }

        if (!v8)
        {
          v222 = v161;
          v216 = *&v217[6 * v172];
          v247 = v163;
          v178 = sub_1818B8080(a1, v216, v163);
          LODWORD(v163) = v247;
          v156 = v256;
          if (v178 != v247)
          {
            if ((*(v216 + 4) & 0x400000) != 0)
            {
              v179 = 80;
            }

            else
            {
              v179 = 81;
            }

            sub_1818A2964(v252, v179, v178, v247, 0);
LABEL_297:
            LODWORD(v163) = v247;
          }

          v159 = a5;
          v161 = v222;
          goto LABEL_260;
        }

        if (v224 != v241)
        {
          v248 = v163;
          v180 = v161;
          sub_1818A2964(v252, 81, v172 + v224, v163, 0);
          LODWORD(v163) = v248;
          v161 = v180;
          goto LABEL_300;
        }

        v156 = v256;
LABEL_260:
        ++v162;
        v163 = (v163 + 1);
        v160 = *(v156 + 54);
        v161 += 16;
      }

      while (v162 < v160);
    }

    v239 = *(a1 + 18) - 1;
    *(a1 + 18) = v239;
    v13 = v254;
    if (v266)
    {
      v182 = sub_18195883C(a1, v160 + 1);
      v249 = v182;
      if ((v235 & 0x80000000) != 0)
      {
        v184 = v252;
        v185 = 71;
        v186 = 0xFFFFFFFFLL;
        v187 = v182;
      }

      else
      {
        if (v225)
        {
          sub_181956EF4(a1, *&v16[6 * v235 + 2], v182);
          v183 = v252;
        }

        else
        {
          v183 = v252;
          sub_1818A2964(v252, 94, v227, v235, v182);
        }

        v233 = sub_1818A2964(v183, 52, v249, 0, 0);
        sub_1818A2964(v183, 71, 0xFFFFFFFFLL, v249, 0);
        v188 = v183[36];
        if (*(*v183 + 103))
        {
          v189 = &byte_1EA831A58;
        }

        else
        {
          v189 = (*(v252 + 136) + 40 * v233);
        }

        v13 = v254;
        *(v189 + 2) = v188;
        v184 = v252;
        v185 = 13;
        v186 = v249;
        v187 = 0;
      }

      sub_1818A2964(v184, v185, v186, v187, 0);
      sub_1818A2964(v252, 80, v250 + 1, v249 + 1, (*(v156 + 56) - 1));
      if ((*(v156 + 48) & 0x60) != 0)
      {
        sub_181986E24(a1, v249 + 1, v156);
      }

      if (v257 != 2)
      {
        sub_18195E17C(v252, v156, v249 + 1);
      }

      sub_1819813E4(a1, v251, 128, 0, 1, v156, v249 + ~*(v156 + 54), a5, v190, v239);
      v191 = *(v156 + 54);
      if (*(v156 + 54))
      {
        v159 = a5;
        if (*(a1 + 11) <= v191)
        {
          *(a1 + 11) = v191 + 1;
          *(a1 + 12) = v249;
        }
      }

      else
      {
        v159 = a5;
        if (v249)
        {
          v192 = *(a1 + 31);
          if (v192 <= 7)
          {
            *(a1 + 31) = v192 + 1;
            *(a1 + v192 + 46) = v249;
          }
        }
      }
    }

    if (v257 == 2)
    {
LABEL_375:
      if (v220)
      {
        sub_1818A2964(v252, 86, v220, 1, 0);
        v159 = a5;
      }

      v213 = v239;
      if (v251)
      {
        sub_1819813E4(a1, v251, 128, 0, 2, v156, v241 - *(v156 + 54) - 2, v159, v87, v239);
        v213 = v239;
      }

      sub_181958CD8(v252, v213);
      if (v225)
      {
        if (v8)
        {
          sub_1818A2964(v252, 9, 0, v219, 0);
          if (*(*v252 + 103))
          {
            v214 = &byte_1EA831A58;
          }

          else
          {
            v214 = (*(v252 + 136) + 40 * v218);
          }

          v51 = v220;
          *(v214 + 2) = *(v252 + 144);
        }

        else
        {
          v51 = v220;
        }
      }

      else
      {
        sub_1818A2964(v252, 39, v227, v219, 0);
        if (*(*v252 + 103))
        {
          v215 = &byte_1EA831A58;
        }

        else
        {
          v215 = (*(v252 + 136) + 40 * v218);
        }

        *(v215 + 2) = *(v252 + 144);
        sub_1818A2964(v252, 122, v227, 0, 0);
        v51 = v220;
      }

      goto LABEL_80;
    }

    v193 = v252;
    if (*(v156 + 63) == 1)
    {
      sub_1818A2964(v252, 75, 0, v237, 0);
    }

    if ((v235 & 0x80000000) != 0)
    {
      if (*(v156 + 63) != 1 && (v259 & 0x80) == 0)
      {
        sub_1818A2964(v252, 127, v270[1], v250, v236);
        v195 = v236;
        v196 = 1;
        if (v236 < 1)
        {
          goto LABEL_354;
        }

        goto LABEL_353;
      }

      v200 = v252;
      v201 = 75;
      v202 = 0;
      v203 = v250;
    }

    else
    {
      if (v225)
      {
        if (!v8)
        {
          v194 = *&v16[6 * v235 + 2];
          if (*v194 == 122 && *(v256 + 63) != 1)
          {
            sub_1818A2964(v252, 127, v270[1], v250, v236);
            v195 = v236;
            v196 = 1;
            v16 = v253;
            v156 = v256;
            if (v236 < 1)
            {
              goto LABEL_354;
            }

            goto LABEL_353;
          }

          sub_181956EF4(a1, v194, v250);
          v193 = v252;
          v16 = v253;
          v156 = v256;
        }
      }

      else
      {
        sub_1818A2964(v252, 94, v227, v235, v250);
      }

      if (*(v156 + 63) == 1)
      {
        sub_1818A2964(v193, 51, v250, (*(v193 + 144) + 2), 0);
      }

      else
      {
        v197 = v193;
        v198 = sub_1818A2964(v193, 52, v250, 0, 0);
        sub_1818A2964(v197, 127, v270[1], v250, v236);
        if (*(*v197 + 103))
        {
          v199 = &byte_1EA831A58;
        }

        else
        {
          v199 = (*(v252 + 136) + 40 * v198);
        }

        *(v199 + 2) = v197[36];
        v193 = v252;
        v16 = v253;
        v156 = v256;
      }

      v200 = v193;
      v201 = 13;
      v202 = v250;
      v203 = 0;
    }

    sub_1818A2964(v200, v201, v202, v203, 0);
    v196 = 0;
    v195 = v236;
    if (v236 < 1)
    {
LABEL_354:
      if ((*(v156 + 48) & 0x60) != 0)
      {
        sub_181986E24(a1, v250 + 1, v156);
      }

      if (*(v156 + 63) == 1)
      {
        for (n = *(v156 + 80); n; n = n[5])
        {
          if (*n == v10)
          {
            break;
          }
        }

        sub_181980924(a1, v156);
        v207 = sub_1818A2964(v252, 7, 1, (*(v156 + 54) + 2), v237);
        sub_1818B49F8(v252, v207, n, 4294967285);
        v208 = *(v252 + 144);
        v159 = a5;
        if (v208 >= 1)
        {
          if (a5 == 11)
          {
            v209 = 2;
          }

          else
          {
            v209 = a5;
          }

          *(*(v252 + 136) + 40 * v208 - 38) = v209;
        }

        v210 = a1[19];
        if (!v210)
        {
          v210 = a1;
        }

        *(v210 + 33) = 1;
        v13 = v254;
        v156 = v256;
      }

      else
      {
        v260 = v196;
        LODWORD(v262) = 0;
        v211 = v270[1];
        v258 = v270[0];
        sub_1818D3738(a1, v156, v14, v270[1], v270[0], v237, 0, (v235 & 0x80000000) == 0, a5, v239, &v262, 0, a6);
        if ((*(v10 + 49) & 0x40) != 0)
        {
          sub_1818D7680(a1, v156, 0, v237, 0, 0);
        }

        if (v262)
        {
          v212 = *(v252 + 376) == 0;
        }

        else
        {
          v212 = 1;
        }

        sub_1818D80A8(a1, v156, v211, v258, v237, v14, 0, v260, v212);
        v159 = a5;
        v13 = v254;
      }

      goto LABEL_375;
    }

LABEL_353:
    sub_1818A2964(a1[2], 159, v195, v250, 0);
    goto LABEL_354;
  }

  v13 = v254;
  v152 = *(v256 + 63);
  v16 = v253;
  if (v152 == 2)
  {
    sub_181910730(a1, "cannot UPSERT a view");
  }

  else if (v152 == 1)
  {
    sub_181910730(a1, "UPSERT not implemented for virtual table %s");
  }

  else if (!sub_181962290(a1, *a6))
  {
    v154 = v270[0];
    v153 = v270[1];
    *(a2 + 36) = v270[1];
    v155 = a6;
    while (1)
    {
      v155[8] = a2;
      *(v155 + 18) = v241;
      *(v155 + 19) = v153;
      *(v155 + 20) = v154;
      if (*v155)
      {
        if (sub_181987D5C(a1, a2, v155, a6))
        {
          goto LABEL_253;
        }
      }

      v155 = v155[4];
      if (!v155)
      {
        goto LABEL_246;
      }
    }
  }

LABEL_49:
  result = sub_1818BB5B0(v10, a2, v24, v25);
  if (v16)
  {
LABEL_50:
    result = sub_18194E5B8(v10, v16);
  }

LABEL_51:
  if (a6)
  {
    result = sub_18194E51C(v10, a6);
  }

  if (v8)
  {
    result = sub_1818BB408(v10, v8, 1, v12);
  }

  if (a4)
  {
    v42 = *a4;
    if (*a4 >= 1)
    {
      v43 = 0;
      do
      {
        v44 = *&a4[2 * v43 + 2];
        if (v44)
        {
          sub_181929C84(v10, v44);
          v42 = *a4;
        }

        ++v43;
      }

      while (v43 < v42);
    }

    result = sub_181939EC8(v10, a4);
    if (v13)
    {
      result = sub_181929C84(v10, v13);
    }
  }

  if (v14)
  {
    return sub_181939EC8(v10, v14);
  }

  return result;
}

uint64_t sub_1818D348C(uint64_t *a1, uint64_t a2, unsigned int a3, __int16 a4, uint64_t a5, _BYTE *a6, _DWORD *a7, _DWORD *a8)
{
  v34 = a3;
  if (*(a2 + 63) == 1)
  {
    v8 = 0;
    *a8 = -999;
    *a7 = -999;
    return v8;
  }

  v12 = *a1;
  v13 = *(a2 + 96);
  if (!v13)
  {
    v15 = 4294934528;
    if ((a5 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_38:
    a5 = *(a1 + 14);
    goto LABEL_7;
  }

  v14 = (*(v12 + 32) + 24);
  LODWORD(v15) = -1;
  do
  {
    v16 = *v14;
    v14 += 4;
    v15 = (v15 + 1);
  }

  while (v16 != v13);
  if ((a5 & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_7:
  v17 = a1[2];
  v18 = a5 + 1;
  *a7 = a5;
  if ((*(a2 + 48) & 0x80) != 0 || a6 && !*a6)
  {
    if (*(v12 + 111) || v15 == 1 || !*(*(*(v12 + 32) + 32 * v15 + 8) + 17))
    {
      goto LABEL_16;
    }

    v19 = a8;
    v20 = a7;
    sub_1819570CC(a1, v15, *(a2 + 40), a3 == 113, *a2);
  }

  else
  {
    v19 = a8;
    v20 = a7;
    sub_1818B69D8(a1, a5, v15, a2, a3);
  }

  a7 = v20;
  a8 = v19;
LABEL_16:
  *a8 = v18;
  v21 = *(a2 + 16);
  if (v21)
  {
    v32 = a7;
    v8 = 0;
    do
    {
      v22 = v18 + v8;
      if ((*(v21 + 99) & 3) == 2 && (*(a2 + 48) & 0x80) != 0)
      {
        a4 = 0;
        *v32 = v22;
      }

      if (!a6 || a6[v8 + 1])
      {
        v23 = *(v21 + 88);
        v24 = *(v17 + 144);
        if (*(v17 + 148) <= v24)
        {
          sub_18194C8AC(v17, v34, v22, v23, v15);
        }

        else
        {
          *(v17 + 144) = v24 + 1;
          v25 = *(v17 + 136) + 40 * v24;
          *v25 = v34;
          *(v25 + 2) = 0;
          *(v25 + 4) = v22;
          *(v25 + 8) = v23;
          *(v25 + 12) = v15;
          *(v25 + 1) = 0;
          *(v25 + 24) = 0;
          *(v25 + 32) = 0;
          *(v25 + 16) = 0;
        }

        v26 = a1[2];
        v27 = sub_1819572CC(a1, v21);
        if (v27)
        {
          if (*(*v26 + 103))
          {
            if (!*(*v26 + 824) && (*v27)-- == 1)
            {
              sub_181939EC8(v27[2], v27);
            }
          }

          else
          {
            v29 = *(v26 + 136) + 40 * *(v26 + 144);
            *(v29 - 39) = -8;
            *(v29 - 24) = v27;
          }
        }

        v30 = *(v17 + 144);
        if (v30 >= 1)
        {
          *(*(v17 + 136) + 40 * v30 - 38) = a4;
        }
      }

      ++v8;
      v21 = *(v21 + 40);
    }

    while (v21);
    v18 += v8;
  }

  else
  {
    v8 = 0;
  }

  if (v18 > *(a1 + 14))
  {
    *(a1 + 14) = v18;
  }

  return v8;
}

void sub_1818D3738(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, int a7, int a8, unsigned __int8 a9, int a10, int *a11, uint64_t a12, uint64_t a13)
{
  v13 = a6;
  v14 = a2;
  v15 = a12;
  v352 = *a1;
  v16 = *(a1 + 16);
  v17 = *(a2 + 48);
  if ((v17 & 0x80) != 0)
  {
    v19 = a2 + 16;
    do
    {
      v20 = *v19;
      v21 = *(*v19 + 99) & 3;
      v19 = *v19 + 40;
    }

    while (v21 != 2);
    v360 = v20;
    v18 = *(v20 + 94);
  }

  else
  {
    v360 = 0;
    v18 = 1;
  }

  v337 = v18;
  v363 = a9;
  v366 = *(a1 + 16);
  v351 = a6;
  if ((v17 & 0x800) != 0)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = *(a2 + 54);
    v358 = a6 + 1;
    v46.i64[0] = 0x1000100010001;
    v46.i64[1] = 0x1000100010001;
    v47 = 1;
    while (1)
    {
      v364 = v43;
      if (v45 >= 1)
      {
        break;
      }

LABEL_144:
      v43 = v364;
      v13 = v351;
      if (v42 & 1 | ((v44 | v364) == 0))
      {
        goto LABEL_7;
      }

      v47 = 0;
      v42 = 1;
      if (v364 >= 1)
      {
        v47 = 0;
        if ((*(v14 + 48) & 0x60) != 0)
        {
          sub_181986E24(a1, v358, v14);
          v46.i64[0] = 0x1000100010001;
          v46.i64[1] = 0x1000100010001;
          v47 = 0;
        }
      }
    }

    v355 = v47;
    v48 = 0;
    v49 = 0;
    while (1)
    {
      v50 = *(v14 + 8);
      v51 = v50 + 16 * v49;
      v52 = *(v51 + 8) & 0xF;
      if ((*(v51 + 8) & 0xF) == 0 || v49 == *(v14 + 52))
      {
        goto LABEL_60;
      }

      if (!(v42 & 1 | ((*(v51 + 14) & 0x60) == 0)))
      {
        ++v44;
        goto LABEL_60;
      }

      if (v15 && (*(v51 + 14) & 0x60) == 0 && (*(v15 + 4 * v49) & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      if (v52 == 11)
      {
        v52 = 2;
      }

      v53 = a9 == 11 ? v52 : a9;
      if (v53 == 5)
      {
        v53 = (v42 & 1) != 0 || !*(v51 + 12) ? 2 : 5;
      }

      else if ((((*(v51 + 14) & 0x60) == 0) & ~v355) != 0)
      {
        v16 = v366;
        goto LABEL_60;
      }

      v54 = v49;
      if ((v49 & 0x8000) == 0 && (*(v14 + 48) & 0x20) != 0)
      {
        break;
      }

LABEL_103:
      v75 = (v358 + v54);
      if (v53 > 2)
      {
        if (v53 == 3)
        {
          goto LABEL_114;
        }

        if (v53 == 5)
        {
          v77 = *(v366 + 36);
          if (*(v366 + 37) <= v77)
          {
            v87 = sub_18194C8AC(v366, 52, v358 + v54, 0, 0);
            v46.i64[0] = 0x1000100010001;
            v46.i64[1] = 0x1000100010001;
            v77 = v87;
            v79 = *(v51 + 12);
            if (!*(v51 + 12))
            {
              goto LABEL_130;
            }
          }

          else
          {
            *(v366 + 36) = v77 + 1;
            v78 = &v366[17][5 * v77];
            *v78 = 52;
            *(v78 + 4) = v75;
            *(v78 + 8) = 0u;
            *(v78 + 24) = 0u;
            v79 = *(v51 + 12);
            if (!*(v51 + 12))
            {
              goto LABEL_130;
            }
          }

          if (*(v14 + 63) || (v91 = *(v14 + 80)) == 0 || *v91 < v79)
          {
LABEL_130:
            v88 = 0;
            v89 = *a1;
          }

          else
          {
            v92 = *&v91[6 * (v79 - 1) + 2];
            v89 = *a1;
            if (v92)
            {
              v93 = sub_1818C7FEC(*a1, v92, 0, 0);
              v46.i64[0] = 0x1000100010001;
              v46.i64[1] = 0x1000100010001;
              v88 = v93;
            }

            else
            {
              v88 = 0;
            }
          }

          if (*(v89 + 103))
          {
            if (v88)
            {
              goto LABEL_133;
            }
          }

          else
          {
            sub_181956EF4(a1, v88, v75);
            v46.i64[0] = 0x1000100010001;
            v46.i64[1] = 0x1000100010001;
            if (v88)
            {
LABEL_133:
              sub_1819439E0(v89, v88);
              v46.i64[0] = 0x1000100010001;
              v46.i64[1] = 0x1000100010001;
            }
          }

          v90 = &byte_1EA831A58;
          v15 = a12;
          if (!*(*v366 + 103))
          {
            v90 = &v366[17][5 * v77];
          }

          ++v364;
          *(v90 + 2) = *(v366 + 36);
          v14 = a2;
          v16 = v366;
          goto LABEL_60;
        }
      }

      else
      {
        if (v53 == 1)
        {
          goto LABEL_114;
        }

        if (v53 == 2)
        {
          v76 = *(a1 + 152);
          if (!v76)
          {
            v76 = a1;
          }

          *(v76 + 33) = 1;
LABEL_114:
          v80 = sub_1818A8BAC(v352, "%s.%s", *v14, *v51);
          v81 = *(v366 + 36);
          if (*(v366 + 37) <= v81)
          {
            sub_18194C8AC(v366, 69, 1299, v53, v75);
          }

          else
          {
            *(v366 + 36) = v81 + 1;
            v82 = &v366[17][5 * v81];
            *v82 = 0x51300000045;
            *(v82 + 8) = v53;
            *(v82 + 12) = v75;
            *(v82 + 24) = 0;
            *(v82 + 32) = 0;
            *(v82 + 16) = 0;
          }

          v16 = v366;
          v15 = a12;
          v46.i64[0] = 0x1000100010001;
          v46.i64[1] = 0x1000100010001;
          if (*(*v366 + 103))
          {
            if (v80)
            {
              sub_181939EC8(*v366, v80);
              v46.i64[0] = 0x1000100010001;
              v46.i64[1] = 0x1000100010001;
            }
          }

          else
          {
            v83 = &v366[17][5 * *(v366 + 36)];
            *(v83 - 39) = -6;
            *(v83 - 24) = v80;
          }

          v84 = *(v366 + 36);
          if (v84 >= 1)
          {
            *(&v366[17][5 * v84 - 4] - 3) = 1;
          }

          v14 = a2;
          goto LABEL_60;
        }
      }

      v16 = v366;
      v85 = *(v366 + 36);
      if (*(v366 + 37) <= v85)
      {
        sub_18194C8AC(v366, 51, v75, a10, 0);
        v46.i64[0] = 0x1000100010001;
        v46.i64[1] = 0x1000100010001;
      }

      else
      {
        *(v366 + 36) = v85 + 1;
        v86 = &v366[17][5 * v85];
        *v86 = 51;
        *(v86 + 4) = v75;
        *(v86 + 8) = a10;
        *(v86 + 12) = 0;
        *(v86 + 28) = 0;
        *(v86 + 20) = 0;
        *(v86 + 36) = 0;
      }

      v15 = a12;
LABEL_60:
      ++v49;
      --v48;
      if (v49 == v45)
      {
        goto LABEL_144;
      }
    }

    if (!v49)
    {
      v56 = 0;
LABEL_100:
      if ((*(v50 + 16 * ((v49 << 16) >> 16) + 14) & 0x20) != 0)
      {
        v54 = v49 - v56 + *(v14 + 56);
      }

      else
      {
        v54 = v56;
      }

      goto LABEL_103;
    }

    if (v49 >= 5)
    {
      if (v49 >= 0x11)
      {
        v57 = 16;
        if ((v49 & 0xF) != 0)
        {
          v57 = v49 & 0xF;
        }

        v55 = v49 - v57;
        v58 = (v50 + 142);
        v59 = 0uLL;
        v60 = v49;
        v61 = 0uLL;
        do
        {
          v62.i16[0] = *(v58 - 64);
          v62.i16[1] = *(v58 - 56);
          v62.i16[2] = *(v58 - 48);
          v62.i16[3] = *(v58 - 40);
          v62.i16[4] = *(v58 - 32);
          v62.i16[5] = *(v58 - 24);
          v62.i16[6] = *(v58 - 16);
          v62.i16[7] = *(v58 - 8);
          v63.i16[0] = *v58;
          v63.i16[1] = v58[8];
          v63.i16[2] = v58[16];
          v63.i16[3] = v58[24];
          v63.i16[4] = v58[32];
          v63.i16[5] = v58[40];
          v63.i16[6] = v58[48];
          v63.i16[7] = v58[56];
          v59 = vaddq_s16(vbicq_s8(v46, vshrq_n_u16(v62, 5uLL)), v59);
          v61 = vaddq_s16(vbicq_s8(v46, vshrq_n_u16(v63, 5uLL)), v61);
          v60 -= 16;
          v58 += 128;
        }

        while (v57 != v60);
        v56 = vaddvq_s16(vaddq_s16(v61, v59));
        if (v57 < 5)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v56 = 0;
        v55 = 0;
      }

      v64 = 4;
      if ((v49 & 3) != 0)
      {
        v64 = v49 & 3;
      }

      v65 = v50 + 16 * v55;
      v66 = v55 + v48;
      v55 = v49 - v64;
      v67 = v56;
      v68 = (v65 + 46);
      v69 = v64 + v66;
      do
      {
        v70.i16[0] = *(v68 - 16);
        v70.i16[1] = *(v68 - 8);
        v70.i16[2] = *v68;
        v70.i16[3] = v68[8];
        v67 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v70, 5uLL)), v67);
        v68 += 32;
        v69 += 4;
      }

      while (v69);
      v56 = vaddv_s16(v67);
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }

LABEL_97:
    v71 = v55 + v48;
    v72 = (v50 + 16 * v55 + 14);
    do
    {
      v73 = *v72;
      v72 += 8;
      v56 += ((v73 >> 5) & 1) == 0;
    }

    while (!__CFADD__(v71++, 1));
    goto LABEL_100;
  }

LABEL_7:
  v22 = *(v14 + 32);
  if (v22)
  {
    v23 = a1;
    if ((*(v352 + 49) & 2) != 0)
    {
      v349 = 0;
    }

    else
    {
      *(a1 + 68) = ~v13;
      if (*v22 >= 1)
      {
        v24 = 0;
        v349 = 0;
        if (a9 == 11)
        {
          v25 = 2;
        }

        else
        {
          v25 = a9;
        }

        v26 = (v22 + 4);
        while (1)
        {
          v27 = *(v26 - 1);
          if (a12)
          {
            v369[0] = 0;
            v370 = 0u;
            v369[1] = sub_181987278;
            v371 = 0;
            v372 = a12;
            if (v27)
            {
              sub_181959BA0(v369, v27);
              v28 = WORD2(v371);
            }

            else
            {
              v28 = 0;
            }

            if (!a8)
            {
              v28 &= ~2u;
            }

            if (!v28)
            {
              goto LABEL_16;
            }
          }

          if (!v349)
          {
            sub_18195E17C(v16, v14, v351 + 1);
            v349 = 1;
          }

          v29 = *(a1 + 72);
          *(a1 + 72) = v29 - 1;
          if (!v27)
          {
            break;
          }

          v30 = sub_1818C7FEC(v352, v27, 0, 0);
          if (!*(v352 + 103))
          {
            goto LABEL_28;
          }

LABEL_29:
          if (v30)
          {
            sub_1819439E0(v352, v30);
          }

          if (v25 == 4)
          {
            v16 = v366;
            v31 = *(v366 + 36);
            if (*(v366 + 37) <= v31)
            {
              sub_18194C8AC(v366, 9, 0, a10, 0);
            }

            else
            {
              *(v366 + 36) = v31 + 1;
              v32 = &v366[17][5 * v31];
              *v32 = 9;
              *(v32 + 8) = a10;
              *(v32 + 12) = 0;
              *(v32 + 28) = 0;
              *(v32 + 20) = 0;
              *(v32 + 36) = 0;
            }

            v25 = 4;
          }

          else
          {
            v33 = *v26;
            if (v25 == 5)
            {
              v25 = 2;
            }

            v34 = sub_1818E7DFC(a1);
            v35 = v34;
            if (v25 == 2)
            {
              v36 = *(a1 + 152);
              if (!v36)
              {
                v36 = a1;
              }

              *(v36 + 33) = 1;
            }

            v37 = *(v34 + 144);
            if (*(v35 + 148) <= v37)
            {
              v37 = sub_18194C8AC(v35, 70, 275, v25, 0);
            }

            else
            {
              *(v35 + 144) = v37 + 1;
              v38 = *(v35 + 136) + 40 * v37;
              *v38 = 0x11300000046;
              *(v38 + 8) = v25;
              *(v38 + 12) = 0;
              *(v38 + 28) = 0;
              *(v38 + 20) = 0;
              *(v38 + 36) = 0;
            }

            if (!*(*v35 + 103))
            {
              if (v37 < 0)
              {
                v37 = *(v35 + 144) - 1;
              }

              sub_18194CB90(v35, *(v35 + 136) + 40 * v37, v33, 0);
            }

            v39 = *(v35 + 144);
            if (v39 >= 1)
            {
              *(*(v35 + 136) + 40 * v39 - 38) = 3;
            }

            v16 = v366;
          }

          v40 = v16[3];
          v41 = -v29;
          if (*(v40 + 72) + *(v40 + 76) >= 0)
          {
            *(*(v40 + 80) + 4 * v41) = *(v16 + 36);
          }

          else
          {
            sub_18195CB84(v40, v16, v41);
          }

          v14 = a2;
LABEL_16:
          ++v24;
          v26 += 3;
          if (v24 >= *v22)
          {
            goto LABEL_151;
          }
        }

        v30 = 0;
        if (*(v352 + 103))
        {
          goto LABEL_29;
        }

LABEL_28:
        sub_1818ECA90(a1, v30, (v29 - 1), 16);
        goto LABEL_29;
      }

      v349 = 0;
LABEL_151:
      v23 = a1;
      *(a1 + 68) = 0;
      v13 = v351;
    }
  }

  else
  {
    v349 = 0;
    v23 = a1;
  }

  v94 = *(v14 + 16);
  v368 = v94;
  v95 = a3;
  v96 = a13;
  if (!a13)
  {
    goto LABEL_160;
  }

  if (!*a13)
  {
    v100 = 0;
    if (*(a13 + 40))
    {
      v101 = 6;
    }

    else
    {
      v96 = 0;
      v101 = 4;
    }

    v363 = v101;
    goto LABEL_165;
  }

  if (!v94)
  {
LABEL_160:
    v100 = 0;
LABEL_165:
    v345 = 1;
    goto LABEL_166;
  }

  v97 = 0;
  v98 = 0;
  v99 = 0;
  do
  {
    v94 = *(v94 + 40);
    ++v99;
    v98 += 16;
    v97 += 18;
  }

  while (v94);
  LODWORD(v368) = v99;
  if (v352)
  {
    v100 = sub_181929E8C(v352, v97, 3747369572);
    if (!v100)
    {
      return;
    }
  }

  else
  {
    v100 = sub_181902484(v97, 3747369572);
    if (!v100)
    {
      return;
    }
  }

  bzero(v100, v97);
  v114 = 0;
  *(a13 + 48) = v100;
  v115 = a13;
  v23 = a1;
  do
  {
    if (!*v115)
    {
      break;
    }

    v116 = v115[7];
    if (v116)
    {
      v117 = *(v14 + 16);
      v118 = 0;
      if (v117)
      {
        v119 = v117 == v116;
      }

      else
      {
        v119 = 1;
      }

      if (!v119)
      {
        do
        {
          ++v118;
          v117 = *(v117 + 40);
          if (v117)
          {
            v120 = v117 == v116;
          }

          else
          {
            v120 = 1;
          }
        }

        while (!v120);
      }

      if (!*(v100 + v118 + v98))
      {
        *(v100 + v118 + v98) = 1;
        v121 = &v100[2 * v114];
        *v121 = v117;
        *(v121 + 2) = v118;
        ++v114;
      }
    }

    v115 = v115[4];
  }

  while (v115);
  v122 = *(v14 + 16);
  if (v122)
  {
    v123 = 0;
    do
    {
      if (!*(v100 + v123 + v98))
      {
        v124 = &v100[2 * v114];
        *v124 = v122;
        *(v124 + 2) = v123;
        ++v114;
      }

      ++v123;
      v122 = *(v122 + 40);
    }

    while (v122);
  }

  v345 = 0;
LABEL_166:
  v102 = *(v352 + 48);
  if ((v102 & 0x6000) == 0)
  {
    v333 = 0;
    v328 = 0;
    v326 = 0;
    goto LABEL_183;
  }

  if ((v102 & 0x2000) != 0)
  {
    if (!*(v14 + 88) && ((v103 = *(*(*v23 + 32) + 56)) == 0 || !*(v103 + 64)) || v23[42] || (v326 = sub_181980B5C(v23, v14, 129, 0, 0)) == 0)
    {
      v326 = 0;
      if (!sub_1818D6F14(v23, v14, 0, 0))
      {
        goto LABEL_180;
      }
    }
  }

  else
  {
    v326 = 0;
    if (!sub_1818D6F14(v23, v14, 0, 0))
    {
LABEL_180:
      v333 = 0;
      v328 = 0;
      goto LABEL_183;
    }
  }

  v104 = *(v23 + 15) + 1;
  *(v23 + 15) = v104;
  v105 = *(v16 + 36);
  if (*(v16 + 37) <= v105)
  {
    sub_18194C8AC(v16, 71, 0, v104, 0);
  }

  else
  {
    *(v16 + 36) = v105 + 1;
    v106 = &v16[17][5 * v105];
    *v106 = 71;
    *(v106 + 8) = v104;
    *(v106 + 12) = 0;
    *(v106 + 28) = 0;
    *(v106 + 20) = 0;
    *(v106 + 36) = 0;
  }

  v333 = v104;
  v328 = *(v23 + 18) - 1;
  *(v23 + 18) = v328;
LABEL_183:
  v107 = 0;
  v335 = 0;
  if (!a8)
  {
    v339 = 0;
    v331 = 0;
    v332 = 0;
    v108 = 0;
    v330 = 0;
    goto LABEL_282;
  }

  v339 = 0;
  v331 = 0;
  v332 = 0;
  v108 = 0;
  v330 = 0;
  if (v360)
  {
    goto LABEL_282;
  }

  v109 = *(v23 + 18);
  v110 = v109 - 1;
  *(v23 + 18) = v109 - 1;
  v111 = v363;
  if (v363 == 11)
  {
    if (*(v14 + 62) == 11)
    {
      v111 = 2;
    }

    else
    {
      v111 = *(v14 + 62);
    }
  }

  if (v96)
  {
    v107 = v96;
    while (*v107 && *(v107 + 56))
    {
      v107 = *(v107 + 32);
      if (!v107)
      {
        goto LABEL_194;
      }
    }

    if (*(v107 + 40))
    {
      v111 = 6;
    }

    else
    {
      v111 = 4;
    }

    if (v107 == v96)
    {
      v339 = 0;
      goto LABEL_226;
    }

LABEL_194:
    v112 = *(v16 + 36);
    if (*(v16 + 37) <= v112)
    {
      v339 = sub_18194C8AC(v16, 9, 0, 0, 0);
    }

    else
    {
      *(v16 + 36) = v112 + 1;
      v339 = v112;
      v113 = &v16[17][5 * v112];
      *v113 = 9;
      *(v113 + 1) = 0u;
      *(v113 + 17) = 0u;
      *(v113 + 32) = 0;
    }
  }

  else
  {
    v107 = 0;
    v339 = 0;
  }

LABEL_226:
  if (v111 != 5 || v363 == 5)
  {
    v331 = 0;
  }

  else
  {
    v331 = 0;
    if (*(v14 + 16) && !v339)
    {
      v128 = *(v16 + 36);
      if (*(v16 + 37) <= v128)
      {
        v331 = sub_18194C8AC(v16, 9, 0, 0, 0) + 1;
      }

      else
      {
        v331 = v128 + 1;
        *(v16 + 36) = v128 + 1;
        v129 = &v16[17][5 * v128];
        *v129 = 9;
        *(v129 + 1) = 0u;
        *(v129 + 17) = 0u;
        *(v129 + 32) = 0;
      }
    }
  }

  v126 = *(v16 + 36);
  if (a7)
  {
    if (*(v16 + 37) <= v126)
    {
      sub_18194C8AC(v16, 54, v13, v109 - 1, a7);
    }

    else
    {
      *(v16 + 36) = v126 + 1;
      v127 = &v16[17][5 * v126];
      *v127 = 54;
      *(v127 + 4) = v13;
      *(v127 + 8) = v110;
      *(v127 + 12) = a7;
      *(v127 + 24) = 0;
      *(v127 + 32) = 0;
      *(v127 + 16) = 0;
    }

    v126 = *(v16 + 36);
    if (v126 >= 1)
    {
      *(&v16[17][5 * v126 - 4] - 3) = 144;
    }
  }

  if (*(v16 + 37) <= v126)
  {
    sub_18194C8AC(v16, 31, a4, v109 - 1, v13);
  }

  else
  {
    *(v16 + 36) = v126 + 1;
    v130 = &v16[17][5 * v126];
    *v130 = 31;
    *(v130 + 4) = a4;
    *(v130 + 8) = v110;
    *(v130 + 12) = v13;
    *(v130 + 24) = 0;
    *(v130 + 32) = 0;
    *(v130 + 16) = 0;
  }

  v95 = a3;
  if (v111 <= 3)
  {
    if ((v111 - 1) < 3)
    {
LABEL_257:
      sub_1819872F0(a1, v111, v14);
LABEL_258:
      v132 = 0;
      v330 = 0;
      goto LABEL_259;
    }

LABEL_256:
    v111 = 2;
    goto LABEL_257;
  }

  if (v111 == 4)
  {
LABEL_253:
    v131 = *(v16 + 36);
    if (*(v16 + 37) > v131)
    {
      v132 = 0;
      v330 = 0;
      *(v16 + 36) = v131 + 1;
      v133 = &v16[17][5 * v131];
      *v133 = 9;
      *(v133 + 8) = a10;
      *(v133 + 12) = 0;
      *(v133 + 28) = 0;
      *(v133 + 20) = 0;
      *(v133 + 36) = 0;
      goto LABEL_259;
    }

    sub_18194C8AC(v16, 9, 0, a10, 0);
    goto LABEL_258;
  }

  if (v111 != 5)
  {
    if (v111 != 6)
    {
      goto LABEL_256;
    }

    sub_181987480(a1, v96, v14, 0, a4);
    goto LABEL_253;
  }

  if (v333)
  {
    v141 = *(a1 + 152);
    if (!v141)
    {
      v141 = a1;
    }

    v132 = 1;
    *(v141 + 32) = 1;
    sub_1818D61BC(a1, v14, v326, a4, a5, v13, 1, 0, 5u, 1u, -1);
    v142 = *(v16 + 36);
    if (*(v16 + 37) <= v142)
    {
      sub_18194C8AC(v16, 86, v333, 1, 0);
    }

    else
    {
      *(v16 + 36) = v142 + 1;
      v143 = &v16[17][5 * v142];
      *v143 = 86;
      *(v143 + 4) = v333;
      *(v143 + 8) = 1;
      *(v143 + 12) = 0;
      *(v143 + 28) = 0;
      *(v143 + 20) = 0;
      *(v143 + 36) = 0;
    }

    v330 = 1;
  }

  else
  {
    v318 = *(v16 + 36);
    if (*(v16 + 37) <= v318)
    {
      sub_18194C8AC(v16, 130, a4, 64, 0);
    }

    else
    {
      *(v16 + 36) = v318 + 1;
      v319 = &v16[17][5 * v318];
      *v319 = 130;
      *(v319 + 4) = a4;
      *(v319 + 8) = 64;
      *(v319 + 12) = 0;
      *(v319 + 28) = 0;
      *(v319 + 20) = 0;
      *(v319 + 36) = 0;
    }

    if (!*(*v16 + 103))
    {
      v320 = &v16[17][5 * *(v16 + 36)];
      *(v320 - 39) = -5;
      *(v320 - 24) = v14;
    }

    v330 = 1;
    if (*(v14 + 16))
    {
      v321 = *(a1 + 152);
      if (!v321)
      {
        v321 = a1;
      }

      *(v321 + 32) = 1;
      sub_1819816BC(a1, v14, a4, a5, 0, -1);
    }

    v132 = 0;
  }

LABEL_259:
  v332 = v132;
  v134 = v16[3];
  v135 = -v109;
  if (*(v134 + 72) + *(v134 + 76) < 0)
  {
    sub_18195CB84(v134, v16, v135);
    v23 = a1;
    if (!v96)
    {
      goto LABEL_266;
    }
  }

  else
  {
    *(*(v134 + 80) + 4 * v135) = *(v16 + 36);
    v23 = a1;
    if (!v96)
    {
      goto LABEL_266;
    }
  }

  if (v107 != v96)
  {
    v136 = *(v16 + 36);
    if (*(v16 + 37) <= v136)
    {
      v335 = sub_18194C8AC(v16, 9, 0, 0, 0);
      v108 = 0;
    }

    else
    {
      v108 = 0;
      *(v16 + 36) = v136 + 1;
      v335 = v136;
      v137 = &v16[17][5 * v136];
      *v137 = 9;
      *(v137 + 1) = 0u;
      *(v137 + 17) = 0u;
      *(v137 + 32) = 0;
    }

    goto LABEL_282;
  }

LABEL_266:
  if (v331)
  {
    v138 = *(v16 + 36);
    if (*(v16 + 37) <= v138)
    {
      v138 = sub_18194C8AC(v16, 9, 0, 0, 0);
    }

    else
    {
      *(v16 + 36) = v138 + 1;
      v139 = &v16[17][5 * v138];
      *v139 = 9;
      *(v139 + 1) = 0u;
      *(v139 + 17) = 0u;
      *(v139 + 32) = 0;
    }

    if (*(*v16 + 103))
    {
      v140 = &byte_1EA831A58;
    }

    else
    {
      v140 = &v16[17][5 * v331 - 5];
    }

    v335 = 0;
    *(v140 + 2) = *(v16 + 36);
    v108 = v138;
  }

  else
  {
    v335 = 0;
    v331 = 0;
    v108 = 0;
  }

LABEL_282:
  v323 = v108;
  v340 = v100;
  if (v345)
  {
    LODWORD(v144) = 0;
    v145 = v368;
    if (v368)
    {
LABEL_284:
      v350 = 0;
      v359 = v13 + 1;
      v365 = ~v13;
      v324 = v23 + 184;
      if (a7)
      {
        v146 = v326 == 0;
      }

      else
      {
        v146 = 1;
      }

      v147 = !v146;
      v322 = v147;
      v325 = v339 + 1;
      v148.i64[0] = 0x1000100010001;
      v148.i64[1] = 0x1000100010001;
      v336 = v328;
      while (1)
      {
        v362 = v144;
        if (*(v95 + 4 * v144))
        {
          break;
        }

LABEL_385:
        v203 = v350;
LABEL_386:
        if (v345)
        {
          LODWORD(v144) = v362 + 1;
          v145 = *(v368 + 40);
          v368 = v145;
          if (!v145)
          {
            goto LABEL_574;
          }
        }

        else
        {
          v144 = v203 + 1;
          if (v144 >= v368)
          {
            goto LABEL_574;
          }

          v350 = v144;
          v204 = &v340[2 * v144];
          LODWORD(v144) = *(v204 + 2);
          v145 = *v204;
          if (!*v204)
          {
            goto LABEL_574;
          }
        }
      }

      if (v96)
      {
        v107 = v96;
        do
        {
          if (!*v107)
          {
            break;
          }

          if (*(v107 + 56) == v145)
          {
            break;
          }

          v107 = *(v107 + 32);
        }

        while (v107);
        if (v339 && v107 == v96)
        {
          v149 = &byte_1EA831A58;
          if (!*(*v16 + 103))
          {
            v149 = &v16[17][5 * v339];
          }

          *(v149 + 2) = *(v16 + 36);
        }
      }

      v150 = *(v23 + 18);
      v353 = v150 - 1;
      *(v23 + 18) = v150 - 1;
      if (v349)
      {
        if (!*(v145 + 72))
        {
LABEL_317:
          v157 = *(v95 + 4 * v362);
          v158 = v157 + 1;
          v347 = v150;
          v341 = v157;
          if (*(v145 + 96))
          {
            v159 = 0;
            while (1)
            {
              v161 = *(*(v145 + 8) + 2 * v159);
              if (v161 == -1)
              {
                goto LABEL_329;
              }

              v162 = *(*(v145 + 8) + 2 * v159);
              if (v162 == 65534)
              {
                *(v23 + 17) = v365;
                v163 = *(*(v145 + 80) + 24 * v159 + 8);
                v164 = *v23;
                if (v163)
                {
                  v165 = sub_1818C7FEC(v164, v163, 0, 0);
                  v148.i64[0] = 0x1000100010001;
                  v148.i64[1] = 0x1000100010001;
                  v166 = v165;
                  if (!*(v164 + 103))
                  {
                    goto LABEL_325;
                  }
                }

                else
                {
                  v166 = 0;
                  if (!*(v164 + 103))
                  {
LABEL_325:
                    sub_181956EF4(a1, v166, (v158 + v159));
                    v148.i64[0] = 0x1000100010001;
                    v148.i64[1] = 0x1000100010001;
                  }
                }

                if (v166)
                {
                  sub_1819439E0(v164, v166);
                  v148.i64[0] = 0x1000100010001;
                  v148.i64[1] = 0x1000100010001;
                }

                v23 = a1;
                *(a1 + 68) = 0;
                goto LABEL_320;
              }

              if (v162 == *(v14 + 52))
              {
LABEL_329:
                v167 = v159 + v158;
                v168 = *(v16 + 36);
                if (*(v16 + 37) <= v168)
                {
                  v170 = v16;
                  v171 = 82;
                  v172 = v13;
LABEL_361:
                  sub_18194C8AC(v170, v171, v172, v167, 0);
                  v148.i64[0] = 0x1000100010001;
                  v148.i64[1] = 0x1000100010001;
                  goto LABEL_320;
                }

                *(v16 + 36) = v168 + 1;
                v169 = &v16[17][5 * v168];
                *v169 = 82;
                *(v169 + 4) = v13;
                goto LABEL_359;
              }

              if ((v161 & 0x8000) == 0 && (*(v14 + 48) & 0x20) != 0)
              {
                break;
              }

LABEL_357:
              v172 = v359 + v162;
              v167 = v159 + v158;
              v193 = *(v16 + 36);
              if (*(v16 + 37) <= v193)
              {
                v170 = v16;
                v171 = 81;
                goto LABEL_361;
              }

              *(v16 + 36) = v193 + 1;
              v169 = &v16[17][5 * v193];
              *v169 = 81;
              *(v169 + 4) = v172;
LABEL_359:
              *(v169 + 8) = v167;
              *(v169 + 12) = 0;
              *(v169 + 28) = 0;
              *(v169 + 20) = 0;
              *(v169 + 36) = 0;
LABEL_320:
              ++v159;
              v160 = *(v145 + 96);
              if (v159 >= v160)
              {
                v157 = *(a3 + 4 * v362);
                v150 = v347;
                goto LABEL_364;
              }
            }

            v173 = *(v14 + 8);
            if (!*(*(v145 + 8) + 2 * v159))
            {
              v161 = 0;
              v175 = 0;
LABEL_354:
              if ((*(v173 + 16 * v161 + 14) & 0x20) != 0)
              {
                LOWORD(v162) = v162 - v175 + *(v14 + 56);
              }

              else
              {
                LOWORD(v162) = v175;
              }

              goto LABEL_357;
            }

            if (v162 >= 5)
            {
              if (v162 >= 0x11)
              {
                v176 = 16;
                if ((v161 & 0xF) != 0)
                {
                  v176 = v161 & 0xF;
                }

                v174 = v161 - v176;
                v177 = (v173 + 142);
                v178 = 0uLL;
                v179 = *(*(v145 + 8) + 2 * v159);
                v180 = 0uLL;
                do
                {
                  v181.i16[0] = *(v177 - 64);
                  v181.i16[1] = *(v177 - 56);
                  v181.i16[2] = *(v177 - 48);
                  v181.i16[3] = *(v177 - 40);
                  v181.i16[4] = *(v177 - 32);
                  v181.i16[5] = *(v177 - 24);
                  v181.i16[6] = *(v177 - 16);
                  v181.i16[7] = *(v177 - 8);
                  v182.i16[0] = *v177;
                  v182.i16[1] = v177[8];
                  v182.i16[2] = v177[16];
                  v182.i16[3] = v177[24];
                  v182.i16[4] = v177[32];
                  v182.i16[5] = v177[40];
                  v182.i16[6] = v177[48];
                  v182.i16[7] = v177[56];
                  v178 = vaddq_s16(vbicq_s8(v148, vshrq_n_u16(v181, 5uLL)), v178);
                  v180 = vaddq_s16(vbicq_s8(v148, vshrq_n_u16(v182, 5uLL)), v180);
                  v179 -= 16;
                  v177 += 128;
                }

                while (v176 != v179);
                v175 = vaddvq_s16(vaddq_s16(v180, v178));
                v13 = v351;
                if (v176 < 5)
                {
                  goto LABEL_352;
                }
              }

              else
              {
                v175 = 0;
                v174 = 0;
              }

              v183 = v161 & 3;
              if ((v161 & 3) == 0)
              {
                v183 = 4;
              }

              v184 = v173 + 16 * v174;
              v185 = v183 + v174;
              v174 = v161 - v183;
              v186 = v175;
              v187 = (v184 + 46);
              v188 = v185 - v161;
              do
              {
                v189.i16[0] = *(v187 - 16);
                v189.i16[1] = *(v187 - 8);
                v189.i16[2] = *v187;
                v189.i16[3] = v187[8];
                v186 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v189, 5uLL)), v186);
                v187 += 32;
                v188 += 4;
              }

              while (v188);
              v175 = vaddv_s16(v186);
            }

            else
            {
              v174 = 0;
              v175 = 0;
            }

LABEL_352:
            v190 = v161 - v174;
            v191 = (v173 + 16 * v174 + 14);
            do
            {
              v192 = *v191;
              v191 += 8;
              v175 += ((v192 >> 5) & 1) == 0;
              --v190;
            }

            while (v190);
            goto LABEL_354;
          }

          v160 = 0;
LABEL_364:
          v194 = *(v16 + 36);
          if (*(v16 + 37) <= v194)
          {
            sub_18194C8AC(v16, 97, v158, v160, v157);
            v148.i64[0] = 0x1000100010001;
            v148.i64[1] = 0x1000100010001;
            if (!a7)
            {
              goto LABEL_370;
            }
          }

          else
          {
            *(v16 + 36) = v194 + 1;
            v195 = &v16[17][5 * v194];
            *v195 = 97;
            *(v195 + 4) = v158;
            *(v195 + 8) = v160;
            *(v195 + 12) = v157;
            *(v195 + 24) = 0;
            *(v195 + 32) = 0;
            *(v195 + 16) = 0;
            if (!a7)
            {
              goto LABEL_370;
            }
          }

          if (!a8 && v360 == v145)
          {
LABEL_381:
            v201 = v16[3];
            v202 = -v150;
            if (*(v201 + 72) + *(v201 + 76) < 0)
            {
              sub_18195CB84(v201, v16, v202);
              v148.i64[0] = 0x1000100010001;
              v148.i64[1] = 0x1000100010001;
            }

            else
            {
              *(*(v201 + 80) + 4 * v202) = *(v16 + 36);
            }

            v95 = a3;
            goto LABEL_385;
          }

LABEL_370:
          v196 = *(v145 + 98);
          if (*(v145 + 98))
          {
            if (v196 == 11)
            {
              v196 = 2;
            }

            if (v363 != 11)
            {
              v196 = v363;
            }

            if (v107)
            {
              if (*(v107 + 40))
              {
                v196 = 6;
              }

              else
              {
                v196 = 4;
              }
            }

            v338 = v196;
            v197 = v362 + a5;
            v198 = *(v145 + 94);
            v199 = *(v16 + 36);
            if (*(v16 + 37) <= v199)
            {
              v199 = sub_18194CAFC(v16, 27, v362 + a5, v353, v158, v198);
            }

            else
            {
              *(v16 + 36) = v199 + 1;
              v200 = &v16[17][5 * v199];
              *v200 = 64795;
              *(v200 + 4) = v197;
              *(v200 + 8) = v353;
              *(v200 + 12) = v158;
              *(v200 + 16) = v198;
              *(v200 + 24) = 0;
              *(v200 + 32) = 0;
            }

            v342 = v158;
            if (v360 != v145)
            {
              if (v337 == 1)
              {
                if (v23[31])
                {
                  v205 = v23[31] - 1;
                  v23[31] = v205;
                  v342 = *&v324[4 * v205];
                  goto LABEL_402;
                }

                v210 = *(v23 + 15) + 1;
                v342 = v210;
              }

              else
              {
                v206 = *(v23 + 11);
                v207 = __OFSUB__(v206, v337);
                v208 = v206 - v337;
                if (v208 < 0 == v207)
                {
                  v342 = *(v23 + 12);
                  *(v23 + 11) = v208;
                  *(v23 + 12) = v342 + v337;
                  goto LABEL_402;
                }

                v209 = *(v23 + 15);
                v342 = v209 + 1;
                v210 = v209 + v337;
              }

              *(v23 + 15) = v210;
            }

LABEL_402:
            v343 = v362 + a5;
            v329 = v199;
            if (!a7 && v338 != 5)
            {
              goto LABEL_404;
            }

            if ((*(v14 + 48) & 0x80) == 0)
            {
              v211 = *(v366 + 36);
              if (*(v366 + 37) <= v211)
              {
                sub_18194C8AC(v366, 142, v197, v342, 0);
                if (!a7)
                {
                  goto LABEL_404;
                }
              }

              else
              {
                *(v366 + 36) = v211 + 1;
                v212 = &v366[17][5 * v211];
                *v212 = 142;
                *(v212 + 4) = v197;
                *(v212 + 8) = v342;
                *(v212 + 12) = 0;
                *(v212 + 28) = 0;
                *(v212 + 20) = 0;
                *(v212 + 36) = 0;
                if (!a7)
                {
                  goto LABEL_404;
                }
              }

              v270 = *(v366 + 36);
              if (*(v366 + 37) <= v270)
              {
                sub_18194C8AC(v366, 54, v342, v353, a7);
              }

              else
              {
                *(v366 + 36) = v270 + 1;
                v271 = &v366[17][5 * v270];
                *v271 = 54;
                *(v271 + 4) = v342;
                *(v271 + 8) = v353;
                *(v271 + 12) = a7;
                *(v271 + 24) = 0;
                *(v271 + 32) = 0;
                *(v271 + 16) = 0;
              }

              v273 = *(v366 + 36);
              if (v273 >= 1)
              {
                *(&v366[17][5 * v273 - 4] - 3) = 144;
              }

LABEL_404:
              if ((v338 - 1) < 3)
              {
                sub_181963324(v23, v338, v145, v160);
                v16 = v366;
                goto LABEL_406;
              }

              v16 = v366;
              v13 = v351;
              if (v338 != 4)
              {
                if (v338 == 6)
                {
                  sub_181987480(v23, v96, v14, v145, v343);
                  goto LABEL_414;
                }

                v266 = *(v366 + 36);
                if (v333)
                {
                  v267 = *(v23 + 19);
                  if (!v267)
                  {
                    v267 = v23;
                  }

                  v267[32] = 1;
                  ++v332;
                }

                if (v322)
                {
                  if (*(v366 + 37) <= v266)
                  {
                    v269 = a4;
                    sub_18194C8AC(v366, 167, a4, 0, 0);
                  }

                  else
                  {
                    *(v366 + 36) = v266 + 1;
                    v268 = &v366[17][5 * v266];
                    v269 = a4;
                    *v268 = 167;
                    *(v268 + 4) = a4;
                    *(v268 + 8) = 0u;
                    *(v268 + 24) = 0u;
                  }

                  sub_1818D61BC(v23, v14, v326, v269, a5, v342, v337, 0, 5u, v360 == v145, v343);
                  v274 = *(v366 + 36);
                  if (*(v366 + 37) <= v274)
                  {
                    sub_18194C8AC(v366, 168, v269, 0, 0);
                  }

                  else
                  {
                    *(v366 + 36) = v274 + 1;
                    v275 = &v366[17][5 * v274];
                    *v275 = 168;
                    *(v275 + 4) = v269;
                    *(v275 + 8) = 0u;
                    *(v275 + 24) = 0u;
                  }
                }

                else
                {
                  sub_1818D61BC(v23, v14, v326, a4, a5, v342, v337, 0, 5u, v360 == v145, v343);
                }

                v148.i64[0] = 0x1000100010001;
                v148.i64[1] = 0x1000100010001;
                if (v333)
                {
                  v276 = *(v366 + 36);
                  if (*(v366 + 37) <= v276)
                  {
                    sub_18194C8AC(v366, 86, v333, 1, 0);
                  }

                  else
                  {
                    *(v366 + 36) = v276 + 1;
                    v277 = &v366[17][5 * v276];
                    *v277 = 86;
                    *(v277 + 4) = v333;
                    *(v277 + 8) = 1;
                    *(v277 + 12) = 0;
                    *(v277 + 28) = 0;
                    *(v277 + 20) = 0;
                    *(v277 + 36) = 0;
                  }

                  v278 = *(v366 + 36);
                  if (*(v366 + 37) <= v278)
                  {
                    v354 = sub_18194C8AC(v366, 9, 0, 0, 0);
                  }

                  else
                  {
                    *(v366 + 36) = v278 + 1;
                    v354 = v278;
                    v279 = &v366[17][5 * v278];
                    *v279 = 9;
                    *(v279 + 1) = 0u;
                    *(v279 + 17) = 0u;
                    *(v279 + 32) = 0;
                  }

                  v280 = v366[3];
                  v281 = ~v336;
                  if (*(v280 + 72) + *(v280 + 76) < 0)
                  {
                    sub_18195CB84(v280, v366, v281);
                  }

                  else
                  {
                    *(*(v280 + 80) + 4 * v281) = *(v366 + 36);
                  }

                  v336 = *(v23 + 18) - 1;
                  *(v23 + 18) = v336;
                  if (*(v145 + 72))
                  {
                    v282 = *(v366 + 36);
                    if (*(v366 + 37) <= v282)
                    {
                      sub_18194C8AC(v366, 51, v341, v336, 0);
                    }

                    else
                    {
                      *(v366 + 36) = v282 + 1;
                      v283 = &v366[17][5 * v282];
                      *v283 = 51;
                      *(v283 + 4) = v341;
                      *(v283 + 8) = v336;
                      *(v283 + 12) = 0;
                      *(v283 + 28) = 0;
                      *(v283 + 20) = 0;
                      *(v283 + 36) = 0;
                    }
                  }

                  if (v266 - v329 >= 1)
                  {
                    v284 = 5 * v329;
                    v285 = v266 - v329 + 1;
                    do
                    {
                      v286 = &byte_1EA831A58;
                      if (!*(*v16 + 103))
                      {
                        v286 = &v16[17][v284];
                      }

                      v287 = *v286;
                      if (v287 != 142)
                      {
                        v288 = v286[1];
                        v289 = *(v286 + 1);
                        v290 = *(v286 + 2);
                        v291 = *(v286 + 1);
                        v294 = v286 + 8;
                        v293 = *(v286 + 2);
                        v292 = *(v294 + 1);
                        if (byte_181A203EA[v287])
                        {
                          v272 = v336;
                        }

                        else
                        {
                          v272 = v293;
                        }

                        if (v288 == -3)
                        {
                          v295 = v290;
                        }

                        else
                        {
                          v295 = v290;
                        }

                        v296 = *(v16 + 36);
                        v357 = v289;
                        if (*(v16 + 37) <= v296)
                        {
                          v296 = sub_18194C8AC(v16, v287, v291, v272, v292);
                        }

                        else
                        {
                          *(v16 + 36) = v296 + 1;
                          v297 = &v16[17][5 * v296];
                          *v297 = v287;
                          *(v297 + 2) = 0;
                          *(v297 + 4) = v291;
                          *(v297 + 8) = v272;
                          *(v297 + 12) = v292;
                          *(v297 + 1) = 0;
                          *(v297 + 24) = 0;
                          *(v297 + 32) = 0;
                          *(v297 + 16) = 0;
                        }

                        if (*(*v16 + 103))
                        {
                          if (v288 != -11)
                          {
                            sub_1818A3B68(*v16, v288, v295, v272);
                          }
                        }

                        else
                        {
                          if (v296 < 0)
                          {
                            v296 = *(v366 + 36) - 1;
                          }

                          v298 = &v366[17][5 * v296];
                          if ((v288 & 0x80000000) != 0 && !*(v298 + 1))
                          {
                            if (v288 == -3)
                            {
                              *(v298 + 16) = v290;
                              *(v298 + 1) = -3;
                            }

                            else if (v290)
                            {
                              *(v298 + 16) = v290;
                              *(v298 + 1) = v288;
                              if (v288 == -11)
                              {
                                ++*(v290 + 24);
                              }
                            }
                          }

                          else
                          {
                            sub_18194CB90(v366, v298, v295, v288);
                          }
                        }

                        v16 = v366;
                        v23 = a1;
                        v299 = *(v366 + 36);
                        if (v299 >= 1)
                        {
                          *(&v366[17][5 * v299 - 4] - 3) = v357;
                        }
                      }

                      v284 += 5;
                      --v285;
                    }

                    while (v285 > 1);
                  }

                  sub_181963324(v23, 2, v145, v272);
                  v300 = &byte_1EA831A58;
                  if (!*(*v16 + 103))
                  {
                    v300 = &v16[17][5 * v354];
                  }

                  *(v300 + 2) = *(v16 + 36);
                  v330 = 1;
                  v14 = a2;
LABEL_406:
                  v13 = v351;
LABEL_480:
                  v203 = v350;
                  v148.i64[0] = 0x1000100010001;
                  v148.i64[1] = 0x1000100010001;
                }

                else
                {
                  v330 = 1;
                  v203 = v350;
                }

                v259 = v16[3];
                v260 = -v347;
                if (*(v259 + 72) + *(v259 + 76) < 0)
                {
                  sub_18195CB84(v259, v16, v260);
                  v148.i64[0] = 0x1000100010001;
                  v148.i64[1] = 0x1000100010001;
                }

                else
                {
                  *(*(v259 + 80) + 4 * v260) = *(v16 + 36);
                }

                v119 = v342 == v158;
                v95 = a3;
                if (!v119)
                {
                  if (v337 == 1)
                  {
                    if (v342)
                    {
                      v262 = v23[31];
                      if (v262 <= 7)
                      {
                        v23[31] = v262 + 1;
                        *&v324[4 * v262] = v342;
                      }
                    }
                  }

                  else if (*(v23 + 11) < v337)
                  {
                    *(v23 + 11) = v337;
                    *(v23 + 12) = v342;
                  }
                }

                if (v107 && v335)
                {
                  v261 = v107;
                  while (1)
                  {
                    v261 = *(v261 + 32);
                    if (!v261 || !*v261 || !*(v261 + 56))
                    {
                      break;
                    }

                    if (!*(v261 + 41))
                    {
                      goto LABEL_386;
                    }
                  }

                  v263 = *(v16 + 36);
                  if (*(v16 + 37) <= v263)
                  {
                    sub_18194C8AC(v16, 9, 0, v325, 0);
                    v148.i64[0] = 0x1000100010001;
                    v148.i64[1] = 0x1000100010001;
                  }

                  else
                  {
                    *(v16 + 36) = v263 + 1;
                    v264 = &v16[17][5 * v263];
                    *v264 = 9;
                    *(v264 + 8) = v325;
                    *(v264 + 12) = 0;
                    *(v264 + 28) = 0;
                    *(v264 + 20) = 0;
                    *(v264 + 36) = 0;
                  }

                  v265 = &byte_1EA831A58;
                  if (!*(*v16 + 103))
                  {
                    v265 = &v16[17][5 * v335];
                  }

                  v335 = 0;
                  *(v265 + 2) = *(v16 + 36);
                }

                goto LABEL_386;
              }

LABEL_414:
              v213 = *(v366 + 36);
              if (*(v366 + 37) <= v213)
              {
                sub_18194C8AC(v366, 9, 0, a10, 0);
              }

              else
              {
                *(v366 + 36) = v213 + 1;
                v214 = &v366[17][5 * v213];
                *v214 = 9;
                *(v214 + 8) = a10;
                *(v214 + 12) = 0;
                *(v214 + 28) = 0;
                *(v214 + 20) = 0;
                *(v214 + 36) = 0;
              }

              goto LABEL_480;
            }

            if (v360 != v145 && *(v360 + 94))
            {
              v215 = 0;
              do
              {
                if (*(v145 + 96))
                {
                  v160 = 0;
                  while (*(*(v360 + 8) + 2 * v215) != *(*(v145 + 8) + 2 * v160))
                  {
                    if (*(v145 + 96) == ++v160)
                    {
                      goto LABEL_425;
                    }
                  }
                }

                else
                {
LABEL_425:
                  v160 = 0xFFFFFFFFLL;
                }

                v217 = v215 + v342;
                v218 = *(v366 + 36);
                if (*(v366 + 37) > v218)
                {
                  *(v366 + 36) = v218 + 1;
                  v216 = &v366[17][5 * v218];
                  *v216 = 94;
                  *(v216 + 4) = v343;
                  *(v216 + 8) = v160;
                  *(v216 + 12) = v217;
                  *(v216 + 24) = 0;
                  *(v216 + 32) = 0;
                  *(v216 + 16) = 0;
                }

                else
                {
                  sub_18194C8AC(v366, 94, v343, v160, v217);
                }

                ++v215;
              }

              while (v215 < *(v360 + 94));
            }

            if (!a7 || !*(v360 + 94))
            {
              goto LABEL_404;
            }

            v219 = 0;
            if ((*(v145 + 99) & 3) == 2)
            {
              v220 = v158;
            }

            else
            {
              v220 = v342;
            }

            v356 = *(v366 + 36) + *(v360 + 94);
            v221 = 53;
            while (2)
            {
              v222 = *(*(v360 + 64) + 8 * v219);
              v223 = *v23;
              v224 = *(*v23 + 100);
              v225 = *(*v23 + 197);
              v226 = sub_181949138(v223, v224, v222, v225);
              v227 = v226;
              if (v225 || v226 && *(v226 + 3))
              {
                v23 = a1;
              }

              else
              {
                v23 = a1;
                v227 = sub_18194E6B8(a1, v224, v226, v222);
              }

              v14 = a2;
              v228 = *(*(v360 + 8) + 2 * v219);
              v229 = *(*(v360 + 8) + 2 * v219);
              v230 = v356;
              if (v219 == *(v360 + 94) - 1)
              {
                v230 = v353;
              }

              v356 = v230;
              if (v219 == *(v360 + 94) - 1)
              {
                v221 = 54;
              }

              v231.i64[0] = 0x1000100010001;
              v231.i64[1] = 0x1000100010001;
              if ((v228 & 0x8000000000000000) == 0 && (*(a2 + 48) & 0x20) != 0)
              {
                v232 = *(a2 + 8);
                if (*(*(v360 + 8) + 2 * v219))
                {
                  if (v229 < 5)
                  {
                    v233 = 0;
                    v234 = 0;
                    goto LABEL_462;
                  }

                  if (v229 < 0x11)
                  {
                    v234 = 0;
                    v233 = 0;
                    goto LABEL_457;
                  }

                  v235 = 16;
                  if ((v228 & 0xF) != 0)
                  {
                    v235 = v228 & 0xF;
                  }

                  v233 = v228 - v235;
                  v236 = (v232 + 142);
                  v237 = 0uLL;
                  v238 = *(*(v360 + 8) + 2 * v219);
                  v239 = 0uLL;
                  do
                  {
                    v160 = (v236 - 8);
                    v240.i16[0] = *(v236 - 64);
                    v240.i16[1] = *(v236 - 56);
                    v240.i16[2] = *(v236 - 48);
                    v240.i16[3] = *(v236 - 40);
                    v240.i16[4] = *(v236 - 32);
                    v240.i16[5] = *(v236 - 24);
                    v240.i16[6] = *(v236 - 16);
                    v240.i16[7] = *(v236 - 8);
                    v241.i16[0] = *v236;
                    v241.i16[1] = v236[8];
                    v241.i16[2] = v236[16];
                    v241.i16[3] = v236[24];
                    v241.i16[4] = v236[32];
                    v241.i16[5] = v236[40];
                    v241.i16[6] = v236[48];
                    v241.i16[7] = v236[56];
                    v237 = vaddq_s16(vbicq_s8(v231, vshrq_n_u16(v240, 5uLL)), v237);
                    v239 = vaddq_s16(vbicq_s8(v231, vshrq_n_u16(v241, 5uLL)), v239);
                    v238 -= 16;
                    v236 += 128;
                  }

                  while (v235 != v238);
                  v234 = vaddvq_s16(vaddq_s16(v239, v237));
                  v23 = a1;
                  if (v235 >= 5)
                  {
LABEL_457:
                    v242 = v228 & 3;
                    if ((v228 & 3) == 0)
                    {
                      v242 = 4;
                    }

                    v243 = v232 + 16 * v233;
                    v244 = v242 + v233;
                    v233 = v228 - v242;
                    v245 = v234;
                    v246 = (v243 + 46);
                    v247 = v244 - v228;
                    do
                    {
                      v248.i16[0] = *(v246 - 16);
                      v248.i16[1] = *(v246 - 8);
                      v248.i16[2] = *v246;
                      v248.i16[3] = v246[8];
                      v245 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v248, 5uLL)), v245);
                      v246 += 32;
                      v247 += 4;
                    }

                    while (v247);
                    v234 = vaddv_s16(v245);
                  }

LABEL_462:
                  v249 = v228 - v233;
                  v250 = (v232 + 16 * v233 + 14);
                  do
                  {
                    v251 = *v250;
                    v250 += 8;
                    v234 += ((v251 >> 5) & 1) == 0;
                    --v249;
                  }

                  while (v249);
                }

                else
                {
                  v228 = 0;
                  v234 = 0;
                }

                if ((*(v232 + 16 * v228 + 14) & 0x20) != 0)
                {
                  LOWORD(v229) = v229 - v234 + *(a2 + 56);
                }

                else
                {
                  LOWORD(v229) = v234;
                }
              }

              v252 = a7 + 1 + v229;
              v253 = v219 + v220;
              v254 = v366;
              v255 = *(v366 + 36);
              if (*(v366 + 37) <= v255)
              {
                v255 = sub_18194C8AC(v366, v221, v252, v356, v253);
              }

              else
              {
                *(v366 + 36) = v255 + 1;
                v256 = &v366[17][5 * v255];
                *v256 = v221;
                *(v256 + 2) = 0;
                *(v256 + 4) = v252;
                *(v256 + 8) = v356;
                *(v256 + 12) = v253;
                *(v256 + 1) = 0;
                *(v256 + 24) = 0;
                *(v256 + 32) = 0;
                *(v256 + 16) = 0;
              }

              if (!*(*v366 + 103))
              {
                if (v255 < 0)
                {
                  v255 = *(v366 + 36) - 1;
                }

                v254 = v366;
                v257 = &v366[17][5 * v255];
                if (*(v257 + 1))
                {
                  sub_18194CB90(v366, v257, v227, 4294967294);
                }

                else if (v227)
                {
                  *(v257 + 16) = v227;
                  *(v257 + 1) = -2;
                }
              }

              v258 = *(v254 + 36);
              if (v258 >= 1)
              {
                *(&v254[17][5 * v258 - 4] - 3) = 144;
              }

              if (++v219 >= *(v360 + 94))
              {
                goto LABEL_404;
              }

              continue;
            }
          }

          goto LABEL_381;
        }
      }

      else
      {
        sub_18195E17C(v16, v14, v359);
        v148.i64[0] = 0x1000100010001;
        v148.i64[1] = 0x1000100010001;
        v349 = 1;
        if (!*(v145 + 72))
        {
          goto LABEL_317;
        }
      }

      v151 = *(v95 + 4 * v362);
      v152 = *(v16 + 36);
      if (*(v16 + 37) <= v152)
      {
        sub_18194C8AC(v16, 75, 0, v151, 0);
      }

      else
      {
        *(v16 + 36) = v152 + 1;
        v153 = &v16[17][5 * v152];
        *v153 = 75;
        *(v153 + 8) = v151;
        *(v153 + 12) = 0;
        *(v153 + 28) = 0;
        *(v153 + 20) = 0;
        *(v153 + 36) = 0;
      }

      *(v23 + 17) = v365;
      v154 = *(v145 + 72);
      v155 = *v23;
      if (v154)
      {
        v156 = sub_1818C7FEC(v155, v154, 0, 0);
      }

      else
      {
        v156 = 0;
      }

      v148.i64[0] = 0x1000100010001;
      v148.i64[1] = 0x1000100010001;
      if (*(v155 + 103))
      {
        if (!v156)
        {
LABEL_316:
          v23 = a1;
          *(a1 + 68) = 0;
          goto LABEL_317;
        }
      }

      else
      {
        sub_1818DD640(a1, v156, v353, 16);
        v148.i64[0] = 0x1000100010001;
        v148.i64[1] = 0x1000100010001;
        if (!v156)
        {
          goto LABEL_316;
        }
      }

      sub_1819439E0(v155, v156);
      v148.i64[0] = 0x1000100010001;
      v148.i64[1] = 0x1000100010001;
      goto LABEL_316;
    }
  }

  else
  {
    LODWORD(v144) = *(v100 + 2);
    v145 = *v100;
    if (v145)
    {
      goto LABEL_284;
    }
  }

  v336 = v328;
LABEL_574:
  if (v331)
  {
    v301 = *(v16 + 36);
    if (*(v16 + 37) <= v301)
    {
      sub_18194C8AC(v16, 9, 0, v331, 0);
    }

    else
    {
      *(v16 + 36) = v301 + 1;
      v302 = &v16[17][5 * v301];
      *v302 = 9;
      *(v302 + 8) = v331;
      *(v302 + 12) = 0;
      *(v302 + 28) = 0;
      *(v302 + 20) = 0;
      *(v302 + 36) = 0;
    }

    if (*(*v16 + 103))
    {
      v303 = &byte_1EA831A58;
    }

    else
    {
      v303 = &v16[17][5 * v323];
    }

    *(v303 + 2) = *(v16 + 36);
  }

  if (!v332)
  {
LABEL_603:
    if ((*(v14 + 48) & 0x80) != 0)
    {
      goto LABEL_610;
    }

    goto LABEL_604;
  }

  v304 = *(v16 + 36);
  if (*(v16 + 37) <= v304)
  {
    sub_18194C8AC(v16, 17, v333, v336, 0);
  }

  else
  {
    *(v16 + 36) = v304 + 1;
    v305 = &v16[17][5 * v304];
    *v305 = 17;
    *(v305 + 4) = v333;
    *(v305 + 8) = v336;
    *(v305 + 12) = 0;
    *(v305 + 28) = 0;
    *(v305 + 20) = 0;
    *(v305 + 36) = 0;
  }

  v306 = *(v16 + 36);
  if (v360)
  {
    if (*(v16 + 37) <= v306)
    {
      sub_18194C8AC(v16, 9, 0, v328, 0);
    }

    else
    {
      *(v16 + 36) = v306 + 1;
      v307 = &v16[17][5 * v306];
      *v307 = 9;
      *(v307 + 8) = v328;
      *(v307 + 12) = 0;
      *(v307 + 28) = 0;
      *(v307 + 20) = 0;
      *(v307 + 36) = 0;
    }
  }

  else
  {
    if (a7)
    {
      if (*(v16 + 37) <= v306)
      {
        sub_18194C8AC(v16, 54, v351, v328, a7);
      }

      else
      {
        *(v16 + 36) = v306 + 1;
        v308 = &v16[17][5 * v306];
        *v308 = 54;
        *(v308 + 4) = v351;
        *(v308 + 8) = v328;
        *(v308 + 12) = a7;
        *(v308 + 24) = 0;
        *(v308 + 32) = 0;
        *(v308 + 16) = 0;
      }

      v309 = *(v16 + 36);
      if (v309 >= 1)
      {
        *(&v16[17][5 * v309 - 4] - 3) = 144;
      }
    }

    else
    {
      v309 = *(v16 + 36);
    }

    if (*(v16 + 37) <= v309)
    {
      sub_18194C8AC(v16, 31, a4, v328, v351);
    }

    else
    {
      *(v16 + 36) = v309 + 1;
      v310 = &v16[17][5 * v309];
      *v310 = 31;
      *(v310 + 4) = a4;
      *(v310 + 8) = v328;
      *(v310 + 12) = v351;
      *(v310 + 24) = 0;
      *(v310 + 32) = 0;
      *(v310 + 16) = 0;
    }

    sub_1819872F0(v23, 2, v14);
  }

  v311 = v16[3];
  v312 = ~v336;
  if (*(v311 + 72) + *(v311 + 76) >= 0)
  {
    *(*(v311 + 80) + 4 * v312) = *(v16 + 36);
    goto LABEL_603;
  }

  sub_18195CB84(v311, v16, v312);
  if ((*(v14 + 48) & 0x80) != 0)
  {
    goto LABEL_610;
  }

LABEL_604:
  v313 = *(v95 + 4 * v144);
  v314 = v351 + 1;
  v315 = *(v14 + 56);
  v316 = *(v16 + 36);
  if (*(v16 + 37) <= v316)
  {
    sub_18194C8AC(v16, 97, v314, v315, v313);
    if (!v349)
    {
LABEL_608:
      sub_18195E17C(v16, v14, 0);
    }
  }

  else
  {
    *(v16 + 36) = v316 + 1;
    v317 = &v16[17][5 * v316];
    *v317 = 97;
    *(v317 + 4) = v314;
    *(v317 + 8) = v315;
    *(v317 + 12) = v313;
    *(v317 + 24) = 0;
    *(v317 + 32) = 0;
    *(v317 + 16) = 0;
    if (!v349)
    {
      goto LABEL_608;
    }
  }

LABEL_610:
  *a11 = v330;
}

_DWORD *sub_1818D61BC(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10, int a11)
{
  v13 = a4;
  v17 = a11;
  v18 = a10;
  v19 = *(a1 + 16);
  v126 = *(a1 + 72);
  v129 = v126 - 1;
  *(a1 + 72) = v126 - 1;
  if ((a2[6] & 0x80) != 0)
  {
    v20 = 28;
  }

  else
  {
    v20 = 31;
  }

  v124 = v20;
  if (!a10)
  {
    v21 = *(v19 + 144);
    if (*(v19 + 148) <= v21)
    {
      sub_18194CAFC(v19, v124, a4, v129, a6, a7);
    }

    else
    {
      *(v19 + 144) = v21 + 1;
      v22 = *(v19 + 136) + 40 * v21;
      *v22 = v124;
      *(v22 + 2) = 0;
      *(v22 + 4) = a4;
      *(v22 + 8) = v129;
      *(v22 + 12) = a6;
      *(v22 + 16) = a7;
      *(v22 + 1) = -3;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0;
    }
  }

  v23 = sub_1818D6F14(a1, a2, 0, 0);
  v131 = v19;
  v122 = a5;
  v123 = a8;
  if (!a3 && !v23)
  {
    v24 = 0;
    goto LABEL_102;
  }

  if (*(a2 + 63) != 2)
  {
    v25 = 0;
    if (!a3)
    {
      goto LABEL_29;
    }

    v26 = a3;
    while (1)
    {
      if (*(v26 + 16) != 129 || (*(v26 + 17) & 3) == 0)
      {
        goto LABEL_16;
      }

      if (*(v26 + 18))
      {
        v25 = -1;
      }

      else
      {
        v27 = *(a1 + 152);
        if (!v27)
        {
          v27 = a1;
        }

        v28 = *(v27 + 168);
        if (v28)
        {
          while (*v28 != v26 || *(v28 + 24) != a9)
          {
            v28 = *(v28 + 8);
            if (!v28)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
LABEL_23:
          v28 = sub_1818ED318(a1, v26, a2, a9);
          *(*a1 + 84) = -1;
          if (!v28)
          {
            goto LABEL_16;
          }
        }

        v25 |= *(v28 + 28);
      }

LABEL_16:
      v26 = *(v26 + 64);
      if (!v26)
      {
        goto LABEL_29;
      }
    }
  }

  v25 = -1;
LABEL_29:
  v130 = v13;
  v29 = sub_181980FF0(a1, a2);
  v30 = *(a1 + 60);
  v31 = v30 + 1;
  *(a1 + 60) = v30 + 1 + *(a2 + 27);
  v32 = *(v19 + 144);
  v128 = v30 + 1;
  if (*(v19 + 148) <= v32)
  {
    sub_18194C8AC(v19, 80, a6, v31, 0);
  }

  else
  {
    *(v19 + 144) = v32 + 1;
    v33 = *(v19 + 136) + 40 * v32;
    *v33 = 80;
    *(v33 + 4) = a6;
    *(v33 + 8) = v31;
    *(v33 + 12) = 0;
    *(v33 + 28) = 0;
    *(v33 + 20) = 0;
    *(v33 + 36) = 0;
  }

  v34 = *(a2 + 27);
  if (v34 >= 1)
  {
    v35 = 0;
    v36 = 0;
    v37 = v29 | v25;
    v38 = v30 + 2;
    v39.i64[0] = 0x1000100010001;
    v39.i64[1] = 0x1000100010001;
    while (1)
    {
      if (v37 != -1 && (v36 > 0x1F || ((v37 >> v36) & 1) == 0))
      {
        goto LABEL_35;
      }

      v40 = v36;
      if ((v36 & 0x8000) == 0 && (a2[6] & 0x20) != 0)
      {
        break;
      }

LABEL_34:
      sub_181959FA4(v19, a2, v130, v36, (v38 + v40));
      v39.i64[0] = 0x1000100010001;
      v39.i64[1] = 0x1000100010001;
      LOWORD(v34) = *(a2 + 27);
LABEL_35:
      ++v36;
      --v35;
      if (v36 >= v34)
      {
        goto LABEL_63;
      }
    }

    v41 = a2[1];
    if (!v36)
    {
      v40 = 0;
      goto LABEL_61;
    }

    if (v36 < 5)
    {
      v42 = 0;
      v40 = 0;
LABEL_58:
      v57 = v42 + v35;
      v58 = &v41[16 * v42 + 14];
      do
      {
        v59 = *v58;
        v58 += 16;
        v40 += ((v59 >> 5) & 1) == 0;
      }

      while (!__CFADD__(v57++, 1));
LABEL_61:
      if ((*&v41[16 * ((v36 << 16) >> 16) + 14] & 0x20) != 0)
      {
        v40 = v36 - v40 + *(a2 + 28);
      }

      goto LABEL_34;
    }

    if (v36 >= 0x11)
    {
      if ((v36 & 0xF) != 0)
      {
        v43 = v36 & 0xF;
      }

      else
      {
        v43 = 16;
      }

      v42 = v36 - v43;
      v44 = (v41 + 142);
      v45 = 0uLL;
      v46 = v36;
      v47 = 0uLL;
      do
      {
        v48.i16[0] = *(v44 - 64);
        v48.i16[1] = *(v44 - 56);
        v48.i16[2] = *(v44 - 48);
        v48.i16[3] = *(v44 - 40);
        v48.i16[4] = *(v44 - 32);
        v48.i16[5] = *(v44 - 24);
        v48.i16[6] = *(v44 - 16);
        v48.i16[7] = *(v44 - 8);
        v49.i16[0] = *v44;
        v49.i16[1] = v44[8];
        v49.i16[2] = v44[16];
        v49.i16[3] = v44[24];
        v49.i16[4] = v44[32];
        v49.i16[5] = v44[40];
        v49.i16[6] = v44[48];
        v49.i16[7] = v44[56];
        v45 = vaddq_s16(vbicq_s8(v39, vshrq_n_u16(v48, 5uLL)), v45);
        v47 = vaddq_s16(vbicq_s8(v39, vshrq_n_u16(v49, 5uLL)), v47);
        v46 -= 16;
        v44 += 128;
      }

      while (v43 != v46);
      v40 = vaddvq_s16(vaddq_s16(v47, v45));
      if (v43 < 5)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v50 = v36 & 3;
    if ((v36 & 3) == 0)
    {
      v50 = 4;
    }

    v51 = &v41[16 * v42];
    v52 = v42 + v35;
    v42 = v36 - v50;
    v53 = v40;
    v54 = (v51 + 46);
    v55 = v50 + v52;
    do
    {
      v56.i16[0] = *(v54 - 16);
      v56.i16[1] = *(v54 - 8);
      v56.i16[2] = *v54;
      v56.i16[3] = v54[8];
      v53 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v56, 5uLL)), v53);
      v54 += 32;
      v55 += 4;
    }

    while (v55);
    v40 = vaddv_s16(v53);
    goto LABEL_58;
  }

LABEL_63:
  if (!a3)
  {
    v24 = v128;
    v17 = a11;
    v18 = a10;
    v13 = v130;
    goto LABEL_101;
  }

  v61 = *(v19 + 144);
  v62 = a3;
  do
  {
    if (*(v62 + 16) == 129 && *(v62 + 17) == 1)
    {
      if (*(v62 + 18))
      {
        if (!*(a1 + 152))
        {
          sub_181982280(a1, v62, a2, v128);
        }
      }

      else
      {
        v63 = sub_1818E7DFC(a1);
        v64 = *(a1 + 152);
        if (!v64)
        {
          v64 = a1;
        }

        v65 = *(v64 + 168);
        if (v65)
        {
          while (*v65 != v62 || *(v65 + 24) != a9)
          {
            v65 = *(v65 + 8);
            if (!v65)
            {
              goto LABEL_74;
            }
          }
        }

        else
        {
LABEL_74:
          v65 = sub_1818ED318(a1, v62, a2, a9);
          *(*a1 + 84) = -1;
          if (!v65)
          {
            goto LABEL_65;
          }
        }

        if (*v62)
        {
          v66 = (*(*a1 + 49) & 0x20) == 0;
        }

        else
        {
          v66 = 0;
        }

        v67 = *(a1 + 60) + 1;
        *(a1 + 60) = v67;
        v68 = *(v65 + 16);
        v69 = *(v63 + 144);
        if (*(v63 + 148) <= v69)
        {
          v69 = sub_18194C8AC(v63, 48, v128, v129, v67);
        }

        else
        {
          *(v63 + 144) = v69 + 1;
          v70 = *(v63 + 136) + 40 * v69;
          *v70 = 48;
          *(v70 + 4) = v128;
          *(v70 + 8) = v129;
          *(v70 + 12) = v67;
          *(v70 + 24) = 0;
          *(v70 + 32) = 0;
          *(v70 + 16) = 0;
        }

        if (!*(*v63 + 103))
        {
          if (v69 < 0)
          {
            v69 = *(v63 + 144) - 1;
          }

          v71 = *(v63 + 136) + 40 * v69;
          if (*(v71 + 1))
          {
            sub_18194CB90(v63, v71, v68, 4294967292);
          }

          else if (v68)
          {
            *(v71 + 16) = v68;
            *(v71 + 1) = -4;
          }
        }

        v72 = *(v63 + 144);
        if (v72 >= 1)
        {
          *(*(v63 + 136) + 40 * v72 - 38) = v66;
        }
      }
    }

LABEL_65:
    v62 = *(v62 + 64);
  }

  while (v62);
  v73 = *(v19 + 144);
  v74 = v61 < v73;
  v24 = v128;
  v17 = a11;
  v18 = a10;
  v13 = v130;
  if (v74)
  {
    if (*(v19 + 148) <= v73)
    {
      sub_18194CAFC(v19, v124, v130, v129, a6, a7);
    }

    else
    {
      *(v19 + 144) = v73 + 1;
      v75 = *(v19 + 136) + 40 * v73;
      *v75 = v124;
      *(v75 + 2) = 0;
      *(v75 + 4) = v130;
      *(v75 + 8) = v129;
      *(v75 + 12) = a6;
      *(v75 + 16) = a7;
      *(v75 + 1) = -3;
      *(v75 + 24) = 0;
      *(v75 + 32) = 0;
    }

    v17 = -1;
  }

LABEL_101:
  sub_1818D7680(a1, a2, v24, 0, 0, 0);
LABEL_102:
  if (*(a2 + 63) != 2)
  {
    sub_1819816BC(a1, a2, v13, v122, 0, v17);
    v76 = v123 != 0;
    v77 = *(v19 + 144);
    if (*(v19 + 148) <= v77)
    {
      sub_18194C8AC(v19, 130, v13, v76, 0);
      if (*(a1 + 30))
      {
        goto LABEL_107;
      }

LABEL_113:
      if (!*(*v19 + 103))
      {
        v81 = *(v19 + 136) + 40 * *(v19 + 144);
        *(v81 - 39) = -5;
        *(v81 - 24) = a2;
      }
    }

    else
    {
      *(v19 + 144) = v77 + 1;
      v78 = *(v19 + 136) + 40 * v77;
      *v78 = 130;
      *(v78 + 4) = v13;
      *(v78 + 8) = v76;
      *(v78 + 12) = 0;
      *(v78 + 28) = 0;
      *(v78 + 20) = 0;
      *(v78 + 36) = 0;
      if (!*(a1 + 30))
      {
        goto LABEL_113;
      }

LABEL_107:
      v79 = *a2;
      if (*a2)
      {
        for (i = "sqlite_stat1"; ; ++i)
        {
          if (*v79 == *i)
          {
            if (!*v79)
            {
              goto LABEL_113;
            }
          }

          else if (byte_181A20298[*v79] != byte_181A20298[*i])
          {
            break;
          }

          ++v79;
        }
      }
    }

    if (v18)
    {
      v82 = *(v19 + 144);
      if (v82 >= 1)
      {
        *(*(v19 + 136) + 40 * v82 - 38) = 4;
      }
    }

    if ((v17 & 0x80000000) == 0 && v17 != v13)
    {
      v83 = *(v19 + 144);
      if (*(v19 + 148) <= v83)
      {
        sub_18194C8AC(v19, 130, v17, 0, 0);
      }

      else
      {
        *(v19 + 144) = v83 + 1;
        v84 = *(v19 + 136) + 40 * v83;
        *v84 = 130;
        *(v84 + 4) = v17;
        *(v84 + 8) = 0u;
        *(v84 + 24) = 0u;
      }
    }

    v85 = *(v19 + 144);
    if (v85 >= 1)
    {
      *(*(v19 + 136) + 40 * v85 - 38) = 2 * (v18 == 2);
    }
  }

  if ((*(*a1 + 49) & 0x40) != 0)
  {
    v86 = a2[12];
    v87 = **a2;
    if (v87)
    {
      v88 = 0;
      v89 = *a2 + 1;
      do
      {
        v88 = -1640531535 * (v88 + (v87 & 0xDF));
        v90 = *v89++;
        v87 = v90;
      }

      while (v90);
    }

    else
    {
      v88 = 0;
    }

    v91 = v86 + 80;
    v92 = *(v86 + 12);
    if (v92)
    {
      v91 = (v92 + 16 * (v88 % *v91));
      v93 = *v91;
      if (*v91)
      {
LABEL_133:
        v94 = (v91 + 2);
        do
        {
          v94 = *v94;
          if (v88 == *(v94 + 8))
          {
            v95 = v94[3];
            for (j = *a2; ; ++j)
            {
              if (*v95 == *j)
              {
                if (!*v95)
                {
                  goto LABEL_144;
                }
              }

              else if (byte_181A20298[*v95] != byte_181A20298[*j])
              {
                break;
              }

              ++v95;
            }
          }

          --v93;
        }

        while (v93);
        v97 = qword_1EA831A40;
        if (!qword_1EA831A40)
        {
          goto LABEL_172;
        }

LABEL_147:
        while (2)
        {
          v98 = sub_181984B88(a1, a2, v97, 0);
          if (v98)
          {
            v99 = v98;
            v100 = sub_1818E7DFC(a1);
            v101 = *(a1 + 152);
            if (!v101)
            {
              v101 = a1;
            }

            v102 = *(v101 + 168);
            if (v102)
            {
              while (*v102 != v99 || *(v102 + 24) != 2)
              {
                v102 = *(v102 + 8);
                if (!v102)
                {
                  goto LABEL_151;
                }
              }
            }

            else
            {
LABEL_151:
              v102 = sub_1818ED318(a1, v99, a2, 2);
              *(*a1 + 84) = -1;
              if (!v102)
              {
                goto LABEL_146;
              }
            }

            if (*v99)
            {
              v103 = (*(*a1 + 49) & 0x20) == 0;
            }

            else
            {
              v103 = 0;
            }

            v104 = *(a1 + 60) + 1;
            *(a1 + 60) = v104;
            v105 = *(v102 + 16);
            v106 = *(v100 + 144);
            if (*(v100 + 148) <= v106)
            {
              v106 = sub_18194C8AC(v100, 48, v24, 0, v104);
            }

            else
            {
              *(v100 + 144) = v106 + 1;
              v107 = *(v100 + 136) + 40 * v106;
              *v107 = 48;
              *(v107 + 4) = v24;
              *(v107 + 8) = 0;
              *(v107 + 12) = v104;
              *(v107 + 24) = 0;
              *(v107 + 32) = 0;
              *(v107 + 16) = 0;
            }

            if (!*(*v100 + 103))
            {
              if (v106 < 0)
              {
                v106 = *(v100 + 144) - 1;
              }

              v108 = *(v100 + 136) + 40 * v106;
              if (*(v108 + 1))
              {
                sub_18194CB90(v100, v108, v105, 4294967292);
              }

              else if (v105)
              {
                *(v108 + 16) = v105;
                *(v108 + 1) = -4;
              }
            }

            v109 = *(v100 + 144);
            if (v109 >= 1)
            {
              *(*(v100 + 136) + 40 * v109 - 38) = v103;
            }
          }

LABEL_146:
          v97 = *(v97 + 24);
          if (!v97)
          {
            goto LABEL_172;
          }

          continue;
        }
      }
    }

    else
    {
      v93 = *(v86 + 21);
      if (v93)
      {
        goto LABEL_133;
      }
    }

    v94 = &qword_1EA831A30;
LABEL_144:
    v97 = v94[2];
    if (v97)
    {
      goto LABEL_147;
    }
  }

LABEL_172:
  if (a3)
  {
    while (2)
    {
      if (*(a3 + 16) == 129 && *(a3 + 17) == 2)
      {
        if (*(a3 + 18))
        {
          if (!*(a1 + 152))
          {
            sub_181982280(a1, a3, a2, v24);
          }
        }

        else
        {
          v110 = sub_1818E7DFC(a1);
          v111 = *(a1 + 152);
          if (!v111)
          {
            v111 = a1;
          }

          v112 = *(v111 + 168);
          if (v112)
          {
            while (*v112 != a3 || *(v112 + 24) != a9)
            {
              v112 = *(v112 + 8);
              if (!v112)
              {
                goto LABEL_183;
              }
            }
          }

          else
          {
LABEL_183:
            v112 = sub_1818ED318(a1, a3, a2, a9);
            *(*a1 + 84) = -1;
            if (!v112)
            {
              goto LABEL_174;
            }
          }

          if (*a3)
          {
            v113 = (*(*a1 + 49) & 0x20) == 0;
          }

          else
          {
            v113 = 0;
          }

          v114 = *(a1 + 60) + 1;
          *(a1 + 60) = v114;
          v115 = *(v112 + 16);
          v116 = *(v110 + 144);
          if (*(v110 + 148) <= v116)
          {
            v116 = sub_18194C8AC(v110, 48, v24, v129, v114);
          }

          else
          {
            *(v110 + 144) = v116 + 1;
            v117 = *(v110 + 136) + 40 * v116;
            *v117 = 48;
            *(v117 + 4) = v24;
            *(v117 + 8) = v129;
            *(v117 + 12) = v114;
            *(v117 + 24) = 0;
            *(v117 + 32) = 0;
            *(v117 + 16) = 0;
          }

          if (!*(*v110 + 103))
          {
            if (v116 < 0)
            {
              v116 = *(v110 + 144) - 1;
            }

            v118 = *(v110 + 136) + 40 * v116;
            if (*(v118 + 1))
            {
              sub_18194CB90(v110, v118, v115, 4294967292);
            }

            else if (v115)
            {
              *(v118 + 16) = v115;
              *(v118 + 1) = -4;
            }
          }

          v119 = *(v110 + 144);
          if (v119 >= 1)
          {
            *(*(v110 + 136) + 40 * v119 - 38) = v113;
          }
        }
      }

LABEL_174:
      a3 = *(a3 + 64);
      if (!a3)
      {
        break;
      }

      continue;
    }
  }

  result = *(v131 + 24);
  v121 = -v126;
  if (result[18] + result[19] < 0)
  {

    return sub_18195CB84(result, v131, v121);
  }

  else
  {
    *(*(result + 10) + 4 * v121) = *(v131 + 144);
  }

  return result;
}

uint64_t sub_1818D6F14(uint64_t a1, char **a2, uint64_t a3, int a4)
{
  v4 = *(*a1 + 48);
  if ((v4 & 0x4000) == 0 || *(a2 + 63))
  {
    return 0;
  }

  if (a3)
  {
    v6 = a2[9];
    v7 = 0;
    result = 1;
    if (!v6)
    {
LABEL_7:
      v8 = a2[12];
      v9 = **a2;
      if (v9)
      {
        v10 = 0;
        v11 = *a2 + 1;
        do
        {
          v10 = -1640531535 * (v10 + (v9 & 0xDF));
          v12 = *v11++;
          v9 = v12;
        }

        while (v12);
      }

      else
      {
        v10 = 0;
      }

      v24 = (v8 + 80);
      v25 = *(v8 + 12);
      if (v25)
      {
        v24 = (v25 + 16 * (v10 % *v24));
        v26 = *v24;
        if (*v24)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v26 = *(v8 + 21);
        if (v26)
        {
LABEL_36:
          v27 = v24 + 2;
          do
          {
            v27 = *v27;
            if (v10 == v27[8])
            {
              v28 = *(v27 + 3);
              for (i = *a2; ; ++i)
              {
                if (*v28 == *i)
                {
                  if (!*v28)
                  {
                    j = *(v27 + 2);
                    if (j)
                    {
                      goto LABEL_71;
                    }

                    goto LABEL_48;
                  }
                }

                else if (byte_181A20298[*v28] != byte_181A20298[*i])
                {
                  break;
                }

                ++v28;
              }
            }

            --v26;
          }

          while (v26);
          for (j = qword_1EA831A40; j; j = *(j + 24))
          {
LABEL_71:
            v37 = *(j + 40);
            if (v37 >= 1)
            {
              v38 = 0;
              v39 = *(a2 + 27);
              while (v39 < 1)
              {
LABEL_87:
                if (++v38 == v37)
                {
                  goto LABEL_70;
                }
              }

              v40 = 0;
              while (1)
              {
                if ((*(a3 + 4 * v40) & 0x80000000) == 0 || a4 && v40 == *(a2 + 26))
                {
                  v41 = &a2[1][16 * v40];
                  if (*(j + 64 + 16 * v38 + 8))
                  {
                    v42 = *v41;
                    for (k = *(j + 64 + 16 * v38 + 8); ; ++k)
                    {
                      if (*v42 == *k)
                      {
                        if (!*v42)
                        {
                          goto LABEL_89;
                        }
                      }

                      else if (byte_181A20298[*v42] != byte_181A20298[*k])
                      {
                        goto LABEL_76;
                      }

                      ++v42;
                    }
                  }

                  if (*(v41 + 7))
                  {
                    break;
                  }
                }

LABEL_76:
                if (++v40 == v39)
                {
                  goto LABEL_87;
                }
              }

LABEL_89:
              if ((v4 & 0x800000000) == 0 && *(j + 46))
              {
                return 2;
              }

              v7 = 1;
            }

LABEL_70:
            ;
          }

LABEL_48:
          if (!v7)
          {
            return 0;
          }

          return result;
        }
      }

      j = qword_1EA831A40;
      if (qword_1EA831A40)
      {
        goto LABEL_71;
      }

      goto LABEL_48;
    }

    while (1)
    {
      v13 = *(v6 + 10);
      if (v13 >= 1)
      {
        v14 = (v6 + 64);
        while (1)
        {
          v16 = *v14;
          v14 += 4;
          v15 = v16;
          if ((*(a3 + 4 * v16) & 0x80000000) == 0 || a4 && v15 == *(a2 + 26))
          {
            break;
          }

          if (!--v13)
          {
            goto LABEL_13;
          }
        }

        v17 = *a2;
        v18 = *(v6 + 2);
        if (*a2)
        {
          if (v18)
          {
            while (1)
            {
              if (*v17 == *v18)
              {
                if (!*v17)
                {
                  goto LABEL_28;
                }
              }

              else if (byte_181A20298[*v17] != byte_181A20298[*v18])
              {
                break;
              }

              ++v17;
              ++v18;
            }
          }
        }

        else if (!v18)
        {
LABEL_28:
          v7 = 1;
          result = 2;
          goto LABEL_13;
        }

        v7 = 1;
      }

LABEL_13:
      v6 = *(v6 + 1);
      if (!v6)
      {
        goto LABEL_7;
      }
    }
  }

  v19 = a2[12];
  v20 = **a2;
  if (v20)
  {
    v21 = 0;
    v22 = *a2 + 1;
    do
    {
      v21 = -1640531535 * (v21 + (v20 & 0xDF));
      v23 = *v22++;
      v20 = v23;
    }

    while (v23);
  }

  else
  {
    v21 = 0;
  }

  v31 = (v19 + 80);
  v32 = *(v19 + 12);
  if (v32)
  {
    v31 = (v32 + 16 * (v21 % *v31));
    v33 = *v31;
    if (*v31)
    {
      goto LABEL_53;
    }

LABEL_64:
    if (qword_1EA831A40)
    {
      return 1;
    }

    goto LABEL_65;
  }

  v33 = *(v19 + 21);
  if (!v33)
  {
    goto LABEL_64;
  }

LABEL_53:
  v34 = v31 + 2;
  while (1)
  {
    v34 = *v34;
    if (v21 == v34[8])
    {
      break;
    }

LABEL_54:
    if (!--v33)
    {
      if (qword_1EA831A40)
      {
        return 1;
      }

      goto LABEL_65;
    }
  }

  v35 = *(v34 + 3);
  for (m = *a2; *v35 != *m; ++m)
  {
    if (byte_181A20298[*v35] != byte_181A20298[*m])
    {
      goto LABEL_54;
    }

LABEL_58:
    ++v35;
  }

  if (*v35)
  {
    goto LABEL_58;
  }

  if (*(v34 + 2))
  {
    return 1;
  }

LABEL_65:
  result = 1;
  if (!a2[9])
  {
    return 0;
  }

  return result;
}

uint64_t sub_1818D72E8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, unsigned int *a6, unsigned int *a7, int a8)
{
  v11 = a4;
  v14 = *(a1 + 16);
  if (a6)
  {
    v15 = *(a2 + 72);
    if (v15)
    {
      v16 = *(a1 + 72) - 1;
      *(a1 + 72) = v16;
      *a6 = v16;
      *(a1 + 68) = a3 + 1;
      v17 = (a1 + 68);
      v18 = *a6;
      v19 = *a1;
      a7 = sub_1818C7FEC(*a1, v15, 0, 0);
      if (!*(v19 + 103))
      {
        sub_1818DD640(a1, a7, v18, 16);
      }

      if (a7)
      {
        sub_1819439E0(v19, a7);
        a7 = 0;
      }
    }

    else
    {
      v17 = a6;
    }

    *v17 = 0;
  }

  if (a5 && (*(a2 + 99) & 8) != 0)
  {
    v20 = 94;
  }

  else
  {
    v20 = 96;
  }

  v21 = *(a2 + v20);
  if (v21 == 1)
  {
    if (*(a1 + 31))
    {
      v22 = *(a1 + 31) - 1;
      *(a1 + 31) = v22;
      v23 = *(a1 + 4 * v22 + 184);
      v46 = v11;
      v47 = v23;
      if (!a7)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v23 = *(a1 + 60) + 1;
      *(a1 + 60) = v23;
      v46 = v11;
      v47 = v23;
      if (!a7)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v24 = *(a1 + 44);
    v25 = __OFSUB__(v24, v21);
    v26 = v24 - v21;
    if (v26 < 0 != v25)
    {
      v27 = *(a1 + 60);
      v23 = v27 + 1;
      *(a1 + 60) = v27 + v21;
      v46 = v11;
      v47 = v27 + 1;
      if (!a7)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v23 = *(a1 + 48);
      *(a1 + 44) = v26;
      *(a1 + 48) = v23 + v21;
      v46 = v11;
      v47 = v23;
      if (!a7)
      {
        goto LABEL_27;
      }
    }
  }

  if (v23 != a8 || *(a7 + 9))
  {
    a7 = 0;
  }

LABEL_27:
  v48 = v21;
  if (v21)
  {
    v28 = 0;
    v29 = 2 * v21;
    v30 = 8;
    v31 = v47;
    while (1)
    {
      v32 = *(a2 + 8);
      if (!a7)
      {
        break;
      }

      v33 = *(*(a7 + 1) + v28);
      v34 = *(v32 + v28);
      if (v33 == 65534 || v33 != v34)
      {
        if (v34 == 65534)
        {
          goto LABEL_36;
        }

LABEL_43:
        sub_181959FA4(*(a1 + 16), *(a2 + 24), a3, v34, v31);
LABEL_44:
        if ((*(*(a2 + 8) + v28) & 0x80000000) == 0)
        {
          v40 = *(v14 + 144);
          if (v40 >= 1)
          {
            v41 = *(v14 + 136) + 40 * v40;
            if (*(v41 - 40) == 87 && !*(*v14 + 103))
            {
              sub_1818A3B68(*v14, *(v41 - 39), *(v41 - 24), a4);
              *(v41 - 24) = 0;
              *(v41 - 40) = 187;
            }
          }
        }
      }

      v28 += 2;
      v31 = (v31 + 1);
      v30 += 24;
      if (v29 == v28)
      {
        goto LABEL_51;
      }
    }

    v34 = *(v32 + v28);
    if (v34 != 65534)
    {
      goto LABEL_43;
    }

LABEL_36:
    v36 = v14;
    *(a1 + 68) = a3 + 1;
    v37 = *(*(a2 + 80) + v30);
    v38 = *a1;
    if (v37)
    {
      v39 = sub_1818C7FEC(*a1, v37, 0, 0);
      if (*(v38 + 103))
      {
LABEL_39:
        if (v39)
        {
          sub_1819439E0(v38, v39);
        }

        *(a1 + 68) = 0;
        v14 = v36;
        goto LABEL_44;
      }
    }

    else
    {
      v39 = 0;
      if (*(v38 + 103))
      {
        goto LABEL_39;
      }
    }

    sub_181956EF4(a1, v39, v31);
    goto LABEL_39;
  }

LABEL_51:
  if (v46)
  {
    v42 = *(v14 + 144);
    if (*(v14 + 148) <= v42)
    {
      sub_18194C8AC(v14, 97, v47, v48, v46);
      if (v48 == 1)
      {
        goto LABEL_55;
      }

      goto LABEL_59;
    }

    *(v14 + 144) = v42 + 1;
    v43 = *(v14 + 136) + 40 * v42;
    *v43 = 97;
    *(v43 + 4) = v47;
    *(v43 + 8) = v48;
    *(v43 + 12) = v46;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0;
    *(v43 + 16) = 0;
  }

  if (v48 == 1)
  {
LABEL_55:
    if (v47)
    {
      v44 = *(a1 + 31);
      if (v44 <= 7)
      {
        *(a1 + 31) = v44 + 1;
        *(a1 + 4 * v44 + 184) = v47;
      }
    }

    return v47;
  }

LABEL_59:
  if (*(a1 + 44) < v48)
  {
    *(a1 + 44) = v48;
    *(a1 + 48) = v47;
  }

  return v47;
}

void sub_1818D7680(uint64_t *a1, unsigned __int8 **a2, int a3, int a4, uint64_t a5, int a6)
{
  v108 = *a1;
  if ((*(*a1 + 49) & 0x40) == 0)
  {
    return;
  }

  v7 = a2;
  if (*(a2 + 63))
  {
    return;
  }

  v8 = a5;
  v9 = a4;
  v10 = a2[12];
  v11 = *(v108 + 32);
  if (v10)
  {
    v12 = (v11 + 24);
    v13 = -1;
    v14 = a1;
    do
    {
      v15 = *v12;
      v12 += 4;
      ++v13;
    }

    while (v15 != v10);
  }

  else
  {
    v13 = -32768;
    v14 = a1;
  }

  v103 = *(v14 + 42);
  v16 = a2[9];
  if (v16)
  {
    v104 = v13;
    v17 = *(v11 + 32 * v13);
    v106 = a3 + 1;
    v100 = a6;
    v98 = v17;
    while (1)
    {
      v110 = 0;
      v111 = 0;
      v109 = 0;
      if (!v8)
      {
        goto LABEL_30;
      }

      v19 = *v7;
      v20 = *(v16 + 2);
      if (*v7)
      {
        if (v20)
        {
          while (1)
          {
            if (*v19 == *v20)
            {
              if (!*v19)
              {
                goto LABEL_30;
              }
            }

            else if (byte_181A20298[*v19] != byte_181A20298[*v20])
            {
              break;
            }

            ++v19;
            ++v20;
          }
        }
      }

      else if (!v20)
      {
        goto LABEL_30;
      }

      v21 = *(v16 + 10);
      if (v21 < 1)
      {
        goto LABEL_13;
      }

      v22 = (v16 + 64);
      while (1)
      {
        v24 = *v22;
        v22 += 4;
        v23 = v24;
        if ((*(v8 + 4 * v24) & 0x80000000) == 0 || a6 && v23 == *(v7 + 26))
        {
          break;
        }

        if (!--v21)
        {
          goto LABEL_13;
        }
      }

LABEL_30:
      if (*(v14 + 42))
      {
        v25 = sub_181917F20(v108, *(v16 + 2), v17);
        if (!v25)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v25 = sub_1818CA520(v14, 0, *(v16 + 2), v17);
        if (!v25)
        {
          goto LABEL_35;
        }
      }

      if (!sub_181981F28(v14, v25, v16, &v111, &v110))
      {
        v58 = v110;
        if (!v110)
        {
          v109 = *(v16 + 16);
          v58 = &v109;
        }

        v59 = a2;
        if (*(v16 + 10) < 1)
        {
          v62 = 0;
        }

        else
        {
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = v111;
          do
          {
            if (v58[v61] == *(v59 + 26))
            {
              v58[v61] = -1;
            }

            if (*(v108 + 528))
            {
              v64 = (v25 + 52);
              if (v63)
              {
                v64 = (*(v63 + 8) + v60);
              }

              v62 = sub_1818DEFEC(a1, *v25, *(*(v25 + 8) + 16 * *v64), v104) == 2;
              v59 = a2;
            }

            ++v61;
            v60 += 2;
          }

          while (v61 < *(v16 + 10));
        }

        v14 = a1;
        if (v104 != 1 && *(*(*(*a1 + 32) + 32 * v104 + 8) + 17))
        {
          sub_1819570CC(a1, v104, *(v25 + 40), 0, *v25);
        }

        ++*(a1 + 14);
        a6 = v100;
        v9 = a4;
        v8 = a5;
        if (a3)
        {
          sub_181982A08(a1, v104, v25, v111, v16, v58, a3, -1, v62);
        }

        if (a4)
        {
          v66 = a1[19];
          if (!v66)
          {
            v66 = a1;
          }

          v67 = v66[21];
          if (!v67 || ((v68 = *v67, v68 != *(v16 + 6)) || v16[45] != 8) && (v68 != *(v16 + 7) || v16[46] != 8))
          {
            sub_181982A08(a1, v104, v25, v111, v16, v58, a4, 1, v62);
          }
        }

        v7 = a2;
        v17 = v98;
        if (!v110)
        {
          goto LABEL_13;
        }

        sub_181929C84(v108, v110);
        goto LABEL_12;
      }

LABEL_35:
      if (!v103 || *(v108 + 103))
      {
        return;
      }

      v7 = a2;
      if (v25)
      {
        goto LABEL_13;
      }

      v26 = sub_1818E7DFC(v14);
      v27 = *(v26 + 144);
      v28 = *(v16 + 10);
      if (v28 >= 1)
      {
        v29 = 0;
        v30 = v27 + v28 + 1;
        v31.i64[0] = 0x1000100010001;
        v31.i64[1] = 0x1000100010001;
        while (1)
        {
          v33 = *&v16[16 * v29 + 64];
          v34 = v33;
          if ((v33 & 0x8000) == 0)
          {
            v35 = *v16;
            if ((*(*v16 + 48) & 0x20) != 0)
            {
              break;
            }
          }

LABEL_65:
          v56 = v106 + v34;
          v57 = *(v26 + 144);
          if (*(v26 + 148) > v57)
          {
            *(v26 + 144) = v57 + 1;
            v32 = *(v26 + 136) + 40 * v57;
            *v32 = 51;
            *(v32 + 4) = v56;
            *(v32 + 8) = v30;
            *(v32 + 12) = 0;
            *(v32 + 28) = 0;
            *(v32 + 20) = 0;
            *(v32 + 36) = 0;
          }

          else
          {
            sub_18194C8AC(v26, 51, v56, v30, 0);
            v31.i64[0] = 0x1000100010001;
            v31.i64[1] = 0x1000100010001;
          }

          if (++v29 >= *(v16 + 10))
          {
            v27 = *(v26 + 144);
            v14 = a1;
            v17 = v98;
            goto LABEL_79;
          }
        }

        v36 = v33 & 0x7FFF;
        v37 = *(v35 + 8);
        if (v33)
        {
          if (v36 < 5)
          {
            v38 = 0;
            v34 = 0;
            goto LABEL_61;
          }

          if (v36 < 0x11)
          {
            v34 = 0;
            v38 = 0;
            goto LABEL_56;
          }

          if ((v33 & 0xF) != 0)
          {
            v39 = v33 & 0xF;
          }

          else
          {
            v39 = 16;
          }

          v38 = v36 - v39;
          v40 = (v37 + 142);
          v41 = 0uLL;
          v42 = v33 & 0x7FFF;
          v43 = 0uLL;
          do
          {
            v44.i16[0] = *(v40 - 64);
            v44.i16[1] = *(v40 - 56);
            v44.i16[2] = *(v40 - 48);
            v44.i16[3] = *(v40 - 40);
            v44.i16[4] = *(v40 - 32);
            v44.i16[5] = *(v40 - 24);
            v44.i16[6] = *(v40 - 16);
            v44.i16[7] = *(v40 - 8);
            v45.i16[0] = *v40;
            v45.i16[1] = v40[8];
            v45.i16[2] = v40[16];
            v45.i16[3] = v40[24];
            v45.i16[4] = v40[32];
            v45.i16[5] = v40[40];
            v45.i16[6] = v40[48];
            v45.i16[7] = v40[56];
            v41 = vaddq_s16(vbicq_s8(v31, vshrq_n_u16(v44, 5uLL)), v41);
            v43 = vaddq_s16(vbicq_s8(v31, vshrq_n_u16(v45, 5uLL)), v43);
            v42 -= 16;
            v40 += 128;
          }

          while (v39 != v42);
          v34 = vaddvq_s16(vaddq_s16(v43, v41));
          a6 = v100;
          v9 = a4;
          v8 = a5;
          if (v39 >= 5)
          {
LABEL_56:
            v46 = v33 & 3;
            if ((v33 & 3) == 0)
            {
              v46 = 4;
            }

            v47 = v37 + 16 * v38;
            v48 = v46 + v38;
            v38 = v36 - v46;
            v49 = v34;
            v50 = (v47 + 46);
            v51 = v48 - v36;
            do
            {
              v52.i16[0] = *(v50 - 16);
              v52.i16[1] = *(v50 - 8);
              v52.i16[2] = *v50;
              v52.i16[3] = v50[8];
              v49 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v52, 5uLL)), v49);
              v50 += 32;
              v51 += 4;
            }

            while (v51);
            v34 = vaddv_s16(v49);
          }

LABEL_61:
          v53 = v36 - v38;
          v54 = (v37 + 16 * v38 + 14);
          do
          {
            v55 = *v54;
            v54 += 8;
            v34 += ((v55 >> 5) & 1) == 0;
            --v53;
          }

          while (v53);
        }

        else
        {
          v34 = 0;
        }

        if ((*(v37 + 16 * v36 + 14) & 0x20) != 0)
        {
          v34 = v33 - v34 + *(v35 + 56);
        }

        goto LABEL_65;
      }

LABEL_79:
      v65 = v16[44];
      if (*(v26 + 148) > v27)
      {
        *(v26 + 144) = v27 + 1;
        v18 = *(v26 + 136) + 40 * v27;
        *v18 = 158;
        *(v18 + 4) = v65;
        *(v18 + 8) = -1;
        *(v18 + 12) = 0;
        *(v18 + 28) = 0;
        *(v18 + 20) = 0;
        *(v18 + 36) = 0;
      }

      else
      {
        sub_18194C8AC(v26, 158, v65, -1, 0);
      }

LABEL_12:
      v7 = a2;
LABEL_13:
      v16 = *(v16 + 1);
      if (!v16)
      {
        v10 = v7[12];
        break;
      }
    }
  }

  v69 = **v7;
  if (v69)
  {
    v70 = 0;
    v71 = *v7 + 1;
    do
    {
      v70 = -1640531535 * (v70 + (v69 & 0xDF));
      v72 = *v71++;
      v69 = v72;
    }

    while (v72);
  }

  else
  {
    v70 = 0;
  }

  v73 = v10 + 80;
  v74 = *(v10 + 12);
  if (!v74)
  {
    v75 = *(v10 + 21);
    if (v75)
    {
      goto LABEL_106;
    }

LABEL_116:
    v76 = &qword_1EA831A30;
LABEL_117:
    v79 = v76[2];
    if (!v79)
    {
      return;
    }

    goto LABEL_118;
  }

  v73 = (v74 + 16 * (v70 % *v73));
  v75 = *v73;
  if (!*v73)
  {
    goto LABEL_116;
  }

LABEL_106:
  v76 = (v73 + 2);
  do
  {
    v76 = *v76;
    if (v70 == *(v76 + 8))
    {
      v77 = v76[3];
      for (i = *v7; ; ++i)
      {
        if (*v77 == *i)
        {
          if (!*v77)
          {
            goto LABEL_117;
          }
        }

        else if (byte_181A20298[*v77] != byte_181A20298[*i])
        {
          break;
        }

        ++v77;
      }
    }

    --v75;
  }

  while (v75);
  v79 = qword_1EA831A40;
  if (qword_1EA831A40)
  {
LABEL_118:
    v80 = v8 != 0;
    do
    {
      v110 = 0;
      v111 = 0;
      if (v8)
      {
        v81 = *(v79 + 40);
        if (v81 < 1)
        {
          goto LABEL_119;
        }

        v82 = 0;
        v83 = *(v7 + 27);
        while (v83 < 1)
        {
LABEL_137:
          if (++v82 == v81)
          {
            goto LABEL_119;
          }
        }

        v84 = 0;
        while (1)
        {
          if ((*(v8 + 4 * v84) & 0x80000000) == 0 || a6 && v84 == *(v7 + 26))
          {
            v85 = &v7[1][16 * v84];
            if (*(v79 + 64 + 16 * v82 + 8))
            {
              v86 = *v85;
              for (j = *(v79 + 64 + 16 * v82 + 8); ; ++j)
              {
                if (*v86 == *j)
                {
                  if (!*v86)
                  {
                    goto LABEL_139;
                  }
                }

                else if (byte_181A20298[*v86] != byte_181A20298[*j])
                {
                  goto LABEL_126;
                }

                ++v86;
              }
            }

            if (*(v85 + 14))
            {
              break;
            }
          }

LABEL_126:
          if (++v84 == v83)
          {
            goto LABEL_137;
          }
        }
      }

LABEL_139:
      if (*(v79 + 44) || (*(v108 + 50) & 8) != 0 || a1[19] || *(a1 + 32))
      {
        if (sub_181981F28(a1, v7, v79, &v111, &v110))
        {
          v7 = a2;
          if (!v103 || *(v108 + 103))
          {
            return;
          }
        }

        else
        {
          v88 = sub_181929E8C(*a1, 0x50uLL, 0x103204056E3F560);
          if (v88)
          {
            v91 = v88;
            *v88 = 0x100000001;
            *(v88 + 1) = 0u;
            *(v88 + 7) = 0u;
            *(v88 + 5) = 0u;
            *(v88 + 3) = 0u;
            v88[1] = 0;
            v88[9] = 0;
            v92 = *v79;
            v88[3] = *v79;
            v88[1] = *v92;
            ++*(v92 + 44);
            LODWORD(v92) = *(a1 + 14);
            *(a1 + 14) = v92 + 1;
            *(v88 + 9) = v92;
            if (v9)
            {
              sub_181983EE4(a1, v88, a2, v111, v79, v110, v9, -1);
            }

            if (a3)
            {
              v93 = (*(v108 + 48) >> 35) & 1;
              v94 = *(v79 + v80 + 45) & 0xFD;
              sub_181983EE4(a1, v91, a2, v111, v79, v110, a3, 1);
              v95 = v94 == 8;
              v9 = a4;
              v96 = v95 ? v93 : 1;
              v8 = a5;
              if (!*(v79 + 44))
              {
                if (v96)
                {
                  v97 = a1[19];
                  if (!v97)
                  {
                    v97 = a1;
                  }

                  *(v97 + 33) = 1;
                }
              }
            }

            *(v91 + 1) = 0;
            sub_1818BB5B0(v108, v91, v89, v90);
          }

          v7 = a2;
          if (v110)
          {
            sub_181929C84(v108, v110);
            v7 = a2;
          }
        }
      }

LABEL_119:
      v79 = *(v79 + 24);
    }

    while (v79);
  }
}

void sub_1818D80A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v11 = a9;
  v12 = *(a1 + 16);
  v13 = *(a2 + 16);
  if (!v13)
  {
    v32 = 0;
    if ((*(a2 + 48) & 0x80) != 0)
    {
      return;
    }

    goto LABEL_27;
  }

  v14 = a4;
  v41 = a8;
  v42 = a3;
  v43 = a5;
  v15 = 0;
  v45 = a7;
  v16 = a7 & 2 | (16 * (a9 != 0)) | 1;
  do
  {
    v17 = *(a6 + 4 * v15);
    if (v17)
    {
      if (*(v13 + 72))
      {
        v18 = *(v12 + 144);
        v19 = v18 + 2;
        if (*(v12 + 148) <= v18)
        {
          sub_18194C8AC(v12, 51, v17, v19, 0);
        }

        else
        {
          *(v12 + 144) = v18 + 1;
          v20 = *(v12 + 136) + 40 * v18;
          *v20 = 51;
          *(v20 + 4) = v17;
          *(v20 + 8) = v19;
          *(v20 + 12) = 0;
          *(v20 + 28) = 0;
          *(v20 + 20) = 0;
          *(v20 + 36) = 0;
        }
      }

      v21 = *(v13 + 99);
      if ((v21 & 3) == 2)
      {
        v22 = *(a2 + 48);
        if ((v22 & 0x80) != 0)
        {
          v23 = v16;
        }

        else
        {
          v23 = 16 * (a9 != 0);
        }

        if ((v22 & 0x80) != 0 && !v45)
        {
          sub_18198795C(a1, a2, v14, *(a6 + 4 * v15));
          v21 = *(v13 + 99);
          v23 = v16;
        }
      }

      else
      {
        v23 = 16 * (a9 != 0);
      }

      v24 = *(a6 + 4 * v15);
      v25 = v24 + 1;
      v26 = (v21 & 8) == 0;
      v27 = 94;
      if (v26)
      {
        v27 = 96;
      }

      v28 = *(v13 + v27);
      v29 = *(v12 + 144);
      if (*(v12 + 148) <= v29)
      {
        sub_18194CAFC(v12, 138, v14, v24, v25, v28);
      }

      else
      {
        *(v12 + 144) = v29 + 1;
        v30 = *(v12 + 136) + 40 * v29;
        *v30 = 64906;
        *(v30 + 4) = v14;
        *(v30 + 8) = v24;
        *(v30 + 12) = v25;
        *(v30 + 16) = v28;
        *(v30 + 24) = 0;
        *(v30 + 32) = 0;
      }

      v31 = *(v12 + 144);
      if (v31 >= 1)
      {
        *(*(v12 + 136) + 40 * v31 - 38) = v23;
      }
    }

    ++v15;
    v13 = *(v13 + 40);
    ++v14;
  }

  while (v13);
  v32 = v15;
  LODWORD(a3) = v42;
  LODWORD(a5) = v43;
  v11 = a9;
  a8 = v41;
  a7 = v45;
  if ((*(a2 + 48) & 0x80) == 0)
  {
LABEL_27:
    v33 = a7 | 1;
    if (!a7)
    {
      v33 = 33;
    }

    if (*(a1 + 30))
    {
      v34 = 0;
    }

    else
    {
      v34 = v33;
    }

    if (a8)
    {
      v34 |= 8u;
    }

    if (v11)
    {
      v35 = v34 | 0x10;
    }

    else
    {
      v35 = v34;
    }

    v36 = *(a6 + 4 * v32);
    v37 = *(v12 + 144);
    if (*(v12 + 148) <= v37)
    {
      sub_18194C8AC(v12, 128, a3, v36, a5);
    }

    else
    {
      *(v12 + 144) = v37 + 1;
      v38 = *(v12 + 136) + 40 * v37;
      *v38 = 128;
      *(v38 + 4) = a3;
      *(v38 + 8) = v36;
      *(v38 + 12) = a5;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0;
      *(v38 + 16) = 0;
    }

    if (!*(a1 + 30) && !*(*v12 + 103))
    {
      v39 = *(v12 + 136) + 40 * *(v12 + 144);
      *(v39 - 39) = -5;
      *(v39 - 24) = a2;
    }

    v40 = *(v12 + 144);
    if (v40 >= 1)
    {
      *(*(v12 + 136) + 40 * v40 - 38) = v35;
    }
  }
}

void sub_1818D8380(uint64_t result, __int128 *a2, __int16 a3)
{
  if ((*(result + 20) & 0x9000) != 0)
  {
    sub_181943178(result, a2, a3);
  }

  else
  {
    v3 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v3;
    if ((*(a2 + 21) & 0x20) == 0)
    {
      *(result + 20) = *(result + 20) & 0x8FFF | a3;
    }
  }
}

uint64_t sub_1818D83C0(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 67)
  {
    if (a2 != 66)
    {
      return result;
    }

    v9 = *(result + 20);
    if ((v9 & 2) != 0 || (v9 & 0x2C) == 0)
    {
      goto LABEL_29;
    }

    if (*(result + 32) >= 32)
    {
      v12 = *(result + 40);
      *(result + 8) = v12;
      v11 = result;
      *(result + 20) = v9 & 0x2D;
    }

    else
    {
      v11 = result;
      if (sub_1818BB128(result, 0x20u, 0, a4))
      {
        result = v11;
        *(v11 + 22) = 0;
LABEL_29:
        v8 = *(result + 20) & 0xFFD3;
        goto LABEL_30;
      }

      v12 = *(v11 + 8);
    }

    sub_18193CE24(v12, v11);
    result = v11;
    *(v11 + 22) = 1;
    *(v11 + 20) = *(v11 + 20) & 0xFDD1 | 0x202;
    if (a3 != 1)
    {
      sub_1818F1820(v11, a3, v13, v14);
      result = v11;
    }

    goto LABEL_29;
  }

  v5 = *(result + 20);
  if ((v5 & 4) != 0)
  {
    return result;
  }

  if ((v5 & 0x28) != 0)
  {
    if (a2 > 0x45)
    {
      return result;
    }

    if ((v5 & 0x20) != 0)
    {
      goto LABEL_14;
    }

    if (fabs(*result) <= 9.22337204e18 && *result == *result && (*result + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      *result = *result;
LABEL_14:
      v8 = v5 & 0xF240 | 4;
LABEL_30:
      *(result + 20) = v8;
    }
  }

  else if ((v5 & 2) != 0)
  {

    return sub_18190FC94(result, 1);
  }

  return result;
}

uint64_t sub_1818D8528(_WORD *a1)
{
  if (a1)
  {
    v2 = a1[10];
    if ((v2 & 0x24) != 0)
    {
      return *a1;
    }

    else if ((v2 & 8) != 0)
    {
      v4 = *a1;
      if (*a1 >= -9.22337204e18)
      {
        if (v4 <= 9.22337204e18)
        {
          return v4;
        }

        else
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        return 0x8000000000000000;
      }
    }

    else if ((v2 & 0x12) != 0 && *(a1 + 1))
    {

      return sub_18193CFCC(a1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1819012D0(92237);
    return 0;
  }
}

uint64_t sub_1818D85D8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(v2 + 8);
  v78[0] = 0;
  v78[1] = 0;
  v79 = 0;
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  if (v4 >= 3)
  {
    v80 = 0;
    if (v4 == 4)
    {
      return *(a1 + 1);
    }

    v7 = a2;
    *a1 = 1;
    if (off_1ED453038)
    {
      v8 = a1;
      v9 = off_1ED453038(410);
      a1 = v8;
      if (v9)
      {
        return 10;
      }
    }

    v10 = a1;
    v5 = sub_1818DC828(a1, *(a1 + 3), *(a1 + 9), 0, &v80);
    if (v5)
    {
      return v5;
    }

    a1 = v10;
    v11 = *(v10 + 3);
    if (!v11)
    {
      goto LABEL_19;
    }

    v12 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
      --qword_1ED456A90;
      off_1ED452EB0(v11);
      v11 = xmmword_1ED456AF0;
      a1 = v10;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_19;
      }

      v12 = &xmmword_1ED452F28;
    }

    (*v12)(v11);
    a1 = v10;
LABEL_19:
    *(a1 + 3) = 0;
    if (v80)
    {
      *(a1 + 1) = v80;
LABEL_22:
      if (!*a1)
      {
        *a1 = 2;
      }

      return 0;
    }

    v5 = *(a1 + 1);
    if (v5)
    {
      goto LABEL_22;
    }

    v13 = *a1;
    v80 = 0;
    LOBYTE(a2) = v7;
    if (v13)
    {
      return v5;
    }

LABEL_26:
    v15 = (a1 + 136);
    v14 = *(a1 + 17);
    v16 = *(a1 + 43);
    v17 = *(v14 + 24);
    if (v17 <= v16)
    {
      v25 = 89062;
      goto LABEL_31;
    }

    v77 = a1[84];
    v18 = *(v14 + 80);
    v19 = *(v14 + 26);
    v20 = *(v14 + 96);
    v21 = (v20 + 2 * v16);
    v22 = *v21;
    v23 = v21[1];
    if ((*(v14 + 20) & 0x80000000) != 0)
    {
      v76 = v3;
      v27 = *(a1 + 43);
      v28 = a2;
      v29 = a1;
      if (sub_1819454C4(v14))
      {
        v25 = 89066;
        goto LABEL_31;
      }

      v20 = *(v14 + 96);
      v17 = *(v14 + 24);
      a1 = v29;
      LOBYTE(a2) = v28;
      LODWORD(v16) = v27;
      v3 = v76;
    }

    v24 = v18 + ((v23 | (v22 << 8)) & v19);
    if (v24 < v20 + v17)
    {
      v25 = 89069;
LABEL_31:

      return sub_18193596C(v25, v14);
    }

    if ((a2 & 2) != 0)
    {
      v30 = a2;
      if (*(v14 + 8) && (v31 = *(v14 + 20), v32 = a1, v33 = (*(v14 + 120))(v14, v24), a1 = v32, v31 + v33 + 2 <= (2 * *(v3 + 56) / 3u)) && *(v14 + 24) != 1)
      {
        v26 = 1;
      }

      else
      {
        v34 = a1;
        v35 = sub_1819389F0(a1);
        if (v35)
        {
          return v35;
        }

        v26 = 0;
        a1 = v34;
      }

      LOBYTE(a2) = v30;
      if (*(v14 + 8))
      {
LABEL_54:
        if ((a1[1] & 0x20) != 0)
        {
          v39 = *(v3 + 16);
          if (v39)
          {
            v40 = *(a1 + 20);
            do
            {
              if (v39 != a1 && (!v40 || *(v39 + 80) == v40))
              {
                v41 = a1;
                v42 = a2;
                v43 = sub_18193880C(v39, v40, a1);
                LOBYTE(a2) = v42;
                v5 = v43;
                a1 = v41;
                v80 = v5;
                if (v5)
                {
                  return v5;
                }

                goto LABEL_66;
              }

              v39 = *(v39 + 40);
            }

            while (v39);
            if (!a1)
            {
              goto LABEL_65;
            }
          }

          a1[1] &= ~0x20u;
LABEL_65:
          v80 = 0;
        }

LABEL_66:
        if (!*(a1 + 16) && *(v2 + 19))
        {
          v44 = *(a1 + 20);
          v45 = *(a1 + 6);
          v46 = a1;
          v47 = v2;
          v48 = a2;
          sub_181943D9C(v47, v44, v45, 0);
          LOBYTE(a2) = v48;
          a1 = v46;
        }

        v49 = *(v14 + 112);
        v50 = *(v49 + 40);
        if ((*(v49 + 52) & 4) != 0 && v50[8] >= *(v49 + 48))
        {
          if (!v50[32])
          {
            goto LABEL_78;
          }

          v51 = a2;
          v52 = a1;
          v54 = sub_1819360C0(*(v14 + 112));
        }

        else
        {
          v5 = v50[12];
          if (v5)
          {
            return v5;
          }

          v51 = a2;
          v52 = a1;
          v53 = *(v14 + 112);
          if (v50[46] <= v50[50])
          {
            v54 = sub_1818D8DD8(v53);
          }

          else
          {
            v54 = sub_181936438(v53);
          }
        }

        v5 = v54;
        a1 = v52;
        LOBYTE(a2) = v51;
        if (v5)
        {
          return v5;
        }

LABEL_78:
        v55 = a2;
        v56 = a1;
        (*(v14 + 128))(v14, v24, v78);
        if (v79 == WORD2(v79))
        {
          v57 = 0;
        }

        else
        {
          v57 = sub_181943DF0(v14, v24, v78);
        }

        v80 = v57;
        sub_1818D927C(v14, v16, HIWORD(v79), &v80);
        v5 = v80;
        if (v80)
        {
          return v5;
        }

        v58 = v56;
        v59 = v55;
        if (!*(v14 + 8))
        {
          v66 = *v15;
          if ((*(*v15 + 20) & 0x80000000) != 0)
          {
            v5 = sub_1819454C4(*v15);
            v58 = v56;
            if (v5)
            {
              return v5;
            }
          }

          if (v58[84] - 1 <= v77)
          {
            v67 = v15;
          }

          else
          {
            v67 = &v58[8 * v77 + 152];
          }

          v68 = *(v66 + 96) + 2 * *(v66 + 24);
          v69 = (*(v68 - 1) | (*(v68 - 2) << 8)) & *(v66 + 26);
          if (v69 <= 3)
          {
            return sub_18193596C(89160, v66);
          }

          v72 = *(*v67 + 4);
          v73 = *(v66 + 80) + v69;
          v74 = (*(v66 + 120))(v66, v73);
          v75 = *(v3 + 136);
          v80 = sub_1818D8D88(*(v66 + 112));
          if (!v80)
          {
            v80 = sub_1818DCB50(v14, v16, (v73 - 4), (v74 + 4), v75, v72);
          }

          sub_1818D927C(v66, *(v66 + 24) - 1, v74, &v80);
          v5 = v80;
          v58 = v56;
          v59 = v55;
          if (v80)
          {
            return v5;
          }
        }

        if (3 * *(*(v58 + 17) + 20) <= 2 * *(*(v58 + 4) + 56) || (v60 = sub_1818D93BC(v56), v59 = v55, v5 = v60, v58 = v56, !v5))
        {
          if (v58[84] <= v77)
          {
            goto LABEL_93;
          }

          sub_181932B18(*(*(v58 + 17) + 112));
          v61 = v56;
          v62 = --v56[84];
          if (v62 > v77)
          {
            do
            {
              while (1)
              {
                v63 = v62 - 1;
                v61[84] = v62 - 1;
                v64 = *&v56[8 * v62 + 144];
                if (!v64)
                {
                  break;
                }

                sub_181932B18(*(v64 + 112));
                v61 = v56;
                v62 = v56[84];
                if (v77 >= v62)
                {
                  goto LABEL_92;
                }
              }

              v62 = v63;
            }

            while (v77 < v63);
          }

LABEL_92:
          *(v61 + 17) = *&v61[8 * v62 + 144];
          v5 = sub_1818D93BC(v56);
          v58 = v56;
          v59 = v55;
          if (!v5)
          {
LABEL_93:
            if (v26)
            {
              *v58 = 2;
              v65 = *(v14 + 24);
              v5 = 0;
              if (v16 >= v65)
              {
                *(v58 + 1) = -1;
                *(v58 + 43) = v65 - 1;
              }

              else
              {
                *(v58 + 1) = 1;
              }
            }

            else
            {
              v70 = v59;
              v71 = sub_1818C6AC0(v58);
              if ((v70 & 2) != 0)
              {
                sub_1819388DC(v56);
                *v56 = 3;
              }

              if (v71 == 16)
              {
                return 0;
              }

              else
              {
                return v71;
              }
            }
          }
        }

        return v5;
      }
    }

    else
    {
      v26 = 0;
      if (*(v14 + 8))
      {
        goto LABEL_54;
      }
    }

    a1[1] &= 0xF1u;
    *(a1 + 35) = 0;
    if (!*a1 && *(a1 + 43) && *(*v15 + 8))
    {
      --*(a1 + 43);
    }

    else
    {
      v36 = a1;
      v37 = a2;
      v38 = sub_1819450D8(a1);
      LOBYTE(a2) = v37;
      v5 = v38;
      a1 = v36;
      if (v5)
      {
        return v5;
      }
    }

    goto LABEL_54;
  }

  return sub_18190EDA8(89053);
}

uint64_t sub_1818D8D88(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((*(a1 + 52) & 4) != 0 && v1[8] >= *(a1 + 48))
  {
    v2 = v1[32];
    if (!v2)
    {
      return v2;
    }

    return sub_1819360C0(a1);
  }

  else
  {
    v2 = v1[12];
    if (v2)
    {
      return v2;
    }

    if (v1[46] <= v1[50])
    {
      return sub_1818D8DD8(a1);
    }

    else
    {
      return sub_181936438(a1);
    }
  }
}

uint64_t sub_1818D8DD8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 21);
  if (v3 == 2)
  {
    result = *(v2 + 48);
    if (result)
    {
      return result;
    }

    if (*(v2 + 344) || *(v2 + 9) == 2)
    {
      goto LABEL_5;
    }

    v19 = *v2;
    v20 = *(v2 + 32);
    v21 = sub_181902484(512, 0x102204086A6B74CLL);
    if (!v21)
    {
      *(v2 + 64) = 0;
      return 7;
    }

    v21[30] = 0u;
    v21[31] = 0u;
    v21[28] = 0u;
    v21[29] = 0u;
    v21[26] = 0u;
    v21[27] = 0u;
    v21[24] = 0u;
    v21[25] = 0u;
    v21[22] = 0u;
    v21[23] = 0u;
    v21[20] = 0u;
    v21[21] = 0u;
    v21[18] = 0u;
    v21[19] = 0u;
    v21[16] = 0u;
    v21[17] = 0u;
    v21[14] = 0u;
    v21[15] = 0u;
    v21[12] = 0u;
    v21[13] = 0u;
    v21[10] = 0u;
    v21[11] = 0u;
    v21[8] = 0u;
    v21[9] = 0u;
    v21[6] = 0u;
    v21[7] = 0u;
    v21[4] = 0u;
    v21[5] = 0u;
    v21[2] = 0u;
    v21[3] = 0u;
    *v21 = 0u;
    v21[1] = 0u;
    *v21 = v20;
    *(v2 + 64) = v21;
    v22 = *(v2 + 80);
    if (!*v22)
    {
      if (*(v2 + 9) == 4)
      {
        *(v22 + 48) = 0uLL;
        *(v22 + 64) = 0uLL;
        *(v22 + 16) = 0uLL;
        *(v22 + 32) = 0uLL;
        *v22 = 0uLL;
        *v22 = &unk_1EEF8FF50;
        *(v22 + 8) = -4294966280;
        *(v22 + 56) = 0;
        *(v22 + 64) = 0;
        *(v22 + 72) = 0;
      }

      else
      {
        v23 = *(v2 + 180);
        if (*(v2 + 16))
        {
          v24 = 4126;
        }

        else
        {
          v24 = 2054;
        }

        if (*(v2 + 16))
        {
          v25 = dword_1ED452E9C;
        }

        else
        {
          v25 = 0;
        }

        v26 = sub_181936E64(v2);
        if (v26)
        {
          goto LABEL_59;
        }

        v27 = *(v2 + 224);
        v28 = *(v2 + 80);
        *(v28 + 48) = 0u;
        *(v28 + 64) = 0u;
        *(v28 + 16) = 0u;
        *(v28 + 32) = 0u;
        *v28 = 0u;
        if (v25)
        {
          *v28 = &unk_1EEF8FF50;
          if (v25 <= 0)
          {
            v29 = 1016;
          }

          else
          {
            v29 = v25;
          }

          *(v28 + 8) = v29;
          *(v28 + 12) = v25;
          *(v28 + 56) = v24 | v23 & 0x1700000;
          *(v28 + 64) = v19;
          *(v28 + 72) = v27;
        }

        else
        {
          v26 = (*(v19 + 40))(v19, v27);
          if (v26)
          {
            goto LABEL_59;
          }
        }
      }
    }

    *(v2 + 52) = 0;
    *(v2 + 24) = 0;
    *(v2 + 96) = 0;
    *(v2 + 104) = 0;
    v26 = sub_1818E6D94(v2);
    if (!v26)
    {
LABEL_5:
      v3 = 3;
      *(v2 + 21) = 3;
      goto LABEL_6;
    }

LABEL_59:
    v30 = v26;
    sub_1818EFAC4(*(v2 + 64));
    result = v30;
    *(v2 + 64) = 0;
    *(v2 + 96) = 0;
    return result;
  }

LABEL_6:
  v5 = *(a1 + 52);
  if ((v5 & 0x11) != 0)
  {
    v6 = v5 & 0xFFEF;
    *(a1 + 52) = v5 & 0xFFEF;
    if (v5)
    {
      v6 ^= 3u;
      *(a1 + 52) = v6;
      v7 = *(a1 + 24);
      v8 = *v7;
      *(a1 + 64) = *v7;
      *(a1 + 72) = 0;
      if (v8)
      {
        *(v8 + 72) = a1;
      }

      else
      {
        v7[1] = a1;
        if (*(v7 + 48))
        {
          *(v7 + 49) = 1;
        }
      }

      *v7 = a1;
      if ((v5 & 8) == 0 && !v7[2])
      {
        v7[2] = a1;
      }
    }
  }

  else
  {
    v6 = *(a1 + 52);
  }

  v9 = *(v2 + 64);
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = *(a1 + 48);
  v11 = v10 - 1;
  if (v10 - 1 < *v9)
  {
    while (1)
    {
      v12 = v9[2];
      if (!v12)
      {
        break;
      }

      v13 = v11 / v12;
      v11 %= v12;
      v9 = *&v9[2 * v13 + 4];
      if (!v9)
      {
        goto LABEL_20;
      }
    }

    if (*v9 >= 0xF81u)
    {
      v15 = v11 % 0x7C;
      v16 = v9 + 4;
      v17 = v16[v11 % 0x7C];
      if (v17)
      {
        v18 = v11 + 1;
        while (v17 != v18)
        {
          if (v15 == 123)
          {
            v15 = 0;
          }

          else
          {
            ++v15;
          }

          v17 = v16[v15];
          if (!v17)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_27;
      }
    }

    else if ((*(v9 + (v11 >> 3) + 16) >> (v11 & 7)))
    {
      goto LABEL_27;
    }
  }

LABEL_20:
  if (v10 <= *(v2 + 36))
  {
    result = sub_1819367F8(a1);
    if (result)
    {
      return result;
    }

    v6 = *(a1 + 52);
  }

  else if (v3 != 4)
  {
    v6 |= 8u;
  }

LABEL_27:
  *(a1 + 52) = v6 | 4;
  if (*(v2 + 128) < 1)
  {
    result = 0;
  }

  else
  {
    result = sub_1819360C0(a1);
  }

  v14 = *(a1 + 48);
  if (*(v2 + 32) < v14)
  {
    *(v2 + 32) = v14;
  }

  return result;
}

uint64_t sub_1818D9150(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2[4];
  if ((a2[4] & 0x80000000) == 0)
  {
    v3 = 4;
    goto LABEL_10;
  }

  v4 = a2[5] & 0x7F | ((v2 & 0x7F) << 7);
  if ((a2[5] & 0x80) == 0)
  {
    v3 = 5;
LABEL_5:
    v2 = v4;
    goto LABEL_10;
  }

  v2 = a2[6] & 0x7F | (v4 << 7);
  if ((a2[6] & 0x80) != 0)
  {
    v2 = a2[7] & 0x7F | (v2 << 7);
    if ((a2[7] & 0x80) != 0)
    {
      v4 = a2[8] & 0x7F | (v2 << 7);
      if ((a2[8] & 0x80) == 0)
      {
        v3 = 8;
        goto LABEL_5;
      }

      v2 = a2[9] & 0x7F | (v4 << 7);
      if ((a2[9] & 0x80) != 0)
      {
        v4 = a2[10] & 0x7F | (v2 << 7);
        if ((a2[10] & 0x80) == 0)
        {
          v3 = 10;
          goto LABEL_5;
        }

        v2 = a2[11] & 0x7F | (v4 << 7);
        if ((a2[11] & 0x80) != 0)
        {
          v4 = a2[12] & 0x7F | (v2 << 7);
          v3 = 12;
          goto LABEL_5;
        }

        v3 = 11;
      }

      else
      {
        v3 = 9;
      }
    }

    else
    {
      v3 = 7;
    }
  }

  else
  {
    v3 = 6;
  }

LABEL_10:
  v5 = a2 + v3 + 1;
  v6 = *(a1 + 14);
  if (v2 <= v6)
  {
    return (v2 + v5 - a2);
  }

  v7 = (v2 - *(a1 + 16)) % (*(*(a1 + 72) + 56) - 4) + *(a1 + 16);
  if (v7 > v6)
  {
    LOWORD(v7) = *(a1 + 16);
  }

  return (v5 - a2 + v7 + 4);
}

void *sub_1818D927C(void *result, int a2, int a3, _DWORD *a4)
{
  if (!*a4)
  {
    v5 = (result[12] + 2 * a2);
    v6 = __rev16(*v5);
    if ((v6 + a3) <= *(result[9] + 56))
    {
      v8 = result[10];
      v9 = *(result + 9);
      v10 = result;
      result = sub_181945948(result, v6, a3);
      if (result)
      {
        *a4 = result;
      }

      else
      {
        v11 = *(v10 + 12) - 1;
        *(v10 + 12) = v11;
        if (v11)
        {
          result = memmove(v5, v5 + 1, 2 * (v11 - a2));
          v12 = v8 + v9;
          *(v12 + 3) = *(v10 + 25);
          *(v12 + 4) = *(v10 + 24);
          *(v10 + 5) += 2;
        }

        else
        {
          v13 = v8 + v9;
          *(v13 + 1) = 0;
          *(v13 + 7) = 0;
          *(v13 + 5) = BYTE1(*(v10[9] + 56));
          *(v13 + 6) = *(v10[9] + 56);
          *(v10 + 5) = *(v10[9] + 56) - (*(v10 + 9) + *(v10 + 10)) - 8;
        }
      }
    }

    else
    {
      result = sub_18190EDA8(86482);
      *a4 = result;
    }
  }

  return result;
}

uint64_t sub_1818D93BC(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = a1 + 144;
  v4 = a1 + 88;
  v439 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 136);
  v378 = vdupq_n_s64(8uLL);
  v401 = a1 + 88;
  while (1)
  {
    if ((*(v5 + 20) & 0x80000000) != 0 && sub_1819454C4(v5))
    {
LABEL_474:
      v13 = 0;
      goto LABEL_477;
    }

    if (*(v5 + 12))
    {
      break;
    }

    if (3 * *(v5 + 20) <= 2 * *(*(v1 + 32) + 56))
    {
      goto LABEL_474;
    }

    v8 = *(v1 + 84);
    if (!*(v1 + 84))
    {
      goto LABEL_474;
    }

LABEL_23:
    if (*(*(v5 + 112) + 56) >= 2)
    {
      v361 = 88362;
      v14 = v5;
LABEL_476:
      v13 = sub_18193596C(v361, v14);
      goto LABEL_477;
    }

    v15 = v8 - 1;
    v16 = *(v3 + 8 * v15);
    v406 = *(v4 + 2 * v15);
    v17 = *(v16 + 112);
    v18 = *(v17 + 40);
    if ((*(v17 + 52) & 4) != 0 && v18[8] >= *(v17 + 48))
    {
      if (v18[32])
      {
        v13 = sub_1819360C0(v17);
        if (v13)
        {
          goto LABEL_283;
        }
      }
    }

    else
    {
      v13 = v18[12];
      if (v13)
      {
        goto LABEL_283;
      }

      if (v18[46] <= v18[50])
      {
        v13 = sub_1818D8DD8(v17);
        if (v13)
        {
          goto LABEL_283;
        }
      }

      else
      {
        v13 = sub_181936438(v17);
        if (v13)
        {
          goto LABEL_283;
        }
      }
    }

    if ((*(v16 + 20) & 0x80000000) != 0)
    {
      v26 = sub_1819454C4(v16);
      if (v26)
      {
        v13 = v26;
        goto LABEL_283;
      }
    }

    v403 = v5;
    if (*(v5 + 2) && *(v5 + 12) == 1 && *(v5 + 28) == *(v5 + 24) && *(v16 + 4) != 1 && *(v16 + 24) == v406)
    {
      if (*(v5 + 28))
      {
        v19 = *(v5 + 72);
        v424 = 0;
        v430[0] = 0;
        v13 = sub_1818E21FC(v19, &v424, v430, 0, 0);
        if (!v13)
        {
          v383 = v3;
          v233 = v1;
          v234 = v5;
          v235 = v2;
          v436 = *(v234 + 40);
          LOWORD(v429[0]) = (*(v234 + 120))();
          v419 = 0;
          v417 = 0u;
          v418 = 0u;
          v415 = 0u;
          v416 = 0u;
          v413 = 0u;
          v414 = 0u;
          v236 = v424;
          v238 = *(v424 + 72);
          v237 = *(v424 + 80);
          v239 = *(v424 + 9);
          if ((*(v238 + 40) & 0xC) != 0)
          {
            bzero((v237 + v239), (*(v238 + 56) - v239));
          }

          v240 = v237 + v239;
          *v240 = 13;
          *(v240 + 1) = 0;
          *(v240 + 7) = 0;
          *(v240 + 5) = BYTE1(*(v238 + 56));
          *(v240 + 6) = *(v238 + 56);
          *(v236 + 20) = (*(v238 + 56) - (v239 + 8));
          v241 = *(v236 + 72);
          *(v236 + 11) = *(v241 + 37);
          *(v236 + 10) = 0;
          *(v236 + 8) = 1;
          *(v236 + 120) = sub_1819355AC;
          *(v236 + 128) = sub_1818C7030;
          *(v236 + 1) = 257;
          *(v236 + 14) = *(v241 + 46);
          *(v236 + 18) = v239 + 8;
          v242 = *(v238 + 52);
          *(v236 + 88) = v237 + v242;
          *(v236 + 96) = v237 + v239 + 8;
          *(v236 + 104) = v237;
          *(v236 + 12) = 0;
          *(v236 + 26) = v242 - 1;
          *(v236 + 24) = 0;
          *v236 = 1;
          LODWORD(v413) = 1;
          *(&v413 + 1) = v403;
          *&v414 = &v436;
          v243 = *(v403 + 88);
          *(&v414 + 1) = v429;
          *&v415 = v243;
          LODWORD(v418) = 2;
          HIDWORD(v419) = 0x7FFFFFFF;
          v244 = sub_181945EEC(&v413, 0, 1, v236);
          v431[0] = v244;
          if (v244)
          {
            v13 = v244;
            v245 = *(v236 + 112);
            v2 = v235;
            v1 = v233;
            v4 = v401;
            if ((*(v245 + 52) & 0x20) != 0)
            {
              v248 = *(v245 + 40);
              --*(v248 + 152);
              *(v245 + 32) = *(v248 + 168);
              *(v248 + 168) = v245;
              (*(**(v248 + 72) + 144))(*(v248 + 72), *(v248 + 200) * (*(v245 + 48) - 1), *(v245 + 8));
            }

            else
            {
              sub_181932B68(v245);
            }

            v3 = v383;
            v5 = v403;
          }

          else
          {
            *(v236 + 20) = *(v19 + 56) - (*(v236 + 18) + LOWORD(v429[0])) - 2;
            v2 = v235;
            v1 = v233;
            v3 = v383;
            v4 = v401;
            v5 = v403;
            if (*(v19 + 33))
            {
              sub_1818EF720(v19, v430[0], 5, *(v16 + 4), v431);
              if (LOWORD(v429[0]) > *(v236 + 16) && !v431[0])
              {
                v246 = v436;
                v433 = 0uLL;
                *&v434 = 0;
                (*(v236 + 128))(v236, v436, &v433);
                if (v434 > WORD2(v434))
                {
                  v247 = *(v236 + 88);
                  if (v247 <= v246 || &v246[WORD2(v434)] <= v247)
                  {
                    sub_1818EF720(*(v236 + 72), bswap32(*&v246[WORD3(v434) - 4]), 3, *(v236 + 4), v431);
                  }

                  else
                  {
                    v431[0] = sub_18190EDA8(80846);
                  }
                }
              }
            }

            v351 = 0;
            v352 = *(v403 + 96) + 2 * *(v403 + 24);
            v353 = (*(v403 + 80) + ((*(v352 - 1) | (*(v352 - 2) << 8)) & *(v403 + 26)));
            do
            {
              v354 = v353 + 1;
              v436 = v353 + 1;
              if (v351 > 7)
              {
                break;
              }

              ++v351;
              v355 = *v353++;
            }

            while (v355 < 0);
            v356 = 0;
            do
            {
              v357 = &v354[v356 + 1];
              v436 = v357;
              v358 = v354[v356];
              __src[v356 + 4] = v354[v356];
              ++v356;
            }

            while (v358 < 0 && v357 < (v354 + 9));
            v13 = v431[0];
            if (!v431[0])
            {
              v13 = sub_1818DCB50(v16, *(v16 + 24), __src, (v356 + 4), 0, *(v403 + 4));
            }

            *(*(v16 + 80) + *(v16 + 9) + 8) = bswap32(v430[0]);
            v359 = *(v236 + 112);
            if ((*(v359 + 52) & 0x20) != 0)
            {
              v360 = *(v359 + 40);
              --*(v360 + 152);
              *(v359 + 32) = *(v360 + 168);
              *(v360 + 168) = v359;
              (*(**(v360 + 72) + 144))(*(v360 + 72), *(v360 + 200) * (*(v359 + 48) - 1), *(v359 + 8));
            }

            else
            {
              sub_181932B68(v359);
            }
          }
        }
      }

      else
      {
        v13 = sub_18190EDA8(87210);
      }

      goto LABEL_283;
    }

    v20 = sub_1819352D4(*(*(v1 + 32) + 52));
    v21 = *(v1 + 3);
    v435 = 0;
    v433 = 0u;
    v434 = 0u;
    v432[0] = 0;
    v432[1] = 0;
    v420 = 0;
    v421 = 0;
    v419 = 0x7FFFFFFF00000000;
    v417 = 0u;
    v418 = 0u;
    v413 = 0u;
    v414 = 0u;
    v415 = 0u;
    v416 = 0u;
    v400 = v20;
    if (!v20)
    {
      v13 = 7;
      if (v2)
      {
        goto LABEL_281;
      }

      goto LABEL_282;
    }

    v384 = v21 & 1;
    v22 = *(v16 + 12);
    v23 = *(v16 + 24);
    v24 = v23 + v22;
    if ((v23 + v22) >= 2)
    {
      if (v406)
      {
        if (v24 == v406)
        {
          v25 = v406 + v384 - 2;
        }

        else
        {
          v25 = v406 - 1;
        }
      }

      else
      {
        v25 = 0;
      }

      v24 = 2 - v384;
    }

    else
    {
      v25 = 0;
    }

    v436 = 0;
    v437 = 0;
    v438 = 0;
    v27 = v25 - v22 + v24;
    v28 = *(v16 + 80);
    v399 = *(v16 + 72);
    v379 = v1;
    v380 = v2;
    v382 = v3;
    v372 = v8;
    if (v27 == v23)
    {
      v29 = (v28 + *(v16 + 9) + 8);
    }

    else
    {
      v30 = (*(v16 + 96) + 2 * v27);
      v29 = (v28 + ((v30[1] | (*v30 << 8)) & *(v16 + 26)));
    }

    v31 = 0;
    v402 = v24 + 1;
    v373 = v29;
    v32 = bswap32(*v29);
    v33 = v24;
    v381 = v24;
    v34 = v24;
    v398 = v25;
    v411 = v25 - 1;
    v387 = v24;
    v35 = *(v16 + 72);
    while (1)
    {
      v36 = sub_181943894(v35, v32, &(&v436)[v34]);
      v423 = v36;
      if (v36)
      {
        v13 = v36;
        goto LABEL_83;
      }

      v37 = (&v436)[v33];
      if ((*(v37 + 5) & 0x80000000) != 0)
      {
        v38 = sub_1819454C4((&v436)[v33]);
        v423 = v38;
        if (v38)
        {
          v13 = v38;
LABEL_83:
          __memset_chk();
          v47 = 0;
          v3 = v382;
          v4 = v401;
LABEL_84:
          v5 = v403;
          goto LABEL_85;
        }
      }

      v31 += *(v37 + 12) + 4;
      if (!v33)
      {
        break;
      }

      if (!*(v16 + 12))
      {
        v40 = v411 + v33;
        goto LABEL_79;
      }

      if (v411 + v33 != *(v16 + 28))
      {
        v40 = v398 + v33 - 1;
LABEL_79:
        v41 = (*(v16 + 96) + 2 * (v40 - *(v16 + 12)));
        v42 = (*(v16 + 80) + ((v41[1] | (*v41 << 8)) & *(v16 + 26)));
        *&v431[2 * v33 + 3] = v42;
        v43 = *v42;
        v44 = (*(v16 + 120))(v16, v42);
        v45 = v44;
        *&v428[4 * v33 + 12] = v44;
        if ((*(v35 + 40) & 0xC) != 0)
        {
          v46 = v42 - *(v16 + 80);
          if ((v46 + v44) <= *(v35 + 56))
          {
            memcpy(v400 + v46, v42, v44);
            v35 = v399;
            *&v431[2 * v33 + 3] = v42 + v400 - *(v16 + 80);
          }
        }

        v32 = bswap32(v43);
        sub_1818D927C(v16, v40 - *(v16 + 12), v45, &v423);
        v13 = v423;
        goto LABEL_69;
      }

      v39 = *(v16 + 40);
      *&v431[2 * v33 + 3] = v39;
      v32 = bswap32(*v39);
      v13 = 0;
      *&v428[4 * v33 + 12] = (*(v16 + 120))(v16);
      *(v16 + 12) = 0;
LABEL_69:
      --v34;
      --v33;
      if (v13)
      {
        goto LABEL_83;
      }
    }

    v422 = v32;
    v55 = (v31 + 3);
    v56 = v55 & 0x7FFFFFFC;
    v57 = sub_181902484(*(v35 + 52) + 10 * v56, 230231204);
    *&v414 = v57;
    if (!v57)
    {
      v47 = 0;
      v13 = 7;
      v3 = v382;
      v4 = v401;
      v5 = v403;
      v50 = v381;
      v51 = v436;
      if (!v436)
      {
        goto LABEL_98;
      }

      goto LABEL_95;
    }

    v58 = v57;
    v59 = 0;
    LODWORD(v60) = 0;
    v61 = v57 + 8 * v56;
    v388 = v61 + 2 * v56;
    v62 = 0;
    *(&v414 + 1) = v61;
    *(&v413 + 1) = v436;
    v365 = v436[8];
    v412 = v436[2];
    v374 = v57 + 8;
    v377 = 4 * v436[8];
    v366 = v57 + 16;
    v367 = v57 + 40 * ((v55 >> 2) & 0x1FFFFFFF);
    v368 = v57 - 40;
    v4 = v401;
    v392 = v61;
    do
    {
      v63 = (&v436)[v62];
      v64 = *(v63 + 80);
      if (*v64 != **(v436 + 10))
      {
        v13 = sub_18193596C(87634, (&v436)[v62]);
        v47 = 0;
        v3 = v382;
        goto LABEL_84;
      }

      v404 = v62;
      v65 = *(v63 + 24);
      v66 = *(v63 + 26);
      v67 = *(v63 + 18);
      v68 = &v64[v67];
      bzero((v61 + 2 * v60), 2 * (*(v63 + 12) + v65));
      v69 = *(v63 + 12);
      v70 = vdupq_n_s64(v64);
      if (!*(v63 + 12))
      {
        v4 = v401;
        v73.i64[0] = 0x100000001;
        v73.i64[1] = 0x100000001;
        goto LABEL_133;
      }

      v71 = *(v63 + 28);
      if (v65 < v71)
      {
        v13 = sub_18193596C(87658, v63);
        v47 = 0;
        v3 = v382;
        v4 = v401;
        goto LABEL_84;
      }

      v72 = v60;
      if (!*(v63 + 28))
      {
        v4 = v401;
        v73.i64[0] = 0x100000001;
        v73.i64[1] = 0x100000001;
        if (v69 <= 3)
        {
          goto LABEL_129;
        }

        goto LABEL_128;
      }

      v73.i64[0] = 0x100000001;
      v73.i64[1] = 0x100000001;
      if (v71 <= 0xF || ((v74 = (v58 + 8 * v60), v75 = (v71 - 1), v74 < &v64[2 * v75 + 2 + v67]) ? (v76 = v68 >= v374 + 8 * (v60 + v75)) : (v76 = 1), !v76))
      {
        LODWORD(v77) = 0;
LABEL_123:
        v98 = v71 - v77;
        do
        {
          *(v58 + 8 * v72) = &v64[(*(v68 + 1) | (*v68 << 8)) & v66];
          v68 += 2;
          ++v72;
          --v98;
        }

        while (v98);
        goto LABEL_125;
      }

      v77 = v71 & 0xFFF0;
      v72 = v77 + v60;
      v68 += 2 * v77;
      v78 = vdupq_n_s64(v66);
      v79 = v77;
      do
      {
        v80 = &v64[v67];
        v441 = vld2q_s8(v80);
        v81 = vmovl_u8(*v441.val[0].i8);
        v82 = vmovl_u16(*v81.i8);
        v83 = vmovl_high_u16(v81);
        v84 = vmovl_high_u8(v441.val[0]);
        v85 = vmovl_u16(*v84.i8);
        v86 = vmovl_high_u16(v84);
        v87 = vmovl_high_u8(v441.val[1]);
        v88 = vmovl_high_u16(v87);
        v89 = vmovl_u16(*v87.i8);
        v441.val[0] = vmovl_u8(*v441.val[1].i8);
        v441.val[1] = vmovl_high_u16(v441.val[0]);
        v441.val[0] = vmovl_u16(*v441.val[0].i8);
        v90 = vorr_s8(vshl_n_s32(*&vextq_s8(v82, v82, 8uLL), 8uLL), *&vextq_s8(v441.val[0], v441.val[0], 8uLL));
        v91.i64[0] = v90.u32[0];
        v91.i64[1] = v90.u32[1];
        v92 = v91;
        *v441.val[0].i8 = vorr_s8(vshl_n_s32(*v82.i8, 8uLL), *v441.val[0].i8);
        v91.i64[0] = v441.val[0].u32[0];
        v91.i64[1] = v441.val[0].u32[1];
        v441.val[0] = v91;
        *v82.i8 = vorr_s8(vshl_n_s32(*&vextq_s8(v83, v83, 8uLL), 8uLL), *&vextq_s8(v441.val[1], v441.val[1], 8uLL));
        v91.i64[0] = v82.u32[0];
        v91.i64[1] = v82.u32[1];
        v93 = v91;
        v94 = vorr_s8(vshl_n_s32(*&vextq_s8(v85, v85, 8uLL), 8uLL), *&vextq_s8(v89, v89, 8uLL));
        v91.i64[0] = v94.u32[0];
        v91.i64[1] = v94.u32[1];
        v95 = v91;
        *v441.val[1].i8 = vorr_s8(vshl_n_s32(*v83.i8, 8uLL), *v441.val[1].i8);
        v91.i64[0] = v441.val[1].u32[0];
        v91.i64[1] = v441.val[1].u32[1];
        v441.val[1] = v91;
        *v83.i8 = vorr_s8(vshl_n_s32(*v85.i8, 8uLL), *v89.i8);
        v91.i64[0] = v83.u32[0];
        v91.i64[1] = v83.u32[1];
        v96 = v91;
        *v85.i8 = vorr_s8(vshl_n_s32(*&vextq_s8(v86, v86, 8uLL), 8uLL), *&vextq_s8(v88, v88, 8uLL));
        v91.i64[0] = v85.u32[0];
        v91.i64[1] = v85.u32[1];
        v97 = v91;
        *v86.i8 = vorr_s8(vshl_n_s32(*v86.i8, 8uLL), *v88.i8);
        v91.i64[0] = v86.u32[0];
        v91.i64[1] = v86.u32[1];
        v74[6] = vaddq_s64(v70, vandq_s8(v91, v78));
        v74[7] = vaddq_s64(v70, vandq_s8(v97, v78));
        v74[4] = vaddq_s64(v70, vandq_s8(v96, v78));
        v74[5] = vaddq_s64(v70, vandq_s8(v95, v78));
        v74[2] = vaddq_s64(v70, vandq_s8(v441.val[1], v78));
        v74[3] = vaddq_s64(v70, vandq_s8(v93, v78));
        *v74 = vaddq_s64(v70, vandq_s8(v441.val[0], v78));
        v74[1] = vaddq_s64(v70, vandq_s8(v92, v78));
        v74 += 8;
        v67 += 32;
        v79 -= 16;
      }

      while (v79);
      if (v77 != v71)
      {
        goto LABEL_123;
      }

LABEL_125:
      v72 = v72;
      v4 = v401;
      if (v69 <= 3)
      {
        goto LABEL_129;
      }

LABEL_128:
      v99 = 8 * v72;
      if ((v368 + 8 * v72 - v63) >= 0x20)
      {
        v100 = v69 & 0xFC;
        v72 += v100;
        v143 = (v366 + v99);
        v144 = (v63 + 56);
        v145 = v100;
        do
        {
          v146 = *v144;
          *(v143 - 1) = *(v144 - 1);
          *v143 = v146;
          v143 += 2;
          v144 += 2;
          v145 -= 4;
        }

        while (v145);
        if (v100 == v69)
        {
          goto LABEL_132;
        }

        goto LABEL_130;
      }

LABEL_129:
      v100 = 0;
LABEL_130:
      v101 = v69 - v100;
      v102 = (v63 + 8 * v100 + 40);
      do
      {
        v103 = *v102++;
        *(v58 + 8 * v72++) = v103;
        --v101;
      }

      while (v101);
LABEL_132:
      LODWORD(v413) = v72;
      LODWORD(v60) = v72;
LABEL_133:
      v104 = *(v63 + 18);
      v105 = 2 * *(v63 + 24);
      v106 = &v64[v104 + v105];
      if (v68 >= v106)
      {
        goto LABEL_177;
      }

      v107 = v60;
      v108 = &v64[v105 + v104];
      v109 = v68 + 2;
      if (v108 <= v68 + 2)
      {
        v110 = v68 + 2;
      }

      else
      {
        v110 = v108;
      }

      v111 = v110 + ~v68;
      if (v111 < 0xE)
      {
        goto LABEL_138;
      }

      v114 = (v58 + 8 * v60);
      if (v108 <= v109)
      {
        v108 = v68 + 2;
      }

      v115 = v108 + ~v68;
      v116 = v374 + 8 * (v60 + (v115 >> 1));
      v117 = v109 + (v115 & 0xFFFFFFFFFFFFFFFELL);
      v118 = v114 >= v117 || v68 >= v116;
      v119 = !v118;
      v120 = &v413 >= v117 || v68 >= &v413 + 4;
      v121 = !v120;
      v122 = &v413 >= v116 || v114 >= (&v413 + 4);
      if (!v122 || v119 || v121)
      {
LABEL_138:
        v60 = v60;
        v112 = v68;
        goto LABEL_139;
      }

      v123 = (v111 >> 1) + 1;
      v124 = vdupq_n_s64(v66);
      if (v111 >= 0x1E)
      {
        v147 = vdupq_n_s64(v60);
        v148 = vaddq_s64(v147, xmmword_181A1FF60);
        v125 = v123 & 0xFFFFFFFFFFFFFFF0;
        v149 = vaddq_s64(v147, xmmword_181A1FF70);
        v150 = vaddq_s64(v147, xmmword_181A1FF80);
        v151 = vaddq_s64(v147, xmmword_181A1FF90);
        v152 = vaddq_s64(v147, xmmword_181A1FFA0);
        v153 = vaddq_s64(v147, xmmword_181A1FFB0);
        v154 = vaddq_s64(v147, xmmword_181A1FFC0);
        v155 = vaddq_s64(v147, xmmword_181A1FE70);
        v126 = (v123 & 0xFFFFFFFFFFFFFFF0) + v60;
        v156 = v123 & 0xFFFFFFFFFFFFFFF0;
        v157 = v68;
        do
        {
          v442 = vld2q_s8(v157);
          v157 += 32;
          v158 = vmovl_u8(*v442.val[0].i8);
          v159 = vmovl_u16(*v158.i8);
          v160 = vmovl_high_u16(v158);
          v161 = vmovl_high_u8(v442.val[0]);
          v162 = vmovl_u16(*v161.i8);
          v163 = vmovl_high_u16(v161);
          v164 = vmovl_high_u8(v442.val[1]);
          v165 = vmovl_high_u16(v164);
          v166 = vmovl_u16(*v164.i8);
          v442.val[0] = vmovl_u8(*v442.val[1].i8);
          v442.val[1] = vmovl_high_u16(v442.val[0]);
          v442.val[0] = vmovl_u16(*v442.val[0].i8);
          v167 = vorr_s8(vshl_n_s32(*&vextq_s8(v159, v159, 8uLL), 8uLL), *&vextq_s8(v442.val[0], v442.val[0], 8uLL));
          v168.i64[0] = v167.u32[0];
          v168.i64[1] = v167.u32[1];
          v169 = v168;
          *v442.val[0].i8 = vorr_s8(vshl_n_s32(*v159.i8, 8uLL), *v442.val[0].i8);
          v168.i64[0] = v442.val[0].u32[0];
          v168.i64[1] = v442.val[0].u32[1];
          v442.val[0] = v168;
          *v159.i8 = vorr_s8(vshl_n_s32(*&vextq_s8(v160, v160, 8uLL), 8uLL), *&vextq_s8(v442.val[1], v442.val[1], 8uLL));
          v168.i64[0] = v159.u32[0];
          v168.i64[1] = v159.u32[1];
          v170 = v168;
          v171 = vorr_s8(vshl_n_s32(*&vextq_s8(v162, v162, 8uLL), 8uLL), *&vextq_s8(v166, v166, 8uLL));
          v168.i64[0] = v171.u32[0];
          v168.i64[1] = v171.u32[1];
          v172 = v168;
          *v442.val[1].i8 = vorr_s8(vshl_n_s32(*v160.i8, 8uLL), *v442.val[1].i8);
          v168.i64[0] = v442.val[1].u32[0];
          v168.i64[1] = v442.val[1].u32[1];
          v442.val[1] = v168;
          *v160.i8 = vorr_s8(vshl_n_s32(*v162.i8, 8uLL), *v166.i8);
          v168.i64[0] = v160.u32[0];
          v168.i64[1] = v160.u32[1];
          v173 = v168;
          *v162.i8 = vorr_s8(vshl_n_s32(*&vextq_s8(v163, v163, 8uLL), 8uLL), *&vextq_s8(v165, v165, 8uLL));
          v168.i64[0] = v162.u32[0];
          v168.i64[1] = v162.u32[1];
          v174 = v168;
          *v163.i8 = vorr_s8(vshl_n_s32(*v163.i8, 8uLL), *v165.i8);
          v168.i64[0] = v163.u32[0];
          v168.i64[1] = v163.u32[1];
          v114[6] = vaddq_s64(v70, vandq_s8(v168, v124));
          v114[7] = vaddq_s64(v70, vandq_s8(v174, v124));
          v114[4] = vaddq_s64(v70, vandq_s8(v173, v124));
          v114[5] = vaddq_s64(v70, vandq_s8(v172, v124));
          v114[2] = vaddq_s64(v70, vandq_s8(v442.val[1], v124));
          v114[3] = vaddq_s64(v70, vandq_s8(v170, v124));
          *v114 = vaddq_s64(v70, vandq_s8(v442.val[0], v124));
          v114[1] = vaddq_s64(v70, vandq_s8(v169, v124));
          v114 += 8;
          v175 = vaddq_s32(vuzp1q_s32(v149, v148), v73);
          LODWORD(v413) = v175.i32[3];
          v442.val[1] = vdupq_n_s64(0x10uLL);
          v153 = vaddq_s64(v153, v442.val[1]);
          v154 = vaddq_s64(v154, v442.val[1]);
          v155 = vaddq_s64(v155, v442.val[1]);
          v152 = vaddq_s64(v152, v442.val[1]);
          v151 = vaddq_s64(v151, v442.val[1]);
          v150 = vaddq_s64(v150, v442.val[1]);
          v149 = vaddq_s64(v149, v442.val[1]);
          v148 = vaddq_s64(v148, v442.val[1]);
          v156 -= 16;
        }

        while (v156);
        if (v123 == v125)
        {
          LODWORD(v60) = v175.i32[3];
          goto LABEL_177;
        }

        if ((v123 & 8) == 0)
        {
          v112 = (v68 + 2 * v125);
          v60 = v125 + v60;
          goto LABEL_139;
        }
      }

      else
      {
        v125 = 0;
        v126 = v60;
      }

      v60 = (v123 & 0xFFFFFFFFFFFFFFF8) + v60;
      v112 = (v68 + 2 * (v123 & 0xFFFFFFFFFFFFFFF8));
      v127 = vdupq_n_s64(v126);
      v128 = vaddq_s64(v127, xmmword_181A1FFA0);
      v129 = vaddq_s64(v127, xmmword_181A1FFB0);
      v130 = vaddq_s64(v127, xmmword_181A1FFC0);
      v131 = vaddq_s64(v127, xmmword_181A1FE70);
      v132 = (v58 + 8 * v125 + 8 * v107);
      v133 = (v68 + 2 * v125);
      v134 = v125 - (v123 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v440 = vld2_s8(v133);
        v133 += 16;
        v135 = vmovl_u8(*v440.i8);
        v136 = vmovl_u16(*v135.i8);
        v137 = vmovl_high_u16(v135);
        v440 = vmovl_u8(v440.u64[1]);
        *(&v440 + 8) = vmovl_high_u16(v440);
        v440 = vmovl_u16(*v440.i8);
        v138 = vorr_s8(vshl_n_s32(*&vextq_s8(v136, v136, 8uLL), 8uLL), *&vextq_s8(v440, v440, 8uLL));
        v139.i64[0] = v138.u32[0];
        v139.i64[1] = v138.u32[1];
        v140 = v139;
        *v440.i8 = vorr_s8(vshl_n_s32(*v136.i8, 8uLL), *v440.i8);
        v139.i64[0] = v440.u32[0];
        v139.i64[1] = v440.u32[1];
        v440 = v139;
        *v136.i8 = vorr_s8(vshl_n_s32(*&vextq_s8(v137, v137, 8uLL), 8uLL), *&vextq_s8(*(&v440 + 8), *(&v440 + 8), 8uLL));
        v139.i64[0] = v136.u32[0];
        v139.i64[1] = v136.u32[1];
        v141 = v139;
        v440.u64[1] = vorr_s8(vshl_n_s32(*v137.i8, 8uLL), v440.u64[1]);
        v139.i64[0] = v440.u32[2];
        v139.i64[1] = v440.u32[3];
        v132[2] = vaddq_s64(v70, vandq_s8(v139, v124));
        v132[3] = vaddq_s64(v70, vandq_s8(v141, v124));
        *v132 = vaddq_s64(v70, vandq_s8(v440, v124));
        v132[1] = vaddq_s64(v70, vandq_s8(v140, v124));
        v132 += 4;
        v142 = vaddq_s32(vuzp1q_s32(v129, v128), v73);
        LODWORD(v413) = v142.i32[3];
        v129 = vaddq_s64(v129, v378);
        v130 = vaddq_s64(v130, v378);
        v131 = vaddq_s64(v131, v378);
        v128 = vaddq_s64(v128, v378);
        v134 += 8;
      }

      while (v134);
      if (v123 == (v123 & 0xFFFFFFFFFFFFFFF8))
      {
        LODWORD(v60) = v142.i32[3];
LABEL_177:
        v61 = v392;
        goto LABEL_178;
      }

LABEL_139:
      v113 = (v58 + 8 * v60);
      v61 = v392;
      do
      {
        *v113++ = &v64[(v112[1] | (*v112 << 8)) & v66];
        LODWORD(v60) = v60 + 1;
        LODWORD(v413) = v60;
        v112 += 2;
      }

      while (v112 < v106);
LABEL_178:
      v430[v404] = v60;
      if (v404 < v387 && !v412)
      {
        v176 = v429[v404];
        *(v61 + 2 * v60) = v429[v404];
        v177 = (v388 + v59);
        v59 += v176;
        memcpy(v177, v432[v404], v176);
        v61 = v392;
        *(v58 + 8 * v60) = &v177[v377];
        v178 = *(v392 + 2 * v60) - 4 * v365;
        *(v392 + 2 * v60) = v178;
        if (*(v63 + 8))
        {
          if (v178 <= 3u)
          {
            v179 = (v367 + v59);
            do
            {
              *v179++ = 0;
              v180 = ++*(v392 + 2 * v60);
              ++v59;
            }

            while (v180 < 4);
          }
        }

        else
        {
          *&v177[v377] = *(*(v63 + 80) + 8);
        }

        LODWORD(v60) = v60 + 1;
        LODWORD(v413) = v60;
      }

      v62 = v404 + 1;
    }

    while (v404 + 1 != v402);
    v185 = 0;
    v186 = 0;
    v405 = v377 + *(v399 + 56) - 12;
    do
    {
      v187 = (&v436)[v185];
      *(&v415 + v186) = *(v187 + 11);
      v188 = v430[v185];
      *(&v418 + v186) = v188;
      if (v186)
      {
        if (v188 == *(&v418 + v186 - 1))
        {
          LODWORD(v189) = v186 - 1;
        }

        else
        {
          LODWORD(v189) = v186;
        }

        if (!v412)
        {
LABEL_208:
          v189 = v189 + 1;
          *(&v415 + v189) = *(v16 + 88);
          *(&v418 + v189) = v188 + 1;
        }
      }

      else
      {
        LODWORD(v189) = 0;
        if (!v412)
        {
          goto LABEL_208;
        }
      }

      v190 = v405 - *(v187 + 5);
      v429[v185] = v190;
      if (v187[12])
      {
        v191 = 0;
        do
        {
          v190 += (*(v187 + 15))(v187, *&v187[8 * v191 + 40]) + 2;
          v429[v185] = v190;
          ++v191;
        }

        while (v191 < v187[12]);
      }

      v431[v185++] = v188;
      v186 = v189 + 1;
    }

    while (v185 != v402);
    v192 = 0;
    v193 = v413;
    v194 = *(&v414 + 1);
    v375 = v413;
    v369 = *(&v414 + 1) + 2;
    v5 = v403;
    v195 = v402;
    v3 = v382;
    v389 = *(&v414 + 1);
    v393 = v413;
    do
    {
      v196 = v429[v192];
      if (v196 <= v405)
      {
        v204 = v3;
        v200 = v431[v192];
        v197 = v192 + 1;
      }

      else
      {
        v197 = v192 + 1;
        do
        {
          if (v197 >= v195)
          {
            if (v192 >= 4)
            {
              v429[v192] = v196;
              v13 = sub_18190EDA8(87759);
              v47 = 0;
              v4 = v401;
              goto LABEL_85;
            }

            v429[v197] = 0;
            v431[v197] = v193;
            v195 = v192 + 2;
          }

          v199 = v431[v192];
          v200 = v199 - 1;
          v201 = *(v194 + 2 * (v199 - 1));
          if (!*(v194 + 2 * (v199 - 1)))
          {
            v201 = sub_18194644C(&v413, v199 - 1);
            v194 = v389;
            v193 = v393;
          }

          v202 = v201 + 2;
          v198 = v201 + 2;
          if (!v412)
          {
            if (v199 >= v193)
            {
              v198 = 0;
            }

            else
            {
              v203 = *(v194 + 2 * v199);
              if (!*(v194 + 2 * v199))
              {
                v203 = sub_18194644C(&v413, v199);
                v194 = v389;
                v193 = v393;
              }

              v198 = v203 + 2;
            }
          }

          v196 -= v202;
          v429[v197] += v198;
          v431[v192] = v200;
          v5 = v403;
        }

        while (v196 > v405);
        v204 = v3;
      }

      v429[v192] = v196;
      if (v200 >= v193)
      {
LABEL_244:
        v195 = v197;
        v3 = v204;
        v4 = v401;
        v5 = v403;
      }

      else
      {
        v205 = v375 - v200;
        v206 = (v369 + 2 * v200);
        v207 = v200 + 1;
        while (1)
        {
          v209 = *(v206 - 1);
          if (!*(v206 - 1))
          {
            v209 = sub_18194644C(&v413, v200);
            v194 = v389;
            v193 = v393;
          }

          v208 = v209 + 2;
          v196 += v209 + 2;
          if (v196 > v405)
          {
            break;
          }

          v429[v192] = v196;
          v431[v192] = ++v200;
          if (!v412)
          {
            if (v207 >= v375)
            {
              v208 = 0;
            }

            else
            {
              v210 = *v206;
              if (!*v206)
              {
                v210 = sub_18194644C(&v413, v200);
                v194 = v389;
                v193 = v393;
              }

              v208 = v210 + 2;
            }
          }

          v429[v197] -= v208;
          ++v206;
          ++v207;
          if (!--v205)
          {
            goto LABEL_244;
          }
        }

        if (v192)
        {
          v211 = v431[v192 - 1];
        }

        else
        {
          v211 = 0;
        }

        v3 = v204;
        v4 = v401;
        v5 = v403;
        if (v211 >= v200)
        {
          v13 = sub_18190EDA8(87792);
          v47 = 0;
          goto LABEL_85;
        }
      }

      v192 = v197;
    }

    while (v197 < v195);
    v212 = -2 * v412;
    v213 = (v195 - 1);
LABEL_253:
    if (v213 >= 1)
    {
      v215 = v429[v213];
      v216 = v213 - 1;
      v217 = v429[v213 - 1];
      v218 = v431[v213 - 1];
      if (!*(v194 + 2 * (v218 - v412)))
      {
        sub_18194644C(&v413, v218 - v412);
        v212 = -2 * v412;
        v194 = v389;
        v193 = v393;
      }

      v370 = v213;
      if (v213 == v195 - 1)
      {
        v219 = 0;
      }

      else
      {
        v219 = -2;
      }

      v220 = v194 + 2 * v218;
      v221 = v218 + 1;
      while (1)
      {
        v223 = v218 - 1;
        v224 = *(v220 - 2);
        if (*(v220 - 2))
        {
          v225 = *(v220 + v212);
          if (!v215)
          {
            goto LABEL_260;
          }
        }

        else
        {
          v224 = sub_18194644C(&v413, v218 - 1);
          v212 = -2 * v412;
          v194 = v389;
          v193 = v393;
          v225 = *(v220 - 2 * v412);
          if (!v215)
          {
LABEL_260:
            v222 = v225 + 2;
            goto LABEL_261;
          }
        }

        if (v384 || (v222 = v215 + v225 + 2, v222 > v217 + v219 - v224))
        {
          v223 = v218;
          v222 = v215;
LABEL_269:
          v429[v370] = v222;
          v429[v216] = v217;
          v4 = v401;
          if (v370 == 1)
          {
            v214 = 0;
          }

          else
          {
            v214 = v431[(v370 - 2)];
          }

          v3 = v382;
          v213 = v216;
          v5 = v403;
          if (v223 <= v214)
          {
            v13 = sub_18190EDA8(87836);
            v47 = 0;
            goto LABEL_85;
          }

          goto LABEL_253;
        }

LABEL_261:
        v431[v216] = v223;
        v217 = v217 - v224 - 2;
        v220 -= 2;
        --v221;
        --v218;
        v215 = v222;
        if (v221 <= 1)
        {
          goto LABEL_269;
        }
      }
    }

    v390 = **(v436 + 10);
    if (v195 < 1)
    {
      v47 = 0;
      goto LABEL_335;
    }

    v249 = 0;
    v47 = 0;
    v407 = (v406 - v398);
    v250 = v195;
    while (2)
    {
      v424 = 0;
      if (v249 > v387)
      {
        v251 = v47;
        if (v384)
        {
          v252 = 1;
        }

        else
        {
          v252 = v422;
        }

        v253 = sub_1818E21FC(v399, &v424, &v422, v252, 0);
        v423 = v253;
        if (v253)
        {
          v13 = v253;
LABEL_438:
          v47 = v251;
          v4 = v401;
          goto LABEL_85;
        }

        v254 = v424;
        sub_1818E2114(v424, v390);
        *(&v433 + v249) = v254;
        v251 = v47 + 1;
        v193 = v393;
        v430[v249] = v393;
        if (*(v399 + 33))
        {
          sub_1818EF720(v399, *(v254 + 4), 5, *(v16 + 4), &v423);
          v13 = v423;
          if (v423)
          {
            goto LABEL_438;
          }

          ++v47;
          v193 = v393;
        }

        else
        {
          ++v47;
        }

LABEL_304:
        if (v250 != ++v249)
        {
          continue;
        }

        if (v47 < 1)
        {
          v4 = v401;
LABEL_335:
          v376 = 0;
          v371 = 0;
          LODWORD(v262) = v47 - 1;
        }

        else
        {
          v272 = v47;
          v4 = v401;
          if (v47 == 1)
          {
            v273 = 0;
            goto LABEL_447;
          }

          v273 = v47 & 0x7FFFFFFE;
          v329 = v273;
          v330 = v428;
          v331 = &v433 + 8;
          do
          {
            v332 = *(*v331 + 4);
            *(v330 - 1) = *(*(v331 - 1) + 4);
            *v330 = v332;
            v331 += 16;
            v330 += 2;
            v329 -= 2;
          }

          while (v329);
          if (v273 != v47)
          {
LABEL_447:
            v333 = v47 - v273;
            v334 = &__src[4 * v273 + 13];
            v335 = &v433 + v273;
            do
            {
              v336 = *v335++;
              *v334 = *(v336 + 4);
              v334 += 4;
              --v333;
            }

            while (v333);
          }

          v262 = (v47 - 1);
          if (v47 == 1)
          {
            v376 = 0;
            v47 = 1;
            v371 = 1;
          }

          else
          {
            v337 = 0;
            v338 = 1;
            v386 = (v47 - 1);
            do
            {
              v339 = v338;
              v340 = v337;
              do
              {
                if (*(*(&v433 + v339) + 4) < *(*(&v433 + v340) + 4))
                {
                  v340 = v339;
                }

                ++v339;
              }

              while (v272 != v339);
              if (v337 != v340)
              {
                v341 = *(&v433 + v337);
                v342 = *(v341 + 4);
                v343 = *(&v433 + v340);
                v410 = *(v343 + 4);
                v344 = dword_1EA8315A8 / *(v399 + 52);
                v345 = *(v341 + 112);
                v346 = v3;
                v347 = *(v345 + 52);
                v348 = *(*(v343 + 112) + 52);
                *(v345 + 52) = v348;
                sub_181939854(v345, v344 + 1);
                v349 = *(v343 + 112);
                *(v349 + 52) = v347;
                v3 = v346;
                sub_181939854(v349, v342);
                v350 = *(v341 + 112);
                *(v350 + 52) = v348;
                sub_181939854(v350, v410);
                v193 = v393;
                *(v341 + 4) = v410;
                v262 = v386;
                *(v343 + 4) = v342;
              }

              ++v337;
              ++v338;
            }

            while (v337 != v262);
            v376 = 1;
            v47 = v272;
            v371 = 1;
            v4 = v401;
          }
        }

        v263 = *(&v433 + v262);
        *v373 = bswap32(*(v263 + 4));
        if ((v390 & 8) == 0 && v402 != v47)
        {
          if (v47 <= v402)
          {
            v264 = &v436;
          }

          else
          {
            v264 = &v433;
          }

          *(*(v263 + 80) + 8) = *(*(v264[v387] + 10) + 8);
        }

        v391 = v47;
        v385 = v262;
        if (*(v399 + 33) && v193 >= 1)
        {
          v265 = 0;
          v266 = 0;
          v267 = 0;
          v268 = v412 == 0;
          v269 = v433;
          LODWORD(v270) = *(v433 + 24) + *(v433 + 12);
          v271 = v433;
          do
          {
            if (v265 == v270)
            {
              v274 = 8 * v266;
              v275 = &v437 + v274;
              v276 = &v433 + v274 + 8;
              v277 = v266 + 1;
              do
              {
                if (v277 >= v391)
                {
                  v278 = v275;
                }

                else
                {
                  v278 = v276;
                }

                v271 = *v278;
                v270 = v270 + v268 + *(*v278 + 24) + *(*v278 + 12);
                ++v266;
                v275 += 8;
                v276 += 8;
                ++v277;
              }

              while (v265 == v270);
            }

            v279 = *(v414 + 8 * v265);
            if (v265 != v431[v267] || (v269 = *(&v433 + v267 + 1), v267 = v267 + 1, v412))
            {
              if (v266 >= v391 || *(v269 + 4) != *&__src[4 * v266 + 13] || v279 < *(v271 + 80) || v279 >= *(v271 + 88))
              {
                v408 = v267;
                if (!v365)
                {
                  v394 = *(v414 + 8 * v265);
                  v280 = v269;
                  sub_1818EF720(v399, bswap32(*v279), 5, *(v269 + 4), &v423);
                  v279 = v394;
                  v269 = v280;
                  v267 = v408;
                  v268 = v412 == 0;
                }

                v281 = *(*(&v414 + 1) + 2 * v265);
                if (!*(*(&v414 + 1) + 2 * v265))
                {
                  v395 = v279;
                  v282 = v269;
                  v281 = sub_18194644C(&v413, v265);
                  v279 = v395;
                  v269 = v282;
                  v267 = v408;
                  v268 = v412 == 0;
                }

                v13 = v423;
                if (v281 > *(v269 + 16))
                {
                  if (!v423)
                  {
                    v425 = 0;
                    v424 = 0;
                    v426 = 0;
                    v283 = v279;
                    v396 = v269;
                    (*(v269 + 128))(v269, v279, &v424);
                    v269 = v396;
                    v267 = v408;
                    v268 = v412 == 0;
                    if (v426 > WORD2(v426))
                    {
                      v284 = *(v271 + 88);
                      if (v284 <= v283 || v283 + WORD2(v426) <= v284)
                      {
                        sub_1818EF720(*(v396 + 72), bswap32(*(v283 + HIWORD(v426) - 4)), 3, *(v396 + 4), &v423);
                        v269 = v396;
                      }

                      else
                      {
                        v285 = sub_18190EDA8(80846);
                        v269 = v396;
                        v423 = v285;
                      }

                      v268 = v412 == 0;
                      v267 = v408;
                    }
                  }

                  v13 = v423;
                }

                if (v13)
                {
                  v5 = v403;
                  v47 = v391;
                  goto LABEL_85;
                }

                v193 = v413;
              }
            }

            ++v265;
          }

          while (v265 < v193);
        }

        v397 = v193;
        if (v376)
        {
          v286 = 0;
          v287 = 0;
          v289 = *(&v414 + 1);
          v288 = v414;
          v409 = v414;
          while (1)
          {
            v290 = *(&v433 + v286);
            v291 = v431[v286];
            v292 = *(v288 + 8 * v291);
            v293 = *(v289 + 2 * v291);
            v294 = (v293 + v377);
            v295 = v400 + v287;
            if (*(v290 + 8))
            {
              if (v412)
              {
                v296 = v400 + v287;
                v425 = 0;
                v424 = 0;
                v426 = 0;
                LODWORD(v291) = v291 - 1;
                (*(v290 + 128))(v290, *(v288 + 8 * v291), &v424);
                v297 = v424;
                if (v424 > 0x7F)
                {
                  v292 = v400 + v287;
                  if (v424 >> 14)
                  {
                    v300 = sub_1819436D0((v296 + 4), v424);
                    v292 = v400 + v287;
                    v294 = (v300 + 4);
                  }

                  else
                  {
                    v296[4] = (v424 >> 7) | 0x80;
                    v296[5] = v297 & 0x7F;
                    v294 = 6;
                  }
                }

                else
                {
                  v292 = v400 + v287;
                  v296[4] = v424;
                  v294 = 5;
                }

                v295 = 0;
              }

              else
              {
                v292 -= 4;
                if (v293 == 4)
                {
                  v298 = v292;
                  v299 = (*(v16 + 120))(v16, v292);
                  v295 = v400 + v287;
                  v288 = v409;
                  v292 = v298;
                  v294 = v299;
                }
              }
            }

            else
            {
              *(*(v290 + 80) + 8) = *v292;
            }

            v301 = &v418;
            v302 = &v414 + 1;
            do
            {
              v303 = *v301++;
              ++v302;
            }

            while (v303 <= v291);
            v304 = *v302;
            if (v292 < v304 && &v292[v294] > v304)
            {
              break;
            }

            v306 = sub_1818DCB50(v16, v398 + v286, v292, v294, v295, *(v290 + 4));
            v4 = v401;
            if (v306)
            {
              v13 = v306;
              goto LABEL_443;
            }

            v287 += v294;
            if (++v286 == v385)
            {
              goto LABEL_397;
            }
          }

          v319 = sub_18190EDA8(88070);
LABEL_441:
          v13 = v319;
          v4 = v401;
LABEL_443:
          v5 = v403;
          v47 = v391;
          goto LABEL_85;
        }

LABEL_397:
        v307 = v397;
        v308 = 1 - v391;
        if (1 - v391 >= v391)
        {
LABEL_415:
          v423 = 0;
          if (v372 == 1 && !*(v16 + 24) && (v320 = v433, *(v433 + 20) >= *(v16 + 9)))
          {
            v423 = sub_1818EF3D0(v433, -1);
            sub_1818E61B4(v320, v16, &v423);
            v13 = v423;
            v4 = v401;
            v323 = v381;
            v47 = v391;
            if (!v423)
            {
              v13 = sub_1818F0E10(*(v320 + 72), v320, *(v320 + 4));
            }
          }

          else
          {
            if (*(v399 + 33))
            {
              v321 = v365 == 0;
            }

            else
            {
              v321 = 0;
            }

            v322 = v371;
            if (!v321)
            {
              v322 = 0;
            }

            v4 = v401;
            v323 = v381;
            v47 = v391;
            if (v322 == 1)
            {
              v324 = v391;
              v325 = &v433;
              do
              {
                v326 = *v325++;
                sub_1818EF720(v399, bswap32(*(*(v326 + 80) + 8)), 5, *(v326 + 4), &v423);
                --v324;
              }

              while (v324);
              v13 = v423;
            }

            else
            {
              v13 = 0;
            }
          }

          if (v47 <= v323)
          {
            v327 = &(&v436)[v47];
            v328 = v323 - v47 + 1;
            v5 = v403;
            do
            {
              if (!v13)
              {
                v13 = sub_1818F0E10(*(*v327 + 72), *v327, *(*v327 + 4));
              }

              ++v327;
              --v328;
            }

            while (v328);
          }

          else
          {
            v5 = v403;
          }

          goto LABEL_85;
        }

        v309 = v412 == 0;
        v310 = v431[0];
        v311 = 2 * v391 - 1;
        while (2)
        {
          if (v308 >= 0)
          {
            v312 = v308;
          }

          else
          {
            v312 = -v308;
          }

          if (!*(&v420 + v312))
          {
            if (v308 < 0)
            {
              v313 = v312 - 1;
              if (v430[v313] >= v431[v313])
              {
LABEL_408:
                if (v312 <= v381)
                {
                  v314 = v313;
                  v315 = v430[v313] + v309;
                }

                else
                {
                  v314 = v313;
                  v315 = v307;
                }

                v316 = (v431[v314] + v309);
                v317 = v431[v312] - v316;
                goto LABEL_413;
              }
            }

            else
            {
              if (v308)
              {
                LODWORD(v313) = v312 - 1;
                goto LABEL_408;
              }

              v316 = 0;
              v315 = 0;
              v317 = v310;
LABEL_413:
              v318 = *(&v433 + v312);
              v319 = sub_1819460F8(v318, v315, v316, v317, &v413);
              if (v319)
              {
                goto LABEL_441;
              }

              *(&v420 + v312) = 1;
              *(v318 + 20) = v405 - v429[v312];
              v307 = v397;
            }
          }

          ++v308;
          if (!--v311)
          {
            goto LABEL_415;
          }

          continue;
        }
      }

      break;
    }

    v255 = (&v436)[v249];
    *(&v433 + v249) = v255;
    (&v436)[v249] = 0;
    v256 = *(v255 + 14);
    v257 = *(v256 + 40);
    if ((*(v256 + 52) & 4) != 0 && v257[8] >= *(v256 + 48))
    {
      if (v257[32])
      {
        v259 = sub_1819360C0(v256);
        v193 = v393;
        v13 = v259;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = v257[12];
      if (!v13)
      {
        if (v257[46] <= v257[50])
        {
          v258 = sub_1818D8DD8(v256);
        }

        else
        {
          v258 = sub_181936438(v256);
        }

        v13 = v258;
        v193 = v393;
      }
    }

    v423 = v13;
    ++v47;
    if (v407 == v249)
    {
      v260 = 2;
    }

    else
    {
      v260 = 1;
    }

    if (v260 == *(*(v255 + 14) + 56) || v13 != 0)
    {
      if (v13)
      {
        goto LABEL_436;
      }

      goto LABEL_304;
    }

    v13 = sub_18190EDA8(87869);
LABEL_436:
    v4 = v401;
LABEL_85:
    v48 = v414;
    if (!v414)
    {
      v50 = v381;
LABEL_94:
      v51 = v436;
      if (!v436)
      {
        goto LABEL_98;
      }

LABEL_95:
      v52 = *(v51 + 14);
      if ((*(v52 + 52) & 0x20) != 0)
      {
        v53 = *(v52 + 40);
        --*(v53 + 152);
        *(v52 + 32) = *(v53 + 168);
        *(v53 + 168) = v52;
        (*(**(v53 + 72) + 144))(*(v53 + 72), *(v53 + 200) * (*(v52 + 48) - 1), *(v52 + 8));
      }

      else
      {
        sub_181932B68(v52);
      }

      goto LABEL_98;
    }

    v49 = &off_1ED452EB0;
    v50 = v381;
    if (!dword_1ED452E80)
    {
      goto LABEL_91;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v48);
    --qword_1ED456A90;
    off_1ED452EB0(v48);
    v48 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_94;
    }

    v49 = &xmmword_1ED452F28;
LABEL_91:
    (*v49)(v48);
    v51 = v436;
    if (v436)
    {
      goto LABEL_95;
    }

LABEL_98:
    if (v50)
    {
      if (v437)
      {
        v54 = *(v437 + 112);
        if ((*(v54 + 52) & 0x20) != 0)
        {
          v181 = *(v54 + 40);
          --*(v181 + 152);
          *(v54 + 32) = *(v181 + 168);
          *(v181 + 168) = v54;
          (*(**(v181 + 72) + 144))(*(v181 + 72), *(v181 + 200) * (*(v54 + 48) - 1), *(v54 + 8));
        }

        else
        {
          sub_181932B68(v54);
        }
      }

      if (v402 != 2)
      {
        if (v438)
        {
          v182 = *(v438 + 112);
          if ((*(v182 + 52) & 0x20) != 0)
          {
            v183 = *(v182 + 40);
            --*(v183 + 152);
            *(v182 + 32) = *(v183 + 168);
            *(v183 + 168) = v182;
            (*(**(v183 + 72) + 144))(*(v183 + 72), *(v183 + 200) * (*(v182 + 48) - 1), *(v182 + 8));
          }

          else
          {
            sub_181932B68(v182);
          }
        }

        if (v402 != 3 && v439)
        {
          v184 = *(v439 + 112);
          if ((*(v184 + 52) & 0x20) != 0)
          {
            v226 = *(v184 + 40);
            --*(v226 + 152);
            *(v184 + 32) = *(v226 + 168);
            *(v226 + 168) = v184;
            (*(**(v226 + 72) + 144))(*(v226 + 72), *(v226 + 200) * (*(v184 + 48) - 1), *(v184 + 8));
          }

          else
          {
            sub_181932B68(v184);
          }
        }
      }
    }

    if (v47 >= 1)
    {
      v227 = v47;
      v228 = &v433;
      do
      {
        if (*v228)
        {
          v229 = *(*v228 + 112);
          if ((*(v229 + 52) & 0x20) != 0)
          {
            v230 = *(v229 + 40);
            --*(v230 + 152);
            *(v229 + 32) = *(v230 + 168);
            *(v230 + 168) = v229;
            (*(**(v230 + 72) + 144))(*(v230 + 72), *(v230 + 200) * (*(v229 + 48) - 1), *(v229 + 8));
          }

          else
          {
            sub_181932B68(v229);
          }
        }

        v228 = (v228 + 8);
        --v227;
      }

      while (v227);
    }

    v1 = v379;
    v2 = v380;
    if (v380)
    {
LABEL_281:
      sub_181935120(v2);
    }

LABEL_282:
    v2 = v400;
LABEL_283:
    *(v5 + 12) = 0;
    v231 = *(v5 + 112);
    if ((*(v231 + 52) & 0x20) != 0)
    {
      v232 = *(v231 + 40);
      --*(v232 + 152);
      *(v231 + 32) = *(v232 + 168);
      *(v232 + 168) = v231;
      (*(**(v232 + 72) + 144))(*(v232 + 72), *(v232 + 200) * (*(v231 + 48) - 1), *(v231 + 8));
    }

    else
    {
      sub_181932B68(v231);
    }

    v6 = *(v1 + 84) - 1;
    *(v1 + 84) = v6;
    v7 = *(v3 + 8 * v6);
LABEL_4:
    *(v1 + 136) = v7;
    v5 = v7;
    if (v13)
    {
      goto LABEL_477;
    }
  }

  v8 = *(v1 + 84);
  if (*(v1 + 84))
  {
    goto LABEL_23;
  }

  v9 = *(*(v1 + 32) + 16);
  if (v9)
  {
    while (1)
    {
      if (v9 != v1 && !*v9)
      {
        v14 = *(v1 + 136);
        if (*(v9 + 136) == v14)
        {
          break;
        }
      }

      v9 = *(v9 + 40);
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    v361 = 88302;
    goto LABEL_476;
  }

LABEL_10:
  *&v413 = 0;
  LODWORD(v424) = 0;
  v10 = *(v5 + 72);
  v11 = *(v5 + 112);
  v12 = *(v11 + 40);
  if ((*(v11 + 52) & 4) != 0 && v12[8] >= *(v11 + 48))
  {
    if (v12[32])
    {
      v13 = sub_1819360C0(v11);
      if (v13)
      {
        goto LABEL_480;
      }
    }
  }

  else
  {
    v13 = v12[12];
    if (v13)
    {
LABEL_480:
      *(v1 + 152) = 0;
      goto LABEL_477;
    }

    if (v12[46] <= v12[50])
    {
      v13 = sub_1818D8DD8(v11);
      if (v13)
      {
        goto LABEL_480;
      }
    }

    else
    {
      v13 = sub_181936438(v11);
      if (v13)
      {
        goto LABEL_480;
      }
    }
  }

  LODWORD(v433) = sub_1818E21FC(v10, &v413, &v424, *(v5 + 4), 0);
  v7 = v413;
  sub_1818E61B4(v5, v413, &v433);
  if (*(v10 + 33))
  {
    sub_1818EF720(v10, v424, 5, *(v5 + 4), &v433);
  }

  v13 = v433;
  if (!v433)
  {
    memcpy((v7 + 28), (v5 + 28), 2 * *(v5 + 12));
    memcpy((v7 + 40), (v5 + 40), 8 * *(v5 + 12));
    *(v7 + 12) = *(v5 + 12);
    sub_1818E2114(v5, **(v7 + 80) & 0xF7);
    *(*(v5 + 80) + *(v5 + 9) + 8) = bswap32(v424);
    *(v1 + 84) = 1;
    *(v1 + 86) = 0;
    *(v1 + 144) = v5;
    *(v1 + 152) = v7;
    goto LABEL_4;
  }

  *(v1 + 152) = 0;
  if (v7)
  {
    v363 = *(v7 + 112);
    if ((*(v363 + 52) & 0x20) != 0)
    {
      v364 = *(v363 + 40);
      --*(v364 + 152);
      *(v363 + 32) = *(v364 + 168);
      *(v364 + 168) = v363;
      (*(**(v364 + 72) + 144))(*(v364 + 72), *(v364 + 200) * (*(v363 + 48) - 1), *(v363 + 8));
    }

    else
    {
      sub_181932B68(v363);
    }
  }

LABEL_477:
  if (v2)
  {
    sub_181935120(v2);
  }

  return v13;
}