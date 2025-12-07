void sub_D50364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B63A0)
  {
    qword_27B63A8 = qword_27B63A0;
    operator delete(qword_27B63A0);
  }

  _Unwind_Resume(exception_object);
}

void *sub_D50410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v29);
  sub_143ACEC(&v26, 0, 0);
  v28 = 0.0;
  v4 = sub_501CE8(&v25, *(a1 + 8));
  sub_F24E68(v4, a1, &v14);
  v5 = v27;
  if ((v27 & 2) != 0)
  {
    v5 = 0;
  }

  else if (v27)
  {
    v5 = *(v27 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v6 = v15;
  if ((v15 & 2) != 0)
  {
    v6 = 0;
  }

  else if (v15)
  {
    v6 = *(v15 & 0xFFFFFFFFFFFFFFFCLL);
  }

  if (v5 == v6)
  {
    sub_143BF08(&v26, &v14);
  }

  else
  {
    sub_143BE54(&v26, &v14);
  }

  sub_143B10C(&v14);
  v28 = sub_7EA60(v29);
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v14);
    sub_4A5C(&v14, "TransitRouteUpdateResponseBuilderModule took ", 45);
    v7 = std::ostream::operator<<();
    sub_4A5C(v7, " ms", 3);
    if ((v24 & 0x10) != 0)
    {
      v9 = v23;
      if (v23 < v20)
      {
        v23 = v20;
        v9 = v20;
      }

      v10 = v19;
      v8 = v9 - v19;
      if (v9 - v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if ((v24 & 8) == 0)
      {
        v8 = 0;
        v13 = 0;
LABEL_24:
        *(&__p + v8) = 0;
        sub_7E854(&__p, 2u);
        if (v13 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }

        std::locale::~locale(&v16);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_29;
      }

      v10 = v17;
      v8 = v18 - v17;
      if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_31:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v13 = v8;
    if (v8)
    {
      memmove(&__p, v10, v8);
    }

    goto LABEL_24;
  }

LABEL_29:
  sub_D507BC(a2, &v26);
  return sub_143B10C(&v26);
}

void sub_D50730(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  sub_143B10C((v21 - 200));
  _Unwind_Resume(a1);
}

uint64_t sub_D507BC(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  v4 = sub_143ACEC(a1 + 8, 0, 0);
  if (v4 != a2)
  {
    v5 = *(a1 + 16);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = *(a2 + 8);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v5 == v6)
    {
      sub_143BF08(v4, a2);
    }

    else
    {
      sub_143BE54(v4, a2);
    }
  }

  *(a1 + 128) = *(a2 + 120);
  return a1;
}

void sub_D50BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18)
{
  sub_D50CCC(&STACK[0x1310]);
  sub_D50C50(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1A104((v18 - 96));
  _Unwind_Resume(a1);
}

void sub_D50C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1A104(&STACK[0x1310]);
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xD50C20);
}

void *sub_D50C50(void *a1)
{
  v2 = a1[601];
  if (v2)
  {
    v3 = a1[602];
    v4 = a1[601];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[601];
    }

    a1[602] = v2;
    operator delete(v4);
  }

  sub_506524(a1 + 5);
  return a1;
}

uint64_t sub_D50CCC(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = *(result + 16);
      v3 = *(result + 8);
      if (v2 != v1)
      {
        v4 = result;
        do
        {
          v2 -= 19;
          sub_A4A778(v2);
        }

        while (v2 != v1);
        result = v4;
        v3 = *(v4 + 8);
      }

      *(result + 16) = v1;
      v5 = result;
      operator delete(v3);
      return v5;
    }
  }

  return result;
}

void sub_D50D4C(int a1@<W0>, _OWORD *a2@<X8>)
{
  *(a2 + 92) = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  sub_5F328((a2 + 7));
  *a2 = a1;
}

void sub_D50D90(_Unwind_Exception *a1)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    *(v1 + 88) = v3;
    operator delete(v3);
  }

  sub_93A460((v1 + 56));
  sub_93A3E8((v1 + 32));
  sub_93A4BC((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_D50DC4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v13);
  v4 = a1[1];
  v5 = a1[2];
  if (v4 != v5)
  {
    v6 = a1[1];
    while (*v6 != 1)
    {
      v6 += 60;
      if (v6 == v5)
      {
        goto LABEL_5;
      }
    }

    do
    {
      if (*v4 == 2)
      {
        sub_11BD9F4(v12, *a1);
      }

      v4 += 60;
    }

    while (v4 != v5);
  }

LABEL_5:
  v8.n128_u64[0] = 1;
  v8.n128_u64[1] = &off_2669FE0;
  sub_434934(v9, &v8);
  *a2 = 0;
  v7 = v9[1];
  *(a2 + 8) = v9[0];
  *(a2 + 24) = v7;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
}

void sub_D5190C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a61);
  if (v61)
  {
    operator delete(v61);
  }

  sub_A396C4(&STACK[0x2B0]);
  sub_11ABCB4(&STACK[0x320]);
  _Unwind_Resume(a1);
}

uint64_t sub_D519FC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 272);
    if (v2)
    {
      *(a1 + 280) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 248);
    if (v3)
    {
      *(a1 + 256) = v3;
      operator delete(v3);
    }

    sub_49AEC0((a1 + 8));
  }

  return a1;
}

void sub_D51A54(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_115A374(v12, a1, (a2 + 8));
  sub_115A3EC(v12, a3);
  v4 = __p;
  if (__p)
  {
    v5 = v16;
    v6 = __p;
    if (v16 != __p)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p;
    }

    v16 = v4;
    operator delete(v6);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }
}

uint64_t *sub_D51B40@<X0>(uint64_t *result@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = result[1];
  v4 = v3 - *result;
  if (v3 != *result)
  {
    v5 = result;
    v6 = sub_D52C40(a2, (*result + 8));
    a2[1] = v6;
    result = sub_4C515C(v6 - 128, 0);
    if (v4 != 240)
    {
      v7 = 0xEEEEEEEEEEEEEEEFLL * (v4 >> 4) - 1;
      v8 = 248;
      do
      {
        v9 = *v5;
        v10 = a2[1];
        if (v10 >= a2[2])
        {
          v11 = sub_D52C40(a2, (v9 + v8));
        }

        else
        {
          sub_D52DF8(a2[1], (v9 + v8));
          v11 = v10 + 128;
        }

        a2[1] = v11;
        result = sub_4C515C(v11 - 128, 2);
        v8 += 240;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

void sub_D51C24(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_60A84C(v1);
  _Unwind_Resume(a1);
}

void sub_D51C50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  v64 = 0;
  v65 = 0;
  v63 = 0;
  if (v7 != v6)
  {
    if (((v7 - v6) >> 7) < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }

  sub_D51A54(a1, a2, &v63);
  v9 = v63;
  v10 = v64;
  v11 = v63;
  if (v63 != v64)
  {
    LODWORD(v8) = *a2;
    v12 = v8;
    v13 = v63 + 240;
    while (1)
    {
      *&v14 = *(v13 - 2);
      if (*&v14 > v12)
      {
        break;
      }

      v15 = v13 == v64;
      v13 += 240;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    v11 = v13 - 240;
    if (v13 - 240 != v64)
    {
      while (v13 != v10)
      {
        LODWORD(v14) = *a2;
        *&v14 = v14;
        if (*(v13 + 28) <= *&v14)
        {
          v16 = *v13;
          v17 = *(v13 + 2);
          *(v11 + 1) = *(v13 + 1);
          *(v11 + 2) = v17;
          *v11 = v16;
          v18 = *(v13 + 3);
          v19 = *(v13 + 4);
          v20 = *(v13 + 6);
          *(v11 + 5) = *(v13 + 5);
          *(v11 + 6) = v20;
          *(v11 + 3) = v18;
          *(v11 + 4) = v19;
          v21 = *(v13 + 7);
          v22 = *(v13 + 8);
          v23 = *(v13 + 10);
          *(v11 + 9) = *(v13 + 9);
          *(v11 + 10) = v23;
          *(v11 + 7) = v21;
          *(v11 + 8) = v22;
          v24 = *(v13 + 11);
          v14 = *(v13 + 12);
          v25 = *(v13 + 14);
          *(v11 + 13) = *(v13 + 13);
          *(v11 + 14) = v25;
          *(v11 + 11) = v24;
          *(v11 + 12) = v14;
          v11 += 240;
        }

        v13 += 240;
      }
    }
  }

  if (v11 != v10)
  {
    v10 = v11;
    v64 = v11;
  }

LABEL_13:
  *a4 = 1;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  if (v9 != v10)
  {
    if (*(a2 + 64) == 1)
    {
      while (sub_4C4BD8(*(v9 + 1)) <= *(a2 + 72))
      {
        v9 += 240;
        if (v9 == v10)
        {
          v9 = v10;
          goto LABEL_40;
        }
      }

      if (v9 != v10)
      {
        for (i = v9 + 240; i != v10; i += 240)
        {
          if (sub_4C4BD8(*(i + 1)) <= *(a2 + 72))
          {
            v32 = *i;
            v33 = *(i + 2);
            *(v9 + 1) = *(i + 1);
            *(v9 + 2) = v33;
            *v9 = v32;
            v34 = *(i + 3);
            v35 = *(i + 4);
            v36 = *(i + 6);
            *(v9 + 5) = *(i + 5);
            *(v9 + 6) = v36;
            *(v9 + 3) = v34;
            *(v9 + 4) = v35;
            v37 = *(i + 7);
            v38 = *(i + 8);
            v39 = *(i + 10);
            *(v9 + 9) = *(i + 9);
            *(v9 + 10) = v39;
            *(v9 + 7) = v37;
            *(v9 + 8) = v38;
            v40 = *(i + 11);
            v41 = *(i + 12);
            v42 = *(i + 14);
            *(v9 + 13) = *(i + 13);
            *(v9 + 14) = v42;
            *(v9 + 11) = v40;
            *(v9 + 12) = v41;
            v9 += 240;
          }
        }
      }

LABEL_40:
      v10 = v9;
      if (v9 != v64)
      {
        v64 = v9;
      }

      v9 = v63;
    }

    if (v9 != v10)
    {
      sub_D51B40(&v63, &v59);
      v67[0] = 1;
      v68 = v59;
      __p[0] = v60[0];
      v59 = 0uLL;
      v60[0] = 0;
      sub_D52F00(a4, v67);
      if (v67[0] == 1)
      {
        v43 = v68.n128_u64[0];
        if (v68.n128_u64[0])
        {
          v44 = v68.n128_i64[1];
          v45 = v68.n128_u64[0];
          if (v68.n128_u64[1] != v68.n128_u64[0])
          {
            do
            {
              v44 -= 128;
              sub_60B38C(v44);
            }

            while (v44 != v43);
            v45 = v68.n128_u64[0];
          }

          v68.n128_u64[1] = v43;
LABEL_70:
          operator delete(v45);
        }
      }

      else
      {
        v49 = __p[0];
        if (__p[0])
        {
          v50 = __p[1];
          v45 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              if (*(v50 - 1) < 0)
              {
                operator delete(*(v50 - 3));
              }

              v50 -= 4;
            }

            while (v50 != v49);
            v45 = __p[0];
          }

          __p[1] = v49;
          goto LABEL_70;
        }
      }

      v53 = v59.n128_u64[0];
      if (!v59.n128_u64[0])
      {
        goto LABEL_97;
      }

      v54 = v59.n128_i64[1];
      v55 = v59.n128_u64[0];
      if (v59.n128_u64[1] != v59.n128_u64[0])
      {
        do
        {
          v54 -= 128;
          sub_60B38C(v54);
        }

        while (v54 != v53);
        v55 = v59.n128_u64[0];
      }

      v59.n128_u64[1] = v53;
      goto LABEL_96;
    }

    v66.n128_u64[0] = 16;
    v66.n128_u64[1] = &off_2669FE0;
    sub_434934(&v59, &v66);
    v67[0] = 0;
    v68 = v59;
    *__p = *v60;
    v70 = v61;
    v60[0] = 0;
    v60[1] = 0;
    v61 = 0;
    v71 = v62;
    sub_D52F00(a4, v67);
    if (v67[0] == 1)
    {
      v46 = v68.n128_u64[0];
      if (v68.n128_u64[0])
      {
        v47 = v68.n128_i64[1];
        v48 = v68.n128_u64[0];
        if (v68.n128_u64[1] != v68.n128_u64[0])
        {
          do
          {
            v47 -= 128;
            sub_60B38C(v47);
          }

          while (v47 != v46);
          v48 = v68.n128_u64[0];
        }

        v68.n128_u64[1] = v46;
LABEL_87:
        operator delete(v48);
      }
    }

    else
    {
      v51 = __p[0];
      if (__p[0])
      {
        v52 = __p[1];
        v48 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            if (*(v52 - 1) < 0)
            {
              operator delete(*(v52 - 3));
            }

            v52 -= 4;
          }

          while (v52 != v51);
          v48 = __p[0];
        }

        __p[1] = v51;
        goto LABEL_87;
      }
    }

    v56 = v60[0];
    if (!v60[0])
    {
      goto LABEL_97;
    }

    v58 = v60[1];
    v55 = v60[0];
    if (v60[1] == v60[0])
    {
      goto LABEL_95;
    }

    do
    {
      if (*(v58 - 1) < 0)
      {
        operator delete(*(v58 - 3));
      }

      v58 -= 4;
    }

    while (v58 != v56);
    goto LABEL_94;
  }

  v66.n128_u64[0] = 17;
  v66.n128_u64[1] = &off_2669FE0;
  sub_434934(&v59, &v66);
  v67[0] = 0;
  v68 = v59;
  *__p = *v60;
  v70 = v61;
  v60[0] = 0;
  v60[1] = 0;
  v61 = 0;
  v71 = v62;
  sub_D52F00(a4, v67);
  if (v67[0] == 1)
  {
    v26 = v68.n128_u64[0];
    if (v68.n128_u64[0])
    {
      v27 = v68.n128_i64[1];
      v28 = v68.n128_u64[0];
      if (v68.n128_u64[1] != v68.n128_u64[0])
      {
        do
        {
          v27 -= 128;
          sub_60B38C(v27);
        }

        while (v27 != v26);
        v28 = v68.n128_u64[0];
      }

      v68.n128_u64[1] = v26;
LABEL_78:
      operator delete(v28);
    }
  }

  else
  {
    v29 = __p[0];
    if (__p[0])
    {
      v30 = __p[1];
      v28 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          if (*(v30 - 1) < 0)
          {
            operator delete(*(v30 - 3));
          }

          v30 -= 4;
        }

        while (v30 != v29);
        v28 = __p[0];
      }

      __p[1] = v29;
      goto LABEL_78;
    }
  }

  v56 = v60[0];
  if (!v60[0])
  {
    goto LABEL_97;
  }

  v57 = v60[1];
  v55 = v60[0];
  if (v60[1] == v60[0])
  {
    goto LABEL_95;
  }

  do
  {
    if (*(v57 - 1) < 0)
    {
      operator delete(*(v57 - 3));
    }

    v57 -= 4;
  }

  while (v57 != v56);
LABEL_94:
  v55 = v60[0];
LABEL_95:
  v60[1] = v56;
LABEL_96:
  operator delete(v55);
LABEL_97:
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }
}

void sub_D522C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  sub_CDF878(v17);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_D52310(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v103);
  *v101 = 0u;
  memset(v102, 0, 24);
  LOBYTE(v96) = 0;
  v100 = 0;
  v4 = **a1;
  v83 = *(*a1 + 8);
  if (v4 == v83)
  {
    goto LABEL_79;
  }

  v80 = a2;
  v81 = a1;
  do
  {
    sub_D51C50(*(a1 + 8), a1 + 24, v4, v104);
    if (v104[0] == 1)
    {
      v6 = v101[1];
      if (v101[1] >= *&v102[0])
      {
        v7 = sub_D53080(v101, &v104[8]);
      }

      else
      {
        *v101[1] = 0;
        v6[1] = 0;
        v6[2] = 0;
        sub_D531CC(v6, *&v104[8], *&v104[16], (*&v104[16] - *&v104[8]) >> 7);
        v7 = v6 + 3;
      }

      v101[1] = v7;
    }

    else if ((v100 & 1) == 0)
    {
      v87 = *&v104[8];
      sub_435834(v88, &v104[24]);
      v90 = v107;
      v91 = v87;
      *__p = *v88;
      v93 = v89;
      v88[1] = 0;
      v89 = 0;
      v88[0] = 0;
      v94 = v107;
      v95 = 1;
      sub_D533E0(&v96, &v91);
      if (v95 == 1)
      {
        v8 = __p[0];
        if (__p[0])
        {
          v9 = __p[1];
          v10 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              if (*(v9 - 1) < 0)
              {
                operator delete(*(v9 - 3));
              }

              v9 -= 4;
            }

            while (v9 != v8);
            v10 = __p[0];
          }

          __p[1] = v8;
          operator delete(v10);
        }
      }

      v11 = v88[0];
      if (v88[0])
      {
        v12 = v88[1];
        v13 = v88[0];
        if (v88[1] != v88[0])
        {
          do
          {
            if (*(v12 - 1) < 0)
            {
              operator delete(*(v12 - 3));
            }

            v12 -= 4;
          }

          while (v12 != v11);
          v13 = v88[0];
        }

        v88[1] = v11;
        operator delete(v13);
      }
    }

    v85 = v4;
    if (v104[0] == 1)
    {
      v14 = *&v104[8];
      if (*&v104[8])
      {
        v15 = *&v104[16];
        v5 = *&v104[8];
        if (*&v104[16] == *&v104[8])
        {
LABEL_68:
          *&v104[16] = v14;
LABEL_5:
          operator delete(v5);
          goto LABEL_6;
        }

        while (2)
        {
          if (*(v15 - 1) < 0)
          {
            operator delete(*(v15 - 3));
            v17 = *(v15 - 13);
            if (!v17)
            {
              goto LABEL_45;
            }

LABEL_39:
            v18 = *(v15 - 12);
            v19 = v17;
            if (v18 != v17)
            {
              do
              {
                v18 = sub_3EEA68(v18 - 1096);
              }

              while (v18 != v17);
              v19 = *(v15 - 13);
            }

            *(v15 - 12) = v17;
            operator delete(v19);
            v20 = v15 - 16;
            v21 = *(v15 - 16);
            if (v21)
            {
LABEL_46:
              v22 = *(v15 - 15);
              v16 = v21;
              if (v22 != v21)
              {
                do
                {
                  v23 = *(v22 - 3);
                  if (v23)
                  {
                    v24 = *(v22 - 2);
                    v25 = *(v22 - 3);
                    if (v24 != v23)
                    {
                      do
                      {
                        v26 = v24 - 32;
                        v27 = *(v24 - 2);
                        if (v27 != -1)
                        {
                          (off_2673C48[v27])(&v91, v24 - 32);
                        }

                        *(v24 - 2) = -1;
                        v24 -= 32;
                      }

                      while (v26 != v23);
                      v25 = *(v22 - 3);
                    }

                    *(v22 - 2) = v23;
                    operator delete(v25);
                  }

                  v28 = *(v22 - 8);
                  if (v28 != -1)
                  {
                    (off_2673C48[v28])(&v91, v22 - 7);
                  }

                  v29 = v22 - 10;
                  *(v22 - 8) = -1;
                  if (*(v22 - 57) < 0)
                  {
                    operator delete(*v29);
                  }

                  v22 -= 10;
                }

                while (v29 != v21);
                v16 = *v20;
              }

              *(v15 - 15) = v21;
              operator delete(v16);
            }
          }

          else
          {
            v17 = *(v15 - 13);
            if (v17)
            {
              goto LABEL_39;
            }

LABEL_45:
            v20 = v15 - 16;
            v21 = *(v15 - 16);
            if (v21)
            {
              goto LABEL_46;
            }
          }

          v15 = v20;
          if (v20 == v14)
          {
            v5 = *&v104[8];
            goto LABEL_68;
          }

          continue;
        }
      }
    }

    else
    {
      v30 = *&v104[24];
      if (*&v104[24])
      {
        v31 = v105;
        v5 = *&v104[24];
        if (v105 != *&v104[24])
        {
          do
          {
            if (*(v31 - 1) < 0)
            {
              operator delete(*(v31 - 24));
            }

            v31 -= 32;
          }

          while (v31 != v30);
          v5 = *&v104[24];
        }

        v105 = v30;
        goto LABEL_5;
      }
    }

LABEL_6:
    v4 = v85 + 3;
    a1 = v81;
  }

  while (v85 + 3 != v83);
  a2 = v80;
  if (v101[0] == v101[1])
  {
LABEL_79:
    if (v100 == 1)
    {
      *v104 = v96;
      sub_435834(&v104[16], &v97);
      v43 = v99;
      v106 = v99;
    }

    else
    {
      v91.n128_u64[0] = 44;
      v91.n128_u64[1] = &off_2669FE0;
      sub_434934(v104, &v91);
      v43 = v106;
    }

    *a2 = 0;
    v44 = *&v104[16];
    *(a2 + 8) = *v104;
    *(a2 + 24) = v44;
    *(a2 + 40) = v105;
    *(a2 + 48) = v43;
    if (v100 != 1)
    {
      goto LABEL_101;
    }

    goto LABEL_93;
  }

  v32 = sub_4EDB30(*(v81 + 16));
  v33 = v101[0];
  v34 = v101[1];
  if (v101[0] != v101[1])
  {
    v35 = v32;
    v36 = *v101[0];
    v37 = *(v101[0] + 1);
    if (*v101[0] != v37)
    {
      goto LABEL_74;
    }

    while (1)
    {
      v33 += 3;
      if (v33 == v34)
      {
        break;
      }

      v36 = *v33;
      v37 = v33[1];
      if (*v33 != v37)
      {
        do
        {
LABEL_74:
          sub_4C516C(v36, v35++);
          v36 += 128;
        }

        while (v36 != v37);
      }
    }
  }

  *(&v102[0] + 1) = sub_7EA60(v103);
  v38 = v101[0];
  v39 = v101[1];
  if (v101[0] == v101[1])
  {
    v45 = 0.0;
  }

  else
  {
    v40 = v101[1] - v101[0] - 24;
    if (v40 >= 0x60)
    {
      v46 = v40 / 0x18 + 1;
      v47 = v46 & 3;
      if ((v46 & 3) == 0)
      {
        v47 = 4;
      }

      v48 = v46 - v47;
      v42 = (v101[0] + 24 * v48);
      v49 = 0uLL;
      v50 = v101[0];
      v51 = 0uLL;
      do
      {
        v52 = v50;
        v50 += 12;
        v108 = vld3q_f64(v52);
        v52 += 6;
        v49 = vsraq_n_s64(v49, vsubq_s64(v108.val[1], v108.val[0]), 7uLL);
        v109 = vld3q_f64(v52);
        v51 = vsraq_n_s64(v51, vsubq_s64(v109.val[1], v109.val[0]), 7uLL);
        v48 -= 4;
      }

      while (v48);
      v41 = vaddvq_s64(vaddq_s64(v51, v49));
    }

    else
    {
      v41 = 0;
      v42 = v101[0];
    }

    do
    {
      v53 = *v42;
      v54 = v42[1];
      v42 += 3;
      v41 += (v54 - v53) >> 7;
    }

    while (v42 != v101[1]);
    v45 = (v41 / (0xAAAAAAAAAAAAAAABLL * ((v101[1] - v101[0]) >> 3)));
  }

  *&v102[1] = v45;
  *v80 = 1;
  *(v80 + 8) = v38;
  *(v80 + 16) = v39;
  *(v80 + 24) = *&v102[0];
  v101[1] = 0;
  *&v102[0] = 0;
  v101[0] = 0;
  *(v80 + 32) = *(v102 + 8);
  if (v100 == 1)
  {
LABEL_93:
    v55 = v97;
    if (v97)
    {
      v56 = v98;
      v57 = v97;
      if (v98 != v97)
      {
        do
        {
          if (*(v56 - 1) < 0)
          {
            operator delete(*(v56 - 3));
          }

          v56 -= 4;
        }

        while (v56 != v55);
        v57 = v97;
      }

      v98 = v55;
      operator delete(v57);
    }
  }

