void sub_1819918E0(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = *(v3 + 113);
      switch(v4)
      {
        case 186:
          goto LABEL_6;
        case 118:
          v6 = *(v3 + 56);
          goto LABEL_14;
        case 109:
LABEL_6:
          v5 = "unopened";
          break;
        default:
          v5 = "invalid";
          break;
      }
    }

    else
    {
      v5 = "NULL";
    }

    sqlite3_log(21, "API call with %s database connection pointer", v5);
    sub_1819012D0(192786);
    v6 = 0;
    v2 = *a1;
LABEL_14:
    if ((*(v2 + 20) & 0x9000) != 0)
    {

      sub_18193D288(v2, v6);
    }

    else
    {
      *v2 = v6;
      *(v2 + 20) = 4;
    }

    return;
  }

  sqlite3_log(21, "API call with %s database connection pointer", "NULL");

  sub_1819012D0(192786);
}

void sub_181991A04(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = *(v3 + 113);
      switch(v4)
      {
        case 186:
          goto LABEL_6;
        case 118:
          v6 = *(v3 + 120);
          goto LABEL_14;
        case 109:
LABEL_6:
          v5 = "unopened";
          break;
        default:
          v5 = "invalid";
          break;
      }
    }

    else
    {
      v5 = "NULL";
    }

    sqlite3_log(21, "API call with %s database connection pointer", v5);
    sub_1819012D0(192814);
    v6 = 0;
    v2 = *a1;
LABEL_14:
    if ((*(v2 + 20) & 0x9000) != 0)
    {

      sub_18193D288(v2, v6);
    }

    else
    {
      *v2 = v6;
      *(v2 + 20) = 4;
    }

    return;
  }

  sqlite3_log(21, "API call with %s database connection pointer", "NULL");

  sub_1819012D0(192814);
}

void sub_181991B28(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = *(v3 + 113);
      switch(v4)
      {
        case 186:
          goto LABEL_6;
        case 118:
          v6 = *(v3 + 128);
          goto LABEL_14;
        case 109:
LABEL_6:
          v5 = "unopened";
          break;
        default:
          v5 = "invalid";
          break;
      }
    }

    else
    {
      v5 = "NULL";
    }

    sqlite3_log(21, "API call with %s database connection pointer", v5);
    sub_1819012D0(192830);
    v6 = 0;
    v2 = *a1;
LABEL_14:
    if ((*(v2 + 20) & 0x9000) != 0)
    {

      sub_18193D288(v2, v6);
    }

    else
    {
      *v2 = v6;
      *(v2 + 20) = 4;
    }

    return;
  }

  sqlite3_log(21, "API call with %s database connection pointer", "NULL");

  sub_1819012D0(192830);
}

void sub_181991C4C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = *(*a1 + 24);
    v7 = *a3;
    if (!*a3)
    {
      return;
    }
  }

  else
  {
    v6 = 0;
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
LABEL_21:
    v12 = 0;
    v13 = a3[1];
    if (!v13)
    {
      return;
    }

    goto LABEL_26;
  }

  v11 = *(v10 + 20);
  if ((v11 & 2) != 0 && *(v10 + 22) == 1)
  {
    v12 = *(v10 + 16);
    v13 = a3[1];
    if (!v13)
    {
      return;
    }

    goto LABEL_26;
  }

  if ((v11 & 0x10) == 0)
  {
    if ((v11 & 1) == 0)
    {
      v12 = sub_18193CB44(v10, 1, a3, a4);
      v13 = a3[1];
      if (!v13)
      {
        return;
      }

      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v12 = *(v10 + 16);
  if ((*(v10 + 20) & 0x400) != 0)
  {
    v12 += *v10;
  }

  v13 = a3[1];
  if (!v13)
  {
    return;
  }

LABEL_26:
  v14 = *(v13 + 20);
  if ((~v14 & 0x202) != 0 || *(v13 + 22) != 1)
  {
    if (v14)
    {
      return;
    }

    v15 = sub_18193CB70(v13, 1, a3, a4);
    if (!v15)
    {
      return;
    }
  }

  else
  {
    v15 = *(v13 + 8);
    if (!v15)
    {
      return;
    }
  }

  if (!*v15)
  {
    if (!a1)
    {
      return;
    }

    v19 = a1;
    v20 = v9;
    v21 = v12;
    v22 = -1;
    goto LABEL_39;
  }

  v16 = a3[1];
  if (!v16)
  {
    sub_1819012D0(93690);
LABEL_46:
    v18 = 0;
    goto LABEL_47;
  }

  v17 = *(v16 + 20);
  if ((v17 & 2) != 0 && *(v16 + 22) == 1)
  {
    v18 = *(v16 + 16);
    goto LABEL_47;
  }

  if ((v17 & 0x10) == 0)
  {
    if ((v17 & 1) == 0)
    {
      v18 = sub_18193CB44(v16, 1, a3, a4);
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v18 = *(v16 + 16);
  if ((*(v16 + 20) & 0x400) != 0)
  {
    v18 += *v16;
  }

LABEL_47:
  v23 = a3[2];
  if (!v23)
  {
    return;
  }

  v24 = *(v23 + 20);
  if ((~v24 & 0x202) != 0 || *(v23 + 22) != 1)
  {
    if (v24)
    {
      return;
    }

    v25 = sub_18193CB70(v23, 1, a3, a4);
  }

  else
  {
    v25 = *(v23 + 8);
  }

  if (!v25)
  {
    return;
  }

  v26 = a3[2];
  if (!v26)
  {
    sub_1819012D0(93690);
LABEL_64:
    v49 = 0;
    goto LABEL_65;
  }

  v27 = *(v26 + 20);
  if ((v27 & 2) != 0 && *(v26 + 22) == 1)
  {
    v49 = *(v26 + 16);
    goto LABEL_65;
  }

  if ((v27 & 0x10) == 0)
  {
    if ((v27 & 1) == 0)
    {
      v49 = sub_18193CB44(v26, 1, a3, a4);
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v49 = *(v26 + 16);
  if ((*(v26 + 20) & 0x400) != 0)
  {
    v49 += *v26;
  }

LABEL_65:
  if (a1)
  {
    v28 = *a1;
    if (*(*(*a1 + 24) + 136) <= v12)
    {
      *(a1 + 9) = 18;

      sub_1818900D0(v28, "string or blob too big", -1, 1, 0);
      return;
    }
  }

  else if (MEMORY[0x88] <= v12)
  {
    return;
  }

  v46 = v12 + 1;
  v29 = sub_181902484(v46, 3621441365);
  if (v29)
  {
    v30 = v29;
    v50 = v12 - v18;
    if (v12 - v18 >= 0)
    {
      v44 = v25;
      v45 = v18;
      v47 = 0;
      v31 = 0;
      v32 = 0;
      __n = v18;
      v42 = v49 - v18;
      v43 = v18 - 1;
      while (1)
      {
        v35 = (v9 + v32);
        v36 = *v35;
        if (v36 == *v15 && !memcmp(v35, v15, __n))
        {
          if (v49 <= v18)
          {
            v39 = v30;
            v38 = v47;
          }

          else
          {
            v37 = v46 + v42;
            if (v46 + v42 - 1 > *(v6 + 136))
            {
              if (a1)
              {
                *(a1 + 9) = 18;
                sub_1818900D0(*a1, "string or blob too big", -1, 1, 0);
              }

              goto LABEL_98;
            }

            v38 = v47 + 1;
            v46 += v42;
            if (((v47 + 1) & v47) != 0)
            {
              v39 = v30;
            }

            else
            {
              v39 = sub_18190287C(v30, v37 + ~v12 + v37, 2316703634);
              if (!v39)
              {
                sqlite3_result_error_nomem(a1);
                goto LABEL_98;
              }
            }
          }

          memcpy((v39 + v31), v44, v49);
          v31 += v49;
          v32 += v43;
          v30 = v39;
          v47 = v38;
          v18 = v45;
        }

        else
        {
          v30[v31++] = v36;
        }

        v33 = v32 + 1;
        if (v32++ >= v50)
        {
          goto LABEL_93;
        }
      }
    }

    v33 = 0;
    v31 = 0;
LABEL_93:
    v40 = (v9 + v33);
    v41 = v12 - v33;
    memcpy(&v30[v31], v40, v41);
    v21 = v31 + v41;
    v30[v31 + v41] = 0;
    if (a1)
    {
      v22 = sqlite3_free;
      v19 = a1;
      v20 = v30;
LABEL_39:

      sub_18190B23C(v19, v20, v21, 1, v22);
      return;
    }

LABEL_98:

    sqlite3_free(v30);
  }

  else
  {

    sqlite3_result_error_nomem(a1);
  }
}

void sub_1819921C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    sub_1819012D0(92237);
    goto LABEL_5;
  }

  v5 = *(v4 + 20);
  if ((v5 & 0x24) != 0)
  {
    v6 = *v4;
    goto LABEL_6;
  }

  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x12) != 0 && *(v4 + 8))
    {
      v6 = sub_18193CFCC(v4);
      goto LABEL_6;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v9 = *v4;
  if (*v4 >= -9.22337204e18)
  {
    if (v9 <= 9.22337204e18)
    {
      v6 = v9;
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

LABEL_6:
  if (a1)
  {
    v7 = v6 & ~(v6 >> 63);
    v8 = *a1;
    if (v7 <= *(*(*a1 + 24) + 136))
    {
      if ((v8[5] & 0x9000) != 0 || v8[8])
      {
        sub_18193CA00(*a1);
      }

      *(v8 + 10) = 1040;
      v8[4] = 0;
      *v8 = v7 & ~(v7 >> 31);
      *(v8 + 22) = 1;
      *(v8 + 1) = 0;
    }

    else
    {
      *(a1 + 36) = 18;
      sub_1818900D0(v8, "string or blob too big", -1, 1, 0);
      *(a1 + 36) = 18;
      if (*(*a1 + 20))
      {

        sub_18190B23C(a1, "string or blob too big", -1, 1, 0);
      }
    }
  }

  else
  {

    sub_1819012D0(100267);
  }
}

void sub_18199236C(sqlite3_context *a1, int a2, sqlite3_value **a3, uint64_t a4)
{
  if (*a3)
  {
    v7 = (0x1000000010001uLL >> *(*a3 + 10)) & 1;
    v8 = a3[1];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_1819012D0(92237);
    goto LABEL_12;
  }

  sub_1819012D0(99877);
  LODWORD(v7) = 0;
  v8 = a3[1];
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = *(v8 + 10);
  if ((v9 & 0x24) == 0)
  {
    if ((v9 & 8) != 0)
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      if (*v8 <= 9.22337204e18)
      {
        v21 = *v8;
      }

      if (*v8 >= -9.22337204e18)
      {
        v10 = *&v21;
      }

      else
      {
        v10 = -0.0;
      }

      v11 = *a3;
      if (!v7)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

    if ((v9 & 0x12) != 0 && *(v8 + 1))
    {
      v10 = COERCE_DOUBLE(sub_18193CFCC(v8));
      v11 = *a3;
      if (!v7)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

LABEL_12:
    v10 = 0.0;
    v11 = *a3;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (v11)
    {
      v14 = *(v11 + 10);
      if ((v14 & 2) != 0 && *(v11 + 22) == 1)
      {
        v15 = *(v11 + 4);
        goto LABEL_31;
      }

      if ((v14 & 0x10) != 0)
      {
        v15 = *(v11 + 4);
        if ((*(v11 + 10) & 0x400) != 0)
        {
          v15 += *v11;
        }

LABEL_31:
        v13 = sqlite3_value_blob(*a3);
        if (!v13)
        {
          return;
        }

        goto LABEL_32;
      }

      if ((v14 & 1) == 0)
      {
        v15 = sub_18193CB44(v11, 1, a3, a4);
        goto LABEL_31;
      }
    }

    else
    {
      sub_1819012D0(93690);
    }

    v15 = 0;
    goto LABEL_31;
  }

  v10 = *v8;
  v11 = *a3;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (!v11)
  {
    return;
  }

  v12 = *(v11 + 10);
  if ((~v12 & 0x202) != 0 || *(v11 + 22) != 1)
  {
    if (v12)
    {
      return;
    }

    v13 = sub_18193CB70(v11, 1, a3, a4);
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v13 = *(v11 + 1);
    if (!v13)
    {
      return;
    }
  }

  if ((*&v10 & 0x8000000000000000) != 0 && (v35 = *v13, *v13))
  {
    v15 = 0;
    v36 = v13;
    do
    {
      if (v35 < 0xC0)
      {
        v37 = *++v36;
        v35 = v37;
      }

      else
      {
        do
        {
          v38 = *++v36;
          v35 = v38;
        }

        while ((v38 & 0xC0) == 0x80);
      }

      ++v15;
    }

    while (v35);
  }

  else
  {
    v15 = 0;
  }

LABEL_32:
  if (a2 != 3)
  {
    v18 = *(*(*a1 + 24) + 136);
    goto LABEL_39;
  }

  v16 = a3[2];
  if (v16)
  {
    v17 = *(v16 + 10);
    if ((v17 & 0x24) != 0)
    {
      v18 = *v16;
      goto LABEL_36;
    }

    if ((v17 & 8) != 0)
    {
      v39 = *v16;
      if (*v16 < -9.22337204e18)
      {
        v18 = 0x8000000000000000;
        goto LABEL_39;
      }

      if (v39 > 9.22337204e18)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_39;
      }

      v18 = v39;
      goto LABEL_36;
    }

    if ((v17 & 0x12) != 0 && *(v16 + 1))
    {
      v18 = sub_18193CFCC(v16);
LABEL_36:
      if (v18)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    sub_1819012D0(92237);
  }

  v22 = a3[2];
  if (v22)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(v22 + 10)))
    {
      return;
    }

    v18 = 0;
  }

  else
  {
    sub_1819012D0(99877);
    v18 = 0;
  }

LABEL_39:
  if (v10 == 0.0)
  {
    v20 = a3[1];
    if (v20)
    {
      if ((0xAAAAAAAAAAAAAAAALL >> *(v20 + 10)))
      {
        return;
      }
    }

    else
    {
      sub_1819012D0(99877);
    }

    v19 = 0;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_69;
    }
  }

  else if ((*&v10 & 0x8000000000000000) != 0)
  {
    if (*&v10 + v15 < 0)
    {
      v19 = 0;
      if (v18 < 0)
      {
        v18 = 0;
        goto LABEL_69;
      }

      v18 += *&v10 + v15;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v19 = *&v10 + v15;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_69;
      }
    }
  }

  else
  {
    v19 = *&v10 - 1;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_69;
    }
  }

  if (v18 >= -v19)
  {
    v18 = -v18;
  }

  else
  {
    v18 = v19;
  }

  v19 -= v18;
