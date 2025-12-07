void sub_663B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void **a45)
{
  sub_53F320(&a25);
  sub_662AC8(&a45);
  sub_53A58C((v46 - 248));
  sub_53A868(v45);
  _Unwind_Resume(a1);
}

void sub_663C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_1F1A8(va);
  sub_53A58C((v37 - 248));
  sub_53A868(v36);
  _Unwind_Resume(a1);
}

void sub_663C3C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = a5;
  v11 = sub_58BBC(a2);
  if (*a1)
  {
    v12 = sub_9274F4(*a1, a3);
    if (*(v12 + 23) < 0)
    {
      LODWORD(v12) = sub_325C(&__p, *v12, v12[1]);
    }

    else
    {
      v13 = *v12;
      __p.__r_.__value_.__r.__words[2] = v12[2];
      *&__p.__r_.__value_.__l.__data_ = v13;
    }

    sub_65DBB8(v12, v11, &__p);
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
  }

  sub_664054(a4, &__p, v7, a6, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_663D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_663D44(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (sub_681D38(a2) != 28 && sub_681D38(a2) != 29)
  {
    v6 = sub_681E08(a2);
    v7 = sub_681E10(a2);

    sub_663190(a1, v6, v7, a3);
  }

  sub_663DF4(a1, a2, a3);
}

void sub_663DF4(uint64_t *a1@<X0>, void *a2@<X1>, char ***a3@<X8>)
{
  sub_64B998(a3);
  v6 = sub_4EE304(a2);
  sub_65E138(a1, v6, 0, &__p);
  v7 = __p;
  v8 = v14;
  if (__p != v14)
  {
    do
    {
      sub_64C184(a3, v7);
      v9 = sub_682384(a2);
      sub_66110C(a1, a2, v9, a3);
      v7 = (v7 + 24);
    }

    while (v7 != v8);
    v7 = __p;
  }

  if (v7)
  {
    v10 = v14;
    v11 = v7;
    if (v14 != v7)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v7);
      v11 = __p;
    }

    v14 = v7;
    operator delete(v11);
  }
}

void sub_663F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  sub_53A868(v3);
  _Unwind_Resume(a1);
}

void sub_663F24(uint64_t *a1@<X0>, void *a2@<X1>, char ***a3@<X8>)
{
  sub_64B998(a3);
  v6 = sub_4EE304(a2);
  sub_65E138(a1, v6, 0, &__p);
  v7 = __p;
  v8 = v14;
  if (__p != v14)
  {
    do
    {
      sub_64C184(a3, v7);
      v9 = sub_682384(a2);
      sub_66110C(a1, a2, v9, a3);
      v7 = (v7 + 24);
    }

    while (v7 != v8);
    v7 = __p;
  }

  if (v7)
  {
    v10 = v14;
    v11 = v7;
    if (v14 != v7)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v7);
      v11 = __p;
    }

    v14 = v7;
    operator delete(v11);
  }
}

void sub_664038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  sub_53A868(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_664054(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, char a5)
{
  v16 = a3;
  sub_64BC20(v15, a2);
  v15[105] = a5;
  v8 = *a4;
  v9 = a4[1];
  if (*a4 != v9)
  {
    do
    {
      if ((*(v8 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v8 + 8))
        {
LABEL_8:
          sub_649B9C(v14, v8, 16);
          operator new();
        }
      }

      else if (*(v8 + 23))
      {
        goto LABEL_8;
      }

      v8 += 32;
    }

    while (v8 != v9);
  }

  v10 = *(a1 + 128);
  if (!v10)
  {
    operator new();
  }

  v11 = v10[1];
  if (v11 >= v10[2])
  {
    v12 = sub_6676AC(v10, v15, &v16);
  }

  else
  {
    sub_6504BC(v10[1], v15, v16);
    v12 = v11 + 168;
    v10[1] = v11 + 168;
  }

  v10[1] = v12;
  return sub_53A868(v15);
}

void sub_66428C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  *(v27 + 8) = v28;
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_6642A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_53F320(&a10);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_6642C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_6642D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_6642EC(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, int a5, uint64_t a6, char a7)
{
  if (*(a6 + 23) < 0)
  {
    v12 = a7;
    sub_325C(v23, *a6, *(a6 + 8));
    a7 = v12;
  }

  else
  {
    *v23 = *a6;
    v24 = *(a6 + 16);
  }

  v25 = a7;
  sub_668DD8(&v18, v23, 1uLL);
  v13 = sub_58BBC(a2);
  sub_65F810(a1, a3, v13, 0, __p);
  sub_664054(a4, __p, a5, &v18, v22);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = v18;
  if (v18)
  {
    v15 = v19;
    v16 = v18;
    if (v19 != v18)
    {
      do
      {
        v17 = *(v15 - 9);
        v15 -= 4;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v18;
    }

    v19 = v14;
    operator delete(v16);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_66444C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_4B98C4(&a10);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_664490(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_65FB0C(a1, a2, &v48);
  sub_66526C(a4, (v49 - v48) >> 5);
  v8 = v48;
  v9 = v49;
  if (v48 != v49)
  {
    while (1)
    {
      sub_64B998(&v33);
      sub_74A744(v8, __p);
      sub_64C184(&v33, __p);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = sub_681054(a2);
      if (v14)
      {
        v14 = sub_681E18(a3);
        if ((v14 & 1) != 0 || (v14 = sub_681E54(a3), v14))
        {
          v8[24] = 3;
        }
      }

      BYTE1(v42) = v8[24];
      sub_666778(v14, &v33);
      sub_666A24(v15, a3, &v33);
      sub_666D10(v16, a3, &v33);
      sub_666EE4(v17, a3, &v33);
      if (sub_681054(a2))
      {
        break;
      }

      v24 = a4[1];
      if (v24 < a4[2])
      {
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        *v24 = 0;
        *(v24 + 8) = 0;
        *v24 = v33;
        *(v24 + 16) = v34;
        v33 = 0uLL;
        *(v24 + 32) = 0;
        *(v24 + 40) = 0;
        *(v24 + 24) = v35;
        v35 = 0uLL;
        *(v24 + 40) = v36;
        *(v24 + 48) = 0;
        *(v24 + 56) = 0;
        *(v24 + 64) = 0;
        *(v24 + 48) = v37;
        *(v24 + 64) = v38;
        *(v24 + 72) = 0;
        v36 = 0;
        v37 = 0uLL;
        v38 = 0;
        *(v24 + 80) = 0;
        *(v24 + 88) = 0;
        *(v24 + 72) = v39;
        *(v24 + 88) = v40;
        v39 = 0uLL;
        v40 = 0;
        v10 = v41;
        v34 = 0;
        v41 = 0;
        *(v24 + 96) = v10;
        LODWORD(v10) = v42;
        *(v24 + 108) = v43;
        *(v24 + 104) = v10;
        v11 = v44;
        *(v24 + 128) = v45;
        *(v24 + 112) = v11;
        v44 = 0uLL;
        v12 = v46;
        *(v24 + 152) = v47;
        *(v24 + 136) = v12;
        v47 = 0;
        v45 = 0;
        v46 = 0uLL;
        v13 = v24 + 160;
      }

      else
      {
        v13 = sub_5CE200(a4, &v33);
      }

      a4[1] = v13;
      sub_53A868(&v33);
      v8 += 32;
      if (v8 == v9)
      {
        v8 = v48;
        goto LABEL_43;
      }
    }

    v18 = sub_681E08(a3);
    if (sub_681088(a2))
    {
      sub_649B9C(__p, "{toDestination}", 17);
      operator new();
    }

    if (sub_681090(a2))
    {
      sub_649B9C(__p, "{Destination}", 17);
      v30 = v18;
      operator new();
    }

    if (!sub_681E54(a3) || !sub_681098(a2))
    {
LABEL_32:
      if (sub_681E18(a3))
      {
        sub_66549C(a1, __p);
      }

      else if (sub_681E54(a3))
      {
        sub_665780(a1, __p);
      }

      else
      {
        sub_64B998(__p);
      }

      sub_64F438(&v33, __p);
    }

    sub_649B9C(__p, "{forDestination}", 17);
    v30 = sub_665364(v18);
    HIBYTE(v54) = 0;
    LOBYTE(v53) = 0;
    sub_6642EC(a1, a2, "For_Home", __p, 2, &v53, 0);
    HIBYTE(v54) = 0;
    LOBYTE(v53) = 0;
    sub_6642EC(a1, a2, "For_Work", __p, 1, &v53, 0);
    sub_6642EC(a1, a2, "For_ContactHome", __p, 4, "{Name}", 3);
    sub_6642EC(a1, a2, "For_ContactWork", __p, 3, "{Name}", 3);
    sub_6642EC(a1, a2, "For_Other_Contact", __p, 5, "{Name}", 3);
    HIBYTE(v54) = 0;
    LOBYTE(v53) = 0;
    sub_6642EC(a1, a2, "For_School", __p, 10, &v53, 0);
    sub_6642EC(a1, a2, "For_ContactSchool", __p, 11, "{Name}", 3);
    if (*(a1 + 2696) == 1)
    {
      sub_6642EC(a1, a2, "For_PersonLocation", __p, 12, "{Name}", 3);
      v53 = *"{Name}";
      v54 = 0x600000000000000;
      v55 = 3;
      v56 = *"{CustomLabel}";
      v57 = 0xD00000000000000;
      v58 = 5;
      sub_668DD8(&v31, &v53, 2uLL);
      v19 = sub_58BBC(a2);
      sub_65F810(a1, &qword_279EF50, v19, 0, v50);
      sub_664054(__p, v50, 13, &v31, v52);
      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      v20 = v31;
      if (v31)
      {
        v21 = v32;
        v22 = v31;
        if (v32 != v31)
        {
          do
          {
            v23 = *(v21 - 9);
            v21 -= 4;
            if (v23 < 0)
            {
              operator delete(*v21);
            }
          }

          while (v21 != v20);
          v22 = v31;
        }

        v32 = v20;
        operator delete(v22);
      }

      if (SHIBYTE(v57) < 0)
      {
        operator delete(v56);
        if ((SHIBYTE(v54) & 0x80000000) == 0)
        {
          goto LABEL_31;
        }
      }

      else if ((SHIBYTE(v54) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      operator delete(v53);
    }

LABEL_31:
    sub_64BF34(&v33, __p);
    sub_53F320(__p);
    goto LABEL_32;
  }

LABEL_43:
  if (v8)
  {
    v25 = v49;
    v26 = v8;
    if (v49 != v8)
    {
      do
      {
        v27 = *(v25 - 9);
        v25 -= 4;
        if (v27 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v8);
      v26 = v48;
    }

    v49 = v8;
    operator delete(v26);
  }
}

void sub_66512C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_4B98C4((v39 - 232));
  sub_5C0ED8(v38);
  _Unwind_Resume(a1);
}

void sub_66526C(uint64_t *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) < a2)
  {
    if (a2 < 0x19999999999999ALL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_665350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C4848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_665364(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(&v8, " failed", &v7);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_66541C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_66549C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_67E494(&v35, "Starting");
  v28 = 0;
  v29 = 0;
  sub_680484(&v30, &v35, 1, &v28);
  v4 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_65FB0C(a1, &v30, &v26);
  sub_64B998(a2);
  sub_74A744(v26, __p);
  sub_64C184(a2, __p);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  *(a2 + 105) = 3;
  v5 = v26;
  if (v26)
  {
    v6 = v27;
    v7 = v26;
    if (v27 != v26)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v26;
    }

    v27 = v5;
    operator delete(v7);
  }

  v9 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v33;
  if (v33)
  {
    do
    {
      v11 = *v10;
      sub_55F7FC((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = v32;
  v32 = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = v30;
  if (v30)
  {
    v14 = v31;
    v15 = v30;
    if (v31 != v30)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v30;
    }

    v31 = v13;
    operator delete(v15);
  }

  v17 = v38;
  if (v38)
  {
    do
    {
      v18 = *v17;
      sub_55F7FC((v17 + 2));
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = v37;
  v37 = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = v35;
  if (v35)
  {
    v21 = v36;
    v22 = v35;
    if (v36 != v35)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = v35;
    }

    v36 = v20;
    operator delete(v22);
  }
}

void sub_665710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v20);
  sub_4B98C4(&a15);
  sub_662AC8(&a20);
  sub_53A58C((v21 - 104));
  _Unwind_Resume(a1);
}

void sub_665764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1F1A8(va);
  sub_53A58C((v13 - 104));
  _Unwind_Resume(a1);
}

void sub_665780(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_67E494(&v36, &qword_279ECB0);
  v29 = 0;
  v30 = 0;
  sub_680484(&v31, &v36, 1, &v29);
  v4 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_65FB0C(a1, &v31, &v27);
  sub_64B998(a2);
  v5 = sub_665A80(&v27, 0);
  sub_74A744(v5, __p);
  sub_64C184(a2, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  *(a2 + 105) = 3;
  v6 = v27;
  if (v27)
  {
    v7 = v28;
    v8 = v27;
    if (v28 != v27)
    {
      do
      {
        v9 = *(v7 - 9);
        v7 -= 4;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = v27;
    }

    v28 = v6;
    operator delete(v8);
  }

  v10 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v34;
  if (v34)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = v33;
  v33 = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v31;
  if (v31)
  {
    v15 = v32;
    v16 = v31;
    if (v32 != v31)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v31;
    }

    v32 = v14;
    operator delete(v16);
  }

  v18 = v39;
  if (v39)
  {
    do
    {
      v19 = *v18;
      sub_55F7FC((v18 + 2));
      operator delete(v18);
      v18 = v19;
    }

    while (v19);
  }

  v20 = v38;
  v38 = 0;
  if (v20)
  {
    operator delete(v20);
  }

  v21 = v36;
  if (v36)
  {
    v22 = v37;
    v23 = v36;
    if (v37 != v36)
    {
      do
      {
        v24 = *(v22 - 1);
        v22 -= 3;
        if (v24 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v21);
      v23 = v36;
    }

    v37 = v21;
    operator delete(v23);
  }
}

void sub_6659FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, void **a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v20);
  sub_4B98C4(&a15);
  sub_662AC8(&a20);
  sub_53A58C((v21 - 104));
  _Unwind_Resume(a1);
}

unint64_t sub_665A80(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, (a1[1] - *a1) >> 5);
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

  return *a1 + 32 * a2;
}

void sub_665B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_665C7C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_681DA8(a2);
  sub_66526C(a3, 0x4EC4EC4EC4EC4EC5 * ((v6[1] - *v6) >> 3));
  v7 = *v6;
  for (i = v6[1]; v7 != i; v7 += 104)
  {
    sub_664490(a1, v7, a2, &__p);
    sub_667990(a3, a3[1], __p, v13, 0xCCCCCCCCCCCCCCCDLL * ((v13 - __p) >> 5));
    v9 = __p;
    if (__p)
    {
      v10 = v13;
      v11 = __p;
      if (v13 != __p)
      {
        do
        {
          v10 = sub_53A868((v10 - 160));
        }

        while (v10 != v9);
        v11 = __p;
      }

      v13 = v9;
      operator delete(v11);
    }
  }
}

void sub_665DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C0ED8(va);
  sub_5C0ED8(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_665DD4(uint64_t *a1, void *a2)
{
  sub_663D44(a1, a2, v5);
  sub_682238(a2, v5);
  sub_53A868(v5);
  sub_662D28(a1, a2, v5);
  sub_6817E8(a2, v5);
  return sub_53A868(v5);
}

void sub_665E68(uint64_t *a1, void *a2)
{
  sub_663DF4(a1, a2, __p);
  sub_682238(a2, __p);
  sub_53A868(__p);
  sub_661E6C(a1, a2, __p);
  sub_681930(a2, __p);
  v4 = __p[0].n128_u64[0];
  if (__p[0].n128_u64[0])
  {
    v5 = __p[0].n128_i64[1];
    v6 = __p[0].n128_u64[0];
    if (__p[0].n128_u64[1] != __p[0].n128_u64[0])
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = __p[0].n128_u64[0];
    }

    __p[0].n128_u64[1] = v4;
    operator delete(v6);
  }
}

uint64_t *sub_665F2C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      sub_663F24(v4, v2, v5);
      sub_682238(v2, v5);
      sub_53A868(v5);
      sub_662234(v4, v2, v5);
      sub_6817E8(v2, v5);
      result = sub_53A868(v5);
      v2 += 107;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_665FE4(uint64_t *a1, void **a2)
{
  sub_661448(a1, a2, &__p);
  sub_681930(a2, &__p);
  v4 = __p;
  if (__p)
  {
    v5 = v20[0];
    v6 = __p;
    if (v20[0] != __p)
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = __p;
    }

    v20[0] = v4;
    operator delete(v6);
  }

  if (!sub_681F04(a2))
  {
    goto LABEL_20;
  }

  v7 = sub_80A4B8(a2);
  LODWORD(__p) = -1;
  *v20 = 0u;
  *v21 = 0u;
  v22 = 0u;
  nullsub_1();
  if (*v8 != v8[1])
  {
    sub_67F320(v7, v23);
    v9 = sub_58BBC(v7);
    if (*a1)
    {
      v10 = sub_9274F4(*a1, v23);
      if (*(v10 + 23) < 0)
      {
        LODWORD(v10) = sub_325C(&v25, *v10, v10[1]);
      }

      else
      {
        v11 = *v10;
        v25.__r_.__value_.__r.__words[2] = v10[2];
        *&v25.__r_.__value_.__l.__data_ = v11;
      }

      sub_65DBB8(v10, v9, &v25);
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    if (SHIBYTE(v21[0]) < 0)
    {
      operator delete(v20[0]);
    }

    *v20 = *&v25.__r_.__value_.__l.__data_;
    v21[0] = v25.__r_.__value_.__r.__words[2];
    *(&v25.__r_.__value_.__s + 23) = 0;
    v25.__r_.__value_.__s.__data_[0] = 0;
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }

  LODWORD(__p) = *(a1 + 492);
  sub_80A070(a2, &__p);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
    if (SHIBYTE(v21[0]) < 0)
    {
      goto LABEL_29;
    }

LABEL_20:
    v12 = sub_80A4C0(a2);
    result = sub_6F390(v12);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

  if ((SHIBYTE(v21[0]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_29:
  operator delete(v20[0]);
  v18 = sub_80A4C0(a2);
  result = sub_6F390(v18);
  if (!result)
  {
    return result;
  }

LABEL_21:
  v14 = sub_80A4C0(a2);
  sub_6611A4(a1, v14, a2, &v25);
  sub_55BD50(&__p, v25.__r_.__value_.__l.__data_);
  v15 = v25.__r_.__value_.__r.__words[0];
  if (v25.__r_.__value_.__r.__words[0])
  {
    size = v25.__r_.__value_.__l.__size_;
    v17 = v25.__r_.__value_.__r.__words[0];
    if (v25.__r_.__value_.__l.__size_ != v25.__r_.__value_.__r.__words[0])
    {
      do
      {
        size = sub_53A868(size - 160);
      }

      while (size != v15);
      v17 = v25.__r_.__value_.__r.__words[0];
    }

    v25.__r_.__value_.__l.__size_ = v15;
    operator delete(v17);
  }

  sub_682240(a2, &__p);
  return sub_53A868(&__p);
}

void sub_666228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 - 57) < 0)
  {
    operator delete(*(v3 - 80));
    if ((*(v3 - 81) & 0x80000000) == 0)
    {
LABEL_3:
      sub_513574(va);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v3 - 81) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v3 - 104));
  sub_513574(va);
  _Unwind_Resume(a1);
}

void sub_6662C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_513574(va);
  _Unwind_Resume(a1);
}

void sub_6662D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C0ED8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_6662E8(uint64_t *result, void ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      result = sub_665FE4(v4, v2);
      v2 += 140;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_666334(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      sub_665C7C(a1, v2, &__p);
      sub_681930(v2, &__p);
      v5 = __p.n128_u64[0];
      if (__p.n128_u64[0])
      {
        v6 = __p.n128_i64[1];
        v7 = __p.n128_u64[0];
        if (__p.n128_u64[1] != __p.n128_u64[0])
        {
          do
          {
            v6 = sub_53A868(v6 - 160);
          }

          while (v6 != v5);
          v7 = __p.n128_u64[0];
        }

        __p.n128_u64[1] = v5;
        operator delete(v7);
      }

      v2 += 56;
    }

    while (v2 != v3);
  }
}

void sub_6663D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C0ED8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_6663EC(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      sub_661844(v4, v2, v6);
      v5 = (v2 + 48);
      sub_594568(v5, v6);
      result = sub_53A868(v6);
      v2 = (v5 + 320);
    }

    while (v2 != v3);
  }

  return result;
}