LABEL_101:
  v58 = v101[0];
  if (!v101[0])
  {
    return;
  }

  v59 = v101[1];
  v60 = v101[0];
  if (v101[1] != v101[0])
  {
    v61 = v101[1];
    v82 = v101[0];
    while (1)
    {
      v64 = *(v61 - 3);
      v61 -= 3;
      v63 = v64;
      if (!v64)
      {
        goto LABEL_106;
      }

      v84 = v59;
      v86 = v61;
      v65 = *(v59 - 2);
      v62 = v63;
      if (v65 != v63)
      {
        break;
      }

LABEL_105:
      *(v84 - 2) = v63;
      operator delete(v62);
      v58 = v82;
      v61 = v86;
LABEL_106:
      v59 = v61;
      if (v61 == v58)
      {
        v60 = v101[0];
        goto LABEL_138;
      }
    }

    while (1)
    {
      if (*(v65 - 1) < 0)
      {
        operator delete(*(v65 - 3));
        v67 = *(v65 - 13);
        if (v67)
        {
LABEL_115:
          v68 = *(v65 - 12);
          v69 = v67;
          if (v68 != v67)
          {
            do
            {
              v68 = sub_3EEA68(v68 - 1096);
            }

            while (v68 != v67);
            v69 = *(v65 - 13);
          }

          *(v65 - 12) = v67;
          operator delete(v69);
          v70 = v65 - 16;
          v71 = *(v65 - 16);
          if (!v71)
          {
            goto LABEL_112;
          }

LABEL_122:
          v72 = *(v65 - 15);
          v66 = v71;
          if (v72 != v71)
          {
            do
            {
              v73 = *(v72 - 3);
              if (v73)
              {
                v74 = *(v72 - 2);
                v75 = *(v72 - 3);
                if (v74 != v73)
                {
                  do
                  {
                    v76 = v74 - 32;
                    v77 = *(v74 - 2);
                    if (v77 != -1)
                    {
                      (off_2673C48[v77])(&v96, v74 - 32);
                    }

                    *(v74 - 2) = -1;
                    v74 -= 32;
                  }

                  while (v76 != v73);
                  v75 = *(v72 - 3);
                }

                *(v72 - 2) = v73;
                operator delete(v75);
              }

              v78 = *(v72 - 8);
              if (v78 != -1)
              {
                (off_2673C48[v78])(&v96, v72 - 7);
              }

              v79 = v72 - 10;
              *(v72 - 8) = -1;
              if (*(v72 - 57) < 0)
              {
                operator delete(*v79);
              }

              v72 -= 10;
            }

            while (v79 != v71);
            v66 = *v70;
          }

          *(v65 - 15) = v71;
          operator delete(v66);
          goto LABEL_112;
        }
      }

      else
      {
        v67 = *(v65 - 13);
        if (v67)
        {
          goto LABEL_115;
        }
      }

      v70 = v65 - 16;
      v71 = *(v65 - 16);
      if (v71)
      {
        goto LABEL_122;
      }

LABEL_112:
      v65 = v70;
      if (v70 == v63)
      {
        v62 = *v86;
        goto LABEL_105;
      }
    }
  }

LABEL_138:
  v101[1] = v58;
  operator delete(v60);
}

void sub_D52AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33)
{
  sub_D53560(&a26);
  sub_CDFC14(&a33);
  _Unwind_Resume(a1);
}

void sub_D52B64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_D52B6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_D52B74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0xD52B78);
  }

  _Unwind_Resume(a1);
}

void sub_D52B7C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0xD52B80);
  }

  sub_4A48(a1);
}

void *sub_D52B84(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v6 = a1[2];
  if (v6)
  {
    v7 = a1[3];
    v8 = a1[2];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a1[2];
    }

    a1[3] = v6;
    operator delete(v8);
  }

  return a1;
}

void *sub_D52C40(void **a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 6 > v3)
  {
    v3 = v5 >> 6;
  }

  if (v5 >= 0x7FFFFFFFFFFFFF80)
  {
    v6 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v18 = v2 << 7;
  sub_D52DF8(v2 << 7, a2);
  v7 = ((v2 << 7) + 128);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v18 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = (v18 + *a1 - v9);
    do
    {
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = *v11;
      *(v12 + 2) = *(v11 + 2);
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 5) = *(v11 + 5);
      *(v11 + 3) = 0;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      v13 = *(v11 + 3);
      v14 = *(v11 + 4);
      v15 = *(v11 + 5);
      *(v12 + 94) = *(v11 + 94);
      *(v12 + 4) = v14;
      *(v12 + 5) = v15;
      *(v12 + 3) = v13;
      v16 = *(v11 + 104);
      *(v12 + 15) = *(v11 + 15);
      *(v12 + 104) = v16;
      *(v11 + 14) = 0;
      *(v11 + 15) = 0;
      *(v11 + 13) = 0;
      v11 += 128;
      v12 += 128;
    }

    while (v11 != v9);
    do
    {
      sub_60B38C(v8);
      v8 += 128;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_D52DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CE38D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D52DF8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *v3, *(v3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 8) - *v3) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_9B8E8C(a1 + 24, *(v3 + 24), *(v3 + 32), 0xE21A291C077975B9 * ((*(v3 + 32) - *(v3 + 24)) >> 3));
  v4 = *(v3 + 48);
  v5 = *(v3 + 64);
  v6 = *(v3 + 80);
  *(a1 + 94) = *(v3 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  if (*(v3 + 127) < 0)
  {
    sub_325C((a1 + 104), *(v3 + 104), *(v3 + 112));
  }

  else
  {
    v7 = *(v3 + 104);
    *(a1 + 120) = *(v3 + 120);
    *(a1 + 104) = v7;
  }

  return a1;
}

void sub_D52ED0(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D52F00(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(a1 + 16);
        v7 = *(a1 + 8);
        if (v6 != v5)
        {
          do
          {
            v6 -= 128;
            sub_60B38C(v6);
          }

          while (v6 != v5);
          v7 = *v4;
        }

        *(a1 + 16) = v5;
        operator delete(v7);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

LABEL_26:
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      goto LABEL_27;
    }

    v11 = (a1 + 8);
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = *(a1 + 16);
      v14 = *(a1 + 8);
      if (v13 != v12)
      {
        do
        {
          v13 -= 128;
          sub_60B38C(v13);
        }

        while (v13 != v12);
        v14 = *v11;
      }

      *(a1 + 16) = v12;
      operator delete(v14);
    }

    *v11 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 24);
        if (v9 != v8)
        {
          do
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 24));
            }

            v9 -= 32;
          }

          while (v9 != v8);
          v10 = *(a1 + 24);
        }

        *(a1 + 32) = v8;
        operator delete(v10);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      goto LABEL_26;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_27:
  *a1 = *a2;
  return a1;
}

void *sub_D53080(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v11[1] = 0;
  v11[2] = 0;
  *v11 = 0;
  sub_D531CC(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 7);
  v6 = 24 * v2 + 24;
  v7 = *(a1 + 8);
  v8 = 24 * v2 + *a1 - v7;
  sub_D3B288(a1, *a1, v7, (v11 + *a1 - v7));
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_D531B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDF7D4(va);
  _Unwind_Resume(a1);
}

void sub_D531CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 57))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D5329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 128;
    v15 = -v12;
    do
    {
      sub_60B38C(v14);
      v14 -= 128;
      v15 += 128;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_CDF538(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_D532D4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_9B8E8C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xE21A291C077975B9 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  if (*(a2 + 127) < 0)
  {
    sub_325C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
  }

  return a1;
}

void sub_D533B0(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void sub_D533E0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      *a1 = *a2;
      v3 = (a1 + 16);
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = a2;
        v6 = *(a1 + 24);
        v7 = *(a1 + 16);
        if (v6 != v4)
        {
          do
          {
            if (*(v6 - 1) < 0)
            {
              operator delete(*(v6 - 24));
            }

            v6 -= 32;
          }

          while (v6 != v4);
          v7 = *v3;
        }

        *(a1 + 24) = v4;
        operator delete(v7);
        *v3 = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        a2 = v5;
      }

      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      v11 = *(a2 + 40);
      *(a1 + 42) = *(a2 + 42);
      *(a1 + 40) = v11;
    }
  }

  else if (*(a1 + 48))
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = *(a1 + 24);
      v10 = *(a1 + 16);
      if (v9 != v8)
      {
        do
        {
          if (*(v9 - 1) < 0)
          {
            operator delete(*(v9 - 24));
          }

          v9 -= 32;
        }

        while (v9 != v8);
        v10 = *(a1 + 16);
      }

      *(a1 + 24) = v8;
      operator delete(v10);
    }

    *(a1 + 48) = 0;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = 1;
  }
}

uint64_t sub_D53560(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(a1 + 24);
      v4 = *(a1 + 16);
      if (v3 != v2)
      {
        do
        {
          if (*(v3 - 1) < 0)
          {
            operator delete(*(v3 - 24));
          }

          v3 -= 32;
        }

        while (v3 != v2);
        v4 = *(a1 + 16);
      }

      *(a1 + 24) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t **sub_D535E0(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_AAD8(&v25, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    operator new();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return v13;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_D539E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_D539F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_D54578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p)
{
  v23 = v21;
  while (1)
  {
    v24 = *(v23 - 9);
    v23 -= 4;
    if (v24 < 0)
    {
      operator delete(*v23);
    }

    if (v23 == &__p)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_D54898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v40 = v9;
  memset(v55, 0, sizeof(v55));
  v56 = 1065353216;
  v60 = 0;
  v61 = 0;
  v58[5] = 0;
  v58[4] = 0;
  v59 = 0;
  v57 = 0u;
  memset(v58, 0, 28);
  sub_7E9A4(&v54);
  v10 = v8[7];
  v11 = v8[8];
  v42 = v8;
  if (v10 != v11)
  {
    for (i = v10 + 40; i != v11; i += 40)
    {
      v13 = *(v10 + 32);
      if (v13 < *(i + 32) && v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = i;
      }
    }
  }

  if (v10 == v11 || (v15 = *(v10 + 32), v15 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v15 = 0x7FFFFFFFFFFFFFFELL;
  }

  if (v15 <= v8[19])
  {
    v17 = v8[14];
    v43[1].n128_u8[7] = 10;
    strcpy(v43, "WalkingETA");
    __p = 0uLL;
    v53 = 0;
    sub_3AEC94(v17, v43, &__p);
    v18 = __p.n128_u64[0];
    if (__p.n128_u64[0])
    {
      v19 = __p.n128_u64[1];
      v20 = __p.n128_u64[0];
      if (__p.n128_u64[1] != __p.n128_u64[0])
      {
        do
        {
          v21 = *(v19 - 1);
          v19 -= 3;
          if (v21 < 0)
          {
            operator delete(*v19);
          }
        }

        while (v19 != v18);
        v20 = __p.n128_u64[0];
      }

      __p.n128_u64[1] = v18;
      operator delete(v20);
    }

    if (v43[1].n128_i8[7] < 0)
    {
      operator delete(v43[0].n128_u64[0]);
    }

    v41 = v17;
    if (!sub_7E7E4(2u))
    {
LABEL_47:
      v33 = v42[26];
      strcpy(v43, "enable_u_turn_clipping");
      v43[1].n128_u8[7] = 22;
      sub_5F9D0(v33, v43);
      if (v43[1].n128_i8[7] < 0)
      {
        operator delete(v43[0].n128_u64[0]);
      }

      v43[1].n128_u8[7] = 11;
      strcpy(v43, "PathFinding");
      __p = 0uLL;
      v53 = 0;
      v34 = sub_3AEC94(v17, v43, &__p);
      v35 = __p.n128_u64[0];
      if (__p.n128_u64[0])
      {
        v36 = __p.n128_u64[1];
        v37 = __p.n128_u64[0];
        if (__p.n128_u64[1] != __p.n128_u64[0])
        {
          do
          {
            v38 = *(v36 - 1);
            v36 -= 3;
            if (v38 < 0)
            {
              operator delete(*v36);
            }
          }

          while (v36 != v35);
          v37 = __p.n128_u64[0];
        }

        __p.n128_u64[1] = v35;
        operator delete(v37);
      }

      if (v43[1].n128_i8[7] < 0)
      {
        operator delete(v43[0].n128_u64[0]);
      }

      v43[1].n128_u8[7] = 12;
      strcpy(v43, "use_dijkstra");
      sub_5F9D0(v34, v43);
      if (v43[1].n128_i8[7] < 0)
      {
        operator delete(v43[0].n128_u64[0]);
      }

      v43[1].n128_u8[7] = 21;
      strcpy(v43, "max_num_scanned_nodes");
      sub_353010(v34, v43);
      if (v43[1].n128_i8[7] < 0)
      {
        operator delete(v43[0].n128_u64[0]);
      }

      operator new();
    }

    sub_19594F8(v43[0].n128_f64);
    v22 = sub_4A5C(v43, "Using walking cost function ", 28);
    v23 = v42[27];
    v26 = *(v23 + 8);
    v24 = v23 + 8;
    v25 = v26;
    v27 = *(v24 + 23);
    if (v27 >= 0)
    {
      v28 = v24;
    }

    else
    {
      v28 = v25;
    }

    if (v27 >= 0)
    {
      v29 = *(v24 + 23);
    }

    else
    {
      v29 = *(v24 + 8);
    }

    sub_4A5C(v22, v28, v29);
    if ((v51 & 0x10) != 0)
    {
      v31 = v50;
      if (v50 < v47)
      {
        v50 = v47;
        v31 = v47;
      }

      v32 = v46;
      v30 = v31 - v46;
      if (v31 - v46 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if ((v51 & 8) == 0)
      {
        v30 = 0;
        HIBYTE(v53) = 0;
LABEL_42:
        __p.n128_u8[v30] = 0;
        sub_7E854(&__p, 2u);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(__p.n128_u64[0]);
        }

        if (v49 < 0)
        {
          operator delete(v48);
        }

        std::locale::~locale(&v43[1]);
        std::ostream::~ostream();
        std::ios::~ios();
        v17 = v41;
        goto LABEL_47;
      }

      v32 = v43[1].n128_u64[1];
      v30 = v45 - v43[1].n128_u64[1];
      if (v45 - v43[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_65:
        sub_3244();
      }
    }

    if (v30 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v53) = v30;
    if (v30)
    {
      memmove(&__p, v32, v30);
    }

    goto LABEL_42;
  }

  __p.n128_u64[0] = 16;
  __p.n128_u64[1] = &off_2669FE0;
  sub_434934(v43, &__p);
  *v40 = 0;
  v16 = v43[1];
  *(v40 + 8) = v43[0];
  *(v40 + 24) = v16;
  *(v40 + 40) = v44;
  *(v40 + 48) = v45;
  return sub_D5B47C(v55);
}

void sub_D58684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p)
{
  sub_C64C18(&__p);
  sub_CDC398(&STACK[0x260]);
  sub_CDE49C(&STACK[0x278]);
  sub_D5B290(&STACK[0x320]);
  sub_D5B3B8(&STACK[0x2548]);
  sub_D5B404(&STACK[0x2C50]);
  sub_D5B47C(&STACK[0x2F80]);
  _Unwind_Resume(a1);
}

void sub_D58D50(uint64_t a1@<X0>, uint64_t **a2@<X1>, unint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_45AC50(a1);
  for (i = sub_588D8(a1); v6 != i; v6 += 552)
  {
    sub_117C2EC(v6, a2, __p, 0.95);
    if (sub_F64B34(__p))
    {
      sub_117C2EC(v6, a2, v17, 0.0);
      v8 = __p[0];
      if (__p[0])
      {
        v9 = __p[1];
        v10 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v9 = sub_4547F0(v9 - 552);
          }

          while (v9 != v8);
          v10 = __p[0];
        }

        __p[1] = v8;
        operator delete(v10);
      }

      *__p = *v17;
      v22 = v18;
      v17[1] = 0;
      v18 = 0;
      v17[0] = 0;
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23);
        v11 = v17[0];
        v23 = v19;
        v24 = v20;
        HIBYTE(v20) = 0;
        LOBYTE(v19) = 0;
        if (v17[0])
        {
          v12 = v17[1];
          v13 = v17[0];
          if (v17[1] != v17[0])
          {
            do
            {
              v12 = sub_4547F0(v12 - 552);
            }

            while (v12 != v11);
            v13 = v17[0];
          }

          v17[1] = v11;
          operator delete(v13);
        }
      }

      else
      {
        v23 = v19;
        v24 = v20;
      }
    }

    if (!sub_F64B34(__p))
    {
      sub_F744D0(a3, __p, 0);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
      v14 = __p[0];
      if (__p[0])
      {
LABEL_25:
        v15 = __p[1];
        v16 = v14;
        if (__p[1] != v14)
        {
          do
          {
            v15 = sub_4547F0(v15 - 552);
          }

          while (v15 != v14);
          v16 = __p[0];
        }

        __p[1] = v14;
        operator delete(v16);
      }
    }

    else
    {
      v14 = __p[0];
      if (__p[0])
      {
        goto LABEL_25;
      }
    }
  }
}

void sub_D58F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_454784(va);
  sub_CDCD6C(v13);
  _Unwind_Resume(a1);
}

void sub_D58FB0(uint64_t a1)
{
  *(a1 + 1474) = 0;
  nullsub_1();
  v2 = *(a1 + 1496);
  v3 = 4;
  if (!vcvts_n_u32_f32(v2, 2uLL))
  {
    while ((v3 & 0x8000000000000000) == 0)
    {
      v3 *= 2;
      if ((v2 * v3))
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "resize overflow");
  }

LABEL_4:
  if (*(a1 + 1528) || v3 != *(a1 + 1536))
  {
    sub_D5B9C0(a1 + 1480, v3);
  }

  v4 = *(a1 + 1576);
  v5 = 4;
  if (!vcvts_n_u32_f32(v4, 2uLL))
  {
    while ((v5 & 0x8000000000000000) == 0)
    {
      v5 *= 2;
      if ((v4 * v5))
      {
        goto LABEL_10;
      }
    }

    goto LABEL_15;
  }

LABEL_10:
  if (*(a1 + 1688) || v5 != *(a1 + 1696))
  {

    sub_D5BB10(a1 + 1560, v5);
  }
}

uint64_t sub_D590F8(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a3 + 8);
    v7 = a1 + 68;
    do
    {
      while (1)
      {
        v9 = (v7 - 68);
        if (v6 < *(a3 + 16))
        {
          break;
        }

        v6 = sub_D59894(a3, v9);
        *(a3 + 8) = v6;
        v8 = v7 + 1;
        v7 += 69;
        if (v8 == a2)
        {
          return a3;
        }
      }

      v10 = *v9;
      *(v6 + 2) = *(v7 - 66);
      *v6 = v10;
      *(v7 - 67) = 0u;
      *v9 = 0;
      v11 = v7 - 65;
      *(v6 + 5) = 0;
      *(v6 + 24) = 0u;
      *(v6 + 24) = *(v7 - 65);
      *(v6 + 5) = *(v7 - 63);
      v11[2] = 0;
      *v11 = 0u;
      v12 = *(v7 - 31);
      v13 = *(v7 - 29);
      v14 = *(v7 - 56);
      *(v6 + 4) = *(v7 - 30);
      *(v6 + 5) = v13;
      *(v6 + 3) = v12;
      v15 = v7 - 55;
      *(v6 + 12) = v14;
      *(v6 + 13) = 0;
      *(v6 + 7) = 0u;
      *(v6 + 104) = *(v7 - 55);
      *(v6 + 15) = *(v7 - 53);
      v15[2] = 0;
      *v15 = 0u;
      v16 = v7 - 52;
      *(v6 + 18) = 0;
      *(v6 + 8) = 0u;
      *(v6 + 8) = *(v7 - 26);
      *(v6 + 18) = *(v7 - 50);
      v16[2] = 0;
      *v16 = 0u;
      v17 = v7 - 49;
      *(v6 + 21) = 0;
      *(v6 + 152) = 0u;
      *(v6 + 152) = *(v7 - 49);
      *(v6 + 21) = *(v7 - 47);
      v17[2] = 0;
      *v17 = 0u;
      v18 = *(v7 - 22);
      v19 = *(v7 - 42);
      *(v6 + 11) = *(v7 - 23);
      *(v6 + 12) = v18;
      v20 = v7 - 41;
      *(v6 + 26) = v19;
      *(v6 + 27) = 0;
      *(v6 + 14) = 0u;
      *(v6 + 216) = *(v7 - 41);
      *(v6 + 29) = *(v7 - 39);
      v20[2] = 0;
      *v20 = 0u;
      v21 = v7 - 38;
      *(v6 + 32) = 0;
      *(v6 + 15) = 0u;
      *(v6 + 15) = *(v7 - 19);
      *(v6 + 32) = *(v7 - 36);
      v21[2] = 0;
      *v21 = 0u;
      v22 = *(v7 - 35);
      v23 = *(v7 - 31);
      *(v6 + 280) = *(v7 - 33);
      *(v6 + 296) = v23;
      *(v6 + 264) = v22;
      v24 = *(v7 - 19);
      v25 = *(v7 - 15);
      v26 = *(v7 - 21);
      *(v6 + 408) = *(v7 - 17);
      *(v6 + 424) = v25;
      *(v6 + 376) = v26;
      *(v6 + 392) = v24;
      v27 = *(v7 - 11);
      v28 = *(v7 - 7);
      v29 = *(v7 - 13);
      *(v6 + 472) = *(v7 - 9);
      *(v6 + 488) = v28;
      *(v6 + 440) = v29;
      *(v6 + 456) = v27;
      v30 = *(v7 - 29);
      v31 = *(v7 - 27);
      v32 = *(v7 - 23);
      *(v6 + 344) = *(v7 - 25);
      *(v6 + 360) = v32;
      *(v6 + 312) = v30;
      *(v6 + 328) = v31;
      *(v6 + 63) = *(v7 - 5);
      *(v6 + 32) = *(v7 - 2);
      *(v7 - 3) = 0;
      *(v7 - 5) = 0u;
      *(v6 + 68) = 0;
      *(v6 + 33) = 0u;
      *(v6 + 33) = *(v7 - 1);
      *(v6 + 68) = *v7;
      *(v7 - 2) = 0;
      *(v7 - 1) = 0;
      *v7 = 0;
      v6 += 552;
      *(a3 + 8) = v6;
      v33 = v7 + 1;
      v7 += 69;
    }

    while (v33 != a2);
  }

  return a3;
}

void *sub_D59354(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_D59434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_D5AF20(va);
  _Unwind_Resume(a1);
}

