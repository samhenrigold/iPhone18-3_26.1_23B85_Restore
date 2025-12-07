uint64_t sub_18194D168(uint64_t a1, char *a2)
{
  v2 = 0;
  v3 = 73;
  do
  {
LABEL_2:
    v4 = (v3 + v2) / 2;
    v5 = &(&off_1E6A270B0)[3 * v4];
    v6 = *v5;
    if (*v5)
    {
      for (i = a2 + 7; ; ++i)
      {
        if (*i == *v6)
        {
          if (!*i)
          {
            if ((*(v5 + 9) & 0x30) == 0)
            {
              return 0;
            }

            return sub_18194D228(a1, a2, &unk_1EEF90028, v5, 0);
          }
        }

        else
        {
          v8 = byte_181A20298[*i] - byte_181A20298[*v6];
          if (v8)
          {
            if (v8 >= 0)
            {
              v2 = v4 + 1;
            }

            else
            {
              v3 = v4 - 1;
            }

            if (v2 <= v3)
            {
              goto LABEL_2;
            }

            return 0;
          }
        }

        ++v6;
      }
    }

    v2 = v4 + 1;
  }

  while (v4 + 1 <= v3);
  return 0;
}

uint64_t sub_18194D228(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (__s)
    {
      v9 = __s;
      v10 = strlen(__s) & 0x3FFFFFFF;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v12 = sub_181902484((v10 + 49), 0x10F004019D3F369);
    if (!v12)
    {
      if (*(a1 + 103) || *(a1 + 104))
      {
        return 0;
      }

      *(a1 + 103) = 1;
      if (*(a1 + 220) >= 1)
      {
        *(a1 + 424) = 1;
      }

      ++*(a1 + 432);
      *(a1 + 436) = 0;
      v23 = *(a1 + 344);
      if (!v23)
      {
        return 0;
      }

      sub_181910730(v23, "out of memory");
      v24 = *(a1 + 344);
      *(v24 + 24) = 7;
      v25 = *(v24 + 216);
      if (!v25)
      {
        return 0;
      }

      v11 = 0;
      do
      {
        ++*(v25 + 52);
        *(v25 + 24) = 7;
        v25 = *(v25 + 216);
      }

      while (v25);
      return v11;
    }

    v11 = v12;
    v13 = (v12 + 48);
    memcpy((v12 + 48), v9, (v10 + 1));
    *v11 = a3;
    *(v11 + 8) = v13;
    *(v11 + 24) = a4;
    *(v11 + 32) = a5;
    *(v11 + 40) = 0;
    __s = v13;
    *(v11 + 16) = 1;
  }

  else
  {
    v11 = 0;
  }

  v14 = sub_18188FAF0(a1 + 568, __s, v11);
  if (v14)
  {
    v17 = v14;
    if (v14 == v11)
    {
      if (!*(a1 + 103) && !*(a1 + 104))
      {
        *(a1 + 103) = 1;
        if (*(a1 + 220) >= 1)
        {
          *(a1 + 424) = 1;
        }

        ++*(a1 + 432);
        *(a1 + 436) = 0;
        v26 = *(a1 + 344);
        if (v26)
        {
          sub_181910730(v26, "out of memory");
          v27 = *(a1 + 344);
          *(v27 + 24) = 7;
          for (i = *(v27 + 216); i; i = *(i + 216))
          {
            ++*(i + 52);
            *(i + 24) = 7;
          }
        }
      }

      v11 = 0;
      goto LABEL_24;
    }

    v18 = *(v14 + 40);
    if (v18)
    {
      *(v18 + 48) |= 0x4000u;
      if (*(a1 + 824) || (v19 = *(v18 + 44) - 1, (*(v18 + 44) = v19) == 0))
      {
        sub_18194E094(a1, v18, v15, v16);
      }

      *(v17 + 40) = 0;
    }

    v20 = *(v17 + 16) - 1;
    *(v17 + 16) = v20;
    if (!v20)
    {
      v21 = *(v17 + 32);
      if (v21)
      {
        v21(*(v17 + 24));
      }

LABEL_24:
      sub_181929C84(a1, v17);
    }
  }

  return v11;
}

uint64_t sub_18194D478(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char **a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v25 = 0;
  v26 = zSQL;
  v27 = 200;
  v28 = 0xE00000000;
  v29 = 0;
  qmemcpy(zSQL, "CREATE TABLE x", 14);
  if (!*(a2 + 11))
  {
    sqlite3_str_appendf(&v25, "(%s", *a2);
    goto LABEL_7;
  }

  v10 = *(a2 + 10);
  sqlite3_str_appendf(&v25, "%c%s", 40, off_1E6A277A0[v10]);
  if (*(a2 + 11) < 2u)
  {
LABEL_7:
    LOBYTE(v12) = 1;
    goto LABEL_8;
  }

  v12 = 1;
  do
  {
    sqlite3_str_appendf(&v25, "%c%s", 44, (&off_1E6A277A0[v10])[v12++]);
  }

  while (v12 < *(a2 + 11));
LABEL_8:
  v13 = *(a2 + 9);
  v14 = HIDWORD(v28);
  v15 = v27;
  if ((v13 & 0x20) == 0)
  {
    v16 = 0;
    if (v13 < 0x40)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (HIDWORD(v28) + 11 >= v27)
  {
    sub_181906814(&v25, ",arg HIDDEN", 11, v11);
  }

  else
  {
    HIDWORD(v28) += 11;
    v17 = &v26[v14];
    *v17 = *",arg HIDDEN";
    *(v17 + 7) = 1313162308;
  }

  v16 = 1;
  LODWORD(v14) = HIDWORD(v28);
  v15 = v27;
  if (*(a2 + 9) >= 0x40u)
  {
LABEL_15:
    if (v14 + 14 >= v15)
    {
      sub_181906814(&v25, ",schema HIDDEN", 14, v11);
    }

    else
    {
      HIDWORD(v28) = v14 + 14;
      qmemcpy(&v26[v14], ",schema HIDDEN", 14);
    }

    ++v16;
    LODWORD(v14) = HIDWORD(v28);
    v15 = v27;
  }

LABEL_19:
  if (v14 + 1 >= v15)
  {
    sub_181906814(&v25, ")", 1, v11);
    v18 = v26;
    if (!v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    HIDWORD(v28) = v14 + 1;
    v26[v14] = 41;
    v18 = v26;
    if (!v26)
    {
      goto LABEL_26;
    }
  }

  v18[HIDWORD(v28)] = 0;
  if (v28 && (v29 & 0x400) == 0)
  {
    sub_18192A12C(&v25);
  }

LABEL_26:
  v19 = sqlite3_declare_vtab(a1, zSQL);
  if (v19)
  {
    v20 = v19;
    v21 = sqlite3_errmsg(a1);
    v22 = sqlite3_mprintf("%s", v21);
    result = v20;
    v24 = 0;
    *a6 = v22;
  }

  else
  {
    if (sqlite3_initialize())
    {
      v24 = 0;
    }

    else
    {
      v24 = sub_181902484(48, 0x10700401D14200BLL);
      if (v24)
      {
        result = 0;
        *(v24 + 16) = 0u;
        *(v24 + 32) = 0u;
        *v24 = 0u;
        *(v24 + 24) = a1;
        *(v24 + 32) = a2;
        *(v24 + 41) = v12;
        *(v24 + 40) = v16;
        goto LABEL_33;
      }
    }

    result = 7;
  }

LABEL_33:
  *a5 = v24;
  return result;
}

uint64_t sub_18194D798(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  *(a2 + 64) = 0x3FF0000000000000;
  if (!*(a1 + 40))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v14[0] = 0;
  if (*a2 >= 1)
  {
    v3 = *(a1 + 41);
    v4 = -*a2;
    v5 = (v2 + 5);
    v6 = 1;
    do
    {
      v7 = *(v5 - 5);
      v8 = __OFSUB__(v7, v3);
      v9 = v7 - v3;
      if (v9 < 0 == v8 && *(v5 - 1) == 2)
      {
        if (!*v5)
        {
          return 19;
        }

        *(v14 + v9) = v6;
      }

      ++v6;
      v5 += 12;
    }

    while (v4 + v6 != 1);
    if (!LODWORD(v14[0]))
    {
      goto LABEL_13;
    }

    v10 = *(a2 + 32);
    v11 = v10 + 8 * SLODWORD(v14[0]);
    *(v11 - 8) = 1;
    *(v11 - 4) = 1;
    *(a2 + 64) = 0x4034000000000000;
    *(a2 + 72) = 20;
    if (HIDWORD(v14[0]))
    {
      result = 0;
      v13 = v10 + 8 * SHIDWORD(v14[0]);
      *(v13 - 8) = 2;
      *(v13 - 4) = 1;
      return result;
    }

    return 0;
  }

LABEL_13:
  result = 0;
  *(a2 + 64) = 0x41DFFFFFFFC00000;
  *(a2 + 72) = 0x7FFFFFFFLL;
  return result;
}

uint64_t sub_18194D8C4(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v1)();
      return 0;
    }

    if (xmmword_1ED456AF0)
    {
      v2 = a1;
      xmmword_1ED452F18(xmmword_1ED456AF0);
      a1 = v2;
    }

    v3 = a1;
    qword_1ED456A48[0] -= xmmword_1ED452EC0(a1);
    --qword_1ED456A90;
    off_1ED452EB0(v3);
    if (xmmword_1ED456AF0)
    {
      v1 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

  return 0;
}

double sub_18194D97C(uint64_t a1, uint64_t *a2)
{
  if (!sqlite3_initialize())
  {
    v5 = sub_181902484(40, 0x1030040AF9EEB27);
    if (v5)
    {
      *(v5 + 32) = 0;
      result = 0.0;
      *v5 = 0u;
      *(v5 + 16) = 0u;
      *v5 = a1;
      *a2 = v5;
    }
  }

  return result;
}

uint64_t sub_18194D9E8(uint64_t a1)
{
  v1 = a1;
  sub_18194DE7C(a1);
  if (v1)
  {
    v2 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v2)(v1);
      return 0;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
    --qword_1ED456A90;
    off_1ED452EB0(v1);
    v1 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v2 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_18194DA9C(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5)
{
  v8 = *a1;
  v35 = 0;
  sub_18194DE7C(a1);
  if (a4 >= 1)
  {
    v11 = a4;
    v12 = &a1[((*(v8[4] + 9) & 0x20) == 0) + 3];
    do
    {
      v15 = *a5;
      if (*a5)
      {
        v16 = *(v15 + 20);
        if ((~v16 & 0x202) == 0 && *(v15 + 22) == 1)
        {
          v13 = *(v15 + 8);
          if (v13)
          {
            goto LABEL_4;
          }
        }

        else if ((v16 & 1) == 0)
        {
          v13 = sub_18193CB70(v15, 1, v9, v10);
          if (v13)
          {
LABEL_4:
            v14 = sqlite3_mprintf("%s", v13);
            *v12 = v14;
            if (!v14)
            {
              return 7;
            }
          }
        }
      }

      ++a5;
      ++v12;
      --v11;
    }

    while (v11);
  }

  v17 = *(v8[3] + 140);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = v17;
  LODWORD(v35) = 0;
  WORD2(v35) = 0;
  sub_181906814(&v31, "PRAGMA ", 7, v10);
  if (a1[4])
  {
    sqlite3_str_appendf(&v31, "%Q.", a1[4]);
  }

  v19 = v8[4];
  v20 = *v19;
  if (*v19)
  {
    v21 = strlen(*v19);
    v18 = v21 & 0x3FFFFFFF;
    if ((v21 & 0x3FFFFFFF) != 0)
    {
      v23 = v35;
      if (v35 + v18 >= v33)
      {
        sub_181906814(&v31, v20, v18, v22);
        v24 = a1[3];
        if (!v24)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      LODWORD(v35) = v35 + v18;
      memcpy(&v32[v23], v20, v21 & 0x3FFFFFFF);
    }
  }

  v24 = a1[3];
  if (v24)
  {
LABEL_19:
    sqlite3_str_appendf(&v31, "=%Q", v18, v24);
  }

LABEL_20:
  if (v32 && (v32[v35] = 0, v34) && (v35 & 0x40000000000) == 0)
  {
    v25 = sub_18192A12C(&v31);
    if (!v25)
    {
      return 7;
    }
  }

  else
  {
    v25 = v32;
    if (!v32)
    {
      return 7;
    }
  }

  v26 = sub_1818954B4(v8[3], v25, 0xFFFFFFFFLL, 128, 0, a1 + 1, 0);
  v27 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v25);
    --qword_1ED456A90;
    off_1ED452EB0(v25);
    v25 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_32;
    }

    v27 = &xmmword_1ED452F28;
  }

  (*v27)(v25);
LABEL_32:
  if (v26)
  {
    v28 = sqlite3_errmsg(v8[3]);
    v8[2] = sqlite3_mprintf("%s", v28);
  }

  else
  {
    v29 = a1[1];
    ++a1[2];
    if (sqlite3_step(v29) == 100)
    {
      return 0;
    }

    else
    {
      v26 = sqlite3_finalize(a1[1]);
      a1[1] = 0;
      sub_18194DE7C(a1);
    }
  }

  return v26;
}

uint64_t sub_18194DD90(uint64_t a1)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  *(a1 + 16) = *(v3 + 8) + 1;
  if (sqlite3_step(v2) == 100)
  {
    return 0;
  }

  v5 = sqlite3_finalize(*(a1 + 8));
  *(a1 + 8) = 0;
  sub_18194DE7C(a1);
  return v5;
}

uint64_t sub_18194DDFC(sqlite3_stmt **a1, sqlite3_context *a2, int iCol)
{
  v4 = *(*a1 + 41);
  v5 = __OFSUB__(iCol, v4);
  v6 = iCol - v4;
  if (v6 < 0 != v5)
  {
    v7 = sqlite3_column_value(a1[1], iCol);
    sqlite3_result_value(a2, v7);
  }

  else if (a2)
  {
    sub_18190B23C(a2, a1[v6 + 3], -1, 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  return 0;
}

uint64_t sub_18194DE7C(uint64_t a1)
{
  result = sqlite3_finalize(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      result = (*v4)(v3);
      goto LABEL_8;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v3);
    --qword_1ED456A90;
    result = off_1ED452EB0(v3);
    v3 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v4 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

LABEL_8:
  *(a1 + 24) = 0;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_14:
      result = (*v6)(v5);
      goto LABEL_15;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
    --qword_1ED456A90;
    result = off_1ED452EB0(v5);
    v5 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v6 = &xmmword_1ED452F28;
      goto LABEL_14;
    }
  }

LABEL_15:
  *(a1 + 32) = 0;
  return result;
}

void *sub_18194DFCC(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = *(a2 + 64);
  v7 = 8 * v6;
  if (v6 + 3 >= *(*a1 + 144))
  {
    sub_181910730(a1, "too many columns on %s", *a2);
  }

  result = sub_181929E38(v5, *(a2 + 72), v7 + 16, 528201247);
  if (result)
  {
    v9 = *(a2 + 64);
    *(a2 + 64) = v9 + 1;
    result[v9] = a3;
    result[v9 + 1] = 0;
    *(a2 + 72) = result;
  }

  else if (a3)
  {

    return sub_181929C84(v5, a3);
  }

  return result;
}

void *sub_18194E094(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[2];
  while (v6)
  {
    v8 = v6;
    v6 = *(v6 + 40);
    if (!a1[103] && *(a2 + 63) != 1)
    {
      sub_18188FAF0(*(v8 + 48) + 32, *v8, 0);
    }

    v9 = *(v8 + 72);
    if (v9)
    {
      sub_1819439E0(a1, v9);
    }

    v10 = *(v8 + 80);
    if (v10)
    {
      sub_18194E5B8(a1, v10);
    }

    v11 = *(v8 + 32);
    if (v11)
    {
      sub_181929C84(a1, v11);
    }

    if ((*(v8 + 99) & 0x10) != 0)
    {
      v12 = *(v8 + 64);
      if (v12)
      {
        sub_181929C84(a1, v12);
      }
    }

    sub_181929C84(a1, v8);
  }

  if (*(a2 + 63) == 1)
  {
    if (!a1[103])
    {
      v29 = a2[10];
      a2[10] = 0;
      if (v29)
      {
        do
        {
          v31 = *v29;
          if (*v29)
          {
            v30 = (v31 + 608);
            v31 = *(v31 + 608);
          }

          else
          {
            v30 = (a2 + 10);
          }

          v32 = v29[5];
          *v30 = v29;
          v29[5] = v31;
          v29 = v32;
        }

        while (v32);
      }
    }

    v18 = a2[9];
    if (v18)
    {
      v19 = *(a2 + 16);
      if (v19 < 1)
      {
        goto LABEL_36;
      }

      v20 = *v18;
      if (v20)
      {
        sub_181929C84(a1, v20);
        v19 = *(a2 + 16);
      }

      if (v19 >= 3)
      {
        for (i = 2; i < v19; ++i)
        {
          v34 = *(a2[9] + 8 * i);
          if (v34)
          {
            sub_181929C84(a1, v34);
            v19 = *(a2 + 16);
          }
        }
      }

      v18 = a2[9];
      if (v18)
      {
LABEL_36:
        sub_181929C84(a1, v18);
      }
    }
  }

  else
  {
    if (!*(a2 + 63))
    {
      v7 = a2[9];
      if (!v7)
      {
        goto LABEL_39;
      }

      while (1)
      {
        if (!a1[103])
        {
          a3 = *(v7 + 24);
          v16 = *(v7 + 32);
          if (v16)
          {
            *(v16 + 24) = a3;
            if (!a3)
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (a3)
            {
              v17 = *(v7 + 24);
            }

            else
            {
              v17 = v7;
            }

            sub_18188FAF0(a2[12] + 80, *(v17 + 16), a3);
            a3 = *(v7 + 24);
            if (!a3)
            {
              goto LABEL_19;
            }
          }

          *(a3 + 32) = *(v7 + 32);
        }

LABEL_19:
        sub_1818F1620(a1, *(v7 + 48), a3, a4);
        sub_1818F1620(a1, *(v7 + 56), v13, v14);
        v15 = *(v7 + 8);
        sub_181929C84(a1, v7);
        v7 = v15;
        if (!v15)
        {
          goto LABEL_39;
        }
      }
    }

    v21 = a2[8];
    if (v21)
    {
      sub_1818BB408(a1, v21, 1);
    }
  }

LABEL_39:
  v22 = a2[1];
  if (v22)
  {
    v23 = *(a2 + 27);
    if (v23 >= 1)
    {
      v24 = 0;
      do
      {
        if (*v22)
        {
          sub_181929C84(a1, *v22);
          LOWORD(v23) = *(a2 + 27);
        }

        ++v24;
        v22 += 2;
      }

      while (v24 < v23);
      v22 = a2[1];
    }

    sub_181939EC8(a1, v22);
    if (!*(a2 + 63))
    {
      v25 = a2[10];
      if (v25)
      {
        sub_18194E5B8(a1, v25);
      }
    }

    if (!a1[103])
    {
      a2[1] = 0;
      *(a2 + 27) = 0;
      if (!*(a2 + 63))
      {
        a2[10] = 0;
      }
    }
  }

  if (*a2)
  {
    sub_181929C84(a1, *a2);
  }

  v26 = a2[3];
  if (v26)
  {
    sub_181929C84(a1, v26);
  }

  v27 = a2[4];
  if (v27)
  {
    sub_18194E5B8(a1, v27);
  }

  return sub_181929C84(a1, a2);
}

