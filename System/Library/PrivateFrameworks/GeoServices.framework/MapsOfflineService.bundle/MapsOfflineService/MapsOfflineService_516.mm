void sub_1BFBCB0()
{
  sub_3608D0(__p, "earthstats.max_elevation");
  qword_27EE6A8 = 0;
  unk_27EE6B0 = 0;
  qword_27EE6B8 = 0;
  sub_68678C(&qword_27EE6A8, __p, &v10, 1uLL);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "earthstats.length");
  qword_27EE6C0 = 0;
  *algn_27EE6C8 = 0;
  qword_27EE6D0 = 0;
  sub_68678C(&qword_27EE6C0, __p, &v10, 1uLL);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "hotelstravel.trainstations");
  qword_27EE6D8 = 0;
  unk_27EE6E0 = 0;
  qword_27EE6E8 = 0;
  sub_68678C(&qword_27EE6D8, __p, &v10, 1uLL);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1BF11F4(v0, v1, v2, v3, v4, v5, v6, v7);
}

void sub_1BFBDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1BFBDFC(uint64_t a1, void *a2)
{
  sub_19594F8(&v25);
  std::ostream::operator<<();
  if ((v32 & 0x10) != 0)
  {
    v3 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v3 = v28;
    }

    locale = v27[4].__locale_;
  }

  else
  {
    if ((v32 & 8) == 0)
    {
      v2 = 0;
      v24 = 0;
      goto LABEL_14;
    }

    locale = v27[1].__locale_;
    v3 = v27[3].__locale_;
  }

  v2 = v3 - locale;
  if ((v3 - locale) > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  v24 = v3 - locale;
  if (v2)
  {
    memmove(&__dst, locale, v2);
  }

LABEL_14:
  *(&__dst + v2) = 0;
  if (v24 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v6 = [NSString stringWithUTF8String:p_dst];
  if (v24 < 0)
  {
    operator delete(__dst);
  }

  v7 = [v6 dataUsingEncoding:4];
  v22 = 0;
  v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v22];
  v9 = v22;
  if (!v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v7;
      v10 = v8;
      v11 = [v10 keyEnumerator];
      v12 = 0;
      while (1)
      {
        v13 = [v11 nextObject];

        if (!v13)
        {
          break;
        }

        v14 = [v10 objectForKeyedSubscript:v13];
        v15 = [v14 integerValue];
        v12 = v13;
        v16 = [v12 UTF8String];
        v17 = [v12 lengthOfBytesUsingEncoding:4];
        v18 = v17;
        if (v17 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v17 >= 0x17)
        {
          operator new();
        }

        v24 = v17;
        if (v17)
        {
          memmove(&__dst, v16, v17);
        }

        *(&__dst + v18) = 0;

        v33 = &__dst;
        *(sub_1BFC310((a1 + 24), &__dst, &unk_229EB70, &v33) + 56) = v15;
        if (v24 < 0)
        {
          operator delete(__dst);
        }
      }

      v7 = v20;
      v9 = 0;
    }
  }

  if (v30 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v27);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1BFC230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, void *a11, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t _88, uint64_t _90, uint64_t _98, ...)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1BFC310(uint64_t **a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_122356C(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

BOOL sub_1BFC3BC(uint64_t *a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80000000) == 0)
  {
    if (v1 != 4)
    {
      return 0;
    }

    return *a1 == 1701080931;
  }

  if (a1[1] == 4)
  {
    a1 = *a1;
    return *a1 == 1701080931;
  }

  return 0;
}

uint64_t sub_1BFC400@<X0>(__int128 **a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      sub_1C04730(v18, v19);
      if (a3)
      {
        if (*(v5 + 23) < 0)
        {
          sub_325C(&v23, *v5, *(v5 + 1));
        }

        else
        {
          v11 = *v5;
          v23.__r_.__value_.__r.__words[2] = *(v5 + 2);
          *&v23.__r_.__value_.__l.__data_ = v11;
        }

        sub_1E78868(&v23);
        v12 = sub_1C0080C(&v23, a2, v18);
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v12 = sub_1C0080C(v5, a2, v18);
      }

      sub_11BD8(v18);
      if (v12)
      {
        if (v12 == 1)
        {
          if (v12 >> 32 >= ((a2[1] - *a2) >> 6))
          {
            goto LABEL_20;
          }

          v13 = *(*a2 + (v12 >> 32 << 6) + 24);
          v14 = sub_1CEAF00(v5);
          sub_1BFC60C(v21, v13, v14);
          ++v10;
        }
      }

      else
      {
        if (v12 >> 32 >= ((a2[1] - *a2) >> 6))
        {
LABEL_20:
          sub_6FAB4();
        }

        v15 = *(*a2 + (v12 >> 32 << 6) + 24);
        v16 = sub_1CEAF00(v5);
        sub_1BFC60C(v21, v15, v16);
        ++v9;
      }

      v5 += 4;
    }

    while (v5 != v6);
  }

  *a4 = v9;
  a4[1] = v10;
  sub_195F0F8((a4 + 2), v21);
  sub_11BD8(v19);
  return sub_11BD8(v21);
}

void sub_1BFC5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_11BD8(va);
  sub_11BD8(va1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1BFC60C(void *a1, unsigned int a2, uint64_t a3)
{
  v7 = a2;
  result = sub_1C00B6C(a1, &v7);
  if (result)
  {
    if (*(result + 5) < a3)
    {
      *(result + 5) = a3;
    }
  }

  else
  {
    v6 = v7 | (a3 << 32);
    return sub_1C00C20(a1, &v6, &v6);
  }

  return result;
}

void sub_1BFC678(__int128 **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v4 = a3;
  if (*a2 == a2[1])
  {
    v34 = *a1;
    if (a1[1] == *a1)
    {
      sub_6FAB4();
    }

    if (*(v34 + 23) < 0)
    {
      sub_325C(a3, *v34, *(v34 + 1));
    }

    else
    {
      v35 = *v34;
      *(a3 + 16) = *(v34 + 2);
      *a3 = v35;
    }

    *(v4 + 24) = *(v34 + 3);
    *(v4 + 32) = 1;
    return;
  }

  v55[0] = 0;
  v55[1] = 0;
  v54 = v55;
  v6 = *a1;
  v5 = a1[1];
  if (v5 == *a1)
  {
LABEL_61:
    if (v5 == v6)
    {
      sub_6FAB4();
    }

    if (*(v6 + 23) < 0)
    {
      sub_325C(v51, *v6, *(v6 + 1));
    }

    else
    {
      v38 = *v6;
      v52 = *(v6 + 2);
      *v51 = v38;
    }

    v39 = *(v6 + 3);
    v53 = v39 | 0x7FFFFFFF00000000;
    if (SHIBYTE(v52) < 0)
    {
      sub_325C(__p, v51[0], v51[1]);
    }

    else
    {
      *__p = *v51;
      v49 = v52;
    }

    v50 = v39 | 0x7FFFFFFF00000000;
    if ((SHIBYTE(v49) & 0x80000000) == 0)
    {
      *v4 = *__p;
      v40 = v50;
      *(v4 + 16) = v49;
      *(v4 + 24) = v40;
      *(v4 + 32) = 0;
      goto LABEL_86;
    }

    sub_325C(v4, __p[0], __p[1]);
    v41 = SHIBYTE(v49);
    *(v4 + 24) = v50;
    *(v4 + 32) = 0;
    if (v41 < 0)
    {
      goto LABEL_85;
    }

    goto LABEL_86;
  }

  v8 = 0;
  v9 = 0x7FFFFFFF;
  v10 = -1;
  v11 = -1;
  v12 = 0x7FFFFFFF;
  v46 = v4;
  do
  {
    v13 = &v6[2 * v8];
    if (*(v13 + 23) < 0)
    {
      sub_325C(v51, *v13, *(v13 + 1));
    }

    else
    {
      v14 = *v13;
      v52 = *(v13 + 2);
      *v51 = v14;
    }

    v15 = *(v13 + 3);
    v53 = v15;
    if (SHIBYTE(v52) < 0)
    {
      if (v51[1] != dword_4)
      {
        goto LABEL_13;
      }

      v16 = v51[0];
    }

    else
    {
      if (SHIBYTE(v52) != 4)
      {
        goto LABEL_13;
      }

      v16 = v51;
    }

    if (*v16 != 1701080931)
    {
LABEL_13:
      if (v55 == sub_19D5254(&v54, v51))
      {
        sub_7E36C(&v54, v51, v51);
        v18 = *a2;
        v19 = a2[1];
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *a2) >> 3);
        if (v12 >= v20)
        {
          v21 = -1431655765 * ((v19 - *a2) >> 3);
        }

        else
        {
          v21 = v12;
        }

        if (v21 >= 1)
        {
          v22 = 0;
          v23 = 0;
          do
          {
            v24 = HIBYTE(v52);
            if (v52 < 0)
            {
              v24 = v51[1];
            }

            if (v24)
            {
              v25 = 0;
            }

            else
            {
              v25 = v23 < v9;
            }

            if (v25)
            {
              v9 = v23;
              v11 = v8;
            }

            else
            {
              if (v20 <= v23)
              {
                sub_6FAB4();
              }

              if (sub_219B0D4(v51, (v18 + v22)))
              {
                v12 = v23;
                v10 = v8;
              }

              v18 = *a2;
              v19 = a2[1];
            }

            ++v23;
            v20 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3);
            if (v12 >= v20)
            {
              v26 = -1431655765 * ((v19 - v18) >> 3);
            }

            else
            {
              v26 = v12;
            }

            v22 += 24;
          }

          while (v23 < v26);
        }

        v17 = 0;
        v3 = a1;
      }

      else
      {
        v17 = 4;
      }

      goto LABEL_44;
    }

    v27 = *a2;
    v28 = a2[1];
    if (SHIBYTE(v52) < 0)
    {
      sub_325C(__p, v51[0], v51[1]);
    }

    else
    {
      *__p = *v51;
      v49 = v52;
    }

    LODWORD(v50) = v15;
    HIDWORD(v50) = -1431655765 * ((v28 - v27) >> 3);
    if (SHIBYTE(v49) < 0)
    {
      v4 = v46;
      sub_325C(v46, __p[0], __p[1]);
      v3 = a1;
      v30 = SHIBYTE(v49);
      *(v46 + 24) = v50;
      *(v46 + 32) = 1;
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v4 = v46;
      v3 = a1;
      *v46 = *__p;
      v29 = v50;
      *(v46 + 16) = v49;
      *(v46 + 24) = v29;
      *(v46 + 32) = 1;
    }

    v17 = 1;
LABEL_44:
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51[0]);
    }

    if ((v17 | 4) != 4)
    {
      goto LABEL_88;
    }

    ++v8;
    v6 = *v3;
    v5 = v3[1];
    v31 = (v5 - *v3) >> 5;
  }

  while (v31 > v8);
  if ((v10 & 0x80000000) == 0)
  {
    if (v31 <= v10)
    {
      sub_6FAB4();
    }

    v32 = &v6[2 * v10];
    if (*(v32 + 23) < 0)
    {
      sub_325C(v51, *v32, *(v32 + 1));
    }

    else
    {
      v33 = *v32;
      v52 = *(v32 + 2);
      *v51 = v33;
    }

    v42 = *(v32 + 3);
    v53 = v42;
    if (SHIBYTE(v52) < 0)
    {
      sub_325C(__p, v51[0], v51[1]);
    }

    else
    {
      *__p = *v51;
      v49 = v52;
    }

    v50 = __PAIR64__(v12, v42);
    if (SHIBYTE(v49) < 0)
    {
      goto LABEL_84;
    }

LABEL_83:
    *v4 = *__p;
    v44 = v50;
    *(v4 + 16) = v49;
    *(v4 + 24) = v44;
    *(v4 + 32) = 1;
    goto LABEL_86;
  }

  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  if (v31 <= v11)
  {
    sub_6FAB4();
  }

  v36 = &v6[2 * v11];
  if (*(v36 + 23) < 0)
  {
    sub_325C(v51, *v36, *(v36 + 1));
  }

  else
  {
    v37 = *v36;
    v52 = *(v36 + 2);
    *v51 = v37;
  }

  v43 = *(v36 + 3);
  v53 = v43;
  if (SHIBYTE(v52) < 0)
  {
    sub_325C(__p, v51[0], v51[1]);
  }

  else
  {
    *__p = *v51;
    v49 = v52;
  }

  v50 = __PAIR64__(v9, v43);
  if ((SHIBYTE(v49) & 0x80000000) == 0)
  {
    goto LABEL_83;
  }

LABEL_84:
  sub_325C(v4, __p[0], __p[1]);
  v45 = SHIBYTE(v49);
  *(v4 + 24) = v50;
  *(v4 + 32) = 1;
  if (v45 < 0)
  {
LABEL_85:
    operator delete(__p[0]);
  }

LABEL_86:
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

LABEL_88:
  sub_7E724(&v54, v55[0]);
}

void sub_1BFCBB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_7E724(&a28, a29);
  _Unwind_Resume(a1);
}

BOOL sub_1BFCC34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) == 1)
  {
    if ((*(a2 + 120) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 120))
  {
    return 1;
  }

  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (v3 != v4)
  {
    return v3 > v4;
  }

  v5 = *(a1 + 76);
  v6 = *(a2 + 76);
  v7 = v5 < v6;
  if (v5 == v6)
  {
    v8 = *(a1 + 68);
    v9 = *(a2 + 68);
    v7 = v8 < v9;
    if (v8 == v9)
    {
      return *(a1 + 72) < *(a2 + 72);
    }
  }

  return v7;
}

BOOL sub_1BFCCF4(uint64_t *a1, void *a2, uint64_t ***a3)
{
  v4 = *(a3 + 23);
  if (v4 < 0)
  {
    if (a3[1] != (&dword_0 + 2))
    {
      return 0;
    }

    a3 = *a3;
  }

  else if (v4 != 2)
  {
    return 0;
  }

  if (*a3 != 20035)
  {
    return 0;
  }

  sub_1A489F0(a2, __p);
  if (sub_19F43EC(__p, "zh"))
  {
    v7 = *a1;
    if (a1[1] == *a1)
    {
      v5 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v5 = sub_1CF70F4((v7 + v8));
        if (!v5)
        {
          break;
        }

        ++v9;
        v7 = *a1;
        v8 += 64;
      }

      while (v9 < (a1[1] - *a1) >> 6);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1BFCDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BFCDFC(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (***a3)(void **__return_ptr, void, uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      (**a3)(v18, a3, v5 + v9, a2);
      if (SHIBYTE(v19) < 0)
      {
        sub_325C(__p, v18[0], v18[1]);
      }

      else
      {
        *__p = *v18;
        v14 = v19;
      }

      sub_1A7AC14(v15, __p);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }

      v11 = a4[1];
      if (v11 >= a4[2])
      {
        v12 = sub_1A3CA7C(a4, v15);
      }

      else
      {
        sub_19A25E4(a4[1], v15);
        v12 = v11 + 64;
      }

      a4[1] = v12;
      sub_195A77C(v17, v17[1]);
      if (v16 < 0)
      {
        operator delete(v15[0]);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }

      ++v10;
      v5 = *a1;
      v9 += 64;
    }

    while (v10 < (a1[1] - *a1) >> 6);
  }
}

void sub_1BFCF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_19A240C(&a15);
  _Unwind_Resume(a1);
}

void sub_1BFCFB8(uint64_t a1@<X0>, __int128 **a2@<X8>)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(v3 + 296);
  if (v4 == 5)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if (*(v3 + 288) != 5)
    {
      sub_5AF20();
    }

    sub_1C00E4C(a2, 0, *(v3 + 88), *(v3 + 96), (*(v3 + 96) - *(v3 + 88)) >> 6);
    v10 = *(v3 + 8);
    v11 = *(v3 + 16);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v10)
    {
      v13 = *(v3 + 8);
      v12 = *(v3 + 16);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *(v13 + 296) == 1;
        sub_1220A18(v12);
        if (!v11)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v14 = *(v13 + 296) == 1;
        if (!v11)
        {
LABEL_28:
          v16 = *(v3 + 8);
          v15 = *(v3 + 16);
          if (!v14)
          {
            goto LABEL_36;
          }

          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            if (*(v16 + 288) == 2)
            {
              sub_1220A18(v15);
LABEL_35:
              sub_1C00E4C(a2, a2[1], *(v16 + 208), *(v16 + 216), (*(v16 + 216) - *(v16 + 208)) >> 6);
              v16 = *(v3 + 8);
              v15 = *(v3 + 16);
LABEL_36:
              if (v15)
              {
                atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v16)
              {
                v18 = *(v3 + 8);
                v17 = *(v3 + 16);
                if (!v17)
                {
                  LODWORD(v16) = *(v18 + 296) == 4;
                  if (!v15)
                  {
LABEL_43:
                    if (!v16)
                    {
                      return;
                    }

                    v20 = *(v3 + 8);
                    v19 = *(v3 + 16);
                    if (v19)
                    {
                      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
                      if (*(v20 + 288) == 4)
                      {
                        sub_1220A18(v19);
LABEL_50:
                        sub_1C00E4C(a2, a2[1], *(v20 + 152), *(v20 + 160), (*(v20 + 160) - *(v20 + 152)) >> 6);
                        return;
                      }
                    }

                    else if (*(v20 + 288) == 4)
                    {
                      goto LABEL_50;
                    }

                    sub_5AF20();
                  }

LABEL_42:
                  sub_1220A18(v15);
                  goto LABEL_43;
                }

                atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                LODWORD(v16) = *(v18 + 296) == 4;
                sub_1220A18(v17);
              }

              if (!v15)
              {
                goto LABEL_43;
              }

              goto LABEL_42;
            }
          }

          else if (*(v16 + 288) == 2)
          {
            goto LABEL_35;
          }

          sub_5AF20();
        }
      }
    }

    else
    {
      v14 = 0;
      if (!v11)
      {
        goto LABEL_28;
      }
    }

    sub_1220A18(v11);
    goto LABEL_28;
  }

  if (v4 == 3)
  {
    if (*(v3 + 288))
    {
      sub_5AF20();
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *(v3 + 56);
    v6 = *(v3 + 64);
    goto LABEL_23;
  }

LABEL_6:
  v7 = *(a1 + 24);
  if (!v7)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  v8 = *(v7 + 72);
  if (v8 != 9 && v8 != 6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *(v7 + 48);
    v6 = *(v7 + 56);
LABEL_23:

    sub_19A22C0(a2, v5, v6, (v6 - v5) >> 6);
    return;
  }

  sub_1C11C3C(v7, a2);
}