void sub_D59448(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[8];
      if (v4)
      {
        do
        {
          v5 = *v4;
          operator delete(v4);
          v4 = v5;
        }

        while (v5);
      }

      v6 = v2[6];
      v2[6] = 0;
      if (v6)
      {
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_D594BC(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v24 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 24 * v2;
  __p = 0;
  v21 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v22 = 24 * v2 + 24;
  v23 = 0;
  sub_CDD28C(a1, &__p);
  v7 = a1[1];
  v8 = v21;
  v9 = v22;
  if (v22 != v21)
  {
    v10 = v22;
    while (1)
    {
      v13 = *(v10 - 3);
      v10 -= 3;
      v12 = v13;
      v22 = v10;
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = *(v9 - 16);
      v11 = v12;
      if (v14 != v12)
      {
        break;
      }

LABEL_13:
      *(v9 - 16) = v12;
      operator delete(v11);
      v10 = v22;
LABEL_14:
      v9 = v10;
      if (v10 == v8)
      {
        goto LABEL_27;
      }
    }

    while (1)
    {
      if (*(v14 - 1) < 0)
      {
        operator delete(*(v14 - 3));
        v15 = v14 - 6;
        v16 = *(v14 - 6);
        if (v16)
        {
LABEL_24:
          v17 = *(v14 - 5);
          v18 = v16;
          if (v17 != v16)
          {
            do
            {
              v17 = sub_4547F0(v17 - 552);
            }

            while (v17 != v16);
            v18 = *v15;
          }

          *(v14 - 5) = v16;
          operator delete(v18);
        }
      }

      else
      {
        v15 = v14 - 6;
        v16 = *(v14 - 6);
        if (v16)
        {
          goto LABEL_24;
        }
      }

      v14 = v15;
      if (v15 == v12)
      {
        v11 = *v10;
        goto LABEL_13;
      }
    }
  }

LABEL_27:
  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_D596A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDD3FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D596B4(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  v23 = a1;
  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 24 * v1;
  __p = 0;
  v20 = v5;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  v21 = 24 * v1 + 24;
  v22 = 0;
  sub_CDD28C(a1, &__p);
  v6 = a1[1];
  v7 = v20;
  v8 = v21;
  if (v21 != v20)
  {
    v9 = v21;
    while (1)
    {
      v12 = *(v9 - 3);
      v9 -= 3;
      v11 = v12;
      v21 = v9;
      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = *(v8 - 16);
      v10 = v11;
      if (v13 != v11)
      {
        break;
      }

LABEL_13:
      *(v8 - 16) = v11;
      operator delete(v10);
      v9 = v21;
LABEL_14:
      v8 = v9;
      if (v9 == v7)
      {
        goto LABEL_27;
      }
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v14 = v13 - 6;
        v15 = *(v13 - 6);
        if (v15)
        {
LABEL_24:
          v16 = *(v13 - 5);
          v17 = v15;
          if (v16 != v15)
          {
            do
            {
              v16 = sub_4547F0(v16 - 552);
            }

            while (v16 != v15);
            v17 = *v14;
          }

          *(v13 - 5) = v15;
          operator delete(v17);
        }
      }

      else
      {
        v14 = v13 - 6;
        v15 = *(v13 - 6);
        if (v15)
        {
          goto LABEL_24;
        }
      }

      v13 = v14;
      if (v14 == v11)
      {
        v10 = *v9;
        goto LABEL_13;
      }
    }
  }

LABEL_27:
  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_D59880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDD3FC(va);
  _Unwind_Resume(a1);
}

void *sub_D59894(void **a1, uint64_t a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v4 = 0x76B981DAE6076BLL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  *v5 = *a2;
  *(v5 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 40) = *(a2 + 40);
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(v5 + 96) = *(a2 + 96);
  v6 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v6;
  *(v5 + 48) = *(a2 + 48);
  *(v5 + 104) = *(a2 + 104);
  *(v5 + 120) = *(a2 + 120);
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0;
  *(v5 + 128) = *(a2 + 128);
  *(v5 + 144) = *(a2 + 144);
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0;
  *(v5 + 152) = *(a2 + 152);
  *(v5 + 168) = *(a2 + 168);
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0;
  v7 = *(a2 + 176);
  v8 = *(a2 + 192);
  *(v5 + 208) = *(a2 + 208);
  *(v5 + 176) = v7;
  *(v5 + 192) = v8;
  *(v5 + 216) = *(a2 + 216);
  *(v5 + 232) = *(a2 + 232);
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(v5 + 240) = *(a2 + 240);
  *(v5 + 256) = *(a2 + 256);
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0;
  v9 = *(a2 + 264);
  v10 = *(a2 + 296);
  *(v5 + 280) = *(a2 + 280);
  *(v5 + 296) = v10;
  *(v5 + 264) = v9;
  v11 = *(a2 + 312);
  v12 = *(a2 + 328);
  v13 = *(a2 + 360);
  *(v5 + 344) = *(a2 + 344);
  *(v5 + 360) = v13;
  *(v5 + 312) = v11;
  *(v5 + 328) = v12;
  v14 = *(a2 + 376);
  v15 = *(a2 + 392);
  v16 = *(a2 + 424);
  *(v5 + 408) = *(a2 + 408);
  *(v5 + 424) = v16;
  *(v5 + 376) = v14;
  *(v5 + 392) = v15;
  v17 = *(a2 + 440);
  v18 = *(a2 + 456);
  v19 = *(a2 + 488);
  *(v5 + 472) = *(a2 + 472);
  *(v5 + 488) = v19;
  *(v5 + 440) = v17;
  *(v5 + 456) = v18;
  *(v5 + 504) = *(a2 + 504);
  *(a2 + 504) = 0;
  v20 = *(a2 + 528);
  *(v5 + 512) = *(a2 + 512);
  *(v5 + 528) = v20;
  *(v5 + 544) = *(a2 + 544);
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 0;
  v21 = (v5 + 552);
  v22 = *a1;
  v23 = a1[1];
  v24 = (v5 + *a1 - v23);
  if (*a1 != v23)
  {
    v25 = *a1;
    v26 = v24;
    do
    {
      v27 = *v25;
      *(v26 + 2) = *(v25 + 2);
      *v26 = v27;
      *(v25 + 8) = 0uLL;
      *v25 = 0;
      *(v26 + 5) = 0;
      *(v26 + 24) = 0uLL;
      *(v26 + 24) = *(v25 + 24);
      *(v26 + 5) = *(v25 + 5);
      *(v25 + 5) = 0;
      *(v25 + 24) = 0uLL;
      v28 = *(v25 + 3);
      v29 = *(v25 + 5);
      v30 = *(v25 + 12);
      *(v26 + 4) = *(v25 + 4);
      *(v26 + 5) = v29;
      *(v26 + 3) = v28;
      *(v26 + 12) = v30;
      *(v26 + 13) = 0;
      *(v26 + 7) = 0uLL;
      *(v26 + 104) = *(v25 + 104);
      *(v26 + 15) = *(v25 + 15);
      *(v25 + 15) = 0;
      *(v25 + 104) = 0uLL;
      *(v26 + 18) = 0;
      *(v26 + 8) = 0uLL;
      *(v26 + 8) = *(v25 + 8);
      *(v26 + 18) = *(v25 + 18);
      *(v25 + 18) = 0;
      *(v25 + 8) = 0uLL;
      *(v26 + 21) = 0;
      *(v26 + 152) = 0uLL;
      *(v26 + 152) = *(v25 + 152);
      *(v26 + 21) = *(v25 + 21);
      *(v25 + 21) = 0;
      *(v25 + 152) = 0uLL;
      v31 = *(v25 + 12);
      v32 = *(v25 + 26);
      *(v26 + 11) = *(v25 + 11);
      *(v26 + 12) = v31;
      *(v26 + 26) = v32;
      *(v26 + 27) = 0;
      *(v26 + 14) = 0uLL;
      *(v26 + 216) = *(v25 + 216);
      *(v26 + 29) = *(v25 + 29);
      *(v25 + 29) = 0;
      *(v25 + 216) = 0uLL;
      *(v26 + 32) = 0;
      *(v26 + 15) = 0uLL;
      *(v26 + 15) = *(v25 + 15);
      *(v26 + 32) = *(v25 + 32);
      *(v25 + 32) = 0;
      *(v25 + 15) = 0uLL;
      v33 = *(v25 + 264);
      v34 = *(v25 + 296);
      *(v26 + 280) = *(v25 + 280);
      *(v26 + 296) = v34;
      *(v26 + 264) = v33;
      v35 = *(v25 + 424);
      v37 = *(v25 + 376);
      v36 = *(v25 + 392);
      *(v26 + 408) = *(v25 + 408);
      *(v26 + 424) = v35;
      *(v26 + 376) = v37;
      *(v26 + 392) = v36;
      v38 = *(v25 + 488);
      v40 = *(v25 + 440);
      v39 = *(v25 + 456);
      *(v26 + 472) = *(v25 + 472);
      *(v26 + 488) = v38;
      *(v26 + 440) = v40;
      *(v26 + 456) = v39;
      v41 = *(v25 + 312);
      v42 = *(v25 + 328);
      v43 = *(v25 + 360);
      *(v26 + 344) = *(v25 + 344);
      *(v26 + 360) = v43;
      *(v26 + 312) = v41;
      *(v26 + 328) = v42;
      *(v26 + 63) = *(v25 + 63);
      *(v26 + 32) = *(v25 + 32);
      *(v25 + 65) = 0;
      *(v25 + 504) = 0uLL;
      *(v26 + 68) = 0;
      *(v26 + 33) = 0uLL;
      *(v26 + 33) = *(v25 + 33);
      *(v26 + 68) = *(v25 + 68);
      *(v25 + 68) = 0;
      *(v25 + 33) = 0uLL;
      v25 += 552;
      v26 += 552;
    }

    while (v25 != v23);
    do
    {
      v22 = (sub_4547F0(v22) + 552);
    }

    while (v22 != v23);
    v22 = *a1;
  }

  *a1 = v24;
  a1[1] = v21;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

  return v21;
}

void sub_D59C9C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    v26 = a1;
    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    __p = 0;
    v23 = 24 * v5;
    v25 = 0;
    v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero((24 * v5), v10);
    v24 = (24 * v5 + v10);
    sub_CDD28C(a1, &__p);
    v11 = v23;
    v12 = v24;
    if (v24 != v23)
    {
      v13 = v24;
      while (1)
      {
        v16 = *(v13 - 3);
        v13 -= 3;
        v15 = v16;
        v24 = v13;
        if (!v16)
        {
          goto LABEL_18;
        }

        v17 = *(v12 - 2);
        v14 = v15;
        if (v17 != v15)
        {
          break;
        }

LABEL_17:
        *(v12 - 2) = v15;
        operator delete(v14);
        v13 = v24;
LABEL_18:
        v12 = v13;
        if (v13 == v11)
        {
          goto LABEL_31;
        }
      }

      while (1)
      {
        if (*(v17 - 1) < 0)
        {
          operator delete(*(v17 - 3));
          v18 = v17 - 6;
          v19 = *(v17 - 6);
          if (v19)
          {
LABEL_28:
            v20 = *(v17 - 5);
            v21 = v19;
            if (v20 != v19)
            {
              do
              {
                v20 = sub_4547F0(v20 - 552);
              }

              while (v20 != v19);
              v21 = *v18;
            }

            *(v17 - 5) = v19;
            operator delete(v21);
          }
        }

        else
        {
          v18 = v17 - 6;
          v19 = *(v17 - 6);
          if (v19)
          {
            goto LABEL_28;
          }
        }

        v17 = v18;
        if (v18 == v15)
        {
          v14 = *v13;
          goto LABEL_17;
        }
      }
    }

LABEL_31:
    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_D59EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDD3FC(va);
  _Unwind_Resume(a1);
}

void sub_D59EF4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v8 = *(a2 + 1);
        *(v7 + 25) = *(a2 + 25);
        *(v7 + 16) = v8;
        if (v7 != a2)
        {
          *(v7 + 80) = *(a2 + 20);
          sub_D5A18C(v7 + 48, a2[8], 0);
        }

        v9 = *v7;
        sub_D5A05C(a1, v7);
        a2 = *a2;
        v7 = v9;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      do
      {
        v10 = *v7;
        v11 = *(v7 + 64);
        if (v11)
        {
          do
          {
            v12 = *v11;
            operator delete(v11);
            v11 = v12;
          }

          while (v12);
        }

        v13 = *(v7 + 48);
        *(v7 + 48) = 0;
        if (v13)
        {
          operator delete(v13);
        }

        operator delete(v7);
        v7 = v10;
      }

      while (v10);
    }
  }

LABEL_13:
  if (a2 != a3)
  {
    sub_D5AD60();
  }
}

void sub_D5A018(void *a1)
{
  __cxa_begin_catch(a1);
  sub_D59448(v1, v2);
  __cxa_rethrow();
}