LABEL_69:
  if (v7)
  {
    v23 = v15 - v19;
    if (v18 < v23)
    {
      v23 = v18;
    }

    if (v15 > v19)
    {
      v24 = v23;
    }

    else
    {
      v19 = 0;
      v24 = 0;
    }

    if (a1)
    {
      if (v24 >> 31)
      {
        *(a1 + 9) = 18;
        v25 = *a1;

        sub_1818900D0(v25, "string or blob too big", -1, 1, 0);
      }

      else
      {

        sub_18190B23C(a1, &v13[v19], v24, 0, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    else
    {

      sub_1819012D0(100045);
    }
  }

  else
  {
    v26 = *v13;
    if (*v13 && v19)
    {
      do
      {
        if (v26 < 0xC0)
        {
          v29 = *++v13;
          v26 = v29;
        }

        else
        {
          do
          {
            v31 = *++v13;
            v26 = v31;
          }

          while ((v31 & 0xC0) == 0x80);
        }

        --v19;
        if (v26)
        {
          v30 = v19 == 0;
        }

        else
        {
          v30 = 1;
        }
      }

      while (!v30);
    }

    if (v26)
    {
      v27 = v18 == 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = v13;
    if (!v27)
    {
      v28 = v13;
      do
      {
        if (v26 < 0xC0)
        {
          v32 = *++v28;
          v26 = v32;
        }

        else
        {
          do
          {
            v34 = *++v28;
            v26 = v34;
          }

          while ((v34 & 0xC0) == 0x80);
        }

        --v18;
        if (v26)
        {
          v33 = v18 == 0;
        }

        else
        {
          v33 = 1;
        }
      }

      while (!v33);
    }

    sqlite3_result_text64(a1, v13, v28 - v13, 0xFFFFFFFFFFFFFFFFLL, 1u);
  }
}

void sub_18199287C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (!a1 || (v5 = *(a1 + 8)) == 0 || !*(v5 + 32))
  {
    sub_1819012D0(100772);
    v7 = 0;
    v8 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v6 = *(a1 + 16);
  if (*(v6 + 20) < 0)
  {
    v7 = *(v6 + 8);
    v8 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }

LABEL_6:
    sub_1819012D0(99877);
    v9 = 0;
    if (!v7)
    {
      return;
    }

LABEL_12:
    if (v9 == 5)
    {
      return;
    }

    ++*(v7 + 24);
    if (*(v7 + 32))
    {
      if (v9 == 1)
      {
        v11 = *a3;
        if (*a3)
        {
LABEL_16:
          v12 = *(v11 + 20);
          if ((v12 & 0x24) != 0)
          {
            v13 = *v11;
            goto LABEL_18;
          }

          if ((v12 & 8) != 0)
          {
            v23 = *v11;
            if (*v11 < -9.22337204e18)
            {
              v13 = 0x8000000000000000;
              goto LABEL_70;
            }

            if (v23 > 9.22337204e18)
            {
              v13 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_70;
            }

            v13 = v23;
LABEL_18:
            if ((v13 - 0x10000000000000) > 0xFFE0000000000000)
            {
LABEL_77:
              v20 = v13;
              goto LABEL_82;
            }

LABEL_70:
            if (v13 <= 0)
            {
              v28 = -(-v13 & 0x3FFF);
            }

            else
            {
              v28 = v13 & 0x3FFF;
            }

            v33 = *v7 + (v13 - v28);
            if (fabs(*v7) <= fabs((v13 - v28)))
            {
              v29 = (v13 - v28) - v33;
              v30 = *v7;
            }

            else
            {
              v29 = *v7 - v33;
              v30 = (v13 - v28);
            }

            *(v7 + 8) = v29 + v30 + *(v7 + 8);
            *v7 = v33;
            v13 = v28;
            goto LABEL_77;
          }

          if ((v12 & 0x12) != 0 && *(v11 + 8))
          {
            v13 = sub_18193CFCC(v11);
            goto LABEL_18;
          }

LABEL_81:
          v20 = 0;
          goto LABEL_82;
        }

LABEL_80:
        sub_1819012D0(92237);
        goto LABEL_81;
      }

      *(v7 + 33) = 0;
      v18 = *a3;
      if (*a3)
      {
        v19 = *(v18 + 20);
        if ((v19 & 8) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v14 = *(v7 + 16);
    if (v9 != 1)
    {
      if ((v14 - 0x10000000000000) > 0xFFE0000000000000)
      {
        *v7 = v14;
        v22 = 0.0;
      }

      else
      {
        if (v14 <= 0)
        {
          v21 = -(-v14 & 0x3FFF);
        }

        else
        {
          v21 = *(v7 + 16) & 0x3FFFLL;
        }

        *v7 = (v14 - v21);
        v22 = v21;
      }

      *(v7 + 8) = v22;
      *(v7 + 32) = 1;
      v18 = *a3;
      if (*a3)
      {
        v19 = *(v18 + 20);
        if ((v19 & 8) == 0)
        {
LABEL_30:
          if ((v19 & 0x24) != 0)
          {
            v20 = *v18;
          }

          else if ((v19 & 0x12) != 0)
          {
            v20 = sub_18193CF90(v18);
          }

          else
          {
            v20 = 0.0;
          }

LABEL_82:
          v35 = v20;
          v34 = *v7 + v20;
          if (fabs(*v7) <= fabs(v20))
          {
            v31 = v20 - v34;
            v32 = *v7;
          }

          else
          {
            v31 = *v7 - v34;
            v32 = v35;
          }

          *(v7 + 8) = v31 + v32 + *(v7 + 8);
          *v7 = v34;
          return;
        }

LABEL_42:
        v20 = *v18;
        goto LABEL_82;
      }

LABEL_43:
      sub_1819012D0(92272);
      v20 = 0.0;
      goto LABEL_82;
    }

    v15 = *a3;
    if (*a3)
    {
      v16 = *(v15 + 20);
      if ((v16 & 0x24) != 0)
      {
        v17 = *v15;
        goto LABEL_24;
      }

      if ((v16 & 8) != 0)
      {
        v24 = *v15;
        if (*v15 < -9.22337204e18)
        {
          v17 = 0x8000000000000000;
          goto LABEL_61;
        }

        if (v24 > 9.22337204e18)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
          if (v14 >= 1)
          {
LABEL_26:
            if ((v14 ^ 0x7FFFFFFFFFFFFFFFuLL) >= v17)
            {
              goto LABEL_89;
            }

LABEL_63:
            *(v7 + 33) = 1;
            v25 = *(v7 + 16);
            if ((v25 - 0x10000000000000) > 0xFFE0000000000000)
            {
              *v7 = v25;
              v27 = 0.0;
            }

            else
            {
              if (v25 <= 0)
              {
                v26 = -(-v25 & 0x3FFF);
              }

              else
              {
                v26 = *(v7 + 16) & 0x3FFFLL;
              }

              *v7 = (v25 - v26);
              v27 = v26;
            }

            *(v7 + 8) = v27;
            *(v7 + 32) = 1;
            v11 = *a3;
            if (*a3)
            {
              goto LABEL_16;
            }

            goto LABEL_80;
          }

LABEL_89:
          *(v7 + 16) = v17 + v14;
          return;
        }

        v17 = v24;
LABEL_24:
        if ((v17 & 0x8000000000000000) == 0)
        {
          if (v14 >= 1)
          {
            goto LABEL_26;
          }

          goto LABEL_89;
        }

LABEL_61:
        if ((v14 & 0x8000000000000000) == 0 || (0x8000000000000001 - v14) <= (v17 + 1))
        {
          goto LABEL_89;
        }

        goto LABEL_63;
      }

      if ((v16 & 0x12) != 0 && *(v15 + 8))
      {
        v17 = sub_18193CFCC(v15);
        goto LABEL_24;
      }
    }

    else
    {
      sub_1819012D0(92237);
    }

    v17 = 0;
    goto LABEL_89;
  }

  v7 = sub_18190C2E0(a1, 40, a3, a4);
  v8 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

LABEL_9:
  v10 = *(v8 + 20);
  if ((0x4000000040004uLL >> v10))
  {
    sub_18190FC94(v8, 0);
    v10 = *(v8 + 20);
  }

  v9 = byte_181A203AA[v10 & 0x3F];
  if (v7)
  {
    goto LABEL_12;
  }
}

void sub_181992D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v4 = *(a1 + 8)) != 0 && *(v4 + 32))
  {
    v5 = *(a1 + 16);
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

    if (*(v7 + 24) >= 1)
    {
      if (*(v7 + 32))
      {
        if (*(v7 + 33))
        {
          v6[9] = 1;
          v8 = *v6;

          sub_1818900D0(v8, "integer overflow", -1, 1, 0xFFFFFFFFFFFFFFFFLL);
        }

        else
        {
          v11 = *v7;
          if ((*(v7 + 8) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v11 = *(v7 + 8) + v11;
          }

          v12 = *v6;
          if ((*(v12 + 20) & 0x9000) != 0)
          {
            sub_18193CA54(v12);
          }

          else
          {
            *(v12 + 20) = 1;
          }

          *v12 = v11;
          *(v12 + 20) = 8;
        }
      }

      else
      {
        v9 = *(v7 + 16);
        v10 = *v6;
        if ((*(*v6 + 20) & 0x9000) != 0)
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

  else
  {

    sub_1819012D0(100772);
  }
}

double sub_181992EAC(uint64_t a1, double result, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a1 || (v6 = *(a1 + 8)) == 0 || !*(v6 + 32))
  {
    sub_1819012D0(100772);
    v8 = 0;
    v9 = *a4;
    if (*a4)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v7 = *(a1 + 16);
  if (*(v7 + 20) < 0)
  {
    v8 = *(v7 + 8);
    v9 = *a4;
    if (*a4)
    {
      goto LABEL_9;
    }

LABEL_6:
    sub_1819012D0(99877);
    v10 = 0;
    if (!v8)
    {
      return result;
    }

LABEL_12:
    if (v10 == 5)
    {
      return result;
    }

    --*(v8 + 24);
    v12 = *a4;
    if (*(v8 + 32))
    {
      if (v10 == 1)
      {
        if (v12)
        {
          v13 = *(v12 + 20);
          if ((v13 & 0x24) != 0)
          {
            v14 = *v12;
            goto LABEL_18;
          }

          if ((v13 & 8) != 0)
          {
            v22 = *v12;
            if (*v12 < -9.22337204e18)
            {
              goto LABEL_60;
            }

            if (v22 > 9.22337204e18)
            {
              v15 = 0x8000000000000001;
              goto LABEL_72;
            }

            *&v14 = v22;
LABEL_18:
            if (v14 != -0.0)
            {
              v15 = -*&v14;
              if ((*&v14 - 0x10000000000000) > 0xFFE0000000000000)
              {
                goto LABEL_79;
              }

LABEL_72:
              if (v15 <= 0)
              {
                v27 = -(-v15 & 0x3FFF);
              }

              else
              {
                v27 = v15 & 0x3FFF;
              }

              v37 = (v15 - v27);
              v34 = *v8 + v37;
              if (fabs(*v8) <= fabs(v37))
              {
                v28 = v37 - v34;
                v29 = *v8;
              }

              else
              {
                v28 = *v8 - v34;
                v29 = (v15 - v27);
              }

              *(v8 + 8) = v28 + v29 + *(v8 + 8);
              *v8 = v34;
              v15 = v27;
              goto LABEL_79;
            }

LABEL_60:
            v32 = *v8 + 9.22337204e18;
            if (fabs(*v8) <= fabs(9.22337204e18))
            {
              v23 = 9.22337204e18 - v32;
              v24 = *v8;
            }

            else
            {
              v23 = *v8 - v32;
              v24 = 9.22337204e18;
            }

            *(v8 + 8) = v23 + v24 + *(v8 + 8);
            *v8 = v32;
            v33 = *v8 + 16383.0;
            if (fabs(*v8) <= fabs(16383.0))
            {
              v25 = 16383.0 - v33;
              v26 = *v8;
            }

            else
            {
              v25 = *v8 - v33;
              v26 = 16383.0;
            }

            *(v8 + 8) = v25 + v26 + *(v8 + 8);
            *v8 = v33;
            v36 = 1.0;
            goto LABEL_81;
          }

          if ((v13 & 0x12) != 0 && *(v12 + 8))
          {
            v14 = COERCE_DOUBLE(sub_18193CFCC(v12));
            goto LABEL_18;
          }
        }

        else
        {
          sub_1819012D0(92237);
        }

        v15 = 0;
LABEL_79:
        v20 = v15;
        goto LABEL_80;
      }

      if (v12)
      {
        v19 = *(v12 + 20);
        if ((v19 & 8) != 0)
        {
          v20 = -*v12;
          goto LABEL_80;
        }

        if ((v19 & 0x24) != 0)
        {
          v20 = -*v12;
LABEL_80:
          v36 = v20;
LABEL_81:
          v35 = *v8 + v36;
          if (fabs(*v8) <= fabs(v36))
          {
            v30 = v36 - v35;
            v31 = *v8;
          }

          else
          {
            v30 = *v8 - v35;
            v31 = v36;
          }

          *(v8 + 8) = v30 + v31 + *(v8 + 8);
          result = v35;
          *v8 = v35;
          return result;
        }

        if ((v19 & 0x12) != 0)
        {
          v20 = -sub_18193CF90(v12);
          goto LABEL_80;
        }
      }

      else
      {
        sub_1819012D0(92272);
      }

      v20 = -0.0;
      goto LABEL_80;
    }

    if (v12)
    {
      v16 = *(v12 + 20);
      if ((v16 & 0x24) != 0)
      {
        v17 = *v12;
        goto LABEL_24;
      }

      if ((v16 & 8) != 0)
      {
        result = *v12;
        if (*v12 < -9.22337204e18)
        {
          goto LABEL_54;
        }

        if (result > 9.22337204e18)
        {
          v18 = *(v8 + 16);
          v17 = 0x7FFFFFFFFFFFFFFFLL;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

LABEL_27:
          if ((0x8000000000000001 - v18) > 1 - v17)
          {
            goto LABEL_55;
          }

LABEL_39:
          *(v8 + 16) = v18 - v17;
          return result;
        }

        v17 = result;
LABEL_24:
        if (v17 != 0x8000000000000000)
        {
          v18 = *(v8 + 16);
          if (v17 > 0)
          {
            if ((v18 & 0x8000000000000000) == 0)
            {
              goto LABEL_39;
            }

            goto LABEL_27;
          }

LABEL_37:
          if (v18 >= 1 && (v18 ^ 0x7FFFFFFFFFFFFFFFuLL) < -v17)
          {
            goto LABEL_55;
          }

          goto LABEL_39;
        }

LABEL_54:
        v21 = *(v8 + 16);
        if (v21 < 0)
        {
          *(v8 + 16) = v21 & 0x7FFFFFFFFFFFFFFFLL;
          return result;
        }

LABEL_55:
        *(v8 + 32) = 257;
        return result;
      }

      if ((v16 & 0x12) != 0 && *(v12 + 8))
      {
        v17 = sub_18193CFCC(v12);
        goto LABEL_24;
      }
    }

    else
    {
      sub_1819012D0(92237);
    }

    v17 = 0;
    v18 = *(v8 + 16);
    goto LABEL_37;
  }

  v8 = sub_18190C2E0(a1, 40, a4, a5);
  v9 = *a4;
  if (!*a4)
  {
    goto LABEL_6;
  }

LABEL_9:
  v11 = *(v9 + 20);
  if ((0x4000000040004uLL >> v11))
  {
    sub_18190FC94(v9, 0);
    v11 = *(v9 + 20);
  }

  v10 = byte_181A203AA[v11 & 0x3F];
  if (v8)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_1819933C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = a1[1];
    if (v5 && *(v5 + 32))
    {
      v6 = a1[2];
      if ((*(v6 + 20) & 0x80000000) == 0)
      {
        v7 = sub_18190C2E0(a1, 0, a3, a4);
        if (!v7)
        {
          goto LABEL_8;
        }

LABEL_17:
        if (*(v7 + 32))
        {
          if ((*(v7 + 8) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v8 = *v7;
          }

          else
          {
            v8 = *v7 + *(v7 + 8);
          }
        }

        else
        {
          v8 = *(v7 + 16);
        }

LABEL_9:
        v9 = *a1;
        if ((*(v9 + 20) & 0x9000) != 0)
        {
          sub_18193CA54(v9);
        }

        else
        {
          *(v9 + 20) = 1;
        }

        *v9 = v8;
        *(v9 + 20) = 8;
        return;
      }

      v7 = *(v6 + 8);
      if (v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1819012D0(100772);
    }

LABEL_8:
    v8 = 0.0;
    goto LABEL_9;
  }

  sub_1819012D0(100772);

  sub_1819012D0(100067);
}

void sub_1819934E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v5 = a1[1]) != 0 && *(v5 + 32))
  {
    v6 = a1[2];
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
      v8 = sub_18190C2E0(a1, 0, a3, a4);
      if (!v8)
      {
        return;
      }
    }

    v9 = *(v8 + 24);
    if (v9 >= 1)
    {
      if (*(v8 + 32))
      {
        v10 = *v8;
        if ((*(v8 + 8) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v10 = *v8 + *(v8 + 8);
        }
      }

      else
      {
        v10 = *(v8 + 16);
      }

      v11 = v10 / v9;
      v12 = *v7;
      if ((*(v12 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v12);
      }

      else
      {
        *(v12 + 20) = 1;
      }

      *v12 = v11;
      *(v12 + 20) = 8;
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void *sub_1819935E8(void *result, int a2, uint64_t *a3, uint64_t a4)
{
  if (!result || (v6 = result[1]) == 0 || !*(v6 + 32))
  {
    result = sub_1819012D0(100772);
    if (!a2)
    {
      return result;
    }

    v8 = 0;
    v9 = *a3;
    if (*a3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v7 = result[2];
  if ((*(v7 + 20) & 0x80000000) == 0)
  {
    result = sub_18190C2E0(result, 8, a3, a4);
    v8 = result;
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_18:
    if (!v8)
    {
      return result;
    }

    goto LABEL_15;
  }

  v8 = *(v7 + 8);
  if (!a2)
  {
    goto LABEL_18;
  }

LABEL_6:
  v9 = *a3;
  if (*a3)
  {
LABEL_7:
    v10 = (0x5555555555555555uLL >> *(v9 + 20)) & 1;
    goto LABEL_11;
  }

LABEL_10:
  result = sub_1819012D0(99877);
  LODWORD(v10) = 1;
LABEL_11:
  if (v10)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
LABEL_15:
    --*v8;
  }

  return result;
}

void *sub_1819936B8(void *result, int a2, void *a3, uint64_t a4)
{
  v6 = result;
  if (*a3)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(*a3 + 20)))
    {
      return result;
    }
  }

  else
  {
    result = sub_1819012D0(99877);
  }

  if (!v6 || (v7 = v6[1]) == 0 || !*(v7 + 32))
  {
    v10 = 100772;
    goto LABEL_12;
  }

  v8 = v6[2];
  if (*(v8 + 20) < 0)
  {
    v9 = *(v8 + 8);
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    result = sub_18190C2E0(v6, 48, a3, a4);
    v9 = result;
    if (!result)
    {
      return result;
    }
  }

  v11 = *(v9 + 5);
  *(v9 + 5) = *(*(*v6 + 24) + 136);
  if (a2 != 1)
  {
    v13 = a3[1];
    if (!v11)
    {
      if (v13)
      {
        v17 = *(v13 + 20);
        if ((v17 & 2) != 0 && *(v13 + 22) == 1)
        {
          v16 = *(v13 + 16);
          goto LABEL_59;
        }

        if ((v17 & 0x10) != 0)
        {
          v16 = *(v13 + 16);
          if ((*(v13 + 20) & 0x400) != 0)
          {
            v16 += *v13;
          }

          goto LABEL_59;
        }

        if ((v17 & 1) == 0)
        {
          v16 = sub_18193CB44(v13, 1, a3, a4);
          goto LABEL_59;
        }
      }

      else
      {
        sub_1819012D0(93690);
      }

      v16 = 0;
      goto LABEL_59;
    }

    if (v13)
    {
      v14 = *(v13 + 20);
      if ((~v14 & 0x202) == 0 && *(v13 + 22) == 1)
      {
        v15 = *(v13 + 8);
        goto LABEL_49;
      }

      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = sub_18193CB70(v13, 1, a3, a4);
        v13 = a3[1];
        if (!v13)
        {
          goto LABEL_38;
        }
      }

LABEL_49:
      v23 = *(v13 + 20);
      if ((v23 & 2) != 0 && *(v13 + 22) == 1)
      {
        v21 = *(v13 + 16);
        goto LABEL_40;
      }

      if ((v23 & 0x10) != 0)
      {
        v21 = *(v13 + 16);
        if ((*(v13 + 20) & 0x400) != 0)
        {
          v21 = (*v13 + v21);
        }

LABEL_40:
        if (v15)
        {
          if (v21 <= 0)
          {
            if (v21)
            {
              sub_1819012D0(34353);
            }
          }

          else
          {
            v22 = *(v9 + 6);
            if ((v22 + v21) >= *(v9 + 4))
            {
              sub_181906814(v9, v15, v21, a4);
            }

            else
            {
              *(v9 + 6) = v22 + v21;
              memcpy((v9[1] + v22), v15, v21);
            }
          }
        }

        else
        {
          LODWORD(v21) = 0;
        }

        v24 = v9[5];
        if (v21 == *(v9 + 9))
        {
          if (!v24)
          {
            goto LABEL_80;
          }
        }

        else if (!v24)
        {
          v31 = *(v9 + 8);
          if (!sqlite3_initialize())
          {
            v27 = sub_181902484(4 * v31 + 4, 0x100004052888210);
            if (v27)
            {
              v40 = *(v9 + 8);
              v41 = (v40 - 1);
              if (v40 > 1)
              {
                v42 = *(v9 + 9);
                if (v40 >= 9)
                {
                  v43 = v41 & 0x7FFFFFF8;
                  v44 = vdupq_n_s32(v42);
                  v45 = (v27 + 16);
                  v46 = v43;
                  do
                  {
                    v45[-1] = v44;
                    *v45 = v44;
                    v45 += 2;
                    v46 -= 8;
                  }

                  while (v46);
                  if (v43 == v41)
                  {
                    goto LABEL_70;
                  }
                }

                else
                {
                  v43 = 0;
                }

                do
                {
                  *(v27 + 4 * v43++) = v42;
                }

                while (v41 != v43);
              }

LABEL_70:
              v28 = *(v9 + 8);
              v29 = __OFSUB__(v28, 1);
              v30 = v28 - 1;
              if (v30 < 0 == v29)
              {
                *(v27 + 4 * v30) = v21;
              }

              v9[5] = v27;
              goto LABEL_80;
            }
          }

LABEL_74:
          *(v9 + 28) = 7;
          if (*(v9 + 5))
          {
            v32 = *(v9 + 29);
            if ((v32 & 4) != 0)
            {
              v33 = v9[1];
              if (v33)
              {
                sub_181929C84(*v9, v33);
                v32 = *(v9 + 29);
              }

              *(v9 + 29) = v32 & 0xFB;
            }

            *(v9 + 4) = 0;
            *(v9 + 6) = 0;
            v9[1] = 0;
          }

          goto LABEL_80;
        }

        v25 = *(v9 + 8);
        v26 = sqlite3_initialize();
        if (v25)
        {
          if (!v26)
          {
            v27 = sub_18190287C(v24, 4 * v25, 0x100004052888210);
            if (v27)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_74;
      }

      if ((v23 & 1) == 0)
      {
        v21 = sub_18193CB44(v13, 1, a3, a4);
        goto LABEL_40;
      }

LABEL_39:
      v21 = 0;
      goto LABEL_40;
    }

    v15 = 0;
LABEL_38:
    sub_1819012D0(93690);
    goto LABEL_39;
  }

  if (!v11)
  {
    v16 = 1;
LABEL_59:
    *(v9 + 9) = v16;
    goto LABEL_80;
  }

  if (*(v9 + 6) + 1 >= *(v9 + 4))
  {
    v12 = sub_181906424(v9, 1, a3, a4);
    if (v12 < 1)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v12 = 1;
  }

  v18 = v12 + 1;
  do
  {
    v19 = v9[1];
    v20 = *(v9 + 6);
    *(v9 + 6) = v20 + 1;
    *(v19 + v20) = 44;
    --v18;
  }

  while (v18 > 1);
LABEL_80:
  ++*(v9 + 8);
  result = *a3;
  if (!*a3)
  {
    v35 = 0;
LABEL_88:
    result = sub_1819012D0(93690);
    goto LABEL_89;
  }

  v34 = *(result + 10);
  if ((~v34 & 0x202) == 0 && *(result + 22) == 1)
  {
    v35 = result[1];
    goto LABEL_97;
  }

  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_18193CB70(result, 1, a3, a4);
    result = *a3;
    if (!*a3)
    {
      goto LABEL_88;
    }
  }

LABEL_97:
  v39 = *(result + 10);
  if ((v39 & 2) != 0 && *(result + 22) == 1)
  {
    v36 = *(result + 4);
    goto LABEL_90;
  }

  if ((v39 & 0x10) != 0)
  {
    v36 = *(result + 4);
    if ((*(result + 10) & 0x400) != 0)
    {
      v36 = (*result + v36);
    }

    goto LABEL_90;
  }

  if ((v39 & 1) == 0)
  {
    result = sub_18193CB44(result, 1, a3, a4);
    v36 = result;
    goto LABEL_90;
  }

LABEL_89:
  v36 = 0;
LABEL_90:
  if (!v35)
  {
    return result;
  }

  if (v36 > 0)
  {
    v37 = *(v9 + 6);
    if ((v37 + v36) >= *(v9 + 4))
    {

      return sub_181906814(v9, v35, v36, a4);
    }

    else
    {
      *(v9 + 6) = v37 + v36;
      v38 = (v9[1] + v37);

      return memcpy(v38, v35, v36);
    }
  }

  if (!v36)
  {
    return result;
  }

  v10 = 34353;
LABEL_12:

  return sub_1819012D0(v10);
}

void sub_181993BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (v4 = *(a1 + 8)) == 0 || !*(v4 + 32))
  {

    sub_1819012D0(100772);
    return;
  }

  v5 = *(a1 + 16);
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

  v8 = *(v7 + 28);
  if (*(v7 + 28))
  {
    v6[9] = v8;
    if ((*(*v6 + 20) & 1) == 0)
    {
      goto LABEL_27;
    }

    v9 = v6;
    if (v8 == 100)
    {
      v10 = "another row available";
    }

    else if (v8 == 101)
    {
      v10 = "no more rows available";
    }

    else if (v8 > 0x1C || ((0x1410004uLL >> v8) & 1) != 0)
    {
      v10 = "unknown error";
    }

    else
    {
      v10 = off_1E6A27DD8[v8];
    }

    v11 = -1;
LABEL_26:
    sub_18190B23C(v9, v10, v11, 1, 0);
LABEL_27:
    v13 = *(v7 + 29);
    if ((v13 & 4) != 0)
    {
      v14 = *(v7 + 8);
      if (v14)
      {
        sub_181929C84(*v7, v14);
        v13 = *(v7 + 29);
      }

      *(v7 + 29) = v13 & 0xFB;
    }

    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 8) = 0;
    v12 = *(v7 + 40);
    if (!v12)
    {
      return;
    }

    goto LABEL_32;
  }

  v9 = v6;
  if ((*(v7 + 29) & 4) == 0)
  {
    v10 = &byte_181A2878D;
    v11 = 0;
    goto LABEL_26;
  }

  sub_18190B23C(v6, *(v7 + 8), *(v7 + 24), 1, sub_181916CE4);
  v12 = *(v7 + 40);
  if (!v12)
  {
    return;
  }

LABEL_32:
  v15 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_37:
    v16 = *v15;

    v16(v12);
    return;
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
    v15 = &xmmword_1ED452F28;
    goto LABEL_37;
  }
}

void sub_181993E20(sqlite3_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = *(v7 + 28);
    if (v8 != 7)
    {
      if (v8 == 18)
      {
        *(v6 + 9) = 18;
        v9 = *v6;

        sub_1818900D0(v9, "string or blob too big", -1, 1, 0);
        return;
      }

      v10 = *(v7 + 24);
      if (*(v7 + 32) < 1)
      {
        if (!v10)
        {
          v13 = 0;
          v11 = 0;
          goto LABEL_24;
        }
      }

      else if (!v10)
      {
        v11 = &byte_181A2878D;
        v12 = v6;
        v13 = 1;
        v14 = 0;
LABEL_25:

        sub_18190B23C(v12, v11, v13, 1, v14);
        return;
      }

      *(*(v7 + 8) + v10) = 0;
      v11 = *(v7 + 8);
      v13 = *(v7 + 24);
LABEL_24:
      v12 = v6;
      v14 = -1;
      goto LABEL_25;
    }

    sqlite3_result_error_nomem(v6);
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t sub_181993F88(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*a3)
  {
    if ((0xAAAAAAAAAAAAAAAALL >> *(*a3 + 20)))
    {
      return result;
    }
  }

  else
  {
    v5 = result;
    sub_1819012D0(99877);
    result = v5;
  }

  if (result)
  {
    v6 = *(result + 8);
    if (v6)
    {
      if (*(v6 + 32))
      {
        v7 = *(result + 16);
        if (*(v7 + 20) < 0)
        {
          v8 = *(v7 + 8);
          if (!v8)
          {
            return result;
          }
        }

        else
        {
          result = sub_18190C2E0(result, 48, a3, a4);
          v8 = result;
          if (!result)
          {
            return result;
          }
        }

        v9 = *a3;
        if (*a3)
        {
          v10 = *(v9 + 20);
          if ((~v10 & 0x202) != 0)
          {
            if (v10)
            {
              goto LABEL_22;
            }
          }

          else if ((v10 & 1) != 0 || *(v9 + 22) == 1)
          {
            goto LABEL_22;
          }

          sub_18193CB70(v9, 1, a3, a4);
          v9 = *a3;
          if (*a3)
          {
LABEL_22:
            v11 = *(v9 + 20);
            if ((v11 & 2) != 0 && *(v9 + 22) == 1)
            {
              v12 = *(v9 + 16);
              goto LABEL_27;
            }

            if ((v11 & 0x10) != 0)
            {
              v12 = *(v9 + 16);
              if ((*(v9 + 20) & 0x400) != 0)
              {
                v12 += *v9;
              }

LABEL_27:
              v13 = *(v8 + 32);
              *(v8 + 32) = v13 - 1;
              result = *(v8 + 40);
              if (result)
              {
                v14 = __OFSUB__(v13, 2);
                v15 = v13 - 2;
                if (v15 < 0 == v14)
                {
                  v12 += *result;
                  result = memmove(result, (result + 4), 4 * v15);
                }
              }

              else
              {
                v12 += *(v8 + 36);
              }

              v16 = *(v8 + 24);
              v17 = (v16 - v12);
              if (v16 <= v12)
              {
                *(v8 + 24) = 0;
              }

              else
              {
                *(v8 + 24) = v17;
                result = memmove(*(v8 + 8), (*(v8 + 8) + v12), v17);
                if (*(v8 + 24))
                {
                  return result;
                }
              }

              *(v8 + 20) = 0;
              v18 = *(v8 + 40);
              if (v18)
              {
                v19 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v18);
                  --qword_1ED456A90;
                  result = off_1ED452EB0(v18);
                  v18 = xmmword_1ED456AF0;
                  if (!xmmword_1ED456AF0)
                  {
                    goto LABEL_45;
                  }

                  v19 = &xmmword_1ED452F28;
                }

                result = (*v19)(v18);
              }

LABEL_45:
              *(v8 + 40) = 0;
              return result;
            }

            if ((v11 & 1) == 0)
            {
              v12 = sub_18193CB44(v9, 1, a3, a4);
              goto LABEL_27;
            }

LABEL_26:
            v12 = 0;
            goto LABEL_27;
          }
        }

        sub_1819012D0(93690);
        goto LABEL_26;
      }
    }
  }

  return sub_1819012D0(100772);
}