void sub_666470(uint64_t a1, void *a2, void **a3)
{
  v3 = *a3;
  if (*a3 == a3[1])
  {
    return;
  }

  *v25 = *"{Shield1}";
  v26 = 0x900000000000000;
  *v27 = *"{Shield2}";
  v28 = 0x900000000000000;
  v30 = 0xF00000000000000;
  strcpy(v29, "{TowardShield1}");
  v32 = 0xF00000000000000;
  strcpy(__p, "{TowardShield2}");
  sub_2AAFFC(&v23, v25, 4uLL);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
LABEL_4:
      if ((SHIBYTE(v28) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(v29[0]);
  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
LABEL_5:
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v27[0]);
  if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
LABEL_6:
    v5 = v23;
    v6 = v24;
    if (v23 == v24)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_12:
  operator delete(v25[0]);
  v5 = v23;
  v6 = v24;
  if (v23 == v24)
  {
LABEL_7:
    if (!v5)
    {
      return;
    }

    goto LABEL_38;
  }

  do
  {
LABEL_15:
    v7 = *(v3 + 23);
    if (v7 < 0)
    {
      v8 = *v3;
      v7 = *(v3 + 8);
    }

    else
    {
      v8 = v3;
    }

    v9 = *(v5 + 23);
    if (v9 >= 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = *v5;
    }

    if (v9 >= 0)
    {
      v11 = *(v5 + 23);
    }

    else
    {
      v11 = v5[1];
    }

    if (v11)
    {
      if (v7 >= v11)
      {
        v12 = &v8[v7];
        v13 = *v10;
        v14 = v8;
        do
        {
          v15 = v7 - v11;
          if (v15 == -1)
          {
            break;
          }

          v16 = memchr(v14, v13, v15 + 1);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          if (!memcmp(v16, v10, v11))
          {
            if (v17 == v12 || v17 - v8 == -1)
            {
              break;
            }

            goto LABEL_34;
          }

          v14 = v17 + 1;
          v7 = v12 - (v17 + 1);
        }

        while (v7 >= v11);
      }
    }

    else
    {
LABEL_34:
      if (sub_668F0C(a2, v5))
      {
        v18 = sub_668F0C(a2, v5);
        if (v18)
        {
          sub_64BFF4(a3, v5, *(v18 + 26), v18 + 7, (v18 + 14));
        }

        sub_49EC("unordered_map::at: key not found");
      }
    }

    v5 += 3;
  }

  while (v5 != v6);
  v5 = v23;
  if (v23)
  {
LABEL_38:
    v19 = v24;
    v20 = v5;
    if (v24 != v5)
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

      while (v19 != v5);
      v20 = v23;
    }

    v24 = v5;
    operator delete(v20);
  }
}

void sub_666718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_21E2980(&a15, &a21, &a18);
  _Unwind_Resume(a1);
}

void sub_666750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_666764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_666778(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*a2 == a2[1])
  {
    return;
  }

  *v22 = *"{Name}";
  v23 = 0x600000000000000;
  *v24 = *"{Address}";
  v25 = 0x900000000000000;
  v27 = 0x600000000000000;
  *__p = *"{Road}";
  sub_2AAFFC(&v20, v22, 3uLL);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
LABEL_4:
      if ((SHIBYTE(v23) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  else if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(v24[0]);
  if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
LABEL_5:
    v4 = v20;
    v5 = v21;
    if (v20 == v21)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_10:
  operator delete(v22[0]);
  v4 = v20;
  v5 = v21;
  if (v20 == v21)
  {
LABEL_6:
    if (!v4)
    {
      return;
    }

    goto LABEL_34;
  }

  do
  {
LABEL_13:
    v6 = *(v2 + 23);
    if (v6 < 0)
    {
      v7 = *v2;
      v6 = *(v2 + 8);
    }

    else
    {
      v7 = v2;
    }

    v8 = *(v4 + 23);
    if (v8 >= 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = *v4;
    }

    if (v8 >= 0)
    {
      v10 = *(v4 + 23);
    }

    else
    {
      v10 = v4[1];
    }

    if (!v10)
    {
      goto LABEL_32;
    }

    if (v6 >= v10)
    {
      v11 = &v7[v6];
      v12 = *v9;
      v13 = v7;
      while (1)
      {
        v14 = v6 - v10;
        if (v14 == -1)
        {
          goto LABEL_12;
        }

        v15 = memchr(v13, v12, v14 + 1);
        if (!v15)
        {
          goto LABEL_12;
        }

        v16 = v15;
        if (!memcmp(v15, v9, v10))
        {
          break;
        }

        v13 = v16 + 1;
        v6 = v11 - (v16 + 1);
        if (v6 < v10)
        {
          goto LABEL_12;
        }
      }

      if (v16 != v11 && v16 - v7 != -1)
      {
LABEL_32:
        HIBYTE(v23) = 0;
        LOBYTE(v22[0]) = 0;
        sub_64C06C(a2, v4, v22);
      }
    }

LABEL_12:
    v4 += 3;
  }

  while (v4 != v5);
  v4 = v20;
  if (v20)
  {
LABEL_34:
    v17 = v21;
    v18 = v4;
    if (v21 != v4)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v4);
      v18 = v20;
    }

    v21 = v4;
    operator delete(v18);
  }
}

void sub_6669CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_21E29D4(&a13, &a16);
  _Unwind_Resume(a1);
}

void sub_666A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a10);
  _Unwind_Resume(a1);
}

void sub_666A24(uint64_t a1, void *a2, void **a3)
{
  v3 = *a3;
  if (*a3 == a3[1])
  {
    return;
  }

  v6 = *(v3 + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = *a3;
    v8 = *(v3 + 23);
    if (v6 < 10)
    {
      goto LABEL_17;
    }

LABEL_6:
    v9 = &v7[v8];
    v10 = v7;
    while (1)
    {
      v11 = memchr(v10, 123, v8 - 9);
      if (!v11)
      {
        goto LABEL_17;
      }

      if (*v11 == 0x636E61747369647BLL && *(v11 + 4) == 32101)
      {
        if (v11 != v9 && v11 - v7 != -1)
        {
          v20 = sub_681DB8(a2);
          v19 = 1;
          sub_64E428(a3, "{distance}", &v20, &v19);
          LOBYTE(v6) = *(v3 + 23);
        }

        goto LABEL_17;
      }

      v10 = v11 + 1;
      v8 = v9 - v10;
      if (v9 - v10 < 10)
      {
        goto LABEL_17;
      }
    }
  }

  v7 = *v3;
  v8 = *(v3 + 8);
  if (v8 >= 10)
  {
    goto LABEL_6;
  }

LABEL_17:
  if ((v6 & 0x80) != 0)
  {
    v14 = v3;
    v3 = *v3;
    v13 = *(v14 + 8);
    if (v13 < 14)
    {
      return;
    }
  }

  else
  {
    v13 = v6;
    if (v6 < 0xEuLL)
    {
      return;
    }
  }

  v15 = (v3 + v13);
  v16 = v3;
  do
  {
    v17 = memchr(v16, 123, v13 - 13);
    if (!v17)
    {
      break;
    }

    if (*v17 == 0x7369447478656E7BLL && *(v17 + 6) == 0x7D65636E61747369)
    {
      if (v17 != v15 && &v17[-v3] != -1)
      {
        v20 = sub_681DF4(a2);
        v19 = 1;
        sub_64E428(a3, "{nextDistance}", &v20, &v19);
      }

      return;
    }

    v16 = v17 + 1;
    v13 = v15 - v16;
  }

  while (v15 - v16 >= 14);
}

void sub_666BF4(uint64_t a1, char *a2, int a3, void ***a4)
{
  v4 = *a4;
  if (*a4 != a4[1])
  {
    v8 = *(v4 + 23);
    if (v8 < 0)
    {
      v4 = *v4;
      v8 = (*a4)[1];
    }

    v9 = a2[23];
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = a2[23];
    }

    else
    {
      v11 = *(a2 + 1);
    }

    if (v11)
    {
      if (v8 >= v11)
      {
        v12 = (v4 + v8);
        v13 = *v10;
        v14 = v4;
        do
        {
          v15 = v8 - v11;
          if (v15 == -1)
          {
            break;
          }

          v16 = memchr(v14, v13, v15 + 1);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          if (!memcmp(v16, v10, v11))
          {
            if (v17 == v12 || &v17[-v4] == -1)
            {
              return;
            }

            goto LABEL_21;
          }

          v14 = v17 + 1;
          v8 = v12 - (v17 + 1);
        }

        while (v8 >= v11);
      }
    }

    else
    {
LABEL_21:

      sub_64EA58(a4, a2, a3);
    }
  }
}

void sub_666D10(uint64_t a1, uint64_t a2, void ***a3)
{
  v5 = sub_4D27AC(a2);
  sub_666BF4(v5, "{ChargeDuration}", v5, a3);
  v8 = 10;
  strcpy(__p, "{Duration}");
  v6 = sub_4C5154(a2);
  sub_666BF4(v6, __p, v6, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_666DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_666DD0(uint64_t a1, uint64_t a2, void ***a3)
{
  v3 = *a3;
  if (*a3 != a3[1])
  {
    v6 = *(v3 + 23);
    if (v6 < 0)
    {
      v3 = *v3;
      v6 = (*a3)[1];
      if (v6 < 7)
      {
        return;
      }
    }

    else if (v6 < 7)
    {
      return;
    }

    v7 = v3 + v6;
    v8 = v3;
    do
    {
      v9 = memchr(v8, 123, v6 - 6);
      if (!v9)
      {
        break;
      }

      if (*v9 == 2003783803 && *(v9 + 3) == 2104649079)
      {
        if (v9 != v7 && v9 - v3 != -1)
        {
          v11 = sub_681D84(a2) / 1000000.0;

          sub_64F608(a3, "{Power}", v11);
        }

        return;
      }

      v8 = (v9 + 1);
      v6 = v7 - v8;
    }

    while (v7 - v8 >= 7);
  }
}

uint64_t sub_666EE4(uint64_t a1, uint64_t a2, char ***a3)
{
  v5 = sub_681D90(a2);
  if (*a3 != a3[1])
  {
    v6 = v5;
    if (sub_64FA0C(a3, "{ChargePercentage}"))
    {
      v7 = sub_4470E4(v6 + 8);
      sub_64F510(a3, "{ChargePercentage}", v7);
    }
  }

  result = sub_59E940(a2);
  if (*a3 != a3[1])
  {
    v9 = result;
    result = sub_64FA0C(a3, qword_279EF80);
    if (result)
    {
      v10 = sub_4470E4(v9);

      return sub_64F510(a3, qword_279EF80, v10);
    }
  }

  return result;
}

uint64_t **sub_666FBC(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v4 = a2;
  v6 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = sub_AAD8(&v26, a2, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_43;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v8;
    if (v8 >= *&v10)
    {
      v12 = v8 % *&v10;
    }
  }

  else
  {
    v12 = (*&v10 - 1) & v8;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_43:
    operator new();
  }

  v15 = *(v4 + 23);
  if (v15 >= 0)
  {
    v16 = *(v4 + 23);
  }

  else
  {
    v16 = v4[1];
  }

  if (v15 < 0)
  {
    v4 = *v4;
  }

  if (v11.u32[0] < 2uLL)
  {
    while (1)
    {
      v21 = v14[1];
      if (v21 == v9)
      {
        v22 = *(v14 + 39);
        v23 = v22;
        if (v22 < 0)
        {
          v22 = v14[3];
        }

        if (v22 == v16)
        {
          v24 = v23 >= 0 ? (v14 + 2) : v14[2];
          if (!memcmp(v24, v4, v16))
          {
            return v14;
          }
        }
      }

      else if ((v21 & (*&v10 - 1)) != v12)
      {
        goto LABEL_43;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v17 = v14[1];
    if (v17 == v9)
    {
      break;
    }

    if (v17 >= *&v10)
    {
      v17 %= *&v10;
    }

    if (v17 != v12)
    {
      goto LABEL_43;
    }

LABEL_20:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_43;
    }
  }

  v18 = *(v14 + 39);
  v19 = v18;
  if (v18 < 0)
  {
    v18 = v14[3];
  }

  if (v18 != v16)
  {
    goto LABEL_20;
  }

  v20 = v19 >= 0 ? (v14 + 2) : v14[2];
  if (memcmp(v20, v4, v16))
  {
    goto LABEL_20;
  }

  return v14;
}

void sub_6673C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F0E20(va);
  _Unwind_Resume(a1);
}

void sub_6673D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F0E20(va);
  _Unwind_Resume(a1);
}

void sub_6673E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 39) < 0)
  {
    operator delete(*(v3 + 16));
  }

  sub_5F0E20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_667410(__int128 **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v7 + 24) = *(a2 + 24);
  v8 = 32 * v2 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v7 / 0x10] - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      *(v13 + 24) = *(v12 + 24);
      v12 += 2;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 2;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

