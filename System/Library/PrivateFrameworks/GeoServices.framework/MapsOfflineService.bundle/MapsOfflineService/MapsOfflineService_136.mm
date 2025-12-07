void sub_86941C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6870C4(va);
  _Unwind_Resume(a1);
}

void ***sub_869430(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = 0;
    do
    {
      v11 = &result[v8];
      v12 = &v7[v8 * 8];
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = *&result[v8];
      v13 = result[v8 + 3];
      *(v12 + 2) = result[v8 + 2];
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      v11[3] = 0;
      v14 = result[v8 + 4];
      *(v12 + 3) = v13;
      *(v12 + 4) = v14;
      v11[4] = 0;
      v15 = result[v8 + 5];
      *&v7[v8 * 8 + 40] = v15;
      v16 = result[v8 + 6];
      *(v12 + 6) = v16;
      *(v12 + 14) = result[v8 + 7];
      if (v16)
      {
        v9 = v15[1];
        v17 = *(v12 + 4);
        if ((v17 & (v17 - 1)) != 0)
        {
          if (v9 >= v17)
          {
            v9 %= v17;
          }
        }

        else
        {
          v9 &= v17 - 1;
        }

        v13[v9] = &v7[v8 * 8 + 40];
        result[v8 + 5] = 0;
        result[v8 + 6] = 0;
      }

      v12[64] = *(v11 + 64);
      *(v12 + 18) = *(v11 + 18);
      *(v12 + 5) = *(v11 + 5);
      v11[10] = 0;
      v11[11] = 0;
      v10 = *(v11 + 48);
      v12[98] = *(v11 + 98);
      *(v12 + 48) = v10;
      v8 += 13;
    }

    while (&result[v8] != v5);
    do
    {
      result = sub_662AC8(result) + 13;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v18 = *a1;
  *a1 = v7;
  *(a1 + 8) = v18;
  a2[1] = v18;
  v19 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v19;
  v20 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v20;
  *a2 = a2[1];
  return result;
}

uint64_t sub_86958C(void *a1, uint64_t a2, int *a3)
{
  v3 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v4;
  }

  v17 = a1;
  if (v6)
  {
    if (v6 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v14 = 104 * v3;
  v15 = 104 * v3;
  v16 = 0;
  v7 = *a3;
  v18 = 0;
  v19 = 0;
  sub_680484(104 * v3, a2, v7, &v18);
  v8 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v15 += 104;
  sub_869430(a1, &__p);
  v9 = a1[1];
  v11 = v14;
  for (i = v15; v15 != v11; i = v15)
  {
    v15 = i - 104;
    sub_662AC8((i - 104));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_86973C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6870C4(va);
  _Unwind_Resume(a1);
}

void sub_869750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_1F1A8(va1);
  sub_6870C4(va);
  _Unwind_Resume(a1);
}

void sub_86978C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266D4E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_869828(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266D530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_8698C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266D580;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_86CA0C(_Unwind_Exception *a1)
{
  if (qword_27AF028)
  {
    qword_27AF030 = qword_27AF028;
    operator delete(qword_27AF028);
  }

  _Unwind_Resume(a1);
}

void sub_86CCA4(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 8), *a3, *(a3 + 1));
    v8 = *a1;
  }

  else
  {
    v7 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v7;
    v8 = a2;
  }

  *(a1 + 32) = sub_3AF6B4(v8);
  *(a1 + 40) = a4;
  v12 = 11;
  strcpy(v11, "StepBuilder");
  memset(v10, 0, sizeof(v10));
  v9 = sub_3AEC94(a2, v11, v10);
  sub_41D598(v9, v13);
  sub_8714E0(a1 + 48, v13);
}

void sub_86CE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
    if ((*(v18 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v18 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v19);
  _Unwind_Resume(a1);
}

void sub_86CEB0(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = sub_4C35B0(a2);
  if (v6)
  {
    v7 = v6;
    v8 = sub_4C49C0(a2, 0);
    v9 = sub_68C454(a3, 0);
    v10 = sub_73EC4(a2);
    sub_86CF7C(a1, v8, v9, *v10);
    if (v7 != 1)
    {
      for (i = 1; i != v7; ++i)
      {
        v12 = sub_4C49C0(a2, i);
        v13 = sub_68C454(a3, i);
        sub_86CF7C(a1, v12, v13, 0.0);
      }
    }
  }
}

void sub_86CF7C(uint64_t *a1, void *a2, void *a3, double a4)
{
  if (!sub_4D1F6C(a2))
  {
    sub_86D1C8(a1, a3, &v19);
    if (v20 != v19)
    {
      v8 = 0;
      v9 = 0x6DB6DB6DB6DB6DB7 * ((v20 - v19) >> 3);
      do
      {
        sub_86D888(a1, a2, &v19, v8++, a3, a4);
      }

      while (v9 != v8);
    }

    v10 = a3[1263];
    v11 = a3[1262];
    if (v10 != v11)
    {
      do
      {
        v14 = *(v10 - 208);
        if (v14)
        {
          *(v10 - 200) = v14;
          operator delete(v14);
        }

        v15 = v10 - 248;
        v16 = *(v10 - 248);
        if (v16)
        {
          *(v10 - 240) = v16;
          operator delete(v16);
        }

        v10 -= 248;
      }

      while (v15 != v11);
    }

    a3[1263] = v11;
    sub_86E1F4(a3 + 1262);
    sub_86E358(a1, a3);
    v12 = a3[138];
    v13 = a3[139];
    while (1)
    {
      if (v12 == v13)
      {
        sub_86E5AC();
        sub_761A1C(v21, *a1);
      }

      if (*(v12 + 1029) == 1 && *(v12 + 1028) == 1)
      {
        v18 = *(v12 + 160);
        switch(v18)
        {
          case 3:
            v17 = 64;
            goto LABEL_13;
          case 20:
            v17 = 65;
LABEL_13:
            *(v12 + 160) = v17;
            break;
          case 21:
            v17 = 66;
            goto LABEL_13;
        }
      }

      v12 += 2616;
    }
  }
}

void sub_86D178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    v30 = a10;
    if (!a10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v30 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  operator delete(v30);
  _Unwind_Resume(exception_object);
}

uint64_t sub_86D1C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(sub_3AF234(a2) + 16);
  v6 = *(sub_73F1C(a2) + 16);
  v7 = sub_4D1DC0(a2);
  if (v7 == 1)
  {
    v9 = 0;
    v38 = 0;
    v8 = 0;
    v11 = (v4 + 1);
    goto LABEL_70;
  }

  v63 = v6;
  v64 = v5;
  v8 = 0;
  v9 = 0;
  v10 = v5 / 1000000000.0;
  v11 = (v4 + 1);
  v12 = 1;
  v66 = v4;
  do
  {
    while (1)
    {
      while (1)
      {
        v14 = sub_4D1F50(a2, v12 - 1);
        v15 = sub_4D1F50(a2, v12);
        v16 = *v14;
        v17 = (*v14 - **v14);
        v18 = *v17;
        if (*(v14 + 38))
        {
          if (v18 >= 0x47)
          {
            v19 = v17[35];
            if (!v17[35])
            {
              goto LABEL_13;
            }

            v20 = 2;
LABEL_11:
            v19 = (*&v16[v19] & v20) != 0;
            goto LABEL_13;
          }
        }

        else if (v18 >= 0x47)
        {
          v19 = v17[35];
          if (!v17[35])
          {
            goto LABEL_13;
          }

          v20 = 1;
          goto LABEL_11;
        }

        v19 = 0;
LABEL_13:
        v21 = *v15;
        v22 = (*v15 - **v15);
        v23 = *v22;
        if (!*(v15 + 38))
        {
          break;
        }

        if (v23 < 0x47)
        {
          goto LABEL_22;
        }

        v24 = v22[35];
        if (!v24)
        {
          goto LABEL_22;
        }

        if (v19 != ((*&v21[v24] & 2) != 0))
        {
          goto LABEL_23;
        }

LABEL_3:
        v13 = 0;
        if (v7 == ++v12)
        {
          goto LABEL_64;
        }
      }

      if (v23 < 0x47 || (v25 = v22[35]) == 0)
      {
LABEL_22:
        if (v19)
        {
          goto LABEL_23;
        }

        goto LABEL_3;
      }

      if (v19 == ((*&v21[v25] & 1) != 0))
      {
        goto LABEL_3;
      }

LABEL_23:
      if (!*(v14 + 38))
      {
        break;
      }

      if (v18 < 0x47)
      {
        goto LABEL_43;
      }

      v26 = v17[35];
      v27 = 2;
      if (v26)
      {
        goto LABEL_35;
      }

      if (v9)
      {
        v28 = 1.0;
      }

      else
      {
        v28 = v10;
      }

      v29 = v4[2];
      if (v8 >= v29)
      {
        goto LABEL_47;
      }

LABEL_30:
      *v8 = v9;
      *(v8 + 8) = v12;
      *(v8 + 16) = v27;
      *(v8 + 24) = v28;
      *(v8 + 32) = 0x3FF0000000000000;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      v8 += 56;
      *v11 = v8;
      v13 = 1;
      v9 = v12++;
      if (v7 == v12)
      {
        goto LABEL_64;
      }
    }

    if (v18 < 0x47)
    {
      LOBYTE(v27) = 2;
      if (v9)
      {
        v28 = 1.0;
      }

      else
      {
        v28 = v10;
      }

      v29 = v4[2];
      if (v8 < v29)
      {
        goto LABEL_30;
      }

      goto LABEL_47;
    }

    v26 = v17[35];
    if (!v26)
    {
LABEL_43:
      LOBYTE(v27) = 2;
      if (v9)
      {
        v28 = 1.0;
      }

      else
      {
        v28 = v10;
      }

      v29 = v4[2];
      if (v8 < v29)
      {
        goto LABEL_30;
      }

      goto LABEL_47;
    }

    v27 = 1;
LABEL_35:
    if ((*&v16[v26] & v27) != 0)
    {
      LOBYTE(v27) = 3;
    }

    else
    {
      LOBYTE(v27) = 2;
    }

    if (v9)
    {
      v28 = 1.0;
    }

    else
    {
      v28 = v10;
    }

    v29 = v4[2];
    if (v8 < v29)
    {
      goto LABEL_30;
    }

LABEL_47:
    v30 = *v4;
    v31 = v8 - *v4;
    v32 = 0x6DB6DB6DB6DB6DB7 * (v31 >> 3) + 1;
    if (v32 > 0x492492492492492)
    {
      sub_1794();
    }

    v33 = v11;
    v34 = 0x6DB6DB6DB6DB6DB7 * ((v29 - v30) >> 3);
    if (2 * v34 > v32)
    {
      v32 = 2 * v34;
    }

    if (v34 >= 0x249249249249249)
    {
      v35 = 0x492492492492492;
    }

    else
    {
      v35 = v32;
    }

    if (v35)
    {
      if (v35 <= 0x492492492492492)
      {
        operator new();
      }

      sub_1808();
    }

    v36 = 8 * (v31 >> 3);
    *v36 = v9;
    *(v36 + 8) = v12;
    *(v36 + 16) = v27;
    *(v36 + 24) = v28;
    *(v36 + 32) = 0x3FF0000000000000;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    v8 = v36 + 56;
    v37 = v36 - v31;
    memcpy((v36 - v31), v30, v31);
    v4 = v66;
    *v66 = v37;
    v66[1] = v8;
    v66[2] = 0;
    if (v30)
    {
      operator delete(v30);
    }

    v11 = v33;
    *v33 = v8;
    v13 = 1;
    v9 = v12++;
  }

  while (v7 != v12);
LABEL_64:
  v38 = *v4;
  if (*v4 == v8)
  {
    v6 = v63;
    v5 = v64;
LABEL_70:
    v42 = sub_4D1F60(a2);
    v43 = (*v42 - **v42);
    v44 = *v43;
    if (*(v42 + 38))
    {
      if (v44 >= 0x47)
      {
        v45 = v43[35];
        v46 = 2;
        if (!v45)
        {
LABEL_81:
          v47 = sub_4D1DC0(a2) - 1;
          if (v9)
          {
            v48 = 1.0;
          }

          else
          {
            v48 = v5 / 1000000000.0;
          }

          v41 = v6;
          v49 = v6 / 1000000000.0;
          v50 = v4[2];
          if (v8 >= v50)
          {
            v51 = v4;
            v52 = v8 - v38;
            v53 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v38) >> 3);
            v54 = v53 + 1;
            if ((v53 + 1) > 0x492492492492492)
            {
              sub_1794();
            }

            v55 = 0x6DB6DB6DB6DB6DB7 * ((v50 - v38) >> 3);
            if (2 * v55 > v54)
            {
              v54 = 2 * v55;
            }

            if (v55 >= 0x249249249249249)
            {
              v56 = 0x492492492492492;
            }

            else
            {
              v56 = v54;
            }

            if (v56)
            {
              if (v56 <= 0x492492492492492)
              {
                operator new();
              }

              sub_1808();
            }

            v57 = 56 * v53;
            *v57 = v9;
            *(v57 + 8) = v47;
            *(v57 + 16) = v46;
            *(v57 + 24) = v48;
            *(v57 + 32) = v49;
            *(v57 + 40) = 1;
            *(v57 + 48) = 0;
            v8 = 56 * v53 + 56;
            v58 = v57 - v52;
            memcpy((v57 - v52), v38, v52);
            v4 = v51;
            *v51 = v58;
            v51[1] = v8;
            v51[2] = 0;
            if (v38)
            {
              operator delete(v38);
            }
          }

          else
          {
            *v8 = v9;
            *(v8 + 8) = v47;
            *(v8 + 16) = v46;
            *(v8 + 24) = v48;
            *(v8 + 32) = v49;
            *(v8 + 40) = 1;
            *(v8 + 48) = 0;
            v8 += 56;
          }

          v4[1] = v8;
          v38 = *v4;
          *(v8 - 16) = 1;
          if (v38 != v8)
          {
            goto LABEL_100;
          }

          goto LABEL_107;
        }

LABEL_77:
        if ((*(*v42 + v45) & v46) != 0)
        {
          LOBYTE(v46) = 3;
        }

        else
        {
          LOBYTE(v46) = 2;
        }

        goto LABEL_81;
      }
    }

    else if (v44 >= 0x47)
    {
      v45 = v43[35];
      if (v45)
      {
        v46 = 1;
        goto LABEL_77;
      }
    }

    LOBYTE(v46) = 2;
    goto LABEL_81;
  }

  v39 = *(v8 - 48);
  v40 = v39 >= sub_4D1DC0(a2) - 1;
  v6 = v63;
  v5 = v64;
  if ((v40 & ~v13 & 1) == 0)
  {
    goto LABEL_70;
  }

  *(v8 - 16) = 1;
  if (v38 == v8)
  {
    goto LABEL_107;
  }

  do
  {
LABEL_100:
    v60 = *v38;
    v59 = v38[1];
    if (*v38 <= v59)
    {
      v61 = v38[1];
    }

    else
    {
      v61 = *v38;
    }

    if (*v38 < v59)
    {
      do
      {
        v38[6] += sub_4D23F8(a2, v60++, v41);
      }

      while (v61 != v60);
    }

    v38 += 7;
  }

  while (v38 != v8);
  v8 = *v11;
LABEL_107:
  result = sub_4D23F8(a2, *(v8 - 48), v41);
  *(v8 - 8) += result;
  if (*(a1 + 160) == 1)
  {
    return sub_86FDF0(a1, v4, a2);
  }

  return result;
}