void sub_1819941E4(uint64_t *a1, __n128 a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  if (*a4)
  {
    v6 = *(v4 + 20);
    if ((0x4000000040004uLL >> v6))
    {
      v7 = a4;
      sub_18190FC94(*a4, 0);
      a4 = v7;
      v6 = *(v4 + 20);
    }

    v8 = byte_181A203AA[v6 & 0x3F];
    if (v8 != 2)
    {
      if (v8 != 1)
      {
        return;
      }

      v9 = *a4;
      if (*a4)
      {
        v10 = *(v9 + 20);
        if ((v10 & 0x24) != 0)
        {
          v11 = *v9;
          goto LABEL_20;
        }

        if ((v10 & 8) != 0)
        {
          v20 = *v9;
          if (*v9 >= -9.22337204e18)
          {
            if (v20 <= 9.22337204e18)
            {
              v11 = v20;
            }

            else
            {
              v11 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v11 = 0x8000000000000000;
          }

LABEL_20:
          if (a1)
          {
            v16 = *a1;
            if ((*(*a1 + 20) & 0x9000) != 0)
            {

              sub_18193D288(v16, v11);
            }

            else
            {
              *v16 = v11;
              *(v16 + 20) = 4;
            }
          }

          return;
        }

        if ((v10 & 0x12) != 0 && *(v9 + 8))
        {
          v11 = sub_18193CFCC(v9);
          goto LABEL_20;
        }
      }

      else
      {
        sub_1819012D0(92237);
      }

      v11 = 0;
      goto LABEL_20;
    }

    if (a1)
    {
      v13 = *(a1[1] + 8);
      v14 = *a4;
      if (*a4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v13 = 0;
      v14 = *a4;
      if (*a4)
      {
LABEL_15:
        v15 = *(v14 + 20);
        if ((v15 & 8) != 0)
        {
          a2.n128_u64[0] = *v14;
        }

        else if ((v15 & 0x24) != 0)
        {
          a2.n128_f64[0] = *v14;
        }

        else if ((v15 & 0x12) != 0)
        {
          a2.n128_f64[0] = sub_18193CF90(v14);
        }

        else
        {
          a2.n128_u64[0] = 0;
        }

        goto LABEL_28;
      }
    }

    sub_1819012D0(92272);
    a2.n128_u64[0] = 0;
LABEL_28:
    v13(a2);
    if (a1)
    {
      v18 = v17;
      v19 = *a1;
      if ((*(v19 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v19);
      }

      else
      {
        *(v19 + 20) = 1;
      }

      *v19 = v18;
      *(v19 + 20) = 8;
      return;
    }

    v12 = 100067;
    goto LABEL_10;
  }

  v12 = 99877;
LABEL_10:

  sub_1819012D0(v12);
}

void sub_181994450(uint64_t *a1, int a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    goto LABEL_22;
  }

  v5 = *(v3 + 20);
  if ((0x4000000040004uLL >> v5))
  {
    v6 = a2;
    v7 = a3;
    sub_18190FC94(*a3, 0);
    a2 = v6;
    a3 = v7;
    v5 = *(v3 + 20);
  }

  if (byte_181A203AA[v5 & 0x3F] - 1 > 1)
  {
    return;
  }

  v8 = *a3;
  if (!*a3)
  {
LABEL_23:
    v20 = 26736;
    goto LABEL_24;
  }

  v9 = *(v8 + 20);
  if ((v9 & 8) != 0)
  {
    v10 = *v8;
    if (*v8 <= 0.0)
    {
      return;
    }
  }

  else if ((v9 & 0x24) != 0)
  {
    v10 = *v8;
    if (v10 <= 0.0)
    {
      return;
    }
  }

  else
  {
    if ((v9 & 0x12) == 0)
    {
      return;
    }

    v24 = a3;
    v25 = a2;
    v10 = sub_18193CF90(v8);
    a2 = v25;
    a3 = v24;
    if (v10 <= 0.0)
    {
      return;
    }
  }

  if (a2 != 2)
  {
    if (a1)
    {
      v22 = *(a1[1] + 8);
      if (v22 == 2)
      {
        v23 = log2(v10);
        goto LABEL_38;
      }

      if (v22 == 1)
      {
        v23 = log10(v10);
LABEL_38:
        v26 = v23;
LABEL_39:
        v27 = *a1;
        if ((*(v27 + 20) & 0x9000) != 0)
        {
          sub_18193CA54(v27);
        }

        else
        {
          *(v27 + 20) = 1;
        }

        *v27 = v26;
        *(v27 + 20) = 8;
        return;
      }
    }

    v26 = log(v10);
    if (!a1)
    {
LABEL_36:
      v21 = 100067;
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  v11 = *a3;
  if (!*a3)
  {
LABEL_22:
    v20 = -31195;
LABEL_24:
    v21 = v20 | 0x10000u;
LABEL_25:

    sub_1819012D0(v21);
    return;
  }

  v12 = *(v11 + 20);
  if ((0x4000000040004uLL >> v12))
  {
    v13 = a3;
    v14 = v10;
    sub_18190FC94(*a3, 0);
    v10 = v14;
    a3 = v13;
    v12 = *(v11 + 20);
  }

  if (byte_181A203AA[v12 & 0x3F] - 1 <= 1)
  {
    v15 = a3;
    v16 = log(v10);
    if (v16 > 0.0)
    {
      v17 = v15[1];
      if (v17)
      {
        v18 = *(v17 + 20);
        if ((v18 & 8) != 0)
        {
          v19 = *v17;
          if (*v17 <= 0.0)
          {
            return;
          }
        }

        else if ((v18 & 0x24) != 0)
        {
          v19 = *v17;
          if (v19 <= 0.0)
          {
            return;
          }
        }

        else
        {
          if ((v18 & 0x12) == 0)
          {
            return;
          }

          v28 = v16;
          v19 = sub_18193CF90(v17);
          v16 = v28;
          if (v19 <= 0.0)
          {
            return;
          }
        }

        v26 = log(v19) / v16;
        if (!a1)
        {
          goto LABEL_36;
        }

        goto LABEL_39;
      }

      goto LABEL_23;
    }
  }
}

void sub_1819946E0(uint64_t *a1, __n128 a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  if (*a4)
  {
    v6 = *(v4 + 20);
    if ((0x4000000040004uLL >> v6))
    {
      v7 = a4;
      sub_18190FC94(*a4, 0);
      a4 = v7;
      v6 = *(v4 + 20);
    }

    if (byte_181A203AA[v6 & 0x3F] - 3 >= 0xFFFFFFFE)
    {
      v8 = *a4;
      if (*a4)
      {
        v9 = *(v8 + 20);
        if ((v9 & 8) != 0)
        {
          a2.n128_u64[0] = *v8;
        }

        else if ((v9 & 0x24) != 0)
        {
          a2.n128_f64[0] = *v8;
        }

        else if ((v9 & 0x12) != 0)
        {
          a2.n128_f64[0] = sub_18193CF90(v8);
        }

        else
        {
          a2.n128_u64[0] = 0;
        }
      }

      else
      {
        sub_1819012D0(92272);
        a2.n128_u64[0] = 0;
      }

      v10 = (*(a1[1] + 8))(a2);
      v11 = *a1;
      if ((*(v11 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v11);
      }

      else
      {
        *(v11 + 20) = 1;
      }

      *v11 = v10;
      *(v11 + 20) = 8;
    }
  }

  else
  {

    sub_1819012D0(99877);
  }
}

void sub_18199483C(uint64_t *a1, double a2, __n128 a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  if (!*a5)
  {
LABEL_13:

    sub_1819012D0(99877);
    return;
  }

  v8 = *(v5 + 20);
  if ((0x4000000040004uLL >> v8))
  {
    sub_18190FC94(*a5, 0);
    v8 = *(v5 + 20);
  }

  if (byte_181A203AA[v8 & 0x3F] - 3 >= 0xFFFFFFFE)
  {
    v9 = a5[1];
    if (v9)
    {
      v10 = *(v9 + 20);
      if ((0x4000000040004uLL >> v10))
      {
        sub_18190FC94(a5[1], 0);
        v10 = *(v9 + 20);
      }

      if (byte_181A203AA[v10 & 0x3F] - 3 >= 0xFFFFFFFE)
      {
        v11 = *a5;
        if (*a5)
        {
          v12 = *(v11 + 20);
          if ((v12 & 8) != 0)
          {
            v13 = *v11;
          }

          else if ((v12 & 0x24) != 0)
          {
            v13 = *v11;
          }

          else if ((v12 & 0x12) != 0)
          {
            v13 = sub_18193CF90(v11);
          }

          else
          {
            v13 = 0.0;
          }
        }

        else
        {
          sub_1819012D0(92272);
          v13 = 0.0;
        }

        v14 = a5[1];
        if (v14)
        {
          v15 = *(v14 + 20);
          if ((v15 & 8) != 0)
          {
            a3.n128_u64[0] = *v14;
          }

          else if ((v15 & 0x24) != 0)
          {
            a3.n128_f64[0] = *v14;
          }

          else if ((v15 & 0x12) != 0)
          {
            a3.n128_u64[0] = sub_18193CF90(v14);
          }

          else
          {
            a3.n128_u64[0] = 0;
          }
        }

        else
        {
          sub_1819012D0(92272);
          a3.n128_u64[0] = 0;
        }

        v16 = (*(a1[1] + 8))(v13, a3);
        v17 = *a1;
        if ((*(v17 + 20) & 0x9000) != 0)
        {
          sub_18193CA54(v17);
        }

        else
        {
          *(v17 + 20) = 1;
        }

        *v17 = v16;
        *(v17 + 20) = 8;
      }

      return;
    }

    goto LABEL_13;
  }
}

void sub_181994A60(int **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (((*a1)[5] & 0x9000) != 0)
    {
      sub_18193CA54(*a1);
    }

    *v2 = 0x400921FB54442D18;
    *(v2 + 10) = 8;
  }

  else
  {

    sub_1819012D0(100067);
  }
}

void sub_181994AD0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3)
  {
    v5 = *(v3 + 20);
    if ((0x4000000040004uLL >> v5))
    {
      v6 = a3;
      sub_18190FC94(*a3, 0);
      a3 = v6;
      v5 = *(v3 + 20);
    }

    if (byte_181A203AA[v5 & 0x3F] - 3 >= 0xFFFFFFFE)
    {
      v7 = *a3;
      if (*a3)
      {
        v8 = *(v7 + 20);
        if ((v8 & 8) != 0)
        {
          v9 = *v7;
        }

        else if ((v8 & 0x24) != 0)
        {
          v9 = *v7;
        }

        else
        {
          v9 = (v8 & 0x12) != 0 ? sub_18193CF90(v7) : 0.0;
        }
      }

      else
      {
        sub_1819012D0(92272);
        v9 = 0.0;
      }

      if (a1)
      {
        v10 = *a1;
        if (v9 < 0.0)
        {
          v11 = -1;
        }

        else
        {
          v11 = v9 > 0.0;
        }

        if ((*(v10 + 20) & 0x9000) != 0)
        {

          sub_18193D288(v10, v11);
        }

        else
        {
          *v10 = v11;
          *(v10 + 20) = 4;
        }
      }
    }
  }

  else
  {

    sub_1819012D0(99877);
  }
}

void sub_181994C1C(sqlite3_context *a1, unsigned int a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v7 = a3;
  v10 = 0;
  v11 = a2 - 1;
  if (a2 >= 1)
  {
    v12 = a2;
    v13 = a3;
    while (1)
    {
      v15 = *v13;
      if (!*v13)
      {
        break;
      }

      v16 = *(v15 + 20);
      if ((v16 & 2) != 0 && *(v15 + 22) == 1)
      {
        v14 = *(v15 + 16);
      }

      else
      {
        if ((v16 & 0x10) != 0)
        {
          v14 = *(v15 + 16);
          if ((*(v15 + 20) & 0x400) != 0)
          {
            v14 += *v15;
          }

          goto LABEL_4;
        }

        if (v16)
        {
          goto LABEL_12;
        }

        v14 = sub_18193CB44(v15, 1, a3, a4);
      }

LABEL_4:
      v10 += v14;
      ++v13;
      if (!--v12)
      {
        goto LABEL_15;
      }
    }

    sub_1819012D0(93690);
LABEL_12:
    v14 = 0;
    goto LABEL_4;
  }

LABEL_15:
  if (sqlite3_initialize() || (v17 = sub_181902484(v10 + v6 * v11 + 1, 2810426734)) == 0)
  {

    sqlite3_result_error_nomem(a1);
  }

  else
  {
    v20 = v17;
    if (a2 >= 1)
    {
      __src = a5;
      v21 = 0;
      v22 = a2;
      while (1)
      {
        v23 = *v7;
        if (*v7)
        {
          if ((0xAAAAAAAAAAAAAAAALL >> *(v23 + 20)))
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1819012D0(99877);
          v23 = *v7;
          if (!*v7)
          {
            sub_1819012D0(93690);
            v25 = 0;
LABEL_40:
            v26 = *v7;
            if (!*v7)
            {
              goto LABEL_23;
            }

            goto LABEL_41;
          }
        }

        v24 = *(v23 + 20);
        if ((v24 & 2) != 0 && *(v23 + 22) == 1)
        {
          v25 = *(v23 + 16);
          v26 = *v7;
          if (!*v7)
          {
            goto LABEL_23;
          }
        }

        else if ((v24 & 0x10) != 0)
        {
          v25 = *(v23 + 16);
          if ((*(v23 + 20) & 0x400) == 0)
          {
            goto LABEL_40;
          }

          v25 += *v23;
          v26 = *v7;
          if (!*v7)
          {
            goto LABEL_23;
          }
        }

        else if (v24)
        {
          v25 = 0;
          v26 = *v7;
          if (!*v7)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v25 = sub_18193CB44(v23, 1, v18, v19);
          v26 = *v7;
          if (!*v7)
          {
            goto LABEL_23;
          }
        }

LABEL_41:
        v27 = *(v26 + 20);
        if ((~v27 & 0x202) != 0 || *(v26 + 22) != 1)
        {
          if ((v27 & 1) == 0)
          {
            v28 = sub_18193CB70(v26, 1, v18, v19);
            if (v28)
            {
LABEL_47:
              if (v6 >= 1 && v21 >= 1)
              {
                memcpy(&v20[v21], __src, v6);
                v21 += v6;
              }

              memcpy(&v20[v21], v28, v25);
              v21 += v25;
            }
          }
        }

        else
        {
          v28 = *(v26 + 8);
          if (v28)
          {
            goto LABEL_47;
          }
        }

LABEL_23:
        ++v7;
        if (!--v22)
        {
          goto LABEL_53;
        }
      }
    }

    v21 = 0;
LABEL_53:
    v20[v21] = 0;

    sqlite3_result_text64(a1, v20, v21, sqlite3_free, 1u);
  }
}

uint64_t sub_181994EE8(sqlite3_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = *(*a1 + 24);
  }

  else
  {
    v6 = 0;
  }

  v150 = 0u;
  v151 = 0u;
  v7 = *a3;
  if (!*a3)
  {
    goto LABEL_12;
  }

  v8 = *(v7 + 10);
  if ((~v8 & 0x202) == 0 && *(v7 + 22) == 1)
  {
    v9 = *(v7 + 1);
    v10 = *(a3 + 24);
    if (!v10)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (v8)
  {
LABEL_12:
    v9 = 0;
    v10 = *(a3 + 24);
    if (!v10)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v9 = sub_18193CB70(v7, 1, a3, a4);
  v10 = *(a3 + 24);
  if (!v10)
  {
LABEL_20:
    v12 = 0;
    v13 = *(a3 + 32);
    if (!v13)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

LABEL_13:
  v11 = *(v10 + 20);
  if ((~v11 & 0x202) != 0 || *(v10 + 22) != 1)
  {
    if (v11)
    {
      goto LABEL_20;
    }

    v12 = sub_18193CB70(v10, 1, a3, a4);
    v13 = *(a3 + 32);
    if (!v13)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v12 = *(v10 + 8);
    v13 = *(a3 + 32);
    if (!v13)
    {
      goto LABEL_29;
    }
  }

LABEL_21:
  v14 = *(v13 + 20);
  if ((~v14 & 0x202) != 0 || *(v13 + 22) != 1)
  {
    if ((v14 & 1) == 0)
    {
      v15 = sub_18193CB70(v13, 1, a3, a4);
      v16 = *(a3 + 40);
      if (v16)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }

LABEL_29:
    v15 = 0;
    v16 = *(a3 + 40);
    if (v16)
    {
      goto LABEL_30;
    }

LABEL_27:
    sub_1819012D0(92237);
LABEL_28:
    LODWORD(v17) = 0;
    goto LABEL_32;
  }

  v15 = *(v13 + 8);
  v16 = *(a3 + 40);
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_30:
  v18 = *(v16 + 20);
  if ((v18 & 0x24) != 0)
  {
    v17 = *v16;
  }

  else if ((v18 & 8) != 0)
  {
    v38 = *v16;
    if (*v16 >= -9.22337204e18)
    {
      if (v38 <= 9.22337204e18)
      {
        *&v17 = v38;
      }

      else
      {
        LODWORD(v17) = -1;
      }
    }

    else
    {
      LODWORD(v17) = 0;
    }
  }

  else
  {
    if ((v18 & 0x12) == 0 || !*(v16 + 8))
    {
      goto LABEL_28;
    }

    LODWORD(v17) = sub_18193CFCC(v16);
  }

LABEL_32:
  v19 = *(a3 + 48);
  if (!v19)
  {
    goto LABEL_41;
  }

  v20 = *(v19 + 20);
  if ((~v20 & 0x202) != 0 || *(v19 + 22) != 1)
  {
    if ((v20 & 1) == 0)
    {
      v21 = sub_18193CB70(v19, 1, a3, a4);
      v22 = *(a3 + 56);
      if (v22)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

LABEL_41:
    v21 = 0;
    v22 = *(a3 + 56);
    if (v22)
    {
      goto LABEL_42;
    }

LABEL_39:
    sub_1819012D0(92237);
LABEL_40:
    LODWORD(v23) = 0;
    goto LABEL_44;
  }

  v21 = *(v19 + 8);
  v22 = *(a3 + 56);
  if (!v22)
  {
    goto LABEL_39;
  }

LABEL_42:
  v24 = *(v22 + 20);
  if ((v24 & 0x24) != 0)
  {
    v23 = *v22;
  }

  else if ((v24 & 8) != 0)
  {
    v39 = *v22;
    if (*v22 >= -9.22337204e18)
    {
      if (v39 <= 9.22337204e18)
      {
        *&v23 = v39;
      }

      else
      {
        LODWORD(v23) = -1;
      }
    }

    else
    {
      LODWORD(v23) = 0;
    }
  }

  else
  {
    if ((v24 & 0x12) == 0 || !*(v22 + 8))
    {
      goto LABEL_40;
    }

    LODWORD(v23) = sub_18193CFCC(v22);
  }

LABEL_44:
  result = *(a3 + 64);
  if (!result)
  {
    result = sub_1819012D0(92237);
LABEL_48:
    LODWORD(v27) = 0;
    goto LABEL_49;
  }

  v26 = *(result + 20);
  if ((v26 & 0x24) != 0)
  {
    v27 = *result;
    goto LABEL_49;
  }

  if ((v26 & 8) != 0)
  {
    v40 = *result;
    if (*result >= -9.22337204e18)
    {
      if (v40 <= 9.22337204e18)
      {
        *&v27 = v40;
      }

      else
      {
        LODWORD(v27) = -1;
      }
    }

    else
    {
      LODWORD(v27) = 0;
    }

    goto LABEL_49;
  }

  if ((v26 & 0x12) == 0 || !*(result + 8))
  {
    goto LABEL_48;
  }

  result = sub_18193CFCC(result);
  LODWORD(v27) = result;
LABEL_49:
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v121 = 0u;
  if (!v9 || !v15 || !v21 || (LODWORD(v17) & 0x80000000) != 0)
  {
    return result;
  }

  v119 = LODWORD(v23);
  v120 = v12;
  v28 = *(v6 + 528);
  if (!*(v6 + 111))
  {
    sub_181932C40(v6);
  }

  result = sub_181917F20(v6, v15, v120);
  if (!result || (v29 = result, SLODWORD(v17) >= *(result + 54)))
  {
    if (!*(v6 + 111))
    {

      return sub_181932CD8(v6);
    }

    return result;
  }

  v118 = v28;
  v117 = v21;
  v30 = v9;
  v31 = *(*(result + 8) + 16 * (LODWORD(v17) & 0x7FFFFFFF));
  v150 = 0u;
  v151 = 0u;
  if (LODWORD(v17) == *(result + 52))
  {
    v32 = -1;
  }

  else
  {
    v32 = LODWORD(v17);
  }

  HIDWORD(v150) = v32;
  *(v6 + 528) = 0;
  v33 = sub_1819972A8(&v124, v120, v6, v30, SLODWORD(v27));
  *(&v122 + 1) = 0;
  *&v123 = 0;
  *&v121 = &v124;
  *(&v121 + 1) = sub_181997664;
  *&v122 = sub_18199776C;
  *(&v123 + 1) = &v150;
  *&v151 = v29;
  if (v33)
  {
    v37 = v118;
    goto LABEL_255;
  }

  v116 = v30;
  v41 = *(&v145 + 1);
  if (!*(&v145 + 1))
  {
    v37 = v118;
    if (v146)
    {
      sub_181959CE8(&v121, *(v146 + 80));
      v43 = *(v146 + 72);
      if (v43)
      {
        sub_181959BA0(&v121, v43);
      }

      goto LABEL_254;
    }

    v33 = sub_1819977A4(&v124);
    if (v33)
    {
      goto LABEL_255;
    }

    v52 = *(&v146 + 1);
    v53 = *(*(&v146 + 1) + 56);
    if (!v53)
    {
      goto LABEL_166;
    }

LABEL_124:
    v54 = v53[3];
    if (!v54 || sub_1818CA520(&v124, 0, v54, v120) != v29)
    {
      goto LABEL_123;
    }

    v55 = v53[8];
    if (v55)
    {
      sub_181997D74(&v124, &v150, *(v55 + 16), v31);
    }

    v56 = v53[7];
    if (!v56)
    {
      goto LABEL_145;
    }

    v57 = *v56;
    if (*v56 < 1)
    {
      goto LABEL_145;
    }

    v58 = 0;
    v59 = v150;
LABEL_133:
    if (!v31)
    {
      goto LABEL_132;
    }

    v60 = *&v56[2 * v58 + 2];
    if (!v60)
    {
      goto LABEL_132;
    }

    for (i = 0; ; ++i)
    {
      if (*(v60 + i) == *(v31 + i))
      {
        if (!*(v60 + i))
        {
          v62 = *(&v149 + 1);
          if (*(&v149 + 1))
          {
            v63 = &v149 + 1;
            if (**(&v149 + 1) != v60)
            {
              do
              {
                v64 = v62;
                v62 = v62[3];
                if (!v62)
                {
                  goto LABEL_132;
                }
              }

              while (*v62 != v60);
              v63 = v64 + 3;
            }

            *v63 = v62[3];
            v62[3] = v59;
            *&v150 = v62;
            ++DWORD2(v150);
            v57 = *v56;
            v59 = v62;
          }

LABEL_132:
          if (++v58 < v57)
          {
            goto LABEL_133;
          }

LABEL_145:
          v65 = v53[6];
          if (!v65)
          {
            goto LABEL_123;
          }

          v66 = *v65;
          if (*v65 < 1)
          {
            goto LABEL_123;
          }

          v67 = 0;
          v68 = v150;
LABEL_150:
          if (!v31)
          {
            goto LABEL_149;
          }

          v69 = &v65[6 * v67 + 2];
          v70 = *(v69 + 8);
          if ((*(v69 + 17) & 3) != 0 || v70 == 0)
          {
            goto LABEL_149;
          }

          for (j = 0; ; ++j)
          {
            if (*(v70 + j) == *(v31 + j))
            {
              if (!*(v70 + j))
              {
                v73 = *(&v149 + 1);
                if (*(&v149 + 1))
                {
                  v74 = &v149 + 1;
                  if (**(&v149 + 1) != v70)
                  {
                    do
                    {
                      v75 = v73;
                      v73 = v73[3];
                      if (!v73)
                      {
                        goto LABEL_149;
                      }
                    }

                    while (*v73 != v70);
                    v74 = v75 + 3;
                  }

                  *v74 = v73[3];
                  v73[3] = v68;
                  *&v150 = v73;
                  ++DWORD2(v150);
                  v66 = *v65;
                  v68 = v73;
                }

LABEL_149:
                if (++v67 < v66)
                {
                  goto LABEL_150;
                }

LABEL_123:
                v53 = v53[10];
                if (v53)
                {
                  goto LABEL_124;
                }

                v52 = *(&v146 + 1);
LABEL_166:
                if (v134 == v29)
                {
                  sub_181997E60(&v124, &v150, *(v52 + 32), v31);
                  v52 = *(&v146 + 1);
                }

                sub_181997F38(&v121, v52);
                goto LABEL_254;
              }
            }

            else if (byte_181A20298[*(v70 + j)] != byte_181A20298[*(v31 + j)])
            {
              goto LABEL_149;
            }
          }
        }
      }

      else if (byte_181A20298[*(v60 + i)] != byte_181A20298[*(v31 + i)])
      {
        goto LABEL_132;
      }
    }
  }

  v37 = v118;
  if (*(*(&v145 + 1) + 63))
  {
    if (*(*(&v145 + 1) + 63) != 2)
    {
      goto LABEL_254;
    }

    v42 = *(*(&v145 + 1) + 64);
    *(v42 + 4) &= ~0x200000u;
    DWORD2(v125) = 0;
    sub_18195FBC4(&v124, v42, 0);
    if (*(v6 + 103))
    {
      v33 = 7;
    }

    else
    {
      v33 = DWORD2(v125);
    }

    if (!v33)
    {
      sub_1818AEE70(&v121, v42);
      goto LABEL_254;
    }

    goto LABEL_255;
  }

  v44 = **(&v145 + 1);
  if (!**(&v145 + 1))
  {
LABEL_119:
    v51 = 0;
    *&v151 = *(&v145 + 1);
    goto LABEL_217;
  }

  for (k = v15; *k != *v44; ++k)
  {
    if (byte_181A20298[*k] != byte_181A20298[*v44])
    {
      goto LABEL_119;
    }

LABEL_107:
    ++v44;
  }

  if (*k)
  {
    goto LABEL_107;
  }

  *&v151 = *(&v145 + 1);
  if (SLODWORD(v17) < *(*(&v145 + 1) + 54))
  {
    v46 = *(*(*(&v145 + 1) + 8) + 16 * (LODWORD(v17) & 0x7FFFFFFF));
    v47 = *(&v149 + 1);
    if (v46 && *(&v149 + 1) != 0)
    {
      if (**(&v149 + 1) == v46)
      {
        v50 = &v149 + 1;
LABEL_170:
        *v50 = v47[3];
        v47[3] = v150;
        *&v150 = v47;
        ++DWORD2(v150);
        v41 = *(&v145 + 1);
      }

      else
      {
        while (1)
        {
          v49 = v47;
          v47 = v47[3];
          if (!v47)
          {
            break;
          }

          if (*v47 == v46)
          {
            v50 = v49 + 3;
            goto LABEL_170;
          }
        }
      }
    }
  }

  if ((HIDWORD(v150) & 0x80000000) != 0)
  {
    v76 = *(&v149 + 1);
    if (*(&v149 + 1))
    {
      if (**(&v149 + 1) == v41 + 52)
      {
        v78 = &v149 + 1;
LABEL_178:
        *v78 = v76[3];
        v76[3] = v150;
        *&v150 = v76;
        ++DWORD2(v150);
        v41 = *(&v145 + 1);
      }

      else
      {
        while (1)
        {
          v77 = v76;
          v76 = v76[3];
          if (!v76)
          {
            break;
          }

          if (*v76 == v41 + 52)
          {
            v78 = v77 + 3;
            goto LABEL_178;
          }
        }
      }
    }
  }

  sub_181959CE8(&v121, *(v41 + 32));
  for (m = *(*(&v145 + 1) + 16); m; m = *(m + 40))
  {
    v83 = *(m + 80);
    if (v83)
    {
      v84 = *v83;
      if (*v83 >= 1)
      {
        for (n = (v83 + 2); ; n += 3)
        {
          if (*n)
          {
            if (sub_181959BA0(&v121, *n))
            {
              v86 = 1;
            }

            else
            {
              v86 = v84 <= 1;
            }

            if (v86)
            {
              break;
            }
          }

          else if (v84 < 2)
          {
            break;
          }

          --v84;
        }
      }
    }
  }

  for (ii = v146; ii; ii = *(ii + 40))
  {
    v87 = *(ii + 80);
    if (v87)
    {
      v88 = *v87;
      if (*v87 >= 1)
      {
        for (jj = (v87 + 2); ; jj += 3)
        {
          if (*jj)
          {
            if (sub_181959BA0(&v121, *jj))
            {
              v90 = 1;
            }

            else
            {
              v90 = v88 <= 1;
            }

            if (v90)
            {
              break;
            }
          }

          else if (v88 < 2)
          {
            break;
          }

          --v88;
        }
      }
    }
  }

  v41 = *(&v145 + 1);
  if (*(*(&v145 + 1) + 54) >= 1)
  {
    v81 = 0;
    v82 = 12;
    do
    {
      v91 = *(*(v41 + 8) + v82);
      if (*(*(v41 + 8) + v82))
      {
        if (!*(v41 + 63))
        {
          v92 = *(v41 + 80);
          if (v92)
          {
            if (*v92 >= v91)
            {
              v93 = *&v92[6 * (v91 - 1) + 2];
              if (v93)
              {
                sub_181959BA0(&v121, v93);
                v41 = *(&v145 + 1);
              }
            }
          }
        }
      }

      ++v81;
      v82 += 16;
    }

    while (v81 < *(v41 + 54));
  }

  v51 = 1;
  v37 = v118;
LABEL_217:
  v94 = *(v41 + 72);
  v21 = v117;
  if (v94)
  {
    v95 = DWORD2(v150);
    v96 = v150;
    while (1)
    {
      v97 = *(v94 + 40);
      if (v97 >= 1)
      {
        break;
      }

LABEL_219:
      v94 = *(v94 + 8);
      if (!v94)
      {
        goto LABEL_254;
      }
    }

    v98 = 0;
    v99 = v94 + 64;
LABEL_224:
    if (v51)
    {
      v100 = (v99 + 16 * v98);
      v101 = *(&v149 + 1);
      if (*v100 == LODWORD(v17) && *(&v149 + 1) != 0)
      {
        v103 = &v149 + 1;
        if (**(&v149 + 1) == v100)
        {
LABEL_233:
          *v103 = v101[3];
          v101[3] = v96;
          *&v150 = v101;
          DWORD2(v150) = ++v95;
          v96 = v101;
        }

        else
        {
          while (1)
          {
            v104 = v101;
            v101 = v101[3];
            if (!v101)
            {
              break;
            }

            if (*v101 == v100)
            {
              v103 = v104 + 3;
              goto LABEL_233;
            }
          }
        }
      }
    }

    v105 = *(v94 + 16);
    if (!v105)
    {
      goto LABEL_223;
    }

    for (kk = v15; ; ++kk)
    {
      if (*v105 == *kk)
      {
        if (!*v105)
        {
          v107 = *(v99 + 16 * v98 + 8);
          if (v107)
          {
            v108 = v31 == 0;
          }

          else
          {
            v108 = 1;
          }

          if (v108)
          {
            goto LABEL_223;
          }

          v109 = 0;
          while (2)
          {
            if (*(v107 + v109) != *(v31 + v109))
            {
              if (byte_181A20298[*(v107 + v109)] != byte_181A20298[*(v31 + v109)])
              {
                goto LABEL_223;
              }

LABEL_246:
              ++v109;
              continue;
            }

            break;
          }

          if (*(v107 + v109))
          {
            goto LABEL_246;
          }

          v110 = *(&v149 + 1);
          if (*(&v149 + 1))
          {
            v111 = &v149 + 1;
            if (**(&v149 + 1) == v107)
            {
LABEL_222:
              *v111 = v110[3];
              v110[3] = v96;
              *&v150 = v110;
              DWORD2(v150) = ++v95;
              v96 = v110;
            }

            else
            {
              while (1)
              {
                v112 = v110;
                v110 = v110[3];
                if (!v110)
                {
                  break;
                }

                if (*v110 == v107)
                {
                  v111 = v112 + 3;
                  goto LABEL_222;
                }
              }
            }
          }

LABEL_223:
          if (++v98 >= v97)
          {
            goto LABEL_219;
          }

          goto LABEL_224;
        }
      }

      else if (byte_181A20298[*v105] != byte_181A20298[*kk])
      {
        goto LABEL_223;
      }

      ++v105;
    }
  }

LABEL_254:
  v33 = sub_1819980F8(a1, &v150, v116, v21, v119);
LABEL_255:
  if (v33)
  {
    if (v33 == 1 && (*(v6 + 48) & 0x10000001) == 1)
    {
      sqlite3_result_value(a1, *a3);
    }

    else if (*(&v124 + 1))
    {
      sub_181998584(a1, &byte_181A2878D, *(a3 + 8), *(a3 + 16), &v124);
    }

    else if (a1)
    {
      *(a1 + 9) = v33;
      if (*(*a1 + 20))
      {
        switch(v33)
        {
          case 516:
            v115 = "abort due to ROLLBACK";
            break;
          case 101:
            v115 = "no more rows available";
            break;
          case 100:
            v115 = "another row available";
            break;
          default:
            if (v33 > 0x1Cu || ((0x1410004uLL >> v33) & 1) != 0)
            {
              v115 = "unknown error";
            }

            else
            {
              v115 = off_1E6A27DD8[v33];
            }

            break;
        }

        sub_18190B23C(a1, v115, -1, 1, 0);
      }
    }
  }

  result = sub_1819986E4(&v124, v34, v35, v36);
  v113 = v150;
  if (v150)
  {
    do
    {
      v114 = v113[3];
      result = sub_181929C84(v6, v113);
      v113 = v114;
    }

    while (v114);
  }

  *(v6 + 528) = v37;
  if (!*(v6 + 111))
  {
    return sub_181932CD8(v6);
  }

  return result;
}

uint64_t sub_181995BDC(sqlite3_context *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = *(*a1 + 24);
    v7 = *a3;
    if (!*a3)
    {
LABEL_12:
      v9 = 0;
      v10 = a3[3];
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v6 = 0;
    v7 = *a3;
    if (!*a3)
    {
      goto LABEL_12;
    }
  }

  v8 = *(v7 + 20);
  if ((~v8 & 0x202) != 0 || *(v7 + 22) != 1)
  {
    if (v8)
    {
      goto LABEL_12;
    }

    v9 = sub_18193CB70(v7, 1, a3, a4);
    v10 = a3[3];
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v9 = *(v7 + 8);
    v10 = a3[3];
    if (!v10)
    {
      goto LABEL_20;
    }
  }

LABEL_13:
  v11 = *(v10 + 20);
  if ((~v11 & 0x202) == 0 && *(v10 + 22) == 1)
  {
    v12 = *(v10 + 8);
    v13 = a3[4];
    if (!v13)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  if (v11)
  {
LABEL_20:
    v12 = 0;
    v13 = a3[4];
    if (!v13)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v12 = sub_18193CB70(v10, 1, a3, a4);
  v13 = a3[4];
  if (!v13)
  {
LABEL_28:
    v15 = 0;
    v16 = a3[5];
    if (!v16)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

LABEL_21:
  v14 = *(v13 + 20);
  if ((~v14 & 0x202) != 0 || *(v13 + 22) != 1)
  {
    if (v14)
    {
      goto LABEL_28;
    }

    v15 = sub_18193CB70(v13, 1, a3, a4);
    v16 = a3[5];
    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v15 = *(v13 + 8);
    v16 = a3[5];
    if (!v16)
    {
      goto LABEL_37;
    }
  }

LABEL_29:
  v17 = *(v16 + 20);
  if ((~v17 & 0x202) != 0 || *(v16 + 22) != 1)
  {
    if ((v17 & 1) == 0)
    {
      v18 = sub_18193CB70(v16, 1, a3, a4);
      result = a3[6];
      if (result)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

LABEL_37:
    v18 = 0;
    result = a3[6];
    if (result)
    {
      goto LABEL_38;
    }

LABEL_35:
    result = sub_1819012D0(92237);
LABEL_36:
    LODWORD(v20) = 0;
    goto LABEL_40;
  }

  v18 = *(v16 + 8);
  result = a3[6];
  if (!result)
  {
    goto LABEL_35;
  }

LABEL_38:
  v21 = *(result + 20);
  if ((v21 & 0x24) != 0)
  {
    v20 = *result;
    goto LABEL_40;
  }

  if ((v21 & 8) == 0)
  {
    if ((v21 & 0x12) != 0 && *(result + 8))
    {
      result = sub_18193CFCC(result);
      LODWORD(v20) = result;
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  v32 = *result;
  if (*result >= -9.22337204e18)
  {
    if (v32 <= 9.22337204e18)
    {
      *&v20 = v32;
    }

    else
    {
      LODWORD(v20) = -1;
    }
  }

  else
  {
    LODWORD(v20) = 0;
  }

LABEL_40:
  if (!v12 || !v15 || !v18)
  {
    return result;
  }

  v22 = 0uLL;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v23 = *(v6 + 528);
  *(v6 + 528) = 0;
  if (!*(v6 + 111))
  {
    sub_181932C40(v6);
    v22 = 0uLL;
  }

  v82 = v22;
  v84 = *(&v22 + 1);
  v83 = sub_181917F20(v6, v15, v9);
  v81[3] = 0;
  v81[4] = 0;
  v81[0] = &v85;
  v81[1] = sub_181998814;
  v81[2] = sub_1819988B0;
  v81[5] = &v82;
  v24 = sub_1819972A8(&v85, v9, v6, v12, SLODWORD(v20));
  if (!v24)
  {
    v28 = *(v6 + 48);
    v29 = *(&v106 + 1);
    if (!*(&v106 + 1))
    {
      if (v107)
      {
        v33 = *v107;
        if (*v107)
        {
          v34 = *(&v110 + 1);
          if (*(&v110 + 1))
          {
            if (**(&v110 + 1) == v33)
            {
              v36 = &v110 + 1;
            }

            else
            {
              do
              {
                v35 = v34;
                v34 = v34[3];
                if (!v34)
                {
                  goto LABEL_116;
                }
              }

              while (*v34 != v33);
              v36 = v35 + 3;
            }

            *v36 = v34[3];
            v34[3] = v82;
            *&v82 = v34;
            ++DWORD2(v82);
          }
        }

LABEL_116:
        if ((v28 & 0x4000000) == 0)
        {
          v57 = *(v107 + 72);
          if (v57)
          {
            sub_181959BA0(v81, v57);
          }
        }

        goto LABEL_156;
      }

      v50 = *(&v107 + 1);
      v51 = *(*(&v107 + 1) + 8);
      if (!v51)
      {
        goto LABEL_123;
      }

      for (i = 0; ; ++i)
      {
        if (*(v51 + i) == v15[i])
        {
          if (!*(v51 + i))
          {
            v53 = *(&v110 + 1);
            if (*(v83 + 96) == *(*(&v107 + 1) + 48) && *(&v110 + 1) != 0)
            {
              if (**(&v110 + 1) == v51)
              {
                v56 = &v110 + 1;
LABEL_122:
                *v56 = v53[3];
                v53[3] = v82;
                *&v82 = v53;
                ++DWORD2(v82);
              }

              else
              {
                while (1)
                {
                  v55 = v53;
                  v53 = v53[3];
                  if (!v53)
                  {
                    break;
                  }

                  if (*v53 == v51)
                  {
                    v56 = v55 + 3;
                    goto LABEL_122;
                  }
                }
              }
            }

LABEL_123:
            if ((v28 & 0x4000000) != 0)
            {
              goto LABEL_156;
            }

            v24 = sub_1819977A4(&v85);
            if (v24)
            {
              goto LABEL_157;
            }

            sub_181997F38(v81, v50);
            v58 = *(v50 + 56);
            if (!v58)
            {
              goto LABEL_156;
            }

            v59 = DWORD2(v82);
            v60 = v82;
LABEL_128:
            v61 = v58[3];
            if (!v61)
            {
              goto LABEL_140;
            }

            for (j = 0; ; ++j)
            {
              if (*(v61 + j) == v15[j])
              {
                if (!*(v61 + j))
                {
                  v63 = *(&v110 + 1);
                  if (*(&v110 + 1))
                  {
                    v64 = &v110 + 1;
                    if (**(&v110 + 1) != v61)
                    {
                      do
                      {
                        v65 = v63;
                        v63 = v63[3];
                        if (!v63)
                        {
                          goto LABEL_140;
                        }
                      }

                      while (*v63 != v61);
                      v64 = v65 + 3;
                    }

                    *v64 = v63[3];
                    v63[3] = v60;
                    *&v82 = v63;
                    DWORD2(v82) = ++v59;
                    v60 = v63;
                  }

LABEL_140:
                  v66 = v58[4];
                  if (!v66)
                  {
                    goto LABEL_127;
                  }

                  v67 = *v66;
                  if (*v66 < 1)
                  {
                    goto LABEL_127;
                  }

                  v68 = 0;
                  while (2)
                  {
                    v69 = *&v66[18 * v68 + 2];
                    if (!v69)
                    {
                      goto LABEL_144;
                    }

                    v70 = 0;
                    while (2)
                    {
                      if (*(v69 + v70) != v15[v70])
                      {
                        if (byte_181A20298[*(v69 + v70)] != byte_181A20298[v15[v70]])
                        {
                          goto LABEL_144;
                        }

LABEL_148:
                        ++v70;
                        continue;
                      }

                      break;
                    }

                    if (*(v69 + v70))
                    {
                      goto LABEL_148;
                    }

                    v71 = *(&v110 + 1);
                    if (*(&v110 + 1))
                    {
                      v72 = &v110 + 1;
                      if (**(&v110 + 1) != v69)
                      {
                        do
                        {
                          v73 = v71;
                          v71 = v71[3];
                          if (!v71)
                          {
                            goto LABEL_144;
                          }
                        }

                        while (*v71 != v69);
                        v72 = v73 + 3;
                      }

                      *v72 = v71[3];
                      v71[3] = v60;
                      *&v82 = v71;
                      DWORD2(v82) = ++v59;
                      v66 = v58[4];
                      v67 = *v66;
                      v60 = v71;
                    }

LABEL_144:
                    if (++v68 < v67)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_127:
                  v58 = v58[10];
                  if (!v58)
                  {
                    goto LABEL_156;
                  }

                  goto LABEL_128;
                }
              }

              else if (byte_181A20298[*(v61 + j)] != byte_181A20298[v15[j]])
              {
                goto LABEL_140;
              }
            }
          }
        }

        else if (byte_181A20298[*(v51 + i)] != byte_181A20298[v15[i]])
        {
          goto LABEL_123;
        }
      }
    }

    v30 = *(*(&v106 + 1) + 63);
    if (v30 != 2)
    {
      if ((((*(v6 + 48) & 0x4000) == 0) & (*(v6 + 48) >> 26)) != 0)
      {
        goto LABEL_84;
      }

      if (v30 == 1)
      {
        goto LABEL_84;
      }

      v37 = *(*(&v106 + 1) + 72);
      if (!v37)
      {
        goto LABEL_84;
      }

      v38 = DWORD2(v82);
      v39 = v82;
LABEL_73:
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_72;
      }

      for (k = 0; ; ++k)
      {
        if (*(v40 + k) == v15[k])
        {
          if (!*(v40 + k))
          {
            v42 = *(&v110 + 1);
            if (*(&v110 + 1))
            {
              v43 = &v110 + 1;
              if (**(&v110 + 1) != v40)
              {
                do
                {
                  v44 = v42;
                  v42 = v42[3];
                  if (!v42)
                  {
                    goto LABEL_72;
                  }
                }

                while (*v42 != v40);
                v43 = v44 + 3;
              }

              *v43 = v42[3];
              v42[3] = v39;
              *&v82 = v42;
              DWORD2(v82) = ++v38;
              v39 = v42;
            }

LABEL_72:
            v37 = *(v37 + 8);
            if (v37)
            {
              goto LABEL_73;
            }

LABEL_84:
            v45 = *v29;
            if (!*v29)
            {
              goto LABEL_156;
            }

            for (m = 0; ; ++m)
            {
              if (v15[m] == *(v45 + m))
              {
                if (!v15[m])
                {
                  v83 = v29;
                  if ((v28 & 0x4000000) == 0)
                  {
                    sub_181959CE8(v81, *(v29 + 32));
                    v45 = *v29;
                  }

                  if (v45)
                  {
                    v47 = *(&v110 + 1);
                    if (*(&v110 + 1))
                    {
                      if (**(&v110 + 1) == v45)
                      {
                        v49 = &v110 + 1;
LABEL_120:
                        *v49 = v47[3];
                        v47[3] = v82;
                        *&v82 = v47;
                        ++DWORD2(v82);
                      }

                      else
                      {
                        while (1)
                        {
                          v48 = v47;
                          v47 = v47[3];
                          if (!v47)
                          {
                            break;
                          }

                          if (*v47 == v45)
                          {
                            v49 = v48 + 3;
                            goto LABEL_120;
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_156;
                }
              }

              else if (byte_181A20298[v15[m]] != byte_181A20298[*(v45 + m)])
              {
                goto LABEL_156;
              }
            }
          }
        }

        else if (byte_181A20298[*(v40 + k)] != byte_181A20298[v15[k]])
        {
          goto LABEL_72;
        }
      }
    }

    if ((v28 & 0x4000000) != 0)
    {
      goto LABEL_156;
    }

    v31 = *(*(&v106 + 1) + 64);
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    v77 = &v85;
    *(v31 + 4) &= ~0x200000u;
    sub_18195FBC4(&v85, *(v29 + 64), &v77);
    if (!DWORD1(v88))
    {
      sub_1818AEE70(v81, *(v29 + 64));
      goto LABEL_156;
    }

    v24 = DWORD2(v86);
    if (!DWORD2(v86))
    {
LABEL_156:
      v24 = sub_1819980F8(a1, &v82, v12, v18, 1);
    }
  }

LABEL_157:
  if (v24)
  {
    if (v24 == 1 && (*(v6 + 48) & 0x10000001) == 1)
    {
      sqlite3_result_value(a1, a3[3]);
    }

    else if (*(&v85 + 1))
    {
      sub_181998584(a1, &byte_181A2878D, a3[1], a3[2], &v85);
    }

    else if (a1)
    {
      *(a1 + 9) = v24;
      if (*(*a1 + 20))
      {
        switch(v24)
        {
          case 516:
            v76 = "abort due to ROLLBACK";
            break;
          case 101:
            v76 = "no more rows available";
            break;
          case 100:
            v76 = "another row available";
            break;
          default:
            if (v24 > 0x1Cu || ((0x1410004uLL >> v24) & 1) != 0)
            {
              v76 = "unknown error";
            }

            else
            {
              v76 = off_1E6A27DD8[v24];
            }

            break;
        }

        sub_18190B23C(a1, v76, -1, 1, 0);
      }
    }
  }

  result = sub_1819986E4(&v85, v25, v26, v27);
  v74 = v82;
  if (v82)
  {
    do
    {
      v75 = v74[3];
      result = sub_181929C84(v6, v74);
      v74 = v75;
    }

    while (v75);
  }

  if (!*(v6 + 111))
  {
    result = sub_181932CD8(v6);
  }

  *(v6 + 528) = v23;
  return result;
}

uint64_t sub_1819964F4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = *(*a1 + 24);
    v7 = *a3;
    if (!*a3)
    {
LABEL_12:
      v9 = 0;
      v10 = a3[1];
      if (!v10)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v6 = 0;
    v7 = *a3;
    if (!*a3)
    {
      goto LABEL_12;
    }
  }

  v8 = *(v7 + 20);
  if ((~v8 & 0x202) != 0 || *(v7 + 22) != 1)
  {
    if (v8)
    {
      goto LABEL_12;
    }

    v9 = sub_18193CB70(v7, 1, a3, a4);
    v10 = a3[1];
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v9 = *(v7 + 8);
    v10 = a3[1];
    if (!v10)
    {
      goto LABEL_21;
    }
  }

LABEL_13:
  v11 = *(v10 + 20);
  if ((~v11 & 0x202) != 0 || *(v10 + 22) != 1)
  {
    if ((v11 & 1) == 0)
    {
      v12 = sub_18193CB70(v10, 1, a3, a4);
      v13 = a3[4];
      if (v13)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

LABEL_21:
    v12 = 0;
    v13 = a3[4];
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_19:
    sub_1819012D0(92237);
LABEL_20:
    LODWORD(v14) = 0;
    goto LABEL_24;
  }

  v12 = *(v10 + 8);
  v13 = a3[4];
  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_22:
  v15 = *(v13 + 20);
  if ((v15 & 0x24) != 0)
  {
    v14 = *v13;
  }

  else if ((v15 & 8) != 0)
  {
    v36 = *v13;
    if (*v13 >= -9.22337204e18)
    {
      if (v36 <= 9.22337204e18)
      {
        *&v14 = v36;
      }

      else
      {
        LODWORD(v14) = -1;
      }
    }

    else
    {
      LODWORD(v14) = 0;
    }
  }

  else
  {
    if ((v15 & 0x12) == 0 || !*(v13 + 8))
    {
      goto LABEL_20;
    }

    LODWORD(v14) = sub_18193CFCC(v13);
  }

LABEL_24:
  v16 = *(v6 + 48);
  v17 = a3[5];
  if (!v17)
  {
    goto LABEL_33;
  }

  v18 = *(v17 + 20);
  if ((~v18 & 0x202) != 0 || *(v17 + 22) != 1)
  {
    if ((v18 & 1) == 0)
    {
      v19 = sub_18193CB70(v17, 1, a3, a4);
      v20 = a3[6];
      if (v20)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }

LABEL_33:
    v19 = 0;
    v20 = a3[6];
    if (v20)
    {
      goto LABEL_34;
    }

LABEL_31:
    sub_1819012D0(92237);
LABEL_32:
    result = 0;
    goto LABEL_36;
  }

  v19 = *(v17 + 8);
  v20 = a3[6];
  if (!v20)
  {
    goto LABEL_31;
  }

LABEL_34:
  v22 = *(v20 + 10);
  if ((v22 & 0x24) != 0)
  {
    result = *v20;
    goto LABEL_36;
  }

  if ((v22 & 8) == 0)
  {
    if ((v22 & 0x12) != 0 && *(v20 + 1))
    {
      result = sub_18193CFCC(v20);
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v37 = *v20;
  if (*v20 >= -9.22337204e18)
  {
    if (v37 <= 9.22337204e18)
    {
      result = v37;
    }

    else
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    result = 0x8000000000000000;
  }

LABEL_36:
  v23 = *(v6 + 528);
  *(v6 + 528) = 0;
  if (v9 && v12)
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    v24 = *(v6 + 48);
    if (result)
    {
      *(v6 + 48) = v24 & 0xFFFFFFFF9FFFFFFFLL;
    }

    v25 = sub_1819972A8(&v52, v9, v6, v12, SLODWORD(v14));
    *(v6 + 48) = v24;
    if (v25)
    {
      goto LABEL_41;
    }

    if ((v16 & 0x4000000) == 0 && *(&v73 + 1) && *(*(&v73 + 1) + 63) == 2)
    {
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      v48 = &v52;
      sub_18195FBC4(&v52, *(*(&v73 + 1) + 64), &v48);
      if (DWORD1(v55))
      {
        v29 = DWORD2(v53) == 0;
      }

      else
      {
        v29 = 1;
      }

      if (v29)
      {
        goto LABEL_106;
      }

      goto LABEL_41;
    }

    v31 = *(&v74 + 1);
    if (*(&v74 + 1))
    {
      if ((v16 & 0x4000000) == 0)
      {
        if (sub_1819977A4(&v52))
        {
LABEL_41:
          if (v19 && (*(v6 + 48) & 0x10000001) != 1)
          {
            sub_181998584(a1, v19, a3[2], a3[3], &v52);
          }

          goto LABEL_106;
        }

        v31 = *(&v74 + 1);
      }

      v32 = *(v31 + 48);
      if (v32)
      {
        v33 = (*(v6 + 32) + 24);
        v34 = -1;
        do
        {
          v35 = *v33;
          v33 += 4;
          ++v34;
        }

        while (v35 != v32);
      }

      else
      {
        v34 = -32768;
      }

      v38 = *(v6 + 40);
      v39 = __OFSUB__(v38, 1);
      v40 = (v38 - 1);
      if (v40 < 0 == v39)
      {
        v41 = (*(v6 + 32) + 32 * v40);
        do
        {
          v42 = *v41;
          if (*v41)
          {
            for (i = v9; ; ++i)
            {
              if (*v42 == *i)
              {
                if (!*v42)
                {
                  goto LABEL_101;
                }
              }

              else if (byte_181A20298[*v42] != byte_181A20298[*i])
              {
                break;
              }

              ++v42;
            }
          }

          if (!v40)
          {
            v45 = "main";
            for (j = v9; ; ++j)
            {
              if (*v45 == *j)
              {
                if (!*v45)
                {
                  LODWORD(v40) = 0;
                  goto LABEL_101;
                }
              }

              else if (byte_181A20298[*v45] != byte_181A20298[*j])
              {
                break;
              }

              ++v45;
            }
          }

          v41 -= 4;
          v44 = v40 <= 0;
          LODWORD(v40) = v40 - 1;
        }

        while (!v44);
        LODWORD(v40) = -1;
        if (!a1)
        {
          goto LABEL_106;
        }

        goto LABEL_102;
      }

LABEL_101:
      if (a1)
      {
LABEL_102:
        if (v34 == v40)
        {
          v47 = *a1;
          if ((*(*a1 + 20) & 0x9000) != 0)
          {
            sub_18193D288(v47, 1);
          }

          else
          {
            *v47 = 1;
            *(v47 + 20) = 4;
          }
        }
      }
    }

LABEL_106:
    result = sub_1819986E4(&v52, v26, v27, v28);
  }

  *(v6 + 528) = v23;
  return result;
}

void sub_1819969D8(_DWORD *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = *(*a1 + 24);
    v7 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1819012D0(92237);
    goto LABEL_7;
  }

  v6 = 0;
  v7 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = *(v7 + 20);
  if ((v8 & 0x24) != 0)
  {
    LODWORD(v9) = *v7;
    goto LABEL_8;
  }

  if ((v8 & 8) == 0)
  {
    if ((v8 & 0x12) != 0 && *(v7 + 8))
    {
      LODWORD(v9) = sub_18193CFCC(v7);
      goto LABEL_8;
    }

LABEL_7:
    LODWORD(v9) = 0;
    goto LABEL_8;
  }

  v16 = *v7;
  if (*v7 >= -9.22337204e18)
  {
    if (v16 <= 9.22337204e18)
    {
      v9 = v16;
    }

    else
    {
      LODWORD(v9) = -1;
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

LABEL_8:
  v10 = a3[1];
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = *(v10 + 20);
  if ((~v11 & 0x202) != 0 || *(v10 + 22) != 1)
  {
    if ((v11 & 1) == 0)
    {
      v12 = sub_18193CB70(v10, 1, a3, a4);
      v13 = a3[2];
      if (v13)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

LABEL_17:
    v12 = 0;
    v13 = a3[2];
    if (v13)
    {
      goto LABEL_18;
    }

LABEL_15:
    sub_1819012D0(92237);
LABEL_16:
    LODWORD(v14) = 0;
    goto LABEL_35;
  }

  v12 = *(v10 + 8);
  v13 = a3[2];
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_18:
  v15 = *(v13 + 20);
  if ((v15 & 0x24) != 0)
  {
    v14 = *v13;
  }

  else if ((v15 & 8) != 0)
  {
    LODWORD(v17) = -1;
    if (*v13 <= 9.22337204e18)
    {
      v17 = *v13;
    }

    if (*v13 >= -9.22337204e18)
    {
      LODWORD(v14) = v17;
    }

    else
    {
      LODWORD(v14) = 0;
    }
  }

  else
  {
    if ((v15 & 0x12) == 0 || !*(v13 + 8))
    {
      goto LABEL_16;
    }

    LODWORD(v14) = sub_18193CFCC(v13);
  }

LABEL_35:
  v18 = *(*(v6 + 32) + 32 * v9);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  v19 = *(v6 + 528);
  *(v6 + 528) = 0;
  v23 = sub_1819972A8(v38, v18, v6, v12, v9 == 1);
  if (!v23)
  {
    if (*(&v39 + 1))
    {
      v24 = *(*(&v39 + 1) + 54);
      v25 = v24 - 1;
      if (v24 != 1 && SLODWORD(v14) < v24)
      {
        v26 = 0;
        v27 = (*(*(&v39 + 1) + 8) + 16 * SLODWORD(v14));
        v28 = *(&v43 + 1);
        if (*v27 && *(&v43 + 1))
        {
          v26 = *(&v43 + 1);
          do
          {
            if (*v26 == *v27)
            {
              break;
            }

            v26 = v26[3];
          }

          while (v26);
        }

        if (v25 <= SLODWORD(v14))
        {
          v30 = &v12[*(*(&v39 + 1) + 64)];
          v31 = v26[1];
          for (i = *v31; *v31; i = *v31)
          {
            if (i == 44)
            {
              break;
            }

            v26[1] = --v31;
          }
        }

        else
        {
          while (*v28 != v27[2])
          {
            v28 = v28[3];
          }

          v30 = v28[1];
          v31 = v26[1];
        }

        v36 = sub_1818A8BAC(v6, "%.*s%s", v31 - v12, v12, v30);
        if (a1)
        {
          sub_18190B23C(a1, v36, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
        }

        if (!v36)
        {
          goto LABEL_75;
        }

        v37 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v36);
          --qword_1ED456A90;
          off_1ED452EB0(v36);
          v36 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_75;
          }

          v37 = &xmmword_1ED452F28;
        }

        (*v37)(v36);
LABEL_75:
        sub_1819986E4(v38, v33, v34, v35);
        *(v6 + 528) = v19;
        return;
      }
    }

    v23 = sub_18190EDA8(128391);
  }

  sub_1819986E4(v38, v20, v21, v22);
  *(v6 + 528) = v19;
  if (a1)
  {
    a1[9] = v23;
    if (*(*a1 + 20))
    {
      switch(v23)
      {
        case 516:
          v29 = "abort due to ROLLBACK";
          break;
        case 101:
          v29 = "no more rows available";
          break;
        case 100:
          v29 = "another row available";
          break;
        default:
          if (v23 > 0x1Cu || ((0x1410004uLL >> v23) & 1) != 0)
          {
            v29 = "unknown error";
          }

          else
          {
            v29 = off_1E6A27DD8[v23];
          }

          break;
      }

      sub_18190B23C(a1, v29, -1, 1, 0);
    }
  }
}

void sub_181996E38(sqlite3_context *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = *(*a1 + 24);
    v7 = *a3;
    if (!*a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    v7 = *a3;
    if (!*a3)
    {
      goto LABEL_12;
    }
  }

  v8 = *(v7 + 20);
  if ((~v8 & 0x202) == 0 && *(v7 + 22) == 1)
  {
    v9 = *(v7 + 8);
    v10 = a3[1];
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if ((v8 & 1) == 0)
  {
    v9 = sub_18193CB70(v7, 1, a3, a4);
    v10 = a3[1];
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = 0;
  v10 = a3[1];
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_13:
  v11 = *(v10 + 20);
  if ((~v11 & 0x202) != 0 || *(v10 + 22) != 1)
  {
    if ((v11 & 1) == 0)
    {
      v12 = sub_18193CB70(v10, 1, a3, a4);
      goto LABEL_19;
    }

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  v12 = *(v10 + 8);
LABEL_19:
  v13 = *(v6 + 528);
  *(v6 + 528) = 0;
  if (!*(v6 + 111))
  {
    sub_181932C40(v6);
  }

  if (!v9 || !v12)
  {
    goto LABEL_90;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = sub_1819972A8(&v41, v9, v6, v12, 0);
  if (v14)
  {
    goto LABEL_73;
  }

  memset(v40, 0, sizeof(v40));
  v39[3] = 0;
  v39[4] = 0;
  v39[0] = &v41;
  v39[1] = sub_1819989A4;
  v39[2] = sub_18199776C;
  v39[5] = v40;
  v18 = *(&v62 + 1);
  if (!*(&v62 + 1))
  {
    v21 = v63;
    if (!v63)
    {
      v20 = sub_1819977A4(&v41);
      if (!v20)
      {
        sub_181997F38(v39, *(&v63 + 1));
        goto LABEL_69;
      }

      goto LABEL_70;
    }

    v22 = *(v63 + 80);
    if (v22)
    {
      v23 = *v22;
      if (*v22 >= 1)
      {
        for (i = (v22 + 2); ; i += 3)
        {
          if (*i)
          {
            if (sub_181959BA0(v39, *i))
            {
              v25 = 1;
            }

            else
            {
              v25 = v23 <= 1;
            }

            if (v25)
            {
LABEL_43:
              v21 = v63;
              break;
            }
          }

          else if (v23 < 2)
          {
            goto LABEL_43;
          }

          --v23;
        }
      }
    }

    v26 = *(v21 + 72);
    if (v26)
    {
      sub_181959BA0(v39, v26);
    }

    goto LABEL_69;
  }

  if (*(*(&v62 + 1) + 63) == 2)
  {
    v19 = *(*(&v62 + 1) + 64);
    *(v19 + 4) &= ~0x200000u;
    DWORD2(v42) = 0;
    sub_18195FBC4(&v41, v19, 0);
    if (*(v6 + 103))
    {
      v20 = 7;
    }

    else
    {
      v20 = DWORD2(v42);
    }

    if (!v20)
    {
      sub_1818AEE70(v39, v19);
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  v27 = *(*(&v62 + 1) + 32);
  if (!v27)
  {
    goto LABEL_58;
  }

  v28 = *v27;
  if (*v27 < 1)
  {
    goto LABEL_58;
  }

  for (j = (v27 + 2); !*j; j += 3)
  {
    if (v28 < 2)
    {
      goto LABEL_57;
    }

LABEL_50:
    --v28;
  }

  if (sub_181959BA0(v39, *j))
  {
    v30 = 1;
  }

  else
  {
    v30 = v28 <= 1;
  }

  if (!v30)
  {
    goto LABEL_50;
  }

LABEL_57:
  v18 = *(&v62 + 1);
LABEL_58:
  if (*(v18 + 54) >= 1)
  {
    v31 = 0;
    v32 = 12;
    do
    {
      v33 = *(*(v18 + 8) + v32);
      if (*(*(v18 + 8) + v32))
      {
        if (!*(v18 + 63))
        {
          v34 = *(v18 + 80);
          if (v34)
          {
            if (*v34 >= v33)
            {
              v35 = *&v34[6 * (v33 - 1) + 2];
              if (v35)
              {
                sub_181959BA0(v39, v35);
                v18 = *(&v62 + 1);
              }
            }
          }
        }
      }

      ++v31;
      v32 += 16;
    }

    while (v31 < *(v18 + 54));
  }

LABEL_69:
  v20 = sub_1819980F8(a1, v40, v12, 0, 0);
LABEL_70:
  v36 = v20;
  v15 = *&v40[0];
  if (*&v40[0])
  {
    do
    {
      v37 = *(v15 + 3);
      sub_181929C84(v6, v15);
      v15 = v37;
    }

    while (v37);
  }

  v14 = v36;
  if (v36)
  {
LABEL_73:
    if (v14 == 1 && (*(v6 + 48) & 0x10000001) == 1)
    {
      sqlite3_result_value(a1, a3[1]);
    }

    else if (a1)
    {
      *(a1 + 9) = v14;
      if (*(*a1 + 20))
      {
        switch(v14)
        {
          case 516:
            v38 = "abort due to ROLLBACK";
            break;
          case 101:
            v38 = "no more rows available";
            break;
          case 100:
            v38 = "another row available";
            break;
          default:
            if (v14 > 0x1Cu || ((0x1410004uLL >> v14) & 1) != 0)
            {
              v38 = "unknown error";
            }

            else
            {
              v38 = off_1E6A27DD8[v14];
            }

            break;
        }

        sub_18190B23C(a1, v38, -1, 1, 0);
      }
    }
  }

  sub_1819986E4(&v41, v15, v16, v17);
LABEL_90:
  *(v6 + 528) = v13;
  if (!*(v6 + 111))
  {
    sub_181932CD8(v6);
  }
}

uint64_t sub_1819972A8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, int a5)
{
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 408) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 216) = *(a3 + 344);
  *(a3 + 344) = a1;
  *a1 = a3;
  if (*(a3 + 103))
  {
    sub_181910730(a1, "out of memory");
  }

  if (!a4)
  {
    return 7;
  }

  v10 = *a4;
  if (!*a4)
  {
    v20 = 0;
    v18 = "CREATE ";
    goto LABEL_33;
  }

  if ((v10 & 0xFFFFFFDF) != 0x43)
  {
    v17 = &byte_181A20298[v10];
    v18 = "CREATE ";
LABEL_32:
    v20 = *v17;
    goto LABEL_33;
  }

  v11 = a4[1];
  if (!a4[1])
  {
    v20 = 0;
    v18 = "REATE ";
    goto LABEL_33;
  }

  if ((v11 & 0xFFFFFFDF) != 0x52)
  {
    v17 = &byte_181A20298[v11];
    v18 = "REATE ";
    goto LABEL_32;
  }

  v12 = a4[2];
  if (!a4[2])
  {
    v20 = 0;
    v18 = "EATE ";
    goto LABEL_33;
  }

  if ((v12 & 0xFFFFFFDF) != 0x45)
  {
    v17 = &byte_181A20298[v12];
    v18 = "EATE ";
    goto LABEL_32;
  }

  v13 = a4[3];
  if (!a4[3])
  {
    v20 = 0;
    v18 = "ATE ";
    goto LABEL_33;
  }

  if ((v13 & 0xFFFFFFDF) != 0x41)
  {
    v17 = &byte_181A20298[v13];
    v18 = "ATE ";
    goto LABEL_32;
  }

  v14 = a4[4];
  if (!a4[4])
  {
    v20 = 0;
    v18 = "TE ";
    goto LABEL_33;
  }

  if ((v14 & 0xFFFFFFDF) != 0x54)
  {
    v17 = &byte_181A20298[v14];
    v18 = "TE ";
    goto LABEL_32;
  }

  v15 = a4[5];
  if (!a4[5])
  {
    v20 = 0;
    v18 = "E ";
    goto LABEL_33;
  }

  if ((v15 & 0xFFFFFFDF) != 0x45)
  {
    v17 = &byte_181A20298[v15];
    v18 = "E ";
    goto LABEL_32;
  }

  v16 = a4[6];
  if (a4[6])
  {
    if (v16 == 32)
    {
      goto LABEL_34;
    }

    v17 = &byte_181A20298[v16];
    v18 = " ";
    goto LABEL_32;
  }

  v20 = 0;
  v18 = " ";
LABEL_33:
  if (v20 != byte_181A20298[*v18])
  {

    return sub_18190EDA8(127402);
  }

LABEL_34:
  v21 = 1;
  if (a5)
  {
    goto LABEL_60;
  }

  if (a2)
  {
    v22 = *(a3 + 40);
    v23 = __OFSUB__(v22, 1);
    v24 = (v22 - 1);
    if (v24 < 0 != v23)
    {
LABEL_58:
      v21 = v24;
    }

    else
    {
      v25 = (*(a3 + 32) + 32 * v24);
      do
      {
        v26 = *v25;
        if (*v25)
        {
          for (i = a2; ; ++i)
          {
            if (*v26 == *i)
            {
              if (!*v26)
              {
                goto LABEL_58;
              }
            }

            else if (byte_181A20298[*v26] != byte_181A20298[*i])
            {
              break;
            }

            ++v26;
          }
        }

        if (!v24)
        {
          v29 = "main";
          for (j = a2; ; ++j)
          {
            if (*v29 == *j)
            {
              if (!*v29)
              {
                v21 = 0;
                goto LABEL_60;
              }
            }

            else if (byte_181A20298[*v29] != byte_181A20298[*j])
            {
              break;
            }

            ++v29;
          }
        }

        v25 -= 4;
        v21 = -1;
        v28 = v24 <= 0;
        LODWORD(v24) = v24 - 1;
      }

      while (!v28);
    }
  }

  else
  {
    v21 = -1;
  }

LABEL_60:
  *(a3 + 196) = v21;
  *(a1 + 302) = 2;
  *a1 = a3;
  *(a1 + 28) = 1;
  v31 = *(a3 + 48);
  *(a3 + 48) = v31 | 0x4000000000;
  LODWORD(result) = sub_181895EE0(a1, a4);
  *(a3 + 48) = v31;
  if (*(a3 + 103))
  {
    result = 7;
  }

  else
  {
    result = result;
  }

  if (!result)
  {
    if (*(a1 + 344) || *(a1 + 352) || *(a1 + 360))
    {
      result = 0;
    }

    else
    {
      result = sub_18190EDA8(127423);
    }
  }

  *(a3 + 196) = 0;
  return result;
}

uint64_t sub_181997664(void *a1, unsigned __int8 *a2)
{
  v2 = a1[5];
  v3 = *a2;
  if (v3 == 168)
  {
    if (*(a2 + 12) == *(v2 + 12) && (a2[7] & 3) == 0 && *(v2 + 16) == *(a2 + 9))
    {
      v4 = *a1;
      v5 = *(*a1 + 408);
      if (v5)
      {
        if (*v5 != a2)
        {
          while (1)
          {
            v6 = v5;
            v5 = *(v5 + 24);
            if (!v5)
            {
              return 0;
            }

            if (*v5 == a2)
            {
LABEL_18:
              if (!v2)
              {
                return 0;
              }

              v8 = (v6 + 24);
              goto LABEL_21;
            }
          }
        }

        goto LABEL_20;
      }
    }

    return 0;
  }

  if (v3 != 78)
  {
    return 0;
  }

  if (*(a2 + 12) != *(v2 + 12))
  {
    return 0;
  }

  v4 = *a1;
  if (*(*a1 + 160) != *(v2 + 16))
  {
    return 0;
  }

  v5 = *(v4 + 408);
  if (!v5)
  {
    return 0;
  }

  if (*v5 != a2)
  {
    while (1)
    {
      v6 = v5;
      v5 = *(v5 + 24);
      if (!v5)
      {
        return 0;
      }

      if (*v5 == a2)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_20:
  v8 = (v4 + 408);
LABEL_21:
  *v8 = *(v5 + 24);
  *(v5 + 24) = *v2;
  *v2 = v5;
  ++*(v2 + 8);
  return 0;
}

uint64_t sub_18199776C(void *a1, uint64_t a2)
{
  if ((*(a2 + 6) & 0x420) != 0)
  {
    return 1;
  }

  sub_181962064(a1, a2);
  return 0;
}

uint64_t sub_1819977A4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 360);
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v56 = a1;
  v4 = *(v2 + 32);
  v5 = *(v3 + 48);
  if (v5)
  {
    v6 = (v4 + 24);
    v7 = 0xFFFFFFFF00000000;
    do
    {
      v8 = *v6;
      v6 += 4;
      v7 += 0x100000000;
    }

    while (v8 != v5);
    v9 = v7 >> 32;
  }

  else
  {
    v9 = -32768;
  }

  v10 = sub_181917F20(v2, *(v3 + 8), *(v4 + 32 * v9));
  *(a1 + 160) = v10;
  *(a1 + 39) = *(v3 + 16);
  if (!v10 || *(v10 + 63) != 1 && *(v10 + 54) > 0 || !sub_181960D84(a1, v10))
  {
    v12 = *(v3 + 24);
    if (v12)
    {
      LODWORD(v59) = 0;
      v60 = a1;
      v61 = sub_1818B1AF8;
      v62 = sub_1818B15A0;
      v63 = 0;
      v64 = 0;
      v65 = &v56;
      v13 = *(a1 + 308) + *(v12 + 40);
      *(a1 + 308) = v13;
      if (*(*a1 + 148) < v13)
      {
        sub_181910730(a1, "Expression tree is too large (maximum depth %d)", *(*a1 + 148));
        return 1;
      }

      sub_181959BA0(&v60, v12);
      v14 = v60;
      *(v60 + 308) -= *(v12 + 40);
      *(v12 + 4) |= v59 & 0x8010;
      if (SHIDWORD(v58) > 0)
      {
        return 1;
      }

      v11 = *(v14 + 52) > 0;
      if (*(v14 + 52) > 0)
      {
        return v11;
      }
    }

    else
    {
      v11 = 0;
    }

    v15 = *(v3 + 56);
    if (!v15)
    {
      return v11;
    }

    while (1)
    {
      v16 = *(v15 + 16);
      if (v16)
      {
        sub_18195FBC4(a1, v16, &v56);
        if (*(a1 + 52))
        {
          v11 = *(a1 + 24);
          if (v11)
          {
            return v11;
          }
        }
      }

      if (*(v15 + 24))
      {
        break;
      }

      v11 = 0;
LABEL_25:
      v15 = *(v15 + 80);
      if (!v15)
      {
        return v11;
      }
    }

    v17 = sub_181981C18(a1, v15);
    if (!v17)
    {
      return 7;
    }

    v18 = v17;
    v19 = sub_1818A9824(a1, *(v15 + 48), v17, 0, 0, 0, 0, 0, 0);
    if (!v19)
    {
      v18 = 0;
      *(v15 + 48) = 0;
      v31 = 7;
      v32 = *(v15 + 32);
      if (!v32)
      {
        goto LABEL_20;
      }

      goto LABEL_64;
    }

    v22 = v19;
    v23 = *(v15 + 48);
    if (v23)
    {
      v24 = *v23;
      if (v24 >= 1)
      {
        if (v24 == 1)
        {
          v25 = 0;
LABEL_48:
          v36 = v24 - v25;
          v37 = (&v23[6 * v25 + 6] + 1);
          do
          {
            *v37 = *v37 & 0xFFFC | 1;
            v37 += 12;
            --v36;
          }

          while (v36);
          goto LABEL_50;
        }

        v25 = v24 & 0x7FFFFFFE;
        v33 = (v23 + 49);
        v34 = v25;
        do
        {
          v35 = *v33 & 0xFFFC | 1;
          *(v33 - 12) = *(v33 - 12) & 0xFFFC | 1;
          *v33 = v35;
          v33 += 24;
          v34 -= 2;
        }

        while (v34);
        if (v25 != v24)
        {
          goto LABEL_48;
        }
      }
    }

LABEL_50:
    sub_18195FBC4(a1, v19, 0);
    v39 = *(v15 + 48);
    if (!v39)
    {
      v31 = *(a1 + 52) != 0;
      goto LABEL_63;
    }

    v40 = *v39;
    if (v40 <= 0)
    {
      v31 = *(a1 + 52) != 0;
LABEL_62:
      v22[4] = 0;
LABEL_63:
      v22[5] = 0;
      sub_1818BB408(v2, v22, 1, v38);
      v32 = *(v15 + 32);
      if (!v32)
      {
        goto LABEL_20;
      }

LABEL_64:
      v47 = *v32;
      if (*v32 >= 1 && v31 == 0)
      {
        v49 = 0;
        v50 = 0;
        do
        {
          if ((*(&v32[v49 + 8] + 1) & 4) != 0)
          {
            sub_18195FBC4(a1, **&v32[v49 + 18], 0);
            v32 = *(v15 + 32);
            v47 = *v32;
          }

          ++v50;
          v49 += 18;
        }

        while (v50 < v47);
      }

LABEL_20:
      if (*(v2 + 103))
      {
        v11 = 7;
      }

      else
      {
        v11 = v31;
      }

      *&v57 = v18;
      if (!v11)
      {
        v26 = *(v15 + 40);
        if (!v26)
        {
          goto LABEL_76;
        }

        v27 = v59;
        LODWORD(v59) = v59 & 0xF7FF6FEF;
        v28 = v56;
        v60 = v56;
        v61 = sub_1818B1AF8;
        if ((v27 & 0x80000) != 0)
        {
          v29 = 0;
        }

        else
        {
          v29 = sub_1818B15A0;
        }

        v62 = v29;
        v63 = 0;
        v64 = 0;
        v65 = &v56;
        v30 = *(v56 + 308) + *(v26 + 40);
        *(v56 + 308) = v30;
        if (*(*v28 + 148) < v30)
        {
          sub_181910730(v28, "Expression tree is too large (maximum depth %d)", *(*v28 + 148));
          v11 = 1;
          goto LABEL_24;
        }

        v51 = v27 & 0x8009010;
        sub_181959BA0(&v60, v26);
        v52 = v60;
        *(v60 + 308) -= *(v26 + 40);
        v53 = v59;
        *(v26 + 4) |= v59 & 0x8010;
        LODWORD(v59) = v53 | v51;
        if (SHIDWORD(v58) >= 1 || *(v52 + 52) > 0)
        {
          v11 = 1;
        }

        else
        {
LABEL_76:
          v11 = sub_18195EDEC(&v56, *(v15 + 48));
          if (!v11)
          {
            v54 = *(v15 + 64);
            if (v54)
            {
              *(v54 + 64) = v18;
              *(&v57 + 1) = v54;
              LODWORD(v59) = 512;
              v11 = sub_18195EDEC(&v56, *v54) || sub_18195EDEC(&v56, *(v54 + 16)) || sub_18195ECC4(&v56, *(v54 + 24)) || sub_18195ECC4(&v56, *(v54 + 8));
              LODWORD(v59) = 0;
            }
          }
        }
      }

LABEL_24:
      *&v57 = 0;
      sub_1818BB5B0(v2, v18, v20, v21);
      if (v11)
      {
        return v11;
      }

      goto LABEL_25;
    }

    if (v40 == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40 & 0x7FFFFFFE;
      v42 = (v39 + 49);
      v43 = v41;
      do
      {
        v44 = *v42 & 0xFFFC;
        *(v42 - 12) &= 0xFFFCu;
        *v42 = v44;
        v42 += 24;
        v43 -= 2;
      }

      while (v43);
      if (v41 == v40)
      {
LABEL_61:
        v31 = *(a1 + 52) != 0;
        if (!*(v15 + 48))
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }
    }

    v45 = v40 - v41;
    v46 = (&v39[6 * v41 + 6] + 1);
    do
    {
      *v46 &= 0xFFFCu;
      v46 += 12;
      --v45;
    }

    while (v45);
    goto LABEL_61;
  }

  return 1;
}

uint64_t sub_181997D74(uint64_t result, uint64_t a2, int *a3, uint64_t a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = *a3;
  if (*a3 < 1)
  {
    return result;
  }

  v5 = 0;
  v6 = (result + 408);
  while (2)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    v7 = &a3[6 * v5 + 2];
    v8 = *(v7 + 1);
    if ((*(v7 + 17) & 3) != 0 || v8 == 0)
    {
      goto LABEL_4;
    }

    for (i = 0; *(v8 + i) != *(a4 + i); ++i)
    {
      if (byte_181A20298[*(v8 + i)] != byte_181A20298[*(a4 + i)])
      {
        goto LABEL_4;
      }

LABEL_12:
      ;
    }

    if (*(v8 + i))
    {
      goto LABEL_12;
    }

    v11 = *v6;
    if (*v6)
    {
      v12 = (result + 408);
      if (*v11 == v8)
      {
LABEL_20:
        if (a2)
        {
          *v12 = v11[3];
          v11[3] = *a2;
          *a2 = v11;
          ++*(a2 + 8);
          v4 = *a3;
        }
      }

      else
      {
        while (1)
        {
          v13 = v11;
          v11 = v11[3];
          if (!v11)
          {
            break;
          }

          if (*v11 == v8)
          {
            v12 = v13 + 3;
            goto LABEL_20;
          }
        }
      }
    }

LABEL_4:
    if (++v5 < v4)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_181997E60(uint64_t result, uint64_t a2, int *a3, uint64_t a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = *a3;
  if (*a3 < 1)
  {
    return result;
  }

  v5 = 0;
  v6 = (result + 408);
  while (2)
  {
    v7 = *&a3[2 * v5 + 2];
    if (v7)
    {
      v8 = a4 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_4;
    }

    for (i = 0; *(v7 + i) != *(a4 + i); ++i)
    {
      if (byte_181A20298[*(v7 + i)] != byte_181A20298[*(a4 + i)])
      {
        goto LABEL_4;
      }

LABEL_11:
      ;
    }

    if (*(v7 + i))
    {
      goto LABEL_11;
    }

    v10 = *v6;
    if (*v6)
    {
      v11 = (result + 408);
      if (*v10 == v7)
      {
LABEL_19:
        if (a2)
        {
          *v11 = v10[3];
          v10[3] = *a2;
          *a2 = v10;
          ++*(a2 + 8);
          v4 = *a3;
        }
      }

      else
      {
        while (1)
        {
          v12 = v10;
          v10 = v10[3];
          if (!v10)
          {
            break;
          }

          if (*v10 == v7)
          {
            v11 = v12 + 3;
            goto LABEL_19;
          }
        }
      }
    }

LABEL_4:
    if (++v5 < v4)
    {
      continue;
    }

    return result;
  }
}

void *sub_181997F38(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    result = sub_181959BA0(result, v4);
  }

  for (i = *(a2 + 56); i; i = *(i + 80))
  {
    result = sub_1818AEE70(v3, *(i + 16));
    v6 = *(i + 40);
    if (v6)
    {
      result = sub_181959BA0(v3, v6);
    }

    v7 = *(i + 48);
    if (v7)
    {
      v8 = *v7;
      if (*v7 >= 1)
      {
        for (j = (v7 + 2); ; j += 3)
        {
          if (*j)
          {
            result = sub_181959BA0(v3, *j);
            if (result)
            {
              v10 = 1;
            }

            else
            {
              v10 = v8 <= 1;
            }

            if (v10)
            {
              break;
            }
          }

          else if (v8 < 2)
          {
            break;
          }

          --v8;
        }
      }
    }

    v11 = *(i + 64);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        v13 = *v12;
        if (*v12 >= 1)
        {
          for (k = (v12 + 2); ; k += 3)
          {
            if (*k)
            {
              result = sub_181959BA0(v3, *k);
              if (result)
              {
                v15 = 1;
              }

              else
              {
                v15 = v13 <= 1;
              }

              if (v15)
              {
                break;
              }
            }

            else if (v13 < 2)
            {
              break;
            }

            --v13;
          }
        }
      }

      v16 = v11[2];
      if (v16)
      {
        v17 = *v16;
        if (*v16 >= 1)
        {
          for (m = (v16 + 2); ; m += 3)
          {
            if (*m)
            {
              result = sub_181959BA0(v3, *m);
              if (result)
              {
                v19 = 1;
              }

              else
              {
                v19 = v17 <= 1;
              }

              if (v19)
              {
                break;
              }
            }

            else if (v17 < 2)
            {
              break;
            }

            --v17;
          }
        }
      }

      v20 = v11[3];
      if (v20)
      {
        result = sub_181959BA0(v3, v20);
      }

      v21 = v11[1];
      if (v21)
      {
        result = sub_181959BA0(v3, v21);
      }
    }

    v22 = *(i + 32);
    if (v22)
    {
      v23 = *v22;
      if (*v22 >= 1)
      {
        v24 = 0;
        v25 = (v22 + 18);
        do
        {
          if ((*(v25 - 39) & 4) != 0)
          {
            result = sub_1818AEE70(v3, **v25);
            v23 = *v22;
          }

          ++v24;
          v25 += 9;
        }

        while (v24 < v23);
      }
    }
  }

  return result;
}

uint64_t sub_1819980F8(uint64_t a1, uint64_t *a2, const char *a3, char *__s, int a5)
{
  v5 = __s;
  v6 = a3;
  if (__s)
  {
    v41 = strlen(__s) & 0x3FFFFFFF;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v41 = 0;
    if (a3)
    {
LABEL_3:
      v9 = strlen(v6) & 0x3FFFFFFF;
      if (a1)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v9 = 0;
  if (a1)
  {
LABEL_4:
    v10 = *(*a1 + 24);
    if (!v5)
    {
      v11 = (2 * v9) | 1;
      v12 = 3 * v11;
      if (v10)
      {
        v13 = sub_181929E8C(*(*a1 + 24), 3 * v11, 0x100004077774924);
        if (!v13)
        {
          return 7;
        }

        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_12;
  }

LABEL_10:
  if (!v5)
  {
    v11 = (2 * v9) | 1;
    v12 = 3 * v11;
LABEL_19:
    v13 = sub_181902484(v12, 0x100004077774924);
    v10 = 0;
    if (v13)
    {
LABEL_20:
      v47 = v10;
      v40 = a1;
      bzero(v13, v12);
      v44 = 0;
      v45 = 0;
      v17 = &v13[v11];
      v43 = &v13[4 * v9 + 2];
LABEL_21:
      memcpy(v13, v6, v9);
      v19 = *a2;
      if (*a2)
      {
        v42 = 2 * v9;
        do
        {
          for (i = *(v19 + 24); i; i = *(i + 24))
          {
            if (*(i + 8) > *(v19 + 8))
            {
              v19 = i;
            }
          }

          v21 = a2;
          do
          {
            v22 = v21;
            v23 = *v21;
            v21 = (*v21 + 24);
          }

          while (v23 != v19);
          *v22 = *(v19 + 24);
          v24 = *(v19 + 8);
          if (v5)
          {
            if (a5 || (v26 = v41, v25 = v5, (byte_181A204C8[*v24] & 0x46) == 0))
            {
              v25 = v45;
              if (v24[*(v19 + 16)] == 34)
              {
                v26 = v44 + 1;
              }

              else
              {
                v26 = v44;
              }
            }
          }

          else
          {
            memcpy(v17, v24, *(v19 + 16));
            v17[*(v19 + 16)] = 0;
            v27 = *v17;
            if (byte_181A204C8[*v17] < 0)
            {
              v28 = 0;
              if (v27 == 91)
              {
                v27 = 93;
              }

              for (j = 1; ; ++j)
              {
                v30 = j;
                v31 = v17[j];
                if (v31 == v27)
                {
                  ++j;
                  LOBYTE(v31) = v27;
                  if (v17[v30 + 1] != v27)
                  {
                    break;
                  }
                }

                v17[v28++] = v31;
              }

              v17[v28] = 0;
            }

            v32 = &byte_181A2878D;
            if (*(*(v19 + 8) + *(v19 + 16)) == 39)
            {
              v32 = " ";
            }

            v25 = v43;
            sqlite3_snprintf(v42, v43, "%Q%s", v17, v32);
            if (v43)
            {
              v26 = strlen(v43) & 0x3FFFFFFF;
            }

            else
            {
              v26 = 0;
            }
          }

          v33 = v5;
          v34 = v6;
          v35 = *(v19 + 8) - v6;
          v36 = *(v19 + 16);
          v37 = v35;
          if (v26 != v36)
          {
            memmove(&v13[v26 + v35], &v13[(v36 + v35)], v9 - (v36 + v35));
            v9 += v26 - *(v19 + 16);
            v13[v9] = 0;
          }

          memcpy(&v13[v37], v25, v26);
          sub_181929C84(v47, v19);
          v19 = *a2;
          v6 = v34;
          v5 = v33;
        }

        while (*a2);
      }

      if (v40)
      {
        sub_18190B23C(v40, v13, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
      }

      sub_181929C84(v47, v13);
      v18 = 0;
      v15 = v45;
      if (!v45)
      {
        return v18;
      }

      goto LABEL_55;
    }

    return 7;
  }

  v10 = 0;
LABEL_12:
  v14 = sub_1818A8BAC(v10, "%w ", v5);
  if (!v14)
  {
    return 7;
  }

  v15 = v14;
  v44 = (strlen(v14) & 0x3FFFFFFF) - 1;
  v16 = v9 + v44 * *(a2 + 2);
  if (v10)
  {
    v13 = sub_181929E8C(v10, v16 + 1, 2119895112);
    if (v13)
    {
LABEL_15:
      v47 = v10;
      v45 = v15;
      v40 = a1;
      bzero(v13, v16 + 1);
      v17 = 0;
      v43 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v13 = sub_181902484(v16 + 1, 2119895112);
    if (v13)
    {
      goto LABEL_15;
    }
  }

  v18 = 7;
LABEL_55:
  v38 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_60:
    (*v38)(v15);
    return v18;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v15);
  --qword_1ED456A90;
  off_1ED452EB0(v15);
  v15 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v38 = &xmmword_1ED452F28;
    goto LABEL_60;
  }

  return v18;
}

char *sub_181998584(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    goto LABEL_9;
  }

  v8 = *(a3 + 20);
  if ((~v8 & 0x202) == 0 && *(a3 + 22) == 1)
  {
    v9 = *(a3 + 8);
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (v8)
  {
LABEL_9:
    v9 = 0;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v10 = a4;
  v11 = sub_18193CB70(a3, 1, a3, a4);
  a4 = v10;
  v9 = v11;
  if (!a4)
  {
    goto LABEL_15;
  }

LABEL_10:
  v12 = *(a4 + 20);
  if ((~v12 & 0x202) == 0 && *(a4 + 22) == 1)
  {
    v13 = *(a4 + 8);
    goto LABEL_16;
  }

  if ((v12 & 1) == 0)
  {
    v13 = sub_18193CB70(a4, 1, a3, a4);
    goto LABEL_16;
  }

LABEL_15:
  v13 = 0;
LABEL_16:
  v14 = " ";
  if (!*a2)
  {
    v14 = &byte_181A2878D;
  }

  result = sub_1818A8BAC(*a5, "error in %s %s%s%s: %s", v9, v13, v14, a2, *(a5 + 8));
  v16 = result;
  if (a1)
  {
    *(a1 + 36) = 1;
    result = sub_1818900D0(*a1, result, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v16)
  {
    v17 = *a5;

    return sub_181929C84(v17, v16);
  }

  return result;
}

void *sub_1819986E4(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[2];
  if (v6)
  {
    if (*(v6 + 267))
    {
      sub_1818A32FC(a1[2], a2, a3, a4);
    }

    sub_181901AB4(v6, a2, a3, a4);
  }

  v7 = a1[43];
  if (v7)
  {
    if (v5[103] || (v8 = *(v7 + 44) - 1, (*(v7 + 44) = v8) == 0))
    {
      sub_18194E094(v5, v7, a3, a4);
    }
  }

  while (1)
  {
    v9 = a1[44];
    if (!v9)
    {
      break;
    }

    a1[44] = *(v9 + 40);
    v10 = *(v9 + 72);
    if (v10)
    {
      sub_1819439E0(v5, v10);
    }

    v11 = *(v9 + 80);
    if (v11)
    {
      sub_18194E5B8(v5, v11);
    }

    v12 = *(v9 + 32);
    if (v12)
    {
      sub_181929C84(v5, v12);
    }

    if ((*(v9 + 99) & 0x10) != 0)
    {
      v13 = *(v9 + 64);
      if (v13)
      {
        sub_181929C84(v5, v13);
      }
    }

    sub_181929C84(v5, v9);
  }

  sub_1818A313C(v5, a1[45], a3, a4);
  v14 = a1[1];
  if (v14)
  {
    sub_181929C84(v5, v14);
  }

  v15 = a1[51];
  if (v15)
  {
    do
    {
      v16 = v15[3];
      sub_181929C84(v5, v15);
      v15 = v16;
    }

    while (v16);
  }

  return sub_181910CA0(a1);
}

uint64_t sub_181998814(void *a1, unsigned __int8 *a2)
{
  if (*a2 != 168)
  {
    return 0;
  }

  if ((a2[7] & 3) != 0)
  {
    return 0;
  }

  v2 = a1[5];
  v4 = *(a2 + 9);
  v3 = a2 + 72;
  if (*(v2 + 16) != v4)
  {
    return 0;
  }

  v6 = *(*a1 + 408);
  if (!v6)
  {
    return 0;
  }

  if (*v6 != v3)
  {
    while (1)
    {
      v7 = v6;
      v6 = v6[3];
      if (!v6)
      {
        return 0;
      }

      if (*v6 == v3)
      {
        if (!v2)
        {
          return 0;
        }

        v8 = v7 + 3;
        goto LABEL_12;
      }
    }
  }

  v8 = (*a1 + 408);
LABEL_12:
  *v8 = v6[3];
  v6[3] = *v2;
  *v2 = v6;
  ++*(v2 + 8);
  return 0;
}

uint64_t sub_1819988B0(void *a1, uint64_t a2)
{
  if ((*(a2 + 6) & 0x420) != 0)
  {
    return 1;
  }

  v3 = *(a2 + 40);
  if (!v3)
  {
    return 2;
  }

  v4 = *v3;
  if (*v3 >= 1)
  {
    v5 = 0;
    v6 = a1[5];
    do
    {
      v8 = &v3[18 * v5 + 2];
      if (*(v8 + 2) == *(v6 + 16))
      {
        v9 = *v8;
        if (*v8)
        {
          v10 = *(*a1 + 408);
          if (v10)
          {
            if (*v10 == v9)
            {
              v7 = (*a1 + 408);
LABEL_7:
              *v7 = v10[3];
              v10[3] = *v6;
              *v6 = v10;
              ++*(v6 + 8);
              v4 = *v3;
            }

            else
            {
              while (1)
              {
                v11 = v10;
                v10 = v10[3];
                if (!v10)
                {
                  break;
                }

                if (*v10 == v9)
                {
                  if (!v6)
                  {
                    break;
                  }

                  v7 = v11 + 3;
                  goto LABEL_7;
                }
              }
            }
          }
        }
      }

      ++v5;
    }

    while (v5 < v4);
  }

  sub_181962064(a1, a2);
  return 0;
}

uint64_t sub_1819989A4(void *a1, _BYTE *a2)
{
  if (*a2 != 118)
  {
    return 0;
  }

  if ((a2[4] & 0x80) == 0)
  {
    return 0;
  }

  v2 = *(*a1 + 408);
  if (!v2)
  {
    return 0;
  }

  v3 = a1[5];
  if (*v2 != a2)
  {
    while (1)
    {
      v4 = v2;
      v2 = *(v2 + 24);
      if (!v2)
      {
        return 0;
      }

      if (*v2 == a2)
      {
        v5 = (v4 + 24);
        if (v3)
        {
          goto LABEL_10;
        }

        return 0;
      }
    }
  }

  v5 = (*a1 + 408);
  if (!v3)
  {
    return 0;
  }

LABEL_10:
  *v5 = *(v2 + 24);
  *(v2 + 24) = *v3;
  *v3 = v2;
  ++*(v3 + 8);
  return 0;
}

void *sub_181998A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v5 = *(a1 + 8)) != 0 && *(v5 + 32))
  {
    v6 = *(a1 + 16);
    if (*(v6 + 20) < 0)
    {
      result = *(v6 + 8);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_18190C2E0(a1, 8, a3, a4);
      if (!result)
      {
        return result;
      }
    }

    ++*result;
  }

  else
  {

    return sub_1819012D0(100772);
  }

  return result;
}

void sub_181998A9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = a1[1];
    if (v5 && *(v5 + 32))
    {
      v6 = a1[2];
      if ((*(v6 + 20) & 0x80000000) == 0)
      {
        v7 = sub_18190C2E0(a1, 8, a3, a4);
        if (!v7)
        {
          goto LABEL_8;
        }

LABEL_13:
        v8 = *v7;
LABEL_14:
        v9 = *a1;
        if ((*(*a1 + 20) & 0x9000) != 0)
        {

          sub_18193D288(v9, v8);
        }

        else
        {
          *v9 = v8;
          *(v9 + 20) = 4;
        }

        return;
      }

      v7 = *(v6 + 8);
      if (v7)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1819012D0(100772);
    }

LABEL_8:
    v8 = 0;
    goto LABEL_14;
  }

  sub_1819012D0(100772);
}

uint64_t sub_181998B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v5 = *(a1 + 8)) != 0 && *(v5 + 32))
  {
    v6 = *(a1 + 16);
    if (*(v6 + 20) < 0)
    {
      result = *(v6 + 8);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_18190C2E0(a1, 24, a3, a4);
      if (!result)
      {
        return result;
      }
    }

    *(result + 8) = 1;
  }

  else
  {

    return sub_1819012D0(100772);
  }

  return result;
}

void sub_181998BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v4 = *(a1 + 8)) != 0 && *(v4 + 32))
  {
    v5 = *(a1 + 16);
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
      v7 = sub_18190C2E0(a1, 24, a3, a4);
      if (!v7)
      {
        return;
      }
    }

    v8 = *v7;
    if (v7[1])
    {
      *v7 = ++v8;
      v7[1] = 0;
    }

    v9 = *v6;
    if ((*(*v6 + 20) & 0x9000) != 0)
    {

      sub_18193D288(v9, v8);
    }

    else
    {
      *v9 = v8;
      *(v9 + 20) = 4;
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t *sub_181998CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v5 = *(a1 + 8)) != 0 && *(v5 + 32))
  {
    v6 = *(a1 + 16);
    if (*(v6 + 20) < 0)
    {
      result = *(v6 + 8);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_18190C2E0(a1, 24, a3, a4);
      if (!result)
      {
        return result;
      }
    }

    v8 = *result;
    v9 = result[1] + 1;
    result[1] = v9;
    if (!v8)
    {
      *result = v9;
    }
  }

  else
  {

    return sub_1819012D0(100772);
  }

  return result;
}

void sub_181998D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v5 = *(a1 + 8)) != 0 && *(v5 + 32))
  {
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
      v8 = sub_18190C2E0(a1, 24, a3, a4);
      if (!v8)
      {
        return;
      }
    }

    v9 = *v8;
    v10 = *v7;
    if ((*(*v7 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v10, v9);
    }

    else
    {
      *v10 = v9;
      *(v10 + 20) = 4;
    }

    *v8 = 0;
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t sub_181998DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v5 = *(a1 + 8)) != 0 && *(v5 + 32))
  {
    v6 = *(a1 + 16);
    if (*(v6 + 20) < 0)
    {
      result = *(v6 + 8);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_18190C2E0(a1, 24, a3, a4);
      if (!result)
      {
        return result;
      }
    }

    ++*(result + 16);
  }

  else
  {

    return sub_1819012D0(100772);
  }

  return result;
}

void sub_181998E3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v5 = a1[1]) != 0 && *(v5 + 32))
  {
    v6 = a1[2];
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
      v8 = sub_18190C2E0(a1, 24, a3, a4);
      if (!v8)
      {
        return;
      }
    }

    v9 = v8[1];
    v10 = v8[2];
    *v8 = v9;
    if (v10 < 2)
    {
      v12 = *v7;
      if ((*(v12 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v12);
      }

      *v12 = 0;
    }

    else
    {
      v11 = v9 / (v10 - 1);
      v12 = *v7;
      if ((*(v12 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v12);
      }

      else
      {
        *(v12 + 20) = 1;
      }

      *v12 = v11;
    }

    *(v12 + 20) = 8;
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t sub_181998F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (v4 = *(a1 + 8)) == 0 || !*(v4 + 32))
  {
    sub_181A1EE04();
  }

  v5 = *(a1 + 16);
  if (*(v5 + 20) < 0)
  {
    result = *(v5 + 8);
  }

  else
  {
    result = sub_18190C2E0(a1, 24, a3, a4);
  }

  ++*(result + 8);
  return result;
}

uint64_t sub_181998F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v5 = *(a1 + 8)) != 0 && *(v5 + 32))
  {
    v6 = *(a1 + 16);
    if (*(v6 + 20) < 0)
    {
      result = *(v6 + 8);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_18190C2E0(a1, 24, a3, a4);
      if (!result)
      {
        return result;
      }
    }

    ++*(result + 16);
  }

  else
  {

    return sub_1819012D0(100772);
  }

  return result;
}

void sub_181998FFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v5 = a1[1]) != 0 && *(v5 + 32))
  {
    v6 = a1[2];
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
      v8 = sub_18190C2E0(a1, 0, a3, a4);
      if (!v8)
      {
        return;
      }
    }

    v9 = *(v8 + 8) / *(v8 + 16);
    v10 = *v7;
    if ((*(v10 + 20) & 0x9000) != 0)
    {
      sub_18193CA54(v10);
    }

    else
    {
      *(v10 + 20) = 1;
    }

    *v10 = v9;
    *(v10 + 20) = 8;
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t sub_1819990CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (v4 = *(a1 + 8)) == 0 || !*(v4 + 32))
  {
    sub_181A1EE04();
  }

  v5 = *(a1 + 16);
  if (*(v5 + 20) < 0)
  {
    result = *(v5 + 8);
  }

  else
  {
    result = sub_18190C2E0(a1, 24, a3, a4);
  }

  ++*(result + 8);
  return result;
}