uint64_t sub_667568(uint64_t *a1)
{
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v2 = v1 + 1;
  if (v1 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v4 = 0x199999999999999;
  }

  else
  {
    v4 = v2;
  }

  v13 = a1;
  if (v4)
  {
    if (v4 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v10 = 160 * v1;
  v12 = 0;
  sub_64B998(160 * v1);
  v11 = 160 * v1 + 160;
  sub_5C46E0(a1, &__p);
  v5 = a1[1];
  v7 = v10;
  for (i = v11; v11 != v7; i = v11)
  {
    v11 = i - 160;
    sub_53A868(i - 160);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v5;
}

void sub_667698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C4848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6676AC(uint64_t *a1, uint64_t a2, int *a3)
{
  v3 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v4;
  }

  v15 = a1;
  if (v6)
  {
    if (v6 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v12 = 168 * v3;
  v13 = 168 * v3;
  v14 = 0;
  sub_6504BC(168 * v3, a2, *a3);
  v13 = 168 * v3 + 168;
  sub_667820(a1, &__p);
  v7 = a1[1];
  v9 = v12;
  for (i = v13; v13 != v9; i = v13)
  {
    v13 = i - 168;
    sub_53A868(i - 168);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_66780C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C3E10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_667820(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = a2[1] + result - v5;
    do
    {
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 40) = *(v8 + 40);
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 48) = *(v8 + 48);
      *(v9 + 64) = *(v8 + 64);
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v9 + 72) = 0;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 72) = *(v8 + 72);
      v10 = *(v8 + 96);
      *(v9 + 88) = *(v8 + 88);
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v9 + 96) = v10;
      v11 = *(v8 + 104);
      *(v9 + 108) = *(v8 + 108);
      *(v9 + 104) = v11;
      v12 = *(v8 + 112);
      *(v9 + 128) = *(v8 + 128);
      *(v9 + 112) = v12;
      *(v8 + 120) = 0;
      *(v8 + 128) = 0;
      *(v8 + 112) = 0;
      v13 = *(v8 + 136);
      *(v9 + 152) = *(v8 + 152);
      *(v9 + 136) = v13;
      *(v8 + 144) = 0;
      *(v8 + 152) = 0;
      *(v8 + 136) = 0;
      *(v9 + 160) = *(v8 + 160);
      v8 += 168;
      v9 += 168;
    }

    while (v8 != v5);
    do
    {
      result = sub_53A868(result) + 168;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v14 = *a1;
  *a1 = v7;
  a1[1] = v14;
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

uint64_t sub_667990(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v9 = a1[1];
    v8 = a1[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 5)) >= a5)
    {
      v14 = v9 - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - a2) >> 5)) >= a5)
      {
        v29 = 160 * a5;
        v30 = v9 - 160 * a5;
        for (i = a1[1]; v30 < v9; i += 160)
        {
          *i = 0;
          *(i + 8) = 0;
          *(i + 16) = 0;
          *i = *v30;
          *(i + 16) = *(v30 + 16);
          *v30 = 0;
          *(v30 + 8) = 0;
          *(v30 + 16) = 0;
          *(i + 24) = 0;
          *(i + 32) = 0;
          *(i + 40) = 0;
          *(i + 24) = *(v30 + 24);
          *(i + 40) = *(v30 + 40);
          *(v30 + 24) = 0;
          *(v30 + 32) = 0;
          *(v30 + 40) = 0;
          *(i + 48) = 0;
          *(i + 56) = 0;
          *(i + 64) = 0;
          *(i + 48) = *(v30 + 48);
          *(i + 64) = *(v30 + 64);
          *(v30 + 48) = 0;
          *(v30 + 56) = 0;
          *(v30 + 64) = 0;
          *(i + 72) = 0;
          *(i + 80) = 0;
          *(i + 88) = 0;
          *(i + 72) = *(v30 + 72);
          v32 = *(v30 + 96);
          *(i + 88) = *(v30 + 88);
          *(v30 + 72) = 0;
          *(v30 + 80) = 0;
          *(v30 + 88) = 0;
          *(v30 + 96) = 0;
          *(i + 96) = v32;
          v33 = *(v30 + 104);
          *(i + 108) = *(v30 + 108);
          *(i + 104) = v33;
          v34 = *(v30 + 112);
          *(i + 128) = *(v30 + 128);
          *(i + 112) = v34;
          *(v30 + 120) = 0;
          *(v30 + 128) = 0;
          *(v30 + 112) = 0;
          v35 = *(v30 + 136);
          *(i + 152) = *(v30 + 152);
          *(i + 136) = v35;
          *(v30 + 144) = 0;
          *(v30 + 152) = 0;
          *(v30 + 136) = 0;
          v30 += 160;
        }

        a1[1] = i;
        if (v9 != a2 + 160 * a5)
        {
          v36 = v9 - 160;
          v37 = a2 + v29 - v9;
          v38 = v9 - 160 - v29;
          do
          {
            sub_53D784(v36, v38);
            v36 -= 160;
            v38 -= 160;
            v37 += 160;
          }

          while (v37);
        }

        v39 = v7 + 160 * a5;
        v40 = v5;
        do
        {
          sub_53D784(v40, v7);
          v7 += 160;
          v40 += 160;
        }

        while (v7 != v39);
      }

      else
      {
        v15 = v14 + a3;
        v17 = sub_668154(a1, v14 + a3, a4, a1[1]);
        a1[1] = v17;
        if (v14 >= 1)
        {
          v18 = 160 * a5;
          v19 = v17 - 160 * a5;
          for (j = v17; v19 < v9; j += 160)
          {
            *j = 0;
            *(j + 8) = 0;
            *(j + 16) = 0;
            *j = *v19;
            *(j + 16) = *(v19 + 16);
            *v19 = 0;
            *(v19 + 8) = 0;
            *(v19 + 16) = 0;
            *(j + 24) = 0;
            *(j + 32) = 0;
            *(j + 40) = 0;
            *(j + 24) = *(v19 + 24);
            *(j + 40) = *(v19 + 40);
            *(v19 + 24) = 0;
            *(v19 + 32) = 0;
            *(v19 + 40) = 0;
            *(j + 48) = 0;
            *(j + 56) = 0;
            *(j + 64) = 0;
            *(j + 48) = *(v19 + 48);
            *(j + 64) = *(v19 + 64);
            *(v19 + 48) = 0;
            *(v19 + 56) = 0;
            *(v19 + 64) = 0;
            *(j + 72) = 0;
            *(j + 80) = 0;
            *(j + 88) = 0;
            *(j + 72) = *(v19 + 72);
            v21 = *(v19 + 96);
            *(j + 88) = *(v19 + 88);
            *(v19 + 72) = 0;
            *(v19 + 80) = 0;
            *(v19 + 88) = 0;
            *(v19 + 96) = 0;
            *(j + 96) = v21;
            v22 = *(v19 + 104);
            *(j + 108) = *(v19 + 108);
            *(j + 104) = v22;
            v23 = *(v19 + 112);
            *(j + 128) = *(v19 + 128);
            *(j + 112) = v23;
            *(v19 + 120) = 0;
            *(v19 + 128) = 0;
            *(v19 + 112) = 0;
            v24 = *(v19 + 136);
            *(j + 152) = *(v19 + 152);
            *(j + 136) = v24;
            *(v19 + 144) = 0;
            *(v19 + 152) = 0;
            *(v19 + 136) = 0;
            v19 += 160;
          }

          a1[1] = j;
          if (v17 != v5 + 160 * a5)
          {
            v25 = v17 - 160;
            v26 = v5 + v18 - v17;
            v27 = v17 - 160 - v18;
            do
            {
              sub_53D784(v25, v27);
              v25 -= 160;
              v27 -= 160;
              v26 += 160;
            }

            while (v26);
          }

          v28 = v5;
          do
          {
            sub_53D784(v28, v7);
            v7 += 160;
            v28 += 160;
          }

          while (v7 != v15);
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 - 0x3333333333333333 * ((v9 - *a1) >> 5);
      if (v11 > 0x199999999999999)
      {
        sub_1794();
      }

      v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v10) >> 5);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0xCCCCCCCCCCCCCCLL)
      {
        v13 = 0x199999999999999;
      }

      else
      {
        v13 = v11;
      }

      v54 = a1;
      if (v13)
      {
        if (v13 <= 0x199999999999999)
        {
          operator new();
        }

        sub_1808();
      }

      v41 = 32 * ((a2 - v10) >> 5);
      __p = 0;
      v51 = v41;
      v52 = v41;
      v53 = 0;
      v42 = v41 + 160 * a5;
      do
      {
        *v41 = 0;
        *(v41 + 8) = 0;
        *(v41 + 16) = 0;
        *v41 = *v7;
        *(v41 + 16) = *(v7 + 16);
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v41 + 24) = 0;
        *(v41 + 32) = 0;
        *(v41 + 40) = 0;
        *(v41 + 24) = *(v7 + 24);
        *(v41 + 40) = *(v7 + 40);
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v41 + 48) = 0;
        *(v41 + 56) = 0;
        *(v41 + 64) = 0;
        *(v41 + 48) = *(v7 + 48);
        *(v41 + 64) = *(v7 + 64);
        *(v7 + 48) = 0;
        *(v7 + 56) = 0;
        *(v7 + 64) = 0;
        *(v41 + 72) = 0;
        *(v41 + 80) = 0;
        *(v41 + 88) = 0;
        *(v41 + 72) = *(v7 + 72);
        v43 = *(v7 + 96);
        *(v41 + 88) = *(v7 + 88);
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 88) = 0;
        *(v7 + 96) = 0;
        *(v41 + 96) = v43;
        v44 = *(v7 + 104);
        *(v41 + 108) = *(v7 + 108);
        *(v41 + 104) = v44;
        v45 = *(v7 + 112);
        *(v41 + 128) = *(v7 + 128);
        *(v41 + 112) = v45;
        *(v7 + 120) = 0;
        *(v7 + 128) = 0;
        *(v7 + 112) = 0;
        v46 = *(v7 + 136);
        *(v41 + 152) = *(v7 + 152);
        *(v41 + 136) = v46;
        *(v7 + 144) = 0;
        *(v7 + 152) = 0;
        *(v7 + 136) = 0;
        v41 += 160;
        v7 += 160;
      }

      while (v41 != v42);
      v52 = v42;
      v5 = sub_667ED0(a1, &__p, a2);
      v48 = v51;
      for (k = v52; v52 != v48; k = v52)
      {
        v52 = k - 160;
        sub_53A868(k - 160);
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_667EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C4848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_667ED0(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 48) = *(v9 + 48);
      *(v8 + 64) = *(v9 + 64);
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 72) = *(v9 + 72);
      v10 = *(v9 + 96);
      *(v8 + 88) = *(v9 + 88);
      *(v9 + 72) = 0;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 96) = 0;
      *(v8 + 96) = v10;
      v11 = *(v9 + 104);
      *(v8 + 108) = *(v9 + 108);
      *(v8 + 104) = v11;
      v12 = *(v9 + 112);
      *(v8 + 128) = *(v9 + 128);
      *(v8 + 112) = v12;
      *(v9 + 120) = 0;
      *(v9 + 128) = 0;
      *(v9 + 112) = 0;
      v13 = *(v9 + 136);
      *(v8 + 152) = *(v9 + 152);
      *(v8 + 136) = v13;
      *(v9 + 144) = 0;
      *(v9 + 152) = 0;
      *(v9 + 136) = 0;
      v9 += 160;
      v8 += 160;
    }

    while (v9 != v7);
    v14 = a3;
    do
    {
      v14 = sub_53A868(v14) + 160;
    }

    while (v14 != v7);
  }

  v15 = *a1;
  v16 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v17 = v16 + v15 - a3;
  if (v15 != a3)
  {
    v18 = v15;
    v19 = v16 + v15 - a3;
    do
    {
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      *v19 = *v18;
      *(v19 + 16) = *(v18 + 16);
      *v18 = 0;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0;
      *(v19 + 24) = *(v18 + 24);
      *(v19 + 40) = *(v18 + 40);
      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      *(v19 + 48) = *(v18 + 48);
      *(v19 + 64) = *(v18 + 64);
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      *(v19 + 72) = 0;
      *(v19 + 80) = 0;
      *(v19 + 88) = 0;
      *(v19 + 72) = *(v18 + 72);
      v20 = *(v18 + 96);
      *(v19 + 88) = *(v18 + 88);
      *(v18 + 72) = 0;
      *(v18 + 80) = 0;
      *(v18 + 88) = 0;
      *(v18 + 96) = 0;
      *(v19 + 96) = v20;
      v21 = *(v18 + 104);
      *(v19 + 108) = *(v18 + 108);
      *(v19 + 104) = v21;
      v22 = *(v18 + 112);
      *(v19 + 128) = *(v18 + 128);
      *(v19 + 112) = v22;
      *(v18 + 120) = 0;
      *(v18 + 128) = 0;
      *(v18 + 112) = 0;
      v23 = *(v18 + 136);
      *(v19 + 152) = *(v18 + 152);
      *(v19 + 136) = v23;
      *(v18 + 144) = 0;
      *(v18 + 152) = 0;
      *(v18 + 136) = 0;
      v18 += 160;
      v19 += 160;
    }

    while (v18 != a3);
    do
    {
      v15 = sub_53A868(v15) + 160;
    }

    while (v15 != a3);
  }

  a2[1] = v17;
  v24 = *a1;
  *a1 = v17;
  a1[1] = v24;
  a2[1] = v24;
  v25 = a1[1];
  a1[1] = a2[2];
  a2[2] = v25;
  v26 = a1[2];
  a1[2] = a2[3];
  a2[3] = v26;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_668154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (result = a4; a2 != a3; result += 160)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = *a2;
    *(result + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 48) = *(a2 + 48);
    *(result + 64) = *(a2 + 64);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 72) = *(a2 + 72);
    v5 = *(a2 + 96);
    *(result + 88) = *(a2 + 88);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(result + 96) = v5;
    v6 = *(a2 + 104);
    *(result + 108) = *(a2 + 108);
    *(result + 104) = v6;
    v7 = *(a2 + 112);
    *(result + 128) = *(a2 + 128);
    *(result + 112) = v7;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    v8 = *(a2 + 136);
    *(result + 152) = *(a2 + 152);
    *(result + 136) = v8;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 136) = 0;
    a2 += 160;
  }

  return result;
}

uint64_t sub_668238(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, char a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v9;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v10 = *a3;
      *(a1 + 40) = *(a3 + 2);
      *(a1 + 24) = v10;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 24), *a3, *(a3 + 1));
LABEL_6:
  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 48), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v11;
  }

  *(a1 + 72) = a5;
  return a1;
}

void sub_668308(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_668354(void **a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  sub_66871C(a1, &v10);
}

void sub_6686C4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_66871C(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      v11 = &v4[-*a1] >> 2;
      if (v4 == *a1)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  a1[2] = (v4 + 8);
}

void sub_6688A8(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = (v5 - 8);
}

void sub_668A40(uint64_t *a1, const void **a2, const void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 9);
          v10 -= 4;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (!(a4 >> 59))
    {
      v27 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v27 = a4;
      }

      v28 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v29 = 0x7FFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v29 = v27;
      }

      if (!(v29 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (a4 <= (v13 - v8) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v25 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v25 >= 0)
            {
              v23 = v5;
            }

            else
            {
              v23 = *v5;
            }

            if (v25 >= 0)
            {
              v24 = *(v5 + 23);
            }

            else
            {
              v24 = v5[1];
            }

            sub_13B38(v8, v23, v24);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_13A68(v8, *v5, v5[1]);
          }

          else
          {
            v26 = *v5;
            *(v8 + 16) = v5[2];
            *v8 = v26;
          }
        }

        *(v8 + 24) = *(v5 + 24);
        v5 += 4;
        v8 += 32;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v33 = *(v13 - 9);
      v13 -= 4;
      if (v33 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v15 = &v14[a2];
    if (v13 != v8)
    {
      v16 = 0;
      do
      {
        v19 = &v16[v8];
        v20 = &v16[v5];
        if (v5 != v8)
        {
          v21 = *(v20 + 23);
          if (v19[23] < 0)
          {
            if (v21 >= 0)
            {
              v17 = &v16[v5];
            }

            else
            {
              v17 = *&v16[v5];
            }

            if (v21 >= 0)
            {
              v18 = *(v20 + 23);
            }

            else
            {
              v18 = *&v16[v5 + 8];
            }

            sub_13B38(&v16[v8], v17, v18);
          }

          else if ((*(v20 + 23) & 0x80) != 0)
          {
            sub_13A68(&v16[v8], *&v16[v5], *&v16[v5 + 8]);
          }

          else
          {
            v22 = *v20;
            *(v19 + 2) = v20[2];
            *v19 = v22;
          }
        }

        v19[24] = *(v20 + 24);
        v16 += 32;
      }

      while (v14 != v16);
      v13 = a1[1];
    }

    v34 = v13;
    v30 = v13;
    if (v15 != a3)
    {
      v30 = v13;
      do
      {
        if (*(v15 + 23) < 0)
        {
          sub_325C(v30, *v15, v15[1]);
          v32 = v34;
        }

        else
        {
          v31 = *v15;
          *(v30 + 16) = v15[2];
          *v30 = v31;
          v32 = v30;
        }

        *(v30 + 24) = *(v15 + 24);
        v15 += 4;
        v30 = v32 + 32;
        v34 = (v32 + 32);
      }

      while (v15 != a3);
    }

    a1[1] = v30;
  }
}