void *sub_18194E388(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = result;
    v5 = *(a2 + 54);
    if (v5 >= 1)
    {
      v6 = 0;
      do
      {
        if (*v2)
        {
          sub_181929C84(v4, *v2);
          LOWORD(v5) = *(a2 + 54);
        }

        ++v6;
        v2 += 2;
      }

      while (v6 < v5);
      v2 = *(a2 + 8);
    }

    result = sub_181939EC8(v4, v2);
    if (!*(a2 + 63))
    {
      v7 = *(a2 + 80);
      if (v7)
      {
        result = sub_18194E5B8(v4, v7);
      }
    }

    if (!v4[103])
    {
      *(a2 + 8) = 0;
      *(a2 + 54) = 0;
      if (!*(a2 + 63))
      {
        *(a2 + 80) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_18194E43C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *a1 + 1;
  *a1 = v2;
  v3 = *v1;
  if (v3 >= 0xC0)
  {
    v4 = byte_181A20D3A[(v3 - 192)];
    if ((*v2 & 0xC0) == 0x80)
    {
      v5 = v1 + 2;
      do
      {
        *a1 = v5;
        LODWORD(v3) = *(v5 - 1) & 0x3F | (v4 << 6);
        v6 = *v5++;
        v4 = v3;
      }

      while ((v6 & 0xC0) == 0x80);
    }

    else
    {
      LODWORD(v3) = byte_181A20D3A[(v3 - 192)];
    }

    if (v3 < 0x80 || v3 >> 1 == 0x7FFF || v3 >> 11 == 27)
    {
      return 65533;
    }

    else
    {
      return v3;
    }
  }

  return v3;
}

uint64_t sub_18194E4C4(_BYTE *a1, int a2)
{
  if (a2 < 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = &a1[a2];
  }

  v3 = *a1;
  v4 = 0;
  if (*a1)
  {
    v5 = v2 > a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    do
    {
      if (v3 < 0xC0)
      {
        v7 = *++a1;
        v3 = v7;
      }

      else
      {
        do
        {
          v9 = *++a1;
          v3 = v9;
        }

        while ((v9 & 0xC0) == 0x80);
      }

      v4 = (v4 + 1);
      if (v3)
      {
        v8 = a1 >= v2;
      }

      else
      {
        v8 = 1;
      }
    }

    while (!v8);
  }

  return v4;
}

void *sub_18194E51C(void *a1, void *a2)
{
  do
  {
    v5 = a2[4];
    if (*a2)
    {
      sub_18194E5B8(a1, *a2);
    }

    v6 = a2[1];
    if (v6)
    {
      sub_1819439E0(a1, v6);
    }

    v7 = a2[2];
    if (v7)
    {
      sub_18194E5B8(a1, v7);
    }

    v8 = a2[3];
    if (v8)
    {
      sub_1819439E0(a1, v8);
    }

    v9 = a2[6];
    if (v9)
    {
      sub_181929C84(a1, v9);
    }

    result = sub_181929C84(a1, a2);
    a2 = v5;
  }

  while (v5);
  return result;
}

void *sub_18194E5B8(void *a1, void *a2)
{
  v4 = *a2 + 1;
  v5 = 1;
  do
  {
    v6 = a2[v5];
    if (v6)
    {
      sub_1819439E0(a1, v6);
    }

    v7 = a2[v5 + 1];
    if (v7)
    {
      sub_181939EC8(a1, v7);
    }

    --v4;
    v5 += 3;
  }

  while (v4 > 1);

  return sub_181939EC8(a1, a2);
}

char **sub_18194E64C(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if ((a2[5] & 2) == 0)
  {
    if (a3 && (a3[5] & 2) != 0)
    {
      a2 = a3;
    }

    else
    {
      v4 = a1;
      result = sub_1818B4720(a1, a2);
      if (result)
      {
        return result;
      }

      a1 = v4;
      a2 = a3;
    }
  }

  return sub_1818B4720(a1, a2);
}

char **sub_18194E6B8(uint64_t a1, uint64_t a2, char **a3, char *__s)
{
  v7 = *a1;
  if (!a3)
  {
    if (!__s)
    {
      a3 = *(v7 + 16);
      if (!a3)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v8 = *__s;
    if (*__s)
    {
      v9 = 0;
      v10 = __s + 1;
      do
      {
        v9 = -1640531535 * (v9 + (v8 & 0xDF));
        v11 = *v10++;
        v8 = v11;
      }

      while (v11);
    }

    else
    {
      v9 = 0;
    }

    v12 = (v7 + 640);
    v13 = *(v7 + 656);
    if (v13)
    {
      v12 = (v13 + 16 * (v9 % *v12));
      v14 = *v12;
      if (*v12)
      {
LABEL_12:
        v15 = (v12 + 2);
        do
        {
          v15 = *v15;
          if (v9 == *(v15 + 8))
          {
            v16 = v15[3];
            for (i = __s; ; ++i)
            {
              if (*v16 == *i)
              {
                if (!*v16)
                {
                  goto LABEL_23;
                }
              }

              else if (byte_181A20298[*v16] != byte_181A20298[*i])
              {
                break;
              }

              ++v16;
            }
          }

          --v14;
        }

        while (v14);
        v18 = qword_1EA831A40;
        if (!qword_1EA831A40)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(v7 + 644);
      if (v14)
      {
        goto LABEL_12;
      }
    }

    v15 = &qword_1EA831A30;
LABEL_23:
    v18 = v15[2];
    if (!v18)
    {
      goto LABEL_26;
    }

LABEL_24:
    v19 = v18 + 40 * a2;
    a3 = (v19 - 40);
    if (v19 == 40)
    {
      goto LABEL_26;
    }
  }

LABEL_25:
  if (a3[3])
  {
    return a3;
  }

LABEL_26:
  if (*(v7 + 392))
  {
    if (!__s)
    {
      goto LABEL_48;
    }

    v20 = strlen(__s);
    v21 = sub_181929E8C(v7, v20 + 1, 354097263);
    if (!v21)
    {
      goto LABEL_44;
    }

    v22 = v20 + 1;
    v23 = v21;
    memcpy(v21, __s, v22);
    (*(v7 + 392))(*(v7 + 408), v7, a2, v23);
    sub_181929C84(v7, v23);
  }

  if (*(v7 + 400))
  {
    v24 = sub_181929E8C(v7, 0x40uLL, 0x10F2040695A4BFELL);
    if (v24)
    {
      v25 = v24;
      *(v24 + 2) = 0u;
      *(v24 + 3) = 0u;
      *v24 = 0u;
      *(v24 + 1) = 0u;
      *(v24 + 10) = 1;
      *(v24 + 3) = v7;
      sub_1818900D0(v24, __s, -1, 1, 0);
      v28 = *(v25 + 10);
      if ((~v28 & 0x202) != 0 || *(v25 + 22) != 2)
      {
        if (v28)
        {
LABEL_39:
          if ((v25[5] & 0x9000) != 0 || v25[8])
          {
            sub_18193CA00(v25);
          }

          sub_181929C84(*(v25 + 3), v25);
          goto LABEL_43;
        }

        v29 = sub_18193CB70(v25, 2, v26, v27);
      }

      else
      {
        v29 = *(v25 + 1);
      }

      if (v29)
      {
        (*(v7 + 400))(*(v7 + 408), v7, *(v7 + 100));
      }

      goto LABEL_39;
    }
  }

LABEL_43:
  if (!__s)
  {
LABEL_48:
    a3 = *(v7 + 16);
    if (a3)
    {
      goto LABEL_66;
    }

LABEL_91:
    sub_181910730(a1, "no such collation sequence: %s", __s);
    a3 = 0;
    *(a1 + 24) = 257;
    return a3;
  }

LABEL_44:
  v30 = *__s;
  if (*__s)
  {
    v31 = 0;
    v32 = __s + 1;
    do
    {
      v31 = -1640531535 * (v31 + (v30 & 0xDF));
      v33 = *v32++;
      v30 = v33;
    }

    while (v33);
  }

  else
  {
    v31 = 0;
  }

  v34 = (v7 + 640);
  v35 = *(v7 + 656);
  if (v35)
  {
    v34 = (v35 + 16 * (v31 % *v34));
    v36 = *v34;
    if (*v34)
    {
LABEL_53:
      v37 = (v34 + 2);
      do
      {
        v37 = *v37;
        if (v31 == *(v37 + 8))
        {
          v38 = v37[3];
          for (j = __s; ; ++j)
          {
            if (*v38 == *j)
            {
              if (!*v38)
              {
                goto LABEL_64;
              }
            }

            else if (byte_181A20298[*v38] != byte_181A20298[*j])
            {
              break;
            }

            ++v38;
          }
        }

        --v36;
      }

      while (v36);
      v40 = qword_1EA831A40;
      if (!qword_1EA831A40)
      {
        goto LABEL_91;
      }

      goto LABEL_65;
    }
  }

  else
  {
    v36 = *(v7 + 644);
    if (v36)
    {
      goto LABEL_53;
    }
  }

  v37 = &qword_1EA831A30;
LABEL_64:
  v40 = v37[2];
  if (!v40)
  {
    goto LABEL_91;
  }

LABEL_65:
  v41 = v40 + 40 * a2;
  a3 = (v41 - 40);
  if (v41 == 40)
  {
    goto LABEL_91;
  }

LABEL_66:
  v42 = a3[3];
  if (!v42)
  {
    v43 = *a3;
    while (1)
    {
      if (v43)
      {
        v44 = *v43;
        if (*v43)
        {
          v45 = 0;
          v46 = *a3 + 1;
          do
          {
            v45 = -1640531535 * (v45 + (v44 & 0xDF));
            v47 = *v46++;
            v44 = v47;
          }

          while (v47);
        }

        else
        {
          v45 = 0;
        }

        v49 = *(v7 + 656);
        v50 = v7 + 640;
        v51 = (v7 + 644);
        if (v49)
        {
          v50 = v49 + 16 * (v45 % *(v7 + 640));
          v51 = v50;
        }

        v52 = *v51;
        if (*v51)
        {
          v53 = (v50 + 8);
          do
          {
            v53 = *v53;
            if (v45 == *(v53 + 8))
            {
              v54 = v53[3];
              for (k = *a3; ; ++k)
              {
                if (*v54 == *k)
                {
                  if (!*v54)
                  {
                    goto LABEL_88;
                  }
                }

                else if (byte_181A20298[*v54] != byte_181A20298[*k])
                {
                  break;
                }

                ++v54;
              }
            }

            --v52;
          }

          while (v52);
        }

        v53 = &qword_1EA831A30;
LABEL_88:
        v48 = v53[2] + 40 * byte_181A20F10[v42] - 40;
      }

      else
      {
        v48 = *(v7 + 16);
      }

      if (*(v48 + 24))
      {
        break;
      }

      if (++v42 == 3)
      {
        goto LABEL_91;
      }
    }

    v57 = *(v48 + 16);
    *a3 = *v48;
    *(a3 + 1) = v57;
    a3[4] = 0;
  }

  return a3;
}

uint64_t sub_18194EBC8(unsigned __int8 *a1, uint64_t a2, _DWORD *a3)
{
  v3 = byte_181A20F13[((3 * byte_181A20298[a1[a2 - 1]]) ^ (4 * byte_181A20298[*a1]) ^ a2) % 127];
  if (byte_181A20F13[((3 * byte_181A20298[a1[a2 - 1]]) ^ (4 * byte_181A20298[*a1]) ^ a2) % 127])
  {
    do
    {
      if (byte_181A20990[v3] == a2)
      {
        v4 = word_181A20868[v3];
        if ((*a1 & 0xDF) == aReindexedescap[v4] && (a1[1] & 0xDF) == aReindexedescap[v4 + 1])
        {
          if (a2 < 3)
          {
LABEL_11:
            *a3 = byte_181A20F92[v3];
            return a2;
          }

          v5 = &aReindexedescap[v4 + 2];
          v6 = a2 - 2;
          v7 = a1 + 2;
          while (1)
          {
            v8 = *v7++;
            v9 = v8 & 0xFFFFFFDF;
            v10 = *v5++;
            if (v9 != v10)
            {
              break;
            }

            if (!--v6)
            {
              goto LABEL_11;
            }
          }
        }
      }

      v3 = byte_181A21026[v3];
    }

    while (v3);
  }

  return a2;
}

void sub_18194ECE0(uint64_t *a1, int a2)
{
  v2 = a2 == 12;
  if (a2 == 12)
  {
    v3 = "ROLLBACK";
  }

  else
  {
    v3 = "COMMIT";
  }

  v4 = *a1;
  v5 = *(*a1 + 528);
  if (v5 && !*(v4 + 197) && !*(a1 + 302))
  {
    v9 = a1;
    v10 = v5(*(v4 + 536), 22, v3, 0, 0, a1[46]);
    if (v10 == 1)
    {
      v11 = 23;
      sub_181910730(v9, "not authorized");
    }

    else
    {
      if ((v10 & 0xFFFFFFFD) == 0)
      {
        v12 = v10;
        a1 = v9;
        if (v12)
        {
          return;
        }

        goto LABEL_7;
      }

      v11 = 1;
      sub_181910730(v9, "authorizer malfunction");
    }

    *(v9 + 6) = v11;
    return;
  }

LABEL_7:
  v6 = sub_1818E7DFC(a1);
  if (v6)
  {
    v7 = *(v6 + 144);
    if (*(v6 + 148) <= v7)
    {

      sub_18194C8AC(v6, 1, 1, v2, 0);
    }

    else
    {
      *(v6 + 144) = v7 + 1;
      v8 = *(v6 + 136) + 40 * v7;
      *v8 = 0x100000001;
      *(v8 + 8) = v2;
      *(v8 + 12) = 0;
      *(v8 + 28) = 0;
      *(v8 + 20) = 0;
      *(v8 + 36) = 0;
    }
  }
}

uint64_t *sub_18194EE20(uint64_t *result, int a2, uint64_t a3)
{
  if (!a3)
  {
    return result;
  }

  v3 = *a3;
  if (!*a3)
  {
    return result;
  }

  v5 = result;
  v6 = *(a3 + 8);
  result = sub_181929E8C(*result, v6 + 1, 1565185748);
  if (!result)
  {
    return result;
  }

  v7 = result;
  memcpy(result, v3, v6);
  *(v7 + v6) = 0;
  v8 = *v7;
  if (byte_181A204C8[*v7] < 0)
  {
    v9 = 0;
    if (v8 == 91)
    {
      v8 = 93;
    }

    for (i = 1; ; ++i)
    {
      v11 = i;
      v12 = *(v7 + i);
      if (v12 == v8)
      {
        ++i;
        LOBYTE(v12) = v8;
        if (*(v7 + v11 + 1) != v8)
        {
          break;
        }
      }

      *(v7 + v9++) = v12;
    }

    *(v7 + v9) = 0;
  }

  result = sub_1818E7DFC(v5);
  if (!result)
  {
    goto LABEL_36;
  }

  v13 = *v5;
  v14 = *(*v5 + 528);
  if (!v14 || *(v13 + 197) || *(v5 + 302))
  {
    goto LABEL_16;
  }

  v20 = result;
  v21 = v14(*(v13 + 536), 32, off_1E6A27998[a2], v7, 0, v5[46]);
  if (v21 == 1)
  {
    v22 = 23;
    sub_181910730(v5, "not authorized");
LABEL_35:
    *(v5 + 6) = v22;
    goto LABEL_36;
  }

  if ((v21 & 0xFFFFFFFD) != 0)
  {
    v22 = 1;
    sub_181910730(v5, "authorizer malfunction");
    goto LABEL_35;
  }

  v24 = v21;
  result = v20;
  if (!v24)
  {
LABEL_16:
    v15 = *(result + 36);
    if (*(result + 37) <= v15)
    {
      v17 = result;
      v15 = sub_18194C8AC(result, 0, a2, 0, 0);
      result = v17;
    }

    else
    {
      *(result + 36) = v15 + 1;
      v16 = result[17] + 40 * v15;
      *v16 = 0;
      *(v16 + 4) = a2;
      *(v16 + 8) = 0u;
      *(v16 + 24) = 0u;
    }

    if (*(*result + 103))
    {
      v18 = *result;

      return sub_181939EC8(v18, v7);
    }

    else
    {
      if (v15 < 0)
      {
        v15 = *(result + 36) - 1;
      }

      v19 = result[17] + 40 * v15;
      if (*(v19 + 1))
      {

        return sub_18194CB90(result, v19, v7, 4294967290);
      }

      else
      {
        *(v19 + 16) = v7;
        *(v19 + 1) = -6;
      }
    }

    return result;
  }

LABEL_36:
  v23 = *v5;

  return sub_181929C84(v23, v7);
}

void *sub_18194F098(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_181929E8C(*a1, 0x50uLL, 0x1032040B79D87BDLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *v8 = 0u;
    *v8 = a2;
    *(v8 + 26) = -1;
    if (a4)
    {
      v8[3] = a4;
      *(v8 + 1) |= *(a4 + 4) & 0x400208;
      v10 = *(a4 + 40) + 1;
      *(v8 + 10) = v10;
      if (!a3)
      {
LABEL_12:
        if (*(*a1 + 148) < v10)
        {
          sub_181910730(a1, "Expression tree is too large (maximum depth %d)", *(*a1 + 148));
        }

        return v9;
      }
    }

    else
    {
      v10 = 1;
      *(v8 + 10) = 1;
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    v8[2] = a3;
    *(v8 + 1) |= *(a3 + 4) & 0x400208;
    v11 = *(a3 + 40);
    if (v11 >= v10)
    {
      v10 = v11 + 1;
      *(v8 + 10) = v11 + 1;
    }

    goto LABEL_12;
  }

  if (a3)
  {
    sub_1819439E0(*a1, a3);
  }

  if (a4)
  {
    sub_1819439E0(*a1, a4);
  }

  return v9;
}

void *sub_18194F1D8(uint64_t a1, char a2, const void *a3, uint64_t a4)
{
  v8 = a4;
  v9 = sub_181929E8C(*a1, a4 + 81, 0x1032040B79D87BDLL);
  v10 = v9;
  if (v9)
  {
    *v9 = a2;
    *(v9 + 1) = 0;
    *(v9 + 1) = 0x800000;
    v9[8] = 0;
    v9[9] = 0;
    v9[3] = 0;
    v9[4] = 0;
    *(v9 + 11) = 0;
    *(v9 + 12) = 0;
    v11 = v9 + 10;
    v9[1] = v9 + 10;
    v9[2] = 0;
    memcpy(v9 + 10, a3, v8);
    *(v11 + v8) = 0;
    *(v10 + 14) = a3 - *(a1 + 336);
    v12 = *(v10 + 80);
    if (byte_181A204C8[*(v10 + 80)] < 0)
    {
      v13 = 0;
      if (v12 == 34)
      {
        v14 = 75497600;
      }

      else
      {
        v14 = 75497472;
      }

      *(v10 + 1) = v14;
      if (v12 == 91)
      {
        v12 = 93;
      }

      for (i = 1; ; ++i)
      {
        v16 = i;
        v17 = *(v11 + i);
        if (v17 == v12)
        {
          ++i;
          LOBYTE(v17) = v12;
          if (*(v11 + v16 + 1) != v12)
          {
            break;
          }
        }

        *(v11 + v13++) = v17;
      }

      *(v11 + v13) = 0;
    }

    *(v10 + 10) = 1;
    v18 = *(a1 + 302);
    if (v18 > 3 || v18 == 2)
    {
      if (*a1)
      {
        v20 = sub_181929E8C(*a1, 0x20uLL, 0x10F00409A20EBA4);
        if (!v20)
        {
          return v10;
        }
      }

      else
      {
        v20 = sub_181902484(32, 0x10F00409A20EBA4);
        if (!v20)
        {
          return v10;
        }
      }

      *v20 = 0u;
      *(v20 + 16) = 0u;
      *v20 = v10;
      *(v20 + 8) = a3;
      *(v20 + 16) = a4;
      *(v20 + 24) = *(a1 + 408);
      *(a1 + 408) = v20;
    }
  }

  return v10;
}

uint64_t sub_18194F370(uint64_t result)
{
  v1 = *(result + 4);
  if ((v1 & 0x4000800) != 0)
  {
    return result;
  }

  v2 = *(result + 8);
  v3 = "true";
  for (i = v2; *i == *v3; ++i)
  {
    if (!*i)
    {
      v5 = 0x10000000;
      goto LABEL_15;
    }

LABEL_5:
    ++v3;
  }

  if (byte_181A20298[*i] == byte_181A20298[*v3])
  {
    goto LABEL_5;
  }

  for (j = "false"; *v2 != *j; ++j)
  {
    if (byte_181A20298[*v2] != byte_181A20298[*j])
    {
      return result;
    }

LABEL_11:
    ++v2;
  }

  if (*v2)
  {
    goto LABEL_11;
  }

  v5 = 0x20000000;
LABEL_15:
  *result = -85;
  *(result + 4) = v5 | v1;
  return result;
}

uint64_t sub_18194F428(uint64_t result, char a2)
{
  v2 = *(result + 344);
  if (v2)
  {
    v3 = *(v2 + 54);
    if (v3 >= 1)
    {
      v4 = *(v2 + 8) + 16 * (v3 - 1);
      *(v4 + 8) = *(v4 + 8) & 0xF0 | a2 & 0xF;
      *(v2 + 48) |= 0x800u;
      if ((*(v4 + 14) & 8) != 0)
      {
        for (i = *(v2 + 16); i; i = *(i + 40))
        {
          if (*(v2 + 54) - 1 == **(i + 8))
          {
            *(i + 99) |= 8u;
          }
        }
      }
    }
  }

  return result;
}

uint64_t *sub_18194F4A4(uint64_t *result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = result[43];
  if (v4 && *(result + 302) != 1 && (*(*(*(*(*result + 32) + 32 * *(*result + 196) + 8) + 8) + 40) & 1) == 0)
  {
    v6 = *(v4 + 32);
    if (v6)
    {
      v7 = *v6;
      if (v6[1] > *v6)
      {
        *v6 = v7 + 1;
        v8 = &v6[6 * v7];
        *(v8 + 2) = 0;
        *(v8 + 3) = 0;
        *(v8 + 1) = a2;
        goto LABEL_14;
      }

      v10 = result;
      v11 = a3;
      v12 = a4;
      v13 = sub_18197FE14(*result, v6, a2);
    }

    else
    {
      v10 = result;
      v11 = a3;
      v12 = a4;
      v13 = sub_18197FD9C(*result, a2);
    }

    a4 = v12;
    a3 = v11;
    v6 = v13;
    result = v10;
LABEL_14:
    *(v4 + 32) = v6;
    if (*(result + 68))
    {

      return sub_1819507A4(result, v6, (result + 33), 1);
    }

    else
    {
      v19 = 0;
      v14 = a4 - a3 + 1;
      do
      {
        v15 = *++a3;
        --v14;
      }

      while ((byte_181A204C8[v15] & 1) != 0);
      v16 = (a4 - 1);
      do
      {
        v17 = *v16--;
        --v14;
      }

      while ((byte_181A204C8[v17] & 1) != 0);
      v18 = a3;
      LODWORD(v19) = v14;
      return sub_1819507A4(result, v6, &v18, 1);
    }
  }

  if (a2)
  {
    v9 = *result;

    return sub_1819439E0(v9, a2);
  }

  return result;
}

uint64_t *sub_18194F630(uint64_t *result, uint64_t a2)
{
  v2 = result[43];
  if (!v2)
  {
    return result;
  }

  if (*(result + 302) > 1u)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v3 = *a2;
  if (!*a2)
  {
    return result;
  }

  v4 = *(v2 + 54);
  v5 = *result;
  v6 = *(a2 + 8);
  v7 = result;
  result = sub_181929E8C(*result, v6 + 1, 1565185748);
  if (!result)
  {
    return result;
  }

  v8 = result;
  memcpy(result, v3, v6);
  v8[v6] = 0;
  v9 = *v8;
  if (byte_181A204C8[*v8] < 0)
  {
    v10 = 0;
    if (v9 == 91)
    {
      v9 = 93;
    }

    for (i = 1; ; ++i)
    {
      v12 = i;
      v13 = v8[i];
      if (v13 == v9)
      {
        ++i;
        LOBYTE(v13) = v9;
        if (v8[v12 + 1] != v9)
        {
          break;
        }
      }

      v8[v10++] = v13;
    }

    v8[v10] = 0;
  }

  v14 = *(*v7 + 100);
  v15 = *(*v7 + 197);
  v16 = sub_181949138(*v7, *(*v7 + 100), v8, v15);
  v17 = v16;
  if (!v15)
  {
    if (v16 && v16[3])
    {
LABEL_19:
      v18 = v4 - 1;
      sub_1819619C4(v5, *(v2 + 8) + 16 * (v4 - 1), v8);
      for (j = *(v2 + 16); j; j = *(j + 40))
      {
        if (v18 == **(j + 8))
        {
          v21 = *(v2 + 8) + 16 * v18;
          v22 = *(v21 + 14);
          if ((v22 & 0x200) != 0)
          {
            v23 = *v21 - 1;
              ;
            }

            if ((v22 & 4) != 0)
            {
                ;
              }
            }

            v20 = v23 + 1;
          }

          else
          {
            v20 = 0;
          }

          **(j + 64) = v20;
        }
      }

      goto LABEL_20;
    }

    v17 = sub_18194E6B8(v7, v14, v16, v8);
  }

  if (v17)
  {
    goto LABEL_19;
  }

LABEL_20:

  return sub_181929C84(v5, v8);
}

void sub_18194F814(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 **a3)
{
  v5 = a1[43];
  if (!v5)
  {
LABEL_6:
    if (a2)
    {
      v7 = *a1;

      sub_1819439E0(v7, a2);
    }

    return;
  }

  if (*(a1 + 302) == 1)
  {
    sub_181910730(a1, "virtual tables cannot use computed columns");
    goto LABEL_6;
  }

  v6 = *(v5 + 8) + 16 * *(v5 + 54);
  if (*(v6 - 4))
  {
LABEL_5:
    sub_181910730(a1, "error in generated column %s", a3);
    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_46;
  }

  v8 = *(a3 + 2);
  if (v8 != 6)
  {
    if (v8 != 7)
    {
      goto LABEL_5;
    }

    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_5;
    }

    if ((*v9 & 0xDF) != 0x56)
    {
      v12 = 118;
      goto LABEL_45;
    }

    v10 = v9 + 1;
    if ((v9[1] & 0xDF) == 0x49)
    {
      v10 = v9 + 2;
      if ((v9[2] & 0xDF) == 0x52)
      {
        v10 = v9 + 3;
        if ((v9[3] & 0xDF) == 0x54)
        {
          v10 = v9 + 4;
          if ((v9[4] & 0xDF) == 0x55)
          {
            v10 = v9 + 5;
            if ((v9[5] & 0xDF) == 0x41)
            {
              v11 = v9[6];
              v9 += 6;
              if ((v11 & 0xFFFFFFDF) == 0x4C)
              {
LABEL_46:
                --*(v5 + 56);
                v17 = 32;
                goto LABEL_47;
              }

              v12 = 108;
LABEL_45:
              if (v12 != byte_181A20298[*v9])
              {
                goto LABEL_5;
              }

              goto LABEL_46;
            }

            v12 = 97;
          }

          else
          {
            v12 = 117;
          }
        }

        else
        {
          v12 = 116;
        }
      }

      else
      {
        v12 = 114;
      }
    }

    else
    {
      v12 = 105;
    }

    v9 = v10;
    goto LABEL_45;
  }

  v13 = *a3;
  if (!*a3)
  {
    goto LABEL_5;
  }

  if ((*v13 & 0xDF) != 0x53)
  {
    v16 = 115;
    goto LABEL_41;
  }

  v14 = v13 + 1;
  if ((v13[1] & 0xDF) != 0x54)
  {
    v16 = 116;
LABEL_40:
    v13 = v14;
LABEL_41:
    if (v16 != byte_181A20298[*v13])
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

  v14 = v13 + 2;
  if ((v13[2] & 0xDF) != 0x4F)
  {
    v16 = 111;
    goto LABEL_40;
  }

  v14 = v13 + 3;
  if ((v13[3] & 0xDF) != 0x52)
  {
    v16 = 114;
    goto LABEL_40;
  }

  v14 = v13 + 4;
  if ((v13[4] & 0xDF) != 0x45)
  {
    v16 = 101;
    goto LABEL_40;
  }

  v15 = v13[5];
  v13 += 5;
  if ((v15 & 0xFFFFFFDF) != 0x44)
  {
    v16 = 100;
    goto LABEL_41;
  }

LABEL_42:
  v17 = 64;
LABEL_47:
  v18 = *(v6 - 2);
  *(v6 - 2) = v18 | v17;
  *(v5 + 48) |= v17;
  if ((v18 & 1) != 0 && ((v18 | v17) & 0x60) != 0)
  {
    sub_181910730(a1, "generated columns cannot be part of the PRIMARY KEY");
  }

  if (!a2)
  {
    v21 = 0;
    goto LABEL_62;
  }

  v19 = *a2;
  if (v19 != 60)
  {
    v21 = a2;
    goto LABEL_59;
  }

  v20 = sub_181929E8C(*a1, 0x50uLL, 0x1032040B79D87BDLL);
  v21 = v20;
  if (v20)
  {
    *(v20 + 2) = 0u;
    *(v20 + 3) = 0u;
    *v20 = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 4) = 0u;
    *v20 = -83;
    *(v20 + 26) = -1;
    v22 = 1;
    *(v20 + 10) = 1;
    *(v20 + 2) = a2;
    *(v20 + 1) |= *(a2 + 1) & 0x400208;
    v23 = *(a2 + 10);
    if (v23 >= 1)
    {
      v22 = v23 + 1;
      *(v20 + 10) = v23 + 1;
    }

    if (*(*a1 + 148) >= v22)
    {
LABEL_60:
      v21[1] = *(v6 - 7);
      goto LABEL_62;
    }

    sub_181910730(a1, "Expression tree is too large (maximum depth %d)", *(*a1 + 148));
    v19 = *v21;
LABEL_59:
    if (v19 == 72)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  sub_1819439E0(*a1, a2);
LABEL_62:
  v24 = *(v5 + 80);
  v25 = *(v6 - 4);
  if (*(v6 - 4))
  {
    v26 = v24 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    if (!v24)
    {
      *(v6 - 4) = 1;
      v29 = sub_18197FD9C(*a1, v21);
LABEL_77:
      *(v5 + 80) = v29;
      return;
    }

    v27 = *v24;
LABEL_70:
    *(v6 - 4) = v27 + 1;
    if (v24[1] > v27)
    {
      *v24 = v27 + 1;
      v28 = &v24[6 * v27];
      *(v28 + 2) = 0;
      *(v28 + 3) = 0;
      *(v28 + 1) = v21;
      *(v5 + 80) = v24;
      return;
    }

    v29 = sub_18197FE14(*a1, v24, v21);
    goto LABEL_77;
  }

  v27 = *v24;
  if (*v24 < v25)
  {
    goto LABEL_70;
  }

  v30 = v24 + 2;
  v31 = *&v24[6 * (v25 - 1) + 2];
  if (v31)
  {
    sub_1819439E0(*a1, v31);
    v25 = *(v6 - 4);
  }

  *&v30[6 * v25 - 6] = v21;
}

void sub_18194FC6C(void *a1, void *a2, _OWORD *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v43 = 0uLL;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = *a1;
  if (*(a1 + 74) >= 1)
  {
    sub_181910730(a1, "parameters are not allowed in views", a3, a4, a5, a6, a7, a8);
    goto LABEL_3;
  }

  sub_18189FE3C(a1, a3, a4, a7, 1, 0, a8);
  v25 = a1[43];
  if (v25 && !*(a1 + 13))
  {
    *(v25 + 48) |= 0x200u;
    if (*(a4 + 8))
    {
      if (*(*a1 + 197))
      {
        sub_181910730(a1, "corrupt database");
        v26 = 0;
        v27 = *(v25 + 96);
        if (!v27)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if ((sub_18195D514(*a1, a3) & 0x80000000) != 0)
        {
          sub_181910730(a1, "unknown database %T", a3);
        }

        v26 = a4;
        v27 = *(v25 + 96);
        if (!v27)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v26 = a3;
      v27 = *(v25 + 96);
      if (!v27)
      {
LABEL_43:
        v29 = -32768;
LABEL_44:
        v31 = (*(*a1 + 32) + 32 * v29);
        v32 = *v31;
        *(&v40 + 1) = v31[3];
        *(&v41 + 1) = v32;
        *&v42 = "view";
        *(&v42 + 1) = v26;
        LOBYTE(v41) = v29 == 1;
        *&v37 = a1;
        *(&v37 + 1) = a1;
        *&v38 = sub_181962F5C;
        *(&v38 + 1) = sub_181962FE0;
        *&v39 = nullsub_8;
        DWORD2(v39) = 0;
        WORD6(v39) = 0;
        *&v40 = &v37;
        if (!sub_1818AEE70(&v37 + 1, v8))
        {
          *(v8 + 4) |= 0x200000u;
          if (*(a1 + 302) <= 1u)
          {
            v33 = sub_1818CB220(v11, v8, 1);
          }

          else
          {
            v33 = v8;
            v8 = 0;
          }

          *(v25 + 64) = v33;
          *(v25 + 32) = sub_1818C83A0(v11, a5, 1u);
          *(v25 + 63) = 2;
          if (!*(v11 + 103))
          {
            v43 = *(a1 + 35);
            if (*v43 == 59)
            {
              v34 = 0;
            }

            else
            {
              v34 = DWORD2(v43);
            }

            v35 = *a2 + (v43 + v34 - *a2);
            do
            {
              v36 = *--v35;
            }

            while ((byte_181A204C8[v36] & 1) != 0);
            *&v43 = v35;
            DWORD2(v43) = 1;
            sub_1818A0FFC(a1, 0, &v43, 0, 0);
          }
        }

        goto LABEL_3;
      }
    }

    v28 = (*(v11 + 32) + 24);
    v29 = -1;
    do
    {
      v30 = *v28;
      v28 += 4;
      ++v29;
    }

    while (v30 != v27);
    goto LABEL_44;
  }

LABEL_3:
  if (v8)
  {
    sub_1818BB408(v11, v8, 1, v12);
  }

  if (*(a1 + 302) < 2u)
  {
    goto LABEL_27;
  }

  if (a5)
  {
    v45 = 0u;
    v46 = 0u;
    v44[0] = a1;
    v44[1] = sub_181961E4C;
    v13 = *a5;
    if (*a5 < 1)
    {
      goto LABEL_27;
    }

    for (i = 2; ; i += 6)
    {
      v15 = *&a5[i];
      if (v15)
      {
        if (sub_181959BA0(v44, v15))
        {
          v16 = 1;
        }

        else
        {
          v16 = v13 <= 1;
        }

        if (v16)
        {
LABEL_17:
          v17 = *a5;
          if (v17 >= 1)
          {
            for (j = 0; j != v17; ++j)
            {
              v19 = &a5[6 * j + 2];
              if ((*(v19 + 17) & 3) == 0)
              {
                v20 = a1[51];
                if (v20)
                {
                  v21 = *(v19 + 1);
                  while (*v20 != v21)
                  {
                    v20 = v20[3];
                    if (!v20)
                    {
                      goto LABEL_20;
                    }
                  }

                  *v20 = 0;
                }
              }

LABEL_20:
              ;
            }
          }

LABEL_27:
          if (a5)
          {
            sub_18194E5B8(v11, a5);
          }

          return;
        }
      }

      else if (v13 <= 1)
      {
        goto LABEL_17;
      }

      --v13;
    }
  }
}

uint64_t sub_181950008(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (a2)
  {
    *(a2 + 104) = a3;
    sub_1819500CC(a1, a2);
  }

  else if (a3)
  {
    v6 = *a1;
    if (*a3 >= 1)
    {
      v7 = 0;
      v8 = (a3 + 8);
      do
      {
        v9 = *(v8 - 1);
        if (v9)
        {
          sub_18194E5B8(v6, v9);
        }

        if (*v8)
        {
          sub_1818BB408(v6, *v8, 1, a4);
        }

        v10 = *(v8 - 2);
        if (v10)
        {
          sub_181929C84(v6, v10);
        }

        ++v7;
        v8 += 6;
      }

      while (v7 < *a3);
    }

    sub_181929C84(v6, a3);
  }

  return a2;
}

void sub_1819500CC(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 80))
  {
    v3 = 0;
    v4 = 1;
    v5 = "ORDER BY";
    v6 = a2;
    while (1)
    {
      v7 = v4;
      v8 = v6;
      *(v6 + 88) = v3;
      *(v6 + 4) |= 0x100u;
      v6 = *(v6 + 80);
      if (!v6)
      {
        break;
      }

      if (*(v6 + 72))
      {
        goto LABEL_7;
      }

      ++v4;
      v3 = v8;
      if (*(v6 + 96))
      {
        v5 = "LIMIT";
LABEL_7:
        v9 = *v8 + 120;
        ++v7;
        if (v9 > 2u)
        {
          v10 = "UNION";
        }

        else
        {
          v10 = off_1E6A284D0[v9];
        }

        v11 = a1;
        sub_181910730(a1, "%s clause should come after %s not before", v5, v10);
        a1 = v11;
        break;
      }
    }

    if ((*(a2 + 5) & 6) == 0)
    {
      v12 = *(*a1 + 152);
      if (v12 >= 1 && v7 > v12)
      {

        sub_181910730(a1, "too many terms in compound SELECT");
      }
    }
  }
}

uint64_t sub_1819501F4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 40);
    if (*v2 >= 1 && (*(v2 + 33) & 4) != 0)
    {
      v3 = *(result + 16);
      v4 = *(*(v2 + 72) + 12);
      v5 = *(v3 + 144);
      if (*(v3 + 148) <= v5)
      {
        v7 = result;
        sub_18194C8AC(*(result + 16), 68, v4, 0, 0);
        result = v7;
      }

      else
      {
        *(v3 + 144) = v5 + 1;
        v6 = *(v3 + 136) + 40 * v5;
        *v6 = 68;
        *(v6 + 4) = v4;
        *(v6 + 8) = 0u;
        *(v6 + 24) = 0u;
      }

      v8 = *(v3 + 24);
      *(v8 + 31) = 0;
      *(v8 + 44) = 0;
      v9 = *(result + 16);
      v10 = *(v9 + 144);
      if (*(*v9 + 103))
      {
        v11 = &byte_1EA831A58;
      }

      else
      {
        v11 = (*(v9 + 136) + 40 * *(*(v2 + 72) + 8) - 40);
      }

      *(v11 + 2) = v10;
    }
  }

  return result;
}