uint64_t sub_181999120(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (result)
  {
    v5 = *(result + 8);
    if (v5)
    {
      if (*(v5 + 32))
      {
        v6 = *(result + 16);
        if (*(v6 + 20) < 0)
        {
          v7 = result;
          v9 = *(v6 + 8);
          if (!v9)
          {
            return result;
          }
        }

        else
        {
          v7 = result;
          v8 = a3;
          result = sub_18190C2E0(result, 24, a3, a4);
          a3 = v8;
          v9 = result;
          if (!result)
          {
            return result;
          }
        }

        if (*v9)
        {
          goto LABEL_21;
        }

        result = *a3;
        if (*a3)
        {
          v10 = *(result + 20);
          if ((v10 & 0x24) != 0)
          {
            result = *result;
            goto LABEL_15;
          }

          if ((v10 & 8) != 0)
          {
            v12 = *result;
            if (*result >= -9.22337204e18)
            {
              if (v12 > 9.22337204e18)
              {
                v9[1] = 0x7FFFFFFFFFFFFFFFLL;
                goto LABEL_21;
              }

              result = v12;
LABEL_15:
              v9[1] = result;
              if (result > 0)
              {
LABEL_21:
                ++*v9;
                return result;
              }

LABEL_20:
              *(v7 + 36) = 1;
              result = sub_1818900D0(*v7, "argument of ntile must be a positive integer", -1, 1, 0xFFFFFFFFFFFFFFFFLL);
              goto LABEL_21;
            }

            v11 = 0x8000000000000000;
LABEL_19:
            v9[1] = v11;
            goto LABEL_20;
          }

          if ((v10 & 0x12) != 0)
          {
            v11 = *(result + 8);
            if (v11)
            {
              result = sub_18193CFCC(result);
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_1819012D0(92237);
        }

        v11 = 0;
        goto LABEL_19;
      }
    }
  }

  return sub_1819012D0(100772);
}

void sub_181999278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v4 = *(a1 + 8)) != 0 && *(v4 + 32))
  {
    v5 = *(a1 + 16);
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
      v7 = sub_18190C2E0(a1, 24, a3, a4);
      if (!v7)
      {
        return;
      }
    }

    v8 = v7[1];
    if (v8 >= 1)
    {
      v9 = *v7 / v8;
      if (v9)
      {
        v10 = v9;
        v11 = *v7 - v9 * v8;
        v12 = v9 + 1;
        v13 = v7[2];
        if (v13 >= v11 * v12)
        {
          v14 = v11 + (v13 - v11 * v12) / v10;
        }

        else
        {
          v14 = v13 / v12;
        }
      }

      else
      {
        v14 = v7[2];
      }

      v15 = v14 + 1;
      v16 = *v6;
      if ((*(*v6 + 20) & 0x9000) != 0)
      {

        sub_18193D288(v16, v15);
      }

      else
      {
        *v16 = v15;
        *(v16 + 20) = 4;
      }
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t sub_181999388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (v4 = *(a1 + 8)) == 0 || !*(v4 + 32))
  {
    sub_181A1EE04();
  }

  v5 = *(a1 + 16);
  if (*(v5 + 20) < 0)
  {
    result = *(v5 + 8);
  }

  else
  {
    result = sub_18190C2E0(a1, 24, a3, a4);
  }

  ++*(result + 16);
  return result;
}