void sub_668DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_49A814(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_668DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_49A814(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t *sub_668DD8(uint64_t *a1, __int128 *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_668EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_49A814(va);
  *(v10 + 8) = v11;
  sub_49A874(&a9);
  _Unwind_Resume(a1);
}

uint64_t **sub_668F0C(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void sub_66BF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a70);
              if ((a69 & 0x80000000) == 0)
              {
LABEL_42:
                if (a67 < 0)
                {
LABEL_43:
                  operator delete(a66);
                  if ((a65 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a65 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a68);
              if (a67 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a69 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}

void sub_66C188(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const void **a5)
{
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v6 = vnegq_f64(v5);
  *(a1 + 8) = v6;
  *(a1 + 24) = v6;
  *(a1 + 40) = v6;
  *(a1 + 56) = v6;
  *(a1 + 72) = v6;
  *(a1 + 88) = v6;
  *(a1 + 104) = v6;
  *(a1 + 120) = v6;
  *(a1 + 136) = 0x7FFFFFFFFFFFFFFFLL;
  *&v7 = 0x8000000080000000;
  *(&v7 + 1) = 0x8000000080000000;
  *(a1 + 144) = v7;
  *(a1 + 160) = v7;
  *(a1 + 176) = v7;
  *(a1 + 192) = v7;
  *a1 = 0;
  *(a1 + 208) = 0x7FFFFFFF;
  *(a1 + 216) = v6;
  *(a1 + 232) = v6;
  *(a1 + 248) = v7;
  *(a1 + 264) = v7;
  *(a1 + 280) = 0x8000000080000000;
  *(a1 + 288) = v6;
  *(a1 + 304) = v6;
  *(a1 + 320) = v6;
  *(a1 + 336) = v6;
  *(a1 + 352) = v6;
  *(a1 + 368) = v6;
  *(a1 + 384) = v6;
  *(a1 + 400) = v6;
  *(a1 + 440) = v6;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 456) = v6;
  *(a1 + 472) = v6;
  *(a1 + 488) = v6;
  *(a1 + 504) = v6;
  *(a1 + 520) = v6;
  *(a1 + 536) = v6;
  *(a1 + 552) = v6;
  *(a1 + 568) = v6;
  *(a1 + 584) = v6;
  *(a1 + 600) = v6;
  *(a1 + 616) = v6;
  *(a1 + 632) = v6;
  *(a1 + 648) = v6;
  *(a1 + 664) = v6;
  *(a1 + 680) = v6;
  *(a1 + 696) = v6;
  *(a1 + 712) = v6;
  *(a1 + 728) = v6;
  *(a1 + 744) = v6;
  *(a1 + 760) = v6;
  *(a1 + 776) = v6;
  *(a1 + 792) = v6;
  *(a1 + 808) = v6;
  *(a1 + 824) = v6;
  *(a1 + 840) = v6;
  *(a1 + 856) = v6;
  *(a1 + 872) = v6;
  *(a1 + 888) = v6;
  *(a1 + 904) = v6;
  *(a1 + 920) = v6;
  *(a1 + 936) = v6;
  *(a1 + 952) = v6;
  *(a1 + 968) = v6;
  *(a1 + 984) = v6;
  *(a1 + 1000) = v6;
  *(a1 + 1016) = v6;
  *(a1 + 1032) = v6;
  *(a1 + 1048) = v6;
  *(a1 + 1064) = v6;
  *(a1 + 1080) = v6;
  *(a1 + 1096) = v6;
  *(a1 + 1112) = v6;
  *(a1 + 1128) = v6;
  *(a1 + 1144) = v6;
  *(a1 + 1160) = v6;
  *(a1 + 1176) = v6;
  *(a1 + 1192) = v6;
  *(a1 + 1208) = v6;
  *(a1 + 1224) = v6;
  *(a1 + 1240) = v6;
  *(a1 + 1256) = v6;
  *(a1 + 1272) = v6;
  *(a1 + 1288) = v6;
  *(a1 + 1304) = v6;
  *(a1 + 1320) = v6;
  *(a1 + 1336) = v6;
  *(a1 + 1352) = v6;
  *(a1 + 1368) = v6;
  *(a1 + 1384) = v6;
  *(a1 + 1400) = v6;
  *(a1 + 1416) = v6;
  *(a1 + 1432) = v6;
  *(a1 + 1448) = v6;
  *(a1 + 1464) = v6;
  *(a1 + 1480) = v6;
  *(a1 + 1496) = v6;
  *(a1 + 1512) = v6;
  *(a1 + 1528) = v6;
  *(a1 + 1544) = v6;
  *(a1 + 1560) = v6;
  *(a1 + 1576) = v6;
  *(a1 + 1592) = v6;
  *(a1 + 1608) = v6;
  *(a1 + 1624) = v6;
  *(a1 + 1640) = v6;
  *(a1 + 1656) = v6;
  *(a1 + 1672) = v6;
  *(a1 + 1688) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1696) = 0;
  *(a1 + 1704) = v6;
  *(a1 + 1720) = v6;
  *(a1 + 1736) = v6;
  *(a1 + 1752) = v6;
  *(a1 + 1768) = v6;
  *(a1 + 1784) = v6;
  *(a1 + 1800) = v6;
  *(a1 + 1816) = v6;
  *(a1 + 1832) = v6;
  *(a1 + 1848) = v6;
  *(a1 + 1864) = v6;
  *(a1 + 1880) = v6;
  *(a1 + 1896) = 0;
  *(a1 + 1904) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1912) = 0;
  *(a1 + 1920) = v6;
  *(a1 + 1984) = -1;
  *(a1 + 1968) = v5;
  *(a1 + 1952) = v5;
  *(a1 + 1936) = v5;
  *(a1 + 1992) = 0;
  *(a1 + 2000) = v6;
  *(a1 + 2016) = v6;
  *(a1 + 2032) = v6;
  *(a1 + 2048) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2056) = 0;
  *(a1 + 2060) = 0x7FFFFFFF;
  *(a1 + 2064) = 0;
  *(a1 + 2072) = 0;
  *(a1 + 2080) = v6;
  *(a1 + 2096) = v6;
  *(a1 + 2112) = v6;
  *(a1 + 2128) = v6;
  *(a1 + 2144) = v6;
  *(a1 + 2160) = v6;
  *(a1 + 2176) = v6;
  *(a1 + 2192) = v6;
  *(a1 + 2208) = v6;
  *(a1 + 2224) = v6;
  *(a1 + 2240) = v6;
  *(a1 + 2256) = v6;
  *(a1 + 2272) = v6;
  *(a1 + 2288) = v6;
  *(a1 + 2320) = 0;
  *(a1 + 2304) = 0u;
  *(a1 + 2328) = v6;
  *(a1 + 2344) = 0;
  *(a1 + 2368) = 0;
  *(a1 + 2373) = 0;
  *(a1 + 2352) = 0u;
  *(a1 + 2384) = v6;
  *(a1 + 2400) = v6;
  *(a1 + 2416) = 1;
  *(a1 + 2417) = 0;
  *(a1 + 2425) = 0;
  *(a1 + 2432) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2440) = 0;
  *(a1 + 2448) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2560) = 0x7FFFFFFFFFFFFFFELL;
  *(a1 + 2456) = 0u;
  *(a1 + 2472) = 0;
  *(a1 + 2480) = v6;
  *(a1 + 2504) = 0;
  *(a1 + 2496) = 0;
  *(a1 + 2512) = v6;
  *(a1 + 2528) = v6;
  *(a1 + 2544) = 0;
  *(a1 + 2548) = vdup_n_s32(0x3B9ACA00u);
  __dst = (a1 + 2352);
  if ((a1 + 2352) != a5)
  {
    v8 = *(a5 + 23);
    if (*(a1 + 2375) < 0)
    {
      if (v8 >= 0)
      {
        v10 = a5;
      }

      else
      {
        v10 = *a5;
      }

      if (v8 >= 0)
      {
        v11 = *(a5 + 23);
      }

      else
      {
        v11 = a5[1];
      }

      sub_13B38(__dst, v10, v11);
    }

    else if ((*(a5 + 23) & 0x80) != 0)
    {
      sub_13A68(__dst, *a5, a5[1]);
    }

    else
    {
      v9 = *a5;
      *(a1 + 2368) = a5[2];
      *__dst = v9;
    }
  }

  operator new();
}

void sub_677CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (*(v13 - 169) < 0)
  {
    operator delete(*(v13 - 192));
  }

  if (*(v12 + 2375) < 0)
  {
    operator delete(*a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_67A074(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x67A020);
}

uint64_t sub_67A084(void *a1, uint64_t *a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 10);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_67A1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_67A1FC(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 352;
  if (a2 >= 4)
  {
    v2 = 376;
  }

  return *(a1 + v2);
}

uint64_t sub_67A218(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 384;
  if (a2 >= 4)
  {
    v2 = 408;
  }

  return *(a1 + v2);
}

uint64_t sub_67A234(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 504;
  if (a2 >= 4)
  {
    v2 = 528;
  }

  return *(a1 + v2);
}

uint64_t sub_67A250(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 536;
  if (a2 >= 4)
  {
    v2 = 560;
  }

  return *(a1 + v2);
}

uint64_t sub_67A26C(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 568;
  if (a2 >= 4)
  {
    v2 = 592;
  }

  return *(a1 + v2);
}

uint64_t sub_67A288(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 600;
  if (a2 >= 4)
  {
    v2 = 624;
  }

  return *(a1 + v2);
}

uint64_t sub_67A2A4(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 472;
  if (a2 >= 4)
  {
    v2 = 496;
  }

  return *(a1 + v2);
}

uint64_t sub_67A2C0(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 664;
  if (a2 >= 4)
  {
    v2 = 688;
  }

  return *(a1 + v2);
}

uint64_t sub_67A2DC(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 632;
  if (a2 >= 4)
  {
    v2 = 656;
  }

  return *(a1 + v2);
}

uint64_t sub_67A2F8(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 216;
  if (a2 >= 4)
  {
    v2 = 240;
  }

  return *(a1 + v2);
}

uint64_t sub_67A314(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 288;
  if (a2 >= 4)
  {
    v2 = 312;
  }

  return *(a1 + v2);
}

uint64_t sub_67A330(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 728;
  if (a2 >= 4)
  {
    v2 = 752;
  }

  return *(a1 + v2);
}

uint64_t sub_67A34C(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1736;
  if (a2 >= 4)
  {
    v2 = 1760;
  }

  return *(a1 + v2);
}

uint64_t sub_67A368(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1768;
  if (a2 >= 4)
  {
    v2 = 1792;
  }

  return *(a1 + v2);
}

uint64_t sub_67A384(uint64_t a1, unsigned int a2)
{
  v2 = 4 * a2 + 152;
  if (a2 >= 4)
  {
    v2 = 164;
  }

  return *(a1 + v2);
}

uint64_t sub_67A3A0(uint64_t a1, unsigned int a2)
{
  v2 = 4 * a2 + 168;
  if (a2 >= 4)
  {
    v2 = 180;
  }

  return *(a1 + v2);
}

uint64_t sub_67A3BC(uint64_t a1, unsigned int a2)
{
  v2 = 4 * a2 + 184;
  if (a2 >= 4)
  {
    v2 = 196;
  }

  return *(a1 + v2);
}

uint64_t sub_67A3D8(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 696;
  if (a2 >= 4)
  {
    v2 = 720;
  }

  return *(a1 + v2);
}

uint64_t sub_67A3F4(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 760;
  if (a2 >= 4)
  {
    v2 = 784;
  }

  return *(a1 + v2);
}

uint64_t sub_67A410(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2080;
  if (a2 >= 4)
  {
    v2 = 2104;
  }

  return *(a1 + v2);
}

uint64_t sub_67A42C(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2112;
  if (a2 >= 4)
  {
    v2 = 2136;
  }

  return *(a1 + v2);
}

uint64_t sub_67A448(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2176;
  if (a2 >= 4)
  {
    v2 = 2200;
  }

  return *(a1 + v2);
}

uint64_t sub_67A464(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 800;
  if (a2 >= 4)
  {
    v2 = 824;
  }

  return *(a1 + v2);
}

uint64_t sub_67A480(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 832;
  if (a2 >= 4)
  {
    v2 = 856;
  }

  return *(a1 + v2);
}

uint64_t sub_67A49C(uint64_t a1, unsigned int a2)
{
  if (a2 > 3)
  {
    return *(a1 + 1840);
  }

  else
  {
    return *(a1 + qword_229D550[a2]);
  }
}

uint64_t sub_67A4C4(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 896;
  if (a2 >= 4)
  {
    v2 = 920;
  }

  return *(a1 + v2);
}

uint64_t sub_67A4E0(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 928;
  if (a2 >= 4)
  {
    v2 = 952;
  }

  return *(a1 + v2);
}

uint64_t sub_67A4FC(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 960;
  if (a2 >= 4)
  {
    v2 = 984;
  }

  return *(a1 + v2);
}

uint64_t sub_67A518(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1088;
  if (a2 >= 4)
  {
    v2 = 1112;
  }

  return *(a1 + v2);
}

uint64_t sub_67A534(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 181) == 1)
  {
    v3 = 1080;
    if (a2 < 4)
    {
      v3 = ((8 * a2) | 0x420) & 0x4F8;
    }

    return *(a1 + v3);
  }

  else
  {
    v5 = 1016;
    if (a2 < 4)
    {
      v5 = (8 * a2) & 0x18 | 0x3E0u;
    }

    v6 = 1048;
    if (a2 < 4)
    {
      v6 = (8 * (a2 & 0x1F)) | 0x400;
    }

    if (*(a3 + 180) == 1)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    return *(a1 + v7);
  }
}

uint64_t sub_67A5A4(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1120;
  if (a2 >= 4)
  {
    v2 = 1144;
  }

  return *(a1 + v2);
}

uint64_t sub_67A5C0(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1184;
  if (a2 >= 4)
  {
    v2 = 1208;
  }

  return *(a1 + v2);
}

uint64_t sub_67A5DC(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1216;
  if (a2 >= 4)
  {
    v2 = 1240;
  }

  return *(a1 + v2);
}

uint64_t sub_67A5F8(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1280;
  if (a2 >= 4)
  {
    v2 = 1304;
  }

  return *(a1 + v2);
}

uint64_t sub_67A614(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1312;
  if (a2 >= 4)
  {
    v2 = 1336;
  }

  return *(a1 + v2);
}

uint64_t sub_67A630(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1344;
  if (a2 >= 4)
  {
    v2 = 1368;
  }

  return *(a1 + v2);
}

uint64_t sub_67A64C(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1376;
  if (a2 >= 4)
  {
    v2 = 1400;
  }

  return *(a1 + v2);
}

uint64_t sub_67A668(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1152;
  if (a2 >= 4)
  {
    v2 = 1176;
  }

  return *(a1 + v2);
}

uint64_t sub_67A684(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1408;
  if (a2 >= 4)
  {
    v2 = 1432;
  }

  return *(a1 + v2);
}

uint64_t sub_67A6A0(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1440;
  if (a2 >= 4)
  {
    v2 = 1464;
  }

  return *(a1 + v2);
}

uint64_t sub_67A6BC(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1472;
  if (a2 >= 4)
  {
    v2 = 1496;
  }

  return *(a1 + v2);
}

uint64_t sub_67A6D8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 181) == 1)
  {
    v3 = 1528;
    if (a2 < 4)
    {
      v3 = ((8 * a2) | 0xFFFFFFE7) & 0x5F8;
    }

    return *(a1 + v3);
  }

  else
  {
    v5 = 1592;
    if (a2 < 4)
    {
      v5 = ((8 * a2) | 0x620) & 0x6F8;
    }

    v6 = 1560;
    if (a2 < 4)
    {
      v6 = (8 * (a2 & 0x1F)) | 0x600;
    }

    if (*(a3 + 180) == 1)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    return *(a1 + v7);
  }
}

uint64_t sub_67A74C(uint64_t a1, unsigned int a2)
{
  v2 = 16 * a2 + 1600;
  if (a2 >= 4)
  {
    v2 = 1648;
  }

  return *(a1 + v2);
}

uint64_t sub_67A768(uint64_t a1, unsigned int a2)
{
  v2 = 16 * a2 + 1608;
  if (a2 >= 4)
  {
    v2 = 1656;
  }

  return *(a1 + v2);
}

uint64_t sub_67A784(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1704;
  if (a2 >= 4)
  {
    v2 = 1728;
  }

  return *(a1 + v2);
}

uint64_t sub_67A7A0(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 440;
  if (a2 >= 4)
  {
    v2 = 464;
  }

  return *(a1 + v2);
}

uint64_t sub_67A7BC(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2208;
  if (a2 >= 4)
  {
    v2 = 2232;
  }

  return *(a1 + v2);
}

uint64_t sub_67A7D8(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2240;
  if (a2 >= 4)
  {
    v2 = 2264;
  }

  return *(a1 + v2);
}