void sub_1BFD268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19A240C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1BFD2A4@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result[1];
  if (v3 && *(v3 + 296) == 3)
  {
    if (*(v3 + 288))
    {
      sub_5AF20();
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);

    return sub_19A22C0(a2, v4, v5, (v5 - v4) >> 6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_1BFD304(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  memset(v26, 0, sizeof(v26));
  if (*(a1 + 8) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = sub_1C047A8(a1, v8);
      sub_1DBAD7C((*(v9 + 24) & 0xFFFFFFFFFFFFFFFELL), v25);
      v10 = v25[0];
      v11 = v25[1];
      while (v10 != v11)
      {
        if (!sub_1BFC3BC(v10))
        {
          v12 = sub_19D5254(&v27, v10);
          if (v28 == v12)
          {
            sub_1A489AC(v26, v10);
            v14 = *(v10 + 24);
            if (*(v10 + 23) < 0)
            {
              sub_325C(&__p, *v10, *(v10 + 8));
            }

            else
            {
              v15 = *v10;
              __p.__r_.__value_.__r.__words[2] = *(v10 + 16);
              *&__p.__r_.__value_.__l.__data_ = v15;
            }

            v24 = v8 + (v14 << 32);
            sub_1C01208(&v27, &__p, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v13 = *(v10 + 24);
            if (*(v12 + 60) > v13)
            {
              *(v12 + 56) = v8;
              *(v12 + 60) = v13;
            }
          }
        }

        v10 += 32;
      }

      __p.__r_.__value_.__r.__words[0] = v25;
      sub_19E2C00(&__p);
      ++v8;
    }

    while (v8 < *(a1 + 8));
  }

  sub_1C012AC(&v20, &v27, v26);
  __p.__r_.__value_.__r.__words[0] = v26;
  sub_195E3E8(&__p);
  sub_1962CE0(&v27, v28[0]);
  if (v22[0] == v22[1])
  {
    *&v16 = 0;
    *a4 = 0u;
    *(a4 + 16) = v16;
    *(a4 + 40) = 0;
    *(a4 + 48) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 1065353216;
    *(a4 + 32) = 0;
    *(a4 + 64) = 0;
    *(a4 + 68) = 0x8000000080000000;
    *(a4 + 76) = 0x7FFFFFFF;
    *(a4 + 120) = 0;
    *(a4 + 122) = 0;
  }

  else
  {
    sub_1AE929C(v22, a3, a2, &__p);
    v17 = sub_19D5254(&v20, &__p);
    *&v18 = 0;
    *a4 = 0u;
    *(a4 + 16) = v18;
    *(a4 + 40) = 0;
    *(a4 + 48) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 1065353216;
    *(a4 + 32) = 0;
    *(a4 + 64) = 0;
    *(a4 + 68) = 0x8000000080000000;
    *(a4 + 76) = 0x7FFFFFFF;
    *(a4 + 120) = 0;
    *(a4 + 122) = 0;
    if (&v21 != v17)
    {
      v19 = sub_1C047A8(a1, *(v17 + 56));
      *(a4 + 24) = 1;
      std::string::operator=((a4 + 40), &__p);
      std::string::operator=(a4, (*(v19 + 32) & 0xFFFFFFFFFFFFFFFELL));
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  __p.__r_.__value_.__r.__words[0] = v22;
  sub_195E3E8(&__p);
  sub_1962CE0(&v20, v21);
}

void sub_1BFD5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1C01530(&a9);
  _Unwind_Resume(a1);
}

void sub_1BFD668(__int128 **a1@<X0>, void ***a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void (***a5)(void **__return_ptr, void, uint64_t, uint64_t)@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = 0uLL;
  v30 = 0;
  v21 = sub_1BFCCA8(a4);
  if (!v21)
  {
    sub_1E78448(a2, a4, a7, v16, v17, v18, v19, v20);
  }

  sub_1E789A4(a2, &v29);
  if (a6)
  {
    sub_1BFCDFC(&v29, a4, a5, v28);
  }

  else
  {
    memset(v28, 0, sizeof(v28));
    sub_19A22C0(v28, v29, *(&v29 + 1), (*(&v29 + 1) - v29) >> 6);
  }

  sub_1BFC400(a1, v28, v21, &v26);
  v22 = v26;
  v23 = HIDWORD(v26);
  if (*(a4 + 23) < 0)
  {
    sub_325C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v25 = *(a4 + 16);
  }

  sub_1C01578(a8, a2, v23 + v22, v22, v23, __p, *(a4 + 32), *(a4 + 24), *(a4 + 28), a3, &v27);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  sub_11BD8(&v27);
  v26 = v28;
  sub_19A240C(&v26);
  v26 = &v29;
  sub_19A240C(&v26);
}

void sub_1BFD81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_11BD8(&a19);
  a18 = &a25;
  sub_19A240C(&a18);
  a18 = (v25 - 112);
  sub_19A240C(&a18);
  _Unwind_Resume(a1);
}

void sub_1BFD884(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void (***a5)(void **__return_ptr, void, uint64_t, uint64_t)@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  if (a6)
  {
    (**a5)(v17, a5, a1, a4);
  }

  else if (*(a1 + 23) < 0)
  {
    sub_325C(v17, *a1, *(a1 + 8));
  }

  else
  {
    *v17 = *a1;
    v18 = *(a1 + 16);
  }

  sub_1CEB124(v17, a2, v15);
  v11 = v16;
  if (v16)
  {
    v12 = 0;
    do
    {
      v12 += *(v11 + 5);
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  if (*(a4 + 23) < 0)
  {
    sub_325C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v14 = *(a4 + 16);
  }

  sub_1C01578(a7, a2, v12, 0, v12, __p, *(a4 + 32), *(a4 + 24), *(a4 + 28), a3, v15);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  sub_11BD8(v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_1BFD9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_11BD8(&a17);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1BFDA28(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memset(v14, 0, sizeof(v14));
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = v7 + 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v8 + 8 * v9;
    do
    {
      sub_1DBAD7C((*(*v8 + 24) & 0xFFFFFFFFFFFFFFFELL), v13);
      v11 = v13[0];
      v12 = v13[1];
      while (v11 != v12)
      {
        sub_1A489AC(v14, v11);
        v11 += 2;
      }

      v15 = v13;
      sub_19E2C00(&v15);
      v8 += 8;
    }

    while (v8 != v10);
  }

  sub_1AE929C(v14, a3, a2, a4);
  v13[0] = v14;
  sub_195E3E8(v13);
}

void sub_1BFDB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_195E3E8(&a10);
  _Unwind_Resume(a1);
}

void sub_1BFDB40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, void (***a8)(void **__return_ptr, void, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>, __n128 a10@<Q1>, unsigned int a11, char a12)
{
  if (*a1 == *(a1 + 8))
  {
    a10.n128_u64[0] = 0;
    *a9 = 0u;
    *(a9 + 16) = a10;
    *(a9 + 40) = 0;
    *(a9 + 48) = 0u;
    *(a9 + 80) = 0u;
    *(a9 + 96) = 0u;
    *(a9 + 112) = 1065353216;
    *(a9 + 32) = 0;
    *(a9 + 64) = 0;
    *(a9 + 68) = 0x8000000080000000;
    *(a9 + 76) = 0x7FFFFFFF;
    *(a9 + 120) = 0;
    *(a9 + 122) = 0;
    return;
  }

  v92 = 0uLL;
  v93 = 0;
  if (a12)
  {
    sub_1BFDA28(a3, a4, a5, v84);
    v92 = *v84;
    v93 = *&v84[16];
  }

  v42 = a4;
  a10.n128_u64[0] = 0;
  *v84 = 0u;
  *&v84[16] = a10;
  memset(&v86, 0, sizeof(v86));
  memset(v88, 0, sizeof(v88));
  v89 = 1065353216;
  v85 = 0;
  LOBYTE(v87) = 0;
  *(&v87 + 4) = 0x8000000080000000;
  HIDWORD(v87) = 0x7FFFFFFF;
  v90 = 0;
  v91 = 0;
  if (*(a3 + 8) >= 1)
  {
    v18 = 0;
    v45 = HIDWORD(a6);
    do
    {
      v19 = sub_1C047A8(a3, v18);
      sub_1DBAD7C((*(v19 + 24) & 0xFFFFFFFFFFFFFFFELL), v83);
      v20 = sub_58BBC(a5);
      sub_1BFC678(v83, v20, v79);
      if ((v82 & 1) == 0)
      {
        v29 = 4;
        goto LABEL_97;
      }

      if (a12)
      {
        v22 = SHIBYTE(v80);
        v23 = v79[1];
        if (v80 >= 0)
        {
          v24 = HIBYTE(v80);
        }

        else
        {
          v24 = v79[1];
        }

        v25 = HIBYTE(v93);
        if (v93 < 0)
        {
          v25 = *(&v92 + 1);
        }

        if (v24 != v25 || (v80 >= 0 ? (v26 = v79) : (v26 = v79[0]), v93 >= 0 ? (v27 = &v92) : (v27 = v92), memcmp(v26, v27, v24)))
        {
          if (v22 < 0)
          {
            if (v23 != dword_4)
            {
              goto LABEL_28;
            }

            v28 = v79[0];
          }

          else
          {
            if (v22 != 4)
            {
              goto LABEL_28;
            }

            v28 = v79;
          }

          if (*v28 != 1701080931)
          {
LABEL_28:
            v29 = 4;
            goto LABEL_97;
          }
        }
      }

      *&v21 = 0;
      *__p = 0u;
      v70 = v21;
      memset(&v72, 0, sizeof(v72));
      v74 = 0u;
      v75 = 0u;
      v71 = 0;
      LOBYTE(v73) = 0;
      *(&v73 + 4) = 0x8000000080000000;
      v76 = 1065353216;
      HIDWORD(v73) = 0x7FFFFFFF;
      v77 = 0;
      v78 = 0;
      if (v45)
      {
        if (*(a2 + 23) < 0)
        {
          sub_325C(v53, *a2, *(a2 + 8));
        }

        else
        {
          *v53 = *a2;
          v54 = *(a2 + 16);
        }

        v32 = *(v19 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v32 + 23) < 0)
        {
          sub_325C(v51, *v32, *(v32 + 8));
        }

        else
        {
          v33 = *v32;
          v52 = *(v32 + 16);
          *v51 = v33;
        }

        if (SHIBYTE(v80) < 0)
        {
          sub_325C(v47, v79[0], v79[1]);
        }

        else
        {
          *v47 = *v79;
          v48 = v80;
        }

        v49 = v81;
        v50 = v82;
        sub_1BFD884(v53, v51, v18, v47, a8, a7 == 1, v61);
        if (SBYTE7(v70) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *v61;
        v70 = v62;
        BYTE7(v62) = 0;
        LOBYTE(v61[0]) = 0;
        v71 = v63;
        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        v72 = v64;
        *(&v64.__r_.__value_.__s + 23) = 0;
        v64.__r_.__value_.__s.__data_[0] = 0;
        v73 = v65;
        sub_19608BC(&v74, v66);
        v77 = v67;
        v78 = v68;
        sub_11BD8(v66);
        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if (SBYTE7(v62) < 0)
        {
          operator delete(v61[0]);
        }

        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47[0]);
        }

        if (SHIBYTE(v52) < 0)
        {
          operator delete(v51[0]);
        }

        if (SHIBYTE(v54) < 0)
        {
          v34 = v53[0];
          goto LABEL_71;
        }
      }

      else
      {
        v30 = *(v19 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v30 + 23) < 0)
        {
          sub_325C(&v59, *v30, *(v30 + 8));
        }

        else
        {
          v31 = *v30;
          v60 = *(v30 + 16);
          v59 = v31;
        }

        if (SHIBYTE(v80) < 0)
        {
          sub_325C(v55, v79[0], v79[1]);
        }

        else
        {
          *v55 = *v79;
          v56 = v80;
        }

        v57 = v81;
        v58 = v82;
        sub_1BFD668(a1, &v59, v18, v55, a8, a7 == 1, a11, v61);
        if (SBYTE7(v70) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *v61;
        v70 = v62;
        BYTE7(v62) = 0;
        LOBYTE(v61[0]) = 0;
        v71 = v63;
        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        v72 = v64;
        *(&v64.__r_.__value_.__s + 23) = 0;
        v64.__r_.__value_.__s.__data_[0] = 0;
        v73 = v65;
        sub_19608BC(&v74, v66);
        v77 = v67;
        v78 = v68;
        sub_11BD8(v66);
        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if (SBYTE7(v62) < 0)
        {
          operator delete(v61[0]);
        }

        if (SHIBYTE(v56) < 0)
        {
          operator delete(v55[0]);
        }

        if (SHIBYTE(v60) < 0)
        {
          v34 = v59;
LABEL_71:
          operator delete(v34);
        }
      }

      if (v77 == 1)
      {
        if ((v90 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else if (v90)
      {
        goto LABEL_83;
      }

      if (DWORD2(v70) == *&v84[24])
      {
        v35 = SHIDWORD(v73) < SHIDWORD(v87);
        if (HIDWORD(v73) == HIDWORD(v87))
        {
          v35 = SDWORD1(v73) < SDWORD1(v87);
          if (DWORD1(v73) == DWORD1(v87))
          {
            v35 = SDWORD2(v73) < SDWORD2(v87);
          }
        }

        if (!v35)
        {
LABEL_81:
          v29 = 4;
          goto LABEL_93;
        }
      }

      else if (SDWORD2(v70) <= *&v84[24])
      {
        goto LABEL_81;
      }

LABEL_83:
      std::string::operator=(v84, __p);
      *&v84[24] = *(&v70 + 1);
      v85 = v71;
      std::string::operator=(&v86, &v72);
      v87 = v73;
      v89 = v76;
      sub_1960DDC(v88, v75, 0);
      v90 = v77;
      v91 = v78;
      if (v82 == 1 && SDWORD2(v70) == (*(a1 + 8) - *a1) >> 6)
      {
        if (SHIBYTE(v80) < 0)
        {
          if (v79[1] == dword_4)
          {
            v36 = v79[0];
            goto LABEL_91;
          }
        }

        else if (SHIBYTE(v80) == 4)
        {
          v36 = v79;
LABEL_91:
          if (*v36 == 1701080931)
          {
            sub_1BFD304(a3, v42, a5, a9);
            v29 = 1;
            *(a9 + 120) = 1;
            goto LABEL_93;
          }
        }

        *a9 = *__p;
        v37 = v70;
        __p[1] = 0;
        *&v70 = 0;
        __p[0] = 0;
        v38 = *(&v70 + 1);
        *(a9 + 16) = v37;
        *(a9 + 24) = v38;
        *(a9 + 32) = v71;
        *(a9 + 40) = v72;
        memset(&v72, 0, sizeof(v72));
        *(a9 + 64) = v73;
        sub_195FFEC(a9 + 80, &v74);
        *(a9 + 120) = v77;
        *(a9 + 122) = v78;
        v29 = 1;
        goto LABEL_93;
      }

      v29 = 0;
LABEL_93:
      sub_11BD8(&v74);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v70) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_97:
      if (SHIBYTE(v80) < 0)
      {
        operator delete(v79[0]);
      }

      __p[0] = v83;
      sub_19E2C00(__p);
      if ((v29 | 4) != 4)
      {
        goto LABEL_112;
      }

      ++v18;
    }

    while (v18 < *(a3 + 8));
  }

  if (!a12)
  {
    goto LABEL_111;
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v86.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_111;
    }

    v39 = v86.__r_.__value_.__r.__words[0];
  }

  else
  {
    v39 = &v86;
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_111;
    }
  }

  if (LODWORD(v39->__r_.__value_.__l.__data_) == 1701080931)
  {
    sub_1BFD304(a3, v42, a5, a9);
    *(a9 + 120) = 1;
    goto LABEL_112;
  }

LABEL_111:
  *a9 = *v84;
  v40 = *&v84[16];
  memset(v84, 0, 24);
  v41 = *&v84[24];
  *(a9 + 16) = v40;
  *(a9 + 24) = v41;
  *(a9 + 32) = v85;
  *(a9 + 40) = v86;
  memset(&v86, 0, sizeof(v86));
  *(a9 + 64) = v87;
  sub_195FFEC(a9 + 80, v88);
  *(a9 + 120) = v90;
  *(a9 + 122) = v91;
LABEL_112:
  sub_11BD8(v88);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if ((v84[23] & 0x80000000) != 0)
  {
    operator delete(*v84);
  }

  if (SHIBYTE(v93) < 0)
  {
    operator delete(v92);
  }
}

void sub_1BFE418(_Unwind_Exception *a1)
{
  sub_19D4D44(v1 - 256);
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1BFE4F8(__int128 **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X5>, int a5@<W7>, uint64_t a6@<X8>, __n128 a7@<Q1>, void (***a8)(void **__return_ptr, void, uint64_t, uint64_t), unsigned int a9, uint64_t a10, unsigned int **a11)
{
  a7.n128_u64[0] = 0;
  *(a6 + 40) = 0;
  v32 = (a6 + 40);
  *a6 = 0u;
  *(a6 + 16) = a7;
  *(a6 + 48) = 0u;
  *(a6 + 80) = 0u;
  v30 = (a6 + 80);
  *(a6 + 96) = 0u;
  *(a6 + 112) = 1065353216;
  *(a6 + 64) = 0;
  v31 = (a6 + 64);
  *(a6 + 32) = 0;
  *(a6 + 68) = 0x8000000080000000;
  *(a6 + 76) = 0x7FFFFFFF;
  *(a6 + 120) = 0;
  v12 = (a6 + 120);
  *(a6 + 122) = 0;
  v14 = *a11;
  v13 = a11[1];
  if (*a11 != v13)
  {
    v16 = HIDWORD(a4);
    do
    {
      v17 = (v14 + 8);
      v18 = sub_1C047A8(a3, *v14);
      v19 = v18;
      *&v20 = 0;
      *__str = 0u;
      *&__str[16] = v20;
      memset(&v61, 0, sizeof(v61));
      v63 = 0u;
      v64 = 0u;
      v60 = 0;
      LOBYTE(v62) = 0;
      *(&v62 + 4) = 0x8000000080000000;
      v65 = 1065353216;
      HIDWORD(v62) = 0x7FFFFFFF;
      v66 = 0;
      v67 = 0;
      if (v16)
      {
        if (*(a2 + 23) < 0)
        {
          sub_325C(v42, *a2, *(a2 + 8));
        }

        else
        {
          *v42 = *a2;
          v43 = *(a2 + 16);
        }

        v25 = *(v19 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v25 + 23) < 0)
        {
          sub_325C(v40, *v25, *(v25 + 8));
        }

        else
        {
          v26 = *v25;
          v41 = *(v25 + 16);
          *v40 = v26;
        }

        v28 = *v14;
        if (*(v14 + 31) < 0)
        {
          sub_325C(v36, *(v14 + 8), *(v14 + 16));
        }

        else
        {
          v29 = *v17;
          v37 = *(v14 + 24);
          *v36 = v29;
        }

        v38 = *(v14 + 32);
        v39 = 1;
        sub_1BFD884(v42, v40, v28, v36, a8, a5, v50);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        *__str = *v50;
        *&__str[16] = v51;
        HIBYTE(v51) = 0;
        LOBYTE(v50[0]) = 0;
        *&__str[24] = v52;
        v60 = v53;
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        v61 = __p;
        *(&__p.__r_.__value_.__s + 23) = 0;
        __p.__r_.__value_.__s.__data_[0] = 0;
        v62 = v55;
        sub_19608BC(&v63, v56);
        v66 = v57;
        v67 = v58;
        sub_11BD8(v56);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50[0]);
        }

        if (SHIBYTE(v37) < 0)
        {
          operator delete(v36[0]);
        }

        if (SHIBYTE(v41) < 0)
        {
          operator delete(v40[0]);
        }

        if ((SHIBYTE(v43) & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        v27 = v42[0];
      }

      else
      {
        v21 = *(v18 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v21 + 23) < 0)
        {
          sub_325C(&v48, *v21, *(v21 + 8));
        }

        else
        {
          v22 = *v21;
          v49 = *(v21 + 16);
          v48 = v22;
        }

        v23 = *v14;
        if (*(v14 + 31) < 0)
        {
          sub_325C(v44, *(v14 + 8), *(v14 + 16));
        }

        else
        {
          v24 = *v17;
          v45 = *(v14 + 24);
          *v44 = v24;
        }

        v46 = *(v14 + 32);
        v47 = 1;
        sub_1BFD668(a1, &v48, v23, v44, a8, a5, a9, v50);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        *__str = *v50;
        *&__str[16] = v51;
        HIBYTE(v51) = 0;
        LOBYTE(v50[0]) = 0;
        *&__str[24] = v52;
        v60 = v53;
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        v61 = __p;
        *(&__p.__r_.__value_.__s + 23) = 0;
        __p.__r_.__value_.__s.__data_[0] = 0;
        v62 = v55;
        sub_19608BC(&v63, v56);
        v66 = v57;
        v67 = v58;
        sub_11BD8(v56);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50[0]);
        }

        if (SHIBYTE(v45) < 0)
        {
          operator delete(v44[0]);
        }

        if ((SHIBYTE(v49) & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        v27 = v48;
      }

      operator delete(v27);
LABEL_46:
      if (sub_1BFCC34(__str, a6))
      {
        std::string::operator=(a6, __str);
        *(a6 + 24) = *&__str[24];
        *(a6 + 32) = v60;
        std::string::operator=(v32, &v61);
        *v31 = v62;
        if (__str != a6)
        {
          *(a6 + 112) = v65;
          sub_1960DDC(v30, v64, 0);
        }

        *v12 = v66;
        *(a6 + 122) = v67;
      }

      sub_11BD8(&v63);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      v14 += 40;
    }

    while (v14 != v13);
  }
}

void sub_1BFE9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  sub_19D4D44(v55 - 240);
  sub_19D4D44(v54);
  _Unwind_Resume(a1);
}

void sub_1BFEA78(__int128 **a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unint64_t a6, unsigned int a7, int a8, void (***a9)(void **__return_ptr, void, uint64_t, uint64_t), unsigned int a10, void *a11, uint64_t *a12, uint64_t *a13, void *a14, void *a15, uint64_t *a16)
{
  v18 = *a13;
  v17 = a13[1];
  if (*a13 != v17)
  {
    v28 = a7;
    do
    {
      if (!sub_1C04888(a15, v18))
      {
        sub_23914(a15, v18, v18);
        if (*(v18 + 23) < 0)
        {
          sub_325C(&v44, *v18, *(v18 + 8));
        }

        else
        {
          v21 = *v18;
          v45 = *(v18 + 16);
          v44 = v21;
        }

        v35 = 0uLL;
        v36 = 0;
        sub_68678C(&v35, &v44, &v46, 1uLL);
        sub_1AE97AC(&v35, a12, a4, v41);
        v43 = &v35;
        sub_195E3E8(&v43);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(v44);
        }

        if (!sub_1C04888(a14, v41))
        {
          sub_23914(a14, v41, v41);
          v22 = sub_19D52D4(a11, v41);
          if (v22)
          {
            if (*(a2 + 23) < 0)
            {
              sub_325C(__p, *a2, *(a2 + 8));
            }

            else
            {
              *__p = *a2;
              v34 = *(a2 + 16);
            }

            v16 = v16 & 0xFFFFFFFF00000000 | v28;
            sub_1BFE4F8(a1, __p, a3, a6, a8, &v35, v23, a9, a10, v27, v22 + 5);
            v24 = a16;
            if (SHIBYTE(v34) < 0)
            {
              operator delete(__p[0]);
              v24 = a16;
            }

            if (v37 >= 1)
            {
              v25 = v24[1];
              if (v25 >= v24[2])
              {
                v26 = sub_1C0177C(v24, &v35);
              }

              else
              {
                sub_1C01680(v24, &v35);
                v26 = v25 + 128;
              }

              a16[1] = v26;
            }

            sub_11BD8(&v40);
            if (v39 < 0)
            {
              operator delete(v38);
            }

            if (SHIBYTE(v36) < 0)
            {
              operator delete(v35);
            }
          }
        }

        if (v42 < 0)
        {
          operator delete(v41[0]);
        }
      }

      v18 += 24;
    }

    while (v18 != v17);
  }
}

void sub_1BFED0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (*(v30 - 137) < 0)
  {
    operator delete(*(v30 - 160));
  }

  _Unwind_Resume(exception_object);
}

__int128 **sub_1BFED94@<X0>(__int128 **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unsigned int a7@<W6>, void (***a8)(void **__return_ptr, void, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>, __n128 a10@<Q1>, unsigned int a11)
{
  if (*result == result[1])
  {
    a10.n128_u64[0] = 0;
    *a9 = 0u;
    *(a9 + 16) = a10;
    *(a9 + 40) = 0;
    *(a9 + 48) = 0u;
    *(a9 + 80) = 0u;
    *(a9 + 96) = 0u;
    *(a9 + 112) = 1065353216;
    *(a9 + 32) = 0;
    *(a9 + 64) = 0;
    *(a9 + 68) = 0x8000000080000000;
    *(a9 + 76) = 0x7FFFFFFF;
    *(a9 + 120) = 0;
    *(a9 + 122) = 0;
    return result;
  }

  v13 = result;
  v130 = 0u;
  v131 = 0u;
  v132 = 1065353216;
  if (*(a3 + 8) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = sub_1C047A8(a3, v14);
      sub_1DBAD7C((*(v15 + 24) & 0xFFFFFFFFFFFFFFFELL), v110);
      v16 = v110[0];
      v17 = v110[1];
      while (v16 != v17)
      {
        *&v91[0] = v16;
        v18 = sub_1C04AF0(&v130, v16, &unk_229EB70, v91, &v128);
        *__p = v14;
        if (v16[23] < 0)
        {
          sub_325C(&__p[8], *v16, *(v16 + 1));
        }

        else
        {
          v19 = *v16;
          *&__p[24] = *(v16 + 2);
          *&__p[8] = v19;
        }

        v120 = *(v16 + 3);
        v20 = v18[6];
        if (v20 >= v18[7])
        {
          v22 = sub_1C01C18(v18 + 5, __p);
          v23 = __p[31];
          v18[6] = v22;
          if (v23 < 0)
          {
            operator delete(*&__p[8]);
          }
        }

        else
        {
          *v20 = *__p;
          v21 = *&__p[8];
          *(v20 + 24) = *&__p[24];
          *(v20 + 8) = v21;
          memset(&__p[8], 0, 24);
          *(v20 + 32) = v120;
          v18[6] = v20 + 40;
        }

        v16 += 32;
      }

      *__p = v110;
      sub_19E2C00(__p);
      ++v14;
    }

    while (v14 < *(a3 + 8));
  }

  v128 = 0uLL;
  v129 = 0;
  sub_3608D0(__p, "code");
  v24 = sub_1C04888(&v130, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v24)
  {
    sub_3608D0(__p, "code");
    v110[0] = __p;
    v26 = sub_1C04E64(&v130, __p, &unk_229EB70, v110);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v27 = v26[5];
    for (i = v26[6]; v27 != i; v27 += 40)
    {
      v29 = (v27 + 8);
      v30 = sub_1C047A8(a3, *v27);
      v31 = v30;
      *&v32 = 0;
      *__p = 0u;
      *&__p[16] = v32;
      v122 = 0;
      v121 = 0uLL;
      memset(v124, 0, sizeof(v124));
      LODWORD(v120) = 0;
      LOBYTE(v123) = 0;
      *(&v123 + 4) = 0x8000000080000000;
      v125 = 1065353216;
      HIDWORD(v123) = 0x7FFFFFFF;
      v126 = 0;
      v127 = 0;
      if (HIDWORD(a6))
      {
        if (*(a2 + 23) < 0)
        {
          sub_325C(v102, *a2, *(a2 + 8));
        }

        else
        {
          *v102 = *a2;
          v103 = *(a2 + 16);
        }

        v37 = *(v31 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v37 + 23) < 0)
        {
          sub_325C(v100, *v37, *(v37 + 8));
        }

        else
        {
          v38 = *v37;
          v101 = *(v37 + 16);
          *v100 = v38;
        }

        v40 = *v27;
        if (v27[31] < 0)
        {
          sub_325C(v96, *(v27 + 1), *(v27 + 2));
        }

        else
        {
          v41 = *v29;
          v97 = *(v27 + 3);
          *v96 = v41;
        }

        v98 = *(v27 + 4);
        v99 = 1;
        sub_1BFD884(v102, v100, v40, v96, a8, a7 == 1, v110);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        *__p = *v110;
        *&__p[16] = v111;
        BYTE7(v111) = 0;
        LOBYTE(v110[0]) = 0;
        LODWORD(v120) = v112;
        if (SHIBYTE(v122) < 0)
        {
          operator delete(v121);
        }

        v121 = v113;
        v122 = v114;
        HIBYTE(v114) = 0;
        LOBYTE(v113) = 0;
        v123 = v115;
        sub_19608BC(v124, v116);
        v126 = v117;
        v127 = v118;
        sub_11BD8(v116);
        if (SHIBYTE(v114) < 0)
        {
          operator delete(v113);
        }

        if (SBYTE7(v111) < 0)
        {
          operator delete(v110[0]);
        }

        if (SHIBYTE(v97) < 0)
        {
          operator delete(v96[0]);
        }

        if (SHIBYTE(v101) < 0)
        {
          operator delete(v100[0]);
        }

        if (SHIBYTE(v103) < 0)
        {
          v39 = v102[0];
          goto LABEL_63;
        }
      }

      else
      {
        v33 = *(v30 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v33 + 23) < 0)
        {
          sub_325C(&v108, *v33, *(v33 + 8));
        }

        else
        {
          v34 = *v33;
          v109 = *(v33 + 16);
          v108 = v34;
        }

        v35 = *v27;
        if (v27[31] < 0)
        {
          sub_325C(v104, *(v27 + 1), *(v27 + 2));
        }

        else
        {
          v36 = *v29;
          v105 = *(v27 + 3);
          *v104 = v36;
        }

        v106 = *(v27 + 4);
        v107 = 1;
        sub_1BFD668(v13, &v108, v35, v104, a8, a7 == 1, a11, v110);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        *__p = *v110;
        *&__p[16] = v111;
        BYTE7(v111) = 0;
        LOBYTE(v110[0]) = 0;
        LODWORD(v120) = v112;
        if (SHIBYTE(v122) < 0)
        {
          operator delete(v121);
        }

        v121 = v113;
        v122 = v114;
        HIBYTE(v114) = 0;
        LOBYTE(v113) = 0;
        v123 = v115;
        sub_19608BC(v124, v116);
        v126 = v117;
        v127 = v118;
        sub_11BD8(v116);
        if (SHIBYTE(v114) < 0)
        {
          operator delete(v113);
        }

        if (SBYTE7(v111) < 0)
        {
          operator delete(v110[0]);
        }

        if (SHIBYTE(v105) < 0)
        {
          operator delete(v104[0]);
        }

        if (SHIBYTE(v109) < 0)
        {
          v39 = v108;
LABEL_63:
          operator delete(v39);
        }
      }

      v42 = *&__p[24];
      v43 = (v13[1] - *v13) >> 6;
      if (v43 == *&__p[24])
      {
        sub_1BFD304(a3, a4, a5, a9);
        *(a9 + 120) = 1;
      }

      else
      {
        v44 = *(&v128 + 1);
        if (*(&v128 + 1) >= v129)
        {
          v45 = sub_1C0208C(&v128, __p);
        }

        else
        {
          sub_1C01F90(&v128, __p);
          v45 = v44 + 128;
        }

        *(&v128 + 1) = v45;
      }

      sub_11BD8(v124);
      if (SHIBYTE(v122) < 0)
      {
        operator delete(v121);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (v43 == v42)
      {
        goto LABEL_161;
      }
    }
  }

  v93 = 0;
  v94 = 0;
  v95 = 0;
  v46 = v131;
  if (v131)
  {
    v47 = 0;
    while (1)
    {
      v48 = (v46 + 2);
      v49 = *(v46 + 39);
      if (*(v46 + 39) < 0)
      {
        v51 = v46[3];
        if (!v51)
        {
          goto LABEL_96;
        }

        if (v51 != 4)
        {
          if (v47 < v95)
          {
            goto LABEL_93;
          }

          goto LABEL_91;
        }

        v50 = *v48;
      }

      else
      {
        if (!*(v46 + 39))
        {
          goto LABEL_96;
        }

        v50 = v46 + 2;
        if (v49 != 4)
        {
          if (v47 < v95)
          {
            goto LABEL_89;
          }

          goto LABEL_91;
        }
      }

      if (*v50 != 1701080931)
      {
        if (v47 < v95)
        {
          if ((v49 & 0x80) == 0)
          {
LABEL_89:
            v52 = *v48;
            *(v47 + 16) = v46[4];
            *v47 = v52;
            goto LABEL_94;
          }

          v51 = v46[3];
LABEL_93:
          sub_325C(v47, *v48, v51);
LABEL_94:
          v47 += 24;
LABEL_95:
          v94 = v47;
          goto LABEL_96;
        }

LABEL_91:
        v47 = sub_1CEE8(&v93, v48);
        goto LABEL_95;
      }

LABEL_96:
      v46 = *v46;
      if (!v46)
      {
        v53 = v93;
        goto LABEL_100;
      }
    }
  }

  v47 = 0;
  v53 = 0;