void sub_1819993DC(sqlite3_context *a1, uint64_t a2, const sqlite3_value **a3, uint64_t a4)
{
  if (a1 && (v4 = *(a1 + 1)) != 0 && *(v4 + 32))
  {
    v5 = *(a1 + 2);
    if (*(v5 + 20) < 0)
    {
      v6 = a1;
      v9 = *(v5 + 8);
      if (!v9)
      {
        return;
      }
    }

    else
    {
      v6 = a1;
      v7 = a3;
      v8 = sub_18190C2E0(a1, 16, a3, a4);
      a3 = v7;
      v9 = v8;
      if (!v8)
      {
        return;
      }
    }

    v10 = *v9;
    if (*v9)
    {
      v11 = a3;
      if ((v10[5] & 0x9000) != 0 || v10[8])
      {
        sub_18193CA00(*v9);
      }

      sub_181929C84(*(v10 + 3), v10);
      a3 = v11;
    }

    v12 = sqlite3_value_dup(*a3);
    *v9 = v12;
    if (v12)
    {
      ++*(v9 + 8);
    }

    else
    {

      sqlite3_result_error_nomem(v6);
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_1819994F0(sqlite3_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v5 = *(a1 + 1)) != 0 && *(v5 + 32))
  {
    v6 = *(a1 + 2);
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
      v8 = sub_18190C2E0(a1, 16, a3, a4);
      if (!v8)
      {
        return;
      }
    }

    if (*v8)
    {
      sqlite3_result_value(v7, *v8);
      v9 = *v8;
      if (*v8)
      {
        if ((*(v9 + 10) & 0x9000) != 0 || *(v9 + 8))
        {
          sub_18193CA00(*v8);
        }

        sub_181929C84(*(v9 + 3), v9);
      }

      *v8 = 0;
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_1819995B0(sqlite3_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = *v7;
    if (*v7)
    {

      sqlite3_result_value(v6, v8);
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

uint64_t sub_181999658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v5 = *(a1 + 8)) != 0 && *(v5 + 32))
  {
    v6 = *(a1 + 16);
    if (*(v6 + 20) < 0)
    {
      result = *(v6 + 8);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_18190C2E0(a1, 16, a3, a4);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(result + 8) - 1;
    *(result + 8) = v8;
    if (!v8)
    {
      v9 = *result;
      if (*result)
      {
        v10 = result;
        if ((v9[5] & 0x9000) != 0 || v9[8])
        {
          sub_18193CA00(*result);
        }

        sub_181929C84(*(v9 + 3), v9);
        result = v10;
      }

      *result = 0;
    }
  }

  else
  {

    return sub_1819012D0(100772);
  }

  return result;
}

void sub_181999714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      if (*(v4 + 32))
      {
        v5 = *(a1 + 16);
        if (*(v5 + 20) < 0)
        {
          v6 = a1;
          v9 = *(v5 + 8);
          if (!v9)
          {
            return;
          }
        }

        else
        {
          v6 = a1;
          v7 = a3;
          v8 = sub_18190C2E0(a1, 16, a3, a4);
          a3 = v7;
          v9 = v8;
          if (!v8)
          {
            return;
          }
        }

        v10 = *(a3 + 8);
        if (v10)
        {
          v11 = *(v10 + 20);
          if ((0x4000000040004uLL >> v11))
          {
            v12 = a3;
            sub_18190FC94(*(a3 + 8), 0);
            a3 = v12;
            v11 = *(v10 + 20);
          }

          v13 = byte_181A203AA[v11 & 0x3F];
          v14 = v6;
          if (v13 == 2)
          {
            v20 = *(a3 + 8);
            if (v20)
            {
              v21 = *(v20 + 20);
              if ((v21 & 8) != 0)
              {
                v22 = *v20;
              }

              else if ((v21 & 0x24) != 0)
              {
                v22 = *v20;
              }

              else if ((v21 & 0x12) != 0)
              {
                v27 = a3;
                v22 = sub_18193CF90(v20);
                a3 = v27;
              }

              else
              {
                v22 = 0.0;
              }
            }

            else
            {
              v23 = a3;
              sub_1819012D0(92272);
              a3 = v23;
              v22 = 0.0;
            }

            if (v22 != v22)
            {
              goto LABEL_22;
            }

            goto LABEL_33;
          }

          if (v13 != 1)
          {
            goto LABEL_22;
          }

          v15 = *(a3 + 8);
          if (v15)
          {
            v16 = *(v15 + 20);
            if ((v16 & 0x24) != 0)
            {
              v17 = *v15;
              if (v17 < 1)
              {
                goto LABEL_22;
              }

              goto LABEL_34;
            }

            if ((v16 & 8) == 0)
            {
              if ((v16 & 0x12) == 0 || !*(v15 + 8) || (v26 = a3, v17 = sub_18193CFCC(v15), a3 = v26, v17 < 1))
              {
LABEL_22:
                *(v14 + 9) = 1;
                v19 = *v14;

                sub_1818900D0(v19, "second argument to nth_value must be a positive integer", -1, 1, 0xFFFFFFFFFFFFFFFFLL);
                return;
              }

LABEL_34:
              v24 = *v9 + 1;
              *v9 = v24;
              if (v17 == v24)
              {
                v25 = sqlite3_value_dup(*a3);
                v9[1] = v25;
                if (!v25)
                {

                  sqlite3_result_error_nomem(v14);
                }
              }

              return;
            }

            v22 = *v15;
            if (*v15 < -9.22337204e18)
            {
              goto LABEL_22;
            }

            if (v22 > 9.22337204e18)
            {
              v17 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_34;
            }

LABEL_33:
            v17 = v22;
            if (v22 < 1)
            {
              goto LABEL_22;
            }

            goto LABEL_34;
          }

          v18 = 26701;
        }

        else
        {
          v18 = -31195;
        }

        sub_1819012D0(v18 | 0x10000u);
        v14 = v6;
        goto LABEL_22;
      }
    }
  }

  sub_1819012D0(100772);
}

