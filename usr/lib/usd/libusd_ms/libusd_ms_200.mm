void sub_29B1C5F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **p_p, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  p_p = &__p;
  sub_29A0176E4(&p_p);
  __p = &a20;
  sub_29A0176E4(&__p);
  _Unwind_Resume(a1);
}

void sub_29B1C6018(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *&v6 = *MEMORY[0x29EDCA608];
  if (*(a1 + 71) < 0)
  {
    sub_29A008D14(__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *__p = *(a1 + 48);
    v5 = *(a1 + 64);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_29A280C48(a2, __p, &v6, 1uLL);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29AAE1404(a1, __p);
  if (__p[0])
  {
    sub_29A070BA0(a2);
  }

  if (__p[1])
  {
    sub_29A014BEC(__p[1]);
  }
}

uint64_t sub_29B1C6188(uint64_t a1, std::string *a2)
{
  v9 = 1;
  v4 = sub_29B1C6234(a1);
  sub_29A008E78(__p, "Nodedef should not have a type but an explicit output");
  sub_29B1DA93C(a1, !v4, &v9, a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = sub_29B1DA6C4(a1, a2);
  return (v5 & v9);
}

void sub_29B1C6218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1C6234(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC70[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1C6298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1C62B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29AAC5BF8(a1);
  v5 = v4[23];
  if (v5 >= 0)
  {
    v6 = v4[23];
  }

  else
  {
    v6 = *(v4 + 1);
  }

  v7 = *(a2 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v6 == v7)
  {
    if (v5 < 0)
    {
      v4 = *v4;
    }

    v9 = v8 >= 0 ? a2 : *a2;
    if (!memcmp(v4, v9, v6))
    {
      return 1;
    }
  }

  if (!sub_29AAC5C84(a1))
  {
    return 0;
  }

  v10 = *(a2 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  return !v10;
}

void sub_29B1C635C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&v3, (a1 + 8));
  sub_29B1D74B0(v3, a2);
  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29B1C63AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1C63C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_29AAD84E0(a1);
  v5 = 0;
  v6 = 0;
  sub_29B1C6430(a1, v4, &v5, a2);
  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29B1C6418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1C6430(uint64_t a1@<X0>, std::string *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  if (*a3)
  {
    v8 = a3[1];
    v14 = *a3;
    v15 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29B1DA1A4(a1, &v14);
    v7 = v14;
  }

  sub_29AAE1890(a1, a2, __p);
  sub_29AAC0094(v7, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12)
  {
    v9 = v13;
    *a4 = v12;
    a4[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29AAC0094(v14, a2, a4);
  }

  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v15)
  {
    sub_29A014BEC(v15);
  }
}

void sub_29B1C6518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1C655C(uint64_t a1, std::string *a2)
{
  v9 = 1;
  v4 = sub_29B1C6608(a1);
  sub_29A008E78(__p, "Implementation elements do not support version strings");
  sub_29B1DA93C(a1, !v4, &v9, a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = sub_29B1DA6C4(a1, a2);
  return (v5 & v9);
}

void sub_29B1C65EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1C6608(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE90[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1C666C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B1C6688@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29B1C63C4(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_29B1C66C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29B1D8ACC(a1, &v18);
  v4 = v18;
  v7 = sub_29B1F31FC(v5, v6);
  sub_29B1C6830(v4, v7, &v19);
  if (*(&v18 + 1))
  {
    sub_29A014BEC(*(&v18 + 1));
  }

  v8 = v19;
  for (i = v20; v8 != i; v8 += 2)
  {
    v10 = *v8;
    v11 = v8[1];
    *&v18 = *v8;
    *(&v18 + 1) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = sub_29B1C696C(v10);
    v13 = v12[23];
    if (v13 >= 0)
    {
      v14 = v12[23];
    }

    else
    {
      v14 = *(v12 + 1);
    }

    v15 = *(a1 + 71);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a1 + 56);
    }

    if (v14 == v15)
    {
      if (v13 < 0)
      {
        v12 = *v12;
      }

      if (v16 >= 0)
      {
        v17 = (a1 + 48);
      }

      else
      {
        v17 = *(a1 + 48);
      }

      if (!memcmp(v12, v17, v14))
      {
        sub_29A017F80(a2, &v18);
      }
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }
  }

  *&v18 = &v19;
  sub_29A0176E4(&v18);
}

void sub_29B1C67E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0176E4(va);
  _Unwind_Resume(a1);
}

void sub_29B1C6830(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D83D0(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          sub_29A017F80(a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29B1C6934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

char *sub_29B1C696C(uint64_t a1)
{
  sub_29A008E78(__p, qword_2A14FDC18);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B1C69D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1C69F8(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void sub_29B1C6A24(uint64_t a1)
{
  v1 = sub_29AD9703C(a1);

  operator delete(v1);
}

void sub_29B1C6A4C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A8877BC((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  sub_29B1D8110(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  sub_29A014BEC(v7);
}

void sub_29B1C6AD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29B1C6AE8(void *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v18 = v10 - a2;
      v19 = (v10 - a2) >> 4;
      if (v19 >= a5)
      {
        sub_29A1D5390(a1, a2, a1[1], &a2[2 * a5]);
        v20 = &v7[2 * a5];
      }

      else
      {
        a1[1] = sub_29B1C6CCC(a1, (a3 + v18), a4, a1[1]);
        if (v19 < 1)
        {
          return v5;
        }

        sub_29A1D5390(a1, v5, v10, &v5[2 * a5]);
        v20 = (v7 + v18);
      }

      sub_29A4274B8(v32, v7, v20, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    v34 = a1;
    if (v15)
    {
      v17 = sub_29A017BD4(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[16 * v16];
    v33 = &v17[16 * v15];
    v22 = &v21[2 * a5];
    v23 = v21;
    do
    {
      *v23 = *v7;
      v24 = v7[1];
      v23[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v23 += 2;
      v7 += 2;
    }

    while (v23 != v22);
    memcpy(v22, v5, a1[1] - v5);
    v25 = *a1;
    v26 = v22 + a1[1] - v5;
    a1[1] = v5;
    v27 = v5 - v25;
    v28 = v21 - (v5 - v25);
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    a1[1] = v26;
    v30 = a1[2];
    a1[2] = v33;
    v32[2] = v29;
    v33 = v30;
    v32[0] = v29;
    v32[1] = v29;
    sub_29A017C0C(v32);
    return v21;
  }

  return v5;
}

void *sub_29B1C6CCC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29B1C6D54(v7);
  return v4;
}

uint64_t sub_29B1C6D54(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

uint64_t sub_29B1C6D90@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>)
{
  v6 = 0;
  v7 = 0;
  v4 = sub_29B1F31FC(a1, a3);
  sub_29B1D60FC(&v6, v4, a2);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return (*(**a2 + 88))();
}

void sub_29B1C6E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B1C6E30(void *a1, uint64_t *a2, __int128 *a3)
{
  v5 = a2[1];
  v10 = *a2;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, off_2A14FDD08[0]);
  sub_29AD9852C(a1, &v10, __p, a3);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }

  *a1 = &unk_2A20C6110;
  v6 = operator new(0xD0uLL);
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 850045863;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 65) = 0u;
  *(v6 + 30) = 1065353216;
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 40) = 1065353216;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 50) = 1065353216;
  a1[34] = v6;
  return a1;
}

uint64_t sub_29B1C6F70(void *a1)
{
  *a1 = &unk_2A20C6110;
  sub_29B1D645C(a1 + 34, 0);

  return sub_29AD9703C(a1);
}

void sub_29B1C6FCC(void *a1)
{
  *a1 = &unk_2A20C6110;
  sub_29B1D645C(a1 + 34, 0);
  v2 = sub_29AD9703C(a1);

  operator delete(v2);
}

void sub_29B1C702C(void *a1)
{
  sub_29A014C58(&v9, a1 + 1);
  v3 = v9;
  v2 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = a1[31];
  a1[30] = v3;
  a1[31] = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
    v2 = v10;
  }

  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29B1D87A8(&v9, a1);
  v5 = a1[34];
  v7 = v9;
  v6 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v5[1];
  *v5 = v7;
  v5[1] = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  (*(*a1 + 40))(a1);
  sub_29B1EB414(a1, 1, 38);
}

void sub_29B1C710C(uint64_t a1, const std::string *a2)
{
  sub_29A008E78(__p, off_2A14FDC08[0]);
  sub_29B1D9334(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B1C716C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1C7188(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    if (v3 != v4)
    {
      while (1)
      {
        v8 = *v3;
        v7 = v3[1];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = *(v8 + 47);
        if (v9 < 0)
        {
          v9 = *(v8 + 32);
        }

        if (!v9)
        {
          exception = __cxa_allocate_exception(0x20uLL);
          std::operator+<char>();
          sub_29AAD6B14(exception, v30);
          __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
        }

        sub_29AAE1890(v8, (v8 + 48), v30);
        v10 = sub_29A8877BC(a1 + 12, v30);
        if (!v10)
        {
          break;
        }

        v11 = v10[5];
        v12 = v10[6];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v11)
        {
          goto LABEL_14;
        }

LABEL_46:
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30[0]);
          if (!v7)
          {
            goto LABEL_51;
          }

LABEL_50:
          sub_29A014BEC(v7);
          goto LABEL_51;
        }

        if (v7)
        {
          goto LABEL_50;
        }

LABEL_51:
        v3 += 2;
        if (v3 == v4)
        {
          return;
        }
      }

      v12 = 0;
LABEL_14:
      if (SHIBYTE(v31) < 0)
      {
        sub_29A008D14(__p, v30[0], v30[1]);
      }

      else
      {
        *__p = *v30;
        v27 = v31;
      }

      sub_29B1D94C4(a1, (v8 + 24), __p, &v28);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }

      v13 = v28;
      v24 = v8;
      v25 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29B1D9ADC(v13, &v24);
      if (v25)
      {
        sub_29A014BEC(v25);
      }

      if (!sub_29B1C7514(v28) && sub_29B1C7514(*a2))
      {
        v14 = v28;
        v15 = sub_29B1C7610(*a2);
        sub_29B1C7594(v14, v15);
      }

      if (!sub_29AAE0AF0(v28) && sub_29AAE0AF0(*a2))
      {
        v16 = v28;
        v17 = sub_29AAE0B70(*a2);
        sub_29B1C769C(v16, v17);
      }

      if (!sub_29AAC2CF0(v28) && sub_29AAC2CF0(*a2))
      {
        v18 = v28;
        v19 = sub_29AAC1F6C(*a2);
        sub_29AD98C08(v18, v19);
      }

      if (!sub_29AD96898(v28) && sub_29AD96898(*a2))
      {
        v20 = v28;
        v21 = sub_29AAE1BE0(*a2);
        sub_29B1C7718(v20, v21);
      }

      if ((SHIBYTE(v28[3].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v28[3].__r_.__value_.__l.__size_)
        {
          goto LABEL_44;
        }
      }

      else if (*(&v28[3].__r_.__value_.__s + 23))
      {
        goto LABEL_44;
      }

      v22 = *a2;
      if ((*(*a2 + 95) & 0x8000000000000000) != 0)
      {
        if (!v22[3].__r_.__value_.__l.__size_)
        {
          goto LABEL_44;
        }
      }

      else if (!*(*a2 + 95))
      {
LABEL_44:
        if (v29)
        {
          sub_29A014BEC(v29);
        }

        goto LABEL_46;
      }

      std::string::operator=(v28 + 3, v22 + 3);
      goto LABEL_44;
    }
  }
}

void sub_29B1C745C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    sub_29A014BEC(v24);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1C7514(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC40[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1C7578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1C7594(uint64_t a1, const std::string *a2)
{
  sub_29A008E78(__p, off_2A14FDC40[0]);
  sub_29B1D9334(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B1C75F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B1C7610(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC40[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B1C7680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1C769C(uint64_t a1, const std::string *a2)
{
  sub_29A008E78(__p, off_2A14FDC48[0]);
  sub_29B1D9334(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B1C76FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1C7718(uint64_t a1, const std::string *a2)
{
  sub_29A008E78(__p, off_2A14FDC60[0]);
  sub_29B1D9334(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B1C7778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1C7794@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  sub_29B1DA4E4(a2, &v18);
  *(&v22 + 1) = 0;
  v14 = v18;
  v15 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v16, 0, sizeof(v16));
  v3 = sub_29B1D3464(v16, v20, v21, 0xAAAAAAAAAAAAAAABLL * (v21 - v20));
  v17 = v22;
  v5 = sub_29B1F19B8(v3, v4);
  v6 = v5;
  v7 = v5[1];
  v11[0] = *v5;
  v11[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v12, 0, sizeof(v12));
  sub_29B1D3464(v12, v5[2], v5[3], 0xAAAAAAAAAAAAAAABLL * ((v5[3] - v5[2]) >> 3));
  v13 = *(v6 + 5);
  while (!sub_29B1D35F8(&v14, v11))
  {
    v8 = v14;
    v9 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(v8 + 95) & 0x8000000000000000) != 0)
    {
      if (!*(v8 + 80))
      {
        goto LABEL_14;
      }

LABEL_13:
      sub_29A095658(a1, (v8 + 72), v8 + 72);
      goto LABEL_14;
    }

    if (*(v8 + 95))
    {
      goto LABEL_13;
    }

LABEL_14:
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    sub_29B1F19D8(&v14);
  }

  sub_29B1D366C(v11);
  sub_29B1D366C(&v14);
  return sub_29B1D366C(&v18);
}

void sub_29B1C78F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  sub_29B1D366C(va);
  sub_29B1D366C(v17 - 88);
  sub_29A019EE8(v16, *(v16 + 8));
  _Unwind_Resume(a1);
}

unint64_t sub_29B1C7978(uint64_t a1)
{
  if (!sub_29B1C6608(a1))
  {
    return 0x2600000001;
  }

  return sub_29B1EB570(a1);
}

const void **sub_29B1C79C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_29B1C7A74(*(a1 + 272));
  result = sub_29A8877BC((*(a1 + 272) + 88), a2);
  if (result)
  {
    v7 = sub_29A5DAB7C((*(a1 + 272) + 88), a2);
    if (!v7)
    {
      sub_29A0F26E4("unordered_map::at: key not found");
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v8 = v7[5];
    v9 = v7[6];

    return sub_29B1D6524(a3, v8, v9, (v9 - v8) >> 4);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_29B1C7A74(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  if ((*(a1 + 80) & 1) == 0)
  {
    sub_29B1D3740(a1 + 88);
    sub_29B1D3740(a1 + 128);
    sub_29B1D3740(a1 + 168);
    v2 = *(a1 + 8);
    if (v2)
    {
      v2 = std::__shared_weak_count::lock(v2);
      v3 = v2;
      if (v2)
      {
        v2 = *a1;
      }
    }

    else
    {
      v3 = 0;
    }

    sub_29B1DA4E4(v2, &v53);
    if (v3)
    {
      sub_29A014BEC(v3);
    }

    *(&v57 + 1) = 0;
    v49 = v53;
    v50 = v54;
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memset(v51, 0, sizeof(v51));
    v4 = sub_29B1D3464(v51, v55, v56, 0xAAAAAAAAAAAAAAABLL * (v56 - v55));
    v52 = v57;
    v6 = sub_29B1F19B8(v4, v5);
    v7 = v6;
    v8 = v6[1];
    v46[0] = *v6;
    v46[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    memset(v47, 0, sizeof(v47));
    sub_29B1D3464(v47, v6[2], v6[3], 0xAAAAAAAAAAAAAAABLL * ((v6[3] - v6[2]) >> 3));
    v48 = *(v7 + 5);
    while (1)
    {
      if (sub_29B1D35F8(&v49, v46))
      {
        sub_29B1D366C(v46);
        sub_29B1D366C(&v49);
        sub_29B1D366C(&v53);
        *(a1 + 80) = 1;
        break;
      }

      v10 = v49;
      v9 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A008E78(&__p, off_2A14FDE60[0]);
      v11 = sub_29A8877BC((v10 + 160), &__p);
      if (v11)
      {
        v13 = (v11 + 5);
      }

      else
      {
        v13 = sub_29B1F31FC(0, v12);
      }

      if (v45 < 0)
      {
        operator delete(__p);
      }

      sub_29A008E78(&__p, off_2A14FDE68[0]);
      v14 = sub_29A8877BC((v10 + 160), &__p);
      if (v14)
      {
        v16 = (v14 + 5);
      }

      else
      {
        v16 = sub_29B1F31FC(0, v15);
      }

      if (v45 < 0)
      {
        operator delete(__p);
      }

      sub_29A008E78(&__p, off_2A14FDC08[0]);
      v17 = sub_29A8877BC((v10 + 160), &__p);
      if (v17)
      {
        v19 = (v17 + 5);
      }

      else
      {
        v19 = sub_29B1F31FC(0, v18);
      }

      if (v45 < 0)
      {
        operator delete(__p);
      }

      sub_29A008E78(&__p, off_2A14FDE80[0]);
      v20 = sub_29A8877BC((v10 + 160), &__p);
      if (v20)
      {
        v22 = (v20 + 5);
      }

      else
      {
        v22 = sub_29B1F31FC(0, v21);
      }

      if (v45 < 0)
      {
        operator delete(__p);
      }

      if ((v13[23] & 0x8000000000000000) != 0)
      {
        if (*(v13 + 1))
        {
LABEL_38:
          sub_29B1D7560(v10, &v42);
          if (v42)
          {
            sub_29AAE1890(v42, v13, &__p);
            p_p = &__p;
            v23 = sub_29B1D379C(a1 + 88, &__p, &unk_29B76607D, &p_p);
            sub_29A017F80(v23 + 5, &v42);
            goto LABEL_47;
          }

          goto LABEL_49;
        }
      }

      else if (v13[23])
      {
        goto LABEL_38;
      }

      if ((v16[23] & 0x8000000000000000) != 0)
      {
        if (!*(v16 + 1))
        {
          goto LABEL_51;
        }
      }

      else if (!v16[23])
      {
        goto LABEL_51;
      }

      sub_29B1D7560(v10, &v42);
      if (v42)
      {
        sub_29AAE1890(v42, v16, &__p);
        p_p = &__p;
        v24 = sub_29B1D379C(a1 + 88, &__p, &unk_29B76607D, &p_p);
        sub_29A017F80(v24 + 5, &v42);
LABEL_47:
        if (v45 < 0)
        {
          operator delete(__p);
        }
      }

LABEL_49:
      if (*(&v42 + 1))
      {
        sub_29A014BEC(*(&v42 + 1));
      }

LABEL_51:
      if ((v19[23] & 0x8000000000000000) != 0)
      {
        if (!*(v19 + 1))
        {
          goto LABEL_60;
        }
      }

      else if (!v19[23])
      {
        goto LABEL_60;
      }

      sub_29B1D7F00(v10, &v42);
      if (v42)
      {
        sub_29AAE1890(v42, v19, &__p);
        p_p = &__p;
        v25 = sub_29B1D3A0C(a1 + 128, &__p, &unk_29B76607D, &p_p);
        sub_29A017F80(v25 + 5, &v42);
        if (v45 < 0)
        {
          operator delete(__p);
        }
      }

      if (*(&v42 + 1))
      {
        sub_29A014BEC(*(&v42 + 1));
      }

LABEL_60:
      if ((v22[23] & 0x8000000000000000) != 0)
      {
        if (!*(v22 + 1))
        {
          goto LABEL_89;
        }
      }

      else if (!v22[23])
      {
        goto LABEL_89;
      }

      sub_29B1D74B0(v10, &v42);
      v28 = v42;
      if (v42)
      {
        v29 = sub_29B1F31FC(v26, v27);
        if (sub_29AAC05D4(v28, v29))
        {
          sub_29AAE1890(v42, v22, &__p);
          p_p = &__p;
          v30 = sub_29B1D3C7C(a1 + 168, &__p, &unk_29B76607D, &p_p);
          sub_29A017F80(v30 + 5, &v42);
          if (v45 < 0)
          {
            operator delete(__p);
          }
        }

        sub_29B1D7B90(v42, &p_p);
        if (p_p)
        {
          v31 = sub_29B1D36B4(p_p);
          v32 = v31;
          v33 = v31[23];
          if ((v33 & 0x80u) != 0)
          {
            v33 = *(v31 + 1);
          }

          if (v33)
          {
            sub_29B1D87A8(&__p, p_p);
            sub_29AADEFE4(__p, v32, &v38);
            if (v44)
            {
              sub_29A014BEC(v44);
            }

            if (v38)
            {
              sub_29AAE1890(v42, v22, &__p);
              v36 = &__p;
              v34 = sub_29B1D3C7C(a1 + 168, &__p, &unk_29B76607D, &v36);
              v36 = v38;
              v37 = v39;
              if (v39)
              {
                atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              sub_29A01729C(v34 + 5, &v36);
              if (v37)
              {
                sub_29A014BEC(v37);
              }

              if (v45 < 0)
              {
                operator delete(__p);
              }
            }

            if (v39)
            {
              sub_29A014BEC(v39);
            }
          }

          else
          {
            sub_29AAE1890(v42, v22, &__p);
            v38 = &__p;
            v35 = sub_29B1D3C7C(a1 + 168, &__p, &unk_29B76607D, &v38);
            sub_29A017F80(v35 + 5, &v42);
            if (v45 < 0)
            {
              operator delete(__p);
            }
          }
        }

        if (v41)
        {
          sub_29A014BEC(v41);
        }
      }

      if (*(&v42 + 1))
      {
        sub_29A014BEC(*(&v42 + 1));
      }

LABEL_89:
      if (v9)
      {
        sub_29A014BEC(v9);
      }

      sub_29B1F19D8(&v49);
    }
  }

  std::mutex::unlock((a1 + 16));
}

void sub_29B1C8060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a24)
  {
    sub_29A014BEC(a24);
  }

  sub_29B1D366C(&a30);
  sub_29B1D366C(v32 - 152);
  std::mutex::unlock((v31 + 16));
  _Unwind_Resume(a1);
}

void sub_29B1C81F4(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  v8 = sub_29B1F31FC(a1, a2);
  sub_29B1D3EEC(a1, v8, &v20);
  v10 = v20;
  v9 = v21;
  if (v20 == v21)
  {
    v12 = 0;
    goto LABEL_21;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    v14 = *v10;
    v13 = v10[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1C83D4(v14, &__p);
    v15 = sub_29B1E62F8(a3, &__p, 0);
    v16 = v15;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v16 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((v15 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_29B1D4134(v14, a2, &__p);
    if (__p.__r_.__value_.__r.__words[0])
    {
      sub_29B1C8518(__p.__r_.__value_.__l.__data_, &v18);
      v17 = *(&v18 + 1);
      v12 = v18;
      v18 = 0uLL;
      if (v11)
      {
        sub_29A014BEC(v11);
        if (*(&v18 + 1))
        {
          sub_29A014BEC(*(&v18 + 1));
        }
      }

      v11 = v17;
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(__p.__r_.__value_.__l.__size_);
    }

LABEL_16:
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    v10 += 2;
  }

  while (v10 != v9);
  a4[1] = v11;
LABEL_21:
  *a4 = v12;
  __p.__r_.__value_.__r.__words[0] = &v20;
  sub_29A0176E4(&__p);
}

void sub_29B1C8358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char *__p, std::__shared_weak_count *a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  *a10 = v21;
  a10[1] = v19;
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (v20)
  {
    sub_29A014BEC(v20);
  }

  __p = &a19;
  sub_29A0176E4(&__p);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  _Unwind_Resume(a1);
}

void sub_29B1C83D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29B1D4028(a1);
  if (v4)
  {
    v6 = sub_29B1F31FC(v4, v5);
    sub_29B1DAB28(a1, v6, &v15);
    v7 = v15;
    v8 = sub_29B1D40A8(a1);
    sub_29A008E78(__p, off_2A14FDEC8[0]);
    (*(*v7 + 16))(v7, v8, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  else
  {
    v9 = sub_29B1F31FC(v4, v5);
    if (v9[23] < 0)
    {
      v11 = *v9;
      v12 = *(v9 + 1);

      sub_29A008D14(a2, v11, v12);
    }

    else
    {
      v10 = *v9;
      *(a2 + 16) = *(v9 + 2);
      *a2 = v10;
    }
  }
}

void sub_29B1C84E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_29A014BEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1C8518(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  if (sub_29B1D41D0(a1))
  {
    v4 = sub_29AAC0680(a1);
    v5 = (*(*a1 + 64))(a1);

    sub_29B1FB24C(v4, v5, a2);
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
  }
}

const void **sub_29B1C85B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_29B1C7A74(*(a1 + 272));
  result = sub_29A8877BC((*(a1 + 272) + 128), a2);
  if (result)
  {
    v7 = sub_29A5DAB7C((*(a1 + 272) + 128), a2);
    if (!v7)
    {
      sub_29A0F26E4("unordered_map::at: key not found");
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v8 = v7[5];
    v9 = v7[6];

    return sub_29B1D666C(a3, v8, v9, (v9 - v8) >> 4);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

const void **sub_29B1C865C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_29B1C7A74(*(a1 + 272));
  result = sub_29A8877BC((*(a1 + 272) + 168), a2);
  if (result)
  {
    v7 = sub_29A5DAB7C((*(a1 + 272) + 168), a2);
    if (!v7)
    {
      sub_29A0F26E4("unordered_map::at: key not found");
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v8 = v7[5];
    v9 = v7[6];

    return sub_29B1D66F4(a3, v8, v9, (v9 - v8) >> 4);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t sub_29B1C8708(uint64_t a1, std::string *a2)
{
  v16 = 1;
  v4 = (*(*a1 + 72))(a1);
  v6 = v4 != 1 || SHIDWORD(v4) > 37;
  v7 = v4 >= 1 && v6;
  sub_29A008E78(__p, "Unsupported document version");
  sub_29B1DA93C(a1, v7, &v16, a2, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = (*(*a1 + 72))(a1);
  v10 = v8 != 1 || SHIDWORD(v8) < 39;
  v11 = v8 <= 1 && v10;
  sub_29A008E78(__p, "Future document version");
  sub_29B1DA93C(a1, v11, &v16, a2, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = sub_29B1DA6C4(a1, a2);
  return (v12 & v16);
}

void sub_29B1C884C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1C886C(void *a1)
{
  v940[7] = *MEMORY[0x29EDCA608];
  v1 = (*(*a1 + 72))(a1);
  v3 = v1 >= 1 && v1 == 1;
  if (!v3)
  {
    return;
  }

  v4 = HIDWORD(v1);
  if (SHIDWORD(v1) > 37)
  {
    return;
  }

  v775 = v1;
  if (v4 == 22)
  {
    sub_29B1DA4E4(a1, &v938);
    v940[1] = 0;
    *&v934.__r_.__value_.__l.__data_ = *&v938.__r_.__value_.__l.__data_;
    if (v938.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v938.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v934.__r_.__value_.__r.__words[2] = 0;
    v935 = 0;
    v936 = 0;
    v5 = sub_29B1D3464(&v934.__r_.__value_.__r.__words[2], v938.__r_.__value_.__r.__words[2], v939, 0xAAAAAAAAAAAAAAABLL * ((v939 - v938.__r_.__value_.__r.__words[2]) >> 3));
    v937 = *v940;
    v7 = sub_29B1F19B8(v5, v6);
    v8 = v7;
    v9 = v7[1];
    v930.__r_.__value_.__r.__words[0] = *v7;
    v930.__r_.__value_.__l.__size_ = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v931 = 0;
    v930.__r_.__value_.__r.__words[2] = 0;
    v932 = 0;
    sub_29B1D3464(&v930.__r_.__value_.__r.__words[2], v7[2], v7[3], 0xAAAAAAAAAAAAAAABLL * ((v7[3] - v7[2]) >> 3));
    v933 = *(v8 + 5);
    while (1)
    {
      if (sub_29B1D35F8(&v934, &v930))
      {
        sub_29B1D366C(&v930);
        sub_29B1D366C(&v934);
        v1 = sub_29B1D366C(&v938);
        LODWORD(v4) = 23;
        break;
      }

      v10 = *&v934.__r_.__value_.__l.__data_;
      if (v934.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v934.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      sub_29A008E78(__p, off_2A14FDC70[0]);
      v11 = sub_29A8877BC((v10 + 160), __p);
      if (v11)
      {
        v13 = (v11 + 5);
      }

      else
      {
        v13 = sub_29B1F31FC(0, v12);
      }

      v14 = v13[23];
      if (v14 < 0)
      {
        if (*(v13 + 1) != 6)
        {
LABEL_30:
          v16 = 0;
          goto LABEL_31;
        }

        v13 = *v13;
      }

      else if (v14 != 6)
      {
        goto LABEL_30;
      }

      v16 = *v13 == 1952671094 && *(v13 + 2) == 29295;
LABEL_31:
      if (SBYTE7(v874) < 0)
      {
        operator delete(__p[0]);
        if (!v16)
        {
          goto LABEL_36;
        }
      }

      else if (!v16)
      {
        goto LABEL_36;
      }

      sub_29A008E78(__p, off_2A14FDC70[0]);
      v17 = sub_29B1F6784();
      sub_29B1D9334(v10, __p, v17);
      if ((SBYTE7(v874) & 0x80000000) == 0)
      {
LABEL_36:
        if (!*(&v10 + 1))
        {
          goto LABEL_38;
        }

LABEL_37:
        sub_29A014BEC(*(&v10 + 1));
        goto LABEL_38;
      }

      operator delete(__p[0]);
      if (*(&v10 + 1))
      {
        goto LABEL_37;
      }

LABEL_38:
      sub_29B1F19D8(&v934);
    }
  }

  if (v4 != 23)
  {
    goto LABEL_92;
  }

  sub_29B1DA4E4(a1, &v938);
  v940[1] = 0;
  *&v934.__r_.__value_.__l.__data_ = *&v938.__r_.__value_.__l.__data_;
  if (v938.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v938.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  v934.__r_.__value_.__r.__words[2] = 0;
  v935 = 0;
  v936 = 0;
  v18 = sub_29B1D3464(&v934.__r_.__value_.__r.__words[2], v938.__r_.__value_.__r.__words[2], v939, 0xAAAAAAAAAAAAAAABLL * ((v939 - v938.__r_.__value_.__r.__words[2]) >> 3));
  v937 = *v940;
  v20 = sub_29B1F19B8(v18, v19);
  v21 = v20;
  v22 = v20[1];
  v930.__r_.__value_.__r.__words[0] = *v20;
  v930.__r_.__value_.__l.__size_ = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v931 = 0;
  v930.__r_.__value_.__r.__words[2] = 0;
  v932 = 0;
  sub_29B1D3464(&v930.__r_.__value_.__r.__words[2], v20[2], v20[3], 0xAAAAAAAAAAAAAAABLL * ((v20[3] - v20[2]) >> 3));
  v933 = *(v21 + 5);
  while (!sub_29B1D35F8(&v934, &v930))
  {
    v23 = *&v934.__r_.__value_.__l.__data_;
    if (v934.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v934.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v24 = (v23 + 24);
    v25 = *(v23 + 47);
    if (v25 < 0)
    {
      if (*(v23 + 32) != 6)
      {
        goto LABEL_60;
      }

      v24 = *v24;
    }

    else if (v25 != 6)
    {
      goto LABEL_60;
    }

    v26 = *v24;
    v27 = *(v24 + 2);
    if (v26 == 1684105331 && v27 == 29285)
    {
      sub_29A008E78(__p, "shadername");
      v33 = sub_29A8877BC((v23 + 160), __p);
      if (SBYTE7(v874) < 0)
      {
        operator delete(__p[0]);
      }

      if (v33)
      {
        sub_29A008E78(__p, off_2A14FDC08[0]);
        sub_29A008E78(&__src, "shadername");
        v34 = sub_29A8877BC((v23 + 160), &__src);
        if (v34)
        {
          v36 = (v34 + 5);
        }

        else
        {
          v36 = sub_29B1F31FC(0, v35);
        }

        sub_29B1D9334(v23, __p, v36);
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        if (SBYTE7(v874) < 0)
        {
          operator delete(__p[0]);
        }

        sub_29A008E78(__p, "shadername");
        sub_29B1D93E8(v23, __p);
        if (SBYTE7(v874) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

LABEL_60:
    sub_29A008E78(&__src, "assign");
    sub_29B1D16EC(a1, &__src, __p);
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    v29 = __p[0];
    v30 = __p[1];
    while (v29 != v30)
    {
      v31 = *v29;
      v32 = v29[1];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        v927 = v32;
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v927 = 0;
      }

      v926 = v31;
      sub_29A008E78(&__src, "materialassign");
      sub_29B1D9990(v23, &v926, &__src, &v928);
      if (v929)
      {
        sub_29A014BEC(v929);
      }

      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__src.__r_.__value_.__l.__data_);
      }

      if (v927)
      {
        sub_29A014BEC(v927);
      }

      if (v32)
      {
        sub_29A014BEC(v32);
      }

      v29 += 2;
    }

    __src.__r_.__value_.__r.__words[0] = __p;
    sub_29A0176E4(&__src);
    if (*(&v23 + 1))
    {
      sub_29A014BEC(*(&v23 + 1));
    }

    sub_29B1F19D8(&v934);
  }

  sub_29B1D366C(&v930);
  sub_29B1D366C(&v934);
  v1 = sub_29B1D366C(&v938);
  LODWORD(v4) = 24;
LABEL_92:
  if (v4 != 24)
  {
    goto LABEL_120;
  }

  sub_29B1DA4E4(a1, &v938);
  v940[1] = 0;
  *&v934.__r_.__value_.__l.__data_ = *&v938.__r_.__value_.__l.__data_;
  if (v938.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v938.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  v934.__r_.__value_.__r.__words[2] = 0;
  v935 = 0;
  v936 = 0;
  v37 = sub_29B1D3464(&v934.__r_.__value_.__r.__words[2], v938.__r_.__value_.__r.__words[2], v939, 0xAAAAAAAAAAAAAAABLL * ((v939 - v938.__r_.__value_.__r.__words[2]) >> 3));
  v937 = *v940;
  v39 = sub_29B1F19B8(v37, v38);
  v40 = v39;
  v41 = v39[1];
  v930.__r_.__value_.__r.__words[0] = *v39;
  v930.__r_.__value_.__l.__size_ = v41;
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

  v931 = 0;
  v930.__r_.__value_.__r.__words[2] = 0;
  v932 = 0;
  sub_29B1D3464(&v930.__r_.__value_.__r.__words[2], v39[2], v39[3], 0xAAAAAAAAAAAAAAABLL * ((v39[3] - v39[2]) >> 3));
  v933 = *(v40 + 5);
  while (2)
  {
    v42 = sub_29B1D35F8(&v934, &v930);
    if (!v42)
    {
      v44 = *&v934.__r_.__value_.__l.__data_;
      if (v934.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v934.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v45 = sub_29B1F31FC(v42, v43);
      if (!sub_29AAC1EC0(v44, v45))
      {
        goto LABEL_114;
      }

      sub_29A008E78(__p, "graphname");
      v46 = sub_29A8877BC((v44 + 160), __p);
      v47 = v46;
      if (SBYTE7(v874) < 0)
      {
        operator delete(__p[0]);
        if (!v47)
        {
          goto LABEL_114;
        }
      }

      else if (!v46)
      {
        goto LABEL_114;
      }

      sub_29A008E78(__p, "opgraph");
      sub_29A008E78(&__src, "graphname");
      v48 = sub_29A8877BC((v44 + 160), &__src);
      if (v48)
      {
        v50 = (v48 + 5);
      }

      else
      {
        v50 = sub_29B1F31FC(0, v49);
      }

      sub_29B1D9334(v44, __p, v50);
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__src.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v874) < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A008E78(__p, "graphname");
      sub_29B1D93E8(v44, __p);
      if (SBYTE7(v874) < 0)
      {
        operator delete(__p[0]);
        if (*(&v44 + 1))
        {
LABEL_115:
          sub_29A014BEC(*(&v44 + 1));
        }
      }

      else
      {
LABEL_114:
        if (*(&v44 + 1))
        {
          goto LABEL_115;
        }
      }

      sub_29B1F19D8(&v934);
      continue;
    }

    break;
  }

  sub_29B1D366C(&v930);
  sub_29B1D366C(&v934);
  v1 = sub_29B1D366C(&v938);
  LODWORD(v4) = 25;
LABEL_120:
  if (v4 != 25)
  {
    goto LABEL_151;
  }

  sub_29B1DA4E4(a1, &v938);
  v940[1] = 0;
  *&v934.__r_.__value_.__l.__data_ = *&v938.__r_.__value_.__l.__data_;
  if (v938.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v938.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  v934.__r_.__value_.__r.__words[2] = 0;
  v935 = 0;
  v936 = 0;
  v51 = sub_29B1D3464(&v934.__r_.__value_.__r.__words[2], v938.__r_.__value_.__r.__words[2], v939, 0xAAAAAAAAAAAAAAABLL * ((v939 - v938.__r_.__value_.__r.__words[2]) >> 3));
  v937 = *v940;
  v53 = sub_29B1F19B8(v51, v52);
  v54 = v53;
  v55 = v53[1];
  v930.__r_.__value_.__r.__words[0] = *v53;
  v930.__r_.__value_.__l.__size_ = v55;
  if (v55)
  {
    atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
  }

  v931 = 0;
  v930.__r_.__value_.__r.__words[2] = 0;
  v932 = 0;
  sub_29B1D3464(&v930.__r_.__value_.__r.__words[2], v53[2], v53[3], 0xAAAAAAAAAAAAAAABLL * ((v53[3] - v53[2]) >> 3));
  v933 = *(v54 + 5);
  while (2)
  {
    if (!sub_29B1D35F8(&v934, &v930))
    {
      v56 = *&v934.__r_.__value_.__l.__data_;
      if (v934.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v934.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v57 = (v56 + 24);
      v58 = *(v56 + 47);
      if (v58 < 0)
      {
        if (*(v56 + 32) == 8)
        {
          v57 = *v57;
          goto LABEL_134;
        }
      }

      else
      {
        if (v58 != 8)
        {
          goto LABEL_147;
        }

LABEL_134:
        if (*v57 == 0x746E6174736E6F63)
        {
          sub_29A008E78(__p, "color");
          v59 = sub_29A8877BC((v56 + 96), __p);
          if (v59)
          {
            v61 = v59[5];
            v60 = v59[6];
            if (v60)
            {
              atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v60 = 0;
            v61 = 0;
          }

          if (SBYTE7(v874) < 0)
          {
            operator delete(__p[0]);
            if (!v61)
            {
              goto LABEL_145;
            }
          }

          else if (!v61)
          {
LABEL_145:
            if (v60)
            {
              sub_29A014BEC(v60);
            }

            goto LABEL_147;
          }

          sub_29A008E78(__p, "value");
          sub_29B1D8568(v61, __p);
          if (SBYTE7(v874) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_145;
        }
      }

LABEL_147:
      if (*(&v56 + 1))
      {
        sub_29A014BEC(*(&v56 + 1));
      }

      sub_29B1F19D8(&v934);
      continue;
    }

    break;
  }

  sub_29B1D366C(&v930);
  sub_29B1D366C(&v934);
  v1 = sub_29B1D366C(&v938);
  LODWORD(v4) = 26;
LABEL_151:
  if (v4 != 26)
  {
    goto LABEL_509;
  }

  sub_29B1DA4E4(a1, &v938);
  v940[1] = 0;
  *&v934.__r_.__value_.__l.__data_ = *&v938.__r_.__value_.__l.__data_;
  if (v938.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v938.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  v934.__r_.__value_.__r.__words[2] = 0;
  v935 = 0;
  v936 = 0;
  v62 = sub_29B1D3464(&v934.__r_.__value_.__r.__words[2], v938.__r_.__value_.__r.__words[2], v939, 0xAAAAAAAAAAAAAAABLL * ((v939 - v938.__r_.__value_.__r.__words[2]) >> 3));
  v937 = *v940;
  v64 = sub_29B1F19B8(v62, v63);
  v65 = v64;
  v66 = v64[1];
  v930.__r_.__value_.__r.__words[0] = *v64;
  v930.__r_.__value_.__l.__size_ = v66;
  if (v66)
  {
    atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
  }

  v931 = 0;
  v930.__r_.__value_.__r.__words[2] = 0;
  v932 = 0;
  sub_29B1D3464(&v930.__r_.__value_.__r.__words[2], v64[2], v64[3], 0xAAAAAAAAAAAAAAABLL * ((v64[3] - v64[2]) >> 3));
  v933 = *(v65 + 5);
  while (2)
  {
    if (!sub_29B1D35F8(&v934, &v930))
    {
      v67 = *&v934.__r_.__value_.__l.__data_;
      if (v934.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v934.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      __p[1] = 0;
      __p[0] = 0;
      *&v874 = 0;
      sub_29B1D677C(__p, *(v67 + 136), *(v67 + 144), (*(v67 + 144) - *(v67 + 136)) >> 4);
      v68 = __p[0];
      v69 = __p[1];
LABEL_161:
      if (v68 == v69)
      {
        __src.__r_.__value_.__r.__words[0] = __p;
        sub_29A0176E4(&__src);
        if (*(&v67 + 1))
        {
          sub_29A014BEC(*(&v67 + 1));
        }

        sub_29B1F19D8(&v934);
        continue;
      }

      v70 = *v68;
      v71 = v68[1];
      if (v71)
      {
        atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v72 = (v70 + 24);
      if (*(v70 + 47) < 0)
      {
        if (*(v70 + 32) == 7 && **v72 == 1919381615 && *(*v72 + 3) == 1752195442)
        {
          goto LABEL_203;
        }

        if (*(v70 + 32) != 6 || (**v72 == 1684105331 ? (v76 = *(*v72 + 4) == 29285) : (v76 = 0), !v76))
        {
          if (*(v70 + 32) != 9 || (**v72 == 0x6572726564616873 ? (v77 = *(*v72 + 8) == 102) : (v77 = 0), !v77))
          {
            if (*(v70 + 32) == 9)
            {
              v72 = *v72;
              goto LABEL_191;
            }

            goto LABEL_294;
          }

          goto LABEL_227;
        }
      }

      else
      {
        v73 = *(v70 + 47);
        if (v73 != 6)
        {
          if (v73 != 7)
          {
            if (v73 != 9)
            {
              goto LABEL_294;
            }

            if (*v72 != 0x6572726564616873 || *(v70 + 32) != 102)
            {
LABEL_191:
              v78 = *v72;
              v79 = v72[8];
              if (v78 != 0x6574656D61726170 || v79 != 114)
              {
                goto LABEL_294;
              }

              sub_29A008E78(&__src, off_2A14FDC70[0]);
              v81 = sub_29A8877BC((v70 + 160), &__src);
              if (v81)
              {
                v83 = (v81 + 5);
              }

              else
              {
                v83 = sub_29B1F31FC(0, v82);
              }

              v100 = v83[23];
              if (v100 < 0)
              {
                if (*(v83 + 1) != 11)
                {
                  goto LABEL_258;
                }

                v83 = *v83;
              }

              else if (v100 != 11)
              {
LABEL_258:
                v102 = 0;
                goto LABEL_259;
              }

              v102 = *v83 == 0x6E6870617267706FLL && *(v83 + 3) == 0x65646F6E68706172;
LABEL_259:
              if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__src.__r_.__value_.__l.__data_);
                if (v102)
                {
                  goto LABEL_263;
                }
              }

              else
              {
                if (!v102)
                {
                  goto LABEL_294;
                }

LABEL_263:
                v103 = sub_29B1F31FC(v83, v82);
                v104 = sub_29AAD7980(v67, v103);
                if (v104)
                {
                  v918 = v70;
                  v919 = v71;
                  if (v71)
                  {
                    atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  sub_29A008E78(&__src, "input");
                  sub_29B1D9990(v67, &v918, &__src, &v867);
                  sub_29B1D7C40(v867.__r_.__value_.__l.__data_, &v869);
                  if (v867.__r_.__value_.__l.__size_)
                  {
                    sub_29A014BEC(v867.__r_.__value_.__l.__size_);
                  }

                  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__src.__r_.__value_.__l.__data_);
                  }

                  if (v919)
                  {
                    sub_29A014BEC(v919);
                  }

                  v106 = v869.__r_.__value_.__r.__words[0];
                  sub_29A008E78(&__src, "value");
                  v107 = sub_29A8877BC((v106 + 160), &__src);
                  if (v107)
                  {
                    v109 = (v107 + 5);
                  }

                  else
                  {
                    v109 = sub_29B1F31FC(0, v108);
                  }

                  sub_29B1D1828(v106, v109);
                  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__src.__r_.__value_.__l.__data_);
                  }

                  v113 = v869.__r_.__value_.__r.__words[0];
                  sub_29A008E78(&__src, "value");
                  sub_29B1D93E8(v113, &__src);
                  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__src.__r_.__value_.__l.__data_);
                  }

                  (*(*v869.__r_.__value_.__l.__data_ + 80))(&__src);
                  v114 = __src.__r_.__value_.__r.__words[0];
                  if (__src.__r_.__value_.__l.__size_)
                  {
                    sub_29A014BEC(__src.__r_.__value_.__l.__size_);
                  }

                  v115 = v869.__r_.__value_.__r.__words[0];
                  if (v114)
                  {
                    (*(*v869.__r_.__value_.__l.__data_ + 80))(&__src, v869.__r_.__value_.__r.__words[0]);
                    v116 = (*(*__src.__r_.__value_.__l.__data_ + 64))(__src.__r_.__value_.__r.__words[0]);
                    sub_29AD96918(v115, v116);
                    if (__src.__r_.__value_.__l.__size_)
                    {
                      sub_29A014BEC(__src.__r_.__value_.__l.__size_);
                    }
                  }

                  else
                  {
                    v117 = sub_29B1F5A18();
                    sub_29AD96918(v115, v117);
                  }

                  goto LABEL_292;
                }

                v110 = sub_29B1F31FC(v104, v105);
                if (sub_29B1D18A4(v67, v110))
                {
                  v111 = *(v70 + 71);
                  if (v111 < 0)
                  {
                    if (*(v70 + 56) != 2)
                    {
                      goto LABEL_307;
                    }

                    v112 = *(v70 + 48);
                  }

                  else
                  {
                    v112 = (v70 + 48);
                    if (v111 != 2)
                    {
                      goto LABEL_307;
                    }
                  }

                  if (*v112 == 28265)
                  {
                    sub_29A008E78(&__src, "nodename");
                    sub_29A008E78(&v869, "value");
                    v118 = sub_29A8877BC((v70 + 160), &v869);
                    if (v118)
                    {
                      v120 = (v118 + 5);
                    }

                    else
                    {
                      v120 = sub_29B1F31FC(0, v119);
                    }

                    sub_29B1D9334(v67, &__src, v120);
                    if (SHIBYTE(v869.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v869.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__src.__r_.__value_.__l.__data_);
                    }
                  }

LABEL_307:
                  sub_29B1D9298(v67, (v70 + 48));
                }
              }

LABEL_294:
              if (v71)
              {
                sub_29A014BEC(v71);
              }

              v68 += 2;
              goto LABEL_161;
            }

LABEL_227:
            sub_29A008E78(&__src, "shadertype");
            v90 = sub_29A8877BC((v70 + 160), &__src);
            v91 = v90;
            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__src.__r_.__value_.__l.__data_);
              if (!v91)
              {
                goto LABEL_294;
              }
            }

            else if (!v90)
            {
              goto LABEL_294;
            }

            sub_29A008E78(&__src, off_2A14FDC70[0]);
            sub_29A008E78(&v869, off_2A14FDEF0[0]);
            sub_29B1D9334(v70, &__src, &v869);
            if (SHIBYTE(v869.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v869.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__src.__r_.__value_.__l.__data_);
            }

            sub_29A008E78(&__src, "shadertype");
            sub_29B1D93E8(v70, &__src);
            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__src.__r_.__value_.__l.__data_);
            }

            goto LABEL_294;
          }

          if (*v72 != 1919381615 || *(v70 + 27) != 1752195442)
          {
            goto LABEL_294;
          }

LABEL_203:
          v922 = v70;
          v923 = v71;
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29A008E78(&__src, "nodegraph");
          sub_29B1D9990(v67, &v922, &__src, &v924);
          if (v925)
          {
            sub_29A014BEC(v925);
          }

          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

          size = v923;
          if (!v923)
          {
            goto LABEL_294;
          }

LABEL_293:
          sub_29A014BEC(size);
          goto LABEL_294;
        }

        if (*v72 != 1684105331 || *(v70 + 28) != 29285)
        {
          goto LABEL_294;
        }
      }

      v920 = v70;
      v921 = v71;
      if (v71)
      {
        atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A008E78(&__src, "nodedef");
      sub_29B1D9990(v67, &v920, &__src, &v867);
      sub_29B1D7F00(v867.__r_.__value_.__l.__data_, &v869);
      if (v867.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(v867.__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__src.__r_.__value_.__l.__data_);
      }

      if (v921)
      {
        sub_29A014BEC(v921);
      }

      v87 = v869.__r_.__value_.__r.__words[0];
      sub_29A008E78(&__src, "shadertype");
      v88 = sub_29A8877BC((v87 + 160), &__src);
      v89 = v88;
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__src.__r_.__value_.__l.__data_);
        if (!v89)
        {
LABEL_233:
          v93 = v869.__r_.__value_.__r.__words[0];
          sub_29A008E78(&__src, "shaderprogram");
          v94 = sub_29A8877BC((v93 + 160), &__src);
          v95 = v94;
          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
            if (!v95)
            {
              goto LABEL_292;
            }
          }

          else if (!v94)
          {
            goto LABEL_292;
          }

          v96 = v869.__r_.__value_.__r.__words[0];
          sub_29A008E78(&__src, "shaderprogram");
          v97 = sub_29A8877BC((v96 + 160), &__src);
          if (v97)
          {
            v99 = (v97 + 5);
          }

          else
          {
            v99 = sub_29B1F31FC(0, v98);
          }

          sub_29B1C710C(v96, v99);
          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

LABEL_292:
          size = v869.__r_.__value_.__l.__size_;
          if (!v869.__r_.__value_.__l.__size_)
          {
            goto LABEL_294;
          }

          goto LABEL_293;
        }
      }

      else if (!v88)
      {
        goto LABEL_233;
      }

      v92 = v869.__r_.__value_.__r.__words[0];
      sub_29A008E78(&__src, off_2A14FDEF0[0]);
      sub_29AD96918(v92, &__src);
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__src.__r_.__value_.__l.__data_);
      }

      goto LABEL_233;
    }

    break;
  }

  sub_29B1D366C(&v930);
  sub_29B1D366C(&v934);
  sub_29B1D366C(&v938);
  sub_29A008E78(&v934, "material");
  sub_29B1D16EC(a1, &v934, &v938);
  if (SHIBYTE(v934.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v934.__r_.__value_.__l.__data_);
  }

  v799 = v938.__r_.__value_.__l.__size_;
  for (i = v938.__r_.__value_.__r.__words[0]; i != v799; i += 2)
  {
    v123 = *i;
    v122 = i[1];
    if (v122)
    {
      atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(&v930, "shaderref");
    sub_29B1D16EC(v123, &v930, &v934);
    if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v930.__r_.__value_.__l.__data_);
    }

    v124 = v934.__r_.__value_.__l.__size_;
    for (j = v934.__r_.__value_.__r.__words[0]; j != v124; j += 2)
    {
      v127 = *j;
      v126 = j[1];
      if (v126)
      {
        atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
        v916 = v127;
        v917 = v126;
        atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v916 = *j;
        v917 = 0;
      }

      sub_29B1D1950(&v916, &v930);
      v128 = v930.__r_.__value_.__r.__words[0];
      if (v930.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(v930.__r_.__value_.__l.__size_);
      }

      if (v126)
      {
        sub_29A014BEC(v126);
      }

      if (!v128)
      {
        sub_29AAC0094(a1, (v127 + 48), __p);
        if (__p[0])
        {
          sub_29A008E78(&v930, off_2A14FDE80[0]);
          sub_29B1D9334(v127, &v930, __p[0] + 2);
          if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v930.__r_.__value_.__l.__data_);
          }

          sub_29A008E78(&v930, off_2A14FDC08[0]);
          v129 = sub_29AABE2F0(__p[0]);
          sub_29B1D9334(v127, &v930, v129);
          if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v930.__r_.__value_.__l.__data_);
          }
        }

        if (__p[1])
        {
          sub_29A014BEC(__p[1]);
        }
      }

      if (v126)
      {
        sub_29A014BEC(v126);
      }
    }

    v930.__r_.__value_.__r.__words[0] = &v934;
    sub_29A0176E4(&v930);
    if (v122)
    {
      sub_29A014BEC(v122);
    }
  }

  v934.__r_.__value_.__r.__words[0] = &v938;
  sub_29A0176E4(&v934);
  sub_29A008E78(&v934, "material");
  sub_29B1D16EC(a1, &v934, &v938);
  if (SHIBYTE(v934.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v934.__r_.__value_.__l.__data_);
  }

  v132 = sub_29B1F31FC(v130, v131);
  sub_29AABE37C(a1, v132, &v934);
  v776 = v934.__r_.__value_.__l.__size_;
  v133 = v934.__r_.__value_.__r.__words[0];
  if (v934.__r_.__value_.__r.__words[0] != v934.__r_.__value_.__l.__size_)
  {
    while (1)
    {
      v134 = *v133;
      v135 = v133[1];
      if (v135)
      {
        atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v778 = v133;
      sub_29B1EA6E8(v134, &v930);
      v137 = v930.__r_.__value_.__l.__size_;
      v136 = v930.__r_.__value_.__r.__words[0];
      v138 = v135;
      v781 = v930.__r_.__value_.__l.__size_;
      if (v930.__r_.__value_.__r.__words[0] != v930.__r_.__value_.__l.__size_)
      {
        break;
      }

LABEL_417:
      __p[0] = &v930;
      sub_29A0176E4(__p);
      if (v135)
      {
        sub_29A014BEC(v135);
      }

      v133 = v778 + 2;
      if (v778 + 2 == v776)
      {
        goto LABEL_420;
      }
    }

LABEL_347:
    v140 = v136->__r_.__value_.__r.__words[0];
    v139 = v136->__r_.__value_.__l.__size_;
    if (v139)
    {
      atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v788 = v139;
    sub_29A008E78(__p, "opgraph");
    if (sub_29A8877BC((v140 + 160), __p))
    {
      sub_29A008E78(&__src, "graphoutput");
      v141 = sub_29A8877BC((v140 + 160), &__src) != 0;
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__src.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v141 = 0;
    }

    if (SBYTE7(v874) < 0)
    {
      operator delete(__p[0]);
      if (!v141)
      {
        goto LABEL_414;
      }
    }

    else if (!v141)
    {
      goto LABEL_414;
    }

    __str = v136;
    v142 = v938.__r_.__value_.__l.__size_;
    v794 = v938.__r_.__value_.__l.__size_;
    for (k = v938.__r_.__value_.__r.__words[0]; ; k += 2)
    {
      if (k == v142)
      {
        sub_29A008E78(__p, "opgraph");
        sub_29B1D93E8(v140, __p);
        v137 = v781;
        v136 = __str;
        if (SBYTE7(v874) < 0)
        {
          operator delete(__p[0]);
        }

        sub_29A008E78(__p, "graphoutput");
        sub_29B1D93E8(v140, __p);
        if (SBYTE7(v874) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_414:
        if (v788)
        {
          sub_29A014BEC(v788);
        }

        v136 = (v136 + 16);
        if (v136 == v137)
        {
          goto LABEL_417;
        }

        goto LABEL_347;
      }

      v145 = *k;
      v144 = k[1];
      if (v144)
      {
        atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v800 = v144;
      sub_29A008E78(&__src, "shaderref");
      sub_29B1D16EC(v145, &__src, __p);
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__src.__r_.__value_.__l.__data_);
      }

      v146 = __p[0];
      v147 = __p[1];
      if (__p[0] != __p[1])
      {
        break;
      }

LABEL_407:
      __src.__r_.__value_.__r.__words[0] = __p;
      sub_29A0176E4(&__src);
      if (v800)
      {
        sub_29A014BEC(v800);
      }

      v142 = v794;
    }

    while (2)
    {
      v149 = *v146;
      v148 = *(v146 + 1);
      if (v148)
      {
        atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
        v914 = v149;
        v915 = v148;
        atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v914 = *v146;
        v915 = 0;
      }

      sub_29B1D1950(&v914, &__src);
      if (__src.__r_.__value_.__r.__words[0] != v134)
      {
        v150 = 0;
        goto LABEL_374;
      }

      v151 = sub_29A8877BC(v149 + 12, (v140 + 48));
      if (v151)
      {
        v153 = v151[5];
        v152 = v151[6];
        if (v152)
        {
          atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
          v150 = v153 == 0;
          sub_29A014BEC(v152);
          goto LABEL_374;
        }
      }

      else
      {
        v153 = 0;
      }

      v150 = v153 == 0;
LABEL_374:
      if (__src.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(__src.__r_.__value_.__l.__size_);
      }

      if (v148)
      {
        sub_29A014BEC(v148);
      }

      if (v150)
      {
        sub_29A008E78(&__src, "bindinput");
        if (*(v140 + 71) < 0)
        {
          sub_29A008D14(__dst, *(v140 + 48), *(v140 + 56));
        }

        else
        {
          *__dst = *(v140 + 48);
          v913 = *(v140 + 64);
        }

        sub_29B1D94C4(v149, &__src, __dst, &v867);
        if (SHIBYTE(v913) < 0)
        {
          operator delete(__dst[0]);
        }

        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        v154 = v867.__r_.__value_.__r.__words[0];
        sub_29A008E78(&__src, off_2A14FDC70[0]);
        v155 = (*(*v140 + 64))(v140);
        sub_29B1D9334(v154, &__src, v155);
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        v156 = v867.__r_.__value_.__r.__words[0];
        sub_29A008E78(&__src, "nodegraph");
        sub_29A008E78(&v869, "opgraph");
        v157 = sub_29A8877BC((v140 + 160), &v869);
        if (v157)
        {
          v159 = (v157 + 5);
        }

        else
        {
          v159 = sub_29B1F31FC(0, v158);
        }

        sub_29B1D9334(v156, &__src, v159);
        if (SHIBYTE(v869.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v869.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        v160 = v867.__r_.__value_.__r.__words[0];
        sub_29A008E78(&__src, "output");
        sub_29A008E78(&v869, "graphoutput");
        v161 = sub_29A8877BC((v140 + 160), &v869);
        if (v161)
        {
          v163 = (v161 + 5);
        }

        else
        {
          v163 = sub_29B1F31FC(0, v162);
        }

        sub_29B1D9334(v160, &__src, v163);
        if (SHIBYTE(v869.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v869.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        if (v867.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(v867.__r_.__value_.__l.__size_);
        }
      }

      if (v148)
      {
        sub_29A014BEC(v148);
      }

      v146 += 16;
      v135 = v138;
      if (v146 == v147)
      {
        goto LABEL_407;
      }

      continue;
    }
  }

LABEL_420:
  v930.__r_.__value_.__r.__words[0] = &v934;
  sub_29A0176E4(&v930);
  v166 = sub_29B1F31FC(v164, v165);
  sub_29B1D3EEC(a1, v166, &v934);
  v168 = v934.__r_.__value_.__l.__size_;
  for (m = v934.__r_.__value_.__r.__words[0]; m != v168; m += 16)
  {
    v170 = *m;
    v169 = *(m + 8);
    if (v169)
    {
      atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(__p, "geomattr");
    sub_29B1D16EC(v170, __p, &v930);
    if (SBYTE7(v874) < 0)
    {
      operator delete(__p[0]);
    }

    v171 = v930.__r_.__value_.__l.__size_;
    for (n = v930.__r_.__value_.__r.__words[0]; n != v171; n += 2)
    {
      v173 = *n;
      v174 = n[1];
      if (v174)
      {
        atomic_fetch_add_explicit(&v174->__shared_owners_, 1uLL, memory_order_relaxed);
        v909 = v174;
        atomic_fetch_add_explicit(&v174->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v909 = 0;
      }

      v908 = v173;
      sub_29A008E78(__p, "geomprop");
      sub_29B1D9990(v170, &v908, __p, &v910);
      if (v911)
      {
        sub_29A014BEC(v911);
      }

      if (SBYTE7(v874) < 0)
      {
        operator delete(__p[0]);
      }

      if (v909)
      {
        sub_29A014BEC(v909);
      }

      if (v174)
      {
        sub_29A014BEC(v174);
      }
    }

    __p[0] = &v930;
    sub_29A0176E4(__p);
    if (v169)
    {
      sub_29A014BEC(v169);
    }
  }

  v930.__r_.__value_.__r.__words[0] = &v934;
  sub_29A0176E4(&v930);
  sub_29A008E78(&v934, "udim");
  sub_29A008E78(&v930, off_2A14FDE00[0]);
  sub_29B1C81F4(a1, &v934, &v930, &v869);
  if (v869.__r_.__value_.__r.__words[0])
  {
    sub_29A008E78(__p, "udimset");
    sub_29A008E78(&__src, off_2A14FDE00[0]);
    sub_29B1C81F4(a1, __p, &__src, &v867);
    v176 = v867.__r_.__value_.__r.__words[0] == 0;
    if (v867.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(v867.__r_.__value_.__l.__size_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v874) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v176 = 0;
  }

  v177 = v869.__r_.__value_.__l.__size_;
  if (v869.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(v869.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v930.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v934.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v934.__r_.__value_.__l.__data_);
    if (!v176)
    {
      goto LABEL_508;
    }
  }

  else if (!v176)
  {
    goto LABEL_508;
  }

  *&v934.__r_.__value_.__r.__words[1] = 0uLL;
  v934.__r_.__value_.__r.__words[0] = &v934.__r_.__value_.__l.__size_;
  v178 = sub_29B1F31FC(v177, v175);
  sub_29B1D3EEC(a1, v178, &v930);
  v182 = v930.__r_.__value_.__l.__size_;
  v181 = v930.__r_.__value_.__r.__words[0];
  if (v930.__r_.__value_.__r.__words[0] == v930.__r_.__value_.__l.__size_)
  {
    goto LABEL_478;
  }

  while (2)
  {
    v183 = *v181;
    v184 = v181[1];
    if (v184)
    {
      atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v185 = sub_29B1F31FC(v179, v180);
    sub_29B1D44F4(v183, v185, __p);
    v186 = __p[0];
    v187 = __p[1];
    while (2)
    {
      if (v186 != v187)
      {
        v188 = *v186;
        v189 = v186[1];
        if (v189)
        {
          atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v190 = (v188 + 48);
        v191 = *(v188 + 71);
        if (v191 < 0)
        {
          if (*(v188 + 56) != 4)
          {
LABEL_472:
            if (v189)
            {
              sub_29A014BEC(v189);
            }

            v186 += 2;
            continue;
          }

          v190 = *v190;
        }

        else if (v191 != 4)
        {
          goto LABEL_472;
        }

        if (*v190 == 1835623541)
        {
          v192 = sub_29AAC0680(v188);
          sub_29A095658(&v934, v192, v192);
        }

        goto LABEL_472;
      }

      break;
    }

    __src.__r_.__value_.__r.__words[0] = __p;
    sub_29A0176E4(&__src);
    if (v184)
    {
      sub_29A014BEC(v184);
    }

    v181 += 2;
    if (v181 != v182)
    {
      continue;
    }

    break;
  }

LABEL_478:
  __p[0] = &v930;
  sub_29A0176E4(__p);
  memset(&v930, 0, sizeof(v930));
  v195 = v934.__r_.__value_.__r.__words[0];
  if (v934.__r_.__value_.__l.__data_ != &v934.__r_.__value_.__r.__words[1])
  {
    do
    {
      v196 = HIBYTE(v930.__r_.__value_.__r.__words[2]);
      if ((v930.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v196 = v930.__r_.__value_.__l.__size_;
      }

      if (v196)
      {
        std::operator+<char>();
        if ((SBYTE7(v874) & 0x80u) == 0)
        {
          v197 = __p;
        }

        else
        {
          v197 = __p[0];
        }

        if ((SBYTE7(v874) & 0x80u) == 0)
        {
          v198 = BYTE7(v874);
        }

        else
        {
          v198 = __p[1];
        }

        v193 = std::string::append(&v930, v197, v198);
        if (SBYTE7(v874) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v193 = std::string::operator=(&v930, (v195 + 32));
      }

      v199 = *(v195 + 8);
      if (v199)
      {
        do
        {
          v200 = v199;
          v199 = v199->__r_.__value_.__r.__words[0];
        }

        while (v199);
      }

      else
      {
        do
        {
          v200 = *(v195 + 16);
          v3 = v200->__r_.__value_.__r.__words[0] == v195;
          v195 = v200;
        }

        while (!v3);
      }

      v195 = v200;
    }

    while (v200 != &v934.__r_.__value_.__r.__words[1]);
  }

  v201 = sub_29B1F31FC(v193, v194);
  sub_29A008E78(__p, off_2A14FDE00[0]);
  sub_29B1D2048(__p, &__src, a1, v201);
  if (SBYTE7(v874) < 0)
  {
    operator delete(__p[0]);
  }

  v202 = __src.__r_.__value_.__r.__words[0];
  sub_29A008E78(__p, off_2A14FDE18[0]);
  v203 = sub_29B1F9FD4();
  sub_29B1D2094(v202, __p, &v930, v203, &v906);
  if (v907)
  {
    sub_29A014BEC(v907);
  }

  if (SBYTE7(v874) < 0)
  {
    operator delete(__p[0]);
  }

  if (__src.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(__src.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v930.__r_.__value_.__l.__data_);
  }

  sub_29A019EE8(&v934, v934.__r_.__value_.__l.__size_);
LABEL_508:
  v934.__r_.__value_.__r.__words[0] = &v938;
  sub_29A0176E4(&v934);
  LODWORD(v4) = 34;
LABEL_509:
  if (v4 != 34)
  {
    goto LABEL_564;
  }

  sub_29B1DA4E4(a1, &v938);
  v940[1] = 0;
  *&v934.__r_.__value_.__l.__data_ = *&v938.__r_.__value_.__l.__data_;
  if (v938.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v938.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  v934.__r_.__value_.__r.__words[2] = 0;
  v935 = 0;
  v936 = 0;
  v204 = sub_29B1D3464(&v934.__r_.__value_.__r.__words[2], v938.__r_.__value_.__r.__words[2], v939, 0xAAAAAAAAAAAAAAABLL * ((v939 - v938.__r_.__value_.__r.__words[2]) >> 3));
  v937 = *v940;
  v206 = sub_29B1F19B8(v204, v205);
  v207 = v206;
  v208 = v206[1];
  v930.__r_.__value_.__r.__words[0] = *v206;
  v930.__r_.__value_.__l.__size_ = v208;
  if (v208)
  {
    atomic_fetch_add_explicit((v208 + 8), 1uLL, memory_order_relaxed);
  }

  v931 = 0;
  v930.__r_.__value_.__r.__words[2] = 0;
  v932 = 0;
  sub_29B1D3464(&v930.__r_.__value_.__r.__words[2], v206[2], v206[3], 0xAAAAAAAAAAAAAAABLL * ((v206[3] - v206[2]) >> 3));
  v933 = *(v207 + 5);
  while (2)
  {
    if (!sub_29B1D35F8(&v934, &v930))
    {
      v209 = *&v934.__r_.__value_.__l.__data_;
      if (v934.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v934.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      sub_29A008E78(__p, off_2A14FDC70[0]);
      v210 = sub_29A8877BC((v209 + 160), __p);
      if (v210)
      {
        v212 = (v210 + 5);
      }

      else
      {
        v212 = sub_29B1F31FC(0, v211);
      }

      v213 = v212[23];
      if (v213 < 0)
      {
        if (*(v212 + 1) != 6)
        {
          goto LABEL_532;
        }

        v212 = *v212;
      }

      else if (v213 != 6)
      {
LABEL_532:
        v215 = 0;
        goto LABEL_533;
      }

      v215 = *v212 == 1920229741 && *(v212 + 2) == 30825;
LABEL_533:
      if (SBYTE7(v874) < 0)
      {
        operator delete(__p[0]);
        if (!v215)
        {
          goto LABEL_539;
        }
      }

      else if (!v215)
      {
        goto LABEL_539;
      }

      sub_29A008E78(__p, off_2A14FDC70[0]);
      v216 = sub_29B1F8D24();
      sub_29B1D9334(v209, __p, v216);
      if (SBYTE7(v874) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_539:
      sub_29A008E78(__p, "default");
      if (sub_29A8877BC((v209 + 160), __p))
      {
        sub_29A008E78(&__src, off_2A14FDC78[0]);
        v217 = sub_29A8877BC((v209 + 160), &__src) == 0;
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v217 = 0;
      }

      if (SBYTE7(v874) < 0)
      {
        operator delete(__p[0]);
        if (!v217)
        {
LABEL_556:
          sub_29B1D7DA0(v209, __p);
          if (__p[0])
          {
            sub_29B1D2148(__p[0], __p[0] + 2);
          }

          if (__p[1])
          {
            sub_29A014BEC(__p[1]);
          }

          if (*(&v209 + 1))
          {
            sub_29A014BEC(*(&v209 + 1));
          }

          sub_29B1F19D8(&v934);
          continue;
        }
      }

      else if (!v217)
      {
        goto LABEL_556;
      }

      sub_29A008E78(__p, off_2A14FDC78[0]);
      sub_29A008E78(&__src, "default");
      v218 = sub_29A8877BC((v209 + 160), &__src);
      if (v218)
      {
        v220 = (v218 + 5);
      }

      else
      {
        v220 = sub_29B1F31FC(0, v219);
      }

      sub_29B1D9334(v209, __p, v220);
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__src.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v874) < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A008E78(__p, "default");
      sub_29B1D93E8(v209, __p);
      if (SBYTE7(v874) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_556;
    }

    break;
  }

  sub_29B1D366C(&v930);
  sub_29B1D366C(&v934);
  v1 = sub_29B1D366C(&v938);
  LODWORD(v4) = 35;
LABEL_564:
  if (v4 == 35)
  {
    sub_29B1DA4E4(a1, &v938);
    v940[1] = 0;
    *&v934.__r_.__value_.__l.__data_ = *&v938.__r_.__value_.__l.__data_;
    if (v938.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v938.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v934.__r_.__value_.__r.__words[2] = 0;
    v935 = 0;
    v936 = 0;
    v221 = sub_29B1D3464(&v934.__r_.__value_.__r.__words[2], v938.__r_.__value_.__r.__words[2], v939, 0xAAAAAAAAAAAAAAABLL * ((v939 - v938.__r_.__value_.__r.__words[2]) >> 3));
    v937 = *v940;
    v223 = sub_29B1F19B8(v221, v222);
    v224 = v223;
    v225 = v223[1];
    v930.__r_.__value_.__r.__words[0] = *v223;
    v930.__r_.__value_.__l.__size_ = v225;
    if (v225)
    {
      atomic_fetch_add_explicit((v225 + 8), 1uLL, memory_order_relaxed);
    }

    v931 = 0;
    v930.__r_.__value_.__r.__words[2] = 0;
    v932 = 0;
    sub_29B1D3464(&v930.__r_.__value_.__r.__words[2], v223[2], v223[3], 0xAAAAAAAAAAAAAAABLL * ((v223[3] - v223[2]) >> 3));
    v933 = *(v224 + 5);
    while (2)
    {
      if (!sub_29B1D35F8(&v934, &v930))
      {
        v226 = v934.__r_.__value_.__l.__size_;
        v227 = v934.__r_.__value_.__r.__words[0];
        if (v934.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v934.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        sub_29B1D7CF0(v227, &v860);
        sub_29B1D7980(v227, &v855);
        v777 = v226;
        sub_29A008E78(__p, off_2A14FDC70[0]);
        v228 = sub_29A8877BC((v227 + 160), __p);
        if (v228)
        {
          v230 = (v228 + 5);
        }

        else
        {
          v230 = sub_29B1F31FC(0, v229);
        }

        v231 = strlen(off_2A14FDEC8[0]);
        v232 = v230[23];
        if (v232 < 0)
        {
          if (v231 != *(v230 + 1))
          {
            goto LABEL_583;
          }

          if (v231 == -1)
          {
            sub_29A0F26CC();
          }

          v230 = *v230;
        }

        else if (v231 != v232)
        {
LABEL_583:
          v233 = 0;
          goto LABEL_584;
        }

        if (memcmp(v230, off_2A14FDEC8[0], v231))
        {
          goto LABEL_583;
        }

        sub_29A008E78(&__src, off_2A14FDC78[0]);
        v247 = sub_29A8877BC((v227 + 160), &__src);
        if (v247)
        {
          v249 = (v247 + 5);
        }

        else
        {
          v249 = sub_29B1F31FC(0, v248);
        }

        v305 = v249[23];
        if (v305 < 0)
        {
          if (*(v249 + 1) != 1)
          {
            goto LABEL_786;
          }

          v249 = *v249;
        }

        else if (v305 != 1)
        {
LABEL_786:
          v233 = 0;
LABEL_787:
          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

LABEL_584:
          if (SBYTE7(v874) < 0)
          {
            operator delete(__p[0]);
            if (!v233)
            {
              goto LABEL_592;
            }
          }

          else if (!v233)
          {
            goto LABEL_592;
          }

          sub_29A008E78(__p, off_2A14FDC78[0]);
          sub_29A008E78(&__src, off_2A14FDE00[0]);
          sub_29B1D9334(v227, __p, &__src);
          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v874) < 0)
          {
            operator delete(__p[0]);
          }

LABEL_592:
          sub_29A008E78(__p, off_2A14FDC70[0]);
          v234 = sub_29A8877BC((v227 + 160), __p);
          if (v234)
          {
            v236 = (v234 + 5);
          }

          else
          {
            v236 = sub_29B1F31FC(0, v235);
          }

          v237 = strlen(off_2A14FDEC0[0]);
          v238 = v236[23];
          if (v238 < 0)
          {
            if (v237 != *(v236 + 1))
            {
              goto LABEL_602;
            }

            if (v237 == -1)
            {
              sub_29A0F26CC();
            }

            v236 = *v236;
          }

          else if (v237 != v238)
          {
LABEL_602:
            v239 = 0;
LABEL_603:
            if (SBYTE7(v874) < 0)
            {
              operator delete(__p[0]);
              if (!v239)
              {
                goto LABEL_628;
              }
            }

            else if (!v239)
            {
              goto LABEL_628;
            }

            *__p = 0u;
            v874 = 0u;
            v875 = 1065353216;
            v240 = off_2A14FDE08[0];
            sub_29A008E78(&__src, "%UDIM");
            v869.__r_.__value_.__r.__words[0] = &__src;
            v241 = sub_29B1D6E60(__p, &__src, &unk_29B76607D, &v869);
            MEMORY[0x29C2C1A60](v241 + 40, v240);
            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__src.__r_.__value_.__l.__data_);
            }

            v242 = off_2A14FDE10[0];
            sub_29A008E78(&__src, "%UVTILE");
            v869.__r_.__value_.__r.__words[0] = &__src;
            v243 = sub_29B1D6E60(__p, &__src, &unk_29B76607D, &v869);
            MEMORY[0x29C2C1A60](v243 + 40, v242);
            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__src.__r_.__value_.__l.__data_);
            }

            sub_29A008E78(&__src, off_2A14FDC78[0]);
            sub_29A008E78(&v867, off_2A14FDC78[0]);
            v244 = sub_29A8877BC((v227 + 160), &v867);
            if (v244)
            {
              v246 = (v244 + 5);
            }

            else
            {
              v246 = sub_29B1F31FC(0, v245);
            }

            if (v246[23] < 0)
            {
              sub_29A008D14(&v905, *v246, *(v246 + 1));
            }

            else
            {
              v250 = *v246;
              v905.__r_.__value_.__r.__words[2] = *(v246 + 2);
              *&v905.__r_.__value_.__l.__data_ = v250;
            }

            sub_29B1F37E0(&v869, &v905, __p);
            sub_29B1D9334(v227, &__src, &v869);
            if (SHIBYTE(v869.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v869.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v905.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v905.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v867.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v867.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__src.__r_.__value_.__l.__data_);
            }

            sub_29A89AD9C(__p);
LABEL_628:
            __p[1] = 0;
            __p[0] = 0;
            *&v874 = 0;
            v789 = v227;
            sub_29B1D677C(__p, *(v227 + 136), *(v227 + 144), (*(v227 + 144) - *(v227 + 136)) >> 4);
            v251 = __p[0];
            v782 = __p[1];
            if (__p[0] == __p[1])
            {
LABEL_772:
              __src.__r_.__value_.__r.__words[0] = __p;
              sub_29A0176E4(&__src);
              if (v856)
              {
                sub_29A014BEC(v856);
              }

              if (v861)
              {
                sub_29A014BEC(v861);
              }

              if (v226)
              {
                sub_29A014BEC(v226);
              }

              sub_29B1F19D8(&v934);
              continue;
            }

            __stra = (v789 + 24);
            while (2)
            {
              v253 = *v251;
              v252 = v251[1];
              if (v252)
              {
                atomic_fetch_add_explicit(&v252->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v795 = v252;
              v254 = *(v789 + 47);
              if (*(v789 + 47) < 0)
              {
                if (*(v789 + 32) != 8)
                {
                  goto LABEL_647;
                }

                v255 = __stra->__r_.__value_.__r.__words[0];
              }

              else
              {
                v255 = (v789 + 24);
                if (v254 != 8)
                {
                  goto LABEL_647;
                }
              }

              if (*v255 == 0x6C6169726574616DLL)
              {
                v257 = (v253 + 24);
                v258 = *(v253 + 47);
                if (v258 < 0)
                {
                  if (*(v253 + 32) != 8)
                  {
                    goto LABEL_638;
                  }

                  v257 = *v257;
                }

                else if (v258 != 8)
                {
                  goto LABEL_638;
                }

                if (*v257 == 0x656469727265766FLL)
                {
                  sub_29A008E78(&v869, "shaderref");
                  sub_29B1D16EC(v789, &v869, &__src);
                  if (SHIBYTE(v869.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v869.__r_.__value_.__l.__data_);
                  }

                  v779 = __src.__r_.__value_.__l.__size_;
                  v269 = __src.__r_.__value_.__r.__words[0];
                  if (__src.__r_.__value_.__r.__words[0] != __src.__r_.__value_.__l.__size_)
                  {
                    while (1)
                    {
                      v271 = *v269;
                      v270 = *(v269 + 8);
                      v801 = v270;
                      if (v270)
                      {
                        atomic_fetch_add_explicit(&v270->__shared_owners_, 1uLL, memory_order_relaxed);
                        v903 = v271;
                        v904 = v270;
                        atomic_fetch_add_explicit(&v270->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      else
                      {
                        v903 = *v269;
                        v904 = 0;
                      }

                      sub_29B1D1950(&v903, &v850);
                      if (v801)
                      {
                        sub_29A014BEC(v801);
                      }

                      if (v850)
                      {
                        break;
                      }

LABEL_748:
                      if (v851)
                      {
                        sub_29A014BEC(v851);
                      }

                      if (v801)
                      {
                        sub_29A014BEC(v801);
                      }

                      v269 += 16;
                      if (v269 == v779)
                      {
                        goto LABEL_753;
                      }
                    }

                    sub_29B1EB1E0(v850, &v869);
                    v272 = v869.__r_.__value_.__l.__size_;
                    v273 = v869.__r_.__value_.__r.__words[0];
                    while (2)
                    {
                      if (v273 == v272)
                      {
                        v867.__r_.__value_.__r.__words[0] = &v869;
                        sub_29A0176E4(&v867);
                        v226 = v777;
                        goto LABEL_748;
                      }

                      v275 = *v273;
                      v274 = v273[1];
                      if (v274)
                      {
                        atomic_fetch_add_explicit(&v274->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      sub_29A008E78(&v867, "publicname");
                      v276 = sub_29A8877BC((v275 + 160), &v867);
                      if (v276)
                      {
                        v278 = (v276 + 5);
                      }

                      else
                      {
                        v278 = sub_29B1F31FC(0, v277);
                      }

                      shared_weak_owners_high = SHIBYTE(v278->__shared_weak_owners_);
                      if (shared_weak_owners_high >= 0)
                      {
                        shared_owners = HIBYTE(v278->__shared_weak_owners_);
                      }

                      else
                      {
                        shared_owners = v278->__shared_owners_;
                      }

                      v281 = *(v253 + 71);
                      v282 = v281;
                      if ((v281 & 0x80u) != 0)
                      {
                        v281 = *(v253 + 56);
                      }

                      if (shared_owners != v281)
                      {
                        goto LABEL_694;
                      }

                      if (shared_weak_owners_high < 0)
                      {
                        v278 = v278->__vftable;
                      }

                      v283 = v282 >= 0 ? (v253 + 48) : *(v253 + 48);
                      v278 = memcmp(v278, v283, shared_owners);
                      if (v278)
                      {
LABEL_694:
                        v284 = 0;
                        goto LABEL_695;
                      }

                      v278 = sub_29A8877BC(v271 + 12, (v253 + 48));
                      if (v278)
                      {
                        shared_weak_owners = v278[1].__shared_weak_owners_;
                        v278 = v278[2].__vftable;
                        if (v278)
                        {
                          atomic_fetch_add_explicit(&v278->__shared_owners_, 1uLL, memory_order_relaxed);
                          v284 = shared_weak_owners == 0;
                          sub_29A014BEC(v278);
                          goto LABEL_695;
                        }
                      }

                      else
                      {
                        shared_weak_owners = 0;
                      }

                      v284 = shared_weak_owners == 0;
LABEL_695:
                      if (SHIBYTE(v867.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v867.__r_.__value_.__l.__data_);
                        if (v284)
                        {
                          goto LABEL_699;
                        }
                      }

                      else
                      {
                        if (!v284)
                        {
                          goto LABEL_744;
                        }

LABEL_699:
                        v285 = v275 + 24;
                        v286 = *(v275 + 47);
                        if (v286 < 0)
                        {
                          if (*(v275 + 32) != 9)
                          {
                            goto LABEL_711;
                          }

                          v285 = *v285;
                        }

                        else if (v286 != 9)
                        {
                          goto LABEL_711;
                        }

                        v288 = *v285;
                        v289 = *(v285 + 8);
                        if (v288 == 0x6574656D61726170 && v289 == 114)
                        {
                          sub_29A008E78(&v867, "bindparam");
                          if (*(v275 + 71) < 0)
                          {
                            sub_29A008D14(v901, *(v275 + 48), *(v275 + 56));
                          }

                          else
                          {
                            *v901 = *(v275 + 48);
                            v902 = *(v275 + 64);
                          }

                          sub_29B1D94C4(v271, &v867, v901, &v845);
                          if (SHIBYTE(v902) < 0)
                          {
                            operator delete(v901[0]);
                          }

                          if (SHIBYTE(v867.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v867.__r_.__value_.__l.__data_);
                          }

                          v298 = v845;
                          sub_29A008E78(&v867, off_2A14FDC70[0]);
                          v299 = (*(*v275 + 64))(v275);
                          sub_29B1D9334(v298, &v867, v299);
                          if (SHIBYTE(v867.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v867.__r_.__value_.__l.__data_);
                          }

                          v294 = v845;
                          sub_29A008E78(&v867, off_2A14FDC78[0]);
                          sub_29A008E78(&v865, "value");
                          v300 = sub_29A8877BC((v253 + 160), &v865);
                          if (v300)
                          {
                            v297 = (v300 + 5);
                            goto LABEL_738;
                          }

LABEL_737:
                          v297 = sub_29B1F31FC(0, v296);
                          goto LABEL_738;
                        }

LABEL_711:
                        v291 = sub_29B1F31FC(v278, v277);
                        if (sub_29AAC1EC0(v275, v291))
                        {
                          sub_29A008E78(&v867, "bindinput");
                          if (*(v275 + 71) < 0)
                          {
                            sub_29A008D14(v899, *(v275 + 48), *(v275 + 56));
                          }

                          else
                          {
                            *v899 = *(v275 + 48);
                            v900 = *(v275 + 64);
                          }

                          sub_29B1D94C4(v271, &v867, v899, &v845);
                          if (SHIBYTE(v900) < 0)
                          {
                            operator delete(v899[0]);
                          }

                          if (SHIBYTE(v867.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v867.__r_.__value_.__l.__data_);
                          }

                          v292 = v845;
                          sub_29A008E78(&v867, off_2A14FDC70[0]);
                          v293 = (*(*v275 + 64))(v275);
                          sub_29B1D9334(v292, &v867, v293);
                          if (SHIBYTE(v867.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v867.__r_.__value_.__l.__data_);
                          }

                          v294 = v845;
                          sub_29A008E78(&v867, off_2A14FDC78[0]);
                          sub_29A008E78(&v865, "value");
                          v295 = sub_29A8877BC((v253 + 160), &v865);
                          if (v295)
                          {
                            v297 = (v295 + 5);
LABEL_738:
                            sub_29B1D9334(v294, &v867, v297);
                            if (SHIBYTE(v865.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v865.__r_.__value_.__l.__data_);
                            }

                            if (SHIBYTE(v867.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v867.__r_.__value_.__l.__data_);
                            }

                            if (v846)
                            {
                              sub_29A014BEC(v846);
                            }

                            goto LABEL_744;
                          }

                          goto LABEL_737;
                        }
                      }

LABEL_744:
                      if (v274)
                      {
                        sub_29A014BEC(v274);
                      }

                      v273 += 2;
                      continue;
                    }
                  }

LABEL_753:
                  v869.__r_.__value_.__r.__words[0] = &__src;
                  sub_29A0176E4(&v869);
LABEL_757:
                  sub_29B1D9298(v789, (v253 + 48));
                  goto LABEL_758;
                }
              }

LABEL_638:
              if ((v254 & 0x80) != 0)
              {
                if (*(v789 + 32) != 8)
                {
                  goto LABEL_647;
                }

                v256 = __stra->__r_.__value_.__r.__words[0];
              }

              else
              {
                v256 = (v789 + 24);
                if (v254 != 8)
                {
                  goto LABEL_647;
                }
              }

              if (*v256 != 0x6C6169726574616DLL)
              {
                goto LABEL_647;
              }

              v267 = (v253 + 24);
              v268 = *(v253 + 47);
              if (v268 < 0)
              {
                if (*(v253 + 32) != 15)
                {
                  goto LABEL_647;
                }

                v267 = *v267;
              }

              else if (v268 != 15)
              {
                goto LABEL_647;
              }

              v301 = *v267;
              v302 = *(v267 + 7);
              if (v301 == 0x6C6169726574616DLL && v302 == 0x74697265686E696CLL)
              {
                sub_29A008E78(&__src, "material");
                v304 = sub_29A8877BC((v253 + 160), &__src);
                if (!v304)
                {
                  goto LABEL_754;
                }

                v266 = (v304 + 5);
              }

              else
              {
LABEL_647:
                if (!v860)
                {
                  goto LABEL_758;
                }

                v259 = (v253 + 24);
                v260 = *(v253 + 47);
                if (v260 < 0)
                {
                  if (*(v253 + 32) != 11)
                  {
                    goto LABEL_758;
                  }

                  v259 = *v259;
                }

                else if (v260 != 11)
                {
                  goto LABEL_758;
                }

                v261 = *v259;
                v262 = *(v259 + 3);
                if (v261 != 0x65686E696B6F6F6CLL || v262 != 0x74697265686E696BLL)
                {
LABEL_758:
                  if (v795)
                  {
                    sub_29A014BEC(v795);
                  }

                  v251 += 2;
                  if (v251 == v782)
                  {
                    goto LABEL_772;
                  }

                  continue;
                }

                sub_29A008E78(&__src, "look");
                v264 = sub_29A8877BC((v253 + 160), &__src);
                if (v264)
                {
                  v266 = (v264 + 5);
                  break;
                }

LABEL_754:
                v266 = sub_29B1F31FC(0, v265);
              }

              break;
            }

            sub_29B1D21C4(v789, v266);
            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__src.__r_.__value_.__l.__data_);
            }

            goto LABEL_757;
          }

          v239 = memcmp(v236, off_2A14FDEC0[0], v237) == 0;
          goto LABEL_603;
        }

        v233 = *v249 == 42;
        goto LABEL_787;
      }

      break;
    }

    sub_29B1D366C(&v930);
    sub_29B1D366C(&v934);
    v1 = sub_29B1D366C(&v938);
    LODWORD(v4) = 36;
  }

  if (v4 == 36)
  {
    v306 = sub_29B1F31FC(v1, v2);
    sub_29AABE37C(a1, v306, &v938);
    v308 = v938.__r_.__value_.__l.__size_;
    for (ii = v938.__r_.__value_.__r.__words[0]; ii != v308; ii += 16)
    {
      v310 = *ii;
      v309 = *(ii + 8);
      if (v309)
      {
        atomic_fetch_add_explicit(&v309->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v309->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v310 || !sub_29B1C6234(v310))
      {
        goto LABEL_851;
      }

      sub_29A008E78(&v930, off_2A14FDC70[0]);
      v311 = sub_29A8877BC(v310 + 20, &v930);
      if (v311)
      {
        v313 = (v311 + 5);
      }

      else
      {
        v313 = sub_29B1F31FC(0, v312);
      }

      if (v313[23] < 0)
      {
        sub_29A008D14(&v934, *v313, *(v313 + 1));
      }

      else
      {
        v314 = *v313;
        v934.__r_.__value_.__r.__words[2] = *(v313 + 2);
        *&v934.__r_.__value_.__l.__data_ = v314;
      }

      if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v930.__r_.__value_.__l.__data_);
      }

      v315 = HIBYTE(v934.__r_.__value_.__r.__words[2]);
      if ((v934.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v315 = v934.__r_.__value_.__l.__size_;
      }

      if (!v315)
      {
        goto LABEL_822;
      }

      v316 = sub_29B1F2C14();
      if ((v934.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v317 = HIBYTE(v934.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v317 = v934.__r_.__value_.__l.__size_;
      }

      v318 = *(v316 + 23);
      v319 = v318;
      if ((v318 & 0x80u) != 0)
      {
        v318 = v316[1];
      }

      if (v317 == v318)
      {
        v320 = &v934;
        if ((v934.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v320 = v934.__r_.__value_.__r.__words[0];
        }

        v321 = v319 >= 0 ? v316 : *v316;
        if (!memcmp(v320, v321, v317))
        {
LABEL_822:
          v323 = 0;
          v322 = 0;
          goto LABEL_830;
        }
      }

      sub_29A008E78(&v930, "out");
      sub_29AD9A124(v310, &v930, __p);
      v322 = __p[0];
      v323 = __p[1];
      __p[1] = 0;
      __p[0] = 0;
      if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v930.__r_.__value_.__l.__data_);
        if (v322)
        {
          goto LABEL_830;
        }
      }

      else if (v322)
      {
        goto LABEL_830;
      }

      sub_29A008E78(&v930, "out");
      sub_29AD9A05C(&v934, __p, v310, &v930);
      v322 = __p[0];
      v324 = __p[1];
      __p[1] = 0;
      __p[0] = 0;
      if (v323)
      {
        sub_29A014BEC(v323);
        if (__p[1])
        {
          sub_29A014BEC(__p[1]);
        }
      }

      if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v930.__r_.__value_.__l.__data_);
      }

      v323 = v324;
LABEL_830:
      sub_29A008E78(&v930, off_2A14FDC70[0]);
      sub_29B1D93E8(v310, &v930);
      if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v930.__r_.__value_.__l.__data_);
      }

      sub_29A008E78(&v930, off_2A14FDEA8[0]);
      v325 = sub_29A8877BC(v310 + 20, &v930);
      if (v325)
      {
        v327 = (v325 + 5);
      }

      else
      {
        v327 = sub_29B1F31FC(0, v326);
      }

      if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v930.__r_.__value_.__l.__data_);
        if (!v322)
        {
          goto LABEL_845;
        }
      }

      else if (!v322)
      {
        goto LABEL_845;
      }

      if ((v327[23] & 0x8000000000000000) != 0)
      {
        if (*(v327 + 1))
        {
LABEL_843:
          sub_29A008E78(&v930, off_2A14FDEA8[0]);
          sub_29B1D9334(v322, &v930, v327);
          if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v930.__r_.__value_.__l.__data_);
          }
        }
      }

      else if (v327[23])
      {
        goto LABEL_843;
      }

LABEL_845:
      sub_29A008E78(&v930, off_2A14FDEA8[0]);
      sub_29B1D93E8(v310, &v930);
      if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v930.__r_.__value_.__l.__data_);
      }

      if (v323)
      {
        sub_29A014BEC(v323);
      }

      if (SHIBYTE(v934.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v934.__r_.__value_.__l.__data_);
      }

LABEL_851:
      if (v309)
      {
        sub_29A014BEC(v309);
        sub_29A014BEC(v309);
      }
    }

    v934.__r_.__value_.__r.__words[0] = &v938;
    sub_29A0176E4(&v934);
    v330 = sub_29B1F31FC(v328, v329);
    sub_29AABE37C(a1, v330, &v938);
    __strb = v938.__r_.__value_.__l.__size_;
    for (jj = v938.__r_.__value_.__r.__words[0]; jj != __strb; jj = (jj + 16))
    {
      v333 = jj->__r_.__value_.__r.__words[0];
      v332 = jj->__r_.__value_.__l.__size_;
      if (v332)
      {
        atomic_fetch_add_explicit(&v332->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v796 = v332;
      sub_29A008E78(&v934, "shadertype");
      v334 = sub_29A8877BC((v333 + 160), &v934);
      v335 = v334;
      if (SHIBYTE(v934.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v934.__r_.__value_.__l.__data_);
        if (!v335)
        {
          goto LABEL_902;
        }
      }

      else if (!v334)
      {
        goto LABEL_902;
      }

      sub_29A008E78(&v930, "material");
      sub_29B1D16EC(a1, &v930, &v934);
      v790 = jj;
      if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v930.__r_.__value_.__l.__data_);
      }

      v802 = v934.__r_.__value_.__l.__size_;
      v336 = v934.__r_.__value_.__r.__words[0];
      if (v934.__r_.__value_.__r.__words[0] != v934.__r_.__value_.__l.__size_)
      {
        while (1)
        {
          v338 = *v336;
          v337 = v336[1];
          if (v337)
          {
            atomic_fetch_add_explicit(&v337->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v339 = v337;
          sub_29A008E78(__p, "shaderref");
          sub_29B1D16EC(v338, __p, &v930);
          if (SBYTE7(v874) < 0)
          {
            operator delete(__p[0]);
          }

          v341 = v930.__r_.__value_.__l.__size_;
          v340 = v930.__r_.__value_.__r.__words[0];
          if (v930.__r_.__value_.__r.__words[0] != v930.__r_.__value_.__l.__size_)
          {
            break;
          }

LABEL_898:
          __p[0] = &v930;
          sub_29A0176E4(__p);
          if (v337)
          {
            sub_29A014BEC(v337);
          }

          v336 += 2;
          if (v336 == v802)
          {
            goto LABEL_901;
          }
        }

        while (2)
        {
          v343 = *v340;
          v342 = *(v340 + 8);
          if (v342)
          {
            atomic_fetch_add_explicit(&v342->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29A008E78(__p, off_2A14FDE80[0]);
          v344 = sub_29A8877BC(v343 + 20, __p);
          if (v344)
          {
            v346 = (v344 + 5);
          }

          else
          {
            v346 = sub_29B1F31FC(0, v345);
          }

          v347 = v346[23];
          if (v347 >= 0)
          {
            v348 = v346[23];
          }

          else
          {
            v348 = *(v346 + 1);
          }

          v349 = *(v333 + 71);
          v350 = v349;
          if ((v349 & 0x80u) != 0)
          {
            v349 = *(v333 + 56);
          }

          if (v348 == v349)
          {
            if (v347 < 0)
            {
              v346 = *v346;
            }

            if (v350 >= 0)
            {
              v351 = (v333 + 48);
            }

            else
            {
              v351 = *(v333 + 48);
            }

            v352 = memcmp(v346, v351, v348) == 0;
          }

          else
          {
            v352 = 0;
          }

          if (SBYTE7(v874) < 0)
          {
            operator delete(__p[0]);
            if (!v352)
            {
              goto LABEL_892;
            }
          }

          else if (!v352)
          {
LABEL_892:
            if (v342)
            {
              goto LABEL_893;
            }

            goto LABEL_894;
          }

          sub_29A008E78(__p, off_2A14FDE80[0]);
          sub_29B1D93E8(v343, __p);
          if ((SBYTE7(v874) & 0x80000000) == 0)
          {
            goto LABEL_892;
          }

          operator delete(__p[0]);
          if (v342)
          {
LABEL_893:
            sub_29A014BEC(v342);
          }

LABEL_894:
          v340 += 16;
          v337 = v339;
          if (v340 == v341)
          {
            goto LABEL_898;
          }

          continue;
        }
      }

LABEL_901:
      v930.__r_.__value_.__r.__words[0] = &v934;
      sub_29A0176E4(&v930);
      sub_29B1D4CD8(a1, (v333 + 48));
      jj = v790;
LABEL_902:
      if (v796)
      {
        sub_29A014BEC(v796);
      }
    }

    v934.__r_.__value_.__r.__words[0] = &v938;
    sub_29A0176E4(&v934);
    v355 = sub_29B1F31FC(v353, v354);
    sub_29B1D3EEC(a1, v355, &v938);
    v357 = v938.__r_.__value_.__l.__size_;
    for (kk = v938.__r_.__value_.__r.__words[0]; kk != v357; kk += 16)
    {
      v359 = *kk;
      v358 = *(kk + 8);
      if (v358)
      {
        atomic_fetch_add_explicit(&v358->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A008E78(&v930, "geomattr");
      sub_29B1D16EC(v359, &v930, &v934);
      if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v930.__r_.__value_.__l.__data_);
      }

      v360 = v934.__r_.__value_.__l.__size_;
      for (mm = v934.__r_.__value_.__r.__words[0]; mm != v360; mm += 2)
      {
        v362 = *mm;
        v363 = mm[1];
        if (v363)
        {
          atomic_fetch_add_explicit(&v363->__shared_owners_, 1uLL, memory_order_relaxed);
          v896 = v363;
          atomic_fetch_add_explicit(&v363->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v896 = 0;
        }

        v895 = v362;
        sub_29A008E78(&v930, "geomprop");
        sub_29B1D9990(v359, &v895, &v930, &v897);
        if (v898)
        {
          sub_29A014BEC(v898);
        }

        if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v930.__r_.__value_.__l.__data_);
        }

        if (v896)
        {
          sub_29A014BEC(v896);
        }

        if (v363)
        {
          sub_29A014BEC(v363);
        }
      }

      v930.__r_.__value_.__r.__words[0] = &v934;
      sub_29A0176E4(&v930);
      if (v358)
      {
        sub_29A014BEC(v358);
      }
    }

    v934.__r_.__value_.__r.__words[0] = &v938;
    sub_29A0176E4(&v934);
    sub_29B1DA4E4(a1, &v938);
    v940[1] = 0;
    *&v934.__r_.__value_.__l.__data_ = *&v938.__r_.__value_.__l.__data_;
    if (v938.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v938.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v934.__r_.__value_.__r.__words[2] = 0;
    v935 = 0;
    v936 = 0;
    v364 = sub_29B1D3464(&v934.__r_.__value_.__r.__words[2], v938.__r_.__value_.__r.__words[2], v939, 0xAAAAAAAAAAAAAAABLL * ((v939 - v938.__r_.__value_.__r.__words[2]) >> 3));
    v937 = *v940;
    v366 = sub_29B1F19B8(v364, v365);
    v367 = v366;
    v368 = v366[1];
    v930.__r_.__value_.__r.__words[0] = *v366;
    v930.__r_.__value_.__l.__size_ = v368;
    if (v368)
    {
      atomic_fetch_add_explicit((v368 + 8), 1uLL, memory_order_relaxed);
    }

    v931 = 0;
    v930.__r_.__value_.__r.__words[2] = 0;
    v932 = 0;
    sub_29B1D3464(&v930.__r_.__value_.__r.__words[2], v366[2], v366[3], 0xAAAAAAAAAAAAAAABLL * ((v366[3] - v366[2]) >> 3));
    v933 = *(v367 + 5);
    while (1)
    {
      if (sub_29B1D35F8(&v934, &v930))
      {
        sub_29B1D366C(&v930);
        sub_29B1D366C(&v934);
        sub_29B1D366C(&v938);
        sub_29B1DA4E4(a1, &v938);
        v940[1] = 0;
        *&v934.__r_.__value_.__l.__data_ = *&v938.__r_.__value_.__l.__data_;
        if (v938.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v938.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        v934.__r_.__value_.__r.__words[2] = 0;
        v935 = 0;
        v936 = 0;
        v384 = sub_29B1D3464(&v934.__r_.__value_.__r.__words[2], v938.__r_.__value_.__r.__words[2], v939, 0xAAAAAAAAAAAAAAABLL * ((v939 - v938.__r_.__value_.__r.__words[2]) >> 3));
        v937 = *v940;
        v386 = sub_29B1F19B8(v384, v385);
        v387 = v386;
        v388 = v386[1];
        v930.__r_.__value_.__r.__words[0] = *v386;
        v930.__r_.__value_.__l.__size_ = v388;
        if (v388)
        {
          atomic_fetch_add_explicit((v388 + 8), 1uLL, memory_order_relaxed);
        }

        v931 = 0;
        v930.__r_.__value_.__r.__words[2] = 0;
        v932 = 0;
        sub_29B1D3464(&v930.__r_.__value_.__r.__words[2], v386[2], v386[3], 0xAAAAAAAAAAAAAAABLL * ((v386[3] - v386[2]) >> 3));
        v933 = *(v387 + 5);
LABEL_969:
        if (sub_29B1D35F8(&v934, &v930))
        {
          sub_29B1D366C(&v930);
          sub_29B1D366C(&v934);
          v508 = sub_29B1D366C(&v938);
          sub_29A008E78(v508, "ND_backdrop");
          sub_29B1D4CD8(a1, &v938);
          if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v938.__r_.__value_.__l.__data_);
          }

          sub_29A008E78(&v938, "ND_invert_matrix33");
          sub_29B1D4CD8(a1, &v938);
          if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v938.__r_.__value_.__l.__data_);
          }

          sub_29A008E78(&v938, "ND_invert_matrix44");
          sub_29B1D4CD8(a1, &v938);
          if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v938.__r_.__value_.__l.__data_);
          }

          sub_29A008E78(&v938, "ND_rotate_vector2");
          sub_29B1D4CD8(a1, &v938);
          if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v938.__r_.__value_.__l.__data_);
          }

          sub_29A008E78(&v938, "ND_rotate_vector3");
          sub_29B1D4CD8(a1, &v938);
          if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v938.__r_.__value_.__l.__data_);
          }

          LODWORD(v4) = 37;
          break;
        }

        v389 = *&v934.__r_.__value_.__l.__data_;
        if (v934.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v934.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        sub_29B1D7E50(v389, &v869);
        v390 = v869.__r_.__value_.__r.__words[0];
        if (!v869.__r_.__value_.__r.__words[0])
        {
          goto LABEL_1199;
        }

        v391 = (v869.__r_.__value_.__r.__words[0] + 24);
        if (*(v869.__r_.__value_.__r.__words[0] + 47) < 0)
        {
          if (*(v869.__r_.__value_.__r.__words[0] + 32) == 6)
          {
            v393 = *v391;
            goto LABEL_978;
          }
        }

        else
        {
          v392 = *(v869.__r_.__value_.__r.__words[0] + 47);
          v393 = v869.__r_.__value_.__r.__words[0] + 24;
          if (v392 != 6)
          {
LABEL_983:
            v397 = 0;
            if (v392 == 6)
            {
              v398 = v390 + 24;
              goto LABEL_987;
            }

            goto LABEL_991;
          }

LABEL_978:
          v394 = *v393;
          v395 = *(v393 + 4);
          if (v394 == 1702260329 && v395 == 29810)
          {
            v419 = (*(*v869.__r_.__value_.__l.__data_ + 64))(v869.__r_.__value_.__r.__words[0]);
            v420 = sub_29B1F8854();
            v421 = *(v419 + 23);
            if (v421 >= 0)
            {
              v422 = *(v419 + 23);
            }

            else
            {
              v422 = *(v419 + 8);
            }

            v423 = *(v420 + 23);
            v424 = v423;
            if ((v423 & 0x80u) != 0)
            {
              v423 = v420[1];
            }

            if (v422 == v423)
            {
              v425 = v421 >= 0 ? v419 : *v419;
              v426 = v424 >= 0 ? v420 : *v420;
              if (!memcmp(v425, v426, v422))
              {
                goto LABEL_1047;
              }
            }

            v427 = (*(*v869.__r_.__value_.__l.__data_ + 64))(v869.__r_.__value_.__r.__words[0]);
            v428 = sub_29B1F8D24();
            v429 = *(v427 + 23);
            if (v429 >= 0)
            {
              v430 = *(v427 + 23);
            }

            else
            {
              v430 = *(v427 + 8);
            }

            v431 = *(v428 + 23);
            v432 = v431;
            if ((v431 & 0x80u) != 0)
            {
              v431 = v428[1];
            }

            if (v430 == v431)
            {
              v433 = v429 >= 0 ? v427 : *v427;
              v434 = v432 >= 0 ? v428 : *v428;
              if (!memcmp(v433, v434, v430))
              {
LABEL_1047:
                v435 = v869.__r_.__value_.__r.__words[0];
                sub_29A008E78(__p, "invertmatrix");
                std::string::operator=(v435 + 1, __p);
                goto LABEL_1197;
              }
            }
          }
        }

        v392 = *(v390 + 47);
        if ((*(v390 + 47) & 0x80000000) == 0)
        {
          goto LABEL_983;
        }

        if (*(v390 + 32) != 6)
        {
LABEL_992:
          if (*(v390 + 32) == 7)
          {
            v402 = *v391;
            v403 = 1;
            goto LABEL_996;
          }

LABEL_1001:
          if (*(v390 + 32) == 14)
          {
            v407 = *v391;
            v408 = 1;
            goto LABEL_1005;
          }

LABEL_1010:
          if (*(v390 + 32) == 15)
          {
            v412 = *v391;
            v413 = 1;
            goto LABEL_1014;
          }

LABEL_1019:
          if (*(v390 + 32) == 15)
          {
            v417 = *v391;
            v418 = 1;
            goto LABEL_1076;
          }

LABEL_1081:
          if (*(v390 + 32) != 7)
          {
            goto LABEL_1093;
          }

          v456 = *v391;
          goto LABEL_1089;
        }

        v398 = *v391;
        v397 = 1;
LABEL_987:
        v399 = *v398;
        v400 = *(v398 + 4);
        if (v399 == 1635020658 && v400 == 25972)
        {
          v436 = v869.__r_.__value_.__r.__words[0];
          v437 = (*(*v869.__r_.__value_.__l.__data_ + 64))(v869.__r_.__value_.__r.__words[0]);
          v438 = sub_29B1F6314();
          v439 = *(v437 + 23);
          if (v439 >= 0)
          {
            v440 = *(v437 + 23);
          }

          else
          {
            v440 = *(v437 + 8);
          }

          v441 = *(v438 + 23);
          v442 = v441;
          if (v441 < 0)
          {
            v441 = v438[1];
          }

          v443 = "rotate3d";
          if (v440 == v441)
          {
            if (v439 >= 0)
            {
              v444 = v437;
            }

            else
            {
              v444 = *v437;
            }

            if (v442 >= 0)
            {
              v445 = v438;
            }

            else
            {
              v445 = *v438;
            }

            if (!memcmp(v444, v445, v440))
            {
              v443 = "rotate2d";
            }

            else
            {
              v443 = "rotate3d";
            }
          }

          sub_29A008E78(__p, v443);
          std::string::operator=(v436 + 1, __p);
          goto LABEL_1197;
        }

LABEL_991:
        if (v397)
        {
          goto LABEL_992;
        }

        if (v392 == 7)
        {
          v403 = 0;
          v402 = (v390 + 24);
LABEL_996:
          v404 = *v402;
          v405 = *(v402 + 3);
          if (v404 == 1886220131 && v405 == 1701994864)
          {
            v446 = v869.__r_.__value_.__r.__words[0];
            sub_29A008E78(__p, "ifgreatereq");
            std::string::operator=(v446 + 1, __p);
            if (SBYTE7(v874) < 0)
            {
              operator delete(__p[0]);
            }

            v447 = v869.__r_.__value_.__r.__words[0];
            sub_29A008E78(__p, "intest");
            sub_29AAC1E24(v447, __p, &__src);
            if (SBYTE7(v874) < 0)
            {
              operator delete(__p[0]);
            }

            v448 = __src.__r_.__value_.__r.__words[0];
            if (__src.__r_.__value_.__r.__words[0])
            {
              sub_29A008E78(__p, "value1");
              sub_29B1D8568(v448, __p);
              if (SBYTE7(v874) < 0)
              {
                operator delete(__p[0]);
              }
            }

            v449 = v869.__r_.__value_.__r.__words[0];
            sub_29A008E78(__p, "cutoff");
            v450 = sub_29A8877BC((v449 + 96), __p);
            if (v450)
            {
              v452 = v450[5];
              v451 = v450[6];
              if (v451)
              {
                atomic_fetch_add_explicit(&v451->__shared_owners_, 1uLL, memory_order_relaxed);
              }
            }

            else
            {
              v451 = 0;
              v452 = 0;
            }

            if (SBYTE7(v874) < 0)
            {
              operator delete(__p[0]);
              if (!v452)
              {
                goto LABEL_1156;
              }

LABEL_1144:
              v491 = v869.__r_.__value_.__r.__words[0];
              v893 = v452;
              v894 = v451;
              if (v451)
              {
                atomic_fetch_add_explicit(&v451->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              sub_29A008E78(__p, "input");
              sub_29B1D9990(v491, &v893, __p, &v867);
              v492 = v867.__r_.__value_.__l.__size_;
              v493 = v867.__r_.__value_.__r.__words[0];
              *&v867.__r_.__value_.__l.__data_ = 0uLL;
              if (v451)
              {
                sub_29A014BEC(v451);
                if (v867.__r_.__value_.__l.__size_)
                {
                  sub_29A014BEC(v867.__r_.__value_.__l.__size_);
                }
              }

              if (SBYTE7(v874) < 0)
              {
                operator delete(__p[0]);
              }

              if (v894)
              {
                sub_29A014BEC(v894);
              }

              sub_29A008E78(__p, "value2");
              sub_29B1D8568(v493, __p);
              if (SBYTE7(v874) < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              if (v452)
              {
                goto LABEL_1144;
              }

LABEL_1156:
              v492 = v451;
            }

            v494 = v869.__r_.__value_.__r.__words[0];
            sub_29A008E78(__p, "in1");
            sub_29AAC1E24(v494, __p, &v867);
            if (SBYTE7(v874) < 0)
            {
              operator delete(__p[0]);
            }

            v495 = v869.__r_.__value_.__r.__words[0];
            sub_29A008E78(__p, "in2");
            sub_29AAC1E24(v495, __p, &v865);
            if (SBYTE7(v874) < 0)
            {
              operator delete(__p[0]);
            }

            v496 = v867.__r_.__value_.__r.__words[0];
            if (v867.__r_.__value_.__r.__words[0] && v865.__r_.__value_.__r.__words[0])
            {
              sub_29A008E78(v891, "temp");
              sub_29AD961E8(a1, v891, __p);
              sub_29B1D8568(v496, __p);
              if (SBYTE7(v874) < 0)
              {
                operator delete(__p[0]);
              }

              if (v892 < 0)
              {
                operator delete(v891[0]);
              }

              v497 = v865.__r_.__value_.__r.__words[0];
              sub_29A008E78(__p, "in1");
              sub_29B1D8568(v497, __p);
              if (SBYTE7(v874) < 0)
              {
                operator delete(__p[0]);
              }

              v498 = v867.__r_.__value_.__r.__words[0];
              sub_29A008E78(__p, "in2");
              sub_29B1D8568(v498, __p);
              if (SBYTE7(v874) < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (v865.__r_.__value_.__l.__size_)
            {
              sub_29A014BEC(v865.__r_.__value_.__l.__size_);
            }

            if (v867.__r_.__value_.__l.__size_)
            {
              sub_29A014BEC(v867.__r_.__value_.__l.__size_);
            }

            if (v492)
            {
              sub_29A014BEC(v492);
            }

LABEL_1177:
            v485 = __src.__r_.__value_.__l.__size_;
            if (!__src.__r_.__value_.__l.__size_)
            {
              goto LABEL_1199;
            }

            goto LABEL_1178;
          }

          if (v403)
          {
            goto LABEL_1001;
          }
        }

        if (v392 != 14)
        {
          goto LABEL_1012;
        }

        v408 = 0;
        v407 = (v390 + 24);
LABEL_1005:
        v409 = *v407;
        v410 = *(v407 + 6);
        if (v409 != 0x726F66736E617274 || v410 != 0x746E696F706D726FLL)
        {
          if (v408)
          {
            goto LABEL_1010;
          }

LABEL_1012:
          if (v392 != 15)
          {
            goto LABEL_1088;
          }

          v413 = 0;
          v412 = (v390 + 24);
LABEL_1014:
          v414 = *v412;
          v415 = *(v412 + 7);
          if (v414 != 0x726F66736E617274 || v415 != 0x726F746365766D72)
          {
            if (v413)
            {
              goto LABEL_1019;
            }

            if (v392 != 15)
            {
              goto LABEL_1088;
            }

            v418 = 0;
            v417 = (v390 + 24);
LABEL_1076:
            v453 = *v417;
            v454 = *(v417 + 7);
            if (v453 != 0x726F66736E617274 || v454 != 0x6C616D726F6E6D72)
            {
              if (v418)
              {
                goto LABEL_1081;
              }

LABEL_1088:
              v456 = (v390 + 24);
              if (v392 != 7)
              {
                goto LABEL_1093;
              }

LABEL_1089:
              v462 = *v456;
              v463 = *(v456 + 3);
              if (v462 != 1651339107 || v463 != 1701734754)
              {
LABEL_1093:
                if (sub_29A0F2648((v390 + 24), "separate"))
                {
                  v465 = v869.__r_.__value_.__r.__words[0];
                  sub_29A008E78(__p, "in");
                  sub_29AAC1E24(v465, __p, &__src);
                  if (SBYTE7(v874) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (__src.__r_.__value_.__r.__words[0])
                  {
                    v466 = (*(*__src.__r_.__value_.__l.__data_ + 64))(__src.__r_.__value_.__r.__words[0]);
                    v467 = sub_29B1F6C04();
                    if (sub_29A1B00DC(v466, v467) || (v468 = sub_29B1F5E98(), sub_29A1B00DC(v466, v468)))
                    {
                      v469 = v869.__r_.__value_.__r.__words[0];
                      sub_29A008E78(__p, "separate4");
                      std::string::operator=(v469 + 1, __p);
                    }

                    else
                    {
                      v503 = sub_29B1F6784();
                      if (sub_29A1B00DC(v466, v503) || (v504 = sub_29B1F5A18(), sub_29A1B00DC(v466, v504)))
                      {
                        v505 = v869.__r_.__value_.__r.__words[0];
                        sub_29A008E78(__p, "separate3");
                        std::string::operator=(v505 + 1, __p);
                      }

                      else
                      {
                        v507 = v869.__r_.__value_.__r.__words[0];
                        sub_29A008E78(__p, "separate2");
                        std::string::operator=(v507 + 1, __p);
                      }
                    }

                    if (SBYTE7(v874) < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }

                  goto LABEL_1177;
                }

                if (!sub_29A0F2648((v390 + 24), "backdrop"))
                {
                  goto LABEL_1199;
                }

                sub_29B1D4D30(a1, v869.__r_.__value_.__r.__words[0] + 48, &v867);
                v470 = v869.__r_.__value_.__r.__words[0];
                sub_29A008E78(&__src, "parameter");
                sub_29B1D16EC(v470, &__src, __p);
                if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__src.__r_.__value_.__l.__data_);
                }

                v471 = __p[0];
                v472 = __p[1];
                while (2)
                {
                  if (v471 == v472)
                  {
                    __src.__r_.__value_.__r.__words[0] = __p;
                    sub_29A0176E4(&__src);
                    sub_29B1D52A0(a1, (v869.__r_.__value_.__r.__words[0] + 48));
                    v485 = v867.__r_.__value_.__l.__size_;
                    if (!v867.__r_.__value_.__l.__size_)
                    {
                      goto LABEL_1199;
                    }

LABEL_1178:
                    sub_29A014BEC(v485);
                    goto LABEL_1199;
                  }

                  v474 = *v471;
                  v473 = v471[1];
                  if (v473)
                  {
                    atomic_fetch_add_explicit(&v473->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  sub_29A008E78(&__src, off_2A14FDC78[0]);
                  v475 = sub_29A8877BC((v474 + 160), &__src);
                  v476 = v475;
                  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__src.__r_.__value_.__l.__data_);
                    if (!v476)
                    {
                      goto LABEL_1117;
                    }
                  }

                  else if (!v475)
                  {
                    goto LABEL_1117;
                  }

                  v477 = v867.__r_.__value_.__r.__words[0];
                  sub_29A008E78(&__src, off_2A14FDC78[0]);
                  v478 = sub_29A8877BC((v474 + 160), &__src);
                  if (v478)
                  {
                    v480 = (v478 + 5);
                  }

                  else
                  {
                    v480 = sub_29B1F31FC(0, v479);
                  }

                  sub_29B1D9334(v477, (v474 + 48), v480);
                  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__src.__r_.__value_.__l.__data_);
                    if (v473)
                    {
LABEL_1118:
                      sub_29A014BEC(v473);
                    }
                  }

                  else
                  {
LABEL_1117:
                    if (v473)
                    {
                      goto LABEL_1118;
                    }
                  }

                  v471 += 2;
                  continue;
                }
              }

              v486 = v869.__r_.__value_.__r.__words[0];
              sub_29A008E78(__p, "in4");
              v487 = sub_29A8877BC((v486 + 96), __p);
              if (v487)
              {
                v489 = v487[5];
                v488 = v487[6];
                if (v488)
                {
                  atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_29A014BEC(v488);
                }
              }

              else
              {
                v489 = 0;
              }

              if (SBYTE7(v874) < 0)
              {
                operator delete(__p[0]);
              }

              v499 = v869.__r_.__value_.__r.__words[0];
              if (v489)
              {
                sub_29A008E78(__p, "combine4");
                std::string::operator=(v499 + 1, __p);
              }

              else
              {
                sub_29A008E78(__p, "in3");
                v500 = sub_29A8877BC(v499[4].__r_.__value_.__r.__words, __p);
                if (v500)
                {
                  v502 = v500[5];
                  v501 = v500[6];
                  if (v501)
                  {
                    atomic_fetch_add_explicit(&v501->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_29A014BEC(v501);
                  }
                }

                else
                {
                  v502 = 0;
                }

                if (SBYTE7(v874) < 0)
                {
                  operator delete(__p[0]);
                }

                v506 = v869.__r_.__value_.__r.__words[0];
                if (v502)
                {
                  sub_29A008E78(__p, "combine3");
                }

                else
                {
                  sub_29A008E78(__p, "combine2");
                }

                std::string::operator=(v506 + 1, __p);
              }

LABEL_1197:
              if (SBYTE7(v874) < 0)
              {
                operator delete(__p[0]);
              }

LABEL_1199:
              if (v869.__r_.__value_.__l.__size_)
              {
                sub_29A014BEC(v869.__r_.__value_.__l.__size_);
              }

              if (*(&v389 + 1))
              {
                sub_29A014BEC(*(&v389 + 1));
              }

              sub_29B1F19D8(&v934);
              goto LABEL_969;
            }
          }
        }

        v457 = v869.__r_.__value_.__r.__words[0];
        sub_29A008E78(__p, "fromspace");
        v458 = sub_29A8877BC((v457 + 96), __p);
        if (v458)
        {
          v459 = v458[5];
          v460 = v458[6];
          if (v460)
          {
            atomic_fetch_add_explicit(&v460->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v459)
          {
            v461 = 0;
            goto LABEL_1134;
          }
        }

        else
        {
          v460 = 0;
        }

        v481 = v869.__r_.__value_.__r.__words[0];
        sub_29A008E78(&__src, "tospace");
        v482 = sub_29A8877BC((v481 + 96), &__src);
        if (v482)
        {
          v484 = v482[5];
          v483 = v482[6];
          if (v483)
          {
            atomic_fetch_add_explicit(&v483->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_29A014BEC(v483);
          }
        }

        else
        {
          v484 = 0;
        }

        v461 = v484 == 0;
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

LABEL_1134:
        if (v460)
        {
          sub_29A014BEC(v460);
        }

        if (SBYTE7(v874) < 0)
        {
          operator delete(__p[0]);
          if (!v461)
          {
            goto LABEL_1199;
          }
        }

        else if (!v461)
        {
          goto LABEL_1199;
        }

        v490 = v869.__r_.__value_.__r.__words[0];
        sub_29A008E78(__p, "transformmatrix");
        std::string::operator=(v490 + 1, __p);
        goto LABEL_1197;
      }

      v369 = *&v934.__r_.__value_.__l.__data_;
      if (v934.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v934.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      sub_29B1D7E50(v369, &v869);
      if (v869.__r_.__value_.__r.__words[0])
      {
        v370 = (v869.__r_.__value_.__r.__words[0] + 24);
        v371 = *(v869.__r_.__value_.__r.__words[0] + 47);
        if (v371 < 0)
        {
          if (*(v869.__r_.__value_.__r.__words[0] + 32) != 13)
          {
            goto LABEL_945;
          }

          v372 = v370->__r_.__value_.__r.__words[0];
        }

        else
        {
          v372 = (v869.__r_.__value_.__r.__words[0] + 24);
          if (v371 != 13)
          {
            goto LABEL_945;
          }
        }

        v373 = *v372;
        v374 = *(v372 + 5);
        if (v373 == 0x727474616D6F6567 && v374 == 0x65756C6176727474)
        {
          sub_29A008E78(__p, "geompropvalue");
          std::string::operator=(v370, __p);
          if (SBYTE7(v874) < 0)
          {
            operator delete(__p[0]);
          }

          v376 = v869.__r_.__value_.__r.__words[0];
          sub_29A008E78(__p, "attrname");
          v377 = sub_29A8877BC((v376 + 160), __p);
          if (SBYTE7(v874) < 0)
          {
            operator delete(__p[0]);
          }

          if (v377)
          {
            v378 = v869.__r_.__value_.__r.__words[0];
            sub_29A008E78(__p, "geomprop");
            v379 = v869.__r_.__value_.__r.__words[0];
            sub_29A008E78(&__src, "attrname");
            v380 = sub_29A8877BC((v379 + 160), &__src);
            if (v380)
            {
              v382 = (v380 + 5);
            }

            else
            {
              v382 = sub_29B1F31FC(0, v381);
            }

            sub_29B1D9334(v378, __p, v382);
            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__src.__r_.__value_.__l.__data_);
            }

            if (SBYTE7(v874) < 0)
            {
              operator delete(__p[0]);
            }

            v383 = v869.__r_.__value_.__r.__words[0];
            sub_29A008E78(__p, "attrname");
            sub_29B1D93E8(v383, __p);
            if (SBYTE7(v874) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

LABEL_945:
      if (v869.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(v869.__r_.__value_.__l.__size_);
      }

      if (*(&v369 + 1))
      {
        sub_29A014BEC(*(&v369 + 1));
      }

      sub_29B1F19D8(&v934);
    }
  }

  if (v4 < 37)
  {
    return;
  }

  sub_29B1D52F8(&v938, "r", "x");
  sub_29B1D52F8(&v940[1], "a", "y");
  sub_29AB974A4(v890, &v938, 2);
  for (nn = 0; nn != -12; nn -= 6)
  {
    v510 = (&v938.__r_.__value_.__l.__data_ + nn * 8);
    if (SHIBYTE(v940[nn + 6]) < 0)
    {
      operator delete(v510[9]);
    }

    if (*(v510 + 71) < 0)
    {
      operator delete(v510[6]);
    }
  }

  sub_29B1DA4E4(a1, &v938);
  v940[1] = 0;
  *&v934.__r_.__value_.__l.__data_ = *&v938.__r_.__value_.__l.__data_;
  if (v938.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v938.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  v934.__r_.__value_.__r.__words[2] = 0;
  v935 = 0;
  v936 = 0;
  v511 = sub_29B1D3464(&v934.__r_.__value_.__r.__words[2], v938.__r_.__value_.__r.__words[2], v939, 0xAAAAAAAAAAAAAAABLL * ((v939 - v938.__r_.__value_.__r.__words[2]) >> 3));
  v937 = *v940;
  v513 = sub_29B1F19B8(v511, v512);
  v514 = v513;
  v515 = v513[1];
  v930.__r_.__value_.__r.__words[0] = *v513;
  v930.__r_.__value_.__l.__size_ = v515;
  if (v515)
  {
    atomic_fetch_add_explicit((v515 + 8), 1uLL, memory_order_relaxed);
  }

  v931 = 0;
  v930.__r_.__value_.__r.__words[2] = 0;
  v932 = 0;
  sub_29B1D3464(&v930.__r_.__value_.__r.__words[2], v513[2], v513[3], 0xAAAAAAAAAAAAAAABLL * ((v513[3] - v513[2]) >> 3));
  v933 = *(v514 + 5);
LABEL_1228:
  if (!sub_29B1D35F8(&v934, &v930))
  {
    v516 = *&v934.__r_.__value_.__l.__data_;
    if (v934.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v934.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(__p, off_2A14FDC70[0]);
    v517 = sub_29A8877BC((v516 + 160), __p);
    if (v517)
    {
      v519 = (v517 + 5);
    }

    else
    {
      v519 = sub_29B1F31FC(0, v518);
    }

    v520 = v519[23];
    if (v520 < 0)
    {
      if (*(v519 + 1) != 6)
      {
LABEL_1245:
        v522 = 0;
LABEL_1246:
        if (SBYTE7(v874) < 0)
        {
          operator delete(__p[0]);
          if (!v522)
          {
            goto LABEL_1328;
          }
        }

        else if (!v522)
        {
          goto LABEL_1328;
        }

        sub_29A008E78(__p, off_2A14FDC70[0]);
        v523 = sub_29B1F6314();
        sub_29B1D9334(v516, __p, v523);
        if (SBYTE7(v874) < 0)
        {
          operator delete(__p[0]);
        }

        v524 = *(v516 + 232);
        if (v524)
        {
          v524 = std::__shared_weak_count::lock(v524);
          v525 = v524;
          if (v524)
          {
            v524 = *(v516 + 224);
          }
        }

        else
        {
          v525 = 0;
        }

        sub_29B1D7E50(v524, &v867);
        if (v525)
        {
          sub_29A014BEC(v525);
        }

        if (!v867.__r_.__value_.__r.__words[0])
        {
          goto LABEL_1326;
        }

        sub_29B1EDECC(v867.__r_.__value_.__l.__data_, __p);
        v526 = __p[0];
        v527 = __p[1];
        while (1)
        {
          if (v526 == v527)
          {
            __src.__r_.__value_.__r.__words[0] = __p;
            sub_29A0176E4(&__src);
            v534 = v867.__r_.__value_.__r.__words[0];
            sub_29A008E78(__p, "channels");
            v535 = sub_29A8877BC((v534 + 96), __p);
            if (v535)
            {
              v536 = v535[5];
              v537 = v535[6];
              if (v537)
              {
                atomic_fetch_add_explicit(&v537->__shared_owners_, 1uLL, memory_order_relaxed);
              }
            }

            else
            {
              v536 = 0;
              v537 = 0;
            }

            if (SBYTE7(v874) < 0)
            {
              operator delete(__p[0]);
              if (v536)
              {
                goto LABEL_1301;
              }
            }

            else
            {
              if (!v536)
              {
                goto LABEL_1324;
              }

LABEL_1301:
              sub_29A008E78(__p, off_2A14FDC78[0]);
              v538 = sub_29A8877BC((v536 + 160), __p);
              v539 = v538;
              if (SBYTE7(v874) < 0)
              {
                operator delete(__p[0]);
                if (v539)
                {
                  goto LABEL_1305;
                }
              }

              else
              {
                if (!v538)
                {
                  goto LABEL_1324;
                }

LABEL_1305:
                sub_29A008E78(&__src, off_2A14FDC78[0]);
                v540 = sub_29A8877BC((v536 + 160), &__src);
                if (v540)
                {
                  v542 = (v540 + 5);
                }

                else
                {
                  v542 = sub_29B1F31FC(0, v541);
                }

                if (v542[23] < 0)
                {
                  sub_29A008D14(__p, *v542, *(v542 + 1));
                }

                else
                {
                  v543 = *v542;
                  *&v874 = *(v542 + 2);
                  *__p = v543;
                }

                if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__src.__r_.__value_.__l.__data_);
                }

                if (SBYTE7(v874) < 0)
                {
                  sub_29A008D14(&v887, __p[0], __p[1]);
                }

                else
                {
                  *&v887.__r_.__value_.__l.__data_ = *__p;
                  v887.__r_.__value_.__r.__words[2] = v874;
                }

                sub_29B1F37E0(&__src, &v887, v890);
                if (SBYTE7(v874) < 0)
                {
                  operator delete(__p[0]);
                }

                *__p = *&__src.__r_.__value_.__l.__data_;
                *&v874 = *(&__src.__r_.__value_.__l + 2);
                *(&__src.__r_.__value_.__s + 23) = 0;
                __src.__r_.__value_.__s.__data_[0] = 0;
                if (SHIBYTE(v887.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v887.__r_.__value_.__l.__data_);
                }

                sub_29A008E78(&__src, off_2A14FDC78[0]);
                sub_29B1D9334(v536, &__src, __p);
                if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__src.__r_.__value_.__l.__data_);
                }

                if (SBYTE7(v874) < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }

LABEL_1324:
            if (v537)
            {
              sub_29A014BEC(v537);
            }

LABEL_1326:
            if (v867.__r_.__value_.__l.__size_)
            {
              sub_29A014BEC(v867.__r_.__value_.__l.__size_);
            }

LABEL_1328:
            if (*(&v516 + 1))
            {
              sub_29A014BEC(*(&v516 + 1));
            }

            sub_29B1F19D8(&v934);
            goto LABEL_1228;
          }

          v528 = *v526;
          v529 = v526[1];
          if (v529)
          {
            atomic_fetch_add_explicit(&v529->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (sub_29B1D2240(v528))
          {
            v530 = sub_29B1D22C0(v528);
            if (v530[23] < 0)
            {
              sub_29A008D14(&__src, *v530, *(v530 + 1));
            }

            else
            {
              v531 = *v530;
              __src.__r_.__value_.__r.__words[2] = *(v530 + 2);
              *&__src.__r_.__value_.__l.__data_ = v531;
            }

            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_29A008D14(&v889, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
            }

            else
            {
              v889 = __src;
            }

            sub_29B1F37E0(&v869, &v889, v890);
            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__src.__r_.__value_.__l.__data_);
            }

            __src = v869;
            *(&v869.__r_.__value_.__s + 23) = 0;
            v869.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(v889.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v889.__r_.__value_.__l.__data_);
            }

            sub_29B1D234C(v528, &__src);
            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__src.__r_.__value_.__l.__data_);
            }
          }

          if (!sub_29B1D23C8(v528))
          {
            break;
          }

          v532 = sub_29B1D2448(v528);
          if (v532[23] < 0)
          {
            sub_29A008D14(&__src, *v532, *(v532 + 1));
          }

          else
          {
            v533 = *v532;
            __src.__r_.__value_.__r.__words[2] = *(v532 + 2);
            *&__src.__r_.__value_.__l.__data_ = v533;
          }

          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_29A008D14(&v888, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
          }

          else
          {
            v888 = __src;
          }

          sub_29B1F37E0(&v869, &v888, v890);
          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

          __src = v869;
          *(&v869.__r_.__value_.__s + 23) = 0;
          v869.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v888.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v888.__r_.__value_.__l.__data_);
          }

          sub_29AD9A0A8(v528, &__src);
          if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            break;
          }

          operator delete(__src.__r_.__value_.__l.__data_);
          if (v529)
          {
            goto LABEL_1289;
          }

LABEL_1290:
          v526 += 2;
        }

        if (!v529)
        {
          goto LABEL_1290;
        }

LABEL_1289:
        sub_29A014BEC(v529);
        goto LABEL_1290;
      }

      v519 = *v519;
    }

    else if (v520 != 6)
    {
      goto LABEL_1245;
    }

    v522 = *v519 == 1869377379 && *(v519 + 2) == 12914;
    goto LABEL_1246;
  }

  sub_29B1D366C(&v930);
  sub_29B1D366C(&v934);
  sub_29B1D366C(&v938);
  sub_29A008E78(&v934, "material");
  sub_29B1D16EC(a1, &v934, &v938);
  if (SHIBYTE(v934.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v934.__r_.__value_.__l.__data_);
  }

  v780 = v938.__r_.__value_.__l.__size_;
  v544 = v938.__r_.__value_.__r.__words[0];
  if (v938.__r_.__value_.__r.__words[0] == v938.__r_.__value_.__l.__size_)
  {
    goto LABEL_1500;
  }

  do
  {
    v546 = *v544;
    v545 = v544[1];
    if (v545)
    {
      atomic_fetch_add_explicit(&v545->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __strc = v545;
    sub_29A008E78(&v930, "shaderref");
    sub_29B1D16EC(v546, &v930, &v934);
    v791 = v546;
    v783 = v544;
    if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v930.__r_.__value_.__l.__data_);
    }

    v803 = v934.__r_.__value_.__l.__size_;
    v547 = v934.__r_.__value_.__r.__words[0];
    if (v934.__r_.__value_.__r.__words[0] == v934.__r_.__value_.__l.__size_)
    {
      v548 = 0;
      v797 = 0;
      goto LABEL_1486;
    }

    v797 = 0;
    v548 = 0;
    do
    {
      v550 = *v547;
      v549 = v547[1];
      if (v549)
      {
        atomic_fetch_add_explicit(&v549->__shared_owners_, 1uLL, memory_order_relaxed);
        v885 = v550;
        v886 = v549;
        atomic_fetch_add_explicit(&v549->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v885 = *v547;
        v886 = 0;
      }

      sub_29B1D1950(&v885, &v855);
      if (v549)
      {
        sub_29A014BEC(v549);
      }

      if (v855)
      {
        v551 = (*(*v855 + 64))(v855);
        if (*(v551 + 23) < 0)
        {
          sub_29A008D14(&v930, *v551, *(v551 + 8));
        }

        else
        {
          v552 = *v551;
          v930.__r_.__value_.__r.__words[2] = *(v551 + 16);
          *&v930.__r_.__value_.__l.__data_ = v552;
        }
      }

      else
      {
        sub_29A008E78(&v930, off_2A14FDEF0[0]);
      }

      v553 = v855;
      if (v855)
      {
        v554 = sub_29AABE2F0(v855);
      }

      else
      {
        sub_29A008E78(v883, off_2A14FDC08[0]);
        v555 = sub_29A8877BC((v550 + 160), v883);
        if (v555)
        {
          v554 = (v555 + 5);
        }

        else
        {
          v554 = sub_29B1F31FC(0, v556);
        }
      }

      if (v554[23] < 0)
      {
        sub_29A008D14(__p, *v554, *(v554 + 1));
      }

      else
      {
        v557 = *v554;
        *&v874 = *(v554 + 2);
        *__p = v557;
      }

      if (!v553 && v884 < 0)
      {
        operator delete(v883[0]);
      }

      if (*(v550 + 71) < 0)
      {
        sub_29A008D14(v881, *(v550 + 48), *(v550 + 56));
      }

      else
      {
        *v881 = *(v550 + 48);
        v882 = *(v550 + 64);
      }

      sub_29AD961E8(a1, v881, &__src);
      if (SHIBYTE(v882) < 0)
      {
        operator delete(v881[0]);
      }

      sub_29AD9617C(a1, __p, &__src, &v930, &v850);
      sub_29A008E78(&v867, off_2A14FDE80[0]);
      v558 = sub_29A8877BC((v550 + 160), &v867);
      if (v558)
      {
        v560 = (v558 + 5);
      }

      else
      {
        v560 = sub_29B1F31FC(0, v559);
      }

      if (v560[23] < 0)
      {
        sub_29A008D14(&v869, *v560, *(v560 + 1));
      }

      else
      {
        v561 = *v560;
        v869.__r_.__value_.__r.__words[2] = *(v560 + 2);
        *&v869.__r_.__value_.__l.__data_ = v561;
      }

      if (SHIBYTE(v867.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v867.__r_.__value_.__l.__data_);
      }

      sub_29A008E78(&v865, off_2A14FDE88[0]);
      v562 = sub_29A8877BC((v550 + 160), &v865);
      if (v562)
      {
        v564 = (v562 + 5);
      }

      else
      {
        v564 = sub_29B1F31FC(0, v563);
      }

      if (v564[23] < 0)
      {
        sub_29A008D14(&v867, *v564, *(v564 + 1));
      }

      else
      {
        v565 = *v564;
        v867.__r_.__value_.__r.__words[2] = *(v564 + 2);
        *&v867.__r_.__value_.__l.__data_ = v565;
      }

      if (SHIBYTE(v865.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v865.__r_.__value_.__l.__data_);
      }

      sub_29A008E78(&v860, off_2A14FDE90[0]);
      v566 = sub_29A8877BC((v550 + 160), &v860);
      if (v566)
      {
        v568 = (v566 + 5);
      }

      else
      {
        v568 = sub_29B1F31FC(0, v567);
      }

      if (v568[23] < 0)
      {
        sub_29A008D14(&v865, *v568, *(v568 + 1));
      }

      else
      {
        v569 = *v568;
        v865.__r_.__value_.__r.__words[2] = *(v568 + 2);
        *&v865.__r_.__value_.__l.__data_ = v569;
      }

      if (v862 < 0)
      {
        operator delete(v860);
      }

      v570 = HIBYTE(v869.__r_.__value_.__r.__words[2]);
      if ((v869.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v570 = v869.__r_.__value_.__l.__size_;
      }

      if (v570)
      {
        sub_29AD985E8(v850, &v869);
      }

      v571 = HIBYTE(v867.__r_.__value_.__r.__words[2]);
      if ((v867.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v571 = v867.__r_.__value_.__l.__size_;
      }

      if (v571)
      {
        sub_29B1D24D4(v850, &v867);
      }

      v572 = HIBYTE(v865.__r_.__value_.__r.__words[2]);
      if ((v865.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v572 = v865.__r_.__value_.__l.__size_;
      }

      if (v572)
      {
        sub_29AD96100(v850, &v865);
      }

      std::string::operator=(v850 + 3, (v550 + 72));
      v573 = *(v550 + 136);
      v574 = *(v550 + 144);
      while (v573 != v574)
      {
        v575 = *v573;
        v576 = v573[1];
        if (v576)
        {
          atomic_fetch_add_explicit(&v576->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v577 = (v575 + 24);
        v578 = *(v575 + 47);
        if (v578 < 0)
        {
          if (*(v575 + 32) == 9 && **v577 == 0x75706E69646E6962 && *(*v577 + 8) == 116)
          {
            goto LABEL_1436;
          }

          if (*(v575 + 32) == 9 && **v577 == 0x61726170646E6962 && *(*v577 + 8) == 109)
          {
            goto LABEL_1436;
          }

          if (*(v575 + 32) != 9)
          {
            goto LABEL_1444;
          }

          v577 = *v577;
        }

        else
        {
          if (v578 != 9)
          {
            goto LABEL_1444;
          }

          v579 = *v577 == 0x75706E69646E6962 && *(v575 + 32) == 116;
          if (v579 || (*v577 == 0x61726170646E6962 ? (v580 = *(v575 + 32) == 109) : (v580 = 0), v580))
          {
LABEL_1436:
            v586 = v850;
            v587 = sub_29B1F2B94();
            sub_29AD99948(v587, &v860, v586, v575 + 48);
            goto LABEL_1437;
          }
        }

        v583 = *v577;
        v584 = v577[8];
        if (v583 != 0x656B6F74646E6962 || v584 != 110)
        {
          goto LABEL_1444;
        }

        sub_29B1D58BC(v850, v575 + 48, &v860);
LABEL_1437:
        v588 = v860;
        v589 = v861;
        if (v860)
        {
          v860 = v575;
          v861 = v576;
          if (v576)
          {
            atomic_fetch_add_explicit(&v576->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29B1D9ADC(v588, &v860);
          if (v861)
          {
            sub_29A014BEC(v861);
          }
        }

        if (v589)
        {
          sub_29A014BEC(v589);
        }

LABEL_1444:
        if (v576)
        {
          sub_29A014BEC(v576);
        }

        v573 += 2;
      }

      if (!v548)
      {
        sub_29A008E78(v879, "temp");
        sub_29B1F3234(v879, 95, &v860);
        v877 = v850;
        v878 = v851;
        if (v851)
        {
          atomic_fetch_add_explicit(&v851->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29B1EE360(a1, &v860, &v877, &v845);
        v548 = v845;
        v590 = v846;
        v846 = 0;
        v845 = 0;
        if (v797)
        {
          sub_29A014BEC(v797);
          if (v846)
          {
            sub_29A014BEC(v846);
          }
        }

        if (v878)
        {
          sub_29A014BEC(v878);
        }

        if (v862 < 0)
        {
          operator delete(v860);
        }

        if (v880 < 0)
        {
          operator delete(v879[0]);
        }

        v797 = v590;
        std::string::operator=(v548 + 3, v791 + 3);
      }

      sub_29AAC1E24(v548, &v930, &v860);
      v591 = v860;
      if (v861)
      {
        sub_29A014BEC(v861);
      }

      if (!v591)
      {
        sub_29AD99948(&v930, &v860, v548, &v930);
        sub_29B1D1828(v860, v850 + 2);
        if (v861)
        {
          sub_29A014BEC(v861);
        }
      }

      if (SHIBYTE(v865.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v865.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v867.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v867.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v869.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v869.__r_.__value_.__l.__data_);
      }

      if (v851)
      {
        sub_29A014BEC(v851);
      }

      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__src.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v874) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v930.__r_.__value_.__l.__data_);
      }

      if (v856)
      {
        sub_29A014BEC(v856);
      }

      if (v549)
      {
        sub_29A014BEC(v549);
      }

      v547 += 2;
    }

    while (v547 != v803);
LABEL_1486:
    v930.__r_.__value_.__r.__words[0] = &v934;
    sub_29A0176E4(&v930);
    sub_29B1D9298(a1, &v791[2]);
    if (v548)
    {
      sub_29B1D8568(v548, v791 + 2);
      v592 = v791[8].__r_.__value_.__l.__size_;
      v593 = v791[8].__r_.__value_.__r.__words[2];
      while (v592 != v593)
      {
        if (!sub_29A8877BC(&v548[6].__r_.__value_.__r.__words[2], v592))
        {
          v594 = sub_29A8877BC(&v791[6].__r_.__value_.__r.__words[2], v592);
          if (v594)
          {
            v596 = (v594 + 5);
          }

          else
          {
            v596 = sub_29B1F31FC(0, v595);
          }

          sub_29B1D9334(v548, v592, v596);
        }

        v592 += 3;
      }
    }

    if (v797)
    {
      sub_29A014BEC(v797);
    }

    if (__strc)
    {
      sub_29A014BEC(__strc);
    }

    v544 = v783 + 2;
  }

  while (v783 + 2 != v780);
LABEL_1500:
  v934.__r_.__value_.__r.__words[0] = &v938;
  sub_29A0176E4(&v934);
  sub_29B1D5E58(__p, "dielectric_brdf", "dielectric_bsdf");
  sub_29B1D5E58(&__src, "dielectric_btdf", "dielectric_bsdf");
  sub_29B1D5EAC(&v869, "generalized_schlick_brdf", "generalized_schlick_bsdf");
  sub_29B1D5F00(&v867, "conductor_brdf", "conductor_bsdf");
  sub_29B1D5F54(&v865, "sheen_brdf", "sheen_bsdf");
  sub_29B1D5FA8(&v860, "diffuse_brdf", "oren_nayar_diffuse_bsdf");
  sub_29B1D5FFC(&v855, "burley_diffuse_brdf", "burley_diffuse_bsdf");
  sub_29B1D6050(&v850, "diffuse_btdf", "translucent_bsdf");
  sub_29B1D5E58(&v845, "subsurface_brdf", "subsurface_bsdf");
  sub_29B1D5F00(v842, "thin_film_brdf", "thin_film_bsdf");
  v839 = 0;
  v840 = 0;
  v841 = 0;
  v836 = 0;
  v837 = 0;
  v838 = 0;
  sub_29B1DA4E4(a1, &v938);
  v940[1] = 0;
  *&v934.__r_.__value_.__l.__data_ = *&v938.__r_.__value_.__l.__data_;
  if (v938.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v938.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  v934.__r_.__value_.__r.__words[2] = 0;
  v935 = 0;
  v936 = 0;
  v597 = sub_29B1D3464(&v934.__r_.__value_.__r.__words[2], v938.__r_.__value_.__r.__words[2], v939, 0xAAAAAAAAAAAAAAABLL * ((v939 - v938.__r_.__value_.__r.__words[2]) >> 3));
  v937 = *v940;
  v599 = sub_29B1F19B8(v597, v598);
  v600 = v599;
  v601 = v599[1];
  v930.__r_.__value_.__r.__words[0] = *v599;
  v930.__r_.__value_.__l.__size_ = v601;
  if (v601)
  {
    atomic_fetch_add_explicit((v601 + 8), 1uLL, memory_order_relaxed);
  }

  v931 = 0;
  v930.__r_.__value_.__r.__words[2] = 0;
  v932 = 0;
  sub_29B1D3464(&v930.__r_.__value_.__r.__words[2], v599[2], v599[3], 0xAAAAAAAAAAAAAAABLL * ((v599[3] - v599[2]) >> 3));
  v933 = *(v600 + 5);
  while (!sub_29B1D35F8(&v934, &v930))
  {
    v602 = *&v934.__r_.__value_.__l.__data_;
    if (v934.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v934.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    sub_29B1D7E50(v602, &v834);
    p_data = &v834->__r_.__value_.__l.__data_;
    if (v834)
    {
      v604 = v834 + 1;
      v605 = SHIBYTE(v834[1].__r_.__value_.__r.__words[2]);
      if (v605 < 0)
      {
        if (v834[1].__r_.__value_.__l.__size_ != 5 || (*v604->__r_.__value_.__l.__data_ == 1851880545 ? (v607 = *(v604->__r_.__value_.__r.__words[0] + 4) == 50) : (v607 = 0), !v607))
        {
          if (v834[1].__r_.__value_.__l.__size_ != 8)
          {
            goto LABEL_1528;
          }

          v606 = v604->__r_.__value_.__r.__words[0];
          goto LABEL_1520;
        }
      }

      else
      {
        if (v605 != 5)
        {
          v606 = &v834[1].__r_.__value_.__l.__data_;
          if (*(&v834[1].__r_.__value_.__s + 23) != 8)
          {
            goto LABEL_1528;
          }

LABEL_1520:
          if (*v606 != 0x6433657461746F72)
          {
            goto LABEL_1528;
          }

          sub_29A008E78(&v833, "axis");
          v608 = sub_29A8877BC(p_data + 12, &v833);
          if (v608)
          {
            v611 = *(v608 + 40);
            v610 = *(v608 + 48);
            if (v610)
            {
              atomic_fetch_add_explicit(&v610->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v611 = 0;
            v610 = 0;
          }

          if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v833.__r_.__value_.__l.__data_);
            if (!v611)
            {
              goto LABEL_1636;
            }
          }

          else if (!v611)
          {
            goto LABEL_1636;
          }

          v647 = &v834->__r_.__value_.__l.__data_;
          v829 = v611;
          v830 = v610;
          if (v610)
          {
            atomic_fetch_add_explicit(&v610->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29A008E78(&v833, "input");
          sub_29B1D9990(v647, &v829, &v833, &v831);
          if (v832)
          {
            sub_29A014BEC(v832);
          }

          if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v833.__r_.__value_.__l.__data_);
          }

          v608 = v830;
          if (v830)
          {
            sub_29A014BEC(v830);
          }

LABEL_1636:
          if (v610)
          {
            v608 = v610;
            goto LABEL_1726;
          }

          goto LABEL_1727;
        }

        if (LODWORD(v604->__r_.__value_.__l.__data_) != 1851880545 || v834[1].__r_.__value_.__s.__data_[4] != 50)
        {
LABEL_1528:
          if (v605 >= 0)
          {
            v613 = SHIBYTE(v834[1].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v613 = v834[1].__r_.__value_.__l.__size_;
          }

          v614 = BYTE7(v874);
          if (SBYTE7(v874) < 0)
          {
            v614 = __p[1];
          }

          if (v613 == v614 && (v605 >= 0 ? (v615 = &v834[1].__r_.__value_.__l.__data_) : (v615 = v604->__r_.__value_.__r.__words[0]), (SBYTE7(v874) & 0x80u) == 0 ? (v616 = __p) : (v616 = __p[0]), !memcmp(v615, v616, v613)))
          {
            std::string::operator=(v604, (&v874 + 8));
            v638 = v835;
            v828[0] = v834;
            v828[1] = v835;
            if (v835)
            {
              atomic_fetch_add_explicit(&v835->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_29B1D2550(v828);
          }

          else
          {
            v617 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
            if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v617 = __src.__r_.__value_.__l.__size_;
            }

            if (v613 == v617)
            {
              v618 = v605 >= 0 ? v604 : v604->__r_.__value_.__r.__words[0];
              v619 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__src : __src.__r_.__value_.__r.__words[0];
              if (!memcmp(v618, v619, v613))
              {
                std::string::operator=(v604, &v872);
                v644 = &v834->__r_.__value_.__l.__data_;
                sub_29A008E78(&v833, "interior");
                sub_29B1D60A4(v644, &v833);
                if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v833.__r_.__value_.__l.__data_);
                }

                v645 = &v834->__r_.__value_.__l.__data_;
                sub_29A008E78(&v833, "scatter_mode");
                sub_29A008E78(&v827, off_2A14FDED0[0]);
                sub_29AD99948(&v827, &v819, v645, &v833);
                if (SHIBYTE(v827.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v827.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v833.__r_.__value_.__l.__data_);
                }

                v646 = v819.__r_.__value_.__r.__words[0];
                sub_29A008E78(&v833, "T");
                sub_29AD99E08(v646, &v833);
                if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v833.__r_.__value_.__l.__data_);
                }

                v608 = v819.__r_.__value_.__l.__size_;
                if (!v819.__r_.__value_.__l.__size_)
                {
                  goto LABEL_1727;
                }

                goto LABEL_1726;
              }
            }

            v620 = HIBYTE(v869.__r_.__value_.__r.__words[2]);
            if ((v869.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v620 = v869.__r_.__value_.__l.__size_;
            }

            if (v613 == v620 && (v605 >= 0 ? (v621 = v604) : (v621 = v604->__r_.__value_.__r.__words[0]), (v869.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v622 = &v869) : (v622 = v869.__r_.__value_.__r.__words[0]), !memcmp(v621, v622, v613)))
            {
              std::string::operator=(v604, &v870);
              v638 = v835;
              v826[0] = v834;
              v826[1] = v835;
              if (v835)
              {
                atomic_fetch_add_explicit(&v835->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              sub_29B1D2550(v826);
            }

            else
            {
              v623 = HIBYTE(v865.__r_.__value_.__r.__words[2]);
              if ((v865.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v623 = v865.__r_.__value_.__l.__size_;
              }

              if (v613 == v623 && (v605 >= 0 ? (v624 = v604) : (v624 = v604->__r_.__value_.__r.__words[0]), (v865.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v625 = &v865) : (v625 = v865.__r_.__value_.__r.__words[0]), !memcmp(v624, v625, v613)))
              {
                std::string::operator=(v604, &v866);
                v638 = v835;
                v825[0] = v834;
                v825[1] = v835;
                if (v835)
                {
                  atomic_fetch_add_explicit(&v835->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_29B1D2550(v825);
              }

              else
              {
                v626 = v843;
                if ((v843 & 0x80u) != 0)
                {
                  v626 = v842[1];
                }

                if (v613 != v626 || (v605 >= 0 ? (v627 = v604) : (v627 = v604->__r_.__value_.__r.__words[0]), (v843 & 0x80u) == 0 ? (v628 = v842) : (v628 = v842[0]), memcmp(v627, v628, v613)))
                {
                  if (sub_29A1B00DC(v604, &v867))
                  {
                    std::string::operator=(v834 + 1, &v868);
                    v629 = &v834->__r_.__value_.__l.__data_;
                    v630 = v834[9].__r_.__value_.__r.__words[2];
                    if (v630)
                    {
                      v630 = std::__shared_weak_count::lock(v630);
                      v631 = v630;
                      if (v630)
                      {
                        v630 = v629[28];
                      }
                    }

                    else
                    {
                      v631 = 0;
                    }

                    sub_29B1D7400(v630, &v822);
                    if (v631)
                    {
                      sub_29A014BEC(v631);
                    }

                    v648 = v822;
                    sub_29A008E78(&v833, "artistic_ior");
                    sub_29A911628("__artistic_ior", &v834[2].__r_.__value_.__l.__data_, &v827);
                    sub_29A008E78(&v819, "multioutput");
                    sub_29AD9617C(v648, &v833, &v827, &v819, &v820);
                    if (SHIBYTE(v819.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v819.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v827.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v827.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v833.__r_.__value_.__l.__data_);
                    }

                    v649 = v820;
                    sub_29A008E78(&v833, "ior");
                    sub_29A008E78(&v827, "color3");
                    sub_29AD9A05C(&v827, &v819, v649, &v833);
                    if (SHIBYTE(v827.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v827.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v833.__r_.__value_.__l.__data_);
                    }

                    v650 = v820;
                    sub_29A008E78(&v833, "extinction");
                    sub_29A008E78(&v827, "color3");
                    sub_29AD9A05C(&v827, &v817, v650, &v833);
                    if (SHIBYTE(v827.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v827.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v833.__r_.__value_.__l.__data_);
                    }

                    v651 = &v834->__r_.__value_.__l.__data_;
                    sub_29A008E78(&v833, "reflectivity");
                    sub_29AAC1E24(v651, &v833, &v816);
                    if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v833.__r_.__value_.__l.__data_);
                    }

                    if (v816)
                    {
                      v652 = v820;
                      sub_29A008E78(&v833, "reflectivity");
                      sub_29A008E78(&v827, "color3");
                      sub_29AD99948(&v827, &v815, v652, &v833);
                      if (SHIBYTE(v827.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v827.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v833.__r_.__value_.__l.__data_);
                      }

                      v653 = *(&v816 + 1);
                      v814 = v816;
                      if (*(&v816 + 1))
                      {
                        atomic_fetch_add_explicit((*(&v816 + 1) + 8), 1uLL, memory_order_relaxed);
                      }

                      v654 = *(&v815 + 1);
                      v813 = v815;
                      if (*(&v815 + 1))
                      {
                        atomic_fetch_add_explicit((*(&v815 + 1) + 8), 1uLL, memory_order_relaxed);
                      }

                      sub_29B1D2A74(&v814, &v813);
                      if (v654)
                      {
                        sub_29A014BEC(v654);
                      }

                      if (v653)
                      {
                        sub_29A014BEC(v653);
                      }

                      if (*(&v815 + 1))
                      {
                        sub_29A014BEC(*(&v815 + 1));
                      }
                    }

                    v655 = &v834->__r_.__value_.__l.__data_;
                    sub_29A008E78(&v833, "edge_color");
                    sub_29AAC1E24(v655, &v833, &v815);
                    if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v833.__r_.__value_.__l.__data_);
                    }

                    if (v815)
                    {
                      v656 = v820;
                      sub_29A008E78(&v833, "edge_color");
                      sub_29A008E78(&v827, "color3");
                      sub_29AD99948(&v827, &v811.__r_.__value_.__r.__words[2], v656, &v833);
                      if (SHIBYTE(v827.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v827.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v833.__r_.__value_.__l.__data_);
                      }

                      v657 = *(&v815 + 1);
                      *&v811.__r_.__value_.__l.__data_ = v815;
                      if (*(&v815 + 1))
                      {
                        atomic_fetch_add_explicit((*(&v815 + 1) + 8), 1uLL, memory_order_relaxed);
                      }

                      v658 = v812;
                      v810[0] = v811.__r_.__value_.__r.__words[2];
                      v810[1] = v812;
                      if (v812)
                      {
                        atomic_fetch_add_explicit(&v812->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      sub_29B1D2A74(&v811, v810);
                      if (v658)
                      {
                        sub_29A014BEC(v658);
                      }

                      if (v657)
                      {
                        sub_29A014BEC(v657);
                      }

                      if (v812)
                      {
                        sub_29A014BEC(v812);
                      }
                    }

                    v659 = &v834->__r_.__value_.__l.__data_;
                    sub_29A008E78(&v833, "reflectivity");
                    sub_29B1D60A4(v659, &v833);
                    if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v833.__r_.__value_.__l.__data_);
                    }

                    v660 = &v834->__r_.__value_.__l.__data_;
                    sub_29A008E78(&v833, "edge_color");
                    sub_29B1D60A4(v660, &v833);
                    if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v833.__r_.__value_.__l.__data_);
                    }

                    v661 = &v834->__r_.__value_.__l.__data_;
                    sub_29A008E78(&v833, "ior");
                    sub_29A008E78(&v827, "color3");
                    sub_29AD99948(&v827, &v811.__r_.__value_.__r.__words[2], v661, &v833);
                    if (SHIBYTE(v827.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v827.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v833.__r_.__value_.__l.__data_);
                    }

                    sub_29B1D1828(v811.__r_.__value_.__r.__words[2], v820 + 2);
                    sub_29AD9A0A8(v811.__r_.__value_.__r.__words[2], (v819.__r_.__value_.__r.__words[0] + 48));
                    v662 = &v834->__r_.__value_.__l.__data_;
                    sub_29A008E78(&v833, "extinction");
                    sub_29A008E78(&v827, "color3");
                    sub_29AD99948(&v827, &v808, v662, &v833);
                    if (SHIBYTE(v827.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v827.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v833.__r_.__value_.__l.__data_);
                    }

                    sub_29B1D1828(v808, v820 + 2);
                    sub_29AD9A0A8(v808, v817 + 2);
                    if (v809)
                    {
                      sub_29A014BEC(v809);
                    }

                    if (v812)
                    {
                      sub_29A014BEC(v812);
                    }

                    if (*(&v815 + 1))
                    {
                      sub_29A014BEC(*(&v815 + 1));
                    }

                    if (*(&v816 + 1))
                    {
                      sub_29A014BEC(*(&v816 + 1));
                    }

                    if (v818)
                    {
                      sub_29A014BEC(v818);
                    }

                    if (v819.__r_.__value_.__l.__size_)
                    {
                      sub_29A014BEC(v819.__r_.__value_.__l.__size_);
                    }

                    if (v821)
                    {
                      sub_29A014BEC(v821);
                    }

                    v608 = v823;
                    if (!v823)
                    {
                      goto LABEL_1727;
                    }

                    goto LABEL_1726;
                  }

                  v639 = sub_29A1B00DC(v604, &v860);
                  v640 = &v863;
                  if (v639 || (v641 = sub_29A1B00DC(v604, &v855), v640 = &v858, v641) || (v642 = sub_29A1B00DC(v604, &v850), v640 = &v853, v642) || (v643 = sub_29A1B00DC(v604, &v845), v640 = &v848, v643))
                  {
                    v608 = std::string::operator=(v834 + 1, v640);
                    goto LABEL_1727;
                  }

                  v608 = sub_29A0F2648(v604, "artistic_ior");
                  if (v608)
                  {
                    v692 = &v834->__r_.__value_.__l.__data_;
                    sub_29A008E78(&v833, "ior");
                    sub_29AD9A124(v692, &v833, &v827);
                    if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v833.__r_.__value_.__l.__data_);
                    }

                    v693 = v827.__r_.__value_.__r.__words[0];
                    if (v827.__r_.__value_.__r.__words[0])
                    {
                      sub_29A008E78(&v833, "color3");
                      sub_29AD96918(v693, &v833);
                      if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v833.__r_.__value_.__l.__data_);
                      }
                    }

                    v694 = &v834->__r_.__value_.__l.__data_;
                    sub_29A008E78(&v833, "extinction");
                    sub_29AD9A124(v694, &v833, &v819);
                    if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v833.__r_.__value_.__l.__data_);
                    }

                    v695 = v819.__r_.__value_.__r.__words[0];
                    if (v819.__r_.__value_.__r.__words[0])
                    {
                      sub_29A008E78(&v833, "color3");
                      sub_29AD96918(v695, &v833);
                      goto LABEL_1721;
                    }

LABEL_1723:
                    if (v819.__r_.__value_.__l.__size_)
                    {
                      sub_29A014BEC(v819.__r_.__value_.__l.__size_);
                    }

                    v608 = v827.__r_.__value_.__l.__size_;
                    if (!v827.__r_.__value_.__l.__size_)
                    {
                      goto LABEL_1727;
                    }

LABEL_1726:
                    sub_29A014BEC(v608);
                  }

LABEL_1727:
                  v664 = &v834->__r_.__value_.__l.__data_;
                  v665 = sub_29B1F31FC(v608, v609);
                  sub_29AAD5940(v664, v665, &v833);
                  v667 = v833.__r_.__value_.__l.__size_;
                  v666 = v833.__r_.__value_.__r.__words[0];
                  while (2)
                  {
                    if (v666 == v667)
                    {
                      v827.__r_.__value_.__r.__words[0] = &v833;
                      sub_29A0176E4(&v827);
                      goto LABEL_1799;
                    }

                    v668 = *v666;
                    v669 = v666[1];
                    v827.__r_.__value_.__r.__words[0] = *v666;
                    v827.__r_.__value_.__l.__size_ = v669;
                    if (v669)
                    {
                      atomic_fetch_add_explicit((v669 + 8), 1uLL, memory_order_relaxed);
                    }

                    v670 = sub_29B1D2448(v668);
                    v671 = v670[23];
                    if (v671 < 0)
                    {
                      if (*(v670 + 1) != 3)
                      {
                        goto LABEL_1740;
                      }

                      v670 = *v670;
                    }

                    else if (v671 != 3)
                    {
                      goto LABEL_1740;
                    }

                    if (*v670 == 28521 && v670[2] == 114)
                    {
                      v676 = (*(*v827.__r_.__value_.__l.__data_ + 64))(v827.__r_.__value_.__r.__words[0]);
                      v677 = *(v676 + 23);
                      if (v677 < 0)
                      {
                        if (*(v676 + 8) != 7)
                        {
                          goto LABEL_1740;
                        }

                        v676 = *v676;
                      }

                      else if (v677 != 7)
                      {
                        goto LABEL_1740;
                      }

                      if (*v676 == 1952671094 && *(v676 + 3) == 863137652)
                      {
                        (*(*v827.__r_.__value_.__l.__data_ + 80))(&v819);
                        if (!v819.__r_.__value_.__r.__words[0])
                        {
                          goto LABEL_1796;
                        }

                        v681 = v819.__r_.__value_.__r.__words[0] + 24;
                        v682 = *(v819.__r_.__value_.__r.__words[0] + 47);
                        if (v682 < 0)
                        {
                          if (*(v819.__r_.__value_.__r.__words[0] + 32) != 12)
                          {
                            goto LABEL_1796;
                          }

                          v681 = *v681;
                        }

                        else if (v682 != 12)
                        {
                          goto LABEL_1796;
                        }

                        v686 = *v681;
                        v687 = *(v681 + 8);
                        if (v686 == 0x6369747369747261 && v687 == 1919904095)
                        {
                          sub_29A017F80(&v839, &v827);
                        }

                        goto LABEL_1796;
                      }
                    }

LABEL_1740:
                    v673 = sub_29B1D2448(v827.__r_.__value_.__l.__data_);
                    v674 = v673[23];
                    if (v674 < 0)
                    {
                      if (*(v673 + 1) == 10)
                      {
                        v673 = *v673;
                        goto LABEL_1745;
                      }
                    }

                    else
                    {
                      if (v674 != 10)
                      {
                        goto LABEL_1749;
                      }

LABEL_1745:
                      if (*v673 != 0x6974636E69747865 || *(v673 + 4) != 28271)
                      {
                        goto LABEL_1749;
                      }

                      v678 = (*(*v827.__r_.__value_.__l.__data_ + 64))(v827.__r_.__value_.__r.__words[0]);
                      v679 = *(v678 + 23);
                      if (v679 < 0)
                      {
                        if (*(v678 + 8) == 7)
                        {
                          v678 = *v678;
                          goto LABEL_1771;
                        }
                      }

                      else if (v679 == 7)
                      {
LABEL_1771:
                        if (*v678 != 1952671094 || *(v678 + 3) != 863137652)
                        {
                          goto LABEL_1749;
                        }

                        (*(*v827.__r_.__value_.__l.__data_ + 80))(&v819);
                        if (v819.__r_.__value_.__r.__words[0])
                        {
                          v684 = v819.__r_.__value_.__r.__words[0] + 24;
                          v685 = *(v819.__r_.__value_.__r.__words[0] + 47);
                          if (v685 < 0)
                          {
                            if (*(v819.__r_.__value_.__r.__words[0] + 32) != 12)
                            {
                              goto LABEL_1796;
                            }

                            v684 = *v684;
                          }

                          else if (v685 != 12)
                          {
                            goto LABEL_1796;
                          }

                          v689 = *v684;
                          v690 = *(v684 + 8);
                          if (v689 == 0x6369747369747261 && v690 == 1919904095)
                          {
                            sub_29A017F80(&v836, &v827);
                          }
                        }

LABEL_1796:
                        if (v819.__r_.__value_.__l.__size_)
                        {
                          sub_29A014BEC(v819.__r_.__value_.__l.__size_);
                        }
                      }
                    }

LABEL_1749:
                    if (v827.__r_.__value_.__l.__size_)
                    {
                      sub_29A014BEC(v827.__r_.__value_.__l.__size_);
                    }

                    v666 += 2;
                    continue;
                  }
                }

                std::string::operator=(v604, &v844);
                v638 = v835;
                v824[0] = v834;
                v824[1] = v835;
                if (v835)
                {
                  atomic_fetch_add_explicit(&v835->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_29B1D2550(v824);
              }
            }
          }

          if (v638)
          {
            v608 = v638;
            goto LABEL_1726;
          }

          goto LABEL_1727;
        }
      }

      sub_29A008E78(&v833, "in1");
      sub_29AAC1E24(p_data, &v833, &v827);
      if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v833.__r_.__value_.__l.__data_);
      }

      v632 = &v834->__r_.__value_.__l.__data_;
      sub_29A008E78(&v833, "in2");
      sub_29AAC1E24(v632, &v833, &v819);
      if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v833.__r_.__value_.__l.__data_);
      }

      v634 = v827.__r_.__value_.__r.__words[0];
      if (v827.__r_.__value_.__r.__words[0])
      {
        if (v819.__r_.__value_.__r.__words[0])
        {
          v635 = sub_29B1F31FC(v633, v609);
          sub_29B1D8568(v634, v635);
          v636 = v819.__r_.__value_.__r.__words[0];
          sub_29A008E78(&v833, "in1");
          sub_29B1D8568(v636, &v833);
          if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v833.__r_.__value_.__l.__data_);
          }

          v637 = v827.__r_.__value_.__r.__words[0];
          sub_29A008E78(&v833, "in2");
          sub_29B1D8568(v637, &v833);
          goto LABEL_1721;
        }

        sub_29A008E78(&v833, "in2");
        sub_29B1D8568(v634, &v833);
        if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v833.__r_.__value_.__l.__data_);
        }
      }

      v663 = v819.__r_.__value_.__r.__words[0];
      if (!v819.__r_.__value_.__r.__words[0])
      {
        goto LABEL_1723;
      }

      sub_29A008E78(&v833, "in1");
      sub_29B1D8568(v663, &v833);
LABEL_1721:
      if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v833.__r_.__value_.__l.__data_);
      }

      goto LABEL_1723;
    }

LABEL_1799:
    if (v835)
    {
      sub_29A014BEC(v835);
    }

    if (*(&v602 + 1))
    {
      sub_29A014BEC(*(&v602 + 1));
    }

    sub_29B1F19D8(&v934);
  }

  sub_29B1D366C(&v930);
  sub_29B1D366C(&v934);
  v696 = sub_29B1D366C(&v938);
  v699 = v839;
  for (i1 = v840; v699 != i1; v699 += 16)
  {
    v701 = *v699;
    v700 = *(v699 + 1);
    if (v700)
    {
      atomic_fetch_add_explicit(&v700->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v701 + 80))(&v833, v701);
    v702 = v701[29];
    if (v702)
    {
      v703 = std::__shared_weak_count::lock(v702);
      if (v703)
      {
        v704 = v701[28];
      }

      else
      {
        v704 = 0;
      }
    }

    else
    {
      v704 = 0;
      v703 = 0;
    }

    v705 = *(v704 + 232);
    if (v705)
    {
      v705 = std::__shared_weak_count::lock(v705);
      v706 = v705;
      if (v705)
      {
        v705 = *(v704 + 224);
      }
    }

    else
    {
      v706 = 0;
    }

    sub_29B1D7400(v705, &v827);
    if (v706)
    {
      sub_29A014BEC(v706);
    }

    v707 = v827.__r_.__value_.__r.__words[0];
    sub_29A008E78(&v938, "convert");
    if (*(v704 + 71) >= 0)
    {
      v708 = *(v704 + 71);
    }

    else
    {
      v708 = *(v704 + 56);
    }

    sub_29A022DE0(&v934, v708 + 13);
    if ((v934.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v709 = &v934;
    }

    else
    {
      v709 = v934.__r_.__value_.__r.__words[0];
    }

    if (v708)
    {
      if (*(v704 + 71) >= 0)
      {
        v710 = (v704 + 48);
      }

      else
      {
        v710 = *(v704 + 48);
      }

      memmove(v709, v710, v708);
    }

    strcpy(v709 + v708, "__convert_ior");
    sub_29A008E78(&v930, "vector3");
    sub_29AD9617C(v707, &v938, &v934, &v930, &v819);
    if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v930.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v934.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v934.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v938.__r_.__value_.__l.__data_);
    }

    v711 = v819.__r_.__value_.__r.__words[0];
    sub_29A008E78(&v938, "in");
    sub_29A008E78(&v934, "color3");
    sub_29AD99948(&v934, &v930, v711, &v938);
    if (SHIBYTE(v934.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v934.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v938.__r_.__value_.__l.__data_);
    }

    sub_29B1D1828(v930.__r_.__value_.__l.__data_, (v833.__r_.__value_.__r.__words[0] + 48));
    v712 = v930.__r_.__value_.__r.__words[0];
    sub_29A008E78(&v938, "ior");
    sub_29AD9A0A8(v712, &v938);
    if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v938.__r_.__value_.__l.__data_);
    }

    sub_29B1D1828(v701, (v819.__r_.__value_.__r.__words[0] + 48));
    sub_29A008E78(&v938, off_2A14FDE70[0]);
    sub_29B1D93E8(v701, &v938);
    if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v938.__r_.__value_.__l.__data_);
    }

    if (v930.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(v930.__r_.__value_.__l.__size_);
    }

    if (v819.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(v819.__r_.__value_.__l.__size_);
    }

    if (v827.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(v827.__r_.__value_.__l.__size_);
    }

    if (v703)
    {
      sub_29A014BEC(v703);
    }

    v696 = v833.__r_.__value_.__l.__size_;
    if (v833.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(v833.__r_.__value_.__l.__size_);
    }

    if (v700)
    {
      sub_29A014BEC(v700);
    }
  }

  v714 = v836;
  for (i2 = v837; v714 != i2; v714 += 16)
  {
    v716 = *v714;
    v715 = *(v714 + 1);
    if (v715)
    {
      atomic_fetch_add_explicit(&v715->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v716 + 80))(&v833, v716);
    v717 = v716[29];
    if (v717)
    {
      v718 = std::__shared_weak_count::lock(v717);
      if (v718)
      {
        v719 = v716[28];
      }

      else
      {
        v719 = 0;
      }
    }

    else
    {
      v719 = 0;
      v718 = 0;
    }

    v720 = *(v719 + 232);
    if (v720)
    {
      v720 = std::__shared_weak_count::lock(v720);
      v721 = v720;
      if (v720)
      {
        v720 = *(v719 + 224);
      }
    }

    else
    {
      v721 = 0;
    }

    sub_29B1D7400(v720, &v827);
    if (v721)
    {
      sub_29A014BEC(v721);
    }

    v722 = v827.__r_.__value_.__r.__words[0];
    sub_29A008E78(&v938, "convert");
    if (*(v719 + 71) >= 0)
    {
      v723 = *(v719 + 71);
    }

    else
    {
      v723 = *(v719 + 56);
    }

    sub_29A022DE0(&v934, v723 + 20);
    if ((v934.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v724 = &v934;
    }

    else
    {
      v724 = v934.__r_.__value_.__r.__words[0];
    }

    if (v723)
    {
      if (*(v719 + 71) >= 0)
      {
        v725 = (v719 + 48);
      }

      else
      {
        v725 = *(v719 + 48);
      }

      memmove(v724, v725, v723);
    }

    strcpy(v724 + v723, "__convert_extinction");
    sub_29A008E78(&v930, "vector3");
    sub_29AD9617C(v722, &v938, &v934, &v930, &v819);
    if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v930.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v934.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v934.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v938.__r_.__value_.__l.__data_);
    }

    v726 = v819.__r_.__value_.__r.__words[0];
    sub_29A008E78(&v938, "in");
    sub_29A008E78(&v934, "color3");
    sub_29AD99948(&v934, &v930, v726, &v938);
    if (SHIBYTE(v934.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v934.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v938.__r_.__value_.__l.__data_);
    }

    sub_29B1D1828(v930.__r_.__value_.__l.__data_, (v833.__r_.__value_.__r.__words[0] + 48));
    v727 = v930.__r_.__value_.__r.__words[0];
    sub_29A008E78(&v938, "extinction");
    sub_29AD9A0A8(v727, &v938);
    if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v938.__r_.__value_.__l.__data_);
    }

    sub_29B1D1828(v716, (v819.__r_.__value_.__r.__words[0] + 48));
    sub_29A008E78(&v938, off_2A14FDE70[0]);
    sub_29B1D93E8(v716, &v938);
    if (SHIBYTE(v938.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v938.__r_.__value_.__l.__data_);
    }

    if (v930.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(v930.__r_.__value_.__l.__size_);
    }

    if (v819.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(v819.__r_.__value_.__l.__size_);
    }

    if (v827.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(v827.__r_.__value_.__l.__size_);
    }

    if (v718)
    {
      sub_29A014BEC(v718);
    }

    v696 = v833.__r_.__value_.__l.__size_;
    if (v833.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(v833.__r_.__value_.__l.__size_);
    }

    if (v715)
    {
      sub_29A014BEC(v715);
    }
  }

  v728 = sub_29B1F31FC(v696, v697);
  sub_29AAD2C74(a1, v728, &v938);
  v792 = v938.__r_.__value_.__l.__size_;
  v729 = v938.__r_.__value_.__r.__words[0];
  if (v938.__r_.__value_.__r.__words[0] != v938.__r_.__value_.__l.__size_)
  {
    do
    {
      v730 = *v729;
      v731 = *(v729 + 8);
      if (v731)
      {
        atomic_fetch_add_explicit(&v731->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v804 = v731;
      sub_29A008E78(&v934, off_2A14FDE90[0]);
      sub_29B1D93E8(v730, &v934);
      v798 = v729;
      if (SHIBYTE(v934.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v934.__r_.__value_.__l.__data_);
      }

      *&v934.__r_.__value_.__r.__words[1] = 0uLL;
      v934.__r_.__value_.__r.__words[0] = &v934.__r_.__value_.__l.__size_;
      v733 = v730[17];
      v732 = v730[18];
      if (v733 != v732)
      {
        do
        {
          v734 = *v733;
          v735 = v733[1];
          if (v735)
          {
            atomic_fetch_add_explicit(&v735->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29B1D7E50(v734, &v833);
          v738 = v833.__r_.__value_.__r.__words[0];
          if (v833.__r_.__value_.__r.__words[0])
          {
            v739 = sub_29B1F31FC(v736, v737);
            sub_29B1D2AF8(v738, v739, &v930);
            v740 = v930.__r_.__value_.__l.__size_;
            for (i3 = v930.__r_.__value_.__r.__words[0]; i3 != v740; i3 += 2)
            {
              v742 = *i3;
              v743 = i3[1];
              if (v743)
              {
                atomic_fetch_add_explicit(&v743->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v744 = sub_29AE15164(v742);
              v745 = v744[23];
              if ((v745 & 0x80u) != 0)
              {
                v745 = *(v744 + 1);
              }

              if (v745)
              {
                sub_29A095658(&v934, v744, v744);
              }

              if (v743)
              {
                sub_29A014BEC(v743);
              }
            }

            v827.__r_.__value_.__r.__words[0] = &v930;
            sub_29A0176E4(&v827);
          }

          if (v833.__r_.__value_.__l.__size_)
          {
            sub_29A014BEC(v833.__r_.__value_.__l.__size_);
          }

          if (v735)
          {
            sub_29A014BEC(v735);
          }

          v733 += 2;
        }

        while (v733 != v732);
        v746 = v934.__r_.__value_.__r.__words[0];
        if (v934.__r_.__value_.__l.__data_ != &v934.__r_.__value_.__r.__words[1])
        {
          do
          {
            if (*(v746 + 55) < 0)
            {
              sub_29A008D14(&v930, *(v746 + 32), *(v746 + 40));
            }

            else
            {
              v930 = *(v746 + 32);
            }

            sub_29AD98C84(v730, &v930, &v819);
            if (v819.__r_.__value_.__r.__words[0])
            {
              if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_29A008D14(&v807, v930.__r_.__value_.__l.__data_, v930.__r_.__value_.__l.__size_);
              }

              else
              {
                v807 = v930;
              }

              sub_29AD961E8(v730, &v807, &v833);
              if (SHIBYTE(v807.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v807.__r_.__value_.__l.__data_);
              }

              sub_29B1EDECC(v819.__r_.__value_.__l.__data_, &v827);
              v748 = v827.__r_.__value_.__l.__size_;
              for (i4 = v827.__r_.__value_.__r.__words[0]; i4 != v748; i4 += 2)
              {
                v750 = *i4;
                v749 = i4[1];
                if (v749)
                {
                  atomic_fetch_add_explicit(&v749->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v751 = sub_29B1D2C34(v750);
                v752 = v751[23];
                if (v752 >= 0)
                {
                  v753 = v751[23];
                }

                else
                {
                  v753 = *(v751 + 1);
                }

                v754 = HIBYTE(v930.__r_.__value_.__r.__words[2]);
                if ((v930.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v754 = v930.__r_.__value_.__l.__size_;
                }

                if (v753 == v754)
                {
                  if (v752 < 0)
                  {
                    v751 = *v751;
                  }

                  if ((v930.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v755 = &v930;
                  }

                  else
                  {
                    v755 = v930.__r_.__value_.__r.__words[0];
                  }

                  if (!memcmp(v751, v755, v753))
                  {
                    sub_29B1D1828(v750, &v833);
                  }
                }

                if (v749)
                {
                  sub_29A014BEC(v749);
                }
              }

              sub_29B1D8568(v819.__r_.__value_.__l.__data_, &v833);
              v834 = &v827;
              sub_29A0176E4(&v834);
              if (SHIBYTE(v833.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v833.__r_.__value_.__l.__data_);
              }
            }

            if (v819.__r_.__value_.__l.__size_)
            {
              sub_29A014BEC(v819.__r_.__value_.__l.__size_);
            }

            if (SHIBYTE(v930.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v930.__r_.__value_.__l.__data_);
            }

            v756 = *(v746 + 8);
            if (v756)
            {
              do
              {
                v757 = v756;
                v756 = v756->__r_.__value_.__r.__words[0];
              }

              while (v756);
            }

            else
            {
              do
              {
                v757 = *(v746 + 16);
                v3 = v757->__r_.__value_.__r.__words[0] == v746;
                v746 = v757;
              }

              while (!v3);
            }

            v746 = v757;
          }

          while (v757 != &v934.__r_.__value_.__r.__words[1]);
        }
      }

      sub_29A019EE8(&v934, v934.__r_.__value_.__l.__size_);
      if (v804)
      {
        sub_29A014BEC(v804);
      }

      v729 = v798 + 16;
    }

    while (v798 + 16 != v792);
  }

  v934.__r_.__value_.__r.__words[0] = &v938;
  sub_29A0176E4(&v934);
  sub_29B1DA4E4(a1, &v938);
  v940[1] = 0;
  *&v934.__r_.__value_.__l.__data_ = *&v938.__r_.__value_.__l.__data_;
  if (v938.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v938.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  v934.__r_.__value_.__r.__words[2] = 0;
  v935 = 0;
  v936 = 0;
  v758 = sub_29B1D3464(&v934.__r_.__value_.__r.__words[2], v938.__r_.__value_.__r.__words[2], v939, 0xAAAAAAAAAAAAAAABLL * ((v939 - v938.__r_.__value_.__r.__words[2]) >> 3));
  v937 = *v940;
  v760 = sub_29B1F19B8(v758, v759);
  v761 = v760;
  v762 = v760[1];
  v930.__r_.__value_.__r.__words[0] = *v760;
  v930.__r_.__value_.__l.__size_ = v762;
  if (v762)
  {
    atomic_fetch_add_explicit((v762 + 8), 1uLL, memory_order_relaxed);
  }

  v931 = 0;
  v930.__r_.__value_.__r.__words[2] = 0;
  v932 = 0;
  sub_29B1D3464(&v930.__r_.__value_.__r.__words[2], v760[2], v760[3], 0xAAAAAAAAAAAAAAABLL * ((v760[3] - v760[2]) >> 3));
  v933 = *(v761 + 5);
  while (1)
  {
    v763 = sub_29B1D35F8(&v934, &v930);
    if (v763)
    {
      break;
    }

    v765 = *&v934.__r_.__value_.__l.__data_;
    if (v934.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v934.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v766 = sub_29B1F31FC(v763, v764);
    if (sub_29B1D2CC0(v765, v766))
    {
      sub_29A008E78(&v827, "parameter");
      sub_29B1D16EC(v765, &v827, &v833);
      if (SHIBYTE(v827.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v827.__r_.__value_.__l.__data_);
      }

      v768 = v833.__r_.__value_.__l.__size_;
      for (i5 = v833.__r_.__value_.__r.__words[0]; i5 != v768; i5 += 2)
      {
        v769 = *i5;
        v770 = i5[1];
        if (v770)
        {
          atomic_fetch_add_explicit(&v770->__shared_owners_, 1uLL, memory_order_relaxed);
          v806 = v770;
          atomic_fetch_add_explicit(&v770->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v806 = 0;
        }

        v805 = v769;
        sub_29A008E78(&v827, "input");
        sub_29B1D9990(v765, &v805, &v827, &v834);
        sub_29B1D7C40(v834, &v819);
        if (v835)
        {
          sub_29A014BEC(v835);
        }

        if (SHIBYTE(v827.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v827.__r_.__value_.__l.__data_);
        }

        v772 = v806;
        if (v806)
        {
          sub_29A014BEC(v806);
        }

        v773 = sub_29B1F31FC(v772, v771);
        if (sub_29AAD7D7C(v765, v773))
        {
          sub_29B1D2D6C(v819.__r_.__value_.__l.__data_, 1);
        }

        if (v819.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(v819.__r_.__value_.__l.__size_);
        }

        if (v770)
        {
          sub_29A014BEC(v770);
        }
      }

      v827.__r_.__value_.__r.__words[0] = &v833;
      sub_29A0176E4(&v827);
    }

    if (*(&v765 + 1))
    {
      sub_29A014BEC(*(&v765 + 1));
    }

    sub_29B1F19D8(&v934);
  }

  sub_29B1D366C(&v930);
  sub_29B1D366C(&v934);
  v774 = sub_29B1D366C(&v938);
  v938.__r_.__value_.__r.__words[0] = &v836;
  sub_29A0176E4(v774);
  v938.__r_.__value_.__r.__words[0] = &v839;
  sub_29A0176E4(&v938);
  if (SHIBYTE(v844.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v844.__r_.__value_.__l.__data_);
  }

  if (v843 < 0)
  {
    operator delete(v842[0]);
  }

  if (v849 < 0)
  {
    operator delete(v848);
  }

  if (v847 < 0)
  {
    operator delete(v845);
  }

  if (v854 < 0)
  {
    operator delete(v853);
  }

  if (v852 < 0)
  {
    operator delete(v850);
  }

  if (v859 < 0)
  {
    operator delete(v858);
  }

  if (v857 < 0)
  {
    operator delete(v855);
  }

  if (v864 < 0)
  {
    operator delete(v863);
  }

  if (v862 < 0)
  {
    operator delete(v860);
  }

  if (SHIBYTE(v866.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v866.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v865.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v865.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v868.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v868.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v867.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v867.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v870.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v870.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v869.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v869.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v872.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v872.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  if (v876 < 0)
  {
    operator delete(*(&v874 + 1));
  }

  if (SBYTE7(v874) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A89AD9C(v890);
  sub_29B1EB414(a1, v775, 38);
}

void sub_29B1CFA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, std::__shared_weak_count *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, std::__shared_weak_count *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (a43)
  {
    sub_29A014BEC(a43);
  }

  if (a56)
  {
    sub_29A014BEC(a56);
  }

  if (a66)
  {
    sub_29A014BEC(a66);
  }

  if (v68)
  {
    sub_29A014BEC(v68);
  }

  sub_29B1D366C(&STACK[0x670]);
  sub_29B1D366C(v69 - 256);
  sub_29B1D366C(v69 - 200);
  *(v69 - 256) = &a67;
  sub_29A0176E4((v69 - 256));
  *(v69 - 256) = &a68;
  sub_29A0176E4((v69 - 256));
  sub_29A0D2850(&STACK[0x210]);
  sub_29A0D2850(&STACK[0x240]);
  sub_29A0D2850(&STACK[0x270]);
  sub_29A0D2850(&STACK[0x2A0]);
  sub_29A0D2850(&STACK[0x2D0]);
  sub_29A0D2850(&STACK[0x300]);
  sub_29A0D2850(&STACK[0x330]);
  sub_29A0D2850(&STACK[0x360]);
  sub_29A0D2850(&STACK[0x390]);
  sub_29A0D2850(&STACK[0x3C0]);
  sub_29A89AD9C(&STACK[0x4C0]);
  _Unwind_Resume(a1);
}

void sub_29B1D16EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29B1D7394(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          sub_29A017F80(a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      sub_29A014BEC(*(&v18 + 1));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29B1D17F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void sub_29B1D1828(uint64_t a1, const std::string *a2)
{
  sub_29A008E78(__p, off_2A14FDE60[0]);
  sub_29B1D9334(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B1D1888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B1D18A4(uint64_t a1, const void **a2)
{
  sub_29B1D8060(a1, &v15);
  v4 = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void sub_29B1D1950(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_29A008E78(&__dst, off_2A14FDE80[0]);
  v5 = sub_29A8877BC((v4 + 160), &__dst);
  v6 = v5;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v5)
  {
LABEL_3:
    v7 = *a1;
    sub_29A008E78(__p, off_2A14FDE80[0]);
    v8 = sub_29A8877BC((v7 + 160), __p);
    if (v8)
    {
      v10 = (v8 + 5);
    }

    else
    {
      v10 = sub_29B1F31FC(0, v9);
    }

    if (v10[23] < 0)
    {
      sub_29A008D14(&__dst, *v10, *(v10 + 1));
    }

    else
    {
      v14 = *v10;
      __dst.__r_.__value_.__r.__words[2] = *(v10 + 2);
      *&__dst.__r_.__value_.__l.__data_ = v14;
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29B1D87A8(__p, *a1);
    v16 = __p[0];
    v15 = __p[1];
    sub_29AAE1890(*a1, &__dst, __p);
    sub_29AAC0094(v16, __p, v61);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(__p[0]);
    }

    if (v61[0])
    {
      v17 = v61[1];
      *a2 = v61[0];
      a2[1] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      sub_29AAC0094(v16, &__dst, a2);
    }

    if (v61[1])
    {
      sub_29A014BEC(v61[1]);
    }

    if (v15)
    {
      sub_29A014BEC(v15);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    return;
  }

  v11 = *a1;
  sub_29A008E78(&__dst, off_2A14FDC08[0]);
  v12 = sub_29A8877BC((v11 + 160), &__dst);
  v13 = v12;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (!v13)
    {
LABEL_99:
      *a2 = 0;
      a2[1] = 0;
      return;
    }
  }

  else if (!v12)
  {
    goto LABEL_99;
  }

  v18 = *a1;
  sub_29A008E78(__p, off_2A14FDC08[0]);
  v19 = sub_29A8877BC((v18 + 160), __p);
  if (v19)
  {
    v21 = (v19 + 5);
  }

  else
  {
    v21 = sub_29B1F31FC(0, v20);
  }

  if (v21[23] < 0)
  {
    sub_29A008D14(&__dst, *v21, *(v21 + 1));
  }

  else
  {
    v22 = *v21;
    __dst.__r_.__value_.__r.__words[2] = *(v21 + 2);
    *&__dst.__r_.__value_.__l.__data_ = v22;
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p[0]);
  }

  v23 = *a1;
  sub_29A008E78(v61, off_2A14FDC70[0]);
  v24 = sub_29A8877BC((v23 + 160), v61);
  if (v24)
  {
    v26 = (v24 + 5);
  }

  else
  {
    v26 = sub_29B1F31FC(0, v25);
  }

  if (v26[23] < 0)
  {
    sub_29A008D14(__p, *v26, *(v26 + 1));
  }

  else
  {
    v27 = *v26;
    v64 = *(v26 + 2);
    *__p = v27;
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61[0]);
  }

  v28 = *a1;
  sub_29A008E78(v59, off_2A14FDE88[0]);
  v29 = sub_29A8877BC((v28 + 160), v59);
  if (v29)
  {
    v31 = (v29 + 5);
  }

  else
  {
    v31 = sub_29B1F31FC(0, v30);
  }

  if (v31[23] < 0)
  {
    sub_29A008D14(v61, *v31, *(v31 + 1));
  }

  else
  {
    v32 = *v31;
    v62 = *(v31 + 2);
    *v61 = v32;
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59[0]);
  }

  v33 = *a1;
  sub_29A008E78(&v56, off_2A14FDE90[0]);
  v34 = sub_29A8877BC((v33 + 160), &v56);
  if (v34)
  {
    v36 = (v34 + 5);
  }

  else
  {
    v36 = sub_29B1F31FC(0, v35);
  }

  if (v36[23] < 0)
  {
    sub_29A008D14(v59, *v36, *(v36 + 1));
  }

  else
  {
    v37 = *v36;
    v60 = *(v36 + 2);
    *v59 = v37;
  }

  if (v58 < 0)
  {
    operator delete(v56);
  }

  sub_29B1D87A8(&v54, *a1);
  v38 = v54;
  sub_29AAE1890(*a1, &__dst, &v51);
  sub_29B1C85B0(v38, &v51, &v56);
  if (v53 < 0)
  {
    operator delete(v51);
  }

  if (v55)
  {
    sub_29A014BEC(v55);
  }

  sub_29B1D87A8(&v54, *a1);
  sub_29B1C85B0(v54, &__dst, &v51);
  if (v55)
  {
    sub_29A014BEC(v55);
  }

  sub_29B1D4250(&v56, v57, v51, v52, (v52 - v51) >> 4);
  v39 = v56;
  v40 = v57;
  if (v56 == v57)
  {
LABEL_89:
    v50 = 1;
  }

  else
  {
    while (1)
    {
      v41 = *v39;
      *a2 = *v39;
      v42 = v39[1];
      a2[1] = v42;
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v43 = sub_29AAD8124(v41);
      if (sub_29B1DC438(v43, v61) && sub_29B1C62B4(v41, v59))
      {
        v44 = HIBYTE(v64);
        if (v64 < 0)
        {
          v44 = __p[1];
        }

        if (!v44)
        {
          break;
        }

        v45 = (*(*v41 + 64))(v41);
        v46 = *(v45 + 23);
        if (v46 >= 0)
        {
          v47 = *(v45 + 23);
        }

        else
        {
          v47 = v45[1];
        }

        v48 = HIBYTE(v64);
        if (v64 < 0)
        {
          v48 = __p[1];
        }

        if (v47 == v48)
        {
          if (v46 < 0)
          {
            v45 = *v45;
          }

          v49 = v64 >= 0 ? __p : __p[0];
          if (!memcmp(v45, v49, v47))
          {
            break;
          }
        }
      }

      if (v42)
      {
        sub_29A014BEC(v42);
      }

      v39 += 2;
      if (v39 == v40)
      {
        goto LABEL_89;
      }
    }

    v50 = 0;
  }

  v54 = &v51;
  sub_29A0176E4(&v54);
  v51 = &v56;
  sub_29A0176E4(&v51);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59[0]);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61[0]);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v50)
  {
    goto LABEL_99;
  }
}

void sub_29B1D1EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  a15 = &a9;
  sub_29A0176E4(&a15);
  a9 = &a17;
  sub_29A0176E4(&a9);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_29B1D207C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D2094(void *a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X2>, const std::string *a4@<X3>, uint64_t *a5@<X8>)
{
  sub_29B1D4134(a1, a2, a5);
  v10 = *a5;
  if (!*a5)
  {
    sub_29B1D68C4(a1, a2, &v13);
    v11 = v13;
    v13 = 0uLL;
    v12 = a5[1];
    *a5 = v11;
    if (v12)
    {
      sub_29A014BEC(v12);
      if (*(&v13 + 1))
      {
        sub_29A014BEC(*(&v13 + 1));
      }
    }

    v10 = *a5;
  }

  sub_29AD99994(v10, a3, a4);
}

void sub_29B1D212C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D2148(uint64_t a1, const std::string *a2)
{
  sub_29A008E78(__p, off_2A14FDEB0[0]);
  sub_29B1D9334(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B1D21A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D21C4(uint64_t a1, const std::string *a2)
{
  sub_29A008E78(__p, off_2A14FDC58[0]);
  sub_29B1D9334(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B1D2224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1D2240(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE78[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1D22A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B1D22C0(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE78[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B1D2330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D234C(uint64_t a1, const std::string *a2)
{
  sub_29A008E78(__p, off_2A14FDE78[0]);
  sub_29B1D9334(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B1D23AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B1D23C8(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE70[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29B1D242C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B1D2448(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDE70[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v4 = (v2 + 5);
  }

  else
  {
    v4 = sub_29B1F31FC(0, v3);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_29B1D24B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D24D4(uint64_t a1, const std::string *a2)
{
  sub_29A008E78(__p, off_2A14FDE88[0]);
  sub_29B1D9334(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B1D2534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B1D2550(uint64_t *a1)
{
  v2 = *a1;
  sub_29A008E78(&__dst, "base");
  sub_29AAC1E24(v2, &__dst, &v35);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__dst);
  }

  if (v35)
  {
    (*(*v35 + 80))(&v31);
    if (v31)
    {
      v3 = *a1;
      v4 = *(*a1 + 232);
      if (v4)
      {
        v4 = std::__shared_weak_count::lock(v4);
        v5 = v4;
        if (v4)
        {
          v4 = *(v3 + 224);
        }
      }

      else
      {
        v5 = 0;
      }

      sub_29B1D7400(v4, &v29);
      if (v5)
      {
        sub_29A014BEC(v5);
      }

      v6 = *a1;
      if (*(*a1 + 71) < 0)
      {
        sub_29A008D14(&__dst, *(v6 + 48), *(v6 + 56));
        v6 = *a1;
      }

      else
      {
        __dst = *(v6 + 48);
        v34 = *(v6 + 64);
      }

      if (v34 >= 0)
      {
        v7 = HIBYTE(v34);
      }

      else
      {
        v7 = *(&__dst + 1);
      }

      p_p = &__p;
      sub_29A022DE0(&__p, v7 + 11);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v7)
      {
        if (v34 >= 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst;
        }

        memmove(p_p, p_dst, v7);
      }

      strcpy(p_p + v7, "__layer_top");
      sub_29B1D8568(v6, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v10 = v29;
      sub_29A008E78(&__p, "layer");
      sub_29A008E78(&v25, "BSDF");
      sub_29AD9617C(v10, &__p, &__dst, &v25, &v26);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v11 = v26;
      sub_29A008E78(&__p, "top");
      sub_29A008E78(&v25, "BSDF");
      sub_29AD99948(&v25, &v23, v11, &__p);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v12 = v26;
      sub_29A008E78(&__p, "base");
      sub_29A008E78(&v25, "BSDF");
      sub_29AD99948(&v25, &v21, v12, &__p);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v13 = v23;
      v14 = a1[1];
      v19 = *a1;
      v20 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29B1E81A4(v13, &v19);
      if (v20)
      {
        sub_29A014BEC(v20);
      }

      v15 = v21;
      v17 = v31;
      v18 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29B1E81A4(v15, &v17);
      if (v18)
      {
        sub_29A014BEC(v18);
      }

      if (v22)
      {
        sub_29A014BEC(v22);
      }

      if (v24)
      {
        sub_29A014BEC(v24);
      }

      if (v27)
      {
        sub_29A014BEC(v27);
      }

      if (SHIBYTE(v34) < 0)
      {
        operator delete(__dst);
      }

      if (v30)
      {
        sub_29A014BEC(v30);
      }
    }

    v16 = *a1;
    sub_29A008E78(&__dst, "base");
    sub_29B1D60A4(v16, &__dst);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__dst);
    }

    if (v32)
    {
      sub_29A014BEC(v32);
    }
  }

  if (v36)
  {
    sub_29A014BEC(v36);
  }
}