_OWORD *sub_1819502E4(uint64_t *a1, _OWORD *a2, void *a3)
{
  if ((*(a1 + 43) & 2) == 0 && !*(*a1 + 197))
  {
    v12 = *a3;
    if (*a3 >= 1)
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = a3[v14];
        v44 = 0x100000000;
        v45 = 0;
        *(&v43 + 1) = 0;
        *&v42 = a1;
        *(&v42 + 1) = sub_1818C7E14;
        *&v43 = sub_18195A49C;
        if (v15)
        {
          sub_181959BA0(&v42, v15);
          if (!WORD2(v44))
          {
            goto LABEL_3;
          }

          v12 = *a3;
        }

        ++v13;
        v14 += 3;
      }

      while (v13 < v12);
    }

    if (**(a2 + 5))
    {
      goto LABEL_17;
    }

    v23 = *(a2 + 4);
    v24 = *v23;
    if (*v23 < 1)
    {
      goto LABEL_17;
    }

    v25 = 0;
    v26 = (v23 + 2);
    v27 = 2;
    do
    {
      v28 = *&v23[v27];
      v44 = 0x100000000;
      v45 = 0;
      *(&v43 + 1) = 0;
      *&v42 = a1;
      *(&v42 + 1) = sub_1818C7E14;
      *&v43 = sub_18195A49C;
      if (v28)
      {
        sub_181959BA0(&v42, v28);
        if (!WORD2(v44))
        {
          goto LABEL_3;
        }

        v24 = *v23;
      }

      ++v25;
      v27 += 6;
    }

    while (v25 < v24);
    if (v24 < 1)
    {
LABEL_17:
      if (!*(a1 + 302))
      {
        v16 = *(a2 + 5);
        if (*v16)
        {
          v17 = v16 + 2;
          ++v16[12];
        }

        else
        {
          v30 = sub_1818E7DFC(a1);
          v31 = sub_1818A9824(a1, 0, 0, 0, 0, 0, 0, 0, 0);
          if ((*(*a1 + 44) & 0x10) == 0)
          {
            v32 = v31;
            sub_18194D060(a1);
            v31 = v32;
          }

          if (v31)
          {
            v44 = 0;
            v42 = 0u;
            v43 = 0u;
            v33 = *(v31 + 5);
            *v33 = 1;
            v34 = *(a2 + 10);
            *(v31 + 10) = v34;
            *v31 = *a2;
            if (v34)
            {
              *(v31 + 1) |= 0x200u;
            }

            v35 = v31;
            *(a2 + 10) = 0;
            *a2 = -117;
            v17 = (v33 + 8);
            *(v33 + 33) |= 0x40u;
            *(v33 + 36) = -1;
            *(v33 + 48) = 2;
            if (sub_181960508(a1, v33 + 8, a2, 0))
            {
              v36 = *(v33 + 72);
              v37 = (*(v30 + 144) + 1);
              v36[2] = v37;
              v38 = (*(a1 + 15) + 1);
              *(a1 + 15) = v38;
              v36[3] = v38;
              sub_1818A2964(v30, 11, v38, 0, v37);
              v39 = v36[3];
              LOBYTE(v42) = 13;
              *(&v42 + 4) = v39;
              *(&v43 + 1) = 0;
              v40 = *(a1 + 15);
              HIDWORD(v42) = v40 + 3;
              LODWORD(v43) = **(a2 + 4);
              *(a1 + 15) = v40 + v43 + 2;
              *(a2 + 1) |= 0x400u;
              sub_1818A9A10(a1, a2, &v42);
              v36[4] = HIDWORD(v42);
            }

            a2 = v35;
          }

          else
          {
            v17 = 0;
          }
        }

        if (!*(a1 + 13))
        {
          v41 = *(v17 + 8);
          if (**(*v41 + 32) == *a3)
          {
            sub_1819588AC(a1, a3, *(v41 + 16), 0, 0);
            sub_1818A2964(a1[2], 12, *(v41 + 12), 0, 0);
          }

          else
          {
            sub_18195FD00(a1, *v41);
          }
        }

        sub_18194E5B8(*a1, a3);
        return a2;
      }
    }

    else
    {
      v29 = v24;
      while (!sub_1818D0A24(*v26))
      {
        v26 += 3;
        if (!--v29)
        {
          goto LABEL_17;
        }
      }
    }
  }

LABEL_3:
  v6 = *(a2 + 5);
  if (*v6)
  {
    if (*v6 >= 1 && (*(v6 + 33) & 4) != 0)
    {
      v7 = a1[2];
      v8 = *(*(v6 + 72) + 12);
      v9 = *(v7 + 144);
      if (*(v7 + 148) <= v9)
      {
        sub_18194C8AC(a1[2], 68, v8, 0, 0);
      }

      else
      {
        *(v7 + 144) = v9 + 1;
        v10 = *(v7 + 136) + 40 * v9;
        *v10 = 68;
        *(v10 + 4) = v8;
        *(v10 + 8) = 0u;
        *(v10 + 24) = 0u;
      }

      v18 = *(v7 + 24);
      *(v18 + 31) = 0;
      *(v18 + 44) = 0;
      v19 = a1[2];
      v20 = *(v19 + 144);
      if (*(*v19 + 103))
      {
        v21 = &byte_1EA831A58;
      }

      else
      {
        v21 = (*(v19 + 136) + 40 * *(*(v6 + 72) + 8) - 40);
      }

      *(v21 + 2) = v20;
    }

    v11 = 512;
  }

  else if (*(a2 + 10))
  {
    v11 = *(a2 + 1) & 0x600;
  }

  else
  {
    v11 = 1536;
  }

  result = sub_1818A9824(a1, a3, 0, 0, 0, 0, 0, v11, 0);
  *(a2 + 1) &= ~0x400u;
  if (result)
  {
    *result = -120;
    *(result + 10) = a2;
    return result;
  }

  return a2;
}

uint64_t sub_1819507A4(uint64_t result, int *a2, uint64_t a3, int a4)
{
  if (a2)
  {
    v6 = result;
    v7 = a2 + 2;
    v8 = *a2 - 1;
    v9 = *a3;
    if (*a3)
    {
      v10 = *(a3 + 8);
      result = sub_181929E8C(*result, v10 + 1, 1565185748);
      v11 = result;
      if (result)
      {
        result = memcpy(result, v9, v10);
        v11[v10] = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = &v7[6 * v8];
    *(v12 + 1) = v11;
    v13 = (v12 + 2);
    if (a4)
    {
      if (v11 && byte_181A204C8[*v11] < 0)
      {
        v14 = 0;
        if (*v11 == 91)
        {
          v15 = 93;
        }

        else
        {
          v15 = *v11;
        }

        for (i = 1; ; ++i)
        {
          v17 = i;
          v18 = v11[i];
          if (v18 == v15)
          {
            ++i;
            LOBYTE(v18) = v15;
            if (v11[v17 + 1] != v15)
            {
              break;
            }
          }

          v11[v14++] = v18;
        }

        v11[v14] = 0;
      }

      v19 = *(v6 + 302);
      if (v19 >= 2 && v19 != 3)
      {
        v20 = *v13;
        if (*v6)
        {
          result = sub_181929E8C(*v6, 0x20uLL, 0x10F00409A20EBA4);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          result = sub_181902484(32, 0x10F00409A20EBA4);
          if (!result)
          {
            return result;
          }
        }

        *result = 0u;
        *(result + 16) = 0u;
        *result = v20;
        *(result + 8) = *a3;
        *(result + 24) = *(v6 + 408);
        *(v6 + 408) = result;
      }
    }
  }

  return result;
}

uint64_t *sub_18195092C(uint64_t *result, int *a2, unsigned __int8 *a3, int a4)
{
  if (a2)
  {
    v4 = &a2[6 * *a2];
    if (!*(v4 - 1))
    {
      v5 = *result;
      v6 = v4 - 4;
      v7 = a4 - a3;
      do
      {
        v8 = a3;
        v9 = v7;
        v10 = *a3++;
        --v7;
      }

      while ((byte_181A204C8[v10] & 1) != 0);
      v11 = v9;
      v12 = (v9 << 32) + 0x100000000;
      v13 = v11 - 2;
      do
      {
        v14 = byte_181A204C8[a3[v13]];
        v12 -= 0x100000000;
        --v13;
      }

      while ((v14 & 1) != 0);
      v15 = v12 >> 32;
      result = sub_181929E8C(v5, (v12 >> 32) + 1, 1565185748);
      v16 = result;
      if (result)
      {
        result = memcpy(result, v8, v15);
        *(v16 + v15) = 0;
      }

      *(v6 + 1) = v16;
      *(v6 + 17) = *(v6 + 17) & 0xFFFC | 1;
    }
  }

  return result;
}

void *sub_181950A08(uint64_t a1, int a2, char *__s)
{
  v9[0] = __s;
  if (__s)
  {
    v3 = a1;
    v4 = a2;
    v5 = strlen(__s);
    a2 = v4;
    v6 = v5;
    a1 = v3;
    v7 = v6 & 0x3FFFFFFF;
  }

  else
  {
    v7 = 0;
  }

  v9[1] = v7;
  return sub_1818A8CF0(a1, a2, v9, 0);
}

unsigned int *sub_181950A70(unsigned int *result)
{
  if (!result)
  {
    return result;
  }

  v1 = *result;
  if (v1 < 2)
  {
    return result;
  }

  if (v1 == 2)
  {
    v2 = 0;
    v3 = *result;
LABEL_8:
    v11 = v3 + 1;
    v12 = &result[18 * v3 - 28];
    do
    {
      v13 = *v12;
      *(v12 + 72) = *v12;
      v2 |= v13;
      --v11;
      v12 -= 18;
    }

    while (v11 > 2);
    goto LABEL_10;
  }

  v4 = 0;
  v5 = 0;
  v6 = (v1 - 1) & 0xFFFFFFFFFFFFFFFELL;
  v3 = v1 - v6;
  v7 = &result[18 * v1 - 46];
  v8 = v6;
  do
  {
    v9 = *(v7 + 72);
    v10 = *v7;
    *(v7 + 144) = v9;
    *(v7 + 72) = v10;
    v4 |= v9;
    v5 |= v10;
    v7 -= 36;
    v8 -= 2;
  }

  while (v8);
  v2 = v5 | v4;
  if (v1 - 1 != v6)
  {
    goto LABEL_8;
  }

LABEL_10:
  *(result + 32) = 0;
  if ((v2 & 0x10) != 0)
  {
    v14 = &result[18 * v1 - 10];
    v15 = 1;
    while (1)
    {
      v16 = v1;
      if (v1 < 2)
      {
        break;
      }

      --v1;
      v17 = *v14;
      v14 -= 18;
      if ((v17 & 0x10) != 0)
      {
        v15 = v16;
        break;
      }
    }

    v18 = v15 - 2;
    v19 = (v18 & ~(v18 >> 63)) + 1;
    if (v19 < 2)
    {
      goto LABEL_21;
    }

    v18 -= v19 & 0xFFFFFFFFFFFFFFFELL;
    if (v16 <= 1)
    {
      LODWORD(v16) = 1;
    }

    v20 = v16 - 2;
    v21 = (((v16 - 2) & ~((v16 - 2) >> 63)) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v22 = &result[18 * v20 + 8];
    do
    {
      v23 = *(v22 - 72) | 0x40;
      *v22 |= 0x40u;
      *(v22 - 72) = v23;
      v22 -= 36;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_21:
      v24 = v18 + 1;
      v25 = &result[18 * v18 + 8];
      do
      {
        *v25 |= 0x40u;
        v25 -= 18;
        --v24;
      }

      while (v24 > 0);
    }
  }

  return result;
}

uint64_t *sub_181950BE8(uint64_t *result, int *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a3 + 8);
    if (v3)
    {
      v4 = &a2[18 * *a2 - 16];
      v5 = *a3;
      if (v3 == 1)
      {
        v3 = 1;
        if (!v5)
        {
          goto LABEL_19;
        }
      }

      else if (!v5)
      {
        v6 = 0;
LABEL_18:
        *(v4 + 5) = v6;
        LOWORD(v3) = 2;
LABEL_19:
        *(v4 + 25) |= v3;
        return result;
      }

      result = sub_181929E8C(*result, v3 + 1, 1565185748);
      v6 = result;
      if (result)
      {
        result = memcpy(result, v5, v3);
        *(v6 + v3) = 0;
        if (byte_181A204C8[*v6] < 0)
        {
          v7 = 0;
          if (*v6 == 91)
          {
            v8 = 93;
          }

          else
          {
            v8 = *v6;
          }

          for (i = 1; ; ++i)
          {
            v10 = i;
            v11 = *(v6 + i);
            if (v11 == v8)
            {
              ++i;
              LOBYTE(v11) = v8;
              if (*(v6 + v10 + 1) != v8)
              {
                break;
              }
            }

            *(v6 + v7++) = v11;
          }

          *(v6 + v7) = 0;
        }
      }

      goto LABEL_18;
    }
  }

  return result;
}

void *sub_181950CF4(void *result, int *a2, void *a3)
{
  if (a2)
  {
    v3 = &a2[18 * *a2];
    *(v3 - 3) = a3;
    *(v3 - 39) |= 8u;
  }

  else if (a3)
  {
    return sub_18194E5B8(*result, a3);
  }

  return result;
}

uint64_t sub_181950D2C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (*(a1 + 302) != 3)
  {
    v6 = *a1;
    if (!v6)
    {
      v7 = sub_181902484(32, 0x10F00409A20EBA4);
      if (!v7)
      {
        return a2;
      }

      goto LABEL_4;
    }

    v7 = sub_181929E8C(v6, 0x20uLL, 0x10F00409A20EBA4);
    if (v7)
    {
LABEL_4:
      *v7 = 0u;
      *(v7 + 16) = 0u;
      *v7 = a2;
      *(v7 + 8) = *a3;
      *(v7 + 24) = *(a1 + 408);
      *(a1 + 408) = v7;
    }
  }

  return a2;
}

