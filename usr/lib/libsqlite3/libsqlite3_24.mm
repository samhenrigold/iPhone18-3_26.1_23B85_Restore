uint64_t sub_181987D5C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v26[0] = a1;
  v26[1] = a2;
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  for (i = 0; ; ++i)
  {
    if (!*v4)
    {
      return 0;
    }

    if (sub_18195EDEC(v26, *v4) || sub_18195ECC4(v26, *(v4 + 8)))
    {
      return 1;
    }

    v6 = *(a2 + 24);
    v7 = *v4;
    v8 = *(a2 + 36);
    if ((*(v6 + 48) & 0x80) != 0 || *v7 != 1 || (v9 = *(v7 + 1), *v9 != 168) || *(v9 + 12) != -1)
    {
      v24 = i;
      v31 = 0u;
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      v35 = 0u;
      memset(v36, 0, sizeof(v36));
      v33 = 0u;
      v34 = 0u;
      LOBYTE(v31) = 114;
      v32 = v36;
      v36[0] = -88;
      HIDWORD(v37) = v8;
      v10 = *(v6 + 16);
      if (v10)
      {
        while (1)
        {
          if (*(v10 + 98))
          {
            v11 = *(v10 + 94);
            if (*v7 == v11)
            {
              v12 = *(v10 + 72);
              if (!v12)
              {
                goto LABEL_19;
              }

              v13 = *(v4 + 8);
              if (v13)
              {
                if (!sub_181959260(a1, v13, v12, v8))
                {
                  break;
                }
              }
            }
          }

LABEL_12:
          v10 = *(v10 + 40);
          if (!v10)
          {
            goto LABEL_37;
          }
        }

        v11 = *(v10 + 94);
LABEL_19:
        if (v11)
        {
          v14 = 0;
          v15 = v11;
          do
          {
            *(&v31 + 1) = *(*(v10 + 64) + 8 * v14);
            v16 = *(*(v10 + 8) + 2 * v14);
            if (v16 == -2)
            {
              v17 = *(*(v10 + 80) + 24 * v14 + 8);
              if (*v17 == 114)
              {
                goto LABEL_26;
              }

              *&v32 = *(*(v10 + 80) + 24 * v14 + 8);
            }

            else
            {
              *&v32 = v36;
              LODWORD(v38) = v16;
            }

            v17 = &v31;
LABEL_26:
            v18 = v15;
            v19 = (v7 + 2);
            while (sub_181959260(0, *v19, v17, v8) > 1)
            {
              v19 += 3;
              if (!--v18)
              {
                goto LABEL_12;
              }
            }

            ++v14;
          }

          while (v14 != v15);
        }

        *(v4 + 56) = v10;
        for (j = a4; j; j = j[4])
        {
          if (!*j)
          {
            break;
          }

          if (j[7] == v10)
          {
            break;
          }
        }

        if (j != v4)
        {
          *(v4 + 41) = 1;
        }
      }

LABEL_37:
      i = v24;
      if (!*(v4 + 56))
      {
        break;
      }
    }

    v4 = *(v4 + 32);
    if (!v4)
    {
      return 0;
    }
  }

  if (v24 || *(v4 + 32))
  {
    sqlite3_snprintf(16, v30, "%r ", (v24 + 1));
  }

  else
  {
    v30[0] = 0;
  }

  sub_181910730(a1, "%sON CONFLICT clause does not match any PRIMARY KEY or UNIQUE constraint", v30);
  return 1;
}

BOOL sub_181988040(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 94) != *(a2 + 94) || *(a1 + 96) != *(a2 + 96) || *(a1 + 98) != *(a2 + 98))
  {
    return 0;
  }

  if (!*(a1 + 94))
  {
    return sub_181959260(0, *(a2 + 72), *(a1 + 72), 0xFFFFFFFFLL) == 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(*(a2 + 8) + 2 * v2);
    if (v3 != *(*(a1 + 8) + 2 * v2))
    {
      return 0;
    }

    if (v3 == 65534)
    {
      v4 = a1;
      v5 = a2;
      v6 = sub_181959260(0, *(*(a2 + 80) + 24 * v2 + 8), *(*(a1 + 80) + 24 * v2 + 8), 0xFFFFFFFFLL);
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
        return 0;
      }
    }

    if (*(*(a2 + 56) + v2) != *(*(a1 + 56) + v2))
    {
      return 0;
    }

    v8 = *(*(a2 + 64) + 8 * v2);
    v9 = *(*(a1 + 64) + 8 * v2);
    if (v8)
    {
      if (v9)
      {
        while (1)
        {
          if (*v8 == *v9)
          {
            if (!*v8)
            {
              goto LABEL_19;
            }
          }

          else if (byte_181A20298[*v8] != byte_181A20298[*v9])
          {
            return 0;
          }

          ++v8;
          ++v9;
        }
      }

      return 0;
    }

    if (v9)
    {
      return 0;
    }

LABEL_19:
    if (++v2 >= *(a2 + 94))
    {
      return sub_181959260(0, *(a2 + 72), *(a1 + 72), 0xFFFFFFFFLL) == 0;
    }
  }
}

uint64_t sub_1819881C0(uint64_t result, char *__s)
{
  if (__s)
  {
    v3 = result;
    result = *(result + 144);
    if (*(v3 + 148) <= result)
    {
      result = sub_18194C8AC(v3, 118, 0, 1, 0);
    }

    else
    {
      *(v3 + 144) = result + 1;
      v4 = *(v3 + 136) + 40 * result;
      *v4 = 118;
      *(v4 + 4) = 0x100000000;
      *(v4 + 12) = 0;
      *(v4 + 28) = 0;
      *(v4 + 20) = 0;
      *(v4 + 36) = 0;
    }

    if (!*(*v3 + 103))
    {
      if ((result & 0x80000000) != 0)
      {
        LODWORD(result) = *(v3 + 144) - 1;
      }

      result = sub_18194CB90(v3, *(v3 + 136) + 40 * result, __s, 0);
    }

    v5 = *(v3 + 144);
    if (*(v3 + 148) <= v5)
    {

      return sub_18194C8AC(v3, 84, 1, 1, 0);
    }

    else
    {
      *(v3 + 144) = v5 + 1;
      v6 = *(v3 + 136) + 40 * v5;
      *v6 = 84;
      *(v6 + 4) = 0x100000001;
      *(v6 + 12) = 0;
      *(v6 + 28) = 0;
      *(v6 + 20) = 0;
      *(v6 + 36) = 0;
    }
  }

  return result;
}

uint64_t sub_1819882F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 11);
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a2 + 11);
  }

  result = sub_1818BAF94(a1, v7, a3, a4);
  if (v6)
  {
    v9 = 0;
    v10 = *(a2 + 10);
    v11 = v6 << 6;
    v12 = &off_1E6A277A0[v10];
    do
    {
      if (!*(*a1 + 103))
      {
        result = sub_1818900D0(a1[19] + v9, *v12, -1, 1, 0);
      }

      v9 += 64;
      ++v12;
    }

    while (v11 != v9);
  }

  else if (!*(*a1 + 103))
  {
    v13 = *a2;
    v14 = a1[19];

    return sub_1818900D0(v14, v13, -1, 1, 0);
  }

  return result;
}

uint64_t sub_1819883CC(void **a1, uint64_t a2)
{
  v4 = sub_181929E8C(*a1, 8uLL, 2029538362);
  v5 = v4;
  if (v4)
  {
    *v4 = a2;
  }

  result = *(a1 + 36);
  if (*(a1 + 37) <= result)
  {
    result = sub_18194C8AC(a1, 72, 0, 1, 0);
  }

  else
  {
    *(a1 + 36) = result + 1;
    v7 = &a1[17][5 * result];
    *v7 = 72;
    *(v7 + 4) = 0x100000000;
    *(v7 + 12) = 0;
    *(v7 + 28) = 0;
    *(v7 + 20) = 0;
    *(v7 + 9) = 0;
  }

  if (*(*a1 + 103))
  {
    if (v5)
    {
      result = sub_181939EC8(*a1, v5);
    }
  }

  else
  {
    if ((result & 0x80000000) != 0)
    {
      result = (*(a1 + 36) - 1);
    }

    v8 = &a1[17][5 * result];
    if (*(v8 + 1))
    {
      result = sub_18194CB90(a1, v8, v5, 4294967283);
    }

    else if (v5)
    {
      v8[2] = v5;
      *(v8 + 1) = -13;
    }
  }

  v9 = *(a1 + 36);
  if (*(a1 + 37) <= v9)
  {

    return sub_18194C8AC(a1, 84, 1, 1, 0);
  }

  else
  {
    *(a1 + 36) = v9 + 1;
    v10 = &a1[17][5 * v9];
    *v10 = 84;
    *(v10 + 4) = 0x100000001;
    *(v10 + 12) = 0;
    *(v10 + 28) = 0;
    *(v10 + 20) = 0;
    *(v10 + 9) = 0;
  }

  return result;
}

uint64_t sub_181988554(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      v2 = a1;
      v3 = a2;
      sub_181932DEC(a1);
      a2 = v3;
      a1 = v2;
    }
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 40);
  if ((a2 & 0x80000000) == 0)
  {
    v5 = v5 & 0xFFFFFFF3 | (4 * a2);
    *(v4 + 40) = v5;
  }

  v6 = (v5 >> 2) & 3;
  if (*(a1 + 17))
  {
    v7 = *(a1 + 20) - 1;
    *(a1 + 20) = v7;
    if (!v7)
    {
      sub_181932ECC(a1);
    }
  }

  return v6;
}

uint64_t sub_1819885E8(_BYTE *a1)
{
  if (a1)
  {
    v1 = "exclusive";
    for (i = a1; ; ++i)
    {
      if (*i == *v1)
      {
        if (!*i)
        {
          return 1;
        }
      }

      else if (byte_181A20298[*i] != byte_181A20298[*v1])
      {
        for (j = "normal"; ; ++j)
        {
          if (*a1 == *j)
          {
            if (!*a1)
            {
              return 0;
            }
          }

          else if (byte_181A20298[*a1] != byte_181A20298[*j])
          {
            return 0xFFFFFFFFLL;
          }

          ++a1;
        }
      }

      ++v1;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_181988680(unsigned __int8 *a1)
{
  for (i = 0; a1[i] == aNone[i]; ++i)
  {
    if (!a1[i])
    {
      return 0;
    }

LABEL_3:
    ;
  }

  if (byte_181A20298[a1[i]] == byte_181A20298[aNone[i]])
  {
    goto LABEL_3;
  }

  for (j = 0; a1[j] == aFull[j]; ++j)
  {
    if (!a1[j])
    {
      return 1;
    }

LABEL_9:
    ;
  }

  if (byte_181A20298[a1[j]] == byte_181A20298[aFull[j]])
  {
    goto LABEL_9;
  }

  for (k = 0; a1[k] == aIncremental[k]; ++k)
  {
    if (!a1[k])
    {
      return 2;
    }

LABEL_15:
    ;
  }

  if (byte_181A20298[a1[k]] == byte_181A20298[aIncremental[k]])
  {
    goto LABEL_15;
  }

  v8 = v1;
  v9 = v2;
  v7 = 0;
  sub_181949B34(a1, &v7);
  if (v7 >= 3)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void sub_181988784(uint64_t result)
{
  if (*(result + 101))
  {
    v2 = *(result + 40);
    if (v2 >= 1)
    {
      v3 = v2 + 1;
      for (i = (*(result + 32) + 16); ; i += 32)
      {
        v5 = *(i - 1);
        if (v5)
        {
          break;
        }

LABEL_4:
        if (--v3 <= 1)
        {
          return;
        }
      }

      v6 = *i;
      v7 = *(result + 48);
      v8 = *(v5 + 8);
      if (*(v5 + 17))
      {
        ++*(v5 + 20);
        if (!*(v5 + 18))
        {
          sub_181932DEC(v5);
        }
      }

      v9 = *v8;
      if (*(*v8 + 16))
      {
        v10 = 0;
        *(v9 + 11) = 1;
        *(v9 + 13) = 0;
      }

      else
      {
        v10 = (v6 & 7u) > 2;
        *(v9 + 12) = v10;
        *(v9 + 13) = (v6 & 7) == 4;
        *(v9 + 11) = (v6 & 7) == 1;
        if ((v6 & 7) != 1)
        {
          v12 = 0;
          if ((v7 & 8) != 0)
          {
            v11 = 3;
          }

          else
          {
            v11 = 2;
          }

          *(v9 + 14) = v11;
          goto LABEL_13;
        }
      }

      v11 = 0;
      *(v9 + 14) = 0;
      v12 = 1;
LABEL_13:
      if (v10)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      if ((v7 & 0x10) != 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v15 = 4 * v11;
      }

      else
      {
        v15 = 12;
      }

      *(v9 + 15) = v15 | v13;
      v16 = *(v9 + 25) & 0xFE;
      if ((v7 & 0x38u) < 0x20uLL)
      {
        ++v16;
      }

      *(v9 + 25) = v16;
      if (*(v5 + 17))
      {
        v17 = *(v5 + 20) - 1;
        *(v5 + 20) = v17;
        if (!v17)
        {
          sub_181932ECC(v5);
        }
      }

      goto LABEL_4;
    }
  }
}

uint64_t *sub_181988914(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      v4 = a2;
      sub_181932DEC(a1);
      a2 = v4;
    }
  }

  v5 = *v3;
  *(v5 + 160) = a2;
  result = *(v5 + 72);
  v7 = *result;
  if (*result && *v7 >= 3)
  {
    v10 = a2;
    *(v5 + 27) = a2 > 0;
    v8 = sub_181933ECC;
    if (!*(v5 + 48))
    {
      if (a2 < 1 || (v8 = sub_181933ED8, *(v5 + 296)))
      {
        v8 = sub_18193417C;
      }
    }

    *(v5 + 288) = v8;
    result = (*(v7 + 80))();
  }

  if (*(a1 + 17))
  {
    v9 = *(a1 + 20) - 1;
    *(a1 + 20) = v9;
    if (!v9)
    {
      return sub_181932ECC(a1);
    }
  }

  return result;
}

void sub_181988A14(uint64_t *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((v2 - 48) < 3)
  {
    v3 = (v2 - 48);
    goto LABEL_16;
  }

  v4 = a2 + 1;
  v5 = "file";
  for (i = *a2; *v5 == i; i = v7)
  {
    if (!i)
    {
      v3 = 1;
      goto LABEL_16;
    }

LABEL_5:
    ++v5;
    v7 = *v4++;
  }

  if (byte_181A20298[i] == byte_181A20298[*v5])
  {
    goto LABEL_5;
  }

  v8 = a2 + 1;
  for (j = "memory"; *j == v2; ++j)
  {
    if (!v2)
    {
      v3 = 2;
      goto LABEL_16;
    }

LABEL_11:
    v10 = *v8++;
    LOBYTE(v2) = v10;
  }

  if (byte_181A20298[v2] == byte_181A20298[*j])
  {
    goto LABEL_11;
  }

  v3 = 0;
LABEL_16:
  v11 = *a1;
  if (v3 != *(*a1 + 102))
  {
    v12 = *(*(v11 + 32) + 40);
    if (v12)
    {
      if (!*(v11 + 101) || *(v12 + 16))
      {

        sub_181910730(a1, "temporary storage cannot be changed from within a transaction");
        return;
      }

      sub_1818E3028(*(*(v11 + 32) + 40));
      *(*(v11 + 32) + 40) = 0;
      sub_181908F74(v11);
    }

    *(v11 + 102) = v3;
  }
}

void sub_181988B54(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*(*a1 + 32) + 40);
  if (v2)
  {
    if (*(v1 + 101) && !*(v2 + 16))
    {
      sub_1818E3028(*(*(*a1 + 32) + 40));
      *(*(v1 + 32) + 40) = 0;

      sub_181908F74(v1);
    }

    else
    {

      sub_181910730(a1, "temporary storage cannot be changed from within a transaction");
    }
  }
}

uint64_t sub_181988BE4(unsigned __int8 *a1, int a2, unsigned __int8 a3)
{
  if (*a1 - 58 >= 0xFFFFFFFFFFFFFFF6)
  {
    v15 = 0;
    sub_181949B34(a1, &v15);
    return v15;
  }

  v6 = strlen(a1);
  v7 = 0;
  v8 = v6 & 0x3FFFFFFF;
  while (1)
  {
    if (v8 != byte_181A2469F[v7])
    {
      goto LABEL_3;
    }

    if (v8)
    {
      v9 = &aOnoffalseyestr[byte_181A24697[v7]];
      v10 = v8 + 1;
      v11 = a1;
      while (1)
      {
        v12 = *v9;
        if (!*v9)
        {
          break;
        }

        LODWORD(v12) = byte_181A20298[v12];
        v13 = byte_181A20298[*v11];
        if (v12 != v13)
        {
          goto LABEL_12;
        }

        ++v9;
        ++v11;
        if (--v10 <= 1)
        {
          goto LABEL_13;
        }
      }

      v13 = byte_181A20298[*v11];
LABEL_12:
      if (v12 != v13)
      {
        goto LABEL_3;
      }
    }

LABEL_13:
    if (!a2 || (v7 | 0xFFFFFFF8uLL) <= 0xFFFFFFFD)
    {
      return byte_181A246A7[v7];
    }

LABEL_3:
    if (++v7 == 8)
    {
      return a3;
    }
  }
}

uint64_t sub_181988D08(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = result;
  v12 = 0;
  v25 = &a9;
  while (1)
  {
    while (1)
    {
      v15 = *(a3 + v12);
      if (v15 != 105)
      {
        break;
      }

      v20 = v25++;
      v21 = *v20;
      v22 = *(v11 + 144);
      if (*(v11 + 148) > v22)
      {
        *(v11 + 144) = v22 + 1;
        v14 = *(v11 + 136) + 40 * v22;
        *v14 = 71;
        *(v14 + 4) = v21;
        *(v14 + 8) = a2 + v12;
        *(v14 + 12) = 0;
        *(v14 + 28) = 0;
        *(v14 + 20) = 0;
        *(v14 + 36) = 0;
        goto LABEL_3;
      }

      result = sub_18194C8AC(v11, 71, v21, a2 + v12++, 0);
    }

    if (v15 != 115)
    {
      break;
    }

    v16 = v25++;
    v17 = *v16;
    if (*v16)
    {
      v18 = 118;
    }

    else
    {
      v18 = 75;
    }

    result = *(v11 + 144);
    if (*(v11 + 148) <= result)
    {
      result = sub_18194C8AC(v11, v18, 0, a2 + v12, 0);
    }

    else
    {
      *(v11 + 144) = result + 1;
      v19 = *(v11 + 136) + 40 * result;
      *v19 = v18;
      *(v19 + 2) = 0;
      *(v19 + 4) = 0;
      *(v19 + 8) = a2 + v12;
      *(v19 + 1) = 0;
      *(v19 + 12) = 0;
      *(v19 + 28) = 0;
      *(v19 + 20) = 0;
      *(v19 + 36) = 0;
    }

    if (*(*v11 + 103))
    {
LABEL_3:
      ++v12;
    }

    else
    {
      if ((result & 0x80000000) != 0)
      {
        LODWORD(result) = *(v11 + 144) - 1;
      }

      result = sub_18194CB90(v11, *(v11 + 136) + 40 * result, v17, 0);
      ++v12;
    }
  }

  if (!*(a3 + v12))
  {
    v23 = *(v11 + 144);
    if (*(v11 + 148) <= v23)
    {
      return sub_18194C8AC(v11, 84, a2, v12, 0);
    }

    else
    {
      *(v11 + 144) = v23 + 1;
      v24 = *(v11 + 136) + 40 * v23;
      *v24 = 84;
      *(v24 + 4) = a2;
      *(v24 + 8) = v12;
      *(v24 + 12) = 0;
      *(v24 + 28) = 0;
      *(v24 + 20) = 0;
      *(v24 + 36) = 0;
    }
  }

  return result;
}

uint64_t sub_181988F04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a4;
    v9 = a2;
    v10 = result;
    do
    {
      if (*(v9 + 24) && (v8 || (*(v9 + 4) & 0x40000) == 0))
      {
        result = sub_181988D08(v10, 1, "sissii", a4, a5, a6, a7, a8, *(v9 + 56));
      }

      v9 = *(v9 + 16);
    }

    while (v9);
  }

  return result;
}

uint64_t sub_181989004(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = &unk_181A246AF;
  }

  else
  {
    v3 = byte_181A204C4;
  }

  if (a2)
  {
    v4 = 12;
  }

  else
  {
    v4 = 4;
  }

  sub_181893FF0(a1, "like", 2, 1, v3, sub_1818EDC84, 0, 0, 0, 0, 0);
  v5 = sub_181893B48(a1, "like", 2, 1u, 0);
  *(v5 + 4) = *(v5 + 4) & 0xFFDFFFFF | v4;
  sub_181893FF0(a1, "like", 3, 1, v3, sub_1818EDC84, 0, 0, 0, 0, 0);
  result = sub_181893B48(a1, "like", 3, 1u, 0);
  *(result + 4) = *(result + 4) & 0xFFDFFFFF | v4;
  return result;
}

uint64_t sub_18198911C(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (*(a1 + 148) <= v2)
  {
    sub_18194C8AC(a1, 84, 3, 1, 0);
  }

  else
  {
    *(a1 + 144) = v2 + 1;
    v3 = *(a1 + 136) + 40 * v2;
    *v3 = 84;
    *(v3 + 4) = 0x100000003;
    *(v3 + 12) = 0;
    *(v3 + 28) = 0;
    *(v3 + 20) = 0;
    *(v3 + 36) = 0;
  }

  v4 = *(a1 + 144);
  v5 = v4 + 2;
  if (*(a1 + 148) <= v4)
  {
    v4 = sub_18194C8AC(a1, 50, 1, v5, 1);
  }

  else
  {
    *(a1 + 144) = v4 + 1;
    v6 = *(a1 + 136) + 40 * v4;
    *v6 = 0x100000032;
    *(v6 + 8) = v5;
    *(v6 + 12) = 1;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
  }

  v7 = *(a1 + 144);
  if (*(a1 + 148) <= v7)
  {
    sub_18194C8AC(a1, 70, 0, 0, 0);
  }

  else
  {
    *(a1 + 144) = v7 + 1;
    v8 = *(a1 + 136) + 40 * v7;
    *v8 = 70;
    *(v8 + 1) = 0u;
    *(v8 + 17) = 0u;
    *(v8 + 32) = 0;
  }

  return v4;
}

unsigned __int8 *sub_181989258(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v3 = a3 - a2;
  do
  {
    v4 = a2;
    v5 = v3;
    v6 = *a2++;
    --v3;
  }

  while ((byte_181A204C8[v6] & 1) != 0);
  v7 = v5;
  v8 = (v5 << 32) + 0x100000000;
  v9 = v7 - 2;
  do
  {
    v10 = byte_181A204C8[a2[v9]];
    v8 -= 0x100000000;
    --v9;
  }

  while ((v10 & 1) != 0);
  v11 = v8 >> 32;
  result = sub_181929E8C(a1, (v8 >> 32) + 1, 1565185748);
  if (result)
  {
    v13 = result;
    memcpy(result, v4, v11);
    result = v13;
    v13[v11] = 0;
    v14 = *v13;
    if (*v13)
    {
      v15 = v13 + 1;
      do
      {
        if (byte_181A204C8[v14])
        {
          *(v15 - 1) = 32;
        }

        v16 = *v15++;
        v14 = v16;
      }

      while (v16);
    }
  }

  return result;
}