LABEL_100:
  *v110 = 0u;
  v111 = 0u;
  v112 = 1065353216;
  memset(v91, 0, sizeof(v91));
  v92 = 1065353216;
  if (v53 != v47)
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(v89, *a2, *(a2 + 8));
    }

    else
    {
      *v89 = *a2;
      v90 = *(a2 + 16);
    }

    v54 = sub_F931AC(a5);
    sub_1BFEA78(v13, v89, a3, a4, v55, a6, a7, a7 == 1, a8, a11, &v130, &v93, v54, v110, v91, &v128);
    if (SHIBYTE(v90) < 0)
    {
      operator delete(v89[0]);
    }

    for (j = v128; j != *(&v128 + 1); j += 128)
    {
      if (*(j + 32) > 0)
      {
        goto LABEL_115;
      }
    }

    if (*(a2 + 23) < 0)
    {
      sub_325C(v87, *a2, *(a2 + 8));
    }

    else
    {
      *v87 = *a2;
      v88 = *(a2 + 16);
    }

    v57 = sub_58BBC(a5);
    sub_1BFEA78(v13, v87, a3, a4, v58, a6, a7, a7 == 1, a8, a11, &v130, &v93, v57, v110, v91, &v128);
    if (SHIBYTE(v88) < 0)
    {
      operator delete(v87[0]);
    }
  }

LABEL_115:
  for (k = v128; k != *(&v128 + 1); k += 128)
  {
    if (*(k + 32) > 0)
    {
      goto LABEL_143;
    }
  }

  sub_3608D0(__p, &unk_236C8E4);
  v60 = sub_1C04888(&v130, __p);
  v61 = v60;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (!v61)
    {
      goto LABEL_143;
    }
  }

  else if (!v60)
  {
    goto LABEL_143;
  }

  if (*(a2 + 23) < 0)
  {
    sub_325C(v85, *a2, *(a2 + 8));
  }

  else
  {
    *v85 = *a2;
    v86 = *(a2 + 16);
  }

  sub_3608D0(v83, &unk_236C8E4);
  sub_3608D0(v81, &unk_236C8E4);
  v133 = v81;
  v62 = sub_1C04E64(&v130, v81, &unk_229EB70, &v133);
  sub_1BFE4F8(v13, v85, a3, a6, a7 == 1, __p, v63, a8, a11, v74, v62 + 5);
  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  if (v84 < 0)
  {
    operator delete(v83[0]);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85[0]);
  }

  sub_3608D0(v83, &unk_236C8E4);
  sub_4BE060(v110, v83, v83);
  if (v84 < 0)
  {
    operator delete(v83[0]);
  }

  if (*&__p[24] >= 1)
  {
    v64 = *(&v128 + 1);
    if (*(&v128 + 1) >= v129)
    {
      v65 = sub_1C0208C(&v128, __p);
    }

    else
    {
      sub_1C01F90(&v128, __p);
      v65 = v64 + 128;
    }

    *(&v128 + 1) = v65;
  }

  sub_11BD8(v124);
  if (SHIBYTE(v122) < 0)
  {
    operator delete(v121);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

LABEL_143:
  v66 = v128;
  if (v128 == *(&v128 + 1))
  {
    *&v25 = 0;
    *a9 = 0u;
    *(a9 + 16) = v25;
    *(a9 + 40) = 0;
    *(a9 + 48) = 0u;
    *(a9 + 80) = 0u;
    *(a9 + 96) = 0u;
    *(a9 + 112) = 1065353216;
    *(a9 + 32) = 0;
    *(a9 + 64) = 0;
    *(a9 + 68) = 0x8000000080000000;
    *(a9 + 76) = 0x7FFFFFFF;
    *(a9 + 120) = 0;
    *(a9 + 122) = 0;
    goto LABEL_160;
  }

  if (*(&v128 + 1) - v128 != 128)
  {
    v83[0] = sub_1BFCC34;
    sub_1C02244(v128, *(&v128 + 1), v83, 126 - 2 * __clz((*(&v128 + 1) - v128) >> 7), 1);
    v66 = v128;
    if (*(&v128 + 1) == v128)
    {
      sub_6FAB4();
    }

    if (*(v128 + 23) < 0)
    {
      sub_325C(a9, *v128, *(v128 + 8));
    }

    else
    {
      v68 = *v128;
      *(a9 + 16) = *(v128 + 16);
      *a9 = v68;
    }

    v71 = *(v66 + 24);
    *(a9 + 32) = *(v66 + 32);
    *(a9 + 24) = v71;
    if ((*(v66 + 63) & 0x80000000) == 0)
    {
      v72 = *(v66 + 40);
      *(a9 + 56) = *(v66 + 56);
      *(a9 + 40) = v72;
      goto LABEL_159;
    }

LABEL_158:
    sub_325C((a9 + 40), *(v66 + 40), *(v66 + 48));
    goto LABEL_159;
  }

  if (*(v128 + 23) < 0)
  {
    sub_325C(a9, *v128, *(v128 + 8));
  }

  else
  {
    v67 = *v128;
    *(a9 + 16) = *(v128 + 16);
    *a9 = v67;
  }

  v69 = *(v66 + 24);
  *(a9 + 32) = *(v66 + 32);
  *(a9 + 24) = v69;
  if (*(v66 + 63) < 0)
  {
    goto LABEL_158;
  }

  v70 = *(v66 + 40);
  *(a9 + 56) = *(v66 + 56);
  *(a9 + 40) = v70;
LABEL_159:
  *(a9 + 64) = *(v66 + 64);
  sub_195F0F8(a9 + 80, v66 + 80);
  v73 = *(v66 + 120);
  *(a9 + 122) = *(v66 + 122);
  *(a9 + 120) = v73;
LABEL_160:
  sub_23D9C(v91);
  sub_23D9C(v110);
  *__p = &v93;
  sub_195E3E8(__p);
LABEL_161:
  *__p = &v128;
  sub_1C045B0(__p);
  return sub_1C04984(&v130);
}

void sub_1BFFA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (*(v48 + 23) < 0)
  {
    operator delete(*v48);
  }

  sub_23D9C(&a43);
  sub_23D9C(&STACK[0x210]);
  STACK[0x290] = &a48;
  sub_195E3E8(&STACK[0x290]);
  STACK[0x290] = v49 - 192;
  sub_1C045B0(&STACK[0x290]);
  sub_1C04984(v49 - 160);
  _Unwind_Resume(a1);
}

void sub_1BFFC70(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X3>, void *a5@<X4>, uint64_t *a6@<X5>, unsigned int a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, __n128 a10@<Q1>)
{
  if (!*(a3 + 8) || (sub_1EF5DC8(v40, 1, 0, 0, 1), v16 = *a6, v22 = a6[1], *a6 == v22))
  {
LABEL_18:
    a10.n128_u64[0] = 0;
    *a9 = 0u;
    *(a9 + 16) = a10;
    *(a9 + 40) = 0;
    *(a9 + 48) = 0u;
    *(a9 + 80) = 0u;
    *(a9 + 96) = 0u;
    *(a9 + 112) = 1065353216;
    *(a9 + 32) = 0;
    *(a9 + 64) = 0;
    *(a9 + 68) = 0x8000000080000000;
    *(a9 + 76) = 0x7FFFFFFF;
    *(a9 + 120) = 0;
    *(a9 + 122) = 0;
  }

  else
  {
    while (1)
    {
      v17 = *v16;
      v18 = *(v16 + 8);
      v38 = 0uLL;
      v39 = 0;
      if (v17)
      {
        sub_1BFD2A4(a1, v28);
      }

      else
      {
        sub_1BFCFB8(a1, v28);
      }

      sub_1A3CEA0(&v38);
      v38 = *v28;
      v39 = v29;
      v28[1] = 0;
      v29 = 0;
      v28[0] = 0;
      v41 = v28;
      sub_19A240C(&v41);
      if (*(a2 + 23) < 0)
      {
        sub_325C(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v27 = *(a2 + 16);
      }

      a6 = (a6 & 0xFFFFFFFF00000000 | v18);
      sub_1BFDB40(&v38, __p, a3, a4, a5, v17, a6, v40, v28, v19, a7, a8);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }

      if (v30)
      {
        *a9 = *v28;
        v20 = v29;
        v28[1] = 0;
        v29 = 0;
        v28[0] = 0;
        v21 = v30;
        *(a9 + 16) = v20;
        *(a9 + 24) = v21;
        *(a9 + 32) = v31;
        *(a9 + 40) = v32;
        *(a9 + 56) = v33;
        v33 = 0;
        v32 = 0uLL;
        *(a9 + 64) = v34;
        sub_195FFEC(a9 + 80, v35);
        *(a9 + 120) = v36;
        *(a9 + 122) = v37;
        goto LABEL_21;
      }

      if (sub_1BFCCF4(&v38, a5, a4))
      {
        break;
      }

      sub_11BD8(v35);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28[0]);
      }

      v28[0] = &v38;
      sub_19A240C(v28);
      v16 += 12;
      if (v16 == v22)
      {
        goto LABEL_18;
      }
    }

    sub_1BFD304(a3, a4, a5, a9);
LABEL_21:
    sub_11BD8(v35);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }

    v28[0] = &v38;
    sub_19A240C(v28);
  }
}

void sub_1BFFF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  sub_19D4D44(&a20);
  a20 = v20 - 144;
  sub_19A240C(&a20);
  _Unwind_Resume(a1);
}

void sub_1BFFF8C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unsigned int a7@<W6>, uint64_t a8@<X8>, __n128 a9@<Q1>)
{
  if (!*(a3 + 8) || (sub_1EF5DC8(v28, 1, 0, 0, 1), v16 = *a6, v15 = a6[1], *a6 == v15))
  {
LABEL_17:
    a9.n128_u64[0] = 0;
    *a8 = 0u;
    *(a8 + 16) = a9;
    *(a8 + 40) = 0;
    *(a8 + 48) = 0u;
    *(a8 + 80) = 0u;
    *(a8 + 96) = 0u;
    *(a8 + 112) = 1065353216;
    *(a8 + 32) = 0;
    *(a8 + 64) = 0;
    *(a8 + 68) = 0x8000000080000000;
    *(a8 + 76) = 0x7FFFFFFF;
    *(a8 + 120) = 0;
    *(a8 + 122) = 0;
  }

  else
  {
    while (1)
    {
      v17 = *v16;
      v18 = *(v16 + 8);
      v26 = 0uLL;
      v27 = 0;
      if (v17)
      {
        sub_1BFD2A4(a1, &v24);
      }

      else
      {
        sub_1BFCFB8(a1, &v24);
      }

      sub_1A3CEA0(&v26);
      v26 = v24;
      v27 = v25;
      v25 = 0;
      v24 = 0uLL;
      v29 = &v24;
      sub_19A240C(&v29);
      if (*(a2 + 23) < 0)
      {
        sub_325C(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v23 = *(a2 + 16);
      }

      a6 = (a6 & 0xFFFFFFFF00000000 | v18);
      sub_1BFED94(&v26, __p, a3, a4, a5, v17, a6, v28, a8, v19, a7);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      if (*(a8 + 24))
      {
        break;
      }

      sub_11BD8(a8 + 80);
      if (*(a8 + 63) < 0)
      {
        operator delete(*(a8 + 40));
      }

      if (*(a8 + 23) < 0)
      {
        operator delete(*a8);
      }

      *&v24 = &v26;
      sub_19A240C(&v24);
      v16 += 12;
      if (v16 == v15)
      {
        goto LABEL_17;
      }
    }

    *&v24 = &v26;
    sub_19A240C(&v24);
  }
}

void sub_1C00198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a20 = &a24;
  sub_19A240C(&a20);
  _Unwind_Resume(a1);
}

void sub_1C001D4(uint64_t **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unsigned __int16 *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, __n128 a7@<Q1>)
{
  if (!*(a2 + 8))
  {
    a7.n128_u64[0] = 0;
    *a6 = 0u;
    *(a6 + 16) = a7;
    *(a6 + 40) = 0;
    *(a6 + 48) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 112) = 1065353216;
    *(a6 + 32) = 0;
    *(a6 + 64) = 0;
    *(a6 + 68) = 0x8000000080000000;
    *(a6 + 76) = 0x7FFFFFFF;
    *(a6 + 120) = 0;
    *(a6 + 122) = 0;
    return;
  }

  v12 = *(a4 + 23);
  if (v12 < 0)
  {
    if (*(a4 + 1) != 2)
    {
LABEL_11:
      v14 = "zh-hant";
      goto LABEL_12;
    }

    v13 = *a4;
  }

  else
  {
    v13 = a4;
    if (v12 != 2)
    {
      goto LABEL_11;
    }
  }

  if (bswap32(*v13) >> 16 == 19024)
  {
    v14 = "ja";
  }

  else
  {
    v14 = "zh-hant";
  }

LABEL_12:
  sub_3608D0(&v81, v14);
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a2 + 8);
  if (v17)
  {
    v18 = 8 * v17;
    while (1)
    {
      v19 = *v16;
      v20 = *(*v16 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v21 = *(v20 + 23);
      if (v21 < 0)
      {
        v20 = *v20;
        v21 = *((*(*v16 + 32) & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      *&v68 = v20;
      *(&v68 + 1) = v21;
      v22 = *(a1 + 23);
      if (v22 < 0)
      {
        v23 = *a1;
        v22 = a1[1];
      }

      else
      {
        v23 = a1;
      }

      *&v65 = v23;
      *(&v65 + 1) = v22;
      if (sub_1CF6DDC(&v68, &v65))
      {
        break;
      }

      ++v16;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_24;
      }
    }

    *&v24 = 0;
    v68 = 0u;
    v69 = v24;
    v71 = 0;
    v72 = 0u;
    v76 = 0u;
    v77 = 0u;
    v70 = 0;
    v73 = 0;
    v74 = 0x8000000080000000;
    v78 = 1065353216;
    v75 = 0x7FFFFFFF;
    v79 = 0;
    v80 = 0;
    v65 = 0u;
    v66 = 0u;
    v67 = 1065353216;
    v47 = *(a1 + 23);
    if ((v47 & 0x8000000000000000) != 0)
    {
      v47 = a1[1];
    }

    v61 = 0;
    v62[0] = v47;
    sub_1C05158(&v65, &v61, &v61);
    v48 = *(v19 + 32);
    if (SHIBYTE(v82) < 0)
    {
      sub_325C(__p, v81, *(&v81 + 1));
    }

    else
    {
      *__p = v81;
      v64 = v82;
    }

    sub_1C01578(a6, (v48 & 0xFFFFFFFFFFFFFFFELL), 1, 1, 1, __p, 1, 0, 0, 0, &v65);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(__p[0]);
    }

    *(a6 + 121) = 1;
    v51 = *(a1 + 23);
    if (v51 < 0)
    {
      v51 = a1[1];
    }

    v52 = *(v19 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v53 = *(v52 + 23);
    if (v53 < 0)
    {
      v53 = *(v52 + 8);
    }

    *(a6 + 122) = v51 == v53;
    sub_11BD8(&v65);
    sub_11BD8(&v76);
    if (SHIBYTE(v72) < 0)
    {
      operator delete(v71);
    }

    if (SBYTE7(v69) < 0)
    {
      operator delete(v68);
    }
  }

  else
  {
LABEL_24:
    v62[0] = 0;
    v62[1] = 0;
    v61 = v62;
    v25 = *(a3 + 40);
    if (v25)
    {
      v26 = (v25 + 8);
    }

    else
    {
      v26 = 0;
    }

    v27 = *(a3 + 32);
    if (v27)
    {
      v56 = a5;
      v28 = 8 * v27;
      do
      {
        v29 = *v26;
        LODWORD(v65) = *(*v26 + 32);
        *&v68 = &v65;
        v30 = sub_1C04658(&v61, &v65, &unk_229EB70, &v68);
        v31 = v30;
        v32 = *(v29 + 24);
        v33 = v30[6];
        if (v33 >= v30[7])
        {
          v34 = sub_1CEE8((v30 + 5), v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          sub_1A48C68(v30 + 5, (v32 & 0xFFFFFFFFFFFFFFFELL));
          v34 = (v33 + 3);
        }

        v31[6] = v34;
        ++v26;
        v28 -= 8;
      }

      while (v28);
      v35 = v61;
      a5 = v56;
      if (v61 != v62)
      {
        do
        {
          v36 = *(v35 + 8);
          if (*(a2 + 8) > v36 && (v36 & 0x80000000) == 0)
          {
            v38 = v35[5];
            v37 = v35[6];
            while (v38 != v37)
            {
              v39 = *(v38 + 23);
              if (v39 < 0)
              {
                v40 = *v38;
                v39 = *(v38 + 8);
              }

              else
              {
                v40 = v38;
              }

              *&v68 = v40;
              *(&v68 + 1) = v39;
              v41 = *(a1 + 23);
              if (v41 < 0)
              {
                v42 = *a1;
                v41 = a1[1];
              }

              else
              {
                v42 = a1;
              }

              *&v65 = v42;
              *(&v65 + 1) = v41;
              if (sub_1CF6DDC(&v68, &v65))
              {
                *&v43 = 0;
                v68 = 0u;
                v69 = v43;
                v71 = 0;
                v72 = 0u;
                v76 = 0u;
                v77 = 0u;
                v70 = 0;
                v73 = 0;
                v74 = 0x8000000080000000;
                v78 = 1065353216;
                v75 = 0x7FFFFFFF;
                v79 = 0;
                v80 = 0;
                v65 = 0u;
                v66 = 0u;
                v67 = 1065353216;
                v49 = *(a1 + 23);
                if (v49 < 0)
                {
                  v49 = a1[1];
                }

                v60[0] = 0;
                v60[1] = v49;
                sub_1C05158(&v65, v60, v60);
                v50 = *(sub_1C047A8(a2, *(v35 + 8)) + 32);
                if (SHIBYTE(v82) < 0)
                {
                  sub_325C(v58, v81, *(&v81 + 1));
                }

                else
                {
                  *v58 = v81;
                  v59 = v82;
                }

                sub_1C01578(a6, (v50 & 0xFFFFFFFFFFFFFFFELL), 1, 1, 1, v58, 1, 0, 0, 0, &v65);
                if (SHIBYTE(v59) < 0)
                {
                  operator delete(v58[0]);
                }

                *(a6 + 121) = 1;
                v54 = *(a1 + 23);
                if (v54 < 0)
                {
                  v54 = a1[1];
                }

                v55 = *(v38 + 23);
                if (v55 < 0)
                {
                  v55 = *(v38 + 8);
                }

                *(a6 + 122) = v54 == v55;
                sub_11BD8(&v65);
                sub_11BD8(&v76);
                if (SHIBYTE(v72) < 0)
                {
                  operator delete(v71);
                }

                if (SBYTE7(v69) < 0)
                {
                  operator delete(v68);
                }

                goto LABEL_83;
              }

              v38 += 24;
            }
          }

          v44 = v35[1];
          if (v44)
          {
            do
            {
              v45 = v44;
              v44 = *v44;
            }

            while (v44);
          }

          else
          {
            do
            {
              v45 = v35[2];
              v46 = *v45 == v35;
              v35 = v45;
            }

            while (!v46);
          }

          v35 = v45;
        }

        while (v45 != v62);
      }
    }

    sub_1BFD304(a2, a4, a5, a6);
LABEL_83:
    sub_1C050F8(&v61, v62[0]);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81);
  }
}

void sub_1C0076C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_11BD8(&a31);
  sub_19D4D44(&a36);
  if (*(v36 - 97) < 0)
  {
    operator delete(*(v36 - 120));
  }

  _Unwind_Resume(a1);
}

unint64_t sub_1C0080C(uint64_t ***a1, uint64_t *a2, void *a3)
{
  result = 0xFFFFFFFF00000002;
  v5 = *a2;
  v6 = a2[1];
  v21 = 0;
  v7 = v6 - v5;
  if (!v7)
  {
    return result;
  }

  v8 = 0;
  v9 = v7 >> 6;
  v10 = a3[2];
  v11 = *(a1 + 23);
  v12 = a1[1];
  if (v11 >= 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = a1[1];
  }

  if (v11 < 0)
  {
    a1 = *a1;
  }

  if (v9 <= 1)
  {
    v9 = 1;
  }

  while (v10)
  {
    v14 = v10;
    while (v8 != *(v14 + 4))
    {
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_13;
      }
    }

LABEL_24:
    v21 = ++v8;
    if (v8 == v9)
    {
      return result;
    }
  }

LABEL_13:
  v15 = (v5 + (v8 << 6));
  v16 = *(v15 + 23);
  if (v16 >= 0)
  {
    v17 = *(v15 + 23);
  }

  else
  {
    v17 = v15[1];
  }

  if (v17 < v13)
  {
    goto LABEL_24;
  }

  v18 = 0;
  if (v16 < 0)
  {
    v15 = *v15;
  }

  while ((v11 & 0x80) == 0)
  {
    if (v18 >= v11)
    {
      goto LABEL_27;
    }

LABEL_23:
    v19 = *(v15 + v18);
    v20 = *(a1 + v18++);
    if (v19 != v20)
    {
      goto LABEL_24;
    }
  }

  if (v12 > v18)
  {
    goto LABEL_23;
  }

  v11 = v12;
LABEL_27:
  sub_1C00940(a3, &v21, &v21);
  if (v11 == v17)
  {
    return (v21 << 32) | 1;
  }

  else
  {
    return v8 << 32;
  }
}