void sub_86D830(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void *sub_86D888(uint64_t a1, void *a2, void *a3, unint64_t a4, void **a5, double a6)
{
  v11 = sub_86F6CC(a3, a4);
  v12 = v11;
  v101 = a4;
  if (!a4)
  {
    sub_86F498(a1, a2, a5, *(v11 + 16), a6);
  }

  sub_3CF22C(a2);
  sub_3CF22C(a2);
  sub_3CF22C(a2);
  v13 = (a5[1263] - a5[1262]) >> 3;
  v102 = v12;
  v100 = a3;
  if (*(v12 + 16) == 2)
  {
    result = sub_8707C8();
    v15 = 0xEF7BDEF7BDEF7BDFLL * v13;
    v16 = a5[139];
    if (a5[138] != v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!*(v12 + 16))
    {
      result = sub_8700E4();
      v15 = 0xEF7BDEF7BDEF7BDFLL * v13;
      v16 = a5[139];
      if (a5[138] == v16)
      {
        goto LABEL_10;
      }

LABEL_8:
      v17 = *(v16 - 324);
      goto LABEL_11;
    }

    result = sub_870DFC();
    v15 = 0xEF7BDEF7BDEF7BDFLL * v13;
    v16 = a5[139];
    if (a5[138] != v16)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v17 = 0;
LABEL_11:
  v18 = 0xEF7BDEF7BDEF7BDFLL * ((a5[1263] - a5[1262]) >> 3);
  v19 = v15 >= v18;
  if (v15 > v18)
  {
    v18 = v15;
  }

  v99 = v18;
  if (!v19)
  {
    v106 = 0;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v98 = vnegq_f64(v20);
    v103 = a5;
    while (1)
    {
      v22 = sub_6D3F8C(a5 + 1262, v15);
      v104 = *(v22 + 24);
      v23 = *(v22 + 32);
      v24 = v23 + ((*(v22 + 8) - *v22) >> 3) - 1;
      sub_4D0560();
      v105 = sub_4D1F50(v26, v25 + v23);
      sub_4D0560();
      sub_4D1F50(v28, v24 + v27);
      if (v17 <= v24)
      {
        v30 = v24;
      }

      else
      {
        v30 = v17;
      }

      v31 = 0;
      if (v17 < v24)
      {
        v32 = v17;
        do
        {
          v31 += sub_4D23F8(a2, v32++, v29);
        }

        while (v30 != v32);
      }

      v156[0] = v31;
      v33 = 4 * v17;
      v34 = 4 * v17 + *(sub_3CF22C(a2) + 16);
      v35 = 4 * v24;
      v36 = 4 * v24 + *(sub_3CF22C(a2) + 16);
      if (v34 == v36)
      {
        v37 = 0;
        goto LABEL_31;
      }

      v38 = v36 - v34 - 4;
      if (v38 < 0x1C)
      {
        break;
      }

      v40 = (v38 >> 2) + 1;
      v39 = (v34 + 4 * (v40 & 0x7FFFFFFFFFFFFFF8));
      v41 = (v34 + 16);
      v42 = 0uLL;
      v43 = v40 & 0x7FFFFFFFFFFFFFF8;
      v44 = 0uLL;
      do
      {
        v42 = vaddq_s32(v41[-1], v42);
        v44 = vaddq_s32(*v41, v44);
        v41 += 2;
        v43 -= 8;
      }

      while (v43);
      v37 = vaddvq_s32(vaddq_s32(v44, v42));
      if (v40 != (v40 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_30;
      }

LABEL_31:
      HIDWORD(v155) = v37;
      v46 = (v33 + *(sub_3CF22C(a2) + 40));
      v47 = (v35 + *(sub_3CF22C(a2) + 40));
      if (v46 == v47)
      {
        v48 = 0;
        goto LABEL_39;
      }

      v49 = v47 - v46 - 4;
      if (v49 < 0x1C)
      {
        v48 = 0;
        v50 = v46;
        do
        {
LABEL_38:
          v56 = v50->i32[0];
          v50 = (v50 + 4);
          v48 += v56;
        }

        while (v50 != v47);
        goto LABEL_39;
      }

      v51 = (v49 >> 2) + 1;
      v50 = (v46 + 4 * (v51 & 0x7FFFFFFFFFFFFFF8));
      v52 = v46 + 1;
      v53 = 0uLL;
      v54 = v51 & 0x7FFFFFFFFFFFFFF8;
      v55 = 0uLL;
      do
      {
        v53 = vaddq_s32(v52[-1], v53);
        v55 = vaddq_s32(*v52, v55);
        v52 += 2;
        v54 -= 8;
      }

      while (v54);
      v48 = vaddvq_s32(vaddq_s32(v55, v53));
      if (v51 != (v51 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_38;
      }

LABEL_39:
      LODWORD(v155) = v48;
      v57 = (v33 + *(sub_3CF22C(a2) + 64));
      v58 = (v35 + *(sub_3CF22C(a2) + 64));
      if (v57 == v58)
      {
        v59 = 0;
        v60 = v102;
        goto LABEL_47;
      }

      v61 = v58 - v57 - 4;
      if (v61 < 0x1C)
      {
        v59 = 0;
        v62 = v57;
        v60 = v102;
        do
        {
LABEL_46:
          v68 = v62->i32[0];
          v62 = (v62 + 4);
          v59 += v68;
        }

        while (v62 != v58);
        goto LABEL_47;
      }

      v63 = (v61 >> 2) + 1;
      v62 = (v57 + 4 * (v63 & 0x7FFFFFFFFFFFFFF8));
      v64 = v57 + 1;
      v65 = 0uLL;
      v66 = v63 & 0x7FFFFFFFFFFFFFF8;
      v67 = 0uLL;
      do
      {
        v65 = vaddq_s32(v64[-1], v65);
        v67 = vaddq_s32(*v64, v67);
        v64 += 2;
        v66 -= 8;
      }

      while (v66);
      v59 = vaddvq_s32(vaddq_s32(v67, v65));
      v60 = v102;
      if (v63 != (v63 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_46;
      }

LABEL_47:
      v69 = v17;
      v154 = v59;
      v70 = (*v105 - **v105);
      if (*v70 >= 0x9Bu && (v71 = v70[77]) != 0)
      {
        v72 = *(*v105 + v71);
        v73 = (v72 & 0x8000) == 0;
        if (*(v60 + 16) == 2)
        {
          v74 = 2;
        }

        else
        {
          v74 = 5;
        }

        if ((v72 & 8) != 0)
        {
          v75 = 4;
        }

        else
        {
          v75 = v74;
        }
      }

      else
      {
        if (*(v60 + 16) == 2)
        {
          v75 = 2;
        }

        else
        {
          v75 = 5;
        }

        v73 = 1;
      }

      v106 = (*(v22 + 227) | v106) != 0;
      if (*(a1 + 72) == 1 && (*(v60 + 40) & 1) == 0 && *(v60 + 8) <= v24)
      {
        v130 = 0;
        v129 = 0;
        v131 = 0;
        v133 = -1;
        v135 = 0;
        v136 = 0;
        __p = 0;
        v137 = 0;
        *&v76 = -1;
        *(&v76 + 1) = -1;
        v138 = v76;
        v139 = v76;
        v140 = v76;
        v141 = -1;
        v142 = 0;
        v143 = -1;
        v144 = 0;
        v145 = 0;
        v146 = v98;
        v147 = 0;
        v149 = 0;
        v150 = 0;
        v151 = xmmword_229B660;
        v148 = 98;
        v152 = 0;
        v153[0] = 0;
        *(v153 + 6) = 0;
        v132 = 16;
        sub_87B1E4(v108, &v129, v156, &v155 + 1, &v155, &v154);
        if (v73 != *(v103 + 1097))
        {
          v124 = v73 | 0x100;
        }

        v109 = v23;
        v110 = v24;
        v116 = v23;
        v117 = sub_4D23F8(a2, v23, v77);
        v79 = sub_4D25C0(a2, v116, v78);
        v118 = v117 + v79;
        v115 = v117 + v79;
        v112 = v69;
        v80 = v103[139];
        if (v80 >= v103[140])
        {
          v81 = sub_87B564(v103 + 138, v108);
        }

        else
        {
          sub_5EF290(v103[139], v108);
          v81 = (v80 + 2616);
          v103[139] = v80 + 2616;
        }

        v60 = v102;
        v103[139] = v81;
        v155 = 0;
        v156[0] = 0;
        v154 = 0;
        v69 = v110;
        sub_5C25A8(v108);
        if (__p)
        {
          v135 = __p;
          operator delete(__p);
        }

        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }
      }

      result = v100;
      if (0x6DB6DB6DB6DB6DB7 * ((v100[1] - *v100) >> 3) - 1 <= v101)
      {
        v82 = 0;
        v83 = v104;
        if (*(a1 + 73) != 1)
        {
          goto LABEL_82;
        }
      }

      else
      {
        result = sub_86F6CC(v100, v101 + 1);
        v82 = result[6];
        v83 = v104;
        if (*(a1 + 73) != 1)
        {
          goto LABEL_82;
        }
      }

      if (*(v60 + 8) > v24 || (*(v60 + 40) & 1) != 0 || (v83 ? (v84 = v83) : (v84 = 3), *(a1 + 80) > v82))
      {
LABEL_82:
        if (v83)
        {
          goto LABEL_83;
        }

        v17 = v69;
        a5 = v103;
        if (++v15 == v99)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v83 = v84;
LABEL_83:
        v85 = v83;
        sub_87B1E4(v108, v22, v156, &v155 + 1, &v155, &v154);
        v119 = v85;
        v125 = *(v22 + 72);
        v86 = *(v22 + 88);
        v87 = *(v22 + 104);
        v88 = *(v22 + 120);
        *(v128 + 12) = *(v22 + 132);
        v127 = v87;
        v128[0] = v88;
        v126 = v86;
        if (v122 != -1)
        {
          v111 = v122 + v23;
        }

        v109 = v23;
        v110 = v24;
        v112 = v69;
        v123 = v75;
        a5 = v103;
        if (v73 != *(v103 + 1097) && v75 != 4)
        {
          v124 = v73 | 0x100;
        }

        if (v120 == -1 || v121 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v92 = sub_4D23F8(v103, v23, *&v86);
          v113 = v23;
          v93 = *(a1 + 56);
          if (v93 >= v92)
          {
            v93 = v92;
          }

          v91 = v92 - v93;
        }

        else
        {
          v113 = v120 + v23;
          v89 = sub_4D23F8(v103, v120 + v23, *&v86);
          v91 = v121;
          v23 = v113;
          if (v89 < v121)
          {
            v91 = v89;
          }
        }

        v114 = v91;
        v94 = sub_4D25C0(v103, v23, v90);
        v115 = v114 + v94;
        v116 = v24;
        v117 = 0;
        v96 = sub_4D25C0(v103, v24, v95);
        v118 = v117 + v96;
        v97 = v103[139];
        if (v97 < v103[140])
        {
          v21 = sub_6083DC(v97, v108) + 2616;
        }

        else
        {
          v21 = sub_87B6F0(v103 + 138, v108);
        }

        v103[139] = v21;
        v155 = 0;
        v156[0] = 0;
        v154 = 0;
        result = sub_5C25A8(v108);
        v106 = 0;
        v17 = v24;
        if (++v15 == v99)
        {
          goto LABEL_99;
        }
      }
    }

    v37 = 0;
    v39 = v34;
    do
    {
LABEL_30:
      v45 = *v39++;
      v37 += v45;
    }

    while (v39 != v36);
    goto LABEL_31;
  }

LABEL_99:
  if (0x6DB6DB6DB6DB6DB7 * ((v100[1] - *v100) >> 3) - 1 == v101)
  {
    return sub_86F8E8();
  }

  return result;
}

void sub_86E188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  *(v24 + 1112) = v25;
  sub_5C25A8(va);
  sub_5ECFBC(&STACK[0xAB8]);
  _Unwind_Resume(a1);
}

void sub_86E1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_5C25A8(va);
  sub_5ECFBC(&STACK[0xAB8]);
  _Unwind_Resume(a1);
}

void sub_86E1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_5C25A8(va);
  _Unwind_Resume(a1);
}

void sub_86E1F4(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    v14 = a1;
    if (v1 != v2)
    {
      if (0xEF7BDEF7BDEF7BDFLL * (v4 >> 3) < 0x108421084210843)
      {
        operator new();
      }

      sub_1808();
    }

    __p = 0;
    v11 = 8 * (v4 >> 3);
    v12 = v11;
    v13 = v11;
    if (v4 < v3)
    {
      sub_7028CC(a1, &__p);
      v5 = v11;
      while (1)
      {
        v6 = v12;
        if (v12 == v5)
        {
          break;
        }

        v7 = (v12 - 248);
        v12 -= 248;
        v8 = *(v6 - 208);
        if (v8)
        {
          *(v6 - 200) = v8;
          operator delete(v8);
        }

        v9 = *v7;
        if (*v7)
        {
          *(v6 - 240) = v9;
          operator delete(v9);
        }
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_86E330(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_702A44(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x86E314);
}

void sub_86E358(uint64_t a1, void *a2)
{
  v2 = a2[138];
  if ((0x3795876FF3795877 * ((a2[139] - v2) >> 3)) >= 2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v7 = v2 + 2616 * v5;
      v8 = *(v7 + 16);
      if (v8 == -1)
      {
        v8 = *(v7 + 24) - 1;
      }

      v9 = sub_4D1F50(a2, v8);
      v10 = (*v9 - **v9);
      v12 = *v10 >= 0x2Fu && (v11 = v10[23]) != 0 && *(*v9 + v11) == 0;
      *(v7 + 1029) = v12;
      v13 = *(v7 + 40);
      LOBYTE(v14) = 1;
      while (1)
      {
        v15 = *(v7 + 16);
        if (v15 == -1)
        {
          v15 = *(v7 + 24) - 1;
        }

        if (v13 > v15)
        {
          break;
        }

        v16 = sub_4D1F50(a2, v13);
        if (v14)
        {
          v17 = (*v16 - **v16);
          if (*v17 < 0x2Fu)
          {
            LOBYTE(v14) = 0;
            ++v13;
          }

          else
          {
            v18 = v17[23];
            if (v18)
            {
              v19 = *(*v16 + v18);
              if (v19 > 0x2A)
              {
                LOBYTE(v14) = 0;
              }

              else
              {
                v14 = 0x50426810004uLL >> v19;
              }

              ++v13;
            }

            else
            {
              LOBYTE(v14) = 0;
              ++v13;
            }
          }
        }

        else
        {
          LOBYTE(v14) = 0;
          ++v13;
        }
      }

      *(v7 + 1030) = v14 & v4 & 1;
      if (v14 & v4)
      {
        v4 = 1;
        v20 = *(v7 + 24);
        if (v20 < sub_4D1DC0(a2))
        {
          while (1)
          {
LABEL_30:
            v21 = sub_4D1F50(a2, v20);
            v22 = (*v21 - **v21);
            if (*v22 < 0x2Fu)
            {
              goto LABEL_3;
            }

            v23 = v22[23];
            if (!v23)
            {
              goto LABEL_3;
            }

            v24 = *(*v21 + v23);
            if (v24 > 0x2A)
            {
              goto LABEL_3;
            }

            if (((1 << v24) & 0x50426810004) == 0)
            {
              break;
            }

            if (++v20 >= sub_4D1DC0(a2))
            {
              goto LABEL_5;
            }
          }

          if (*(*v21 + v23))
          {
LABEL_3:
            v6 = 0;
            goto LABEL_4;
          }

          v6 = 1;
LABEL_4:
          *(v7 + 1028) = v6;
        }
      }

      else
      {
        v4 = *(v7 + 1029);
        v20 = *(v7 + 24);
        if (v20 < sub_4D1DC0(a2))
        {
          goto LABEL_30;
        }
      }

LABEL_5:
      ++v5;
      v2 = a2[138];
    }

    while (v5 < 0x3795876FF3795877 * ((a2[139] - v2) >> 3));
  }
}

void *sub_86E5AC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v70 = v0;
  sub_6D2C70(v73, *v0, 1, *(v0 + 74), v0 + 8);
  v3 = 0x3795876FF3795877 * ((*(v2 + 1112) - *(v2 + 1104)) >> 3);
  if (v3 >= 3 && *(v2 + 1096) == 0)
  {
    v6 = 1;
    do
    {
      v8 = sub_578320((v2 + 1104), v6);
      v9 = sub_578320((v2 + 1104), v6 + 1);
      if (*(v8 + 384) != 5)
      {
        goto LABEL_7;
      }

      v10 = *(v8 + 160) - 11;
      v11 = v10 > 0x37;
      v12 = (1 << v10) & 0xE00000000C0601;
      if (v11 || v12 == 0)
      {
        goto LABEL_7;
      }

      v14 = *(v8 + 24);
      v15 = *(v8 + 16) == -1 ? v14 - 1 : *(v8 + 16);
      if (v15 + 1 != v14)
      {
        goto LABEL_7;
      }

      v16 = v9;
      if (v14 >= sub_4D1DC0(v2))
      {
        goto LABEL_7;
      }

      v17 = sub_4D1F50(v2, v15);
      v18 = sub_4D1F50(v2, v14);
      v20 = sub_4D23F8(v2, v14, v19);
      v21 = v17[4];
      v22 = sub_2B51D8(*(v70 + 32), v21 & 0xFFFFFFFFFFFFLL);
      v23 = (v22 - *v22);
      v24 = *v23;
      if ((v21 & 0xFF000000000000) != 0)
      {
        if (v24 < 0x29)
        {
          goto LABEL_7;
        }

        v25 = v23[20];
        if (!v25)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v24 < 0x27)
        {
          goto LABEL_7;
        }

        v25 = v23[19];
        if (!v25)
        {
          goto LABEL_7;
        }
      }

      v69 = *(v22 + v25 + *(v22 + v25));
      if (v69 >= 3 && v20 >= *(v70 + 136))
      {
        sub_6D34C0(v73, v17, 0, &v71);
        v26 = *v71;
        v27 = v71[1];
        if (*v71 != v27)
        {
          v28 = v27 - v26 - 248;
          if (v28 < 0xF8)
          {
            v29 = 0;
            v30 = *v71;
            goto LABEL_32;
          }

          v31 = 0;
          v32 = 0;
          v33 = v28 / 0xF8 + 1;
          v30 = v26 + 248 * (v33 & 0x3FFFFFFFFFFFFFELL);
          v34 = (v26 + 489);
          v35 = v33 & 0x3FFFFFFFFFFFFFELL;
          do
          {
            v31 += *(v34 - 248);
            v32 += *v34;
            v34 += 496;
            v35 -= 2;
          }

          while (v35);
          v29 = v32 + v31;
          if (v33 != (v33 & 0x3FFFFFFFFFFFFFELL))
          {
            do
            {
LABEL_32:
              v29 += *(v30 + 241);
              v30 += 248;
            }

            while (v30 != v27);
          }

          if (v29 == 2)
          {
            do
            {
              if (*(v26 + 241) == 1)
              {
                v37 = *(v26 + 24);
                if (!v37 || v37 == 3)
                {
                  break;
                }
              }

              v26 += 248;
            }

            while (v26 != v27);
            if (v26 != v27 && *(v16 + 1008) >= *(v70 + 112))
            {
              v39 = (*v17 - **v17);
              v40 = *v39;
              if (*(v17 + 38))
              {
                if (v40 < 0x49)
                {
                  goto LABEL_53;
                }

                v41 = v39[36];
                if (!v41)
                {
                  goto LABEL_53;
                }

LABEL_52:
                v42 = *(*v17 + v41);
              }

              else
              {
                if (v40 >= 0x4B)
                {
                  v41 = v39[37];
                  if (v41)
                  {
                    goto LABEL_52;
                  }
                }

LABEL_53:
                v42 = -1;
              }

              v43 = (*v18 - **v18);
              v44 = *v43;
              if (*(v18 + 38))
              {
                if (v44 < 0x4B)
                {
                  goto LABEL_61;
                }

                v45 = v43[37];
                if (!v45)
                {
                  goto LABEL_61;
                }

LABEL_60:
                v46 = *(*v18 + v45);
              }

              else
              {
                if (v44 >= 0x49)
                {
                  v45 = v43[36];
                  if (v45)
                  {
                    goto LABEL_60;
                  }
                }

LABEL_61:
                v46 = 0xFFFF;
              }

              v47 = v42 + 18000;
              v48 = v42 - 18000;
              if ((v47 >> 5) < 0x465u)
              {
                v48 = v47;
              }

              v49 = v46 - v48;
              if (v49 > 18000)
              {
                v49 -= 36000;
              }

              if (v49 < -17999)
              {
                v49 += 36000;
              }

              v50 = v49 / 100.0;
              if (v50 < *(v70 + 96))
              {
                v50 = *(v70 + 96);
              }

              if (v50 <= *(v70 + 104))
              {
                v51 = *(v16 + 1008);
                v52 = v69 * *(v70 + 88);
                v53 = (v52 + v52);
                if (v52 > -4.50359963e15)
                {
                  v54 = ((v53 - 1) / 2);
                }

                else
                {
                  v54 = v69 * *(v70 + 88);
                }

                v55 = ((v53 + 1) >> 1);
                if (v52 >= 4.50359963e15)
                {
                  v55 = v69 * *(v70 + 88);
                }

                if (v52 >= 0.0)
                {
                  v56 = v55;
                }

                else
                {
                  v56 = v54;
                }

                v57 = sin(v50 * 3.14159265 / 180.0);
                v58 = v56 / (v57 + v57);
                if (v58 >= 0.0)
                {
                  if (v58 < 4.50359963e15)
                  {
                    v59 = (v58 + v58) + 1;
LABEL_84:
                    v58 = (v59 >> 1);
                  }
                }

                else if (v58 > -4.50359963e15)
                {
                  v59 = (v58 + v58) - 1 + (((v58 + v58) - 1) >> 63);
                  goto LABEL_84;
                }

                v60 = v58;
                v61 = *(v70 + 120) * v51;
                v62 = (v61 + v61);
                if (v61 > -4.50359963e15)
                {
                  v63 = ((v62 - 1) / 2);
                }

                else
                {
                  v63 = *(v70 + 120) * v51;
                }

                v64 = ((v62 + 1) >> 1);
                if (v61 >= 4.50359963e15)
                {
                  v64 = *(v70 + 120) * v51;
                }

                if (v61 >= 0.0)
                {
                  v65 = v64;
                }

                else
                {
                  v65 = v63;
                }

                v66 = v20 - *(v70 + 136);
                if (v66 >= v65)
                {
                  v66 = v65;
                }

                if (v66 < v60)
                {
                  v60 = v66;
                }

                if (*(v70 + 128) < v60)
                {
                  v60 = *(v70 + 128);
                }

                *(v8 + 112) = v60;
                v67 = sub_4D25C0(v2, *(v8 + 104), v65);
                v68 = *(v8 + 112);
                *(v8 + 120) = v68 + v67;
                *(v8 + 1008) += v68;
                *(v16 + 1008) -= v68;
                *(v16 + 48) = *(v8 + 112);
              }
            }
          }
        }

        v36 = v72;
        if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v36->__on_zero_shared)(v36);
          std::__shared_weak_count::__release_weak(v36);
        }
      }

LABEL_7:
      v7 = v6 + 2;
      ++v6;
    }

    while (v3 != v7);
  }

  return sub_6D2D60(v73);
}

void sub_86EBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_6D2D60(va1);
  _Unwind_Resume(a1);
}

void sub_86EBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_86EBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_86EC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_86EC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_86EC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_86EC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_86EC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_86EC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_86EC7C(uint64_t a1, void *a2)
{
  if (*(a1 + 145) == 1)
  {
    operator new();
  }
}