void sub_181989324(_DWORD *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = *(*a1 + 24);
  }

  else
  {
    v6 = 0;
  }

  v110 = 0;
  __s = 0;
  v109 = 0;
  *v107 = 0;
  v108 = 0;
  v7 = *a3;
  if (*a3)
  {
    v8 = *(v7 + 20);
    if ((~v8 & 0x202) == 0 && *(v7 + 22) == 1)
    {
      v9 = *(v7 + 8);
      v10 = a3[1];
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    if ((v8 & 1) == 0)
    {
      v9 = sub_18193CB70(v7, 1, a3, a4);
      v10 = a3[1];
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }
  }

  v9 = 0;
  v10 = a3[1];
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_13:
  v11 = *(v10 + 20);
  if ((~v11 & 0x202) != 0 || *(v10 + 22) != 1)
  {
    if (v11)
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_18193CB70(v10, 1, a3, a4);
    }
  }

  else
  {
    v10 = *(v10 + 8);
  }

LABEL_19:
  if (!v9)
  {
    v9 = &byte_181A2878D;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &byte_181A2878D;
  }

  if ((*(v6 + 198) & 4) != 0)
  {
    v106 = 0;
    if (sqlite3_initialize())
    {
      return;
    }

    if (word_1ED452E84)
    {
      v20 = qword_1ED452F08(2);
      v21 = v20;
      if (v20)
      {
        xmmword_1ED452F18(v20);
        v22 = 0;
LABEL_58:
        for (i = qword_1ED456AE8; i; i = *(i + 16))
        {
          if (!strcmp("memdb", *(i + 24)))
          {
            break;
          }
        }

        if ((v22 & 1) == 0)
        {
          xmmword_1ED452F28(v21);
        }

        *v107 = i;
        if (!i)
        {
          return;
        }

        v24 = sub_18189049C(i, "x", v6, &v106, 0, 0x100u);
        if (v24)
        {
          goto LABEL_242;
        }

        v27 = v106;
        v28 = sub_181893800(v6, v106);
        if (!v28)
        {
          sub_1818E3028(v27);
          v24 = 7;
          goto LABEL_242;
        }

        v29 = v28;
        v30 = *(v6 + 32) + 32 * *(v6 + 196);
        v31 = *(v30 + 8);
        if (v31)
        {
          sub_1818E3028(v31);
        }

        *(v30 + 8) = v27;
        *(v30 + 24) = v29;
        *(v6 + 111) = 0;
        v32 = (v6 + 111);
LABEL_101:
        v48 = sub_181893800(v6, v27);
        *(v30 + 24) = v48;
        if (v48)
        {
          if (*(v48 + 112) && *(v48 + 113) != *(v6 + 100))
          {
            v104 = 0;
            v108 = sub_1818A8BAC(v6, "attached databases must use the same text encoding as main database");
            v24 = 1;
          }

          else
          {
            v24 = 0;
            v104 = 1;
          }
        }

        else
        {
          v104 = 0;
          v24 = 7;
        }

        v51 = *(v30 + 8);
        if (*(v51 + 17))
        {
          ++*(v51 + 20);
          if (!*(v51 + 18))
          {
            sub_181932DEC(v51);
            v51 = *(v30 + 8);
          }
        }

        v52 = **(v51 + 8);
        if (!*(v52 + 16))
        {
          v53 = *(v52 + 344);
          if (!v53 || *(v53 + 63) != 2)
          {
            *(v52 + 8) = *(v6 + 105);
          }
        }

        v54 = *(*(v6 + 32) + 8);
        v105 = v32;
        if (!v54)
        {
          LOWORD(v55) = 0;
          goto LABEL_125;
        }

        if (!*(v54 + 17))
        {
          v55 = (*(*(v54 + 8) + 40) >> 2) & 3;
          goto LABEL_125;
        }

        ++*(v54 + 20);
        if (*(v54 + 18))
        {
          v55 = (*(*(v54 + 8) + 40) >> 2) & 3;
        }

        else
        {
          sub_181932DEC(v54);
          v55 = (*(*(v54 + 8) + 40) >> 2) & 3;
          if (!*(v54 + 17))
          {
            goto LABEL_125;
          }
        }

        v56 = *(v54 + 20) - 1;
        *(v54 + 20) = v56;
        if (!v56)
        {
          sub_181932ECC(v54);
        }

LABEL_125:
        if (*(v51 + 17))
        {
          ++*(v51 + 20);
          if (*(v51 + 18))
          {
            *(*(v51 + 8) + 40) = *(*(v51 + 8) + 40) & 0xFFF3 | (4 * v55);
          }

          else
          {
            sub_181932DEC(v51);
            v57 = *(v51 + 17);
            *(*(v51 + 8) + 40) = *(*(v51 + 8) + 40) & 0xFFF3 | (4 * v55);
            if (!v57)
            {
              goto LABEL_132;
            }
          }

          v58 = *(v51 + 20) - 1;
          *(v51 + 20) = v58;
          if (!v58)
          {
            sub_181932ECC(v51);
          }
        }

        else
        {
          *(*(v51 + 8) + 40) = *(*(v51 + 8) + 40) & 0xFFF3 | (4 * v55);
        }

LABEL_132:
        v59 = *(v30 + 8);
        v60 = *(v6 + 48);
        v61 = *(v59 + 8);
        if (*(v59 + 17))
        {
          ++*(v59 + 20);
          if (!*(v59 + 18))
          {
            sub_181932DEC(v59);
          }
        }

        v62 = *v61;
        v63 = *(*v61 + 16);
        if (*(*v61 + 16))
        {
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = 1;
        }

        else
        {
          v67 = 0;
          if ((v60 & 8) != 0)
          {
            v66 = 12;
          }

          else
          {
            v66 = 8;
          }

          if ((v60 & 8) != 0)
          {
            v65 = 3;
          }

          else
          {
            v65 = 2;
          }

          v64 = 1;
        }

        v32 = v105;
        v62[11] = v67;
        v62[12] = v64;
        v62[13] = 0;
        v62[14] = v65;
        if (v63)
        {
          v68 = 1;
        }

        else
        {
          v68 = (v60 & 0x10) == 0;
        }

        if (v68)
        {
          v69 = v66;
        }

        else
        {
          v69 = 12;
        }

        v62[15] = v69 | v65;
        v70 = v62[25] & 0xFE;
        if ((v60 & 0x20) == 0)
        {
          ++v70;
        }

        v62[25] = v70;
        if (*(v59 + 17))
        {
          v71 = *(v59 + 20) - 1;
          *(v59 + 20) = v71;
          if (!v71)
          {
            sub_181932ECC(v59);
          }
        }

        v72 = *(v30 + 8);
        if (*(v72 + 17))
        {
          v73 = *(v72 + 20) - 1;
          *(v72 + 20) = v73;
          if (!v73)
          {
            sub_181932ECC(v72);
          }
        }

        *(v30 + 16) = 3;
        if (!v104)
        {
          goto LABEL_193;
        }

        if (*v30)
        {
          v74 = a3[2];
          if (v74)
          {
            v75 = *(v74 + 20);
            v76 = byte_181A203AA[v75 & 0x3F];
            if ((v76 - 1) < 2)
            {
              v80 = sub_181929E8C(v6, 0x12uLL, 354097263);
              if (v80)
              {
                strcpy(v80, "Invalid key value");
              }

              v108 = v80;
              v24 = 1;
              goto LABEL_193;
            }

            if ((v76 - 3) < 2)
            {
              if ((v75 & 2) != 0 && *(v74 + 22) == 1)
              {
                v77 = *(v74 + 16);
              }

              else if ((v75 & 0x10) != 0)
              {
                v77 = *(v74 + 16);
                if ((*(v74 + 20) & 0x400) != 0)
                {
                  v77 += *v74;
                }
              }

              else if (v75)
              {
                v77 = 0;
              }

              else
              {
                v77 = sub_18193CB44(v74, 1, v49, v50);
                v74 = a3[2];
              }

              v87 = sqlite3_value_blob(v74);
              v85 = *(v6 + 40) - 1;
              v86 = v6;
              v88 = v77;
              goto LABEL_192;
            }

            if (v76 == 5)
            {
              v81 = __s;
              if (sub_18198B05C(v6, v12, __s))
              {
                v24 = 0;
                goto LABEL_194;
              }

              v82 = *(*(v6 + 32) + 8);
              v83 = *(**(v82 + 8) + 320);
              if (v83 && (v84 = *v83, v83 += 2, (v24 = v84) != 0) || (v24 = 0, sub_181918F14(v82) >= 1))
              {
                v85 = *(v6 + 40) - 1;
                v86 = v6;
                v87 = v83;
                v88 = v24;
LABEL_192:
                v24 = sub_181928904(v86, v85, v87, v88);
              }
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            sub_1819012D0(99877);
            v24 = 0;
          }
        }

        else
        {
          v24 = 7;
        }

LABEL_193:
        v81 = __s;
LABEL_194:
        if (!v81)
        {
          goto LABEL_207;
        }

          ;
        }

        v90 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(j);
          --qword_1ED456A90;
          off_1ED452EB0(j);
          j = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
LABEL_207:
            if (v24)
            {
              goto LABEL_231;
            }

            if (!*v32)
            {
              sub_181932C40(v6);
            }

            *(v6 + 196) = 0;
            *(v6 + 44) &= ~0x10u;
            if (*(v6 + 792))
            {
              LODWORD(v106) = 1;
              v91 = *(**(*(v30 + 8) + 8) + 72);
              if (*v91)
              {
                (*(*v91 + 80))(v91, 44, &v106);
              }
            }

            if ((*(v6 + 198) & 4) != 0)
            {
              v24 = 0;
              if (!*v32)
              {
                goto LABEL_224;
              }

              goto LABEL_230;
            }

            v92 = *(v6 + 44);
            v93 = *(*(v6 + 32) + 24);
            *(v6 + 100) = *(v93 + 113);
            if ((*(v93 + 114) & 1) != 0 || (v94 = sub_18189F330(v6, 0, &v108, 0)) == 0)
            {
              v95 = *(v6 + 40);
              if (v95 < 2)
              {
LABEL_226:
                v24 = 0;
                if (v92)
                {
                  if (!*v32)
                  {
                    goto LABEL_224;
                  }
                }

                else
                {
                  *(v6 + 44) &= ~1u;
                  if (!*v32)
                  {
LABEL_224:
                    sub_181932CD8(v6);
                    if (!v24)
                    {
                      return;
                    }

                    goto LABEL_231;
                  }
                }

LABEL_230:
                if (!v24)
                {
                  return;
                }

LABEL_231:
                if ((*(v6 + 198) & 4) == 0)
                {
                  v97 = *(v6 + 40) - 1;
                  v98 = *(*(v6 + 32) + 32 * v97 + 8);
                  if (v98)
                  {
                    sub_1818E3028(v98);
                    v99 = *(v6 + 32) + 32 * v97;
                    *(v99 + 8) = 0;
                    *(v99 + 24) = 0;
                  }

                  sub_181908F74(v6);
                  *(v6 + 40) = v97;
                  if (v24 == 3082 || v24 == 7)
                  {
                    if (!*(v6 + 103) && !*(v6 + 104))
                    {
                      *(v6 + 103) = 1;
                      if (*(v6 + 220) >= 1)
                      {
                        *(v6 + 424) = 1;
                      }

                      ++*(v6 + 432);
                      *(v6 + 436) = 0;
                      v102 = *(v6 + 344);
                      if (v102)
                      {
                        sub_181910730(v102, "out of memory");
                        for (k = *(v6 + 344); ; ++*(k + 52))
                        {
                          *(k + 24) = 7;
                          k = *(k + 216);
                          if (!k)
                          {
                            break;
                          }
                        }
                      }
                    }

                    if (v108)
                    {
                      sub_181929C84(v6, v108);
                    }

                    v100 = sub_1818A8BAC(v6, "out of memory");
                  }

                  else
                  {
                    v23 = v108;
                    if (v108)
                    {
                      goto LABEL_244;
                    }

                    v100 = sub_1818A8BAC(v6, "unable to open database: %s");
                  }

                  v23 = v100;
                  v108 = v100;
LABEL_243:
                  if (!v23)
                  {
LABEL_247:
                    if (a1)
                    {
                      if (v24)
                      {
                        a1[9] = v24;
                        if (*(*a1 + 20))
                        {
                          switch(v24)
                          {
                            case 516:
                              v101 = "abort due to ROLLBACK";
                              break;
                            case 101:
                              v101 = "no more rows available";
                              break;
                            case 100:
                              v101 = "another row available";
                              break;
                            default:
                              if (v24 > 0x1Cu || ((0x1410004uLL >> v24) & 1) != 0)
                              {
                                v101 = "unknown error";
                              }

                              else
                              {
                                v101 = off_1E6A27DD8[v24];
                              }

                              break;
                          }

                          sub_18190B23C(a1, v101, -1, 1, 0);
                        }
                      }
                    }

                    return;
                  }

LABEL_244:
                  if (!a1 || (a1[9] = 1, sub_1818900D0(*a1, v23, -1, 1, 0xFFFFFFFFFFFFFFFFLL), (v23 = v108) != 0))
                  {
                    sub_181929C84(v6, v23);
                  }

                  goto LABEL_247;
                }

LABEL_242:
                v23 = v108;
                goto LABEL_243;
              }

              v96 = 32 * v95 - 8;
              while (1)
              {
                if ((*(*(*(v6 + 32) + v96) + 114) & 1) == 0)
                {
                  v94 = sub_18189F330(v6, (v95 - 1), &v108, 0);
                  if (v94)
                  {
                    break;
                  }
                }

                --v95;
                v96 -= 32;
                if ((v95 + 1) <= 2)
                {
                  goto LABEL_226;
                }
              }
            }

            v24 = v94;
            if (!*v32)
            {
              goto LABEL_224;
            }

            goto LABEL_230;
          }

          v90 = &xmmword_1ED452F28;
        }

        (*v90)(j);
        goto LABEL_207;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = 1;
    goto LABEL_58;
  }

  v13 = *(v6 + 40);
  if (v13 >= *(v6 + 164) + 2)
  {
    v19 = sub_1818A8BAC(v6, "too many attached databases - max %d");
LABEL_48:
    v23 = v19;
    v24 = 0;
    v108 = v19;
    goto LABEL_243;
  }

  v14 = *(v6 + 32);
  if (v13 < 1)
  {
    goto LABEL_49;
  }

  for (m = 0; m != v13; ++m)
  {
    for (n = 0; *(v14[4 * m] + n) == v12[n]; ++n)
    {
      if (!*(v14[4 * m] + n))
      {
LABEL_42:
        v19 = sub_1818A8BAC(v6, "database %s is already in use");
        goto LABEL_48;
      }

LABEL_30:
      ;
    }

    if (byte_181A20298[*(v14[4 * m] + n)] == byte_181A20298[v12[n]])
    {
      goto LABEL_30;
    }

    if (!m)
    {
      v17 = "main";
      for (ii = v12; ; ++ii)
      {
        if (*v17 == *ii)
        {
          if (!*v17)
          {
            goto LABEL_42;
          }
        }

        else if (byte_181A20298[*v17] != byte_181A20298[*ii])
        {
          break;
        }

        ++v17;
      }
    }
  }

LABEL_49:
  if (v14 == (v6 + 696))
  {
    v33 = sub_181929E8C(v6, 0x60uLL, 0x1030040D67ECA3BLL);
    if (v33)
    {
      v14 = v33;
      v34 = *(v6 + 32);
      v35 = *v34;
      v36 = v34[1];
      v37 = v34[3];
      v33[2] = v34[2];
      v33[3] = v37;
      *v33 = v35;
      v33[1] = v36;
      goto LABEL_76;
    }

    return;
  }

  v25 = 32 * v13 + 32;
  if (!v14)
  {
    v38 = sub_181929E8C(v6, v25, 0x1030040D67ECA3BLL);
    goto LABEL_75;
  }

  if (*(v6 + 512) <= v14)
  {
    goto LABEL_74;
  }

  if (*(v6 + 496) <= v14)
  {
    if (v25 < 0x81)
    {
      goto LABEL_76;
    }

    goto LABEL_74;
  }

  if (*(v6 + 504) > v14 || v25 > *(v6 + 438))
  {
LABEL_74:
    v38 = sub_181929F38(v6, v14, v25, 0x1030040D67ECA3BLL);
LABEL_75:
    v14 = v38;
    if (v38)
    {
      goto LABEL_76;
    }

    return;
  }

LABEL_76:
  *(v6 + 32) = v14;
  v30 = &v14[4 * *(v6 + 40)];
  *v30 = 0u;
  *(v30 + 16) = 0u;
  v109 = *(v6 + 76);
  v39 = sub_18198A7CC(*(*v6 + 24), v9, &v109, v107, &__s, &v110);
  if (!v39)
  {
    v43 = *(v6 + 48);
    if ((v43 & 0x2000000000) != 0)
    {
      if ((v43 & 0x1000000000) != 0)
      {
        v44 = v109;
      }

      else
      {
        v44 = v109 & 0xFFFFFFFB;
      }
    }

    else
    {
      v44 = v109 & 0xFFFFFFF8 | 1;
    }

    v109 = v44 | 0x100;
    v24 = sub_18189049C(*v107, __s, v6, (v30 + 8), 0, v44 | 0x100);
    ++*(v6 + 40);
    v45 = strlen(v12);
    v46 = sub_181929E8C(v6, v45 + 1, 354097263);
    v47 = v46;
    if (v46)
    {
      memcpy(v46, v12, v45 + 1);
    }

    *v30 = v47;
    *(v6 + 111) = 0;
    v32 = (v6 + 111);
    if (v24 == 19)
    {
      v108 = sub_1818A8BAC(v6, "database is already attached");
      v24 = 1;
    }

    else if (!v24)
    {
      v27 = *(v30 + 8);
      goto LABEL_101;
    }

    *(v30 + 16) = 3;
    goto LABEL_193;
  }

  if (v39 == 7 && !*(v6 + 103) && !*(v6 + 104))
  {
    *(v6 + 103) = 1;
    if (*(v6 + 220) >= 1)
    {
      *(v6 + 424) = 1;
    }

    ++*(v6 + 432);
    *(v6 + 436) = 0;
    v78 = *(v6 + 344);
    if (v78)
    {
      sub_181910730(v78, "out of memory");
      for (jj = *(v6 + 344); ; ++*(jj + 52))
      {
        *(jj + 24) = 7;
        jj = *(jj + 216);
        if (!jj)
        {
          break;
        }
      }
    }
  }

  v40 = v110;
  if (a1)
  {
    a1[9] = 1;
    sub_1818900D0(*a1, v40, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v40)
  {
    v41 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_88;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v40);
    --qword_1ED456A90;
    off_1ED452EB0(v40);
    v40 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v41 = &xmmword_1ED452F28;
LABEL_88:
      v42 = *v41;

      v42(v40);
    }
  }
}