void sub_D5A048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_D3BE90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D5A05C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_D3B8E4(a1, (a2 + 16));
  *(a2 + 8) = v4;
  v5 = sub_D5A8A0(a1, v4, a2 + 16);
  v6 = a1[1];
  v7 = *(a2 + 8);
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    if (v7 >= *&v6)
    {
      v7 %= *&v6;
    }
  }

  else
  {
    v7 &= *&v6 - 1;
  }

  if (v5)
  {
    *a2 = *v5;
    *v5 = a2;
    if (*a2)
    {
      v9 = *(*a2 + 8);
      if (v8.u32[0] > 1uLL)
      {
        if (v9 >= *&v6)
        {
          v9 %= *&v6;
        }
      }

      else
      {
        v9 &= *&v6 - 1;
      }

      if (v9 != v7)
      {
        v12 = (*a1 + 8 * v9);
LABEL_19:
        *v12 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v10 = *a1;
    *(*a1 + 8 * v7) = a1 + 2;
    if (*a2)
    {
      v11 = *(*a2 + 8);
      if (v8.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      v12 = (v10 + 8 * v11);
      goto LABEL_19;
    }
  }

  ++a1[3];
  return a2;
}

void sub_D5A18C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v7[2] = a2[2];
        v8 = *v7;
        sub_D5A2E0(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v9 = *v7;
        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_7:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_D5A298(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_D5A2E0(uint64_t *a1, uint64_t a2)
{
  v4 = a2 + 16;
  v5 = (*(a2 + 20) + (*(a2 + 16) << 6) + (*(a2 + 16) >> 2) + 2654435769u) ^ *(a2 + 16);
  *(v4 - 8) = v5;
  v6 = sub_D5A42C(a1, v5, v4);
  v7 = a1[1];
  v8 = *(v4 - 8);
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    if (v8 >= *&v7)
    {
      v8 %= *&v7;
    }

    if (v6)
    {
LABEL_3:
      *a2 = *v6;
      *v6 = a2;
      if (*a2)
      {
        v10 = *(*a2 + 8);
        if (v9.u32[0] > 1uLL)
        {
          if (v10 >= *&v7)
          {
            v10 %= *&v7;
          }
        }

        else
        {
          v10 &= *&v7 - 1;
        }

        if (v10 != v8)
        {
          v13 = (*a1 + 8 * v10);
LABEL_19:
          *v13 = a2;
          goto LABEL_20;
        }
      }

      goto LABEL_20;
    }
  }

  else
  {
    v8 &= *&v7 - 1;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  *a2 = a1[2];
  a1[2] = a2;
  v11 = *a1;
  *(*a1 + 8 * v8) = a1 + 2;
  if (*a2)
  {
    v12 = *(*a2 + 8);
    if (v9.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    v13 = (v11 + 8 * v12);
    goto LABEL_19;
  }

LABEL_20:
  ++a1[3];
  return a2;
}

uint64_t *sub_D5A42C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (v6 && (v8 * v6) >= v7)
  {
    v9 = v6 - 1;
    if ((v6 & (v6 - 1)) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  v18 = 1;
  if (v6 >= 3)
  {
    v18 = (v6 & (v6 - 1)) != 0;
  }

  v19 = v18 | (2 * v6);
  v20 = vcvtps_u32_f32(v7 / v8);
  if (v19 <= v20)
  {
    prime = v20;
  }

  else
  {
    prime = v19;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v6 = *(a1 + 8);
  }

  if (prime > v6)
  {
    goto LABEL_27;
  }

  if (prime < v6)
  {
    v22 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v6 < 3 || (v23 = vcnt_s8(v6), v23.i16[0] = vaddlv_u8(v23), v23.u32[0] > 1uLL))
    {
      v25 = prime;
      v26 = std::__next_prime(v22);
      if (v25 <= v26)
      {
        prime = v26;
      }

      else
      {
        prime = v25;
      }

      if (prime >= v6)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v24 = 1 << -__clz(v22 - 1);
      if (v22 >= 2)
      {
        v22 = v24;
      }

      if (prime <= v22)
      {
        prime = v22;
      }

      if (prime >= v6)
      {
        goto LABEL_43;
      }
    }

LABEL_27:
    sub_D5A6CC(a1, prime);
  }

LABEL_43:
  v6 = *(a1 + 8);
  v9 = v6 - 1;
  if ((v6 & (v6 - 1)) == 0)
  {
LABEL_4:
    v10 = *(*a1 + 8 * (v9 & a2));
    if (!v10)
    {
      return 0;
    }

    v11 = 0;
    do
    {
      result = v10;
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v17 = *(v10 + 8);
      if ((v17 & v9) != (v9 & a2))
      {
        break;
      }

      if (v17 == a2)
      {
        v12 = *(v10 + 16) == *a3 && *(a3 + 4) == *(v10 + 20);
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13 != (v11 & 1);
      v15 = v11 & v14;
      v11 |= v14;
    }

    while ((v15 & 1) == 0);
    return result;
  }

LABEL_44:
  v27 = a2;
  if (v6 <= a2)
  {
    v27 = a2 % v6;
  }

  v28 = *(*a1 + 8 * v27);
  if (!v28)
  {
    return 0;
  }

  v29 = 0;
  do
  {
    result = v28;
    v28 = *v28;
    if (!v28)
    {
      break;
    }

    v34 = *(v28 + 8);
    v35 = v34;
    if (v34 >= v6)
    {
      v35 = v34 % v6;
    }

    if (v35 != v27)
    {
      break;
    }

    if (v34 == a2)
    {
      v30 = *(v28 + 16) == *a3 && *(a3 + 4) == *(v28 + 20);
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31 != (v29 & 1);
    v33 = v29 & v32;
    v29 |= v32;
  }

  while (v33 != 1);
  return result;
}

void sub_D5A6CC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_D5A8A0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v12 = 1;
    if (v6 >= 3)
    {
      v12 = (v6 & (v6 - 1)) != 0;
    }

    v13 = v12 | (2 * v6);
    v14 = vcvtps_u32_f32(v7 / v8);
    if (v13 <= v14)
    {
      prime = v14;
    }

    else
    {
      prime = v13;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
      goto LABEL_15;
    }

    if (prime < v6)
    {
      v16 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v17 = vcnt_s8(v6), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
      {
        v19 = prime;
        v20 = std::__next_prime(v16);
        if (v19 <= v20)
        {
          prime = v20;
        }

        else
        {
          prime = v19;
        }

        if (prime >= v6)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = 1 << -__clz(v16 - 1);
        if (v16 >= 2)
        {
          v16 = v18;
        }

        if (prime <= v16)
        {
          prime = v16;
        }

        if (prime >= v6)
        {
          goto LABEL_29;
        }
      }

LABEL_15:
      sub_D5AB48(a1, prime);
    }

LABEL_29:
    v6 = *(a1 + 8);
    v21 = vcnt_s8(v6);
    v21.i16[0] = vaddlv_u8(v21);
    v10 = v21.u32[0];
    if (v21.u32[0] <= 1uLL)
    {
      goto LABEL_4;
    }

    goto LABEL_30;
  }

  v9 = vcnt_s8(v6);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] <= 1uLL)
  {
LABEL_4:
    v11 = (v6 - 1) & a2;
    goto LABEL_32;
  }

LABEL_30:
  v11 = a2;
  if (v6 <= a2)
  {
    v11 = a2 % v6;
  }

LABEL_32:
  v22 = *(*a1 + 8 * v11);
  if (v22)
  {
    v23 = *v22;
    if (*v22)
    {
      if (v10 >= 2)
      {
        v28 = 0;
        do
        {
          v29 = v23[1];
          v30 = v29;
          if (v29 >= v6)
          {
            v30 = v29 % v6;
          }

          if (v30 != v11)
          {
            break;
          }

          if (v29 == a2)
          {
            v31 = sub_4C2D38((v23 + 2), a3) != (v28 & 1);
            if (v28 & v31)
            {
              return v22;
            }
          }

          else
          {
            v31 = (v28 & 1) != 0;
            if ((v28 & v31) != 0)
            {
              return v22;
            }
          }

          v28 |= v31;
          v22 = *v22;
          v23 = *v22;
        }

        while (*v22);
      }

      else
      {
        v24 = 0;
        v25 = v6 - 1;
        do
        {
          v26 = v23[1];
          if ((v26 & v25) != v11)
          {
            break;
          }

          if (v26 == a2)
          {
            v27 = sub_4C2D38((v23 + 2), a3) != (v24 & 1);
            if (v24 & v27)
            {
              return v22;
            }
          }

          else
          {
            v27 = (v24 & 1) != 0;
            if ((v24 & v27) != 0)
            {
              return v22;
            }
          }

          v24 |= v27;
          v22 = *v22;
          v23 = *v22;
        }

        while (*v22);
      }
    }
  }

  return v22;
}

void sub_D5AB48(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_D5AF00(_Unwind_Exception *a1)
{
  sub_11BD8(v2);
  sub_D3BE90(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D5AF20(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v25 = *(a1 + 8);
  if (v2 != v25)
  {
    v3 = *(a1 + 16);
    while (1)
    {
      v6 = *(v3 - 3);
      v3 -= 3;
      v5 = v6;
      *(v1 + 16) = v3;
      if (!v6)
      {
        goto LABEL_5;
      }

      v24 = v3;
      v26 = v2;
      v7 = *(v2 - 2);
      v4 = v5;
      if (v7 != v5)
      {
        break;
      }

LABEL_4:
      *(v26 - 2) = v5;
      operator delete(v4);
      v3 = *(v1 + 16);
LABEL_5:
      v2 = v3;
      if (v3 == v25)
      {
        goto LABEL_36;
      }
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
        v9 = *(v7 - 13);
        if (v9)
        {
LABEL_17:
          v12 = *(v7 - 12);
          v13 = v9;
          if (v12 != v9)
          {
            do
            {
              v12 = sub_3EEA68(v12 - 1096);
            }

            while (v12 != v9);
            v13 = *(v7 - 13);
          }

          *(v7 - 12) = v9;
          operator delete(v13);
          v10 = v7 - 16;
          v11 = *(v7 - 16);
          if (!v11)
          {
            goto LABEL_11;
          }

LABEL_21:
          v14 = *(v7 - 15);
          v8 = v11;
          if (v14 != v11)
          {
            do
            {
              v15 = *(v14 - 3);
              if (v15)
              {
                v16 = *(v14 - 2);
                v17 = *(v14 - 3);
                if (v16 != v15)
                {
                  do
                  {
                    v18 = v16 - 32;
                    v19 = *(v16 - 2);
                    if (v19 != -1)
                    {
                      (off_2673C78[v19])(&v27, v16 - 32);
                    }

                    *(v16 - 2) = -1;
                    v16 -= 32;
                  }

                  while (v18 != v15);
                  v17 = *(v14 - 3);
                }

                *(v14 - 2) = v15;
                operator delete(v17);
              }

              v20 = *(v14 - 8);
              if (v20 != -1)
              {
                (off_2673C78[v20])(&v28, v14 - 7);
              }

              v21 = v14 - 10;
              *(v14 - 8) = -1;
              if (*(v14 - 57) < 0)
              {
                operator delete(*v21);
              }

              v14 -= 10;
            }

            while (v21 != v11);
            v8 = *v10;
          }

          *(v7 - 15) = v11;
          operator delete(v8);
          goto LABEL_11;
        }
      }

      else
      {
        v9 = *(v7 - 13);
        if (v9)
        {
          goto LABEL_17;
        }
      }

      v10 = v7 - 16;
      v11 = *(v7 - 16);
      if (v11)
      {
        goto LABEL_21;
      }

LABEL_11:
      v7 = v10;
      if (v10 == v5)
      {
        v1 = a1;
        v4 = *v24;
        goto LABEL_4;
      }
    }
  }

LABEL_36:
  if (*v1)
  {
    operator delete(*v1);
  }

  return v1;
}

uint64_t sub_D5B130(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v16 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 24 * v2;
  v13 = 0;
  v14 = v6;
  v15 = 24 * v2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 0;
  sub_D531CC(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 7);
  *&v15 = v15 + 24;
  v7 = *(a1 + 8);
  v8 = (v14 + *a1 - v7);
  sub_D3B288(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_D5AF20(&v13);
  return v12;
}

void sub_D5B27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_D5AF20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D5B290(uint64_t a1)
{
  v2 = *(a1 + 8688);
  if (v2)
  {
    do
    {
      v14 = *v2;
      v15 = v2[8];
      if (v15)
      {
        do
        {
          v16 = *v15;
          operator delete(v15);
          v15 = v16;
        }

        while (v16);
      }

      v17 = v2[6];
      v2[6] = 0;
      if (v17)
      {
        operator delete(v17);
      }

      operator delete(v2);
      v2 = v14;
    }

    while (v14);
  }

  v3 = *(a1 + 8672);
  *(a1 + 8672) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  sub_360B9C((a1 + 840));
  v4 = *(a1 + 776);
  if (v4)
  {
    *(a1 + 784) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 752);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(a1 + 736);
  *(a1 + 736) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 712);
  if (v8)
  {
    *(a1 + 720) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 688);
  if (v9)
  {
    *(a1 + 696) = v9;
    operator delete(v9);
  }

  if (*(a1 + 623) < 0)
  {
    operator delete(*(a1 + 600));
  }

  v10 = *(a1 + 536);
  if (v10)
  {
    do
    {
      v11 = *v10;
      sub_253B4((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = *(a1 + 520);
  *(a1 + 520) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return a1;
}

void *sub_D5B3B8(void *a1)
{
  v2 = a1[224];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[194];
  if (v3)
  {
    free(v3);
  }

  sub_C64754(a1 + 42);
  sub_3BFA2C(a1 + 1);
  return a1;
}

uint64_t sub_D5B404(uint64_t a1)
{
  sub_3BFA2C((a1 + 616));
  if (*(a1 + 575) < 0)
  {
    operator delete(*(a1 + 552));
  }

  v2 = *(a1 + 488);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_253B4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 472);
  *(a1 + 472) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_D5B47C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v2)
    {
      v5 = *(a1 + 48);
      do
      {
        v7 = *(v5 - 3);
        v5 -= 3;
        v6 = v7;
        if (v7)
        {
          v8 = *(v3 - 2);
          v9 = v6;
          if (v8 != v6)
          {
            do
            {
              v8 -= 128;
              sub_60B38C(v8);
            }

            while (v8 != v6);
            v9 = *v5;
          }

          *(v3 - 2) = v6;
          operator delete(v9);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v2;
    operator delete(v4);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    do
    {
      v13 = *v10;
      v14 = v10[8];
      if (v14)
      {
        do
        {
          v15 = *v14;
          operator delete(v14);
          v14 = v15;
        }

        while (v15);
      }

      v16 = v10[6];
      v10[6] = 0;
      if (v16)
      {
        operator delete(v16);
      }

      operator delete(v10);
      v10 = v13;
    }

    while (v13);
  }

  v11 = *a1;
  *a1 = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return a1;
}

void sub_D5B57C(uint64_t *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D5B6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_D5B6C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 552)
    {
      sub_F64510(&v14, i);
      v7 = a3[1];
      if (v7 >= a3[2])
      {
        v9 = sub_D5B804(a3, &v14);
        v10 = SHIBYTE(v17);
        a3[1] = v9;
        if (v10 < 0)
        {
          operator delete(__p);
          v11 = v14;
          if (v14)
          {
LABEL_10:
            v12 = *(&v14 + 1);
            v13 = v11;
            if (*(&v14 + 1) != v11)
            {
              do
              {
                v12 = sub_4547F0(v12 - 552);
              }

              while (v12 != v11);
              v13 = v14;
            }

            *(&v14 + 1) = v11;
            operator delete(v13);
          }
        }

        else
        {
          v11 = v14;
          if (v14)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = v14;
        *(v7 + 16) = v15;
        v15 = 0;
        v14 = 0uLL;
        v8 = v17;
        *(v7 + 24) = __p;
        *(v7 + 40) = v8;
        v17 = 0;
        __p = 0uLL;
        a3[1] = v7 + 48;
      }
    }
  }

  return a3;
}

uint64_t sub_D5B804(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 48 * v2;
  __p = 0;
  v17 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v6 + 24) = v7;
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v18 = 48 * v2 + 48;
  v19 = 0;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_17:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_17;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_D5B9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64x2_t sub_D5B9C0(uint64_t a1, unint64_t a2)
{
  v5 = (a1 + 72);
  v4 = *(a1 + 72);
  if (v4)
  {
    if (*(a1 + 56) == a2)
    {
      goto LABEL_7;
    }

    v6 = malloc_type_realloc(*(a1 + 72), 8 * a2, 0x100004000313F17uLL);
    if (!v6)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v4);
      exit(1);
    }
  }

  else
  {
    v6 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
  }

  *v5 = v6;
  v4 = v6;
LABEL_7:
  if (!a2)
  {
    goto LABEL_17;
  }

  v7 = &v4[8 * a2];
  v8 = (a1 + 64);
  v9 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v9 < 0xF)
  {
    v10 = v4;
    goto LABEL_16;
  }

  if (v4 < v5 && v8 < v7)
  {
    v10 = v4;
    do
    {
LABEL_16:
      *v10 = *v8;
      v10 += 8;
    }

    while (v10 != v7);
    goto LABEL_17;
  }

  v11 = v9 + 1;
  v12 = (v9 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v10 = &v4[8 * v12];
  v13 = vld1q_dup_f64(v8);
  v14 = (v4 + 16);
  v15 = v12;
  do
  {
    v14[-1] = v13;
    *v14 = v13;
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  if (v11 != v12)
  {
    goto LABEL_16;
  }

LABEL_17:
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

uint64x2_t sub_D5BB10(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 232);
  if (v4)
  {
    if (*(a1 + 136) == a2)
    {
      goto LABEL_7;
    }

    v5 = malloc_type_realloc(*(a1 + 232), 88 * a2, 0x1060040C48E6172uLL);
    if (!v5)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v4);
      exit(1);
    }
  }

  else
  {
    v5 = malloc_type_malloc(88 * a2, 0x1060040C48E6172uLL);
  }

  *(a1 + 232) = v5;
  v4 = v5;
LABEL_7:
  if (a2)
  {
    v6 = 88 * a2;
    do
    {
      v7 = *(a1 + 160);
      *v4 = *(a1 + 144);
      v4[1] = v7;
      v8 = *(a1 + 176);
      v9 = *(a1 + 192);
      v10 = *(a1 + 208);
      *(v4 + 10) = *(a1 + 224);
      v4[3] = v9;
      v4[4] = v10;
      v4[2] = v8;
      v4 = (v4 + 88);
      v6 -= 88;
    }

    while (v6);
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t *sub_D5BC20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 552)
    {
      sub_F64510(&v14, i);
      v7 = a3[1];
      if (v7 >= a3[2])
      {
        v9 = sub_D5B804(a3, &v14);
        v10 = SHIBYTE(v17);
        a3[1] = v9;
        if (v10 < 0)
        {
          operator delete(__p);
          v11 = v14;
          if (v14)
          {
LABEL_10:
            v12 = *(&v14 + 1);
            v13 = v11;
            if (*(&v14 + 1) != v11)
            {
              do
              {
                v12 = sub_4547F0(v12 - 552);
              }

              while (v12 != v11);
              v13 = v14;
            }

            *(&v14 + 1) = v11;
            operator delete(v13);
          }
        }

        else
        {
          v11 = v14;
          if (v14)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = v14;
        *(v7 + 16) = v15;
        v15 = 0;
        v14 = 0uLL;
        v8 = v17;
        *(v7 + 24) = __p;
        *(v7 + 40) = v8;
        v17 = 0;
        __p = 0uLL;
        a3[1] = v7 + 48;
      }
    }
  }

  return a3;
}

void *sub_D5BD60(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 5) < 0x2AAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      a4[3] = v5[3];
      v5 += 5;
      a4 += 4;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_D5BE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_93BDE0(&a9);
  _Unwind_Resume(a1);
}

_BYTE *sub_D5BEC0(uint64_t *a1, _BYTE *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return a2;
  }

  v5 = a1[1];
  v6 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3)) >= a5)
  {
    v11 = v5 - a2;
    if ((0xAAAAAAAAAAAAAAABLL * ((v5 - a2) >> 3)) < a5)
    {
      v12 = (a3 + v11);
      v13 = a1[1];
      if ((a3 + v11) == a4)
      {
        v14 = a1[1];
      }

      else
      {
        v34 = (a3 + v11);
        v14 = a1[1];
        do
        {
          v35 = *v34;
          *(v14 + 16) = *(v34 + 2);
          *v14 = v35;
          v14 += 24;
          v34 = (v34 + 24);
          v13 += 24;
        }

        while (v34 != a4);
      }

      a1[1] = v13;
      if (v11 >= 1)
      {
        v36 = &a2[24 * a5];
        v37 = v13 - 24 * a5;
        for (i = v13; v37 < v5; v37 += 24)
        {
          v39 = *v37;
          *(i + 16) = *(v37 + 16);
          *i = v39;
          i += 24;
        }

        a1[1] = i;
        if (v14 != v36)
        {
          v40 = 0;
          v41 = -24 * a5;
          do
          {
            v42 = v40 + v13;
            *(v42 - 24) = *(v41 + v13 - 24);
            *(v42 - 16) = *(v41 + v13 - 16);
            *(v42 - 8) = *(v41 + v13 - 8);
            v40 -= 24;
            v41 -= 24;
            v36 += 24;
          }

          while (v13 != v36);
        }

        v43 = a2;
        do
        {
          *v43 = *a3;
          *(v43 + 8) = *(a3 + 8);
          a3 = (a3 + 24);
          v43 += 24;
        }

        while (a3 != v12);
      }

      return a2;
    }

    v15 = &a2[24 * a5];
    v16 = v5 - 24 * a5;
    if (v16 >= v5)
    {
      a1[1] = v5;
      if (v5 == v15)
      {
LABEL_46:
        v46 = (a3 + 24 * a5);
        v47 = a2;
        do
        {
          *v47 = *a3;
          *(v47 + 8) = *(a3 + 8);
          a3 = (a3 + 24);
          v47 += 24;
        }

        while (a3 != v46);
        return a2;
      }
    }

    else
    {
      v17 = v5 - 24 * a5;
      v18 = a1[1];
      do
      {
        v19 = *v17;
        *(v18 + 16) = *(v17 + 16);
        *v18 = v19;
        v18 += 24;
        v17 += 24;
      }

      while (v17 < v5);
      a1[1] = v18;
      if (v5 == v15)
      {
        goto LABEL_46;
      }
    }

    v44 = 0;
    do
    {
      v45 = &v44[v5];
      *(v45 - 24) = v44[v16 - 24];
      *(v45 - 2) = *&v44[v16 - 16];
      *(v45 - 1) = *&v44[v16 - 8];
      v44 -= 24;
    }

    while (&a2[24 * a5 - v5] != v44);
    goto LABEL_46;
  }

  v7 = *a1;
  v8 = a5 - 0x5555555555555555 * ((v5 - *a1) >> 3);
  if (v8 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0x555555555555555)
  {
    v10 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v20 = 8 * ((a2 - v7) >> 3);
  v21 = 24 * a5;
  v22 = v20;
  do
  {
    v23 = *a3;
    *(v22 + 16) = *(a3 + 2);
    *v22 = v23;
    v22 += 24;
    a3 = (a3 + 24);
    v21 -= 24;
  }

  while (v21);
  v24 = a1[1];
  v25 = a2;
  if (v24 != a2)
  {
    v26 = a2;
    v27 = v20 + 24 * a5;
    do
    {
      v28 = *v26;
      *(v27 + 16) = *(v26 + 2);
      *v27 = v28;
      v27 += 24;
      v26 += 24;
    }

    while (v26 != v24);
    v25 = v24;
  }

  v29 = v20 + 24 * a5 + v25 - a2;
  a1[1] = a2;
  v30 = *a1;
  v31 = v20 + *a1 - a2;
  if (*a1 != a2)
  {
    v32 = v20 + *a1 - a2;
    do
    {
      v33 = *v30;
      *(v32 + 16) = *(v30 + 2);
      *v32 = v33;
      v32 += 24;
      v30 += 24;
    }

    while (v30 != a2);
    v30 = *a1;
  }

  *a1 = v31;
  a1[1] = v29;
  a1[2] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  return v20;
}

void sub_D5C278()
{
  byte_27B647F = 3;
  LODWORD(qword_27B6468) = 5136193;
  byte_27B6497 = 3;
  LODWORD(qword_27B6480) = 5136194;
  byte_27B64AF = 3;
  LODWORD(qword_27B6498) = 5136195;
  byte_27B64C7 = 15;
  strcpy(&qword_27B64B0, "vehicle_mass_kg");
  byte_27B64DF = 21;
  strcpy(&xmmword_27B64C8, "vehicle_cargo_mass_kg");
  byte_27B64F7 = 19;
  strcpy(&qword_27B64E0, "vehicle_aux_power_w");
  byte_27B650F = 15;
  strcpy(&qword_27B64F8, "dcdc_efficiency");
  strcpy(&qword_27B6510, "drive_train_efficiency");
  HIBYTE(word_27B6526) = 22;
  operator new();
}

void sub_D5C454(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27B6526) < 0)
  {
    sub_21E4584();
  }

  sub_21E4590();
  _Unwind_Resume(a1);
}