_BYTE *sub_181950DC4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  result = sub_181929E8C(a1, v3 + 1, 1565185748);
  if (result)
  {
    v5 = result;
    memcpy(result, v2, v3);
    result = v5;
    v5[v3] = 0;
    if (byte_181A204C8[*v5] < 0)
    {
      v6 = 0;
      if (*v5 == 91)
      {
        v7 = 93;
      }

      else
      {
        v7 = *v5;
      }

      for (i = 1; ; ++i)
      {
        v9 = i;
        v10 = v5[i];
        if (v10 == v7)
        {
          ++i;
          LOBYTE(v10) = v7;
          if (v5[v9 + 1] != v7)
          {
            break;
          }
        }

        v5[v6++] = v10;
      }

      v5[v6] = 0;
    }
  }

  return result;
}

uint64_t sub_181950E98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = *(a2 + 8);
    while (1)
    {
      v7 = &unk_181A24600 + 3 * v4;
      if (v5 == v7[1])
      {
        v8 = *a2;
        if (*a2)
        {
          if (!v5)
          {
            break;
          }

          v9 = &aNaturaleftoute[*v7];
          v10 = v5 + 1;
          while (1)
          {
            v11 = *v8;
            if (!*v8)
            {
              break;
            }

            LODWORD(v11) = byte_181A20298[v11];
            v6 = byte_181A20298[*v9];
            if (v11 != v6)
            {
              goto LABEL_4;
            }

            ++v8;
            ++v9;
            if (--v10 <= 1)
            {
              goto LABEL_13;
            }
          }

          v6 = byte_181A20298[*v9];
LABEL_4:
          if (v11 == v6)
          {
            break;
          }
        }
      }

      if (++v4 == 7)
      {
        LODWORD(v12) = 0;
LABEL_29:
        v12 = v12 | 0x80;
        goto LABEL_41;
      }
    }

LABEL_13:
    v12 = v7[2];
    if (a3)
    {
      v13 = 0;
      v14 = *(a3 + 8);
      while (1)
      {
        v16 = &unk_181A24600 + 3 * v13;
        if (v14 == v16[1])
        {
          v17 = *a3;
          if (*a3)
          {
            if (!v14)
            {
              break;
            }

            v18 = &aNaturaleftoute[*v16];
            v19 = v14 + 1;
            while (1)
            {
              v20 = *v17;
              if (!*v17)
              {
                break;
              }

              LODWORD(v20) = byte_181A20298[v20];
              v15 = byte_181A20298[*v18];
              if (v20 != v15)
              {
                goto LABEL_17;
              }

              ++v17;
              ++v18;
              if (--v19 <= 1)
              {
                goto LABEL_26;
              }
            }

            v15 = byte_181A20298[*v18];
LABEL_17:
            if (v20 == v15)
            {
              break;
            }
          }
        }

        if (++v13 == 7)
        {
          goto LABEL_29;
        }
      }

LABEL_26:
      v12 = v12 | v16[2];
      if (a4)
      {
        v21 = 0;
        v22 = *(a4 + 8);
        while (1)
        {
          v24 = &unk_181A24600 + 3 * v21;
          if (v22 == v24[1])
          {
            v25 = *a4;
            if (*a4)
            {
              if (!v22)
              {
                break;
              }

              v26 = &aNaturaleftoute[*v24];
              v27 = v22 + 1;
              while (1)
              {
                v28 = *v25;
                if (!*v25)
                {
                  break;
                }

                LODWORD(v28) = byte_181A20298[v28];
                v23 = byte_181A20298[*v26];
                if (v28 != v23)
                {
                  goto LABEL_31;
                }

                ++v25;
                ++v26;
                if (--v27 <= 1)
                {
                  goto LABEL_40;
                }
              }

              v23 = byte_181A20298[*v26];
LABEL_31:
              if (v28 == v23)
              {
                break;
              }
            }
          }

          if (++v21 == 7)
          {
            goto LABEL_29;
          }
        }

LABEL_40:
        v12 = v12 | v24[2];
      }
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_41:
  if ((v12 & 0x38) == 0x20 || (v12 & 0x21) == 0x21 || (v12 & 0x80) != 0)
  {
    v29 = " ";
    if (a3)
    {
      v30 = " ";
    }

    else
    {
      v30 = "";
    }

    if (!a4)
    {
      v29 = "";
    }

    sub_181910730(a1, "unknown join type: %T%s%T%s%T", a2, v30, a3, v29, a4);
    return 1;
  }

  return v12;
}

void sub_1819510F0(uint64_t a1, void *a2)
{
  v4 = *a1;
  if (*(a1 + 360))
  {
    sub_181910730(a1, "cannot use RETURNING in a trigger");
  }

  *(a1 + 40) = 1;
  if (!v4)
  {
    v5 = sub_181902484(240, 0x10300409BD89F26);
    if (!v5)
    {
      goto LABEL_28;
    }

LABEL_18:
    *(v5 + 208) = 0u;
    *(v5 + 224) = 0u;
    *(v5 + 176) = 0u;
    *(v5 + 192) = 0u;
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 128) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *v5 = 0u;
    *(a1 + 248) = v5;
    *v5 = a1;
    *(v5 + 8) = a2;
    sub_18195B158(a1, sub_181985A74, v5);
    if (!*(v4 + 103))
    {
      v7 = (v5 + 196);
      sqlite3_snprintf(40, (v5 + 196), "sqlite_returning_%p", a1);
      *(v5 + 16) = v5 + 196;
      v8 = v5 + 16;
      *(v8 + 16) = 663;
      *(v8 + 18) = 1;
      v9 = *(*(v4 + 32) + 56);
      *(v8 + 40) = v9;
      *(v8 + 48) = v9;
      *(v8 + 72) = -105;
      *(v8 + 56) = v8 + 72;
      *(v8 + 80) = v8;
      *(v8 + 120) = a2;
      if (sub_18188FAF0(v9 + 56, v7, v8) == v8 && !*(v4 + 103) && !*(v4 + 104))
      {
        *(v4 + 103) = 1;
        if (*(v4 + 220) >= 1)
        {
          *(v4 + 424) = 1;
        }

        ++*(v4 + 432);
        *(v4 + 436) = 0;
        v10 = *(v4 + 344);
        if (v10)
        {
          sub_181910730(v10, "out of memory");
          for (i = *(v4 + 344); ; ++*(i + 52))
          {
            *(i + 24) = 7;
            i = *(i + 216);
            if (!i)
            {
              break;
            }
          }
        }
      }
    }

    return;
  }

  if (*(v4 + 436) <= 0xEFu)
  {
    if (*(v4 + 432))
    {
      if (*(v4 + 103))
      {
        goto LABEL_28;
      }
    }

    else
    {
      ++*(v4 + 452);
    }

    goto LABEL_17;
  }

  v5 = *(v4 + 472);
  if (v5)
  {
    v6 = (v4 + 472);
LABEL_15:
    *v6 = *v5;
    ++*(v4 + 448);
    goto LABEL_18;
  }

  v5 = *(v4 + 464);
  if (v5)
  {
    v6 = (v4 + 464);
    goto LABEL_15;
  }

  ++*(v4 + 456);
LABEL_17:
  v5 = sub_18192A080(v4, 240, 0x10300409BD89F26);
  if (v5)
  {
    goto LABEL_18;
  }

LABEL_28:
  if (a2)
  {

    sub_18194E5B8(v4, a2);
  }
}

int *sub_18195136C(uint64_t *a1, int *a2, int *a3)
{
  v3 = a2;
  if (a3)
  {
    v6 = sub_1818A95FC(a1, a2, *a3, 1);
    if (v6)
    {
      v3 = v6;
      memcpy(v6 + 20, a3 + 2, 72 * *a3);
      sub_181929C84(*a1, a3);
      *(v3 + 32) |= v3[26] & 0x40;
    }

    else
    {
      sub_1818BB5B0(*a1, a3, v7, v8);
    }
  }

  return v3;
}

int *sub_181951404(uint64_t *a1, int *a2, int *a3, unsigned __int8 *a4)
{
  v6 = a2;
  v8 = *a1;
  if (a2)
  {
    v9 = *a2;
    if (!a3)
    {
LABEL_35:
      if (!a4)
      {
        if (!a3)
        {
          return v6;
        }

        goto LABEL_47;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_35;
    }
  }

  if (!a4)
  {
    goto LABEL_35;
  }

  v10 = *a4;
  LODWORD(v11) = *a3;
  if (v10 != 139)
  {
    if (v10 == 176)
    {
      v10 = a4[2];
    }

    v12 = a4;
    if (v10 == 177)
    {
LABEL_12:
      v13 = **(v12 + 4);
      if (v11 == v13)
      {
        goto LABEL_13;
      }

LABEL_43:
      sub_181910730(a1, "%d columns assigned %d values", *a3, v13);
      goto LABEL_44;
    }

    if (v10 == 139)
    {
      v12 = *(a4 + 4);
      goto LABEL_12;
    }

    v13 = 1;
    if (v11 != 1)
    {
      goto LABEL_43;
    }
  }

LABEL_13:
  v30 = v9;
  if (v11 >= 1)
  {
    v14 = 0;
    v15 = 8;
    do
    {
      v18 = *a4;
      if (v18 == 177)
      {
        v21 = *(a4 + 4);
        v19 = *(v21 + v15);
        if (*(a1 + 302) < 2u)
        {
          if (!v19)
          {
            goto LABEL_17;
          }

LABEL_26:
          v19 = sub_1818C7FEC(*a1, v19, 0, 0);
          if (!v19)
          {
            goto LABEL_17;
          }

          goto LABEL_29;
        }

        *(v21 + v15) = 0;
        if (!v19)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v19 = a4;
        if (v18 != 139)
        {
          goto LABEL_26;
        }

        v20 = sub_181929E8C(*a1, 0x50uLL, 0x1032040B79D87BDLL);
        if (!v20)
        {
          goto LABEL_17;
        }

        v19 = v20;
        *(v20 + 2) = 0u;
        *(v20 + 3) = 0u;
        *(v20 + 4) = 0u;
        *v20 = 0u;
        *(v20 + 1) = 0u;
        *v20 = -78;
        *(v20 + 26) = -1;
        v20[10] = 1;
        if (*(*a1 + 148) <= 0)
        {
          sub_181910730(a1, "Expression tree is too large (maximum depth %d)", *(*a1 + 148));
        }

        v19[1] |= 0x20000u;
        v19[11] = v11;
        v19[12] = v14;
        *(v19 + 2) = a4;
      }

LABEL_29:
      if (!v6)
      {
        v23 = sub_18197FD9C(*a1, v19);
LABEL_33:
        v6 = v23;
        if (!v23)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v22 = *v6;
      if (v6[1] <= *v6)
      {
        v23 = sub_18197FE14(*a1, v6, v19);
        goto LABEL_33;
      }

      *v6 = v22 + 1;
      v16 = &v6[6 * v22];
      *(v16 + 2) = 0;
      *(v16 + 3) = 0;
      *(v16 + 1) = v19;
LABEL_16:
      v17 = &a3[2 * v14];
      *&v6[6 * *v6 - 2] = *(v17 + 1);
      *(v17 + 1) = 0;
LABEL_17:
      ++v14;
      v11 = *a3;
      v15 += 24;
    }

    while (v14 < v11);
  }

  if (!*(v8 + 103) && *a4 == 139 && v6)
  {
    v24 = *&v6[6 * v30 + 2];
    *(v24 + 24) = a4;
    *(v24 + 44) = v11;
LABEL_47:
    v26 = *a3;
    if (*a3 >= 1)
    {
      v27 = 0;
      do
      {
        v28 = *&a3[2 * v27 + 2];
        if (v28)
        {
          sub_181929C84(v8, v28);
          v26 = *a3;
        }

        ++v27;
      }

      while (v27 < v26);
    }

    sub_181939EC8(v8, a3);
    return v6;
  }

LABEL_44:
  v25 = *(a1 + 302);
  if (v25 >= 2)
  {
    v31[0] = a1;
    v31[1] = sub_181961E4C;
    v31[2] = sub_181961EB8;
    memset(&v31[3], 0, 24);
    *(a1 + 302) = 3;
    sub_181959BA0(v31, a4);
    *(a1 + 302) = v25;
  }

  sub_1819439E0(*a1, a4);
  if (a3)
  {
    goto LABEL_47;
  }

  return v6;
}

uint64_t sub_18195173C(void *a1, void *a2, unsigned __int8 *a3, void *a4, unsigned __int8 *a5, void *a6)
{
  if (a1)
  {
    v12 = sub_181929E8C(a1, 0x58uLL, 0x10A00407253782BLL);
    if (v12)
    {
LABEL_3:
      *v12 = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 80) = 0;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
      *(v12 + 32) = 0u;
      *v12 = a2;
      *(v12 + 8) = a3;
      *(v12 + 16) = a4;
      *(v12 + 24) = a5;
      *(v12 + 40) = a4 != 0;
      *(v12 + 32) = a6;
      return v12;
    }
  }

  else
  {
    v12 = sub_181902484(88, 0x10A00407253782BLL);
    if (v12)
    {
      goto LABEL_3;
    }
  }

  if (a2)
  {
    sub_18194E5B8(a1, a2);
  }

  if (a3)
  {
    sub_1819439E0(a1, a3);
  }

  if (a4)
  {
    sub_18194E5B8(a1, a4);
  }

  if (a5)
  {
    sub_1819439E0(a1, a5);
  }

  if (a6)
  {
    sub_18194E51C(a1, a6);
  }

  return v12;
}

__n128 sub_181951848(uint64_t a1, void *a2, __n128 *a3)
{
  v5 = *a1;
  if (!a2)
  {
    if (v5)
    {
      v8 = sub_181929E8C(*a1, 0x10uLL, 0x10040436913F5);
      if (!v8)
      {
        return result;
      }
    }

    else
    {
      v8 = sub_181902484(16, 0x10040436913F5);
      if (!v8)
      {
        return result;
      }
    }

    *v8 = 0;
    v8[1] = 0;
    goto LABEL_20;
  }

  v7 = 8 * *a2 + 16;
  if (*(v5 + 512) > a2)
  {
    if (*(v5 + 496) <= a2)
    {
      if (v7 < 0x81)
      {
LABEL_6:
        v8 = a2;
LABEL_20:
        v13 = *v8;
        *v8 = v13 + 1;
        if (a3 && (v14 = a3->n128_u64[0]) != 0 && (v15 = a3->n128_u32[2], v16 = v8, v17 = sub_181929E8C(v5, v15 + 1, 1565185748), v8 = v16, v17))
        {
          memcpy(v17, v14, v15);
          *(v17 + v15) = 0;
          v18 = *v17;
          if (byte_181A204C8[*v17] < 0)
          {
            v19 = 0;
            if (v18 == 91)
            {
              v18 = 93;
            }

            for (i = 1; ; ++i)
            {
              v21 = i;
              v22 = *(v17 + i);
              if (v22 == v18)
              {
                ++i;
                LOBYTE(v22) = v18;
                if (*(v17 + v21 + 1) != v18)
                {
                  break;
                }
              }

              *(v17 + v19++) = v22;
            }

            *(v17 + v19) = 0;
          }

          v16[v13 + 1] = v17;
          v23 = *(a1 + 302);
          if (v23 > 3 || v23 == 2)
          {
            if (*a1)
            {
              v25 = sub_181929E8C(*a1, 0x20uLL, 0x10F00409A20EBA4);
            }

            else
            {
              v25 = sub_181902484(32, 0x10F00409A20EBA4);
            }

            if (v25)
            {
              *v25 = 0u;
              *(v25 + 16) = 0u;
              *v25 = v17;
              result = *a3;
              *(v25 + 8) = *a3;
              *(v25 + 24) = *(a1 + 408);
              *(a1 + 408) = v25;
            }
          }
        }

        else
        {
          v8[v13 + 1] = 0;
        }

        return result;
      }
    }

    else if (*(v5 + 504) <= a2 && v7 <= *(v5 + 438))
    {
      goto LABEL_6;
    }
  }

  v8 = sub_181929F38(*a1, a2, v7, 0x10040436913F5);
  if (v8)
  {
    goto LABEL_20;
  }

  v10 = *a2;
  if (*a2 > 0)
  {
    v11 = 0;
    do
    {
      v12 = a2[v11 + 1];
      if (v12)
      {
        sub_181929C84(v5, v12);
        v10 = *a2;
      }

      ++v11;
    }

    while (v11 < v10);
  }

  sub_181939EC8(v5, a2);
  return result;
}

void *sub_181951AC0(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a3 + 8))
  {
    v5 = sub_1818A8CF0(*a1, 114, a3, a4);
    if (v5)
    {
      v5[2] = a2;
      *(v5 + 1) |= 0x2200u;
      return v5;
    }
  }

  return a2;
}

uint64_t *sub_181951B14(uint64_t *result, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return result;
  }

  if (!a2)
  {
    v7 = *result;
    v8 = a3;
LABEL_16:

    return sub_18194E5B8(v7, v8);
  }

  v3 = *(a2 + 32);
  if (v3 && *v3)
  {
    if ((*(a2 + 7) & 1) != 0 && *(*(a2 + 72) + 32) != 167)
    {
      v6 = *result;
      sub_181910730(result, "ORDER BY may not be used with non-aggregate %#T()", a2);
    }

    else
    {
      v6 = *result;
      result = sub_181929E8C(*result, 0x50uLL, 0x1032040B79D87BDLL);
      if (result)
      {
        *(result + 2) = 0u;
        *(result + 3) = 0u;
        *(result + 4) = 0u;
        *result = 0u;
        *(result + 1) = 0u;
        *result = -110;
        *(result + 26) = -1;
        *(result + 10) = 1;
        result[4] = a3;
        *(a2 + 16) = result;
        *(result + 1) |= 0x20000u;
        return result;
      }
    }

    v7 = v6;
    v8 = a3;
    goto LABEL_16;
  }

  return sub_18195B158(result, sub_181964684, a3);
}

void sub_181951C5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    *(a2 + 72) = a3;
    v3 = *(a2 + 4);
    *(a2 + 4) = v3 | 0x1020000;
    *(a3 + 112) = a2;
    if ((v3 & 4) != 0 && *(a3 + 32) != 167)
    {
      sub_181910730(a1, "DISTINCT is not supported for window functions");
    }
  }

  else
  {
    sub_181943B0C(*a1, a3);
  }
}

void *sub_181951CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return a3;
  }

  if (!a3)
  {
    return a2;
  }

  v3 = a3;
  if (((*(a3 + 4) | *(a2 + 4)) & 0x20000003) == 0x20000000 && *(a1 + 302) <= 1u)
  {
    v5 = *a1;
    sub_18195B158(a1, sub_18195B270, a2);
    sub_18195B158(a1, sub_18195B270, v3);
    v7[0] = "0";
    v7[1] = 1;
    return sub_1818A8CF0(v5, 156, v7, 0);
  }

  return sub_18194F098(a1, 44, a2, a3);
}

void *sub_181951DA4(void *result, _BYTE *a2, uint64_t a3, char a4)
{
  if (a2 && a3 && *a2 == 122 && *(result + 302) <= 1u)
  {
    result = *result;
    *a3 = a4;
    v4 = *(a3 + 24);
    if (v4)
    {
      v5 = a3;
      result = sub_1819439E0(result, v4);
      a3 = v5;
    }

    *(a3 + 24) = 0;
  }

  return result;
}

void *sub_181951E04(void *result, unsigned __int8 *a2)
{
  if (a2)
  {
    v2 = *(result + 302);
    if (v2 >= 2)
    {
      v5[0] = result;
      v5[1] = sub_181961E4C;
      v5[2] = sub_181961EB8;
      memset(&v5[3], 0, 24);
      *(result + 302) = 3;
      v3 = result;
      v4 = a2;
      sub_181959BA0(v5, a2);
      result = v3;
      a2 = v4;
      *(v3 + 302) = v2;
    }

    return sub_1819439E0(*result, a2);
  }

  return result;
}

void sub_181951E94(uint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    *(a2 + 32) = a3;
    *(a2 + 4) |= 0x401000u;
    sub_181952030(result, a2);
  }

  else if (a3)
  {
    sub_1818BB408(*result, a3, 1, a4);
  }
}

_OWORD *sub_181951ECC(uint64_t *a1, int a2, int *a3)
{
  if (*a3 < 1)
  {
    goto LABEL_18;
  }

  v6 = 0;
  v7 = 0;
  v8 = 2;
  while (1)
  {
    v10 = *&a3[v8];
    if (*v10 != 177)
    {
      break;
    }

    v11 = **(v10 + 4);
    if (v11 != a2)
    {
      goto LABEL_12;
    }

LABEL_9:
    v9 = sub_1818A9824(a1, *(v10 + 4), 0, 0, 0, 0, 0, 512, 0);
    *(v10 + 4) = 0;
    if (v9)
    {
      if (v7)
      {
        *v9 = -120;
        *(v9 + 10) = v7;
      }
    }

    else
    {
      v9 = v7;
    }

    ++v6;
    v8 += 6;
    v7 = v9;
    if (v6 >= *a3)
    {
      goto LABEL_15;
    }
  }

  v11 = 1;
  if (a2 == 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  v12 = &byte_181A2878D;
  if (v11 > 1)
  {
    v12 = "s";
  }

  sub_181910730(a1, "IN(...) element has %d term%s - expected %d", v11, v12, a2);
  v9 = v7;
LABEL_15:
  if (!v9)
  {
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v13 = v9;
  if (*(v9 + 10))
  {
    *(v9 + 1) |= 0x400u;
  }

LABEL_19:
  sub_18194E5B8(*a1, a3);
  return v13;
}

void sub_181952030(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 52))
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      v3 = *(v2 + 40);
    }

    else
    {
      v3 = 0;
    }

    v26 = v3;
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = *(v4 + 40);
      if (v5 > v3)
      {
        v26 = v5;
        v3 = v5;
      }
    }

    v6 = *(a2 + 4);
    v7 = *(a2 + 32);
    if ((v6 & 0x1000) != 0)
    {
      v12 = a2;
      v13 = a1;
      sub_1818CB0C0(v7, &v26);
      a2 = v12;
      a1 = v13;
      v3 = v26;
      goto LABEL_28;
    }

    if (!v7)
    {
      goto LABEL_28;
    }

    v8 = *v7;
    if (v8 < 1)
    {
      v16 = 0;
LABEL_27:
      *(a2 + 4) = v16 | v6;
LABEL_28:
      *(a2 + 40) = v3 + 1;
      if (*(*a1 + 148) <= v3)
      {
        sub_181910730(a1, "Expression tree is too large (maximum depth %d)", *(*a1 + 148));
      }

      return;
    }

    v9 = 0;
    v10 = v7 + 1;
    v11 = *v7;
    do
    {
      if (*v10 && *(*v10 + 40) > v3)
      {
        v3 = *(*v10 + 40);
        v11 = *v7;
      }

      ++v9;
      v10 += 3;
    }

    while (v9 < v11);
    if (v8 == 1)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v14 = v8 & 0x7FFFFFFE;
      v19 = v7 + 4;
      v20 = v14;
      do
      {
        v21 = *(v19 - 3);
        v22 = *v19;
        v19 += 6;
        v17 |= *(v21 + 4);
        v18 |= *(v22 + 4);
        v20 -= 2;
      }

      while (v20);
      v15 = v18 | v17;
      if (v14 == v8)
      {
        goto LABEL_26;
      }
    }

    v23 = v8 - v14;
    v24 = &v7[3 * v14 + 1];
    do
    {
      v25 = *v24;
      v24 += 3;
      v15 |= *(v25 + 4);
      --v23;
    }

    while (v23);
LABEL_26:
    v16 = v15 & 0x400208;
    goto LABEL_27;
  }
}