void sub_18198A198(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memset(v66, 0, 56);
  v13 = *a1;
  if (*(*a1 + 197))
  {
    goto LABEL_2;
  }

  v15 = *(v13 + 44);
  v16 = *(*(v13 + 32) + 24);
  *(v13 + 100) = *(v16 + 113);
  if ((*(v16 + 114) & 1) == 0)
  {
    v17 = a4;
    v18 = sub_18189F330(v13, 0, (a1 + 8), 0);
    a4 = v17;
    if (v18)
    {
LABEL_15:
      *(a1 + 24) = v18;
      ++*(a1 + 52);
      goto LABEL_66;
    }
  }

  v65 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a3;
  v23 = a2;
  v24 = *(v13 + 40);
  if (v24 >= 2)
  {
    v25 = 32 * v24 - 8;
    while (1)
    {
      if ((*(*(*(v13 + 32) + v25) + 114) & 1) == 0)
      {
        v18 = sub_18189F330(v13, (v24 - 1), (a1 + 8), 0);
        if (v18)
        {
          break;
        }
      }

      --v24;
      v25 -= 32;
      if ((v24 + 1) <= 2)
      {
        goto LABEL_16;
      }
    }

    a7 = v21;
    a6 = v20;
    a5 = v19;
    goto LABEL_15;
  }

LABEL_16:
  a2 = v23;
  if ((v15 & 1) == 0)
  {
    *(v13 + 44) &= ~1u;
  }

  a3 = v22;
  a4 = v65;
  a7 = v21;
  a6 = v20;
  a5 = v19;
  if (*(v13 + 111))
  {
    *(v13 + 44) |= 0x10u;
  }

LABEL_2:
  if (*(a1 + 52))
  {
    goto LABEL_66;
  }

  memset(v66 + 8, 0, 48);
  *&v66[0] = a1;
  if (!a5)
  {
    v14 = 0;
    if (!a6)
    {
      goto LABEL_23;
    }

LABEL_21:
    if (*a6 == 60)
    {
      *a6 = 118;
    }

    else
    {
      DWORD2(v66[2]) = v14 & 0xF7FF6FEF;
      v28 = *&v66[0];
      v67 = *&v66[0];
      v68 = sub_1818B1AF8;
      if ((v14 & 0x80000) != 0)
      {
        v29 = 0;
      }

      else
      {
        v29 = sub_1818B15A0;
      }

      v69 = v29;
      v70 = 0;
      v71 = 0;
      v72 = v66;
      v30 = *(*&v66[0] + 308) + *(a6 + 40);
      *(*&v66[0] + 308) = v30;
      v31 = *(*v28 + 148);
      if (v31 < v30)
      {
        goto LABEL_42;
      }

      v32 = a4;
      v33 = a6;
      v34 = a7;
      v35 = v14 & 0x8009010;
      sub_181959BA0(&v67, v33);
      v36 = v67;
      *(v67 + 308) -= *(v33 + 40);
      v38 = DWORD1(v66[2]);
      v37 = DWORD2(v66[2]);
      *(v33 + 4) |= WORD4(v66[2]) & 0x8010;
      v14 = v37 | v35;
      a7 = v34;
      a6 = v33;
      DWORD2(v66[2]) = v14;
      if (v38 >= 1 || *(v36 + 52) > 0)
      {
        goto LABEL_66;
      }

      a4 = v32;
    }

LABEL_23:
    if (a7)
    {
      if (*a7 == 60)
      {
        *a7 = 118;
        goto LABEL_26;
      }

      DWORD2(v66[2]) = v14 & 0xF7FF6FEF;
      v28 = *&v66[0];
      v67 = *&v66[0];
      v68 = sub_1818B1AF8;
      if ((v14 & 0x80000) != 0)
      {
        v39 = 0;
      }

      else
      {
        v39 = sub_1818B15A0;
      }

      v69 = v39;
      v70 = 0;
      v71 = 0;
      v72 = v66;
      v40 = *(*&v66[0] + 308) + *(a7 + 40);
      *(*&v66[0] + 308) = v40;
      v31 = *(*v28 + 148);
      if (v31 < v40)
      {
LABEL_42:
        sub_181910730(v28, "Expression tree is too large (maximum depth %d)", v31);
        goto LABEL_66;
      }

      v55 = a4;
      v56 = a7;
      v57 = v14 & 0x8009010;
      sub_181959BA0(&v67, v56);
      v58 = v67;
      *(v67 + 308) -= *(v56 + 40);
      v60 = DWORD1(v66[2]);
      v59 = DWORD2(v66[2]);
      *(v56 + 4) |= WORD4(v66[2]) & 0x8010;
      v61 = v59 | v57;
      a7 = v56;
      DWORD2(v66[2]) = v61;
      if (v60 >= 1)
      {
        goto LABEL_66;
      }

      a4 = v55;
      if (*(v58 + 52) > 0)
      {
        goto LABEL_66;
      }
    }

LABEL_26:
    if (!a4 || (*a4 != 118 ? (v26 = 0) : (v26 = *(a4 + 8)), (v44 = *a1, (v45 = *(*a1 + 528)) == 0) || *(v44 + 197) || *(a1 + 302)))
    {
LABEL_51:
      v46 = sub_1818E7DFC(a1);
      v47 = *(a1 + 44);
      v48 = __OFSUB__(v47, 4);
      v49 = v47 - 4;
      if (v49 < 0 != v48)
      {
        v50 = *(a1 + 60);
        v51 = (v50 + 1);
        *(a1 + 60) = v50 + 4;
      }

      else
      {
        v51 = *(a1 + 48);
        *(a1 + 44) = v49;
        *(a1 + 48) = v51 + 4;
      }

      sub_181956EF4(a1, a5, v51);
      sub_181956EF4(a1, a6, (v51 + 1));
      sub_181956EF4(a1, a7, (v51 + 2));
      if (v46)
      {
        sub_181958B0C(a1, 0, v51 + 3 - *a3, v51 + 3, *a3, a3, 0);
        v52 = a2 == 24;
        v53 = *(v46 + 144);
        if (*(v46 + 148) <= v53)
        {
          sub_18194C8AC(v46, 166, v52, 0, 0);
        }

        else
        {
          *(v46 + 144) = v53 + 1;
          v54 = *(v46 + 136) + 40 * v53;
          *v54 = 166;
          *(v54 + 4) = v52;
          *(v54 + 8) = 0u;
          *(v54 + 24) = 0u;
        }
      }

LABEL_66:
      if (!a5)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    v62 = v45(*(v44 + 536), a2, v26, 0, 0, *(a1 + 368));
    if (v62 == 1)
    {
      v63 = a7;
      v64 = 23;
      sub_181910730(a1, "not authorized");
    }

    else
    {
      if ((v62 & 0xFFFFFFFD) == 0)
      {
        if (v62)
        {
          goto LABEL_66;
        }

        goto LABEL_51;
      }

      v63 = a7;
      v64 = 1;
      sub_181910730(a1, "authorizer malfunction");
    }

    *(a1 + 24) = v64;
    a7 = v63;
    goto LABEL_66;
  }

  if (*a5 == 60)
  {
    v14 = 0;
    *a5 = 118;
    if (!a6)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  DWORD2(v66[2]) = 0;
  v67 = a1;
  v68 = sub_1818B1AF8;
  v69 = sub_1818B15A0;
  v70 = 0;
  v71 = 0;
  v72 = v66;
  v27 = *(a1 + 308) + *(a5 + 40);
  *(a1 + 308) = v27;
  if (*(*a1 + 148) >= v27)
  {
    v41 = a4;
    sub_181959BA0(&v67, a5);
    v42 = v67;
    *(v67 + 308) -= *(a5 + 40);
    v43 = DWORD1(v66[2]);
    v14 = DWORD2(v66[2]);
    *(a5 + 4) |= WORD4(v66[2]) & 0x8010;
    if (v43 <= 0 && *(v42 + 52) <= 0)
    {
      a4 = v41;
      if (!a6)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else
  {
    sub_181910730(a1, "Expression tree is too large (maximum depth %d)", *(*a1 + 148));
  }

LABEL_67:
  sub_1819439E0(v13, a5);
LABEL_68:
  if (a6)
  {
    sub_1819439E0(v13, a6);
  }

  if (a7)
  {
    sub_1819439E0(v13, a7);
  }
}

uint64_t sub_18198A7CC(const char *a1, char *__s, unsigned int *a3, uint64_t *a4, const char **a5, char **a6)
{
  v12 = *a3;
  if (!__s)
  {
    LODWORD(v15) = 0;
    goto LABEL_14;
  }

  v13 = strlen(__s);
  LODWORD(v15) = v13 & 0x3FFFFFFF;
  if ((v12 & 0x40) != 0)
  {
    if (v15 < 5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (byte_1ED452E86)
    {
      v16 = v15 > 4;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
LABEL_14:
      if (!sqlite3_initialize())
      {
        v19 = sub_181902484((v15 + 8), 4117238463);
        if (v19)
        {
          *v19 = 0;
          v20 = (v19 + 1);
          if (v15)
          {
            v15 = v15;
            memcpy(v19 + 1, __s, v15);
          }

          else
          {
            v15 = 0;
          }

          *&v20[v15] = 0;
          v24 = v12 & 0xFFFFFFBF;
          goto LABEL_23;
        }
      }

      return 7;
    }
  }

  if (*__s != 1701603686 || __s[4] != 58)
  {
    goto LABEL_14;
  }

  v21 = (v15 + 8);
  v22 = v13 & 0x3FFFFFFF;
  if (v22 < 4)
  {
    v23 = 0;
    goto LABEL_64;
  }

  if (v22 >= 0x10)
  {
    v34 = 0uLL;
    v35 = (v15 + 8);
    v36.i64[0] = 0x2626262626262626;
    v36.i64[1] = 0x2626262626262626;
    v37 = vdupq_n_s64(1uLL);
    v23 = v22 - (v13 & 0xF);
    v38 = v23;
    v39 = __s;
    v40 = 0uLL;
    v14 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
    do
    {
      v45 = *v39;
      v39 += 16;
      v46 = vceqq_s8(v45, v36);
      v47 = vmovl_u8(*v46.i8);
      v48 = vmovl_u16(*v47.i8);
      v49.i64[0] = v48.u32[0];
      v49.i64[1] = v48.u32[1];
      v50 = vandq_s8(v49, v37);
      v49.i64[0] = v48.u32[2];
      v49.i64[1] = v48.u32[3];
      v51 = vandq_s8(v49, v37);
      v52 = vmovl_high_u16(v47);
      v49.i64[0] = v52.u32[0];
      v49.i64[1] = v52.u32[1];
      v53 = vandq_s8(v49, v37);
      v54 = vmovl_high_u8(v46);
      v55 = vmovl_u16(*v54.i8);
      v49.i64[0] = v55.u32[0];
      v49.i64[1] = v55.u32[1];
      v56 = vandq_s8(v49, v37);
      v49.i64[0] = v52.u32[2];
      v49.i64[1] = v52.u32[3];
      v57 = vandq_s8(v49, v37);
      v49.i64[0] = v55.u32[2];
      v49.i64[1] = v55.u32[3];
      v58 = vandq_s8(v49, v37);
      v59 = vmovl_high_u16(v54);
      v49.i64[0] = v59.u32[0];
      v49.i64[1] = v59.u32[1];
      v60 = vandq_s8(v49, v37);
      v49.i64[0] = v59.u32[2];
      v49.i64[1] = v59.u32[3];
      v44 = vaddq_s64(v44, vandq_s8(v49, v37));
      v43 = vaddq_s64(v43, v60);
      v42 = vaddq_s64(v42, v58);
      v14 = vaddq_s64(v14, v57);
      v41 = vaddq_s64(v41, v56);
      v40 = vaddq_s64(v40, v53);
      v34 = vaddq_s64(v34, v51);
      v35 = vaddq_s64(v35, v50);
      v38 -= 16;
    }

    while (v38);
    v21 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v35, v41), vaddq_s64(v40, v43)), vaddq_s64(vaddq_s64(v34, v42), vaddq_s64(v14, v44))));
    if ((v13 & 0xF) == 0)
    {
      goto LABEL_68;
    }

    if ((v13 & 0xFu) < 4uLL)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v23 = 0;
  }

  v61 = &__s[v23];
  v62 = v23 + (v13 & 3);
  v23 = v22 - (v13 & 3);
  v63 = v21;
  v64 = 0uLL;
  v65 = v62 - v22;
  v66 = vdupq_n_s64(1uLL);
  do
  {
    v67 = *v61;
    v61 += 4;
    v14.i32[0] = v67;
    v68 = vmovl_u16(vceq_s16(*&vmovl_u8(*v14.i8), 0x26002600260026));
    v69.i64[0] = v68.u32[0];
    v69.i64[1] = v68.u32[1];
    v70 = vandq_s8(v69, v66);
    v69.i64[0] = v68.u32[2];
    v69.i64[1] = v68.u32[3];
    v14 = vandq_s8(v69, v66);
    v64 = vaddq_s64(v64, v14);
    v63 = vaddq_s64(v63, v70);
    v65 += 4;
  }

  while (v65);
  v21 = vaddvq_s64(vaddq_s64(v63, v64));
  if ((v13 & 3) != 0)
  {
LABEL_64:
    v71 = &__s[v23];
    v72 = v22 - v23;
    do
    {
      v73 = *v71++;
      if (v73 == 38)
      {
        ++v21;
      }

      --v72;
    }

    while (v72);
  }

LABEL_68:
  if (sqlite3_initialize())
  {
    return 7;
  }

  v74 = sub_181902484(v21, 1860182944);
  if (!v74)
  {
    return 7;
  }

  v24 = v12 | 0x40;
  *v74 = 0;
  v20 = (v74 + 1);
  if (__s[5] == 47 && __s[6] == 47)
  {
    v75 = 0;
    v76 = __s + 7;
    v77 = __s[7];
    if (__s[7])
    {
      do
      {
        if (v77 == 47)
        {
          break;
        }

        v77 = v76[++v75];
      }

      while (v76[v75]);
    }

    v78 = v75 + 7;
    if (v75 == 9)
    {
      if (*(__s + 7) != 0x736F686C61636F6CLL || __s[15] != 116)
      {
        goto LABEL_161;
      }

      v78 = 16;
    }

    else if (v75)
    {
LABEL_161:
      v25 = sqlite3_mprintf("invalid uri authority: %.*s");
      goto LABEL_26;
    }
  }

  else
  {
    v78 = 5;
  }

  v79 = 0;
  v80 = 0;
LABEL_80:
  v81 = v80;
  v82 = &v20[v80];
  v83 = v78;
LABEL_81:
  while (1)
  {
    v84 = __s[v83];
    if (!__s[v83] || v84 == 35)
    {
      break;
    }

    v78 = v83 + 1;
    if (v84 == 37 && (v85 = __s[v78], (byte_181A204C8[v85] & 8) != 0) && (v86 = __s[v83 + 2], (byte_181A204C8[v86] & 8) != 0))
    {
      v83 += 3;
      v84 = ((((2 * v86) >> 7) & 0xF9) + v86) & 0xF | (16 * ((((2 * v85) >> 7) & 9) + v85));
      if (((((2 * v86) >> 7) & 0xF9) + v86) & 0xF | (16 * ((((2 * v85) >> 7) & 9) + v85)))
      {
        v78 = v83;
        goto LABEL_111;
      }

      v87 = &__s[v83];
      while (1)
      {
        v89 = *v87++;
        v88 = v89;
        if (!v89 || v88 == 35 || !v79 && v88 == 63)
        {
          break;
        }

        if (v79 == 1)
        {
          if (v88 == 38 || v88 == 61)
          {
            goto LABEL_81;
          }
        }

        else if (v79 == 2 && v88 == 38)
        {
          goto LABEL_81;
        }

        ++v83;
      }
    }

    else
    {
      if (v79 != 1)
      {
        if (!v79 && v84 == 63 || v79 == 2 && v84 == 38)
        {
          LOBYTE(v84) = 0;
LABEL_117:
          v79 = 1;
        }

LABEL_111:
        ++v80;
        v20[v81] = v84;
        goto LABEL_80;
      }

      if (v84 != 61 && v84 != 38)
      {
        goto LABEL_117;
      }

      if (*(v82 - 1))
      {
        if (v84 == 38)
        {
          LOBYTE(v84) = 0;
          ++v80;
          *v82 = 0;
          v81 = v80;
          v79 = 1;
        }

        else
        {
          LOBYTE(v84) = 0;
          v79 = 2;
        }

        goto LABEL_111;
      }

      ++v83;
      for (i = &__s[v78]; ; ++i)
      {
        v79 = 1;
        if (!*i || *i == 35)
        {
          break;
        }

        if (*(i - 1) == 38)
        {
          v79 = 1;
          goto LABEL_81;
        }

        ++v83;
      }
    }
  }

  if (v79 == 1)
  {
    *v82 = 0;
    v81 = v80 + 1;
  }

  *&v20[v81] = 0;
  v91 = &v20[strlen(v20) & 0x3FFFFFFF];
  v93 = *(v91 + 1);
  v92 = (v91 + 1);
  if (!v93)
  {
LABEL_23:
    if (sqlite3_initialize())
    {
      *a4 = 0;
LABEL_25:
      v25 = sqlite3_mprintf("no such vfs: %s");
LABEL_26:
      v26 = 1;
      goto LABEL_27;
    }

    if (word_1ED452E84)
    {
      v30 = qword_1ED452F08(2);
      v31 = v30;
      if (v30)
      {
        xmmword_1ED452F18(v30);
        v32 = 0;
LABEL_48:
        v33 = qword_1ED456AE8;
        if (a1 && qword_1ED456AE8)
        {
          do
          {
            if (!strcmp(a1, *(v33 + 24)))
            {
              break;
            }

            v33 = *(v33 + 16);
          }

          while (v33);
        }

        if ((v32 & 1) == 0)
        {
          xmmword_1ED452F28(v31);
        }

        *a4 = v33;
        if (v33)
        {
          result = 0;
          goto LABEL_56;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = 1;
    goto LABEL_48;
  }

  v113 = a5;
  while (1)
  {
    v114 = v24;
    v94 = strlen(v92) & 0x3FFFFFFF;
    v95 = &v92[v94];
    v96 = v95 + 1;
    v97 = strlen(v95 + 1);
    if (v94 == 5)
    {
      break;
    }

    if (v94 == 4)
    {
      if (*v92 == 1701080941)
      {
        v111 = v114 & 0x87;
        v100 = -136;
        v101 = &off_1E6A27C28;
        v102 = "access";
        goto LABEL_147;
      }
    }

    else if (v94 == 3 && *v92 == 26230 && v92[2] == 115)
    {
      a1 = v95 + 1;
    }

LABEL_143:
    v24 = v114;
LABEL_144:
    v104 = &v96[v97 & 0x3FFFFFFF];
    v105 = v104[1];
    v92 = v104 + 1;
    if (!v105)
    {
      a5 = v113;
      goto LABEL_23;
    }
  }

  if (*v92 != 1751343459 || v92[4] != 101)
  {
    goto LABEL_143;
  }

  v111 = 393216;
  v100 = -393217;
  v101 = &off_1E6A27BF8;
  v102 = "cache";
LABEL_147:
  v112 = v102;
  v106 = *v101;
  if (!*v101)
  {
    goto LABEL_155;
  }

  v107 = (v101 + 2);
  while (((strlen(v106) ^ v97) & 0x3FFFFFFF) != 0 || memcmp(v96, v106, v97 & 0x3FFFFFFF))
  {
    v108 = *v107;
    v107 += 2;
    v106 = v108;
    if (!v108)
    {
      goto LABEL_155;
    }
  }

  v109 = *(v107 - 2);
  if (!v109)
  {
LABEL_155:
    v25 = sqlite3_mprintf("no such %s mode: %s", v112, v96);
    v26 = 1;
    goto LABEL_156;
  }

  if ((v109 & 0xFFFFFF7F) <= v111)
  {
    v24 = v109 | v100 & v114;
    goto LABEL_144;
  }

  v25 = sqlite3_mprintf("%s mode not allowed: %s", v112, v96);
  v26 = 3;
LABEL_156:
  a5 = v113;
  v24 = v114;
LABEL_27:
  *a6 = v25;
    ;
  }

  v28 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    v29 = v26;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(j);
    --qword_1ED456A90;
    off_1ED452EB0(j);
    j = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v28 = &xmmword_1ED452F28;
      goto LABEL_42;
    }
  }

  else
  {
    v29 = v26;
LABEL_42:
    (*v28)(j);
  }

  v20 = 0;
  result = v29;
LABEL_56:
  *a3 = v24;
  *a5 = v20;
  return result;
}

uint64_t sub_18198B05C(uint64_t a1, _BYTE *a2, char *__s)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    return 0;
  }

  v6 = &__s[strlen(__s) & 0x3FFFFFFF];
  v8 = v6[1];
  v7 = v6 + 1;
  if (!v8)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v9 = strcmp(v7, "hexkey");
    v10 = strlen(v7);
    v11 = &v7[v10 & 0x3FFFFFFF];
    v12 = v11 + 1;
    if (!v9)
    {
      break;
    }

    v13 = &v12[strlen(v11 + 1) & 0x3FFFFFFF];
    v14 = v13[1];
    v7 = v13 + 1;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  if (!*v12)
  {
LABEL_12:
    v19 = &__s[strlen(__s) & 0x3FFFFFFF];
    v21 = v19[1];
    v20 = v19 + 1;
    if (v21)
    {
      while (1)
      {
        v22 = strcmp(v20, "key");
        v23 = &v20[(strlen(v20) & 0x3FFFFFFF) + 1];
        v24 = strlen(v23);
        if (!v22)
        {
          break;
        }

        v25 = &v23[v24 & 0x3FFFFFFF];
        v26 = *(v25 + 1);
        v20 = v25 + 1;
        if (!v26)
        {
          goto LABEL_15;
        }
      }

      v35 = v24 & 0x3FFFFFFF;
      v36 = a1;
      v37 = a2;
      v38 = v23;
      goto LABEL_22;
    }

LABEL_15:
    v27 = &__s[strlen(__s) & 0x3FFFFFFF];
    v29 = v27[1];
    v28 = v27 + 1;
    if (v29)
    {
      while (1)
      {
        v30 = strcmp(v28, "textkey");
        v31 = &v28[strlen(v28) & 0x3FFFFFFF];
        if (!v30)
        {
          break;
        }

        v32 = &v31[(strlen(v31 + 1) & 0x3FFFFFFF) + 1];
        v33 = *(v32 + 1);
        v28 = (v32 + 1);
        if (!v33)
        {
          return 0;
        }
      }

      v36 = a1;
      v37 = a2;
      v38 = (v31 + 1);
      v35 = 0xFFFFFFFFLL;
      goto LABEL_22;
    }

    return 0;
  }

  v15 = 0;
  v16 = 0;
  do
  {
    v17 = v7[(v10 & 0x3FFFFFFF) + 1 + v15];
    if ((byte_181A204C8[v17] & 8) == 0)
    {
      break;
    }

    v18 = ((((2 * v17) >> 7) & 0xF9) + v17) & 0xF | (16 * v16);
    if (v15)
    {
      v39[v15 >> 1] = v18;
    }

    ++v15;
    v16 = v18;
  }

  while (v15 != 80);
  v35 = v15 >> 1;
  v38 = v39;
  v36 = a1;
  v37 = a2;
LABEL_22:
  sqlite3_key_v2(v36, v37, v38, v35);
  return 1;
}

uint64_t sub_18198B2B4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = *(v5 + 20);
    if ((~v6 & 0x202) == 0 && *(v5 + 22) == 1)
    {
      v5 = *(v5 + 8);
      if (!a1)
      {
        goto LABEL_11;
      }

LABEL_9:
      v7 = *(*a1 + 24);
      goto LABEL_12;
    }

    if (v6)
    {
      v5 = 0;
      if (a1)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    v5 = sub_18193CB70(v5, 1, a3, a4);
  }

  if (a1)
  {
    goto LABEL_9;
  }

LABEL_11:
  v7 = 0;
LABEL_12:
  v8 = &byte_181A2878D;
  if (v5)
  {
    v8 = v5;
  }

  v9 = *(v7 + 40);
  if (v9 < 1)
  {
LABEL_33:
    result = sqlite3_snprintf(128, __s, "no such database: %s", a4);
    goto LABEL_38;
  }

  v10 = 0;
  v11 = *(v7 + 32);
  v12 = "cannot detach database %s";
  while (1)
  {
    v13 = v11 + 32 * v10;
    v14 = *(v13 + 8);
    if (v14)
    {
      break;
    }

LABEL_17:
    if (++v10 == v9)
    {
      goto LABEL_33;
    }
  }

  v15 = *v13;
  for (i = v8; *v15 != *i; ++i)
  {
    if (byte_181A20298[*v15] != byte_181A20298[*i])
    {
      if (!v10)
      {
        v17 = "main";
        for (j = v8; ; ++j)
        {
          if (*v17 == *j)
          {
            if (!*v17)
            {
              goto LABEL_37;
            }
          }

          else if (byte_181A20298[*v17] != byte_181A20298[*j])
          {
            goto LABEL_17;
          }

          ++v17;
        }
      }

      goto LABEL_17;
    }

LABEL_21:
    ++v15;
  }

  if (*v15)
  {
    goto LABEL_21;
  }

  if (v10 < 2)
  {
    result = sqlite3_snprintf(128, __s, "cannot detach database %s", a4);
    goto LABEL_38;
  }

  if (!*(v14 + 16) && !*(v14 + 24))
  {
    v20 = *(*(v11 + 56) + 64);
    if (v20)
    {
      v21 = *(v13 + 24);
      do
      {
        v22 = v20[2];
        if (*(v22 + 48) == v21)
        {
          *(v22 + 48) = *(v22 + 40);
        }

        v20 = *v20;
      }

      while (v20);
    }

    result = sub_1818E3028(v14);
    *(v13 + 8) = 0;
    *(v13 + 24) = 0;
    if (*(v7 + 40) < 3)
    {
      *(v7 + 40) = 2;
    }

    else
    {
      v23 = 0;
      v24 = 2;
      v25 = 2;
      do
      {
        v26 = *(v7 + 32);
        v27 = v26 + v23;
        if (*(v26 + v23 + 72))
        {
          if (v24 > v25)
          {
            v28 = *(v27 + 80);
            v29 = (v26 + 32 * v25);
            *v29 = *(v27 + 64);
            v29[1] = v28;
          }

          ++v25;
        }

        else
        {
          v30 = *(v27 + 64);
          if (v30)
          {
            result = sub_181929C84(v7, v30);
          }

          *(v27 + 64) = 0;
        }

        ++v24;
        v23 += 32;
      }

      while (v24 < *(v7 + 40));
      *(v7 + 40) = v25;
      if (v25 > 2)
      {
        return result;
      }
    }

    v31 = *(v7 + 32);
    v32 = (v7 + 696);
    if (v31 != (v7 + 696))
    {
      v33 = *v31;
      v34 = v31[1];
      v35 = v31[3];
      *(v7 + 728) = v31[2];
      *(v7 + 744) = v35;
      *v32 = v33;
      *(v7 + 712) = v34;
      if (v31)
      {
        result = sub_181929C84(v7, v31);
      }

      *(v7 + 32) = v32;
    }

    return result;
  }

  v12 = "database %s is locked";
LABEL_37:
  result = sqlite3_snprintf(128, __s, v12, a4, v8);