void sub_D5C474(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v64 = sub_3AF6B4(a1);
  sub_4C6594(*(a2 + 8), &v86);
  v78 = v86;
  v79 = v87;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  if (v89 != v88)
  {
    if (((v89 - v88) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v83 = 0;
  v84 = 0;
  v85 = 0;
  v65 = a3;
  if (v91 != v90)
  {
    if (((v91 - v90) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = 0;
  v6 = 0;
  v70 = v92;
  v71 = v93;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  if (v95 != v94)
  {
    if (((v95 - v94) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v75 = 0;
  v76 = 0;
  v77 = 0;
  if (v97 != v96)
  {
    if (((v97 - v96) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    if (v6 == v5 || v8 == v7)
    {
      if ((v6 == v5) == (v8 == v7))
      {
        goto LABEL_89;
      }

      v10 = v78;
      goto LABEL_25;
    }

    v10 = v78;
    if (v79 != v71)
    {
      goto LABEL_25;
    }

    if (v78)
    {
      v11 = *(&v78 + 1);
      v12 = v78;
      v13 = sub_4D1DC0(v78);
      v14 = v11 < v13;
      v15 = v70;
      if (!v70)
      {
        v16 = v11 >= v13;
        v10 = v12;
        if (v16)
        {
          goto LABEL_89;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v15 = v70;
      if (!v70)
      {
        goto LABEL_89;
      }

      v12 = v78;
      v14 = 0;
    }

    v58 = *(&v70 + 1);
    v59 = sub_4D1DC0(v15);
    if (v58 >= v59 || !v14)
    {
      break;
    }

    v61 = sub_4D1F50(v12, *(&v78 + 1));
    v62 = v61 == sub_4D1F50(v15, v58);
    v10 = v12;
    if (v62)
    {
      goto LABEL_89;
    }

LABEL_25:
    v17 = sub_4D1F50(v10, *(&v78 + 1));
    sub_2B7A20(v64, (((*(v17 + 36) & 0x20000000) << 19) | (*(v17 + 36) << 32) | *(v17 + 32)) ^ 0x1000000000000, &v66);
    if (!v69)
    {
      if (__p == v68)
      {
        v104 = 0u;
        v105 = 0u;
        v30 = &v102;
        v102 = 0u;
        v103 = 0u;
      }

      else
      {
        v24 = *(v68 - 1);
        v25 = sub_2B4D24(v66, v24, 0);
        v26 = &v25[*&v25[-*v25 + 4]];
        v27 = &v26[4 * HIDWORD(v24) + *v26];
        v28 = (v27 + 4 + *(v27 + 4));
        v29 = (v28 + *(v28 - *v28 + 6));
        LODWORD(v29) = *(v29 + *v29) - 1;
        *&v102 = v66;
        *(&v102 + 1) = &__p;
        v103 = 0u;
        v104 = 0u;
        LODWORD(v105) = ((v68 - __p) >> 3) - 1;
        DWORD1(v105) = v29;
        BYTE8(v105) = 0;
        sub_318EF0(&v102);
        v30 = &v102;
      }

      goto LABEL_48;
    }

    if (__p == v68)
    {
      v100 = 0u;
      v101 = 0u;
      v30 = &v98;
      v98 = 0u;
      v99 = 0u;
      goto LABEL_48;
    }

    *&v98 = v66;
    *(&v98 + 1) = &__p;
    v99 = 0u;
    v100 = 0u;
    *&v101 = 0;
    BYTE8(v101) = 1;
    v18 = *__p;
    DWORD2(v100) = *__p;
    v19 = sub_2B4D24(v66, v18, 0);
    v20 = &v19[-*v19];
    if (*v20 < 7u)
    {
      HIDWORD(v100) = 0;
      v22 = &v19[-*v19];
      if (*v22 >= 5u)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v21 = *(v20 + 3);
      if (v21)
      {
        LODWORD(v21) = *&v19[v21];
      }

      HIDWORD(v100) = v21;
      v22 = &v19[-*v19];
      if (*v22 >= 5u)
      {
LABEL_31:
        v23 = *(v22 + 2);
        if (v23)
        {
          v23 += &v19[*&v19[v23]];
        }

        goto LABEL_38;
      }
    }

    v23 = 0;
LABEL_38:
    v31 = (v23 + 4 * HIDWORD(v18) + 4 + *(v23 + 4 * HIDWORD(v18) + 4));
    *&v99 = v31;
    v32 = (v31 - *v31);
    v33 = *v32;
    if (v33 <= 6)
    {
      v36 = 0;
      *(&v99 + 1) = 0;
    }

    else
    {
      v34 = v32[3];
      if (v32[3])
      {
        v34 += v31 + *(v31 + v34);
      }

      *(&v99 + 1) = v34;
      if (v33 >= 0xB && (v35 = v32[5]) != 0)
      {
        v36 = v31 + v35 + *(v31 + v35);
      }

      else
      {
        v36 = 0;
      }
    }

    *&v100 = v36;
    v30 = &v98;
LABEL_48:
    v37 = sub_318DA8(v30);
    v39 = v65[2];
    if (v9 >= v39)
    {
      v40 = *v65;
      v41 = v9 - *v65;
      v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 2) + 1;
      if (v42 > 0x1555555555555555)
      {
        sub_1794();
      }

      v43 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v40) >> 2);
      if (2 * v43 > v42)
      {
        v42 = 2 * v43;
      }

      if (v43 >= 0xAAAAAAAAAAAAAAALL)
      {
        v44 = 0x1555555555555555;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        if (v44 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v45 = 4 * (v41 >> 2);
      *v45 = v37;
      *(v45 + 8) = v38;
      v9 = (v45 + 12);
      memcpy((v45 - v41), v40, v41);
      *v65 = (4 * (v41 >> 2) - v41);
      v65[1] = v9;
      v65[2] = 0;
      if (v40)
      {
        operator delete(v40);
      }
    }

    else
    {
      *v9 = v37;
      *(v9 + 2) = v38;
      v9 += 12;
    }

    v65[1] = v9;
    if (__p)
    {
      v68 = __p;
      operator delete(__p);
    }

    v46 = v79;
    ++*(&v78 + 1);
    v6 = v83;
    v5 = v84;
    v47 = ((v84 - v83) >> 4) - 1;
    if (v79 < v47)
    {
      v48 = 16 * v79;
      do
      {
        v49 = v78;
        if (v78)
        {
          v50 = *(&v78 + 1);
          v51 = sub_4D1DC0(v78);
          v52 = v50 < v51;
          v53 = *&v6[v48];
          if (!v53)
          {
            if (v50 < v51)
            {
              break;
            }

            goto LABEL_66;
          }
        }

        else
        {
          v53 = *&v6[v48];
          if (!v53)
          {
            goto LABEL_66;
          }

          v52 = 0;
        }

        v54 = *&v6[v48 + 8];
        v55 = sub_4D1DC0(v53);
        if (v54 < v55 && v52)
        {
          v57 = sub_4D1F50(v49, *(&v78 + 1));
          if (v57 != sub_4D1F50(*&v6[v48], *&v6[v48 + 8]))
          {
            break;
          }
        }

        else if ((v52 ^ (v54 < v55)))
        {
          break;
        }

LABEL_66:
        v79 = ++v46;
        v78 = *(v80 + v48 + 16);
        v48 += 16;
      }

      while (v46 < v47);
    }

    v8 = v75;
    v7 = v76;
  }

  v63 = v58 < v59;
  v10 = v12;
  if ((v14 ^ v63))
  {
    goto LABEL_25;
  }

LABEL_89:
  if (v8)
  {
    v76 = v8;
    operator delete(v8);
  }

  if (v72)
  {
    operator delete(v72);
  }

  if (v83)
  {
    operator delete(v83);
  }

  if (v80)
  {
    operator delete(v80);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }
}

void sub_D5CC58(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (v31)
  {
    operator delete(v31);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

void sub_D5CCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_3DB674(&a17);
  sub_3DB674(&a27);
  sub_3DB6B8(&a37);
  v38 = *a11;
  if (*a11)
  {
    *(a11 + 8) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

double sub_D5CD04(double *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1[1] != 0.0)
  {
    operator new();
  }

  v6 = a1[2];
  if (v6 != 0.0)
  {
    operator new();
  }

  if (a1[3] != 0.0)
  {
    v7 = sub_4D1DB8(*a2);
    vcvtd_n_f64_s64(sub_4D1DB8(*a3) + v7, 1uLL);
    v8 = a3[1];
    v10 = 0x7FFFFFFFFFFFFFFELL;
    sub_119D628(a4, v8, &v10);
    operator new();
  }

  return 0.0;
}

void sub_D5D144(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_D5D16C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 210) != 1)
  {
    return;
  }

  v5 = a1;
  HIBYTE(v52[2]) = 19;
  strcpy(v52, "WalkingRouteScoring");
  v49[0] = 0;
  v49[1] = 0;
  v50[0] = 0;
  v6 = sub_3AEC94(a1, v52, v49);
  HIBYTE(v57) = 8;
  strcpy(&__p, "standard");
  sub_115F014(v58, v6, &__p);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p);
  }

  v7 = v49[0];
  if (v49[0])
  {
    v8 = v49[1];
    v9 = v49[0];
    if (v49[1] != v49[0])
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v49[0];
    }

    v49[1] = v7;
    operator delete(v9);
  }

  if (SHIBYTE(v52[2]) < 0)
  {
    operator delete(v52[0]);
    if (v60 != 0.0)
    {
      goto LABEL_17;
    }

LABEL_16:
    if (v59 == 0.0)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v60 == 0.0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v12 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    v46 = v5;
    v45 = a3[1];
    while (1)
    {
      v13 = *v12;
      v14 = sub_3AF6B4(v5);
      sub_4CC1B0(v13, a2 + 48, (a2 + 64), v14, v52);
      if (!sub_4C9C6C(v52))
      {
        break;
      }

LABEL_78:
      if (v55)
      {
        operator delete(v55);
      }

      if (v53)
      {
        v54 = v53;
        operator delete(v53);
      }

      if (v52[0])
      {
        v52[1] = v52[0];
        operator delete(v52[0]);
      }

      v12 += 240;
      if (v12 == v11)
      {
        return;
      }
    }

    *v49 = 0u;
    *v50 = 0u;
    v51 = 1065353216;
    __p = 0uLL;
    v57 = 0;
    if (v52[1] != v52[0])
    {
      v15 = 0;
      v16 = 0;
      v47 = (v52[1] - v52[0]) >> 4;
      do
      {
        v17 = sub_61B864(&v55, v16);
        if ((*v17 & v18) != 0)
        {
          operator new();
        }

        ++v16;
        v15 += 16;
      }

      while (v47 != v16);
    }

    v19 = 0;
    do
    {
      v20 = v19;
      v21 = 16 * v19++;
      v22 = *v21;
      v23 = *(16 * v19) - *v21;
      LODWORD(v22) = *(a2 + 44);
      if (v23 >= v22)
      {
        v24 = v23 <= 0.0 ? 0.0 : (*&dword_8[4 * v19] - *(v21 + 8)) / v23;
        if (v24 >= *(a2 + 104) || v24 <= -*(a2 + 160))
        {
          if ((v25 = *sub_61BDB0(&__p, v20), *(a2 + 48) != 1) || (v26 = sub_4D1F50(v13, v25), v27 = (*v26 - **v26), *v27 < 0x2Fu) || (v28 = v27[23]) == 0 || ((v29 = *(*v26 + v28), v29 != 9) ? (v30 = v29 == 20) : (v30 = 1), !v30))
          {
            v31 = *sub_61BDB0(&__p, v19);
            v32 = v25 <= v31 + 1 ? v31 + 1 : v25;
            if (v25 < v31 + 1)
            {
              do
              {
                v48 = v25;
                if (v49[1])
                {
                  v33 = vcnt_s8(v49[1]);
                  v33.i16[0] = vaddlv_u8(v33);
                  if (v33.u32[0] > 1uLL)
                  {
                    v34 = v25;
                    if (v25 >= v49[1])
                    {
                      v34 = v25 % v49[1];
                    }
                  }

                  else
                  {
                    v34 = (v49[1] - 1) & v25;
                  }

                  v35 = *(v49[0] + v34);
                  if (v35)
                  {
                    v36 = *v35;
                    if (v36)
                    {
                      if (v33.u32[0] < 2uLL)
                      {
                        while (1)
                        {
                          v37 = v36[1];
                          if (v25 == v37)
                          {
                            if (v36[2] == v25)
                            {
                              goto LABEL_66;
                            }
                          }

                          else if ((v37 & (v49[1] - 1)) != v34)
                          {
                            goto LABEL_65;
                          }

                          v36 = *v36;
                          if (!v36)
                          {
                            goto LABEL_65;
                          }
                        }
                      }

                      do
                      {
                        v38 = v36[1];
                        if (v25 == v38)
                        {
                          if (v36[2] == v25)
                          {
                            goto LABEL_66;
                          }
                        }

                        else
                        {
                          if (v38 >= v49[1])
                          {
                            v38 %= v49[1];
                          }

                          if (v38 != v34)
                          {
                            break;
                          }
                        }

                        v36 = *v36;
                      }

                      while (v36);
                    }
                  }
                }

LABEL_65:
                *(v12 + 120) = *(v12 + 120) + sub_4D2720(v13, v25, 0);
                sub_7E6F6C(v49, &v48, &v48);
LABEL_66:
                ++v25;
              }

              while (v25 != v32);
            }
          }
        }
      }
    }

    while (v19 != -1);
    v39 = *(v12 + 120);
    if (v39 <= 0.0)
    {
      *(v12 + 232) = *(v12 + 232) + v39 * v59;
      v41 = __p;
      if (!__p)
      {
LABEL_73:
        v42 = v50[0];
        if (v50[0])
        {
          do
          {
            v43 = *v42;
            operator delete(v42);
            v42 = v43;
          }

          while (v43);
        }

        v44 = v49[0];
        v49[0] = 0;
        v5 = v46;
        if (v44)
        {
          operator delete(v44);
        }

        v11 = v45;
        goto LABEL_78;
      }
    }

    else
    {
      v40 = v60 + *(v12 + 232);
      *(v12 + 232) = v40;
      *(v12 + 232) = v40 + v39 * v59;
      v41 = __p;
      if (!__p)
      {
        goto LABEL_73;
      }
    }

    *(&__p + 1) = v41;
    operator delete(v41);
    goto LABEL_73;
  }
}

void sub_D5D82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a15);
  if (a26 < 0)
  {
    operator delete(a21);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_D5D8C8(uint64_t a1, uint64_t *a2)
{
  HIBYTE(v14[2]) = 19;
  strcpy(v14, "WalkingRouteScoring");
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v3 = sub_3AEC94(a1, v14, &v11);
  v10 = 8;
  strcpy(__p, "standard");
  sub_115F014(v15, v3, __p);
  sub_115F018(v16, v15);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v11;
  if (v11)
  {
    v5 = v12;
    v6 = v11;
    if (v12 != v11)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v11;
    }

    v12 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v14[2]) < 0)
  {
    operator delete(v14[0]);
  }

  return sub_115F020(v16, a2);
}

void sub_D5D9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_1A104(&a15);
  if ((a23 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_D5DA48(uint64_t result, void *a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 4) < 2)
  {
    return result;
  }

  v3 = *(*a2 + 16);
  if (v3 < 0.0)
  {
    v4 = result;
    v5 = sub_7E7E4(1u);
    result = v4;
    if (v5)
    {
      sub_19594F8(&v37);
      v6 = sub_4A5C(&v37, "[WalkingRouteSelectionModule] Best score found is negative for request: ", 72);
      v7 = sub_74700();
      v8 = sub_73F1C(v7);
      v9 = *(v8 + 23);
      if (v9 >= 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = *v8;
      }

      if (v9 >= 0)
      {
        v11 = *(v8 + 23);
      }

      else
      {
        v11 = *(v8 + 8);
      }

      sub_4A5C(v6, v10, v11);
      if ((v47 & 0x10) != 0)
      {
        v13 = v46;
        if (v46 < v43)
        {
          v46 = v43;
          v13 = v43;
        }

        v14 = v42;
        v12 = v13 - v42;
        if (v13 - v42 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if ((v47 & 8) == 0)
        {
          v12 = 0;
          v36 = 0;
LABEL_21:
          *(&__p + v12) = 0;
          sub_7E854(&__p, 1u);
          if (v36 < 0)
          {
            operator delete(__p);
          }

          if (v45 < 0)
          {
            operator delete(v44);
          }

          std::locale::~locale(&v39);
          std::ostream::~ostream();
          std::ios::~ios();
          result = v4;
          goto LABEL_26;
        }

        v14 = v40;
        v12 = v41 - v40;
        if ((v41 - v40) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_48:
          sub_3244();
        }
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v36 = v12;
      if (v12)
      {
        memmove(&__p, v14, v12);
      }

      goto LABEL_21;
    }
  }

LABEL_26:
  v16 = *a2;
  v15 = a2[1];
  if (*a2 != v15)
  {
    v17 = *(result + 32);
    v18 = 2.0 - v17;
    if (v3 < 0.0)
    {
      v17 = 2.0 - v17;
    }

    v19 = v3 * v17;
    LODWORD(v18) = *(result + 40);
    v20 = v3 + *&v18;
    while (1)
    {
      *&v21 = *(v16 + 16);
      if (v19 < *&v21 || v20 < *&v21)
      {
        break;
      }

      v16 += 240;
      if (v16 == v15)
      {
        return result;
      }
    }

    if (v16 != v15)
    {
      v23 = (v16 + 240);
      if ((v16 + 240) != v15)
      {
        do
        {
          v24 = v23[2];
          if (v19 >= v24)
          {
            LODWORD(v21) = *(result + 40);
            *&v21 = v3 + v21;
            if (*&v21 >= v24)
            {
              v25 = *v23;
              v26 = *(v23 + 2);
              *(v16 + 16) = *(v23 + 1);
              *(v16 + 32) = v26;
              *v16 = v25;
              v27 = *(v23 + 3);
              v28 = *(v23 + 4);
              v29 = *(v23 + 6);
              *(v16 + 80) = *(v23 + 5);
              *(v16 + 96) = v29;
              *(v16 + 48) = v27;
              *(v16 + 64) = v28;
              v30 = *(v23 + 7);
              v31 = *(v23 + 8);
              v32 = *(v23 + 10);
              *(v16 + 144) = *(v23 + 9);
              *(v16 + 160) = v32;
              *(v16 + 112) = v30;
              *(v16 + 128) = v31;
              v33 = *(v23 + 11);
              v21 = *(v23 + 12);
              v34 = *(v23 + 14);
              *(v16 + 208) = *(v23 + 13);
              *(v16 + 224) = v34;
              *(v16 + 176) = v33;
              *(v16 + 192) = v21;
              v16 += 240;
            }
          }

          v23 += 30;
        }

        while (v23 != v15);
        v15 = a2[1];
      }
    }
  }

  if (v16 != v15)
  {
    a2[1] = v16;
  }

  return result;
}

void sub_D5DE18(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_D5DE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  if (0xEEEEEEEEEEEEEEEFLL * ((*(a3 + 8) - *a3) >> 4) >= 2)
  {
    v15 = v3[11];
    v16 = v3[12];
    v17 = v3[13];
    v18 = v3[14];
    v11 = v3[7];
    v12 = v3[8];
    v13 = v3[9];
    v14 = v3[10];
    v7 = v3[3];
    v8 = v3[4];
    v9 = v3[5];
    v10 = v3[6];
    *v4 = *v3;
    v5 = v3[1];
    *v6 = v3[2];
    operator new();
  }
}

void sub_D5E388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (__p)
  {
    operator delete(__p);
  }

  sub_34BE0(&a15);
  sub_D5EE2C(va);
  if (a18)
  {
    a19 = a18;
    operator delete(a18);
    if (!v20)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_5;
  }

  operator delete(v20);
  _Unwind_Resume(a1);
}

unint64_t sub_D5E428(void *a1, unint64_t a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4));
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

  return *a1 + 240 * a2;
}

void sub_D5E564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_D5E644(uint64_t a1, uint64_t a2, void *a3)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((a3[1] - *a3) >> 4) >= 2)
  {
    operator new();
  }
}

void sub_D5EDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_D5FAE0(va);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void *sub_D5EE2C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = a1[2];
    v5 = a1[1];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 8);
        if (v6)
        {
          free(v6);
        }

        v4 -= 80;
      }

      while (v4 != v3);
      v5 = a1[1];
    }

    a1[2] = v3;
    operator delete(v5);
  }

  return a1;
}

uint64_t *sub_D5EEAC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = result[1];
  v4 = v3 - *result;
  if (v3 != *result)
  {
    v5 = result;
    v6 = sub_D52C40(a2, (*result + 8));
    *(a2 + 8) = v6;
    result = sub_4C515C(v6 - 128, 0);
    if (v4 != 240)
    {
      v7 = 0xEEEEEEEEEEEEEEEFLL * (v4 >> 4) - 1;
      v8 = 248;
      do
      {
        v9 = *v5;
        v10 = *(a2 + 8);
        if (v10 >= *(a2 + 16))
        {
          v11 = sub_D52C40(a2, (v9 + v8));
        }

        else
        {
          sub_D52DF8(*(a2 + 8), (v9 + v8));
          v11 = (v10 + 128);
        }

        *(a2 + 8) = v11;
        result = sub_4C515C(v11 - 128, 2);
        v8 += 240;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

void sub_D5EF90(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_60A84C(v1);
  _Unwind_Resume(a1);
}

void sub_D5EFBC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = (v5 - *a3) >> 7;
  if (v7 < 2 || *a2 == 1)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;

    sub_D531CC(a4, v6, v5, v7);
  }

  else
  {
    __p = 0;
    v27 = 0;
    v28 = 0;
    if (v5 != v6)
    {
      if (v7 < 0x111111111111112)
      {
        operator new();
      }

      sub_1794();
    }

    sub_115B784(v29, a1);
    sub_115B904(v29, (a2 + 200), &__p);
    sub_D5D8C8(a1, &__p);
    v10 = __p;
    v11 = v27;
    v12 = 0xEEEEEEEEEEEEEEEFLL * ((v27 - __p) >> 4);
    if (v27 - __p < 30721)
    {
      v17 = 0;
      v13 = 0;
    }

    else
    {
      v13 = 0xEEEEEEEEEEEEEEEFLL * ((v27 - __p) >> 4);
      while (1)
      {
        v14 = operator new(240 * v13, &std::nothrow);
        if (v14)
        {
          break;
        }

        v15 = v13 >> 1;
        v16 = v13 > 1;
        v13 >>= 1;
        if (!v16)
        {
          v17 = 0;
          v13 = v15;
          goto LABEL_16;
        }
      }

      v17 = v14;
    }

LABEL_16:
    sub_D5FC7C(v10, v11, v12, v17, v13);
    if (v17)
    {
      operator delete(v17);
    }

    v18 = *(a2 + 4);
    if (v18 == 1)
    {
      sub_D5E644(a1, a2, &__p);
    }

    else if (!v18)
    {
      sub_D5DA48(a2, &__p);
      sub_D5DE5C(a1, a2, &__p);
    }

    sub_D5D16C(a1, a2, &__p);
    v19 = __p;
    v20 = v27;
    v21 = 0xEEEEEEEEEEEEEEEFLL * ((v27 - __p) >> 4);
    if (v27 - __p < 30721)
    {
      v25 = 0;
      v22 = 0;
    }

    else
    {
      v22 = 0xEEEEEEEEEEEEEEEFLL * ((v27 - __p) >> 4);
      while (1)
      {
        v23 = operator new(240 * v22, &std::nothrow);
        if (v23)
        {
          break;
        }

        v24 = v22 >> 1;
        v16 = v22 > 1;
        v22 >>= 1;
        if (!v16)
        {
          v25 = 0;
          v22 = v24;
          goto LABEL_29;
        }
      }

      v25 = v23;
    }

LABEL_29:
    sub_D61030(v19, v20, v21, v25, v22);
    if (v25)
    {
      operator delete(v25);
    }

    sub_D5EEAC(&__p, a4);
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }
}

void sub_D5F2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_D5F32C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v53);
  memset(v52, 0, 40);
  v3 = **a1;
  v4 = *(*a1 + 8);
  if (v3 != v4)
  {
    v47 = a1;
    v48 = *(*a1 + 8);
    do
    {
      sub_D5EFBC(*(a1 + 8), a1 + 24, v3, __p);
      v5 = *(&v52[0] + 1);
      if (*(&v52[0] + 1) < *&v52[1])
      {
        **(&v52[0] + 1) = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *v5 = *__p;
        *(v5 + 16) = v51;
        *(&v52[0] + 1) = v5 + 24;
      }

      else
      {
        v6.n128_f64[0] = sub_D3B140(v52, __p);
        v7 = __p[0];
        *(&v52[0] + 1) = v8;
        if (__p[0])
        {
          v49 = v3;
          v9 = __p[1];
          v10 = __p[0];
          if (__p[1] == __p[0])
          {
LABEL_37:
            __p[1] = v7;
            operator delete(v10);
            v4 = v48;
            v3 = v49;
            goto LABEL_4;
          }

          while (2)
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 3));
              v12 = *(v9 - 13);
              if (v12)
              {
                goto LABEL_17;
              }

LABEL_14:
              v13 = v9 - 16;
              v14 = *(v9 - 16);
              if (v14)
              {
LABEL_21:
                v17 = *(v9 - 15);
                v11 = v14;
                if (v17 != v14)
                {
                  do
                  {
                    v18 = *(v17 - 3);
                    if (v18)
                    {
                      v19 = *(v17 - 2);
                      v20 = *(v17 - 3);
                      if (v19 != v18)
                      {
                        do
                        {
                          v21 = v19 - 32;
                          v22 = *(v19 - 2);
                          if (v22 != -1)
                          {
                            (off_2673CA8[v22])(&v54, v19 - 32, v6);
                          }

                          *(v19 - 2) = -1;
                          v19 -= 32;
                        }

                        while (v21 != v18);
                        v20 = *(v17 - 3);
                      }

                      *(v17 - 2) = v18;
                      operator delete(v20);
                    }

                    v23 = *(v17 - 8);
                    if (v23 != -1)
                    {
                      (off_2673CA8[v23])(&v54, v17 - 7, v6);
                    }

                    v24 = v17 - 10;
                    *(v17 - 8) = -1;
                    if (*(v17 - 57) < 0)
                    {
                      operator delete(*v24);
                    }

                    v17 -= 10;
                  }

                  while (v24 != v14);
                  v11 = *v13;
                }

                *(v9 - 15) = v14;
                operator delete(v11);
              }
            }

            else
            {
              v12 = *(v9 - 13);
              if (!v12)
              {
                goto LABEL_14;
              }

LABEL_17:
              v15 = *(v9 - 12);
              v16 = v12;
              if (v15 != v12)
              {
                do
                {
                  v15 = sub_3EEA68(v15 - 1096);
                }

                while (v15 != v12);
                v16 = *(v9 - 13);
              }

              *(v9 - 12) = v12;
              operator delete(v16);
              v13 = v9 - 16;
              v14 = *(v9 - 16);
              if (v14)
              {
                goto LABEL_21;
              }
            }

            v9 = v13;
            if (v13 == v7)
            {
              v10 = __p[0];
              a1 = v47;
              goto LABEL_37;
            }

            continue;
          }
        }
      }

LABEL_4:
      v3 += 3;
    }

    while (v3 != v4);
  }

  v25 = sub_4EDB30(*(a1 + 16));
  v27 = *(&v52[0] + 1);
  v26 = *&v52[0];
  if (*&v52[0] != *(&v52[0] + 1))
  {
    v28 = v25;
    v29 = **&v52[0];
    v30 = *(*&v52[0] + 8);
    if (**&v52[0] != v30)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v26 += 3;
      if (v26 == v27)
      {
        break;
      }

      v29 = *v26;
      v30 = v26[1];
      if (*v26 != v30)
      {
        do
        {
LABEL_42:
          sub_4C516C(v29, v28++);
          v29 += 128;
        }

        while (v29 != v30);
      }
    }
  }

  *(&v52[1] + 1) = sub_7EA60(v53);
  v31 = v52[0];
  if (*&v52[0] == *(&v52[0] + 1))
  {
    v35 = 0.0;
  }

  else
  {
    v32 = *(&v52[0] + 1) - *&v52[0] - 24;
    if (v32 >= 0x60)
    {
      v36 = v32 / 0x18 + 1;
      v37 = v36 & 3;
      if ((v36 & 3) == 0)
      {
        v37 = 4;
      }

      v38 = v36 - v37;
      v34 = (*&v52[0] + 24 * v38);
      v39 = 0uLL;
      v40 = *&v52[0];
      v41 = 0uLL;
      do
      {
        v42 = v40;
        v40 += 12;
        v55 = vld3q_f64(v42);
        v42 += 6;
        v39 = vsraq_n_s64(v39, vsubq_s64(v55.val[1], v55.val[0]), 7uLL);
        v56 = vld3q_f64(v42);
        v41 = vsraq_n_s64(v41, vsubq_s64(v56.val[1], v56.val[0]), 7uLL);
        v38 -= 4;
      }

      while (v38);
      v33 = vaddvq_s64(vaddq_s64(v41, v39));
    }

    else
    {
      v33 = 0;
      v34 = *&v52[0];
    }

    do
    {
      v43 = *v34;
      v44 = v34[1];
      v34 += 3;
      v33 += (v44 - v43) >> 7;
    }

    while (v34 != *(&v52[0] + 1));
    v35 = (v33 / (0xAAAAAAAAAAAAAAABLL * ((*(&v52[0] + 1) - *&v52[0]) >> 3)));
  }

  *&v52[2] = v35;
  *a2 = 1;
  *(a2 + 8) = v31;
  *(a2 + 24) = *&v52[1];
  result = *(&v52[1] + 1);
  *(a2 + 32) = *(&v52[1] + 8);
  return result;
}

void sub_D5F6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_CDFC14(va);
  _Unwind_Resume(a1);
}

void sub_D5F6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, char *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_60A84C(va);
  sub_CDFC14(va1);
  _Unwind_Resume(a1);
}

void sub_D5F704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_CDFC14(va);
  _Unwind_Resume(a1);
}

void sub_D5F718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_CDFC14(va);
  _Unwind_Resume(a1);
}

char **sub_D5F734(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5)
        {
          free(v5);
        }

        v3 -= 80;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

double sub_D5F7A4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 8 * ((a1[1] - *a1) >> 3);
  v6 = *(a2 + 16);
  *v12 = *a2;
  *(v12 + 16) = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v12 + 32) = *(a2 + 32);
  *(v12 + 48) = *(a2 + 48);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v7 = a1[1];
  v8 = (56 * v2 + *a1 - v7);
  sub_D5F910(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = (56 * v2 + 56);
  *(a1 + 1) = v10;
  if (v9)
  {
    operator delete(v9);
    *&v10 = 56 * v2 + 56;
  }

  return *&v10;
}

void sub_D5F8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_D5FA04(va);
  _Unwind_Resume(a1);
}

void sub_D5F910(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v6 + 1);
      a4[3] = v6[3];
      v6[1] = 0;
      v6[2] = 0;
      v6[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      a4[6] = 0;
      *(a4 + 2) = *(v6 + 2);
      a4[6] = v6[6];
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
      v6 += 7;
      a4 += 7;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = v5[4];
      if (v8)
      {
        v5[5] = v8;
        operator delete(v8);
      }

      v9 = v5[1];
      if (v9)
      {
        v10 = v5[2];
        v7 = v5[1];
        if (v10 != v9)
        {
          do
          {
            v11 = *(v10 - 8);
            if (v11)
            {
              free(v11);
            }

            v10 -= 80;
          }

          while (v10 != v9);
          v7 = v5[1];
        }

        v5[2] = v9;
        operator delete(v7);
      }

      v5 += 7;
    }
  }
}