uint64_t *sub_1C00940(void *a1, int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t *sub_1C00B6C(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_1C00C20(void *a1, int *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

std::string *sub_1C00E4C(__int128 **a1, std::string *a2, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 6)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 6;
      if (v17 >= a5)
      {
        sub_1C01008(a1, a2, a1[1], a2 + 64 * a5);
        v18 = (v7 + 64 * a5);
      }

      else
      {
        a1[1] = sub_1A7EA50(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        sub_1C01008(a1, v5, v10, v5 + 64 * a5);
        v18 = (v7 + v16);
      }

      sub_1A3CF08(v23, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 6);
    if (v12 >> 58)
    {
      sub_1794();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 5 > v12)
    {
      v12 = v14 >> 5;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFC0)
    {
      v15 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      sub_19A1FA8(a1, v15);
    }

    v19 = v13 >> 6 << 6;
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = a5 << 6;
    v21 = v19 + (a5 << 6);
    do
    {
      sub_19A25E4(v19, v7);
      v19 += 64;
      v7 = (v7 + 64);
      v20 -= 64;
    }

    while (v20);
    v24 = v21;
    v5 = sub_1C010AC(a1, v23, v5);
    sub_19A20EC(v23);
  }

  return v5;
}

uint64_t sub_1C01008(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (a2 + v6 - a4);
    v8 = *(a1 + 8);
    do
    {
      sub_19A25E4(v8, v10);
      v10 += 4;
      v8 += 64;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1C01168(&v12, a2, v7, v6);
}

uint64_t sub_1C010AC(__int128 **a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  sub_19A1FF0(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_19A1FF0(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_1C01168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      std::string::operator=((a4 + v7 - 64), (a3 + v7 - 64));
      *(a4 + v7 - 40) = *(a3 + v7 - 40);
      if (a3 != a4)
      {
        sub_1A3CF90((a4 + v7 - 24), *(a3 + v7 - 24), (a3 - 16 + v7));
      }

      v7 -= 64;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t sub_1C01208(uint64_t **a1, void *a2, uint64_t a3)
{
  v3 = *sub_122356C(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1C012AC(uint64_t *a1, uint64_t a2, __int128 **a3)
{
  v5 = sub_1C01314(a1, a2);
  v5[3] = 0;
  v5[4] = 0;
  v5 += 3;
  v5[2] = 0;
  sub_353184(v5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

uint64_t *sub_1C01314(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_1C0136C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_1C0136C(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1C013F4(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *sub_1C013F4(uint64_t **a1, void *a2, void *a3, uint64_t a4)
{
  result = *sub_1962A30(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1C01478();
  }

  return result;
}

void sub_1C01514(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1962C7C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1C01530(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_195E3E8(&v3);
  sub_1962CE0(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_1C01578(uint64_t a1, __int128 *a2, int a3, int a4, int a5, __int128 *a6, char a7, int a8, int a9, int a10, uint64_t a11)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v18 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v18;
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 32) = a5;
  if (*(a6 + 23) < 0)
  {
    sub_325C((a1 + 40), *a6, *(a6 + 1));
  }

  else
  {
    v19 = *a6;
    *(a1 + 56) = *(a6 + 2);
    *(a1 + 40) = v19;
  }

  *(a1 + 64) = a7;
  *(a1 + 68) = a8;
  *(a1 + 72) = a9;
  *(a1 + 76) = a10;
  sub_195F0F8(a1 + 80, a11);
  *(a1 + 120) = 0;
  *(a1 + 122) = 0;
  return a1;
}

void sub_1C0164C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C01680(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_325C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 3);
  *(v4 + 32) = *(a2 + 8);
  *(v4 + 24) = v6;
  if (*(a2 + 63) < 0)
  {
    sub_325C((v4 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v7 = *(a2 + 40);
    *(v4 + 56) = *(a2 + 7);
    *(v4 + 40) = v7;
  }

  *(v4 + 64) = a2[4];
  result = sub_195F0F8(v4 + 80, (a2 + 5));
  v9 = *(a2 + 60);
  *(v4 + 122) = *(a2 + 122);
  *(v4 + 120) = v9;
  *(a1 + 8) = v4 + 128;
  return result;
}

void sub_1C0173C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1C0177C(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v22 = a1;
  if (v7)
  {
    sub_1C01934(a1, v7);
  }

  v8 = v2 << 7;
  v19 = 0;
  v20 = v8;
  v21 = v8;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(v8 + 16) = *(a2 + 2);
    *v8 = v9;
  }

  v10 = *(a2 + 3);
  *(v8 + 32) = *(a2 + 8);
  *(v8 + 24) = v10;
  if (*(a2 + 63) < 0)
  {
    sub_325C((v8 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v11 = *(a2 + 40);
    *(v8 + 56) = *(a2 + 7);
    *(v8 + 40) = v11;
  }

  *(v8 + 64) = a2[4];
  sub_195F0F8(v8 + 80, (a2 + 5));
  v12 = *(a2 + 60);
  *(v8 + 122) = *(a2 + 122);
  *(v8 + 120) = v12;
  *&v21 = v21 + 128;
  v13 = a1[1];
  v14 = v20 + *a1 - v13;
  sub_1C0197C(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_1C01B98(&v19);
  return v18;
}

void sub_1C018F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  sub_1C01B98(va);
  _Unwind_Resume(a1);
}

void sub_1C01934(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1C0197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 80;
    do
    {
      v9 = *(v8 - 80);
      *(v4 + 16) = *(v8 - 64);
      *v4 = v9;
      *(v8 - 72) = 0;
      *(v8 - 64) = 0;
      *(v8 - 80) = 0;
      v10 = *(v8 - 56);
      *(v4 + 32) = *(v8 - 48);
      *(v4 + 24) = v10;
      v11 = *(v8 - 40);
      *(v4 + 56) = *(v8 - 24);
      *(v4 + 40) = v11;
      *(v8 - 32) = 0;
      *(v8 - 24) = 0;
      *(v8 - 40) = 0;
      *(v4 + 64) = *(v8 - 16);
      sub_195FFEC(v4 + 80, v8);
      v12 = *(v8 + 40);
      *(v4 + 122) = *(v8 + 42);
      *(v4 + 120) = v12;
      v4 = v18 + 128;
      v18 += 128;
      v13 = v8 + 48;
      v8 += 128;
    }

    while (v13 != a3);
    v16 = 1;
    while (v6 != a3)
    {
      sub_1C01AAC(a1, v6);
      v6 += 128;
    }
  }

  return sub_1C01B0C(v15);
}

void sub_1C01AAC(uint64_t a1, uint64_t a2)
{
  sub_11BD8(a2 + 80);
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_1C01B0C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1C01B44(a1);
  }

  return a1;
}

void sub_1C01B44(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 128;
      sub_1C01AAC(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1C01B98(uint64_t a1)
{
  sub_1C01BD0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1C01BD0(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 128;
    sub_1C01AAC(v5, v4 - 128);
  }
}

uint64_t sub_1C01C18(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1C01D60(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v7 + 32) = *(a2 + 32);
  *&v17 = 40 * v2 + 40;
  v9 = a1[1];
  v10 = 40 * v2 + *a1 - v9;
  sub_1C01DB8(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1C01EFC(&v15);
  return v14;
}

void sub_1C01D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1C01EFC(va);
  _Unwind_Resume(a1);
}

void sub_1C01D60(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1C01DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 40;
    }
  }

  return sub_1C01E7C(v9);
}

uint64_t sub_1C01E7C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1C01EB4(a1);
  }

  return a1;
}

void sub_1C01EB4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 9) < 0)
    {
      operator delete(*(v1 - 32));
    }

    v1 -= 40;
  }
}

uint64_t sub_1C01EFC(uint64_t a1)
{
  sub_1C01F34(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1C01F34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1C01F90(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_325C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 3);
  *(v4 + 32) = *(a2 + 8);
  *(v4 + 24) = v6;
  if (*(a2 + 63) < 0)
  {
    sub_325C((v4 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v7 = *(a2 + 40);
    *(v4 + 56) = *(a2 + 7);
    *(v4 + 40) = v7;
  }

  *(v4 + 64) = a2[4];
  result = sub_195F0F8(v4 + 80, (a2 + 5));
  v9 = *(a2 + 60);
  *(v4 + 122) = *(a2 + 122);
  *(v4 + 120) = v9;
  *(a1 + 8) = v4 + 128;
  return result;
}

void sub_1C0204C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1C0208C(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v22 = a1;
  if (v7)
  {
    sub_1C01934(a1, v7);
  }

  v8 = v2 << 7;
  v19 = 0;
  v20 = v8;
  v21 = v8;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(v8 + 16) = *(a2 + 2);
    *v8 = v9;
  }

  v10 = *(a2 + 3);
  *(v8 + 32) = *(a2 + 8);
  *(v8 + 24) = v10;
  if (*(a2 + 63) < 0)
  {
    sub_325C((v8 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v11 = *(a2 + 40);
    *(v8 + 56) = *(a2 + 7);
    *(v8 + 40) = v11;
  }

  *(v8 + 64) = a2[4];
  sub_195F0F8(v8 + 80, (a2 + 5));
  v12 = *(a2 + 60);
  *(v8 + 122) = *(a2 + 122);
  *(v8 + 120) = v12;
  *&v21 = v21 + 128;
  v13 = a1[1];
  v14 = v20 + *a1 - v13;
  sub_1C0197C(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_1C01B98(&v19);
  return v18;
}

void sub_1C02200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  sub_1C01B98(va);
  _Unwind_Resume(a1);
}

void sub_1C02244(__int128 *result, void **a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
LABEL_1:
  v9 = (a2 - 16);
  v46 = (a2 - 32);
  v10 = result;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 7;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if ((*a3)((a2 - 16), v10))
        {
LABEL_82:
          v41 = v10;
LABEL_83:
          v45 = v9;
LABEL_84:

          sub_1C03990(v41, v45);
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_1C028EC(v10, v10 + 8, v10 + 16, a2 - 8, a3);
      return;
    }

    if (v13 == 5)
    {
      sub_1C028EC(v10, v10 + 8, v10 + 16, v10 + 24, a3);
      if (!(*a3)((a2 - 16), (v10 + 24)))
      {
        return;
      }

      sub_1C03990((v10 + 24), a2 - 8);
      if (!(*a3)((v10 + 24), (v10 + 16)))
      {
        return;
      }

      sub_1C03990((v10 + 16), v10 + 24);
      if (!(*a3)((v10 + 16), (v10 + 8)))
      {
        return;
      }

      v42 = (v10 + 8);
      v43 = v10 + 16;
LABEL_100:
      sub_1C03990(v42, v43);
      if ((*a3)((v10 + 8), v10))
      {
        v45 = v10 + 8;
        v41 = v10;
        goto LABEL_84;
      }

      return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        sub_1C02A3C(v10, a2, a3);
      }

      else
      {

        sub_1C02CB0(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_1C03B70(v10, a2, a2, a3);
      }

      return;
    }

    v14 = &v10[8 * (v13 >> 1)];
    v15 = *a3;
    if (v13 >= 0x81)
    {
      v16 = v15(&v10[8 * (v13 >> 1)], v10);
      v17 = (*a3)((a2 - 16), v14);
      if (v16)
      {
        if (v17)
        {
          v18 = result;
          goto LABEL_27;
        }

        sub_1C03990(result, v14);
        if ((*a3)((a2 - 16), v14))
        {
          v18 = v14;
LABEL_27:
          v22 = (a2 - 16);
LABEL_28:
          sub_1C03990(v18, v22);
        }
      }

      else if (v17)
      {
        sub_1C03990(v14, a2 - 8);
        if ((*a3)(v14, result))
        {
          v18 = result;
          v22 = v14;
          goto LABEL_28;
        }
      }

      v24 = (*a3)((v14 - 8), (result + 8));
      v25 = (*a3)(v46, (v14 - 8));
      if (v24)
      {
        if (v25)
        {
          v26 = (result + 8);
          goto LABEL_40;
        }

        sub_1C03990((result + 8), v14 - 8);
        if ((*a3)(v46, (v14 - 8)))
        {
          v26 = (v14 - 8);
LABEL_40:
          v27 = (a2 - 32);
LABEL_41:
          sub_1C03990(v26, v27);
        }
      }

      else if (v25)
      {
        sub_1C03990((v14 - 8), v46);
        if ((*a3)((v14 - 8), (result + 8)))
        {
          v26 = (result + 8);
          v27 = v14 - 8;
          goto LABEL_41;
        }
      }

      v28 = (*a3)((v14 + 8), (result + 16));
      v29 = (*a3)((a2 - 48), (v14 + 8));
      if (v28)
      {
        if (v29)
        {
          v30 = (result + 16);
          goto LABEL_50;
        }

        sub_1C03990((result + 16), v14 + 8);
        if ((*a3)((a2 - 48), (v14 + 8)))
        {
          v30 = (v14 + 8);
LABEL_50:
          v31 = (a2 - 48);
LABEL_51:
          sub_1C03990(v30, v31);
        }
      }

      else if (v29)
      {
        sub_1C03990((v14 + 8), a2 - 24);
        if ((*a3)((v14 + 8), (result + 16)))
        {
          v30 = (result + 16);
          v31 = v14 + 8;
          goto LABEL_51;
        }
      }

      v32 = (*a3)(v14, (v14 - 8));
      v33 = (*a3)((v14 + 8), v14);
      if (v32)
      {
        if (v33)
        {
          v34 = v14 + 8;
          v35 = (v14 - 8);
          goto LABEL_60;
        }

        sub_1C03990((v14 - 8), v14);
        if ((*a3)((v14 + 8), v14))
        {
          v34 = v14 + 8;
          v35 = v14;
LABEL_60:
          sub_1C03990(v35, v34);
        }
      }

      else if (v33)
      {
        sub_1C03990(v14, v14 + 8);
        if ((*a3)(v14, (v14 - 8)))
        {
          v35 = (v14 - 8);
          v34 = v14;
          goto LABEL_60;
        }
      }

      v21 = result;
      v23 = v14;
LABEL_62:
      sub_1C03990(v21, v23);
      goto LABEL_63;
    }

    v19 = v15(v10, &v10[8 * (v13 >> 1)]);
    v20 = (*a3)((a2 - 16), result);
    if (v19)
    {
      if (v20)
      {
        v21 = v14;
LABEL_37:
        v23 = (a2 - 16);
        goto LABEL_62;
      }

      sub_1C03990(v14, result);
      if ((*a3)((a2 - 16), result))
      {
        v21 = result;
        goto LABEL_37;
      }
    }

    else if (v20)
    {
      sub_1C03990(result, a2 - 8);
      if ((*a3)(result, v14))
      {
        v21 = v14;
        v23 = result;
        goto LABEL_62;
      }
    }

LABEL_63:
    if ((a5 & 1) == 0 && ((*a3)((result - 8), result) & 1) == 0)
    {
      v10 = sub_1C02F08(result, a2, a3);
      goto LABEL_70;
    }

    v36 = sub_1C031EC(result, a2, a3);
    if ((v37 & 1) == 0)
    {
      goto LABEL_68;
    }

    v38 = sub_1C034D4(result, v36, a3);
    v10 = (v36 + 16);
    if (sub_1C034D4(v36 + 8, a2, a3))
    {
      a4 = -v12;
      a2 = v36;
      if (v38)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v38)
    {
LABEL_68:
      sub_1C02244(result, v36, a3, -v12, a5 & 1);
      v10 = (v36 + 16);
LABEL_70:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  v39 = (*a3)((v10 + 8), v10);
  v40 = (*a3)(v9, (v10 + 8));
  if ((v39 & 1) == 0)
  {
    if (!v40)
    {
      return;
    }

    v42 = (v10 + 8);
    v43 = v9;
    goto LABEL_100;
  }

  if (v40)
  {
    goto LABEL_82;
  }

  sub_1C03990(v10, v10 + 8);
  if ((*a3)(v9, (v10 + 8)))
  {
    v41 = (v10 + 8);
    goto LABEL_83;
  }
}

void sub_1C028EC(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1;
LABEL_9:
      v13 = a3;
      goto LABEL_10;
    }

    sub_1C03990(a1, a2);
    if ((*a5)(a3, a2))
    {
      v12 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    sub_1C03990(a2, a3);
    if ((*a5)(a2, a1))
    {
      v12 = a1;
      v13 = a2;
LABEL_10:
      sub_1C03990(v12, v13);
    }
  }

  if ((*a5)(a4, a3))
  {
    sub_1C03990(a3, a4);
    if ((*a5)(a3, a2))
    {
      sub_1C03990(a2, a3);
      if ((*a5)(a2, a1))
      {

        sub_1C03990(a1, a2);
      }
    }
  }
}

void sub_1C02A3C(void **a1, void **a2, uint64_t (**a3)(void **, uint64_t))
{
  if (a1 != a2)
  {
    v5 = a1 + 16;
    if (a1 + 16 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*a3)(v5, v8))
        {
          *v16 = *v9;
          v17 = v9[2];
          v9[1] = 0;
          v9[2] = 0;
          *v9 = 0;
          v18 = *(v8 + 152);
          v19 = *(v8 + 160);
          __p = *(v8 + 168);
          v21 = *(v8 + 184);
          *(v8 + 176) = 0;
          *(v8 + 184) = 0;
          *(v8 + 168) = 0;
          v22 = *(v8 + 192);
          sub_195FFEC(v23, (v8 + 208));
          v24 = *(v8 + 248);
          v25 = *(v8 + 250);
          v10 = v7;
          while (1)
          {
            v11 = (a1 + v10);
            if (*(a1 + v10 + 151) < 0)
            {
              operator delete(v11[16]);
            }

            *(v11 + 8) = *v11;
            v12 = v11[2];
            v13 = v11[3];
            *(v11 + 23) = 0;
            *v11 = 0;
            v11[18] = v12;
            v11[19] = v13;
            *(v11 + 40) = *(v11 + 8);
            if (*(v11 + 191) < 0)
            {
              operator delete(v11[21]);
            }

            v14 = a1 + v10;
            *(v11 + 21) = *(a1 + v10 + 40);
            v11[23] = *(a1 + v10 + 56);
            v14[63] = 0;
            v14[40] = 0;
            *(v14 + 12) = *(a1 + v10 + 64);
            sub_19608BC(a1 + v10 + 208, (a1 + v10 + 80));
            *(v14 + 124) = *(v14 + 60);
            v14[250] = v14[122];
            if (!v10)
            {
              break;
            }

            v10 -= 128;
            if (((*a3)(v16, (v14 - 128)) & 1) == 0)
            {
              v15 = a1 + v10 + 128;
              goto LABEL_14;
            }
          }

          v15 = a1;
LABEL_14:
          if (*(v15 + 23) < 0)
          {
            operator delete(*v15);
          }

          *v15 = *v16;
          *(v15 + 16) = v17;
          HIBYTE(v17) = 0;
          LOBYTE(v16[0]) = 0;
          *(v14 + 3) = v18;
          *(v14 + 8) = v19;
          if (*(v15 + 63) < 0)
          {
            operator delete(*(v14 + 5));
          }

          *(v14 + 40) = __p;
          *(v14 + 7) = v21;
          HIBYTE(v21) = 0;
          LOBYTE(__p) = 0;
          *(v14 + 4) = v22;
          sub_19608BC((v14 + 80), v23);
          *(v14 + 60) = v24;
          v14[122] = v25;
          sub_11BD8(v23);
          if (SHIBYTE(v21) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v17) < 0)
          {
            operator delete(v16[0]);
          }
        }

        v5 = v9 + 16;
        v7 += 128;
        v8 = v9;
      }

      while (v9 + 16 != a2);
    }
  }
}

void sub_1C02CB0(void **a1, void **a2, uint64_t (**a3)(void **, void **))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 16;
    if (a1 + 16 != a2)
    {
      v7 = a1 - 16;
      do
      {
        v8 = v5;
        if ((*a3)(v5, v4))
        {
          *v15 = *v8;
          v16 = v8[2];
          v8[1] = 0;
          v8[2] = 0;
          *v8 = 0;
          v17 = v4[19];
          v18 = *(v4 + 40);
          __p = *(v4 + 21);
          v20 = v4[23];
          v4[22] = 0;
          v4[23] = 0;
          v4[21] = 0;
          v21 = *(v4 + 12);
          sub_195FFEC(v22, v4 + 26);
          v23 = *(v4 + 124);
          v24 = *(v4 + 250);
          v9 = v7;
          do
          {
            if (*(v9 + 279) < 0)
            {
              operator delete(v9[32]);
            }

            *(v9 + 16) = *(v9 + 8);
            v10 = v9[18];
            v11 = v9[19];
            *(v9 + 151) = 0;
            *(v9 + 128) = 0;
            v9[34] = v10;
            v9[35] = v11;
            *(v9 + 72) = *(v9 + 40);
            v12 = v9 + 37;
            if (*(v9 + 319) < 0)
            {
              operator delete(*v12);
            }

            *v12 = *(v9 + 21);
            v9[39] = v9[23];
            *(v9 + 191) = 0;
            *(v9 + 168) = 0;
            *(v9 + 20) = *(v9 + 12);
            sub_19608BC((v9 + 42), v9 + 26);
            *(v9 + 188) = *(v9 + 124);
            *(v9 + 378) = *(v9 + 250);
            v13 = (*a3)(v15, v9);
            v9 -= 16;
          }

          while ((v13 & 1) != 0);
          if (*(v9 + 279) < 0)
          {
            operator delete(v9[32]);
          }

          v14 = v9 + 37;
          *(v9 + 16) = *v15;
          v9[34] = v16;
          HIBYTE(v16) = 0;
          LOBYTE(v15[0]) = 0;
          v9[35] = v17;
          *(v9 + 72) = v18;
          if (*(v9 + 319) < 0)
          {
            operator delete(*v14);
          }

          *v14 = __p;
          v9[39] = v20;
          HIBYTE(v20) = 0;
          LOBYTE(__p) = 0;
          *(v9 + 20) = v21;
          sub_19608BC((v9 + 42), v22);
          *(v9 + 188) = v23;
          *(v9 + 378) = v24;
          sub_11BD8(v22);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v16) < 0)
          {
            operator delete(v15[0]);
          }
        }

        v5 = v8 + 16;
        v7 += 16;
        v4 = v8;
      }

      while (v8 + 16 != a2);
    }
  }
}

unint64_t sub_1C02F08(unint64_t a1, __int128 *a2, uint64_t (**a3)(void **, uint64_t))
{
  *v23 = *a1;
  v6 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v8 = a1 + 24;
  v7 = *(a1 + 24);
  v24 = v6;
  v25 = v7;
  v26 = *(a1 + 32);
  *__p = *(a1 + 40);
  v28 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v29 = *(a1 + 64);
  sub_195FFEC(v30, (a1 + 80));
  v31 = *(a1 + 120);
  v32 = *(a1 + 122);
  if ((*a3)(v23, (a2 - 8)))
  {
    v9 = a1;
    do
    {
      v9 += 128;
    }

    while (((*a3)(v23, v9) & 1) == 0);
  }

  else
  {
    v10 = a1 + 128;
    do
    {
      v9 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = (*a3)(v23, v10);
      v10 = v9 + 128;
    }

    while (!v11);
  }

  if (v9 < a2)
  {
    do
    {
      a2 -= 8;
    }

    while (((*a3)(v23, a2) & 1) != 0);
  }

  while (v9 < a2)
  {
    sub_1C03990(v9, a2);
    do
    {
      v9 += 128;
    }

    while (!(*a3)(v23, v9));
    do
    {
      a2 -= 8;
    }

    while (((*a3)(v23, a2) & 1) != 0);
  }

  v12 = (v9 - 128);
  if (v9 - 128 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v12;
    *(a1 + 16) = *(v9 - 112);
    *a1 = v13;
    *(v9 - 105) = 0;
    *(v9 - 128) = 0;
    v14 = *(v9 - 96);
    *v8 = *(v9 - 104);
    *(v8 + 8) = v14;
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    v15 = *(v9 - 88);
    *(a1 + 56) = *(v9 - 72);
    *(a1 + 40) = v15;
    *(v9 - 65) = 0;
    *(v9 - 88) = 0;
    *(a1 + 64) = *(v9 - 64);
    sub_19608BC(a1 + 80, (v9 - 48));
    v16 = *(v9 - 8);
    *(a1 + 122) = *(v9 - 6);
    *(a1 + 120) = v16;
  }

  if (*(v9 - 105) < 0)
  {
    operator delete(*v12);
  }

  v17 = *v23;
  *(v9 - 112) = v24;
  *v12 = v17;
  HIBYTE(v24) = 0;
  LOBYTE(v23[0]) = 0;
  v18 = v26;
  *(v9 - 104) = v25;
  *(v9 - 96) = v18;
  v19 = (v9 - 88);
  if (*(v9 - 65) < 0)
  {
    operator delete(*v19);
  }

  v20 = *__p;
  *(v9 - 72) = v28;
  *v19 = v20;
  HIBYTE(v28) = 0;
  LOBYTE(__p[0]) = 0;
  *(v9 - 64) = v29;
  sub_19608BC(v9 - 48, v30);
  v21 = v31;
  *(v9 - 6) = v32;
  *(v9 - 8) = v21;
  sub_11BD8(v30);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return v9;
}

unint64_t sub_1C031EC(uint64_t a1, __int128 *a2, uint64_t (**a3)(uint64_t, void **))
{
  *v25 = *a1;
  v6 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v8 = a1 + 24;
  v7 = *(a1 + 24);
  v26 = v6;
  v27 = v7;
  v28 = *(a1 + 32);
  *__p = *(a1 + 40);
  v30 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v31 = *(a1 + 64);
  sub_195FFEC(v32, (a1 + 80));
  v9 = 0;
  v33 = *(a1 + 120);
  v34 = *(a1 + 122);
  do
  {
    v10 = (*a3)(a1 + v9 + 128, v25);
    v9 += 128;
  }

  while ((v10 & 1) != 0);
  v11 = a1 + v9;
  if (v9 == 128)
  {
    do
    {
      if (v11 >= a2)
      {
        break;
      }

      a2 -= 8;
    }

    while (((*a3)(a2, v25) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 8;
    }

    while (!(*a3)(a2, v25));
  }

  v12 = a1 + v9;
  if (v11 < a2)
  {
    v13 = a2;
    do
    {
      sub_1C03990(v12, v13);
      do
      {
        v12 += 128;
      }

      while (((*a3)(v12, v25) & 1) != 0);
      do
      {
        v13 -= 8;
      }

      while (!(*a3)(v13, v25));
    }

    while (v12 < v13);
  }

  v14 = (v12 - 128);
  if (v12 - 128 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v15 = *v14;
    *(a1 + 16) = *(v12 - 112);
    *a1 = v15;
    *(v12 - 105) = 0;
    *(v12 - 128) = 0;
    v16 = *(v12 - 96);
    *v8 = *(v12 - 104);
    *(v8 + 8) = v16;
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    v17 = *(v12 - 88);
    *(a1 + 56) = *(v12 - 72);
    *(a1 + 40) = v17;
    *(v12 - 65) = 0;
    *(v12 - 88) = 0;
    *(a1 + 64) = *(v12 - 64);
    sub_19608BC(a1 + 80, (v12 - 48));
    v18 = *(v12 - 8);
    *(a1 + 122) = *(v12 - 6);
    *(a1 + 120) = v18;
  }

  if (*(v12 - 105) < 0)
  {
    operator delete(*v14);
  }

  v19 = *v25;
  *(v12 - 112) = v26;
  *v14 = v19;
  HIBYTE(v26) = 0;
  LOBYTE(v25[0]) = 0;
  v20 = v28;
  *(v12 - 104) = v27;
  *(v12 - 96) = v20;
  v21 = (v12 - 88);
  if (*(v12 - 65) < 0)
  {
    operator delete(*v21);
  }

  v22 = *__p;
  *(v12 - 72) = v30;
  *v21 = v22;
  HIBYTE(v30) = 0;
  LOBYTE(__p[0]) = 0;
  *(v12 - 64) = v31;
  sub_19608BC(v12 - 48, v32);
  v23 = v33;
  *(v12 - 6) = v34;
  *(v12 - 8) = v23;
  sub_11BD8(v32);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  return v12 - 128;
}

BOOL sub_1C034D4(__int128 *a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = (a2 - a1) >> 7;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v12 = a2 - 128;
        v13 = (*a3)((a1 + 8), a1);
        v14 = (*a3)(v12, (a1 + 8));
        if (v13)
        {
          if (v14)
          {
            v7 = a1;
          }

          else
          {
            sub_1C03990(a1, a1 + 8);
            if (!(*a3)(v12, (a1 + 8)))
            {
              return 1;
            }

            v7 = a1 + 8;
          }

          v8 = v12;
          goto LABEL_30;
        }

        if (!v14)
        {
          return 1;
        }

        v10 = (a1 + 8);
        v11 = v12;
        break;
      case 4:
        sub_1C028EC(a1, a1 + 8, a1 + 16, (a2 - 128), a3);
        return 1;
      case 5:
        v9 = (a2 - 128);
        sub_1C028EC(a1, a1 + 8, a1 + 16, a1 + 24, a3);
        if (!(*a3)(v9, (a1 + 24)))
        {
          return 1;
        }

        sub_1C03990((a1 + 24), v9);
        if (!(*a3)((a1 + 24), (a1 + 16)))
        {
          return 1;
        }

        sub_1C03990((a1 + 16), a1 + 24);
        if (!(*a3)((a1 + 16), (a1 + 8)))
        {
          return 1;
        }

        v10 = (a1 + 8);
        v11 = a1 + 16;
        break;
      default:
        goto LABEL_16;
    }

    sub_1C03990(v10, v11);
    if ((*a3)((a1 + 8), a1))
    {
      v8 = a1 + 8;
      v7 = a1;
      goto LABEL_30;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 128, a1))
    {
      v7 = a1;
      v8 = (v4 - 128);
LABEL_30:
      sub_1C03990(v7, v8);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v15 = (a1 + 16);
  v16 = (*a3)((a1 + 8), a1);
  v17 = (*a3)((a1 + 16), (a1 + 8));
  if (v16)
  {
    if (v17)
    {
      v18 = a1;
    }

    else
    {
      sub_1C03990(a1, a1 + 8);
      if (!(*a3)((a1 + 16), (a1 + 8)))
      {
        goto LABEL_35;
      }

      v18 = a1 + 8;
    }

    v19 = a1 + 16;
    goto LABEL_34;
  }

  if (v17)
  {
    sub_1C03990((a1 + 8), a1 + 16);
    if ((*a3)((a1 + 8), a1))
    {
      v19 = a1 + 8;
      v18 = a1;
LABEL_34:
      sub_1C03990(v18, v19);
    }
  }

LABEL_35:
  v20 = (a1 + 24);
  if (a1 + 24 == v4)
  {
    return 1;
  }

  v21 = 0;
  v22 = 0;
  v33 = v4;
  while (1)
  {
    if ((*a3)(v20, v15))
    {
      v23 = *(v20 + 24);
      v35 = *(v20 + 16);
      *v34 = *v20;
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *v20 = 0;
      v36 = v23;
      v37 = *(v20 + 32);
      __p = *(v20 + 40);
      v39 = *(v20 + 56);
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 40) = 0;
      v40 = *(v20 + 64);
      sub_195FFEC(v41, (v20 + 80));
      v42 = *(v20 + 120);
      v43 = *(v20 + 122);
      v24 = v21;
      while (1)
      {
        v25 = (a1 + v24);
        if (*(a1 + v24 + 407) < 0)
        {
          operator delete(v25[48]);
        }

        *(v25 + 24) = *(v25 + 16);
        v26 = v25[34];
        v27 = v25[35];
        *(v25 + 279) = 0;
        *(v25 + 256) = 0;
        v25[50] = v26;
        v25[51] = v27;
        *(v25 + 104) = *(v25 + 72);
        v28 = (v25 + 53);
        if (*(v25 + 447) < 0)
        {
          operator delete(*v28);
        }

        v29 = a1 + v24;
        v30 = a1 + v24 + 296;
        *(v28 + 2) = *(a1 + v24 + 312);
        *v28 = *v30;
        v29[319] = 0;
        v29[296] = 0;
        *(v29 + 28) = *(a1 + v24 + 320);
        sub_19608BC(a1 + v24 + 464, (a1 + v24 + 336));
        *(v29 + 252) = *(v29 + 188);
        v29[506] = v29[378];
        if (v24 == -256)
        {
          break;
        }

        v24 -= 128;
        if (((*a3)(v34, (v29 + 128)) & 1) == 0)
        {
          v31 = (a1 + v24 + 384);
          goto LABEL_47;
        }
      }

      v31 = a1;
LABEL_47:
      if (*(v31 + 23) < 0)
      {
        operator delete(*v31);
      }

      *v31 = *v34;
      *(v31 + 2) = v35;
      HIBYTE(v35) = 0;
      LOBYTE(v34[0]) = 0;
      *(v29 + 35) = v36;
      *(v29 + 72) = v37;
      if (*(v31 + 63) < 0)
      {
        operator delete(*v30);
      }

      *v30 = __p;
      *(v30 + 16) = v39;
      HIBYTE(v39) = 0;
      LOBYTE(__p) = 0;
      *(v29 + 20) = v40;
      sub_19608BC((v29 + 336), v41);
      *(v29 + 188) = v42;
      v29[378] = v43;
      sub_11BD8(v41);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p);
      }

      v4 = v33;
      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34[0]);
      }

      if (++v22 == 8)
      {
        return v20 + 128 == v33;
      }
    }

    v15 = v20;
    v21 += 128;
    v20 += 128;
    if (v20 == v4)
    {
      return 1;
    }
  }
}