uint64_t sub_86EE18(uint64_t a1, void *a2)
{
  v4 = a2[139];
  v5 = sub_578320(a2 + 138, 0x3795876FF3795877 * ((v4 - a2[138]) >> 3) - 2);
  v6 = *(v4 - 2576);
  v7 = sub_4D1DC0(a2);
  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v6 >= v7)
  {
    result = 1;
    if (*(a1 + 144) != 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v9 = v8 - 1;
  do
  {
    v10 = *(a1 + 32);
    v11 = sub_4D1F50(a2, v6);
    result = sub_31C0F0(v10, *(v11 + 32) & 0xFFFFFFFFFFFFFFLL);
    if (result)
    {
      v13 = v9 == v6;
    }

    else
    {
      v13 = 1;
    }

    ++v6;
  }

  while (!v13);
  if (*(a1 + 144) == 1)
  {
LABEL_14:
    v14 = *(v5 + 160);
    if (((v14 - 25) > 0x3F || ((1 << (v14 - 25)) & 0x9000000000000001) == 0) && v14 != 17)
    {
      *(v5 + 816) = result;
    }
  }

  return result;
}

void sub_86EF30(uint64_t a1, void *a2)
{
  v2 = a2[138];
  for (i = a2[139]; v2 != i; v2 += 327)
  {
    v5 = v2[5];
    if (v5 < v2[3])
    {
      do
      {
        v6 = sub_4D1F50(a2, v5);
        v7 = (*v6 - **v6);
        if (*v7 < 0x2Fu)
        {
          break;
        }

        v8 = v7[23];
        if (!v8)
        {
          break;
        }

        v9 = *(*v6 + v8);
        v10 = v9 > 0x2A;
        v11 = (1 << v9) & 0x50426810004;
        if (v10 || v11 == 0)
        {
          break;
        }

        ++v5;
      }

      while (v5 < v2[3]);
      if (v5 != v2[5] && v5 < v2[3])
      {
        if ((v13 = sub_4D1F50(a2, v5), v14 = (*v13 - **v13), *v14 >= 0x2Fu) && (v15 = v14[23]) != 0 && !*(*v13 + v15) || *sub_6B57E8(a2 + 1479, v5) != 3)
        {
          v2[7] = v5;
        }
      }
    }
  }
}

void sub_86F06C(uint64_t a1, void *a2)
{
  if (*(a1 + 73) != 1)
  {
    return;
  }

  v3 = a1;
  v4 = sub_4D1F50(a2, 0);
  v5 = (*v4 - **v4);
  v6 = *v5;
  if (*(v4 + 38))
  {
    if (v6 >= 0x47)
    {
      v7 = v5[35];
      if (v7)
      {
        v8 = 2;
        goto LABEL_9;
      }
    }

LABEL_11:
    v9 = 0;
    v10 = a2[138];
    v45 = a2[139];
    if (v10 == v45)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v6 < 0x47)
  {
    goto LABEL_11;
  }

  v7 = v5[35];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = 1;
LABEL_9:
  v9 = (*(*v4 + v7) & v8) != 0;
  v10 = a2[138];
  v45 = a2[139];
  if (v10 == v45)
  {
    return;
  }

LABEL_12:
  v48 = v9;
  do
  {
    v12 = *(v10 + 40);
    v13 = *(v10 + 24);
    if (v12 <= v13)
    {
      v14 = *(v10 + 24);
    }

    else
    {
      v14 = *(v10 + 40);
    }

    if (v12 < v13)
    {
      v47 = v10 + 704;
      do
      {
        if (v12 >= sub_4D1DC0(a2) - 1)
        {
          ++v12;
          continue;
        }

        v15 = sub_4D1F50(a2, v12);
        v16 = *v15;
        v17 = *(v15 + 38);
        v18 = sub_4D1F50(a2, ++v12);
        v20 = (v16 - *v16);
        v21 = *v20;
        if (v17)
        {
          if (v21 >= 0x47)
          {
            v22 = v20[35];
            if (!v22)
            {
              goto LABEL_33;
            }

            v23 = 2;
LABEL_31:
            v22 = (*(v16 + v22) & v23) != 0;
            goto LABEL_33;
          }
        }

        else if (v21 >= 0x47)
        {
          v22 = v20[35];
          if (!v22)
          {
            goto LABEL_33;
          }

          v23 = 1;
          goto LABEL_31;
        }

        v22 = 0;
LABEL_33:
        v24 = *v18;
        v25 = (*v18 - **v18);
        v26 = *v25;
        if (*(v18 + 38))
        {
          if (v26 >= 0x47)
          {
            v27 = v25[35];
            if (v27)
            {
              if (v22 != ((*&v24[v27] & 2) != 0))
              {
                goto LABEL_43;
              }

              continue;
            }
          }
        }

        else if (v26 >= 0x47)
        {
          v28 = v25[35];
          if (v28)
          {
            if (v22 != ((*&v24[v28] & 1) != 0))
            {
              goto LABEL_43;
            }

            continue;
          }
        }

        if (v22)
        {
LABEL_43:
          if (sub_4D23F8(a2, v12, v19) >= *(v3 + 80))
          {
            v29 = 56;
            if ((v48 & 1) == 0)
            {
              v29 = 8;
            }

            if (v9)
            {
              v29 = 32;
            }

            v30 = v47 + v29;
            v32 = *(v47 + v29 + 8);
            v31 = *(v47 + v29 + 16);
            if (v32 >= v31)
            {
              v46 = v9;
              v34 = v3;
              v35 = *v30;
              v36 = v32 - *v30;
              v37 = v36 >> 3;
              v38 = (v36 >> 3) + 1;
              if (v38 >> 61)
              {
                sub_1794();
              }

              v39 = v31 - v35;
              if (v39 >> 2 > v38)
              {
                v38 = v39 >> 2;
              }

              if (v39 >= 0x7FFFFFFFFFFFFFF8)
              {
                v40 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v40 = v38;
              }

              if (v40)
              {
                if (!(v40 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              *(8 * v37) = v12;
              v33 = 8 * v37 + 8;
              memcpy(0, v35, v36);
              *v30 = 0;
              *(v30 + 8) = v33;
              *(v30 + 16) = 0;
              if (v35)
              {
                operator delete(v35);
              }

              v3 = v34;
              v9 = v46;
            }

            else
            {
              *v32 = v12;
              v33 = (v32 + 1);
            }

            v48 |= (v9 | v48) ^ 1;
            *(v30 + 8) = v33;
            v9 ^= 1u;
          }
        }
      }

      while (v12 != v14);
    }

    if (*(v10 + 712) != *(v10 + 720) || *(v10 + 760) != *(v10 + 768))
    {
      *(v10 + 672) = -1;
      *&v11 = -1;
      *(&v11 + 1) = -1;
      *(v10 + 640) = v11;
      *(v10 + 656) = v11;
      *(v10 + 624) = v11;
      *(v10 + 680) = 0;
      *(v10 + 688) = -1;
      *(v10 + 696) = 0;
    }

    v10 += 2616;
  }

  while (v10 != v45);
  v41 = a2[139] - a2[138];
  if (v41)
  {
    v42 = 0;
    v43 = 0x3795876FF3795877 * (v41 >> 3);
    do
    {
      while (1)
      {
        v44 = sub_578320(a2 + 138, v42);
        if (*(v3 + 160) == 1)
        {
          break;
        }

        *(v44 + 704) = *(v44 + 736) != *(v44 + 744);
        *(v44 + 705) = *(v44 + 760) != *(v44 + 768);
        if (v43 == ++v42)
        {
          return;
        }
      }

      sub_86FF2C(v3, a2, v42++);
    }

    while (v43 != v42);
  }
}

void sub_86F498(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v51 = *(sub_3CF22C(a2) + 256);
  v52 = v51;
  v50 = v51;
  v10 = 0;
  if (sub_4D20C0(a2, 0))
  {
    v10 = a5 > *(a1 + 48);
  }

  if ((sub_69B004(a3) & 1) != 0 || (*(a1 + 40) | 2) == 0xB)
  {
    v11 = 85;
    if (v10)
    {
      if (a4)
      {
        v11 = 85;
      }

      else
      {
        v11 = 88;
      }
    }
  }

  else if (v10)
  {
    v11 = 25;
  }

  else
  {
    v11 = 17;
  }

  v26 = 0;
  v25 = 0;
  v27 = 0;
  v29 = -1;
  __p = 0;
  v32 = 0;
  v31 = 0;
  v33 = 0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v34 = v12;
  v35 = v12;
  v36 = v12;
  v37 = -1;
  v38 = 0;
  v39 = -1;
  v40 = 0;
  v41 = 0;
  v42 = vnegq_f64(v12);
  v43 = 0;
  v44 = 98;
  v46 = 0;
  v45 = 0;
  v47 = xmmword_229B660;
  v48 = 0;
  v49[0] = 0;
  *(v49 + 6) = 0;
  v28 = v11;
  v16 = 0;
  sub_87B1E4(v17, &v25, &v16, &v52, &v51, &v50);
  v18 = 0;
  v19 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  if (*(a3 + 1096) == a4)
  {
    v13 = 5;
  }

  else
  {
    v13 = a4;
  }

  v24 = v13;
  v14 = *(a3 + 1112);
  if (v14 >= *(a3 + 1120))
  {
    v15 = sub_87B564((a3 + 1104), v17);
  }

  else
  {
    sub_5EF290(*(a3 + 1112), v17);
    v15 = v14 + 2616;
    *(a3 + 1112) = v14 + 2616;
  }

  *(a3 + 1112) = v15;
  sub_5C25A8(v17);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_86F690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_5C25A8(va);
  sub_5ECFBC(&STACK[0xA48]);
  _Unwind_Resume(a1);
}

unint64_t sub_86F6CC(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 56 * a2;
}

void sub_86F808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void *sub_86F8E8()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v46 = v3;
  v49 = v4;
  v6 = v5;
  v7 = v0;
  v8 = *(*(v1 + 1112) - 2592);
  v9 = sub_4D1DC0(v5);
  v47 = v8;
  v48 = v9;
  v11 = v9 - 1;
  if (v8 <= v9 - 1)
  {
    v12 = v9 - 1;
  }

  else
  {
    v12 = v8;
  }

  if (v8 >= v9 - 1)
  {
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v13 += sub_4D23F8(v6, v8, v10);
      v89 = v13;
      v17 = sub_3CF22C(v6);
      v14 += *sub_762504((v17 + 16), v8);
      v18 = sub_3CF22C(v6);
      v15 += *sub_762504((v18 + 40), v8);
      v19 = sub_3CF22C(v6);
      v16 += *sub_762504((v19 + 64), v8++);
    }

    while (v12 != v8);
  }

  v20 = v13 + sub_4D23F8(v6, v11, v10);
  v89 = v20;
  v21 = *(sub_3CF22C(v6) + 260);
  v88 = *(*(sub_3CF22C(v6) + 16) + 4 * v11) + v21 + v14;
  v87 = *(*(sub_3CF22C(v6) + 40) + 4 * v11) + v21 + v15;
  v86 = *(*(sub_3CF22C(v6) + 64) + 4 * v11) + v21 + v16;
  v22 = sub_4D1F50(v6, v11);
  sub_4D1F50(v6, v11);
  v23 = (*v22 - **v22);
  if (*v23 >= 0x9Bu && (v24 = v23[77]) != 0)
  {
    v25 = *(*v22 + v24);
    if (*(v49 + 16) == 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = 5;
    }

    if ((v25 & 8) != 0)
    {
      v27 = 4;
    }

    else
    {
      v27 = v26;
    }
  }

  else if (*(v49 + 16) == 2)
  {
    v27 = 2;
  }

  else
  {
    v27 = 5;
  }

  sub_6D2C70(v85, *v7, 1, *(v7 + 74), v7 + 8);
  v28 = sub_6D4994(v85, v2);
  if ((v28 - 33) <= 0x33 && ((1 << (v28 - 33)) & 0xC000000000003) != 0)
  {
    if (v46 & 1) != 0 || *(v7 + 64) > v20 && ((v29 = *(v7 + 32), v30 = sub_4D1F60(v2), (sub_31C0F0(v29, *(v30 + 32) & 0xFFFFFFFFFFFFFFLL)) || (v31 = *(v7 + 32), v32 = sub_4D1F60(v2), v33 = sub_2B51D8(v31, *(v32 + 32) | (*(v32 + 36) << 32)), v34 = (v33 - *v33), *v34 >= 0x2Fu) && (v35 = v34[23]) != 0 && *(v33 + v35) == 18))
    {
      if (sub_69B0E0(v2))
      {
        v28 = 82;
      }

      else
      {
        v28 = 18;
      }
    }
  }

  v61 = 0;
  v60 = 0;
  v62 = 0;
  v64 = -1;
  __p = 0;
  v67 = 0;
  v66 = 0;
  v68 = 0;
  v36.f64[0] = NAN;
  v36.f64[1] = NAN;
  v69 = v36;
  v70 = v36;
  v71 = v36;
  v72 = -1;
  v73 = 0;
  v74 = -1;
  v75 = 0;
  v76 = 0;
  v77 = vnegq_f64(v36);
  v78 = 0;
  v79 = 98;
  v81 = 0;
  v80 = 0;
  v82 = xmmword_229B660;
  v83 = 0;
  v84[0] = 0;
  *(v84 + 6) = 0;
  v63 = v28;
  sub_87B1E4(v50, &v60, &v89, &v88, &v87, &v86);
  v51 = v11;
  v52 = v48;
  v55 = v48;
  v38 = sub_4D25C0(v2, v48, v37);
  v57 = v56 + v38;
  v54 = v56 + v38;
  v53 = v47;
  v58 = v27;
  v39 = sub_4D1F60(v6);
  v40 = (*v39 - **v39);
  if (*v40 < 0x9Bu || (v41 = v40[77]) == 0)
  {
    LOWORD(v42) = 1;
    if (*(v2 + 1097) == 1)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v42 = (*(*v39 + v41 + 1) & 0x80) == 0;
  if (*(v2 + 1097) != v42)
  {
LABEL_36:
    v59 = v42 | 0x100;
  }

LABEL_37:
  v43 = *(v2 + 1112);
  if (v43 >= *(v2 + 1120))
  {
    v44 = sub_87B564((v2 + 1104), v50);
  }

  else
  {
    sub_5EF290(*(v2 + 1112), v50);
    v44 = v43 + 2616;
    *(v2 + 1112) = v43 + 2616;
  }

  *(v2 + 1112) = v44;
  sub_5C25A8(v50);
  if (__p)
  {
    v66 = __p;
    operator delete(__p);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  return sub_6D2D60(v85);
}

void sub_86FD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *(v11 + 1112) = v12;
  sub_5C25A8(va);
  sub_5ECFBC(&STACK[0xA60]);
  sub_6D2D60(&STACK[0xB58]);
  _Unwind_Resume(a1);
}

void *sub_86FDF0(void *result, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v7 = result;
    while (1)
    {
      if ((0x6DB6DB6DB6DB6DB7 * ((v3 - *a2) >> 3)) < 2)
      {
        return result;
      }

      v9 = *v4;
      v8 = *(v4 + 8);
      if (*v4 <= v8)
      {
        v10 = *(v4 + 8);
      }

      else
      {
        v10 = *v4;
      }

      if (*v4 < v8)
      {
        while (1)
        {
          result = sub_4D1F50(a3, v9);
          v12 = (*result - **result);
          if (*v12 >= 0x2Fu)
          {
            v13 = v12[23];
            if (v13)
            {
              if (*(*result + v13) == 9)
              {
                goto LABEL_25;
              }
            }
          }

          if (v10 == ++v9)
          {
            if (*(v4 + 16) != 2 || *v4 == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_23;
          }
        }
      }

      if (*(v4 + 16) != 2 || v9 == 0)
      {
LABEL_25:
        v4 += 56;
        v3 = a2[1];
        if (v4 == v3)
        {
          return result;
        }
      }

      else
      {
LABEL_23:
        if ((*(v4 + 40) & 1) != 0 || *(v4 + 48) > v7[21])
        {
          goto LABEL_25;
        }

        result = sub_92B3A0(a2, v4, 3);
        v3 = a2[1];
        if (v4 == v3)
        {
          return result;
        }
      }
    }
  }

  return result;
}

int **sub_86FF2C(uint64_t a1, void *a2, unint64_t a3)
{
  result = sub_578320(a2 + 138, a3);
  v6 = result[92];
  v7 = result[93];
  if (v6 != v7)
  {
    v8 = result;
    do
    {
      v9 = 0x3795876FF3795877 * ((a2[139] - a2[138]) >> 3);
      if (a3 <= v9)
      {
        v10 = 0x3795876FF3795877 * ((a2[139] - a2[138]) >> 3);
      }

      else
      {
        v10 = a3;
      }

      if (v9 <= a3)
      {
LABEL_3:
        *(v8 + 704) = 1;
      }

      else
      {
        v11 = *v6;
        v12 = a3;
        while (1)
        {
          result = sub_50EA30(a2 + 138, v12);
          v13 = result[95];
          v14 = result[96];
          if (v13 != v14)
          {
            while (*v13 <= v11)
            {
              v13 += 2;
              if (v13 == v14)
              {
                goto LABEL_11;
              }
            }
          }

          if (v13 != v14)
          {
            break;
          }

LABEL_11:
          if (++v12 == v10)
          {
            goto LABEL_3;
          }
        }

        v15 = *v13;
        v16 = sub_578320(a2 + 138, v12);
        result = sub_4D2544(a2, *v6, 1, v15, 0, v17);
        v18 = result;
        v19 = *v6;
        v20 = *v6 >= v15;
        if (*v6 > v15)
        {
          v15 = *v6;
        }

        if (!v20)
        {
          while (1)
          {
            result = sub_4D1F50(a2, v19);
            v21 = (*result - **result);
            if (*v21 >= 0x2Fu)
            {
              v22 = v21[23];
              if (v22)
              {
                if (*(*result + v22) == 9)
                {
                  break;
                }
              }
            }

            if (v15 == ++v19)
            {
              goto LABEL_20;
            }
          }

LABEL_26:
          *(v8 + 704) = 1;
          *(v16 + 705) = 1;
          goto LABEL_4;
        }

LABEL_20:
        if (v18 > *(a1 + 168))
        {
          goto LABEL_26;
        }
      }

LABEL_4:
      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t sub_8700E4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v47 = v0;
  sub_69CA74(v51);
  v6 = *v4;
  v5 = v4[1];
  v46 = v4;
  if (*v4 <= v5 + 1)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = *v4;
  }

  if (v6 < v5 + 1)
  {
    v8 = 40 * v6;
    v9 = *v4;
    do
    {
      while (1)
      {
        v10 = sub_4D1F50(v2, v9);
        v11 = *(v47 + 32);
        v12 = *(v10 + 32);
        v13 = sub_2B51D8(v11, v12 & 0xFFFFFFFFFFFFLL);
        if (*(v11 + 7772) == 1)
        {
          v14 = sub_30C50C(v11 + 3896, v12, 0);
          v15 = &v14[-*v14];
          if (*v15 < 5u)
          {
            v16 = 0;
          }

          else
          {
            v16 = *(v15 + 2);
            if (v16)
            {
              v16 += &v14[*&v14[v16]];
            }
          }

          v17 = (v16 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v16 + ((v12 >> 30) & 0x3FFFC) + 4));
        }

        else
        {
          v17 = 0;
        }

        v18 = sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
        v48[0] = v13;
        v48[1] = v17;
        v48[2] = v18;
        __p = v19;
        v50 = v12 & 0xFFFFFFFFFFFFFFLL;
        sub_69B1E0(v51, v48);
        v20 = *(v2 + 10128);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v2 + 10136) - v20) >> 3) > v9)
        {
          v21 = v56;
          if (v56 >= v57)
          {
            v22 = sub_87B970(&v55, v20 + v8);
          }

          else
          {
            sub_F548B4(v56, v20 + v8);
            v22 = (v21 + 40);
          }

          v56 = v22;
        }

        if (v51 != v2)
        {
          v58[8] = *(v2 + 12576);
          sub_601264(v58, *(v2 + 12560), 0);
          v59[8] = *(v2 + 12616);
          sub_601910(v59, *(v2 + 12600), 0);
        }

        v23 = sub_41440((v2 + 12624), v9);
        v25 = v24;
        v26 = *v23;
        v27 = v61;
        if (v61 == v62 << 6)
        {
          if ((v61 + 1) < 0)
          {
            sub_1794();
          }

          if (v61 > 0x3FFFFFFFFFFFFFFELL)
          {
            v28 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else if (v62 << 7 <= (v61 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v28 = (v61 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          else
          {
            v28 = v62 << 7;
          }

          sub_3D41C(&v60, v28);
          v27 = v61;
        }

        v61 = v27 + 1;
        v29 = v27 >> 6;
        v30 = 1 << v27;
        if ((v26 & v25) != 0)
        {
          break;
        }

        *(v60 + 8 * v29) &= ~v30;
        ++v9;
        v8 += 40;
        if (v7 == v9)
        {
          goto LABEL_31;
        }
      }

      *(v60 + 8 * v29) |= v30;
      ++v9;
      v8 += 40;
    }

    while (v7 != v9);
  }

LABEL_31:
  v31 = *(v46 + 3) * 1000000000.0;
  if (v31 >= 0.0)
  {
    if (v31 >= 4.50359963e15)
    {
      goto LABEL_37;
    }

    v32 = (v31 + v31) + 1;
  }

  else
  {
    if (v31 <= -4.50359963e15)
    {
      goto LABEL_37;
    }

    v32 = (v31 + v31) - 1 + (((v31 + v31) - 1) >> 63);
  }

  v31 = (v32 >> 1);
LABEL_37:
  *(sub_3AF234(v51) + 16) = v31;
  v33 = *(v46 + 4) * 1000000000.0;
  if (v33 >= 0.0)
  {
    if (v33 >= 4.50359963e15)
    {
      goto LABEL_43;
    }

    v34 = (v33 + v33) + 1;
  }

  else
  {
    if (v33 <= -4.50359963e15)
    {
      goto LABEL_43;
    }

    v34 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
  }

  v33 = (v34 >> 1);
LABEL_43:
  *(sub_73F1C(v51) + 16) = v33;
  sub_4D1E70(v2, v48);
  sub_4D1E7C(v51, v48);
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  v54 = *(v2 + 10120);
  sub_6E4EC0(v48, *v47, 1, *(v47 + 74), v47 + 8);
  sub_6E4EC4(v48, v51, 3);
  sub_87B854((v2 + 10096), 0xEF7BDEF7BDEF7BDFLL * ((*(v2 + 10104) - *(v2 + 10096)) >> 3) - 0x1084210842108421 * ((v53 - v52) >> 3));
  v35 = v52;
  v36 = v53;
  if (v52 != v53)
  {
    v37 = v52;
    while (1)
    {
      v37[4] += v6;
      v38 = v37[9];
      if (v38 != -1)
      {
        break;
      }

      v39 = v37[10];
      if (v39 != -1)
      {
        goto LABEL_54;
      }

      if (v37[11] != -1 || v37[12] != -1 || v37[13] != -1 || v37[14] != -1 || v37[15] != -1)
      {
        goto LABEL_55;
      }

LABEL_49:
      v37 += 31;
      if (v37 == v36)
      {
        goto LABEL_71;
      }
    }

    v37[9] = v38 + v6;
    v39 = v37[10];
    if (v39 != -1)
    {
LABEL_54:
      v37[10] = v39 + v6;
    }

LABEL_55:
    v40 = v37[11];
    if (v40 != -1)
    {
      v37[11] = v40 + v6;
    }

    v41 = v37[12];
    if (v41 != -1)
    {
      v37[12] = v41 + v6;
    }

    v42 = v37[13];
    if (v42 != -1)
    {
      v37[13] = v42 + v6;
    }

    v43 = v37[14];
    if (v43 != -1)
    {
      v37[14] = v43 + v6;
    }

    v44 = v37[15];
    if (v44 != -1)
    {
      v37[15] = v44 + v6;
    }

    goto LABEL_49;
  }

LABEL_71:
  sub_87BB30((v2 + 10096), *(v2 + 10104), v35, v36, 0xEF7BDEF7BDEF7BDFLL * ((v36 - v35) >> 3));
  sub_6D2D60(v48);
  return sub_5C186C(v51);
}

void sub_8706C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_6D2D60(va);
  sub_5C186C(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

void sub_870764(_Unwind_Exception *a1)
{
  STACK[0x4530] = v1;
  sub_5C186C(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

uint64_t sub_8707C8()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  sub_69E8D4(v43);
  v7 = *v4;
  v6 = v4[1];
  v39 = v4;
  if (*v4 <= v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = *v4;
  }

  if (v7 < v6 + 1)
  {
    v9 = 40 * v7;
    v10 = v7;
    do
    {
      while (1)
      {
        v11 = sub_4D1F50(v2, v10);
        sub_87C414(v43, v11, *(v5 + 32));
        v12 = *(v2 + 10128);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v2 + 10136) - v12) >> 3) > v10)
        {
          v13 = v48;
          if (v48 >= v49)
          {
            v14 = sub_87B970(&v47, v12 + v9);
          }

          else
          {
            sub_F548B4(v48, v12 + v9);
            v14 = (v13 + 40);
          }

          v48 = v14;
        }

        if (v43 != v2)
        {
          v50[8] = *(v2 + 12576);
          sub_601264(v50, *(v2 + 12560), 0);
          v51[8] = *(v2 + 12616);
          sub_601910(v51, *(v2 + 12600), 0);
        }

        v15 = sub_41440((v2 + 12624), v10);
        v17 = v16;
        v18 = *v15;
        v19 = v53;
        if (v53 == v54 << 6)
        {
          if ((v53 + 1) < 0)
          {
            sub_1794();
          }

          v20 = v54 << 7;
          if (v54 << 7 <= (v53 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v20 = (v53 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          if (v53 <= 0x3FFFFFFFFFFFFFFELL)
          {
            v21 = v20;
          }

          else
          {
            v21 = 0x7FFFFFFFFFFFFFFFLL;
          }

          sub_3D41C(&v52, v21);
          v19 = v53;
        }

        v53 = v19 + 1;
        v22 = v19 >> 6;
        v23 = 1 << v19;
        if ((v18 & v17) != 0)
        {
          break;
        }

        *(v52 + 8 * v22) &= ~v23;
        ++v10;
        v9 += 40;
        if (v8 == v10)
        {
          goto LABEL_24;
        }
      }

      *(v52 + 8 * v22) |= v23;
      ++v10;
      v9 += 40;
    }

    while (v8 != v10);
  }

LABEL_24:
  v24 = *(v39 + 3) * 1000000000.0;
  if (v24 >= 0.0)
  {
    if (v24 >= 4.50359963e15)
    {
      goto LABEL_30;
    }

    v25 = (v24 + v24) + 1;
  }

  else
  {
    if (v24 <= -4.50359963e15)
    {
      goto LABEL_30;
    }

    v25 = (v24 + v24) - 1 + (((v24 + v24) - 1) >> 63);
  }

  v24 = (v25 >> 1);
LABEL_30:
  *(sub_3AF234(v43) + 16) = v24;
  v26 = *(v39 + 4) * 1000000000.0;
  if (v26 >= 0.0)
  {
    if (v26 >= 4.50359963e15)
    {
      goto LABEL_36;
    }

    v27 = (v26 + v26) + 1;
  }

  else
  {
    if (v26 <= -4.50359963e15)
    {
      goto LABEL_36;
    }

    v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
  }

  v26 = (v27 >> 1);
LABEL_36:
  *(sub_73F1C(v43) + 16) = v26;
  sub_4D1E70(v2, v40);
  sub_4D1E7C(v43, v40);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  v46 = *(v2 + 10120);
  sub_6F3F18(v40, *v5, 1, *(v5 + 74), v5 + 8);
  sub_6F3F1C(v40, v43, 3);
  sub_87B854((v2 + 10096), 0xEF7BDEF7BDEF7BDFLL * ((*(v2 + 10104) - *(v2 + 10096)) >> 3) - 0x1084210842108421 * ((v45 - v44) >> 3));
  v28 = v44;
  v29 = v45;
  if (v44 != v45)
  {
    v30 = v44;
    while (1)
    {
      v30[4] += v7;
      v31 = v30[9];
      if (v31 != -1)
      {
        break;
      }

      v32 = v30[10];
      if (v32 != -1)
      {
        goto LABEL_47;
      }

      if (v30[11] != -1 || v30[12] != -1 || v30[13] != -1 || v30[14] != -1 || v30[15] != -1)
      {
        goto LABEL_48;
      }

LABEL_42:
      v30 += 31;
      if (v30 == v29)
      {
        goto LABEL_64;
      }
    }

    v30[9] = v31 + v7;
    v32 = v30[10];
    if (v32 != -1)
    {
LABEL_47:
      v30[10] = v32 + v7;
    }

LABEL_48:
    v33 = v30[11];
    if (v33 != -1)
    {
      v30[11] = v33 + v7;
    }

    v34 = v30[12];
    if (v34 != -1)
    {
      v30[12] = v34 + v7;
    }

    v35 = v30[13];
    if (v35 != -1)
    {
      v30[13] = v35 + v7;
    }

    v36 = v30[14];
    if (v36 != -1)
    {
      v30[14] = v36 + v7;
    }

    v37 = v30[15];
    if (v37 != -1)
    {
      v30[15] = v37 + v7;
    }

    goto LABEL_42;
  }

LABEL_64:
  sub_87BB30((v2 + 10096), *(v2 + 10104), v28, v29, 0xEF7BDEF7BDEF7BDFLL * ((v29 - v28) >> 3));
  sub_6D2D60(v40);
  return sub_694110(v43);
}

void sub_870CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_6D2D60(va);
  sub_694110(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

void sub_870D98(_Unwind_Exception *a1)
{
  STACK[0x4530] = v1;
  sub_694110(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

uint64_t sub_870DFC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v47 = v0;
  sub_69AC30(v51);
  v6 = *v4;
  v5 = v4[1];
  v46 = v4;
  if (*v4 <= v5 + 1)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = *v4;
  }

  if (v6 < v5 + 1)
  {
    v8 = 40 * v6;
    v9 = *v4;
    do
    {
      while (1)
      {
        v10 = sub_4D1F50(v2, v9);
        v11 = *(v47 + 32);
        v12 = *(v10 + 32);
        v13 = sub_2B51D8(v11, v12 & 0xFFFFFFFFFFFFLL);
        if (*(v11 + 7772) == 1)
        {
          v14 = sub_30C50C(v11 + 3896, v12, 0);
          v15 = &v14[-*v14];
          if (*v15 < 5u)
          {
            v16 = 0;
          }

          else
          {
            v16 = *(v15 + 2);
            if (v16)
            {
              v16 += &v14[*&v14[v16]];
            }
          }

          v17 = (v16 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v16 + ((v12 >> 30) & 0x3FFFC) + 4));
        }

        else
        {
          v17 = 0;
        }

        v18 = sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
        v48[0] = v13;
        v48[1] = v17;
        v48[2] = v18;
        __p = v19;
        v50 = v12 & 0xFFFFFFFFFFFFFFLL;
        sub_69B1E0(v51, v48);
        v20 = *(v2 + 10128);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v2 + 10136) - v20) >> 3) > v9)
        {
          v21 = v56;
          if (v56 >= v57)
          {
            v22 = sub_87B970(&v55, v20 + v8);
          }

          else
          {
            sub_F548B4(v56, v20 + v8);
            v22 = (v21 + 40);
          }

          v56 = v22;
        }

        if (v51 != v2)
        {
          v58[8] = *(v2 + 12576);
          sub_601264(v58, *(v2 + 12560), 0);
          v59[8] = *(v2 + 12616);
          sub_601910(v59, *(v2 + 12600), 0);
        }

        v23 = sub_41440((v2 + 12624), v9);
        v25 = v24;
        v26 = *v23;
        v27 = v61;
        if (v61 == v62 << 6)
        {
          if ((v61 + 1) < 0)
          {
            sub_1794();
          }

          if (v61 > 0x3FFFFFFFFFFFFFFELL)
          {
            v28 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else if (v62 << 7 <= (v61 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v28 = (v61 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          else
          {
            v28 = v62 << 7;
          }

          sub_3D41C(&v60, v28);
          v27 = v61;
        }

        v61 = v27 + 1;
        v29 = v27 >> 6;
        v30 = 1 << v27;
        if ((v26 & v25) != 0)
        {
          break;
        }

        *(v60 + 8 * v29) &= ~v30;
        ++v9;
        v8 += 40;
        if (v7 == v9)
        {
          goto LABEL_31;
        }
      }

      *(v60 + 8 * v29) |= v30;
      ++v9;
      v8 += 40;
    }

    while (v7 != v9);
  }

LABEL_31:
  v31 = *(v46 + 3) * 1000000000.0;
  if (v31 >= 0.0)
  {
    if (v31 >= 4.50359963e15)
    {
      goto LABEL_37;
    }

    v32 = (v31 + v31) + 1;
  }

  else
  {
    if (v31 <= -4.50359963e15)
    {
      goto LABEL_37;
    }

    v32 = (v31 + v31) - 1 + (((v31 + v31) - 1) >> 63);
  }

  v31 = (v32 >> 1);
LABEL_37:
  *(sub_3AF234(v51) + 16) = v31;
  v33 = *(v46 + 4) * 1000000000.0;
  if (v33 >= 0.0)
  {
    if (v33 >= 4.50359963e15)
    {
      goto LABEL_43;
    }

    v34 = (v33 + v33) + 1;
  }

  else
  {
    if (v33 <= -4.50359963e15)
    {
      goto LABEL_43;
    }

    v34 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
  }

  v33 = (v34 >> 1);
LABEL_43:
  *(sub_73F1C(v51) + 16) = v33;
  sub_4D1E70(v2, v48);
  sub_4D1E7C(v51, v48);
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  v54 = *(v2 + 10120);
  sub_6D2C70(v48, *v47, 1, *(v47 + 74), v47 + 8);
  sub_6D2D64(v48, v51, 3);
  sub_87B854((v2 + 10096), 0xEF7BDEF7BDEF7BDFLL * ((*(v2 + 10104) - *(v2 + 10096)) >> 3) - 0x1084210842108421 * ((v53 - v52) >> 3));
  v35 = v52;
  v36 = v53;
  if (v52 != v53)
  {
    v37 = v52;
    while (1)
    {
      v37[4] += v6;
      v38 = v37[9];
      if (v38 != -1)
      {
        break;
      }

      v39 = v37[10];
      if (v39 != -1)
      {
        goto LABEL_54;
      }

      if (v37[11] != -1 || v37[12] != -1 || v37[13] != -1 || v37[14] != -1 || v37[15] != -1)
      {
        goto LABEL_55;
      }

LABEL_49:
      v37 += 31;
      if (v37 == v36)
      {
        goto LABEL_71;
      }
    }

    v37[9] = v38 + v6;
    v39 = v37[10];
    if (v39 != -1)
    {
LABEL_54:
      v37[10] = v39 + v6;
    }

LABEL_55:
    v40 = v37[11];
    if (v40 != -1)
    {
      v37[11] = v40 + v6;
    }

    v41 = v37[12];
    if (v41 != -1)
    {
      v37[12] = v41 + v6;
    }

    v42 = v37[13];
    if (v42 != -1)
    {
      v37[13] = v42 + v6;
    }

    v43 = v37[14];
    if (v43 != -1)
    {
      v37[14] = v43 + v6;
    }

    v44 = v37[15];
    if (v44 != -1)
    {
      v37[15] = v44 + v6;
    }

    goto LABEL_49;
  }

LABEL_71:
  sub_87BB30((v2 + 10096), *(v2 + 10104), v35, v36, 0xEF7BDEF7BDEF7BDFLL * ((v36 - v35) >> 3));
  sub_6D2D60(v48);
  return sub_693598(v51);
}

void sub_8713D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_6D2D60(va);
  sub_693598(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

void sub_87147C(_Unwind_Exception *a1)
{
  STACK[0x4530] = v1;
  sub_693598(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

void sub_87227C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_8722E0(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 8), *a3, *(a3 + 1));
    v8 = *a1;
  }

  else
  {
    v7 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v7;
    v8 = a2;
  }

  *(a1 + 32) = sub_3AF6B4(v8);
  *(a1 + 40) = a4;
  v12 = 11;
  strcpy(v11, "StepBuilder");
  memset(v10, 0, sizeof(v10));
  v9 = sub_3AEC94(a2, v11, v10);
  sub_41D7AC(v9, v13);
  sub_875D40(a1 + 48, v13);
}

void sub_872480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
    if ((*(v18 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v18 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v19);
  _Unwind_Resume(a1);
}

void sub_8724EC(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = sub_4C35B0(a2);
  if (v6)
  {
    v7 = v6;
    v8 = sub_4C49C0(a2, 0);
    v9 = sub_68C454(a3, 0);
    v10 = sub_73EC4(a2);
    sub_8725B8(a1, v8, v9, *v10);
    if (v7 != 1)
    {
      for (i = 1; i != v7; ++i)
      {
        v12 = sub_4C49C0(a2, i);
        v13 = sub_68C454(a3, i);
        sub_8725B8(a1, v12, v13, 0.0);
      }
    }
  }
}

void sub_8725B8(uint64_t *a1, void *a2, void *a3, double a4)
{
  if (!sub_4D1F6C(a2))
  {
    sub_872800(a3, &v25);
    if (v26 != v25)
    {
      v8 = 0;
      v9 = 0x6DB6DB6DB6DB6DB7 * ((v26 - v25) >> 3);
      do
      {
        sub_872B68(a1, a2, &v25, v8++, a3, a4);
      }

      while (v9 != v8);
    }

    v10 = a3[1263];
    v11 = a3[1262];
    if (v10 != v11)
    {
      do
      {
        v20 = *(v10 - 208);
        if (v20)
        {
          *(v10 - 200) = v20;
          operator delete(v20);
        }

        v21 = v10 - 248;
        v22 = *(v10 - 248);
        if (v22)
        {
          *(v10 - 240) = v22;
          operator delete(v22);
        }

        v10 -= 248;
      }

      while (v21 != v11);
    }

    a3[1263] = v11;
    sub_86E1F4(a3 + 1262);
    sub_86E358(a1, a3);
    v18 = a3[138];
    v19 = a3[139];
    while (1)
    {
      if (v18 == v19)
      {
        sub_873528(a1, a3, v12, v13, v14, v15, v16, v17);
        sub_763044(v27, *a1);
      }

      if (*(v18 + 1029) == 1 && *(v18 + 1028) == 1)
      {
        v24 = *(v18 + 160);
        switch(v24)
        {
          case 3:
            v23 = 64;
            goto LABEL_13;
          case 20:
            v23 = 65;
LABEL_13:
            *(v18 + 160) = v23;
            break;
          case 21:
            v23 = 66;
            goto LABEL_13;
        }
      }

      v18 += 2616;
    }
  }
}

void sub_8727B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    v30 = a10;
    if (!a10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v30 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  operator delete(v30);
  _Unwind_Resume(exception_object);
}

void sub_872800(void *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_4D2138(a1);
  sub_4D2140(a1);
  v3 = sub_4D1DC0(a1);
  if (!v3)
  {
LABEL_12:
    sub_4D1DC0(a1);
    operator new();
  }

  v4 = v3;
  v5 = 0;
  while (1)
  {
    v6 = sub_4D1F50(a1, v5);
    v7 = *v6;
    v8 = (*v6 - **v6);
    v9 = *v8;
    if (*(v6 + 38))
    {
      if (v9 < 0x9B)
      {
        goto LABEL_13;
      }

      v10 = v8[77];
      if (!v10 || (*&v7[v10] & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (v9 < 0x9B || (v11 = v8[77]) == 0 || (*&v7[v11] & 1) == 0)
    {
LABEL_13:
      if (v5)
      {
        operator new();
      }

      sub_4D1DC0(a1);
      operator new();
    }

    if (v4 == ++v5)
    {
      goto LABEL_12;
    }
  }
}

void sub_872B30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_872B68(uint64_t a1, void *a2, void *a3, unint64_t a4, uint64_t a5, double a6)
{
  v11 = sub_86F6CC(a3, a4);
  v12 = v11;
  v116 = a4;
  if (!a4)
  {
    sub_8741C0(a1, a2, a5, *(v11 + 16), a6);
  }

  sub_3CF22C(a2);
  sub_3CF22C(a2);
  sub_3CF22C(a2);
  v18 = (*(a5 + 10104) - *(a5 + 10096)) >> 3;
  v120 = v12;
  if (*(v12 + 16) == 2)
  {
    result = sub_875028(a1, v12, a5, v13, v14, v15, v16, v17);
    v23 = 0xEF7BDEF7BDEF7BDFLL * v18;
    v24 = *(a5 + 1112);
    if (*(a5 + 1104) != v24)
    {
      goto LABEL_6;
    }
  }

  else if (*(v12 + 16))
  {
    result = sub_87565C(a1, v12, a5, v13, v14, v15, v16, v17);
    v23 = 0xEF7BDEF7BDEF7BDFLL * v18;
    v24 = *(a5 + 1112);
    if (*(a5 + 1104) != v24)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = sub_874944(a1, v12, a5, v13, v14, v15, v16, v17);
    v23 = 0xEF7BDEF7BDEF7BDFLL * v18;
    v24 = *(a5 + 1112);
    if (*(a5 + 1104) != v24)
    {
LABEL_6:
      v25 = *(v24 - 2592);
      goto LABEL_9;
    }
  }

  v25 = 0;
LABEL_9:
  v26 = 0xEF7BDEF7BDEF7BDFLL * ((*(a5 + 10104) - *(a5 + 10096)) >> 3);
  v115 = a1;
  v27 = v23 >= v26;
  if (v23 > v26)
  {
    v26 = v23;
  }

  v114 = v26;
  if (!v27)
  {
    LOBYTE(v121) = 0;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v113 = vnegq_f64(v28);
    while (1)
    {
      v29 = sub_6D3F8C((a5 + 10096), v23);
      v118 = *(v29 + 24);
      v30 = *(v29 + 32);
      v31 = v30 + ((*(v29 + 8) - *v29) >> 3) - 1;
      sub_4D0560();
      v119 = sub_4D1F50(v33, v32 + v30);
      sub_4D0560();
      v36 = sub_4D1F50(v35, v31 + v34);
      if (v25 <= v31)
      {
        v38 = v31;
      }

      else
      {
        v38 = v25;
      }

      v122 = v25;
      v39 = 0;
      if (v25 < v31)
      {
        do
        {
          v39 += sub_4D23F8(a2, v25++, v37);
        }

        while (v38 != v25);
      }

      v171[0] = v39;
      v40 = 4 * v122;
      v41 = 4 * v122 + *(sub_3CF22C(a2) + 16);
      v42 = 4 * v31;
      v43 = 4 * v31 + *(sub_3CF22C(a2) + 16);
      if (v41 == v43)
      {
        v44 = 0;
        goto LABEL_27;
      }

      v45 = v43 - v41 - 4;
      if (v45 < 0x1C)
      {
        break;
      }

      v47 = (v45 >> 2) + 1;
      v46 = (v41 + 4 * (v47 & 0x7FFFFFFFFFFFFFF8));
      v48 = (v41 + 16);
      v49 = 0uLL;
      v50 = v47 & 0x7FFFFFFFFFFFFFF8;
      v51 = 0uLL;
      do
      {
        v49 = vaddq_s32(v48[-1], v49);
        v51 = vaddq_s32(*v48, v51);
        v48 += 2;
        v50 -= 8;
      }

      while (v50);
      v44 = vaddvq_s32(vaddq_s32(v51, v49));
      if (v47 != (v47 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_26;
      }

LABEL_27:
      HIDWORD(v170) = v44;
      v53 = (v40 + *(sub_3CF22C(a2) + 40));
      v54 = (v42 + *(sub_3CF22C(a2) + 40));
      if (v53 == v54)
      {
        v55 = 0;
        v56 = v115;
        goto LABEL_35;
      }

      v57 = v54 - v53 - 4;
      if (v57 < 0x1C)
      {
        v55 = 0;
        v58 = v53;
        v56 = v115;
        do
        {
LABEL_34:
          v64 = v58->i32[0];
          v58 = (v58 + 4);
          v55 += v64;
        }

        while (v58 != v54);
        goto LABEL_35;
      }

      v59 = (v57 >> 2) + 1;
      v58 = (v53 + 4 * (v59 & 0x7FFFFFFFFFFFFFF8));
      v60 = v53 + 1;
      v61 = 0uLL;
      v62 = v59 & 0x7FFFFFFFFFFFFFF8;
      v63 = 0uLL;
      do
      {
        v61 = vaddq_s32(v60[-1], v61);
        v63 = vaddq_s32(*v60, v63);
        v60 += 2;
        v62 -= 8;
      }

      while (v62);
      v55 = vaddvq_s32(vaddq_s32(v63, v61));
      v56 = v115;
      if (v59 != (v59 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_34;
      }

LABEL_35:
      LODWORD(v170) = v55;
      v65 = (v40 + *(sub_3CF22C(a2) + 64));
      v66 = (v42 + *(sub_3CF22C(a2) + 64));
      if (v65 == v66)
      {
        v67 = 0;
        v68 = v120;
        result = a3;
        goto LABEL_43;
      }

      v69 = v66 - v65 - 4;
      v68 = v120;
      result = a3;
      if (v69 < 0x1C)
      {
        v67 = 0;
        v70 = v65;
        do
        {
LABEL_42:
          v76 = v70->i32[0];
          v70 = (v70 + 4);
          v67 += v76;
        }

        while (v70 != v66);
        goto LABEL_43;
      }

      v71 = (v69 >> 2) + 1;
      v70 = (v65 + 4 * (v71 & 0x7FFFFFFFFFFFFFF8));
      v72 = v65 + 1;
      v73 = 0uLL;
      v74 = v71 & 0x7FFFFFFFFFFFFFF8;
      v75 = 0uLL;
      do
      {
        v73 = vaddq_s32(v72[-1], v73);
        v75 = vaddq_s32(*v72, v75);
        v72 += 2;
        v74 -= 8;
      }

      while (v74);
      v67 = vaddvq_s32(vaddq_s32(v75, v73));
      if (v71 != (v71 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_42;
      }

LABEL_43:
      v169 = v67;
      v77 = (*v119 - **v119);
      if (*v77 >= 0x9Bu && (v78 = v77[77]) != 0)
      {
        v79 = (*(*v119 + v78) & 0x8000) == 0;
        if ((*(*v119 + v78) & 8) != 0)
        {
          v80 = 4;
          goto LABEL_60;
        }
      }

      else
      {
        v79 = 1;
      }

      v81 = *v36;
      v82 = (*v36 - **v36);
      v83 = *v82;
      if (!*(v36 + 38))
      {
        if (v83 < 0x9B || (v85 = v82[77]) == 0 || (*&v81[v85] & 1) == 0)
        {
LABEL_59:
          v80 = 2;
          goto LABEL_60;
        }

        goto LABEL_56;
      }

      if (v83 < 0x9B)
      {
        goto LABEL_59;
      }

      v84 = v82[77];
      v80 = 2;
      if (v84)
      {
        if ((*&v81[v84] & 2) == 0)
        {
          goto LABEL_59;
        }

LABEL_56:
        if (*(v68 + 16) == 2)
        {
          v80 = 2;
        }

        else
        {
          v80 = 5;
        }
      }

LABEL_60:
      v121 = (*(v29 + 227) | v121) != 0;
      if (*(v56 + 72) == 1 && (*(v68 + 40) & 1) == 0 && *(v68 + 8) <= v31)
      {
        v145 = 0;
        v144 = 0;
        v146 = 0;
        v148 = -1;
        v150 = 0;
        v151 = 0;
        __p = 0;
        v152 = 0;
        *&v86 = -1;
        *(&v86 + 1) = -1;
        v153 = v86;
        v154 = v86;
        v155 = v86;
        v156 = -1;
        v157 = 0;
        v158 = -1;
        v159 = 0;
        v160 = 0;
        v161 = v113;
        v162 = 0;
        v164 = 0;
        v165 = 0;
        v166 = xmmword_229B660;
        v163 = 98;
        v167 = 0;
        v168[0] = 0;
        *(v168 + 6) = 0;
        v147 = 16;
        sub_87B1E4(v123, &v144, v171, &v170 + 1, &v170, &v169);
        if (v79 != *(a5 + 1097))
        {
          v139 = v79 | 0x100;
        }

        v124 = v30;
        v125 = v31;
        v131 = v30;
        v132 = sub_4D23F8(a2, v30, v87);
        v89 = sub_4D25C0(a2, v131, v88);
        v133 = v132 + v89;
        v130 = v132 + v89;
        v127 = v122;
        v90 = *(a5 + 1112);
        if (v90 >= *(a5 + 1120))
        {
          v91 = sub_87B564((a5 + 1104), v123);
        }

        else
        {
          sub_5EF290(*(a5 + 1112), v123);
          v91 = v90 + 2616;
          *(a5 + 1112) = v90 + 2616;
        }

        *(a5 + 1112) = v91;
        v170 = 0;
        v171[0] = 0;
        v169 = 0;
        v122 = v125;
        sub_5C25A8(v123);
        if (__p)
        {
          v150 = __p;
          operator delete(__p);
        }

        if (v144)
        {
          v145 = v144;
          operator delete(v144);
        }

        result = a3;
        v68 = v120;
      }

      if (0x6DB6DB6DB6DB6DB7 * ((result[1] - *result) >> 3) - 1 <= v116)
      {
        v93 = 0;
        v94 = v118;
        if (*(v56 + 73) != 1)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v92 = v68;
        result = sub_86F6CC(result, v116 + 1);
        v68 = v92;
        v93 = result[6];
        v94 = v118;
        if (*(v56 + 73) != 1)
        {
          goto LABEL_84;
        }
      }

      if (*(v68 + 8) > v31 || (*(v68 + 40) & 1) != 0 || (v94 ? (v95 = v94) : (v95 = 3), *(v56 + 80) > v93))
      {
LABEL_84:
        if (v94)
        {
          goto LABEL_85;
        }

        v25 = v122;
        if (++v23 == v114)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v94 = v95;
LABEL_85:
        v96 = v56;
        v97 = v79;
        v98 = v94;
        sub_87B1E4(v123, v29, v171, &v170 + 1, &v170, &v169);
        v134 = v98;
        v140 = *(v29 + 72);
        v99 = *(v29 + 88);
        v100 = *(v29 + 104);
        v101 = *(v29 + 120);
        *(v143 + 12) = *(v29 + 132);
        v142 = v100;
        v143[0] = v101;
        v141 = v99;
        if (v137 != -1)
        {
          v126 = v137 + v30;
        }

        v124 = v30;
        v125 = v31;
        v127 = v122;
        v138 = v80;
        if (v97 != *(a5 + 1097) && v80 != 4)
        {
          v139 = v97 | 0x100;
        }

        if (v135 == -1 || v136 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v106 = sub_4D23F8(a5, v30, *&v99);
          v128 = v30;
          v107 = *(v96 + 56);
          if (v107 >= v106)
          {
            v107 = v106;
          }

          v105 = v106 - v107;
        }

        else
        {
          v128 = v135 + v30;
          v103 = sub_4D23F8(a5, v135 + v30, *&v99);
          v105 = v136;
          v30 = v128;
          if (v103 < v136)
          {
            v105 = v103;
          }
        }

        v129 = v105;
        v108 = sub_4D25C0(a5, v30, v104);
        v130 = v129 + v108;
        v131 = v31;
        v132 = 0;
        v110 = sub_4D25C0(a5, v31, v109);
        v133 = v132 + v110;
        v111 = *(a5 + 1112);
        if (v111 >= *(a5 + 1120))
        {
          v112 = sub_87B6F0((a5 + 1104), v123);
        }

        else
        {
          v112 = sub_6083DC(v111, v123) + 2616;
        }

        *(a5 + 1112) = v112;
        v170 = 0;
        v171[0] = 0;
        v169 = 0;
        result = sub_5C25A8(v123);
        v121 = 0;
        v25 = v31;
        v68 = v120;
        if (++v23 == v114)
        {
          goto LABEL_106;
        }
      }
    }

    v44 = 0;
    v46 = v41;
    do
    {
LABEL_26:
      v52 = *v46++;
      v44 += v52;
    }

    while (v46 != v43);
    goto LABEL_27;
  }

  v121 = 0;
  v68 = v120;
LABEL_106:
  if (0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3) - 1 == v116)
  {
    return sub_8743F4(v115, a2, v68, v121, a5, v20, v21, v22);
  }

  return result;
}

void sub_8734BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  *(v24 + 1112) = v25;
  sub_5C25A8(va);
  sub_5ECFBC(&STACK[0xAB8]);
  _Unwind_Resume(a1);
}

void sub_8734DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_5C25A8(va);
  sub_5ECFBC(&STACK[0xAB8]);
  _Unwind_Resume(a1);
}

void sub_873514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_5C25A8(va);
  _Unwind_Resume(a1);
}

void *sub_873528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v78 = v8;
  sub_6E4EC0(v81, *v8, 1, *(v8 + 74), v8 + 8);
  v11 = 0x3795876FF3795877 * ((*(v10 + 1112) - *(v10 + 1104)) >> 3);
  if (v11 >= 3 && *(v10 + 1096) == 0)
  {
    v14 = 1;
    do
    {
      v16 = sub_578320((v10 + 1104), v14);
      v17 = sub_578320((v10 + 1104), v14 + 1);
      if (*(v16 + 384) != 5)
      {
        goto LABEL_7;
      }

      v18 = *(v16 + 160) - 11;
      v19 = v18 > 0x37;
      v20 = (1 << v18) & 0xE00000000C0601;
      if (v19 || v20 == 0)
      {
        goto LABEL_7;
      }

      v22 = *(v16 + 24);
      v23 = *(v16 + 16) == -1 ? v22 - 1 : *(v16 + 16);
      if (v23 + 1 != v22)
      {
        goto LABEL_7;
      }

      v24 = v17;
      if (v22 >= sub_4D1DC0(v10))
      {
        goto LABEL_7;
      }

      v25 = sub_4D1F50(v10, v23);
      v26 = sub_4D1F50(v10, v22);
      v28 = sub_4D23F8(v10, v22, v27);
      v29 = v25[4];
      v30 = sub_2B51D8(*(v78 + 32), v29 & 0xFFFFFFFFFFFFLL);
      v31 = (v30 - *v30);
      v32 = *v31;
      if ((v29 & 0xFF000000000000) != 0)
      {
        if (v32 < 0x29)
        {
          goto LABEL_7;
        }

        v33 = v31[20];
        if (!v33)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v32 < 0x27)
        {
          goto LABEL_7;
        }

        v33 = v31[19];
        if (!v33)
        {
          goto LABEL_7;
        }
      }

      v77 = *(v30 + v33 + *(v30 + v33));
      if (v77 >= 3 && v28 >= *(v78 + 136))
      {
        sub_6E5620(v81, v25, 0, &v79);
        v34 = *v79;
        v35 = v79[1];
        if (*v79 != v35)
        {
          v36 = v35 - v34 - 248;
          if (v36 < 0xF8)
          {
            v37 = 0;
            v38 = *v79;
            goto LABEL_32;
          }

          v39 = 0;
          v40 = 0;
          v41 = v36 / 0xF8 + 1;
          v38 = v34 + 248 * (v41 & 0x3FFFFFFFFFFFFFELL);
          v42 = (v34 + 489);
          v43 = v41 & 0x3FFFFFFFFFFFFFELL;
          do
          {
            v39 += *(v42 - 248);
            v40 += *v42;
            v42 += 496;
            v43 -= 2;
          }

          while (v43);
          v37 = v40 + v39;
          if (v41 != (v41 & 0x3FFFFFFFFFFFFFELL))
          {
            do
            {
LABEL_32:
              v37 += *(v38 + 241);
              v38 += 248;
            }

            while (v38 != v35);
          }

          if (v37 == 2)
          {
            do
            {
              if (*(v34 + 241) == 1)
              {
                v45 = *(v34 + 24);
                if (!v45 || v45 == 3)
                {
                  break;
                }
              }

              v34 += 248;
            }

            while (v34 != v35);
            if (v34 != v35 && *(v24 + 1008) >= *(v78 + 112))
            {
              v47 = (*v25 - **v25);
              v48 = *v47;
              if (*(v25 + 38))
              {
                if (v48 < 0x49)
                {
                  goto LABEL_53;
                }

                v49 = v47[36];
                if (!v49)
                {
                  goto LABEL_53;
                }

LABEL_52:
                v50 = *(*v25 + v49);
              }

              else
              {
                if (v48 >= 0x4B)
                {
                  v49 = v47[37];
                  if (v49)
                  {
                    goto LABEL_52;
                  }
                }

LABEL_53:
                v50 = -1;
              }

              v51 = (*v26 - **v26);
              v52 = *v51;
              if (*(v26 + 38))
              {
                if (v52 < 0x4B)
                {
                  goto LABEL_61;
                }

                v53 = v51[37];
                if (!v53)
                {
                  goto LABEL_61;
                }

LABEL_60:
                v54 = *(*v26 + v53);
              }

              else
              {
                if (v52 >= 0x49)
                {
                  v53 = v51[36];
                  if (v53)
                  {
                    goto LABEL_60;
                  }
                }

LABEL_61:
                v54 = 0xFFFF;
              }

              v55 = v50 + 18000;
              v56 = v50 - 18000;
              if ((v55 >> 5) < 0x465u)
              {
                v56 = v55;
              }

              v57 = v54 - v56;
              if (v57 > 18000)
              {
                v57 -= 36000;
              }

              if (v57 < -17999)
              {
                v57 += 36000;
              }

              v58 = v57 / 100.0;
              if (v58 < *(v78 + 96))
              {
                v58 = *(v78 + 96);
              }

              if (v58 <= *(v78 + 104))
              {
                v59 = *(v24 + 1008);
                v60 = v77 * *(v78 + 88);
                v61 = (v60 + v60);
                if (v60 > -4.50359963e15)
                {
                  v62 = ((v61 - 1) / 2);
                }

                else
                {
                  v62 = v77 * *(v78 + 88);
                }

                v63 = ((v61 + 1) >> 1);
                if (v60 >= 4.50359963e15)
                {
                  v63 = v77 * *(v78 + 88);
                }

                if (v60 >= 0.0)
                {
                  v64 = v63;
                }

                else
                {
                  v64 = v62;
                }

                v65 = sin(v58 * 3.14159265 / 180.0);
                v66 = v64 / (v65 + v65);
                if (v66 >= 0.0)
                {
                  if (v66 < 4.50359963e15)
                  {
                    v67 = (v66 + v66) + 1;
LABEL_84:
                    v66 = (v67 >> 1);
                  }
                }

                else if (v66 > -4.50359963e15)
                {
                  v67 = (v66 + v66) - 1 + (((v66 + v66) - 1) >> 63);
                  goto LABEL_84;
                }

                v68 = v66;
                v69 = *(v78 + 120) * v59;
                v70 = (v69 + v69);
                if (v69 > -4.50359963e15)
                {
                  v71 = ((v70 - 1) / 2);
                }

                else
                {
                  v71 = *(v78 + 120) * v59;
                }

                v72 = ((v70 + 1) >> 1);
                if (v69 >= 4.50359963e15)
                {
                  v72 = *(v78 + 120) * v59;
                }

                if (v69 >= 0.0)
                {
                  v73 = v72;
                }

                else
                {
                  v73 = v71;
                }

                v74 = v28 - *(v78 + 136);
                if (v74 >= v73)
                {
                  v74 = v73;
                }

                if (v74 < v68)
                {
                  v68 = v74;
                }

                if (*(v78 + 128) < v68)
                {
                  v68 = *(v78 + 128);
                }

                *(v16 + 112) = v68;
                v75 = sub_4D25C0(v10, *(v16 + 104), v73);
                v76 = *(v16 + 112);
                *(v16 + 120) = v76 + v75;
                *(v16 + 1008) += v76;
                *(v24 + 1008) -= v76;
                *(v24 + 48) = *(v16 + 112);
              }
            }
          }
        }

        v44 = v80;
        if (v80 && !atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v44->__on_zero_shared)(v44);
          std::__shared_weak_count::__release_weak(v44);
        }
      }

LABEL_7:
      v15 = v14 + 2;
      ++v14;
    }

    while (v11 != v15);
  }

  return sub_6D2D60(v81);
}

void sub_873B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_6D2D60(va1);
  _Unwind_Resume(a1);
}

void sub_873B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_873B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_873B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_873B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_873BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_873BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_873BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_873BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_873BF8(uint64_t a1, void *a2)
{
  if (*(a1 + 145) == 1)
  {
    operator new();
  }
}

void sub_873D94(uint64_t a1, void *a2)
{
  if (*(a1 + 73) != 1)
  {
    return;
  }

  v3 = a1;
  v4 = sub_4D1F50(a2, 0);
  v5 = (*v4 - **v4);
  v6 = *v5;
  if (*(v4 + 38))
  {
    if (v6 >= 0x9B)
    {
      v7 = v5[77];
      if (v7)
      {
        v8 = 2;
        goto LABEL_9;
      }
    }

LABEL_11:
    v9 = 0;
    v10 = a2[138];
    v45 = a2[139];
    if (v10 == v45)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v6 < 0x9B)
  {
    goto LABEL_11;
  }

  v7 = v5[77];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = 1;
LABEL_9:
  v9 = (*(*v4 + v7) & v8) != 0;
  v10 = a2[138];
  v45 = a2[139];
  if (v10 == v45)
  {
    return;
  }

LABEL_12:
  v48 = v9;
  do
  {
    v12 = *(v10 + 40);
    v13 = *(v10 + 24);
    if (v12 <= v13)
    {
      v14 = *(v10 + 24);
    }

    else
    {
      v14 = *(v10 + 40);
    }

    if (v12 < v13)
    {
      v47 = v10 + 704;
      do
      {
        if (v12 >= sub_4D1DC0(a2) - 1)
        {
          ++v12;
          continue;
        }

        v15 = sub_4D1F50(a2, v12);
        v16 = *v15;
        v17 = *(v15 + 38);
        v18 = sub_4D1F50(a2, ++v12);
        v20 = (v16 - *v16);
        v21 = *v20;
        if (v17)
        {
          if (v21 >= 0x9B)
          {
            v22 = v20[77];
            if (!v22)
            {
              goto LABEL_33;
            }

            v23 = 2;
LABEL_31:
            v22 = (*(v16 + v22) & v23) != 0;
            goto LABEL_33;
          }
        }

        else if (v21 >= 0x9B)
        {
          v22 = v20[77];
          if (!v22)
          {
            goto LABEL_33;
          }

          v23 = 1;
          goto LABEL_31;
        }

        v22 = 0;
LABEL_33:
        v24 = *v18;
        v25 = (*v18 - **v18);
        v26 = *v25;
        if (*(v18 + 38))
        {
          if (v26 >= 0x9B)
          {
            v27 = v25[77];
            if (v27)
            {
              if (v22 != ((*&v24[v27] & 2) != 0))
              {
                goto LABEL_43;
              }

              continue;
            }
          }
        }

        else if (v26 >= 0x9B)
        {
          v28 = v25[77];
          if (v28)
          {
            if (v22 != ((*&v24[v28] & 1) != 0))
            {
              goto LABEL_43;
            }

            continue;
          }
        }

        if (v22)
        {
LABEL_43:
          if (sub_4D23F8(a2, v12, v19) >= *(v3 + 80))
          {
            v29 = 56;
            if ((v48 & 1) == 0)
            {
              v29 = 8;
            }

            if (v9)
            {
              v29 = 32;
            }

            v30 = v47 + v29;
            v32 = *(v47 + v29 + 8);
            v31 = *(v47 + v29 + 16);
            if (v32 >= v31)
            {
              v46 = v9;
              v34 = v3;
              v35 = *v30;
              v36 = v32 - *v30;
              v37 = v36 >> 3;
              v38 = (v36 >> 3) + 1;
              if (v38 >> 61)
              {
                sub_1794();
              }

              v39 = v31 - v35;
              if (v39 >> 2 > v38)
              {
                v38 = v39 >> 2;
              }

              if (v39 >= 0x7FFFFFFFFFFFFFF8)
              {
                v40 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v40 = v38;
              }

              if (v40)
              {
                if (!(v40 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              *(8 * v37) = v12;
              v33 = 8 * v37 + 8;
              memcpy(0, v35, v36);
              *v30 = 0;
              *(v30 + 8) = v33;
              *(v30 + 16) = 0;
              if (v35)
              {
                operator delete(v35);
              }

              v3 = v34;
              v9 = v46;
            }

            else
            {
              *v32 = v12;
              v33 = (v32 + 1);
            }

            v48 |= (v9 | v48) ^ 1;
            *(v30 + 8) = v33;
            v9 ^= 1u;
          }
        }
      }

      while (v12 != v14);
    }

    if (*(v10 + 712) != *(v10 + 720) || *(v10 + 760) != *(v10 + 768))
    {
      *(v10 + 672) = -1;
      *&v11 = -1;
      *(&v11 + 1) = -1;
      *(v10 + 640) = v11;
      *(v10 + 656) = v11;
      *(v10 + 624) = v11;
      *(v10 + 680) = 0;
      *(v10 + 688) = -1;
      *(v10 + 696) = 0;
    }

    v10 += 2616;
  }

  while (v10 != v45);
  v41 = a2[139] - a2[138];
  if (v41)
  {
    v42 = 0;
    v43 = 0x3795876FF3795877 * (v41 >> 3);
    do
    {
      while (1)
      {
        v44 = sub_578320(a2 + 138, v42);
        if (*(v3 + 160) == 1)
        {
          break;
        }

        *(v44 + 704) = *(v44 + 736) != *(v44 + 744);
        *(v44 + 705) = *(v44 + 760) != *(v44 + 768);
        if (v43 == ++v42)
        {
          return;
        }
      }

      sub_86FF2C(v3, a2, v42++);
    }

    while (v43 != v42);
  }
}

void sub_8741C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v51 = *(sub_3CF22C(a2) + 256);
  v52 = v51;
  v50 = v51;
  v10 = 0;
  if (sub_4D20C0(a2, 0))
  {
    v10 = a5 > *(a1 + 48);
  }

  if ((sub_69B004(a3) & 1) != 0 || (*(a1 + 40) | 2) == 0xB)
  {
    v11 = 85;
    if (v10)
    {
      if (a4)
      {
        v11 = 85;
      }

      else
      {
        v11 = 88;
      }
    }
  }

  else if (v10)
  {
    v11 = 25;
  }

  else
  {
    v11 = 17;
  }

  v26 = 0;
  v25 = 0;
  v27 = 0;
  v29 = -1;
  __p = 0;
  v32 = 0;
  v31 = 0;
  v33 = 0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v34 = v12;
  v35 = v12;
  v36 = v12;
  v37 = -1;
  v38 = 0;
  v39 = -1;
  v40 = 0;
  v41 = 0;
  v42 = vnegq_f64(v12);
  v43 = 0;
  v44 = 98;
  v46 = 0;
  v45 = 0;
  v47 = xmmword_229B660;
  v48 = 0;
  v49[0] = 0;
  *(v49 + 6) = 0;
  v28 = v11;
  v16 = 0;
  sub_87B1E4(v17, &v25, &v16, &v52, &v51, &v50);
  v18 = 0;
  v19 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  if (*(a3 + 1096) == a4)
  {
    v13 = 5;
  }

  else
  {
    v13 = a4;
  }

  v24 = v13;
  v14 = *(a3 + 1112);
  if (v14 >= *(a3 + 1120))
  {
    v15 = sub_87B564((a3 + 1104), v17);
  }

  else
  {
    sub_5EF290(*(a3 + 1112), v17);
    v15 = v14 + 2616;
    *(a3 + 1112) = v14 + 2616;
  }

  *(a3 + 1112) = v15;
  sub_5C25A8(v17);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_8743B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_5C25A8(va);
  sub_5ECFBC(&STACK[0xA48]);
  _Unwind_Resume(a1);
}

void *sub_8743F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v59 = v11;
  v58 = v12;
  v14 = v13;
  v15 = v8;
  v16 = *(*(v9 + 1112) - 2592);
  v17 = sub_4D1DC0(v13);
  v60 = v16;
  v61 = v17;
  v19 = v17 - 1;
  if (v16 <= v17 - 1)
  {
    v20 = v17 - 1;
  }

  else
  {
    v20 = v16;
  }

  if (v16 >= v17 - 1)
  {
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v21 += sub_4D23F8(v14, v16, v18);
      v101 = v21;
      v25 = sub_3CF22C(v14);
      v22 += *sub_762504((v25 + 16), v16);
      v26 = sub_3CF22C(v14);
      v23 += *sub_762504((v26 + 40), v16);
      v27 = sub_3CF22C(v14);
      v24 += *sub_762504((v27 + 64), v16++);
    }

    while (v20 != v16);
  }

  v28 = v21 + sub_4D23F8(v14, v19, v18);
  v101 = v28;
  v29 = *(sub_3CF22C(v14) + 260);
  v100 = *(*(sub_3CF22C(v14) + 16) + 4 * v19) + v29 + v22;
  v99 = *(*(sub_3CF22C(v14) + 40) + 4 * v19) + v29 + v23;
  v98 = *(*(sub_3CF22C(v14) + 64) + 4 * v19) + v29 + v24;
  v30 = sub_4D1F50(v14, v19);
  v31 = sub_4D1F50(v14, v19);
  v32 = (*v30 - **v30);
  if (*v32 >= 0x9Bu)
  {
    v33 = v32[77];
    if (v33)
    {
      if ((*(*v30 + v33) & 8) != 0)
      {
        v38 = 4;
        goto LABEL_25;
      }
    }
  }

  v34 = *v31;
  v35 = (*v31 - **v31);
  v36 = *v35;
  if (!*(v31 + 38))
  {
    if (v36 < 0x9B)
    {
      goto LABEL_23;
    }

    v39 = v35[77];
    if (!v39 || (*&v34[v39] & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_20:
    if (*(v58 + 16) == 2)
    {
      v38 = 2;
    }

    else
    {
      v38 = 5;
    }

    goto LABEL_25;
  }

  if (v36 < 0x9B)
  {
LABEL_23:
    v38 = 2;
    goto LABEL_25;
  }

  v37 = v35[77];
  v38 = 2;
  if (v37)
  {
    if ((*&v34[v37] & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_25:
  sub_6E4EC0(v97, *v15, 1, *(v15 + 74), v15 + 8);
  v40 = sub_6E66D8(v97, v10);
  if ((v40 - 33) <= 0x33 && ((1 << (v40 - 33)) & 0xC000000000003) != 0)
  {
    if (v59 & 1) != 0 || *(v15 + 64) > v28 && ((v41 = *(v15 + 32), v42 = sub_4D1F60(v10), (sub_31C0F0(v41, *(v42 + 32) & 0xFFFFFFFFFFFFFFLL)) || (v43 = *(v15 + 32), v44 = sub_4D1F60(v10), v45 = sub_2B51D8(v43, *(v44 + 32) | (*(v44 + 36) << 32)), v46 = (v45 - *v45), *v46 >= 0x2Fu) && (v47 = v46[23]) != 0 && *(v45 + v47) == 18))
    {
      if (sub_69B0E0(v10))
      {
        v40 = 82;
      }

      else
      {
        v40 = 18;
      }
    }
  }

  v73 = 0;
  v72 = 0;
  v74 = 0;
  v76 = -1;
  __p = 0;
  v79 = 0;
  v78 = 0;
  v80 = 0;
  v48.f64[0] = NAN;
  v48.f64[1] = NAN;
  v81 = v48;
  v82 = v48;
  v83 = v48;
  v84 = -1;
  v85 = 0;
  v86 = -1;
  v87 = 0;
  v88 = 0;
  v89 = vnegq_f64(v48);
  v90 = 0;
  v91 = 98;
  v93 = 0;
  v92 = 0;
  v94 = xmmword_229B660;
  v95 = 0;
  v96[0] = 0;
  *(v96 + 6) = 0;
  v75 = v40;
  sub_87B1E4(v62, &v72, &v101, &v100, &v99, &v98);
  v63 = v19;
  v64 = v61;
  v67 = v61;
  v50 = sub_4D25C0(v10, v61, v49);
  v69 = v68 + v50;
  v66 = v68 + v50;
  v65 = v60;
  v70 = v38;
  v51 = sub_4D1F60(v14);
  v52 = (*v51 - **v51);
  if (*v52 < 0x9Bu || (v53 = v52[77]) == 0)
  {
    LOWORD(v54) = 1;
    if (*(v10 + 1097) == 1)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v54 = (*(*v51 + v53 + 1) & 0x80) == 0;
  if (*(v10 + 1097) != v54)
  {
LABEL_41:
    v71 = v54 | 0x100;
  }

LABEL_42:
  v55 = *(v10 + 1112);
  if (v55 >= *(v10 + 1120))
  {
    v56 = sub_87B564((v10 + 1104), v62);
  }

  else
  {
    sub_5EF290(*(v10 + 1112), v62);
    v56 = v55 + 2616;
    *(v10 + 1112) = v55 + 2616;
  }

  *(v10 + 1112) = v56;
  sub_5C25A8(v62);
  if (__p)
  {
    v78 = __p;
    operator delete(__p);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  return sub_6D2D60(v97);
}

void sub_8748E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *(v11 + 1112) = v12;
  sub_5C25A8(va);
  sub_5ECFBC(&STACK[0xA60]);
  sub_6D2D60(&STACK[0xB58]);
  _Unwind_Resume(a1);
}

uint64_t sub_874944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v55 = v8;
  sub_69CA74(v59);
  v14 = *v12;
  v13 = v12[1];
  v54 = v12;
  if (*v12 <= v13 + 1)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = *v12;
  }

  if (v14 < v13 + 1)
  {
    v16 = 40 * v14;
    v17 = *v12;
    do
    {
      while (1)
      {
        v18 = sub_4D1F50(v10, v17);
        v19 = *(v55 + 32);
        v20 = *(v18 + 32);
        v21 = sub_2B51D8(v19, v20 & 0xFFFFFFFFFFFFLL);
        if (*(v19 + 7772) == 1)
        {
          v22 = sub_30C50C(v19 + 3896, v20, 0);
          v23 = &v22[-*v22];
          if (*v23 < 5u)
          {
            v24 = 0;
          }

          else
          {
            v24 = *(v23 + 2);
            if (v24)
            {
              v24 += &v22[*&v22[v24]];
            }
          }

          v25 = (v24 + ((v20 >> 30) & 0x3FFFC) + 4 + *(v24 + ((v20 >> 30) & 0x3FFFC) + 4));
        }

        else
        {
          v25 = 0;
        }

        v26 = sub_31D7E8(v19, v20 & 0xFFFFFFFFFFFFLL, 1);
        v56[0] = v21;
        v56[1] = v25;
        v56[2] = v26;
        __p = v27;
        v58 = v20 & 0xFFFFFFFFFFFFFFLL;
        sub_69B1E0(v59, v56);
        v28 = *(v10 + 10128);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v10 + 10136) - v28) >> 3) > v17)
        {
          v29 = v64;
          if (v64 >= v65)
          {
            v30 = sub_87B970(&v63, v28 + v16);
          }

          else
          {
            sub_F548B4(v64, v28 + v16);
            v30 = (v29 + 40);
          }

          v64 = v30;
        }

        if (v59 != v10)
        {
          v66[8] = *(v10 + 12576);
          sub_601264(v66, *(v10 + 12560), 0);
          v67[8] = *(v10 + 12616);
          sub_601910(v67, *(v10 + 12600), 0);
        }

        v31 = sub_41440((v10 + 12624), v17);
        v33 = v32;
        v34 = *v31;
        v35 = v69;
        if (v69 == v70 << 6)
        {
          if ((v69 + 1) < 0)
          {
            sub_1794();
          }

          if (v69 > 0x3FFFFFFFFFFFFFFELL)
          {
            v36 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else if (v70 << 7 <= (v69 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v36 = (v69 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          else
          {
            v36 = v70 << 7;
          }

          sub_3D41C(&v68, v36);
          v35 = v69;
        }

        v69 = v35 + 1;
        v37 = v35 >> 6;
        v38 = 1 << v35;
        if ((v34 & v33) != 0)
        {
          break;
        }

        *(v68 + 8 * v37) &= ~v38;
        ++v17;
        v16 += 40;
        if (v15 == v17)
        {
          goto LABEL_31;
        }
      }

      *(v68 + 8 * v37) |= v38;
      ++v17;
      v16 += 40;
    }

    while (v15 != v17);
  }

LABEL_31:
  v39 = *(v54 + 3) * 1000000000.0;
  if (v39 >= 0.0)
  {
    if (v39 >= 4.50359963e15)
    {
      goto LABEL_37;
    }

    v40 = (v39 + v39) + 1;
  }

  else
  {
    if (v39 <= -4.50359963e15)
    {
      goto LABEL_37;
    }

    v40 = (v39 + v39) - 1 + (((v39 + v39) - 1) >> 63);
  }

  v39 = (v40 >> 1);
LABEL_37:
  *(sub_3AF234(v59) + 16) = v39;
  v41 = *(v54 + 4) * 1000000000.0;
  if (v41 >= 0.0)
  {
    if (v41 >= 4.50359963e15)
    {
      goto LABEL_43;
    }

    v42 = (v41 + v41) + 1;
  }

  else
  {
    if (v41 <= -4.50359963e15)
    {
      goto LABEL_43;
    }

    v42 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
  }

  v41 = (v42 >> 1);
LABEL_43:
  *(sub_73F1C(v59) + 16) = v41;
  sub_4D1E70(v10, v56);
  sub_4D1E7C(v59, v56);
  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  if (v56[0])
  {
    v56[1] = v56[0];
    operator delete(v56[0]);
  }

  v62 = *(v10 + 10120);
  sub_6E4EC0(v56, *v55, 1, *(v55 + 74), v55 + 8);
  sub_6E4EC4(v56, v59, 0);
  sub_87B854((v10 + 10096), 0xEF7BDEF7BDEF7BDFLL * ((*(v10 + 10104) - *(v10 + 10096)) >> 3) - 0x1084210842108421 * ((v61 - v60) >> 3));
  v43 = v60;
  v44 = v61;
  if (v60 != v61)
  {
    v45 = v60;
    while (1)
    {
      v45[4] += v14;
      v46 = v45[9];
      if (v46 != -1)
      {
        break;
      }

      v47 = v45[10];
      if (v47 != -1)
      {
        goto LABEL_54;
      }

      if (v45[11] != -1 || v45[12] != -1 || v45[13] != -1 || v45[14] != -1 || v45[15] != -1)
      {
        goto LABEL_55;
      }

LABEL_49:
      v45 += 31;
      if (v45 == v44)
      {
        goto LABEL_71;
      }
    }

    v45[9] = v46 + v14;
    v47 = v45[10];
    if (v47 != -1)
    {
LABEL_54:
      v45[10] = v47 + v14;
    }

LABEL_55:
    v48 = v45[11];
    if (v48 != -1)
    {
      v45[11] = v48 + v14;
    }

    v49 = v45[12];
    if (v49 != -1)
    {
      v45[12] = v49 + v14;
    }

    v50 = v45[13];
    if (v50 != -1)
    {
      v45[13] = v50 + v14;
    }

    v51 = v45[14];
    if (v51 != -1)
    {
      v45[14] = v51 + v14;
    }

    v52 = v45[15];
    if (v52 != -1)
    {
      v45[15] = v52 + v14;
    }

    goto LABEL_49;
  }

LABEL_71:
  sub_87BB30((v10 + 10096), *(v10 + 10104), v43, v44, 0xEF7BDEF7BDEF7BDFLL * ((v44 - v43) >> 3));
  sub_6D2D60(v56);
  return sub_5C186C(v59);
}

void sub_874F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_6D2D60(va);
  sub_5C186C(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

void sub_874FC4(_Unwind_Exception *a1)
{
  STACK[0x4530] = v1;
  sub_5C186C(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

uint64_t sub_875028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  sub_69E8D4(v51);
  v15 = *v12;
  v14 = v12[1];
  v47 = v12;
  if (*v12 <= v14 + 1)
  {
    v16 = v14 + 1;
  }

  else
  {
    v16 = *v12;
  }

  if (v15 < v14 + 1)
  {
    v17 = 40 * v15;
    v18 = v15;
    do
    {
      while (1)
      {
        v19 = sub_4D1F50(v10, v18);
        sub_87C414(v51, v19, *(v13 + 32));
        v20 = *(v10 + 10128);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v10 + 10136) - v20) >> 3) > v18)
        {
          v21 = v56;
          if (v56 >= v57)
          {
            v22 = sub_87B970(&v55, v20 + v17);
          }

          else
          {
            sub_F548B4(v56, v20 + v17);
            v22 = (v21 + 40);
          }

          v56 = v22;
        }

        if (v51 != v10)
        {
          v58[8] = *(v10 + 12576);
          sub_601264(v58, *(v10 + 12560), 0);
          v59[8] = *(v10 + 12616);
          sub_601910(v59, *(v10 + 12600), 0);
        }

        v23 = sub_41440((v10 + 12624), v18);
        v25 = v24;
        v26 = *v23;
        v27 = v61;
        if (v61 == v62 << 6)
        {
          if ((v61 + 1) < 0)
          {
            sub_1794();
          }

          v28 = v62 << 7;
          if (v62 << 7 <= (v61 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v28 = (v61 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          if (v61 <= 0x3FFFFFFFFFFFFFFELL)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0x7FFFFFFFFFFFFFFFLL;
          }

          sub_3D41C(&v60, v29);
          v27 = v61;
        }

        v61 = v27 + 1;
        v30 = v27 >> 6;
        v31 = 1 << v27;
        if ((v26 & v25) != 0)
        {
          break;
        }

        *(v60 + 8 * v30) &= ~v31;
        ++v18;
        v17 += 40;
        if (v16 == v18)
        {
          goto LABEL_24;
        }
      }

      *(v60 + 8 * v30) |= v31;
      ++v18;
      v17 += 40;
    }

    while (v16 != v18);
  }

LABEL_24:
  v32 = *(v47 + 3) * 1000000000.0;
  if (v32 >= 0.0)
  {
    if (v32 >= 4.50359963e15)
    {
      goto LABEL_30;
    }

    v33 = (v32 + v32) + 1;
  }

  else
  {
    if (v32 <= -4.50359963e15)
    {
      goto LABEL_30;
    }

    v33 = (v32 + v32) - 1 + (((v32 + v32) - 1) >> 63);
  }

  v32 = (v33 >> 1);
LABEL_30:
  *(sub_3AF234(v51) + 16) = v32;
  v34 = *(v47 + 4) * 1000000000.0;
  if (v34 >= 0.0)
  {
    if (v34 >= 4.50359963e15)
    {
      goto LABEL_36;
    }

    v35 = (v34 + v34) + 1;
  }

  else
  {
    if (v34 <= -4.50359963e15)
    {
      goto LABEL_36;
    }

    v35 = (v34 + v34) - 1 + (((v34 + v34) - 1) >> 63);
  }

  v34 = (v35 >> 1);
LABEL_36:
  *(sub_73F1C(v51) + 16) = v34;
  sub_4D1E70(v10, v48);
  sub_4D1E7C(v51, v48);
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  v54 = *(v10 + 10120);
  sub_6F3F18(v48, *v13, 1, *(v13 + 74), v13 + 8);
  sub_6F3F1C(v48, v51, 0);
  sub_87B854((v10 + 10096), 0xEF7BDEF7BDEF7BDFLL * ((*(v10 + 10104) - *(v10 + 10096)) >> 3) - 0x1084210842108421 * ((v53 - v52) >> 3));
  v36 = v52;
  v37 = v53;
  if (v52 != v53)
  {
    v38 = v52;
    while (1)
    {
      v38[4] += v15;
      v39 = v38[9];
      if (v39 != -1)
      {
        break;
      }

      v40 = v38[10];
      if (v40 != -1)
      {
        goto LABEL_47;
      }

      if (v38[11] != -1 || v38[12] != -1 || v38[13] != -1 || v38[14] != -1 || v38[15] != -1)
      {
        goto LABEL_48;
      }

LABEL_42:
      v38 += 31;
      if (v38 == v37)
      {
        goto LABEL_64;
      }
    }

    v38[9] = v39 + v15;
    v40 = v38[10];
    if (v40 != -1)
    {
LABEL_47:
      v38[10] = v40 + v15;
    }

LABEL_48:
    v41 = v38[11];
    if (v41 != -1)
    {
      v38[11] = v41 + v15;
    }

    v42 = v38[12];
    if (v42 != -1)
    {
      v38[12] = v42 + v15;
    }

    v43 = v38[13];
    if (v43 != -1)
    {
      v38[13] = v43 + v15;
    }

    v44 = v38[14];
    if (v44 != -1)
    {
      v38[14] = v44 + v15;
    }

    v45 = v38[15];
    if (v45 != -1)
    {
      v38[15] = v45 + v15;
    }

    goto LABEL_42;
  }

LABEL_64:
  sub_87BB30((v10 + 10096), *(v10 + 10104), v36, v37, 0xEF7BDEF7BDEF7BDFLL * ((v37 - v36) >> 3));
  sub_6D2D60(v48);
  return sub_694110(v51);
}

void sub_875554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_6D2D60(va);
  sub_694110(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

void sub_8755F8(_Unwind_Exception *a1)
{
  STACK[0x4530] = v1;
  sub_694110(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

uint64_t sub_87565C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v55 = v8;
  sub_69AC30(v59);
  v14 = *v12;
  v13 = v12[1];
  v54 = v12;
  if (*v12 <= v13 + 1)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = *v12;
  }

  if (v14 < v13 + 1)
  {
    v16 = 40 * v14;
    v17 = *v12;
    do
    {
      while (1)
      {
        v18 = sub_4D1F50(v10, v17);
        v19 = *(v55 + 32);
        v20 = *(v18 + 32);
        v21 = sub_2B51D8(v19, v20 & 0xFFFFFFFFFFFFLL);
        if (*(v19 + 7772) == 1)
        {
          v22 = sub_30C50C(v19 + 3896, v20, 0);
          v23 = &v22[-*v22];
          if (*v23 < 5u)
          {
            v24 = 0;
          }

          else
          {
            v24 = *(v23 + 2);
            if (v24)
            {
              v24 += &v22[*&v22[v24]];
            }
          }

          v25 = (v24 + ((v20 >> 30) & 0x3FFFC) + 4 + *(v24 + ((v20 >> 30) & 0x3FFFC) + 4));
        }

        else
        {
          v25 = 0;
        }

        v26 = sub_31D7E8(v19, v20 & 0xFFFFFFFFFFFFLL, 1);
        v56[0] = v21;
        v56[1] = v25;
        v56[2] = v26;
        __p = v27;
        v58 = v20 & 0xFFFFFFFFFFFFFFLL;
        sub_69B1E0(v59, v56);
        v28 = *(v10 + 10128);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v10 + 10136) - v28) >> 3) > v17)
        {
          v29 = v64;
          if (v64 >= v65)
          {
            v30 = sub_87B970(&v63, v28 + v16);
          }

          else
          {
            sub_F548B4(v64, v28 + v16);
            v30 = (v29 + 40);
          }

          v64 = v30;
        }

        if (v59 != v10)
        {
          v66[8] = *(v10 + 12576);
          sub_601264(v66, *(v10 + 12560), 0);
          v67[8] = *(v10 + 12616);
          sub_601910(v67, *(v10 + 12600), 0);
        }

        v31 = sub_41440((v10 + 12624), v17);
        v33 = v32;
        v34 = *v31;
        v35 = v69;
        if (v69 == v70 << 6)
        {
          if ((v69 + 1) < 0)
          {
            sub_1794();
          }

          if (v69 > 0x3FFFFFFFFFFFFFFELL)
          {
            v36 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else if (v70 << 7 <= (v69 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v36 = (v69 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          else
          {
            v36 = v70 << 7;
          }

          sub_3D41C(&v68, v36);
          v35 = v69;
        }

        v69 = v35 + 1;
        v37 = v35 >> 6;
        v38 = 1 << v35;
        if ((v34 & v33) != 0)
        {
          break;
        }

        *(v68 + 8 * v37) &= ~v38;
        ++v17;
        v16 += 40;
        if (v15 == v17)
        {
          goto LABEL_31;
        }
      }

      *(v68 + 8 * v37) |= v38;
      ++v17;
      v16 += 40;
    }

    while (v15 != v17);
  }

LABEL_31:
  v39 = *(v54 + 3) * 1000000000.0;
  if (v39 >= 0.0)
  {
    if (v39 >= 4.50359963e15)
    {
      goto LABEL_37;
    }

    v40 = (v39 + v39) + 1;
  }

  else
  {
    if (v39 <= -4.50359963e15)
    {
      goto LABEL_37;
    }

    v40 = (v39 + v39) - 1 + (((v39 + v39) - 1) >> 63);
  }

  v39 = (v40 >> 1);
LABEL_37:
  *(sub_3AF234(v59) + 16) = v39;
  v41 = *(v54 + 4) * 1000000000.0;
  if (v41 >= 0.0)
  {
    if (v41 >= 4.50359963e15)
    {
      goto LABEL_43;
    }

    v42 = (v41 + v41) + 1;
  }

  else
  {
    if (v41 <= -4.50359963e15)
    {
      goto LABEL_43;
    }

    v42 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
  }

  v41 = (v42 >> 1);
LABEL_43:
  *(sub_73F1C(v59) + 16) = v41;
  sub_4D1E70(v10, v56);
  sub_4D1E7C(v59, v56);
  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  if (v56[0])
  {
    v56[1] = v56[0];
    operator delete(v56[0]);
  }

  v62 = *(v10 + 10120);
  sub_6D2C70(v56, *v55, 1, *(v55 + 74), v55 + 8);
  sub_6D2D64(v56, v59, 0);
  sub_87B854((v10 + 10096), 0xEF7BDEF7BDEF7BDFLL * ((*(v10 + 10104) - *(v10 + 10096)) >> 3) - 0x1084210842108421 * ((v61 - v60) >> 3));
  v43 = v60;
  v44 = v61;
  if (v60 != v61)
  {
    v45 = v60;
    while (1)
    {
      v45[4] += v14;
      v46 = v45[9];
      if (v46 != -1)
      {
        break;
      }

      v47 = v45[10];
      if (v47 != -1)
      {
        goto LABEL_54;
      }

      if (v45[11] != -1 || v45[12] != -1 || v45[13] != -1 || v45[14] != -1 || v45[15] != -1)
      {
        goto LABEL_55;
      }

LABEL_49:
      v45 += 31;
      if (v45 == v44)
      {
        goto LABEL_71;
      }
    }

    v45[9] = v46 + v14;
    v47 = v45[10];
    if (v47 != -1)
    {
LABEL_54:
      v45[10] = v47 + v14;
    }

LABEL_55:
    v48 = v45[11];
    if (v48 != -1)
    {
      v45[11] = v48 + v14;
    }

    v49 = v45[12];
    if (v49 != -1)
    {
      v45[12] = v49 + v14;
    }

    v50 = v45[13];
    if (v50 != -1)
    {
      v45[13] = v50 + v14;
    }

    v51 = v45[14];
    if (v51 != -1)
    {
      v45[14] = v51 + v14;
    }

    v52 = v45[15];
    if (v52 != -1)
    {
      v45[15] = v52 + v14;
    }

    goto LABEL_49;
  }

LABEL_71:
  sub_87BB30((v10 + 10096), *(v10 + 10104), v43, v44, 0xEF7BDEF7BDEF7BDFLL * ((v44 - v43) >> 3));
  sub_6D2D60(v56);
  return sub_693598(v59);
}

void sub_875C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_6D2D60(va);
  sub_693598(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

void sub_875CDC(_Unwind_Exception *a1)
{
  STACK[0x4530] = v1;
  sub_693598(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

void sub_876ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_876B40(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 8), *a3, *(a3 + 1));
    v8 = *a1;
  }

  else
  {
    v7 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v7;
    v8 = a2;
  }

  *(a1 + 32) = sub_3AF6B4(v8);
  *(a1 + 40) = a4;
  v12 = 11;
  strcpy(v11, "StepBuilder");
  memset(v10, 0, sizeof(v10));
  v9 = sub_3AEC94(a2, v11, v10);
  sub_41D820(v9, v13);
  sub_87A3E4(a1 + 48, v13);
}

void sub_876CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
    if ((*(v18 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v18 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v19);
  _Unwind_Resume(a1);
}

void sub_876D4C(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = sub_4C35B0(a2);
  if (v6)
  {
    v7 = v6;
    v8 = sub_4C49C0(a2, 0);
    v9 = sub_68C454(a3, 0);
    v10 = sub_73EC4(a2);
    sub_876E18(a1, v8, v9, *v10);
    if (v7 != 1)
    {
      for (i = 1; i != v7; ++i)
      {
        v12 = sub_4C49C0(a2, i);
        v13 = sub_68C454(a3, i);
        sub_876E18(a1, v12, v13, 0.0);
      }
    }
  }
}

void sub_876E18(uint64_t *a1, void *a2, void *a3, double a4)
{
  if (!sub_4D1F6C(a2))
  {
    sub_877060(a3, &v5);
  }
}

void sub_877010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    v30 = a10;
    if (!a10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v30 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  operator delete(v30);
  _Unwind_Resume(exception_object);
}

void sub_877060(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_3AF234(a1);
  sub_73F1C(a1);
  sub_4D1DC0(a1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  operator new();
}

void sub_877174(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_87718C(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_8771A4(uint64_t a1, void *a2, void *a3, unint64_t a4, void **a5, double a6)
{
  v11 = sub_86F6CC(a3, a4);
  v12 = v11;
  v109 = a4;
  if (!a4)
  {
    sub_8789A4(a1, a2, a5, *(v11 + 16), a6);
  }

  sub_3CF22C(a2);
  sub_3CF22C(a2);
  sub_3CF22C(a2);
  v111 = a5;
  v18 = (a5[1263] - a5[1262]) >> 3;
  v108 = a3;
  if (*(v12 + 16) == 2)
  {
    result = sub_87977C(a1, v12, a5, v13, v14, v15, v16, v17);
    v23 = 0xEF7BDEF7BDEF7BDFLL * v18;
    v24 = a5[139];
    v25 = a5;
    if (a5[138] != v24)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!*(v12 + 16))
    {
      result = sub_879148(a1, v12, a5, v13, v14, v15, v16, v17);
      v23 = 0xEF7BDEF7BDEF7BDFLL * v18;
      v24 = a5[139];
      v25 = a5;
      if (a5[138] == v24)
      {
        goto LABEL_10;
      }

LABEL_8:
      v26 = *(v24 - 324);
      goto LABEL_11;
    }

    result = sub_879DB0(a1, v12, a5, v13, v14, v15, v16, v17);
    v23 = 0xEF7BDEF7BDEF7BDFLL * v18;
    v24 = a5[139];
    v25 = a5;
    if (a5[138] != v24)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v26 = 0;
LABEL_11:
  v27 = 0xEF7BDEF7BDEF7BDFLL * ((v25[1263] - v25[1262]) >> 3);
  v28 = v23 >= v27;
  if (v23 > v27)
  {
    v27 = v23;
  }

  v107 = v27;
  if (!v28)
  {
    LOBYTE(v114) = 0;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v106 = vnegq_f64(v29);
    v110 = v12;
    while (1)
    {
      v31 = sub_6D3F8C(v25 + 1262, v23);
      v112 = *(v31 + 24);
      v32 = *(v31 + 32);
      v33 = v32 + ((*(v31 + 8) - *v31) >> 3) - 1;
      sub_4D0560();
      v113 = sub_4D1F50(v35, v34 + v32);
      sub_4D0560();
      sub_4D1F50(v37, v33 + v36);
      if (v26 <= v33)
      {
        v39 = v33;
      }

      else
      {
        v39 = v26;
      }

      v40 = 0;
      if (v26 < v33)
      {
        v41 = v26;
        do
        {
          v40 += sub_4D23F8(a2, v41++, v38);
        }

        while (v39 != v41);
      }

      v164[0] = v40;
      v42 = 4 * v26;
      v43 = 4 * v26 + *(sub_3CF22C(a2) + 16);
      v44 = 4 * v33;
      v45 = 4 * v33 + *(sub_3CF22C(a2) + 16);
      if (v43 == v45)
      {
        v46 = 0;
        goto LABEL_31;
      }

      v47 = v45 - v43 - 4;
      if (v47 < 0x1C)
      {
        break;
      }

      v49 = (v47 >> 2) + 1;
      v48 = (v43 + 4 * (v49 & 0x7FFFFFFFFFFFFFF8));
      v50 = (v43 + 16);
      v51 = 0uLL;
      v52 = v49 & 0x7FFFFFFFFFFFFFF8;
      v53 = 0uLL;
      do
      {
        v51 = vaddq_s32(v50[-1], v51);
        v53 = vaddq_s32(*v50, v53);
        v50 += 2;
        v52 -= 8;
      }

      while (v52);
      v46 = vaddvq_s32(vaddq_s32(v53, v51));
      if (v49 != (v49 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_30;
      }

LABEL_31:
      HIDWORD(v163) = v46;
      v55 = (v42 + *(sub_3CF22C(a2) + 40));
      v56 = (v44 + *(sub_3CF22C(a2) + 40));
      if (v55 == v56)
      {
        v57 = 0;
        v12 = v110;
        goto LABEL_39;
      }

      v58 = v56 - v55 - 4;
      if (v58 < 0x1C)
      {
        v57 = 0;
        v59 = v55;
        v12 = v110;
        do
        {
LABEL_38:
          v65 = v59->i32[0];
          v59 = (v59 + 4);
          v57 += v65;
        }

        while (v59 != v56);
        goto LABEL_39;
      }

      v60 = (v58 >> 2) + 1;
      v59 = (v55 + 4 * (v60 & 0x7FFFFFFFFFFFFFF8));
      v61 = v55 + 1;
      v62 = 0uLL;
      v63 = v60 & 0x7FFFFFFFFFFFFFF8;
      v64 = 0uLL;
      do
      {
        v62 = vaddq_s32(v61[-1], v62);
        v64 = vaddq_s32(*v61, v64);
        v61 += 2;
        v63 -= 8;
      }

      while (v63);
      v57 = vaddvq_s32(vaddq_s32(v64, v62));
      v12 = v110;
      if (v60 != (v60 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_38;
      }

LABEL_39:
      LODWORD(v163) = v57;
      v66 = (v42 + *(sub_3CF22C(a2) + 64));
      v67 = (v44 + *(sub_3CF22C(a2) + 64));
      if (v66 == v67)
      {
        v68 = 0;
        goto LABEL_47;
      }

      v69 = v67 - v66 - 4;
      if (v69 < 0x1C)
      {
        v68 = 0;
        v70 = v66;
        do
        {
LABEL_46:
          v76 = v70->i32[0];
          v70 = (v70 + 4);
          v68 += v76;
        }

        while (v70 != v67);
        goto LABEL_47;
      }

      v71 = (v69 >> 2) + 1;
      v70 = (v66 + 4 * (v71 & 0x7FFFFFFFFFFFFFF8));
      v72 = v66 + 1;
      v73 = 0uLL;
      v74 = v71 & 0x7FFFFFFFFFFFFFF8;
      v75 = 0uLL;
      do
      {
        v73 = vaddq_s32(v72[-1], v73);
        v75 = vaddq_s32(*v72, v75);
        v72 += 2;
        v74 -= 8;
      }

      while (v74);
      v68 = vaddvq_s32(vaddq_s32(v75, v73));
      if (v71 != (v71 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_46;
      }

LABEL_47:
      v162 = v68;
      v77 = (*v113 - **v113);
      if (*v77 >= 0x9Bu && (v78 = v77[77]) != 0)
      {
        v79 = (*(*v113 + v78) & 0x8000) == 0;
        if ((*(*v113 + v78) & 8) != 0)
        {
          v80 = 4;
        }

        else
        {
          v80 = 5;
        }
      }

      else
      {
        v80 = 5;
        v79 = 1;
      }

      v114 = (*(v31 + 227) | v114) != 0;
      if (*(a1 + 72) == 1 && (*(v12 + 40) & 1) == 0 && *(v12 + 8) <= v33)
      {
        v138 = 0;
        v137 = 0;
        v139 = 0;
        v141 = -1;
        v143 = 0;
        v144 = 0;
        __p = 0;
        v145 = 0;
        *&v81 = -1;
        *(&v81 + 1) = -1;
        v146 = v81;
        v147 = v81;
        v148 = v81;
        v149 = -1;
        v150 = 0;
        v151 = -1;
        v152 = 0;
        v153 = 0;
        v154 = v106;
        v155 = 0;
        v157 = 0;
        v158 = 0;
        v159 = xmmword_229B660;
        v156 = 98;
        v160 = 0;
        v161[0] = 0;
        *(v161 + 6) = 0;
        v140 = 16;
        sub_87B1E4(v116, &v137, v164, &v163 + 1, &v163, &v162);
        if (*(v111 + 1097) != v79)
        {
          v132 = v79 | 0x100;
        }

        v117 = v32;
        v118 = v33;
        v124 = v32;
        v125 = sub_4D23F8(a2, v32, v82);
        v84 = sub_4D25C0(a2, v124, v83);
        v126 = v125 + v84;
        v123 = v125 + v84;
        v120 = v26;
        v85 = v111[139];
        if (v85 >= v111[140])
        {
          v86 = sub_87B564(v111 + 138, v116);
          v12 = v110;
          v87 = v111;
        }

        else
        {
          sub_5EF290(v111[139], v116);
          v86 = v85 + 2616;
          v12 = v110;
          v87 = v111;
          v111[139] = v86;
        }

        v87[139] = v86;
        v163 = 0;
        v164[0] = 0;
        v162 = 0;
        v26 = v118;
        sub_5C25A8(v116);
        if (__p)
        {
          v143 = __p;
          operator delete(__p);
        }

        if (v137)
        {
          v138 = v137;
          operator delete(v137);
        }
      }

      result = v108;
      if (0x6DB6DB6DB6DB6DB7 * ((v108[1] - *v108) >> 3) - 1 <= v109)
      {
        v88 = 0;
        v89 = v112;
        if (*(a1 + 73) != 1)
        {
          goto LABEL_76;
        }
      }

      else
      {
        result = sub_86F6CC(v108, v109 + 1);
        v88 = result[6];
        v89 = v112;
        if (*(a1 + 73) != 1)
        {
          goto LABEL_76;
        }
      }

      if (*(v12 + 8) > v33 || (*(v12 + 40) & 1) != 0 || (v89 ? (v90 = v89) : (v90 = 3), *(a1 + 80) > v88))
      {
LABEL_76:
        if (v89)
        {
          goto LABEL_77;
        }

        v25 = v111;
        if (++v23 == v107)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v89 = v90;
LABEL_77:
        v91 = v12;
        v92 = v79;
        v93 = v89;
        sub_87B1E4(v116, v31, v164, &v163 + 1, &v163, &v162);
        v127 = v93;
        v133 = *(v31 + 72);
        v94 = *(v31 + 88);
        v95 = *(v31 + 104);
        v96 = *(v31 + 120);
        *(v136 + 12) = *(v31 + 132);
        v135 = v95;
        v136[0] = v96;
        v134 = v94;
        if (v130 != -1)
        {
          v119 = v130 + v32;
        }

        v117 = v32;
        v118 = v33;
        v120 = v26;
        v131 = v80;
        v25 = v111;
        if (v80 != 4 && *(v111 + 1097) != v92)
        {
          v132 = v92 | 0x100;
        }

        if (v128 == -1 || v129 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v100 = sub_4D23F8(v111, v32, *&v94);
          v12 = v91;
          v121 = v32;
          v101 = *(a1 + 56);
          if (v101 >= v100)
          {
            v101 = v100;
          }

          v99 = v100 - v101;
        }

        else
        {
          v121 = v128 + v32;
          v97 = sub_4D23F8(v111, v128 + v32, *&v94);
          v12 = v91;
          v99 = v129;
          v32 = v121;
          if (v97 < v129)
          {
            v99 = v97;
          }
        }

        v122 = v99;
        v102 = sub_4D25C0(v111, v32, v98);
        v123 = v122 + v102;
        v124 = v33;
        v125 = 0;
        v104 = sub_4D25C0(v111, v33, v103);
        v126 = v125 + v104;
        v105 = v111[139];
        if (v105 < v111[140])
        {
          v30 = sub_6083DC(v105, v116) + 2616;
        }

        else
        {
          v30 = sub_87B6F0(v111 + 138, v116);
        }

        v111[139] = v30;
        v163 = 0;
        v164[0] = 0;
        v162 = 0;
        result = sub_5C25A8(v116);
        v114 = 0;
        v26 = v33;
        if (++v23 == v107)
        {
          goto LABEL_95;
        }
      }
    }

    v46 = 0;
    v48 = v43;
    do
    {
LABEL_30:
      v54 = *v48++;
      v46 += v54;
    }

    while (v48 != v45);
    goto LABEL_31;
  }

  v114 = 0;
LABEL_95:
  if (0x6DB6DB6DB6DB6DB7 * ((v108[1] - *v108) >> 3) - 1 == v109)
  {
    return sub_878BD8(a1, a2, v12, v114, v25, v20, v21, v22);
  }

  return result;
}

void sub_877AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  *(a20 + 1112) = v24;
  sub_5C25A8(va);
  sub_5ECFBC(&STACK[0xAB8]);
  _Unwind_Resume(a1);
}

void sub_877AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_5C25A8(va);
  sub_5ECFBC(&STACK[0xAB8]);
  _Unwind_Resume(a1);
}

void sub_877B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_5C25A8(va);
  _Unwind_Resume(a1);
}

void *sub_877B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v78 = v8;
  sub_6F3F18(v81, *v8, 1, *(v8 + 74), v8 + 8);
  v11 = 0x3795876FF3795877 * ((*(v10 + 1112) - *(v10 + 1104)) >> 3);
  if (v11 >= 3 && *(v10 + 1096) == 0)
  {
    v14 = 1;
    do
    {
      v16 = sub_578320((v10 + 1104), v14);
      v17 = sub_578320((v10 + 1104), v14 + 1);
      if (*(v16 + 384) != 5)
      {
        goto LABEL_7;
      }

      v18 = *(v16 + 160) - 11;
      v19 = v18 > 0x37;
      v20 = (1 << v18) & 0xE00000000C0601;
      if (v19 || v20 == 0)
      {
        goto LABEL_7;
      }

      v22 = *(v16 + 24);
      v23 = *(v16 + 16) == -1 ? v22 - 1 : *(v16 + 16);
      if (v23 + 1 != v22)
      {
        goto LABEL_7;
      }

      v24 = v17;
      if (v22 >= sub_4D1DC0(v10))
      {
        goto LABEL_7;
      }

      v25 = sub_4D1F50(v10, v23);
      v26 = sub_4D1F50(v10, v22);
      v28 = sub_4D23F8(v10, v22, v27);
      v29 = *(v25 + 9);
      v30 = sub_2B51D8(*(v78 + 32), *(v25 + 8) | (v29 << 32));
      v31 = (v30 - *v30);
      v32 = *v31;
      if ((v29 & 0x20000000) != 0)
      {
        if (v32 < 0x27)
        {
          goto LABEL_7;
        }

        v33 = v31[19];
        if (!v33)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v32 < 0x29)
        {
          goto LABEL_7;
        }

        v33 = v31[20];
        if (!v33)
        {
          goto LABEL_7;
        }
      }

      v77 = *(v30 + v33 + *(v30 + v33));
      if (v77 >= 3 && v28 >= *(v78 + 136))
      {
        sub_6F46A0(v81, v25, 0, &v79);
        v34 = *v79;
        v35 = v79[1];
        if (*v79 != v35)
        {
          v36 = v35 - v34 - 248;
          if (v36 < 0xF8)
          {
            v37 = 0;
            v38 = *v79;
            goto LABEL_32;
          }

          v39 = 0;
          v40 = 0;
          v41 = v36 / 0xF8 + 1;
          v38 = v34 + 248 * (v41 & 0x3FFFFFFFFFFFFFELL);
          v42 = (v34 + 489);
          v43 = v41 & 0x3FFFFFFFFFFFFFELL;
          do
          {
            v39 += *(v42 - 248);
            v40 += *v42;
            v42 += 496;
            v43 -= 2;
          }

          while (v43);
          v37 = v40 + v39;
          if (v41 != (v41 & 0x3FFFFFFFFFFFFFELL))
          {
            do
            {
LABEL_32:
              v37 += *(v38 + 241);
              v38 += 248;
            }

            while (v38 != v35);
          }

          if (v37 == 2)
          {
            do
            {
              if (*(v34 + 241) == 1)
              {
                v45 = *(v34 + 24);
                if (!v45 || v45 == 3)
                {
                  break;
                }
              }

              v34 += 248;
            }

            while (v34 != v35);
            if (v34 != v35 && *(v24 + 1008) >= *(v78 + 112))
            {
              v47 = (*v25 - **v25);
              v48 = *v47;
              if ((*(v25 + 39) & 0x20) != 0)
              {
                if (v48 >= 0x4B)
                {
                  v49 = v47[37];
                  if (v49)
                  {
                    goto LABEL_52;
                  }
                }

LABEL_53:
                v50 = -1;
              }

              else
              {
                if (v48 < 0x49)
                {
                  goto LABEL_53;
                }

                v49 = v47[36];
                if (!v49)
                {
                  goto LABEL_53;
                }

LABEL_52:
                v50 = *(*v25 + v49);
              }

              v51 = (*v26 - **v26);
              v52 = *v51;
              if ((*(v26 + 39) & 0x20) != 0)
              {
                if (v52 >= 0x49)
                {
                  v53 = v51[36];
                  if (v53)
                  {
                    goto LABEL_60;
                  }
                }

LABEL_61:
                v54 = 0xFFFF;
              }

              else
              {
                if (v52 < 0x4B)
                {
                  goto LABEL_61;
                }

                v53 = v51[37];
                if (!v53)
                {
                  goto LABEL_61;
                }

LABEL_60:
                v54 = *(*v26 + v53);
              }

              v55 = v50 + 18000;
              v56 = v50 - 18000;
              if ((v55 >> 5) < 0x465u)
              {
                v56 = v55;
              }

              v57 = v54 - v56;
              if (v57 > 18000)
              {
                v57 -= 36000;
              }

              if (v57 < -17999)
              {
                v57 += 36000;
              }

              v58 = v57 / 100.0;
              if (v58 < *(v78 + 96))
              {
                v58 = *(v78 + 96);
              }

              if (v58 <= *(v78 + 104))
              {
                v59 = *(v24 + 1008);
                v60 = v77 * *(v78 + 88);
                v61 = (v60 + v60);
                if (v60 > -4.50359963e15)
                {
                  v62 = ((v61 - 1) / 2);
                }

                else
                {
                  v62 = v77 * *(v78 + 88);
                }

                v63 = ((v61 + 1) >> 1);
                if (v60 >= 4.50359963e15)
                {
                  v63 = v77 * *(v78 + 88);
                }

                if (v60 >= 0.0)
                {
                  v64 = v63;
                }

                else
                {
                  v64 = v62;
                }

                v65 = sin(v58 * 3.14159265 / 180.0);
                v66 = v64 / (v65 + v65);
                if (v66 >= 0.0)
                {
                  if (v66 < 4.50359963e15)
                  {
                    v67 = (v66 + v66) + 1;
LABEL_84:
                    v66 = (v67 >> 1);
                  }
                }

                else if (v66 > -4.50359963e15)
                {
                  v67 = (v66 + v66) - 1 + (((v66 + v66) - 1) >> 63);
                  goto LABEL_84;
                }

                v68 = v66;
                v69 = *(v78 + 120) * v59;
                v70 = (v69 + v69);
                if (v69 > -4.50359963e15)
                {
                  v71 = ((v70 - 1) / 2);
                }

                else
                {
                  v71 = *(v78 + 120) * v59;
                }

                v72 = ((v70 + 1) >> 1);
                if (v69 >= 4.50359963e15)
                {
                  v72 = *(v78 + 120) * v59;
                }

                if (v69 >= 0.0)
                {
                  v73 = v72;
                }

                else
                {
                  v73 = v71;
                }

                v74 = v28 - *(v78 + 136);
                if (v74 >= v73)
                {
                  v74 = v73;
                }

                if (v74 < v68)
                {
                  v68 = v74;
                }

                if (*(v78 + 128) < v68)
                {
                  v68 = *(v78 + 128);
                }

                *(v16 + 112) = v68;
                v75 = sub_4D25C0(v10, *(v16 + 104), v73);
                v76 = *(v16 + 112);
                *(v16 + 120) = v76 + v75;
                *(v16 + 1008) += v76;
                *(v24 + 1008) -= v76;
                *(v24 + 48) = *(v16 + 112);
              }
            }
          }
        }

        v44 = v80;
        if (v80 && !atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v44->__on_zero_shared)(v44);
          std::__shared_weak_count::__release_weak(v44);
        }
      }

LABEL_7:
      v15 = v14 + 2;
      ++v14;
    }

    while (v11 != v15);
  }

  return sub_6D2D60(v81);
}

void sub_878130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_6D2D60(va1);
  _Unwind_Resume(a1);
}

void sub_87814C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_878160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_878174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_878188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_87819C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_8781B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_8781C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_8781D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_6D2D60(va);
  _Unwind_Resume(a1);
}

void sub_8781EC(uint64_t a1, void *a2)
{
  if (*(a1 + 145) == 1)
  {
    operator new();
  }
}

uint64_t sub_878388(uint64_t a1, void *a2)
{
  v4 = a2[139];
  v5 = sub_578320(a2 + 138, 0x3795876FF3795877 * ((v4 - a2[138]) >> 3) - 2);
  v6 = *(v4 - 2576);
  v7 = sub_4D1DC0(a2);
  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v6 >= v7)
  {
    result = 1;
    if (*(a1 + 144) != 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v9 = v8 - 1;
  do
  {
    v10 = *(a1 + 32);
    v11 = sub_4D1F50(a2, v6);
    result = sub_31C0F0(v10, (((*(v11 + 36) & 0x20000000) << 19) | (*(v11 + 36) << 32) | *(v11 + 32)) ^ 0x1000000000000);
    if (result)
    {
      v13 = v9 == v6;
    }

    else
    {
      v13 = 1;
    }

    ++v6;
  }

  while (!v13);
  if (*(a1 + 144) == 1)
  {
LABEL_14:
    v14 = *(v5 + 160);
    if (((v14 - 25) > 0x3F || ((1 << (v14 - 25)) & 0x9000000000000001) == 0) && v14 != 17)
    {
      *(v5 + 816) = result;
    }
  }

  return result;
}

void sub_8784B4(uint64_t a1, void *a2)
{
  if (*(a1 + 73) != 1)
  {
    return;
  }

  v3 = a1;
  v4 = sub_4D1F50(a2, 0);
  v5 = *(v4 + 36);
  v6 = (v5 & 0x40000000) != 0 ? 2 : v5 >> 31;
  v7 = sub_314D1C(v4, v6);
  v8 = a2[138];
  v55 = a2[139];
  if (v8 == v55)
  {
    return;
  }

  v9 = v7;
  v58 = v7;
  do
  {
    v11 = *(v8 + 40);
    v12 = *(v8 + 24);
    if (v11 <= v12)
    {
      v13 = *(v8 + 24);
    }

    else
    {
      v13 = *(v8 + 40);
    }

    if (v11 < v12)
    {
      v56 = v13;
      v57 = v8 + 704;
      do
      {
        if (v11 >= sub_4D1DC0(a2) - 1)
        {
          ++v11;
          continue;
        }

        v14 = sub_4D1F50(a2, v11);
        v15 = *v14;
        v16 = *(v14 + 36);
        v17 = sub_4D1F50(a2, ++v11);
        v19 = *v17;
        v20 = *(v17 + 36);
        if ((v16 & 0x40000000) != 0)
        {
          v21 = 2;
        }

        else
        {
          v21 = v16 >> 31;
        }

        v22 = (v15 - *v15);
        v23 = *v22;
        if (v21 == 2)
        {
          if ((v16 & 0x20000000) != 0)
          {
            if (v23 >= 0x39)
            {
              LODWORD(v22) = v22[28];
              if (!v22)
              {
                goto LABEL_45;
              }

              v27 = 1;
              goto LABEL_43;
            }
          }

          else if (v23 >= 0x39)
          {
            LODWORD(v22) = v22[28];
            if (!v22)
            {
              goto LABEL_45;
            }

            v27 = 2;
LABEL_43:
            LODWORD(v22) = (*(v15 + v22) & v27) != 0;
            goto LABEL_45;
          }

LABEL_44:
          LODWORD(v22) = 0;
          goto LABEL_45;
        }

        if (v21 == 1)
        {
          v24 = v23 >= 0x39;
          if ((v16 & 0x20000000) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v24 = v23 >= 0x39;
          if ((v16 & 0x20000000) != 0)
          {
LABEL_24:
            if (!v24)
            {
              goto LABEL_44;
            }

            v22 = v22[28];
            if (!v22)
            {
              goto LABEL_45;
            }

            v25 = *(v22 + v15);
            v26 = (v25 & 3) == 0;
            LODWORD(v22) = (v25 >> 2) & 1;
            goto LABEL_37;
          }
        }

        if (!v24)
        {
          goto LABEL_44;
        }

        v22 = v22[28];
        if (!v22)
        {
          goto LABEL_45;
        }

        v28 = *(v22 + v15);
        v26 = (v28 & 3) == 0;
        LODWORD(v22) = (v28 >> 5) & 1;
LABEL_37:
        if (!v26)
        {
          LODWORD(v22) = 0;
        }

LABEL_45:
        if ((v20 & 0x40000000) != 0)
        {
          v29 = 2;
        }

        else
        {
          v29 = v20 >> 31;
        }

        v30 = (v19 - *v19);
        v31 = *v30;
        if (v29 == 2)
        {
          if ((v20 & 0x20000000) != 0)
          {
            if (v31 >= 0x39)
            {
              v34 = v30[28];
              if (v30[28])
              {
                v35 = 1;
LABEL_69:
                if (v22 != ((*(v19 + v34) & v35) != 0))
                {
                  goto LABEL_75;
                }

                continue;
              }
            }
          }

          else if (v31 >= 0x39)
          {
            v34 = v30[28];
            if (v30[28])
            {
              v35 = 2;
              goto LABEL_69;
            }
          }

          goto LABEL_74;
        }

        if (v29 == 1)
        {
          v32 = v31 >= 0x39;
          if ((v20 & 0x20000000) != 0)
          {
            goto LABEL_60;
          }

          if (v31 < 0x39)
          {
            goto LABEL_74;
          }

          if (!v30[28])
          {
            goto LABEL_74;
          }

          v33 = *(v19 + v30[28]);
          if ((v33 & 3) != 0)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v32 = v31 >= 0x39;
          if ((v20 & 0x20000000) == 0)
          {
LABEL_60:
            if (v32)
            {
              if (v30[28])
              {
                v36 = *(v19 + v30[28]);
                if ((v36 & 3) == 0)
                {
                  if (v22 != ((v36 & 0x20) != 0))
                  {
                    goto LABEL_75;
                  }

                  continue;
                }
              }
            }

LABEL_74:
            if (v22)
            {
              goto LABEL_75;
            }

            continue;
          }

          if (v31 < 0x39)
          {
            goto LABEL_74;
          }

          if (!v30[28])
          {
            goto LABEL_74;
          }

          v33 = *(v19 + v30[28]);
          if ((v33 & 3) != 0)
          {
            goto LABEL_74;
          }
        }

        if (v22 != ((v33 & 4) != 0))
        {
LABEL_75:
          if (sub_4D23F8(a2, v11, v18) >= *(v3 + 80))
          {
            v37 = 56;
            if ((v58 & 1) == 0)
            {
              v37 = 8;
            }

            if (v9)
            {
              v37 = 32;
            }

            v38 = v57 + v37;
            v40 = *(v57 + v37 + 8);
            v39 = *(v57 + v37 + 16);
            if (v40 >= v39)
            {
              v42 = v8;
              v43 = v9;
              v44 = v3;
              v45 = *v38;
              v46 = v40 - *v38;
              v47 = v46 >> 3;
              v48 = (v46 >> 3) + 1;
              if (v48 >> 61)
              {
                sub_1794();
              }

              v49 = v39 - v45;
              if (v49 >> 2 > v48)
              {
                v48 = v49 >> 2;
              }

              if (v49 >= 0x7FFFFFFFFFFFFFF8)
              {
                v50 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v50 = v48;
              }

              if (v50)
              {
                if (!(v50 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              *(8 * v47) = v11;
              v41 = 8 * v47 + 8;
              memcpy(0, v45, v46);
              *v38 = 0;
              *(v38 + 8) = v41;
              *(v38 + 16) = 0;
              if (v45)
              {
                operator delete(v45);
              }

              v3 = v44;
              v9 = v43;
              v8 = v42;
            }

            else
            {
              *v40 = v11;
              v41 = (v40 + 1);
            }

            v58 |= (v9 | v58) ^ 1;
            *(v38 + 8) = v41;
            v9 ^= 1u;
            v13 = v56;
          }
        }
      }

      while (v11 != v13);
    }

    if (*(v8 + 712) != *(v8 + 720) || *(v8 + 760) != *(v8 + 768))
    {
      *(v8 + 672) = -1;
      *&v10 = -1;
      *(&v10 + 1) = -1;
      *(v8 + 640) = v10;
      *(v8 + 656) = v10;
      *(v8 + 624) = v10;
      *(v8 + 680) = 0;
      *(v8 + 688) = -1;
      *(v8 + 696) = 0;
    }

    v8 += 2616;
  }

  while (v8 != v55);
  v51 = a2[139] - a2[138];
  if (v51)
  {
    v52 = 0;
    v53 = 0x3795876FF3795877 * (v51 >> 3);
    do
    {
      while (1)
      {
        v54 = sub_578320(a2 + 138, v52);
        if (*(v3 + 160) == 1)
        {
          break;
        }

        *(v54 + 704) = *(v54 + 736) != *(v54 + 744);
        *(v54 + 705) = *(v54 + 760) != *(v54 + 768);
        if (v53 == ++v52)
        {
          return;
        }
      }

      sub_86FF2C(v3, a2, v52++);
    }

    while (v53 != v52);
  }
}

void sub_8789A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v51 = *(sub_3CF22C(a2) + 256);
  v52 = v51;
  v50 = v51;
  v10 = 0;
  if (sub_4D20C0(a2, 0))
  {
    v10 = a5 > *(a1 + 48);
  }

  if ((sub_69B004(a3) & 1) != 0 || (*(a1 + 40) | 2) == 0xB)
  {
    v11 = 85;
    if (v10)
    {
      if (a4)
      {
        v11 = 85;
      }

      else
      {
        v11 = 88;
      }
    }
  }

  else if (v10)
  {
    v11 = 25;
  }

  else
  {
    v11 = 17;
  }

  v26 = 0;
  v25 = 0;
  v27 = 0;
  v29 = -1;
  __p = 0;
  v32 = 0;
  v31 = 0;
  v33 = 0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v34 = v12;
  v35 = v12;
  v36 = v12;
  v37 = -1;
  v38 = 0;
  v39 = -1;
  v40 = 0;
  v41 = 0;
  v42 = vnegq_f64(v12);
  v43 = 0;
  v44 = 98;
  v46 = 0;
  v45 = 0;
  v47 = xmmword_229B660;
  v48 = 0;
  v49[0] = 0;
  *(v49 + 6) = 0;
  v28 = v11;
  v16 = 0;
  sub_87B1E4(v17, &v25, &v16, &v52, &v51, &v50);
  v18 = 0;
  v19 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  if (*(a3 + 1096) == a4)
  {
    v13 = 5;
  }

  else
  {
    v13 = a4;
  }

  v24 = v13;
  v14 = *(a3 + 1112);
  if (v14 >= *(a3 + 1120))
  {
    v15 = sub_87B564((a3 + 1104), v17);
  }

  else
  {
    sub_5EF290(*(a3 + 1112), v17);
    v15 = v14 + 2616;
    *(a3 + 1112) = v14 + 2616;
  }

  *(a3 + 1112) = v15;
  sub_5C25A8(v17);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_878B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_5C25A8(va);
  sub_5ECFBC(&STACK[0xA48]);
  _Unwind_Resume(a1);
}

void *sub_878BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v44 = v11;
  v13 = v12;
  v14 = v8;
  v15 = *(*(v9 + 1112) - 2592);
  v16 = sub_4D1DC0(v12);
  v45 = v15;
  v46 = v16;
  v18 = v16 - 1;
  if (v15 <= v16 - 1)
  {
    v19 = v16 - 1;
  }

  else
  {
    v19 = v15;
  }

  if (v15 >= v16 - 1)
  {
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    do
    {
      v20 += sub_4D23F8(v13, v15, v17);
      v86 = v20;
      v24 = sub_3CF22C(v13);
      v21 += *sub_762504((v24 + 16), v15);
      v25 = sub_3CF22C(v13);
      v22 += *sub_762504((v25 + 40), v15);
      v26 = sub_3CF22C(v13);
      v23 += *sub_762504((v26 + 64), v15++);
    }

    while (v19 != v15);
  }

  v27 = v20 + sub_4D23F8(v13, v18, v17);
  v86 = v27;
  v28 = *(sub_3CF22C(v13) + 260);
  v85 = *(*(sub_3CF22C(v13) + 16) + 4 * v18) + v28 + v21;
  v84 = *(*(sub_3CF22C(v13) + 40) + 4 * v18) + v28 + v22;
  v83 = *(*(sub_3CF22C(v13) + 64) + 4 * v18) + v28 + v23;
  v29 = sub_4D1F50(v13, v18);
  sub_4D1F50(v13, v18);
  v30 = (*v29 - **v29);
  if (*v30 >= 0x9Bu && (v31 = v30[77]) != 0)
  {
    if ((*(*v29 + v31) & 8) != 0)
    {
      v32 = 4;
    }

    else
    {
      v32 = 5;
    }
  }

  else
  {
    v32 = 5;
  }

  sub_6F3F18(v82, *v14, 1, *(v14 + 74), v14 + 8);
  v33 = sub_6F5854(v82, v10);
  if ((v33 - 33) <= 0x33 && ((1 << (v33 - 33)) & 0xC000000000003) != 0 && sub_879050(v14, v10, v27, v44))
  {
    if (sub_69B0E0(v10))
    {
      v33 = 82;
    }

    else
    {
      v33 = 18;
    }
  }

  v58 = 0;
  v57 = 0;
  v59 = 0;
  v61 = -1;
  __p = 0;
  v64 = 0;
  v63 = 0;
  v65 = 0;
  v34.f64[0] = NAN;
  v34.f64[1] = NAN;
  v66 = v34;
  v67 = v34;
  v68 = v34;
  v69 = -1;
  v70 = 0;
  v71 = -1;
  v72 = 0;
  v73 = 0;
  v74 = vnegq_f64(v34);
  v75 = 0;
  v76 = 98;
  v78 = 0;
  v77 = 0;
  v79 = xmmword_229B660;
  v80 = 0;
  v81[0] = 0;
  *(v81 + 6) = 0;
  v60 = v33;
  sub_87B1E4(v47, &v57, &v86, &v85, &v84, &v83);
  v48 = v18;
  v49 = v46;
  v52 = v46;
  v36 = sub_4D25C0(v10, v46, v35);
  v54 = v53 + v36;
  v51 = v53 + v36;
  v50 = v45;
  v55 = v32;
  v37 = sub_4D1F60(v13);
  v38 = (*v37 - **v37);
  if (*v38 < 0x9Bu || (v39 = v38[77]) == 0)
  {
    LOWORD(v40) = 1;
    if (*(v10 + 1097) == 1)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v40 = (*(*v37 + v39 + 1) & 0x80) == 0;
  if (*(v10 + 1097) != v40)
  {
LABEL_26:
    v56 = v40 | 0x100;
  }

LABEL_27:
  v41 = *(v10 + 1112);
  if (v41 >= *(v10 + 1120))
  {
    v42 = sub_87B564((v10 + 1104), v47);
  }

  else
  {
    sub_5EF290(*(v10 + 1112), v47);
    v42 = v41 + 2616;
    *(v10 + 1112) = v41 + 2616;
  }

  *(v10 + 1112) = v42;
  sub_5C25A8(v47);
  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  return sub_6D2D60(v82);
}

void sub_878FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *(v7 + 1112) = v8;
  sub_5C25A8(va);
  sub_5ECFBC(&STACK[0xA50]);
  sub_6D2D60(&STACK[0xB48]);
  _Unwind_Resume(a1);
}

BOOL sub_879050(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 1;
  }

  if (*(a1 + 64) <= a3)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v8 = sub_4D1F60(a2);
  if (sub_31C0F0(v6, (((*(v8 + 36) & 0x20000000) << 19) | (*(v8 + 36) << 32) | *(v8 + 32)) ^ 0x1000000000000))
  {
    return 1;
  }

  v9 = *(a1 + 32);
  v10 = sub_4D1F60(a2);
  v11 = sub_2B51D8(v9, *(v10 + 32) | ((*(v10 + 36) & 0x1FFFFFFF) << 32));
  v12 = (v11 - *v11);
  return *v12 >= 0x2Fu && (v13 = v12[23]) != 0 && *(v11 + v13) == 18;
}

uint64_t sub_879148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  sub_69CA74(v51);
  v15 = *v12;
  v14 = v12[1];
  v47 = v12;
  if (*v12 <= v14 + 1)
  {
    v16 = v14 + 1;
  }

  else
  {
    v16 = *v12;
  }

  if (v15 < v14 + 1)
  {
    v17 = 40 * v15;
    v18 = v15;
    do
    {
      while (1)
      {
        v19 = sub_4D1F50(v10, v18);
        sub_87C50C(v51, v19, *(v13 + 32));
        v20 = *(v10 + 10128);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v10 + 10136) - v20) >> 3) > v18)
        {
          v21 = v56;
          if (v56 >= v57)
          {
            v22 = sub_87B970(&v55, v20 + v17);
          }

          else
          {
            sub_F548B4(v56, v20 + v17);
            v22 = (v21 + 40);
          }

          v56 = v22;
        }

        if (v51 != v10)
        {
          v58[8] = *(v10 + 12576);
          sub_601264(v58, *(v10 + 12560), 0);
          v59[8] = *(v10 + 12616);
          sub_601910(v59, *(v10 + 12600), 0);
        }

        v23 = sub_41440((v10 + 12624), v18);
        v25 = v24;
        v26 = *v23;
        v27 = v61;
        if (v61 == v62 << 6)
        {
          if ((v61 + 1) < 0)
          {
            sub_1794();
          }

          v28 = v62 << 7;
          if (v62 << 7 <= (v61 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v28 = (v61 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          if (v61 <= 0x3FFFFFFFFFFFFFFELL)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0x7FFFFFFFFFFFFFFFLL;
          }

          sub_3D41C(&v60, v29);
          v27 = v61;
        }

        v61 = v27 + 1;
        v30 = v27 >> 6;
        v31 = 1 << v27;
        if ((v26 & v25) != 0)
        {
          break;
        }

        *(v60 + 8 * v30) &= ~v31;
        ++v18;
        v17 += 40;
        if (v16 == v18)
        {
          goto LABEL_24;
        }
      }

      *(v60 + 8 * v30) |= v31;
      ++v18;
      v17 += 40;
    }

    while (v16 != v18);
  }

LABEL_24:
  v32 = *(v47 + 3) * 1000000000.0;
  if (v32 >= 0.0)
  {
    if (v32 >= 4.50359963e15)
    {
      goto LABEL_30;
    }

    v33 = (v32 + v32) + 1;
  }

  else
  {
    if (v32 <= -4.50359963e15)
    {
      goto LABEL_30;
    }

    v33 = (v32 + v32) - 1 + (((v32 + v32) - 1) >> 63);
  }

  v32 = (v33 >> 1);
LABEL_30:
  *(sub_3AF234(v51) + 16) = v32;
  v34 = *(v47 + 4) * 1000000000.0;
  if (v34 >= 0.0)
  {
    if (v34 >= 4.50359963e15)
    {
      goto LABEL_36;
    }

    v35 = (v34 + v34) + 1;
  }

  else
  {
    if (v34 <= -4.50359963e15)
    {
      goto LABEL_36;
    }

    v35 = (v34 + v34) - 1 + (((v34 + v34) - 1) >> 63);
  }

  v34 = (v35 >> 1);
LABEL_36:
  *(sub_73F1C(v51) + 16) = v34;
  sub_4D1E70(v10, v48);
  sub_4D1E7C(v51, v48);
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  v54 = *(v10 + 10120);
  sub_6E4EC0(v48, *v13, 1, *(v13 + 74), v13 + 8);
  sub_6E4EC4(v48, v51, 2);
  sub_87B854((v10 + 10096), 0xEF7BDEF7BDEF7BDFLL * ((*(v10 + 10104) - *(v10 + 10096)) >> 3) - 0x1084210842108421 * ((v53 - v52) >> 3));
  v36 = v52;
  v37 = v53;
  if (v52 != v53)
  {
    v38 = v52;
    while (1)
    {
      v38[4] += v15;
      v39 = v38[9];
      if (v39 != -1)
      {
        break;
      }

      v40 = v38[10];
      if (v40 != -1)
      {
        goto LABEL_47;
      }

      if (v38[11] != -1 || v38[12] != -1 || v38[13] != -1 || v38[14] != -1 || v38[15] != -1)
      {
        goto LABEL_48;
      }

LABEL_42:
      v38 += 31;
      if (v38 == v37)
      {
        goto LABEL_64;
      }
    }

    v38[9] = v39 + v15;
    v40 = v38[10];
    if (v40 != -1)
    {
LABEL_47:
      v38[10] = v40 + v15;
    }

LABEL_48:
    v41 = v38[11];
    if (v41 != -1)
    {
      v38[11] = v41 + v15;
    }

    v42 = v38[12];
    if (v42 != -1)
    {
      v38[12] = v42 + v15;
    }

    v43 = v38[13];
    if (v43 != -1)
    {
      v38[13] = v43 + v15;
    }

    v44 = v38[14];
    if (v44 != -1)
    {
      v38[14] = v44 + v15;
    }

    v45 = v38[15];
    if (v45 != -1)
    {
      v38[15] = v45 + v15;
    }

    goto LABEL_42;
  }

LABEL_64:
  sub_87BB30((v10 + 10096), *(v10 + 10104), v36, v37, 0xEF7BDEF7BDEF7BDFLL * ((v37 - v36) >> 3));
  sub_6D2D60(v48);
  return sub_5C186C(v51);
}

void sub_879674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_6D2D60(va);
  sub_5C186C(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

void sub_879718(_Unwind_Exception *a1)
{
  STACK[0x4530] = v1;
  sub_5C186C(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

uint64_t sub_87977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  sub_69E8D4(v51);
  v15 = *v12;
  v14 = v12[1];
  v47 = v12;
  if (*v12 <= v14 + 1)
  {
    v16 = v14 + 1;
  }

  else
  {
    v16 = *v12;
  }

  if (v15 < v14 + 1)
  {
    v17 = 40 * v15;
    v18 = v15;
    do
    {
      while (1)
      {
        v19 = sub_4D1F50(v10, v18);
        sub_87C600(v51, v19, *(v13 + 32));
        v20 = *(v10 + 10128);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v10 + 10136) - v20) >> 3) > v18)
        {
          v21 = v56;
          if (v56 >= v57)
          {
            v22 = sub_87B970(&v55, v20 + v17);
          }

          else
          {
            sub_F548B4(v56, v20 + v17);
            v22 = (v21 + 40);
          }

          v56 = v22;
        }

        if (v51 != v10)
        {
          v58[8] = *(v10 + 12576);
          sub_601264(v58, *(v10 + 12560), 0);
          v59[8] = *(v10 + 12616);
          sub_601910(v59, *(v10 + 12600), 0);
        }

        v23 = sub_41440((v10 + 12624), v18);
        v25 = v24;
        v26 = *v23;
        v27 = v61;
        if (v61 == v62 << 6)
        {
          if ((v61 + 1) < 0)
          {
            sub_1794();
          }

          v28 = v62 << 7;
          if (v62 << 7 <= (v61 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v28 = (v61 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          if (v61 <= 0x3FFFFFFFFFFFFFFELL)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0x7FFFFFFFFFFFFFFFLL;
          }

          sub_3D41C(&v60, v29);
          v27 = v61;
        }

        v61 = v27 + 1;
        v30 = v27 >> 6;
        v31 = 1 << v27;
        if ((v26 & v25) != 0)
        {
          break;
        }

        *(v60 + 8 * v30) &= ~v31;
        ++v18;
        v17 += 40;
        if (v16 == v18)
        {
          goto LABEL_24;
        }
      }

      *(v60 + 8 * v30) |= v31;
      ++v18;
      v17 += 40;
    }

    while (v16 != v18);
  }

LABEL_24:
  v32 = *(v47 + 3) * 1000000000.0;
  if (v32 >= 0.0)
  {
    if (v32 >= 4.50359963e15)
    {
      goto LABEL_30;
    }

    v33 = (v32 + v32) + 1;
  }

  else
  {
    if (v32 <= -4.50359963e15)
    {
      goto LABEL_30;
    }

    v33 = (v32 + v32) - 1 + (((v32 + v32) - 1) >> 63);
  }

  v32 = (v33 >> 1);
LABEL_30:
  *(sub_3AF234(v51) + 16) = v32;
  v34 = *(v47 + 4) * 1000000000.0;
  if (v34 >= 0.0)
  {
    if (v34 >= 4.50359963e15)
    {
      goto LABEL_36;
    }

    v35 = (v34 + v34) + 1;
  }

  else
  {
    if (v34 <= -4.50359963e15)
    {
      goto LABEL_36;
    }

    v35 = (v34 + v34) - 1 + (((v34 + v34) - 1) >> 63);
  }

  v34 = (v35 >> 1);
LABEL_36:
  *(sub_73F1C(v51) + 16) = v34;
  sub_4D1E70(v10, v48);
  sub_4D1E7C(v51, v48);
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  v54 = *(v10 + 10120);
  sub_6F3F18(v48, *v13, 1, *(v13 + 74), v13 + 8);
  sub_6F3F1C(v48, v51, 2);
  sub_87B854((v10 + 10096), 0xEF7BDEF7BDEF7BDFLL * ((*(v10 + 10104) - *(v10 + 10096)) >> 3) - 0x1084210842108421 * ((v53 - v52) >> 3));
  v36 = v52;
  v37 = v53;
  if (v52 != v53)
  {
    v38 = v52;
    while (1)
    {
      v38[4] += v15;
      v39 = v38[9];
      if (v39 != -1)
      {
        break;
      }

      v40 = v38[10];
      if (v40 != -1)
      {
        goto LABEL_47;
      }

      if (v38[11] != -1 || v38[12] != -1 || v38[13] != -1 || v38[14] != -1 || v38[15] != -1)
      {
        goto LABEL_48;
      }

LABEL_42:
      v38 += 31;
      if (v38 == v37)
      {
        goto LABEL_64;
      }
    }

    v38[9] = v39 + v15;
    v40 = v38[10];
    if (v40 != -1)
    {
LABEL_47:
      v38[10] = v40 + v15;
    }

LABEL_48:
    v41 = v38[11];
    if (v41 != -1)
    {
      v38[11] = v41 + v15;
    }

    v42 = v38[12];
    if (v42 != -1)
    {
      v38[12] = v42 + v15;
    }

    v43 = v38[13];
    if (v43 != -1)
    {
      v38[13] = v43 + v15;
    }

    v44 = v38[14];
    if (v44 != -1)
    {
      v38[14] = v44 + v15;
    }

    v45 = v38[15];
    if (v45 != -1)
    {
      v38[15] = v45 + v15;
    }

    goto LABEL_42;
  }

LABEL_64:
  sub_87BB30((v10 + 10096), *(v10 + 10104), v36, v37, 0xEF7BDEF7BDEF7BDFLL * ((v37 - v36) >> 3));
  sub_6D2D60(v48);
  return sub_694110(v51);
}

void sub_879CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_6D2D60(va);
  sub_694110(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

void sub_879D4C(_Unwind_Exception *a1)
{
  STACK[0x4530] = v1;
  sub_694110(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

uint64_t sub_879DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  sub_69AC30(v51);
  v15 = *v12;
  v14 = v12[1];
  v47 = v12;
  if (*v12 <= v14 + 1)
  {
    v16 = v14 + 1;
  }

  else
  {
    v16 = *v12;
  }

  if (v15 < v14 + 1)
  {
    v17 = 40 * v15;
    v18 = v15;
    do
    {
      while (1)
      {
        v19 = sub_4D1F50(v10, v18);
        sub_87C50C(v51, v19, *(v13 + 32));
        v20 = *(v10 + 10128);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(v10 + 10136) - v20) >> 3) > v18)
        {
          v21 = v56;
          if (v56 >= v57)
          {
            v22 = sub_87B970(&v55, v20 + v17);
          }

          else
          {
            sub_F548B4(v56, v20 + v17);
            v22 = (v21 + 40);
          }

          v56 = v22;
        }

        if (v51 != v10)
        {
          v58[8] = *(v10 + 12576);
          sub_601264(v58, *(v10 + 12560), 0);
          v59[8] = *(v10 + 12616);
          sub_601910(v59, *(v10 + 12600), 0);
        }

        v23 = sub_41440((v10 + 12624), v18);
        v25 = v24;
        v26 = *v23;
        v27 = v61;
        if (v61 == v62 << 6)
        {
          if ((v61 + 1) < 0)
          {
            sub_1794();
          }

          v28 = v62 << 7;
          if (v62 << 7 <= (v61 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v28 = (v61 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          if (v61 <= 0x3FFFFFFFFFFFFFFELL)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0x7FFFFFFFFFFFFFFFLL;
          }

          sub_3D41C(&v60, v29);
          v27 = v61;
        }

        v61 = v27 + 1;
        v30 = v27 >> 6;
        v31 = 1 << v27;
        if ((v26 & v25) != 0)
        {
          break;
        }

        *(v60 + 8 * v30) &= ~v31;
        ++v18;
        v17 += 40;
        if (v16 == v18)
        {
          goto LABEL_24;
        }
      }

      *(v60 + 8 * v30) |= v31;
      ++v18;
      v17 += 40;
    }

    while (v16 != v18);
  }

LABEL_24:
  v32 = *(v47 + 3) * 1000000000.0;
  if (v32 >= 0.0)
  {
    if (v32 >= 4.50359963e15)
    {
      goto LABEL_30;
    }

    v33 = (v32 + v32) + 1;
  }

  else
  {
    if (v32 <= -4.50359963e15)
    {
      goto LABEL_30;
    }

    v33 = (v32 + v32) - 1 + (((v32 + v32) - 1) >> 63);
  }

  v32 = (v33 >> 1);
LABEL_30:
  *(sub_3AF234(v51) + 16) = v32;
  v34 = *(v47 + 4) * 1000000000.0;
  if (v34 >= 0.0)
  {
    if (v34 >= 4.50359963e15)
    {
      goto LABEL_36;
    }

    v35 = (v34 + v34) + 1;
  }

  else
  {
    if (v34 <= -4.50359963e15)
    {
      goto LABEL_36;
    }

    v35 = (v34 + v34) - 1 + (((v34 + v34) - 1) >> 63);
  }

  v34 = (v35 >> 1);
LABEL_36:
  *(sub_73F1C(v51) + 16) = v34;
  sub_4D1E70(v10, v48);
  sub_4D1E7C(v51, v48);
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  v54 = *(v10 + 10120);
  sub_6D2C70(v48, *v13, 1, *(v13 + 74), v13 + 8);
  sub_6D2D64(v48, v51, 2);
  sub_87B854((v10 + 10096), 0xEF7BDEF7BDEF7BDFLL * ((*(v10 + 10104) - *(v10 + 10096)) >> 3) - 0x1084210842108421 * ((v53 - v52) >> 3));
  v36 = v52;
  v37 = v53;
  if (v52 != v53)
  {
    v38 = v52;
    while (1)
    {
      v38[4] += v15;
      v39 = v38[9];
      if (v39 != -1)
      {
        break;
      }

      v40 = v38[10];
      if (v40 != -1)
      {
        goto LABEL_47;
      }

      if (v38[11] != -1 || v38[12] != -1 || v38[13] != -1 || v38[14] != -1 || v38[15] != -1)
      {
        goto LABEL_48;
      }

LABEL_42:
      v38 += 31;
      if (v38 == v37)
      {
        goto LABEL_64;
      }
    }

    v38[9] = v39 + v15;
    v40 = v38[10];
    if (v40 != -1)
    {
LABEL_47:
      v38[10] = v40 + v15;
    }

LABEL_48:
    v41 = v38[11];
    if (v41 != -1)
    {
      v38[11] = v41 + v15;
    }

    v42 = v38[12];
    if (v42 != -1)
    {
      v38[12] = v42 + v15;
    }

    v43 = v38[13];
    if (v43 != -1)
    {
      v38[13] = v43 + v15;
    }

    v44 = v38[14];
    if (v44 != -1)
    {
      v38[14] = v44 + v15;
    }

    v45 = v38[15];
    if (v45 != -1)
    {
      v38[15] = v45 + v15;
    }

    goto LABEL_42;
  }

LABEL_64:
  sub_87BB30((v10 + 10096), *(v10 + 10104), v36, v37, 0xEF7BDEF7BDEF7BDFLL * ((v37 - v36) >> 3));
  sub_6D2D60(v48);
  return sub_693598(v51);
}

void sub_87A2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_6D2D60(va);
  sub_693598(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

void sub_87A380(_Unwind_Exception *a1)
{
  STACK[0x4530] = v1;
  sub_693598(&STACK[0x1D98]);
  _Unwind_Resume(a1);
}

void sub_87B180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_87B1E4(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _DWORD *a5, unsigned int *a6)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *&v12 = -1;
  *(&v12 + 1) = -1;
  *(a1 + 16) = v12;
  *(a1 + 32) = v12;
  *(a1 + 48) = 0;
  *(a1 + 56) = v12;
  *(a1 + 72) = v12;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = -1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_5EF9A8(a1 + 136, a2);
  *(a1 + 384) = 5;
  *(a1 + 386) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0;
  sub_734CE0(a1 + 464);
  *(a1 + 616) = 0;
  *&v13 = -1;
  *(&v13 + 1) = -1;
  *(a1 + 624) = v13;
  *(a1 + 640) = v13;
  *(a1 + 656) = v13;
  *(a1 + 672) = -1;
  *(a1 + 680) = 0;
  *(a1 + 688) = -1;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 769) = 0u;
  *(a1 + 824) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 804) = 0;
  *(a1 + 809) = 0;
  *(a1 + 788) = 0u;
  sub_734CE0(a1 + 848);
  *(a1 + 1000) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1008) = *a3;
  *(a1 + 1016) = *a4;
  *(a1 + 1020) = *a5;
  *(a1 + 1024) = *a6;
  sub_608080(a1 + 1032);
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 1936) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 2041) = 0u;
  *(a1 + 2057) = 3;
  *(a1 + 2064) = 0;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 1;
  *(a1 + 2092) = 0;
  *(a1 + 2104) = -1;
  *(a1 + 2096) = -1;
  *(a1 + 2112) = -1;
  *(a1 + 2116) = 0x7FFFFFFF;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0;
  *(a1 + 2176) = 0xBFF0000000000000;
  *(a1 + 2184) = 0;
  *(a1 + 2192) = 0u;
  *(a1 + 2208) = 0x7FFFFFFF;
  *(a1 + 2212) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 2224) = 0;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2232) = off_266BB28;
  *(a1 + 2272) = 0;
  *(a1 + 2276) = 1;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0;
  *(a1 + 2280) = off_266BB60;
  *(a1 + 2312) = 0;
  *(a1 + 2314) = 0;
  *(a1 + 2328) = 0u;
  *(a1 + 2344) = 0;
  *(a1 + 2320) = off_266B8A8;
  *(a1 + 2352) = 0;
  *(a1 + 2408) = 0;
  *(a1 + 2392) = 0u;
  *(a1 + 2376) = 0;
  *(a1 + 2384) = 0;
  *(a1 + 2360) = 0u;
  *(a1 + 2416) = 1;
  *(a1 + 2418) = 0;
  *(a1 + 2419) = *(a2 + 152);
  *(a1 + 2428) = 0;
  *(a1 + 2436) = 0;
  *(a1 + 2420) = 0;
  *(a1 + 2444) = 0;
  *(a1 + 2448) = 0x7FFFFFFF;
  *(a1 + 2464) = 0;
  *(a1 + 2456) = 0x7FFFFFFF;
  *(a1 + 2460) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 2472) = 0;
  *(a1 + 2480) = 0x8000000080000000;
  *(a1 + 2536) = 0;
  *(a1 + 2488) = 0u;
  *(a1 + 2504) = 0u;
  *(a1 + 2520) = 0u;
  *(a1 + 2540) = 0x7FFFFFFF;
  *(a1 + 2544) = 0x8000000080000000;
  *(a1 + 2560) = 0;
  *(a1 + 2568) = 0;
  *(a1 + 2576) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2592) = -1;
  *(a1 + 2584) = -1;
  *(a1 + 2600) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2608) = 0;
  return a1;
}