LABEL_38:
  if (a1)
  {
    *(a1 + 9) = 1;
    return sub_1818900D0(*a1, __s, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_18198B5C8(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(*(*a1 + 32) + 32 * a2 + 24);
  if (a1[19])
  {
    v5 = a1[19];
  }

  else
  {
    v5 = a1;
  }

  v6 = *(v5 + 29);
  v7 = 1 << a2;
  if ((v6 & (1 << a2)) == 0)
  {
    *(v5 + 29) = v6 | v7;
    if (a2 == 1)
    {
      sub_1819108F4(v5);
    }
  }

  *(v5 + 28) |= v7;
  v8 = *(a1 + 14);
  *(a1 + 14) = v8 + 3;
  sub_18198B8A8(a1, v2, v8, 0, 0);
  v9 = *(v4 + 16);
  if (v9)
  {
    v10 = *(a1 + 14);
    v11 = *(a1 + 15);
    do
    {
      sub_18198BB38(a1, v9[2], 0, v8, (v11 + 1), v10);
      v9 = *v9;
    }

    while (v9);
  }

  result = sub_1818E7DFC(a1);
  if (result)
  {
    v13 = *(result + 144);
    if (*(result + 148) <= v13)
    {

      return sub_18194C8AC(result, 150, v2, 0, 0);
    }

    else
    {
      *(result + 144) = v13 + 1;
      v14 = *(result + 136) + 40 * v13;
      *v14 = 150;
      *(v14 + 4) = v2;
      *(v14 + 8) = 0u;
      *(v14 + 24) = 0u;
    }
  }

  return result;
}

uint64_t sub_18198B720(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2[12];
  if (v4)
  {
    v5 = (*(*a1 + 32) + 24);
    v6 = -1;
    do
    {
      v7 = *v5;
      v5 += 4;
      ++v6;
    }

    while (v7 != v4);
  }

  else
  {
    v6 = -32768;
  }

  if (*(a1 + 152))
  {
    v8 = *(a1 + 152);
  }

  else
  {
    v8 = a1;
  }

  v9 = *(v8 + 116);
  v10 = 1 << v6;
  if ((v9 & (1 << v6)) == 0)
  {
    *(v8 + 116) = v9 | v10;
    if (v6 == 1)
    {
      v11 = a1;
      v12 = a2;
      sub_1819108F4(v8);
      a2 = v12;
      a1 = v11;
    }
  }

  *(v8 + 112) |= v10;
  v13 = *(a1 + 56);
  *(a1 + 56) = v13 + 3;
  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = a2;
  }

  if (a3)
  {
    v15 = "idx";
  }

  else
  {
    v15 = "tbl";
  }

  v16 = a1;
  v17 = a2;
  sub_18198B8A8(a1, v6, v13, *v14, v15);
  sub_18198BB38(v16, v17, a3, v13, (*(v16 + 60) + 1), *(v16 + 56));
  result = sub_1818E7DFC(v16);
  if (result)
  {
    v19 = *(result + 144);
    if (*(result + 148) <= v19)
    {

      return sub_18194C8AC(result, 150, v6, 0, 0);
    }

    else
    {
      *(result + 144) = v19 + 1;
      v20 = *(result + 136) + 40 * v19;
      *v20 = 150;
      *(v20 + 4) = v6;
      *(v20 + 8) = 0u;
      *(v20 + 24) = 0u;
    }
  }

  return result;
}

void sub_18198B8A8(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = sub_1818E7DFC(a1);
  if (v10)
  {
    v11 = 0;
    v12 = off_1E6A27C80;
    v25 = v10;
    v13 = (*(v9 + 32) + 32 * a2);
    do
    {
      v14 = *(v12 - 1);
      v27[v11] = 0;
      v15 = sub_181917F20(v9, v14, *v13);
      if (v15)
      {
        v16 = *(v15 + 40);
        v28[v11] = v16;
        if (a2 != 1 && *(*(*(*a1 + 32) + 32 * a2 + 8) + 17))
        {
          sub_1819570CC(a1, a2, v16, 1, v14);
        }

        if (a4)
        {
          sub_1818F73B0(a1, "DELETE FROM %Q.%s WHERE %s=%Q", *v13, v14, a5, a4);
        }

        else if (*(v9 + 360))
        {
          sub_1818F73B0(a1, "DELETE FROM %Q.%s", *v13, v14, v23, v24);
        }

        else
        {
          v17 = *(v25 + 144);
          if (*(v25 + 148) <= v17)
          {
            sub_18194C8AC(v25, 145, v16, a2, 0);
          }

          else
          {
            *(v25 + 144) = v17 + 1;
            v18 = *(v25 + 136) + 40 * v17;
            *v18 = 145;
            *(v18 + 4) = v16;
            *(v18 + 8) = a2;
            *(v18 + 12) = 0;
            *(v18 + 28) = 0;
            *(v18 + 20) = 0;
            *(v18 + 36) = 0;
          }
        }
      }

      else if (!v11)
      {
        sub_1818F73B0(a1, "CREATE TABLE %Q.%s(%s)", *v13, v14, *v12);
        v28[0] = *(a1 + 256);
        v27[0] = 16;
      }

      ++v11;
      v12 += 2;
    }

    while (v11 != 3);
    v19 = v28[0];
    v20 = *(v25 + 144);
    if (*(v25 + 148) <= v20)
    {
      sub_18194CAFC(v25, 113, a3, v28[0], a2, 3);
    }

    else
    {
      *(v25 + 144) = v20 + 1;
      v21 = *(v25 + 136) + 40 * v20;
      *v21 = 64881;
      *(v21 + 4) = a3;
      *(v21 + 8) = v19;
      *(v21 + 12) = a2;
      *(v21 + 16) = 3;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
    }

    v22 = *(v25 + 144);
    if (v22 >= 1)
    {
      *(*(v25 + 136) + 40 * v22 - 38) = v27[0];
    }
  }
}

void sub_18198BB38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v11 = a1;
  v147 = a5 + 9;
  if (*(a1 + 60) < a5 + 9)
  {
    *(a1 + 60) = v147;
  }

  v12 = *a1;
  v13 = sub_1818E7DFC(a1);
  if (!a2)
  {
    return;
  }

  v14 = v13;
  if (!v13 || *(a2 + 63) || *a2 && !sub_1818EDFDC("sqlite\\_%", *a2, byte_181A204C4, 92))
  {
    return;
  }

  v15 = a2[12];
  v16 = *(v12 + 32);
  if (v15)
  {
    v17 = (v16 + 24);
    LODWORD(v18) = -1;
    do
    {
      v19 = *v17;
      v17 += 4;
      v18 = (v18 + 1);
    }

    while (v19 != v15);
  }

  else
  {
    v18 = 4294934528;
  }

  v20 = *v11;
  v21 = *(*v11 + 528);
  if (v21 && !*(v20 + 197) && !*(v11 + 302))
  {
    v127 = v21(*(v20 + 536), 28, *a2, 0, *(v16 + 32 * v18), v11[46]);
    if (v127 == 1)
    {
      v128 = 23;
      sub_181910730(v11, "not authorized");
    }

    else
    {
      if ((v127 & 0xFFFFFFFD) == 0)
      {
        if (v127)
        {
          return;
        }

        goto LABEL_17;
      }

      v128 = 1;
      sub_181910730(v11, "authorizer malfunction");
    }

    *(v11 + 6) = v128;
    return;
  }

LABEL_17:
  v142 = v18;
  if (*(v12 + 360))
  {
    __s = sub_181929E8C(v12, 0x85uLL, 0x10B2040A26A9E65);
    if (!__s)
    {
      return;
    }

    *(__s + 125) = 0;
    *(__s + 6) = 0u;
    *(__s + 7) = 0u;
    *(__s + 4) = 0u;
    *(__s + 5) = 0u;
    *(__s + 2) = 0u;
    *(__s + 3) = 0u;
    *__s = 0u;
    *(__s + 1) = 0u;
    strcpy(__s + 120, "sqlite_stat1");
    *__s = __s + 120;
    *(__s + 13) = 0x3FFFF;
    v22 = v11[2];
    v23 = sub_1818A2964(v22, 187, 0, 0, 0);
    v24 = v22;
    v18 = v142;
    sub_1818B49F8(v24, v23, __s, 4294967290);
  }

  else
  {
    __s = 0;
  }

  v25 = (v7 + 6);
  if (v18 != 1 && *(*(*(*v11 + 32) + 32 * v18 + 8) + 17))
  {
    sub_1819570CC(v11, v18, *(a2 + 10), 0, *a2);
  }

  v26 = a6 + 2;
  if (*(v11 + 14) > a6 + 2)
  {
    v26 = *(v11 + 14);
  }

  *(v11 + 14) = v26;
  sub_1818B69D8(v11, a6, v18, a2, 102);
  v27 = *a2;
  v28 = *(v14 + 144);
  if (*(v14 + 148) <= v28)
  {
    v28 = sub_18194C8AC(v14, 118, 0, v7 + 6, 0);
  }

  else
  {
    *(v14 + 144) = v28 + 1;
    v29 = *(v14 + 136) + 40 * v28;
    *v29 = 118;
    *(v29 + 8) = v25;
    *(v29 + 12) = 0;
    *(v29 + 28) = 0;
    *(v29 + 20) = 0;
    *(v29 + 36) = 0;
  }

  v152 = v7 + 4;
  v141 = v7 + 7;
  if (!*(*v14 + 103))
  {
    if (v28 < 0)
    {
      v28 = *(v14 + 144) - 1;
    }

    sub_18194CB90(v14, *(v14 + 136) + 40 * v28, v27, 0);
  }

  v30 = a2[2];
  v129 = 1;
  if (v30)
  {
    v149 = v7 + 2;
    v139 = v7 + 5;
    v140 = v7 + 3;
    v151 = a6 + 1;
    v31 = 1;
    v138 = a4;
    v143 = a3;
    v145 = a2;
    v130 = v7 + 6;
    v131 = v7;
    v137 = v12;
    while (1)
    {
      if (a3 && v30 != a3)
      {
        goto LABEL_37;
      }

      if (!*(v30 + 72))
      {
        v31 = 0;
      }

      v146 = v31;
      v32 = *(v30 + 99);
      if ((a2[6] & 0x80) != 0 && (v32 & 3) == 2)
      {
        v33 = *(v30 + 94);
        v34 = *a2;
        v35 = v33;
      }

      else
      {
        v33 = *(v30 + 96);
        v34 = *v30;
        if ((v32 & 8) != 0)
        {
          v35 = *(v30 + 94);
        }

        else
        {
          v35 = *(v30 + 96);
        }
      }

      v36 = *(v14 + 144);
      v150 = v30;
      if (*(v14 + 148) <= v36)
      {
        v36 = sub_18194C8AC(v14, 118, 0, v141, 0);
        v30 = v150;
      }

      else
      {
        *(v14 + 144) = v36 + 1;
        v37 = *(v14 + 136) + 40 * v36;
        *v37 = 118;
        *(v37 + 8) = v141;
        *(v37 + 12) = 0;
        *(v37 + 28) = 0;
        *(v37 + 20) = 0;
        *(v37 + 36) = 0;
      }

      if (!*(*v14 + 103))
      {
        if (v36 < 0)
        {
          v36 = *(v14 + 144) - 1;
        }

        sub_18194CB90(v14, *(v14 + 136) + 40 * v36, v34, 0);
        v30 = v150;
      }

      v148 = v35 - 1;
      if (*(v11 + 15) < v148 + v147)
      {
        *(v11 + 15) = v148 + v147;
      }

      v38 = *(v30 + 88);
      v39 = *(v14 + 144);
      if (*(v14 + 148) <= v39)
      {
        sub_18194C8AC(v14, 102, v151, v38, v142);
        v30 = v150;
      }

      else
      {
        *(v14 + 144) = v39 + 1;
        v40 = *(v14 + 136) + 40 * v39;
        *v40 = 102;
        *(v40 + 4) = v151;
        *(v40 + 8) = v38;
        *(v40 + 12) = v142;
        *(v40 + 24) = 0;
        *(v40 + 32) = 0;
        *(v40 + 16) = 0;
      }

      v41 = v11[2];
      v42 = sub_1819572CC(v11, v30);
      if (v42)
      {
        if (*(*v41 + 103))
        {
          if (!*(*v41 + 824) && (*v42)-- == 1)
          {
            sub_181939EC8(v42[2], v42);
          }
        }

        else
        {
          v44 = *(v41 + 136) + 40 * *(v41 + 144);
          *(v44 - 39) = -8;
          *(v44 - 24) = v42;
        }
      }

      v45 = *(v12 + 768);
      v46 = *(v14 + 144);
      if (*(v14 + 148) <= v46)
      {
        sub_18194C8AC(v14, 71, v45, v139, 0);
      }

      else
      {
        *(v14 + 144) = v46 + 1;
        v47 = *(v14 + 136) + 40 * v46;
        *v47 = 71;
        *(v47 + 4) = v45;
        *(v47 + 8) = v139;
        *(v47 + 12) = 0;
        *(v47 + 28) = 0;
        *(v47 + 20) = 0;
        *(v47 + 36) = 0;
      }

      a2 = v145;
      v48 = *(v14 + 144);
      if (*(v14 + 148) <= v48)
      {
        sub_18194C8AC(v14, 71, v33, v149, 0);
      }

      else
      {
        *(v14 + 144) = v48 + 1;
        v49 = *(v14 + 136) + 40 * v48;
        *v49 = 71;
        *(v49 + 4) = v33;
        *(v49 + 8) = v149;
        *(v49 + 12) = 0;
        *(v49 + 28) = 0;
        *(v49 + 20) = 0;
        *(v49 + 36) = 0;
      }

      v50 = *(v150 + 94);
      v51 = *(v14 + 144);
      if (*(v14 + 148) <= v51)
      {
        sub_18194C8AC(v14, 71, v50, v140, 0);
      }

      else
      {
        *(v14 + 144) = v51 + 1;
        v52 = *(v14 + 136) + 40 * v51;
        *v52 = 71;
        *(v52 + 4) = v50;
        *(v52 + 8) = v140;
        *(v52 + 12) = 0;
        *(v52 + 28) = 0;
        *(v52 + 20) = 0;
        *(v52 + 36) = 0;
      }

      v53 = (*(v12 + 96) >> 11) & 1;
      v54 = *(v14 + 144);
      if (*(v14 + 148) <= v54)
      {
        sub_18194C8AC(v14, 98, v151, v152, v53);
      }

      else
      {
        *(v14 + 144) = v54 + 1;
        v55 = *(v14 + 136) + 40 * v54;
        *v55 = 98;
        *(v55 + 4) = v151;
        *(v55 + 8) = v152;
        *(v55 + 12) = v53;
        *(v55 + 24) = 0;
        *(v55 + 32) = 0;
        *(v55 + 16) = 0;
      }

      sub_181958B0C(v11, 0, v149, v7 + 1, 4, &unk_1EEF90180, 0);
      v56 = *(v14 + 144);
      if (*(v14 + 148) <= v56)
      {
        v56 = sub_18194C8AC(v14, 36, v151, 0, 0);
      }

      else
      {
        *(v14 + 144) = v56 + 1;
        v57 = *(v14 + 136) + 40 * v56;
        *v57 = 36;
        *(v57 + 4) = v151;
        *(v57 + 8) = 0u;
        *(v57 + 24) = 0u;
      }

      v58 = *(v14 + 144);
      if (*(v14 + 148) <= v58)
      {
        sub_18194C8AC(v14, 71, 0, v149, 0);
        if (v35 < 2)
        {
LABEL_84:
          v144 = *(v14 + 144);
          a3 = v143;
          goto LABEL_144;
        }
      }

      else
      {
        *(v14 + 144) = v58 + 1;
        v59 = *(v14 + 136) + 40 * v58;
        *v59 = 71;
        *(v59 + 8) = v149;
        *(v59 + 12) = 0;
        *(v59 + 28) = 0;
        *(v59 + 20) = 0;
        *(v59 + 36) = 0;
        if (v35 < 2)
        {
          goto LABEL_84;
        }
      }

      v135 = v56;
      v134 = *(v11 + 18);
      v136 = v134 - 1;
      *(v11 + 18) = v134 - 1;
      v60 = sub_181929E8C(v12, 4 * (v35 - 1), 0x100004052888210);
      a3 = v143;
      if (v60)
      {
        break;
      }

      v30 = v150;
LABEL_36:
      v31 = v146;
LABEL_37:
      v30 = *(v30 + 40);
      if (!v30)
      {
        v129 = v31 != 0;
        goto LABEL_195;
      }
    }

    v61 = v60;
    v62 = *(v14 + 144);
    if (*(v14 + 148) <= v62)
    {
      sub_18194C8AC(v14, 9, 0, 0, 0);
    }

    else
    {
      *(v14 + 144) = v62 + 1;
      v63 = *(v14 + 136) + 40 * v62;
      *v63 = 9;
      *(v63 + 1) = 0u;
      *(v63 + 17) = 0u;
      *(v63 + 32) = 0;
    }

    v64 = v150;
    v65 = *(v14 + 144);
    v132 = v65;
    if (v148 == 1 && *(v150 + 94) == 1 && *(v150 + 98))
    {
      if (*(v14 + 148) <= v65)
      {
        sub_18194C8AC(v14, 52, v147, v136, 0);
        v64 = v150;
      }

      else
      {
        *(v14 + 144) = v65 + 1;
        v66 = *(v14 + 136) + 40 * v65;
        *v66 = 52;
        *(v66 + 4) = v147;
        *(v66 + 8) = v136;
        *(v66 + 12) = 0;
        *(v66 + 28) = 0;
        *(v66 + 20) = 0;
        *(v66 + 36) = 0;
      }
    }

    v144 = v65;
    v67 = 0;
    v68 = v147;
    do
    {
      v69 = *(*(v64 + 64) + 8 * v67);
      v70 = v11;
      v71 = *v11;
      v72 = *(*v11 + 100);
      v73 = *(*v11 + 197);
      v74 = sub_181949138(v71, v72, v69, v73);
      v75 = v74;
      if (v73 || v74 && *(v74 + 3))
      {
        v11 = v70;
      }

      else
      {
        v11 = v70;
        v75 = sub_18194E6B8(v70, v72, v74, v69);
      }

      v76 = *(v14 + 144);
      if (*(v14 + 148) <= v76)
      {
        sub_18194C8AC(v14, 71, v67, v149, 0);
      }

      else
      {
        *(v14 + 144) = v76 + 1;
        v77 = *(v14 + 136) + 40 * v76;
        *v77 = 71;
        *(v77 + 4) = v67;
        *(v77 + 8) = v149;
        *(v77 + 12) = 0;
        *(v77 + 28) = 0;
        *(v77 + 20) = 0;
        *(v77 + 36) = 0;
      }

      v78 = *(v14 + 144);
      if (*(v14 + 148) <= v78)
      {
        sub_18194C8AC(v14, 94, v151, v67, v152);
      }

      else
      {
        *(v14 + 144) = v78 + 1;
        v79 = *(v14 + 136) + 40 * v78;
        *v79 = 94;
        *(v79 + 4) = v151;
        *(v79 + 8) = v67;
        *(v79 + 12) = v152;
        *(v79 + 24) = 0;
        *(v79 + 32) = 0;
        *(v79 + 16) = 0;
      }

      v80 = *(v14 + 144);
      if (*(v14 + 148) <= v80)
      {
        v80 = sub_18194C8AC(v14, 53, v152, 0, v68);
      }

      else
      {
        *(v14 + 144) = v80 + 1;
        v81 = *(v14 + 136) + 40 * v80;
        *v81 = 53;
        *(v81 + 4) = v152;
        *(v81 + 12) = v68;
        *(v81 + 24) = 0;
        *(v81 + 32) = 0;
        *(v81 + 16) = 0;
      }

      if (!*(*v14 + 103))
      {
        v82 = v80;
        if (v80 < 0)
        {
          v82 = *(v14 + 144) - 1;
        }

        v83 = *(v14 + 136) + 40 * v82;
        if (*(v83 + 1))
        {
          sub_18194CB90(v14, v83, v75, 4294967294);
        }

        else if (v75)
        {
          *(v83 + 16) = v75;
          *(v83 + 1) = -2;
        }
      }

      *(v61 + v67) = v80;
      v84 = *(v14 + 144);
      if (v84 >= 1)
      {
        *(*(v14 + 136) + 40 * v84 - 38) = 128;
      }

      ++v67;
      ++v68;
      v64 = v150;
    }

    while (v148 != v67);
    if (*(v14 + 148) <= v84)
    {
      sub_18194C8AC(v14, 71, v148, v149, 0);
    }

    else
    {
      *(v14 + 144) = v84 + 1;
      v85 = *(v14 + 136) + 40 * v84;
      *v85 = 71;
      *(v85 + 4) = v148;
      *(v85 + 8) = v149;
      *(v85 + 12) = 0;
      *(v85 + 28) = 0;
      *(v85 + 20) = 0;
      *(v85 + 36) = 0;
    }

    v7 = v131;
    v86 = *(v14 + 144);
    v12 = v137;
    if (*(v14 + 148) <= v86)
    {
      sub_18194C8AC(v14, 9, 0, v136, 0);
    }

    else
    {
      *(v14 + 144) = v86 + 1;
      v87 = *(v14 + 136) + 40 * v86;
      *v87 = 9;
      *(v87 + 8) = v136;
      *(v87 + 12) = 0;
      *(v87 + 28) = 0;
      *(v87 + 20) = 0;
      *(v87 + 36) = 0;
    }

    v25 = v130;
    v88 = &byte_1EA831A58;
    if (!*(*v14 + 103))
    {
      v88 = (*(v14 + 136) + 40 * v132 - 40);
    }

    v89 = 0;
    *(v88 + 2) = *(v14 + 144);
    if (v148 <= 1)
    {
      v90 = 1;
    }

    else
    {
      v90 = v148;
    }

    v91 = v147;
    do
    {
      v93 = *(v14 + 144);
      v94 = &byte_1EA831A58;
      if (!*(*v14 + 103))
      {
        v94 = (*(v14 + 136) + 40 * *(v61 + v89));
      }

      *(v94 + 2) = v93;
      if (*(v14 + 148) > v93)
      {
        *(v14 + 144) = v93 + 1;
        v92 = *(v14 + 136) + 40 * v93;
        *v92 = 94;
        *(v92 + 4) = v151;
        *(v92 + 8) = v89;
        *(v92 + 12) = v91;
        *(v92 + 24) = 0;
        *(v92 + 32) = 0;
        *(v92 + 16) = 0;
      }

      else
      {
        sub_18194C8AC(v14, 94, v151, v89, v91);
      }

      ++v89;
      ++v91;
    }

    while (v90 != v89);
    v95 = *(v14 + 24);
    v96 = -v134;
    if (*(v95 + 72) + *(v95 + 76) < 0)
    {
      sub_18195CB84(v95, v14, v96);
    }

    else
    {
      *(*(v95 + 80) + 4 * v96) = *(v14 + 144);
    }

    a4 = v138;
    a3 = v143;
    sub_181929C84(v137, v61);
    v56 = v135;
LABEL_144:
    sub_181958B0C(v11, 1, v7 + 1, v152, 2, &unk_1EEF901C8, 0);
    v98 = *(v14 + 144);
    v97 = *(v14 + 148);
    if (*(v12 + 768))
    {
      v99 = v25;
      v100 = v56;
      if (v97 <= v98)
      {
        v98 = sub_18194C8AC(v14, 51, v152, 0, 0);
      }

      else
      {
        *(v14 + 144) = v98 + 1;
        v101 = *(v14 + 136) + 40 * v98;
        *v101 = 51;
        *(v101 + 4) = v152;
        *(v101 + 8) = 0u;
        *(v101 + 24) = 0u;
      }

      v103 = *(v14 + 144);
      if (*(v14 + 148) <= v103)
      {
        v103 = sub_18194C8AC(v14, 16, v152, 0, 0);
      }

      else
      {
        *(v14 + 144) = v103 + 1;
        v104 = *(v14 + 136) + 40 * v103;
        *v104 = 16;
        *(v104 + 4) = v152;
        *(v104 + 8) = 0u;
        *(v104 + 24) = 0u;
      }

      v105 = *(v14 + 144);
      if (*(v14 + 148) <= v105)
      {
        v105 = sub_18194CAFC(v14, 24, v151, 0, v147, 1);
      }

      else
      {
        *(v14 + 144) = v105 + 1;
        v106 = *(v14 + 136) + 40 * v105;
        *v106 = 64792;
        *(v106 + 4) = v151;
        *(v106 + 8) = 0;
        *(v106 + 12) = v147;
        *(v106 + 16) = 1;
        *(v106 + 24) = 0;
        *(v106 + 32) = 0;
      }

      v107 = *(v14 + 144);
      v108 = &byte_1EA831A58;
      if (!*(*v14 + 103))
      {
        v108 = (*(v14 + 136) + 40 * v98);
      }

      *(v108 + 2) = v107;
      if (*(v14 + 148) <= v107)
      {
        sub_18194C8AC(v14, 39, v151, v144, 0);
      }

      else
      {
        *(v14 + 144) = v107 + 1;
        v109 = *(v14 + 136) + 40 * v107;
        *v109 = 39;
        *(v109 + 4) = v151;
        *(v109 + 8) = v144;
        *(v109 + 12) = 0;
        *(v109 + 28) = 0;
        *(v109 + 20) = 0;
        *(v109 + 36) = 0;
      }

      a2 = v145;
      v110 = *(v14 + 144);
      if (*(*v14 + 103))
      {
        v111 = &byte_1EA831A58;
        dword_1EA831A60 = *(v14 + 144);
      }

      else
      {
        v112 = *(v14 + 136);
        *(v112 + 40 * v103 + 8) = v110;
        v111 = (v112 + 40 * v105);
      }

      *(v111 + 2) = v110;
      a4 = v138;
      v56 = v100;
      v25 = v99;
      v12 = v137;
      if (!*(v150 + 72))
      {
        goto LABEL_171;
      }
    }

    else
    {
      if (v97 <= v98)
      {
        sub_18194C8AC(v14, 39, v151, v144, 0);
      }

      else
      {
        *(v14 + 144) = v98 + 1;
        v102 = *(v14 + 136) + 40 * v98;
        *v102 = 39;
        *(v102 + 4) = v151;
        *(v102 + 8) = v144;
        *(v102 + 12) = 0;
        *(v102 + 28) = 0;
        *(v102 + 20) = 0;
        *(v102 + 36) = 0;
      }

      a2 = v145;
      if (!*(v150 + 72))
      {
LABEL_171:
        sub_181958B0C(v11, 0, v7 + 1, v7 + 8, 1, &unk_1EEF90210, 0);
        v114 = *(v14 + 144);
        if (*(v14 + 148) <= v114)
        {
          v114 = sub_18194C8AC(v14, 97, v25, 3, v152);
        }

        else
        {
          *(v14 + 144) = v114 + 1;
          v115 = *(v14 + 136) + 40 * v114;
          *v115 = 97;
          *(v115 + 4) = v25;
          *(v115 + 8) = 3;
          *(v115 + 12) = v152;
          *(v115 + 24) = 0;
          *(v115 + 32) = 0;
          *(v115 + 16) = 0;
        }

        if (!*(*v14 + 103))
        {
          if (v114 < 0)
          {
            v114 = *(v14 + 144) - 1;
          }

          sub_18194CB90(v14, *(v14 + 136) + 40 * v114, "BBB", 0);
        }

        v116 = *(v14 + 144);
        if (*(v14 + 148) <= v116)
        {
          sub_18194C8AC(v14, 127, a4, v7, 0);
        }

        else
        {
          *(v14 + 144) = v116 + 1;
          v117 = *(v14 + 136) + 40 * v116;
          *v117 = 127;
          *(v117 + 4) = a4;
          *(v117 + 8) = v7;
          *(v117 + 12) = 0;
          *(v117 + 28) = 0;
          *(v117 + 20) = 0;
          *(v117 + 36) = 0;
        }

        v118 = *(v14 + 144);
        if (*(v14 + 148) <= v118)
        {
          sub_18194C8AC(v14, 128, a4, v152, v7);
        }

        else
        {
          *(v14 + 144) = v118 + 1;
          v119 = *(v14 + 136) + 40 * v118;
          *v119 = 128;
          *(v119 + 4) = a4;
          *(v119 + 8) = v152;
          *(v119 + 12) = v7;
          *(v119 + 24) = 0;
          *(v119 + 32) = 0;
          *(v119 + 16) = 0;
        }

        v30 = v150;
        if (!*(*v14 + 103))
        {
          v120 = *(v14 + 136) + 40 * *(v14 + 144);
          if (*(v120 - 39))
          {
            sub_18194CB90(v14, v120 - 40, __s, 4294967291);
            v30 = v150;
          }

          else if (__s)
          {
            *(v120 - 24) = __s;
            *(v120 - 39) = -5;
          }
        }

        v121 = *(v14 + 144);
        if (v121 >= 1)
        {
          *(*(v14 + 136) + 40 * v121 - 38) = 8;
        }

        if (v56)
        {
          v122 = &byte_1EA831A58;
          if (!*(*v14 + 103))
          {
            v122 = (*(v14 + 136) + 40 * v56);
          }

          *(v122 + 2) = v121;
        }

        goto LABEL_36;
      }
    }

    v113 = &byte_1EA831A58;
    if (!*(*v14 + 103))
    {
      v113 = (*(v14 + 136) + 40 * v56);
    }

    v56 = 0;
    *(v113 + 2) = *(v14 + 144);
    goto LABEL_171;
  }

LABEL_195:
  if (!a3 && v129)
  {
    sub_1818A2964(v14, 98, a6, (v7 + 8), 0);
    v123 = sub_1818A2964(v14, 17, (v7 + 8), 0, 0);
    sub_1818A2964(v14, 75, 0, v141, 0);
    v124 = sub_1818A2964(v14, 97, v25, 3, v152);
    sub_1818B49F8(v14, v124, "BBB", 0);
    sub_1818A2964(v14, 127, a4, v7, 0);
    sub_1818A2964(v14, 128, a4, v152, v7);
    v125 = *(v14 + 144);
    if (v125 >= 1)
    {
      *(*(v14 + 136) + 40 * v125 - 38) = 8;
    }

    sub_1818B49F8(v14, -1, __s, 4294967291);
    if (*(*v14 + 103))
    {
      v126 = &byte_1EA831A58;
    }

    else
    {
      v126 = (*(v14 + 136) + 40 * v123);
    }

    *(v126 + 2) = *(v14 + 144);
  }
}