int *sub_1819521C8(uint64_t *a1, int *a2, uint64_t a3, int a4, int a5)
{
  if (a2)
  {
    v9 = a2;
    v10 = *a2;
    if (a2[1] <= *a2)
    {
      v9 = sub_18197FE14(*a1, a2, 0);
      if (a4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *a2 = v10 + 1;
      v11 = &a2[6 * v10];
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      if (a4)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    if (a5 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v9 = sub_18197FD9C(*a1, 0);
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (!*(*a1 + 197))
  {
    sub_181910730(a1, "syntax error after column name %.*s", *(a3 + 8), *a3);
  }

LABEL_11:
  sub_1819507A4(a1, v9, a3, 1);
  return v9;
}

void *sub_1819522B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (*(*a1 + 103))
  {
    goto LABEL_2;
  }

  v7 = a3;
  if (!*(v5 + 197))
  {
    v11 = *(v5 + 44);
    v12 = *(*(v5 + 32) + 24);
    *(v5 + 100) = *(v12 + 113);
    if ((*(v12 + 114) & 1) != 0 || (v13 = sub_18189F330(v5, 0, (a1 + 8), 0)) == 0)
    {
      v14 = *(v5 + 40);
      if (v14 < 2)
      {
LABEL_35:
        if ((v11 & 1) == 0)
        {
          *(v5 + 44) &= ~1u;
        }

        if (*(v5 + 111))
        {
          *(v5 + 44) |= 0x10u;
        }

        goto LABEL_6;
      }

      v15 = 32 * v14 - 8;
      while (1)
      {
        if ((*(*(*(v5 + 32) + v15) + 114) & 1) == 0)
        {
          v13 = sub_18189F330(v5, (v14 - 1), (a1 + 8), 0);
          if (v13)
          {
            break;
          }
        }

        --v14;
        v15 -= 32;
        if ((v14 + 1) <= 2)
        {
          goto LABEL_35;
        }
      }
    }

    *(a1 + 24) = v13;
    ++*(a1 + 52);
    goto LABEL_2;
  }

LABEL_6:
  v9 = *(a2 + 72);
  v10 = sub_1819495FC(v5, *(a2 + 8), v9);
  if (v10)
  {
    if ((*(v10 + 99) & 3) != 0)
    {
      sub_181910730(a1, "index associated with UNIQUE or PRIMARY KEY constraint cannot be dropped", 0);
      goto LABEL_2;
    }

    v24 = *(v10 + 48);
    v25 = *(v5 + 32);
    v26 = v10;
    if (v24)
    {
      v27 = (v25 + 24);
      v28 = -1;
      do
      {
        v29 = *v27;
        v27 += 4;
        ++v28;
      }

      while (v29 != v24);
    }

    else
    {
      v28 = -32768;
    }

    v34 = v28;
    if (v28 == 1)
    {
      v35 = "sqlite_temp_master";
    }

    else
    {
      v35 = "sqlite_master";
    }

    v36 = *a1;
    v37 = *(*a1 + 528);
    if (!v37)
    {
      goto LABEL_59;
    }

    v38 = *(v10 + 24);
    v39 = *(v25 + 32 * v28);
    if (*(v36 + 197) || *(a1 + 302))
    {
      if (v28 == 1)
      {
        v40 = 12;
      }

      else
      {
        v40 = 10;
      }
    }

    else
    {
      v46 = v37(*(v36 + 536), 9, v35, 0, v39, *(a1 + 368));
      if (v46 == 1)
      {
LABEL_74:
        v48 = 23;
        sub_181910730(a1, "not authorized");
LABEL_77:
        *(a1 + 24) = v48;
        goto LABEL_2;
      }

      if ((v46 & 0xFFFFFFFD) != 0)
      {
LABEL_76:
        v48 = 1;
        sub_181910730(a1, "authorizer malfunction");
        goto LABEL_77;
      }

      if (v46)
      {
        goto LABEL_2;
      }

      v36 = *a1;
      v37 = *(*a1 + 528);
      if (v34 == 1)
      {
        v40 = 12;
      }

      else
      {
        v40 = 10;
      }

      if (!v37)
      {
        goto LABEL_59;
      }
    }

    if (*(v36 + 197) || *(a1 + 302))
    {
LABEL_59:
      v41 = sub_1818E7DFC(a1);
      if (v41)
      {
        v42 = v41;
        sub_18195D3A8(a1, 1, v34);
        sub_1818F73B0(a1, "DELETE FROM %Q.sqlite_master WHERE name=%Q AND type='index'", *(*(v5 + 32) + 32 * v34), *v26);
        sub_18196375C(a1, v34, "idx", *v26);
        sub_18195E878(a1, v34);
        sub_181964544(a1, *(v26 + 22), v34);
        v43 = *v26;
        v44 = sub_1818A2964(v42, 152, v34, 0, 0);
        sub_1818B49F8(v42, v44, v43, 0);
      }

      goto LABEL_2;
    }

    v47 = v37(*(v36 + 536), v40, *v26, *v38, v39, *(a1 + 368));
    if (v47 == 1)
    {
      goto LABEL_74;
    }

    if ((v47 & 0xFFFFFFFD) == 0)
    {
      if (v47)
      {
        goto LABEL_2;
      }

      goto LABEL_59;
    }

    goto LABEL_76;
  }

  if (v7)
  {
    v16 = *a1;
    v17 = *(*a1 + 40);
    if (v17 >= 1)
    {
      for (i = 0; i < v17; ++i)
      {
        v21 = *(v16 + 32) + 32 * i;
        if (*(v21 + 8))
        {
          if (v9)
          {
            v22 = *v21;
            for (j = v9; ; ++j)
            {
              if (*j == *v22)
              {
                if (!*j)
                {
                  break;
                }
              }

              else if (byte_181A20298[*j] != byte_181A20298[*v22])
              {
                goto LABEL_24;
              }

              ++v22;
            }
          }

          if (*(a1 + 152))
          {
            v19 = *(a1 + 152);
          }

          else
          {
            v19 = a1;
          }

          v20 = *(v19 + 116);
          if ((v20 & (1 << i)) == 0)
          {
            *(v19 + 116) = v20 | (1 << i);
            if (i == 1)
            {
              sub_1819108F4(v19);
              v17 = *(v16 + 40);
            }
          }
        }

LABEL_24:
        ;
      }
    }

    v30 = *(a1 + 60) + 1;
    *(a1 + 60) = v30;
    v31 = sub_1818E7DFC(a1);
    if (v31)
    {
      v32 = *(v31 + 144);
      if (*(v31 + 148) <= v32)
      {
        v45 = v31;
        sub_18194C8AC(v31, 4, 0, v30, -1);
        v31 = v45;
      }

      else
      {
        *(v31 + 144) = v32 + 1;
        v33 = *(v31 + 136) + 40 * v32;
        *v33 = 4;
        *(v33 + 8) = v30;
        *(v33 + 12) = -1;
        *(v33 + 24) = 0;
        *(v33 + 32) = 0;
        *(v33 + 16) = 0;
      }

      *(v31 + 272) |= 1u;
      if (*(*(*(*v31 + 32) + 8) + 17))
      {
        *(v31 + 276) |= 1u;
      }
    }
  }

  else
  {
    sub_181910730(a1, "no such index: %S", (a2 + 8));
  }

  *(a1 + 43) |= 8u;
LABEL_2:

  return sub_1818BB5B0(v5, a2, a3, a4);
}

void *sub_18195279C(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  result = sub_1818E7DFC(a1);
  if (!result || *(a1 + 13))
  {
    goto LABEL_17;
  }

  v7 = result;
  if (a2)
  {
    result = sub_18195D514(*a1, a2);
    v8 = result;
    if (result == 1)
    {
      goto LABEL_17;
    }

    result = v7;
    LODWORD(a2) = v8 & ~(v8 >> 31);
  }

  if (a3)
  {
    v14 = 0u;
    v13 = 0u;
    v15 = 0;
    memset(v16, 0, sizeof(v16));
    v12[0] = a1;
    v12[1] = v16;
    DWORD2(v14) = 0x10000;
    if (sub_18195ECC4(v12, a3))
    {
      LODWORD(v9) = 0;
    }

    else
    {
      v9 = (*(a1 + 15) + 1);
      *(a1 + 15) = v9;
      sub_181956EF4(a1, a3, v9);
    }

    result = v7;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v10 = *(result + 36);
  if (*(result + 37) <= v10)
  {
    sub_18194C8AC(v7, 5, a2, v9, 0);
    result = v7;
  }

  else
  {
    *(result + 36) = v10 + 1;
    v11 = result[17] + 40 * v10;
    *v11 = 5;
    *(v11 + 4) = a2;
    *(v11 + 8) = v9;
    *(v11 + 12) = 0;
    *(v11 + 28) = 0;
    *(v11 + 20) = 0;
    *(v11 + 36) = 0;
  }

  *(result + 68) |= 1 << a2;
  if (*(*(*(*result + 32) + 32 * a2 + 8) + 17))
  {
    *(result + 69) |= 1 << a2;
  }

LABEL_17:
  if (a3)
  {
    return sub_1819439E0(*a1, a3);
  }

  return result;
}

void *sub_18195295C(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, unsigned int **a6, unsigned __int8 *a7, uint64_t a8)
{
  v13 = *a1;
  v15 = sub_1818CAE18(a1, 128, a2, a7, a8);
  if (!v15)
  {
    if (a3)
    {
      v17 = *a3;
      if (*a3 >= 1)
      {
        v18 = 0;
        do
        {
          v19 = a3[v18 + 1];
          if (v19)
          {
            sub_181929C84(v13, v19);
            v17 = *a3;
          }

          ++v18;
        }

        while (v18 < v17);
      }

      sub_181939EC8(v13, a3);
    }

    if (a6)
    {
      sub_18194E51C(v13, a6);
    }

LABEL_21:
    if (!a4)
    {
      return v15;
    }

LABEL_22:
    sub_1818BB408(v13, a4, 1, v14);
    return v15;
  }

  if (*(a1 + 302) <= 1u)
  {
    v16 = sub_1818CB220(v13, a4, 1);
  }

  else
  {
    v16 = a4;
    a4 = 0;
  }

  v15[2] = v16;
  v15[7] = a3;
  v15[8] = a6;
  *(v15 + 1) = a5;
  if (!a6)
  {
    goto LABEL_21;
  }

  v20 = *a6;
  if (!*a6)
  {
    goto LABEL_21;
  }

  v21 = *v20;
  if (v21 < 1)
  {
    goto LABEL_21;
  }

  v22 = (v20 + 25);
  while ((*v22 & 0x20) == 0)
  {
    v22 += 12;
    if (!--v21)
    {
      goto LABEL_21;
    }
  }

  v24 = *(v22 - 1);
  v25 = v24 == 3 || v24 == 0;
  v26 = "LAST";
  if (v25)
  {
    v26 = "FIRST";
  }

  sub_181910730(a1, "unsupported use of NULLS %s", v26);
  if (a4)
  {
    goto LABEL_22;
  }

  return v15;
}

void *sub_181952AE4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = sub_1818CAE18(a1, 129, a2, a4, a5);
  if (v8)
  {
    if (*(a1 + 302) <= 1u)
    {
      if (a3)
      {
        v9 = sub_1818C7FEC(v7, a3, 1, 0);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = a3;
      a3 = 0;
    }

    v8[5] = v9;
    *(v8 + 1) = 11;
  }

  if (a3)
  {
    sub_1819439E0(v7, a3);
  }

  return v8;
}

uint64_t sub_181952B80(void *a1, void *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  if (a1)
  {
    v9 = sub_181929E8C(a1, 0x60uLL, 0x1030040FE2BAAC3);
    if (v9)
    {
LABEL_3:
      *v9 = 0u;
      *(v9 + 16) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *v9 = 2955;
      *(v9 + 16) = a2;
      *(v9 + 72) = sub_181989258(a1, a3, v4);
      return v9;
    }
  }

  else
  {
    v9 = sub_181902484(96, 0x1030040FE2BAAC3);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  if (a2)
  {
    sub_1818BB408(a1, a2, 1, v8);
  }

  return v9;
}

void *sub_181952C44(char **a1, uint64_t a2, uint64_t a3, uint64_t m)
{
  v5 = *a1;
  if ((*a1)[103])
  {
    goto LABEL_68;
  }

  v6 = a3;
  if (*(v5 + 197))
  {
    goto LABEL_3;
  }

  v33 = *(v5 + 44);
  v34 = *(*(v5 + 32) + 24);
  *(v5 + 100) = *(v34 + 113);
  if ((*(v34 + 114) & 1) == 0)
  {
    v35 = sub_18189F330(v5, 0, a1 + 1, 0);
    if (v35)
    {
LABEL_64:
      *(a1 + 6) = v35;
      ++*(a1 + 13);
      goto LABEL_68;
    }
  }

  v36 = *(v5 + 40);
  if (v36 >= 2)
  {
    v37 = 32 * v36 - 8;
    do
    {
      if ((*(*(*(v5 + 32) + v37) + 114) & 1) == 0)
      {
        v35 = sub_18189F330(v5, (v36 - 1), a1 + 1, 0);
        if (v35)
        {
          goto LABEL_64;
        }
      }

      --v36;
      v37 -= 32;
    }

    while ((v36 + 1) > 2);
  }

  if ((v33 & 1) == 0)
  {
    *(v5 + 44) &= ~1u;
  }

  if (*(v5 + 111))
  {
    *(v5 + 44) |= 0x10u;
  }

LABEL_3:
  v8 = *(a2 + 8);
  v9 = *(a2 + 72);
  v10 = *(v5 + 40);
  if (v10 < 1)
  {
LABEL_39:
    if (v6)
    {
      v25 = *a1;
      v26 = *(*a1 + 10);
      if (v26 >= 1)
      {
        for (i = 0; i < v26; ++i)
        {
          v30 = *(v25 + 4) + 32 * i;
          if (*(v30 + 8))
          {
            if (v9)
            {
              v31 = *v30;
              for (j = v9; ; ++j)
              {
                if (*j == *v31)
                {
                  if (!*j)
                  {
                    break;
                  }
                }

                else if (byte_181A20298[*j] != byte_181A20298[*v31])
                {
                  goto LABEL_46;
                }

                ++v31;
              }
            }

            if (a1[19])
            {
              v28 = a1[19];
            }

            else
            {
              v28 = a1;
            }

            v29 = *(v28 + 29);
            if ((v29 & (1 << i)) == 0)
            {
              *(v28 + 29) = v29 | (1 << i);
              if (i == 1)
              {
                sub_1819108F4(v28);
                v26 = *(v25 + 10);
              }
            }
          }

LABEL_46:
          ;
        }
      }
    }

    else
    {
      sub_181910730(a1, "no such trigger: %S", (a2 + 8));
    }

    *(a1 + 43) |= 8u;
    goto LABEL_68;
  }

  v11 = 0;
  v12 = *(v5 + 32);
LABEL_8:
  a3 = v11 < 2;
  v15 = v11 ^ a3;
  if (v9)
  {
    m = *(v12 + 32 * v15);
    for (k = *(a2 + 72); ; ++k)
    {
      if (*m == *k)
      {
        if (!*m)
        {
          break;
        }
      }

      else if (byte_181A20298[*m] != byte_181A20298[*k])
      {
        if (v11 == a3)
        {
          a3 = "main";
          for (m = *(a2 + 72); ; ++m)
          {
            if (*a3 == *m)
            {
              if (!*a3)
              {
                goto LABEL_14;
              }
            }

            else if (byte_181A20298[*a3] != byte_181A20298[*m])
            {
              break;
            }

            ++a3;
          }
        }

LABEL_7:
        if (++v11 == v10)
        {
          goto LABEL_39;
        }

        goto LABEL_8;
      }

      ++m;
    }
  }

LABEL_14:
  v17 = *v8;
  if (*v8)
  {
    LODWORD(a3) = 0;
    v18 = v8 + 1;
    do
    {
      a3 = -1640531535 * (a3 + (v17 & 0xDF));
      v19 = *v18++;
      v17 = v19;
    }

    while (v19);
  }

  else
  {
    a3 = 0;
  }

  v20 = *(v12 + 32 * v15 + 24);
  v21 = (v20 + 56);
  v22 = *(v20 + 72);
  if (v22)
  {
    v21 = (v22 + 16 * (a3 % *v21));
    m = *v21;
    if (!m)
    {
      goto LABEL_5;
    }

LABEL_30:
    v13 = (v21 + 2);
    do
    {
      v13 = *v13;
      if (a3 == *(v13 + 8))
      {
        v23 = v13[3];
        for (n = *(a2 + 8); ; ++n)
        {
          if (*v23 == *n)
          {
            if (!*v23)
            {
              goto LABEL_6;
            }
          }

          else if (byte_181A20298[*v23] != byte_181A20298[*n])
          {
            break;
          }

          ++v23;
        }
      }

      m = (m - 1);
    }

    while (m);
  }

  else
  {
    m = *(v20 + 60);
    if (m)
    {
      goto LABEL_30;
    }
  }

LABEL_5:
  v13 = &qword_1EA831A30;
LABEL_6:
  v14 = v13[2];
  if (!v14)
  {
    goto LABEL_7;
  }

  sub_18196418C(a1, v14);
LABEL_68:

  return sub_1818BB5B0(v5, a2, a3, m);
}

void sub_181953020(char **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if ((*a1)[197])
  {
    goto LABEL_2;
  }

  v23 = *(v6 + 44);
  v24 = *(*(v6 + 32) + 24);
  *(v6 + 100) = *(v24 + 113);
  if ((*(v24 + 114) & 1) == 0)
  {
    v25 = sub_18189F330(v6, 0, a1 + 1, 0);
    if (v25)
    {
LABEL_28:
      *(a1 + 6) = v25;
      ++*(a1 + 13);
      return;
    }
  }

  v26 = *(v6 + 40);
  if (v26 >= 2)
  {
    v27 = 32 * v26 - 8;
    do
    {
      if ((*(*(*(v6 + 32) + v27) + 114) & 1) == 0)
      {
        v25 = sub_18189F330(v6, (v26 - 1), a1 + 1, 0);
        if (v25)
        {
          goto LABEL_28;
        }
      }

      --v26;
      v27 -= 32;
    }

    while ((v26 + 1) > 2);
  }

  if ((v23 & 1) == 0)
  {
    *(v6 + 44) &= ~1u;
  }

  if (*(v6 + 111))
  {
    *(v6 + 44) |= 0x10u;
  }

LABEL_2:
  if (!a2)
  {
    v28 = *a1;
    v29 = *(*a1 + 10);
    if (v29 >= 1)
    {
      v30 = 0;
      v31 = *(v28 + 4);
      do
      {
        v32 = *(*(v31 + 24) + 16);
        if (v32)
        {
          do
          {
            v33 = v32[2];
            if (*(v33 + 63) != 1)
            {
              for (i = *(v33 + 16); i; i = *(i + 40))
              {
                v35 = *(v33 + 96);
                if (v35)
                {
                  v36 = (*(*a1 + 4) + 24);
                  v37 = -1;
                  do
                  {
                    v38 = *v36;
                    v36 += 4;
                    ++v37;
                  }

                  while (v38 != v35);
                }

                else
                {
                  v37 = -32768;
                }

                if (a1[19])
                {
                  v39 = a1[19];
                }

                else
                {
                  v39 = a1;
                }

                v40 = *(v39 + 29);
                v41 = 1 << v37;
                if ((v40 & (1 << v37)) == 0)
                {
                  *(v39 + 29) = v40 | v41;
                  if (v37 == 1)
                  {
                    sub_1819108F4(v39);
                  }
                }

                *(v39 + 28) |= v41;
                sub_181962568(a1, i, -1);
              }
            }

            v32 = *v32;
          }

          while (v32);
          v29 = *(v28 + 10);
        }

        ++v30;
        v31 += 32;
      }

      while (v30 < v29);
    }

    return;
  }

  if (a3 && *a3)
  {
LABEL_71:
    v46 = *a1;
    if (*(a3 + 8))
    {
      if (v46[197])
      {
        v47 = "corrupt database";
        goto LABEL_74;
      }

      v48 = sub_18195D514(v46, a2);
      v49 = a3;
      if ((v48 & 0x80000000) != 0)
      {
        sub_181910730(a1, "unknown database %T", a2);
        return;
      }
    }

    else
    {
      v48 = v46[196];
      v49 = a2;
    }

    v50 = *v49;
    if (!*v49)
    {
      return;
    }

    v51 = *(v49 + 8);
    v52 = sub_181929E8C(v6, v51 + 1, 1565185748);
    if (!v52)
    {
      return;
    }

    v10 = v52;
    memcpy(v52, v50, v51);
    v10[v51] = 0;
    v53 = *v10;
    if (byte_181A204C8[*v10] < 0)
    {
      v54 = 0;
      if (v53 == 91)
      {
        v53 = 93;
      }

      for (j = 1; ; ++j)
      {
        v56 = j;
        v57 = v10[j];
        if (v57 == v53)
        {
          ++j;
          LOBYTE(v57) = v53;
          if (v10[v56 + 1] != v53)
          {
            break;
          }
        }

        v10[v54++] = v57;
      }

      v10[v54] = 0;
    }

    if (*(a3 + 8))
    {
      v58 = *(*(v6 + 32) + 32 * v48);
    }

    else
    {
      v58 = 0;
    }

    v76 = sub_181917F20(v6, v10, v58);
    if (v76)
    {
      v77 = v76;
      if (*(v76 + 63) != 1)
      {
        for (k = *(v76 + 16); k; k = *(k + 40))
        {
          v79 = *(v77 + 96);
          if (v79)
          {
            v80 = (*(*a1 + 4) + 24);
            v81 = -1;
            do
            {
              v82 = *v80;
              v80 += 4;
              ++v81;
            }

            while (v82 != v79);
          }

          else
          {
            v81 = -32768;
          }

          if (a1[19])
          {
            v83 = a1[19];
          }

          else
          {
            v83 = a1;
          }

          v84 = *(v83 + 29);
          v85 = 1 << v81;
          if ((v84 & (1 << v81)) == 0)
          {
            *(v83 + 29) = v84 | v85;
            if (v81 == 1)
            {
              sub_1819108F4(v83);
            }
          }

          *(v83 + 28) |= v85;
          sub_181962568(a1, k, -1);
        }
      }

      v75 = v6;
      goto LABEL_144;
    }

    v86 = sub_1819495FC(v6, v10, v58);
    sub_181929C84(v6, v10);
    if (v86)
    {
      v87 = *(*(v86 + 24) + 96);
      if (v87)
      {
        v88 = (*(v6 + 32) + 24);
        v89 = -1;
        do
        {
          v90 = *v88;
          v88 += 4;
          ++v89;
        }

        while (v90 != v87);
      }

      else
      {
        v89 = -32768;
      }

      sub_18195D3A8(a1, 0, v89);

      sub_181962568(a1, v86, -1);
      return;
    }

    v47 = "unable to identify the object to be reindexed";
LABEL_74:

    sub_181910730(a1, v47);
    return;
  }

  v7 = *a2;
  if (!*a2)
  {
    return;
  }

  v8 = *(a2 + 8);
  v9 = sub_181929E8C(*a1, v8 + 1, 1565185748);
  if (!v9)
  {
    return;
  }

  v10 = v9;
  memcpy(v9, v7, v8);
  v10[v8] = 0;
  v11 = *v10;
  if (byte_181A204C8[*v10] < 0)
  {
    v12 = 0;
    if (v11 == 91)
    {
      v11 = 93;
    }

    for (m = 1; ; ++m)
    {
      v14 = m;
      v15 = v10[m];
      if (v15 == v11)
      {
        ++m;
        LOBYTE(v15) = v11;
        if (v10[v14 + 1] != v11)
        {
          break;
        }
      }

      v10[v12++] = v15;
    }

    v10[v12] = 0;
    v11 = *v10;
  }

  v16 = 0;
  if (v11)
  {
    v17 = (v10 + 1);
    do
    {
      v16 = -1640531535 * (v16 + (v11 & 0xDF));
      v18 = *v17++;
      LOBYTE(v11) = v18;
    }

    while (v18);
  }

  v19 = (v6 + 640);
  v20 = *(v6 + 656);
  if (v20)
  {
    v19 = (v20 + 16 * (v16 % *v19));
    v21 = *v19;
    if (*v19)
    {
      goto LABEL_20;
    }

LABEL_64:
    v22 = &qword_1EA831A30;
    goto LABEL_65;
  }

  v21 = *(v6 + 644);
  if (!v21)
  {
    goto LABEL_64;
  }

LABEL_20:
  v22 = (v19 + 2);
  do
  {
    v22 = *v22;
    if (v16 == *(v22 + 8))
    {
      v42 = v22[3];
      for (n = v10; ; ++n)
      {
        if (*v42 == *n)
        {
          if (!*v42)
          {
            goto LABEL_65;
          }
        }

        else if (byte_181A20298[*v42] != byte_181A20298[*n])
        {
          break;
        }

        ++v42;
      }
    }

    --v21;
  }

  while (v21);
  v22 = &qword_1EA831A30;
LABEL_65:
  v44 = v22[2];
  if (v44)
  {
    v45 = v44 + 40 * *(v6 + 100) == 40;
  }

  else
  {
    v45 = 1;
  }

  if (v45)
  {
    sub_181929C84(v6, v10);
    goto LABEL_71;
  }

  v91 = v6;
  v92 = *a1;
  v59 = *(*a1 + 10);
  if (v59 < 1)
  {
    goto LABEL_123;
  }

  v60 = 0;
  v61 = *(v92 + 4);
  while (2)
  {
    v62 = *(*(v61 + 24) + 16);
    if (!v62)
    {
      goto LABEL_94;
    }

    v93 = v60;
    while (2)
    {
      v63 = v62[2];
      if (*(v63 + 63) == 1)
      {
        goto LABEL_97;
      }

      v64 = *(v63 + 16);
      if (!v64)
      {
        goto LABEL_97;
      }

      while (2)
      {
        if (!*(v64 + 96))
        {
          goto LABEL_102;
        }

        v65 = 0;
        while (*(*(v64 + 8) + 2 * v65) < 0)
        {
LABEL_105:
          if (++v65 == *(v64 + 96))
          {
            goto LABEL_102;
          }
        }

        v66 = *(*(v64 + 64) + 8 * v65);
        for (ii = v10; *v66 != *ii; ++ii)
        {
          if (byte_181A20298[*v66] != byte_181A20298[*ii])
          {
            goto LABEL_105;
          }

LABEL_109:
          ++v66;
        }

        if (*v66)
        {
          goto LABEL_109;
        }

        v68 = *(v63 + 96);
        if (v68)
        {
          v69 = (*(*a1 + 4) + 24);
          v70 = -1;
          do
          {
            v71 = *v69;
            v69 += 4;
            ++v70;
          }

          while (v71 != v68);
        }

        else
        {
          v70 = -32768;
        }

        if (a1[19])
        {
          v72 = a1[19];
        }

        else
        {
          v72 = a1;
        }

        v73 = *(v72 + 29);
        v74 = 1 << v70;
        if ((v73 & (1 << v70)) == 0)
        {
          *(v72 + 29) = v73 | v74;
          if (v70 == 1)
          {
            sub_1819108F4(v72);
          }
        }

        *(v72 + 28) |= v74;
        sub_181962568(a1, v64, -1);
LABEL_102:
        v64 = *(v64 + 40);
        if (v64)
        {
          continue;
        }

        break;
      }

LABEL_97:
      v62 = *v62;
      if (v62)
      {
        continue;
      }

      break;
    }

    v59 = *(v92 + 10);
    v60 = v93;
LABEL_94:
    ++v60;
    v61 += 32;
    if (v60 < v59)
    {
      continue;
    }

    break;
  }

LABEL_123:
  v75 = v91;
LABEL_144:

  sub_181929C84(v75, v10);
}

void sub_18195383C(char **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!(*a1)[197])
  {
    v7 = *(v6 + 11);
    v8 = *(*(v6 + 4) + 24);
    v6[100] = *(v8 + 113);
    if ((*(v8 + 114) & 1) != 0 || (v9 = sub_18189F330(v6, 0, a1 + 1, 0)) == 0)
    {
      v10 = *(v6 + 10);
      if (v10 < 2)
      {
LABEL_19:
        if ((v7 & 1) == 0)
        {
          *(v6 + 11) &= ~1u;
        }

        if (v6[111])
        {
          *(v6 + 11) |= 0x10u;
        }

        goto LABEL_2;
      }

      v11 = 32 * v10 - 8;
      while (1)
      {
        if ((*(*(*(v6 + 4) + v11) + 114) & 1) == 0)
        {
          v9 = sub_18189F330(v6, (v10 - 1), a1 + 1, 0);
          if (v9)
          {
            break;
          }
        }

        --v10;
        v11 -= 32;
        if ((v10 + 1) <= 2)
        {
          goto LABEL_19;
        }
      }
    }

    *(a1 + 6) = v9;
    ++*(a1 + 13);
    return;
  }

LABEL_2:
  if (!a2)
  {
    if (*(v6 + 10) >= 1)
    {
      sub_18198B5C8(a1, 0);
      if (*(v6 + 10) >= 3)
      {
        v12 = 2;
        do
        {
          sub_18198B5C8(a1, v12);
          v12 = (v12 + 1);
        }

        while (v12 < *(v6 + 10));
      }
    }

    goto LABEL_62;
  }

  if (!*(a3 + 8))
  {
    v13 = sub_18195D514(v6, a2);
    if ((v13 & 0x80000000) == 0)
    {
      sub_18198B5C8(a1, v13);
      goto LABEL_62;
    }

    if (!*(a3 + 8))
    {
      v15 = 0;
      goto LABEL_33;
    }
  }

  if (!(*a1)[197])
  {
    v14 = sub_18195D514(*a1, a2);
    if ((v14 & 0x80000000) != 0)
    {
      sub_181910730(a1, "unknown database %T", a2);
      goto LABEL_62;
    }

    if (*(a3 + 8))
    {
      v15 = *(*(v6 + 4) + 32 * v14);
    }

    else
    {
      v15 = 0;
    }

    a2 = a3;
LABEL_33:
    v16 = *a2;
    if (*a2)
    {
      v17 = *(a2 + 8);
      v18 = sub_181929E8C(v6, v17 + 1, 1565185748);
      if (v18)
      {
        v19 = v18;
        memcpy(v18, v16, v17);
        v19[v17] = 0;
        v20 = *v19;
        if (byte_181A204C8[*v19] < 0)
        {
          v21 = 0;
          if (v20 == 91)
          {
            v20 = 93;
          }

          for (i = 1; ; ++i)
          {
            v23 = i;
            v24 = v19[i];
            if (v24 == v20)
            {
              ++i;
              LOBYTE(v24) = v20;
              if (v19[v23 + 1] != v20)
              {
                break;
              }
            }

            v19[v21++] = v24;
          }

          v19[v21] = 0;
        }

        v25 = sub_1819495FC(v6, v19, v15);
        if (v25)
        {
          v26 = v25;
          v27 = *(v25 + 24);
          v28 = v27[12];
          if (v28)
          {
            v29 = (*(*a1 + 4) + 24);
            v30 = -1;
            do
            {
              v31 = *v29;
              v29 += 4;
              ++v30;
            }

            while (v31 != v28);
          }

          else
          {
            v30 = -32768;
          }

          if (a1[19])
          {
            v33 = a1[19];
          }

          else
          {
            v33 = a1;
          }

          v34 = *(v33 + 29);
          v35 = 1 << v30;
          if ((v34 & (1 << v30)) == 0)
          {
            *(v33 + 29) = v34 | v35;
            if (v30 == 1)
            {
              sub_1819108F4(v33);
            }
          }

          *(v33 + 28) |= v35;
          v36 = *(a1 + 14);
          *(a1 + 14) = v36 + 3;
          sub_18198B8A8(a1, v30, v36, *v26, "idx");
          sub_18198BB38(a1, v27, v26, v36, (*(a1 + 15) + 1), *(a1 + 14));
          v37 = sub_1818E7DFC(a1);
          if (v37)
          {
            v38 = *(v37 + 144);
            if (*(v37 + 148) <= v38)
            {
              sub_18194C8AC(v37, 150, v30, 0, 0);
            }

            else
            {
              *(v37 + 144) = v38 + 1;
              v39 = *(v37 + 136) + 40 * v38;
              *v39 = 150;
              *(v39 + 4) = v30;
              *(v39 + 8) = 0u;
              *(v39 + 24) = 0u;
            }
          }
        }

        else
        {
          v32 = sub_1818CA520(a1, 0, v19, v15);
          if (v32)
          {
            sub_18198B720(a1, v32, 0);
          }
        }

        sub_181929C84(v6, v19);
      }
    }

    goto LABEL_62;
  }

  sub_181910730(a1, "corrupt database");
LABEL_62:
  if (!v6[112])
  {
    v40 = sub_1818E7DFC(a1);
    if (v40)
    {
      v41 = *(v40 + 144);
      if (*(v40 + 148) <= v41)
      {

        sub_18194C8AC(v40, 166, 0, 0, 0);
      }

      else
      {
        *(v40 + 144) = v41 + 1;
        v42 = *(v40 + 136) + 40 * v41;
        *v42 = -90;
        *(v42 + 1) = 0u;
        *(v42 + 17) = 0u;
        *(v42 + 32) = 0;
      }
    }
  }
}

void *sub_181953CC4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*(*a1 + 103))
  {
    goto LABEL_2;
  }

  v7 = a2 + 18;
  if (*(a2 + 35))
  {
    v9 = *v7;
    v10 = *(v4 + 32);
    if (v9)
    {
      v11 = (v10 + 24);
      v12 = 0xFFFFFFFF00000000;
      do
      {
        v13 = *v11;
        v11 += 4;
        v12 += 0x100000000;
      }

      while (v13 != v9);
      v14 = v12 >> 32;
    }

    else
    {
      v14 = -32768;
    }

    v8 = a3;
    v7 = (v10 + 32 * v14);
  }

  else
  {
    v8 = a3;
  }

  v15 = a2;
  v16 = sub_1818CA520(a1, 0, *(a2 + 1), *v7);
  a2 = v15;
  if (!v16)
  {
    goto LABEL_2;
  }

  v17 = v16;
  v18 = v8;
  v19 = *(v16 + 96);
  if (v19)
  {
    v20 = (*(*a1 + 32) + 24);
    v21 = -1;
    do
    {
      v22 = *v20;
      v20 += 4;
      ++v21;
    }

    while (v22 != v19);
    if (!v18)
    {
LABEL_2:

      return sub_1818BB5B0(v4, a2, a3, a4);
    }
  }

  else
  {
    v21 = -32768;
    if (!v18)
    {
      goto LABEL_2;
    }
  }

  v23 = *v18;
  if (!*v18)
  {
    goto LABEL_2;
  }

  v24 = *(*(v4 + 32) + 32 * v21);
  v25 = *(v18 + 8);
  v26 = sub_181929E8C(v4, v25 + 1, 1565185748);
  a2 = v15;
  if (!v26)
  {
    goto LABEL_2;
  }

  v27 = v26;
  memcpy(v26, v23, v25);
  v27[v25] = 0;
  if (byte_181A204C8[*v27] < 0)
  {
    v28 = 0;
    if (*v27 == 91)
    {
      v29 = 93;
    }

    else
    {
      v29 = *v27;
    }

    for (i = 1; ; ++i)
    {
      v31 = i;
      v32 = v27[i];
      if (v32 == v29)
      {
        ++i;
        LOBYTE(v32) = v29;
        if (v27[v31 + 1] != v29)
        {
          break;
        }
      }

      v27[v28++] = v32;
    }

    v27[v28] = 0;
  }

  if (sub_181917F20(v4, v27, v24) || sub_1819495FC(v4, v27, v24) || *(v17 + 63) == 1 && (!*v17 ? (v35 = 0) : (v35 = strlen(*v17) & 0x3FFFFFFF), !sqlite3_strnicmp(v27, *v17, v35) && (v36 = &v27[v35], *v36 == 95) && (v37 = sub_1819493D0((v4 + 568), *v17[9])) != 0 && **v37 >= 3 && (v38 = *(*v37 + 184)) != 0 && v38(v36 + 1)))
  {
    sub_181910730(a1, "there is already another table or index with this name: %s");
  }

  else
  {
    if (sub_18198D540(a1, v17) || sub_18195CF88(a1, v27, "table", v27))
    {
      goto LABEL_34;
    }

    if (*(v17 + 63) == 2)
    {
      sub_181910730(a1, "view %s may not be altered");
    }

    else if (!sub_18195CEF8(a1, 26, v24, *v17, 0))
    {
      if (*(v17 + 63) != 1 && *(v17 + 27) > 0)
      {
        goto LABEL_61;
      }

      if (sub_181960D84(a1, v17))
      {
        goto LABEL_34;
      }

      if (*(v17 + 63) == 1)
      {
        v39 = (v17 + 10);
        do
        {
          v40 = *v39;
          v41 = *v39;
          v42 = *v41;
          v39 = (v41 + 5);
        }

        while (v42 != v4);
        if (!*(*v40[2] + 152))
        {
          v40 = 0;
        }

        v51 = v40;
      }

      else
      {
LABEL_61:
        v51 = 0;
      }

      v43 = sub_1818E7DFC(a1);
      if (v43)
      {
        v44 = v43;
        v45 = *(a1 + 152);
        if (!v45)
        {
          v45 = a1;
        }

        *(v45 + 33) = 1;
        v46 = *v17;
        v47 = sub_18194E4C4(*v17, -1);
        sub_1818F73B0(a1, "UPDATE %w.sqlite_master SET sql = sqlite_rename_table(%Q, type, name, sql, %Q, %Q, %d) WHERE (type!='index' OR tbl_name=%Q COLLATE nocase)AND   name NOT LIKE 'sqliteX_%%' ESCAPE 'X'", v24, v24, v46, v27, v21 == 1, v46);
        sub_1818F73B0(a1, "UPDATE %Q.sqlite_master SET tbl_name = %Q, name = CASE WHEN type='table' THEN %Q WHEN name LIKE 'sqliteX_autoindex%%' ESCAPE 'X'      AND type='index' THEN 'sqlite_autoindex_' || %Q || substr(name,%d+18) ELSE name END WHERE tbl_name=%Q COLLATE nocase AND (type='table' OR type='index' OR type='trigger');", v24, v27, v27, v27, v47, v46);
        if (sub_181917F20(v4, "sqlite_sequence", v24))
        {
          sub_1818F73B0(a1, "UPDATE %w.sqlite_sequence set name = %Q WHERE name = %Q", v24, v27, *v17);
        }

        if (v21 != 1)
        {
          sub_1818F73B0(a1, "UPDATE sqlite_temp_schema SET sql = sqlite_rename_table(%Q, type, name, sql, %Q, %Q, 1), tbl_name = CASE WHEN tbl_name=%Q COLLATE nocase AND   sqlite_rename_test(%Q, sql, type, name, 1, 'after rename', 0) THEN %Q ELSE tbl_name END WHERE type IN ('view', 'trigger')", v24, v46, v27, v46, v24, v27);
        }

        if (v51)
        {
          v48 = (*(a1 + 60) + 1);
          *(a1 + 60) = v48;
          v49 = sub_1818A2964(v44, 118, 0, v48, 0);
          sub_1818B49F8(v44, v49, v27, 0);
          v50 = sub_1818A2964(v44, 177, v48, 0, 0);
          sub_1818B49F8(v44, v50, v51, 4294967285);
        }

        sub_18198D740(a1, v21, 1);
        sub_18198D830(a1, v24, v21 == 1, "after rename", 0);
      }
    }
  }

LABEL_34:
  sub_1818BB5B0(v4, v15, v33, v34);

  return sub_181929C84(v4, v27);
}

void sub_1819541C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return;
  }

  v4 = *a1;
  v5 = *(a1 + 344);
  v6 = *(v5 + 96);
  v7 = *(*a1 + 32);
  if (v6)
  {
    v8 = (v7 + 24);
    v9 = -1;
    do
    {
      v10 = *v8;
      v8 += 4;
      ++v9;
    }

    while (v10 != v6);
  }

  else
  {
    v9 = -32768;
  }

  v11 = *(v7 + 32 * v9);
  v12 = *v5 + 16;
  v13 = *(v5 + 8) + 16 * *(v5 + 54);
  v14 = *(v13 - 4);
  if (*(v13 - 4) && !*(v5 + 63) && (v21 = *(v5 + 80)) != 0 && *v21 >= v14)
  {
    v15 = *&v21[6 * (v14 - 1) + 2];
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_181917F20(*a1, (*v5 + 16), v11);
  v17 = *a1;
  v18 = *(*a1 + 528);
  if (v18 && !*(v17 + 197) && !*(a1 + 302))
  {
    v22 = v16;
    v23 = v18(*(v17 + 536), 26, v11, *v16, 0, *(a1 + 368));
    if (v23 == 1)
    {
      v24 = 23;
      sub_181910730(a1, "not authorized");
    }

    else
    {
      if ((v23 & 0xFFFFFFFD) == 0)
      {
        v47 = v23;
        v16 = v22;
        if (v47)
        {
          return;
        }

        goto LABEL_14;
      }

      v24 = 1;
      sub_181910730(a1, "authorizer malfunction");
    }

    *(a1 + 24) = v24;
    return;
  }

LABEL_14:
  v19 = *(v13 - 2);
  if (v19)
  {
    v20 = "Cannot add a PRIMARY KEY column";
    goto LABEL_18;
  }

  if (*(v5 + 16))
  {
    v20 = "Cannot add a UNIQUE column";
LABEL_18:

    sub_181910730(a1, v20);
    return;
  }

  v48 = v16;
  if ((v19 & 0x60) != 0)
  {
    if ((v19 & 0x40) != 0)
    {
      sub_1818F73B0(a1, "SELECT raise(ABORT,%Q) FROM %w.%w", "cannot add a STORED column", v11, v12);
    }

    goto LABEL_50;
  }

  if (v15 && **(v15 + 16) == 122)
  {
    v15 = 0;
  }

  if ((*(v4 + 49) & 0x40) != 0 && *(v5 + 72) && v15)
  {
    sub_1818F73B0(a1, "SELECT raise(ABORT,%Q) FROM %w.%w", "Cannot add a REFERENCES column with non-NULL default value", v11, v12);
    goto LABEL_45;
  }

  if ((*(v13 - 8) & 0xF) != 0 && v15 == 0)
  {
    sub_1818F73B0(a1, "SELECT raise(ABORT,%Q) FROM %w.%w", "Cannot add a NOT NULL column with default value NULL", v11, v12);
  }

  else if (v15)
  {
LABEL_45:
    v50 = 0;
    if (sub_18194BC5C(v4, v15, 1, 65, &v50))
    {
      return;
    }

    v26 = v50;
    if (!v50)
    {
      sub_1818F73B0(a1, "SELECT raise(ABORT,%Q) FROM %w.%w", "Cannot add a column with non-constant default", v11, v12);
    }

    sub_18190B0E8(v26);
  }

LABEL_50:
  v49 = v12;
  v27 = *a2;
  if (*a2)
  {
    v28 = *(a2 + 8);
    v29 = sub_181929E8C(v4, v28 + 1, 1565185748);
    if (v29)
    {
      v30 = v29;
      memcpy(v29, v27, v28);
      *(v30 + v28) = 0;
      if (*(a2 + 8) != 1)
      {
        v31 = v30 + (*(a2 + 8) - 1);
        do
        {
          v32 = *v31;
          if (v32 != 59 && (byte_181A204C8[v32] & 1) == 0)
          {
            break;
          }

          *v31-- = 0;
        }

        while (v31 > v30);
      }

      sub_1818F73B0(a1, "UPDATE %w.sqlite_master SET sql = printf('%%.%ds, ',sql) || %Q || substr(sql,1+length(printf('%%.%ds',sql))) WHERE type = 'table' AND name = %Q", v11, *(v5 + 64), v30, *(v5 + 64), v49);
      sub_181929C84(v4, v30);
    }
  }

  v33 = sub_1818E7DFC(a1);
  if (v33)
  {
    v34 = v33;
    if (*(a1 + 31))
    {
      v35 = *(a1 + 31) - 1;
      *(a1 + 31) = v35;
      v36 = *(a1 + 4 * v35 + 184);
    }

    else
    {
      v36 = *(a1 + 60) + 1;
      *(a1 + 60) = v36;
    }

    v37 = *(v33 + 144);
    if (*(v33 + 148) <= v37)
    {
      sub_18194C8AC(v33, 99, v9, v36, 2);
    }

    else
    {
      *(v33 + 144) = v37 + 1;
      v38 = *(v33 + 136) + 40 * v37;
      *v38 = 99;
      *(v38 + 4) = v9;
      *(v38 + 8) = v36;
      *(v38 + 12) = 2;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0;
      *(v38 + 16) = 0;
    }

    *(v34 + 272) |= 1 << v9;
    if (v9 != 1 && *(*(*(*v34 + 32) + 32 * v9 + 8) + 17))
    {
      *(v34 + 276) |= 1 << v9;
    }

    v39 = *(v34 + 144);
    if (*(v34 + 148) <= v39)
    {
      sub_18194C8AC(v34, 86, v36, -2, 0);
    }

    else
    {
      *(v34 + 144) = v39 + 1;
      v40 = *(v34 + 136) + 40 * v39;
      *v40 = 86;
      *(v40 + 4) = v36;
      *(v40 + 8) = -2;
      *(v40 + 12) = 0;
      *(v40 + 28) = 0;
      *(v40 + 20) = 0;
      *(v40 + 36) = 0;
    }

    v41 = *(v34 + 144);
    v42 = v41 + 2;
    if (*(v34 + 148) <= v41)
    {
      sub_18194C8AC(v34, 50, v36, v42, 0);
    }

    else
    {
      *(v34 + 144) = v41 + 1;
      v43 = *(v34 + 136) + 40 * v41;
      *v43 = 50;
      *(v43 + 4) = v36;
      *(v43 + 8) = v42;
      *(v43 + 12) = 0;
      *(v43 + 28) = 0;
      *(v43 + 20) = 0;
      *(v43 + 36) = 0;
    }

    v44 = *(v34 + 144);
    if (*(v34 + 148) <= v44)
    {
      sub_18194C8AC(v34, 100, v9, 2, 3);
    }

    else
    {
      *(v34 + 144) = v44 + 1;
      v45 = *(v34 + 136) + 40 * v44;
      *v45 = 100;
      *(v45 + 4) = v9;
      *(v45 + 8) = 0x300000002;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0;
      *(v45 + 16) = 0;
    }

    if (v36)
    {
      v46 = *(a1 + 31);
      if (v46 <= 7)
      {
        *(a1 + 31) = v46 + 1;
        *(a1 + 4 * v46 + 184) = v36;
      }
    }

    sub_18198D740(a1, v9, 3);
    if (*(v5 + 32) || (*(v13 - 8) & 0xF) != 0 && (*(v13 - 2) & 0x60) != 0 || (*(v48 + 50) & 1) != 0)
    {
      sub_1818F73B0(a1, "SELECT CASE WHEN quick_check GLOB 'CHECK*' THEN raise(ABORT,'CHECK constraint failed') WHEN quick_check GLOB 'non-* value in*' THEN raise(ABORT,'type mismatch on DEFAULT') ELSE raise(ABORT,'NOT NULL constraint failed') END  FROM pragma_quick_check(%Q,%Q) WHERE quick_check GLOB 'CHECK*' OR quick_check GLOB 'NULL*' OR quick_check GLOB 'non-* value in*'", v49, v11);
    }
  }
}

void *sub_181954798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (!*(*a1 + 103))
  {
    v8 = (a2 + 72);
    if (*(a2 + 35))
    {
      v9 = *v8;
      v10 = *(v4 + 4);
      if (v9)
      {
        v11 = (v10 + 24);
        v12 = 0xFFFFFFFF00000000;
        do
        {
          v13 = *v11;
          v11 += 4;
          v12 += 0x100000000;
        }

        while (v13 != v9);
        v14 = v12 >> 32;
      }

      else
      {
        v14 = -32768;
      }

      v8 = (v10 + 32 * v14);
    }

    v15 = a2;
    v16 = sub_1818CA520(a1, 0, *(a2 + 8), *v8);
    a2 = v15;
    if (v16)
    {
      v17 = v16;
      v18 = sub_18198D540(a1, v16);
      a2 = v15;
      if (!v18)
      {
        v19 = *(v17 + 63);
        v20 = "view";
        if (v19 != 2)
        {
          v20 = 0;
        }

        if (v19 == 1)
        {
          v21 = "virtual table";
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          sub_181910730(a1, "cannot %s %s %s", "drop column from", v21, *v17);
LABEL_21:
          a2 = v15;
          goto LABEL_2;
        }

        if (a3)
        {
          v22 = *a3;
          if (*a3)
          {
            v23 = *(a3 + 8);
            v24 = sub_181929E8C(v4, v23 + 1, 1565185748);
            a2 = v15;
            if (v24)
            {
              v25 = v24;
              memcpy(v24, v22, v23);
              *(v25 + v23) = 0;
              v26 = *v25;
              if (byte_181A204C8[*v25] < 0)
              {
                v27 = 0;
                if (v26 == 91)
                {
                  v28 = 93;
                }

                else
                {
                  v28 = *v25;
                }

                for (i = 1; ; ++i)
                {
                  v30 = i;
                  v31 = *(v25 + i);
                  if (v31 == v28)
                  {
                    ++i;
                    LOBYTE(v31) = v28;
                    if (*(v25 + v30 + 1) != v28)
                    {
                      break;
                    }
                  }

                  *(v25 + v27++) = v31;
                }

                *(v25 + v27) = 0;
                v26 = *v25;
              }

              v32 = 0;
              if (v26)
              {
                v33 = v25 + 1;
                v34 = v26;
                do
                {
                  v32 += byte_181A20298[v34];
                  v35 = *v33++;
                  v34 = v35;
                }

                while (v35);
              }

              v36 = v17[1];
              v37 = *(v17 + 27);
              v38 = *(v17 + (v32 & 0xF) + 104);
              v39 = (v36 + 16 * v38);
              if (*(v39 + 11) == v32)
              {
                v40 = *v39;
                for (j = v25 + 1; ; ++j)
                {
                  if (*v40 == v26)
                  {
                    if (!v26)
                    {
LABEL_54:
                      if ((*(v36 + 16 * v38 + 14) & 9) != 0)
                      {
                        sub_181910730(a1, "cannot drop %s column: %s");
                        goto LABEL_69;
                      }

                      if (v37 <= 1)
                      {
                        sub_181910730(a1, "cannot drop column %s: no other columns exist");
                        goto LABEL_69;
                      }

                      v47 = v17[12];
                      v48 = *(v4 + 4);
                      if (v47)
                      {
                        v49 = (v48 + 24);
                        LODWORD(v50) = -1;
                        do
                        {
                          v51 = *v49;
                          v49 += 4;
                          v50 = (v50 + 1);
                        }

                        while (v51 != v47);
                      }

                      else
                      {
                        v50 = 4294934528;
                      }

                      v52 = *(v48 + 32 * v50);
                      if (!sub_18195CEF8(a1, 26, v52, *v17, v25))
                      {
                        sub_18198D830(a1, v52, v50 == 1, &byte_181A2878D, 0);
                        sub_18198D8B8(a1, v52, v50 == 1);
                        sub_1818F73B0(a1, "UPDATE %w.sqlite_master SET sql = sqlite_drop_column(%d, sql, %d) WHERE (type=='table' AND tbl_name=%Q COLLATE nocase)", v52, v50, v38, *v17);
                        sub_18198D740(a1, v50, 2);
                        sub_18198D830(a1, v52, v50 == 1, "after drop column", 1);
                        if (!*(a1 + 52) && (*(v17[1] + 16 * v38 + 14) & 0x20) == 0)
                        {
                          v76 = v38;
                          v53 = sub_1818E7DFC(a1);
                          v54 = *(a1 + 56);
                          *(a1 + 56) = v54 + 1;
                          sub_1818B69D8(a1, v54, v50, v17, 113);
                          v79 = sub_1818A2964(v53, 36, v54, 0, 0);
                          v81 = *(a1 + 60);
                          v55 = (v81 + 1);
                          *(a1 + 60) = v55;
                          v77 = v81 + 1;
                          v83 = v54;
                          if ((v17[6] & 0x80) != 0)
                          {
                            v60 = (v17 + 2);
                            do
                            {
                              v56 = *v60;
                              v61 = *(*v60 + 99) & 3;
                              v60 = *v60 + 40;
                            }

                            while (v61 != 2);
                            v59 = v77 + *(v56 + 96);
                            *(a1 + 60) = v59;
                            if (*(v56 + 94))
                            {
                              v62 = 0;
                              do
                              {
                                sub_1818A2964(v53, 94, v83, v62, (v81 + 2 + v62));
                                v62 = (v62 + 1);
                                v57 = *(v56 + 94);
                              }

                              while (v62 < v57);
                              v59 = *(a1 + 60);
                            }

                            else
                            {
                              v57 = 0;
                            }

                            v58 = *(v17 + 27);
                          }

                          else
                          {
                            sub_1818A2964(v53, 135, v54, v55, 0);
                            v56 = 0;
                            v57 = 0;
                            v58 = *(v17 + 27);
                            v59 = *(a1 + 60) + v58;
                          }

                          v78 = v59 + 1;
                          *(a1 + 60) = v59 + 1;
                          if (v58 >= 1)
                          {
                            v63 = 0;
                            v82 = v81 + 2;
                            v64 = v53;
                            while (1)
                            {
                              if (v63 != v76)
                              {
                                v65 = v17[1] + 16 * v63;
                                if ((*(v65 + 14) & 0x20) == 0)
                                {
                                  if (v56)
                                  {
                                    v66 = *(v56 + 96);
                                    if (!*(v56 + 96))
                                    {
                                      goto LABEL_82;
                                    }

                                    v67 = 0;
                                    v68 = *(v56 + 8);
                                    while (v63 << 16 >> 16 != *(v68 + 2 * v67))
                                    {
                                      if (v66 == ++v67)
                                      {
                                        LODWORD(v67) = -1;
                                        break;
                                      }
                                    }

                                    v69 = 0;
                                    while (v76 != *(v68 + 2 * v69))
                                    {
                                      if (v66 == ++v69)
                                      {
                                        LODWORD(v69) = -1;
                                        break;
                                      }
                                    }

                                    if (v67 < *(v56 + 94))
                                    {
                                      goto LABEL_82;
                                    }

                                    v70 = v82 + v67 - (v67 > v69);
                                  }

                                  else
                                  {
                                    v70 = (v82 + v57);
                                  }

                                  v84 = v57;
                                  if (v63 == *(v17 + 26))
                                  {
                                    sub_1818A2964(v64, 75, 0, v70, 0);
                                  }

                                  else
                                  {
                                    v72 = *(v65 + 9);
                                    v71 = (v65 + 9);
                                    v80 = v72;
                                    if (v72 == 69)
                                    {
                                      *v71 = 67;
                                    }

                                    v64 = v53;
                                    sub_181959FA4(v53, v17, v83, v63, v70);
                                    *(v17[1] + 16 * v63 + 9) = v80;
                                  }

                                  v57 = (v84 + 1);
                                  v58 = *(v17 + 27);
                                }
                              }

LABEL_82:
                              if (++v63 >= v58)
                              {
                                goto LABEL_103;
                              }
                            }
                          }

                          v64 = v53;
LABEL_103:
                          if (v57)
                          {
                            v73 = (v81 + 2);
                          }

                          else
                          {
                            ++*(a1 + 60);
                            v73 = (v81 + 2);
                            sub_1818A2964(v64, 75, 0, v73, 0);
                            v57 = 1;
                          }

                          sub_1818A2964(v64, 97, v73, v57, v78);
                          if (v56)
                          {
                            sub_181910A18(v64, 138, v83, v78, v73, *(v56 + 94));
                          }

                          else
                          {
                            sub_1818A2964(v64, 128, v83, v78, v77);
                          }

                          v74 = *(v64 + 144);
                          if (v74 >= 1)
                          {
                            *(*(v64 + 136) + 40 * v74 - 38) = 2;
                          }

                          sub_1818A2964(v64, 39, v83, (v79 + 1), 0);
                          if (*(*v64 + 103))
                          {
                            v75 = &byte_1EA831A58;
                          }

                          else
                          {
                            v75 = (*(v64 + 136) + 40 * v79);
                          }

                          *(v75 + 2) = *(v64 + 144);
                        }
                      }

LABEL_69:
                      sub_181929C84(v4, v25);
                      goto LABEL_21;
                    }
                  }

                  else if (byte_181A20298[*v40] != byte_181A20298[v26])
                  {
                    break;
                  }

                  ++v40;
                  v42 = *j;
                  v26 = v42;
                }
              }

              v38 = 0;
              if (v37 <= 1)
              {
                v43 = 1;
              }

              else
              {
                v43 = v37;
              }

              do
              {
                v44 = v36 + 16 * v38;
                if (*(v44 + 11) == v32)
                {
                  v45 = *v44;
                  for (k = v25; ; ++k)
                  {
                    if (*v45 == *k)
                    {
                      if (!*v45)
                      {
                        goto LABEL_54;
                      }
                    }

                    else if (byte_181A20298[*v45] != byte_181A20298[*k])
                    {
                      break;
                    }

                    ++v45;
                  }
                }

                ++v38;
              }

              while (v38 != v43);
              sub_181910730(a1, "no such column: %T", a3);
              goto LABEL_69;
            }
          }
        }
      }
    }
  }

LABEL_2:

  return sub_1818BB5B0(v4, a2, a3, a4);
}

