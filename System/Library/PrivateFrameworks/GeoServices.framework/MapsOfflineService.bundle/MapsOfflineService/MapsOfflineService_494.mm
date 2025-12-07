uint64_t sub_1A5587C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1220A18(v2);
  }

  if (*(a1 + 16) == 1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      sub_1220A18(v3);
    }
  }

  return a1;
}

void sub_1A558C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_1972458(a2))
  {
    v6 = a1[221];
    nullsub_1();
    v8 = *(v7 + 1536);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SearchService::QuProcessing", "", buf, 2u);
    }

    sub_1A614F4();
  }

  sub_19723A0(5, v10);
  v5 = *(a3 + 24);
  if (!v5)
  {
    sub_2B7420();
  }

  (*(*v5 + 48))(v5, v10);
  sub_18FDA18(v10);
}

void sub_1A55B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_1A62724(v14 - 120);
  sub_1A5500C(v14 - 176);
  if (a14)
  {
    sub_1220A18(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1A55BEC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_1A55044(a2, a3, a4, &v30);
  sub_1A55DD8(a1 + 1208, &v25);
  sub_1A561CC(a1 + 1376, &v20);
  sub_1A565C0(a1 + 1544, &v15);
  sub_1A5E71C((a2 + 38), &v25);
  v7 = v28;
  v6 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a2[42];
  a2[41] = v7;
  a2[42] = v6;
  if (v8)
  {
    sub_1220A18(v8);
  }

  sub_1A5E71C((a2 + 43), &v20);
  v10 = v23;
  v9 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a2[47];
  a2[46] = v10;
  a2[47] = v9;
  if (v11)
  {
    sub_1220A18(v11);
  }

  sub_1A5E71C((a2 + 48), &v15);
  v13 = v18;
  v12 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a2[52];
  a2[51] = v13;
  a2[52] = v12;
  if (v14)
  {
    sub_1220A18(v14);
  }

  if (v19)
  {
    sub_1220A18(v19);
  }

  if (v17 == 1 && v16)
  {
    sub_1220A18(v16);
  }

  if (v24)
  {
    sub_1220A18(v24);
  }

  if (v22 == 1 && v21)
  {
    sub_1220A18(v21);
  }

  if (v29)
  {
    sub_1220A18(v29);
  }

  if (v27 == 1 && v26)
  {
    sub_1220A18(v26);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }
}

void sub_1A55D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_1A5587C(va);
  sub_1A5587C(va1);
  if (*(v11 - 33) < 0)
  {
    operator delete(*(v11 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_1A55DD8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 128);
  if (!v3)
  {
    sub_2B7420();
  }

  (*(*v3 + 48))(&v37);
  if (SHIBYTE(v38) < 0)
  {
    sub_325C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v34 = v38;
  }

  sub_1A627A4(a1, __p, &v35);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (v35)
  {
    if (*(v35 + 23) < 0)
    {
      sub_325C(v31, *v35, *(v35 + 1));
    }

    else
    {
      v5 = *v35;
      v32 = *(v35 + 2);
      *v31 = v5;
    }

    std::mutex::lock((a1 + 40));
    v7 = sub_19D5254(a1, &v37);
    v8 = v7;
    if (a1 + 8 == v7)
    {
      goto LABEL_27;
    }

    v9 = *(v7 + 79);
    if (v9 >= 0)
    {
      v10 = *(v7 + 79);
    }

    else
    {
      v10 = *(v7 + 64);
    }

    v11 = HIBYTE(v32);
    if (v32 < 0)
    {
      v11 = v31[1];
    }

    if (v10 == v11 && (v9 >= 0 ? (v12 = (v7 + 56)) : (v12 = *(v7 + 56)), v32 >= 0 ? (v13 = v31) : (v13 = v31[0]), !memcmp(v12, v13, v10)))
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      if (*(v8 + 96) == 1)
      {
        v19 = *(v8 + 88);
        *a2 = *(v8 + 80);
        *(a2 + 8) = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        *(a2 + 16) = 1;
      }

      v20 = v36;
      *(a2 + 24) = v35;
      *(a2 + 32) = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_27:
      v14 = *(a1 + 160);
      if (!v14)
      {
        sub_2B7420();
      }

      (*(*v14 + 48))(&v28);
      if (v30 == 1)
      {
        v21 = v28;
        v22 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = 1;
        sub_1A628CC(v24, v31, &v21);
        v40 = &v37;
        v15 = sub_1A62944(a1, &v37, &unk_229EB70, &v40, &v39);
        sub_1A6286C((v15 + 7), v24);
        if (v27 == 1 && v26)
        {
          sub_1220A18(v26);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        if (v23 == 1 && v22)
        {
          sub_1220A18(v22);
        }
      }

      v17 = v28;
      v16 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a2 = v17;
      *(a2 + 8) = v16;
      *(a2 + 16) = 1;
      v18 = v36;
      *(a2 + 24) = v35;
      *(a2 + 32) = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v29)
      {
        sub_1220A18(v29);
      }
    }

    std::mutex::unlock((a1 + 40));
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    v6 = v36;
    *(a2 + 24) = 0;
    *(a2 + 32) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v36)
  {
    sub_1220A18(v36);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }
}

void sub_1A5611C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  v38 = *(v36 - 96);
  if (v38)
  {
    sub_1220A18(v38);
  }

  if (*(v36 - 65) < 0)
  {
    operator delete(*(v36 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_1A561CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 128);
  if (!v3)
  {
    sub_2B7420();
  }

  (*(*v3 + 48))(&v37);
  if (SHIBYTE(v38) < 0)
  {
    sub_325C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v34 = v38;
  }

  sub_1A62BBC(a1, __p, &v35);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (v35)
  {
    if (*(v35 + 23) < 0)
    {
      sub_325C(v31, *v35, *(v35 + 1));
    }

    else
    {
      v5 = *v35;
      v32 = *(v35 + 2);
      *v31 = v5;
    }

    std::mutex::lock((a1 + 40));
    v7 = sub_19D5254(a1, &v37);
    v8 = v7;
    if (a1 + 8 == v7)
    {
      goto LABEL_27;
    }

    v9 = *(v7 + 79);
    if (v9 >= 0)
    {
      v10 = *(v7 + 79);
    }

    else
    {
      v10 = *(v7 + 64);
    }

    v11 = HIBYTE(v32);
    if (v32 < 0)
    {
      v11 = v31[1];
    }

    if (v10 == v11 && (v9 >= 0 ? (v12 = (v7 + 56)) : (v12 = *(v7 + 56)), v32 >= 0 ? (v13 = v31) : (v13 = v31[0]), !memcmp(v12, v13, v10)))
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      if (*(v8 + 96) == 1)
      {
        v19 = *(v8 + 88);
        *a2 = *(v8 + 80);
        *(a2 + 8) = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        *(a2 + 16) = 1;
      }

      v20 = v36;
      *(a2 + 24) = v35;
      *(a2 + 32) = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_27:
      v14 = *(a1 + 160);
      if (!v14)
      {
        sub_2B7420();
      }

      (*(*v14 + 48))(&v28);
      if (v30 == 1)
      {
        v21 = v28;
        v22 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = 1;
        sub_1A628CC(v24, v31, &v21);
        v40 = &v37;
        v15 = sub_1A62CE4(a1, &v37, &unk_229EB70, &v40, &v39);
        sub_1A62C84((v15 + 7), v24);
        if (v27 == 1 && v26)
        {
          sub_1220A18(v26);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        if (v23 == 1 && v22)
        {
          sub_1220A18(v22);
        }
      }

      v17 = v28;
      v16 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a2 = v17;
      *(a2 + 8) = v16;
      *(a2 + 16) = 1;
      v18 = v36;
      *(a2 + 24) = v35;
      *(a2 + 32) = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v29)
      {
        sub_1220A18(v29);
      }
    }

    std::mutex::unlock((a1 + 40));
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    v6 = v36;
    *(a2 + 24) = 0;
    *(a2 + 32) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v36)
  {
    sub_1220A18(v36);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }
}

void sub_1A56510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  v38 = *(v36 - 96);
  if (v38)
  {
    sub_1220A18(v38);
  }

  if (*(v36 - 65) < 0)
  {
    operator delete(*(v36 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_1A565C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 128);
  if (!v3)
  {
    sub_2B7420();
  }

  (*(*v3 + 48))(&v37);
  if (SHIBYTE(v38) < 0)
  {
    sub_325C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v34 = v38;
  }

  sub_1A62E40(a1, __p, &v35);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (v35)
  {
    if (*(v35 + 23) < 0)
    {
      sub_325C(v31, *v35, *(v35 + 1));
    }

    else
    {
      v5 = *v35;
      v32 = *(v35 + 2);
      *v31 = v5;
    }

    std::mutex::lock((a1 + 40));
    v7 = sub_19D5254(a1, &v37);
    v8 = v7;
    if (a1 + 8 == v7)
    {
      goto LABEL_27;
    }

    v9 = *(v7 + 79);
    if (v9 >= 0)
    {
      v10 = *(v7 + 79);
    }

    else
    {
      v10 = *(v7 + 64);
    }

    v11 = HIBYTE(v32);
    if (v32 < 0)
    {
      v11 = v31[1];
    }

    if (v10 == v11 && (v9 >= 0 ? (v12 = (v7 + 56)) : (v12 = *(v7 + 56)), v32 >= 0 ? (v13 = v31) : (v13 = v31[0]), !memcmp(v12, v13, v10)))
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      if (*(v8 + 96) == 1)
      {
        v19 = *(v8 + 88);
        *a2 = *(v8 + 80);
        *(a2 + 8) = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        *(a2 + 16) = 1;
      }

      v20 = v36;
      *(a2 + 24) = v35;
      *(a2 + 32) = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_27:
      v14 = *(a1 + 160);
      if (!v14)
      {
        sub_2B7420();
      }

      (*(*v14 + 48))(&v28);
      if (v30 == 1)
      {
        v21 = v28;
        v22 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = 1;
        sub_1A628CC(v24, v31, &v21);
        v40 = &v37;
        v15 = sub_1A62F68(a1, &v37, &unk_229EB70, &v40, &v39);
        sub_1A62F08((v15 + 7), v24);
        if (v27 == 1 && v26)
        {
          sub_1220A18(v26);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        if (v23 == 1 && v22)
        {
          sub_1220A18(v22);
        }
      }

      v17 = v28;
      v16 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a2 = v17;
      *(a2 + 8) = v16;
      *(a2 + 16) = 1;
      v18 = v36;
      *(a2 + 24) = v35;
      *(a2 + 32) = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v29)
      {
        sub_1220A18(v29);
      }
    }

    std::mutex::unlock((a1 + 40));
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    v6 = v36;
    *(a2 + 24) = 0;
    *(a2 + 32) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v36)
  {
    sub_1220A18(v36);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }
}

void sub_1A56904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  v38 = *(v36 - 96);
  if (v38)
  {
    sub_1220A18(v38);
  }

  if (*(v36 - 65) < 0)
  {
    operator delete(*(v36 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_1A56F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1A62724(&STACK[0x6B8]);
  sub_1A570AC(va);
  if (a14)
  {
    sub_1220A18(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A570AC(uint64_t a1)
{
  sub_1A5F98C(a1 + 1632);
  sub_1A5E8D4(a1 + 1208);
  if (*(a1 + 1200) == 1)
  {
    sub_1965ECC(a1 + 8);
  }

  return a1;
}

void sub_1A570F4(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = 0;
  v5[1192] = 0;
  sub_1A5F8F4(v6, a3);
  sub_1A569B4(a1, a2, v5, v6);
}

void sub_1A57198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A5F98C(v3 - 72);
  if (STACK[0x4B0])
  {
    sub_1965ECC(va);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1A571CC(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1963930(result, a4);
  }

  return result;
}

void sub_1A57224(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A57240(uint64_t a1)
{
  *a1 = xmmword_2368410;
  *(a1 + 16) = xmmword_2368420;
  *(a1 + 32) = xmmword_2368430;
  *(a1 + 48) = 16843009;
  *(a1 + 52) = 1;
  *(a1 + 53) = 0;
  *(a1 + 55) = 0;
  *(a1 + 56) = xmmword_2368440;
  *(a1 + 72) = 0x4170000042480000;
  *(a1 + 80) = 8;
  *(a1 + 84) = 1;
  *(a1 + 88) = 0x3FD999999999999ALL;
  *(a1 + 96) = 0x10000003CLL;
  *(a1 + 104) = xmmword_2368450;
  *(a1 + 120) = xmmword_2368460;
  *(a1 + 136) = xmmword_2368470;
  *(a1 + 152) = xmmword_2368480;
  *(a1 + 168) = 16777473;
  sub_3608D0(v122, "en");
  sub_3608D0(&v124, "es");
  sub_3608D0(&v126, "de");
  sub_3608D0(&v128, "fr");
  sub_3608D0(&v129[1], "it");
  sub_3608D0(&v130, "no");
  sub_3608D0(v131, "nb");
  sub_3608D0(&v133, "fi");
  sub_3608D0(&v134[1], "pt");
  sub_3608D0(&v135, "nl");
  sub_3608D0(v137, "sv");
  sub_3608D0(&v139, "is");
  sub_3608D0(v141, "da");
  sub_3608D0(&v142, "zh");
  sub_3608D0(v144, "ja");
  sub_3608D0(v146, "vi");
  sub_3608D0(v147, "th");
  sub_3608D0(&v148, "ms");
  sub_3608D0(v150, "tr");
  sub_3608D0(v152, "fil");
  sub_3608D0(v153, "bg");
  sub_3608D0(&v154, "ru");
  sub_3608D0(&v156, "ro");
  sub_3608D0(&v158, "pl");
  sub_3608D0(v160, "uk");
  sub_3608D0(&v161, "cs");
  sub_3608D0(v163, "el");
  sub_3608D0(v165, "cy");
  sub_3608D0(v166, "hu");
  sub_3608D0(&v167, "sk");
  sub_3608D0(v169, "hr");
  sub_3608D0(v171, "et");
  sub_3608D0(v172, "lt");
  sub_3608D0(&v173, "lv");
  sub_3608D0(v175, "mk");
  sub_3608D0(v177, "ca");
  sub_3608D0(v178, "bs");
  sub_3608D0(&v179, "sr");
  sub_3608D0(v181, "sq");
  sub_3608D0(v183, "hi");
  sub_3608D0(&v184, "id");
  sub_3608D0(&v185, "jv");
  sub_3608D0(v187, "fj");
  sub_3608D0(v189, "my");
  sub_3608D0(&v190, "km");
  sub_3608D0(&v191, "khm");
  sub_3608D0(v193, "bn");
  sub_3608D0(v195, "ben");
  sub_3608D0(v196, "dz");
  sub_3608D0(&v197, "ne");
  sub_3608D0(v199, "ur");
  sub_3608D0(v201, "kk");
  sub_3608D0(v202, "tk");
  sub_3608D0(&v203, "uz");
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_68678C(a1 + 176, v122, &v205, 0x36uLL);
  v2 = 162;
  do
  {
    if (SHIBYTE(v122[v2 - 1]) < 0)
    {
      operator delete(*&v121[v2 * 8 + 24]);
    }

    v2 -= 3;
  }

  while (v2 * 8);
  sub_3608D0(v122, "IL");
  sub_3608D0(&v124, "TN");
  sub_3608D0(&v126, "MA");
  sub_3608D0(&v128, "IQ");
  sub_3608D0(&v129[1], "IR");
  sub_3608D0(&v130, "JO");
  sub_3608D0(v131, "LB");
  sub_3608D0(&v133, "LY");
  sub_3608D0(&v134[1], "EG");
  sub_3608D0(&v135, "OM");
  sub_3608D0(v137, "YE");
  sub_3608D0(&v139, "SA");
  sub_3608D0(v141, "SY");
  sub_3608D0(&v142, "BH");
  sub_3608D0(v144, "QA");
  sub_3608D0(v146, "AE");
  sub_3608D0(v147, "KW");
  sub_3608D0(&v148, "EH");
  sub_3608D0(v150, "NE");
  sub_3608D0(v152, "ML");
  sub_3608D0(v153, "TD");
  sub_3608D0(&v154, "MR");
  sub_3608D0(&v156, "SD");
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_68678C(a1 + 200, v122, &v158, 0x17uLL);
  v3 = 69;
  do
  {
    if (SHIBYTE(v122[v3 - 1]) < 0)
    {
      operator delete(*&v121[v3 * 8 + 24]);
    }

    v3 -= 3;
  }

  while (v3 * 8);
  sub_3608D0(v122, "6_7_4");
  sub_3608D0(&v124, "7_7_4");
  sub_3608D0(&v126, "8_7_4");
  sub_3608D0(&v128, "9_7_4");
  sub_3608D0(&v129[1], "10_7_4");
  sub_3608D0(&v130, "8_8_4");
  sub_3608D0(v131, "9_8_4");
  sub_3608D0(&v133, "10_8_4");
  sub_3608D0(&v134[1], "8_9_4");
  sub_3608D0(&v135, "9_9_4");
  sub_3608D0(v137, "10_9_4");
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_68678C(a1 + 224, v122, &v139, 0xBuLL);
  v4 = 33;
  do
  {
    if (SHIBYTE(v122[v4 - 1]) < 0)
    {
      operator delete(*&v121[v4 * 8 + 24]);
    }

    v4 -= 3;
  }

  while (v4 * 8);
  *(a1 + 248) = 15;
  *(a1 + 252) = 1;
  *(a1 + 256) = 0x400000010;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0x4008000000000000;
  *(a1 + 320) = 0x100000014;
  *(a1 + 328) = 10;
  *(a1 + 332) = 257;
  *(a1 + 336) = xmmword_2368490;
  *(a1 + 352) = xmmword_23684A0;
  sub_3608D0(v122, "browse_subcategory_gasstations");
  sub_3608D0(&v124, "browse_subcategory_parking");
  sub_3608D0(&v126, "browse_subcategory_restaurants");
  sub_3608D0(&v128, "browse_subcategory_coffee_shops");
  sub_3608D0(&v129[1], "browse_subcategory_groceries");
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  sub_68678C(a1 + 368, v122, &v130, 5uLL);
  for (i = 0; i != -15; i -= 3)
  {
    if (SHIBYTE(v129[i + 3]) < 0)
    {
      operator delete(v129[i + 1]);
    }
  }

  sub_3608D0(v122, "browse_subcategory_gasstations");
  sub_3608D0(&v124, "browse_subcategory_parking");
  sub_3608D0(&v126, "browse_subcategory_restaurants");
  sub_3608D0(&v128, "browse_subcategory_coffee_shops");
  sub_3608D0(&v129[1], "browse_subcategory_groceries");
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  sub_68678C(a1 + 392, v122, &v130, 5uLL);
  for (j = 0; j != -15; j -= 3)
  {
    if (SHIBYTE(v129[j + 3]) < 0)
    {
      operator delete(v129[j + 1]);
    }
  }

  sub_3608D0(v122, "browse_subcategory_evcharger_carplay");
  sub_3608D0(&v124, "browse_subcategory_parking");
  sub_3608D0(&v126, "browse_subcategory_restaurants");
  sub_3608D0(&v128, "browse_subcategory_coffee_shops");
  sub_3608D0(&v129[1], "browse_subcategory_groceries");
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  sub_68678C(a1 + 416, v122, &v130, 5uLL);
  for (k = 0; k != -15; k -= 3)
  {
    if (SHIBYTE(v129[k + 3]) < 0)
    {
      operator delete(v129[k + 1]);
    }
  }

  sub_3608D0(v122, "browse_subcategory_gasstations");
  sub_3608D0(&v124, "browse_subcategory_parking");
  sub_3608D0(&v126, "browse_subcategory_restaurants");
  sub_3608D0(&v128, "browse_subcategory_coffee_shops");
  sub_3608D0(&v129[1], "browse_subcategory_groceries");
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  sub_68678C(a1 + 440, v122, &v130, 5uLL);
  for (m = 0; m != -15; m -= 3)
  {
    if (SHIBYTE(v129[m + 3]) < 0)
    {
      operator delete(v129[m + 1]);
    }
  }

  sub_3608D0(v122, "active.hiking");
  sub_3608D0(&v124, "active.parks.trailhead");
  sub_3608D0(&v126, "hotelstravel.campgrounds");
  sub_3608D0(&v128, "hotelstravel.visitorcenters");
  sub_3608D0(&v129[1], "travel_and_leisure.hiking_trail");
  sub_3608D0(&v130, "travel_and_leisure.hiking_trail.trailhead");
  sub_3608D0(v131, "travel_and_leisure.campground");
  sub_3608D0(&v133, "travel_and_leisure.visitor_center");
  sub_1A5C918(a1 + 464, v122, 8);
  for (n = 0; n != -24; n -= 3)
  {
    if (SHIBYTE(v134[n]) < 0)
    {
      operator delete(v134[n - 2]);
    }
  }

  sub_3608D0(v122, "active");
  sub_3608D0(&v124, "emergencyrooms");
  sub_3608D0(&v126, "hospitals");
  sub_3608D0(&v128, "urgent_care");
  sub_3608D0(&v129[1], "airports");
  sub_3608D0(&v130, "skiresorts");
  sub_3608D0(v131, "transport");
  sub_3608D0(&v133, "touristattraction");
  sub_3608D0(&v134[1], "physicalfeature");
  sub_3608D0(&v135, "travel_and_leisure");
  sub_3608D0(v137, "emergency_room");
  sub_3608D0(&v139, "hospital");
  sub_3608D0(v141, "urgent_care_center");
  sub_3608D0(&v142, "airport");
  sub_3608D0(v144, "ski_resort");
  sub_3608D0(v146, "transportation_service");
  sub_3608D0(v147, "tourist_attraction");
  sub_3608D0(&v148, "physical_feature");
  sub_1A5C918(a1 + 488, v122, 18);
  v10 = 54;
  do
  {
    if (SHIBYTE(v122[v10 - 1]) < 0)
    {
      operator delete(*&v121[v10 * 8 + 24]);
    }

    v10 -= 3;
  }

  while (v10 * 8);
  sub_3608D0(v122, "kids_activities");
  sub_3608D0(&v124, "parks");
  sub_3608D0(&v126, "playgrounds");
  sub_3608D0(&v128, "sportscomplex");
  sub_3608D0(&v129[1], "statue");
  sub_3608D0(&v130, "zoos");
  sub_3608D0(v131, "kids_fun_center");
  sub_3608D0(&v133, "park");
  sub_3608D0(&v134[1], "playground");
  sub_3608D0(&v135, "sports_complex");
  sub_3608D0(v137, "zoo");
  sub_1A5C918(a1 + 512, v122, 11);
  v11 = 33;
  do
  {
    if (SHIBYTE(v122[v11 - 1]) < 0)
    {
      operator delete(*&v121[v11 * 8 + 24]);
    }

    v11 -= 3;
  }

  while (v11 * 8);
  sub_3608D0(v122, "food");
  sub_3608D0(&v124, "restaurants");
  sub_3608D0(&v126, "financialservices");
  sub_3608D0(&v128, "localservices");
  sub_3608D0(&v129[1], "homedecor");
  sub_3608D0(&v130, "beautysvc");
  sub_3608D0(v131, "officebuilding");
  sub_3608D0(&v133, "supermarket");
  sub_3608D0(&v134[1], "flowers");
  sub_3608D0(&v135, "homeandgarden");
  sub_3608D0(v137, "servicestations");
  sub_3608D0(&v139, "parks");
  sub_3608D0(v141, "playgrounds");
  sub_3608D0(&v142, "sportscomplex");
  sub_3608D0(v144, "trainstations");
  sub_3608D0(v146, "food_mart");
  sub_3608D0(v147, "restaurant");
  sub_3608D0(&v148, "financial_service");
  sub_3608D0(v150, "local_service");
  sub_3608D0(v152, "home_decor_store");
  sub_3608D0(v153, "beauty_service");
  sub_3608D0(&v154, "office_building");
  sub_3608D0(&v156, "floral_shop");
  sub_3608D0(&v158, "home_goods_store");
  sub_3608D0(v160, "service_station");
  sub_3608D0(&v161, "park");
  sub_3608D0(v163, "playground");
  sub_3608D0(v165, "sports_complex");
  sub_3608D0(v166, "train_station");
  sub_1A5C918(a1 + 536, v122, 29);
  v12 = 87;
  do
  {
    if (SHIBYTE(v122[v12 - 1]) < 0)
    {
      operator delete(*&v121[v12 * 8 + 24]);
    }

    v12 -= 3;
  }

  while (v12 * 8);
  *(a1 + 560) = 1;
  *(a1 + 564) = xmmword_23684B0;
  *(a1 + 580) = xmmword_23684C0;
  *(a1 + 596) = 30;
  *(a1 + 600) = 0x4000000000000000;
  *(a1 + 608) = xmmword_23684D0;
  *(a1 + 624) = 2;
  *(a1 + 628) = 257;
  sub_3608D0(v102, "ranker_pw_en_model");
  sub_3608D0(&v227, "CA");
  sub_3608D0(v229, "GB");
  sub_3608D0(v230, "AU");
  sub_3608D0(&v231, "NZ");
  sub_3608D0(v232, "IE");
  sub_3608D0(v233, "ZA");
  v99 = 0uLL;
  v100 = 0;
  sub_68678C(&v99, &v227, v234, 6uLL);
  sub_1A5C99C(v234, v102, &v99);
  sub_3608D0(v92, "ranker_pw_us_model");
  sub_3608D0(v86, "US");
  v89 = 0uLL;
  v90 = 0;
  sub_68678C(&v89, v86, v88, 1uLL);
  sub_1A5C99C(v237, v92, &v89);
  sub_3608D0(&v83, "ranker_pw_eu_model");
  sub_3608D0(v104, "DE");
  sub_3608D0(v106, "FR");
  sub_3608D0(&v107, "BE");
  sub_3608D0(v108, "CH");
  sub_3608D0(v109, "AT");
  sub_3608D0(v110, "ES");
  sub_3608D0(v111, "IT");
  sub_3608D0(v112, "NL");
  sub_3608D0(v113, "PT");
  sub_3608D0(v114, "NO");
  sub_3608D0(v115, "DK");
  sub_3608D0(v116, "FI");
  sub_3608D0(v117, "SE");
  v225 = 0uLL;
  v226 = 0;
  sub_68678C(&v225, v104, &v118, 0xDuLL);
  sub_1A5C99C(&v239, &v83, &v225);
  sub_3608D0(&v80, "ranker_pw_cn_model");
  sub_3608D0(&v223, "CN");
  v78 = 0uLL;
  v79 = 0;
  sub_68678C(&v78, &v223, &v225, 1uLL);
  sub_1A5C99C(&v240, &v80, &v78);
  sub_3608D0(&v76, "ranker_pw_cjk_model");
  sub_3608D0(&v215, "JP");
  sub_3608D0(v216, "MO");
  sub_3608D0(&v217, "PH");
  sub_3608D0(v218, "MY");
  sub_3608D0(v219, "TW");
  sub_3608D0(v220, "HK");
  v221 = 0uLL;
  v222 = 0;
  sub_68678C(&v221, &v215, &v221, 6uLL);
  sub_1A5C99C(&v241, &v76, &v221);
  sub_3608D0(__p, "ranker_pw_row_model");
  sub_3608D0(v122, "AR");
  sub_3608D0(&v124, "BR");
  sub_3608D0(&v126, "MX");
  sub_3608D0(&v128, "CL");
  sub_3608D0(&v129[1], "CZ");
  sub_3608D0(&v130, "GR");
  sub_3608D0(v131, "HR");
  sub_3608D0(&v133, "HU");
  sub_3608D0(&v134[1], "ID");
  sub_3608D0(&v135, "IN");
  sub_3608D0(v137, "PL");
  sub_3608D0(&v139, "RO");
  sub_3608D0(v141, "SG");
  sub_3608D0(&v142, "SK");
  sub_3608D0(v144, "TH");
  sub_3608D0(v146, "TR");
  sub_3608D0(v147, "VN");
  sub_3608D0(&v148, "AE");
  sub_3608D0(v150, "EG");
  sub_3608D0(v152, "IL");
  sub_3608D0(v153, "NG");
  sub_3608D0(&v154, "MA");
  v71 = 0;
  v72 = 0;
  v73 = 0;
  sub_68678C(&v71, v122, &v156, 0x16uLL);
  sub_1A5C99C(&v242, __p, &v71);
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0;
  sub_1A5CA34((a1 + 632), v234, &v243, 6uLL);
  v13 = 36;
  do
  {
    v69[0] = &v233[v13];
    sub_195E3E8(v69);
    if (SHIBYTE(v232[v13 + 2]) < 0)
    {
      operator delete(v232[v13]);
    }

    v13 -= 6;
  }

  while (v13 * 8);
  v69[0] = &v71;
  sub_195E3E8(v69);
  v14 = 66;
  do
  {
    if (SHIBYTE(v122[v14 - 1]) < 0)
    {
      operator delete(*&v121[v14 * 8 + 24]);
    }

    v14 -= 3;
  }

  while (v14 * 8);
  if (v75 < 0)
  {
    operator delete(__p[0]);
  }

  v122[0] = &v221;
  sub_195E3E8(v122);
  for (ii = 0; ii != -18; ii -= 3)
  {
    if (SHIBYTE(v220[ii + 2]) < 0)
    {
      operator delete(v220[ii]);
    }
  }

  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76);
  }

  v122[0] = &v78;
  sub_195E3E8(v122);
  if (SHIBYTE(v224) < 0)
  {
    operator delete(v223);
  }

  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80);
  }

  v122[0] = &v225;
  sub_195E3E8(v122);
  v16 = 39;
  do
  {
    if (SHIBYTE(v104[v16 - 1]) < 0)
    {
      operator delete(*&v103[v16 * 8 + 1]);
    }

    v16 -= 3;
  }

  while (v16 * 8);
  if (SHIBYTE(v84) < 0)
  {
    operator delete(v83);
  }

  v122[0] = &v89;
  sub_195E3E8(v122);
  if (v87 < 0)
  {
    operator delete(v86[0]);
  }

  if (v93 < 0)
  {
    operator delete(v92[0]);
  }

  v122[0] = &v99;
  sub_195E3E8(v122);
  for (jj = 0; jj != -18; jj -= 3)
  {
    if (SHIBYTE(v233[jj + 2]) < 0)
    {
      operator delete(v233[jj]);
    }
  }

  if ((v103[0] & 0x80000000) != 0)
  {
    operator delete(v102[0]);
  }

  sub_3608D0(v122, "EG");
  v124 = 0x4058000000000000;
  sub_3608D0(v125, "CA");
  *(&v126 + 1) = 0x4058000000000000;
  sub_3608D0(&v127, "GB");
  v129[0] = 0x4058000000000000;
  sub_3608D0(&v129[1], "US");
  *&v130 = 0x4058000000000000;
  sub_3608D0(&v130 + 1, "DE");
  v131[1] = 0x4058000000000000;
  sub_3608D0(&v132, "FR");
  v134[0] = 0x4058000000000000;
  sub_3608D0(&v134[1], "BE");
  v135 = 0x4058000000000000;
  sub_3608D0(&v136, "CH");
  v137[1] = 0x4058000000000000;
  sub_3608D0(&v138, "CN");
  v140 = 0x4058000000000000;
  sub_3608D0(v141, "AT");
  v142 = 0x4058000000000000;
  sub_3608D0(&v143, "ES");
  v144[1] = 0x4058000000000000;
  sub_3608D0(&v145, "AU");
  v146[2] = 0x4058000000000000;
  sub_3608D0(v147, "NZ");
  v148 = 0x4058000000000000;
  sub_3608D0(&v149, "IE");
  v150[1] = 0x4058000000000000;
  sub_3608D0(&v151, "ZA");
  v152[2] = 0x4058000000000000;
  sub_3608D0(v153, "IT");
  v154 = 0x4058000000000000;
  sub_3608D0(&v155, "NL");
  *(&v156 + 1) = 0x4058000000000000;
  sub_3608D0(&v157, "PT");
  v159 = 0x4058000000000000;
  sub_3608D0(v160, "NO");
  v161 = 0x4058000000000000;
  sub_3608D0(&v162, "DK");
  v163[1] = 0x4058000000000000;
  sub_3608D0(&v164, "FI");
  v165[2] = 0x4058000000000000;
  sub_3608D0(v166, "SE");
  v167 = 0x4058000000000000;
  sub_3608D0(&v168, "GB");
  v169[1] = 0x4058000000000000;
  sub_3608D0(&v170, "JP");
  v171[2] = 0x4058000000000000;
  sub_3608D0(v172, "MO");
  v173 = 0x4058000000000000;
  sub_3608D0(&v174, "PH");
  v175[1] = 0x4058000000000000;
  sub_3608D0(&v176, "MY");
  v177[2] = 0x4058000000000000;
  sub_3608D0(v178, "TW");
  v179 = 0x4058000000000000;
  sub_3608D0(&v180, "HK");
  v181[1] = 0x4058000000000000;
  sub_3608D0(&v182, "AR");
  v183[2] = 0x4058000000000000;
  sub_3608D0(&v184, "BR");
  v185 = 0x4058000000000000;
  sub_3608D0(&v186, "MX");
  v187[1] = 0x4058000000000000;
  sub_3608D0(&v188, "CL");
  v189[2] = 0x4058000000000000;
  sub_3608D0(&v190, "CZ");
  v191 = 0x4058000000000000;
  sub_3608D0(&v192, "GR");
  v193[1] = 0x4058000000000000;
  sub_3608D0(&v194, "HR");
  v195[2] = 0x4058000000000000;
  sub_3608D0(v196, "HU");
  v197 = 0x4058000000000000;
  sub_3608D0(&v198, "ID");
  v199[1] = 0x4058000000000000;
  sub_3608D0(&v200, "IN");
  v201[2] = 0x4058000000000000;
  sub_3608D0(v202, "PL");
  v203 = 0x4058000000000000;
  sub_3608D0(&v204, "RO");
  *(&v205 + 1) = 0x4058000000000000;
  sub_3608D0(v206, "SG");
  v206[3] = 0x4058000000000000;
  sub_3608D0(v207, "SK");
  v207[3] = 0x4058000000000000;
  sub_3608D0(v208, "TH");
  v208[3] = 0x4058000000000000;
  sub_3608D0(v209, "TR");
  v209[3] = 0x4058000000000000;
  sub_3608D0(v210, "VN");
  v210[3] = 0x4058000000000000;
  sub_3608D0(v211, "AE");
  v211[3] = 0x4058000000000000;
  sub_3608D0(v212, "IL");
  v212[3] = 0x4058000000000000;
  sub_3608D0(v213, "NG");
  v213[3] = 0x4058000000000000;
  sub_3608D0(v214, "MA");
  v214[3] = 0x4058000000000000;
  sub_1A5CB44(a1 + 656, v122, 50);
  v18 = 1600;
  do
  {
    if (v121[v18 + 39] < 0)
    {
      operator delete(*&v121[v18 + 16]);
    }

    v18 -= 32;
  }

  while (v18);
  *(a1 + 696) = 5;
  sub_3608D0(v92, "speller-enus-esus");
  sub_3608D0(&v215, "US");
  sub_3608D0(v216, "AE");
  v89 = 0uLL;
  v90 = 0;
  sub_68678C(&v89, &v215, &v217, 2uLL);
  sub_1A5C99C(v104, v92, &v89);
  sub_3608D0(v86, "speller-GB");
  sub_3608D0(&v225, "GB");
  v83 = 0uLL;
  v84 = 0;
  sub_68678C(&v83, &v225, &v227, 1uLL);
  sub_1A5C99C(&v107, v86, &v83);
  sub_3608D0(&v80, "speller-AU");
  sub_3608D0(v102, "AU");
  sub_3608D0(&v103[1], "NZ");
  v78 = 0uLL;
  v79 = 0;
  sub_68678C(&v78, v102, v104, 2uLL);
  sub_1A5C99C(v109, &v80, &v78);
  sub_3608D0(&v223, "speller-CA");
  sub_3608D0(&v221, "CA");
  v76 = 0uLL;
  v77 = 0;
  sub_68678C(&v76, &v221, &v223, 1uLL);
  sub_1A5C99C(v111, &v223, &v76);
  sub_3608D0(__p, "speller-EU");
  sub_3608D0(v234, "ES");
  sub_3608D0(v236, "IT");
  sub_3608D0(v237, "NL");
  v71 = 0;
  v72 = 0;
  v73 = 0;
  sub_68678C(&v71, v234, &v238, 3uLL);
  sub_1A5C99C(v113, __p, &v71);
  sub_3608D0(v69, "speller-FR-DE");
  sub_3608D0(&v99, "FR");
  sub_3608D0(v101, "DE");
  v66 = 0;
  v67 = 0;
  v68 = 0;
  sub_68678C(&v66, &v99, v102, 2uLL);
  sub_1A5C99C(v115, v69, &v66);
  sub_3608D0(v64, "speller-EU-offline-mixed-reduced");
  sub_3608D0(&v227, "AT");
  sub_3608D0(v229, "CH");
  sub_3608D0(v230, "BE");
  v61 = 0;
  v62 = 0;
  v63 = 0;
  sub_68678C(&v61, &v227, &v231, 3uLL);
  sub_1A5C99C(v117, v64, &v61);
  sub_3608D0(v59, "speller-GR");
  sub_3608D0(v97, "GR");
  v56 = 0;
  v57 = 0;
  v58 = 0;
  sub_68678C(&v56, v97, &v99, 1uLL);
  sub_1A5C99C(&v119, v59, &v56);
  sub_3608D0(&v54, "speller-JP");
  sub_3608D0(&v95, "JP");
  v52 = 0uLL;
  v53 = 0;
  sub_68678C(&v52, &v95, v97, 1uLL);
  sub_1A5C99C(&v120, &v54, &v52);
  sub_3608D0(v50, "speller-ROW");
  sub_3608D0(v122, "IN");
  sub_3608D0(&v124, "PT");
  sub_3608D0(&v126, "FI");
  sub_3608D0(&v128, "SE");
  sub_3608D0(&v129[1], "AD");
  sub_3608D0(&v130, "MC");
  sub_3608D0(v131, "LU");
  sub_3608D0(&v133, "VA");
  sub_3608D0(&v134[1], "IS");
  sub_3608D0(&v135, "GL");
  sub_3608D0(v137, "FO");
  sub_3608D0(&v139, "IE");
  sub_3608D0(v141, "NO");
  sub_3608D0(&v142, "DK");
  sub_3608D0(v144, "AR");
  sub_3608D0(v146, "BR");
  sub_3608D0(v147, "MX");
  sub_3608D0(&v148, "CL");
  sub_3608D0(v150, "TW");
  sub_3608D0(v152, "HK");
  sub_3608D0(v153, "MO");
  sub_3608D0(&v154, "PL");
  sub_3608D0(&v156, "HR");
  sub_3608D0(&v158, "RO");
  sub_3608D0(v160, "SK");
  sub_3608D0(&v161, "CZ");
  sub_3608D0(v163, "HU");
  sub_3608D0(v165, "VN");
  sub_3608D0(v166, "TH");
  sub_3608D0(&v167, "SG");
  sub_3608D0(v169, "MY");
  sub_3608D0(v171, "PH");
  sub_3608D0(v172, "TR");
  sub_3608D0(&v173, "AE");
  sub_3608D0(v175, "IL");
  sub_3608D0(v177, "SA");
  sub_3608D0(v178, "NG");
  sub_3608D0(&v179, "EG");
  sub_3608D0(v181, "MA");
  sub_3608D0(v183, "ZA");
  v47 = 0;
  v48 = 0;
  v49 = 0;
  sub_68678C(&v47, v122, &v184, 0x28uLL);
  sub_1A5C99C(v121, v50, &v47);
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 720) = 0;
  sub_1A5CA34((a1 + 704), v104, v122, 0xAuLL);
  v19 = 480;
  do
  {
    v82 = &v103[v19 + 1];
    sub_195E3E8(&v82);
    if (v103[v19] < 0)
    {
      operator delete(v102[v19 / 8]);
    }

    v19 -= 48;
  }

  while (v19);
  v82 = &v47;
  sub_195E3E8(&v82);
  v20 = 120;
  do
  {
    if (SHIBYTE(v122[v20 - 1]) < 0)
    {
      operator delete(*&v121[v20 * 8 + 24]);
    }

    v20 -= 3;
  }

  while (v20 * 8);
  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  v122[0] = &v52;
  sub_195E3E8(v122);
  if (SHIBYTE(v96) < 0)
  {
    operator delete(v95);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  v122[0] = &v56;
  sub_195E3E8(v122);
  if (v98 < 0)
  {
    operator delete(v97[0]);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  v122[0] = &v61;
  sub_195E3E8(v122);
  for (kk = 0; kk != -9; kk -= 3)
  {
    if (SHIBYTE(v230[kk + 2]) < 0)
    {
      operator delete(v230[kk]);
    }
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  v122[0] = &v66;
  sub_195E3E8(v122);
  for (mm = 0; mm != -6; mm -= 3)
  {
    if (SHIBYTE(v101[mm + 2]) < 0)
    {
      operator delete(v101[mm]);
    }
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  v122[0] = &v71;
  sub_195E3E8(v122);
  for (nn = 0; nn != -9; nn -= 3)
  {
    if (SHIBYTE(v237[nn + 2]) < 0)
    {
      operator delete(v237[nn]);
    }
  }

  if (v75 < 0)
  {
    operator delete(__p[0]);
  }

  v122[0] = &v76;
  sub_195E3E8(v122);
  if (SHIBYTE(v222) < 0)
  {
    operator delete(v221);
  }

  if (SHIBYTE(v224) < 0)
  {
    operator delete(v223);
  }

  v122[0] = &v78;
  sub_195E3E8(v122);
  for (i1 = 0; i1 != -48; i1 -= 24)
  {
    if (v103[i1 + 24] < 0)
    {
      operator delete(*&v103[i1 + 1]);
    }
  }

  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80);
  }

  v122[0] = &v83;
  sub_195E3E8(v122);
  if (SHIBYTE(v226) < 0)
  {
    operator delete(v225);
  }

  if (v87 < 0)
  {
    operator delete(v86[0]);
  }

  v122[0] = &v89;
  sub_195E3E8(v122);
  for (i2 = 0; i2 != -6; i2 -= 3)
  {
    if (SHIBYTE(v216[i2 + 2]) < 0)
    {
      operator delete(v216[i2]);
    }
  }

  if (v93 < 0)
  {
    operator delete(v92[0]);
  }

  sub_3608D0(&v225, "speller-enus-esus");
  sub_3608D0(v104, "from_ENUSESUS");
  sub_3608D0(v106, "to_ENUSESUS");
  v80 = 0uLL;
  v81 = 0;
  sub_68678C(&v80, v104, &v107, 2uLL);
  sub_1A5C99C(v122, &v225, &v80);
  sub_3608D0(&v78, "speller-GB");
  sub_3608D0(v234, "from_SOURCE");
  sub_3608D0(v236, "to_TARGET");
  v223 = 0uLL;
  v224 = 0;
  sub_68678C(&v223, v234, v237, 2uLL);
  sub_1A5C99C(&v126, &v78, &v223);
  sub_3608D0(&v76, "speller-AU");
  sub_3608D0(&v227, "from_AU");
  sub_3608D0(v229, "to_AU");
  v221 = 0uLL;
  v222 = 0;
  sub_68678C(&v221, &v227, v230, 2uLL);
  sub_1A5C99C(&v129[1], &v76, &v221);
  sub_3608D0(__p, "speller-CA");
  sub_3608D0(&v215, "from_CA");
  sub_3608D0(v216, "to_CA");
  v71 = 0;
  v72 = 0;
  v73 = 0;
  sub_68678C(&v71, &v215, &v217, 2uLL);
  sub_1A5C99C(v131, __p, &v71);
  sub_3608D0(v69, "speller-EU");
  sub_3608D0(v102, "from_EU");
  sub_3608D0(&v103[1], "to_EU");
  v66 = 0;
  v67 = 0;
  v68 = 0;
  sub_68678C(&v66, v102, v104, 2uLL);
  sub_1A5C99C(&v134[1], v69, &v66);
  sub_3608D0(v64, "speller-GR");
  sub_3608D0(&v99, "from_SOURCE");
  sub_3608D0(v101, "to_TARGET");
  v61 = 0;
  v62 = 0;
  v63 = 0;
  sub_68678C(&v61, &v99, v102, 2uLL);
  sub_1A5C99C(v137, v64, &v61);
  sub_3608D0(v59, "speller-JP");
  sub_3608D0(v92, "from_SOURCE");
  sub_3608D0(v94, "to_TARGET");
  v56 = 0;
  v57 = 0;
  v58 = 0;
  sub_68678C(&v56, v92, &v95, 2uLL);
  sub_1A5C99C(v141, v59, &v56);
  sub_3608D0(v97, "speller-FR-DE");
  sub_3608D0(&v89, "from_DEFRAC");
  sub_3608D0(v91, "to_DEFRAC");
  v54 = 0uLL;
  v55 = 0;
  sub_68678C(&v54, &v89, v92, 2uLL);
  sub_1A5C99C(v144, v97, &v54);
  sub_3608D0(&v52, "speller-EU-offline-mixed-reduced");
  sub_3608D0(v86, "from_SOURCE");
  sub_3608D0(v88, "to_TARGET");
  v95 = 0uLL;
  v96 = 0;
  sub_68678C(&v95, v86, &v89, 2uLL);
  sub_1A5C99C(v147, &v52, &v95);
  sub_3608D0(v50, "speller-ROW");
  sub_3608D0(&v83, "from_GLOBAL");
  sub_3608D0(v85, "to_GLOBAL");
  v47 = 0;
  v48 = 0;
  v49 = 0;
  sub_68678C(&v47, &v83, v86, 2uLL);
  sub_1A5C99C(v150, v50, &v47);
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  sub_1A5CA34((a1 + 728), v122, v153, 0xAuLL);
  v26 = 60;
  do
  {
    v82 = &v121[v26 * 8 + 24];
    sub_195E3E8(&v82);
    if (v121[v26 * 8 + 23] < 0)
    {
      operator delete(*&v121[v26 * 8]);
    }

    v26 -= 6;
  }

  while (v26 * 8);
  v82 = &v47;
  sub_195E3E8(&v82);
  do
  {
    if (SHIBYTE(v85[v26 + 2]) < 0)
    {
      operator delete(v85[v26]);
    }

    v26 -= 3;
  }

  while (v26 != -6);
  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  *&v83 = &v95;
  sub_195E3E8(&v83);
  for (i3 = 0; i3 != -6; i3 -= 3)
  {
    if (SHIBYTE(v88[i3 + 2]) < 0)
    {
      operator delete(v88[i3]);
    }
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  v86[0] = &v54;
  sub_195E3E8(v86);
  for (i4 = 0; i4 != -6; i4 -= 3)
  {
    if (SHIBYTE(v91[i4 + 2]) < 0)
    {
      operator delete(v91[i4]);
    }
  }

  if (v98 < 0)
  {
    operator delete(v97[0]);
  }

  *&v89 = &v56;
  sub_195E3E8(&v89);
  for (i5 = 0; i5 != -6; i5 -= 3)
  {
    if (SHIBYTE(v94[i5 + 2]) < 0)
    {
      operator delete(v94[i5]);
    }
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  v92[0] = &v61;
  sub_195E3E8(v92);
  for (i6 = 0; i6 != -6; i6 -= 3)
  {
    if (SHIBYTE(v101[i6 + 2]) < 0)
    {
      operator delete(v101[i6]);
    }
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  *&v99 = &v66;
  sub_195E3E8(&v99);
  for (i7 = 0; i7 != -48; i7 -= 24)
  {
    if (v103[i7 + 24] < 0)
    {
      operator delete(*&v103[i7 + 1]);
    }
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  v102[0] = &v71;
  sub_195E3E8(v102);
  for (i8 = 0; i8 != -6; i8 -= 3)
  {
    if (SHIBYTE(v216[i8 + 2]) < 0)
    {
      operator delete(v216[i8]);
    }
  }

  if (v75 < 0)
  {
    operator delete(__p[0]);
  }

  *&v215 = &v221;
  sub_195E3E8(&v215);
  for (i9 = 0; i9 != -6; i9 -= 3)
  {
    if (SHIBYTE(v229[i9 + 2]) < 0)
    {
      operator delete(v229[i9]);
    }
  }

  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76);
  }

  *&v227 = &v223;
  sub_195E3E8(&v227);
  for (i10 = 0; i10 != -6; i10 -= 3)
  {
    if (SHIBYTE(v236[i10 + 2]) < 0)
    {
      operator delete(v236[i10]);
    }
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  v234[0] = &v80;
  sub_195E3E8(v234);
  for (i11 = 0; i11 != -6; i11 -= 3)
  {
    if (SHIBYTE(v106[i11 + 2]) < 0)
    {
      operator delete(v106[i11]);
    }
  }

  if (SHIBYTE(v226) < 0)
  {
    operator delete(v225);
  }

  sub_3608D0(v122, "HK");
  sub_3608D0(&v124, "JP");
  sub_3608D0(&v126, "MO");
  sub_3608D0(&v128, "TW");
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  sub_68678C(a1 + 752, v122, &v129[1], 4uLL);
  for (i12 = 0; i12 != -12; i12 -= 3)
  {
    if (SHIBYTE(v129[i12]) < 0)
    {
      operator delete(v129[i12 - 2]);
    }
  }

  sub_3608D0(v234, "geotagger_en_us_model");
  sub_3608D0(v122, "US");
  sub_3608D0(&v124, "CA");
  sub_3608D0(&v126, "GB");
  sub_3608D0(&v128, "AU");
  sub_3608D0(&v129[1], "NZ");
  sub_3608D0(&v130, "IE");
  sub_3608D0(v131, "ZA");
  v227 = 0uLL;
  v228 = 0;
  sub_68678C(&v227, v122, &v133, 7uLL);
  sub_1A5C99C(v104, v234, &v227);
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  sub_1A5CA34((a1 + 776), v104, &v107, 1uLL);
  *&v215 = v106;
  sub_195E3E8(&v215);
  if (v105 < 0)
  {
    operator delete(v104[0]);
  }

  *&v215 = &v227;
  sub_195E3E8(&v215);
  for (i13 = 0; i13 != -21; i13 -= 3)
  {
    if (*(&v132 + i13 * 8 + 7) < 0)
    {
      operator delete(v131[i13]);
    }
  }

  if (v235 < 0)
  {
    operator delete(v234[0]);
  }

  *(a1 + 800) = 16842753;
  *(a1 + 804) = xmmword_23684E0;
  *(a1 + 820) = 1;
  *(a1 + 824) = 0x6400000001;
  *(a1 + 832) = 10;
  sub_3608D0(v122, "AD");
  sub_3608D0(&v124, "AR");
  sub_3608D0(&v126, "AT");
  sub_3608D0(&v128, "BE");
  sub_3608D0(&v129[1], "BO");
  sub_3608D0(&v130, "BR");
  sub_3608D0(v131, "CH");
  sub_3608D0(&v133, "CL");
  sub_3608D0(&v134[1], "CO");
  sub_3608D0(&v135, "CR");
  sub_3608D0(v137, "CU");
  sub_3608D0(&v139, "DE");
  sub_3608D0(v141, "DK");
  sub_3608D0(&v142, "DO");
  sub_3608D0(v144, "EC");
  sub_3608D0(v146, "ES");
  sub_3608D0(v147, "FI");
  sub_3608D0(&v148, "GL");
  sub_3608D0(v150, "GQ");
  sub_3608D0(v152, "GR");
  sub_3608D0(v153, "GT");
  sub_3608D0(&v154, "HN");
  sub_3608D0(&v156, "ID");
  sub_3608D0(&v158, "IS");
  sub_3608D0(v160, "IT");
  sub_3608D0(&v161, "JP");
  sub_3608D0(v163, "LI");
  sub_3608D0(v165, "MX");
  sub_3608D0(v166, "NI");
  sub_3608D0(&v167, "NL");
  sub_3608D0(v169, "NO");
  sub_3608D0(v171, "PA");
  sub_3608D0(v172, "PE");
  sub_3608D0(&v173, "PT");
  sub_3608D0(v175, "PY");
  sub_3608D0(v177, "RO");
  sub_3608D0(v178, "SE");
  sub_3608D0(&v179, "SM");
  sub_3608D0(v181, "SR");
  sub_3608D0(v183, "SV");
  sub_3608D0(&v184, "TR");
  sub_3608D0(&v185, "UY");
  sub_3608D0(v187, "VA");
  sub_3608D0(v189, "VE");
  *(a1 + 840) = 0;
  *(a1 + 848) = 0;
  *(a1 + 856) = 0;
  sub_68678C(a1 + 840, v122, &v190, 0x2CuLL);
  v38 = 132;
  do
  {
    if (SHIBYTE(v122[v38 - 1]) < 0)
    {
      operator delete(*&v121[v38 * 8 + 24]);
    }

    v38 -= 3;
  }

  while (v38 * 8);
  *(a1 + 864) = 35;
  *(a1 + 868) = 1;
  *(a1 + 872) = 1;
  *(a1 + 876) = 1;
  sub_1A5CBBC(v122, "zh", "位置");
  sub_1A5CC10(&v126, "en", "Location");
  *(a1 + 880) = 0;
  *(a1 + 888) = 0;
  *(a1 + 896) = 0;
  sub_1A5CC64((a1 + 880), v122, &v129[1], 2uLL);
  for (i14 = 0; i14 != -12; i14 -= 6)
  {
    v40 = &v122[i14];
    if (SHIBYTE(v129[i14]) < 0)
    {
      operator delete(v40[9]);
    }

    if (*(v40 + 71) < 0)
    {
      operator delete(v40[6]);
    }
  }

  sub_3608D0(v122, "SK");
  sub_3608D0(&v124, "CZ");
  sub_3608D0(&v126, "SA");
  *(a1 + 904) = 0;
  *(a1 + 912) = 0;
  *(a1 + 920) = 0;
  sub_68678C(a1 + 904, v122, &v128, 3uLL);
  for (i15 = 0; i15 != -72; i15 -= 24)
  {
    if (*(&v127 + i15 + 7) < 0)
    {
      operator delete(*(&v126 + i15));
    }
  }

  sub_3608D0(v122, "a");
  sub_3608D0(&v124, "asda");
  sub_3608D0(&v126, "das");
  sub_3608D0(&v128, "de");
  sub_3608D0(&v129[1], "del");
  sub_3608D0(&v130, "des");
  sub_3608D0(v131, "do");
  sub_3608D0(&v133, "dos");
  sub_3608D0(&v134[1], "dueli");
  sub_3608D0(&v135, "ill");
  sub_3608D0(v137, "la");
  sub_3608D0(&v139, "le");
  sub_3608D0(v141, "o");
  sub_3608D0(&v142, "of");
  sub_3608D0(v144, "os");
  sub_3608D0(v146, "the");
  sub_1A5C918(a1 + 928, v122, 16);
  v42 = 48;
  do
  {
    if (SHIBYTE(v122[v42 - 1]) < 0)
    {
      operator delete(*&v121[v42 * 8 + 24]);
    }

    v42 -= 3;
  }

  while (v42 * 8);
  sub_3608D0(v122, "block");
  sub_3608D0(&v124, "blk");
  sub_1A5C918(a1 + 952, v122, 2);
  for (i16 = 0; i16 != -6; i16 -= 3)
  {
    if (SHIBYTE(v125[i16 + 1]) < 0)
    {
      operator delete(v125[i16 - 1]);
    }
  }

  *(a1 + 976) = 0;
  *v122 = xmmword_23684F0;
  *(a1 + 984) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 992) = 0;
  sub_1A5CCEC((a1 + 984), v122, &v123, 2uLL);
  sub_3608D0(v122, "JP");
  sub_3608D0(&v124, "TW");
  sub_3608D0(&v126, "HK");
  sub_3608D0(&v128, "MO");
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1024) = 0;
  sub_68678C(a1 + 1008, v122, &v129[1], 4uLL);
  for (i17 = 0; i17 != -12; i17 -= 3)
  {
    if (SHIBYTE(v129[i17]) < 0)
    {
      operator delete(v129[i17 - 2]);
    }
  }

  sub_3608D0(v122, "JP");
  sub_3608D0(&v124, "VN");
  *(a1 + 1032) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  sub_68678C(a1 + 1032, v122, &v126, 2uLL);
  for (i18 = 0; i18 != -6; i18 -= 3)
  {
    if (SHIBYTE(v125[i18 + 1]) < 0)
    {
      operator delete(v125[i18 - 1]);
    }
  }

  *(a1 + 1056) = 1;
  *(a1 + 1064) = 0x4024000000000000;
  *(a1 + 1072) = xmmword_2368500;
  *(a1 + 1088) = 1000000;
  sub_3608D0(v122, "JP");
  sub_23898(a1 + 1096, v122, 1);
  if (SHIBYTE(v123) < 0)
  {
    operator delete(v122[0]);
  }

  *(a1 + 1136) = 0x64000003E8;
  *(a1 + 1144) = 0x3FE0000000000000;
  *(a1 + 1152) = 1;
  sub_3608D0(v122, "NG");
  sub_1A5C918(a1 + 1160, v122, 1);
  if (SHIBYTE(v123) < 0)
  {
    operator delete(v122[0]);
  }

  *(a1 + 1184) = 1;
  return a1;
}

void sub_1A5AF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, unint64_t a19, unint64_t a20, unint64_t a21, unint64_t a22)
{
  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  sub_23D9C(v22 + 1096);
  STACK[0x510] = v29;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = v28;
  sub_195E3E8(&STACK[0x510]);
  v30 = *v27;
  if (*v27)
  {
    *(v22 + 992) = v30;
    operator delete(v30);
  }

  sub_7E724(v22 + 952, *(v22 + 960));
  sub_7E724(v22 + 928, *(v22 + 936));
  STACK[0x510] = v26;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = v25;
  sub_1965604(&STACK[0x510]);
  STACK[0x510] = v24;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = v23;
  sub_1964E4C(&STACK[0x510]);
  STACK[0x510] = a11;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = a17;
  sub_1964E4C(&STACK[0x510]);
  STACK[0x510] = a18;
  sub_1964E4C(&STACK[0x510]);
  sub_19653BC((v22 + 656));
  STACK[0x510] = a19;
  sub_1964E4C(&STACK[0x510]);
  sub_7E724(v22 + 536, *(v22 + 544));
  sub_7E724(v22 + 512, *(v22 + 520));
  sub_7E724(v22 + 488, *(v22 + 496));
  sub_7E724(v22 + 464, *(v22 + 472));
  STACK[0x510] = a20;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = a21;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = a22;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = a12;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = v22 + 288;
  sub_1964924(&STACK[0x510]);
  STACK[0x510] = a13;
  sub_19646F0(&STACK[0x510]);
  STACK[0x510] = a14;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = a15;
  sub_195E3E8(&STACK[0x510]);
  STACK[0x510] = a16;
  sub_195E3E8(&STACK[0x510]);
  _Unwind_Resume(a1);
}

void sub_1A5C8A4()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x510])
    {
      JUMPOUT(0x1A5C89CLL);
    }
  }
}