void sub_18198CDB8(sqlite3_context *a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v5 = *(*a1 + 24);
    v6 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1819012D0(92237);
    goto LABEL_7;
  }

  v5 = 0;
  v6 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *(v6 + 20);
  if ((v7 & 0x24) != 0)
  {
    v8 = *v6;
    goto LABEL_8;
  }

  if ((v7 & 8) == 0)
  {
    if ((v7 & 0x12) != 0 && *(v6 + 8))
    {
      LODWORD(v8) = sub_18193CFCC(v6);
      goto LABEL_8;
    }

LABEL_7:
    LODWORD(v8) = 0;
    goto LABEL_8;
  }

  v21 = *v6;
  if (*v6 >= -9.22337204e18)
  {
    if (v21 <= 9.22337204e18)
    {
      *&v8 = v21;
    }

    else
    {
      LODWORD(v8) = -1;
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

LABEL_8:
  v9 = a3[1];
  if (!v9)
  {
    sub_1819012D0(92237);
    goto LABEL_12;
  }

  v10 = *(v9 + 20);
  if ((v10 & 0x24) != 0)
  {
    v11 = *v9;
    goto LABEL_13;
  }

  if ((v10 & 8) == 0)
  {
    if ((v10 & 0x12) != 0 && *(v9 + 8))
    {
      LODWORD(v11) = sub_18193CFCC(v9);
      goto LABEL_13;
    }

LABEL_12:
    LODWORD(v11) = 0;
    goto LABEL_13;
  }

  v22 = *v9;
  if (*v9 >= -9.22337204e18)
  {
    if (v22 <= 9.22337204e18)
    {
      *&v11 = v22;
    }

    else
    {
      LODWORD(v11) = -1;
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

LABEL_13:
  v12 = 8 * SLODWORD(v8);
  if (v5)
  {
    v13 = sub_181929E8C(v5, v12 + 48, 2189763462);
    if (v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = sub_181902484(v12 + 48, 2189763462);
    if (v13)
    {
LABEL_15:
      bzero(v13, v12 + 48);
      *v13 = v5;
      v14 = a3[2];
      if (v14)
      {
        v15 = *(v14 + 20);
        if ((v15 & 0x24) != 0)
        {
          v16 = *v14;
          goto LABEL_32;
        }

        if ((v15 & 8) != 0)
        {
          v23 = *v14;
          if (*v14 >= -9.22337204e18)
          {
            if (v23 <= 9.22337204e18)
            {
              v16 = v23;
            }

            else
            {
              v16 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v16 = 0x8000000000000000;
          }

LABEL_32:
          v13[1] = v16;
          v13[2] = 0;
          v17 = a3[3];
          if (v17)
          {
            v18 = *(v17 + 20);
            if ((v18 & 0x24) != 0)
            {
              v19 = *v17;
              goto LABEL_37;
            }

            if ((v18 & 8) != 0)
            {
              v24 = *v17;
              if (*v17 >= -9.22337204e18)
              {
                if (v24 <= 9.22337204e18)
                {
                  *&v19 = v24;
                }

                else
                {
                  LODWORD(v19) = -1;
                }
              }

              else
              {
                LODWORD(v19) = 0;
              }

LABEL_37:
              *(v13 + 6) = LODWORD(v19);
              *(v13 + 7) = LODWORD(v8);
              *(v13 + 8) = LODWORD(v11);
              *(v13 + 36) = 0;
              v13[5] = v13 + 6;
              if (a1)
              {

                sub_18190B23C(a1, v13, 48, 0, sub_18198D138);
              }

              else
              {
                v20 = *v13;

                sub_181929C84(v20, v13);
              }

              return;
            }

            if ((v18 & 0x12) != 0 && *(v17 + 8))
            {
              LODWORD(v19) = sub_18193CFCC(v17);
              goto LABEL_37;
            }
          }

          else
          {
            sub_1819012D0(92237);
          }

          LODWORD(v19) = 0;
          goto LABEL_37;
        }

        if ((v15 & 0x12) != 0 && *(v14 + 8))
        {
          v16 = sub_18193CFCC(v14);
          goto LABEL_32;
        }
      }

      else
      {
        sub_1819012D0(92237);
      }

      v16 = 0;
      goto LABEL_32;
    }
  }

  sqlite3_result_error_nomem(a1);
}

void sub_18198D144(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sqlite3_value_blob(*a3);
  v6 = *(a3 + 8);
  if (!v6)
  {
    sub_1819012D0(92237);
    goto LABEL_6;
  }

  v7 = *(v6 + 20);
  if ((v7 & 0x24) != 0)
  {
    v8 = *v6;
    v9 = *(v5 + 2);
    if (!v9)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if ((v7 & 8) == 0)
  {
    if ((v7 & 0x12) != 0 && *(v6 + 8))
    {
      LODWORD(v8) = sub_18193CFCC(v6);
      v9 = *(v5 + 2);
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

LABEL_6:
    LODWORD(v8) = 0;
    v9 = *(v5 + 2);
    if (!v9)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  LODWORD(v10) = -1;
  if (*v6 <= 9.22337204e18)
  {
    v10 = *v6;
  }

  if (*v6 >= -9.22337204e18)
  {
    LODWORD(v8) = v10;
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v9 = *(v5 + 2);
  if (v9)
  {
LABEL_19:
    v11 = v5[7];
    if (v11 > SLODWORD(v8))
    {
      v12 = *(v5 + 5);
      v13 = v11 - SLODWORD(v8);
      v14 = SLODWORD(v8);
      if (v13 < 4)
      {
        goto LABEL_24;
      }

      v14 = SLODWORD(v8) + (v13 & 0xFFFFFFFFFFFFFFFCLL);
      v15 = (v12 + 8 * SLODWORD(v8) + 16);
      v16 = vdupq_n_s64(1uLL);
      v17 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v18 = vaddq_s64(*v15, v16);
        v15[-1] = vaddq_s64(v15[-1], v16);
        *v15 = v18;
        v15 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v13 != (v13 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_24:
        v19 = (v12 + 8 * v14);
        v20 = v11 - v14;
        do
        {
          ++*v19++;
          --v20;
        }

        while (v20);
      }

      v9 = *(v5 + 2);
    }
  }

LABEL_27:
  v21 = v9 + 1;
  *(v5 + 2) = v9 + 1;
  v22 = v5[6];
  if (v22)
  {
    if (v21 > v22 + v22 * *(v5 + 36))
    {
      ++*(v5 + 36);
      if (a1)
      {
        v23 = **(v5 + 5) != 0;
        v24 = *a1;
        if ((*(*a1 + 20) & 0x9000) != 0)
        {

          sub_18193D288(v24, v23);
        }

        else
        {
          *v24 = v23;
          *(v24 + 20) = 4;
        }
      }
    }
  }
}

void sub_18198D320(_DWORD *a1, uint64_t a2, sqlite3_value **a3)
{
  v4 = sqlite3_value_blob(*a3);
  v5 = v4;
  v25 = 0;
  v6 = 100 * v4[8] + 100;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = v6;
  v7 = 2;
  if (!*(v4 + 36))
  {
    v7 = 4;
  }

  sqlite3_str_appendf(&v21, "%llu", *&v4[v7]);
  if (v5[8] >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(v5 + 5) + 8 * v8);
      v10 = v9 + 1;
      v11 = *(v5 + 2);
      v12 = (v11 + v9) / (v9 + 1);
      if (10 * v11 <= (11 * v10))
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 == 2)
      {
        v12 = v13;
      }

      sqlite3_str_appendf(&v21, " %llu", v12);
      ++v8;
    }

    while (v8 < v5[8]);
  }

  v14 = BYTE4(v25);
  if (BYTE4(v25))
  {
    if (!a1 || (a1[9] = BYTE4(v25), (*(*a1 + 20) & 1) == 0))
    {
LABEL_34:
      if ((v25 & 0x40000000000) != 0)
      {
        if (v22)
        {
          sub_181929C84(v21, v22);
        }
      }

      return;
    }

    if (v14 == 100)
    {
      v15 = "another row available";
    }

    else if (v14 == 101)
    {
      v15 = "no more rows available";
    }

    else if (v14 > 0x1C || ((0x1410004uLL >> v14) & 1) != 0)
    {
      v15 = "unknown error";
    }

    else
    {
      v15 = off_1E6A27DD8[v14];
    }

    v16 = a1;
    v17 = -1;
LABEL_33:
    sub_18190B23C(v16, v15, v17, 1, 0);
    goto LABEL_34;
  }

  if ((v25 & 0x40000000000) == 0)
  {
    if (!a1)
    {
      return;
    }

    v15 = &byte_181A2878D;
    v16 = a1;
    v17 = 0;
    goto LABEL_33;
  }

  v18 = v22;
  if (a1)
  {
    sub_18190B23C(a1, v22, v25, 1, sub_181916CE4);
  }

  else if (v22[103])
  {
    v19 = *(v22 + 55);
    if (!v19)
    {
      v22[103] = 0;
      *(v18 + 106) = 0;
      v20 = *(v18 + 108) - 1;
      *(v18 + 108) = v20;
      if (!v20)
      {
        LOWORD(v19) = *(v18 + 219);
      }

      *(v18 + 218) = v19;
    }
  }
}

uint64_t sub_18198D540(uint64_t *a1, const char **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *v2;
    if (!*v2)
    {
      v12 = 0;
      v11 = "sqlite_";
      goto LABEL_30;
    }

    if ((v3 & 0xFFFFFFDF) == 0x53)
    {
      v4 = *(v2 + 1);
      if (!v2[1])
      {
        v12 = 0;
        v11 = "qlite_";
        goto LABEL_30;
      }

      if ((v4 & 0xFFFFFFDF) == 0x51)
      {
        v5 = *(v2 + 2);
        if (!v2[2])
        {
          v12 = 0;
          v11 = "lite_";
          goto LABEL_30;
        }

        if ((v5 & 0xFFFFFFDF) == 0x4C)
        {
          v6 = *(v2 + 3);
          if (!v2[3])
          {
            v12 = 0;
            v11 = "ite_";
            goto LABEL_30;
          }

          if ((v6 & 0xFFFFFFDF) == 0x49)
          {
            v7 = *(v2 + 4);
            if (!v2[4])
            {
              v12 = 0;
              v11 = "te_";
              goto LABEL_30;
            }

            if ((v7 & 0xFFFFFFDF) == 0x54)
            {
              v8 = *(v2 + 5);
              if (!v2[5])
              {
                v12 = 0;
                v11 = "e_";
                goto LABEL_30;
              }

              if ((v8 & 0xFFFFFFDF) == 0x45)
              {
                v9 = *(v2 + 6);
                if (!v2[6])
                {
                  v12 = 0;
                  v11 = "_";
LABEL_30:
                  if (v12 == byte_181A20298[*v11])
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_31;
                }

                if (v9 == 95)
                {
                  goto LABEL_39;
                }

                v10 = &byte_181A20298[v9];
                v11 = "_";
              }

              else
              {
                v10 = &byte_181A20298[v8];
                v11 = "e_";
              }
            }

            else
            {
              v10 = &byte_181A20298[v7];
              v11 = "te_";
            }
          }

          else
          {
            v10 = &byte_181A20298[v6];
            v11 = "ite_";
          }
        }

        else
        {
          v10 = &byte_181A20298[v5];
          v11 = "lite_";
        }
      }

      else
      {
        v10 = &byte_181A20298[v4];
        v11 = "qlite_";
      }
    }

    else
    {
      v10 = &byte_181A20298[v3];
      v11 = "sqlite_";
    }

    v12 = *v10;
    goto LABEL_30;
  }

LABEL_31:
  v13 = *(a2 + 12);
  if ((v13 & 0x8000) == 0)
  {
    if ((v13 & 0x1000) == 0)
    {
      return 0;
    }

    v14 = *a1;
    if ((*(*a1 + 51) & 0x10) == 0 || *(v14 + 592) || *(v14 + 220) || *(v14 + 564) >= 1 && !*(v14 + 600))
    {
      return 0;
    }
  }

LABEL_39:
  sub_181910730(a1, "table %s may not be altered", v2);
  return 1;
}

uint64_t sub_18198D740(uint64_t *a1, int a2, __int16 a3)
{
  result = a1[2];
  if (result)
  {
    v7 = **(*(*a1 + 32) + 32 * a2 + 24) + 1;
    v8 = *(result + 144);
    if (*(result + 148) <= v8)
    {
      sub_18194C8AC(result, 100, a2, 1, v7);
    }

    else
    {
      *(result + 144) = v8 + 1;
      v9 = *(result + 136) + 40 * v8;
      *v9 = 100;
      *(v9 + 4) = a2;
      *(v9 + 8) = 1;
      *(v9 + 12) = v7;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 0;
    }

    result = sub_18195E8E8(a1[2], a2, 0, a3);
    if (a2 != 1)
    {
      v10 = a1[2];

      return sub_18195E8E8(v10, 1, 0, a3);
    }
  }

  return result;
}

void sub_18198D830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  *(a1 + 43) |= 1u;
  sub_1818F73B0(a1, "SELECT 1 FROM %w.sqlite_master WHERE name NOT LIKE 'sqliteX_%%' ESCAPE 'X' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, %d, %Q, %d)=NULL ", a2, a2, a3, a4, a5);
  if (!v7)
  {
    sub_1818F73B0(a1, "SELECT 1 FROM temp.sqlite_master WHERE name NOT LIKE 'sqliteX_%%' ESCAPE 'X' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, 1, %Q, %d)=NULL ", a2, a4, a5);
  }
}

void sub_18198D8B8(uint64_t *a1, uint64_t a2, int a3)
{
  sub_1818F73B0(a1, "UPDATE %w.sqlite_master SET sql = sqlite_rename_quotefix(%Q, sql)WHERE name NOT LIKE 'sqliteX_%%' ESCAPE 'X' AND sql NOT LIKE 'create virtual%%'", a2, a2);
  if (!a3)
  {

    sub_1818F73B0(a1, "UPDATE temp.sqlite_master SET sql = sqlite_rename_quotefix('temp', sql)WHERE name NOT LIKE 'sqliteX_%%' ESCAPE 'X' AND sql NOT LIKE 'create virtual%%'");
  }
}

uint64_t *sub_18198D924(uint64_t *result)
{
  v1 = result[47];
  if (v1)
  {
    v2 = result[43];
    if (v2)
    {
      v3 = *(result + 96);
      v4 = result;
      v5 = sub_181929E8C(*result, v3 + 1, 1565185748);
      v6 = v5;
      if (v5)
      {
        memcpy(v5, v1, v3);
        *(v6 + v3) = 0;
      }

      return sub_18194DFCC(v4, v2, v6);
    }
  }

  return result;
}

void *sub_18198D9C8(void *result, int *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = result;
    if (*a2 >= 1)
    {
      v6 = 0;
      v7 = (a2 + 8);
      do
      {
        v8 = *(v7 - 1);
        if (v8)
        {
          sub_18194E5B8(v5, v8);
        }

        if (*v7)
        {
          sub_1818BB408(v5, *v7, 1, a4);
        }

        v9 = *(v7 - 2);
        if (v9)
        {
          sub_181929C84(v5, v9);
        }

        ++v6;
        v7 += 6;
      }

      while (v6 < *a2);
    }

    return sub_181929C84(v5, a2);
  }

  return result;
}

void sub_18198DA78(uint64_t a1)
{
  if (a1)
  {
    sub_18190B23C(a1, "3.51.0", -1, 1, 0);
  }
}

void sub_18198DA98(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  if (*a3)
  {
    v6 = *(v5 + 20);
    if ((~v6 & 0x202) != 0 || *(v5 + 22) != 1)
    {
      if (v6)
      {
        return;
      }

      v7 = sub_18193CB70(v5, 1, a3, a4);
      if (!v7)
      {
        return;
      }
    }

    else
    {
      v7 = *(v5 + 8);
      if (!v7)
      {
        return;
      }
    }

    v8 = sqlite3_compileoption_used(v7);
    if (a1)
    {
      v9 = v8;
      v10 = *a1;
      if ((*(*a1 + 20) & 0x9000) != 0)
      {

        sub_18193D288(v10, v9);
      }

      else
      {
        *v10 = v9;
        *(v10 + 20) = 4;
      }
    }
  }
}

void sub_18198DB44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    v6 = a1;
    sub_1819012D0(92237);
    a1 = v6;
    goto LABEL_8;
  }

  v4 = *(v3 + 20);
  if ((v4 & 0x24) != 0)
  {
    LODWORD(v3) = *v3;
    goto LABEL_4;
  }

  if ((v4 & 8) == 0)
  {
    if ((v4 & 0x12) != 0 && *(v3 + 8))
    {
      v7 = a1;
      LODWORD(v3) = sub_18193CFCC(*a3);
      a1 = v7;
      goto LABEL_4;
    }

LABEL_8:
    LODWORD(v3) = 0;
    goto LABEL_9;
  }

  v8 = *v3;
  if (*v3 < -9.22337204e18)
  {
    goto LABEL_8;
  }

  if (v8 <= 9.22337204e18)
  {
    v3 = v8;
LABEL_4:
    if (v3 > 0x47)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = off_1E6A28248[v3];
    if (!a1)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_5:
  v5 = 0;
  if (!a1)
  {
    return;
  }

LABEL_10:

  sub_18190B23C(a1, v5, -1, 1, 0);
}

void sub_18198DC38(sqlite3_context *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  if (*a3)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(v7 + 20)))
    {
      return;
    }
  }

  else
  {
    sub_1819012D0(99877);
    v7 = *a3;
    if (!*a3)
    {
      return;
    }
  }

  v8 = *(v7 + 20);
  if ((~v8 & 0x202) != 0 || *(v7 + 22) != 1)
  {
    if (v8)
    {
      return;
    }

    v9 = sub_18193CB70(v7, 1, a3, a4);
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *(v7 + 8);
    if (!v9)
    {
      return;
    }
  }

  v10 = *a3;
  if (!*a3)
  {
    sub_1819012D0(93690);
    goto LABEL_21;
  }

  v11 = *(v10 + 20);
  if ((v11 & 2) != 0 && *(v10 + 22) == 1)
  {
    v12 = *(v10 + 16);
    if (a2 != 1)
    {
      goto LABEL_22;
    }

LABEL_29:
    v16 = &dword_181A249F8;
    LODWORD(v17) = 1;
    v18 = off_1E6A27CA8;
    goto LABEL_30;
  }

  if ((v11 & 0x10) != 0)
  {
    v12 = *(v10 + 16);
    if ((*(v10 + 20) & 0x400) != 0)
    {
      v12 += *v10;
    }

    if (a2 == 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  if (v11)
  {
LABEL_21:
    v12 = 0;
    if (a2 != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v12 = sub_18193CB44(v10, 1, a3, a4);
  if (a2 == 1)
  {
    goto LABEL_29;
  }

LABEL_22:
  v13 = a3[1];
  if (!v13)
  {
    return;
  }

  v14 = *(v13 + 20);
  if ((~v14 & 0x202) != 0 || *(v13 + 22) != 1)
  {
    if (v14)
    {
      return;
    }

    v15 = sub_18193CB70(v13, 1, a3, a4);
  }

  else
  {
    v15 = *(v13 + 8);
  }

  if (v15)
  {
    v27 = *v15;
    if (!*v15)
    {
      goto LABEL_88;
    }

    LODWORD(v28) = 0;
    v29 = v15;
    do
    {
      if (v27 < 0xC0)
      {
        v30 = *++v29;
        v27 = v30;
      }

      else
      {
        do
        {
          v31 = *++v29;
          v27 = v31;
        }

        while ((v31 & 0xC0) == 0x80);
      }

      v28 = (v28 + 1);
    }

    while (v27);
    v40 = 4 * (v28 + 2 * v28);
    if (a1)
    {
      v41 = *a1;
      if (v40 > *(*(*a1 + 24) + 136))
      {
        *(a1 + 9) = 18;

        sub_1818900D0(v41, "string or blob too big", -1, 1, 0);
        return;
      }
    }

    else if (v40 > MEMORY[0x88])
    {
      return;
    }

    v42 = v15;
    v43 = sub_181902484(4 * (v28 + 2 * v28), 3621441365);
    if (v43)
    {
      if (*v42)
      {
        v18 = v43;
        v44 = v42;
        v17 = 0;
        v16 = (v43 + 8 * v28);
        v45 = v42;
        do
        {
          *(v43 + 8 * v17) = v44;
          v46 = *v45++;
          if (v46 >= 0xC0)
          {
            v45 = v44;
            do
            {
              v47 = *++v45;
            }

            while ((v47 & 0xC0) == 0x80);
          }

          v16[v17++] = v45 - v44;
          v44 = v45;
        }

        while (*v45);
LABEL_30:
        if (a1)
        {
          v19 = *(*(a1 + 1) + 8);
          v49 = v16;
          if ((v19 & 1) != 0 && v12)
          {
            v20 = v17;
            v48 = v18;
            while (2)
            {
              v21 = v20;
              v22 = v18;
              v23 = v16;
              while (1)
              {
                v25 = *v23++;
                v24 = v25;
                if (v12 >= v25 && !memcmp(v9, *v22, v24))
                {
                  break;
                }

                ++v22;
                if (!--v21)
                {
                  v18 = v48;
                  v16 = v49;
                  goto LABEL_51;
                }
              }

              v26 = 0;
              v9 += v24;
              v12 -= v24;
              v18 = v48;
              v16 = v49;
              v20 = v17;
              if (v12)
              {
                continue;
              }

              break;
            }

LABEL_63:
            if (a2 == 1)
            {
              goto LABEL_70;
            }

            v39 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v18);
              --qword_1ED456A90;
              off_1ED452EB0(v18);
              v18 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
LABEL_70:
                if (!a1)
                {
                  return;
                }

LABEL_71:

                sub_18190B23C(a1, v9, v26, 1, 0xFFFFFFFFFFFFFFFFLL);
                return;
              }

              v39 = &xmmword_1ED452F28;
            }

            (*v39)(v18);
            goto LABEL_70;
          }

LABEL_51:
          if ((v19 & 2) != 0 && v12)
          {
            if (v17 <= 1)
            {
              v32 = 1;
            }

            else
            {
              v32 = v17;
            }

            do
            {
              v33 = v32;
              v34 = v16;
              v35 = v18;
              while (1)
              {
                v37 = *v34++;
                v36 = v37;
                if (v12 >= v37)
                {
                  v38 = v12 - v36;
                  if (!memcmp(&v9[v38], *v35, v36))
                  {
                    break;
                  }
                }

                ++v35;
                if (!--v33)
                {
                  goto LABEL_62;
                }
              }

              v12 = v38;
              v16 = v49;
            }

            while (v38);
            v26 = 0;
            goto LABEL_63;
          }
        }

LABEL_62:
        v26 = v12;
        goto LABEL_63;
      }

LABEL_88:
      v26 = v12;
      if (!a1)
      {
        return;
      }

      goto LABEL_71;
    }

    sqlite3_result_error_nomem(a1);
  }
}