void **sub_D5FA04(void **a1)
{
  sub_D5FA38(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_D5FA38(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *(i - 48);
    if (v6)
    {
      v7 = *(i - 40);
      v4 = *(i - 48);
      if (v7 != v6)
      {
        do
        {
          v8 = *(v7 - 8);
          if (v8)
          {
            free(v8);
          }

          v7 -= 80;
        }

        while (v7 != v6);
        v4 = *(i - 48);
      }

      *(i - 40) = v6;
      operator delete(v4);
    }
  }
}

char **sub_D5FAE0(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 3);
        if (v6)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 6);
        if (v7)
        {
          v8 = *(v3 - 5);
          v5 = *(v3 - 6);
          if (v8 != v7)
          {
            do
            {
              v9 = *(v8 - 8);
              if (v9)
              {
                free(v9);
              }

              v8 -= 80;
            }

            while (v8 != v7);
            v5 = *(v3 - 6);
          }

          *(v3 - 5) = v7;
          operator delete(v5);
        }

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_D5FB9C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *(v4 - 3);
        if (v7)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v8 = *(v4 - 6);
        if (v8)
        {
          v9 = *(v4 - 5);
          v6 = *(v4 - 6);
          if (v9 != v8)
          {
            do
            {
              v10 = *(v9 - 8);
              if (v10)
              {
                free(v10);
              }

              v9 -= 80;
            }

            while (v9 != v8);
            v6 = *(v4 - 6);
          }

          *(v4 - 5) = v8;
          operator delete(v6);
        }

        v4 -= 56;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double *sub_D5FC7C(double *result, double *a2, unint64_t a3, double *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      if (*(a2 - 28) < result[2])
      {
        v112 = *(result + 12);
        v114 = *(result + 13);
        v116 = *(result + 14);
        v104 = *(result + 8);
        v106 = *(result + 9);
        v108 = *(result + 10);
        v110 = *(result + 11);
        v96 = *(result + 4);
        v98 = *(result + 5);
        v100 = *(result + 6);
        v102 = *(result + 7);
        v88 = *result;
        v90 = *(result + 1);
        v92 = *(result + 2);
        v94 = *(result + 3);
        v5 = *(a2 - 15);
        v6 = *(a2 - 13);
        *(result + 1) = *(a2 - 14);
        *(result + 2) = v6;
        *result = v5;
        v7 = *(a2 - 12);
        v8 = *(a2 - 11);
        v9 = *(a2 - 9);
        *(result + 5) = *(a2 - 10);
        *(result + 6) = v9;
        *(result + 3) = v7;
        *(result + 4) = v8;
        v10 = *(a2 - 8);
        v11 = *(a2 - 7);
        v12 = *(a2 - 5);
        *(result + 9) = *(a2 - 6);
        *(result + 10) = v12;
        *(result + 7) = v10;
        *(result + 8) = v11;
        v13 = *(a2 - 4);
        v14 = *(a2 - 3);
        v15 = *(a2 - 1);
        *(result + 13) = *(a2 - 2);
        *(result + 14) = v15;
        *(result + 11) = v13;
        *(result + 12) = v14;
        *(a2 - 3) = v112;
        *(a2 - 2) = v114;
        *(a2 - 1) = v116;
        *(a2 - 7) = v104;
        *(a2 - 6) = v106;
        *(a2 - 5) = v108;
        *(a2 - 4) = v110;
        *(a2 - 11) = v96;
        *(a2 - 10) = v98;
        *(a2 - 9) = v100;
        *(a2 - 8) = v102;
        *(a2 - 15) = v88;
        *(a2 - 14) = v90;
        *(a2 - 13) = v92;
        *(a2 - 12) = v94;
      }
    }

    else if (a3 > 128)
    {
      v32 = a3 >> 1;
      v33 = &result[30 * (a3 >> 1)];
      v34 = a3 - (a3 >> 1);
      v35 = result;
      if (a3 <= a5)
      {
        v39 = a4;
        sub_D6018C(result, v33, a3 >> 1, a4);
        v40 = &v39[30 * v32];
        result = sub_D6018C(v33, a2, v34, v40);
        v41 = &v39[30 * a3];
        v42 = v40;
        while (v42 != v41)
        {
          if (v42[2] >= v39[2])
          {
            v43 = *v39;
            v44 = *(v39 + 2);
            *(v35 + 1) = *(v39 + 1);
            *(v35 + 2) = v44;
            *v35 = v43;
            v45 = *(v39 + 3);
            v46 = *(v39 + 4);
            v47 = *(v39 + 6);
            *(v35 + 5) = *(v39 + 5);
            *(v35 + 6) = v47;
            *(v35 + 3) = v45;
            *(v35 + 4) = v46;
            v48 = *(v39 + 7);
            v49 = *(v39 + 8);
            v50 = *(v39 + 10);
            *(v35 + 9) = *(v39 + 9);
            *(v35 + 10) = v50;
            *(v35 + 7) = v48;
            *(v35 + 8) = v49;
            v51 = *(v39 + 11);
            v52 = *(v39 + 12);
            v53 = *(v39 + 14);
            *(v35 + 13) = *(v39 + 13);
            *(v35 + 14) = v53;
            *(v35 + 11) = v51;
            *(v35 + 12) = v52;
            v39 += 30;
            v35 += 30;
            if (v39 == v40)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v54 = *v42;
            v55 = *(v42 + 2);
            *(v35 + 1) = *(v42 + 1);
            *(v35 + 2) = v55;
            *v35 = v54;
            v56 = *(v42 + 3);
            v57 = *(v42 + 4);
            v58 = *(v42 + 6);
            *(v35 + 5) = *(v42 + 5);
            *(v35 + 6) = v58;
            *(v35 + 3) = v56;
            *(v35 + 4) = v57;
            v59 = *(v42 + 7);
            v60 = *(v42 + 8);
            v61 = *(v42 + 10);
            *(v35 + 9) = *(v42 + 9);
            *(v35 + 10) = v61;
            *(v35 + 7) = v59;
            *(v35 + 8) = v60;
            v62 = *(v42 + 11);
            v63 = *(v42 + 12);
            v64 = *(v42 + 14);
            *(v35 + 13) = *(v42 + 13);
            *(v35 + 14) = v64;
            *(v35 + 11) = v62;
            *(v35 + 12) = v63;
            v42 += 30;
            v35 += 30;
            if (v39 == v40)
            {
LABEL_32:
              while (v42 != v41)
              {
                v76 = *v42;
                v77 = *(v42 + 2);
                *(v35 + 1) = *(v42 + 1);
                *(v35 + 2) = v77;
                *v35 = v76;
                v78 = *(v42 + 3);
                v79 = *(v42 + 4);
                v80 = *(v42 + 6);
                *(v35 + 5) = *(v42 + 5);
                *(v35 + 6) = v80;
                *(v35 + 3) = v78;
                *(v35 + 4) = v79;
                v81 = *(v42 + 7);
                v82 = *(v42 + 8);
                v83 = *(v42 + 10);
                *(v35 + 9) = *(v42 + 9);
                *(v35 + 10) = v83;
                *(v35 + 7) = v81;
                *(v35 + 8) = v82;
                v84 = *(v42 + 11);
                v85 = *(v42 + 12);
                v86 = *(v42 + 14);
                *(v35 + 13) = *(v42 + 13);
                *(v35 + 14) = v86;
                *(v35 + 11) = v84;
                *(v35 + 12) = v85;
                v42 += 30;
                v35 += 30;
              }

              return result;
            }
          }
        }

        while (v39 != v40)
        {
          v65 = *v39;
          v66 = *(v39 + 2);
          *(v35 + 1) = *(v39 + 1);
          *(v35 + 2) = v66;
          *v35 = v65;
          v67 = *(v39 + 3);
          v68 = *(v39 + 4);
          v69 = *(v39 + 6);
          *(v35 + 5) = *(v39 + 5);
          *(v35 + 6) = v69;
          *(v35 + 3) = v67;
          *(v35 + 4) = v68;
          v70 = *(v39 + 7);
          v71 = *(v39 + 8);
          v72 = *(v39 + 10);
          *(v35 + 9) = *(v39 + 9);
          *(v35 + 10) = v72;
          *(v35 + 7) = v70;
          *(v35 + 8) = v71;
          v73 = *(v39 + 11);
          v74 = *(v39 + 12);
          v75 = *(v39 + 14);
          *(v35 + 13) = *(v39 + 13);
          *(v35 + 14) = v75;
          *(v35 + 11) = v73;
          *(v35 + 12) = v74;
          v39 += 30;
          v35 += 30;
        }
      }

      else
      {
        sub_D5FC7C(result, v33, a3 >> 1, a4, a5);
        sub_D5FC7C(v33, a2, v34, a4, a5);

        return sub_D60680(v35, v33, a2, v32, v34, a4, a5);
      }
    }

    else if (result != a2)
    {
      v16 = result + 30;
      if (result + 30 != a2)
      {
        v17 = 0;
        v18 = result;
        do
        {
          v20 = v16;
          v21 = v18[32];
          if (v21 < v18[2])
          {
            v87 = *v16;
            v109 = *(v18 + 53);
            v111 = *(v18 + 55);
            v113 = *(v18 + 57);
            v115 = *(v18 + 59);
            v101 = *(v18 + 45);
            v103 = *(v18 + 47);
            v105 = *(v18 + 49);
            v107 = *(v18 + 51);
            v93 = *(v18 + 37);
            v95 = *(v18 + 39);
            v97 = *(v18 + 41);
            v99 = *(v18 + 43);
            v22 = v17;
            v89 = *(v18 + 33);
            v91 = *(v18 + 35);
            do
            {
              v23 = (result + v22);
              v24 = *(result + v22 + 208);
              *(v23 + 27) = *(result + v22 + 192);
              *(v23 + 28) = v24;
              *(v23 + 29) = *(result + v22 + 224);
              v25 = *(result + v22 + 144);
              *(v23 + 23) = *(result + v22 + 128);
              *(v23 + 24) = v25;
              v26 = *(result + v22 + 176);
              *(v23 + 25) = *(result + v22 + 160);
              *(v23 + 26) = v26;
              v27 = *(result + v22 + 80);
              *(v23 + 19) = *(result + v22 + 64);
              *(v23 + 20) = v27;
              v28 = *(result + v22 + 112);
              *(v23 + 21) = *(result + v22 + 96);
              *(v23 + 22) = v28;
              v29 = *(result + v22 + 16);
              *(v23 + 15) = *(result + v22);
              *(v23 + 16) = v29;
              v30 = *(result + v22 + 48);
              *(v23 + 17) = *(result + v22 + 32);
              *(v23 + 18) = v30;
              if (!v22)
              {
                v19 = result;
                goto LABEL_11;
              }

              v22 -= 240;
            }

            while (v21 < *(v23 - 28));
            v19 = (result + v22 + 240);
LABEL_11:
            *v19 = v87;
            v19[2] = v21;
            *(v19 + 23) = v109;
            *(v19 + 25) = v111;
            *(v19 + 27) = v113;
            *(v19 + 29) = v115;
            *(v19 + 15) = v101;
            *(v19 + 17) = v103;
            *(v19 + 19) = v105;
            *(v19 + 21) = v107;
            *(v19 + 7) = v93;
            *(v19 + 9) = v95;
            *(v19 + 11) = v97;
            *(v19 + 13) = v99;
            *(v19 + 3) = v89;
            *(v19 + 5) = v91;
          }

          v16 = v20 + 30;
          v17 += 240;
          v18 = v20;
        }

        while (v20 + 30 != a2);
      }
    }
  }

  return result;
}

double *sub_D6018C(double *result, double *a2, unint64_t a3, double *a4)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v15 = a2 - 30;
      if (*(a2 - 28) >= result[2])
      {
        v82 = *result;
        v83 = *(result + 2);
        *(a4 + 1) = *(result + 1);
        *(a4 + 2) = v83;
        *a4 = v82;
        v84 = *(result + 3);
        v85 = *(result + 4);
        v86 = *(result + 6);
        *(a4 + 5) = *(result + 5);
        *(a4 + 6) = v86;
        *(a4 + 3) = v84;
        *(a4 + 4) = v85;
        v87 = *(result + 7);
        v88 = *(result + 8);
        v89 = *(result + 10);
        *(a4 + 9) = *(result + 9);
        *(a4 + 10) = v89;
        *(a4 + 7) = v87;
        *(a4 + 8) = v88;
        v90 = *(result + 11);
        v91 = *(result + 12);
        v92 = *(result + 14);
        *(a4 + 13) = *(result + 13);
        *(a4 + 14) = v92;
        *(a4 + 11) = v90;
        *(a4 + 12) = v91;
        v93 = *v15;
        v94 = *(a2 - 13);
        *(a4 + 16) = *(a2 - 14);
        *(a4 + 17) = v94;
        *(a4 + 15) = v93;
        v95 = *(a2 - 12);
        v96 = *(a2 - 11);
        v97 = *(a2 - 9);
        *(a4 + 20) = *(a2 - 10);
        *(a4 + 21) = v97;
        *(a4 + 18) = v95;
        *(a4 + 19) = v96;
        v98 = *(a2 - 8);
        v99 = *(a2 - 7);
        v100 = *(a2 - 5);
        *(a4 + 24) = *(a2 - 6);
        *(a4 + 25) = v100;
        *(a4 + 22) = v98;
        *(a4 + 23) = v99;
        v35 = *(a2 - 4);
        v36 = *(a2 - 3);
        v37 = *(a2 - 2);
        v38 = *(a2 - 1);
      }

      else
      {
        v16 = *v15;
        v17 = *(a2 - 13);
        *(a4 + 1) = *(a2 - 14);
        *(a4 + 2) = v17;
        *a4 = v16;
        v18 = *(a2 - 12);
        v19 = *(a2 - 11);
        v20 = *(a2 - 9);
        *(a4 + 5) = *(a2 - 10);
        *(a4 + 6) = v20;
        *(a4 + 3) = v18;
        *(a4 + 4) = v19;
        v21 = *(a2 - 8);
        v22 = *(a2 - 7);
        v23 = *(a2 - 5);
        *(a4 + 9) = *(a2 - 6);
        *(a4 + 10) = v23;
        *(a4 + 7) = v21;
        *(a4 + 8) = v22;
        v24 = *(a2 - 4);
        v25 = *(a2 - 3);
        v26 = *(a2 - 1);
        *(a4 + 13) = *(a2 - 2);
        *(a4 + 14) = v26;
        *(a4 + 11) = v24;
        *(a4 + 12) = v25;
        v27 = *result;
        v28 = *(result + 2);
        *(a4 + 16) = *(result + 1);
        *(a4 + 17) = v28;
        *(a4 + 15) = v27;
        v29 = *(result + 3);
        v30 = *(result + 4);
        v31 = *(result + 6);
        *(a4 + 20) = *(result + 5);
        *(a4 + 21) = v31;
        *(a4 + 18) = v29;
        *(a4 + 19) = v30;
        v32 = *(result + 7);
        v33 = *(result + 8);
        v34 = *(result + 10);
        *(a4 + 24) = *(result + 9);
        *(a4 + 25) = v34;
        *(a4 + 22) = v32;
        *(a4 + 23) = v33;
        v35 = *(result + 11);
        v36 = *(result + 12);
        v37 = *(result + 13);
        v38 = *(result + 14);
      }

      *(a4 + 28) = v37;
      *(a4 + 29) = v38;
      *(a4 + 26) = v35;
      *(a4 + 27) = v36;
    }

    else if (a3 == 1)
    {
      v4 = *result;
      v5 = *(result + 2);
      *(a4 + 1) = *(result + 1);
      *(a4 + 2) = v5;
      *a4 = v4;
      v6 = *(result + 3);
      v7 = *(result + 4);
      v8 = *(result + 6);
      *(a4 + 5) = *(result + 5);
      *(a4 + 6) = v8;
      *(a4 + 3) = v6;
      *(a4 + 4) = v7;
      v9 = *(result + 7);
      v10 = *(result + 8);
      v11 = *(result + 10);
      *(a4 + 9) = *(result + 9);
      *(a4 + 10) = v11;
      *(a4 + 7) = v9;
      *(a4 + 8) = v10;
      v12 = *(result + 11);
      v13 = *(result + 12);
      v14 = *(result + 14);
      *(a4 + 13) = *(result + 13);
      *(a4 + 14) = v14;
      *(a4 + 11) = v12;
      *(a4 + 12) = v13;
    }

    else if (a3 > 8)
    {
      v101 = a3 >> 1;
      v102 = 30 * (a3 >> 1);
      v103 = &result[v102];
      v104 = result;
      v107 = a4;
      sub_D5FC7C(result, &result[v102], v101, a4, v101);
      result = sub_D5FC7C(v103, a2, a3 - v101, &v107[v102], a3 - v101);
      v108 = v103;
      while (v108 != a2)
      {
        if (v108[2] >= v104[2])
        {
          v109 = *v104;
          v110 = *(v104 + 2);
          *(v107 + 1) = *(v104 + 1);
          *(v107 + 2) = v110;
          *v107 = v109;
          v111 = *(v104 + 3);
          v112 = *(v104 + 4);
          v113 = *(v104 + 6);
          *(v107 + 5) = *(v104 + 5);
          *(v107 + 6) = v113;
          *(v107 + 3) = v111;
          *(v107 + 4) = v112;
          v114 = *(v104 + 7);
          v115 = *(v104 + 8);
          v116 = *(v104 + 10);
          *(v107 + 9) = *(v104 + 9);
          *(v107 + 10) = v116;
          *(v107 + 7) = v114;
          *(v107 + 8) = v115;
          v117 = *(v104 + 11);
          v118 = *(v104 + 12);
          v119 = *(v104 + 14);
          *(v107 + 13) = *(v104 + 13);
          *(v107 + 14) = v119;
          *(v107 + 11) = v117;
          *(v107 + 12) = v118;
          v104 += 30;
          v107 += 30;
          if (v104 == v103)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v120 = *v108;
          v121 = *(v108 + 2);
          *(v107 + 1) = *(v108 + 1);
          *(v107 + 2) = v121;
          *v107 = v120;
          v122 = *(v108 + 3);
          v123 = *(v108 + 4);
          v124 = *(v108 + 6);
          *(v107 + 5) = *(v108 + 5);
          *(v107 + 6) = v124;
          *(v107 + 3) = v122;
          *(v107 + 4) = v123;
          v125 = *(v108 + 7);
          v126 = *(v108 + 8);
          v127 = *(v108 + 10);
          *(v107 + 9) = *(v108 + 9);
          *(v107 + 10) = v127;
          *(v107 + 7) = v125;
          *(v107 + 8) = v126;
          v128 = *(v108 + 11);
          v129 = *(v108 + 12);
          v130 = *(v108 + 14);
          *(v107 + 13) = *(v108 + 13);
          *(v107 + 14) = v130;
          *(v107 + 11) = v128;
          *(v107 + 12) = v129;
          v108 += 30;
          v107 += 30;
          if (v104 == v103)
          {
LABEL_31:
            while (v108 != a2)
            {
              v142 = *v108;
              v143 = *(v108 + 2);
              *(v107 + 1) = *(v108 + 1);
              *(v107 + 2) = v143;
              *v107 = v142;
              v144 = *(v108 + 3);
              v145 = *(v108 + 4);
              v146 = *(v108 + 6);
              *(v107 + 5) = *(v108 + 5);
              *(v107 + 6) = v146;
              *(v107 + 3) = v144;
              *(v107 + 4) = v145;
              v147 = *(v108 + 7);
              v148 = *(v108 + 8);
              v149 = *(v108 + 10);
              *(v107 + 9) = *(v108 + 9);
              *(v107 + 10) = v149;
              *(v107 + 7) = v147;
              *(v107 + 8) = v148;
              v150 = *(v108 + 11);
              v151 = *(v108 + 12);
              v152 = *(v108 + 14);
              *(v107 + 13) = *(v108 + 13);
              *(v107 + 14) = v152;
              *(v107 + 11) = v150;
              *(v107 + 12) = v151;
              v108 += 30;
              v107 += 30;
            }

            return result;
          }
        }
      }

      while (v104 != v103)
      {
        v131 = *v104;
        v132 = *(v104 + 2);
        *(v107 + 1) = *(v104 + 1);
        *(v107 + 2) = v132;
        *v107 = v131;
        v133 = *(v104 + 3);
        v134 = *(v104 + 4);
        v135 = *(v104 + 6);
        *(v107 + 5) = *(v104 + 5);
        *(v107 + 6) = v135;
        *(v107 + 3) = v133;
        *(v107 + 4) = v134;
        v136 = *(v104 + 7);
        v137 = *(v104 + 8);
        v138 = *(v104 + 10);
        *(v107 + 9) = *(v104 + 9);
        *(v107 + 10) = v138;
        *(v107 + 7) = v136;
        *(v107 + 8) = v137;
        v139 = *(v104 + 11);
        v140 = *(v104 + 12);
        v141 = *(v104 + 14);
        *(v107 + 13) = *(v104 + 13);
        *(v107 + 14) = v141;
        *(v107 + 11) = v139;
        *(v107 + 12) = v140;
        v104 += 30;
        v107 += 30;
      }
    }

    else if (result != a2)
    {
      v39 = *result;
      v40 = *(result + 2);
      *(a4 + 1) = *(result + 1);
      *(a4 + 2) = v40;
      *a4 = v39;
      v41 = *(result + 3);
      v42 = *(result + 4);
      v43 = *(result + 6);
      *(a4 + 5) = *(result + 5);
      *(a4 + 6) = v43;
      *(a4 + 3) = v41;
      *(a4 + 4) = v42;
      v44 = *(result + 7);
      v45 = *(result + 8);
      v46 = *(result + 10);
      *(a4 + 9) = *(result + 9);
      *(a4 + 10) = v46;
      *(a4 + 7) = v44;
      *(a4 + 8) = v45;
      v47 = *(result + 11);
      v48 = *(result + 12);
      v49 = *(result + 14);
      *(a4 + 13) = *(result + 13);
      *(a4 + 14) = v49;
      *(a4 + 11) = v47;
      *(a4 + 12) = v48;
      v50 = result + 30;
      if (result + 30 != a2)
      {
        v51 = 0;
        v52 = a4;
        do
        {
          v64 = result;
          v65 = v52;
          result = v50;
          v52 += 30;
          v66 = v52;
          if (v64[32] < v65[2])
          {
            v67 = *(v65 + 13);
            *(v52 + 12) = *(v65 + 12);
            *(v52 + 13) = v67;
            *(v52 + 14) = *(v65 + 14);
            v68 = *(v65 + 9);
            *(v52 + 8) = *(v65 + 8);
            *(v52 + 9) = v68;
            v69 = *(v65 + 11);
            *(v52 + 10) = *(v65 + 10);
            *(v52 + 11) = v69;
            v70 = *(v65 + 5);
            *(v52 + 4) = *(v65 + 4);
            *(v52 + 5) = v70;
            v71 = *(v65 + 7);
            *(v52 + 6) = *(v65 + 6);
            *(v52 + 7) = v71;
            v72 = *(v65 + 1);
            *v52 = *v65;
            *(v52 + 1) = v72;
            v73 = *(v65 + 3);
            v66 = a4;
            *(v52 + 2) = *(v65 + 2);
            *(v52 + 3) = v73;
            if (v65 != a4)
            {
              v74 = v51;
              while (1)
              {
                v66 = (a4 + v74);
                if (v64[32] >= *(a4 + v74 - 224))
                {
                  break;
                }

                v75 = *(v66 - 2);
                *(v66 + 12) = *(v66 - 3);
                *(v66 + 13) = v75;
                *(v66 + 14) = *(v66 - 1);
                v76 = *(v66 - 6);
                *(v66 + 8) = *(v66 - 7);
                *(v66 + 9) = v76;
                v77 = *(v66 - 4);
                *(v66 + 10) = *(v66 - 5);
                *(v66 + 11) = v77;
                v78 = *(v66 - 10);
                *(v66 + 4) = *(v66 - 11);
                *(v66 + 5) = v78;
                v79 = *(v66 - 8);
                *(v66 + 6) = *(v66 - 9);
                *(v66 + 7) = v79;
                v80 = *(v66 - 14);
                *v66 = *(v66 - 15);
                *(v66 + 1) = v80;
                v81 = *(v66 - 12);
                *(v66 + 2) = *(v66 - 13);
                *(v66 + 3) = v81;
                v74 -= 240;
                if (!v74)
                {
                  v66 = a4;
                  break;
                }
              }
            }
          }

          v53 = *result;
          v54 = *(result + 2);
          *(v66 + 1) = *(result + 1);
          *(v66 + 2) = v54;
          *v66 = v53;
          v55 = *(result + 3);
          v56 = *(result + 4);
          v57 = *(result + 6);
          *(v66 + 5) = *(result + 5);
          *(v66 + 6) = v57;
          *(v66 + 3) = v55;
          *(v66 + 4) = v56;
          v58 = *(result + 7);
          v59 = *(result + 8);
          v60 = *(result + 10);
          *(v66 + 9) = *(result + 9);
          *(v66 + 10) = v60;
          *(v66 + 7) = v58;
          *(v66 + 8) = v59;
          v61 = *(result + 11);
          v62 = *(result + 12);
          v63 = *(result + 14);
          *(v66 + 13) = *(result + 13);
          *(v66 + 14) = v63;
          *(v66 + 11) = v61;
          *(v66 + 12) = v62;
          v50 = result + 30;
          v51 += 240;
        }

        while (result + 30 != a2);
      }
    }
  }

  return result;
}