void sub_1C0397C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19D4D44(va);
  _Unwind_Resume(a1);
}

void sub_1C03990(uint64_t a1, __int128 *a2)
{
  *v10 = *a1;
  v4 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = a1 + 24;
  v11 = v4;
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *__p = *(a1 + 40);
  v15 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v16 = *(a1 + 64);
  sub_195FFEC(v17, (a1 + 80));
  v18 = *(a1 + 120);
  v19 = *(a1 + 122);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v6 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v6;
  *(a2 + 23) = 0;
  *a2 = 0;
  v7 = *(a2 + 8);
  *v5 = *(a2 + 3);
  *(v5 + 8) = v7;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v8 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 40) = v8;
  *(a2 + 63) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = a2[4];
  sub_19608BC(a1 + 80, a2 + 10);
  v9 = *(a2 + 60);
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 120) = v9;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *v10;
  *(a2 + 2) = v11;
  *(a2 + 3) = v12;
  *(a2 + 8) = v13;
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 5));
  }

  *(a2 + 40) = *__p;
  *(a2 + 7) = v15;
  a2[4] = v16;
  sub_19608BC((a2 + 5), v17);
  *(a2 + 60) = v18;
  *(a2 + 122) = v19;
  sub_11BD8(v17);
}

__int128 *sub_1C03B70(char *a1, char *a2, __int128 *a3, uint64_t (**a4)(uint64_t, __int128 *))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 7;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[128 * v9];
      do
      {
        sub_1C03C80(a1, a4, v8, v11);
        v11 -= 8;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if ((*a4)(v12, a1))
        {
          sub_1C03990(v12, a1);
          sub_1C03C80(a1, a4, v8, a1);
        }

        v12 += 128;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        sub_1C03F58(a1, v6, a4, v8);
        v6 -= 8;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void sub_1C03C80(uint64_t a1, uint64_t (**a2)(uint64_t, __int128 *), uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v25 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 7)
    {
      v9 = (a4 - a1) >> 6;
      v10 = v9 + 1;
      v11 = a1 + ((v9 + 1) << 7);
      v12 = v9 + 2;
      if (v9 + 2 < a3 && (*a2)(v11, (v11 + 128)))
      {
        v11 += 128;
        v10 = v12;
      }

      if (((*a2)(v11, v5) & 1) == 0)
      {
        *v26 = *v5;
        v13 = *(v5 + 2);
        v14 = *(v5 + 3);
        *(v5 + 1) = 0;
        *(v5 + 2) = 0;
        *v5 = 0;
        v27 = v13;
        v28 = v14;
        v29 = *(v5 + 8);
        *__p = *(v5 + 40);
        v31 = *(v5 + 7);
        *(v5 + 6) = 0;
        *(v5 + 7) = 0;
        *(v5 + 5) = 0;
        v32 = v5[4];
        sub_195FFEC(v33, v5 + 10);
        v34 = *(v5 + 60);
        v35 = *(v5 + 122);
        do
        {
          v15 = v11;
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          v16 = *v11;
          *(v5 + 2) = *(v11 + 16);
          *v5 = v16;
          *(v11 + 23) = 0;
          *v11 = 0;
          v17 = *(v11 + 32);
          *(v5 + 3) = *(v11 + 24);
          *(v5 + 8) = v17;
          if (*(v5 + 63) < 0)
          {
            operator delete(*(v5 + 5));
          }

          v18 = *(v11 + 40);
          *(v5 + 7) = *(v11 + 56);
          *(v5 + 40) = v18;
          *(v11 + 63) = 0;
          *(v11 + 40) = 0;
          v5[4] = *(v11 + 64);
          sub_19608BC((v5 + 5), (v11 + 80));
          v19 = *(v11 + 120);
          *(v5 + 122) = *(v11 + 122);
          *(v5 + 60) = v19;
          if (v25 < v10)
          {
            break;
          }

          v20 = (2 * v10) | 1;
          v11 = a1 + (v20 << 7);
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v20;
          }

          else if ((*a2)(a1 + (v20 << 7), (v11 + 128)))
          {
            v11 += 128;
          }

          else
          {
            v10 = v20;
          }

          v5 = v15;
        }

        while (!(*a2)(v11, v26));
        if (*(v15 + 23) < 0)
        {
          operator delete(*v15);
        }

        v21 = *v26;
        *(v15 + 16) = v27;
        *v15 = v21;
        HIBYTE(v27) = 0;
        LOBYTE(v26[0]) = 0;
        v22 = v29;
        *(v15 + 24) = v28;
        *(v15 + 32) = v22;
        if (*(v15 + 63) < 0)
        {
          operator delete(*(v15 + 40));
        }

        v23 = *__p;
        *(v15 + 56) = v31;
        *(v15 + 40) = v23;
        HIBYTE(v31) = 0;
        LOBYTE(__p[0]) = 0;
        *(v15 + 64) = v32;
        sub_19608BC(v15 + 80, v33);
        v24 = v34;
        *(v15 + 122) = v35;
        *(v15 + 120) = v24;
        sub_11BD8(v33);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }
      }
    }
  }
}

void sub_1C03F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19D4D44(va);
  _Unwind_Resume(a1);
}

void sub_1C03F58(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v22 = *a1;
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v23 = v8;
    v24 = v9;
    v25 = *(a1 + 32);
    *__p = *(a1 + 40);
    v27 = *(a1 + 56);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    v28 = *(a1 + 64);
    sub_195FFEC(v29, (a1 + 80));
    v30 = *(a1 + 120);
    v31 = *(a1 + 122);
    v10 = sub_1C04234(a1, a3, a4);
    v11 = v10;
    v12 = (a2 - 128);
    v13 = *(v10 + 23);
    if (v10 == (a2 - 128))
    {
      if (v13 < 0)
      {
        operator delete(*v10);
      }

      *(v11 + 2) = v23;
      *v11 = v22;
      *(v11 + 3) = v24;
      *(v11 + 8) = v25;
      if (*(v11 + 63) < 0)
      {
        operator delete(*(v11 + 5));
      }

      *(v11 + 7) = v27;
      *(v11 + 40) = *__p;
      v11[4] = v28;
      sub_19608BC((v11 + 5), v29);
      v21 = v30;
      *(v11 + 122) = v31;
      *(v11 + 60) = v21;
    }

    else
    {
      if (v13 < 0)
      {
        operator delete(*v10);
      }

      v14 = *v12;
      *(v11 + 2) = *(a2 - 112);
      *v11 = v14;
      v15 = *(a2 - 104);
      *(a2 - 105) = 0;
      *(a2 - 128) = 0;
      v16 = *(a2 - 96);
      *(v11 + 3) = v15;
      *(v11 + 8) = v16;
      if (*(v11 + 63) < 0)
      {
        operator delete(*(v11 + 5));
      }

      v17 = (a2 - 88);
      v18 = *(a2 - 88);
      *(v11 + 7) = *(a2 - 72);
      *(v11 + 40) = v18;
      *(a2 - 65) = 0;
      *(a2 - 88) = 0;
      v11[4] = *(a2 - 64);
      sub_19608BC((v11 + 5), (a2 - 48));
      v19 = *(a2 - 8);
      *(v11 + 122) = *(a2 - 6);
      *(v11 + 60) = v19;
      v20 = (v11 + 8);
      if (*(a2 - 105) < 0)
      {
        operator delete(*v12);
      }

      *v12 = v22;
      *(a2 - 112) = v23;
      *(a2 - 104) = v24;
      *(a2 - 96) = v25;
      if (*(a2 - 65) < 0)
      {
        operator delete(*v17);
      }

      *v17 = *__p;
      *(a2 - 72) = v27;
      *(a2 - 64) = v28;
      sub_19608BC(a2 - 48, v29);
      *(a2 - 8) = v30;
      *(a2 - 6) = v31;
      sub_1C0435C(a1, v20, a3, (v20 - a1) >> 7);
    }

    sub_11BD8(v29);
  }
}

void sub_1C04220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19D4D44(va);
  _Unwind_Resume(a1);
}

__int128 *sub_1C04234(__int128 *a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[8 * v6];
    v9 = v8 + 8;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 16;
      if ((*a2)((v8 + 8), (v8 + 16)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    *(v9 + 23) = 0;
    *v9 = 0;
    v14 = *(v9 + 8);
    *(a1 + 3) = *(v9 + 3);
    *(a1 + 8) = v14;
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 5));
    }

    v15 = *(v9 + 40);
    *(a1 + 7) = *(v9 + 7);
    *(a1 + 40) = v15;
    *(v9 + 63) = 0;
    *(v9 + 40) = 0;
    a1[4] = v9[4];
    sub_19608BC((a1 + 5), v9 + 10);
    v16 = *(v9 + 60);
    *(a1 + 122) = *(v9 + 122);
    *(a1 + 60) = v16;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void sub_1C0435C(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, void **), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = a1 + (v4 >> 1 << 7);
    v10 = a2 - 128;
    if ((*a3)(v9, (a2 - 128)))
    {
      *v20 = *v10;
      v11 = *(v10 + 16);
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *v10 = 0;
      v12 = *(a2 - 104);
      v21 = v11;
      v22 = v12;
      v23 = *(a2 - 96);
      *__p = *(a2 - 88);
      v25 = *(a2 - 72);
      *(a2 - 80) = 0;
      *(a2 - 72) = 0;
      *(a2 - 88) = 0;
      v26 = *(a2 - 64);
      sub_195FFEC(v27, (a2 - 48));
      v28 = *(a2 - 8);
      v29 = *(a2 - 6);
      do
      {
        v13 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v14 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v14;
        *(v9 + 23) = 0;
        *v9 = 0;
        v15 = (v9 + 24);
        v16 = *(v9 + 32);
        *(v10 + 24) = *(v9 + 24);
        *(v10 + 32) = v16;
        if (*(v10 + 63) < 0)
        {
          operator delete(*(v10 + 40));
        }

        v17 = *(v9 + 40);
        *(v10 + 56) = *(v9 + 56);
        *(v10 + 40) = v17;
        *(v9 + 63) = 0;
        *(v9 + 40) = 0;
        *(v10 + 64) = *(v9 + 64);
        sub_19608BC(v10 + 80, (v9 + 80));
        v19 = (v9 + 120);
        v18 = *(v9 + 120);
        *(v10 + 122) = *(v9 + 122);
        *(v10 + 120) = v18;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + (v8 << 7);
        v10 = v13;
      }

      while (((*a3)(v9, v20) & 1) != 0);
      if (*(v13 + 23) < 0)
      {
        operator delete(*v13);
      }

      *v13 = *v20;
      *(v13 + 16) = v21;
      HIBYTE(v21) = 0;
      LOBYTE(v20[0]) = 0;
      *v15 = v22;
      *(v13 + 32) = v23;
      if (*(v13 + 63) < 0)
      {
        operator delete(*(v13 + 40));
      }

      *(v13 + 40) = *__p;
      *(v13 + 56) = v25;
      HIBYTE(v25) = 0;
      LOBYTE(__p[0]) = 0;
      *(v13 + 64) = v26;
      sub_19608BC(v13 + 80, v27);
      *v19 = v28;
      *(v13 + 122) = v29;
      sub_11BD8(v27);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }
    }
  }
}

void sub_1C045B0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1C04604(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1C04604(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_1C01AAC(a1, i))
  {
    i -= 128;
  }

  *(a1 + 8) = a2;
}

uint64_t **sub_1C04658(uint64_t **a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 8);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1C04730(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_195F170(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1C00940(a1, i + 4, i + 4);
  }

  return a1;
}