void *sub_181954F44(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (!(*a1)[103])
  {
    v6 = (a2 + 72);
    if (*(a2 + 35))
    {
      v7 = *v6;
      v8 = *(v4 + 4);
      if (v7)
      {
        v9 = (v8 + 24);
        v10 = 0xFFFFFFFF00000000;
        do
        {
          v11 = *v9;
          v9 += 4;
          v10 += 0x100000000;
        }

        while (v11 != v7);
        v12 = v10 >> 32;
      }

      else
      {
        v12 = -32768;
      }

      v6 = (v8 + 32 * v12);
    }

    v13 = a2;
    v14 = sub_1818CA520(a1, 0, *(a2 + 8), *v6);
    a2 = v13;
    if (v14)
    {
      v15 = v14;
      v16 = *(v14 + 63);
      if (v16 == 2)
      {
        sub_181910730(a1, "Cannot add a column to a view");
        goto LABEL_14;
      }

      if (v16 == 1)
      {
        sub_181910730(a1, "virtual tables may not be altered");
LABEL_14:
        a2 = v13;
        goto LABEL_16;
      }

      v17 = sub_18198D540(a1, v14);
      a2 = v13;
      if (!v17)
      {
        v19 = a1[19];
        if (!v19)
        {
          v19 = a1;
        }

        *(v19 + 33) = 1;
        v20 = *(v15 + 96);
        if (v20)
        {
          v21 = (*(v4 + 4) + 24);
          v22 = -1;
          do
          {
            v23 = *v21;
            v21 += 4;
            ++v22;
          }

          while (v23 != v20);
          if (!v4)
          {
            v24 = sub_181902484(120, 0x10B2040A26A9E65);
            v42 = 1;
            goto LABEL_28;
          }
        }

        else
        {
          v22 = -32768;
        }

        v24 = sub_181929E8C(v4, 0x78uLL, 0x10B2040A26A9E65);
        v42 = 0;
LABEL_28:
        a2 = v13;
        if (!v24)
        {
          goto LABEL_16;
        }

        *(v24 + 112) = 0;
        *(v24 + 80) = 0u;
        *(v24 + 96) = 0u;
        *(v24 + 48) = 0u;
        *(v24 + 64) = 0u;
        *(v24 + 16) = 0u;
        *(v24 + 32) = 0u;
        *v24 = 0u;
        a1[43] = v24;
        *(v24 + 44) = 1;
        v25 = *(v15 + 54);
        *(v24 + 54) = v25;
        v27 = v25 - 1;
        v26 = v25 < 1;
        v28 = v25 + 6;
        if (!v26)
        {
          v28 = v27;
        }

        *(v24 + 8) = sub_18190C56C(v4, 16 * ((v28 & 0xFFFFFFF8) + 8), 0x1010040FDD9F14CLL);
        v29 = sub_1818A8BAC(v4, "sqlite_altertab_%s", *v15);
        a2 = v13;
        v30 = v29;
        *v24 = v29;
        v31 = *(v24 + 8);
        if (!v31 || !v30)
        {
          goto LABEL_16;
        }

        memcpy(v31, *(v15 + 8), 16 * *(v24 + 54));
        if (*(v24 + 54) < 1)
        {
LABEL_47:
          *(v24 + 80) = sub_1818C83A0(v4, *(v15 + 80), 0);
          *(v24 + 96) = *(*(v4 + 4) + 32 * v22 + 24);
          *(v24 + 64) = *(v15 + 64);
          goto LABEL_14;
        }

        v32 = 0;
        v43 = v24;
        while (1)
        {
          v34 = *(v24 + 8) + 16 * v32;
          v35 = *v34;
          if (*v34)
          {
            v36 = strlen(*v34);
            v37 = v36;
            if (v42)
            {
              v38 = sub_181902484(v36 + 1, 354097263);
              if (v38)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v38 = sub_181929E8C(v4, v36 + 1, 354097263);
              if (v38)
              {
LABEL_42:
                memcpy(v38, v35, v37 + 1);
                *v34 = v38;
                v39 = *v38;
                if (*v38)
                {
                  v33 = 0;
                  v40 = v38 + 1;
                  do
                  {
                    v33 += byte_181A20298[v39];
                    v41 = *v40++;
                    v39 = v41;
                  }

                  while (v41);
                }

                else
                {
                  v33 = 0;
                }

                goto LABEL_36;
              }
            }
          }

          v33 = 0;
          *v34 = 0;
LABEL_36:
          *(v34 + 11) = v33;
          ++v32;
          v24 = v43;
          if (v32 >= *(v43 + 54))
          {
            goto LABEL_47;
          }
        }
      }
    }
  }

LABEL_16:

  return sub_1818BB5B0(v4, a2, a3, a4);
}