void sub_1819999BC(sqlite3_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v5 = *(a1 + 1)) != 0 && *(v5 + 32))
  {
    v6 = *(a1 + 2);
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
      v8 = sub_18190C2E0(a1, 0, a3, a4);
      if (!v8)
      {
        return;
      }
    }

    v9 = *(v8 + 8);
    if (v9)
    {
      sqlite3_result_value(v7, v9);
      v10 = *(v8 + 8);
      if (v10)
      {
        if ((*(v10 + 20) & 0x9000) != 0 || *(v10 + 32))
        {
          sub_18193CA00(*(v8 + 8));
        }

        sub_181929C84(*(v10 + 24), v10);
      }

      *(v8 + 8) = 0;
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_181999A80(sqlite3_context *a1, uint64_t a2, const sqlite3_value **a3, uint64_t a4)
{
  if (a1 && (v4 = *(a1 + 1)) != 0 && *(v4 + 32))
  {
    v5 = *(a1 + 2);
    if (*(v5 + 20) < 0)
    {
      v6 = a1;
      v9 = *(v5 + 8);
      if (!v9)
      {
        return;
      }
    }

    else
    {
      v6 = a1;
      v7 = a3;
      v8 = sub_18190C2E0(a1, 16, a3, a4);
      a3 = v7;
      v9 = v8;
      if (!v8)
      {
        return;
      }
    }

    if (!*(v9 + 8))
    {
      v10 = sqlite3_value_dup(*a3);
      *(v9 + 8) = v10;
      if (!v10)
      {

        sqlite3_result_error_nomem(v6);
      }
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_181999B44(sqlite3_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v5 = *(a1 + 1)) != 0 && *(v5 + 32))
  {
    v6 = *(a1 + 2);
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
      v8 = sub_18190C2E0(a1, 16, a3, a4);
      if (!v8)
      {
        return;
      }
    }

    v9 = *(v8 + 8);
    if (v9)
    {
      sqlite3_result_value(v7, v9);
      v10 = *(v8 + 8);
      if (v10)
      {
        if ((*(v10 + 20) & 0x9000) != 0 || *(v10 + 32))
        {
          sub_18193CA00(*(v8 + 8));
        }

        sub_181929C84(*(v10 + 24), v10);
      }

      *(v8 + 8) = 0;
    }
  }

  else
  {

    sub_1819012D0(100772);
  }
}

void sub_181999C04(uint64_t *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v11, 0, sizeof(v11));
  if (!sub_1818F50DC(a1, a2, a3, v11, a5, a6, a7, a8))
  {
    sub_18199C28C(v11);
    if (a1)
    {
      v9 = *&v11[0] / 86400000.0;
      v10 = *a1;
      if ((*(v10 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v10);
      }

      *v10 = v9;
      *(v10 + 20) = 8;
    }

    else
    {
      sub_1819012D0(100067);
    }
  }
}

void sub_181999CA8(uint64_t *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  if (!sub_1818F50DC(a1, a2, a3, v13, a5, a6, a7, a8))
  {
    sub_18199C28C(v13);
    if ((BYTE12(v14) & 4) != 0)
    {
      if (a1)
      {
        v11 = (*&v13[0] - 210866760000000) / 1000.0;
        v12 = *a1;
        if ((*(v12 + 20) & 0x9000) != 0)
        {
          sub_18193CA54(v12);
        }

        *v12 = v11;
        *(v12 + 20) = 8;
      }

      else
      {
        sub_1819012D0(100067);
      }
    }

    else if (a1)
    {
      v9 = *&v13[0] / 1000 - 210866760000;
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