uint64_t sub_1A5C8CC(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_195E3E8(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1A5C918(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_1964A88(a1, v4, a2, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1A5C99C(uint64_t a1, __int128 *a2, __int128 **a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_353184(a1 + 24, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_1A5CA18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1A5CA34(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1964C44(result, a4);
  }

  return result;
}

void sub_1A5CA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1964E4C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1A5CABC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_1964D70(a4, v6);
      v6 += 3;
      a4 += 48;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1A5CB1C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    do
    {
      sub_1964E04(v4);
      v4 -= 48;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5CB44(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_1965038(a1, a2, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

void *sub_1A5CBBC(void *a1, char *a2, char *a3)
{
  v5 = sub_3608D0(a1, a2);
  sub_3608D0(v5 + 3, a3);
  return a1;
}

void sub_1A5CBF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1A5CC10(void *a1, char *a2, char *a3)
{
  v5 = sub_3608D0(a1, a2);
  sub_3608D0(v5 + 3, a3);
  return a1;
}

void sub_1A5CC48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1A5CC64(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_19654CC(result, a4);
  }

  return result;
}

void sub_1A5CCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1965604(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1A5CCEC(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1963264(result, a4);
  }

  return result;
}

void sub_1A5CD44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5CDF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1A5CE3C(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  memset(v29, 0, sizeof(v29));
  sub_1964BBC(v29, *(a3 + 728), *(a3 + 736), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 736) - *(a3 + 728)) >> 4));
  sub_1A5D1AC(v29, a2, &v30);
  v27 = v29;
  sub_1964E4C(&v27);
  v7 = v30;
  v8 = v31;
  v9 = *(a1 + 23);
  if (0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3) < 2)
  {
    if (v9 < 0)
    {
      sub_325C(&v19, *a1, *(a1 + 1));
    }

    else
    {
      v19 = *a1;
      v20 = *(a1 + 2);
    }

    sub_3608D0(&v17, &unk_23686D4);
    sub_3608D0(&__p, &unk_23686D4);
    sub_1A22510(&v19, 0, &v27);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (SHIBYTE(v20) < 0)
    {
      v11 = &v19;
LABEL_28:
      operator delete(*v11);
    }
  }

  else
  {
    if (v9 < 0)
    {
      sub_325C(&v25, *a1, *(a1 + 1));
      v7 = v30;
      v8 = v31;
    }

    else
    {
      v25 = *a1;
      v26 = *(a1 + 2);
    }

    if (v8 == v7)
    {
      sub_6FAB4();
    }

    if (*(v7 + 23) < 0)
    {
      sub_325C(v23, *v7, *(v7 + 1));
      v7 = v30;
      v8 = v31;
    }

    else
    {
      v10 = *v7;
      v24 = *(v7 + 2);
      *v23 = v10;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3) <= 1)
    {
      sub_6FAB4();
    }

    if (*(v7 + 47) < 0)
    {
      sub_325C(v21, *(v7 + 3), *(v7 + 4));
    }

    else
    {
      *v21 = *(v7 + 24);
      v22 = *(v7 + 5);
    }

    sub_1A22510(&v25, 0, &v27);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      v11 = &v25;
      goto LABEL_28;
    }
  }

  v12 = (*(*v27 + 3))(v27);
  v13 = v28;
  *a4 = v27;
  *(a4 + 8) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v28;
    *(a4 + 16) = v12;
    if (v14)
    {
      sub_1220A18(v14);
    }
  }

  else
  {
    *(a4 + 16) = v12;
  }

  v27 = &v30;
  sub_195E3E8(&v27);
}