char *sub_D60680(char *result, double *a2, double *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  if (a5)
  {
    v9 = result;
    while (a5 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v10 = 0;
      v11 = -a4;
      while (1)
      {
        v12 = (v10 + v9);
        if (a2[2] < *(v10 + v9 + 16))
        {
          break;
        }

        v10 += 30;
        if (__CFADD__(v11++, 1))
        {
          return result;
        }
      }

      v126 = a3;
      __src = a6;
      v125 = a7;
      if (-v11 >= a5)
      {
        if (v11 == -1)
        {
          v99 = (v10 + v9);
          v129 = *(v10 + v9 + 16);
          v130 = *(v10 + v9 + 32);
          v128 = *(v10 + v9);
          v133 = *(v10 + v9 + 80);
          v134 = *(v10 + v9 + 96);
          v131 = *(v10 + v9 + 48);
          v132 = *(v10 + v9 + 64);
          v137 = *(v10 + v9 + 144);
          v138 = *(v10 + v9 + 160);
          v135 = *(v10 + v9 + 112);
          v136 = *(v10 + v9 + 128);
          v141 = *(v10 + v9 + 208);
          v142 = *(v10 + v9 + 224);
          v139 = *(v10 + v9 + 176);
          v140 = *(v10 + v9 + 192);
          v100 = *a2;
          v101 = *(a2 + 2);
          v99[1] = *(a2 + 1);
          v99[2] = v101;
          *v99 = v100;
          v102 = *(a2 + 3);
          v103 = *(a2 + 4);
          v104 = *(a2 + 6);
          v99[5] = *(a2 + 5);
          v99[6] = v104;
          v99[3] = v102;
          v99[4] = v103;
          v105 = *(a2 + 7);
          v106 = *(a2 + 8);
          v107 = *(a2 + 10);
          v99[9] = *(a2 + 9);
          v99[10] = v107;
          v99[7] = v105;
          v99[8] = v106;
          v108 = *(a2 + 11);
          v109 = *(a2 + 12);
          v110 = *(a2 + 14);
          v99[13] = *(a2 + 13);
          v99[14] = v110;
          v99[11] = v108;
          v99[12] = v109;
          *(a2 + 12) = v140;
          *(a2 + 13) = v141;
          *(a2 + 14) = v142;
          *(a2 + 8) = v136;
          *(a2 + 9) = v137;
          *(a2 + 10) = v138;
          *(a2 + 11) = v139;
          *(a2 + 4) = v132;
          *(a2 + 5) = v133;
          *(a2 + 6) = v134;
          *(a2 + 7) = v135;
          *a2 = v128;
          *(a2 + 1) = v129;
          *(a2 + 2) = v130;
          *(a2 + 3) = v131;
          return result;
        }

        v22 = -v11 / 2;
        v15 = a2;
        if (a2 != a3)
        {
          v23 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - a2) >> 4);
          v15 = a2;
          do
          {
            v24 = v23 >> 1;
            v25 = &v15[30 * (v23 >> 1)];
            v26 = v25[2];
            v27 = v25 + 30;
            v23 += ~(v23 >> 1);
            if (v26 < *&v9[240 * v22 + 16 + v10])
            {
              v15 = v27;
            }

            else
            {
              v23 = v24;
            }
          }

          while (v23);
        }

        v14 = 0xEEEEEEEEEEEEEEEFLL * ((v15 - a2) >> 4);
        v16 = &v9[240 * v22 + v10];
      }

      else
      {
        v14 = a5 / 2;
        v15 = &a2[30 * (a5 / 2)];
        v16 = a2;
        if ((a2 - v9) != v10)
        {
          v17 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - v9 - v10) >> 4);
          v16 = v10 + v9;
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[240 * (v17 >> 1)];
            v20 = *(v19 + 2);
            v21 = v19 + 240;
            v17 += ~(v17 >> 1);
            if (v20 > v15[2])
            {
              v17 = v18;
            }

            else
            {
              v16 = v21;
            }
          }

          while (v17);
        }

        v22 = 0xEEEEEEEEEEEEEEEFLL * ((v16 - v9 - v10) >> 4);
      }

      a4 = -v11 - v22;
      v124 = a5 - v14;
      v28 = a5;
      v29 = v22;
      v30 = sub_D60C58(v16, a2, v15);
      v31 = v29;
      v32 = v30;
      if ((v31 + v14) >= (v28 - (v31 + v14) - v11))
      {
        a6 = __src;
        v33 = v31;
        result = sub_D60680(v30, v15, v126, a4, v124, __src, v125);
        v15 = v16;
        a7 = v125;
        a4 = v33;
        a3 = v32;
      }

      else
      {
        a6 = __src;
        result = sub_D60680(v10 + v9, v16, v30, v31, v14, __src, v125);
        a7 = v125;
        v12 = v32;
        a3 = v126;
        v14 = v124;
      }

      a5 = v14;
      v9 = v12;
      a2 = v15;
      if (!v14)
      {
        return result;
      }
    }

    if (a4 <= a5)
    {
      if (a2 != v9)
      {
        v63 = -a6;
        v64 = a6;
        v65 = v9;
        do
        {
          v66 = *v65;
          v67 = *(v65 + 2);
          v64[1] = *(v65 + 1);
          v64[2] = v67;
          *v64 = v66;
          v68 = *(v65 + 3);
          v69 = *(v65 + 4);
          v70 = *(v65 + 6);
          v64[5] = *(v65 + 5);
          v64[6] = v70;
          v64[3] = v68;
          v64[4] = v69;
          v71 = *(v65 + 7);
          v72 = *(v65 + 8);
          v73 = *(v65 + 10);
          v64[9] = *(v65 + 9);
          v64[10] = v73;
          v64[7] = v71;
          v64[8] = v72;
          v74 = *(v65 + 11);
          v75 = *(v65 + 12);
          v76 = *(v65 + 14);
          v64[13] = *(v65 + 13);
          v64[14] = v76;
          v64[11] = v74;
          v64[12] = v75;
          v65 += 240;
          v64 += 15;
          v63 -= 240;
        }

        while (v65 != a2);
        while (a2 != a3)
        {
          if (a2[2] >= *(a6 + 2))
          {
            v77 = *a6;
            v78 = a6[2];
            *(v9 + 1) = a6[1];
            *(v9 + 2) = v78;
            *v9 = v77;
            v79 = a6[3];
            v80 = a6[4];
            v81 = a6[6];
            *(v9 + 5) = a6[5];
            *(v9 + 6) = v81;
            *(v9 + 3) = v79;
            *(v9 + 4) = v80;
            v82 = a6[7];
            v83 = a6[8];
            v84 = a6[10];
            *(v9 + 9) = a6[9];
            *(v9 + 10) = v84;
            *(v9 + 7) = v82;
            *(v9 + 8) = v83;
            v85 = a6[11];
            v86 = a6[12];
            v87 = a6[14];
            *(v9 + 13) = a6[13];
            *(v9 + 14) = v87;
            *(v9 + 11) = v85;
            *(v9 + 12) = v86;
            a6 += 15;
            v9 += 240;
            if (v64 == a6)
            {
              return result;
            }
          }

          else
          {
            v88 = *a2;
            v89 = *(a2 + 2);
            *(v9 + 1) = *(a2 + 1);
            *(v9 + 2) = v89;
            *v9 = v88;
            v90 = *(a2 + 3);
            v91 = *(a2 + 4);
            v92 = *(a2 + 6);
            *(v9 + 5) = *(a2 + 5);
            *(v9 + 6) = v92;
            *(v9 + 3) = v90;
            *(v9 + 4) = v91;
            v93 = *(a2 + 7);
            v94 = *(a2 + 8);
            v95 = *(a2 + 10);
            *(v9 + 9) = *(a2 + 9);
            *(v9 + 10) = v95;
            *(v9 + 7) = v93;
            *(v9 + 8) = v94;
            v96 = *(a2 + 11);
            v97 = *(a2 + 12);
            v98 = *(a2 + 14);
            *(v9 + 13) = *(a2 + 13);
            *(v9 + 14) = v98;
            *(v9 + 11) = v96;
            *(v9 + 12) = v97;
            a2 += 30;
            v9 += 240;
            if (v64 == a6)
            {
              return result;
            }
          }
        }

        return memmove(v9, a6, -(a6 + v63));
      }
    }

    else if (a2 != a3)
    {
      v34 = 0;
      do
      {
        v35 = &a6[v34 / 0x10];
        v36 = *&a2[v34 / 8];
        v37 = *&a2[v34 / 8 + 4];
        v35[1] = *&a2[v34 / 8 + 2];
        v35[2] = v37;
        *v35 = v36;
        v38 = *&a2[v34 / 8 + 6];
        v39 = *&a2[v34 / 8 + 8];
        v40 = *&a2[v34 / 8 + 12];
        v35[5] = *&a2[v34 / 8 + 10];
        v35[6] = v40;
        v35[3] = v38;
        v35[4] = v39;
        v41 = *&a2[v34 / 8 + 14];
        v42 = *&a2[v34 / 8 + 16];
        v43 = *&a2[v34 / 8 + 20];
        v35[9] = *&a2[v34 / 8 + 18];
        v35[10] = v43;
        v35[7] = v41;
        v35[8] = v42;
        v44 = *&a2[v34 / 8 + 22];
        v45 = *&a2[v34 / 8 + 24];
        v46 = *&a2[v34 / 8 + 28];
        v35[13] = *&a2[v34 / 8 + 26];
        v35[14] = v46;
        v35[11] = v44;
        v35[12] = v45;
        v34 += 240;
      }

      while (&a2[v34 / 8] != a3);
      v47 = &a6[v34 / 0x10];
      while (a2 != v9)
      {
        v48 = *(a2 - 28);
        v49 = *(v47 - 28);
        v50 = v49 < v48;
        if (v49 >= v48)
        {
          v51 = (v47 - 15);
        }

        else
        {
          v51 = a2 - 30;
        }

        v52 = *(v51 + 6);
        v54 = *(v51 + 3);
        v53 = *(v51 + 4);
        *(a3 - 10) = *(v51 + 5);
        *(a3 - 9) = v52;
        *(a3 - 12) = v54;
        *(a3 - 11) = v53;
        v55 = *(v51 + 10);
        v57 = *(v51 + 7);
        v56 = *(v51 + 8);
        *(a3 - 6) = *(v51 + 9);
        *(a3 - 5) = v55;
        *(a3 - 8) = v57;
        *(a3 - 7) = v56;
        v58 = *(v51 + 14);
        v60 = *(v51 + 11);
        v59 = *(v51 + 12);
        *(a3 - 2) = *(v51 + 13);
        *(a3 - 1) = v58;
        *(a3 - 4) = v60;
        *(a3 - 3) = v59;
        v61 = *v51;
        v62 = *(v51 + 2);
        *(a3 - 14) = *(v51 + 1);
        *(a3 - 13) = v62;
        *(a3 - 15) = v61;
        a3 -= 30;
        if (v50)
        {
          a2 -= 30;
        }

        else
        {
          v47 -= 15;
        }

        if (v47 == a6)
        {
          return result;
        }
      }

      if (v47 != a6)
      {
        v111 = 0x1FFFFFFFFFFFFFE2;
        do
        {
          v112 = &a3[v111];
          v113 = *(v47 - 15);
          v114 = *(v47 - 13);
          *(v112 + 1) = *(v47 - 14);
          *(v112 + 2) = v114;
          *v112 = v113;
          v115 = *(v47 - 12);
          v116 = *(v47 - 11);
          v117 = *(v47 - 9);
          *(v112 + 5) = *(v47 - 10);
          *(v112 + 6) = v117;
          *(v112 + 3) = v115;
          *(v112 + 4) = v116;
          v118 = *(v47 - 8);
          v119 = *(v47 - 7);
          v120 = *(v47 - 5);
          *(v112 + 9) = *(v47 - 6);
          *(v112 + 10) = v120;
          *(v112 + 7) = v118;
          *(v112 + 8) = v119;
          v121 = *(v47 - 4);
          v122 = *(v47 - 3);
          v123 = *(v47 - 1);
          *(v112 + 13) = *(v47 - 2);
          *(v112 + 14) = v123;
          *(v112 + 11) = v121;
          *(v112 + 12) = v122;
          v111 -= 30;
          v47 -= 15;
        }

        while (v47 != a6);
      }
    }
  }

  return result;
}

char *sub_D60C58(char *__src, char *a2, char *a3)
{
  v4 = a3;
  v5 = a2 - __src;
  if (a2 != __src)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 240 == a2)
    {
      v94 = *(__src + 12);
      v98 = *(__src + 13);
      v102 = *(__src + 14);
      v78 = *(__src + 8);
      v82 = *(__src + 9);
      v86 = *(__src + 10);
      v90 = *(__src + 11);
      v62 = *(__src + 4);
      v66 = *(__src + 5);
      v70 = *(__src + 6);
      v74 = *(__src + 7);
      v46 = *__src;
      v50 = *(__src + 1);
      v54 = *(__src + 2);
      v58 = *(__src + 3);
      v7 = __src;
      memmove(__src, __src + 240, v6);
      v4 = &v7[v6];
      *(v4 + 12) = v94;
      *(v4 + 13) = v98;
      *(v4 + 14) = v102;
      *(v4 + 8) = v78;
      *(v4 + 9) = v82;
      *(v4 + 10) = v86;
      *(v4 + 11) = v90;
      *(v4 + 4) = v62;
      *(v4 + 5) = v66;
      *(v4 + 6) = v70;
      *(v4 + 7) = v74;
      *v4 = v46;
      *(v4 + 1) = v50;
      *(v4 + 2) = v54;
      *(v4 + 3) = v58;
    }

    else if (a2 + 240 == a3)
    {
      v4 = __src + 240;
      v95 = *(a3 - 3);
      v99 = *(a3 - 2);
      v103 = *(a3 - 1);
      v79 = *(a3 - 7);
      v83 = *(a3 - 6);
      v87 = *(a3 - 5);
      v91 = *(a3 - 4);
      v63 = *(a3 - 11);
      v67 = *(a3 - 10);
      v71 = *(a3 - 9);
      v75 = *(a3 - 8);
      v47 = *(a3 - 15);
      v51 = *(a3 - 14);
      v55 = *(a3 - 13);
      v59 = *(a3 - 12);
      v8 = a3 - 240 - __src;
      if (a3 - 240 != __src)
      {
        v9 = __src;
        memmove(__src + 240, __src, v8);
        __src = v9;
      }

      *(__src + 12) = v95;
      *(__src + 13) = v99;
      *(__src + 14) = v103;
      *(__src + 8) = v79;
      *(__src + 9) = v83;
      *(__src + 10) = v87;
      *(__src + 11) = v91;
      *(__src + 4) = v63;
      *(__src + 5) = v67;
      *(__src + 6) = v71;
      *(__src + 7) = v75;
      *__src = v47;
      *(__src + 1) = v51;
      *(__src + 2) = v55;
      *(__src + 3) = v59;
    }

    else
    {
      v10 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 4);
      if (0xEEEEEEEEEEEEEEEFLL * (v5 >> 4) == v10)
      {
        v11 = __src + 240;
        v12 = a2 + 240;
        do
        {
          v96 = *(v11 - 3);
          v100 = *(v11 - 2);
          v104 = *(v11 - 1);
          v80 = *(v11 - 7);
          v84 = *(v11 - 6);
          v88 = *(v11 - 5);
          v92 = *(v11 - 4);
          v64 = *(v11 - 11);
          v68 = *(v11 - 10);
          v72 = *(v11 - 9);
          v76 = *(v11 - 8);
          v48 = *(v11 - 15);
          v52 = *(v11 - 14);
          v56 = *(v11 - 13);
          v60 = *(v11 - 12);
          v13 = *(v12 - 15);
          v14 = *(v12 - 13);
          *(v11 - 14) = *(v12 - 14);
          *(v11 - 13) = v14;
          *(v11 - 15) = v13;
          v15 = *(v12 - 12);
          v16 = *(v12 - 11);
          v17 = *(v12 - 9);
          *(v11 - 10) = *(v12 - 10);
          *(v11 - 9) = v17;
          *(v11 - 12) = v15;
          *(v11 - 11) = v16;
          v18 = *(v12 - 8);
          v19 = *(v12 - 7);
          v20 = *(v12 - 5);
          *(v11 - 6) = *(v12 - 6);
          *(v11 - 5) = v20;
          *(v11 - 8) = v18;
          *(v11 - 7) = v19;
          v21 = *(v12 - 4);
          v22 = *(v12 - 3);
          v23 = *(v12 - 1);
          *(v11 - 2) = *(v12 - 2);
          *(v11 - 1) = v23;
          *(v11 - 4) = v21;
          *(v11 - 3) = v22;
          *(v12 - 3) = v96;
          *(v12 - 2) = v100;
          *(v12 - 1) = v104;
          *(v12 - 7) = v80;
          *(v12 - 6) = v84;
          *(v12 - 5) = v88;
          *(v12 - 4) = v92;
          *(v12 - 11) = v64;
          *(v12 - 10) = v68;
          *(v12 - 9) = v72;
          *(v12 - 8) = v76;
          *(v12 - 15) = v48;
          *(v12 - 14) = v52;
          *(v12 - 13) = v56;
          *(v12 - 12) = v60;
          if (v11 == a2)
          {
            break;
          }

          v11 += 240;
          v24 = v12 == a3;
          v12 += 240;
        }

        while (!v24);
        return a2;
      }

      else
      {
        v25 = 0xEEEEEEEEEEEEEEEFLL * (v5 >> 4);
        do
        {
          v26 = v25;
          v25 = v10;
          v10 = v26 % v10;
        }

        while (v10);
        v27 = &__src[240 * v25];
        do
        {
          v97 = *(v27 - 3);
          v101 = *(v27 - 2);
          v105 = *(v27 - 1);
          v81 = *(v27 - 7);
          v85 = *(v27 - 6);
          v89 = *(v27 - 5);
          v93 = *(v27 - 4);
          v65 = *(v27 - 11);
          v69 = *(v27 - 10);
          v73 = *(v27 - 9);
          v77 = *(v27 - 8);
          v49 = *(v27 - 15);
          v53 = *(v27 - 14);
          v29 = *(v27 - 13);
          v28 = *(v27 - 12);
          v27 -= 240;
          v30 = &v27[v5];
          v31 = v27;
          v57 = v29;
          v61 = v28;
          do
          {
            v32 = v30;
            v33 = *v30;
            v34 = *(v30 + 2);
            *(v31 + 1) = *(v30 + 1);
            *(v31 + 2) = v34;
            *v31 = v33;
            v35 = *(v30 + 3);
            v36 = *(v30 + 4);
            v37 = *(v30 + 6);
            *(v31 + 5) = *(v30 + 5);
            *(v31 + 6) = v37;
            *(v31 + 3) = v35;
            *(v31 + 4) = v36;
            v38 = *(v30 + 7);
            v39 = *(v30 + 8);
            v40 = *(v30 + 10);
            *(v31 + 9) = *(v30 + 9);
            *(v31 + 10) = v40;
            *(v31 + 7) = v38;
            *(v31 + 8) = v39;
            v41 = *(v30 + 11);
            v42 = *(v30 + 12);
            v43 = *(v30 + 14);
            *(v31 + 13) = *(v30 + 13);
            *(v31 + 14) = v43;
            *(v31 + 11) = v41;
            *(v31 + 12) = v42;
            v44 = (a3 - v30);
            v30 += 16 * (v5 >> 4);
            if (v5 >= v44)
            {
              v30 = (a2 - v44);
            }

            v31 = v32;
          }

          while (v30 != v27);
          *(v32 + 1) = v53;
          *(v32 + 2) = v57;
          *v32 = v49;
          *(v32 + 5) = v69;
          *(v32 + 6) = v73;
          *(v32 + 3) = v61;
          *(v32 + 4) = v65;
          *(v32 + 9) = v85;
          *(v32 + 10) = v89;
          *(v32 + 7) = v77;
          *(v32 + 8) = v81;
          *(v32 + 13) = v101;
          *(v32 + 14) = v105;
          *(v32 + 11) = v93;
          *(v32 + 12) = v97;
        }

        while (v27 != __src);
        return &__src[v6];
      }
    }
  }

  return v4;
}