uint64_t sub_67A7F4(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2272;
  if (a2 >= 4)
  {
    v2 = 2296;
  }

  return *(a1 + v2);
}

uint64_t sub_67A810(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1664;
  if (a2 >= 4)
  {
    v2 = 1688;
  }

  return *(a1 + v2);
}

uint64_t sub_67A82C(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2384;
  if (a2 >= 4)
  {
    v2 = 2408;
  }

  return *(a1 + v2);
}

uint64_t sub_67A848(unsigned int *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a2 > 5)
  {
    if (a2 <= 7)
    {
      if (a2 == 6)
      {
        return a1[490];
      }

      else
      {
        return a1[491];
      }
    }

    else
    {
      switch(a2)
      {
        case 8:
          return a1[492];
        case 9:
          return a1[493];
        case 10:
          return a1[494];
      }
    }
  }

  else if (a2 <= 2)
  {
    if (a2 == 1)
    {
      return a1[485];
    }

    else if (a2 == 2)
    {
      return a1[486];
    }
  }

  else if (a2 == 3)
  {
    return a1[487];
  }

  else if (a2 == 4)
  {
    return a1[488];
  }

  else
  {
    return a1[489];
  }

  return result;
}

uint64_t sub_67A908(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 48;
  if (a2 >= 4)
  {
    v2 = 72;
  }

  return *(a1 + v2);
}

uint64_t sub_67A924(uint64_t a1)
{
  v1 = *(a1 + 204) / 10.0 * (*(a1 + 2456) / 3.6) * 100.0;
  if (v1 >= 0.0)
  {
    v2 = *(a1 + 204) / 10.0 * (*(a1 + 2456) / 3.6) * 100.0;
    if (v1 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v3 = (v1 + v1) + 1;
  }

  else
  {
    v2 = *(a1 + 204) / 10.0 * (*(a1 + 2456) / 3.6) * 100.0;
    if (v1 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v3 = (v1 + v1) - 1 + (((v1 + v1) - 1) >> 63);
  }

  v2 = (v3 >> 1);
LABEL_7:
  if (v2 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v1 >= 0.0)
  {
    if (v1 < 4.50359963e15)
    {
      v4 = (v1 + v1) + 1;
      return (v4 >> 1);
    }
  }

  else if (v1 > -4.50359963e15)
  {
    v4 = (v1 + v1) - 1 + (((v1 + v1) - 1) >> 63);
    return (v4 >> 1);
  }

  return v1;
}

uint64_t sub_67AA20(_BYTE *a1, int a2)
{
  if (a1[2320])
  {
    return 1;
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      return a1[2324] & 1;
    }

    return a1[2323] & 1;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return a1[2322] & 1;
      }

      return a1[2324] & 1;
    }

    return a1[2321] & 1;
  }
}

uint64_t sub_67AA84(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1848;
  if (a2 >= 4)
  {
    v2 = 1872;
  }

  return *(a1 + v2);
}

uint64_t sub_67AAA0(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2512;
  if (a2 >= 4)
  {
    v2 = 2536;
  }

  return *(a1 + v2);
}

uint64_t sub_67AABC(uint64_t a1, const void **a2)
{
  if (*(a1 + 1524) == 1)
  {
    return sub_59EB10((a1 + 688), a2);
  }

  else
  {
    return sub_4EDB38(a1, a2);
  }
}

uint64_t sub_67AAD4(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 1524) == 1)
  {
    v2 = a1 + 688;

    return sub_59EB30(v2, a2);
  }

  else
  {
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = a2[1];
    }

    if (v5 + 22 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v5 + 22 >= 0x17)
    {
      operator new();
    }

    v9 = v5 + 22;
    strcpy(__p, "IncidentsCausingDelay_");
    if (v5)
    {
      if ((v4 & 0x80u) != 0)
      {
        a2 = *a2;
      }

      memmove(&__p[22], a2, v5);
    }

    __p[v5 + 22] = 0;
    result = sub_4EDB38(a1, __p);
    if (v9 < 0)
    {
      v7 = result;
      operator delete(*__p);
      return v7;
    }
  }

  return result;
}

void sub_67AC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_67AC80(uint64_t a1, const void **a2)
{
  if (*(a1 + 1524) == 1)
  {
    return sub_59EB54(a1 + 688, a2);
  }

  else
  {
    return sub_4EDB38(a1, a2);
  }
}

uint64_t sub_67AC98(uint64_t a1, const void **a2)
{
  if (*(a1 + 1524) == 1)
  {
    return sub_59EB78(a1 + 688, a2);
  }

  else
  {
    return sub_4EDB38(a1, a2);
  }
}

uint64_t sub_67ACB0(uint64_t a1, const void **a2)
{
  if (*(a1 + 1524) == 1)
  {
    return sub_59EB9C(a1 + 688, a2);
  }

  else
  {
    return sub_4EDE20(a1, a2);
  }
}

BOOL sub_67ACC8(uint64_t a1, unsigned int *a2, double a3)
{
  if (*(a1 + 1524) == 1)
  {
    return sub_59EBC0(a1 + 688, a2);
  }

  else
  {
    return sub_4EDC44(a1, a2, a3);
  }
}