void sub_1A5D0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  *(v47 - 112) = v47 - 72;
  sub_195E3E8((v47 - 112));
  _Unwind_Resume(a1);
}

void sub_1A5D198()
{
  *(v1 - 112) = v0;
  sub_1964E4C((v1 - 112));
  JUMPOUT(0x1A5D190);
}

void sub_1A5D1AC(__int128 **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_18:
    sub_3608D0(__p, &unk_23686D4);
    sub_3608D0(&v16, &unk_23686D4);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_68678C(a3, __p, &v19, 2uLL);
    for (i = 0; i != -48; i -= 24)
    {
      if (*(&v18 + i) < 0)
      {
        operator delete(*(&v16 + i));
      }
    }
  }

  else
  {
    while (1)
    {
      sub_1964D70(__p, v4);
      v7 = *(a2 + 23);
      if (v7 >= 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = *(a2 + 8);
      }

      v9 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v9 = __p[1];
      }

      if (v8 == v9)
      {
        v10 = v7 >= 0 ? a2 : *a2;
        v11 = (v15 & 0x80u) == 0 ? __p : __p[0];
        if (!memcmp(v10, v11, v8))
        {
          break;
        }
      }

      v13 = &v16;
      sub_195E3E8(&v13);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v4 += 3;
      if (v4 == v5)
      {
        goto LABEL_18;
      }
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_353184(a3, v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3));
    v13 = &v16;
    sub_195E3E8(&v13);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1A5D454(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1A5D4A0(void x0_0, uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v6[0] = v4;
  v6[1] = v3;
  v5[0] = "ranker_pw_";
  v5[1] = 10;
  if (sub_1CF6DDC(v6, v5))
  {
    sub_1A5D624();
  }

  sub_1A5D788();
}

void sub_1A5D600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1220A18(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1A5D690(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2722328;
  sub_1D02CF0((a1 + 3), a2);
  return a1;
}

void sub_1A5D70C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2722328;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1A5D7F4(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2722378;
  sub_1DD3B94((a1 + 3), a2);
  return a1;
}

void sub_1A5D870(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2722378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1A5DA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1220A18(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5DA48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1A5DB00(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2722458;
  sub_1A5DBDC((a1 + 3), a2);
  return a1;
}

void sub_1A5DB7C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2722458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1A5DBDC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  sub_21A64A4(a1, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A5DC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5DC6C(void *a1)
{
  *a1 = off_2728FC0;
  v2 = a1[29];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return sub_1A5DCC8((a1 + 2));
}

uint64_t sub_1A5DCC8(uint64_t a1)
{
  sub_1A5DD54(a1 + 184, *(a1 + 192));
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    sub_1220A18(v2);
  }

  std::locale::~locale((a1 + 48));
  sub_1962CE0(a1 + 24, *(a1 + 32));
  sub_196318C(a1, *(a1 + 8));
  return a1;
}

void sub_1A5DD54(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1A5DD54(a1, *a2);
    sub_1A5DD54(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t sub_1A5DDB8(uint64_t a1)
{
  sub_1A5F70C(a1 + 136);
  sub_1A5EE3C(a1 + 104);
  std::mutex::~mutex((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1220A18(v2);
  }

  sub_1A5DE0C(a1, *(a1 + 8));
  return a1;
}

void sub_1A5DE0C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1A5DE0C(a1, *a2);
    sub_1A5DE0C(a1, *(a2 + 1));
    if (a2[96] == 1)
    {
      v4 = *(a2 + 11);
      if (v4)
      {
        sub_1220A18(v4);
      }
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_1A5DE98(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      sub_1220A18(v2);
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1A5DEE4(uint64_t a1)
{
  sub_1A5F0BC(a1 + 136);
  sub_1A5EE3C(a1 + 104);
  std::mutex::~mutex((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1220A18(v2);
  }

  sub_1A5DE0C(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_1A5DF38(uint64_t a1)
{
  sub_1A5ECC0(a1 + 136);
  sub_1A5EE3C(a1 + 104);
  std::mutex::~mutex((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1220A18(v2);
  }

  sub_1A5DE0C(a1, *(a1 + 8));
  return a1;
}

void sub_1A5DF8C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_18774D8(v4 - 6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1A5E010(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1A5E064(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1A5E064(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 48;
    do
    {
      sub_11BD8(v4);
      v6 = (v4 - 24);
      sub_19A240C(&v6);
      if (*(v4 - 33) < 0)
      {
        operator delete(*(v4 - 56));
      }

      if (*(v4 - 65) < 0)
      {
        operator delete(*(v4 - 88));
      }

      v5 = v4 - 88;
      v4 -= 136;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

void sub_1A5E0F0(void ***a1)
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
        v4 -= 792;
        sub_19D4C34(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1A5E174(void ***a1)
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
        v6 = v4 - 96;
        sub_1A5E1FC((v4 - 88));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1A5E1FC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 64);
  if (v2 != -1)
  {
    result = (off_27224A8[v2])(&v3, result);
  }

  *(v1 + 64) = -1;
  return result;
}

uint64_t sub_1A5E2CC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56) == 1)
  {
    return sub_11BD8(a2 + 16);
  }

  return result;
}

uint64_t sub_1A5E2E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *sub_1A5E37C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1962510(result, a4);
  }

  return result;
}

void sub_1A5E3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1962638(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1A5E404(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_16E5A88(a4, *v6++);
      a4 += 96;
      v7 -= 96;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1A5E464(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 96;
    do
    {
      v4 = sub_16E5B34(v4) - 96;
      v2 += 96;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5E488(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    v2 = *(a2 + 8);
    *result = *a2;
    *(result + 8) = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    *(result + 16) = 1;
  }

  v3 = *(a2 + 32);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1A5E4D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t *a8, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a1 = a2;
  sub_1963D78(a1 + 8, a3);
  *(a1 + 1200) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  sub_1965774(a1 + 1216, a5);
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 1065353216;
  sub_1965C4C(a1 + 1296, a6);
  *(a1 + 1480) = 0;
  *(a1 + 1464) = 0u;
  sub_1962488((a1 + 1464), *a8, a8[1], 0xAAAAAAAAAAAAAAABLL * ((a8[1] - *a8) >> 5));
  v20 = *a10;
  v21 = a10[1];
  *(a1 + 1520) = *(a10 + 8);
  *(a1 + 1504) = v21;
  *(a1 + 1488) = v20;
  *(a1 + 1528) = a7;
  *(a1 + 1536) = a9;
  *(a1 + 1544) = 0;
  *(a1 + 1560) = 0;
  if (*(a11 + 16) == 1)
  {
    v22 = *(a11 + 8);
    *(a1 + 1544) = *a11;
    *(a1 + 1552) = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1560) = 1;
  }

  v23 = *(a11 + 32);
  *(a1 + 1568) = *(a11 + 24);
  *(a1 + 1576) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1584) = 0;
  *(a1 + 1600) = 0;
  if (*(a12 + 16) == 1)
  {
    v24 = *(a12 + 8);
    *(a1 + 1584) = *a12;
    *(a1 + 1592) = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1600) = 1;
  }

  v25 = *(a12 + 32);
  *(a1 + 1608) = *(a12 + 24);
  *(a1 + 1616) = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1624) = 0;
  *(a1 + 1640) = 0;
  if (*(a13 + 16) == 1)
  {
    v26 = *(a13 + 8);
    *(a1 + 1624) = *a13;
    *(a1 + 1632) = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1640) = 1;
  }

  v27 = *(a13 + 32);
  *(a1 + 1648) = *(a13 + 24);
  *(a1 + 1656) = v27;
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1680) = 0;
  *(a1 + 1664) = 0u;
  *(a1 + 1688) = *(a3 + 828);
  return a1;
}

void sub_1A5E6D4(_Unwind_Exception *a1)
{
  sub_1965E30(v1 + 1296);
  sub_1965BCC(v2);
  sub_1965BCC(v1 + 1216);
  v4 = *(v1 + 1208);
  if (v4)
  {
    sub_1220A18(v4);
  }

  sub_1965ECC(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_1A5E71C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    if (*(a1 + 16))
    {
      v4 = *a2;
      v3 = a2[1];
      if (v3)
      {
        atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
      }

      v5 = *(a1 + 8);
      *a1 = v4;
      *(a1 + 8) = v3;
      if (v5)
      {

        sub_1220A18(v5);
      }
    }
  }

  else if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      sub_1220A18(v6);
    }

    *(a1 + 16) = 0;
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 16) = 1;
  }
}

_BYTE *sub_1A5E7C4(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1192] = 0;
  if (*(a2 + 1192) == 1)
  {
    sub_1963D78(a1, a2);
    a1[1192] = 1;
  }

  return a1;
}

void sub_1A5E80C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 1192) == 1)
  {
    sub_1965ECC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5E82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18FA5D4(a1, a2);
  sub_17915F4(v4 + 224, a2 + 224);
  *(a1 + 296) = *(a2 + 296);
  sub_1A5E488(a1 + 304, a2 + 304);
  sub_1A5E488(a1 + 344, a2 + 344);
  sub_1A5E488(a1 + 384, a2 + 384);
  return a1;
}

void sub_1A5E890(_Unwind_Exception *a1)
{
  sub_1A5587C((v1 + 43));
  sub_1A5587C((v1 + 38));
  sub_17916A0((v1 + 28));
  sub_18FA778(v1);
  _Unwind_Resume(a1);
}

void *sub_1A5E8D4(uint64_t a1)
{
  v2 = *(a1 + 416);
  if (v2)
  {
    sub_1220A18(v2);
  }

  if (*(a1 + 400) == 1)
  {
    v3 = *(a1 + 392);
    if (v3)
    {
      sub_1220A18(v3);
    }
  }

  v4 = *(a1 + 376);
  if (v4)
  {
    sub_1220A18(v4);
  }

  if (*(a1 + 360) == 1)
  {
    v5 = *(a1 + 352);
    if (v5)
    {
      sub_1220A18(v5);
    }
  }

  v6 = *(a1 + 336);
  if (v6)
  {
    sub_1220A18(v6);
  }

  if (*(a1 + 320) == 1)
  {
    v7 = *(a1 + 312);
    if (v7)
    {
      sub_1220A18(v7);
    }
  }

  sub_17916A0(a1 + 224);

  return sub_18FA778(a1);
}

uint64_t sub_1A5E97C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5E9FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5EA7C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1A5EB68(void *a1, unint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_27224D8;
  sub_1A5EC4C((a1 + 3), a2);
  return a1;
}

void sub_1A5EBE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_27224D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1A5EC38(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_1220A18(v1);
  }
}

__n128 *sub_1A5EC4C(__n128 *a1, unint64_t *a2)
{
  v3 = a2[1];
  v5.n128_u64[0] = *a2;
  v5.n128_u64[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_2AB134(a1, &v5);
  if (v5.n128_u64[1])
  {
    sub_1220A18(v5.n128_u64[1]);
  }

  return a1;
}

void sub_1A5ECA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1220A18(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A5ECC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5EDB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2722528;
  a2[1] = v2;
  return result;
}

uint64_t sub_1A5EDF0(uint64_t a1, uint64_t a2)
{
  if (sub_197E0F8(a2, &off_27225A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A5EE3C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5EEBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v6 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 850045863;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  sub_1A5EF8C(a1 + 104, a3);
  sub_1A5F024(a1 + 136, a4);
  return a1;
}

void sub_1A5EF50(_Unwind_Exception *a1)
{
  sub_1A5EE3C(&v2[1]);
  std::mutex::~mutex(v2);
  v4 = *(v1 + 32);
  if (v4)
  {
    sub_1220A18(v4);
  }

  sub_1A5DE0C(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1A5EF8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1A5F024(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1A5F0BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5F13C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v6 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 850045863;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  sub_1A5EF8C(a1 + 104, a3);
  sub_1A5F20C(a1 + 136, a4);
  return a1;
}

void sub_1A5F1D0(_Unwind_Exception *a1)
{
  sub_1A5EE3C(&v2[1]);
  std::mutex::~mutex(v2);
  v4 = *(v1 + 32);
  if (v4)
  {
    sub_1220A18(v4);
  }

  sub_1A5DE0C(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1A5F20C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1A5F2A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5F324(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  if (*(a2 + 24))
  {
    operator new();
  }

  return a1;
}

void *sub_1A5F3A4(void *a1)
{
  *a1 = off_27225D8;
  sub_1A5F2A4((a1 + 1));
  return a1;
}

void sub_1A5F3E8(void *a1)
{
  *a1 = off_27225D8;
  sub_1A5F2A4((a1 + 1));

  operator delete();
}

void sub_1A5F4F8(void *a1)
{
  sub_1A5F2A4(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1A5F53C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A5F588(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_1A5F608(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

double sub_1A5F6A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2B7420();
  }

  (*(*v2 + 48))(&v5);
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1A5F70C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A5F78C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v6 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 850045863;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  sub_1A5EF8C(a1 + 104, a3);
  sub_1A5F85C(a1 + 136, a4);
  return a1;
}

void sub_1A5F820(_Unwind_Exception *a1)
{
  sub_1A5EE3C(&v2[1]);
  std::mutex::~mutex(v2);
  v4 = *(v1 + 32);
  if (v4)
  {
    sub_1220A18(v4);
  }

  sub_1A5DE0C(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1A5F85C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1A5F8F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1A5F98C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1A5FA0C(void *a1)
{
  *a1 = off_27226B0;
  v2 = a1[6];
  if (v2)
  {
    sub_1220A18(v2);
  }

  sub_1A5F98C((a1 + 1));
  return a1;
}

void sub_1A5FA60(void *a1)
{
  *a1 = off_27226B0;
  v2 = a1[6];
  if (v2)
  {
    sub_1220A18(v2);
  }

  sub_1A5F98C((a1 + 1));

  operator delete();
}

uint64_t sub_1A5FB64(uint64_t a1, void *a2)
{
  *a2 = off_27226B0;
  result = sub_1A5F8F4((a2 + 1), a1 + 8);
  v5 = *(a1 + 48);
  a2[5] = *(a1 + 40);
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1A5FBD0(void *a1)
{
  sub_1A54218(a1 + 8);

  operator delete(a1);
}

void sub_1A5FC0C(uint64_t a1, __int16 *a2)
{
  LOWORD(v4) = *a2;
  v5 = *(a2 + 4);
  v6 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v7 = *(a2 + 2);
  v8 = *(a2 + 6);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v9 = *(a2 + 28);
  v10 = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v11 = *(a2 + 5);
  v12 = *(a2 + 12);
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  sub_1B51520((a1 + 40), &v4, v13);
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_2B7420();
  }

  (*(*v3 + 48))(v3, v13);
  sub_18FDA18(v13);
  v13[0] = &v11;
  sub_1A5E010(v13);
  v13[0] = &v9;
  sub_1A5E0F0(v13);
  v13[0] = &v7;
  sub_195E3E8(v13);
  v13[0] = &v5;
  sub_195E3E8(v13);
}

void sub_1A5FD38(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    nullsub_1();
    if (os_log_type_enabled(*(v52 + 1528), OS_LOG_TYPE_ERROR))
    {
      sub_1A63DE4();
    }
  }

  else
  {
    nullsub_1();
    if (os_log_type_enabled(*(v53 + 1528), OS_LOG_TYPE_ERROR))
    {
      sub_1A63DB0();
    }
  }

  sub_19723A0(1, &a23);
  sub_1A54AD4(v50 + 8);
  sub_18FDA18(&a23);
  __cxa_end_catch();
  JUMPOUT(0x1A5FCD8);
}

void sub_1A5FE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_18FDA18(va1);
  __cxa_end_catch();
  sub_1A548A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1A5FE5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A5FEA8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1A5FFAC(void *a1, unint64_t *a2, dispatch_object_t *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2722740;
  sub_1A60094((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void sub_1A60034(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2722740;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1A60094(uint64_t a1, unint64_t a2, dispatch_object_t object, uint64_t a4)
{
  *a1 = object;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  dispatch_retain(object);
  dispatch_retain(*(a1 + 8));
  sub_1A60114(v6, a2);
  return a1;
}

void sub_1A600FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A5E174(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1A60114(uint64_t *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      sub_1A601F0(result, a2);
    }

    sub_1794();
  }

  return result;
}

void sub_1A601DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A60428(va);
  _Unwind_Resume(a1);
}

void sub_1A601F0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1A60248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 80;
    v7 = a2;
    do
    {
      result = sub_1A602C8(v6 - 72, v7 + 8);
      v9 = *(v7 + 80);
      *(v6 + 8) = *(v7 + 88);
      *v6 = v9;
      v6 += 96;
      v7 += 96;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      result = sub_1A5E1FC(v5 + 8);
      v5 += 96;
    }
  }

  return result;
}

uint64_t sub_1A602C8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = -1;
  sub_1A60300(a1, a2);
  return a1;
}

uint64_t sub_1A60300(uint64_t a1, uint64_t a2)
{
  result = sub_1A5E1FC(a1);
  v5 = *(a2 + 64);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2722780[v5])(&v6, a2);
    *(a1 + 64) = v5;
  }

  return result;
}

__n128 sub_1A60364(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_1A6038C(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_1A603B4(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  return result;
}

_BYTE **sub_1A603DC(_BYTE **result, uint64_t a2)
{
  v2 = *result;
  *v2 = 0;
  v2[56] = 0;
  if (*(a2 + 56) == 1)
  {
    *v2 = *a2;
    result = sub_195FFEC((v2 + 16), (a2 + 16));
    v2[56] = 1;
  }

  return result;
}

uint64_t sub_1A60428(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    sub_1A5E1FC(i - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1A6047C(uint64_t a1)
{
  dispatch_release(*a1);
  dispatch_release(*(a1 + 8));
  v3 = (a1 + 24);
  sub_1A5E174(&v3);
  return a1;
}

void *sub_1A604C8(void *a1)
{
  *a1 = off_27227B0;
  v2 = a1[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return a1;
}

void sub_1A60514(void *a1)
{
  *a1 = off_27227B0;
  v1 = a1[2];
  if (v1)
  {
    sub_1220A18(v1);
  }

  operator delete();
}

uint64_t sub_1A605EC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_27227B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1A60624(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1220A18(v1);
  }
}

void sub_1A60634(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  operator delete(__p);
}

uint64_t sub_1A6067C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1A606C8(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  v4 = *(a1 + 32);
  if (v4 >= *(a1 + 40))
  {
    v6 = sub_1A60764((a1 + 24), a2);
  }

  else
  {
    sub_1A608A4(v4 + 8, a2 + 8);
    v5 = *(a2 + 80);
    *(v4 + 88) = *(a2 + 88);
    *(v4 + 80) = v5;
    v6 = v4 + 96;
    *(a1 + 32) = v4 + 96;
  }

  *(a1 + 32) = v6;
  os_unfair_lock_unlock((a1 + 16));
  v7 = *a1;

  dispatch_group_leave(v7);
}

uint64_t sub_1A60764(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1A601F0(a1, v6);
  }

  v7 = 96 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  sub_1A608A4(v7 + 8, a2 + 8);
  v8 = *(a2 + 80);
  *(v7 + 88) = *(a2 + 88);
  *(v7 + 80) = v8;
  *&v17 = v17 + 96;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_1A60248(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1A60428(&v15);
  return v14;
}

void sub_1A60890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1A60428(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1A608A4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = -1;
  sub_1A608EC(a1, a2);
  return a1;
}

uint64_t sub_1A608EC(uint64_t a1, uint64_t a2)
{
  result = sub_1A5E1FC(a1);
  v5 = *(a2 + 64);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2722820[v5])(&v6, a2);
    *(a1 + 64) = v5;
  }

  return result;
}

uint64_t *sub_1A60950(uint64_t **a1, __int128 **a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_1961B64(v2, *a2, a2[1], 0xA3784A062B2E43DBLL * ((a2[1] - *a2) >> 3));
}

uint64_t *sub_1A60984(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_19E41E0(v2, *a2, a2[1], 0x7D6343EB1A1F58D1 * ((a2[1] - *a2) >> 4));
}

uint64_t *sub_1A609B8(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return sub_1A609EC(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
}

uint64_t *sub_1A609EC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1A60A74(result, a4);
  }

  return result;
}

void sub_1A60A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1A5DF8C(&a9);
  _Unwind_Resume(a1);
}

void sub_1A60A74(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_1A60AC0(a1, a2);
  }

  sub_1794();
}

void sub_1A60AC0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1A60B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_1877458(a4, v6);
      v6 += 48;
      a4 += 48;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1A60B78(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 48);
    do
    {
      v4 = sub_18774D8(v4) - 6;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1A60B9C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[56] = 0;
  if (*(a2 + 56) == 1)
  {
    *a1 = *a2;
    sub_195F64C((a1 + 16), a2 + 16);
    a1[56] = 1;
  }

  return a1;
}

void sub_1A60BEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    sub_11BD8(v1 + 16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A60C0C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_2B7420();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1A60C60(uint64_t a1, uint64_t a2)
{
  result = sub_1A60CE8(a1 + 32, a2 + 32);
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1A60CA8(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_1220A18(v2);
  }

  return sub_1A6127C(a1 + 32);
}

uint64_t sub_1A60CE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_1A60D80(void *a1)
{
  *a1 = off_2722890;
  sub_1A5F98C((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return a1;
}

void sub_1A60DD0(void *a1)
{
  *a1 = off_2722890;
  sub_1A5F98C((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_1220A18(v2);
  }

  operator delete();
}

void sub_1A60EC8(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    sub_1220A18(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1A60EE8(uint64_t a1, uint64_t a2)
{
  *a2 = off_2722890;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1A5F8F4(a2 + 32, a1 + 32);
}

void sub_1A60F54(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_1220A18(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A60F74(char *a1)
{
  sub_1A61230((a1 + 8));

  operator delete(a1);
}

void sub_1A60FB0(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 16);
  v5 = *(a1 + 8);
  v6 = *(v5 + 1768);
  nullsub_1();
  v8 = *(v7 + 1536);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, v8, "SearchService::Recall", "", v9, 2u);
  }

  sub_1A54910(v5, v4, a2, a1 + 32);
}

void sub_1A6106C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    nullsub_1();
    if (os_log_type_enabled(*(v11 + 1528), OS_LOG_TYPE_ERROR))
    {
      sub_1A63EA8();
    }
  }

  else
  {
    nullsub_1();
    if (os_log_type_enabled(*(v12 + 1528), OS_LOG_TYPE_ERROR))
    {
      sub_1A63E74();
    }
  }

  sub_19723A0(1, &a9);
  sub_1A54AD4(v9 + 32);
  sub_18FDA18(&a9);
  __cxa_end_catch();
  JUMPOUT(0x1A61050);
}

void sub_1A6111C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_18FDA18(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t sub_1A61164(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A611B0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_1A61230(uint64_t a1)
{
  sub_1A5F98C(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    sub_1220A18(v2);
  }
}

uint64_t sub_1A6127C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1A61370(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2722920;
  sub_1D3622C((a1 + 3), a2, a3);
  return a1;
}

void sub_1A613EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2722920;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1A6144C(uint64_t a1)
{
  v4 = (a1 + 2608);
  sub_1962638(&v4);
  if (*(a1 + 2600) == 1)
  {
    sub_16E5B34(a1 + 2504);
  }

  if (*(a1 + 2488) == 1)
  {
    sub_139A0E0(a1 + 2424);
  }

  sub_196318C(a1 + 2400, *(a1 + 2408));
  sub_16C9ED4(a1 + 2344);
  sub_18FA778((a1 + 2120));
  sub_191A17C((a1 + 1768));
  v2 = *(a1 + 1760);
  if (v2)
  {
    sub_1220A18(v2);
  }

  if (*(a1 + 1751) < 0)
  {
    operator delete(*(a1 + 1728));
  }

  return sub_196609C(a1);
}

uint64_t sub_1A61550(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_2722970;
  sub_1A61694((a1 + 24));
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  return a1;
}

void sub_1A615E8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2722970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1A6163C(uint64_t a1)
{
  v3 = (a1 + 64);
  sub_1A619EC(&v3);
  v3 = (a1 + 40);
  sub_1A61A70(&v3);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1220A18(v2);
  }
}

void sub_1A61694(void *a2@<X8>)
{
  v3 = dispatch_group_create();
  global_queue = dispatch_get_global_queue(0, 0);
  if (v3 && global_queue)
  {
    sub_1A61718();
  }

  if (v3)
  {
    dispatch_release(v3);
  }

  *a2 = 0;
  a2[1] = 0;
}

void *sub_1A6179C(void *a1, unint64_t *a2, dispatch_object_t *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_27229C0;
  sub_1A61884((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void sub_1A61824(std::__shared_weak_count *a1)
{
  a1->__vftable = off_27229C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1A61884(uint64_t a1, unint64_t a2, dispatch_object_t object, uint64_t a4)
{
  *a1 = object;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  dispatch_retain(object);
  dispatch_retain(*(a1 + 8));
  sub_1A61904(v6, a2);
  return a1;
}

void sub_1A618EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A3CCC4(va);
  _Unwind_Resume(a1);
}

void **sub_1A61904(void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_197FF6C(result, a2);
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_1A619A0(uint64_t a1)
{
  dispatch_release(*a1);
  dispatch_release(*(a1 + 8));
  v3 = (a1 + 24);
  sub_1A3CCC4(&v3);
  return a1;
}

void sub_1A619EC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_1A5E9FC(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1A61A70(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_1A5E97C(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1A61B64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2722A10;
  a2[1] = v2;
  return result;
}

void sub_1A61B90(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *a2 = 0uLL;
  v6 = *a3;
  v7 = v5;
  *a3 = 0uLL;
  v4(&v7, &v6, a4);
  if (*(&v6 + 1))
  {
    sub_1220A18(*(&v6 + 1));
  }

  if (*(&v7 + 1))
  {
    sub_1220A18(*(&v7 + 1));
  }
}

void sub_1A61BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1220A18(a10);
  }

  if (a12)
  {
    sub_1220A18(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A61C18(uint64_t a1, uint64_t a2)
{
  if (sub_197E0F8(a2, &off_2722A90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1A61C64(void *a1)
{
  *a1 = off_2722AC0;
  sub_1A5F98C((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return a1;
}

void sub_1A61CB4(void *a1)
{
  *a1 = off_2722AC0;
  sub_1A5F98C((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_1220A18(v2);
  }

  operator delete();
}

void sub_1A61DAC(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    sub_1220A18(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1A61DCC(uint64_t a1, uint64_t a2)
{
  *a2 = off_2722AC0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1A5F8F4(a2 + 32, a1 + 32);
}

void sub_1A61E38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_1220A18(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A61E58(void *a1)
{
  sub_1A61230(a1 + 8);

  operator delete(a1);
}

void sub_1A61E94(void *a1, uint64_t *a2)
{
  sub_195FFEC(v7, a2);
  v3 = a1[2];
  v4 = a1[1];
  sub_1965774(v8, v7);
  sub_1D36574(v3, v8);
  sub_1965BCC(v8);
  v6 = a1[2];
  v5 = a1[3];
  v9 = v4;
  v10 = v6;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1A5F8F4(v12, (a1 + 4));
  v12[7] = 0;
  operator new();
}

void sub_1A62004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    sub_1A626A4(v17 - 104);
    sub_1A5500C(v17 - 160);
    __cxa_begin_catch(exception_object);
    v20 = os_log_type_enabled(*(v16 + 1768), OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v20)
      {
        sub_1A63EA8();
      }
    }

    else if (v20)
    {
      sub_1A63E74();
    }

    sub_19723A0(1, &a15);
    sub_1A54AD4(v15 + 32);
    sub_18FDA18(&a15);
    __cxa_end_catch();
    JUMPOUT(0x1A61FC4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A62164(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1A621B0(void *a1)
{
  *a1 = off_2722B40;
  sub_1A5F98C((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return a1;
}

void sub_1A62200(void *a1)
{
  *a1 = off_2722B40;
  sub_1A5F98C((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_1220A18(v2);
  }

  operator delete();
}

void sub_1A622F8(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    sub_1220A18(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1A62318(uint64_t a1, uint64_t a2)
{
  *a2 = off_2722B40;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1A5F8F4(a2 + 32, a1 + 32);
}

void sub_1A62384(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_1220A18(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A623A4(void *a1)
{
  sub_1A61230(a1 + 8);

  operator delete(a1);
}

void sub_1A623E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v11[0] = *a2;
  v11[1] = v3;
  *a2 = 0;
  a2[1] = 0;
  v5 = (a1 + 16);
  v6 = *(a1 + 8);
  v7 = *(v6 + 1768);
  nullsub_1();
  v9 = *(v8 + 1536);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_END, v9, "SearchService::QuProcessing", "", buf, 2u);
  }

  v10 = *v5;
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1D3637C(v10, &v13);
  if (v14)
  {
    sub_1220A18(v14);
  }

  sub_1D36514(*v5, v11);
  sub_1A5F8F4(v15, a1 + 32);
  sub_1A54B1C(v6, v5, v15);
}

void sub_1A62524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    sub_1A5F98C(v13 - 104);
    __cxa_begin_catch(exception_object);
    v16 = os_log_type_enabled(*(v12 + 1768), OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v16)
      {
        sub_1A63EA8();
      }
    }

    else if (v16)
    {
      sub_1A63E74();
    }

    sub_19723A0(1, &a11);
    sub_1A54AD4(v11 + 32);
    sub_18FDA18(&a11);
    __cxa_end_catch();
    JUMPOUT(0x1A624E0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A62658(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A626A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1A62724(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1A627A4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  sub_1B0EBC4(v4, __p, &v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v5 = v9;
    *a3 = v8;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v9)
  {
    sub_1220A18(v9);
  }
}

void sub_1A62850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A6286C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_1A62B2C((a1 + 24), (a2 + 24));
  return a1;
}

uint64_t sub_1A628CC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
  }

  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  if (*(a3 + 16) == 1)
  {
    *(a1 + 24) = *a3;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a1 + 40) = 1;
  }

  return a1;
}

uint64_t *sub_1A62944(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_122356C(a1, &v6, a2);
  if (!result)
  {
    sub_1A629DC();
  }

  return result;
}

void sub_1A62A84(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1A62AA0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1A62AA0(uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    if (__p[96] == 1)
    {
      v3 = *(__p + 11);
      if (v3)
      {
        sub_1220A18(v3);
      }
    }

    if (__p[79] < 0)
    {
      operator delete(*(__p + 7));
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

__n128 sub_1A62B2C(__n128 *a1, __n128 *a2)
{
  if (a1[1].n128_u8[0] == a2[1].n128_u8[0])
  {
    if (a1[1].n128_u8[0])
    {
      result = *a2;
      *a2 = 0uLL;
      v4 = a1->n128_u64[1];
      *a1 = result;
      if (v4)
      {

        sub_1220A18(v4);
      }
    }
  }

  else if (a1[1].n128_u8[0])
  {
    v5 = a1->n128_u64[1];
    if (v5)
    {
      sub_1220A18(v5);
    }

    a1[1].n128_u8[0] = 0;
  }

  else
  {
    result = *a2;
    *a1 = *a2;
    *a2 = 0uLL;
    a1[1].n128_u8[0] = 1;
  }

  return result;
}

void sub_1A62BBC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  sub_1B0EBC4(v4, __p, &v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v5 = v9;
    *a3 = v8;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v9)
  {
    sub_1220A18(v9);
  }
}

void sub_1A62C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A62C84(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_1A62B2C((a1 + 24), (a2 + 24));
  return a1;
}

uint64_t *sub_1A62CE4(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_122356C(a1, &v6, a2);
  if (!result)
  {
    sub_1A62D7C();
  }

  return result;
}

void sub_1A62E24(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1A62AA0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1A62E40(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  sub_1B0EBC4(v4, __p, &v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v5 = v9;
    *a3 = v8;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v9)
  {
    sub_1220A18(v9);
  }
}

void sub_1A62EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A62F08(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_1A62B2C((a1 + 24), (a2 + 24));
  return a1;
}

uint64_t *sub_1A62F68(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_122356C(a1, &v6, a2);
  if (!result)
  {
    sub_1A63000();
  }

  return result;
}

void sub_1A630A8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1A62AA0(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1A63134(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2722BE0;
  a2[1] = v2;
  return result;
}

void sub_1A63160(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *a2 = 0uLL;
  v5 = *a3;
  v6 = v4;
  *a3 = 0uLL;
  v3(&v6, &v5);
  if (*(&v5 + 1))
  {
    sub_1220A18(*(&v5 + 1));
  }

  if (*(&v6 + 1))
  {
    sub_1220A18(*(&v6 + 1));
  }
}

void sub_1A631C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_1220A18(a10);
  }

  if (a12)
  {
    sub_1220A18(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A631E4(uint64_t a1, uint64_t a2)
{
  if (sub_197E0F8(a2, &off_2722C60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A63230(uint64_t a1)
{
  *a1 = off_2722C90;
  sub_1A5F98C(a1 + 1640);
  sub_1A5E8D4(a1 + 1216);
  if (*(a1 + 1208) == 1)
  {
    sub_1965ECC(a1 + 16);
  }

  return a1;
}

void sub_1A63294(uint64_t a1)
{
  *a1 = off_2722C90;
  sub_1A5F98C(a1 + 1640);
  sub_1A5E8D4(a1 + 1216);
  if (*(a1 + 1208) == 1)
  {
    sub_1965ECC(a1 + 16);
  }

  operator delete();
}

void sub_1A63398(_Unwind_Exception *a1)
{
  sub_1A5E8D4((v1 + 1216));
  if (v1[1208] == 1)
  {
    sub_1965ECC((v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1A633D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_2722C90;
  *(a2 + 8) = v4;
  sub_1A5E7C4((a2 + 16), a1 + 16);
  sub_1A5E82C(a2 + 1216, a1 + 1216);
  return sub_1A5F8F4(a2 + 1640, a1 + 1640);
}

void sub_1A63440(_Unwind_Exception *a1)
{
  sub_1A5E8D4(v1 + 1216);
  if (*(v1 + 1208) == 1)
  {
    sub_1965ECC(v1 + 16);
  }

  _Unwind_Resume(a1);
}

void *sub_1A63470(uint64_t a1)
{
  sub_1A5F98C(a1 + 1640);
  result = sub_1A5E8D4(a1 + 1216);
  if (*(a1 + 1208) == 1)
  {

    return sub_1965ECC(a1 + 16);
  }

  return result;
}

void sub_1A634CC(_BYTE *a1)
{
  sub_1A5F98C((a1 + 1640));
  sub_1A5E8D4((a1 + 1216));
  if (a1[1208] == 1)
  {
    sub_1965ECC((a1 + 16));
  }

  operator delete(a1);
}

uint64_t sub_1A63524(uint64_t a1, uint64_t *a2)
{
  sub_195FFEC(v6, a2);
  v3 = *(a1 + 8);
  v4 = *(v3 + 1768);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Received search capabilities request", buf, 2u);
  }

  if (*(a1 + 1208) == 1)
  {
    sub_1963D78(buf, (a1 + 16));
  }

  else
  {
    sub_1AF5CEC(v6, buf);
  }

  sub_1A5F8F4(v8, a1 + 1640);
  sub_2184C24(v3 + 1784, a1 + 1216, buf, v6, v8);
  sub_1A5F98C(v8);
  sub_1965ECC(buf);
  return sub_1965BCC(v6);
}

void sub_1A63634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    v19 = v16;
    sub_1A5F98C(v17 - 88);
    sub_1965ECC(&a15);
    __cxa_begin_catch(exception_object);
    v21 = os_log_type_enabled(*(v19 + 1768), OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v21)
      {
        sub_1A63EA8();
      }
    }

    else if (v21)
    {
      sub_1A63E74();
    }

    sub_19723A0(1, &a15);
    sub_1A54AD4(v15 + 1640);
    sub_18FDA18(&a15);
    __cxa_end_catch();
    JUMPOUT(0x1A635F8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A6376C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A637B8(uint64_t a1)
{
  *a1 = off_2722D10;
  sub_1A5F98C(a1 + 1640);
  sub_1A5E8D4(a1 + 1216);
  if (*(a1 + 1208) == 1)
  {
    sub_1965ECC(a1 + 16);
  }

  return a1;
}

void sub_1A6381C(uint64_t a1)
{
  *a1 = off_2722D10;
  sub_1A5F98C(a1 + 1640);
  sub_1A5E8D4(a1 + 1216);
  if (*(a1 + 1208) == 1)
  {
    sub_1965ECC(a1 + 16);
  }

  operator delete();
}

void sub_1A63920(_Unwind_Exception *a1)
{
  sub_1A5E8D4((v1 + 1216));
  if (v1[1208] == 1)
  {
    sub_1965ECC((v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1A63960(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_2722D10;
  *(a2 + 8) = v4;
  sub_1A5E7C4((a2 + 16), a1 + 16);
  sub_1A5E82C(a2 + 1216, a1 + 1216);
  return sub_1A5F8F4(a2 + 1640, a1 + 1640);
}

void sub_1A639C8(_Unwind_Exception *a1)
{
  sub_1A5E8D4(v1 + 1216);
  if (*(v1 + 1208) == 1)
  {
    sub_1965ECC(v1 + 16);
  }

  _Unwind_Resume(a1);
}

void *sub_1A639F8(uint64_t a1)
{
  sub_1A5F98C(a1 + 1640);
  result = sub_1A5E8D4(a1 + 1216);
  if (*(a1 + 1208) == 1)
  {

    return sub_1965ECC(a1 + 16);
  }

  return result;
}

void sub_1A63A54(_BYTE *a1)
{
  sub_1A5F98C((a1 + 1640));
  sub_1A5E8D4((a1 + 1216));
  if (a1[1208] == 1)
  {
    sub_1965ECC((a1 + 16));
  }

  operator delete(a1);
}

void sub_1A63AAC(uint64_t a1, uint64_t *a2)
{
  sub_195FFEC(v4, a2);
  v3 = *(a1 + 8);
  if (*(a1 + 1208) == 1)
  {
    sub_1963D78(v5, (a1 + 16));
  }

  else
  {
    sub_1AF5CEC(v4, v5);
  }

  sub_1A55BEC(v3, (a1 + 1216), v5, v4);
  sub_1A55490(a1 + 1216, v3, v3[221], v5, v4);
}

void sub_1A63BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17)
{
  if (a2)
  {
    sub_1A5F98C(v19 - 88);
    if (a16)
    {
      sub_1220A18(a16);
    }

    sub_1965ECC(&a17);
    __cxa_begin_catch(exception_object);
    v22 = os_log_type_enabled(*(v18 + 1768), OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v22)
      {
        sub_1A63EA8();
      }
    }

    else if (v22)
    {
      sub_1A63E74();
    }

    sub_19723A0(1, &a17);
    sub_1A54AD4(v17 + 1640);
    sub_18FDA18(&a17);
    __cxa_end_catch();
    JUMPOUT(0x1A63B78);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A63D00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1A63D5C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1A63D7C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_1A63DE4()
{
  sub_1A63D4C();
  (*(v0 + 16))();
  sub_1A63DA4();
  sub_1A63D5C(&dword_0, v1, v2, "Exception thrown while composing SAR Response - .%s ", v3, v4, v5, v6);
}

void sub_1A63EA8()
{
  sub_1A63D4C();
  (*(v0 + 16))();
  sub_1A63DA4();
  sub_1A63D5C(&dword_0, v1, v2, "Exception thrown while processing request - .%s ", v3, v4, v5, v6);
}

void sub_1A63F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  sub_1966280(qword_27ED5C8, v1255, 249);
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