void sub_18198E0E0(sqlite3_context *a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    if (*(*(a1 + 1) + 8))
    {
      v5 = -1;
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

  v6 = *(*(*(a1 + 3) + 136) + 40 * *(a1 + 8) - 24);
  if (*a3)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(*a3 + 20)))
    {
      return;
    }

    if (a2 >= 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = a2;
    sub_1819012D0(99877);
    a2 = v11;
    if (v11 >= 2)
    {
LABEL_9:
      v7 = 0;
      v8 = 1;
      v9 = a2;
      do
      {
        v10 = *(a3 + 8 * v8);
        if (v10)
        {
          if ((0xAAAAAAAAAAAAAAAALL >> *(v10 + 20)))
          {
            return;
          }
        }

        else
        {
          sub_1819012D0(99877);
          v10 = *(a3 + 8 * v8);
        }

        if ((sub_1818D0D40(*(a3 + 8 * v7), v10, v6) ^ v5) >= 0)
        {
          v7 = v8;
        }

        ++v8;
      }

      while (v9 != v8);
      v12 = v7;
      goto LABEL_20;
    }
  }

  v12 = 0;
LABEL_20:
  v13 = *(a3 + 8 * v12);

  sqlite3_result_value(a1, v13);
}

void sub_18198E224(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a1 && (v4 = *(a1 + 8)) != 0 && *(v4 + 32))
  {
    v5 = *a3;
    v6 = *(a1 + 16);
    if (*(v6 + 20) < 0)
    {
      v7 = a1;
      v8 = *(v6 + 8);
      if (!v8)
      {
        return;
      }
    }

    else
    {
      v7 = a1;
      v8 = sub_18190C2E0(a1, 64, a3, a4);
      if (!v8)
      {
        return;
      }
    }

    if (v5)
    {
      if ((0xAAAAAAAAAAAAAAAALL >> *(v5 + 20)))
      {
        if (!*(v8 + 20))
        {
          return;
        }

LABEL_20:
        *(v7 + 36) = -1;
        *(v7 + 41) = 1;
        return;
      }
    }

    else
    {
      sub_1819012D0(99877);
    }

    if (*(v8 + 20))
    {
      v9 = *(*(v7 + 8) + 8);
      v10 = sub_1818D0D40(v8, v5, *(*(*(v7 + 24) + 136) + 40 * *(v7 + 32) - 24));
      v11 = v10 >= 0;
      if (!v9)
      {
        v11 = v10 < 1;
      }

      if (v11)
      {
        goto LABEL_20;
      }

      if ((*(v8 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v8);
      }
    }

    else
    {
      *(v8 + 24) = *(*v7 + 24);
    }

    v12 = *v5;
    v13 = *(v5 + 16);
    *(v8 + 16) = v13;
    *v8 = v12;
    *(v8 + 20) = WORD2(v13) & 0xEFFF;
    if ((v13 & 0x1200000000) != 0 && (*(v5 + 20) & 0x2000) == 0)
    {
      *(v8 + 20) = WORD2(v13) & 0xAFFF | 0x4000;

      sub_18190B020(v8, a2, a3, a4);
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_18198E3D0(sqlite3_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v4 = *(a1 + 1)) != 0 && *(v4 + 32))
  {
    v5 = *(a1 + 2);
    if (*(v5 + 20) < 0)
    {
      v6 = a1;
      v7 = *(v5 + 8);
      if (!v7)
      {
        return;
      }
    }

    else
    {
      v6 = a1;
      v7 = sub_18190C2E0(a1, 0, a3, a4);
      if (!v7)
      {
        return;
      }
    }

    if (*(v7 + 20) && (sqlite3_result_value(v6, v7), (*(v7 + 20) & 0x9000) != 0) || *(v7 + 32))
    {

      sub_18193CA00(v7);
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_18198E4A0(sqlite3_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v4 = *(a1 + 1)) != 0 && *(v4 + 32))
  {
    v5 = *(a1 + 2);
    if (*(v5 + 20) < 0)
    {
      v6 = a1;
      v7 = *(v5 + 8);
      if (!v7)
      {
        return;
      }
    }

    else
    {
      v6 = a1;
      v7 = sub_18190C2E0(a1, 0, a3, a4);
      if (!v7)
      {
        return;
      }
    }

    if (*(v7 + 10))
    {

      sqlite3_result_value(v6, v7);
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_18198E54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    v4 = byte_181A203AA[*(*a3 + 20) & 0x3F] - 1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
    v6 = a1;
    sub_1819012D0(99877);
    a1 = v6;
    v4 = -1;
    if (!v6)
    {
      return;
    }
  }

  v5 = off_1E6A27CB0[v4];

  sub_18190B23C(a1, v5, -1, 1, 0);
}

void sub_18198E5D4(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (*a3)
  {
    if ((*(v4 + 20) & 0x800) != 0)
    {
      v5 = *(v4 + 23);
      if (!a1)
      {
        return;
      }
    }

    else
    {
      v5 = 0;
      if (!a1)
      {
        return;
      }
    }
  }

  else
  {
    sub_1819012D0(99765);
    v5 = 0;
    if (!a1)
    {
      return;
    }
  }

  v6 = *a1;
  if ((*(*a1 + 20) & 0x9000) != 0)
  {

    sub_18193D288(v6, v5);
  }

  else
  {
    *v6 = v5;
    *(v6 + 20) = 4;
  }
}

void sub_18198E66C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  if (!*a3)
  {
    sub_1819012D0(99877);
    goto LABEL_10;
  }

  v6 = *(v5 + 20);
  v7 = byte_181A203AA[v6 & 0x3F];
  if ((v7 - 1) < 2)
  {
LABEL_5:
    if ((v6 & 2) != 0 && *(v5 + 22) == 1)
    {
      v8 = *(v5 + 16);
      if (!a1)
      {
        return;
      }

      goto LABEL_22;
    }

    if ((v6 & 0x10) == 0)
    {
      if (v6)
      {
        v8 = 0;
        if (!a1)
        {
          return;
        }
      }

      else
      {
        v8 = sub_18193CB44(v5, 1, a3, a4);
        if (!a1)
        {
          return;
        }
      }

      goto LABEL_22;
    }

    v8 = *(v5 + 16);
    if ((v6 & 0x400) != 0)
    {
      v8 += *v5;
    }

    if (a1)
    {
LABEL_22:
      v9 = *a1;
      if ((*(*a1 + 20) & 0x9000) != 0)
      {

        sub_18193D288(v9, v8);
        return;
      }

      *v9 = v8;
      v11 = 4;
LABEL_32:
      *(v9 + 20) = v11;
      return;
    }

    return;
  }

  if (v7 != 3)
  {
    if (v7 == 4)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (!a1)
    {
      return;
    }

    v9 = *a1;
    if ((*(*a1 + 20) & 0x9000) == 0)
    {
      v11 = 1;
      goto LABEL_32;
    }

    sub_18193CA54(v9);
    return;
  }

  if ((~v6 & 0x202) != 0 || *(v5 + 22) != 1)
  {
    if (v6)
    {
      return;
    }

    v10 = sub_18193CB70(v5, 1, a3, a4);
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *(v5 + 8);
    if (!v10)
    {
      return;
    }
  }

  v12 = *v10;
  if (*v10)
  {
    v13 = v10;
    do
    {
      v14 = v12;
      v15 = *++v13;
      v12 = v15;
      if (v14 >= 0xC0)
      {
        while ((v12 & 0xC0) == 0x80)
        {
          v16 = *++v13;
          v12 = v16;
          LODWORD(v10) = v10 + 1;
        }
      }
    }

    while (v12);
  }

  else
  {
    LODWORD(v13) = v10;
  }

  if (a1)
  {
    v8 = v13 - v10;
    goto LABEL_22;
  }
}

void sub_18198E828(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  if (!*a3)
  {
    sub_1819012D0(99877);
    goto LABEL_9;
  }

  v6 = *(v5 + 20);
  v7 = byte_181A203AA[v6 & 0x3F];
  if ((v7 - 1) < 2)
  {
    v10 = *a1;
    v11 = *(*(*a1 + 24) + 100);
    if ((v6 & 2) != 0 && *(v5 + 22) == 1)
    {
      v12 = *(v5 + 16);
    }

    else if ((v6 & 0x10) != 0)
    {
      v12 = *(v5 + 16);
      if ((*(v5 + 20) & 0x400) != 0)
      {
        v12 += *v5;
      }
    }

    else if (v6)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_18193CB44(v5, 1, a3, a4);
      v10 = *a1;
    }

    v16 = v12 << (v11 > 1);
    if ((*(v10 + 20) & 0x9000) == 0)
    {
      *v10 = v16;
      *(v10 + 20) = 4;
      return;
    }

    v9 = v10;
    goto LABEL_51;
  }

  if (v7 == 3)
  {
    v13 = *(v5 + 22);
    if (v13 > 1)
    {
      if ((v6 & 2) == 0)
      {
        if ((v6 & 0x10) == 0)
        {
          if ((v6 & 1) == 0)
          {
            v15 = 2;
            goto LABEL_30;
          }

LABEL_57:
          v8 = 0;
          if (!a1)
          {
            return;
          }

          goto LABEL_50;
        }

LABEL_45:
        v8 = *(v5 + 16);
        if ((*(v5 + 20) & 0x400) == 0)
        {
          goto LABEL_49;
        }

        v8 += *v5;
        if (!a1)
        {
          return;
        }

LABEL_50:
        v9 = *a1;
        v16 = v8;
        if ((*(*a1 + 20) & 0x9000) != 0)
        {
LABEL_51:

          sub_18193D288(v9, v16);
          return;
        }

        *v9 = v8;
        v14 = 4;
LABEL_55:
        *(v9 + 20) = v14;
        return;
      }
    }

    else if ((v6 & 2) == 0 || v13 != 1)
    {
      if ((v6 & 0x10) == 0)
      {
        if ((v6 & 1) == 0)
        {
LABEL_29:
          v15 = 1;
LABEL_30:
          v8 = sub_18193CB44(v5, v15, a3, a4);
          goto LABEL_49;
        }

        goto LABEL_57;
      }

      goto LABEL_45;
    }

    v8 = *(v5 + 16);
    if (!a1)
    {
      return;
    }

    goto LABEL_50;
  }

  if (v7 == 4)
  {
    if ((v6 & 2) != 0 && *(v5 + 22) == 1)
    {
      v8 = *(v5 + 16);
      goto LABEL_49;
    }

    if ((v6 & 0x10) != 0)
    {
      v8 = *(v5 + 16);
      if ((*(v5 + 20) & 0x400) != 0)
      {
        v8 += *v5;
      }
    }

    else
    {
      if ((v6 & 1) == 0)
      {
        goto LABEL_29;
      }

      v8 = 0;
    }

LABEL_49:
    if (!a1)
    {
      return;
    }

    goto LABEL_50;
  }

LABEL_9:
  if (!a1)
  {
    return;
  }

  v9 = *a1;
  if ((*(*a1 + 20) & 0x9000) == 0)
  {
    v14 = 1;
    goto LABEL_55;
  }

  sub_18193CA54(v9);
}

void sub_18198EA4C(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3, uint64_t a4)
{
  if (*a3)
  {
    v6 = byte_181A203AA[*(*a3 + 10) & 0x3F];
    v7 = a3[1];
    if (v7)
    {
LABEL_3:
      v8 = byte_181A203AA[*(v7 + 10) & 0x3F];
      goto LABEL_6;
    }
  }

  else
  {
    sub_1819012D0(99877);
    v6 = 0;
    v7 = a3[1];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  sub_1819012D0(99877);
  v8 = 0;
LABEL_6:
  if (v6 == 5 || v8 == 5)
  {
    return;
  }

  v10 = *a3;
  if (*a3)
  {
    v11 = v10[10];
    if ((v11 & 2) != 0 && *(v10 + 22) == 1)
    {
      v12 = *(v10 + 4);
      v13 = a3[1];
      if (!v13)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }

    if ((v11 & 0x10) != 0)
    {
      v12 = *(v10 + 4);
      if ((v10[10] & 0x400) != 0)
      {
        v12 += *v10;
      }

      v13 = a3[1];
      if (!v13)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }

    if ((v11 & 1) == 0)
    {
      v12 = sub_18193CB44(v10, 1, a3, a4);
      v13 = a3[1];
      if (!v13)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

  else
  {
    sub_1819012D0(93690);
  }

  v12 = 0;
  v13 = a3[1];
  if (!v13)
  {
LABEL_21:
    sub_1819012D0(93690);
    goto LABEL_48;
  }

LABEL_25:
  v14 = *(v13 + 10);
  if ((v14 & 2) != 0 && *(v13 + 22) == 1)
  {
    v15 = *(v13 + 4);
  }

  else if ((v14 & 0x10) != 0)
  {
    v15 = *(v13 + 4);
    if ((*(v13 + 10) & 0x400) != 0)
    {
      v15 += *v13;
    }
  }

  else
  {
    if (v14)
    {
      goto LABEL_48;
    }

    v15 = sub_18193CB44(v13, 1, a3, a4);
  }

  if (v15 < 1)
  {
LABEL_48:
    v20 = 0;
    v21 = 0;
    v22 = 1;
    if (a1)
    {
      goto LABEL_49;
    }

    goto LABEL_84;
  }

  v16 = v6 == 4 && v8 == 4;
  v17 = v16;
  if (v16)
  {
    v18 = sqlite3_value_blob(*a3);
    v19 = sqlite3_value_blob(a3[1]);
    if (v19)
    {
LABEL_43:
      v20 = 0;
      v21 = 0;
      if (v12 && !v18)
      {
        goto LABEL_83;
      }

      goto LABEL_45;
    }

LABEL_81:
    v20 = 0;
    goto LABEL_82;
  }

  v24 = *a3;
  if (v6 != 4 && v8 != 4)
  {
    if (!v24)
    {
      goto LABEL_73;
    }

    v30 = *(v24 + 10);
    if ((~v30 & 0x202) == 0 && *(v24 + 22) == 1)
    {
      v18 = *(v24 + 1);
      goto LABEL_74;
    }

    if (v30)
    {
LABEL_73:
      v18 = 0;
    }

    else
    {
      v18 = sub_18193CB70(v24, 1, a3, a4);
    }

LABEL_74:
    v32 = a3[1];
    if (v32)
    {
      v33 = *(v32 + 10);
      if ((~v33 & 0x202) != 0 || *(v32 + 22) != 1)
      {
        if (v33)
        {
          goto LABEL_81;
        }

        v19 = sub_18193CB70(v32, 1, a3, a4);
        if (!v19)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v19 = *(v32 + 1);
        if (!v19)
        {
          goto LABEL_81;
        }
      }

      goto LABEL_43;
    }

    goto LABEL_81;
  }

  v26 = sqlite3_value_dup(v24);
  v20 = v26;
  if (!v26)
  {
    goto LABEL_82;
  }

  v29 = *(v26 + 10);
  if ((~v29 & 0x202) == 0 && *(v26 + 22) == 1)
  {
    v18 = *(v26 + 1);
    goto LABEL_67;
  }

  if (v29)
  {
LABEL_82:
    v21 = 0;
LABEL_83:
    sqlite3_result_error_nomem(a1);
    goto LABEL_84;
  }

  v18 = sub_18193CB70(v26, 1, v27, v28);
LABEL_67:
  if (!v18)
  {
    goto LABEL_82;
  }

  v31 = *(v20 + 20);
  if ((v31 & 2) != 0 && *(v20 + 22) == 1)
  {
    v12 = *(v20 + 16);
  }

  else if ((v31 & 0x10) != 0)
  {
    v12 = *(v20 + 16);
    if ((*(v20 + 20) & 0x400) != 0)
    {
      v12 += *v20;
    }
  }

  else if (v31)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_18193CB44(v20, 1, v27, v28);
  }

  v40 = sqlite3_value_dup(a3[1]);
  v21 = v40;
  if (!v40)
  {
    goto LABEL_83;
  }

  v43 = *(v40 + 10);
  if ((~v43 & 0x202) != 0 || *(v40 + 22) != 1)
  {
    if (v43)
    {
      goto LABEL_83;
    }

    v19 = sub_18193CB70(v40, 1, v41, v42);
  }

  else
  {
    v19 = *(v40 + 1);
  }

  if (!v19)
  {
    goto LABEL_83;
  }

  v44 = *(v21 + 20);
  if ((v44 & 2) != 0 && *(v21 + 22) == 1)
  {
    v15 = *(v21 + 16);
  }

  else if ((v44 & 0x10) != 0)
  {
    v15 = *(v21 + 16);
    if ((*(v21 + 20) & 0x400) != 0)
    {
      v15 += *v21;
    }
  }

  else if (v44)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_18193CB44(v21, 1, v41, v42);
  }

LABEL_45:
  if (v15 <= v12)
  {
    v35 = *v19;
    v36 = 1;
    while (*v18 != v35 || memcmp(v18, v19, v15))
    {
      ++v36;
      v38 = v18 + 1;
      v37 = v12 + 1;
      while (1)
      {
        v18 = v38;
        v39 = v37;
        if (v17)
        {
          break;
        }

        ++v38;
        --v37;
        if ((*v18 & 0xC0) != 0x80)
        {
          goto LABEL_99;
        }
      }

      v37 = v12;
LABEL_99:
      v12 = v39 - 2;
      if (v15 >= v37)
      {
        v36 = 0;
        break;
      }
    }

    v22 = v36;
    if (!a1)
    {
      goto LABEL_84;
    }

    goto LABEL_49;
  }

  v22 = 0;
  if (a1)
  {
LABEL_49:
    v23 = *a1;
    if ((*(*a1 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v23, v22);
    }

    else
    {
      *v23 = v22;
      *(v23 + 20) = 4;
    }
  }

LABEL_84:
  if (v20)
  {
    if ((*(v20 + 20) & 0x9000) != 0 || *(v20 + 32))
    {
      sub_18193CA00(v20);
    }

    sub_181929C84(*(v20 + 24), v20);
  }

  if (v21)
  {
    if ((*(v21 + 20) & 0x9000) != 0 || *(v21 + 32))
    {
      sub_18193CA00(v21);
    }

    v34 = *(v21 + 24);

    sub_181929C84(v34, v21);
  }
}

void sub_18198EF44(uint64_t a1, int a2, int **a3, uint64_t a4)
{
  v22 = 0x20000000000;
  if (a1)
  {
    v4 = *(*a1 + 24);
    v5 = a2 - 1;
    if (a2 < 1)
    {
      return;
    }
  }

  else
  {
    v4 = 0;
    v5 = a2 - 1;
    if (a2 < 1)
    {
      return;
    }
  }

  v6 = *a3;
  if (!*a3)
  {
    return;
  }

  v7 = *(v6 + 10);
  if ((~v7 & 0x202) != 0 || *(v6 + 22) != 1)
  {
    if (v7)
    {
      return;
    }

    v9 = a1;
    v10 = a3;
    v11 = sub_18193CB70(*a3, 1, a3, a4);
    a3 = v10;
    v8 = v11;
    a1 = v9;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *(v6 + 1);
    if (!v8)
    {
      return;
    }
  }

  v12 = a1;
  v23[0] = v5;
  v23[1] = 0;
  v24 = a3 + 1;
  v13 = *(v4 + 136);
  v18 = v4;
  v19 = 0;
  v20 = 0;
  v21 = v13;
  sqlite3_str_appendf(&v18, v8, v23);
  v14 = v22;
  if (!v19 || (v19[v22] = 0, !v21) || (v22 & 0x40000000000) != 0)
  {
    v15 = v19;
    if (!v12)
    {
      goto LABEL_16;
    }

LABEL_22:
    sub_18190B23C(v12, v15, v14, 1, sub_181916CE4);
    return;
  }

  v15 = sub_18192A12C(&v18);
  if (v12)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (v15[103])
  {
    v16 = *(v15 + 55);
    if (!v16)
    {
      v15[103] = 0;
      *(v15 + 106) = 0;
      v17 = *(v15 + 108) - 1;
      *(v15 + 108) = v17;
      if (!v17)
      {
        LOWORD(v16) = *(v15 + 219);
      }

      *(v15 + 218) = v16;
    }
  }
}

void sub_18198F0AC(uint64_t *a1, uint64_t a2, int **a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3)
  {
    v5 = *(v4 + 10);
    if ((~v5 & 0x202) != 0 || *(v4 + 22) != 1)
    {
      if (v5)
      {
        return;
      }

      v7 = a1;
      v6 = sub_18193CB70(*a3, 1, a3, a4);
      a1 = v7;
      if (!v6)
      {
        return;
      }
    }

    else
    {
      v6 = *(v4 + 1);
      if (!v6)
      {
        return;
      }
    }

    v8 = *v6;
    if (*v6)
    {
      if (v8 >= 0xC0)
      {
        v8 = byte_181A20D3A[v8 - 192];
        v9 = v6[1];
        if ((v9 & 0xC0) == 0x80)
        {
          v10 = v6 + 2;
          do
          {
            v8 = v9 & 0x3F | (v8 << 6);
            v11 = *v10++;
            v9 = v11;
          }

          while ((v11 & 0xC0) == 0x80);
        }

        if (v8 < 0x80 || v8 >> 1 == 0x7FFF || v8 >> 11 == 27)
        {
          v8 = 65533;
        }
      }

      if (a1)
      {
        v14 = *a1;
        if ((*(v14 + 20) & 0x9000) != 0)
        {

          sub_18193D288(v14, v8);
        }

        else
        {
          *v14 = v8;
          *(v14 + 20) = 4;
        }
      }
    }
  }
}

void sub_18198F1C8(sqlite3_context *a1, int a2, uint64_t *a3)
{
  LODWORD(i) = a2;
  if (sqlite3_initialize() || (v6 = sub_181902484(((4 * i) | 1), 3917743400)) == 0)
  {

    sqlite3_result_error_nomem(a1);
  }

  else
  {
    v7 = v6;
    v8 = v6;
    if (i >= 1)
    {
      v8 = v6;
      for (i = i; i; --i)
      {
        v9 = *a3;
        if (!*a3)
        {
          sub_1819012D0(92237);
LABEL_17:
          *v8++ = 0;
          goto LABEL_9;
        }

        v10 = *(v9 + 20);
        if ((v10 & 0x24) != 0)
        {
          v11 = *v9;
        }

        else if ((v10 & 8) != 0)
        {
          if (fabs(*v9) > 9.22337204e18)
          {
LABEL_14:
            LODWORD(v12) = 65533;
LABEL_15:
            *v8 = (v12 >> 12) | 0xE0;
            v8[1] = (v12 >> 6) & 0x3F | 0x80;
            v8[2] = v12 & 0x3F | 0x80;
            v8 += 3;
            goto LABEL_9;
          }

          *&v11 = *v9;
        }

        else
        {
          if ((v10 & 0x12) == 0)
          {
            goto LABEL_17;
          }

          v12 = *(v9 + 8);
          if (!v12)
          {
            goto LABEL_8;
          }

          v11 = COERCE_DOUBLE(sub_18193CFCC(v9));
        }

        if (*&v11 >> 16 > 0x10uLL)
        {
          goto LABEL_14;
        }

        LODWORD(v12) = LODWORD(v11) & 0x1FFFFF;
        if ((LODWORD(v11) & 0x1FFFFFu) > 0x7F)
        {
          if (v12 <= 0x7FF)
          {
            *v8 = (LODWORD(v11) >> 6) | 0xC0;
            v8[1] = LOBYTE(v11) & 0x3F | 0x80;
            v8 += 2;
            goto LABEL_9;
          }

          if (WORD1(v12))
          {
            *v8 = (LODWORD(v11) >> 18) | 0xF0;
            v8[1] = (LODWORD(v11) >> 12) & 0x3F | 0x80;
            v8[2] = (LODWORD(v11) >> 6) & 0x3F | 0x80;
            v8[3] = LOBYTE(v11) & 0x3F | 0x80;
            v8 += 4;
            goto LABEL_9;
          }

          goto LABEL_15;
        }

LABEL_8:
        *v8++ = v12;
LABEL_9:
        ++a3;
      }
    }

    *v8 = 0;

    sqlite3_result_text64(a1, v7, v8 - v7, sqlite3_free, 1u);
  }
}

void sub_18198F3D8(_DWORD *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    sub_1819012D0(99877);
    v4 = *a3;
    if (!*a3)
    {
      sub_1819012D0(92272);
      goto LABEL_20;
    }

LABEL_10:
    v9 = *(v4 + 20);
    if ((v9 & 8) != 0)
    {
      v10 = *v4;
      goto LABEL_23;
    }

    if ((v9 & 0x24) != 0)
    {
      v10 = *v4;
      goto LABEL_23;
    }

    if ((v9 & 0x12) != 0)
    {
      v10 = sub_18193CF90(v4);
LABEL_23:
      if (v10 >= 0.0)
      {
        v12 = v10;
      }

      else
      {
        v12 = -v10;
      }

      if (a1)
      {
        v13 = *a1;
        if ((*(v13 + 20) & 0x9000) != 0)
        {
          sub_18193CA54(v13);
        }

        else
        {
          *(v13 + 20) = 1;
        }

        *v13 = v12;
        *(v13 + 20) = 8;
      }

      else
      {

        sub_1819012D0(100067);
      }

      return;
    }

LABEL_20:
    v10 = 0.0;
    goto LABEL_23;
  }

  v5 = *(v4 + 20);
  v6 = byte_181A203AA[v5 & 0x3F];
  if (v6 != 5)
  {
    if (v6 == 1)
    {
      if ((v5 & 0x24) != 0)
      {
        v7 = *v4;
        goto LABEL_6;
      }

      if ((v5 & 8) != 0)
      {
        v14 = *v4;
        if (*v4 < -9.22337204e18)
        {
LABEL_41:
          if (a1)
          {
            a1[9] = 1;
            v15 = *a1;

            sub_1818900D0(v15, "integer overflow", -1, 1, 0xFFFFFFFFFFFFFFFFLL);
          }

          return;
        }

        if (v14 <= 9.22337204e18)
        {
          v7 = v14;
LABEL_6:
          if ((v7 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

          if (v7 != 0x8000000000000000)
          {
            v7 = -v7;
            goto LABEL_48;
          }

          goto LABEL_41;
        }

        v7 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        if ((v5 & 0x12) != 0 && *(v4 + 8))
        {
          v7 = sub_18193CFCC(v4);
          goto LABEL_6;
        }

        v7 = 0;
      }

LABEL_48:
      if (a1)
      {
        v16 = *a1;
        if ((*(*a1 + 20) & 0x9000) != 0)
        {

          sub_18193D288(v16, v7);
        }

        else
        {
          *v16 = v7;
          *(v16 + 20) = 4;
        }
      }

      return;
    }

    goto LABEL_10;
  }

  if (a1)
  {
    v11 = *a1;
    if ((*(*a1 + 20) & 0x9000) != 0)
    {

      sub_18193CA54(v11);
    }

    else
    {
      *(v11 + 20) = 1;
    }
  }
}

void sub_18198F664(sqlite3_context *a1, int a2, uint64_t *a3)
{
  if (a2 != 2)
  {
    v6 = 0;
    v7 = *a3;
    if (!*a3)
    {
      goto LABEL_25;
    }

LABEL_6:
    if ((0xAAAAAAAAAAAAAAAALL >> *(v7 + 20)))
    {
      return;
    }

    goto LABEL_26;
  }

  v5 = a3[1];
  if (v5)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(v5 + 20)))
    {
      return;
    }
  }

  else
  {
    sub_1819012D0(99877);
    v5 = a3[1];
    if (!v5)
    {
      sub_1819012D0(92237);
LABEL_16:
      v9 = 0;
      goto LABEL_22;
    }
  }

  v8 = *(v5 + 20);
  if ((v8 & 0x24) != 0)
  {
    v9 = *v5;
    goto LABEL_22;
  }

  if ((v8 & 8) == 0)
  {
    if ((v8 & 0x12) != 0 && *(v5 + 8))
    {
      v9 = sub_18193CFCC(v5);
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v10 = *v5;
  if (*v5 >= -9.22337204e18)
  {
    if (v10 <= 9.22337204e18)
    {
      v9 = v10;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v9 = 0x8000000000000000;
  }

LABEL_22:
  v11 = 30;
  if (v9 < 30)
  {
    v11 = v9;
  }

  v6 = v11 & ~(v11 >> 63);
  v7 = *a3;
  if (*a3)
  {
    goto LABEL_6;
  }

LABEL_25:
  sub_1819012D0(99877);
  v7 = *a3;
  if (!*a3)
  {
    sub_1819012D0(92272);
    goto LABEL_33;
  }

LABEL_26:
  v12 = *(v7 + 20);
  if ((v12 & 8) != 0)
  {
    v13 = *v7;
    goto LABEL_34;
  }

  if ((v12 & 0x24) != 0)
  {
    v13 = *v7;
    goto LABEL_34;
  }

  if ((v12 & 0x12) != 0)
  {
    v13 = sub_18193CF90(v7);
    goto LABEL_34;
  }

LABEL_33:
  v13 = 0.0;
LABEL_34:
  v20 = v13;
  if (fabs(v13) > 4.50359963e15)
  {
    goto LABEL_44;
  }

  if (!v6)
  {
    v19 = 0.5;
    if (v13 < 0.0)
    {
      v19 = -0.5;
    }

    v13 = (v13 + v19);
    if (a1)
    {
      goto LABEL_45;
    }

LABEL_52:

    sub_1819012D0(100067);
    return;
  }

  v14 = sqlite3_mprintf("%!.*f", v6, *&v13);
  if (v14)
  {
    v15 = v14;
    v16 = strlen(v14);
    sub_1818E6334(v15, &v20, v16 & 0x3FFFFFFF, 1);
    v17 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v15);
      --qword_1ED456A90;
      off_1ED452EB0(v15);
      v15 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_43;
      }

      v17 = &xmmword_1ED452F28;
    }

    (*v17)(v15);
LABEL_43:
    v13 = v20;
LABEL_44:
    if (a1)
    {
LABEL_45:
      v18 = *a1;
      if ((*(v18 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v18);
      }

      else
      {
        *(v18 + 20) = 1;
      }

      *v18 = v13;
      *(v18 + 20) = 8;
      return;
    }

    goto LABEL_52;
  }

  sqlite3_result_error_nomem(a1);
}

void sub_18198F99C(sqlite3_context *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  if (!*a3)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v6 = *(v5 + 20);
  if ((~v6 & 0x202) == 0 && *(v5 + 22) == 1)
  {
    v7 = *(v5 + 8);
    if ((v6 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((v6 & 1) == 0)
  {
    v7 = sub_18193CB70(v5, 1, a3, a4);
    v5 = *a3;
    if (*a3)
    {
      LOWORD(v6) = *(v5 + 20);
      if ((v6 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

LABEL_11:
    sub_1819012D0(93690);
    v9 = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_24;
  }

  v7 = 0;
  if ((v6 & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (*(v5 + 22) == 1)
  {
    v9 = *(v5 + 16);
    if (!v7)
    {
      return;
    }

    goto LABEL_24;
  }

LABEL_17:
  if ((v6 & 0x10) != 0)
  {
    v9 = *(v5 + 16);
    if ((v6 & 0x400) != 0)
    {
      v9 += *v5;
    }

    if (!v7)
    {
      return;
    }
  }

  else if (v6)
  {
    v9 = 0;
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v9 = sub_18193CB44(v5, 1, a3, a4);
    if (!v7)
    {
      return;
    }
  }

LABEL_24:
  if (a1)
  {
    v10 = *a1;
    if (v9 >= *(*(*a1 + 24) + 136))
    {
      *(a1 + 9) = 18;

      sub_1818900D0(v10, "string or blob too big", -1, 1, 0);
      return;
    }
  }

  else if (v9 >= MEMORY[0x88])
  {
    return;
  }

  v11 = sub_181902484(v9 + 1, 3621441365);
  if (v11)
  {
    v12 = v11;
    if (v9 >= 1)
    {
      v13 = v9;
      v14 = v11;
      do
      {
        v15 = *v7++;
        *v14++ = v15 & (~byte_181A204C8[v15] | 0xDF);
        --v13;
      }

      while (v13);
    }

    if (a1)
    {

      sub_18190B23C(a1, v11, v9, 1, sqlite3_free);
      return;
    }

    v16 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_48;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v12);
    --qword_1ED456A90;
    off_1ED452EB0(v12);
    v12 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v16 = &xmmword_1ED452F28;
LABEL_48:
      v17 = *v16;

      v17(v12);
    }
  }

  else
  {

    sqlite3_result_error_nomem(a1);
  }
}

void sub_18198FC50(sqlite3_context *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  if (!*a3)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v6 = *(v5 + 20);
  if ((~v6 & 0x202) == 0 && *(v5 + 22) == 1)
  {
    v7 = *(v5 + 8);
    if ((v6 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((v6 & 1) == 0)
  {
    v7 = sub_18193CB70(v5, 1, a3, a4);
    v5 = *a3;
    if (*a3)
    {
      LOWORD(v6) = *(v5 + 20);
      if ((v6 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

LABEL_11:
    sub_1819012D0(93690);
    v9 = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_24;
  }

  v7 = 0;
  if ((v6 & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (*(v5 + 22) == 1)
  {
    v9 = *(v5 + 16);
    if (!v7)
    {
      return;
    }

    goto LABEL_24;
  }

LABEL_17:
  if ((v6 & 0x10) != 0)
  {
    v9 = *(v5 + 16);
    if ((v6 & 0x400) != 0)
    {
      v9 += *v5;
    }

    if (!v7)
    {
      return;
    }
  }

  else if (v6)
  {
    v9 = 0;
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v9 = sub_18193CB44(v5, 1, a3, a4);
    if (!v7)
    {
      return;
    }
  }

LABEL_24:
  if (a1)
  {
    v10 = *a1;
    if (v9 >= *(*(*a1 + 24) + 136))
    {
      *(a1 + 9) = 18;

      sub_1818900D0(v10, "string or blob too big", -1, 1, 0);
      return;
    }
  }

  else if (v9 >= MEMORY[0x88])
  {
    return;
  }

  v11 = sub_181902484(v9 + 1, 3621441365);
  if (v11)
  {
    v12 = v11;
    if (v9 >= 1)
    {
      v13 = v9;
      v14 = v11;
      do
      {
        v15 = *v7++;
        *v14++ = byte_181A20298[v15];
        --v13;
      }

      while (v13);
    }

    if (a1)
    {

      sub_18190B23C(a1, v11, v9, 1, sqlite3_free);
      return;
    }

    v16 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_48;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v12);
    --qword_1ED456A90;
    off_1ED452EB0(v12);
    v12 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v16 = &xmmword_1ED452F28;
LABEL_48:
      v17 = *v16;

      v17(v12);
    }
  }

  else
  {

    sqlite3_result_error_nomem(a1);
  }
}

void sub_18198FEF8(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v7 = sqlite3_value_blob(*a3);
  v8 = *a3;
  if (!*a3)
  {
    sub_1819012D0(93690);
    goto LABEL_11;
  }

  v9 = *(v8 + 10);
  if ((v9 & 2) == 0 || *(v8 + 22) != 1)
  {
    if ((v9 & 0x10) != 0)
    {
      v10 = *(v8 + 4);
      if ((*(v8 + 10) & 0x400) != 0)
      {
        v10 += *v8;
      }

      v11 = 2 * v10;
      if (a1)
      {
        goto LABEL_17;
      }

LABEL_12:
      if (v11 >= MEMORY[0x88])
      {
        return;
      }

      goto LABEL_18;
    }

    if ((v9 & 1) == 0)
    {
      v10 = sub_18193CB44(v8, 1, v5, v6);
      v11 = 2 * v10;
      if (a1)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_11:
    v10 = 0;
    v11 = 0;
    if (!a1)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v10 = *(v8 + 4);
  v11 = 2 * v10;
  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_17:
  v12 = *a1;
  if (v11 < *(*(*a1 + 24) + 136))
  {
LABEL_18:
    v13 = sub_181902484((2 * v10) | 1, 3621441365);
    if (v13)
    {
      v14 = v13;
      if (v10 >= 1)
      {
        v15 = v13;
        do
        {
          v16 = *v7++;
          *v15 = a0123456789abcd_2[v16 >> 4];
          v14 = v15 + 2;
          v15[1] = a0123456789abcd_2[v16 & 0xF];
          v15 += 2;
          --v10;
        }

        while (v10);
      }

      *v14 = 0;

      sqlite3_result_text64(a1, v13, v14 - v13, sqlite3_free, 1u);
    }

    else
    {

      sqlite3_result_error_nomem(a1);
    }

    return;
  }

  *(a1 + 9) = 18;

  sub_1818900D0(v12, "string or blob too big", -1, 1, 0);
}

void sub_1819900D4(sqlite3_context *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  if (!*a3)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v8 = *(v7 + 20);
  if ((~v8 & 0x202) == 0 && *(v7 + 22) == 1)
  {
    v9 = *(v7 + 8);
    if ((v8 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v8)
  {
    v9 = 0;
    if ((v8 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v9 = sub_18193CB70(v7, 1, a3, a4);
  v7 = *a3;
  if (!*a3)
  {
LABEL_11:
    sub_1819012D0(93690);
    goto LABEL_12;
  }

  LOWORD(v8) = *(v7 + 20);
  if ((v8 & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (*(v7 + 22) == 1)
  {
    v10 = *(v7 + 16);
    if (a2 == 2)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

LABEL_19:
  if ((v8 & 0x10) == 0)
  {
    if ((v8 & 1) == 0)
    {
      v10 = sub_18193CB44(v7, 1, a3, a4);
      if (a2 == 2)
      {
        goto LABEL_26;
      }

LABEL_13:
      v11 = 0;
      v12 = &byte_181A2878D;
      if (!v9)
      {
        return;
      }

      goto LABEL_49;
    }

LABEL_12:
    v10 = 0;
    if (a2 == 2)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

  v10 = *(v7 + 16);
  if ((v8 & 0x400) != 0)
  {
    v10 += *v7;
  }

  if (a2 != 2)
  {
    goto LABEL_13;
  }

LABEL_26:
  v13 = a3[1];
  if (!v13)
  {
    v12 = 0;
    goto LABEL_36;
  }

  v14 = *(v13 + 20);
  if ((~v14 & 0x202) != 0 || *(v13 + 22) != 1)
  {
    if (v14)
    {
      v12 = 0;
      if ((v14 & 2) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      if (*(v13 + 22) == 1)
      {
        v11 = *(v13 + 16);
        if (!v9)
        {
          return;
        }

        goto LABEL_49;
      }

      goto LABEL_42;
    }

    v12 = sub_18193CB70(v13, 1, a3, a4);
    v13 = a3[1];
    if (v13)
    {
      LOWORD(v14) = *(v13 + 20);
      if ((v14 & 2) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

LABEL_36:
    sub_1819012D0(93690);
    v11 = 0;
    if (!v9)
    {
      return;
    }

    goto LABEL_49;
  }

  v12 = *(v13 + 8);
  if ((v14 & 2) != 0)
  {
    goto LABEL_39;
  }

LABEL_42:
  if ((v14 & 0x10) != 0)
  {
    v11 = *(v13 + 16);
    if ((v14 & 0x400) != 0)
    {
      v11 += *v13;
    }

    if (!v9)
    {
      return;
    }
  }

  else if (v14)
  {
    v11 = 0;
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v11 = sub_18193CB44(v13, 1, a3, a4);
    if (!v9)
    {
      return;
    }
  }

LABEL_49:
  if (!v12)
  {
    return;
  }

  v15 = v10 / 2;
  if (a1)
  {
    v16 = *a1;
    if (*(*(*a1 + 24) + 136) <= v15)
    {
      *(a1 + 9) = 18;
      sub_1818900D0(v16, "string or blob too big", -1, 1, 0);
      v17 = 0;
      LODWORD(v18) = 0;
LABEL_99:
      if (((v18 - v17) & 0x80000000) == 0)
      {

        sub_18190B23C(a1, v17, v18 - v17, 0, sqlite3_free);
        return;
      }

LABEL_104:
      if (v17)
      {
        v38 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v17);
          --qword_1ED456A90;
          off_1ED452EB0(v17);
          v17 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_111;
          }

          v38 = &xmmword_1ED452F28;
        }

        (*v38)(v17);
      }

LABEL_111:
      if (a1)
      {
        *(a1 + 9) = 18;
        v39 = *a1;

        sub_1818900D0(v39, "string or blob too big", -1, 1, 0);
      }

      return;
    }
  }

  else if (MEMORY[0x88] <= v15)
  {
    return;
  }

  v19 = sub_181902484(v15 + 1, 3621441365);
  v17 = v19;
  if (!v19)
  {
    sqlite3_result_error_nomem(a1);
    LODWORD(v18) = 0;
LABEL_98:
    if (!a1)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

  LOBYTE(v20) = *v9;
  if (!*v9)
  {
    LODWORD(v18) = v19;
    if (!a1)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

  v18 = v19;
LABEL_57:
  while (1)
  {
    v21 = v9 + 1;
    if ((byte_181A204C8[v20] & 8) == 0)
    {
      break;
    }

    v34 = *v21;
    if ((byte_181A204C8[v34] & 8) == 0)
    {
      goto LABEL_89;
    }

    *v18++ = ((((2 * v34) >> 7) & 0xF9) + v34) & 0xF | (16 * ((((2 * v20) >> 7) & 0xF9) + v20));
    v35 = v9[2];
    v9 += 2;
    LOBYTE(v20) = v35;
    if (!v35)
    {
      goto LABEL_98;
    }
  }

  v20 = v20;
  if (v20 >= 0xC0u)
  {
    v20 = byte_181A20D3A[v20 - 192];
    v22 = *v21;
    if ((*v21 & 0xC0) == 0x80)
    {
      do
      {
        v23 = *++v21;
        v20 = v22 & 0x3F | (v20 << 6);
        v22 = v23;
      }

      while ((v23 & 0xC0) == 0x80);
    }

    if (v20 < 0x80 || v20 >> 1 == 0x7FFF || v20 >> 11 == 27)
    {
      v20 = 65533;
    }
  }

  v9 = v21;
  v26 = v12;
  while (v26 < &v12[v11])
  {
    v30 = *v26++;
    v29 = v30;
    v31 = v30 - 192;
    if (v30 >= 0xC0)
    {
      v29 = byte_181A20D3A[v31];
      v32 = *v26;
      if ((*v26 & 0xC0) == 0x80)
      {
        do
        {
          v33 = *++v26;
          v29 = v32 & 0x3F | (v29 << 6);
          v32 = v33;
        }

        while ((v33 & 0xC0) == 0x80);
      }

      if (v29 < 0x80 || v29 >> 1 == 0x7FFF || v29 >> 11 == 27)
      {
        v29 = 65533;
      }
    }

    if (v29 == v20)
    {
      LOBYTE(v20) = *v9;
      if (*v9)
      {
        goto LABEL_57;
      }

      goto LABEL_98;
    }
  }

LABEL_89:
  v36 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_94;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v17);
  --qword_1ED456A90;
  off_1ED452EB0(v17);
  v17 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v36 = &xmmword_1ED452F28;
LABEL_94:
    v37 = *v36;

    v37(v17);
  }
}

void sub_181990664(sqlite3_context *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  if (!*a3)
  {
    sub_1819012D0(93690);
    goto LABEL_11;
  }

  v8 = *(v7 + 20);
  if ((v8 & 2) == 0 || *(v7 + 22) != 1)
  {
    if ((v8 & 0x10) != 0)
    {
      v9 = *(v7 + 16);
      if ((*(v7 + 20) & 0x400) != 0)
      {
        v9 = (*v7 + v9);
      }

      v10 = *a3;
      if (!*a3)
      {
        return;
      }

      goto LABEL_16;
    }

    if ((v8 & 1) == 0)
    {
      v9 = sub_18193CB44(v7, 1, a3, a4);
      v10 = *a3;
      if (!*a3)
      {
        return;
      }

      goto LABEL_16;
    }

LABEL_11:
    v9 = 0;
    v10 = *a3;
    if (!*a3)
    {
      return;
    }

    goto LABEL_16;
  }

  v9 = *(v7 + 16);
  v10 = *a3;
  if (!*a3)
  {
    return;
  }

LABEL_16:
  v11 = *(v10 + 20);
  if ((~v11 & 0x202) != 0 || *(v10 + 22) != 1)
  {
    if (v11)
    {
      return;
    }

    v12 = sub_18193CB70(v10, 1, a3, a4);
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = *(v10 + 8);
    if (!v12)
    {
      return;
    }
  }

  sub_181994C1C(a1, a2 - 1, a3 + 1, v9, v12);
}

void sub_181990780(uint64_t *a1)
{
  __buf = 0;
  sqlite3_initialize();
  arc4random_buf(&__buf, 8uLL);
  v2 = __buf;
  if (__buf < 0)
  {
    v2 = -(__buf & 0x7FFFFFFFFFFFFFFFLL);
    __buf = v2;
  }

  if (a1)
  {
    v3 = *a1;
    if ((*(*a1 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v3, v2);
    }

    else
    {
      *v3 = v2;
      *(v3 + 20) = 4;
    }
  }
}

void sub_1819907FC(sqlite3_context *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    sub_1819012D0(92237);
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = *(v4 + 20);
  if ((v5 & 0x24) != 0)
  {
    v6 = *v4;
    goto LABEL_6;
  }

  if ((v5 & 8) != 0)
  {
    v13 = *v4;
    if (*v4 >= -9.22337204e18)
    {
      if (v13 <= 9.22337204e18)
      {
        v6 = v13;
      }

      else
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v6 = 0x8000000000000000;
    }

    goto LABEL_6;
  }

  if ((v5 & 0x12) == 0 || !*(v4 + 8))
  {
    goto LABEL_5;
  }

  v6 = sub_18193CFCC(v4);
LABEL_6:
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (a1)
  {
    v8 = *a1;
    if (v7 > *(*(*a1 + 24) + 136))
    {
      *(a1 + 9) = 18;

      sub_1818900D0(v8, "string or blob too big", -1, 1, 0);
      return;
    }
  }

  else if (v7 > MEMORY[0x88])
  {
    return;
  }

  v9 = sub_181902484(v7, 3621441365);
  if (v9)
  {
    v10 = v9;
    sqlite3_initialize();
    arc4random_buf(v10, v7);
    if (a1)
    {

      sub_18190B23C(a1, v10, v7, 0, sqlite3_free);
      return;
    }

    v11 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_33;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
    --qword_1ED456A90;
    off_1ED452EB0(v10);
    v10 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v11 = &xmmword_1ED452F28;
LABEL_33:
      v12 = *v11;

      v12(v10);
    }
  }

  else
  {

    sqlite3_result_error_nomem(a1);
  }
}

void sub_181990A48(uint64_t a1)
{
  if (a1)
  {
    sub_18190B23C(a1, "2025-06-12 13:14:41 f0ca7bba1c5e232e5d279fad6338121ab55af0c8c68c84cdfb18ba5114dcaapl", -1, 1, 0);
  }
}

void sub_181990A68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  if (!*a3)
  {
    sub_1819012D0(92237);
    goto LABEL_5;
  }

  v6 = *(v5 + 20);
  if ((v6 & 0x24) != 0)
  {
    v7 = *v5;
    goto LABEL_6;
  }

  if ((v6 & 8) == 0)
  {
    if ((v6 & 0x12) != 0 && *(v5 + 8))
    {
      LODWORD(v7) = sub_18193CFCC(v5);
      goto LABEL_6;
    }

LABEL_5:
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v10 = *v5;
  if (*v5 >= -9.22337204e18)
  {
    if (v10 <= 9.22337204e18)
    {
      *&v7 = v10;
    }

    else
    {
      LODWORD(v7) = -1;
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

LABEL_6:
  v8 = a3[1];
  if (v8)
  {
    v9 = *(v8 + 20);
    if ((~v9 & 0x202) != 0 || *(v8 + 22) != 1)
    {
      if (v9)
      {
        v8 = 0;
      }

      else
      {
        v8 = sub_18193CB70(v8, 1, a3, a4);
      }
    }

    else
    {
      v8 = *(v8 + 8);
    }
  }

  sqlite3_log(SLODWORD(v7), "%s", v8);
}

void sub_181990B74(sqlite3_context *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  if (!*a3)
  {
    return;
  }

  v6 = *(v5 + 20);
  if ((~v6 & 0x202) != 0 || *(v5 + 22) != 1)
  {
    if (v6)
    {
      return;
    }

    v8 = a3;
    v9 = sub_18193CB70(v5, 1, a3, a4);
    a3 = v8;
    v7 = v9;
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      return;
    }
  }

  v10 = *a3;
  if (!*a3)
  {
    sub_1819012D0(93690);
LABEL_18:
    v12 = 0;
    if (sqlite3_initialize())
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v11 = *(v10 + 20);
  if ((v11 & 2) != 0 && *(v10 + 22) == 1)
  {
    v12 = *(v10 + 16);
    if (!sqlite3_initialize())
    {
      goto LABEL_26;
    }

LABEL_23:

    sqlite3_result_error_nomem(a1);
    return;
  }

  if ((v11 & 0x10) != 0)
  {
    v12 = *(v10 + 16);
    if ((*(v10 + 20) & 0x400) != 0)
    {
      v12 += *v10;
    }

    if (sqlite3_initialize())
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (v11)
  {
    goto LABEL_18;
  }

  v12 = sub_18193CB44(v10, 1, a3, a4);
  if (sqlite3_initialize())
  {
    goto LABEL_23;
  }

LABEL_26:
  v13 = sub_181902484(v12 + 1, 596797734);
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v13;
  if (v12 < 1)
  {
    v15 = 0;
LABEL_102:
    v14[v15] = 0;

    sqlite3_result_text64(a1, v14, v15, sqlite3_free, 1u);
    return;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    while (1)
    {
      v17 = (v7 + v16);
      v18 = strchr(v17, 92);
      if (!v18)
      {
        memmove(&v14[v15], v17, v12 - v16);
        v15 += v12 - v16;
        goto LABEL_102;
      }

      v19 = v18 - v17;
      if (v18 - v17 >= 1)
      {
        memmove(&v14[v15], (v7 + v16), v19 & 0x7FFFFFFF);
        v15 += v19;
        v16 += v19;
      }

      v20 = (v7 + v16);
      v21 = v20[1];
      if (v21 != 92)
      {
        break;
      }

      v16 += 2;
      v14[v15++] = 92;
      if (v16 >= v12)
      {
        goto LABEL_102;
      }
    }

    if ((byte_181A204C8[v21] & 8) != 0)
    {
      break;
    }

    switch(v21)
    {
      case 'u':
        v57 = v20[2];
        if ((byte_181A204C8[v57] & 8) == 0)
        {
          goto LABEL_90;
        }

        v58 = v20[3];
        if ((byte_181A204C8[v58] & 8) == 0)
        {
          goto LABEL_90;
        }

        v59 = v20[4];
        if ((byte_181A204C8[v59] & 8) == 0)
        {
          goto LABEL_90;
        }

        v60 = v20[5];
        if ((byte_181A204C8[v60] & 8) == 0)
        {
          goto LABEL_90;
        }

        v61 = (((2 * v57) >> 7) & 9) + v57;
        v62 = ((((2 * v58) >> 7) & 0xF9) + v58) & 0xF | (16 * v61);
        v63 = (16 * (((((2 * v59) >> 7) & 0xF9) + v59) & 0xF)) | (v62 << 8);
        v64 = (16 * (((((2 * v59) >> 7) & 0xF9) + v59) & 0xF)) | ((((2 * v60) >> 7) & 0xF9) + v60) & 0xF;
        v65 = &v14[v15];
        if (v63 > 0x7F)
        {
          v66 = v64 & 0x3F | 0x80;
          if (v62 > 7u)
          {
            *v65 = v61 & 0xF | 0xE0;
            v65[1] = (v63 >> 6) & 0x3F | 0x80;
            v65[2] = v66;
            v34 = 3;
          }

          else
          {
            *v65 = (v63 >> 6) | 0xC0;
            v65[1] = v66;
            v34 = 2;
          }

          v16 += 6;
        }

        else
        {
          *v65 = v64;
          v34 = 1;
          v16 += 6;
        }

        break;
      case 'U':
        v43 = v20[2];
        if ((byte_181A204C8[v43] & 8) == 0)
        {
          goto LABEL_90;
        }

        v44 = v20[3];
        if ((byte_181A204C8[v44] & 8) == 0)
        {
          goto LABEL_90;
        }

        v45 = v20[4];
        if ((byte_181A204C8[v45] & 8) == 0)
        {
          goto LABEL_90;
        }

        v46 = v20[5];
        if ((byte_181A204C8[v46] & 8) == 0)
        {
          goto LABEL_90;
        }

        v47 = v20[6];
        if ((byte_181A204C8[v47] & 8) == 0)
        {
          goto LABEL_90;
        }

        v48 = v20[7];
        if ((byte_181A204C8[v48] & 8) == 0)
        {
          goto LABEL_90;
        }

        v49 = v20[8];
        if ((byte_181A204C8[v49] & 8) == 0)
        {
          goto LABEL_90;
        }

        v50 = v20[9];
        if ((byte_181A204C8[v50] & 8) == 0)
        {
          goto LABEL_90;
        }

        v51 = (16 * (((((2 * v45) >> 7) & 0xF9) + v45) & 0xF)) | ((((((2 * v44) >> 7) & 0xF9) + v44) & 0xF | (16 * ((((2 * v43) >> 7) & 0xF9) + v43))) << 8) | ((((2 * v46) >> 7) & 0xF9) + v46) & 0xF;
        v52 = (((2 * v47) >> 7) & 9) + v47;
        v53 = ((((2 * v48) >> 7) & 0xF9) + v48) & 0xF | (16 * ((((2 * v47) >> 7) & 9) + v47)) | (v51 << 8);
        v54 = (16 * (((((2 * v49) >> 7) & 0xF9) + v49) & 0xF)) | (v53 << 8);
        v55 = (16 * (((((2 * v49) >> 7) & 0xF9) + v49) & 0xF)) | ((((2 * v50) >> 7) & 0xF9) + v50) & 0xF;
        v56 = &v14[v15];
        if (v54 > 0x7F)
        {
          if (v53 > 7)
          {
            if (v51)
            {
              *v56 = (v51 >> 2) & 7 | 0xF0;
              v56[1] = (v53 >> 4) & 0x3F | 0x80;
              v56[2] = (v54 >> 6) & 0x3F | 0x80;
              v56[3] = v55 & 0x3F | 0x80;
              v34 = 4;
            }

            else
            {
              *v56 = v52 & 0xF | 0xE0;
              v56[1] = (v54 >> 6) & 0x3F | 0x80;
              v56[2] = v55 & 0x3F | 0x80;
              v34 = 3;
            }
          }

          else
          {
            *v56 = (v54 >> 6) | 0xC0;
            v56[1] = v55 & 0x3F | 0x80;
            v34 = 2;
          }
        }

        else
        {
          *v56 = v55;
          v34 = 1;
        }

        v16 += 10;
        break;
      case '+':
        v22 = v20[2];
        if ((byte_181A204C8[v22] & 8) == 0)
        {
          goto LABEL_90;
        }

        v23 = v20[3];
        if ((byte_181A204C8[v23] & 8) == 0)
        {
          goto LABEL_90;
        }

        v24 = v20[4];
        if ((byte_181A204C8[v24] & 8) == 0)
        {
          goto LABEL_90;
        }

        v25 = v20[5];
        if ((byte_181A204C8[v25] & 8) == 0)
        {
          goto LABEL_90;
        }

        v26 = v20[6];
        if ((byte_181A204C8[v26] & 8) == 0)
        {
          goto LABEL_90;
        }

        v27 = v20[7];
        if ((byte_181A204C8[v27] & 8) == 0)
        {
          goto LABEL_90;
        }

        v28 = ((((2 * v23) >> 7) & 0xF9) + v23) & 0xF | (16 * ((((2 * v22) >> 7) & 9) + v22));
        v29 = (((2 * v24) >> 7) & 9) + v24;
        v30 = ((((2 * v25) >> 7) & 0xF9) + v25) & 0xF | (16 * ((((2 * v24) >> 7) & 9) + v24)) | (v28 << 8);
        v31 = (16 * (((((2 * v26) >> 7) & 0xF9) + v26) & 0xF)) | (v30 << 8);
        v32 = (16 * (((((2 * v26) >> 7) & 0xF9) + v26) & 0xF)) | ((((2 * v27) >> 7) & 0xF9) + v27) & 0xF;
        v33 = &v14[v15];
        if (v31 > 0x7F)
        {
          if (v30 > 7)
          {
            v67 = (v31 >> 6) & 0x3F | 0x80;
            v68 = v32 & 0x3F | 0x80;
            if (v28)
            {
              *v33 = (v28 >> 2) & 7 | 0xF0;
              v33[1] = (v30 >> 4) & 0x3F | 0x80;
              v33[2] = v67;
              v33[3] = v68;
              v34 = 4;
            }

            else
            {
              *v33 = v29 & 0xF | 0xE0;
              v33[1] = v67;
              v33[2] = v68;
              v34 = 3;
            }

            v16 += 8;
          }

          else
          {
            *v33 = (v31 >> 6) | 0xC0;
            v33[1] = v32 & 0x3F | 0x80;
            v34 = 2;
            v16 += 8;
          }
        }

        else
        {
          *v33 = v32;
          v34 = 1;
          v16 += 8;
        }

        break;
      default:
        goto LABEL_90;
    }

LABEL_87:
    v15 += v34;
    if (v16 >= v12)
    {
      goto LABEL_102;
    }
  }

  v35 = v20[2];
  if ((byte_181A204C8[v35] & 8) != 0)
  {
    v36 = v20[3];
    if ((byte_181A204C8[v36] & 8) != 0)
    {
      v37 = v20[4];
      if ((byte_181A204C8[v37] & 8) != 0)
      {
        v38 = (((2 * v21) >> 7) & 9) + v21;
        v39 = ((((2 * v35) >> 7) & 0xF9) + v35) & 0xF | (16 * v38);
        v40 = (16 * (((((2 * v36) >> 7) & 0xF9) + v36) & 0xF)) | (v39 << 8);
        v41 = v40 & 0xF0 | ((((2 * v37) >> 7) & 0xF9) + v37) & 0xF;
        v42 = &v14[v15];
        if (v40 > 0x7F)
        {
          if (v39 > 7u)
          {
            *v42 = v38 & 0xF | 0xE0;
            v42[1] = (v40 >> 6) & 0x3F | 0x80;
            v42[2] = v41 & 0x3F | 0x80;
            v34 = 3;
          }

          else
          {
            *v42 = (v40 >> 6) | 0xC0;
            v42[1] = v41 & 0x3F | 0x80;
            v34 = 2;
          }

          v16 += 5;
        }

        else
        {
          *v42 = v41;
          v34 = 1;
          v16 += 5;
        }

        goto LABEL_87;
      }
    }
  }

LABEL_90:
  v69 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_95;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
  --qword_1ED456A90;
  off_1ED452EB0(v14);
  v14 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v69 = &xmmword_1ED452F28;
LABEL_95:
    (*v69)(v14);
  }

  if (a1)
  {
    *(a1 + 9) = 1;
    v70 = *a1;

    sub_1818900D0(v70, "invalid Unicode escape", -1, 1, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void sub_181991424(_DWORD *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v32 = 0u;
  v33 = 0u;
  if (!a1)
  {
    DWORD1(v33) = MEMORY[0x88];
    v7 = "%Q";
    v8 = *a3;
    if (*a3)
    {
      goto LABEL_6;
    }

LABEL_13:
    sub_1819012D0(99877);
    goto LABEL_14;
  }

  v5 = *(a1 + 1);
  v6 = *(*(*a1 + 24) + 136);
  *&v32 = *(*a1 + 24);
  DWORD1(v33) = v6;
  if (*(v5 + 8))
  {
    v7 = "%#Q";
  }

  else
  {
    v7 = "%Q";
  }

  v8 = *a3;
  if (!*a3)
  {
    goto LABEL_13;
  }

LABEL_6:
  v9 = *(v8 + 20);
  v10 = byte_181A203AA[v9 & 0x3F];
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      if ((~v9 & 0x202) != 0 || *(v8 + 22) != 1)
      {
        if (v9)
        {
          v17 = 0;
        }

        else
        {
          v17 = sub_18193CB70(v8, 1, a3, a4);
        }
      }

      else
      {
        v17 = *(v8 + 8);
      }

      sqlite3_str_appendf(&v32, v7, v17);
      goto LABEL_53;
    }

    if (v10 != 4)
    {
      goto LABEL_14;
    }

    v14 = sqlite3_value_blob(v8);
    v15 = *(v8 + 20);
    if ((v15 & 2) != 0 && *(v8 + 22) == 1)
    {
      v16 = *(v8 + 16);
    }

    else if ((v15 & 0x10) != 0)
    {
      v16 = *(v8 + 16);
      if ((*(v8 + 20) & 0x400) != 0)
      {
        v16 += *v8;
      }
    }

    else if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_18193CB44(v8, 1, v12, v13);
    }

    v19 = 2 * v16;
    sub_181906424(&v32, v19 + 4, v12, v13);
    if (!BYTE12(v33))
    {
      v20 = *(&v32 + 1);
      if (v16 >= 1)
      {
        v21 = v16;
        v22 = (*(&v32 + 1) + 3);
        do
        {
          *(v22 - 1) = a0123456789abcd_2[*v14 >> 4];
          v23 = *v14++;
          *v22 = a0123456789abcd_2[v23 & 0xF];
          v22 += 2;
          --v21;
        }

        while (v21);
      }

      v20[v19 / 2 + 1] = 39;
      *v20 = 10072;
      DWORD2(v33) = v19 + 3;
    }
  }

  else
  {
    if (v10 != 1)
    {
      if (v10 == 2)
      {
        v34 = 0.0;
        if ((v9 & 8) != 0)
        {
          v11 = *v8;
        }

        else if ((v9 & 0x24) != 0)
        {
          v11 = *v8;
        }

        else if ((v9 & 0x12) != 0)
        {
          v11 = sub_18193CF90(v8);
        }

        else
        {
          v11 = 0.0;
        }

        sqlite3_str_appendf(&v32, "%!0.15g", *&v11);
        if (DWORD2(v33))
        {
          *(*(&v32 + 1) + DWORD2(v33)) = 0;
          v18 = *(&v32 + 1);
          if (*(&v32 + 1))
          {
            sub_1818E6334(*(&v32 + 1), &v34, SDWORD2(v33), 1);
            if (v11 != v34)
            {
              if ((BYTE13(v33) & 4) != 0)
              {
                sub_181929C84(v32, v18);
                BYTE13(v33) &= ~4u;
              }

              LODWORD(v33) = 0;
              DWORD2(v33) = 0;
              *(&v32 + 1) = 0;
              sqlite3_str_appendf(&v32, "%!0.20e", *&v11);
            }
          }
        }

        goto LABEL_53;
      }

LABEL_14:
      sub_181906814(&v32, "NULL", 4, a4);
      goto LABEL_53;
    }

    if ((v9 & 0x24) == 0 && (v9 & 8) == 0 && (v9 & 0x12) != 0 && *(v8 + 8))
    {
      sub_18193CFCC(v8);
    }

    sqlite3_str_appendf(&v32, "%lld");
  }

LABEL_53:
  if (!*(&v32 + 1) || (*(*(&v32 + 1) + DWORD2(v33)) = 0, !DWORD1(v33)) || (BYTE13(v33) & 4) != 0)
  {
    v24 = *(&v32 + 1);
    if (!a1)
    {
      goto LABEL_57;
    }

LABEL_63:
    sub_18190B23C(a1, v24, SDWORD2(v33), 1, sub_181916CE4);
    v27 = BYTE12(v33);
    if (!BYTE12(v33))
    {
      return;
    }

    v28 = *a1;
    if ((*(*a1 + 20) & 0x9000) != 0)
    {
      sub_18193CA54(v28);
      v27 = BYTE12(v33);
      v29 = *(*a1 + 20);
      if (BYTE12(v33))
      {
        v30 = BYTE12(v33);
      }

      else
      {
        v30 = -1;
      }

      a1[9] = v30;
      if ((v29 & 1) == 0)
      {
        return;
      }

      if (v27 != 100)
      {
        goto LABEL_70;
      }
    }

    else
    {
      *(v28 + 20) = 1;
      a1[9] = v27;
      if (v27 != 100)
      {
LABEL_70:
        if (v27 == 101)
        {
          v31 = "no more rows available";
        }

        else if (v27 > 0x1C || ((0x1410004uLL >> v27) & 1) != 0)
        {
          v31 = "unknown error";
        }

        else
        {
          v31 = off_1E6A27DD8[v27];
        }

        goto LABEL_78;
      }
    }

    v31 = "another row available";
LABEL_78:
    sub_18190B23C(a1, v31, -1, 1, 0);
    return;
  }

  v24 = sub_18192A12C(&v32);
  if (a1)
  {
    goto LABEL_63;
  }

LABEL_57:
  if (v24[103])
  {
    v25 = *(v24 + 55);
    if (!v25)
    {
      v24[103] = 0;
      *(v24 + 106) = 0;
      v26 = *(v24 + 108) - 1;
      *(v24 + 108) = v26;
      if (!v26)
      {
        LOWORD(v25) = *(v24 + 219);
      }

      *(v24 + 218) = v25;
    }
  }
}