double *sub_D61030(double *result, __int128 *a2, unint64_t a3, double *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      if (*(a2 - 1) < result[29])
      {
        v112 = *(result + 12);
        v114 = *(result + 13);
        v116 = *(result + 14);
        v104 = *(result + 8);
        v106 = *(result + 9);
        v108 = *(result + 10);
        v110 = *(result + 11);
        v96 = *(result + 4);
        v98 = *(result + 5);
        v100 = *(result + 6);
        v102 = *(result + 7);
        v88 = *result;
        v90 = *(result + 1);
        v92 = *(result + 2);
        v94 = *(result + 3);
        v5 = *(a2 - 15);
        v6 = *(a2 - 13);
        *(result + 1) = *(a2 - 14);
        *(result + 2) = v6;
        *result = v5;
        v7 = *(a2 - 12);
        v8 = *(a2 - 11);
        v9 = *(a2 - 9);
        *(result + 5) = *(a2 - 10);
        *(result + 6) = v9;
        *(result + 3) = v7;
        *(result + 4) = v8;
        v10 = *(a2 - 8);
        v11 = *(a2 - 7);
        v12 = *(a2 - 5);
        *(result + 9) = *(a2 - 6);
        *(result + 10) = v12;
        *(result + 7) = v10;
        *(result + 8) = v11;
        v13 = *(a2 - 4);
        v14 = *(a2 - 3);
        v15 = *(a2 - 1);
        *(result + 13) = *(a2 - 2);
        *(result + 14) = v15;
        *(result + 11) = v13;
        *(result + 12) = v14;
        *(a2 - 3) = v112;
        *(a2 - 2) = v114;
        *(a2 - 1) = v116;
        *(a2 - 7) = v104;
        *(a2 - 6) = v106;
        *(a2 - 5) = v108;
        *(a2 - 4) = v110;
        *(a2 - 11) = v96;
        *(a2 - 10) = v98;
        *(a2 - 9) = v100;
        *(a2 - 8) = v102;
        *(a2 - 15) = v88;
        *(a2 - 14) = v90;
        *(a2 - 13) = v92;
        *(a2 - 12) = v94;
      }
    }

    else if (a3 > 128)
    {
      v33 = a3 >> 1;
      v34 = &result[30 * (a3 >> 1)];
      v35 = a3 - (a3 >> 1);
      v36 = result;
      if (a3 <= a5)
      {
        v40 = a4;
        sub_D614C4(result, v34, a3 >> 1, a4);
        v41 = &v40[30 * v33];
        result = sub_D614C4(v34, a2, v35, v41);
        v42 = &v40[30 * a3];
        v43 = v41;
        while (v43 != v42)
        {
          if (v43[29] >= v40[29])
          {
            v44 = *v40;
            v45 = *(v40 + 2);
            *(v36 + 1) = *(v40 + 1);
            *(v36 + 2) = v45;
            *v36 = v44;
            v46 = *(v40 + 3);
            v47 = *(v40 + 4);
            v48 = *(v40 + 6);
            *(v36 + 5) = *(v40 + 5);
            *(v36 + 6) = v48;
            *(v36 + 3) = v46;
            *(v36 + 4) = v47;
            v49 = *(v40 + 7);
            v50 = *(v40 + 8);
            v51 = *(v40 + 10);
            *(v36 + 9) = *(v40 + 9);
            *(v36 + 10) = v51;
            *(v36 + 7) = v49;
            *(v36 + 8) = v50;
            v52 = *(v40 + 11);
            v53 = *(v40 + 12);
            v54 = *(v40 + 14);
            *(v36 + 13) = *(v40 + 13);
            *(v36 + 14) = v54;
            *(v36 + 11) = v52;
            *(v36 + 12) = v53;
            v40 += 30;
            v36 += 30;
            if (v40 == v41)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v55 = *v43;
            v56 = *(v43 + 2);
            *(v36 + 1) = *(v43 + 1);
            *(v36 + 2) = v56;
            *v36 = v55;
            v57 = *(v43 + 3);
            v58 = *(v43 + 4);
            v59 = *(v43 + 6);
            *(v36 + 5) = *(v43 + 5);
            *(v36 + 6) = v59;
            *(v36 + 3) = v57;
            *(v36 + 4) = v58;
            v60 = *(v43 + 7);
            v61 = *(v43 + 8);
            v62 = *(v43 + 10);
            *(v36 + 9) = *(v43 + 9);
            *(v36 + 10) = v62;
            *(v36 + 7) = v60;
            *(v36 + 8) = v61;
            v63 = *(v43 + 11);
            v64 = *(v43 + 12);
            v65 = *(v43 + 14);
            *(v36 + 13) = *(v43 + 13);
            *(v36 + 14) = v65;
            *(v36 + 11) = v63;
            *(v36 + 12) = v64;
            v43 += 30;
            v36 += 30;
            if (v40 == v41)
            {
LABEL_32:
              while (v43 != v42)
              {
                v77 = *v43;
                v78 = *(v43 + 2);
                *(v36 + 1) = *(v43 + 1);
                *(v36 + 2) = v78;
                *v36 = v77;
                v79 = *(v43 + 3);
                v80 = *(v43 + 4);
                v81 = *(v43 + 6);
                *(v36 + 5) = *(v43 + 5);
                *(v36 + 6) = v81;
                *(v36 + 3) = v79;
                *(v36 + 4) = v80;
                v82 = *(v43 + 7);
                v83 = *(v43 + 8);
                v84 = *(v43 + 10);
                *(v36 + 9) = *(v43 + 9);
                *(v36 + 10) = v84;
                *(v36 + 7) = v82;
                *(v36 + 8) = v83;
                v85 = *(v43 + 11);
                v86 = *(v43 + 12);
                v87 = *(v43 + 14);
                *(v36 + 13) = *(v43 + 13);
                *(v36 + 14) = v87;
                *(v36 + 11) = v85;
                *(v36 + 12) = v86;
                v43 += 30;
                v36 += 30;
              }

              return result;
            }
          }
        }

        while (v40 != v41)
        {
          v66 = *v40;
          v67 = *(v40 + 2);
          *(v36 + 1) = *(v40 + 1);
          *(v36 + 2) = v67;
          *v36 = v66;
          v68 = *(v40 + 3);
          v69 = *(v40 + 4);
          v70 = *(v40 + 6);
          *(v36 + 5) = *(v40 + 5);
          *(v36 + 6) = v70;
          *(v36 + 3) = v68;
          *(v36 + 4) = v69;
          v71 = *(v40 + 7);
          v72 = *(v40 + 8);
          v73 = *(v40 + 10);
          *(v36 + 9) = *(v40 + 9);
          *(v36 + 10) = v73;
          *(v36 + 7) = v71;
          *(v36 + 8) = v72;
          v74 = *(v40 + 11);
          v75 = *(v40 + 12);
          v76 = *(v40 + 14);
          *(v36 + 13) = *(v40 + 13);
          *(v36 + 14) = v76;
          *(v36 + 11) = v74;
          *(v36 + 12) = v75;
          v40 += 30;
          v36 += 30;
        }
      }

      else
      {
        sub_D61030(result, v34, a3 >> 1, a4, a5);
        sub_D61030(v34, a2, v35, a4, a5);

        return sub_D619B8(v36, v34, a2, v33, v35, a4, a5);
      }
    }

    else if (result != a2)
    {
      v16 = result + 30;
      if (result + 30 != a2)
      {
        v17 = 0;
        v18 = result;
        do
        {
          v20 = v18[59];
          v21 = v18[29];
          v18 = v16;
          if (v20 < v21)
          {
            v113 = *(v16 + 12);
            v115 = *(v16 + 13);
            v117 = *(v16 + 28);
            v105 = *(v16 + 8);
            v107 = *(v16 + 9);
            v109 = *(v16 + 10);
            v111 = *(v16 + 11);
            v97 = *(v16 + 4);
            v99 = *(v16 + 5);
            v101 = *(v16 + 6);
            v103 = *(v16 + 7);
            v89 = *v16;
            v91 = *(v16 + 1);
            v22 = *(v16 + 3);
            v23 = v17;
            v93 = *(v18 + 2);
            v95 = v22;
            do
            {
              v24 = (result + v23);
              v25 = *(result + v23 + 208);
              *(v24 + 27) = *(result + v23 + 192);
              *(v24 + 28) = v25;
              *(v24 + 29) = *(result + v23 + 224);
              v26 = *(result + v23 + 144);
              *(v24 + 23) = *(result + v23 + 128);
              *(v24 + 24) = v26;
              v27 = *(result + v23 + 176);
              *(v24 + 25) = *(result + v23 + 160);
              *(v24 + 26) = v27;
              v28 = *(result + v23 + 80);
              *(v24 + 19) = *(result + v23 + 64);
              *(v24 + 20) = v28;
              v29 = *(result + v23 + 112);
              *(v24 + 21) = *(result + v23 + 96);
              *(v24 + 22) = v29;
              v30 = *(result + v23 + 16);
              *(v24 + 15) = *(result + v23);
              *(v24 + 16) = v30;
              v31 = *(result + v23 + 48);
              *(v24 + 17) = *(result + v23 + 32);
              *(v24 + 18) = v31;
              if (!v23)
              {
                v19 = result;
                goto LABEL_11;
              }

              v23 -= 240;
            }

            while (v20 < *(v24 - 1));
            v19 = (result + v23 + 240);
LABEL_11:
            *(v19 + 12) = v113;
            *(v19 + 13) = v115;
            *(v19 + 28) = v117;
            *(v19 + 8) = v105;
            *(v19 + 9) = v107;
            *(v19 + 10) = v109;
            *(v19 + 11) = v111;
            *(v19 + 4) = v97;
            *(v19 + 5) = v99;
            *(v19 + 6) = v101;
            *(v19 + 7) = v103;
            *v19 = v89;
            *(v19 + 1) = v91;
            *(v19 + 2) = v93;
            *(v19 + 3) = v95;
            v19[29] = v20;
          }

          v16 = v18 + 30;
          v17 += 240;
        }

        while (v18 + 30 != a2);
      }
    }
  }

  return result;
}

double *sub_D614C4(double *result, __int128 *a2, unint64_t a3, double *a4)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v15 = a2 - 15;
      if (*(a2 - 1) >= result[29])
      {
        v82 = *result;
        v83 = *(result + 2);
        *(a4 + 1) = *(result + 1);
        *(a4 + 2) = v83;
        *a4 = v82;
        v84 = *(result + 3);
        v85 = *(result + 4);
        v86 = *(result + 6);
        *(a4 + 5) = *(result + 5);
        *(a4 + 6) = v86;
        *(a4 + 3) = v84;
        *(a4 + 4) = v85;
        v87 = *(result + 7);
        v88 = *(result + 8);
        v89 = *(result + 10);
        *(a4 + 9) = *(result + 9);
        *(a4 + 10) = v89;
        *(a4 + 7) = v87;
        *(a4 + 8) = v88;
        v90 = *(result + 11);
        v91 = *(result + 12);
        v92 = *(result + 14);
        *(a4 + 13) = *(result + 13);
        *(a4 + 14) = v92;
        *(a4 + 11) = v90;
        *(a4 + 12) = v91;
        v93 = *v15;
        v94 = *(a2 - 13);
        *(a4 + 16) = *(a2 - 14);
        *(a4 + 17) = v94;
        *(a4 + 15) = v93;
        v95 = *(a2 - 12);
        v96 = *(a2 - 11);
        v97 = *(a2 - 9);
        *(a4 + 20) = *(a2 - 10);
        *(a4 + 21) = v97;
        *(a4 + 18) = v95;
        *(a4 + 19) = v96;
        v98 = *(a2 - 8);
        v99 = *(a2 - 7);
        v100 = *(a2 - 5);
        *(a4 + 24) = *(a2 - 6);
        *(a4 + 25) = v100;
        *(a4 + 22) = v98;
        *(a4 + 23) = v99;
        v35 = *(a2 - 4);
        v36 = *(a2 - 3);
        v37 = *(a2 - 2);
        v38 = *(a2 - 1);
      }

      else
      {
        v16 = *v15;
        v17 = *(a2 - 13);
        *(a4 + 1) = *(a2 - 14);
        *(a4 + 2) = v17;
        *a4 = v16;
        v18 = *(a2 - 12);
        v19 = *(a2 - 11);
        v20 = *(a2 - 9);
        *(a4 + 5) = *(a2 - 10);
        *(a4 + 6) = v20;
        *(a4 + 3) = v18;
        *(a4 + 4) = v19;
        v21 = *(a2 - 8);
        v22 = *(a2 - 7);
        v23 = *(a2 - 5);
        *(a4 + 9) = *(a2 - 6);
        *(a4 + 10) = v23;
        *(a4 + 7) = v21;
        *(a4 + 8) = v22;
        v24 = *(a2 - 4);
        v25 = *(a2 - 3);
        v26 = *(a2 - 1);
        *(a4 + 13) = *(a2 - 2);
        *(a4 + 14) = v26;
        *(a4 + 11) = v24;
        *(a4 + 12) = v25;
        v27 = *result;
        v28 = *(result + 2);
        *(a4 + 16) = *(result + 1);
        *(a4 + 17) = v28;
        *(a4 + 15) = v27;
        v29 = *(result + 3);
        v30 = *(result + 4);
        v31 = *(result + 6);
        *(a4 + 20) = *(result + 5);
        *(a4 + 21) = v31;
        *(a4 + 18) = v29;
        *(a4 + 19) = v30;
        v32 = *(result + 7);
        v33 = *(result + 8);
        v34 = *(result + 10);
        *(a4 + 24) = *(result + 9);
        *(a4 + 25) = v34;
        *(a4 + 22) = v32;
        *(a4 + 23) = v33;
        v35 = *(result + 11);
        v36 = *(result + 12);
        v37 = *(result + 13);
        v38 = *(result + 14);
      }

      *(a4 + 28) = v37;
      *(a4 + 29) = v38;
      *(a4 + 26) = v35;
      *(a4 + 27) = v36;
    }

    else if (a3 == 1)
    {
      v4 = *result;
      v5 = *(result + 2);
      *(a4 + 1) = *(result + 1);
      *(a4 + 2) = v5;
      *a4 = v4;
      v6 = *(result + 3);
      v7 = *(result + 4);
      v8 = *(result + 6);
      *(a4 + 5) = *(result + 5);
      *(a4 + 6) = v8;
      *(a4 + 3) = v6;
      *(a4 + 4) = v7;
      v9 = *(result + 7);
      v10 = *(result + 8);
      v11 = *(result + 10);
      *(a4 + 9) = *(result + 9);
      *(a4 + 10) = v11;
      *(a4 + 7) = v9;
      *(a4 + 8) = v10;
      v12 = *(result + 11);
      v13 = *(result + 12);
      v14 = *(result + 14);
      *(a4 + 13) = *(result + 13);
      *(a4 + 14) = v14;
      *(a4 + 11) = v12;
      *(a4 + 12) = v13;
    }

    else if (a3 > 8)
    {
      v101 = a3 >> 1;
      v102 = 30 * (a3 >> 1);
      v103 = &result[v102];
      v104 = result;
      v107 = a4;
      sub_D61030(result, &result[v102], v101, a4, v101);
      result = sub_D61030(v103, a2, a3 - v101, &v107[v102], a3 - v101);
      v108 = v103;
      while (v108 != a2)
      {
        if (*(v108 + 232) >= *(v104 + 232))
        {
          v109 = *v104;
          v110 = *(v104 + 32);
          *(v107 + 1) = *(v104 + 16);
          *(v107 + 2) = v110;
          *v107 = v109;
          v111 = *(v104 + 48);
          v112 = *(v104 + 64);
          v113 = *(v104 + 96);
          *(v107 + 5) = *(v104 + 80);
          *(v107 + 6) = v113;
          *(v107 + 3) = v111;
          *(v107 + 4) = v112;
          v114 = *(v104 + 112);
          v115 = *(v104 + 128);
          v116 = *(v104 + 160);
          *(v107 + 9) = *(v104 + 144);
          *(v107 + 10) = v116;
          *(v107 + 7) = v114;
          *(v107 + 8) = v115;
          v117 = *(v104 + 176);
          v118 = *(v104 + 192);
          v119 = *(v104 + 224);
          *(v107 + 13) = *(v104 + 208);
          *(v107 + 14) = v119;
          *(v107 + 11) = v117;
          *(v107 + 12) = v118;
          v104 += 240;
          v107 += 30;
          if (v104 == v103)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v120 = *v108;
          v121 = *(v108 + 32);
          *(v107 + 1) = *(v108 + 16);
          *(v107 + 2) = v121;
          *v107 = v120;
          v122 = *(v108 + 48);
          v123 = *(v108 + 64);
          v124 = *(v108 + 96);
          *(v107 + 5) = *(v108 + 80);
          *(v107 + 6) = v124;
          *(v107 + 3) = v122;
          *(v107 + 4) = v123;
          v125 = *(v108 + 112);
          v126 = *(v108 + 128);
          v127 = *(v108 + 160);
          *(v107 + 9) = *(v108 + 144);
          *(v107 + 10) = v127;
          *(v107 + 7) = v125;
          *(v107 + 8) = v126;
          v128 = *(v108 + 176);
          v129 = *(v108 + 192);
          v130 = *(v108 + 224);
          *(v107 + 13) = *(v108 + 208);
          *(v107 + 14) = v130;
          *(v107 + 11) = v128;
          *(v107 + 12) = v129;
          v108 += 240;
          v107 += 30;
          if (v104 == v103)
          {
LABEL_31:
            while (v108 != a2)
            {
              v142 = *v108;
              v143 = *(v108 + 32);
              *(v107 + 1) = *(v108 + 16);
              *(v107 + 2) = v143;
              *v107 = v142;
              v144 = *(v108 + 48);
              v145 = *(v108 + 64);
              v146 = *(v108 + 96);
              *(v107 + 5) = *(v108 + 80);
              *(v107 + 6) = v146;
              *(v107 + 3) = v144;
              *(v107 + 4) = v145;
              v147 = *(v108 + 112);
              v148 = *(v108 + 128);
              v149 = *(v108 + 160);
              *(v107 + 9) = *(v108 + 144);
              *(v107 + 10) = v149;
              *(v107 + 7) = v147;
              *(v107 + 8) = v148;
              v150 = *(v108 + 176);
              v151 = *(v108 + 192);
              v152 = *(v108 + 224);
              *(v107 + 13) = *(v108 + 208);
              *(v107 + 14) = v152;
              *(v107 + 11) = v150;
              *(v107 + 12) = v151;
              v108 += 240;
              v107 += 30;
            }

            return result;
          }
        }
      }

      while (v104 != v103)
      {
        v131 = *v104;
        v132 = *(v104 + 32);
        *(v107 + 1) = *(v104 + 16);
        *(v107 + 2) = v132;
        *v107 = v131;
        v133 = *(v104 + 48);
        v134 = *(v104 + 64);
        v135 = *(v104 + 96);
        *(v107 + 5) = *(v104 + 80);
        *(v107 + 6) = v135;
        *(v107 + 3) = v133;
        *(v107 + 4) = v134;
        v136 = *(v104 + 112);
        v137 = *(v104 + 128);
        v138 = *(v104 + 160);
        *(v107 + 9) = *(v104 + 144);
        *(v107 + 10) = v138;
        *(v107 + 7) = v136;
        *(v107 + 8) = v137;
        v139 = *(v104 + 176);
        v140 = *(v104 + 192);
        v141 = *(v104 + 224);
        *(v107 + 13) = *(v104 + 208);
        *(v107 + 14) = v141;
        *(v107 + 11) = v139;
        *(v107 + 12) = v140;
        v104 += 240;
        v107 += 30;
      }
    }

    else if (result != a2)
    {
      v39 = *result;
      v40 = *(result + 2);
      *(a4 + 1) = *(result + 1);
      *(a4 + 2) = v40;
      *a4 = v39;
      v41 = *(result + 3);
      v42 = *(result + 4);
      v43 = *(result + 6);
      *(a4 + 5) = *(result + 5);
      *(a4 + 6) = v43;
      *(a4 + 3) = v41;
      *(a4 + 4) = v42;
      v44 = *(result + 7);
      v45 = *(result + 8);
      v46 = *(result + 10);
      *(a4 + 9) = *(result + 9);
      *(a4 + 10) = v46;
      *(a4 + 7) = v44;
      *(a4 + 8) = v45;
      v47 = *(result + 11);
      v48 = *(result + 12);
      v49 = *(result + 14);
      *(a4 + 13) = *(result + 13);
      *(a4 + 14) = v49;
      *(a4 + 11) = v47;
      *(a4 + 12) = v48;
      v50 = (result + 30);
      if (result + 30 != a2)
      {
        v51 = 0;
        v52 = a4;
        do
        {
          v64 = result;
          v65 = v52;
          result = v50;
          v52 += 30;
          v66 = v52;
          if (*(v64 + 472) < v65[29])
          {
            v67 = *(v65 + 13);
            *(v52 + 12) = *(v65 + 12);
            *(v52 + 13) = v67;
            *(v52 + 14) = *(v65 + 14);
            v68 = *(v65 + 9);
            *(v52 + 8) = *(v65 + 8);
            *(v52 + 9) = v68;
            v69 = *(v65 + 11);
            *(v52 + 10) = *(v65 + 10);
            *(v52 + 11) = v69;
            v70 = *(v65 + 5);
            *(v52 + 4) = *(v65 + 4);
            *(v52 + 5) = v70;
            v71 = *(v65 + 7);
            *(v52 + 6) = *(v65 + 6);
            *(v52 + 7) = v71;
            v72 = *(v65 + 1);
            *v52 = *v65;
            *(v52 + 1) = v72;
            v73 = *(v65 + 3);
            v66 = a4;
            *(v52 + 2) = *(v65 + 2);
            *(v52 + 3) = v73;
            if (v65 != a4)
            {
              v74 = v51;
              while (1)
              {
                v66 = (a4 + v74);
                if (*(v64 + 472) >= *(a4 + v74 - 8))
                {
                  break;
                }

                v75 = *(v66 - 2);
                *(v66 + 12) = *(v66 - 3);
                *(v66 + 13) = v75;
                *(v66 + 14) = *(v66 - 1);
                v76 = *(v66 - 6);
                *(v66 + 8) = *(v66 - 7);
                *(v66 + 9) = v76;
                v77 = *(v66 - 4);
                *(v66 + 10) = *(v66 - 5);
                *(v66 + 11) = v77;
                v78 = *(v66 - 10);
                *(v66 + 4) = *(v66 - 11);
                *(v66 + 5) = v78;
                v79 = *(v66 - 8);
                *(v66 + 6) = *(v66 - 9);
                *(v66 + 7) = v79;
                v80 = *(v66 - 14);
                *v66 = *(v66 - 15);
                *(v66 + 1) = v80;
                v81 = *(v66 - 12);
                *(v66 + 2) = *(v66 - 13);
                *(v66 + 3) = v81;
                v74 -= 240;
                if (!v74)
                {
                  v66 = a4;
                  break;
                }
              }
            }
          }

          v53 = *result;
          v54 = *(result + 2);
          *(v66 + 1) = *(result + 1);
          *(v66 + 2) = v54;
          *v66 = v53;
          v55 = *(result + 3);
          v56 = *(result + 4);
          v57 = *(result + 6);
          *(v66 + 5) = *(result + 5);
          *(v66 + 6) = v57;
          *(v66 + 3) = v55;
          *(v66 + 4) = v56;
          v58 = *(result + 7);
          v59 = *(result + 8);
          v60 = *(result + 10);
          *(v66 + 9) = *(result + 9);
          *(v66 + 10) = v60;
          *(v66 + 7) = v58;
          *(v66 + 8) = v59;
          v61 = *(result + 11);
          v62 = *(result + 12);
          v63 = *(result + 14);
          *(v66 + 13) = *(result + 13);
          *(v66 + 14) = v63;
          *(v66 + 11) = v61;
          *(v66 + 12) = v62;
          v50 = (result + 30);
          v51 += 240;
        }

        while (result + 30 != a2);
      }
    }
  }

  return result;
}