void *sub_181955298(char **a1, uint64_t a2, uint64_t a3, unsigned __int8 **a4)
{
  v8 = *a1;
  v9 = (a2 + 72);
  if (*(a2 + 35))
  {
    v10 = *v9;
    v11 = *(v8 + 4);
    if (v10)
    {
      v12 = (v11 + 24);
      v13 = 0xFFFFFFFF00000000;
      do
      {
        v14 = *v12;
        v12 += 4;
        v13 += 0x100000000;
      }

      while (v14 != v10);
      v15 = v13 >> 32;
    }

    else
    {
      v15 = -32768;
    }

    v9 = (v11 + 32 * v15);
  }

  v16 = sub_1818CA520(a1, 0, *(a2 + 8), *v9);
  if (!v16)
  {
    goto LABEL_17;
  }

  v19 = v16;
  if (sub_18198D540(a1, v16))
  {
    goto LABEL_17;
  }

  v20 = *(v19 + 63);
  v21 = "view";
  if (v20 != 2)
  {
    v21 = 0;
  }

  if (v20 == 1)
  {
    v22 = "virtual table";
  }

  else
  {
    v22 = v21;
  }

  if (v22)
  {
    sub_181910730(a1, "cannot %s %s %s", "rename columns of", v22, *v19);
    goto LABEL_17;
  }

  v24 = v19[12];
  v25 = *(v8 + 4);
  if (v24)
  {
    v26 = (v25 + 24);
    v27 = -1;
    do
    {
      v28 = *v26;
      v26 += 4;
      ++v27;
    }

    while (v28 != v24);
  }

  else
  {
    v27 = -32768;
  }

  v29 = *(v25 + 32 * v27);
  v30 = *a1;
  v31 = *(*a1 + 66);
  v67 = v29;
  if (!v31 || v30[197] || *(a1 + 302))
  {
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  v64 = v31(*(v30 + 67), 26, v29, *v19, 0, a1[46]);
  if (v64 == 1)
  {
    v65 = 23;
    sub_181910730(a1, "not authorized");
LABEL_74:
    *(a1 + 6) = v65;
    goto LABEL_17;
  }

  if ((v64 & 0xFFFFFFFD) != 0)
  {
    v65 = 1;
    sub_181910730(a1, "authorizer malfunction");
    goto LABEL_74;
  }

  if (!a3 || v64)
  {
LABEL_17:

    return sub_1818BB5B0(v8, a2, v17, v18);
  }

LABEL_29:
  v32 = *a3;
  if (!*a3)
  {
    goto LABEL_17;
  }

  v33 = *(a3 + 8);
  v34 = sub_181929E8C(v8, v33 + 1, 1565185748);
  if (!v34)
  {
    goto LABEL_17;
  }

  v35 = v34;
  memcpy(v34, v32, v33);
  *(v35 + v33) = 0;
  v36 = *v35;
  if (byte_181A204C8[*v35] < 0)
  {
    v37 = 0;
    if (v36 == 91)
    {
      v38 = 93;
    }

    else
    {
      v38 = *v35;
    }

    for (i = 1; ; ++i)
    {
      v40 = i;
      v41 = *(v35 + i);
      if (v41 == v38)
      {
        ++i;
        LOBYTE(v41) = v38;
        if (*(v35 + v40 + 1) != v38)
        {
          break;
        }
      }

      *(v35 + v37++) = v41;
    }

    *(v35 + v37) = 0;
    v36 = *v35;
  }

  v42 = 0;
  if (v36)
  {
    v43 = v35 + 1;
    v44 = v36;
    do
    {
      v42 += byte_181A20298[v44];
      v45 = *v43++;
      v44 = v45;
    }

    while (v45);
  }

  v46 = v19[1];
  v47 = *(v19 + 27);
  v48 = &v46[16 * *(v19 + (v42 & 0xF) + 104)];
  if (*(v48 + 11) == v42)
  {
    v49 = *v48;
    for (j = v35 + 1; ; ++j)
    {
      if (*v49 == v36)
      {
        if (!v36)
        {
          v66 = *(v19 + (v42 & 0xF) + 104);
          goto LABEL_61;
        }
      }

      else if (byte_181A20298[*v49] != byte_181A20298[v36])
      {
        break;
      }

      ++v49;
      v51 = *j;
      v36 = v51;
    }
  }

  v52 = 0;
  if (v47 <= 1)
  {
    v53 = 1;
  }

  else
  {
    v53 = v47;
  }

  while (1)
  {
    v54 = &v46[16 * v52];
    if (*(v54 + 11) == v42)
    {
      break;
    }

LABEL_53:
    if (++v52 == v53)
    {
      sub_181910730(a1, "no such column: %T", a3);
      v62 = 0;
      goto LABEL_65;
    }
  }

  v55 = *v54;
  for (k = v35; *v55 != *k; ++k)
  {
    if (byte_181A20298[*v55] != byte_181A20298[*k])
    {
      goto LABEL_53;
    }

LABEL_57:
    ++v55;
  }

  if (*v55)
  {
    goto LABEL_57;
  }

  v66 = v52;
LABEL_61:
  sub_18198D830(a1, v67, v27 == 1, &byte_181A2878D, 0);
  v57 = v27 == 1;
  sub_18198D8B8(a1, v67, v27 == 1);
  v58 = a1[19];
  if (!v58)
  {
    v58 = a1;
  }

  *(v58 + 33) = 1;
  v59 = sub_181950DC4(v8, a4);
  v62 = v59;
  if (v59)
  {
    v63 = byte_181A204C8[**a4] & 0x80;
    sub_1818F73B0(a1, "UPDATE %w.sqlite_master SET sql = sqlite_rename_column(sql, type, name, %Q, %Q, %d, %Q, %d, %d) WHERE name NOT LIKE 'sqliteX_%%' ESCAPE 'X'  AND (type != 'index' OR tbl_name = %Q)", v67, v67, *v19, v66, v59, v63, v57, *v19);
    sub_1818F73B0(a1, "UPDATE temp.sqlite_master SET sql = sqlite_rename_column(sql, type, name, %Q, %Q, %d, %Q, %d, 1) WHERE type IN ('trigger', 'view')", v67, *v19, v66, v62, v63);
    sub_18198D740(a1, v27, 1);
    sub_18198D830(a1, v67, v57, "after rename", 1);
  }

LABEL_65:
  sub_1818BB5B0(v8, a2, v60, v61);
  result = sub_181929C84(v8, v35);
  if (v62)
  {

    return sub_181929C84(v8, v62);
  }

  return result;
}

void sub_181955794(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 344);
  if (!v2)
  {
    return;
  }

  v5 = *a1;
  v6 = *(a1 + 376);
  if (v6)
  {
    v7 = *(a1 + 384);
    v8 = sub_181929E8C(*a1, v7 + 1, 1565185748);
    v9 = v8;
    if (v8)
    {
      memcpy(v8, v6, v7);
      *(v9 + v7) = 0;
    }

    v10 = *a1;
    v11 = *(v2 + 16);
    v12 = 8 * v11 + 16;
    if (v11 + 3 >= *(*a1 + 144))
    {
      sub_181910730(a1, "too many columns on %s", *v2);
    }

    v13 = v2[9];
    if (v13)
    {
      if (*(v10 + 512) <= v13)
      {
        goto LABEL_16;
      }

      if (*(v10 + 496) > v13)
      {
        if (*(v10 + 504) <= v13 && v12 <= *(v10 + 438))
        {
          goto LABEL_17;
        }

LABEL_16:
        v13 = sub_181929F38(v10, v13, v12, 528201247);
        if (v13)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      if (v12 >= 0x81)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = sub_181929E8C(v10, v12, 528201247);
      if (!v13)
      {
LABEL_18:
        if (v9)
        {
          sub_181929C84(v10, v9);
        }

        goto LABEL_20;
      }
    }

LABEL_17:
    v14 = *(v2 + 16);
    *(v2 + 16) = v14 + 1;
    *&v13[8 * v14] = v9;
    *&v13[8 * v14 + 8] = 0;
    v2[9] = v13;
  }

LABEL_20:
  *(a1 + 376) = 0;
  if (*(v2 + 16) < 1)
  {
    return;
  }

  if (!*(v5 + 197))
  {
    v20 = *(a1 + 152);
    if (!v20)
    {
      v20 = a1;
    }

    *(v20 + 33) = 1;
    if (a2)
    {
      *(a1 + 232) = a2[2] + *a2 - *(a1 + 224);
    }

    v21 = sub_1818A8BAC(v5, "CREATE VIRTUAL TABLE %T", a1 + 224);
    v22 = v21;
    v23 = v2[12];
    v24 = *(v5 + 32);
    if (v23)
    {
      v25 = (v24 + 24);
      v26 = -1;
      do
      {
        v27 = *v25;
        v25 += 4;
        ++v26;
      }

      while (v27 != v23);
    }

    else
    {
      v26 = -32768;
    }

    v40 = 32 * v26;
    sub_1818F73B0(a1, "UPDATE %Q.sqlite_master SET type='table', name=%Q, tbl_name=%Q, rootpage=0, sql=%Q WHERE rowid=#%d", *(v24 + v40), *v2, *v2, v21, *(a1 + 252));
    v41 = sub_1818E7DFC(a1);
    v42 = *(a1 + 16);
    v43 = **(*(*a1 + 32) + v40 + 24) + 1;
    v44 = *(v42 + 144);
    if (*(v42 + 148) <= v44)
    {
      sub_18194C8AC(v42, 100, v26, 1, v43);
    }

    else
    {
      *(v42 + 144) = v44 + 1;
      v45 = *(v42 + 136) + 40 * v44;
      *v45 = 100;
      *(v45 + 4) = v26;
      *(v45 + 8) = 1;
      *(v45 + 12) = v43;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0;
      *(v45 + 16) = 0;
    }

    v46 = *(v41 + 144);
    if (*(v41 + 148) <= v46)
    {
      sub_18194C8AC(v41, 166, 0, 0, 0);
    }

    else
    {
      *(v41 + 144) = v46 + 1;
      v47 = *(v41 + 136) + 40 * v46;
      *v47 = -90;
      *(v47 + 1) = 0u;
      *(v47 + 17) = 0u;
      *(v47 + 32) = 0;
    }

    v48 = sub_1818A8BAC(v5, "name=%Q AND sql=%Q", *v2, v22);
    sub_18195E8E8(v41, v26, v48, 0);
    if (v22)
    {
      sub_181929C84(v5, v22);
    }

    v49 = *(a1 + 60) + 1;
    *(a1 + 60) = v49;
    v50 = *v2;
    v51 = *(v41 + 144);
    if (*(v41 + 148) <= v51)
    {
      v51 = sub_18194C8AC(v41, 118, 0, v49, 0);
    }

    else
    {
      *(v41 + 144) = v51 + 1;
      v52 = *(v41 + 136) + 40 * v51;
      *v52 = 118;
      *(v52 + 8) = v49;
      *(v52 + 12) = 0;
      *(v52 + 28) = 0;
      *(v52 + 20) = 0;
      *(v52 + 36) = 0;
    }

    if (!*(*v41 + 103))
    {
      if (v51 < 0)
      {
        v51 = *(v41 + 144) - 1;
      }

      sub_18194CB90(v41, *(v41 + 136) + 40 * v51, v50, 0);
    }

    v53 = *(v41 + 144);
    if (*(v41 + 148) <= v53)
    {

      sub_18194C8AC(v41, 171, v26, v49, 0);
    }

    else
    {
      *(v41 + 144) = v53 + 1;
      v54 = *(v41 + 136) + 40 * v53;
      *v54 = 171;
      *(v54 + 4) = v26;
      *(v54 + 8) = v49;
      *(v54 + 12) = 0;
      *(v54 + 28) = 0;
      *(v54 + 20) = 0;
      *(v54 + 36) = 0;
    }

    return;
  }

  v15 = *v2[9];
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = v15 + 1;
    do
    {
      v17 = -1640531535 * (v17 + (v16 & 0xDF));
      v19 = *v18++;
      v16 = v19;
    }

    while (v19);
  }

  else
  {
    v17 = 0;
  }

  v28 = (v5 + 568);
  v29 = *(v5 + 584);
  if (v29)
  {
    v28 = (v29 + 16 * (v17 % *v28));
    v30 = *v28;
    if (*v28)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v30 = *(v5 + 572);
    if (v30)
    {
LABEL_37:
      v31 = (v28 + 2);
      do
      {
        v31 = *v31;
        if (v17 == *(v31 + 8))
        {
          v32 = v31[3];
          for (i = *v2[9]; ; ++i)
          {
            if (*v32 == *i)
            {
              if (!*v32)
              {
                goto LABEL_48;
              }
            }

            else if (byte_181A20298[*v32] != byte_181A20298[*i])
            {
              break;
            }

            ++v32;
          }
        }

        --v30;
      }

      while (v30);
      v31 = &qword_1EA831A30;
      goto LABEL_48;
    }
  }

  v31 = &qword_1EA831A30;
LABEL_48:
  v34 = v2[12];
  v35 = *v2;
  v36 = v31[2];
  if (v36)
  {
    v37 = *v36;
    if (*v36)
    {
      if (*v37 >= 3 && *(v37 + 184))
      {
        if (v35)
        {
          v38 = strlen(*v2);
          v35 = *v2;
          v39 = v38 & 0x3FFFFFFF;
        }

        else
        {
          v39 = 0;
        }

        v55 = *(v34 + 2);
        if (v55)
        {
          v56 = v39;
          v69 = v39;
          v70 = v39 + 1;
          do
          {
            v57 = v55[2];
            if (!*(v57 + 63) && (*(v57 + 49) & 0x10) == 0)
            {
              v58 = *v2;
              if (*v57)
              {
                if (!v58)
                {
                  goto LABEL_79;
                }

                if (v39)
                {
                  v59 = v70;
                  v60 = *v57;
                  while (1)
                  {
                    v61 = *v60;
                    if (!*v60)
                    {
                      break;
                    }

                    LODWORD(v61) = byte_181A20298[v61];
                    v62 = byte_181A20298[*v58];
                    if (v61 != v62)
                    {
                      goto LABEL_96;
                    }

                    ++v60;
                    ++v58;
                    if (--v59 <= 1)
                    {
                      goto LABEL_97;
                    }
                  }

                  v62 = byte_181A20298[*v58];
LABEL_96:
                  if (v61 != v62)
                  {
                    goto LABEL_79;
                  }
                }

LABEL_97:
                v64 = (*v57 + v56);
                if (*v64 == 95)
                {
                  v65 = v35;
                  v66 = (*(*v36 + 184))(v64 + 1);
                  v39 = v69;
                  v35 = v65;
                  if (v66)
                  {
                    *(v57 + 48) |= 0x1000u;
                  }
                }

                goto LABEL_79;
              }

              if (v58)
              {
                v63 = -1;
              }

              else
              {
                v63 = 0;
              }

              if (!v63)
              {
                goto LABEL_97;
              }
            }

LABEL_79:
            v55 = *v55;
          }

          while (v55);
        }
      }
    }
  }

  if (sub_18188FAF0((v34 + 8), v35, v2))
  {
    if (!*(v5 + 103) && !*(v5 + 104))
    {
      *(v5 + 103) = 1;
      if (*(v5 + 220) >= 1)
      {
        *(v5 + 424) = 1;
      }

      ++*(v5 + 432);
      *(v5 + 436) = 0;
      v67 = *(v5 + 344);
      if (v67)
      {
        sub_181910730(v67, "out of memory");
        for (j = *(v5 + 344); ; ++*(j + 52))
        {
          *(j + 24) = 7;
          j = *(j + 216);
          if (!j)
          {
            break;
          }
        }
      }
    }
  }

  else
  {
    *(a1 + 344) = 0;
  }
}