void sub_87B4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_3E5388(v10 + 848);
  a10 = (v10 + 824);
  sub_51415C(&a10);
  sub_528FAC((v10 + 792));
  sub_5ED8EC((v10 + 704));
  sub_3E5388(v10 + 464);
  a10 = (v10 + 440);
  sub_7C05E4(&a10);
  a10 = (v10 + 416);
  sub_7C05E4(&a10);
  sub_7C05E4(&a10);
  sub_5ECFBC(v10 + 136);
  _Unwind_Resume(a1);
}

uint64_t sub_87B564(void **a1, uint64_t a2)
{
  v2 = 0x3795876FF3795877 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x190D4F120190D4)
  {
    sub_1794();
  }

  if (0x6F2B0EDFE6F2B0EELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x6F2B0EDFE6F2B0EELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x3795876FF3795877 * ((a1[2] - *a1) >> 3)) >= 0xC86A78900C86ALL)
  {
    v5 = 0x190D4F120190D4;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x190D4F120190D4)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_5EF290(v15, a2);
  v6 = 2616 * v2 + 2616;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = &v9[v15];
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = &v9[v15];
    do
    {
      v13 = sub_6083DC(v12, v11);
      v11 += 2616;
      v12 = v13 + 2616;
    }

    while (v11 != v8);
    do
    {
      sub_5C25A8(v7);
      v7 += 2616;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_87B6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_608388(va);
  _Unwind_Resume(a1);
}