uint64_t sub_1C047A8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_194DB40(v8, 3, "../../submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/repeated_field.h", 1760);
    v4 = sub_194DB58(v8, "CHECK failed: (index) >= (0): ");
    sub_194DB98(&v7, &v4->__r_.__value_.__l.__data_);
    sub_194DBA0(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_194DB40(v8, 3, "../../submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/repeated_field.h", 1761);
    v5 = sub_194DB58(v8, "CHECK failed: (index) < (current_size_): ");
    sub_194DB98(&v7, &v5->__r_.__value_.__l.__data_);
    sub_194DBA0(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1C04868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_194DBA0(va);
  _Unwind_Resume(a1);
}

const void **sub_1C04888(void *a1, const void **a2)
{
  v4 = sub_1220A84(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_1220AC4(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_1C04984(uint64_t a1)
{
  sub_1C049C0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1C049C0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1C04A04((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1C04A04(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_1C04A4C(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1C04A4C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1C04AA0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1C04AA0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

const void **sub_1C04AF0(void *a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1220A84(a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    sub_1C04D64();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!sub_1220AC4(a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_1C04D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1C04E18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1C04E18(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1C04A04(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **sub_1C04E64(void *a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_1220A84(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_1220AC4(a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_1C050E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1C04E18(va);
  _Unwind_Resume(a1);
}

void sub_1C050F8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1C050F8(a1, *a2);
    sub_1C050F8(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_195E3E8(&v4);
    operator delete(a2);
  }
}

uint64_t *sub_1C05158(void *a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void sub_1C05388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_3608D0(&v1253, "AW");
  sub_3608D0(&v1250, "ABW");
  v1252 = 40;
  sub_195E43C(v1255, &v1253, &v1250);
  sub_3608D0(&v1248, "AF");
  sub_3608D0(&v1245, "AFG");
  v1247 = 41;
  sub_195E43C(&v1256, &v1248, &v1245);
  sub_3608D0(&v1243, "AO");
  sub_3608D0(&v1240, "AGO");
  v1242 = 42;
  sub_195E43C(&v1257, &v1243, &v1240);
  sub_3608D0(&v1238, "AI");
  sub_3608D0(&v1235, "AIA");
  v1237 = 43;
  sub_195E43C(&v1258, &v1238, &v1235);
  sub_3608D0(&v1233, "AX");
  sub_3608D0(&v1230, "ALA");
  v1232 = 246;
  sub_195E43C(&v1259, &v1233, &v1230);
  sub_3608D0(&v1228, "AL");
  sub_3608D0(&v1225, "ALB");
  v1227 = 76;
  sub_195E43C(&v1260, &v1228, &v1225);
  sub_3608D0(&v1223, "AD");
  sub_3608D0(&v1220, "AND");
  v1222 = 78;
  sub_195E43C(&v1261, &v1223, &v1220);
  sub_3608D0(&v1218, "AN");
  sub_3608D0(&v1215, "ANT");
  v1217 = 44;
  sub_195E43C(&v1262, &v1218, &v1215);
  sub_3608D0(&v1213, "AE");
  sub_3608D0(&v1210, "ARE");
  v1212 = 2;
  sub_195E43C(&v1263, &v1213, &v1210);
  sub_3608D0(&v1208, "AR");
  sub_3608D0(&v1205, "ARG");
  v1207 = 80;
  sub_195E43C(&v1264, &v1208, &v1205);
  sub_3608D0(&v1203, "AM");
  sub_3608D0(&v1200, "ARM");
  v1202 = 45;
  sub_195E43C(&v1265, &v1203, &v1200);
  sub_3608D0(&v1198, "AS");
  sub_3608D0(&v1195, "ASM");
  v1197 = 77;
  sub_195E43C(&v1266, &v1198, &v1195);
  sub_3608D0(&v1193, "AQ");
  sub_3608D0(&v1190, "ATA");
  v1192 = 46;
  sub_195E43C(&v1267, &v1193, &v1190);
  sub_3608D0(&v1188, "TF");
  sub_3608D0(&v1185, "ATF");
  v1187 = 125;
  sub_195E43C(&v1268, &v1188, &v1185);
  sub_3608D0(&v1183, "AG");
  sub_3608D0(&v1180, "ATG");
  v1182 = 79;
  sub_195E43C(&v1269, &v1183, &v1180);
  sub_3608D0(&v1178, "AU");
  sub_3608D0(&v1175, "AUS");
  v1177 = 22;
  sub_195E43C(&v1270, &v1178, &v1175);
  sub_3608D0(&v1173, "AT");
  sub_3608D0(&v1170, "AUT");
  v1172 = 81;
  sub_195E43C(&v1271, &v1173, &v1170);
  sub_3608D0(&v1168, "AZ");
  sub_3608D0(&v1165, "AZE");
  v1167 = 82;
  sub_195E43C(&v1272, &v1168, &v1165);
  sub_3608D0(&v1163, "BI");
  sub_3608D0(&v1160, "BDI");
  v1162 = 96;
  sub_195E43C(&v1273, &v1163, &v1160);
  sub_3608D0(&v1158, "BE");
  sub_3608D0(&v1155, "BEL");
  v1157 = 87;
  sub_195E43C(&v1274, &v1158, &v1155);
  sub_3608D0(&v1153, "BJ");
  sub_3608D0(&v1150, "BEN");
  v1152 = 3;
  sub_195E43C(&v1275, &v1153, &v1150);
  sub_3608D0(&v1148, "BQ");
  sub_3608D0(&v1145, "BES");
  v1147 = 248;
  sub_195E43C(&v1276, &v1148, &v1145);
  sub_3608D0(&v1143, "BF");
  sub_3608D0(&v1140, "BFA");
  v1142 = 11;
  sub_195E43C(&v1277, &v1143, &v1140);
  sub_3608D0(&v1138, "BD");
  sub_3608D0(&v1135, "BGD");
  v1137 = 84;
  sub_195E43C(&v1278, &v1138, &v1135);
  sub_3608D0(&v1133, "BG");
  sub_3608D0(&v1130, "BGR");
  v1132 = 95;
  sub_195E43C(&v1279, &v1133, &v1130);
  sub_3608D0(&v1128, "BH");
  sub_3608D0(&v1125, "BHR");
  v1127 = 12;
  sub_195E43C(&v1280, &v1128, &v1125);
  sub_3608D0(&v1123, "BS");
  sub_3608D0(&v1120, "BHS");
  v1122 = 83;
  sub_195E43C(&v1281, &v1123, &v1120);
  sub_3608D0(&v1118, "BA");
  sub_3608D0(&v1115, "BIH");
  v1117 = 92;
  sub_195E43C(&v1282, &v1118, &v1115);
  sub_3608D0(&v1113, "BL");
  sub_3608D0(&v1110, "BLM");
  v1112 = 237;
  sub_195E43C(&v1283, &v1113, &v1110);
  sub_3608D0(&v1108, "BY");
  sub_3608D0(&v1105, "BLR");
  v1107 = 86;
  sub_195E43C(&v1284, &v1108, &v1105);
  sub_3608D0(&v1103, "BZ");
  sub_3608D0(&v1100, "BLZ");
  v1102 = 88;
  sub_195E43C(&v1285, &v1103, &v1100);
  sub_3608D0(&v1098, "BM");
  sub_3608D0(&v1095, "BMU");
  v1097 = 89;
  sub_195E43C(&v1286, &v1098, &v1095);
  sub_3608D0(&v1093, "BO");
  sub_3608D0(&v1090, "BOL");
  v1092 = 91;
  sub_195E43C(&v1287, &v1093, &v1090);
  sub_3608D0(&v1088, "BR");
  sub_3608D0(&v1085, "BRA");
  v1087 = 25;
  sub_195E43C(&v1288, &v1088, &v1085);
  sub_3608D0(&v1083, "BB");
  sub_3608D0(&v1080, "BRB");
  v1082 = 85;
  sub_195E43C(&v1289, &v1083, &v1080);
  sub_3608D0(&v1078, "BN");
  sub_3608D0(&v1075, "BRN");
  v1077 = 94;
  sub_195E43C(&v1290, &v1078, &v1075);
  sub_3608D0(&v1073, "BT");
  sub_3608D0(&v1070, "BTN");
  v1072 = 90;
  sub_195E43C(&v1291, &v1073, &v1070);
  sub_3608D0(&v1068, "BV");
  sub_3608D0(&v1065, "BVT");
  v1067 = 245;
  sub_195E43C(&v1292, &v1068, &v1065);
  sub_3608D0(&v1063, "BW");
  sub_3608D0(&v1060, "BWA");
  v1062 = 93;
  sub_195E43C(&v1293, &v1063, &v1060);
  sub_3608D0(&v1058, "CF");
  sub_3608D0(&v1055, "CAF");
  v1057 = 63;
  sub_195E43C(&v1294, &v1058, &v1055);
  sub_3608D0(&v1053, "CA");
  sub_3608D0(&v1050, "CAN");
  v1052 = 98;
  sub_195E43C(&v1295, &v1053, &v1050);
  sub_3608D0(&v1048, "CC");
  sub_3608D0(&v1045, "CCK");
  v1047 = 47;
  sub_195E43C(&v1296, &v1048, &v1045);
  sub_3608D0(&v1043, "CH");
  sub_3608D0(&v1040, "CHE");
  v1042 = 211;
  sub_195E43C(&v1297, &v1043, &v1040);
  sub_3608D0(&v1038, "CL");
  sub_3608D0(&v1035, "CHL");
  v1037 = 102;
  sub_195E43C(&v1298, &v1038, &v1035);
  sub_3608D0(&v1033, "CN");
  sub_3608D0(&v1030, "CHN");
  v1032 = 4;
  sub_195E43C(&v1299, &v1033, &v1030);
  sub_3608D0(&v1028, "CI");
  sub_3608D0(&v1025, "CIV");
  v1027 = 26;
  sub_195E43C(&v1300, &v1028, &v1025);
  sub_3608D0(&v1023, "CM");
  sub_3608D0(&v1020, "CMR");
  v1022 = 27;
  sub_195E43C(&v1301, &v1023, &v1020);
  sub_3608D0(&v1018, "CD");
  sub_3608D0(&v1015, "COD");
  v1017 = 106;
  sub_195E43C(&v1302, &v1018, &v1015);
  sub_3608D0(&v1013, "CG");
  sub_3608D0(&v1010, "COG");
  v1012 = 105;
  sub_195E43C(&v1303, &v1013, &v1010);
  sub_3608D0(&v1008, "CK");
  sub_3608D0(&v1005, "COK");
  v1007 = 107;
  sub_195E43C(&v1304, &v1008, &v1005);
  sub_3608D0(&v1003, "CO");
  sub_3608D0(&v1000, "COL");
  v1002 = 28;
  sub_195E43C(&v1305, &v1003, &v1000);
  sub_3608D0(&v998, "KM");
  sub_3608D0(&v995, "COM");
  v997 = 104;
  sub_195E43C(&v1306, &v998, &v995);
  sub_3608D0(&v993, "CV");
  sub_3608D0(&v990, "CPV");
  v992 = 99;
  sub_195E43C(&v1307, &v993, &v990);
  sub_3608D0(&v988, "CR");
  sub_3608D0(&v985, "CRI");
  v987 = 13;
  sub_195E43C(&v1308, &v988, &v985);
  sub_3608D0(&v983, "CU");
  sub_3608D0(&v980, "CUB");
  v982 = 109;
  sub_195E43C(&v1309, &v983, &v980);
  sub_3608D0(&v978, "CW");
  sub_3608D0(&v975, "CUW");
  v977 = 247;
  sub_195E43C(&v1310, &v978, &v975);
  sub_3608D0(&v973, "CX");
  sub_3608D0(&v970, "CXR");
  v972 = 103;
  sub_195E43C(&v1311, &v973, &v970);
  sub_3608D0(&v968, "KY");
  sub_3608D0(&v965, "CYM");
  v967 = 100;
  sub_195E43C(&v1312, &v968, &v965);
  sub_3608D0(&v963, "CY");
  sub_3608D0(&v960, "CYP");
  v962 = 110;
  sub_195E43C(&v1313, &v963, &v960);
  sub_3608D0(&v958, "CZ");
  sub_3608D0(&v955, "CZE");
  v957 = 111;
  sub_195E43C(&v1314, &v958, &v955);
  sub_3608D0(&v953, "DE");
  sub_3608D0(&v950, "DEU");
  v952 = 129;
  sub_195E43C(&v1315, &v953, &v950);
  sub_3608D0(&v948, "DJ");
  sub_3608D0(&v945, "DJI");
  v947 = 113;
  sub_195E43C(&v1316, &v948, &v945);
  sub_3608D0(&v943, "DM");
  sub_3608D0(&v940, "DMA");
  v942 = 114;
  sub_195E43C(&v1317, &v943, &v940);
  sub_3608D0(&v938, "DK");
  sub_3608D0(&v935, "DNK");
  v937 = 112;
  sub_195E43C(&v1318, &v938, &v935);
  sub_3608D0(&v933, "DO");
  sub_3608D0(&v930, "DOM");
  v932 = 29;
  sub_195E43C(&v1319, &v933, &v930);
  sub_3608D0(&v928, "DZ");
  sub_3608D0(&v925, "DZA");
  v927 = 0;
  sub_195E43C(&v1320, &v928, &v925);
  sub_3608D0(&v923, "EC");
  sub_3608D0(&v920, "ECU");
  v922 = 30;
  sub_195E43C(&v1321, &v923, &v920);
  sub_3608D0(&v918, "EG");
  sub_3608D0(&v915, "EGY");
  v917 = 64;
  sub_195E43C(&v1322, &v918, &v915);
  sub_3608D0(&v913, "ER");
  sub_3608D0(&v910, "ERI");
  v912 = 116;
  sub_195E43C(&v1323, &v913, &v910);
  sub_3608D0(&v908, "EH");
  sub_3608D0(&v905, "ESH");
  v907 = 65;
  sub_195E43C(&v1324, &v908, &v905);
  sub_3608D0(&v903, "ES");
  sub_3608D0(&v900, "ESP");
  v902 = 206;
  sub_195E43C(&v1325, &v903, &v900);
  sub_3608D0(&v898, "EE");
  sub_3608D0(&v895, "EST");
  v897 = 117;
  sub_195E43C(&v1326, &v898, &v895);
  sub_3608D0(&v893, "ET");
  sub_3608D0(&v890, "ETH");
  v892 = 31;
  sub_195E43C(&v1327, &v893, &v890);
  sub_3608D0(&v888, "FI");
  sub_3608D0(&v885, "FIN");
  v887 = 121;
  sub_195E43C(&v1328, &v888, &v885);
  sub_3608D0(&v883, "FJ");
  sub_3608D0(&v880, "FJI");
  v882 = 120;
  sub_195E43C(&v1329, &v883, &v880);
  sub_3608D0(&v878, "FK");
  sub_3608D0(&v875, "FLK");
  v877 = 118;
  sub_195E43C(&v1330, &v878, &v875);
  sub_3608D0(&v873, "FR");
  sub_3608D0(&v870, "FRA");
  v872 = 122;
  sub_195E43C(&v1331, &v873, &v870);
  sub_3608D0(&v868, "FO");
  sub_3608D0(&v865, "FRO");
  v867 = 119;
  sub_195E43C(&v1332, &v868, &v865);
  sub_3608D0(&v863, "FM");
  sub_3608D0(&v860, "FSM");
  v862 = 166;
  sub_195E43C(&v1333, &v863, &v860);
  sub_3608D0(&v858, "GA");
  sub_3608D0(&v855, "GAB");
  v857 = 126;
  sub_195E43C(&v1334, &v858, &v855);
  sub_3608D0(&v853, "GB");
  sub_3608D0(&v850, "GBR");
  v852 = 225;
  sub_195E43C(&v1335, &v853, &v850);
  sub_3608D0(&v848, "GE");
  sub_3608D0(&v845, "GEO");
  v847 = 128;
  sub_195E43C(&v1336, &v848, &v845);
  sub_3608D0(&v843, "GG");
  sub_3608D0(&v840, "GGY");
  v842 = 256;
  sub_195E43C(&v1337, &v843, &v840);
  sub_3608D0(&v838, "GH");
  sub_3608D0(&v835, "GHA");
  v837 = 66;
  sub_195E43C(&v1338, &v838, &v835);
  sub_3608D0(&v833, "GI");
  sub_3608D0(&v830, "GIB");
  v832 = 67;
  sub_195E43C(&v1339, &v833, &v830);
  sub_3608D0(&v828, "GN");
  sub_3608D0(&v825, "GIN");
  v827 = 135;
  sub_195E43C(&v1340, &v828, &v825);
  sub_3608D0(&v823, "GP");
  sub_3608D0(&v820, "GLP");
  v822 = 133;
  sub_195E43C(&v1341, &v823, &v820);
  sub_3608D0(&v818, "GM");
  sub_3608D0(&v815, "GMB");
  v817 = 127;
  sub_195E43C(&v1342, &v818, &v815);
  sub_3608D0(&v813, "GW");
  sub_3608D0(&v810, "GNB");
  v812 = 68;
  sub_195E43C(&v1343, &v813, &v810);
  sub_3608D0(&v808, "GQ");
  sub_3608D0(&v805, "GNQ");
  v807 = 115;
  sub_195E43C(&v1344, &v808, &v805);
  sub_3608D0(&v803, "GR");
  sub_3608D0(&v800, "GRC");
  v802 = 130;
  sub_195E43C(&v1345, &v803, &v800);
  sub_3608D0(&v798, "GD");
  sub_3608D0(&v795, "GRD");
  v797 = 132;
  sub_195E43C(&v1346, &v798, &v795);
  sub_3608D0(&v793, "GL");
  sub_3608D0(&v790, "GRL");
  v792 = 131;
  sub_195E43C(&v1347, &v793, &v790);
  sub_3608D0(&v788, "GT");
  sub_3608D0(&v785, "GTM");
  v787 = 32;
  sub_195E43C(&v1348, &v788, &v785);
  sub_3608D0(&v783, "GF");
  sub_3608D0(&v780, "GUF");
  v782 = 123;
  sub_195E43C(&v1349, &v783, &v780);
  sub_3608D0(&v778, "GU");
  sub_3608D0(&v775, "GUM");
  v777 = 134;
  sub_195E43C(&v1350, &v778, &v775);
  sub_3608D0(&v773, "GY");
  sub_3608D0(&v770, "GUY");
  v772 = 136;
  sub_195E43C(&v1351, &v773, &v770);
  sub_3608D0(&v768, "HK");
  sub_3608D0(&v765, "HKG");
  v767 = 5;
  sub_195E43C(&v1352, &v768, &v765);
  sub_3608D0(&v763, "HM");
  sub_3608D0(&v760, "HMD");
  v762 = 240;
  sub_195E43C(&v1353, &v763, &v760);
  sub_3608D0(&v758, "HN");
  sub_3608D0(&v755, "HND");
  v757 = 14;
  sub_195E43C(&v1354, &v758, &v755);
  sub_3608D0(&v753, "HR");
  sub_3608D0(&v750, "HRV");
  v752 = 108;
  sub_195E43C(&v1355, &v753, &v750);
  sub_3608D0(&v748, "HT");
  sub_3608D0(&v745, "HTI");
  v747 = 137;
  sub_195E43C(&v1356, &v748, &v745);
  sub_3608D0(&v743, "HU");
  sub_3608D0(&v740, "HUN");
  v742 = 138;
  sub_195E43C(&v1357, &v743, &v740);
  sub_3608D0(&v738, "ID");
  sub_3608D0(&v735, "IDN");
  v737 = 69;
  sub_195E43C(&v1358, &v738, &v735);
  sub_3608D0(&v733, "IM");
  sub_3608D0(&v730, "IMN");
  v732 = 255;
  sub_195E43C(&v1359, &v733, &v730);
  sub_3608D0(&v728, "IN");
  sub_3608D0(&v725, "IND");
  v727 = 140;
  sub_195E43C(&v1360, &v728, &v725);
  sub_3608D0(&v723, "IO");
  sub_3608D0(&v720, "IOT");
  v722 = 48;
  sub_195E43C(&v1361, &v723, &v720);
  sub_3608D0(&v718, "IE");
  sub_3608D0(&v715, "IRL");
  v717 = 143;
  sub_195E43C(&v1362, &v718, &v715);
  sub_3608D0(&v713, "IR");
  sub_3608D0(&v710, "IRN");
  v712 = 141;
  sub_195E43C(&v1363, &v713, &v710);
  sub_3608D0(&v708, "IQ");
  sub_3608D0(&v705, "IRQ");
  v707 = 142;
  sub_195E43C(&v1364, &v708, &v705);
  sub_3608D0(&v703, "IS");
  sub_3608D0(&v700, "ISL");
  v702 = 139;
  sub_195E43C(&v1365, &v703, &v700);
  sub_3608D0(&v698, "IL");
  sub_3608D0(&v695, "ISR");
  v697 = 75;
  sub_195E43C(&v1366, &v698, &v695);
  sub_3608D0(&v693, "IT");
  sub_3608D0(&v690, "ITA");
  v692 = 144;
  sub_195E43C(&v1367, &v693, &v690);
  sub_3608D0(&v688, "JM");
  sub_3608D0(&v685, "JAM");
  v687 = 15;
  sub_195E43C(&v1368, &v688, &v685);
  sub_3608D0(&v683, "JE");
  sub_3608D0(&v680, "JEY");
  v682 = 254;
  sub_195E43C(&v1369, &v683, &v680);
  sub_3608D0(&v678, "JO");
  sub_3608D0(&v675, "JOR");
  v677 = 33;
  sub_195E43C(&v1370, &v678, &v675);
  sub_3608D0(&v673, "JP");
  sub_3608D0(&v670, "JPN");
  v672 = 10;
  sub_195E43C(&v1371, &v673, &v670);
  sub_3608D0(&v668, "KZ");
  sub_3608D0(&v665, "KAZ");
  v667 = 145;
  sub_195E43C(&v1372, &v668, &v665);
  sub_3608D0(&v663, "KE");
  sub_3608D0(&v660, "KEN");
  v662 = 34;
  sub_195E43C(&v1373, &v663, &v660);
  sub_3608D0(&v658, "KG");
  sub_3608D0(&v655, "KGZ");
  v657 = 149;
  sub_195E43C(&v1374, &v658, &v655);
  sub_3608D0(&v653, "KH");
  sub_3608D0(&v650, "KHM");
  v652 = 97;
  sub_195E43C(&v1375, &v653, &v650);
  sub_3608D0(&v648, "KI");
  sub_3608D0(&v645, "KIR");
  v647 = 146;
  sub_195E43C(&v1376, &v648, &v645);
  sub_3608D0(&v643, "KN");
  sub_3608D0(&v640, "KNA");
  v642 = 193;
  sub_195E43C(&v1377, &v643, &v640);
  sub_3608D0(&v638, "KR");
  sub_3608D0(&v635, "KOR");
  v637 = 148;
  sub_195E43C(&v1378, &v638, &v635);
  sub_3608D0(&v633, "KW");
  sub_3608D0(&v630, "KWT");
  v632 = 16;
  sub_195E43C(&v1379, &v633, &v630);
  sub_3608D0(&v628, "LA");
  sub_3608D0(&v625, "LAO");
  v627 = 150;
  sub_195E43C(&v1380, &v628, &v625);
  sub_3608D0(&v623, "LB");
  sub_3608D0(&v620, "LBN");
  v622 = 152;
  sub_195E43C(&v1381, &v623, &v620);
  sub_3608D0(&v618, "LR");
  sub_3608D0(&v615, "LBR");
  v617 = 153;
  sub_195E43C(&v1382, &v618, &v615);
  sub_3608D0(&v613, "LY");
  sub_3608D0(&v610, "LBY");
  v612 = 154;
  sub_195E43C(&v1383, &v613, &v610);
  sub_3608D0(&v608, "LC");
  sub_3608D0(&v605, "LCA");
  v607 = 194;
  sub_195E43C(&v1384, &v608, &v605);
  sub_3608D0(&v603, "LI");
  sub_3608D0(&v600, "LIE");
  v602 = 70;
  sub_195E43C(&v1385, &v603, &v600);
  sub_3608D0(&v598, "LK");
  sub_3608D0(&v595, "LKA");
  v597 = 207;
  sub_195E43C(&v1386, &v598, &v595);
  sub_3608D0(&v593, "LS");
  sub_3608D0(&v590, "LSO");
  v592 = 49;
  sub_195E43C(&v1387, &v593, &v590);
  sub_3608D0(&v588, "LT");
  sub_3608D0(&v585, "LTU");
  v587 = 155;
  sub_195E43C(&v1388, &v588, &v585);
  sub_3608D0(&v583, "LU");
  sub_3608D0(&v580, "LUX");
  v582 = 156;
  sub_195E43C(&v1389, &v583, &v580);
  sub_3608D0(&v578, "LV");
  sub_3608D0(&v575, "LVA");
  v577 = 151;
  sub_195E43C(&v1390, &v578, &v575);
  sub_3608D0(&v573, "MO");
  sub_3608D0(&v570, "MAC");
  v572 = 157;
  sub_195E43C(&v1391, &v573, &v570);
  sub_3608D0(&v568, "MF");
  sub_3608D0(&v565, "MAF");
  v567 = 236;
  sub_195E43C(&v1392, &v568, &v565);
  sub_3608D0(&v563, "MA");
  sub_3608D0(&v560, "MAR");
  v562 = 171;
  sub_195E43C(&v1393, &v563, &v560);
  sub_3608D0(&v558, "MC");
  sub_3608D0(&v555, "MCO");
  v557 = 71;
  sub_195E43C(&v1394, &v558, &v555);
  sub_3608D0(&v553, "MD");
  sub_3608D0(&v550, "MDA");
  v552 = 167;
  sub_195E43C(&v1395, &v553, &v550);
  sub_3608D0(&v548, "MG");
  sub_3608D0(&v545, "MDG");
  v547 = 159;
  sub_195E43C(&v1396, &v548, &v545);
  sub_3608D0(&v543, "MV");
  sub_3608D0(&v540, "MDV");
  v542 = 50;
  sub_195E43C(&v1397, &v543, &v540);
  sub_3608D0(&v538, "MX");
  sub_3608D0(&v535, "MEX");
  v537 = 165;
  sub_195E43C(&v1398, &v538, &v535);
  sub_3608D0(&v533, "MH");
  sub_3608D0(&v530, "MHL");
  v532 = 51;
  sub_195E43C(&v1399, &v533, &v530);
  sub_3608D0(&v528, "MK");
  sub_3608D0(&v525, "MKD");
  v527 = 158;
  sub_195E43C(&v1400, &v528, &v525);
  sub_3608D0(&v523, "ML");
  sub_3608D0(&v520, "MLI");
  v522 = 17;
  sub_195E43C(&v1401, &v523, &v520);
  sub_3608D0(&v518, "MT");
  sub_3608D0(&v515, "MLT");
  v517 = 162;
  sub_195E43C(&v1402, &v518, &v515);
  sub_3608D0(&v513, "MM");
  sub_3608D0(&v510, "MMR");
  v512 = 173;
  sub_195E43C(&v1403, &v513, &v510);
  sub_3608D0(&v508, "ME");
  sub_3608D0(&v505, "MNE");
  v507 = 169;
  sub_195E43C(&v1404, &v508, &v505);
  sub_3608D0(&v503, "MN");
  sub_3608D0(&v500, "MNG");
  v502 = 168;
  sub_195E43C(&v1405, &v503, &v500);
  sub_3608D0(&v498, "MP");
  sub_3608D0(&v495, "MNP");
  v497 = 179;
  sub_195E43C(&v1406, &v498, &v495);
  sub_3608D0(&v493, "MZ");
  sub_3608D0(&v490, "MOZ");
  v492 = 172;
  sub_195E43C(&v1407, &v493, &v490);
  sub_3608D0(&v488, "MR");
  sub_3608D0(&v485, "MRT");
  v487 = 163;
  sub_195E43C(&v1408, &v488, &v485);
  sub_3608D0(&v483, "MS");
  sub_3608D0(&v480, "MSR");
  v482 = 170;
  sub_195E43C(&v1409, &v483, &v480);
  sub_3608D0(&v478, "MQ");
  sub_3608D0(&v475, "MTQ");
  v477 = 52;
  sub_195E43C(&v1410, &v478, &v475);
  sub_3608D0(&v473, "MU");
  sub_3608D0(&v470, "MUS");
  v472 = 164;
  sub_195E43C(&v1411, &v473, &v470);
  sub_3608D0(&v468, "MW");
  sub_3608D0(&v465, "MWI");
  v467 = 160;
  sub_195E43C(&v1412, &v468, &v465);
  sub_3608D0(&v463, "MY");
  sub_3608D0(&v460, "MYS");
  v462 = 161;
  sub_195E43C(&v1413, &v463, &v460);
  sub_3608D0(&v458, "YT");
  sub_3608D0(&v455, "MYT");
  v457 = 53;
  sub_195E43C(&v1414, &v458, &v455);
  sub_3608D0(&v453, "NA");
  sub_3608D0(&v450, "NAM");
  v452 = 174;
  sub_195E43C(&v1415, &v453, &v450);
  sub_3608D0(&v448, "NC");
  sub_3608D0(&v445, "NCL");
  v447 = 177;
  sub_195E43C(&v1416, &v448, &v445);
  sub_3608D0(&v443, "NE");
  sub_3608D0(&v440, "NER");
  v442 = 35;
  sub_195E43C(&v1417, &v443, &v440);
  sub_3608D0(&v438, "NF");
  sub_3608D0(&v435, "NFK");
  v437 = 23;
  sub_195E43C(&v1418, &v438, &v435);
  sub_3608D0(&v433, "NG");
  sub_3608D0(&v430, "NGA");
  v432 = 6;
  sub_195E43C(&v1419, &v433, &v430);
  sub_3608D0(&v428, "NI");
  sub_3608D0(&v425, "NIC");
  v427 = 18;
  sub_195E43C(&v1420, &v428, &v425);
  sub_3608D0(&v423, "NU");
  sub_3608D0(&v420, "NIU");
  v422 = 178;
  sub_195E43C(&v1421, &v423, &v420);
  sub_3608D0(&v418, "NL");
  sub_3608D0(&v415, "NLD");
  v417 = 176;
  sub_195E43C(&v1422, &v418, &v415);
  sub_3608D0(&v413, "NO");
  sub_3608D0(&v410, "NOR");
  v412 = 180;
  sub_195E43C(&v1423, &v413, &v410);
  sub_3608D0(&v408, "NP");
  sub_3608D0(&v405, "NPL");
  v407 = 175;
  sub_195E43C(&v1424, &v408, &v405);
  sub_3608D0(&v403, "NR");
  sub_3608D0(&v400, "NRU");
  v402 = 54;
  sub_195E43C(&v1425, &v403, &v400);
  sub_3608D0(&v398, "NZ");
  sub_3608D0(&v395, "NZL");
  v397 = 24;
  sub_195E43C(&v1426, &v398, &v395);
  sub_3608D0(&v393, "OM");
  sub_3608D0(&v390, "OMN");
  v392 = 7;
  sub_195E43C(&v1427, &v393, &v390);
  sub_3608D0(&v388, "PA");
  sub_3608D0(&v385, "PAN");
  v387 = 19;
  sub_195E43C(&v1428, &v388, &v385);
  sub_3608D0(&v383, "PE");
  sub_3608D0(&v380, "PER");
  v382 = 184;
  sub_195E43C(&v1429, &v383, &v380);
  sub_3608D0(&v378, "PF");
  sub_3608D0(&v375, "PYF");
  v377 = 124;
  sub_195E43C(&v1430, &v378, &v375);
  sub_3608D0(&v373, "PG");
  sub_3608D0(&v370, "PNG");
  v372 = 56;
  sub_195E43C(&v1431, &v373, &v370);
  sub_3608D0(&v368, "PH");
  sub_3608D0(&v365, "PHL");
  v367 = 185;
  sub_195E43C(&v1432, &v368, &v365);
  sub_3608D0(&v363, "PK");
  sub_3608D0(&v360, "PAK");
  v362 = 181;
  sub_195E43C(&v1433, &v363, &v360);
  sub_3608D0(&v358, "PL");
  sub_3608D0(&v355, "POL");
  v357 = 186;
  sub_195E43C(&v1434, &v358, &v355);
  sub_3608D0(&v353, "PM");
  sub_3608D0(&v350, "SPM");
  v352 = 241;
  sub_195E43C(&v1435, &v353, &v350);
  sub_3608D0(&v348, "PN");
  sub_3608D0(&v345, "PCN");
  v347 = 55;
  sub_195E43C(&v1436, &v348, &v345);
  sub_3608D0(&v343, "PR");
  sub_3608D0(&v340, "PRI");
  v342 = 253;
  sub_195E43C(&v1437, &v343, &v340);
  sub_3608D0(&v338, "PS");
  sub_3608D0(&v335, "PSE");
  v337 = 36;
  sub_195E43C(&v1438, &v338, &v335);
  sub_3608D0(&v333, "PT");
  sub_3608D0(&v330, "PRT");
  v332 = 187;
  sub_195E43C(&v1439, &v333, &v330);
  sub_3608D0(&v328, "PW");
  sub_3608D0(&v325, "PLW");
  v327 = 182;
  sub_195E43C(&v1440, &v328, &v325);
  sub_3608D0(&v323, "PY");
  sub_3608D0(&v320, "PRY");
  v322 = 183;
  sub_195E43C(&v1441, &v323, &v320);
  sub_3608D0(&v318, "QA");
  sub_3608D0(&v315, "QAT");
  v317 = 8;
  sub_195E43C(&v1442, &v318, &v315);
  sub_3608D0(&v313, "RE");
  sub_3608D0(&v310, "REU");
  v312 = 188;
  sub_195E43C(&v1443, &v313, &v310);
  sub_3608D0(&v308, "RO");
  sub_3608D0(&v305, "ROU");
  v307 = 189;
  sub_195E43C(&v1444, &v308, &v305);
  sub_3608D0(&v303, "RS");
  sub_3608D0(&v300, "SRB");
  v302 = 199;
  sub_195E43C(&v1445, &v303, &v300);
  sub_3608D0(&v298, "RU");
  sub_3608D0(&v295, "RUS");
  v297 = 190;
  sub_195E43C(&v1446, &v298, &v295);
  sub_3608D0(&v293, "RW");
  sub_3608D0(&v290, "RWA");
  v292 = 191;
  sub_195E43C(&v1447, &v293, &v290);
  sub_3608D0(&v288, "SA");
  sub_3608D0(&v285, "SAU");
  v287 = 20;
  sub_195E43C(&v1448, &v288, &v285);
  sub_3608D0(&v283, "SB");
  sub_3608D0(&v280, "SLB");
  v282 = 58;
  sub_195E43C(&v1449, &v283, &v280);
  sub_3608D0(&v278, "SC");
  sub_3608D0(&v275, "SYC");
  v277 = 200;
  sub_195E43C(&v1450, &v278, &v275);
  sub_3608D0(&v273, "SD");
  sub_3608D0(&v270, "SDN");
  v272 = 208;
  sub_195E43C(&v1451, &v273, &v270);
  sub_3608D0(&v268, "SE");
  sub_3608D0(&v265, "SWE");
  v267 = 210;
  sub_195E43C(&v1452, &v268, &v265);
  sub_3608D0(&v263, "SG");
  sub_3608D0(&v260, "SGP");
  v262 = 202;
  sub_195E43C(&v1453, &v263, &v260);
  sub_3608D0(&v258, "SH");
  sub_3608D0(&v255, "SHN");
  v257 = 192;
  sub_195E43C(&v1454, &v258, &v255);
  sub_3608D0(&v253, "SI");
  sub_3608D0(&v250, "SVN");
  v252 = 204;
  sub_195E43C(&v1455, &v253, &v250);
  sub_3608D0(&v248, "SJ");
  sub_3608D0(&v245, "SJM");
  v247 = 72;
  sub_195E43C(&v1456, &v248, &v245);
  sub_3608D0(&v243, "SK");
  sub_3608D0(&v240, "SVK");
  v242 = 203;
  sub_195E43C(&v1457, &v243, &v240);
  sub_3608D0(&v238, "SL");
  sub_3608D0(&v235, "SLE");
  v237 = 201;
  sub_195E43C(&v1458, &v238, &v235);
  sub_3608D0(&v233, "SM");
  sub_3608D0(&v230, "SMR");
  v232 = 197;
  sub_195E43C(&v1459, &v233, &v230);
  sub_3608D0(&v228, "SN");
  sub_3608D0(&v225, "SEN");
  v227 = 37;
  sub_195E43C(&v1460, &v228, &v225);
  sub_3608D0(&v223, "SO");
  sub_3608D0(&v220, "SOM");
  v222 = 205;
  sub_195E43C(&v1461, &v223, &v220);
  sub_3608D0(&v218, "SR");
  sub_3608D0(&v215, "SUR");
  v217 = 209;
  sub_195E43C(&v1462, &v218, &v215);
  sub_3608D0(&v213, "SS");
  sub_3608D0(&v210, "SSD");
  v212 = 243;
  sub_195E43C(&v1463, &v213, &v210);
  sub_3608D0(&v208, "ST");
  sub_3608D0(&v205, "STP");
  v207 = 198;
  sub_195E43C(&v1464, &v208, &v205);
  sub_3608D0(&v203, "SV");
  sub_3608D0(&v200, "SLV");
  v202 = 21;
  sub_195E43C(&v1465, &v203, &v200);
  sub_3608D0(&v198, "SX");
  sub_3608D0(&v195, "SXM");
  v197 = 234;
  sub_195E43C(&v1466, &v198, &v195);
  sub_3608D0(&v193, "SY");
  sub_3608D0(&v190, "SYR");
  v192 = 212;
  sub_195E43C(&v1467, &v193, &v190);
  sub_3608D0(&v188, "SZ");
  sub_3608D0(&v185, "SWZ");
  v187 = 59;
  sub_195E43C(&v1468, &v188, &v185);
  sub_3608D0(&v183, "TC");
  sub_3608D0(&v180, "TCA");
  v182 = 222;
  sub_195E43C(&v1469, &v183, &v180);
  sub_3608D0(&v178, "TD");
  sub_3608D0(&v175, "TCD");
  v177 = 101;
  sub_195E43C(&v1470, &v178, &v175);
  sub_3608D0(&v173, "TF");
  sub_3608D0(&v170, "ATF");
  v172 = 125;
  sub_195E43C(&v1471, &v173, &v170);
  sub_3608D0(&v168, "TG");
  sub_3608D0(&v165, "TGO");
  v167 = 216;
  sub_195E43C(&v1472, &v168, &v165);
  sub_3608D0(&v163, "TH");
  sub_3608D0(&v160, "THA");
  v162 = 214;
  sub_195E43C(&v1473, &v163, &v160);
  sub_3608D0(&v158, "TJ");
  sub_3608D0(&v155, "TJK");
  v157 = 213;
  sub_195E43C(&v1474, &v158, &v155);
  sub_3608D0(&v153, "TK");
  sub_3608D0(&v150, "TKL");
  v152 = 244;
  sub_195E43C(&v1475, &v153, &v150);
  sub_3608D0(&v148, "TL");
  sub_3608D0(&v145, "TLS");
  v147 = 215;
  sub_195E43C(&v1476, &v148, &v145);
  sub_3608D0(&v143, "TM");
  sub_3608D0(&v140, "TKM");
  v142 = 221;
  sub_195E43C(&v1477, &v143, &v140);
  sub_3608D0(&v138, "TN");
  sub_3608D0(&v135, "TUN");
  v137 = 219;
  sub_195E43C(&v1478, &v138, &v135);
  sub_3608D0(&v133, "TO");
  sub_3608D0(&v130, "TON");
  v132 = 217;
  sub_195E43C(&v1479, &v133, &v130);
  sub_3608D0(&v128, "TR");
  sub_3608D0(&v125, "TUR");
  v127 = 220;
  sub_195E43C(&v1480, &v128, &v125);
  sub_3608D0(&v123, "TT");
  sub_3608D0(&v120, "TTO");
  v122 = 218;
  sub_195E43C(&v1481, &v123, &v120);
  sub_3608D0(&v118, "TV");
  sub_3608D0(&v115, "TUV");
  v117 = 60;
  sub_195E43C(&v1482, &v118, &v115);
  sub_3608D0(&v113, "TZ");
  sub_3608D0(&v110, "TZA");
  v112 = 38;
  sub_195E43C(&v1483, &v113, &v110);
  sub_3608D0(&v108, "UA");
  sub_3608D0(&v105, "UKR");
  v107 = 224;
  sub_195E43C(&v1484, &v108, &v105);
  sub_3608D0(&v103, "UG");
  sub_3608D0(&v100, "UGA");
  v102 = 223;
  sub_195E43C(&v1485, &v103, &v100);
  sub_3608D0(&v98, "UM");
  sub_3608D0(&v95, "UMI");
  v97 = 251;
  sub_195E43C(&v1486, &v98, &v95);
  sub_3608D0(&v93, "US");
  sub_3608D0(&v90, "USA");
  v92 = 226;
  sub_195E43C(&v1487, &v93, &v90);
  sub_3608D0(&v88, "UY");
  sub_3608D0(&v85, "URY");
  v87 = 1;
  sub_195E43C(&v1488, &v88, &v85);
  sub_3608D0(&v83, "UZ");
  sub_3608D0(&v80, "UZB");
  v82 = 227;
  sub_195E43C(&v1489, &v83, &v80);
  sub_3608D0(&v78, "VA");
  sub_3608D0(&v75, "VAT");
  v77 = 74;
  sub_195E43C(&v1490, &v78, &v75);
  sub_3608D0(&v73, "VC");
  sub_3608D0(&v70, "VCT");
  v72 = 195;
  sub_195E43C(&v1491, &v73, &v70);
  sub_3608D0(&v68, "VE");
  sub_3608D0(&v65, "VEN");
  v67 = 39;
  sub_195E43C(&v1492, &v68, &v65);
  sub_3608D0(&v63, "VG");
  sub_3608D0(&v60, "VGB");
  v62 = 229;
  sub_195E43C(&v1493, &v63, &v60);
  sub_3608D0(&v58, "VI");
  sub_3608D0(&v55, "VIR");
  v57 = 242;
  sub_195E43C(&v1494, &v58, &v55);
  sub_3608D0(&v53, "VN");
  sub_3608D0(&v50, "VNM");
  v52 = 9;
  sub_195E43C(&v1495, &v53, &v50);
  sub_3608D0(&v48, "VU");
  sub_3608D0(&v45, "VUT");
  v47 = 228;
  sub_195E43C(&v1496, &v48, &v45);
  sub_3608D0(&v43, "WF");
  sub_3608D0(&v40, "WLF");
  v42 = 230;
  sub_195E43C(&v1497, &v43, &v40);
  sub_3608D0(&v38, "WS");
  sub_3608D0(&v35, "WSM");
  v37 = 196;
  sub_195E43C(&v1498, &v38, &v35);
  sub_3608D0(&v33, "YE");
  sub_3608D0(&v30, "YEM");
  v32 = 231;
  sub_195E43C(&v1499, &v33, &v30);
  sub_3608D0(&v28, "YT");
  sub_3608D0(&v25, "MYT");
  v27 = 53;
  sub_195E43C(&v1500, &v28, &v25);
  sub_3608D0(&v23, "ZA");
  sub_3608D0(v20, "ZAF");
  v22 = 62;
  sub_195E43C(&v1501, &v23, v20);
  sub_3608D0(v18, "ZM");
  sub_3608D0(v15, "ZMB");
  v17 = 232;
  sub_195E43C(&v1502, v18, v15);
  sub_3608D0(v13, "ZW");
  sub_3608D0(__p, "ZWE");
  v12 = 233;
  sub_195E43C(&v1503, v13, __p);
  sub_1966280(qword_27EE750, v1255, 249);
  v8 = &v1504;
  v9 = -13944;
  do
  {
    if (*v8 < 0)
    {
      operator delete(*(v8 - 23));
    }

    if (*(v8 - 24) < 0)
    {
      operator delete(*(v8 - 47));
    }

    v8 -= 56;
    v9 += 56;
  }

  while (v9);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v49 < 0)
  {
    operator delete(v48);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v59 < 0)
  {
    operator delete(v58);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v69 < 0)
  {
    operator delete(v68);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v74 < 0)
  {
    operator delete(v73);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (v79 < 0)
  {
    operator delete(v78);
  }

  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (v84 < 0)
  {
    operator delete(v83);
  }

  if (v86 < 0)
  {
    operator delete(v85);
  }

  if (v89 < 0)
  {
    operator delete(v88);
  }

  if (v91 < 0)
  {
    operator delete(v90);
  }

  if (v94 < 0)
  {
    operator delete(v93);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v99 < 0)
  {
    operator delete(v98);
  }

  if (v101 < 0)
  {
    operator delete(v100);
  }

  if (v104 < 0)
  {
    operator delete(v103);
  }

  if (v106 < 0)
  {
    operator delete(v105);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  if (v111 < 0)
  {
    operator delete(v110);
  }

  if (v114 < 0)
  {
    operator delete(v113);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v119 < 0)
  {
    operator delete(v118);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  if (v124 < 0)
  {
    operator delete(v123);
  }

  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (v129 < 0)
  {
    operator delete(v128);
  }

  if (v131 < 0)
  {
    operator delete(v130);
  }

  if (v134 < 0)
  {
    operator delete(v133);
  }

  if (v136 < 0)
  {
    operator delete(v135);
  }

  if (v139 < 0)
  {
    operator delete(v138);
  }

  if (v141 < 0)
  {
    operator delete(v140);
  }

  if (v144 < 0)
  {
    operator delete(v143);
  }

  if (v146 < 0)
  {
    operator delete(v145);
  }

  if (v149 < 0)
  {
    operator delete(v148);
  }

  if (v151 < 0)
  {
    operator delete(v150);
  }

  if (v154 < 0)
  {
    operator delete(v153);
  }

  if (v156 < 0)
  {
    operator delete(v155);
  }

  if (v159 < 0)
  {
    operator delete(v158);
  }

  if (v161 < 0)
  {
    operator delete(v160);
  }

  if (v164 < 0)
  {
    operator delete(v163);
  }

  if (v166 < 0)
  {
    operator delete(v165);
  }

  if (v169 < 0)
  {
    operator delete(v168);
  }

  if (v171 < 0)
  {
    operator delete(v170);
  }

  if (v174 < 0)
  {
    operator delete(v173);
  }

  if (v176 < 0)
  {
    operator delete(v175);
  }

  if (v179 < 0)
  {
    operator delete(v178);
  }

  if (v181 < 0)
  {
    operator delete(v180);
  }

  if (v184 < 0)
  {
    operator delete(v183);
  }

  if (v186 < 0)
  {
    operator delete(v185);
  }

  if (v189 < 0)
  {
    operator delete(v188);
  }

  if (v191 < 0)
  {
    operator delete(v190);
  }

  if (v194 < 0)
  {
    operator delete(v193);
  }

  if (v196 < 0)
  {
    operator delete(v195);
  }

  if (v199 < 0)
  {
    operator delete(v198);
  }

  if (v201 < 0)
  {
    operator delete(v200);
  }

  if (v204 < 0)
  {
    operator delete(v203);
  }

  if (v206 < 0)
  {
    operator delete(v205);
  }

  if (v209 < 0)
  {
    operator delete(v208);
  }

  if (v211 < 0)
  {
    operator delete(v210);
  }

  if (v214 < 0)
  {
    operator delete(v213);
  }

  if (v216 < 0)
  {
    operator delete(v215);
  }

  if (v219 < 0)
  {
    operator delete(v218);
  }

  if (v221 < 0)
  {
    operator delete(v220);
  }

  if (v224 < 0)
  {
    operator delete(v223);
  }

  if (v226 < 0)
  {
    operator delete(v225);
  }

  if (v229 < 0)
  {
    operator delete(v228);
  }

  if (v231 < 0)
  {
    operator delete(v230);
  }

  if (v234 < 0)
  {
    operator delete(v233);
  }

  if (v236 < 0)
  {
    operator delete(v235);
  }

  if (v239 < 0)
  {
    operator delete(v238);
  }

  if (v241 < 0)
  {
    operator delete(v240);
  }

  if (v244 < 0)
  {
    operator delete(v243);
  }

  if (v246 < 0)
  {
    operator delete(v245);
  }

  if (v249 < 0)
  {
    operator delete(v248);
  }

  if (v251 < 0)
  {
    operator delete(v250);
  }

  if (v254 < 0)
  {
    operator delete(v253);
  }

  if (v256 < 0)
  {
    operator delete(v255);
  }

  if (v259 < 0)
  {
    operator delete(v258);
  }

  if (v261 < 0)
  {
    operator delete(v260);
  }

  if (v264 < 0)
  {
    operator delete(v263);
  }

  if (v266 < 0)
  {
    operator delete(v265);
  }

  if (v269 < 0)
  {
    operator delete(v268);
  }

  if (v271 < 0)
  {
    operator delete(v270);
  }

  if (v274 < 0)
  {
    operator delete(v273);
  }

  if (v276 < 0)
  {
    operator delete(v275);
  }

  if (v279 < 0)
  {
    operator delete(v278);
  }

  if (v281 < 0)
  {
    operator delete(v280);
  }

  if (v284 < 0)
  {
    operator delete(v283);
  }

  if (v286 < 0)
  {
    operator delete(v285);
  }

  if (v289 < 0)
  {
    operator delete(v288);
  }

  if (v291 < 0)
  {
    operator delete(v290);
  }

  if (v294 < 0)
  {
    operator delete(v293);
  }

  if (v296 < 0)
  {
    operator delete(v295);
  }

  if (v299 < 0)
  {
    operator delete(v298);
  }

  if (v301 < 0)
  {
    operator delete(v300);
  }

  if (v304 < 0)
  {
    operator delete(v303);
  }

  if (v306 < 0)
  {
    operator delete(v305);
  }

  if (v309 < 0)
  {
    operator delete(v308);
  }

  if (v311 < 0)
  {
    operator delete(v310);
  }

  if (v314 < 0)
  {
    operator delete(v313);
  }

  if (v316 < 0)
  {
    operator delete(v315);
  }

  if (v319 < 0)
  {
    operator delete(v318);
  }

  if (v321 < 0)
  {
    operator delete(v320);
  }

  if (v324 < 0)
  {
    operator delete(v323);
  }

  if (v326 < 0)
  {
    operator delete(v325);
  }

  if (v329 < 0)
  {
    operator delete(v328);
  }

  if (v331 < 0)
  {
    operator delete(v330);
  }

  if (v334 < 0)
  {
    operator delete(v333);
  }

  if (v336 < 0)
  {
    operator delete(v335);
  }

  if (v339 < 0)
  {
    operator delete(v338);
  }

  if (v341 < 0)
  {
    operator delete(v340);
  }

  if (v344 < 0)
  {
    operator delete(v343);
  }

  if (v346 < 0)
  {
    operator delete(v345);
  }

  if (v349 < 0)
  {
    operator delete(v348);
  }

  if (v351 < 0)
  {
    operator delete(v350);
  }

  if (v354 < 0)
  {
    operator delete(v353);
  }

  if (v356 < 0)
  {
    operator delete(v355);
  }

  if (v359 < 0)
  {
    operator delete(v358);
  }

  if (v361 < 0)
  {
    operator delete(v360);
  }

  if (v364 < 0)
  {
    operator delete(v363);
  }

  if (v366 < 0)
  {
    operator delete(v365);
  }

  if (v369 < 0)
  {
    operator delete(v368);
  }

  if (v371 < 0)
  {
    operator delete(v370);
  }

  if (v374 < 0)
  {
    operator delete(v373);
  }

  if (v376 < 0)
  {
    operator delete(v375);
  }

  if (v379 < 0)
  {
    operator delete(v378);
  }

  if (v381 < 0)
  {
    operator delete(v380);
  }

  if (v384 < 0)
  {
    operator delete(v383);
  }

  if (v386 < 0)
  {
    operator delete(v385);
  }

  if (v389 < 0)
  {
    operator delete(v388);
  }

  if (v391 < 0)
  {
    operator delete(v390);
  }

  if (v394 < 0)
  {
    operator delete(v393);
  }

  if (v396 < 0)
  {
    operator delete(v395);
  }

  if (v399 < 0)
  {
    operator delete(v398);
  }

  if (v401 < 0)
  {
    operator delete(v400);
  }

  if (v404 < 0)
  {
    operator delete(v403);
  }

  if (v406 < 0)
  {
    operator delete(v405);
  }

  if (v409 < 0)
  {
    operator delete(v408);
  }

  if (v411 < 0)
  {
    operator delete(v410);
  }

  if (v414 < 0)
  {
    operator delete(v413);
  }

  if (v416 < 0)
  {
    operator delete(v415);
  }

  if (v419 < 0)
  {
    operator delete(v418);
  }

  if (v421 < 0)
  {
    operator delete(v420);
  }

  if (v424 < 0)
  {
    operator delete(v423);
  }

  if (v426 < 0)
  {
    operator delete(v425);
  }

  if (v429 < 0)
  {
    operator delete(v428);
  }

  if (v431 < 0)
  {
    operator delete(v430);
  }

  if (v434 < 0)
  {
    operator delete(v433);
  }

  if (v436 < 0)
  {
    operator delete(v435);
  }

  if (v439 < 0)
  {
    operator delete(v438);
  }

  if (v441 < 0)
  {
    operator delete(v440);
  }

  if (v444 < 0)
  {
    operator delete(v443);
  }

  if (v446 < 0)
  {
    operator delete(v445);
  }

  if (v449 < 0)
  {
    operator delete(v448);
  }

  if (v451 < 0)
  {
    operator delete(v450);
  }

  if (v454 < 0)
  {
    operator delete(v453);
  }

  if (v456 < 0)
  {
    operator delete(v455);
  }

  if (v459 < 0)
  {
    operator delete(v458);
  }

  if (v461 < 0)
  {
    operator delete(v460);
  }

  if (v464 < 0)
  {
    operator delete(v463);
  }

  if (v466 < 0)
  {
    operator delete(v465);
  }

  if (v469 < 0)
  {
    operator delete(v468);
  }

  if (v471 < 0)
  {
    operator delete(v470);
  }

  if (v474 < 0)
  {
    operator delete(v473);
  }

  if (v476 < 0)
  {
    operator delete(v475);
  }

  if (v479 < 0)
  {
    operator delete(v478);
  }

  if (v481 < 0)
  {
    operator delete(v480);
  }

  if (v484 < 0)
  {
    operator delete(v483);
  }

  if (v486 < 0)
  {
    operator delete(v485);
  }

  if (v489 < 0)
  {
    operator delete(v488);
  }

  if (v491 < 0)
  {
    operator delete(v490);
  }

  if (v494 < 0)
  {
    operator delete(v493);
  }

  if (v496 < 0)
  {
    operator delete(v495);
  }

  if (v499 < 0)
  {
    operator delete(v498);
  }

  if (v501 < 0)
  {
    operator delete(v500);
  }

  if (v504 < 0)
  {
    operator delete(v503);
  }

  if (v506 < 0)
  {
    operator delete(v505);
  }

  if (v509 < 0)
  {
    operator delete(v508);
  }

  if (v511 < 0)
  {
    operator delete(v510);
  }

  if (v514 < 0)
  {
    operator delete(v513);
  }

  if (v516 < 0)
  {
    operator delete(v515);
  }

  if (v519 < 0)
  {
    operator delete(v518);
  }

  if (v521 < 0)
  {
    operator delete(v520);
  }

  if (v524 < 0)
  {
    operator delete(v523);
  }

  if (v526 < 0)
  {
    operator delete(v525);
  }

  if (v529 < 0)
  {
    operator delete(v528);
  }

  if (v531 < 0)
  {
    operator delete(v530);
  }

  if (v534 < 0)
  {
    operator delete(v533);
  }

  if (v536 < 0)
  {
    operator delete(v535);
  }

  if (v539 < 0)
  {
    operator delete(v538);
  }

  if (v541 < 0)
  {
    operator delete(v540);
  }

  if (v544 < 0)
  {
    operator delete(v543);
  }

  if (v546 < 0)
  {
    operator delete(v545);
  }

  if (v549 < 0)
  {
    operator delete(v548);
  }

  if (v551 < 0)
  {
    operator delete(v550);
  }

  if (v554 < 0)
  {
    operator delete(v553);
  }

  if (v556 < 0)
  {
    operator delete(v555);
  }

  if (v559 < 0)
  {
    operator delete(v558);
  }

  if (v561 < 0)
  {
    operator delete(v560);
  }

  if (v564 < 0)
  {
    operator delete(v563);
  }

  if (v566 < 0)
  {
    operator delete(v565);
  }

  if (v569 < 0)
  {
    operator delete(v568);
  }

  if (v571 < 0)
  {
    operator delete(v570);
  }

  if (v574 < 0)
  {
    operator delete(v573);
  }

  if (v576 < 0)
  {
    operator delete(v575);
  }

  if (v579 < 0)
  {
    operator delete(v578);
  }

  if (v581 < 0)
  {
    operator delete(v580);
  }

  if (v584 < 0)
  {
    operator delete(v583);
  }

  if (v586 < 0)
  {
    operator delete(v585);
  }

  if (v589 < 0)
  {
    operator delete(v588);
  }

  if (v591 < 0)
  {
    operator delete(v590);
  }

  if (v594 < 0)
  {
    operator delete(v593);
  }

  if (v596 < 0)
  {
    operator delete(v595);
  }

  if (v599 < 0)
  {
    operator delete(v598);
  }

  if (v601 < 0)
  {
    operator delete(v600);
  }

  if (v604 < 0)
  {
    operator delete(v603);
  }

  if (v606 < 0)
  {
    operator delete(v605);
  }

  if (v609 < 0)
  {
    operator delete(v608);
  }

  if (v611 < 0)
  {
    operator delete(v610);
  }

  if (v614 < 0)
  {
    operator delete(v613);
  }

  if (v616 < 0)
  {
    operator delete(v615);
  }

  if (v619 < 0)
  {
    operator delete(v618);
  }

  if (v621 < 0)
  {
    operator delete(v620);
  }

  if (v624 < 0)
  {
    operator delete(v623);
  }

  if (v626 < 0)
  {
    operator delete(v625);
  }

  if (v629 < 0)
  {
    operator delete(v628);
  }

  if (v631 < 0)
  {
    operator delete(v630);
  }

  if (v634 < 0)
  {
    operator delete(v633);
  }

  if (v636 < 0)
  {
    operator delete(v635);
  }

  if (v639 < 0)
  {
    operator delete(v638);
  }

  if (v641 < 0)
  {
    operator delete(v640);
  }

  if (v644 < 0)
  {
    operator delete(v643);
  }

  if (v646 < 0)
  {
    operator delete(v645);
  }

  if (v649 < 0)
  {
    operator delete(v648);
  }

  if (v651 < 0)
  {
    operator delete(v650);
  }

  if (v654 < 0)
  {
    operator delete(v653);
  }

  if (v656 < 0)
  {
    operator delete(v655);
  }

  if (v659 < 0)
  {
    operator delete(v658);
  }

  if (v661 < 0)
  {
    operator delete(v660);
  }

  if (v664 < 0)
  {
    operator delete(v663);
  }

  if (v666 < 0)
  {
    operator delete(v665);
  }

  if (v669 < 0)
  {
    operator delete(v668);
  }

  if (v671 < 0)
  {
    operator delete(v670);
  }

  if (v674 < 0)
  {
    operator delete(v673);
  }

  if (v676 < 0)
  {
    operator delete(v675);
  }

  if (v679 < 0)
  {
    operator delete(v678);
  }

  if (v681 < 0)
  {
    operator delete(v680);
  }

  if (v684 < 0)
  {
    operator delete(v683);
  }

  if (v686 < 0)
  {
    operator delete(v685);
  }

  if (v689 < 0)
  {
    operator delete(v688);
  }

  if (v691 < 0)
  {
    operator delete(v690);
  }

  if (v694 < 0)
  {
    operator delete(v693);
  }

  if (v696 < 0)
  {
    operator delete(v695);
  }

  if (v699 < 0)
  {
    operator delete(v698);
  }

  if (v701 < 0)
  {
    operator delete(v700);
  }

  if (v704 < 0)
  {
    operator delete(v703);
  }

  if (v706 < 0)
  {
    operator delete(v705);
  }

  if (v709 < 0)
  {
    operator delete(v708);
  }

  if (v711 < 0)
  {
    operator delete(v710);
  }

  if (v714 < 0)
  {
    operator delete(v713);
  }

  if (v716 < 0)
  {
    operator delete(v715);
  }

  if (v719 < 0)
  {
    operator delete(v718);
  }

  if (v721 < 0)
  {
    operator delete(v720);
  }

  if (v724 < 0)
  {
    operator delete(v723);
  }

  if (v726 < 0)
  {
    operator delete(v725);
  }

  if (v729 < 0)
  {
    operator delete(v728);
  }

  if (v731 < 0)
  {
    operator delete(v730);
  }

  if (v734 < 0)
  {
    operator delete(v733);
  }

  if (v736 < 0)
  {
    operator delete(v735);
  }

  if (v739 < 0)
  {
    operator delete(v738);
  }

  if (v741 < 0)
  {
    operator delete(v740);
  }

  if (v744 < 0)
  {
    operator delete(v743);
  }

  if (v746 < 0)
  {
    operator delete(v745);
  }

  if (v749 < 0)
  {
    operator delete(v748);
  }

  if (v751 < 0)
  {
    operator delete(v750);
  }

  if (v754 < 0)
  {
    operator delete(v753);
  }

  if (v756 < 0)
  {
    operator delete(v755);
  }

  if (v759 < 0)
  {
    operator delete(v758);
  }

  if (v761 < 0)
  {
    operator delete(v760);
  }

  if (v764 < 0)
  {
    operator delete(v763);
  }

  if (v766 < 0)
  {
    operator delete(v765);
  }

  if (v769 < 0)
  {
    operator delete(v768);
  }

  if (v771 < 0)
  {
    operator delete(v770);
  }

  if (v774 < 0)
  {
    operator delete(v773);
  }

  if (v776 < 0)
  {
    operator delete(v775);
  }

  if (v779 < 0)
  {
    operator delete(v778);
  }

  if (v781 < 0)
  {
    operator delete(v780);
  }

  if (v784 < 0)
  {
    operator delete(v783);
  }

  if (v786 < 0)
  {
    operator delete(v785);
  }

  if (v789 < 0)
  {
    operator delete(v788);
  }

  if (v791 < 0)
  {
    operator delete(v790);
  }

  if (v794 < 0)
  {
    operator delete(v793);
  }

  if (v796 < 0)
  {
    operator delete(v795);
  }

  if (v799 < 0)
  {
    operator delete(v798);
  }

  if (v801 < 0)
  {
    operator delete(v800);
  }

  if (v804 < 0)
  {
    operator delete(v803);
  }

  if (v806 < 0)
  {
    operator delete(v805);
  }

  if (v809 < 0)
  {
    operator delete(v808);
  }

  if (v811 < 0)
  {
    operator delete(v810);
  }

  if (v814 < 0)
  {
    operator delete(v813);
  }

  if (v816 < 0)
  {
    operator delete(v815);
  }

  if (v819 < 0)
  {
    operator delete(v818);
  }

  if (v821 < 0)
  {
    operator delete(v820);
  }

  if (v824 < 0)
  {
    operator delete(v823);
  }

  if (v826 < 0)
  {
    operator delete(v825);
  }

  if (v829 < 0)
  {
    operator delete(v828);
  }

  if (v831 < 0)
  {
    operator delete(v830);
  }

  if (v834 < 0)
  {
    operator delete(v833);
  }

  if (v836 < 0)
  {
    operator delete(v835);
  }

  if (v839 < 0)
  {
    operator delete(v838);
  }

  if (v841 < 0)
  {
    operator delete(v840);
  }

  if (v844 < 0)
  {
    operator delete(v843);
  }

  if (v846 < 0)
  {
    operator delete(v845);
  }

  if (v849 < 0)
  {
    operator delete(v848);
  }

  if (v851 < 0)
  {
    operator delete(v850);
  }

  if (v854 < 0)
  {
    operator delete(v853);
  }

  if (v856 < 0)
  {
    operator delete(v855);
  }

  if (v859 < 0)
  {
    operator delete(v858);
  }

  if (v861 < 0)
  {
    operator delete(v860);
  }

  if (v864 < 0)
  {
    operator delete(v863);
  }

  if (v866 < 0)
  {
    operator delete(v865);
  }

  if (v869 < 0)
  {
    operator delete(v868);
  }

  if (v871 < 0)
  {
    operator delete(v870);
  }

  if (v874 < 0)
  {
    operator delete(v873);
  }

  if (v876 < 0)
  {
    operator delete(v875);
  }

  if (v879 < 0)
  {
    operator delete(v878);
  }

  if (v881 < 0)
  {
    operator delete(v880);
  }

  if (v884 < 0)
  {
    operator delete(v883);
  }

  if (v886 < 0)
  {
    operator delete(v885);
  }

  if (v889 < 0)
  {
    operator delete(v888);
  }

  if (v891 < 0)
  {
    operator delete(v890);
  }

  if (v894 < 0)
  {
    operator delete(v893);
  }

  if (v896 < 0)
  {
    operator delete(v895);
  }

  if (v899 < 0)
  {
    operator delete(v898);
  }

  if (v901 < 0)
  {
    operator delete(v900);
  }

  if (v904 < 0)
  {
    operator delete(v903);
  }

  if (v906 < 0)
  {
    operator delete(v905);
  }

  if (v909 < 0)
  {
    operator delete(v908);
  }

  if (v911 < 0)
  {
    operator delete(v910);
  }

  if (v914 < 0)
  {
    operator delete(v913);
  }

  if (v916 < 0)
  {
    operator delete(v915);
  }

  if (v919 < 0)
  {
    operator delete(v918);
  }

  if (v921 < 0)
  {
    operator delete(v920);
  }

  if (v924 < 0)
  {
    operator delete(v923);
  }

  if (v926 < 0)
  {
    operator delete(v925);
  }

  if (v929 < 0)
  {
    operator delete(v928);
  }

  if (v931 < 0)
  {
    operator delete(v930);
  }

  if (v934 < 0)
  {
    operator delete(v933);
  }

  if (v936 < 0)
  {
    operator delete(v935);
  }

  if (v939 < 0)
  {
    operator delete(v938);
  }

  if (v941 < 0)
  {
    operator delete(v940);
  }

  if (v944 < 0)
  {
    operator delete(v943);
  }

  if (v946 < 0)
  {
    operator delete(v945);
  }

  if (v949 < 0)
  {
    operator delete(v948);
  }

  if (v951 < 0)
  {
    operator delete(v950);
  }

  if (v954 < 0)
  {
    operator delete(v953);
  }

  if (v956 < 0)
  {
    operator delete(v955);
  }

  if (v959 < 0)
  {
    operator delete(v958);
  }

  if (v961 < 0)
  {
    operator delete(v960);
  }

  if (v964 < 0)
  {
    operator delete(v963);
  }

  if (v966 < 0)
  {
    operator delete(v965);
  }

  if (v969 < 0)
  {
    operator delete(v968);
  }

  if (v971 < 0)
  {
    operator delete(v970);
  }

  if (v974 < 0)
  {
    operator delete(v973);
  }

  if (v976 < 0)
  {
    operator delete(v975);
  }

  if (v979 < 0)
  {
    operator delete(v978);
  }

  if (v981 < 0)
  {
    operator delete(v980);
  }

  if (v984 < 0)
  {
    operator delete(v983);
  }

  if (v986 < 0)
  {
    operator delete(v985);
  }

  if (v989 < 0)
  {
    operator delete(v988);
  }

  if (v991 < 0)
  {
    operator delete(v990);
  }

  if (v994 < 0)
  {
    operator delete(v993);
  }

  if (v996 < 0)
  {
    operator delete(v995);
  }

  if (v999 < 0)
  {
    operator delete(v998);
  }

  if (v1001 < 0)
  {
    operator delete(v1000);
  }

  if (v1004 < 0)
  {
    operator delete(v1003);
  }

  if (v1006 < 0)
  {
    operator delete(v1005);
  }

  if (v1009 < 0)
  {
    operator delete(v1008);
  }

  if (v1011 < 0)
  {
    operator delete(v1010);
  }

  if (v1014 < 0)
  {
    operator delete(v1013);
  }

  if (v1016 < 0)
  {
    operator delete(v1015);
  }

  if (v1019 < 0)
  {
    operator delete(v1018);
  }

  if (v1021 < 0)
  {
    operator delete(v1020);
  }

  if (v1024 < 0)
  {
    operator delete(v1023);
  }

  if (v1026 < 0)
  {
    operator delete(v1025);
  }

  if (v1029 < 0)
  {
    operator delete(v1028);
  }

  if (v1031 < 0)
  {
    operator delete(v1030);
  }

  if (v1034 < 0)
  {
    operator delete(v1033);
  }

  if (v1036 < 0)
  {
    operator delete(v1035);
  }

  if (v1039 < 0)
  {
    operator delete(v1038);
  }

  if (v1041 < 0)
  {
    operator delete(v1040);
  }

  if (v1044 < 0)
  {
    operator delete(v1043);
  }

  if (v1046 < 0)
  {
    operator delete(v1045);
  }

  if (v1049 < 0)
  {
    operator delete(v1048);
  }

  if (v1051 < 0)
  {
    operator delete(v1050);
  }

  if (v1054 < 0)
  {
    operator delete(v1053);
  }

  if (v1056 < 0)
  {
    operator delete(v1055);
  }

  if (v1059 < 0)
  {
    operator delete(v1058);
  }

  if (v1061 < 0)
  {
    operator delete(v1060);
  }

  if (v1064 < 0)
  {
    operator delete(v1063);
  }

  if (v1066 < 0)
  {
    operator delete(v1065);
  }

  if (v1069 < 0)
  {
    operator delete(v1068);
  }

  if (v1071 < 0)
  {
    operator delete(v1070);
  }

  if (v1074 < 0)
  {
    operator delete(v1073);
  }

  if (v1076 < 0)
  {
    operator delete(v1075);
  }

  if (v1079 < 0)
  {
    operator delete(v1078);
  }

  if (v1081 < 0)
  {
    operator delete(v1080);
  }

  if (v1084 < 0)
  {
    operator delete(v1083);
  }

  if (v1086 < 0)
  {
    operator delete(v1085);
  }

  if (v1089 < 0)
  {
    operator delete(v1088);
  }

  if (v1091 < 0)
  {
    operator delete(v1090);
  }

  if (v1094 < 0)
  {
    operator delete(v1093);
  }

  if (v1096 < 0)
  {
    operator delete(v1095);
  }

  if (v1099 < 0)
  {
    operator delete(v1098);
  }

  if (v1101 < 0)
  {
    operator delete(v1100);
  }

  if (v1104 < 0)
  {
    operator delete(v1103);
  }

  if (v1106 < 0)
  {
    operator delete(v1105);
  }

  if (v1109 < 0)
  {
    operator delete(v1108);
  }

  if (v1111 < 0)
  {
    operator delete(v1110);
  }

  if (v1114 < 0)
  {
    operator delete(v1113);
  }

  if (v1116 < 0)
  {
    operator delete(v1115);
  }

  if (v1119 < 0)
  {
    operator delete(v1118);
  }

  if (v1121 < 0)
  {
    operator delete(v1120);
  }

  if (v1124 < 0)
  {
    operator delete(v1123);
  }

  if (v1126 < 0)
  {
    operator delete(v1125);
  }

  if (v1129 < 0)
  {
    operator delete(v1128);
  }

  if (v1131 < 0)
  {
    operator delete(v1130);
  }

  if (v1134 < 0)
  {
    operator delete(v1133);
  }

  if (v1136 < 0)
  {
    operator delete(v1135);
  }

  if (v1139 < 0)
  {
    operator delete(v1138);
  }

  if (v1141 < 0)
  {
    operator delete(v1140);
  }

  if (v1144 < 0)
  {
    operator delete(v1143);
  }

  if (v1146 < 0)
  {
    operator delete(v1145);
  }

  if (v1149 < 0)
  {
    operator delete(v1148);
  }

  if (v1151 < 0)
  {
    operator delete(v1150);
  }

  if (v1154 < 0)
  {
    operator delete(v1153);
  }

  if (v1156 < 0)
  {
    operator delete(v1155);
  }

  if (v1159 < 0)
  {
    operator delete(v1158);
  }

  if (v1161 < 0)
  {
    operator delete(v1160);
  }

  if (v1164 < 0)
  {
    operator delete(v1163);
  }

  if (v1166 < 0)
  {
    operator delete(v1165);
  }

  if (v1169 < 0)
  {
    operator delete(v1168);
  }

  if (v1171 < 0)
  {
    operator delete(v1170);
  }

  if (v1174 < 0)
  {
    operator delete(v1173);
  }

  if (v1176 < 0)
  {
    operator delete(v1175);
  }

  if (v1179 < 0)
  {
    operator delete(v1178);
  }

  if (v1181 < 0)
  {
    operator delete(v1180);
  }

  if (v1184 < 0)
  {
    operator delete(v1183);
  }

  if (v1186 < 0)
  {
    operator delete(v1185);
  }

  if (v1189 < 0)
  {
    operator delete(v1188);
  }

  if (v1191 < 0)
  {
    operator delete(v1190);
  }

  if (v1194 < 0)
  {
    operator delete(v1193);
  }

  if (v1196 < 0)
  {
    operator delete(v1195);
  }

  if (v1199 < 0)
  {
    operator delete(v1198);
  }

  if (v1201 < 0)
  {
    operator delete(v1200);
  }

  if (v1204 < 0)
  {
    operator delete(v1203);
  }

  if (v1206 < 0)
  {
    operator delete(v1205);
  }

  if (v1209 < 0)
  {
    operator delete(v1208);
  }

  if (v1211 < 0)
  {
    operator delete(v1210);
  }

  if (v1214 < 0)
  {
    operator delete(v1213);
  }

  if (v1216 < 0)
  {
    operator delete(v1215);
  }

  if (v1219 < 0)
  {
    operator delete(v1218);
  }

  if (v1221 < 0)
  {
    operator delete(v1220);
  }

  if (v1224 < 0)
  {
    operator delete(v1223);
  }

  if (v1226 < 0)
  {
    operator delete(v1225);
  }

  if (v1229 < 0)
  {
    operator delete(v1228);
  }

  if (v1231 < 0)
  {
    operator delete(v1230);
  }

  if (v1234 < 0)
  {
    operator delete(v1233);
  }

  if (v1236 < 0)
  {
    operator delete(v1235);
  }

  if (v1239 < 0)
  {
    operator delete(v1238);
  }

  if (v1241 < 0)
  {
    operator delete(v1240);
  }

  if (v1244 < 0)
  {
    operator delete(v1243);
  }

  if (v1246 < 0)
  {
    operator delete(v1245);
  }

  if (v1249 < 0)
  {
    operator delete(v1248);
  }

  if (v1251 < 0)
  {
    operator delete(v1250);
  }

  if (v1254 < 0)
  {
    operator delete(v1253);
  }
}