void sub_181955EA4(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_18189FE3C(a1, a2, a3, 0, 0, 1, a5);
  v7 = a1[43];
  if (!v7)
  {
    return;
  }

  *(v7 + 63) = 1;
  v8 = *a1;
  if (a4 && (v9 = *a4) != 0)
  {
    v10 = *(a4 + 8);
    v11 = sub_181929E8C(*a1, v10 + 1, 1565185748);
    v12 = v11;
    if (v11)
    {
      memcpy(v11, v9, v10);
      *(v12 + v10) = 0;
      if (byte_181A204C8[*v12] < 0)
      {
        v13 = 0;
        if (*v12 == 91)
        {
          v14 = 93;
        }

        else
        {
          v14 = *v12;
        }

        for (i = 1; ; ++i)
        {
          v16 = i;
          v17 = *(v12 + i);
          if (v17 == v14)
          {
            ++i;
            LOBYTE(v17) = v14;
            if (*(v12 + v16 + 1) != v14)
            {
              break;
            }
          }

          *(v12 + v13++) = v17;
        }

        *(v12 + v13) = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v18 = *a1;
  v19 = *(v7 + 16);
  v20 = 8 * v19 + 16;
  if (v19 + 3 >= *(*a1 + 144))
  {
    sub_181910730(a1, "too many columns on %s", *v7);
  }

  v21 = v7[9];
  if (!v21)
  {
    v21 = sub_181929E8C(v18, v20, 528201247);
    if (!v21)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (*(v18 + 512) <= v21)
  {
    goto LABEL_26;
  }

  if (*(v18 + 496) <= v21)
  {
    if (v20 >= 0x81)
    {
      goto LABEL_26;
    }

LABEL_27:
    v22 = *(v7 + 16);
    *(v7 + 16) = v22 + 1;
    *&v21[8 * v22] = v12;
    *&v21[8 * v22 + 8] = 0;
    v7[9] = v21;
    goto LABEL_30;
  }

  if (*(v18 + 504) <= v21 && v20 <= *(v18 + 438))
  {
    goto LABEL_27;
  }

LABEL_26:
  v21 = sub_181929F38(v18, v21, v20, 528201247);
  if (v21)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v12)
  {
    sub_181929C84(v18, v12);
  }

LABEL_30:
  v23 = *a1;
  v24 = *(v7 + 16);
  v25 = 8 * v24 + 16;
  if (v24 + 3 >= *(*a1 + 144))
  {
    sub_181910730(a1, "too many columns on %s", *v7);
  }

  v26 = v7[9];
  if (!v26)
  {
    v26 = sub_181929E8C(v23, v25, 528201247);
    if (v26)
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  if (*(v23 + 512) <= v26)
  {
LABEL_41:
    v26 = sub_181929F38(v23, v26, v25, 528201247);
    if (v26)
    {
      goto LABEL_42;
    }

LABEL_44:
    v29 = *v7;
    if (!*v7)
    {
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  if (*(v23 + 496) <= v26)
  {
    if (v25 < 0x81)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (*(v23 + 504) > v26 || v25 > *(v23 + 438))
  {
    goto LABEL_41;
  }

LABEL_42:
  v27 = *(v7 + 16);
  *(v7 + 16) = v27 + 1;
  v28 = &v26[8 * v27];
  *v28 = 0;
  *(v28 + 1) = 0;
  v7[9] = v26;
  v29 = *v7;
  if (!*v7)
  {
LABEL_43:
    v30 = 0;
    goto LABEL_48;
  }

LABEL_45:
  v31 = strlen(v29);
  v32 = v31;
  if (v8)
  {
    v30 = sub_181929E8C(v8, v31 + 1, 354097263);
    if (!v30)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v30 = sub_181902484(v31 + 1, 354097263);
  if (v30)
  {
LABEL_47:
    memcpy(v30, v29, v32 + 1);
  }

LABEL_48:
  v33 = *a1;
  v34 = *(v7 + 16);
  v35 = 8 * v34 + 16;
  if (v34 + 3 >= *(*a1 + 144))
  {
    sub_181910730(a1, "too many columns on %s", *v7);
  }

  v36 = v7[9];
  if (!v36)
  {
    v36 = sub_181929E8C(v33, v35, 528201247);
    if (!v36)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (*(v33 + 512) <= v36)
  {
    goto LABEL_61;
  }

  if (*(v33 + 496) <= v36)
  {
    if (v35 >= 0x81)
    {
      goto LABEL_61;
    }

LABEL_62:
    v37 = *(v7 + 16);
    *(v7 + 16) = v37 + 1;
    *&v36[8 * v37] = v30;
    *&v36[8 * v37 + 8] = 0;
    v7[9] = v36;
    goto LABEL_65;
  }

  if (*(v33 + 504) <= v36 && v35 <= *(v33 + 438))
  {
    goto LABEL_62;
  }

LABEL_61:
  v36 = sub_181929F38(v33, v36, v35, 528201247);
  if (v36)
  {
    goto LABEL_62;
  }

LABEL_63:
  if (v30)
  {
    sub_181929C84(v33, v30);
  }

LABEL_65:
  *(a1 + 58) = *a4 + *(a4 + 8) - *(a1 + 56);
  v38 = v7[9];
  if (v38)
  {
    v39 = v7[12];
    if (v39)
    {
      v40 = (*(v8 + 32) + 24);
      v41 = 0xFFFFFFFF00000000;
      do
      {
        v42 = *v40;
        v40 += 4;
        v41 += 0x100000000;
      }

      while (v42 != v39);
      v43 = v41 >> 32;
    }

    else
    {
      v43 = -32768;
    }

    v44 = *a1;
    v45 = *(*a1 + 528);
    if (v45)
    {
      if (!*(v44 + 197) && !*(a1 + 302))
      {
        v46 = v45(*(v44 + 536), 29, *v7, *v38, *(*(v44 + 32) + 32 * v43), a1[46]);
        if (v46 == 1)
        {
          v47 = 23;
          sub_181910730(a1, "not authorized");
        }

        else
        {
          if ((v46 & 0xFFFFFFFD) == 0)
          {
            return;
          }

          v47 = 1;
          sub_181910730(a1, "authorizer malfunction");
        }

        *(a1 + 6) = v47;
      }
    }
  }
}

uint64_t *sub_18195638C(uint64_t *result, uint64_t *a2, int a3)
{
  if (a2)
  {
    v3 = a2;
    v4 = result;
    if (!a3 || (result = sub_18195B158(result, sub_18198D9C8, a2), (v3 = result) != 0))
    {
      if (!*(v4 + 13))
      {
        v3[1] = v4[50];
        v4[50] = v3;
      }
    }
  }

  return result;
}

uint64_t sub_1819563F4(uint64_t *a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v10 = *a1;
  if (*a1)
  {
    v12 = sub_181929E8C(*a1, 0x30uLL, 0x1070040AB0F4D3FLL);
    if (!v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = sub_181902484(48, 0x1070040AB0F4D3FLL);
  if (v12)
  {
LABEL_3:
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *v12 = 0u;
  }

LABEL_4:
  if (*(v10 + 103))
  {
    if (a3)
    {
      sub_18194E5B8(v10, a3);
    }

    if (a4)
    {
      sub_1818BB408(v10, a4, 1, v11);
    }
  }

  else
  {
    *(v12 + 8) = a3;
    *(v12 + 16) = a4;
    if (a2 && (v13 = *a2) != 0)
    {
      v14 = *(a2 + 8);
      v15 = sub_181929E8C(*a1, v14 + 1, 1565185748);
      v16 = v15;
      if (v15)
      {
        memcpy(v15, v13, v14);
        v16[v14] = 0;
        if (byte_181A204C8[*v16] < 0)
        {
          v17 = 0;
          if (*v16 == 91)
          {
            v18 = 93;
          }

          else
          {
            v18 = *v16;
          }

          for (i = 1; ; ++i)
          {
            v20 = i;
            v21 = v16[i];
            if (v21 == v18)
            {
              ++i;
              LOBYTE(v21) = v18;
              if (v16[v20 + 1] != v18)
              {
                break;
              }
            }

            v16[v17++] = v21;
          }

          v16[v17] = 0;
        }
      }
    }

    else
    {
      v16 = 0;
    }

    *v12 = v16;
    *(v12 + 40) = a5;
  }

  return v12;
}

void *sub_181956580(uint64_t *a1, _DWORD *a2, const char **a3, uint64_t a4)
{
  v4 = a2;
  if (!a3)
  {
    return v4;
  }

  v7 = *a1;
  if (a2 && (v8 = *a3) != 0)
  {
    v9 = *a2;
    if (*a2 >= 1)
    {
      for (i = 0; i < v9; ++i)
      {
        for (j = 0; v8[j] != *(v4[6 * i + 2] + j); ++j)
        {
          if (byte_181A20298[v8[j]] != byte_181A20298[*(v4[6 * i + 2] + j)])
          {
            goto LABEL_6;
          }

LABEL_9:
          ;
        }

        if (v8[j])
        {
          goto LABEL_9;
        }

        sub_181910730(a1, "duplicate WITH table name: %s", v8);
        v9 = *v4;
LABEL_6:
        ;
      }
    }
  }

  else
  {
    if (!a2)
    {
      if (v7)
      {
        v13 = sub_181929E8C(*a1, 0x40uLL, 0x1070040AB0F4D3FLL);
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v13 = sub_181902484(64, 0x1070040AB0F4D3FLL);
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      v13[2] = 0u;
      v13[3] = 0u;
      *v13 = 0u;
      v13[1] = 0u;
      goto LABEL_22;
    }

    v9 = *a2;
  }

  v12 = 48 * (v9 + 1) + 16;
  if (*(v7 + 512) <= v4)
  {
    goto LABEL_21;
  }

  if (*(v7 + 496) > v4)
  {
    if (*(v7 + 504) <= v4)
    {
      v13 = v4;
      if (v12 <= *(v7 + 438))
      {
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  v13 = v4;
  if (v12 >= 0x81)
  {
LABEL_21:
    v13 = sub_181929F38(v7, v4, v12, 0x1070040AB0F4D3FLL);
  }

LABEL_22:
  if (*(v7 + 103))
  {
    v14 = a3[1];
    if (v14)
    {
      sub_18194E5B8(v7, v14);
    }

    v15 = a3[2];
    if (v15)
    {
      sub_1818BB408(v7, v15, 1, a4);
    }

    if (*a3)
    {
      sub_181929C84(v7, *a3);
    }
  }

  else
  {
    v16 = &v13[3 * (*v13)++];
    v17 = *a3;
    v18 = *(a3 + 2);
    v16[2] = *(a3 + 1);
    v16[3] = v18;
    v16[1] = v17;
    v4 = v13;
  }

  sub_181929C84(v7, a3);
  return v4;
}

void sub_1819567A4(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  if (!v3)
  {
    return;
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  v4 = *a1;
  while (2)
  {
    for (i = 0; *(*a3 + i) == *(v3 + i); ++i)
    {
      if (!*(*a3 + i))
      {
        if (a2[2] || *(a3 + 24) && a2[3] || !*(a3 + 35))
        {
          sub_181910730(a1, "cannot override %s of window: %s");
        }

        else
        {
          v7 = a3;
          v8 = sub_1818C83A0(*a1, *(a3 + 16), 0);
          v9 = a2;
          a2[2] = v8;
          v10 = *(v7 + 24);
          if (v10)
          {
            v11 = sub_1818C83A0(v4, v10, 0);
            v9 = a2;
            a2[3] = v11;
          }

          v12 = v9[1];
          if (v12)
          {
            sub_181929C84(v4, v12);
            v9 = a2;
          }

          v9[1] = 0;
        }

        return;
      }

LABEL_6:
      ;
    }

    if (byte_181A20298[*(*a3 + i)] == byte_181A20298[*(v3 + i)])
    {
      goto LABEL_6;
    }

    a3 = *(a3 + 64);
    if (a3)
    {
      continue;
    }

    break;
  }

LABEL_11:
  sub_181910730(a1, "no such window: %s");
}

void *sub_1819568E4(uint64_t *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (a2)
  {
    a2[2] = a3;
    a2[3] = a4;
    if (a5)
    {
      v6 = *a5;
      if (*a5)
      {
        v7 = *(a5 + 8);
        v8 = sub_181929E8C(*a1, v7 + 1, 1565185748);
        v9 = v8;
        if (v8)
        {
          memcpy(v8, v6, v7);
          *(v9 + v7) = 0;
        }

        a2[1] = v9;
      }

      else
      {
        a2[1] = 0;
      }
    }
  }

  else
  {
    if (a3)
    {
      v10 = a1;
      v11 = a4;
      sub_18194E5B8(*a1, a3);
      a4 = v11;
      a1 = v10;
    }

    if (a4)
    {
      sub_18194E5B8(*a1, a4);
    }
  }

  return a2;
}

uint64_t sub_18195699C(uint64_t *a1, int a2, int a3, unsigned __int8 *a4, int a5, unsigned __int8 *a6, int a7)
{
  v10 = a2 == 0;
  if (a3 == 86 && a5 == 89 || a3 == 87 && (a5 == 89 || a5 == 86))
  {
    sub_181910730(a1, "unsupported frame specification");
    goto LABEL_4;
  }

  v12 = *a1;
  if (*a1)
  {
    if (*(v12 + 436) <= 0x8Fu)
    {
      v13 = a2;
      v14 = a3;
      v15 = a5;
      v16 = a7;
      if (*(v12 + 432))
      {
        if (*(v12 + 103))
        {
          goto LABEL_4;
        }
      }

      else
      {
        ++*(v12 + 452);
      }

      goto LABEL_26;
    }

    result = *(v12 + 472);
    if (result)
    {
      v17 = (v12 + 472);
    }

    else
    {
      result = *(v12 + 464);
      if (!result)
      {
        v13 = a2;
        v14 = a3;
        v15 = a5;
        v16 = a7;
        ++*(v12 + 456);
LABEL_26:
        result = sub_18192A080(v12, 144, 0x10B004036C0935CLL);
        if (result)
        {
          goto LABEL_27;
        }

        goto LABEL_4;
      }

      v17 = (v12 + 464);
    }

    *v17 = *result;
    ++*(v12 + 448);
LABEL_28:
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v18 = 90;
    }

    *(result + 32) = v18;
    *(result + 33) = a3;
    *(result + 34) = a5;
    if (!a7)
    {
      a7 = (*(*a1 + 96) << 30 >> 31) & 0x43;
    }

    *(result + 36) = a7;
    *(result + 35) = v10;
    v29 = 0x100000000;
    v30 = 0;
    v25 = 0;
    v26 = sub_1818C7E14;
    v27 = sub_18195A49C;
    v28 = 0;
    if (a6)
    {
      v19 = result;
      sub_181959BA0(&v25, a6);
      if (!WORD2(v29))
      {
        v20 = *(a1 + 302);
        if (v20 >= 2)
        {
          v29 = 0;
          v30 = 0;
          v25 = a1;
          v26 = sub_181961E4C;
          v27 = sub_181961EB8;
          v28 = 0;
          *(a1 + 302) = 3;
          sub_181959BA0(&v25, a6);
          *(a1 + 302) = v20;
        }

        sub_1819439E0(*a1, a6);
        v21 = sub_181929E8C(*a1, 0x50uLL, 0x1032040B79D87BDLL);
        a6 = v21;
        if (v21)
        {
          *(v21 + 2) = 0u;
          *(v21 + 3) = 0u;
          *(v21 + 4) = 0u;
          *v21 = 0u;
          *(v21 + 1) = 0u;
          *v21 = 122;
          *(v21 + 26) = -1;
          *(v21 + 10) = 1;
        }
      }

      result = v19;
    }

    *(result + 48) = a6;
    v29 = 0x100000000;
    v30 = 0;
    v25 = 0;
    v26 = sub_1818C7E14;
    v27 = sub_18195A49C;
    v28 = 0;
    if (a4)
    {
      v22 = result;
      sub_181959BA0(&v25, a4);
      if (!WORD2(v29))
      {
        v23 = *(a1 + 302);
        if (v23 >= 2)
        {
          v29 = 0;
          v30 = 0;
          v25 = a1;
          v26 = sub_181961E4C;
          v27 = sub_181961EB8;
          v28 = 0;
          *(a1 + 302) = 3;
          sub_181959BA0(&v25, a4);
          *(a1 + 302) = v23;
        }

        sub_1819439E0(*a1, a4);
        v24 = sub_181929E8C(*a1, 0x50uLL, 0x1032040B79D87BDLL);
        a4 = v24;
        if (v24)
        {
          *(v24 + 2) = 0u;
          *(v24 + 3) = 0u;
          *(v24 + 4) = 0u;
          *v24 = 0u;
          *(v24 + 1) = 0u;
          *v24 = 122;
          *(v24 + 26) = -1;
          *(v24 + 10) = 1;
        }
      }

      result = v22;
    }

    *(result + 40) = a4;
    return result;
  }

  v13 = a2;
  v14 = a3;
  v15 = a5;
  v16 = a7;
  result = sub_181902484(144, 0x10B004036C0935CLL);
  if (result)
  {
LABEL_27:
    a7 = v16;
    LOBYTE(a5) = v15;
    LOBYTE(a3) = v14;
    a2 = v13;
    goto LABEL_28;
  }

LABEL_4:
  if (a6)
  {
    sub_1819439E0(*a1, a6);
  }

  if (a4)
  {
    sub_1819439E0(*a1, a4);
  }

  return 0;
}

void sub_181956D74(uint64_t *a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    return;
  }

  v4 = *(a2 + 1);
  v5 = *v4 == 48 && (v4[1] & 0xDF) == 88;
  v12 = 0;
  *a2 = -100;
  v6 = v4;
  do
  {
    v8 = *v6;
    if (v8 == 95)
    {
      v9 = *(v6 - 1);
      if (v5)
      {
        if ((byte_181A204C8[v9] & 8) != 0 && (byte_181A204C8[v6[1]] & 8) != 0)
        {
          goto LABEL_7;
        }
      }

      else if ((v9 - 58) >= 0xFFFFFFFFFFFFFFF6 && v6[1] - 58 >= 0xFFFFFFFFFFFFFFF6)
      {
        goto LABEL_7;
      }

      sub_181910730(a1, "unrecognized token: %s", *(a2 + 1));
LABEL_7:
      v7 = *v6;
      goto LABEL_8;
    }

    *v4++ = v8;
    v7 = *v6;
    if ((v7 - 46) <= 0x37 && ((1 << (v7 - 46)) & 0x80000000800001) != 0)
    {
      *a2 = -102;
      goto LABEL_7;
    }

LABEL_8:
    ++v6;
  }

  while (v7);
  if (v5)
  {
    *a2 = -100;
LABEL_25:
    if (sub_181949B34(*(a2 + 1), &v12))
    {
      v11 = v12;
      *(a2 + 1) |= 0x800u;
      *(a2 + 2) = v11;
    }
  }

  else if (*a2 == 156)
  {
    goto LABEL_25;
  }
}