uint64_t sub_67ACE0(uint64_t a1)
{
  if (*(a1 + 1524) == 1)
  {
    v1 = a1 + 688;

    return sub_59EBE4(v1);
  }

  else if (sub_4F09F8(a1))
  {

    return sub_4F0A00(a1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_67AD58(uint64_t a1)
{
  if (*(a1 + 1524) == 1)
  {
    v2 = a1 + 688;

    return sub_59EBF8(v2);
  }

  else
  {
    result = sub_4F09F8(a1);
    if (result)
    {
      return sub_4F0A00(a1) ^ 1;
    }
  }

  return result;
}

uint64_t sub_67ADAC(uint64_t a1)
{
  if (*(a1 + 1524) != 1)
  {
    return sub_4F09B8(a1) ^ 1;
  }

  v2 = a1 + 688;

  return sub_59EC18(v2);
}

uint64_t sub_67ADE8(uint64_t a1)
{
  if (*(a1 + 1524) != 1)
  {
    return sub_4F09D8(a1) ^ 1;
  }

  v2 = a1 + 688;

  return sub_59EC28(v2);
}

uint64_t sub_67AE28(_BYTE *a1)
{
  if (a1[1422])
  {
    return 1;
  }

  if (a1[1176])
  {
    return 0;
  }

  return a1[1421] & 1;
}

uint64_t sub_67AE78(uint64_t a1)
{
  if (*(a1 + 1176))
  {
    return 0;
  }

  else
  {
    return *(a1 + 1420) & 1;
  }
}

void sub_67DD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a70);
              if ((a69 & 0x80000000) == 0)
              {
LABEL_42:
                if (a67 < 0)
                {
LABEL_43:
                  operator delete(a66);
                  if ((a65 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a65 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a68);
              if (a67 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a69 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}

uint64_t sub_67DF70(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1120) = -1;
  v2 = *(a2 + 1120);
  if (v2 != -1)
  {
    v3 = result;
    v4 = result;
    (off_266BFA0[v2])(&v4);
    result = v3;
    *(v3 + 1120) = v2;
  }

  return result;
}

uint64_t sub_67E004(uint64_t result)
{
  if (*(result + 1120))
  {
    sub_5AF20();
  }

  return result;
}

uint64_t sub_67E020(uint64_t result)
{
  if (*(result + 1120) != 1)
  {
    sub_5AF20();
  }

  return result;
}

void sub_67E040()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A0840 = 0u;
  *algn_27A0850 = 0u;
  dword_27A0860 = 1065353216;
  sub_3A9A34(&xmmword_27A0840, v0, v0);
  sub_3A9A34(&xmmword_27A0840, v3, v3);
  sub_3A9A34(&xmmword_27A0840, __p, __p);
  sub_3A9A34(&xmmword_27A0840, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_67E210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27A0840);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_67E288(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 32) = 0;
  sub_2512DC(a1, &v8);
  *(a1 + 32) = a3;
  *(a1 + 24) = *a4;
  return a1;
}

void sub_67E2EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_67E308(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a2;
  sub_2512DC(a1, &v5);
  *(a1 + 32) |= a3;
}

void **sub_67E35C(void ***a1, const void **a2)
{
  result = *a1;
  v4 = a1[1];
  if (result == v4)
  {
    if (result >= a1[2])
    {
      v8 = a1;
      result = sub_1CEE8(a1, a2);
      v8[1] = result;
    }

    else
    {
      v6 = a1;
      if (*(a2 + 23) < 0)
      {
        result = sub_325C(v4, *a2, a2[1]);
      }

      else
      {
        v7 = *a2;
        v4[2] = a2[2];
        *v4 = v7;
      }

      v6[1] = v4 + 3;
      v6[1] = v4 + 3;
    }
  }

  else if (result != a2)
  {
    if (*(result + 23) < 0)
    {
      v9 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v10 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v10 = v9;
      }

      return sub_13B38(result, a2, v10);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      v11 = a2[1];
      v12 = *a2;

      return sub_13A68(result, v12, v11);
    }

    else
    {
      v5 = *a2;
      result[2] = a2[2];
      *result = v5;
    }
  }

  return result;
}

uint64_t sub_67E494(uint64_t a1, const void **a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  sub_67E35C(a1, a2);
  return a1;
}

void sub_67E4DC(_Unwind_Exception *a1)
{
  sub_540798((v1 + 3));
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_67E4F8(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = a1 + 24;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  sub_67E35C(a1, a2);
  if (v5 != a3)
  {
    *(a1 + 56) = *(a3 + 32);
    sub_5FA69C(v5, *(a3 + 16), 0);
  }

  return a1;
}

void sub_67E570(_Unwind_Exception *a1)
{
  sub_540798(v2);
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

void sub_67E58C(uint64_t *a1, const void ***a2)
{
  if (a1 != a2)
  {
    sub_74300(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }
}

uint64_t sub_67E5B8(uint64_t a1, const void ***a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  if (a1 != a2)
  {
    sub_74300(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  return a1;
}

void sub_67E628(_Unwind_Exception *a1)
{
  sub_540798((v1 + 3));
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_67E644(uint64_t a1, const void ***a2, uint64_t a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = a1 + 24;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  if (a1 != a2)
  {
    sub_74300(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  if (v5 != a3)
  {
    *(a1 + 56) = *(a3 + 32);
    sub_5FA69C(v5, *(a3 + 16), 0);
  }

  return a1;
}

void sub_67E6E4(_Unwind_Exception *a1)
{
  sub_540798(v2);
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

void **sub_67E710@<X0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 1;
  result = sub_67E35C(a2, a1);
  *(a2 + 64) = 0;
  return result;
}

void sub_67E760(_Unwind_Exception *a1)
{
  sub_540798((v1 + 3));
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_67E77C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1CEE8(a1, a2);
    *(a1 + 8) = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v4;
    }

    result = v3 + 24;
    *(a1 + 8) = v3 + 24;
    *(a1 + 8) = v3 + 24;
  }

  return result;
}

void sub_67E814(uint64_t *a1, __int128 **a2)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3) - 0x5555555555555555 * ((a2[1] - *a2) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < v5)
  {
    if (v5 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  sub_93FE4(a1, v4, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *__p = 0u;
  *v18 = 0u;
  v19 = 1065353216;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    while (1)
    {
      sub_23914(__p, v6, v6);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v6 += 24;
      if (v6 == v7)
      {
        v6 = v7;
        goto LABEL_16;
      }
    }

    if (v6 != v7)
    {
      for (i = v6 + 24; i != v7; i += 24)
      {
        sub_23914(__p, i, i);
        if (v11)
        {
          if (*(v6 + 23) < 0)
          {
            operator delete(*v6);
          }

          v10 = *i;
          *(v6 + 16) = *(i + 16);
          *v6 = v10;
          v6 += 24;
          *(i + 23) = 0;
          *i = 0;
        }
      }
    }
  }

LABEL_16:
  v12 = a1[1];
  if (v6 != v12)
  {
    while (v12 != v6)
    {
      v13 = *(v12 - 1);
      v12 -= 3;
      if (v13 < 0)
      {
        operator delete(*v12);
      }
    }

    a1[1] = v6;
  }

  v14 = v18[0];
  if (v18[0])
  {
    do
    {
      v16 = *v14;
      if (*(v14 + 39) < 0)
      {
        operator delete(v14[2]);
      }

      operator delete(v14);
      v14 = v16;
    }

    while (v16);
  }

  v15 = __p[0];
  __p[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }
}

std::string *sub_67EAA4(std::string **a1, const std::string::value_type *a2)
{
  result = *a1;
  if (result != a1[1])
  {
    v4 = *(a2 + 1);
    if (a2[23] >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v5 = v4;
    }

    return std::string::append(result, a2, v5);
  }

  return result;
}

uint64_t *sub_67EAD8(uint64_t *result, unsigned __int8 *a2)
{
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      v5 = *(v2 + 23);
      if ((v5 & 0x8000000000000000) != 0)
      {
        v6 = *v2;
        v7 = *(v2 + 8);
      }

      else
      {
        v6 = v2;
        v7 = *(v2 + 23);
      }

      v8 = a2[23];
      v9 = v8 < 0;
      if (v8 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if (v9)
      {
        v11 = *(a2 + 1);
      }

      else
      {
        v11 = a2[23];
      }

      if (v7 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v7;
      }

      v13 = (v6 + v12);
      if (v12)
      {
        v16 = *v10;
        v14 = (v10 + 1);
        v15 = v16;
        v17 = v6;
        v18 = (v6 + v12);
LABEL_19:
        while (2)
        {
          v19 = v17 + 1;
          while (*v17 != v15)
          {
            ++v17;
            ++v19;
            if (v17 == v13)
            {
              goto LABEL_32;
            }
          }

          v20 = v11 - 1;
          result = v14;
          while (v20)
          {
            if (v19 == v13)
            {
              goto LABEL_32;
            }

            v22 = *v19++;
            v21 = v22;
            v23 = *result;
            result = (result + 1);
            --v20;
            if (v21 != v23)
            {
              if (++v17 != v13)
              {
                goto LABEL_19;
              }

              goto LABEL_32;
            }
          }

          v18 = v17++;
          if (v17 != v13)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v18 = v6;
      }

LABEL_32:
      v24 = &v18[-v6];
      if (v18 != v13 || v11 == 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = -1;
      }

      if ((v5 & 0x80000000) != 0)
      {
        if (*(v2 + 8) < v26)
        {
LABEL_47:
          sub_49D4();
        }
      }

      else if (v5 < v26)
      {
        goto LABEL_47;
      }

      if (v11 == -1)
      {
        if ((v5 & 0x80000000) != 0)
        {
          v27 = *v2;
          *(v2 + 8) = v26;
          *(v27 + v26) = 0;
        }

        else
        {
          *(v2 + 23) = v26 & 0x7F;
          *(v2 + v26) = 0;
        }
      }

      else
      {
        result = sub_148E0(v2, v26, v11);
      }

      v2 += 24;
    }

    while (v2 != v3);
  }

  return result;
}

void **sub_67EC44(uint64_t a1, __int128 *a2, const void **a3)
{
  v11 = a2;
  v4 = sub_666FBC((a1 + 24), a2, &unk_229EB70, &v11);
  result = (v4 + 9);
  if (v4 + 9 != a3)
  {
    v6 = *(v4 + 95);
    v7 = *(a3 + 23);
    if (v6 < 0)
    {
      if (v7 >= 0)
      {
        v9 = a3;
      }

      else
      {
        v9 = *a3;
      }

      if (v7 >= 0)
      {
        v10 = *(a3 + 23);
      }

      else
      {
        v10 = a3[1];
      }

      return sub_13B38(result, v9, v10);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      return sub_13A68(result, *a3, a3[1]);
    }

    else
    {
      v8 = *a3;
      result[2] = a3[2];
      *result = v8;
    }
  }

  return result;
}

void **sub_67ECF8(uint64_t a1, __int128 *a2, const void **a3)
{
  v11 = a2;
  v4 = sub_666FBC((a1 + 24), a2, &unk_229EB70, &v11);
  result = (v4 + 5);
  if (v4 + 5 != a3)
  {
    v6 = *(v4 + 63);
    v7 = *(a3 + 23);
    if (v6 < 0)
    {
      if (v7 >= 0)
      {
        v9 = a3;
      }

      else
      {
        v9 = *a3;
      }

      if (v7 >= 0)
      {
        v10 = *(a3 + 23);
      }

      else
      {
        v10 = a3[1];
      }

      return sub_13B38(result, v9, v10);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      return sub_13A68(result, *a3, a3[1]);
    }

    else
    {
      v8 = *a3;
      result[2] = a3[2];
      *result = v8;
    }
  }

  return result;
}

void **sub_67EDAC(uint64_t a1, __int128 *a2, const void **a3, const void **a4)
{
  v22 = a2;
  v8 = sub_666FBC((a1 + 24), a2, &unk_229EB70, &v22);
  v9 = v8 + 5;
  if (v8 + 5 != a3)
  {
    v10 = *(v8 + 63);
    v11 = *(a3 + 23);
    if (v10 < 0)
    {
      if (v11 >= 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = *a3;
      }

      if (v11 >= 0)
      {
        v14 = *(a3 + 23);
      }

      else
      {
        v14 = a3[1];
      }

      sub_13B38(v9, v13, v14);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      sub_13A68(v9, *a3, a3[1]);
    }

    else
    {
      v12 = *a3;
      v9[2] = a3[2];
      *v9 = v12;
    }
  }

  v22 = a2;
  v15 = sub_666FBC((a1 + 24), a2, &unk_229EB70, &v22);
  result = (v15 + 9);
  if (v15 + 9 != a4)
  {
    v17 = *(v15 + 95);
    v18 = *(a4 + 23);
    if (v17 < 0)
    {
      if (v18 >= 0)
      {
        v20 = a4;
      }

      else
      {
        v20 = *a4;
      }

      if (v18 >= 0)
      {
        v21 = *(a4 + 23);
      }

      else
      {
        v21 = a4[1];
      }

      return sub_13B38(result, v20, v21);
    }

    else if ((*(a4 + 23) & 0x80) != 0)
    {
      return sub_13A68(result, *a4, a4[1]);
    }

    else
    {
      v19 = *a4;
      result[2] = a4[2];
      *result = v19;
    }
  }

  return result;
}

void **sub_67EEF4(uint64_t a1, __int128 *a2, void **a3, uint64_t **a4, uint64_t a5)
{
  v28 = a2;
  v8 = sub_666FBC((a1 + 24), a2, &unk_229EB70, &v28);
  v9 = (v8 + 5);
  result = (v8 + 9);
  if (v8 + 9 == a4)
  {
    goto LABEL_13;
  }

  v11 = *(a4 + 23);
  if (*(v8 + 95) < 0)
  {
    if (v11 >= 0)
    {
      v13 = a4;
    }

    else
    {
      v13 = *a4;
    }

    if (v11 >= 0)
    {
      v14 = *(a4 + 23);
    }

    else
    {
      v14 = a4[1];
    }

    result = sub_13B38(result, v13, v14);
LABEL_13:
    if (v9 == a3)
    {
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  if ((*(a4 + 23) & 0x80) != 0)
  {
    result = sub_13A68(result, *a4, a4[1]);
    if (v9 == a3)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v12 = *a4;
    v8[11] = a4[2];
    *result = v12;
    if (v9 == a3)
    {
      goto LABEL_27;
    }
  }

LABEL_14:
  v15 = *(a3 + 23);
  if (*(v8 + 63) < 0)
  {
    if (v15 >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    if (v15 >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    result = sub_13B38(v9, v17, v18);
  }

  else if ((*(a3 + 23) & 0x80) != 0)
  {
    result = sub_13A68(v9, *a3, a3[1]);
  }

  else
  {
    v16 = *a3;
    v8[7] = a3[2];
    *v9 = v16;
  }

LABEL_27:
  *(v8 + 26) = *a5;
  if (v8 + 13 == a5)
  {
    return result;
  }

  v19 = *(a5 + 31);
  if (*(v8 + 135) < 0)
  {
    if (v19 >= 0)
    {
      v23 = (a5 + 8);
    }

    else
    {
      v23 = *(a5 + 8);
    }

    if (v19 >= 0)
    {
      v24 = *(a5 + 31);
    }

    else
    {
      v24 = *(a5 + 16);
    }

    result = sub_13B38(v8 + 14, v23, v24);
    v21 = (a5 + 32);
    v22 = *(a5 + 55);
    if (*(v8 + 159) < 0)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  if ((*(a5 + 31) & 0x80) == 0)
  {
    v20 = *(a5 + 8);
    v8[16] = *(a5 + 24);
    *(v8 + 7) = v20;
    v21 = (a5 + 32);
    v22 = *(a5 + 55);
    if (*(v8 + 159) < 0)
    {
      goto LABEL_43;
    }

LABEL_39:
    if ((v22 & 0x80) != 0)
    {
      return sub_13A68(v8 + 17, *(a5 + 32), *(a5 + 40));
    }

    v25 = *v21;
    v8[19] = v21[2];
    *(v8 + 17) = v25;
    return result;
  }

  result = sub_13A68(v8 + 14, *(a5 + 8), *(a5 + 16));
  v21 = (a5 + 32);
  v22 = *(a5 + 55);
  if ((*(v8 + 159) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_43:
  if ((v22 & 0x80u) == 0)
  {
    v26 = v21;
  }

  else
  {
    v26 = *(a5 + 32);
  }

  if ((v22 & 0x80u) == 0)
  {
    v27 = v22;
  }

  else
  {
    v27 = *(a5 + 40);
  }

  return sub_13B38(v8 + 17, v26, v27);
}

_OWORD *sub_67F114(uint64_t a1, __int128 *a2, void *a3)
{
  v6 = a2;
  v4 = sub_666FBC((a1 + 24), a2, &unk_229EB70, &v6);
  return sub_52CB8C(v4 + 5, a3);
}

void **sub_67F164(void **result, const std::string::value_type *a2, __int128 *a3, uint64_t a4, uint64_t **a5, uint64_t a6)
{
  v6 = *(a4 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a4 + 8);
  }

  if (v6)
  {
    if (*result != result[1])
    {
      v11 = *(a2 + 1);
      if (a2[23] >= 0)
      {
        v12 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v12 = v11;
      }

      v13 = result;
      std::string::append(*result, a2, v12);
      result = v13;
    }

    return sub_67EEF4(result, a3, a4, a5, a6);
  }

  return result;
}

_OWORD *sub_67F210(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  result = sub_734C10(a4);
  if (result)
  {
    if (*a1 != *(a1 + 8))
    {
      v9 = *(a2 + 23);
      if (v9 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if (v9 >= 0)
      {
        v11 = *(a2 + 23);
      }

      else
      {
        v11 = *(a2 + 8);
      }

      std::string::append(*a1, v10, v11);
    }

    v13 = a3;
    v12 = sub_666FBC((a1 + 24), a3, &unk_229EB70, &v13);
    return sub_52CB8C(v12 + 5, a4);
  }

  return result;
}

_OWORD *sub_67F2AC(uint64_t a1, __int128 *a2, void *a3, int a4)
{
  if (!a4 || (v6 = a2, result = sub_7345C4((a3 + 8)), a2 = v6, result))
  {
    v9 = a2;
    v8 = sub_666FBC((a1 + 24), a2, &unk_229EB70, &v9);
    return sub_52CB8C(v8 + 5, a3);
  }

  return result;
}

__int128 **sub_67F320@<X0>(__int128 **result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == result[1])
  {
    *(a2 + 23) = 0;
    *a2 = 0;
  }

  else if (*(v2 + 23) < 0)
  {
    return sub_325C(a2, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    *(a2 + 16) = *(v2 + 2);
    *a2 = v3;
  }

  return result;
}

void sub_67F384(void *a1@<X0>, __int128 **a2@<X8>)
{
  v2 = a1;
  v3 = a2;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *a1;
  if (*a1 == a1[1])
  {
    HIBYTE(v59) = 0;
    LOBYTE(__p[0]) = 0;
  }

  else if (*(v4 + 23) < 0)
  {
    sub_325C(__p, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    v59 = *(v4 + 2);
    *__p = v5;
  }

  v6 = HIBYTE(v59);
  v7 = HIBYTE(v59);
  v8 = __p[0];
  v9 = __p[1];
  v10 = __p;
  if (v59 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v59 >= 0)
  {
    v12 = HIBYTE(v59);
  }

  else
  {
    v12 = __p[1];
  }

  if (v12 <= 4)
  {
    goto LABEL_28;
  }

  v57 = v3;
  v13 = v2;
  v14 = v11 + v12;
  v15 = v11;
  while (1)
  {
    v16 = memchr(v15, 82, v12 - 4);
    if (!v16)
    {
      goto LABEL_27;
    }

    if (*v16 == 1684107090 && v16[4] == 49)
    {
      break;
    }

    v15 = (v16 + 1);
    v12 = v14 - v15;
    if (v14 - v15 <= 4)
    {
      goto LABEL_27;
    }
  }

  if (v16 == v14)
  {
LABEL_27:
    v2 = v13;
    v3 = v57;
LABEL_28:
    if (v7 >= 0)
    {
      v21 = v6;
    }

    else
    {
      v10 = v8;
      v21 = v9;
    }

    if (v21 < 4)
    {
      goto LABEL_49;
    }

LABEL_32:
    v22 = v10 + v21;
    v23 = v10;
    while (1)
    {
      v24 = memchr(v23, 82, v21 - 3);
      if (!v24)
      {
        goto LABEL_49;
      }

      if (*v24 == 1684107090)
      {
        break;
      }

      v23 = (v24 + 1);
      v21 = v22 - v23;
      if (v22 - v23 < 4)
      {
        goto LABEL_49;
      }
    }

    if (v24 != v22 && v24 - v10 != -1)
    {
      if (sub_668F0C(v2 + 3, "{Road}"))
      {
        v25 = sub_668F0C(v2 + 3, "{Road}");
        if (!v25)
        {
          goto LABEL_137;
        }

        v26 = v3[1];
        if (v26 < v3[2])
        {
          goto LABEL_66;
        }

        goto LABEL_82;
      }

      v6 = HIBYTE(v59);
      v8 = __p[0];
      v9 = __p[1];
      v7 = HIBYTE(v59);
    }

LABEL_49:
    if (v7 < 0)
    {
      v27 = v9;
    }

    else
    {
      v8 = __p;
      v27 = v6;
    }

    if (v27 < 7)
    {
      goto LABEL_84;
    }

    v28 = v8 + v27;
    v29 = v8;
    while (1)
    {
      v30 = memchr(v29, 70, v27 - 6);
      if (!v30)
      {
        goto LABEL_84;
      }

      if (*v30 == 1701147206 && *(v30 + 3) == 2036430693)
      {
        break;
      }

      v29 = (v30 + 1);
      v27 = v28 - v29;
      if (v28 - v29 < 7)
      {
        goto LABEL_84;
      }
    }

    if (v30 == v28 || v30 - v8 == -1 || !sub_668F0C(v2 + 3, "{Freeway}"))
    {
      goto LABEL_84;
    }

    v25 = sub_668F0C(v2 + 3, "{Freeway}");
    if (!v25)
    {
      goto LABEL_137;
    }

    v26 = v3[1];
    if (v26 < v3[2])
    {
      goto LABEL_66;
    }

LABEL_82:
    v32 = sub_6868D8(v3, (v25 + 5));
    goto LABEL_83;
  }

  v2 = v13;
  v3 = v57;
  if (v16 - v11 == -1)
  {
    goto LABEL_28;
  }

  if (!sub_668F0C(v2 + 3, "{Road1}"))
  {
    v6 = HIBYTE(v59);
    v8 = __p[0];
    v9 = __p[1];
    v7 = HIBYTE(v59);
    if (v59 >= 0)
    {
      v21 = HIBYTE(v59);
    }

    else
    {
      v10 = __p[0];
      v21 = __p[1];
    }

    if (v21 < 4)
    {
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  v18 = sub_668F0C(v2 + 3, "{Road1}");
  if (!v18)
  {
    goto LABEL_137;
  }

  v19 = v57[1];
  if (v19 >= v57[2])
  {
    v20 = sub_6868D8(v57, (v18 + 5));
  }

  else
  {
    sub_5139E8(v57[1], (v18 + 5));
    v20 = (v19 + 152);
  }

  v57[1] = v20;
  v33 = HIBYTE(v59);
  if (v59 >= 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = __p[0];
  }

  if (v59 < 0)
  {
    v33 = __p[1];
  }

  if (v33 >= 6)
  {
    v35 = v34 + v33;
    v36 = v34;
    while (1)
    {
      v37 = memchr(v36, 95, v33 - 5);
      if (!v37)
      {
        goto LABEL_84;
      }

      if (*v37 == 1634685535 && *(v37 + 2) == 12900)
      {
        break;
      }

      v36 = (v37 + 1);
      v33 = v35 - v36;
      if (v35 - v36 < 6)
      {
        goto LABEL_84;
      }
    }

    if (v37 != v35 && v37 - v34 != -1 && sub_668F0C(v2 + 3, "{Road2}"))
    {
      v25 = sub_668F0C(v2 + 3, "{Road2}");
      if (!v25)
      {
        goto LABEL_137;
      }

      v26 = v57[1];
      if (v26 >= v57[2])
      {
        goto LABEL_82;
      }

LABEL_66:
      sub_5139E8(v3[1], (v25 + 5));
      v32 = (v26 + 152);
LABEL_83:
      v3[1] = v32;
    }
  }

LABEL_84:
  v39 = HIBYTE(v59);
  if (v59 >= 0)
  {
    v40 = __p;
  }

  else
  {
    v40 = __p[0];
  }

  if (v59 < 0)
  {
    v39 = __p[1];
  }

  if (v39 >= 9)
  {
    v41 = v40 + v39;
    v42 = v40;
    while (1)
    {
      v43 = memchr(v42, 83, v39 - 8);
      if (!v43)
      {
        goto LABEL_106;
      }

      if (*v43 == 0x74736F706E676953 && v43[8] == 49)
      {
        break;
      }

      v42 = (v43 + 1);
      v39 = v41 - v42;
      if (v41 - v42 < 9)
      {
        goto LABEL_106;
      }
    }

    if (v43 != v41 && v43 - v40 != -1 && sub_668F0C(v2 + 3, "{Signpost1}"))
    {
      v45 = sub_668F0C(v2 + 3, "{Signpost1}");
      if (!v45)
      {
        goto LABEL_137;
      }

      v46 = v3[1];
      if (v46 >= v3[2])
      {
        v47 = sub_6868D8(v3, (v45 + 5));
      }

      else
      {
        sub_5139E8(v3[1], (v45 + 5));
        v47 = (v46 + 152);
      }

      v3[1] = v47;
    }
  }

LABEL_106:
  v48 = HIBYTE(v59);
  if (v59 >= 0)
  {
    v49 = __p;
  }

  else
  {
    v49 = __p[0];
  }

  if (v59 < 0)
  {
    v48 = __p[1];
  }

  if (v48 > 9)
  {
    v50 = v49 + v48;
    v51 = v49;
    while (1)
    {
      v52 = memchr(v51, 95, v48 - 9);
      if (!v52)
      {
        goto LABEL_128;
      }

      if (*v52 == 0x736F706E6769535FLL && *(v52 + 4) == 12916)
      {
        break;
      }

      v51 = (v52 + 1);
      v48 = v50 - v51;
      if (v50 - v51 < 10)
      {
        goto LABEL_128;
      }
    }

    if (v52 != v50 && v52 - v49 != -1 && sub_668F0C(v2 + 3, "{Signpost2}"))
    {
      v54 = sub_668F0C(v2 + 3, "{Signpost2}");
      if (v54)
      {
        v55 = v3[1];
        if (v55 >= v3[2])
        {
          v56 = sub_6868D8(v3, (v54 + 5));
        }

        else
        {
          sub_5139E8(v3[1], (v54 + 5));
          v56 = (v55 + 152);
        }

        v3[1] = v56;
        goto LABEL_128;
      }

LABEL_137:
      sub_49EC("unordered_map::at: key not found");
    }
  }

LABEL_128:
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_67F994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ***a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 + 8) = v17;
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_593FC8(a10);
  _Unwind_Resume(a1);
}

void sub_67FA00(__int128 **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *a1;
  if (*a1 == a1[1])
  {
    HIBYTE(v34) = 0;
    LOBYTE(__p[0]) = 0;
  }

  else if (*(v4 + 23) < 0)
  {
    sub_325C(__p, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    v34 = *(v4 + 2);
    *__p = v5;
  }

  v6 = HIBYTE(v34);
  v7 = __p;
  if (v34 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v34 < 0)
  {
    v6 = __p[1];
  }

  if (v6 >= 7)
  {
    v9 = v8 + v6;
    v10 = v8;
    while (1)
    {
      v11 = memchr(v10, 83, v6 - 6);
      if (!v11)
      {
        goto LABEL_25;
      }

      if (*v11 == 1701406803 && *(v11 + 3) == 828664933)
      {
        break;
      }

      v10 = (v11 + 1);
      v6 = v9 - v10;
      if (v9 - v10 < 7)
      {
        goto LABEL_25;
      }
    }

    if (v11 != v9 && v11 - v8 != -1 && sub_668F0C(a1 + 3, "{Shield1}"))
    {
      v13 = sub_668F0C(a1 + 3, "{Shield1}");
      if (!v13)
      {
        goto LABEL_76;
      }

      sub_67FDE8(a2, (v13 + 13));
    }
  }

LABEL_25:
  v14 = HIBYTE(v34);
  if (v34 < 0)
  {
    v7 = __p[0];
    v14 = __p[1];
  }

  if (v14 > 7)
  {
    v15 = v7 + v14;
    v16 = v7;
    while (1)
    {
      v17 = memchr(v16, 95, v14 - 7);
      if (!v17)
      {
        goto LABEL_38;
      }

      if (*v17 == 0x32646C656968535FLL)
      {
        break;
      }

      v16 = (v17 + 1);
      v14 = v15 - v16;
      if (v15 - v16 < 8)
      {
        goto LABEL_38;
      }
    }

    if (v17 != v15 && v17 - v7 != -1 && sub_668F0C(a1 + 3, "{Shield2}"))
    {
      v18 = sub_668F0C(a1 + 3, "{Shield2}");
      if (!v18)
      {
        goto LABEL_76;
      }

      sub_67FDE8(a2, (v18 + 13));
    }
  }

LABEL_38:
  v19 = HIBYTE(v34);
  v20 = __p;
  if (v34 >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  if (v34 < 0)
  {
    v19 = __p[1];
  }

  if (v19 >= 13)
  {
    v22 = v21 + v19;
    v23 = v21;
    while (1)
    {
      v24 = memchr(v23, 84, v19 - 12);
      if (!v24)
      {
        goto LABEL_57;
      }

      if (*v24 == 0x6853647261776F54 && *(v24 + 5) == 0x31646C6569685364)
      {
        break;
      }

      v23 = (v24 + 1);
      v19 = v22 - v23;
      if (v22 - v23 < 13)
      {
        goto LABEL_57;
      }
    }

    if (v24 != v22 && v24 - v21 != -1 && sub_668F0C(a1 + 3, "{TowardShield1}"))
    {
      v26 = sub_668F0C(a1 + 3, "{TowardShield1}");
      if (!v26)
      {
        goto LABEL_76;
      }

      sub_67FDE8(a2, (v26 + 13));
    }
  }

LABEL_57:
  v27 = HIBYTE(v34);
  if (v34 < 0)
  {
    v20 = __p[0];
    v27 = __p[1];
  }

  if (v27 > 13)
  {
    v28 = v20 + v27;
    v29 = v20;
    while (1)
    {
      v30 = memchr(v29, 95, v27 - 13);
      if (!v30)
      {
        goto LABEL_73;
      }

      if (*v30 == 0x53647261776F545FLL && *(v30 + 6) == 0x32646C6569685364)
      {
        break;
      }

      v29 = (v30 + 1);
      v27 = v28 - v29;
      if (v28 - v29 < 14)
      {
        goto LABEL_73;
      }
    }

    if (v30 != v28 && v30 - v20 != -1 && sub_668F0C(a1 + 3, "{TowardShield2}"))
    {
      v32 = sub_668F0C(a1 + 3, "{TowardShield2}");
      if (v32)
      {
        sub_67FDE8(a2, (v32 + 13));
        goto LABEL_73;
      }

LABEL_76:
      sub_49EC("unordered_map::at: key not found");
    }
  }

LABEL_73:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_67FDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_67FEE0(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_67FDE8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_686C54(a1, a2);
    a1[1] = result;
  }

  else
  {
    *v3 = *a2;
    if (*(a2 + 31) < 0)
    {
      v6 = a2;
      sub_325C((v3 + 8), *(a2 + 8), *(a2 + 16));
      a2 = v6;
    }

    else
    {
      v4 = *(a2 + 8);
      *(v3 + 24) = *(a2 + 24);
      *(v3 + 8) = v4;
    }

    if (*(a2 + 55) < 0)
    {
      sub_325C((v3 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v7 = *(a2 + 32);
      *(v3 + 48) = *(a2 + 48);
      *(v3 + 32) = v7;
    }

    result = v3 + 56;
    a1[1] = v3 + 56;
    a1[1] = v3 + 56;
  }

  return result;
}

void sub_67FEB0(_Unwind_Exception *exception_object)
{
  if (*(v3 + 31) < 0)
  {
    operator delete(*v2);
    *(v1 + 8) = v3;
    _Unwind_Resume(exception_object);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

void ***sub_67FEE0(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 6));
        }
      }

      else if (*(v3 - 25) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 7;
      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_67FF70(__int128 **a1, __int128 **a2)
{
  sub_67F384(a1, &v49);
  sub_67F384(a2, &v47);
  sub_67FA00(a1, &v45);
  sub_67FA00(a2, &v43);
  v4 = v50;
  v5 = v49;
  if (v49 != v50 && v47 != v48)
  {
    *v40 = 0u;
    *v41 = 0u;
    v42 = 1065353216;
    *__p = 0u;
    *v38 = 0u;
    v39 = 1065353216;
    do
    {
      sub_23914(v40, v5, v5);
      sub_23914(__p, v5 + 16, (v5 + 16));
      v5 += 19;
LABEL_8:
      ;
    }

    while (v5 != v4);
    v8 = v47;
    v9 = v48;
    if (v47 == v48)
    {
LABEL_13:
      v13 = v45;
      v14 = v46;
      if (v45 == v46 || (v15 = v44, v43 == v44))
      {
LABEL_15:
        v6 = 0;
        v16 = v38[0];
        if (!v38[0])
        {
          goto LABEL_24;
        }

        goto LABEL_34;
      }

      while (1)
      {
        v17 = v43;
        if (v43 != v15)
        {
          while (!sub_734A5C(v17, v13))
          {
            v17 += 56;
            if (v17 == v15)
            {
              v17 = v15;
              break;
            }
          }

          v15 = v44;
          if (v17 != v44)
          {
            break;
          }
        }

        v13 += 56;
        if (v13 == v14)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      while (1)
      {
        sub_23914(v40, v8, v8);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v11 = v8 + 16;
        sub_23914(__p, v11, v11);
        if ((v12 & 1) == 0)
        {
          break;
        }

        v8 = v11 + 3;
        if (v8 == v9)
        {
          goto LABEL_13;
        }
      }
    }

    v6 = 1;
    v16 = v38[0];
    if (!v38[0])
    {
LABEL_24:
      v18 = __p[0];
      __p[0] = 0;
      if (v18)
      {
        operator delete(v18);
      }

      v19 = v41[0];
      if (v41[0])
      {
        do
        {
          v24 = *v19;
          if (*(v19 + 39) < 0)
          {
            operator delete(v19[2]);
          }

          operator delete(v19);
          v19 = v24;
        }

        while (v24);
      }

      v20 = v40[0];
      v40[0] = 0;
      if (v20)
      {
        operator delete(v20);
      }

      v7 = v43;
      goto LABEL_30;
    }

    do
    {
LABEL_34:
      v23 = *v16;
      if (*(v16 + 39) < 0)
      {
        operator delete(v16[2]);
      }

      operator delete(v16);
      v16 = v23;
    }

    while (v23);
    goto LABEL_24;
  }

  v6 = 0;
  v7 = v43;
  if (v45 != v46 && v43 != v44)
  {
    *v40 = 0u;
    *v41 = 0u;
    v42 = 1065353216;
    *__p = 0u;
    *v38 = 0u;
    v39 = 1065353216;
    goto LABEL_8;
  }

LABEL_30:
  if (!v7)
  {
    goto LABEL_46;
  }

  v21 = v44;
  v22 = v7;
  if (v44 != v7)
  {
    while (1)
    {
      if (*(v21 - 1) < 0)
      {
        operator delete(*(v21 - 3));
        if ((*(v21 - 25) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

LABEL_43:
        operator delete(*(v21 - 6));
        v21 -= 7;
        if (v21 == v7)
        {
LABEL_44:
          v22 = v43;
          break;
        }
      }

      else
      {
        if (*(v21 - 25) < 0)
        {
          goto LABEL_43;
        }

LABEL_40:
        v21 -= 7;
        if (v21 == v7)
        {
          goto LABEL_44;
        }
      }
    }
  }

  v44 = v7;
  operator delete(v22);
LABEL_46:
  v25 = v45;
  if (!v45)
  {
    goto LABEL_56;
  }

  v26 = v46;
  v27 = v45;
  if (v46 != v45)
  {
    while (1)
    {
      if (*(v26 - 1) < 0)
      {
        operator delete(*(v26 - 3));
        if ((*(v26 - 25) & 0x80000000) == 0)
        {
          goto LABEL_50;
        }

LABEL_53:
        operator delete(*(v26 - 6));
        v26 -= 7;
        if (v26 == v25)
        {
LABEL_54:
          v27 = v45;
          break;
        }
      }

      else
      {
        if (*(v26 - 25) < 0)
        {
          goto LABEL_53;
        }

LABEL_50:
        v26 -= 7;
        if (v26 == v25)
        {
          goto LABEL_54;
        }
      }
    }
  }

  v46 = v25;
  operator delete(v27);
LABEL_56:
  v28 = v47;
  if (!v47)
  {
    goto LABEL_73;
  }

  v29 = v48;
  v30 = v47;
  if (v48 != v47)
  {
    while (1)
    {
      if (*(v29 - 1) < 0)
      {
        operator delete(*(v29 - 3));
        if (*(v29 - 33) < 0)
        {
          goto LABEL_67;
        }

LABEL_63:
        if ((*(v29 - 57) & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

LABEL_68:
        operator delete(*(v29 - 10));
        if (*(v29 - 97) < 0)
        {
          goto LABEL_59;
        }

LABEL_69:
        v31 = v29 - 19;
        if ((*(v29 - 129) & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

LABEL_70:
        operator delete(*v31);
        v29 = v31;
        if (v31 == v28)
        {
LABEL_71:
          v30 = v47;
          break;
        }
      }

      else
      {
        if ((*(v29 - 33) & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

LABEL_67:
        operator delete(*(v29 - 7));
        if (*(v29 - 57) < 0)
        {
          goto LABEL_68;
        }

LABEL_64:
        if ((*(v29 - 97) & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

LABEL_59:
        operator delete(*(v29 - 15));
        v31 = v29 - 19;
        if (*(v29 - 129) < 0)
        {
          goto LABEL_70;
        }

LABEL_60:
        v29 = v31;
        if (v31 == v28)
        {
          goto LABEL_71;
        }
      }
    }
  }

  v48 = v28;
  operator delete(v30);
LABEL_73:
  v32 = v49;
  if (v49)
  {
    v33 = v50;
    v34 = v49;
    if (v50 == v49)
    {
LABEL_89:
      v50 = v32;
      operator delete(v34);
      return v6;
    }

    while (1)
    {
      if (*(v33 - 1) < 0)
      {
        operator delete(*(v33 - 3));
        if (*(v33 - 33) < 0)
        {
          goto LABEL_84;
        }

LABEL_80:
        if ((*(v33 - 57) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_85:
        operator delete(*(v33 - 10));
        if (*(v33 - 97) < 0)
        {
          goto LABEL_76;
        }

LABEL_86:
        v35 = v33 - 19;
        if ((*(v33 - 129) & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

LABEL_87:
        operator delete(*v35);
        v33 = v35;
        if (v35 == v32)
        {
LABEL_88:
          v34 = v49;
          goto LABEL_89;
        }
      }

      else
      {
        if ((*(v33 - 33) & 0x80000000) == 0)
        {
          goto LABEL_80;
        }

LABEL_84:
        operator delete(*(v33 - 7));
        if (*(v33 - 57) < 0)
        {
          goto LABEL_85;
        }

LABEL_81:
        if ((*(v33 - 97) & 0x80000000) == 0)
        {
          goto LABEL_86;
        }

LABEL_76:
        operator delete(*(v33 - 15));
        v35 = v33 - 19;
        if (*(v33 - 129) < 0)
        {
          goto LABEL_87;
        }

LABEL_77:
        v33 = v35;
        if (v35 == v32)
        {
          goto LABEL_88;
        }
      }
    }
  }

  return v6;
}

void sub_680434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_23D9C(&a9);
  sub_23D9C(&a15);
  sub_67FEE0(&a20);
  JUMPOUT(0x68045CLL);
}

uint64_t sub_680484(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  result = sub_5F0850(a1, a2);
  *(result + 72) = a3;
  v7 = a4[1];
  *(result + 80) = *a4;
  *(result + 88) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 96) = 0;
  *(result + 98) = 0;
  return result;
}

uint64_t sub_6804D0(uint64_t a1, const void **a2, uint64_t a3, int a4, uint64_t *a5)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 95) = 0;
  sub_67E35C(a1, a2);
  if (a1 + 24 != a3)
  {
    *(a1 + 56) = *(a3 + 32);
    sub_5FA69C(a1 + 24, *(a3 + 16), 0);
  }

  *(a1 + 72) = a4;
  v9 = *a5;
  v10 = a5[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 88);
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return a1;
}

void sub_680628(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  sub_53A58C(v1);
  _Unwind_Resume(a1);
}

void sub_680648(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  if (v3 != a2)
  {
    *(a1 + 56) = *(a2 + 32);
    sub_5FA69C(v3, *(a2 + 16), 0);
  }
}

void sub_680678(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 88);
  *(a1 + 80) = v3;
  *(a1 + 88) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t sub_680710(uint64_t a1, const void ***a2, uint64_t a3, int a4, uint64_t *a5)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 95) = 0;
  if (a1 != a2)
  {
    sub_74300(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  if (a1 + 24 != a3)
  {
    *(a1 + 56) = *(a3 + 32);
    sub_5FA69C(a1 + 24, *(a3 + 16), 0);
  }

  *(a1 + 72) = a4;
  v9 = *a5;
  v10 = a5[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 88);
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return a1;
}

void sub_680890(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  sub_53A58C(v1);
  _Unwind_Resume(a1);
}

void sub_680958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1F1A8(&a9);
  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  sub_53A58C(v9);
  _Unwind_Resume(a1);
}

void sub_680998(uint64_t a1, const void **a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 95) = 0;
  sub_67E35C(a1, a2);
  if (a1 + 24 != a3)
  {
    *(a1 + 56) = *(a3 + 32);
    sub_5FA69C(a1 + 24, *(a3 + 16), 0);
  }

  *(a1 + 72) = a4;
  operator new();
}

void sub_680ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1F1A8(&a9);
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v13);
  sub_1F1A8(v10);
  sub_53A58C(v9);
  _Unwind_Resume(a1);
}

void sub_680B0C(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  sub_53A58C(v1);
  _Unwind_Resume(a1);
}

void sub_680B30(int a1@<W0>, uint64_t a2@<X8>)
{
  v13 = 0u;
  v14 = 0u;
  *v11 = 0u;
  *__p = 0u;
  DWORD2(v14) = 1065353216;
  v15 = 1;
  v3 = sub_5F0850(a2, v11);
  *(v3 + 72) = a1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 95) = 0;
  v4 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p[1];
  __p[1] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v11[0];
  if (v11[0])
  {
    v8 = v11[1];
    v9 = v11[0];
    if (v11[1] != v11[0])
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
      v9 = v11[0];
    }

    v11[1] = v7;
    operator delete(v9);
  }
}

void sub_680C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  sub_1F1A8(&a9);
  sub_53A58C(&a11);
  _Unwind_Resume(a1);
}

void sub_680C2C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_74300(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 56) = *(a2 + 56);
    sub_5FA69C(a1 + 24, *(a2 + 40), 0);
  }

  *(a1 + 64) = *(a2 + 64);
}

void sub_680CB0(__int128 **a1, char *a2)
{
  v3 = a1;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_353184(&__p, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v4 = __p;
  v5 = v33;
  if (__p != v33)
  {
    v28 = v3;
    while (1)
    {
      if (*(v4 + 23) < 0)
      {
        sub_325C(&v31, *v4, v4[1]);
      }

      else
      {
        v6 = *v4;
        v31.__r_.__value_.__r.__words[2] = v4[2];
        *&v31.__r_.__value_.__l.__data_ = v6;
      }

      v30 = 0;
      __s[0] = 0;
      size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v31;
      }

      else
      {
        v8 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      v9 = a2[23];
      if (v9 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if (v9 >= 0)
      {
        v11 = a2[23];
      }

      else
      {
        v11 = *(a2 + 1);
      }

      if (v11)
      {
        if (size >= v11)
        {
          v12 = v8 + size;
          v13 = *v10;
          v14 = v8;
          do
          {
            v15 = size - v11;
            if (v15 == -1)
            {
              break;
            }

            v16 = memchr(v14, v13, v15 + 1);
            if (!v16)
            {
              break;
            }

            v17 = v16;
            if (!memcmp(v16, v10, v11))
            {
              if (v17 != v12)
              {
                v18 = v17 - v8;
                if (v17 - v8 != -1)
                {
                  goto LABEL_27;
                }
              }

              break;
            }

            v14 = (v17 + 1);
            size = v12 - (v17 + 1);
          }

          while (size >= v11);
        }
      }

      else
      {
        v18 = 0;
LABEL_27:
        std::string::replace(&v31, v18, v11, __s, 0);
        if (v30 < 0)
        {
          operator delete(*__s);
        }
      }

      v19 = v36;
      if (v36 >= v37)
      {
        v36 = sub_1CEE8(&v35, &v31);
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_325C(v36, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
          v36 = v19 + 24;
          if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_3;
          }

LABEL_34:
          operator delete(v31.__r_.__value_.__l.__data_);
          goto LABEL_3;
        }

        v20 = *&v31.__r_.__value_.__l.__data_;
        *(v36 + 2) = *(&v31.__r_.__value_.__l + 2);
        *v19 = v20;
        v36 = v19 + 24;
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_34;
        }
      }

LABEL_3:
      v4 += 3;
      if (v4 == v5)
      {
        v4 = __p;
        v3 = v28;
        break;
      }
    }
  }

  if (v4)
  {
    v21 = v33;
    v22 = v4;
    if (v33 != v4)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v4);
      v22 = __p;
    }

    v33 = v4;
    operator delete(v22);
  }

  if (&v35 != v3)
  {
    sub_74300(v3, v35, v36, 0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3));
  }

  v24 = v35;
  if (v35)
  {
    v25 = v36;
    v26 = v35;
    if (v36 != v35)
    {
      do
      {
        v27 = *(v25 - 1);
        v25 -= 3;
        if (v27 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v24);
      v26 = v35;
    }

    v36 = v24;
    operator delete(v26);
  }
}

void sub_680F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_680F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, void **a26, uint64_t a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a23);
  sub_1A104(&a26);
  _Unwind_Resume(a1);
}

void sub_681008(__int128 **a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_353184(a2, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
}

uint64_t sub_681038@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 88);
  *a2 = *(result + 80);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_681054(_BYTE *a1)
{
  if (a1[96])
  {
    return 1;
  }

  if (a1[97])
  {
    return 1;
  }

  return a1[98] & 1;
}

BOOL sub_6810A0(__int128 **a1)
{
  v1 = *a1;
  if (*a1 == a1[1])
  {
    HIBYTE(v10) = 0;
    LOBYTE(__p[0]) = 0;
    v4 = 0;
    goto LABEL_13;
  }

  if (*(v1 + 23) < 0)
  {
    v7 = a1;
    sub_325C(__p, *v1, *(v1 + 1));
    a1 = v7;
    v8 = HIBYTE(v10);
    v4 = SHIBYTE(v10);
    if (v10 < 0)
    {
      v8 = __p[1];
    }

    if (!v8)
    {
LABEL_13:
      v5 = 0;
      if (v4 < 0)
      {
        goto LABEL_14;
      }

      return v5;
    }
  }

  else
  {
    v2 = *v1;
    v10 = *(v1 + 2);
    *__p = v2;
    v3 = HIBYTE(v10);
    v4 = SHIBYTE(v10);
    if (v10 < 0)
    {
      v3 = *(&v2 + 1);
    }

    if (!v3)
    {
      goto LABEL_13;
    }
  }

  v5 = *(a1 + 18) != 0;
  if ((v4 & 0x80000000) == 0)
  {
    return v5;
  }

LABEL_14:
  operator delete(__p[0]);
  return v5;
}

BOOL sub_681188(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    return 0;
  }

  v2 = *v1;
  if (*v1 == v1[1])
  {
    HIBYTE(v11) = 0;
    LOBYTE(__p[0]) = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (*(v2 + 23) < 0)
  {
    v7 = a1;
    sub_325C(__p, *v2, *(v2 + 1));
    a1 = v7;
    v8 = HIBYTE(v11);
    v5 = SHIBYTE(v11);
    if (v11 < 0)
    {
      v8 = __p[1];
    }

    if (!v8)
    {
LABEL_15:
      result = 0;
      if (v5 < 0)
      {
        goto LABEL_16;
      }

      return result;
    }
  }

  else
  {
    v3 = *v2;
    v11 = *(v2 + 2);
    *__p = v3;
    v4 = HIBYTE(v11);
    v5 = SHIBYTE(v11);
    if (v11 < 0)
    {
      v4 = *(&v3 + 1);
    }

    if (!v4)
    {
      goto LABEL_15;
    }
  }

  result = *(a1 + 72) != 0;
  if (v5 < 0)
  {
LABEL_16:
    v9 = result;
    operator delete(__p[0]);
    return v9;
  }

  return result;
}

uint64_t sub_68128C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    return 1;
  }

  v3 = *v1;
  if (*v1 == v1[1])
  {
    HIBYTE(v14) = 0;
    LOBYTE(__p[0]) = 0;
    v6 = 0;
    goto LABEL_18;
  }

  if ((*(v3 + 23) & 0x80000000) == 0)
  {
    v4 = *v3;
    v14 = *(v3 + 2);
    *__p = v4;
    v5 = HIBYTE(v14);
    v6 = SHIBYTE(v14);
    if (v14 < 0)
    {
      v5 = *(&v4 + 1);
    }

    if (!v5)
    {
      goto LABEL_18;
    }

LABEL_10:
    v8 = *(a1 + 72) != 0;
    if (v6 < 0)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  sub_325C(__p, *v3, *(v3 + 1));
  v12 = HIBYTE(v14);
  v6 = SHIBYTE(v14);
  if (v14 < 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_18:
  v8 = 0;
  if (v6 < 0)
  {
LABEL_19:
    operator delete(__p[0]);
    if (!v8)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_11:
  if (!v8)
  {
    return 1;
  }

LABEL_12:
  v9 = *(a1 + 72);
  v10 = v9 > 0x13;
  v11 = 0xAC000u >> v9;
  if (v10)
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

BOOL sub_6813B0(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 - 5 >= 2)
  {
    v7 = v1 > 0x10;
    v8 = (1 << v1) & 0x10300;
    return !v7 && v8 != 0;
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  if (*v2 == v2[1])
  {
    HIBYTE(v22) = 0;
    LOBYTE(__p[0]) = 0;
    v6 = 0;
    goto LABEL_33;
  }

  if ((*(v3 + 23) & 0x80000000) == 0)
  {
    v4 = *v3;
    v22 = *(v3 + 2);
    *__p = v4;
    v5 = HIBYTE(v22);
    v6 = SHIBYTE(v22);
    if (v22 < 0)
    {
      v5 = *(&v4 + 1);
    }

    if (!v5)
    {
      goto LABEL_33;
    }

LABEL_17:
    v10 = *(a1 + 72) != 0;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v18 = a1;
  sub_325C(__p, *v3, *(v3 + 1));
  a1 = v18;
  v19 = HIBYTE(v22);
  v6 = SHIBYTE(v22);
  if (v22 < 0)
  {
    v19 = __p[1];
  }

  if (v19)
  {
    goto LABEL_17;
  }

LABEL_33:
  v10 = 0;
  if (v6 < 0)
  {
LABEL_18:
    v11 = a1;
    operator delete(__p[0]);
    a1 = v11;
  }

LABEL_19:
  if (v10)
  {
    v10 = -1431655765 * ((*(a1 + 8) - *a1) >> 3);
    v13 = *(a1 + 80);
    v12 = *(a1 + 88);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v13)
    {
      do
      {
        v15 = *v13;
        v14 = v13[1];
        v17 = v13 + 10;
        v13 = v13[10];
        v16 = v17[1];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        v10 = -1431655765 * ((v14 - v15) >> 3) * v10;
        v12 = v16;
      }

      while (v13);
    }

    else
    {
      v16 = v12;
    }

    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }

  return v10;
}

void *sub_6815F8(uint64_t a1)
{
  v1 = *(a1 + 72) - 17;
  if (v1 > 2)
  {
    return &unk_229D970;
  }

  else
  {
    return *(&off_266C050 + v1);
  }
}

void *sub_681624(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

BOOL sub_68163C(void *a1)
{
  if (a1[2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (*a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return *a1 >= a1[1];
}

float64x2_t sub_681678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  result = vnegq_f64(v4);
  *(a1 + 24) = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_681698(uint64_t result, uint64_t a2)
{
  if ((*(result + 48) & 1) == 0)
  {
    *(result + 48) = 1;
  }

  *(result + 40) = a2;
  return result;
}

int8x16_t sub_6816B0(uint64_t a1)
{
  v1 = (a1 + 16);
  v2 = vld1q_dup_f64(v1);
  result = vbicq_s8(vsubq_s64(v2, *a1), vcgtq_s64(*a1, v2));
  *(a1 + 24) = result;
  return result;
}

BOOL sub_6816DC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  return v3 != 0x7FFFFFFFFFFFFFFFLL && v3 >= v1;
}

void ****sub_681738(void ****a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_5ED0A8(a1, i))
    {
      i -= 13;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

void *sub_6817B4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[6] = a3;
  result[7] = a4;
  result[5] = a2;
  return result;
}

uint64_t sub_6817C0(uint64_t result, uint64_t a2)
{
  if ((*(result + 88) & 1) == 0)
  {
    *(result + 88) = 1;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_6817E8(void *a1, uint64_t a2)
{
  v7 = a1[1];
  v5 = a1[2];
    ;
  }

  a1[2] = v7;
  if (v7 >= a1[3])
  {
    result = sub_5CE200(i, a2);
    a1[2] = result;
  }

  else
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 24) = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    *(v7 + 48) = *(a2 + 48);
    *(v7 + 64) = *(a2 + 64);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(v7 + 72) = 0;
    *(v7 + 80) = 0;
    *(v7 + 88) = 0;
    *(v7 + 72) = *(a2 + 72);
    v8 = *(a2 + 96);
    *(v7 + 88) = *(a2 + 88);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(v7 + 96) = v8;
    v9 = *(a2 + 104);
    *(v7 + 108) = *(a2 + 108);
    *(v7 + 104) = v9;
    v10 = *(a2 + 112);
    *(v7 + 128) = *(a2 + 128);
    *(v7 + 112) = v10;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    v11 = *(a2 + 136);
    *(v7 + 152) = *(a2 + 152);
    *(v7 + 136) = v11;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 136) = 0;
    result = v7 + 160;
    a1[2] = v7 + 160;
  }

  return result;
}

__n128 sub_681930(void *a1, __n128 *a2)
{
  v4 = (a1 + 1);
  v5 = a1[1];
  if (v5)
  {
    v6 = a1[2];
    v7 = v5;
    if (v6 != v5)
    {
      do
      {
        v6 = sub_53A868(v6 - 160);
      }

      while (v6 != v5);
      v7 = *v4;
    }

    a1[2] = v5;
    operator delete(v7);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_6819B8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 152) = *(a2 + 4);
  *(a1 + 136) = v5;
  *(a1 + 120) = v4;
  if ((a1 + 120) != a2)
  {
    sub_4D88D0((a1 + 160), *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 4);
    sub_4D88D0((a1 + 184), *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 4);
  }

  result = *(a2 + 88);
  v7 = *(a2 + 120);
  *(a1 + 224) = *(a2 + 104);
  *(a1 + 240) = v7;
  *(a1 + 208) = result;
  return result;
}

__n128 sub_681A38(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[17].n128_u64[0] = a2[1].n128_u64[0];
  a1[16] = result;
  return result;
}

uint64_t sub_681A64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 304);
  if (v3 >= *(a1 + 312))
  {
    result = sub_686F34((a1 + 296), a2);
    *(a1 + 304) = result;
  }

  else
  {
    sub_5F0850(*(a1 + 304), a2);
    *(v3 + 72) = *(a2 + 72);
    v5 = *(a2 + 88);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 88) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a2 + 96);
    *(v3 + 98) = *(a2 + 98);
    *(v3 + 96) = v6;
    result = v3 + 104;
    *(a1 + 304) = v3 + 104;
    *(a1 + 304) = v3 + 104;
  }

  return result;
}

void sub_681B08(uint64_t a1, int *a2)
{
  sub_680B30(*a2, v20);
  v3 = *(a1 + 304);
  if (v3 >= *(a1 + 312))
  {
    v9 = sub_6872EC(a1 + 296, v20);
    v10 = *(&v29 + 1);
    *(a1 + 304) = v11;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10, v9);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = *v20;
    v20[0] = 0;
    v20[1] = 0;
    v4 = __p;
    __p = 0;
    *(v3 + 16) = v21;
    *(v3 + 24) = v4;
    v5 = v24;
    *(v3 + 32) = v23;
    v21 = 0;
    v23 = 0;
    *(v3 + 40) = v5;
    v6 = v25;
    *(v3 + 48) = v25;
    *(v3 + 56) = v26;
    if (v6)
    {
      v7 = v5[1];
      v8 = *(v3 + 32);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v7 >= v8)
        {
          v7 %= v8;
        }
      }

      else
      {
        v7 &= v8 - 1;
      }

      v4[v7] = v3 + 40;
      v24 = 0;
      v25 = 0;
    }

    *(v3 + 64) = v27;
    *(v3 + 72) = v28;
    *(v3 + 80) = v29;
    v29 = 0uLL;
    v12 = v31;
    *(v3 + 96) = v30;
    *(v3 + 98) = v12;
    *(a1 + 304) = v3 + 104;
  }

  v13 = v24;
  if (v24)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20[0];
  if (v20[0])
  {
    v17 = v20[1];
    v18 = v20[0];
    if (v20[1] != v20[0])
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20[0];
    }

    v20[1] = v16;
    operator delete(v18);
  }
}

char *sub_681CEC(uint64_t a1, uint64_t a2)
{
  result = (a1 + 328);
  if (result != a2)
  {
    return sub_146EC(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  }

  return result;
}

__n128 sub_681D40@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 56);
  return result;
}

uint64_t sub_681DB8(void *a1)
{
  if (a1[7] == 0x7FFFFFFFFFFFFFFFLL || (v1 = a1[5], v1 == 0x7FFFFFFFFFFFFFFFLL) || v1 < a1[6])
  {
    v1 = a1[13];
    if (v1 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_681DF4(uint64_t a1)
{
  if (*(a1 + 112) <= 0x7FFFFFFFFFFFFFFEuLL)
  {
    return *(a1 + 112);
  }

  else
  {
    return 0;
  }
}

BOOL sub_681E18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1 >= 0x37;
  v3 = v1 - 55;
  return v2 && v3 <= 0x22 && ((1 << v3) & 0x7FFFFF80CLL) == 0;
}

BOOL sub_681EB0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  do
  {
    v3 = sub_4D1F6C(v1);
    if (v3)
    {
      break;
    }

    v1 += 20;
  }

  while (v1 != v2);
  return !v3;
}

uint64_t sub_681F18(uint64_t a1, uint64_t a2)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = vnegq_f64(v4);
  *(a1 + 40) = v5;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x7FFFFFFF;
  *(a1 + 104) = v5;
  *(a1 + 120) = 0x7FFFFFFF;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0x7FFFFFFF;
  *(a1 + 132) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 152) = 0x8000000080000000;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 212) = 0x8000000080000000;
  *(a1 + 220) = 0x7FFFFFFF;
  *(a1 + 232) = 0;
  *(a1 + 240) = xmmword_2297C00;
  *(a1 + 256) = 0x7FFFFFFF;
  *(a1 + 260) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xBFF0000000000000;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 356) = -1;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 376) = 0;
  *(a1 + 432) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 440) = 1065353216;
  *(a1 + 448) = 1;
  v6 = (a1 + 456);
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = 1065353216;
  *(a1 + 520) = 1;
  sub_64B998(a1 + 528);
  sub_64B998(a1 + 688);
  *(a1 + 848) = 0;
  v7 = *(a1 + 304);
  if (v7 >= *(a1 + 312))
  {
    v10 = sub_686F34((a1 + 296), a2);
  }

  else
  {
    sub_5F0850(*(a1 + 304), a2);
    *(v7 + 72) = *(a2 + 72);
    v8 = *(a2 + 88);
    *(v7 + 80) = *(a2 + 80);
    *(v7 + 88) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(a2 + 96);
    *(v7 + 98) = *(a2 + 98);
    *(v7 + 96) = v9;
    v10 = v7 + 104;
    *(a1 + 304) = v7 + 104;
  }

  *(a1 + 304) = v10;
  if (v6 != a2)
  {
    sub_74300(v6, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 512) = *(a2 + 56);
    sub_5FA69C(a1 + 480, *(a2 + 40), 0);
  }

  *(a1 + 520) = *(a2 + 64);
  return a1;
}

void sub_682104(_Unwind_Exception *a1)
{
  *(v1 + 304) = v3;
  sub_649AE4((v1 + 848));
  sub_53A868(v1 + 688);
  sub_53A868(v1 + 528);
  sub_53A58C(v2);
  sub_53A58C((v1 + 384));
  sub_55D550(v1);
  _Unwind_Resume(a1);
}

void sub_68215C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 456);
  if (v4 != a2)
  {
    sub_74300(v4, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 512) = *(a2 + 56);
    sub_5FA69C(a1 + 480, *(a2 + 40), 0);
  }

  *(a1 + 520) = *(a2 + 64);
}

void sub_6821CC(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 384);
  if (v4 != a2)
  {
    sub_74300(v4, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 440) = *(a2 + 56);
    sub_5FA69C(a1 + 408, *(a2 + 40), 0);
  }

  *(a1 + 448) = *(a2 + 64);
}

void *sub_682344@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[57];
  if (v2 == result[58])
  {
    *(a2 + 23) = 0;
    *a2 = 0;
  }

  else if (*(v2 + 23) < 0)
  {
    return sub_325C(a2, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    *(a2 + 16) = *(v2 + 2);
    *a2 = v3;
  }

  return result;
}