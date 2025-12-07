void sub_2714DC240(void *a1, uint64_t a2, __int128 *a3)
{
  LOBYTE(__p) = 0;
  v4 = 0;
  sub_27153F59C(&v5, a2, &__p);
}

void sub_2714DC3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(*v9 + 8))(v9, a2, a3, a4, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2714DC410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2713D8648(v10);
  MEMORY[0x2743BF050](v9, 0x10B3C406BFE9A7DLL);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2714DC444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2714DC458(void *a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 1)
  {

    sub_2714DC58C(a1, a2, a3);
  }

  else
  {
    v8 = 0;
    sub_27183FF6C(a1[6], &v8);
    *&v7 = (*(a1[2] + 32))(a1 + 2);
    *(&v7 + 1) = v8;
    sub_2713BF82C((a1 + 3), &v7);
    sub_2714DC58C(a1, a2, 2u);
    v5 = a1[4];
    v6 = *(v5 - 16) - (*(a1[2] + 32))(a1 + 2) + *(v5 - 8);
    if (v6)
    {
      (*(a1[2] + 40))(a1 + 2, v6);
    }

    a1[4] -= 16;
  }
}

void sub_2714DC58C(void *a1, uint64_t a2, unsigned int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a3 < 2)
  {
    sub_27139A124(&v25, (a2 + 64));
    LODWORD(v18) = 2;
    sub_27183FB7C(a1[6], &v18);
    sub_2714DCA00(a1, &v25 + 8, v18);
    sub_27139A288(&v25);
    if (v28)
    {
      sub_2711308D4();
    }

    v18 = &unk_28810A5B0;
    v19 = v27;
    LODWORD(v17) = 1;
    sub_27183FB7C(a1[6], &v17);
    (*(*v19 + 40))(v19, a1, v17);
    sub_2713A0DC8(&v18, &v25);
    sub_2713A0F0C(a2, &v18);
    v9 = __p;
    if (__p)
    {
      v10 = v24;
      v11 = __p;
      if (v24 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 16;
        }

        while (v10 != v9);
        v11 = __p;
      }

      v24 = v9;
      operator delete(v11);
    }

    if (v22 != -1)
    {
      (off_288132520[v22])(&v17, &v21);
    }

    v22 = -1;
    if (v20 < 0)
    {
      operator delete(v19);
    }

    v13 = v29;
    if (v29)
    {
      v14 = v30;
      v15 = v29;
      if (v30 != v29)
      {
        do
        {
          v16 = *(v14 - 1);
          if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v16->__on_zero_shared)(v16);
            std::__shared_weak_count::__release_weak(v16);
          }

          v14 -= 16;
        }

        while (v14 != v13);
        v15 = v29;
      }

      v30 = v13;
      operator delete(v15);
    }

    if (v28 != -1)
    {
      (off_288132520[v28])(&v18, &v27);
    }

    v28 = -1;
    if (v26 < 0)
    {
      operator delete(*(&v25 + 1));
    }
  }

  else
  {
    LODWORD(v25) = 2;
    sub_27183FB7C(a1[6], &v25);
    sub_2714DCA00(a1, a2 + 8, v25);
    sub_27139ABFC(a2);
    if (*(a2 + 56))
    {
      sub_2711308D4();
    }

    v5 = *(a2 + 40);
    v18 = &unk_28810A568;
    v19 = v5;
    LODWORD(v25) = 2;
    sub_27183FB7C(a1[6], &v25);
    v6 = v25;
    v17 = 0;
    sub_27183FF6C(a1[6], &v17);
    *&v25 = (*(a1[2] + 32))(a1 + 2);
    *(&v25 + 1) = v17;
    sub_2713BF82C((a1 + 3), &v25);
    (*(*v19 + 40))(v19, a1, v6);
    v7 = a1[4];
    v8 = *(v7 - 16) - (*(a1[2] + 32))(a1 + 2) + *(v7 - 8);
    if (v8)
    {
      (*(a1[2] + 40))(a1 + 2, v8);
    }

    a1[4] -= 16;
  }
}

void sub_2714DC9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DCA00(void *a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    HIBYTE(v12) = 0;
    LOBYTE(__p[0]) = 0;
    v13 = 0;
    sub_2718403E0(a1[6], __p);
    sub_27183FB7C(a1[6], &v13);
    if (SHIBYTE(v12) < 0)
    {
      sub_271127178(&v8, __p[0], __p[1]);
    }

    else
    {
      v8 = *__p;
      v9 = v12;
    }

    v7 = v13;
    v10 = v13;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
      v7 = v10;
    }

    *a2 = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = v7;
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v8 = 0;
    sub_27183FF6C(a1[6], &v8);
    __p[0] = (*(a1[2] + 32))(a1 + 2);
    __p[1] = v8;
    sub_2713BF82C((a1 + 3), __p);
    sub_2718403E0(a1[6], a2);
    sub_27183FB7C(a1[6], (a2 + 24));
    v5 = a1[4];
    v6 = *(v5 - 16) - (*(a1[2] + 32))(a1 + 2) + *(v5 - 8);
    if (v6)
    {
      (*(a1[2] + 40))(a1 + 2, v6);
    }

    a1[4] -= 16;
  }
}

void sub_2714DCBB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714DCBD8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 56);
  if (v6 != -1)
  {
    (off_288132520[v6])(&v8, a1 + 40);
  }

  *(a1 + 56) = -1;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_2714DCCEC(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *v1;
  v4 = v1[1];
  *(v3 + 128) = 1;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 130) = 0;
  *(v3 + 132) = 0;
  *__p = 2;
  sub_27183A9AC(v3, __p);
  v5 = *__p;
  if (*__p >= 2u)
  {
    *__p = 2;
    sub_27183A9AC(v3, __p);
    if (*__p > 1u)
    {
      ++*(v3 + 80);
      if (*(v3 + 128) == 1 && *(v3 + 131) == 1)
      {
        *(v3 + 132) = 1;
      }

      else
      {
        sub_27183D78C(v3, __p);
        if (*(v4 + 31) < 0)
        {
          operator delete(*(v4 + 8));
        }

        v20 = *__p;
        *(v4 + 24) = *&__p[16];
        *(v4 + 8) = v20;
        ++*(v3 + 104);
      }

      sub_27183A9AC(v3, (v4 + 32));
      while (1)
      {
        if ((*(v3 + 131) & 1) != 0 || (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) != 0)
        {
          goto LABEL_11;
        }

        sub_27183D78C(v3, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          if (*&__p[8] == 1 && *(v3 + 72) == **__p)
          {
LABEL_79:
            v21 = 0;
            if ((__p[23] & 0x80000000) != 0)
            {
              goto LABEL_82;
            }

            goto LABEL_70;
          }
        }

        else if (__p[23] == 1 && *(v3 + 72) == __p[0])
        {
          goto LABEL_79;
        }

        v21 = 1;
        if ((__p[23] & 0x80000000) != 0)
        {
LABEL_82:
          operator delete(*__p);
        }

LABEL_70:
        if ((v21 & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    sub_2714DD52C(v3, v4 + 8);
LABEL_11:
    sub_27139ABFC(v4);
    if (*(v4 + 56))
    {
      sub_2711308D4();
    }

    v6 = *(v4 + 40);
    v25[0] = &unk_28810A568;
    v25[1] = v6;
    *__p = 2;
    sub_27183A9AC(v3, __p);
    (*(*v25[1] + 40))(v25[1], v3, *__p);
    while (1)
    {
      if ((*(v3 + 131) & 1) != 0 || (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_53;
      }

      sub_27183D78C(v3, __p);
      if ((__p[23] & 0x80000000) != 0)
      {
        if (*&__p[8] == 1 && *(v3 + 72) == **__p)
        {
LABEL_22:
          v7 = 0;
          if ((__p[23] & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          goto LABEL_13;
        }
      }

      else if (__p[23] == 1 && *(v3 + 72) == __p[0])
      {
        goto LABEL_22;
      }

      v7 = 1;
      if ((__p[23] & 0x80000000) != 0)
      {
LABEL_25:
        operator delete(*__p);
      }

LABEL_13:
      if ((v7 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  sub_27139A124(__p, (v4 + 64));
  LODWORD(v25[0]) = 2;
  sub_27183A9AC(v3, v25);
  if (LODWORD(v25[0]) > 1)
  {
    ++*(v3 + 80);
    if (*(v3 + 128) == 1 && *(v3 + 131) == 1)
    {
      *(v3 + 132) = 1;
    }

    else
    {
      sub_27183D78C(v3, v25);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(*&__p[8]);
      }

      *&__p[8] = *v25;
      v33 = v26;
      ++*(v3 + 104);
    }

    sub_27183A9AC(v3, &v34);
    while (1)
    {
      if ((*(v3 + 131) & 1) != 0 || (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_27;
      }

      sub_27183D78C(v3, v25);
      if (SHIBYTE(v26) < 0)
      {
        if (v25[1] == 1 && *(v3 + 72) == *v25[0])
        {
LABEL_96:
          v22 = 0;
          if (SHIBYTE(v26) < 0)
          {
            goto LABEL_99;
          }

          goto LABEL_87;
        }
      }

      else if (SHIBYTE(v26) == 1 && *(v3 + 72) == LOBYTE(v25[0]))
      {
        goto LABEL_96;
      }

      v22 = 1;
      if (SHIBYTE(v26) < 0)
      {
LABEL_99:
        operator delete(v25[0]);
      }

LABEL_87:
      if ((v22 & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  sub_2714DD52C(v3, &__p[8]);
LABEL_27:
  sub_27139A288(__p);
  if (v36)
  {
    sub_2711308D4();
  }

  v25[0] = &unk_28810A5B0;
  v25[1] = v35;
  v24 = 1;
  sub_27183A9AC(v3, &v24);
  (*(*v25[1] + 40))(v25[1], v3, v24);
  sub_2713A0DC8(v25, __p);
  sub_2713A0F0C(v4, v25);
  v8 = v30;
  if (v30)
  {
    v9 = v31;
    v10 = v30;
    if (v31 != v30)
    {
      do
      {
        v11 = *(v9 - 1);
        if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }

        v9 -= 16;
      }

      while (v9 != v8);
      v10 = v30;
    }

    v31 = v8;
    operator delete(v10);
  }

  if (v29 != -1)
  {
    (off_288132520[v29])(&v24, &v28);
  }

  v29 = -1;
  if (v27 < 0)
  {
    operator delete(v25[1]);
  }

  v12 = v37;
  if (v37)
  {
    v13 = v38;
    v14 = v37;
    if (v38 != v37)
    {
      do
      {
        v15 = *(v13 - 1);
        if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        v13 -= 16;
      }

      while (v13 != v12);
      v14 = v37;
    }

    v38 = v12;
    operator delete(v14);
  }

  if (v36 != -1)
  {
    (off_288132520[v36])(v25, &v35);
  }

  v36 = -1;
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
LABEL_53:
    if (v5 < 2)
    {
      goto LABEL_54;
    }

    while (1)
    {
LABEL_103:
      if ((*(v3 + 131) & 1) != 0 || (*(*(v3 + 16) + *(**(v3 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_54;
      }

      sub_27183D78C(v3, __p);
      if ((__p[23] & 0x80000000) != 0)
      {
        if (*&__p[8] == 1 && *(v3 + 72) == **__p)
        {
LABEL_111:
          v23 = 0;
          if ((__p[23] & 0x80000000) != 0)
          {
            goto LABEL_114;
          }

          goto LABEL_102;
        }
      }

      else if (__p[23] == 1 && *(v3 + 72) == __p[0])
      {
        goto LABEL_111;
      }

      v23 = 1;
      if ((__p[23] & 0x80000000) != 0)
      {
LABEL_114:
        operator delete(*__p);
      }

LABEL_102:
      if ((v23 & 1) == 0)
      {
        goto LABEL_54;
      }
    }
  }

  operator delete(*&__p[8]);
  if (v5 >= 2)
  {
    goto LABEL_103;
  }

LABEL_54:
  result = sub_27183DB7C(v3);
  if (*(v2 + 128) == 1 && (*(v2 + 120) & 1) == 0 && *(v2 + 112) == 1)
  {
    if (*(v2 + 104) == 1)
    {
      if (*(v2 + 103) < 0)
      {
        v17 = result;
        operator delete(*(v2 + 80));
        result = v17;
      }

      if (*(v2 + 71) < 0)
      {
        v18 = result;
        operator delete(*(v2 + 48));
        result = v18;
      }
    }

    if (*(v2 + 40) == 1 && *(v2 + 39) < 0)
    {
      v19 = result;
      operator delete(*(v2 + 16));
      result = v19;
    }
  }

  *v2 = result;
  *(v2 + 120) = 1;
  *(v2 + 128) = 1;
  return result;
}

void sub_2714DD4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DD52C(uint64_t a1, uint64_t a2)
{
  HIBYTE(v10) = 0;
  LOBYTE(__p[0]) = 0;
  v11 = 0;
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
  }

  else
  {
    v3 = a1;
    sub_27183D78C(a1, &v6);
    a1 = v3;
    v4 = *(v3 + 104);
    *__p = v6;
    v10 = v7;
    *(v3 + 104) = v4 + 1;
  }

  sub_27183A9AC(a1, &v11);
  if (SHIBYTE(v10) < 0)
  {
    sub_271127178(&v6, __p[0], __p[1]);
  }

  else
  {
    v6 = *__p;
    v7 = v10;
  }

  v5 = v11;
  v8 = v11;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
    v5 = v8;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v5;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2714DD63C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DD65C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a3 < 2)
  {
    sub_27139A124(&v33, (a2 + 64));
    v10 = *(a1 + 104);
    *(a1 + 88) = "data_id";
    *(a1 + 96) = 7;
    if ((v10 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    sub_2714DDB4C(a1, &v34);
    sub_27139A288(&v33);
    if (v38)
    {
      sub_2711308D4();
    }

    v23 = &unk_28810A5B0;
    v24 = v37;
    v11 = *(a1 + 104);
    *(a1 + 88) = "data";
    *(a1 + 96) = 4;
    if ((v11 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v25 = *(a1 + 32);
    v12 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    *(a1 + 32) = v12;
    sub_27182D194(a1 + 40, &v25);
    sub_2717313F0(a1 + 64, (a1 + 112));
    *(a1 + 112) = 0;
    v25 = "version";
    v26 = 7;
    v27[0] = 1;
    *(a1 + 88) = "version";
    *(a1 + 96) = 7;
    *(a1 + 104) = 1;
    sub_27182EB6C(a1, v27);
    (*(*v24 + 40))(v24, a1, v27[0]);
    v13 = *(a1 + 48);
    *(a1 + 32) = *(v13 - 8);
    v14 = *(a1 + 72);
    *(a1 + 112) = *(v14 - 8);
    *(a1 + 48) = v13 - 8;
    *(a1 + 72) = v14 - 8;
    sub_2713A0DC8(&v25, &v33);
    sub_2713A0F0C(a2, &v25);
    v15 = __p;
    if (__p)
    {
      v16 = v32;
      v17 = __p;
      if (v32 != __p)
      {
        do
        {
          v18 = *(v16 - 1);
          if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v18->__on_zero_shared)(v18);
            std::__shared_weak_count::__release_weak(v18);
          }

          v16 -= 16;
        }

        while (v16 != v15);
        v17 = __p;
      }

      v32 = v15;
      operator delete(v17);
    }

    if (v30 != -1)
    {
      (off_288132520[v30])(&v23, &v29);
    }

    v30 = -1;
    if (v28 < 0)
    {
      operator delete(v26);
    }

    v19 = v39;
    if (v39)
    {
      v20 = v40;
      v21 = v39;
      if (v40 != v39)
      {
        do
        {
          v22 = *(v20 - 1);
          if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v22->__on_zero_shared)(v22);
            std::__shared_weak_count::__release_weak(v22);
          }

          v20 -= 16;
        }

        while (v20 != v19);
        v21 = v39;
      }

      v40 = v19;
      operator delete(v21);
    }

    if (v38 != -1)
    {
      (off_288132520[v38])(&v25, &v37);
    }

    v38 = -1;
    if (v36 < 0)
    {
      operator delete(v34);
    }
  }

  else
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "data_id";
    *(a1 + 96) = 7;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    sub_2714DDB4C(a1, a2 + 8);
    sub_27139ABFC(a2);
    if (*(a2 + 56))
    {
      sub_2711308D4();
    }

    v6 = *(a2 + 40);
    v25 = &unk_28810A568;
    v26 = v6;
    LOBYTE(v6) = *(a1 + 104);
    *(a1 + 88) = "data";
    *(a1 + 96) = 4;
    if ((v6 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v33 = *(a1 + 32);
    v7 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    *(a1 + 32) = v7;
    sub_27182D194(a1 + 40, &v33);
    sub_2717313F0(a1 + 64, (a1 + 112));
    *(a1 + 112) = 0;
    v33 = "version";
    v34 = 7;
    v35[0] = 2;
    *(a1 + 88) = "version";
    *(a1 + 96) = 7;
    *(a1 + 104) = 1;
    sub_27182EB6C(a1, v35);
    (*(*v26 + 40))(v26, a1, v35[0]);
    v8 = *(a1 + 48);
    *(a1 + 32) = *(v8 - 8);
    v9 = *(a1 + 72);
    *(a1 + 112) = *(v9 - 8);
    *(a1 + 48) = v8 - 8;
    *(a1 + 72) = v9 - 8;
  }
}

void sub_2714DDB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DDB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_2714DCBD8(va);
  _Unwind_Resume(a1);
}

void sub_2714DDB4C(uint64_t a1, uint64_t a2)
{
  __p[0] = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, __p);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  __p[0] = "version";
  __p[1] = 7;
  LODWORD(v18) = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v18);
  if (v18 < 2)
  {
    HIBYTE(v18) = 0;
    LOBYTE(__p[0]) = 0;
    v19 = 0;
    v8 = *(a1 + 104);
    *(a1 + 88) = "package_id";
    *(a1 + 96) = 10;
    if ((v8 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v9 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    v15 = 0;
    v14 = 0uLL;
    sub_2715D6E6C(v9, &v14);
    v10 = *(a1 + 104);
    *__p = v14;
    v18 = v15;
    *(a1 + 88) = "type_id";
    *(a1 + 96) = 7;
    if ((v10 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    sub_27182EB6C(a1, &v19);
    if (SHIBYTE(v18) < 0)
    {
      sub_271127178(&v14, __p[0], __p[1]);
    }

    else
    {
      v14 = *__p;
      v15 = v18;
    }

    v11 = v19;
    v16 = v19;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
      v11 = v16;
    }

    *a2 = v14;
    *(a2 + 16) = v15;
    *(a2 + 24) = v11;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = *(a1 + 104);
    *(a1 + 88) = "package_id";
    *(a1 + 96) = 10;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v6 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    __p[1] = 0;
    v18 = 0;
    __p[0] = 0;
    sub_2715D6E6C(v6, __p);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__p;
    *(a2 + 16) = v18;
    v7 = *(a1 + 104);
    *(a1 + 88) = "type_id";
    *(a1 + 96) = 7;
    if ((v7 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    sub_27182EB6C(a1, (a2 + 24));
  }

  v12 = *(a1 + 48);
  *(a1 + 32) = *(v12 - 8);
  v13 = *(a1 + 72);
  *(a1 + 112) = *(v13 - 8);
  *(a1 + 48) = v12 - 8;
  *(a1 + 72) = v13 - 8;
}

void sub_2714DDDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714DE688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v45 = a15;
  a15 = 0;
  if (!v45)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a15, v45);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2714DE7B8(uint64_t a1)
{
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 40));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 8));
  return a1;
}

void *sub_2714DE82C(void *result)
{
  *result = &unk_288116C00;
  v1 = result[3];
  result[2] = &unk_288116D50;
  result[3] = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 80);
    if (v3)
    {
      *(v1 + 88) = v3;
      operator delete(v3);
    }

    if (*(v1 + 72) == 1)
    {
      free(*(v1 + 56));
    }

    if (*(v1 + 40) == 1)
    {
      free(*(v1 + 24));
    }

    MEMORY[0x2743BF050](v1, 0x1030C408C1A3048);
    return v2;
  }

  return result;
}

void sub_2714DE8E4(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 144);
  if ((v4 & 0x10) != 0)
  {
    v6 = *(a1 + 136);
    v7 = *(a1 + 96);
    if (v6 < v7)
    {
      *(a1 + 136) = v7;
      v6 = v7;
    }

    v8 = *(a1 + 88);
    v5 = v6 - v8;
    if (v6 - v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((v4 & 8) == 0)
    {
      v5 = 0;
      v24 = 0;
      goto LABEL_12;
    }

    v8 = *(a1 + 64);
    v5 = *(a1 + 80) - v8;
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_25:
      sub_271120DA8();
    }
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v24 = v5;
  if (v5)
  {
    memmove(&__dst, v8, v5);
  }

LABEL_12:
  *(&__dst + v5) = 0;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  *(a1 + 112) = 0;
  *(a1 + 135) = 0;
  sub_271129318(a1 + 48);
  std::ios_base::clear((a1 + 24 + *(*(a1 + 24) - 24)), 0);
  *(a1 + 312) = 0;
  v9 = v24;
  v10 = v24;
  v11 = v23;
  if ((v24 & 0x80u) == 0)
  {
    v12 = v24;
  }

  else
  {
    v12 = v23;
  }

  if (v12 || (*(a1 + 328) & 1) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      sub_271725008(a1, 0x11u, *(a1 + 304), &v25);
      if (*(a2 + 24) == 1)
      {
        v13 = *&v25.__r_.__value_.__r.__words[1];
        *&v25.__r_.__value_.__r.__words[1] = 0uLL;
        v14 = *(a2 + 16);
        *(a2 + 8) = v13;
        if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      else
      {
        *a2 = &unk_288115240;
        *(a2 + 8) = *&v25.__r_.__value_.__r.__words[1];
        *&v25.__r_.__value_.__r.__words[1] = 0uLL;
        *(a2 + 24) = 1;
      }

      v15 = v25.__r_.__value_.__r.__words[2];
      if (v25.__r_.__value_.__r.__words[2] && !atomic_fetch_add((v25.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      if (!*(a2 + 8))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        if (*(a1 + 23) < 0)
        {
          sub_271127178(&v21, *a1, *(a1 + 8));
        }

        else
        {
          v21.__pn_ = *a1;
        }

        sub_2714D199C("Failed to write to file: ", &v21.__pn_, &v25);
        std::runtime_error::runtime_error(exception, &v25);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v9 = v24;
      v11 = v23;
      v10 = v24;
    }

    if ((v10 & 0x80u) == 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = v11;
    }

    if (v16)
    {
      (*(**(a2 + 8) + 16))(*(a2 + 8));
      std::ostream::write();
    }

    v17 = (*(**(a2 + 8) + 16))(*(a2 + 8));
    v18 = v17 + *(*v17 - 24);
    if ((v18[32] & 5) != 0)
    {
      v19 = -1;
    }

    else
    {
      (*(**(v18 + 5) + 32))(&v25);
      v19 = v26;
    }

    *(a1 + 320) = v19 & ~(v19 >> 63);
    *(a1 + 328) = 1;
    v10 = v24;
  }

  if ((v10 & 0x80) != 0)
  {
    operator delete(__dst);
  }
}

void sub_2714DED1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_free_exception(v26);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2714DEDA0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_271127178((a1 + 8), *(a2 + 8), *(a2 + 16));
    *(a1 + 32) = *(a2 + 32);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    *(a1 + 32) = *(a2 + 32);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v5;
      goto LABEL_6;
    }
  }

  sub_271127178((a1 + 40), *(a2 + 40), *(a2 + 48));
LABEL_6:
  if (*(a2 + 119) < 0)
  {
    sub_271127178((a1 + 64), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v6 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 112);
    *(a1 + 64) = v6;
  }

  *(a1 + 88) = *(a2 + 120);
  return a1;
}

void sub_2714DEE70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2714DEEBC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_271127178((a1 + 8), *(a2 + 8), *(a2 + 16));
    *(a1 + 32) = *(a2 + 32);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    *(a1 + 32) = *(a2 + 32);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v5;
      goto LABEL_6;
    }
  }

  sub_271127178((a1 + 40), *(a2 + 40), *(a2 + 48));
LABEL_6:
  if (*(a2 + 119) < 0)
  {
    sub_271127178((a1 + 64), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v6 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 112);
    *(a1 + 64) = v6;
  }

  *(a1 + 88) = *(a2 + 120);
  if (*(a2 + 88) == 1)
  {
    if (*(a2 + 87) < 0)
    {
      sub_271127178((a1 + 96), *(a2 + 64), *(a2 + 72));
    }

    else
    {
      v7 = *(a2 + 64);
      *(a1 + 112) = *(a2 + 80);
      *(a1 + 96) = v7;
    }
  }

  else
  {
    *(a1 + 119) = 0;
    *(a1 + 96) = 0;
  }

  v11 = -1;
  if (*(a2 + 151) < 0)
  {
    sub_271127178(&v9, *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    v10 = *(a2 + 144);
  }

  *(a1 + 120) = v9;
  *(a1 + 136) = v10;
  return a1;
}

void sub_2714DF014(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
    if ((*(v1 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 40));
  if ((*(v1 + 31) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2714DF0B8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_271127178((a1 + 8), *(a2 + 8), *(a2 + 16));
    *(a1 + 32) = *(a2 + 32);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    *(a1 + 32) = *(a2 + 32);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v5;
      goto LABEL_6;
    }
  }

  sub_271127178((a1 + 40), *(a2 + 40), *(a2 + 48));
LABEL_6:
  if (*(a2 + 87) < 0)
  {
    sub_271127178((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 119) = 0;
  *(a1 + 96) = 0;
  *(a1 + 143) = 0;
  return a1;
}

void sub_2714DF194(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

void sub_2714DF1E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    sub_271127178(v4, *(a1 + 8), *(a1 + 16));
    *(a2 + 32) = *(a1 + 32);
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v4 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 32) = *(a1 + 32);
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      *v25 = *(a1 + 40);
      v26 = *(a1 + 56);
      goto LABEL_6;
    }
  }

  sub_271127178(v25, *(a1 + 40), *(a1 + 48));
LABEL_6:
  v5 = (a2 + 40);
  if (*(a1 + 119) < 0)
  {
    v6 = *(a1 + 104);
    if (v6)
    {
      sub_271127178(__p, *(a1 + 96), v6);
      goto LABEL_11;
    }

LABEL_12:
    LOBYTE(__p[0]) = 0;
    v24 = 0;
    *v5 = *v25;
    *(a2 + 56) = v26;
    v25[0] = 0;
    v25[1] = 0;
    v26 = 0;
    *(a2 + 64) = 0;
    *(a2 + 88) = 0;
    goto LABEL_13;
  }

  if (!*(a1 + 119))
  {
    goto LABEL_12;
  }

  *__p = *(a1 + 96);
  v23 = *(a1 + 112);
LABEL_11:
  *(a2 + 56) = v26;
  *(a2 + 80) = v23;
  v24 = 1;
  *v5 = *v25;
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  *(a2 + 64) = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  *(a2 + 88) = 1;
LABEL_13:
  v7 = *(a2 + 63);
  v8 = *(a2 + 40);
  if (v7 >= 0)
  {
    v8 = (a2 + 40);
  }

  if (v7 < 0)
  {
    v7 = *(a2 + 48);
  }

  if (!v7)
  {
    goto LABEL_78;
  }

  v9 = v8;
  if (v7 < 8)
  {
LABEL_93:
    v21 = &v8[v7];
    do
    {
      if (*v9 == 58)
      {
        *v9 = 95;
      }

      ++v9;
    }

    while (v9 != v21);
    goto LABEL_78;
  }

  if (v7 < 0x10)
  {
    v10 = 0;
    goto LABEL_21;
  }

  v10 = v7 & 0xFFFFFFFFFFFFFFF0;
  v14 = v8 + 7;
  v15.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
  v15.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
  v16 = v7 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v17 = vceqq_s8(*(v14 - 7), v15);
    if (v17.i8[0])
    {
      *(v14 - 7) = 95;
      if ((v17.i8[1] & 1) == 0)
      {
LABEL_46:
        if ((v17.i8[2] & 1) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_63;
      }
    }

    else if ((v17.i8[1] & 1) == 0)
    {
      goto LABEL_46;
    }

    *(v14 - 6) = 95;
    if ((v17.i8[2] & 1) == 0)
    {
LABEL_47:
      if ((v17.i8[3] & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_64;
    }

LABEL_63:
    *(v14 - 5) = 95;
    if ((v17.i8[3] & 1) == 0)
    {
LABEL_48:
      if ((v17.i8[4] & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_65;
    }

LABEL_64:
    *(v14 - 4) = 95;
    if ((v17.i8[4] & 1) == 0)
    {
LABEL_49:
      if ((v17.i8[5] & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }

LABEL_65:
    *(v14 - 3) = 95;
    if ((v17.i8[5] & 1) == 0)
    {
LABEL_50:
      if ((v17.i8[6] & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_67;
    }

LABEL_66:
    *(v14 - 2) = 95;
    if ((v17.i8[6] & 1) == 0)
    {
LABEL_51:
      if ((v17.i8[7] & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_68;
    }

LABEL_67:
    *(v14 - 1) = 95;
    if ((v17.i8[7] & 1) == 0)
    {
LABEL_52:
      if ((v17.i8[8] & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_69;
    }

LABEL_68:
    *v14 = 95;
    if ((v17.i8[8] & 1) == 0)
    {
LABEL_53:
      if ((v17.i8[9] & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_70;
    }

LABEL_69:
    v14[1] = 95;
    if ((v17.i8[9] & 1) == 0)
    {
LABEL_54:
      if ((v17.i8[10] & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_71;
    }

LABEL_70:
    v14[2] = 95;
    if ((v17.i8[10] & 1) == 0)
    {
LABEL_55:
      if ((v17.i8[11] & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_72;
    }

LABEL_71:
    v14[3] = 95;
    if ((v17.i8[11] & 1) == 0)
    {
LABEL_56:
      if ((v17.i8[12] & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_73;
    }

LABEL_72:
    v14[4] = 95;
    if ((v17.i8[12] & 1) == 0)
    {
LABEL_57:
      if ((v17.i8[13] & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_74;
    }

LABEL_73:
    v14[5] = 95;
    if ((v17.i8[13] & 1) == 0)
    {
LABEL_58:
      if (v17.i8[14])
      {
        goto LABEL_75;
      }

      goto LABEL_59;
    }

LABEL_74:
    v14[6] = 95;
    if (v17.i8[14])
    {
LABEL_75:
      v14[7] = 95;
      if ((v17.i8[15] & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_76;
    }

LABEL_59:
    if ((v17.i8[15] & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_76:
    v14[8] = 95;
LABEL_43:
    v14 += 16;
    v16 -= 16;
  }

  while (v16);
  if (v7 == v10)
  {
    goto LABEL_78;
  }

  if ((v7 & 8) == 0)
  {
    v9 = &v8[v10];
    goto LABEL_93;
  }

LABEL_21:
  v9 = &v8[v7 & 0xFFFFFFFFFFFFFFF8];
  v11 = v10 - (v7 & 0xFFFFFFFFFFFFFFF8);
  v12 = &v8[v10 + 3];
  while (2)
  {
    v13 = vceq_s8(*(v12 - 3), 0x3A3A3A3A3A3A3A3ALL);
    if (v13.i8[0])
    {
      *(v12 - 3) = 95;
      if (v13.i8[1])
      {
        goto LABEL_33;
      }

LABEL_25:
      if ((v13.i8[2] & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_34:
      *(v12 - 1) = 95;
      if (v13.i8[3])
      {
        goto LABEL_35;
      }

LABEL_27:
      if ((v13.i8[4] & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_36:
      v12[1] = 95;
      if (v13.i8[5])
      {
        goto LABEL_37;
      }

LABEL_29:
      if ((v13.i8[6] & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_38:
      v12[3] = 95;
      if (v13.i8[7])
      {
LABEL_39:
        v12[4] = 95;
      }
    }

    else
    {
      if ((v13.i8[1] & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_33:
      *(v12 - 2) = 95;
      if (v13.i8[2])
      {
        goto LABEL_34;
      }

LABEL_26:
      if ((v13.i8[3] & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_35:
      *v12 = 95;
      if (v13.i8[4])
      {
        goto LABEL_36;
      }

LABEL_28:
      if ((v13.i8[5] & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_37:
      v12[2] = 95;
      if (v13.i8[6])
      {
        goto LABEL_38;
      }

LABEL_30:
      if (v13.i8[7])
      {
        goto LABEL_39;
      }
    }

    v12 += 8;
    v11 += 8;
    if (v11)
    {
      continue;
    }

    break;
  }

  if (v7 != (v7 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_93;
  }

LABEL_78:
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v18 = *(a1 + 87);
  if (v18 >= 0)
  {
    v19 = (a1 + 64);
  }

  else
  {
    v19 = *(a1 + 64);
  }

  v20 = *(a1 + 72);
  if (v18 >= 0)
  {
    v20 = *(a1 + 87);
  }

  sub_271171230(a2 + 96, v19, &v19[v20]);
  *(a2 + 120) = *(a1 + 88);
  if (*(a1 + 143) < 0)
  {
    sub_271127178((a2 + 128), *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *(a2 + 128) = *(a1 + 120);
    *(a2 + 144) = *(a1 + 136);
  }

  if (v24 == 1 && SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_2714DF69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 31) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2714DF710(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_271127FEC();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_2714DF79C(unsigned __int8 *a1)
{
  v1 = a1[23];
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = a1[23];
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v31 = 0;
  v32 = 0;
  __p = 0;
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v3 < 0x17)
  {
    if (v3)
    {
      goto LABEL_16;
    }

LABEL_95:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2714DFD48(&v29, a1);
    std::logic_error::logic_error(exception, &v29);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  if ((v3 | 7) == 0x17)
  {
    v4 = 24;
  }

  else
  {
    v4 = v3 | 7;
  }

  sub_27113107C(&__p, v4);
  do
  {
LABEL_16:
    while (1)
    {
      v5 = __tolower(*v2);
      v6 = HIBYTE(v32);
      if (SHIBYTE(v32) < 0)
      {
        break;
      }

      if (HIBYTE(v32) == 22)
      {
        goto LABEL_21;
      }

      HIBYTE(v32) = (HIBYTE(v32) + 1) & 0x7F;
      *(&__p + v6) = v5;
      ++v2;
      if (!--v3)
      {
        goto LABEL_23;
      }
    }

    v7 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v31 == v7)
    {
      if ((v32 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_271120DA8();
      }

LABEL_21:
      operator new();
    }

    v8 = v31++;
    v9 = __p + v8;
    *v9 = v5;
    v9[1] = 0;
    ++v2;
    --v3;
  }

  while (v3);
LABEL_23:
  v10 = v32 < 0;
  if (SHIBYTE(v32) < 0)
  {
    if (v31 != 4)
    {
      if (v31 == 5)
      {
        p_p = __p;
        v15 = *__p == 1869834798 && *(__p + 4) == 110;
        v11 = HIBYTE(v32);
        if (v15)
        {
          v16 = 3;
LABEL_86:
          operator delete(p_p);
          return v16;
        }
      }

      else
      {
        v11 = HIBYTE(v32);
      }

LABEL_49:
      if (v31 != 5)
      {
LABEL_56:
        if (v31 != 4)
        {
LABEL_68:
          if (v31 != 5)
          {
LABEL_77:
            if (v31 != 4)
            {
              goto LABEL_95;
            }

            v24 = 1;
            v25 = __p;
            goto LABEL_83;
          }

          v10 = 1;
          v20 = __p;
          goto LABEL_72;
        }

        v10 = 1;
        if (*__p == 1718187054)
        {
          goto LABEL_79;
        }

        goto LABEL_67;
      }

      v10 = 1;
      v13 = __p;
      goto LABEL_51;
    }

    p_p = __p;
    switch(*__p)
    {
      case 0x7461642E:
        v16 = 1;
        goto LABEL_86;
      case 0x7673632E:
        v16 = 2;
        goto LABEL_86;
      case 0x7478742E:
        v16 = 4;
        goto LABEL_86;
      case 0x676E702E:
        v16 = 5;
        goto LABEL_86;
    }

    v11 = HIBYTE(v32);
LABEL_63:
    if (*p_p == 1735420462)
    {
      goto LABEL_79;
    }

    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_49;
  }

  if (HIBYTE(v32) == 4)
  {
    p_p = &__p;
    v11 = 4;
    if (__p > 1954051117)
    {
      if (__p == 1954051118)
      {
        return 4;
      }

      if (__p == 1987273518)
      {
        return 2;
      }
    }

    else
    {
      if (__p == 1735290926)
      {
        return 5;
      }

      if (__p == 1952539694)
      {
        return 1;
      }
    }

    goto LABEL_63;
  }

  v11 = HIBYTE(v32);
  if (HIBYTE(v32) != 5)
  {
    goto LABEL_65;
  }

  if (__p == 1869834798 && BYTE4(__p) == 110)
  {
    return 3;
  }

  v10 = 0;
  v13 = &__p;
  v11 = 5;
LABEL_51:
  v17 = *v13;
  v18 = v13[4];
  if (v17 == 1701866030 && v18 == 103)
  {
LABEL_79:
    v16 = 5;
    if (!v10)
    {
      return v16;
    }

    goto LABEL_85;
  }

  if (v10)
  {
    goto LABEL_56;
  }

LABEL_65:
  if (v11 != 4)
  {
    goto LABEL_70;
  }

  v10 = 0;
  if (__p == 1718187054)
  {
    goto LABEL_79;
  }

LABEL_67:
  if (v10)
  {
    goto LABEL_68;
  }

LABEL_70:
  if (v11 != 5)
  {
    goto LABEL_81;
  }

  v10 = 0;
  v20 = &__p;
LABEL_72:
  v21 = *v20;
  v22 = v20[4];
  if (v21 == 1718187054 && v22 == 102)
  {
    goto LABEL_79;
  }

  if (v10)
  {
    goto LABEL_77;
  }

LABEL_81:
  if (v11 != 4)
  {
    goto LABEL_95;
  }

  v24 = 0;
  v25 = &__p;
LABEL_83:
  if (*v25 != 1784835886)
  {
    goto LABEL_95;
  }

  v16 = 6;
  if (v24)
  {
LABEL_85:
    p_p = __p;
    goto LABEL_86;
  }

  return v16;
}

void sub_2714DFCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      if (a22 < 0)
      {
        operator delete(a17);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void sub_2714DFD48(std::string *a1, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = "Extension ";
  v4[1] = 10;
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  v4[2] = v3;
  v4[3] = v2;
  v4[4] = " has no supported export file format";
  v4[5] = 36;
  sub_271131230(v4, &v5, 0, 0, a1);
}

void sub_2714DFDE8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = std::__fs::filesystem::path::__extension(a1);
  if (v7.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v7.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v7.__size_;
  if (v7.__size_)
  {
    memmove(&__dst, v7.__data_, v7.__size_);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v7.__size_] = 0;
  *v48 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  sub_271171230(&__dst, ".csv", "");
  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8.__data_ = &__dst;
  }

  else
  {
    v8.__data_ = __dst.__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8.__size_ = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8.__size_ = __dst.__pn_.__r_.__value_.__l.__size_;
  }

  v9 = std::__fs::filesystem::path::__compare(v48, v8);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    if ((v48[23] & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v48[23] & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(*v48);
LABEL_15:
  memset(&v40, 0, sizeof(v40));
  memset(&__p, 0, sizeof(__p));
  memset(&v38, 0, sizeof(v38));
  (*(*a2 + 264))(&__dst, a2, a1);
  if ((*(*a2 + 320))(a2, &__dst))
  {
    goto LABEL_44;
  }

  v10 = std::__fs::filesystem::path::__filename(a1);
  if (v10.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v10.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v10.__size_;
  if (v10.__size_)
  {
    memmove(&__dst, v10.__data_, v10.__size_);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v10.__size_] = 0;
  size = __dst.__pn_.__r_.__value_.__l.__size_;
  v12 = __dst.__pn_.__r_.__value_.__r.__words[0];
  *v41 = __dst.__pn_.__r_.__value_.__r.__words[2];
  *&v41[3] = *(&__dst.__pn_.__r_.__value_.__r.__words[2] + 3);
  v13 = SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(v48, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
    v14 = v48[23];
    size = *&v48[8];
  }

  else
  {
    *v48 = *&__dst.__pn_.__r_.__value_.__l.__data_;
    *&v48[16] = *v41;
    *&v48[19] = *&v41[3];
    v48[23] = *(&__dst.__pn_.__r_.__value_.__s + 23);
    v14 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  }

  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v15 = size;
  }

  v16 = 4;
  if (v15 < 4)
  {
    v16 = v15;
  }

  if (v15 >= v16)
  {
    v15 = v16;
  }

  if (v15 == 4)
  {
    v17 = v48;
    if ((v14 & 0x80u) != 0)
    {
      v17 = *v48;
    }

    v18 = *v17 == 1868983913;
    if ((v14 & 0x80) == 0)
    {
LABEL_40:
      if (v13 < 0)
      {
        operator delete(v12);
        if (v18)
        {
LABEL_42:
          operator new();
        }
      }

      else if (v18)
      {
        goto LABEL_42;
      }

LABEL_44:
      if (v9)
      {
        if (&__p != a1)
        {
          v19 = *(a1 + 23);
          if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v19 >= 0)
            {
              v24 = a1;
            }

            else
            {
              v24 = *a1;
            }

            if (v19 >= 0)
            {
              v25 = *(a1 + 23);
            }

            else
            {
              v25 = *(a1 + 8);
            }

            sub_2711289F8(&__p.__pn_.__r_.__value_.__l.__data_, v24, v25);
          }

          else if ((*(a1 + 23) & 0x80) != 0)
          {
            sub_271128928(&__p, *a1, *(a1 + 8));
          }

          else
          {
            __p = *a1;
          }
        }

        memset(v48, 0, 24);
        sub_271171230(v48, "sequence.csv", "");
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_271127178(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = __p;
        }

        sub_2714D75A8(&__dst, v48);
        if (SHIBYTE(v40.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__pn_.__r_.__value_.__l.__data_);
        }

        v40 = __dst;
        *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
        __dst.__pn_.__r_.__value_.__s.__data_[0] = 0;
        if ((v48[23] & 0x80000000) != 0)
        {
          operator delete(*v48);
        }

        memset(v48, 0, 24);
        sub_271171230(v48, "info.json", "");
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_271127178(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = __p;
        }

        sub_2714D75A8(&__dst, v48);
        if (SHIBYTE(v38.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__pn_.__r_.__value_.__l.__data_);
        }

        v38 = __dst;
        *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
        __dst.__pn_.__r_.__value_.__s.__data_[0] = 0;
        if ((v48[23] & 0x80000000) == 0)
        {
LABEL_118:
          v36 = *a3;
          v37 = *(a3 + 2);
          *&v41[4] = *a3;
          *&v41[20] = *(a3 + 2);
          *&v42.__r_.__value_.__l.__data_ = xmmword_271893D90;
          v42.__r_.__value_.__s.__data_[16] = 0;
          *v48 = 0x300000001;
          sub_2718287A4(&__dst, v48, 256);
        }

        v26 = *v48;
LABEL_117:
        operator delete(v26);
        goto LABEL_118;
      }

      v20 = std::__fs::filesystem::path::__parent_path(a1);
      if (v20.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      if (v20.__size_ >= 0x17)
      {
        operator new();
      }

      *(&__dst.__pn_.__r_.__value_.__s + 23) = v20.__size_;
      if (v20.__size_)
      {
        memmove(&__dst, v20.__data_, v20.__size_);
      }

      __dst.__pn_.__r_.__value_.__s.__data_[v20.__size_] = 0;
      *v48 = __dst.__pn_.__r_.__value_.__l.__size_;
      v21 = __dst.__pn_.__r_.__value_.__r.__words[0];
      *&v48[7] = *(&__dst.__pn_.__r_.__value_.__r.__words[1] + 7);
      v22 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }

      __p.__pn_.__r_.__value_.__r.__words[0] = v21;
      __p.__pn_.__r_.__value_.__l.__size_ = *v48;
      *(&__p.__pn_.__r_.__value_.__r.__words[1] + 7) = *&v48[7];
      *(&__p.__pn_.__r_.__value_.__s + 23) = v22;
      if (&v40 != a1)
      {
        v23 = *(a1 + 23);
        if (SHIBYTE(v40.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v23 >= 0)
          {
            v27 = a1;
          }

          else
          {
            v27 = *a1;
          }

          if (v23 >= 0)
          {
            v28 = *(a1 + 23);
          }

          else
          {
            v28 = *(a1 + 8);
          }

          sub_2711289F8(&v40.__pn_.__r_.__value_.__l.__data_, v27, v28);
        }

        else if ((*(a1 + 23) & 0x80) != 0)
        {
          sub_271128928(&v40, *a1, *(a1 + 8));
        }

        else
        {
          v40 = *a1;
        }
      }

      v29 = std::__fs::filesystem::path::__stem(&v40);
      if (v29.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      if (v29.__size_ >= 0x17)
      {
        operator new();
      }

      *(&__dst.__pn_.__r_.__value_.__s + 23) = v29.__size_;
      if (v29.__size_)
      {
        memmove(&__dst, v29.__data_, v29.__size_);
      }

      __dst.__pn_.__r_.__value_.__s.__data_[v29.__size_] = 0;
      v30 = __dst.__pn_.__r_.__value_.__l.__size_;
      v31 = __dst.__pn_.__r_.__value_.__r.__words[0];
      LODWORD(v36) = __dst.__pn_.__r_.__value_.__r.__words[2];
      *(&v36 + 3) = *(&__dst.__pn_.__r_.__value_.__r.__words[2] + 3);
      v32 = SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_271127178(&v42, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
        LOBYTE(v34) = *(&v42.__r_.__value_.__s + 23);
        v30 = v42.__r_.__value_.__l.__size_;
        v33 = v42.__r_.__value_.__r.__words[0];
      }

      else
      {
        *&v42.__r_.__value_.__l.__data_ = *&__dst.__pn_.__r_.__value_.__l.__data_;
        LODWORD(v42.__r_.__value_.__r.__words[2]) = v36;
        *(&v42.__r_.__value_.__r.__words[2] + 3) = *(&v36 + 3);
        *(&v42.__r_.__value_.__s + 23) = *(&__dst.__pn_.__r_.__value_.__s + 23);
        v33 = __dst.__pn_.__r_.__value_.__r.__words[0];
        LOBYTE(v34) = *(&__dst.__pn_.__r_.__value_.__s + 23);
      }

      __dst.__pn_.__r_.__value_.__r.__words[0] = "info_";
      __dst.__pn_.__r_.__value_.__l.__size_ = 5;
      v34 = v34;
      if ((v34 & 0x80u) != 0)
      {
        v34 = v30;
      }

      else
      {
        v33 = &v42;
      }

      __dst.__pn_.__r_.__value_.__r.__words[2] = v33;
      v44 = v34;
      v45 = ".json";
      v46 = 5;
      sub_271131230(&__dst, &__src, 0, 0, &v35);
      *v41 = v35;
      memset(&v35, 0, sizeof(v35));
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_271127178(v48, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        *v48 = __p;
      }

      sub_2714D75A8(v48, v41);
      if (SHIBYTE(v38.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__pn_.__r_.__value_.__l.__data_);
      }

      v38 = *v48;
      v48[23] = 0;
      v48[0] = 0;
      if ((v41[23] & 0x80000000) != 0)
      {
        operator delete(*v41);
        if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_110:
          if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_111;
          }

          goto LABEL_115;
        }
      }

      else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_110;
      }

      operator delete(v35.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_111:
        if ((v32 & 0x80000000) == 0)
        {
          goto LABEL_118;
        }

LABEL_116:
        v26 = v31;
        goto LABEL_117;
      }

LABEL_115:
      operator delete(v42.__r_.__value_.__l.__data_);
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_116;
    }
  }

  else
  {
    v18 = 0;
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_40;
    }
  }

  operator delete(*v48);
  goto LABEL_40;
}

void sub_2714E1C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  operator delete(v65);
  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  sub_2717255F4(v66 - 224);
  if (a65 < 0)
  {
    operator delete(a62);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
    if ((SLOBYTE(STACK[0x277]) & 0x80000000) == 0)
    {
LABEL_7:
      if ((SLOBYTE(STACK[0x297]) & 0x80000000) == 0)
      {
LABEL_12:
        _Unwind_Resume(a1);
      }

LABEL_11:
      operator delete(STACK[0x280]);
      goto LABEL_12;
    }
  }

  else if ((SLOBYTE(STACK[0x277]) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(STACK[0x260]);
  if ((SLOBYTE(STACK[0x297]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_2714E2284(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = std::__fs::filesystem::path::__extension(a1);
  if (v6.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v6.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v6.__size_;
  if (v6.__size_)
  {
    memmove(&__dst, v6.__data_, v6.__size_);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v6.__size_] = 0;
  v39 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  sub_271171230(&__dst, ".csv", "");
  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7.__data_ = &__dst;
  }

  else
  {
    v7.__data_ = __dst.__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7.__size_ = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7.__size_ = __dst.__pn_.__r_.__value_.__l.__size_;
  }

  v8 = std::__fs::filesystem::path::__compare(&v39, v7);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v39.__pn_.__r_.__value_.__l.__data_);
LABEL_15:
  memset(&__p, 0, sizeof(__p));
  memset(&v34, 0, sizeof(v34));
  memset(&v33, 0, sizeof(v33));
  if (v8)
  {
    if (&__p != a1)
    {
      if (*(a1 + 23) < 0)
      {
        sub_271128928(&__p, *a1, *(a1 + 8));
      }

      else
      {
        __p = *a1;
      }
    }

    memset(&v39, 0, sizeof(v39));
    sub_271171230(&v39, "sequence.csv", "");
    if (*(a1 + 23) < 0)
    {
      sub_271127178(&__dst, *a1, *(a1 + 8));
    }

    else
    {
      __dst = *a1;
    }

    sub_2714D75A8(&__dst, &v39);
    if (SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__pn_.__r_.__value_.__l.__data_);
    }

    v34 = __dst;
    *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
    __dst.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__pn_.__r_.__value_.__l.__data_);
    }

    memset(&v39, 0, sizeof(v39));
    sub_271171230(&v39, "info.json", "");
    if (*(a1 + 23) < 0)
    {
      sub_271127178(&__dst, *a1, *(a1 + 8));
    }

    else
    {
      __dst = *a1;
    }

    sub_2714D75A8(&__dst, &v39);
    if (SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__pn_.__r_.__value_.__l.__data_);
    }

    v33 = __dst;
    *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
    __dst.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if ((SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_83:
      (*(*a2 + 264))(&__dst, a2, &v34);
      if ((*(*a2 + 328))(a2, &__dst))
      {
        (*(*a2 + 368))(v32, a2, &v34, 8);
        if (v32[1])
        {
          v30 = 0uLL;
          v31 = 0;
          LOBYTE(v26[0]) = 0;
          v29 = 0;
          (*(*a2 + 264))(&__dst, a2, &v33);
          if ((*(*a2 + 328))(a2, &__dst))
          {
            (*(*a2 + 368))(&v24, a2, &v33, 8);
            v22 = (*(*v25 + 16))(v25);
            sub_2714DB1E0(&v23, *(v22 + *(*v22 - 24) + 40), 0);
            sub_27181A6F8(&v23);
          }

          v30 = xmmword_271893DA0;
          v31 = 9;
          LODWORD(v40) = 0;
          __dst.__pn_.__r_.__value_.__r.__words[0] = &v39;
          __dst.__pn_.__r_.__value_.__l.__size_ = "No info file ";
          __dst.__pn_.__r_.__value_.__r.__words[2] = &v39;
          v43 = "No info file ";
          v44 = "No info file ";
          v36.__r_.__value_.__r.__words[0] = &__dst;
          sub_2711EF0C8(&v36);
          sub_2714D809C(&v24, &v39, &v33);
        }

        LODWORD(v38) = 0;
        v39.__pn_.__r_.__value_.__r.__words[0] = &v37;
        v39.__pn_.__r_.__value_.__l.__size_ = "failed to open file ";
        v39.__pn_.__r_.__value_.__r.__words[2] = &v37;
        v40 = "failed to open file ";
        v41 = "failed to open file ";
        v26[0] = &v39;
        sub_2711E7110(v26);
        sub_2714D809C(&v30, &v37, &v34);
      }

      LODWORD(v38) = 0;
      v39.__pn_.__r_.__value_.__r.__words[0] = &v37;
      v39.__pn_.__r_.__value_.__l.__size_ = "sequence file ";
      v39.__pn_.__r_.__value_.__r.__words[2] = &v37;
      v40 = "sequence file ";
      v41 = "sequence file ";
      v26[0] = &v39;
      sub_2711E8250(v26);
      sub_2714D809C(v32, &v37, &v34);
    }

    v13 = v39.__pn_.__r_.__value_.__r.__words[0];
LABEL_82:
    operator delete(v13);
    goto LABEL_83;
  }

  v9 = std::__fs::filesystem::path::__parent_path(a1);
  if (v9.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v9.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v9.__size_;
  if (v9.__size_)
  {
    memmove(&__dst, v9.__data_, v9.__size_);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v9.__size_] = 0;
  v39.__pn_.__r_.__value_.__r.__words[0] = __dst.__pn_.__r_.__value_.__l.__size_;
  v10 = __dst.__pn_.__r_.__value_.__r.__words[0];
  *(v39.__pn_.__r_.__value_.__r.__words + 7) = *(&__dst.__pn_.__r_.__value_.__r.__words[1] + 7);
  v11 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  __p.__pn_.__r_.__value_.__r.__words[0] = v10;
  __p.__pn_.__r_.__value_.__l.__size_ = v39.__pn_.__r_.__value_.__r.__words[0];
  *(&__p.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v39.__pn_.__r_.__value_.__r.__words + 7);
  *(&__p.__pn_.__r_.__value_.__s + 23) = v11;
  if (&v34 != a1)
  {
    v12 = *(a1 + 23);
    if (SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v12 >= 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      if (v12 >= 0)
      {
        v15 = *(a1 + 23);
      }

      else
      {
        v15 = *(a1 + 8);
      }

      sub_2711289F8(&v34.__pn_.__r_.__value_.__l.__data_, v14, v15);
    }

    else if ((*(a1 + 23) & 0x80) != 0)
    {
      sub_271128928(&v34, *a1, *(a1 + 8));
    }

    else
    {
      v34 = *a1;
    }
  }

  v16 = std::__fs::filesystem::path::__stem(&v34);
  if (v16.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v16.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v16.__size_;
  if (v16.__size_)
  {
    memmove(&__dst, v16.__data_, v16.__size_);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v16.__size_] = 0;
  size = __dst.__pn_.__r_.__value_.__l.__size_;
  v18 = __dst.__pn_.__r_.__value_.__r.__words[0];
  LODWORD(v32[0]) = __dst.__pn_.__r_.__value_.__r.__words[2];
  *(v32 + 3) = *(&__dst.__pn_.__r_.__value_.__r.__words[2] + 3);
  v19 = SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(v26, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
    LOBYTE(v21) = v28;
    v20 = v26[0];
    size = v26[1];
  }

  else
  {
    *v26 = *&__dst.__pn_.__r_.__value_.__l.__data_;
    *v27 = v32[0];
    *&v27[3] = *(v32 + 3);
    v28 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
    v20 = __dst.__pn_.__r_.__value_.__r.__words[0];
    LOBYTE(v21) = *(&__dst.__pn_.__r_.__value_.__s + 23);
  }

  __dst.__pn_.__r_.__value_.__r.__words[0] = "info_";
  __dst.__pn_.__r_.__value_.__l.__size_ = 5;
  v21 = v21;
  if (v21 < 0)
  {
    v21 = size;
  }

  else
  {
    v20 = v26;
  }

  __dst.__pn_.__r_.__value_.__r.__words[2] = v20;
  v43 = v21;
  v44 = ".json";
  v45 = 5;
  sub_271131230(&__dst, &v46, 0, 0, &v36);
  v37.__pn_ = v36;
  memset(&v36, 0, sizeof(v36));
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v39, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = __p;
  }

  sub_2714D75A8(&v39, &v37);
  if (SHIBYTE(v33.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__pn_.__r_.__value_.__l.__data_);
  }

  v33 = v39;
  *(&v39.__pn_.__r_.__value_.__s + 23) = 0;
  v39.__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_75:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_80;
    }
  }

  else if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(v36.__r_.__value_.__l.__data_);
  if ((v28 & 0x80000000) == 0)
  {
LABEL_76:
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

LABEL_81:
    v13 = v18;
    goto LABEL_82;
  }

LABEL_80:
  operator delete(v26[0]);
  if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_83;
  }

  goto LABEL_81;
}

void sub_2714E3F7C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2714E4318(uint64_t a1)
{
  if (*(a1 + 128) != 1)
  {
    goto LABEL_10;
  }

  if (*(a1 + 120) != 1)
  {
    goto LABEL_5;
  }

  if ((*(a1 + 119) & 0x80000000) == 0)
  {
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = a1;
    operator delete(*(a1 + 64));
    a1 = v4;
    if (*(v4 + 56) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v3 = a1;
  operator delete(*(a1 + 96));
  a1 = v3;
  if (*(v3 + 87) < 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (*(a1 + 56) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (*(a1 + 55) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 32));
    a1 = v2;
  }

LABEL_10:

  std::runtime_error::~runtime_error(a1);
}

void sub_2714E43D4(std::runtime_error *this)
{
  if (LOBYTE(this[8].__vftable) != 1)
  {
    goto LABEL_10;
  }

  if (LOBYTE(this[7].__imp_.__imp_) == 1)
  {
    if ((SHIBYTE(this[7].__vftable) & 0x80000000) == 0)
    {
      if ((SHIBYTE(this[5].__vftable) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      operator delete(this[4].__vftable);
      if (LOBYTE(this[3].__imp_.__imp_) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    operator delete(this[6].__vftable);
    if (SHIBYTE(this[5].__vftable) < 0)
    {
      goto LABEL_9;
    }
  }

LABEL_5:
  if (LOBYTE(this[3].__imp_.__imp_) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

LABEL_10:
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x2743BF050);
}

void sub_2714E4488(uint64_t a1, uint64_t a2, void *__src, size_t __len, uint64_t a5, char a6)
{
  v34[2] = *MEMORY[0x277D85DE8];
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[__len] = 0;
  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__pn_.__r_.__value_.__l.__size_;
  }

  sub_2713BC7A8(p_dst, size, ".", 1, 0, &v30);
  v28 = a6;
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    v14 = v30;
    v13 = v31;
    memset(v34, 0, 15);
    if (v30 != v31)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = v30;
    v13 = v31;
    memset(v34, 0, 15);
    if (v30 != v31)
    {
LABEL_15:
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v32.__pn_.__r_.__value_.__r.__words[0] = v15;
        v32.__pn_.__r_.__value_.__l.__size_ = v34[0];
        *(&v32.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v34 + 7);
        *(&v32.__pn_.__r_.__value_.__s + 23) = v16;
        memset(v34, 0, 15);
        if (*(v14 + 23) < 0)
        {
          if (!v14[1] || **v14 != 47)
          {
LABEL_26:
            if (std::__fs::filesystem::path::__filename(&v32).__size_)
            {
              if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                v17 = (v32.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v32.__pn_.__r_.__value_.__l.__size_ == v17)
                {
                  if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                  {
                    sub_271120DA8();
                  }

LABEL_32:
                  operator new();
                }

                v18 = v32.__pn_.__r_.__value_.__l.__size_;
                v19 = v32.__pn_.__r_.__value_.__r.__words[0];
                ++v32.__pn_.__r_.__value_.__l.__size_;
              }

              else
              {
                if (HIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) == 22)
                {
                  goto LABEL_32;
                }

                v18 = HIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]);
                *(&v32.__pn_.__r_.__value_.__s + 23) = (*(&v32.__pn_.__r_.__value_.__s + 23) + 1) & 0x7F;
                v19 = &v32;
              }

              *(&v19->__pn_.__r_.__value_.__l.__data_ + v18) = 47;
            }

            goto LABEL_37;
          }
        }

        else if (!*(v14 + 23) || *v14 != 47)
        {
          goto LABEL_26;
        }

        if (v16 < 0)
        {
          *v15 = 0;
          v32.__pn_.__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          v32.__pn_.__r_.__value_.__s.__data_[0] = 0;
          *(&v32.__pn_.__r_.__value_.__s + 23) = 0;
        }

LABEL_37:
        v20 = *(v14 + 23);
        if (v20 >= 0)
        {
          v21 = v14;
        }

        else
        {
          v21 = *v14;
        }

        if (v20 < 0)
        {
          v20 = v14[1];
        }

        sub_271171230(&v32, v21, &v21[v20]);
        if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_271127178(&__dst, v32.__pn_.__r_.__value_.__l.__data_, v32.__pn_.__r_.__value_.__l.__size_);
          v34[0] = __dst.__pn_.__r_.__value_.__l.__size_;
          v15 = __dst.__pn_.__r_.__value_.__r.__words[0];
          *(v34 + 7) = *(&__dst.__pn_.__r_.__value_.__r.__words[1] + 7);
          v16 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
          *(&__dst.__pn_.__r_.__value_.__s + 23) = 0;
          __dst.__pn_.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__pn_.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          __dst = v32;
          v34[0] = v32.__pn_.__r_.__value_.__l.__size_;
          v15 = v32.__pn_.__r_.__value_.__r.__words[0];
          *(v34 + 7) = *(&v32.__pn_.__r_.__value_.__r.__words[1] + 7);
          v16 = HIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]);
        }

        v14 += 3;
        if (v14 == v13)
        {
          __p.__pn_.__r_.__value_.__r.__words[0] = v15;
          __p.__pn_.__r_.__value_.__l.__size_ = v34[0];
          *(&__p.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v34 + 7);
          *(&__p.__pn_.__r_.__value_.__s + 23) = v16;
          if (v28)
          {
            goto LABEL_46;
          }

LABEL_55:
          if (*(a2 + 23) < 0)
          {
            sub_271127178(a1, *a2, *(a2 + 8));
          }

          else
          {
            *a1 = *a2;
            *(a1 + 16) = *(a2 + 16);
          }

          sub_2714D75A8(a1, &__p);
LABEL_65:
          if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_66;
          }

          goto LABEL_67;
        }
      }
    }
  }

  memset(&__p, 0, sizeof(__p));
  if ((v28 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_46:
  memset(&v32, 0, sizeof(v32));
  v22 = *(a5 + 23);
  if (v22 >= 0)
  {
    v23 = a5;
  }

  else
  {
    v23 = *a5;
  }

  if (v22 < 0)
  {
    v22 = *(a5 + 8);
  }

  sub_271171230(&v32, v23, &v23[v22]);
  if (*(a2 + 23) < 0)
  {
    sub_271127178(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
  }

  sub_2714D75A8(&__dst, &v32);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(a1, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    *a1 = __dst;
  }

  sub_2714D75A8(a1, &__p);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }
  }

  else if ((SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

  operator delete(v32.__pn_.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_66:
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_67:
  v24 = v30;
  if (v30)
  {
    v25 = v31;
    v26 = v30;
    if (v31 != v30)
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
      v26 = v30;
    }

    v31 = v24;
    operator delete(v26);
  }
}

void sub_2714E49D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void **a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_7:
      if (a19 < 0)
      {
        operator delete(a14);
      }

      sub_27137F4D0(&a20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(a23);
  goto LABEL_7;
}

void sub_2714E4AC4(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49[1] = *MEMORY[0x277D85DE8];
  HIBYTE(v33) = 0;
  LOBYTE(v32[0]) = 0;
  sub_27184BE74(&__p, "%020llu", *a3);
  *&v40 = a4;
  *(&v40 + 1) = a5;
  v41 = "_";
  v42 = 1;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v43 = p_p;
  v44 = size;
  v45 = v32;
  v46 = 0;
  v47 = a6;
  v48 = a7;
  sub_271131230(&v40, v49, 0, 0, &v35);
  v34.__pn_ = v35;
  memset(&v35, 0, sizeof(v35));
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    operator delete(v32[0]);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    sub_271127178(a1, *a2, *(a2 + 1));
    goto LABEL_13;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (*(a2 + 23) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 2);
LABEL_13:
  v29 = a4;
  sub_2714D75A8(a1, &v34);
  for (i = 1; ; ++i)
  {
    (*(*a8 + 264))(&v40, a8, a1);
    if (((*(*a8 + 296))(a8, &v40) & 1) == 0)
    {
      break;
    }

    v36 = 0;
    std::to_string(&__p, i);
    *&v40 = &v35;
    *(&v40 + 1) = &__p;
    v41 = &v35;
    v42 = &__p;
    v43 = &__p;
    if (v36 == -1)
    {
      sub_2711308D4();
    }

    v38 = &v40;
    (off_288132630[v36])(&v38, &v35);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v36 == -1)
    {
      sub_2711308D4();
    }

    *&v40 = &__p;
    (off_288132660[v36])(&v31, &v40, &v35);
    if (v36 != -1)
    {
      (off_288132648[v36])(&v40, &v35);
    }

    v18 = std::string::insert(&v31, 0, "_", 1uLL);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v33 = v18->__r_.__value_.__r.__words[2];
    *v32 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    sub_27184BE74(&__p, "%020llu", *a3);
    *&v40 = v29;
    *(&v40 + 1) = a5;
    v20 = a5;
    v41 = "_";
    v42 = 1;
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = __p.__r_.__value_.__l.__size_;
    }

    v43 = v22;
    v44 = v21;
    v23 = HIBYTE(v33);
    v24 = v32;
    if (v33 < 0)
    {
      v24 = v32[0];
      v23 = v32[1];
    }

    v45 = v24;
    v46 = v23;
    v25 = a6;
    v47 = a6;
    v48 = a7;
    v26 = a7;
    sub_271131230(&v40, v49, 0, 0, &v35);
    v39[0] = v35.__r_.__value_.__l.__size_;
    v27 = v35.__r_.__value_.__r.__words[0];
    *(v39 + 7) = *(&v35.__r_.__value_.__r.__words[1] + 7);
    v28 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    memset(&v35, 0, sizeof(v35));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }
    }

    else if ((SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    operator delete(v34.__pn_.__r_.__value_.__l.__data_);
LABEL_31:
    v34.__pn_.__r_.__value_.__r.__words[0] = v27;
    v34.__pn_.__r_.__value_.__l.__size_ = v39[0];
    *(&v34.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v39 + 7);
    *(&v34.__pn_.__r_.__value_.__s + 23) = v28;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[0]);
      a7 = v26;
      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        a6 = v25;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_39;
      }
    }

    else
    {
      a7 = v26;
      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_33;
      }
    }

    operator delete(v31.__r_.__value_.__l.__data_);
    a6 = v25;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_34:
      v40 = *a2;
      v41 = *(a2 + 2);
      a5 = v20;
      goto LABEL_40;
    }

LABEL_39:
    sub_271127178(&v40, *a2, *(a2 + 1));
    a5 = v20;
LABEL_40:
    sub_2714D75A8(&v40, &v34);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v40;
    *(a1 + 16) = v41;
  }

  if (SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_2714E4F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, _Unwind_Exception *exception_objecta, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714E50C0(std::string *a1, uint64_t a2)
{
  if (*(sub_2714FC508(a2) + 40) == 1)
  {
    v4 = sub_2714FC508(a2);
    v5 = *(v4 + 39);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(v4 + 24);
    }

    if (v5)
    {
      v6 = sub_2714FC508(a2);
      if (*(v6 + 39) < 0)
      {
        sub_271127178(&v47, *(v6 + 16), *(v6 + 24));
      }

      else
      {
        v47 = *(v6 + 16);
        v48 = *(v6 + 32);
      }

      v21 = HIBYTE(v48);
      v22 = HIBYTE(v48);
      v24 = *(&v47 + 1);
      v23 = v47;
      if (SHIBYTE(v48) >= 0)
      {
        v25 = &v47;
      }

      else
      {
        v25 = v47;
      }

      if (SHIBYTE(v48) >= 0)
      {
        v26 = HIBYTE(v48);
      }

      else
      {
        v26 = *(&v47 + 1);
      }

      if (v26)
      {
        do
        {
          v27 = memchr(" .\\/:*?|<>", *v25, 0xBuLL);
          if (v27)
          {
            v28 = v27 == "";
          }

          else
          {
            v28 = 1;
          }

          if (!v28)
          {
            *v25 = 95;
          }

          v25 = (v25 + 1);
          --v26;
        }

        while (v26);
        v21 = HIBYTE(v48);
        v24 = *(&v47 + 1);
        v23 = v47;
        v22 = HIBYTE(v48);
      }

      if (v22 >= 0)
      {
        v29 = &v47;
      }

      else
      {
        v29 = v23;
      }

      if (v22 >= 0)
      {
        v30 = v21;
      }

      else
      {
        v30 = v24;
      }

      a1->__r_.__value_.__r.__words[0] = 0;
      a1->__r_.__value_.__l.__size_ = 0;
      a1->__r_.__value_.__r.__words[2] = 0;
      if (v30 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      if (v30 < 0x17)
      {
        if (!v30)
        {
LABEL_88:
          if ((v22 & 0x80) == 0)
          {
            return;
          }

          v33 = v47;
          goto LABEL_96;
        }
      }

      else
      {
        if ((v30 | 7) == 0x17)
        {
          v31 = 24;
        }

        else
        {
          v31 = v30 | 7;
        }

        sub_27113107C(a1, v31);
      }

      do
      {
        v32 = __tolower(*v29);
        std::string::push_back(a1, v32);
        ++v29;
        --v30;
      }

      while (v30);
      v22 = HIBYTE(v48);
      goto LABEL_88;
    }
  }

  sub_2714FCC00(a2);
  if ((v41 & 0x80u) == 0)
  {
    v7 = v41;
  }

  else
  {
    v7 = v40[1];
  }

  if (v7 == 8)
  {
    v8 = v40[0];
    if ((v41 & 0x80u) == 0)
    {
      v8 = v40;
    }

    if (*v8 != 0x7A69762E64337663)
    {
      __dst.__r_.__value_.__r.__words[2] = 0x900000000000000;
      *&__dst.__r_.__value_.__l.__data_ = 0uLL;
LABEL_19:
      if ((v41 & 0x80u) == 0)
      {
        v9 = v40;
      }

      else
      {
        v9 = v40[0];
      }

      memmove(&__dst, v9, v7);
      goto LABEL_23;
    }

    v43 = &unk_28810A520;
    v44 = 0;
    v17 = &v47;
    sub_2715225E0(&v43, __val);
    v18 = HIBYTE(v48);
    if (SHIBYTE(v48) >= 0)
    {
      v19 = HIBYTE(v48);
    }

    else
    {
      v19 = *(&v47 + 1);
      v17 = v47;
    }

    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    a1->__r_.__value_.__r.__words[0] = 0;
    if (v19 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    if (v19 < 0x17)
    {
      if (!v19)
      {
LABEL_93:
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_94;
        }

        v16 = v47;
        goto LABEL_47;
      }
    }

    else
    {
      if ((v19 | 7) == 0x17)
      {
        v20 = 24;
      }

      else
      {
        v20 = v19 | 7;
      }

      sub_27113107C(a1, v20);
    }

    do
    {
      v34 = __tolower(*v17);
      std::string::push_back(a1, v34);
      ++v17;
      --v19;
    }

    while (v19);
    v18 = HIBYTE(v48);
    goto LABEL_93;
  }

  if (v7 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v7 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&__dst, 0, sizeof(__dst));
  *(&__dst.__r_.__value_.__s + 23) = v7 + 1;
  if (v7)
  {
    goto LABEL_19;
  }

LABEL_23:
  *(&__dst.__r_.__value_.__l.__data_ + v7) = 95;
  v45 = 0;
  std::to_string(&v46, __val);
  *&v47 = &v43;
  *(&v47 + 1) = &v46;
  v48 = &v43;
  v49 = &v46;
  v50 = &v46;
  if (v45 == -1)
  {
    sub_2711308D4();
  }

  v51 = &v47;
  (off_288132630[v45])(&v51, &v43);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v45 == -1)
  {
    sub_2711308D4();
  }

  *&v47 = &v46;
  (off_288132660[v45])(__p, &v47, &v43);
  if (v45 != -1)
  {
    (off_288132648[v45])(&v47, &v43);
  }

  if ((v37 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v11 = v37;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&__dst, v10, v11);
  v14 = v12->__r_.__value_.__r.__words[0];
  size = v12->__r_.__value_.__l.__size_;
  v39[0] = v12->__r_.__value_.__r.__words[2];
  *(v39 + 3) = *(&v12->__r_.__value_.__r.__words[2] + 3);
  v15 = SHIBYTE(v12->__r_.__value_.__r.__words[2]);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if ((v37 & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_40:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  operator delete(__p[0]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_40;
  }

LABEL_37:
  if ((v15 & 0x80000000) == 0)
  {
LABEL_38:
    __s.__r_.__value_.__r.__words[0] = v14;
    __s.__r_.__value_.__l.__size_ = size;
    LODWORD(__s.__r_.__value_.__r.__words[2]) = v39[0];
    *(&__s.__r_.__value_.__r.__words[2] + 3) = *(v39 + 3);
    *(&__s.__r_.__value_.__s + 23) = v15;
    goto LABEL_42;
  }

LABEL_41:
  sub_271127178(&__s, v14, size);
LABEL_42:
  sub_27184BC8C(a1, &__s, ".", 1, "_", 1uLL, 0, 0);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
    if (v15 < 0)
    {
LABEL_46:
      v16 = v14;
LABEL_47:
      operator delete(v16);
    }
  }

  else if (v15 < 0)
  {
    goto LABEL_46;
  }

LABEL_94:
  if ((v41 & 0x80000000) == 0)
  {
    return;
  }

  v33 = v40[0];
LABEL_96:
  operator delete(v33);
}

void sub_2714E5600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714E56F4(uint64_t a1, uint64_t a2, std::mutex *a3, const std::__fs::filesystem::path *a4, __int128 ***a5, const std::__fs::filesystem::path *a6, int a7)
{
  v11 = a5 + 2;
  sub_2714FCC00((a5 + 2));
  v12 = (a5[2][3])(v11);
  v13 = 48;
  if (!*(v12 + 64))
  {
    v13 = 0;
  }

  v14 = *(v12 + v13);
  std::__fs::filesystem::path::lexically_relative(&v30, a6, a4);
  std::mutex::lock(a3);
  v19 = v14;
  if (SHIBYTE(v32) < 0)
  {
    sub_271127178(&v20, v31, *(&v31 + 1));
  }

  else
  {
    v20 = v31;
    v21 = v32;
  }

  v22 = v33;
  v15 = **a5;
  if (*(v15 + 23) < 0)
  {
    sub_271127178(&v23, *v15, *(v15 + 1));
  }

  else
  {
    v16 = *v15;
    v24 = *(v15 + 2);
    v23 = v16;
  }

  LOBYTE(v25) = 0;
  LOBYTE(v27) = 0;
  if (*(v15 + 48) == 1)
  {
    if (*(v15 + 47) < 0)
    {
      sub_271127178(&v25, *(v15 + 3), *(v15 + 4));
    }

    else
    {
      v17 = *(v15 + 24);
      v26 = *(v15 + 5);
      v25 = v17;
    }

    LOBYTE(v27) = 1;
  }

  if (SHIBYTE(v30.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v18, v30.__pn_.__r_.__value_.__l.__data_, v30.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = v30;
  }

  v28 = v18;
  memset(&v18, 0, sizeof(v18));
  data = a6[1].__pn_.__r_.__value_.__l.__data_;
  sub_2714FC508(v11);
  v34 = 0;
  operator new();
}

void sub_2714E5FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a38 == 1 && a37 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  std::mutex::unlock(v49);
  if (*(v50 - 225) < 0)
  {
    operator delete(*(v50 - 248));
    if ((*(v50 - 201) & 0x80000000) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v50 - 201) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(*(v50 - 224));
  _Unwind_Resume(a1);
}

void sub_2714E6204(uint64_t a1, uint64_t a2, void ****a3, int a4, uint64_t a5, void *a6, char a7)
{
  v121 = *MEMORY[0x277D85DE8];
  v14 = v87 + 4;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v88 = 4;
      v15 = 1952539694;
      goto LABEL_9;
    }

    if (a4 == 2)
    {
      v88 = 4;
      v15 = 1987273518;
LABEL_9:
      LODWORD(v87[0]) = v15;
      goto LABEL_11;
    }

    goto LABEL_190;
  }

  if (a4 != 3)
  {
    if (a4 == 4)
    {
      v88 = 4;
      v15 = 1954051118;
      goto LABEL_9;
    }

LABEL_190:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 135, "", 0, "Unsupported format", 0x12uLL, sub_271852CA8);
    abort();
  }

  v14 = v87 + 5;
  v88 = 5;
  qmemcpy(v87, ".json", 5);
LABEL_11:
  *v14 = 0;
  sub_2714E50C0(v113, (a3 + 2));
  if (v88 >= 0)
  {
    v16 = v87;
  }

  else
  {
    v16 = v87[0];
  }

  if (v88 >= 0)
  {
    v17 = v88;
  }

  else
  {
    v17 = v87[1];
  }

  v18 = std::string::append(v113, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v86 = v18->__r_.__value_.__r.__words[2];
  *v85 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((v113[23] & 0x80000000) != 0)
  {
    operator delete(*v113);
    v20 = **a3;
    v21 = *(v20 + 23);
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v20 = **a3;
    v21 = *(v20 + 23);
    if ((v21 & 0x8000000000000000) == 0)
    {
LABEL_19:
      v22 = v20;
      goto LABEL_22;
    }
  }

  v22 = *v20;
  v21 = v20[1];
LABEL_22:
  if (*(v20 + 48))
  {
    v23 = (v20 + 3);
  }

  else
  {
    v23 = 0;
  }

  sub_2714E4488(v113, a2, v22, v21, v23, *(v20 + 48));
  memset(&__p, 0, sizeof(__p));
  v24 = SHIBYTE(v86);
  if (v86 >= 0)
  {
    v25 = v85;
  }

  else
  {
    v25 = v85[0];
  }

  if (v86 < 0)
  {
    v24 = v85[1];
  }

  sub_271171230(&__p, v25, v24 + v25);
  if ((v113[23] & 0x80000000) != 0)
  {
    sub_271127178(&v84, *v113, *&v113[8]);
  }

  else
  {
    v84 = *v113;
  }

  sub_2714D75A8(&v84, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v113[23] & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_43:
    operator delete(*v113);
    goto LABEL_35;
  }

  if ((v113[23] & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

LABEL_35:
  v26 = sub_27139B104(0);
  sub_27139A710(v100, (a3 + 2), v26);
  LOBYTE(v94) = 0;
  v96 = 0;
  v92 = 0;
  v93 = 0;
  LOBYTE(v89) = 0;
  v91 = 0;
  if ((a7 & 1) == 0)
  {
    sub_271725008(&v84, 0x11u, a5, v113);
    if (v96 == 1)
    {
      v27 = *&v113[8];
      *&v113[16] = 0;
      *&v113[8] = 0;
      v28 = *(&v95 + 1);
      v95 = v27;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v28->__on_zero_shared)(v28);
        std::__shared_weak_count::__release_weak(v28);
      }
    }

    else
    {
      v94 = &unk_288115240;
      v95 = *&v113[8];
      *&v113[8] = 0;
      *&v113[16] = 0;
      v96 = 1;
    }

    v29 = *&v113[16];
    if (*&v113[16] && !atomic_fetch_add((*&v113[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    if ((v96 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      if (SHIBYTE(v84.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_271127178(&__p, v84.__pn_.__r_.__value_.__l.__data_, v84.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v84.__pn_;
      }

      sub_2714D199C("Failed to write to file: ", &__p, v113);
      std::runtime_error::runtime_error(exception, v113);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v30 = (*(*v95 + 16))(v95);
    v31 = v30 + *(*v30 - 24);
    if ((v31[32] & 5) != 0)
    {
      v32 = -1;
    }

    else
    {
      (*(**(v31 + 5) + 32))(v113);
      v32 = v120;
    }

    v39 = v32 & ~(v32 >> 63);
    goto LABEL_130;
  }

  if (SHIBYTE(v84.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(v113, v84.__pn_.__r_.__value_.__l.__data_, v84.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    *v113 = v84;
  }

  if (v113[23] >= 0)
  {
    v33 = v113;
  }

  else
  {
    v33 = *v113;
  }

  if (v113[23] >= 0)
  {
    v34 = v113[23];
  }

  else
  {
    v34 = *&v113[8];
  }

  v35 = sub_2711284DC(&__p, v33, v34);
  if ((v113[23] & 0x80000000) != 0)
  {
    operator delete(*v113);
    v36 = a6[1];
    if (!*&v36)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v36 = a6[1];
    if (!*&v36)
    {
      goto LABEL_100;
    }
  }

  v37 = vcnt_s8(v36);
  v37.i16[0] = vaddlv_u8(v37);
  if (v37.u32[0] > 1uLL)
  {
    v38 = v35;
    if (v35 >= *&v36)
    {
      v38 = v35 % *&v36;
    }
  }

  else
  {
    v38 = (*&v36 - 1) & v35;
  }

  v40 = *(*a6 + 8 * v38);
  if (!v40 || (v41 = *v40) == 0)
  {
LABEL_100:
    v98 = 0;
    LOBYTE(v97) = 0;
    sub_2714EB974(&__p, &v97, 24);
    operator new();
  }

  if (v37.u32[0] < 2uLL)
  {
    v42 = *&v36 - 1;
    while (1)
    {
      v43 = v41[1];
      if (v43 == v35)
      {
        if ((v84.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44.__data_ = &v84;
        }

        else
        {
          v44.__data_ = v84.__pn_.__r_.__value_.__r.__words[0];
        }

        if ((v84.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44.__size_ = HIBYTE(v84.__pn_.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v44.__size_ = v84.__pn_.__r_.__value_.__l.__size_;
        }

        if (!std::__fs::filesystem::path::__compare((v41 + 2), v44))
        {
          goto LABEL_82;
        }
      }

      else if ((v43 & v42) != v38)
      {
        goto LABEL_100;
      }

      v41 = *v41;
      if (!v41)
      {
        goto LABEL_100;
      }
    }
  }

  while (1)
  {
    v48 = v41[1];
    if (v48 == v35)
    {
      break;
    }

    if (v48 >= *&v36)
    {
      v48 %= *&v36;
    }

    if (v48 != v38)
    {
      goto LABEL_100;
    }

LABEL_88:
    v41 = *v41;
    if (!v41)
    {
      goto LABEL_100;
    }
  }

  if ((v84.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49.__data_ = &v84;
  }

  else
  {
    v49.__data_ = v84.__pn_.__r_.__value_.__r.__words[0];
  }

  if ((v84.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49.__size_ = HIBYTE(v84.__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v49.__size_ = v84.__pn_.__r_.__value_.__l.__size_;
  }

  if (std::__fs::filesystem::path::__compare((v41 + 2), v49))
  {
    goto LABEL_88;
  }

LABEL_82:
  v46 = v41[5];
  v45 = v41[6];
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v47 = v93;
  v92 = v46;
  v93 = v45;
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
    v50 = v92;
    v51 = *(v92 + 312);
    if (*(v92 + 328) != 1)
    {
      goto LABEL_110;
    }

LABEL_103:
    v39 = *(v50 + 320) + v51;
    *v113 = v39;
    v113[8] = 0;
    LOBYTE(v114) = 0;
    v52 = v91;
    if (!v91)
    {
      goto LABEL_104;
    }

LABEL_120:
    if (!v52)
    {
      v89 = &unk_288115240;
      v90 = *&v113[16];
      *&v113[16] = 0;
      *&v113[24] = 0;
      v91 = 1;
      v30 = (v92 + 40);
      if (v114 != 1)
      {
        goto LABEL_130;
      }

      goto LABEL_126;
    }

    v60 = *(&v90 + 1);
    if (*(&v90 + 1) && !atomic_fetch_add((*(&v90 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v60->__on_zero_shared)(v60);
      std::__shared_weak_count::__release_weak(v60);
    }

    v91 = 0;
LABEL_125:
    v30 = (v92 + 40);
    if (v114 != 1)
    {
      goto LABEL_130;
    }

    goto LABEL_126;
  }

  v50 = v92;
  v51 = *(v92 + 312);
  if (*(v92 + 328) == 1)
  {
    goto LABEL_103;
  }

LABEL_110:
  sub_271725008(v50, 0x11u, *(v50 + 304), &__p);
  if (!__p.__r_.__value_.__l.__size_)
  {
    v80 = __cxa_allocate_exception(0x10uLL);
    if (*(v50 + 23) < 0)
    {
      sub_271127178(&v99, *v50, *(v50 + 8));
    }

    else
    {
      v81 = *v50;
      v99.__r_.__value_.__r.__words[2] = *(v50 + 16);
      *&v99.__r_.__value_.__l.__data_ = v81;
    }

    sub_2714D199C("Failed to write to file: ", &v99, v113);
    std::runtime_error::runtime_error(v80, v113);
    __cxa_throw(v80, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v55 = (*(*__p.__r_.__value_.__l.__size_ + 16))(__p.__r_.__value_.__l.__size_);
  v56 = v55 + *(*v55 - 24);
  if ((v56[32] & 5) != 0)
  {
    v57 = -1;
  }

  else
  {
    (*(**(v56 + 5) + 32))(v113);
    v57 = v120;
  }

  v58 = v57 & ~(v57 >> 63);
  *(v50 + 320) = v58;
  *(v50 + 328) = 1;
  *v113 = v58 + v51;
  *&v113[8] = &unk_288115240;
  *&v113[16] = *&__p.__r_.__value_.__r.__words[1];
  if (__p.__r_.__value_.__r.__words[2])
  {
    atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
    v59 = __p.__r_.__value_.__r.__words[2];
    LOBYTE(v114) = 1;
    if (__p.__r_.__value_.__r.__words[2] && !atomic_fetch_add((__p.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v59->__on_zero_shared)(v59);
      std::__shared_weak_count::__release_weak(v59);
    }
  }

  else
  {
    LOBYTE(v114) = 1;
  }

  v39 = *v113;
  v52 = v91;
  if (v91 != v114)
  {
    goto LABEL_120;
  }

LABEL_104:
  if (!v52)
  {
    goto LABEL_125;
  }

  v53 = *&v113[16];
  *&v113[24] = 0;
  *&v113[16] = 0;
  v54 = *(&v90 + 1);
  v90 = v53;
  if (!v54 || atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_125;
  }

  (v54->__on_zero_shared)(v54);
  std::__shared_weak_count::__release_weak(v54);
  v30 = (v92 + 40);
  if (v114 != 1)
  {
    goto LABEL_130;
  }

LABEL_126:
  v61 = *&v113[24];
  if (*&v113[24] && !atomic_fetch_add((*&v113[24] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v61->__on_zero_shared)(v61);
    std::__shared_weak_count::__release_weak(v61);
  }

LABEL_130:
  v62 = v30 + *(*v30 - 24);
  if ((v62[32] & 5) != 0)
  {
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    memset(v113, 0, sizeof(v113));
    v120 = -1;
  }

  else
  {
    (*(**(v62 + 5) + 32))(v113);
  }

  if (a4 != 4 && a4 != 2)
  {
    if (a4 == 1)
    {
      __p.__r_.__value_.__r.__words[0] = &unk_288116C00;
      __p.__r_.__value_.__l.__size_ = 1;
      __p.__r_.__value_.__r.__words[2] = &unk_288116D50;
      operator new();
    }

    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 467, "", 0, "Unsupported format", 0x12uLL, sub_271852CA8);
    abort();
  }

  __p.__r_.__value_.__r.__words[0] = &unk_288117210;
  __p.__r_.__value_.__l.__size_ = 0x400000001;
  __p.__r_.__value_.__r.__words[2] = &unk_288117360;
  v108 = v30;
  qmemcpy(v109, ",\n|", 3);
  v110 = 0;
  v111 = 0;
  *(&v99.__r_.__value_.__s + 23) = 1;
  LOWORD(v99.__r_.__value_.__l.__data_) = 44;
  v98 = 1;
  LOWORD(v97) = 10;
  sub_27183CA64(&v99, &v97, 124);
  __p.__r_.__value_.__r.__words[0] = &unk_288117390;
  __p.__r_.__value_.__r.__words[2] = &unk_2881174E0;
  if (v110)
  {
    v99.__r_.__value_.__s.__data_[0] = v109[0];
    sub_271120E64(v108, &v99, 1);
  }

  MEMORY[0x2743BE7F0](v108, 2);
  ++v110;
  sub_2714F0BDC(&__p, v100);
  v63 = v109[1];
  if (v110)
  {
    v99.__r_.__value_.__s.__data_[0] = v109[0];
    sub_271120E64(v108, &v99, 1);
  }

  v99.__r_.__value_.__s.__data_[0] = v63;
  sub_271120E64(v108, &v99, 1);
  v64 = v110 + 1;
  v110 = 0;
  v111 = v64;
  v99.__r_.__value_.__s.__data_[0] = HIBYTE(v109[0]);
  sub_271120E64(v108, &v99, 1);
  v65 = v92;
  if (v92)
  {
    v66 = *(v92 + 312);
    if (v66 <= 0x19000)
    {
      v68 = v30 + *(*v30 - 24);
      if ((v68[32] & 5) != 0)
      {
        v69 = -1;
      }

      else
      {
        v70 = v92;
        (*(**(v68 + 5) + 32))(&__p);
        v69 = v112[0];
        v65 = v70;
        v66 = *(v70 + 312);
      }

      *(v65 + 312) = v69 + v66 - v120;
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      LOBYTE(v108) = 0;
      if (v91 == 1)
      {
        __p.__r_.__value_.__r.__words[0] = &unk_288115240;
        *&__p.__r_.__value_.__r.__words[1] = v90;
        v90 = 0uLL;
        LOBYTE(v108) = 1;
      }

      sub_2714DE8E4(v92, &__p);
      if (v108 == 1)
      {
        v67 = __p.__r_.__value_.__r.__words[2];
        if (__p.__r_.__value_.__r.__words[2])
        {
          if (!atomic_fetch_add((__p.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v67->__on_zero_shared)(v67);
            std::__shared_weak_count::__release_weak(v67);
          }
        }
      }
    }
  }

  if (SHIBYTE(v84.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v82, v84.__pn_.__r_.__value_.__l.__data_, v84.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v82 = v84;
  }

  v83 = v39;
  if (v91 == 1)
  {
    v71 = *(&v90 + 1);
    if (*(&v90 + 1))
    {
      if (!atomic_fetch_add((*(&v90 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v71->__on_zero_shared)(v71);
        std::__shared_weak_count::__release_weak(v71);
      }
    }
  }

  v72 = v93;
  if (v93 && !atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v72->__on_zero_shared)(v72);
    std::__shared_weak_count::__release_weak(v72);
    if (v96 == 1)
    {
LABEL_163:
      v73 = *(&v95 + 1);
      if (*(&v95 + 1) && !atomic_fetch_add((*(&v95 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v73->__on_zero_shared)(v73);
        std::__shared_weak_count::__release_weak(v73);
      }
    }
  }

  else if (v96 == 1)
  {
    goto LABEL_163;
  }

  *a1 = *&v82.__pn_.__r_.__value_.__l.__data_;
  v74 = v83;
  *(a1 + 16) = *(&v82.__pn_.__r_.__value_.__l + 2);
  *(a1 + 24) = v74;
  *(a1 + 32) = 1;
  v75 = v105;
  if (v105)
  {
    v76 = v106;
    v77 = v105;
    if (v106 != v105)
    {
      do
      {
        v78 = *(v76 - 1);
        if (v78 && !atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v78->__on_zero_shared)(v78);
          std::__shared_weak_count::__release_weak(v78);
        }

        v76 -= 16;
      }

      while (v76 != v75);
      v77 = v105;
    }

    v106 = v75;
    operator delete(v77);
  }

  if (v104 != -1)
  {
    (off_288132620[v104])(v113, &v103);
  }

  v104 = -1;
  if ((v102 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v84.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_180;
    }

LABEL_184:
    operator delete(v84.__pn_.__r_.__value_.__l.__data_);
    if (SHIBYTE(v86) < 0)
    {
      goto LABEL_185;
    }

LABEL_181:
    if ((v88 & 0x80000000) == 0)
    {
      return;
    }

LABEL_186:
    operator delete(v87[0]);
    return;
  }

  operator delete(v101);
  if (SHIBYTE(v84.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_184;
  }

LABEL_180:
  if ((SHIBYTE(v86) & 0x80000000) == 0)
  {
    goto LABEL_181;
  }

LABEL_185:
  operator delete(v85[0]);
  if (v88 < 0)
  {
    goto LABEL_186;
  }
}

void sub_2714E7B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, int a37, __int16 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  __cxa_free_exception(v61);
  sub_2717255F4(&a61);
  if (a36 == 1)
  {
    sub_2717255F4(&a33);
  }

  sub_27112F828(&a38);
  if (a43 == 1)
  {
    sub_2717255F4(&a40);
  }

  sub_27139FD58(&a50);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void sub_2714E7DD0(std::string *a1, uint64_t a2, void ***a3, int a4, uint64_t a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = **a3;
  v10 = *(v9 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = *v9;
    v10 = *(v9 + 8);
  }

  else
  {
    v11 = **a3;
  }

  if (*(v9 + 48))
  {
    v12 = v9 + 24;
  }

  else
  {
    v12 = 0;
  }

  sub_2714E4488(&v37, a2, v11, v10, v12, *(v9 + 48));
  v14 = a3[2];
  v13 = a3 + 2;
  v15 = (v14[3])(v13);
  if (*(v15 + 64))
  {
    v16 = 48;
  }

  else
  {
    v16 = 0;
  }

  sub_2714E50C0(&pn, v13);
  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &pn;
  }

  else
  {
    v17 = pn.__r_.__value_.__r.__words[0];
  }

  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(pn.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = pn.__r_.__value_.__l.__size_;
  }

  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v19 = 4;
      v43 = 4;
      v20 = 1952539694;
      goto LABEL_24;
    }

    if (a4 == 2)
    {
      v19 = 4;
      v43 = 4;
      v20 = 1987273518;
LABEL_24:
      LODWORD(__p[0]) = v20;
      goto LABEL_26;
    }

    goto LABEL_71;
  }

  if (a4 != 3)
  {
    if (a4 == 4)
    {
      v19 = 4;
      v43 = 4;
      v20 = 1954051118;
      goto LABEL_24;
    }

LABEL_71:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 135, "", 0, "Unsupported format", 0x12uLL, sub_271852CA8);
    abort();
  }

  v19 = 5;
  v43 = 5;
  qmemcpy(__p, ".json", 5);
LABEL_26:
  *(__p | v19) = 0;
  sub_2714E4AC4(&v34, &v37, (v15 + v16), v17, size, __p, v19, a5);
  if ((v43 & 0x80000000) == 0)
  {
    if ((SHIBYTE(pn.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_42:
    operator delete(pn.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_43;
  }

  operator delete(__p[0]);
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_42;
  }

LABEL_28:
  if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_43:
  operator delete(v37.__r_.__value_.__l.__data_);
LABEL_29:
  sub_271725008(&v34, 0x30u, a5, &v31);
  if (!v32)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&pn, v34.__pn_.__r_.__value_.__l.__data_, v34.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v34.__pn_;
    }

    sub_2714D199C("Failed to write to file: ", &pn, &v37);
    std::runtime_error::runtime_error(exception, &v37);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = sub_27139B104(0);
  sub_27139A710(__p, v13, v21);
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      pn.__r_.__value_.__r.__words[0] = 0x300000001;
      sub_2718287A4(&v37, &pn, 256);
    }
  }

  else if (a4 == 1)
  {
    (*(*v32 + 16))(v32);
    v37.__r_.__value_.__r.__words[0] = &unk_288116C00;
    v37.__r_.__value_.__l.__size_ = 1;
    v37.__r_.__value_.__r.__words[2] = &unk_288116D50;
    operator new();
  }

  v22 = (*(*v32 + 16))(v32);
  v37.__r_.__value_.__r.__words[0] = &unk_288117210;
  v37.__r_.__value_.__l.__size_ = 0x400000001;
  v37.__r_.__value_.__r.__words[2] = &unk_288117360;
  v38 = v22;
  qmemcpy(v39, ",\n|", 3);
  v40 = 0;
  v41 = 0;
  *(&pn.__r_.__value_.__s + 23) = 1;
  LOWORD(pn.__r_.__value_.__l.__data_) = 44;
  v36 = 1;
  LOWORD(v35) = 10;
  sub_27183CA64(&pn, &v35, 124);
  v37.__r_.__value_.__r.__words[0] = &unk_288117390;
  v37.__r_.__value_.__r.__words[2] = &unk_2881174E0;
  if (v40)
  {
    pn.__r_.__value_.__s.__data_[0] = v39[0];
    sub_271120E64(v38, &pn, 1);
  }

  MEMORY[0x2743BE7F0](v38, 2);
  ++v40;
  sub_2714F0BDC(&v37, __p);
  v23 = v39[1];
  if (v40)
  {
    pn.__r_.__value_.__s.__data_[0] = v39[0];
    sub_271120E64(v38, &pn, 1);
  }

  pn.__r_.__value_.__s.__data_[0] = v23;
  sub_271120E64(v38, &pn, 1);
  v24 = (v40 + 1);
  v40 = 0;
  v41 = v24;
  pn.__r_.__value_.__s.__data_[0] = HIBYTE(v39[0]);
  sub_271120E64(v38, &pn, 1);
  if (SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v37, v34.__pn_.__r_.__value_.__l.__data_, v34.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = v34.__pn_;
  }

  *a1 = v37;
  a1[1].__r_.__value_.__r.__words[0] = 0;
  a1[1].__r_.__value_.__s.__data_[8] = 1;
  v25 = v47;
  if (v47)
  {
    v26 = v48;
    v27 = v47;
    if (v48 != v47)
    {
      do
      {
        v28 = *(v26 - 1);
        if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        v26 -= 16;
      }

      while (v26 != v25);
      v27 = v47;
    }

    v48 = v25;
    operator delete(v27);
  }

  if (v46 != -1)
  {
    (off_288132620[v46])(&v37, &v45);
  }

  v46 = -1;
  if (v44 < 0)
  {
    operator delete(__p[1]);
    v29 = v33;
    if (!v33)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v29 = v33;
    if (!v33)
    {
LABEL_62:
      if ((SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_63;
    }
  }

  if (atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_62;
  }

  (v29->__on_zero_shared)(v29);
  std::__shared_weak_count::__release_weak(v29);
  if (SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_63:
    operator delete(v34.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_2714E8EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  sub_2715CC40C(v52, 6);
  sub_27139FD58(v53 - 160);
  sub_271828858(&a27);
  sub_27139FD58(&a47);
  sub_2717255F4(&a12);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714E9080(uint64_t a1@<X0>, void ***a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, std::string *a7@<X8>)
{
  v18 = a1;
  v19 = a2;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = 0;
  v24 = 0;
  v25 = 0x400000004;
  v26 = 3;
  if (a3)
  {
    a7->__r_.__value_.__s.__data_[0] = 0;
    a7[1].__r_.__value_.__s.__data_[8] = 0;
    return;
  }

  if ((a3 & 0x40) == 0)
  {
    goto LABEL_18;
  }

  sub_2714FCC00((a2 + 2));
  v9 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v9 = __p[1];
  }

  if (v9 != 8)
  {
    goto LABEL_9;
  }

  v10 = __p[0];
  if ((v16 & 0x80u) == 0)
  {
    v10 = __p;
  }

  if (*v10 != *"cv3d.viz")
  {
LABEL_9:
    v11 = 0;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  v11 = v17 == 7;
  if (v16 < 0)
  {
LABEL_17:
    operator delete(__p[0]);
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_18:
    if ((a3 & 4) != 0)
    {
      sub_2714EC5D0(&v18);
      if (v24 == 1)
      {
        sub_2714EC5D0(&v18);
        if (v25 == 6)
        {
          sub_2714EB2A4(a7, v18, v19, a3, v20);
        }

        else
        {
          if (v25 != 5)
          {
            goto LABEL_45;
          }

          sub_2714E9614(a7, v18, v19, a3, v20);
        }

        return;
      }
    }

    if ((a3 & 0x38) != 0)
    {
      if ((a3 & 0x10) != 0)
      {
        if ((a3 & 0x100) != 0)
        {
          sub_2714E7DD0(a7, v18, v19, 2, v20);
        }

        else
        {
          sub_2714E6204(a7, v18, v19, 2, v20, v21, v22);
        }

        return;
      }

      if ((a3 & 0x20) != 0)
      {
        sub_2714E7DD0(a7, v18, v19, 3, v20);
        return;
      }

      sub_2714EC5D0(&v18);
      if (BYTE1(v23) == 1)
      {
        v12 = v18;
        v13 = v19;
        v14 = v20;
        if ((a3 & 0x100) == 0)
        {
LABEL_28:
          sub_2714E6204(a7, v12, v13, SHIDWORD(v25), v14, v21, v22);
          return;
        }

LABEL_39:
        sub_2714E7DD0(a7, v12, v13, v26, v14);
        return;
      }

      sub_2714EC5D0(&v18);
      if (BYTE2(v23) == 1)
      {
        v12 = v18;
        v13 = v19;
        v14 = v20;
        if ((a3 & 0x80) != 0)
        {
          goto LABEL_28;
        }

        goto LABEL_39;
      }

      v12 = v18;
      v13 = v19;
      v14 = v20;
      if ((a3 & 2) == 0)
      {
        if ((a3 & 0x80) != 0)
        {
          goto LABEL_28;
        }

        goto LABEL_39;
      }
    }

    else
    {
      sub_2714EC5D0(&v18);
      v12 = v18;
      v13 = v19;
      v14 = v20;
      if (BYTE1(v23) == 1)
      {
        if ((a3 & 0x100) == 0)
        {
LABEL_44:
          sub_2714E6204(a7, v12, v13, 1, v14, v21, v22);
          return;
        }

LABEL_31:
        sub_2714E7DD0(a7, v12, v13, 1, v14);
        return;
      }
    }

    if ((a3 & 0x80) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_31;
  }

LABEL_10:
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_11:
  sub_2714EC5D0(&v18);
  if (v25 != 6)
  {
    if (v25 == 5)
    {
      sub_2714E9614(a7, v18, v19, 0x40uLL, v20);
      return;
    }

LABEL_45:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 626, "", 0, "No known common format", 0x16uLL, sub_271852CA8);
    abort();
  }

  sub_2714EB2A4(a7, v18, v19, 0x40uLL, v20);
}

void sub_2714E9410(uint64_t a1@<X0>, void ***a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, std::string *a7@<X8>)
{
  v22 = a1;
  v23 = a2;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = 0;
  v28 = 0;
  v29 = 0x400000004;
  v30 = 3;
  if ((a3 & 2) != 0)
  {
LABEL_9:
    v10 = a7;
    v11 = a2;
    v12 = 1;
    v13 = a4;

LABEL_11:
    sub_2714E7DD0(v10, a1, v11, v12, v13);
    return;
  }

  if ((a3 & 8) != 0)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x10) != 0)
  {
    v10 = a7;
    v11 = a2;
    v12 = 2;
    v13 = a4;

    goto LABEL_11;
  }

  if ((a3 & 0x20) != 0)
  {
LABEL_12:
    v10 = a7;
    v11 = a2;
    v12 = 3;
    v13 = a4;

    goto LABEL_11;
  }

  if ((a3 & 0x40) == 0)
  {
    if ((a3 & 4) == 0)
    {
      if ((a3 & 1) == 0)
      {
        sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 801, "", 0, "Flag not supported for ExportLargeData", 0x26uLL, sub_271852CA8);
        abort();
      }

      a7->__r_.__value_.__s.__data_[0] = 0;
      a7[1].__r_.__value_.__s.__data_[8] = 0;
      return;
    }

    goto LABEL_9;
  }

  sub_2714EC5D0(&v22);
  if (v29 == 6)
  {
    v19 = v22;
    v20 = v23;
    v21 = v24;

    sub_2714EB2A4(a7, v19, v20, a3, v21);
  }

  else
  {
    if (v29 != 5)
    {
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 626, "", 0, "No known common format", 0x16uLL, sub_271852CA8);
      abort();
    }

    v16 = v22;
    v17 = v23;
    v18 = v24;

    sub_2714E9614(a7, v16, v17, a3, v18);
  }
}

void sub_2714E9614(std::string *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    v12 = __dynamic_cast(v10, &unk_28811D1B0, &unk_28811D018, 0) != 0;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_9:
  if (!v12)
  {
    v35 = 0;
    v36 = 0;
    goto LABEL_65;
  }

  v14 = *(a3 + 24);
  v13 = *(a3 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = v14;
  v36 = v13;
  if (!v14)
  {
LABEL_65:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 841, "image_data_ptr", 0xEuLL, "ExportImageData requires data to be ImageData", 0x2DuLL, sub_271852CA8);
    abort();
  }

  v15 = *(v14 + 64);
  v16 = ".png";
  v17 = 3;
  v18 = 4;
  if (v15 <= 22)
  {
    if ((v15 - 1) >= 2)
    {
      if ((v15 - 3) < 2)
      {
        v16 = ".tiff";
        v17 = 5;
        v18 = 5;
      }

      else if ((v15 - 21) >= 2)
      {
        goto LABEL_63;
      }
    }

LABEL_26:
    sub_2714E9E74(v31, a2, a3, v16, v18, a4, a5);
    sub_271725008(&v34, 0x30u, a5, &v28);
    v19 = (*(*v29 + 16))(v29);
    v48[0] = &unk_28810E7B8;
    v20 = *(v14 + 24);
    v21 = *(v14 + 32);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = *(v14 + 56);
      v23 = *(v14 + 64);
      v24 = *(v14 + 68);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v22 = *(v14 + 56);
      v23 = *(v14 + 64);
      v24 = *(v14 + 68);
    }

    v48[1] = v20;
    __p = v21;
    v50 = *(v14 + 40);
    v51 = *(v14 + 48);
    v52 = v22;
    v53 = v23;
    v54 = v24;
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    sub_2715E8E40(v48, v19, v17, v55);
    v25 = __p;
    if (__p && !atomic_fetch_add(__p + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
      v26 = v56;
      if (v56 == 1)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v26 = v56;
      if (v56 == 1)
      {
LABEL_35:
        v47 = v26;
        sub_2713B52B4(&v37);
        if ((v47 & 1) == 0 && v46 == 1)
        {
          if (v45 == 1)
          {
            if (SHIBYTE(v44) < 0)
            {
              operator delete(v43[0]);
            }

            if (v42 < 0)
            {
              operator delete(v41);
            }
          }

          if (v40 == 1 && v39 < 0)
          {
            operator delete(v38);
          }
        }

        if (SHIBYTE(v32) < 0)
        {
          sub_271127178(a1, v31[0], v31[1]);
        }

        else
        {
          *&a1->__r_.__value_.__l.__data_ = *v31;
          a1->__r_.__value_.__r.__words[2] = v32;
        }

        a1[1].__r_.__value_.__r.__words[0] = v33;
        a1[1].__r_.__value_.__s.__data_[8] = 1;
        v27 = v30;
        if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
          if ((SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_54:
            if ((SHIBYTE(v32) & 0x80000000) == 0)
            {
LABEL_55:
              v13 = v36;
              goto LABEL_56;
            }

LABEL_62:
            operator delete(v31[0]);
            goto LABEL_55;
          }
        }

        else if ((SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

        operator delete(v34.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v32) & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_62;
      }
    }

    v58[0] = "save";
    v58[1] = 4;
    v57 = v17;
    sub_2715E8C50("Failure during ", v58, " from stream with file format ", &v57, ": ");
  }

  if (v15 <= 29)
  {
    if ((v15 - 23) >= 2 && v15 != 29)
    {
      goto LABEL_63;
    }

    goto LABEL_23;
  }

  if ((v15 - 31) < 2)
  {
LABEL_23:
    v16 = ".tiff";
    v18 = 5;
    v17 = 5;
    goto LABEL_26;
  }

  if (v15 == 30)
  {
    goto LABEL_26;
  }

LABEL_63:
  sub_2714E9410(a2, a3, a4, a5, 0, 0, a1);
LABEL_56:
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

void sub_2714E9E74(uint64_t a1, uint64_t a2, void ***a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v127 = *MEMORY[0x277D85DE8];
  if (a6 <= 0x10 && ((1 << a6) & 0x14100) != 0)
  {
    v12 = 0;
    v13 = 1987273518;
  }

  else
  {
    v12 = 1;
    v13 = 1952539694;
  }

  v71 = 4;
  LODWORD(v70[0]) = v13;
  BYTE4(v70[0]) = 0;
  v14 = **a3;
  v15 = *(v14 + 23);
  if ((v15 & 0x8000000000000000) != 0)
  {
    v16 = *v14;
    v15 = *(v14 + 8);
  }

  else
  {
    v16 = **a3;
  }

  if (*(v14 + 48))
  {
    v17 = v14 + 24;
  }

  else
  {
    v17 = 0;
  }

  sub_2714E4488(&v69, a2, v16, v15, v17, *(v14 + 48));
  v18 = a3 + 2;
  sub_2714E50C0(&v68, v18);
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v68.__r_.__value_.__l.__size_;
  }

  if (size + 5 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (size + 5 >= 0x17)
  {
    operator new();
  }

  memset(&v88, 0, sizeof(v88));
  *(&v88.__r_.__value_.__s + 23) = size + 5;
  if (size)
  {
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v68;
    }

    else
    {
      v20 = v68.__r_.__value_.__r.__words[0];
    }

    memmove(&v88, v20, size);
  }

  strcpy(&v88 + size, "_info");
  if (v71 >= 0)
  {
    v21 = v70;
  }

  else
  {
    v21 = v70[0];
  }

  if (v71 >= 0)
  {
    v22 = v71;
  }

  else
  {
    v22 = v70[1];
  }

  v23 = std::string::append(&v88, v21, v22);
  v24 = v23->__r_.__value_.__r.__words[0];
  *&v103 = v23->__r_.__value_.__l.__size_;
  *(&v103 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
  v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(&v103 + 7);
  __dst.__r_.__value_.__r.__words[0] = v24;
  __dst.__r_.__value_.__l.__size_ = v103;
  *(&__dst.__r_.__value_.__s + 23) = v25;
  if (SHIBYTE(v69.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v67, v69.__pn_.__r_.__value_.__l.__data_, v69.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v67 = v69;
  }

  sub_2714D75A8(&v67, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v88.__r_.__value_.__l.__data_);
LABEL_33:
  v26 = ((*v18)[3])(v18);
  v27 = 48;
  if (!*(v26 + 64))
  {
    v27 = 0;
  }

  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v68;
  }

  else
  {
    v28 = v68.__r_.__value_.__r.__words[0];
  }

  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v68.__r_.__value_.__l.__size_;
  }

  sub_2714E4AC4(&v66, &v69, (v26 + v27), v28, v29, a4, a5, a7);
  v30 = std::__fs::filesystem::path::__filename(&v66);
  if (v30.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v30.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v30.__size_;
  if (v30.__size_)
  {
    memmove(&__dst, v30.__data_, v30.__size_);
  }

  __dst.__r_.__value_.__s.__data_[v30.__size_] = 0;
  v31 = *&__dst.__r_.__value_.__l.__data_;
  LODWORD(v103) = __dst.__r_.__value_.__r.__words[2];
  *(&v103 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
  v32 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  v33 = sub_2714FC508(v18);
  if (v32 < 0)
  {
    sub_271127178(&v88, v31, *(&v31 + 1));
  }

  else
  {
    *&v88.__r_.__value_.__l.__data_ = v31;
    LODWORD(v88.__r_.__value_.__r.__words[2]) = v103;
    *(&v88.__r_.__value_.__r.__words[2] + 3) = *(&v103 + 3);
    *(&v88.__r_.__value_.__s + 23) = v32;
  }

  v89 = 0;
  sub_2713B2524(v90, v33);
  if (v32 < 0)
  {
    operator delete(v31);
  }

  LOBYTE(v83) = 0;
  v85 = 0;
  v81 = 0;
  v82 = 0;
  v78 = 0;
  v80 = 0;
  sub_271725008(&v67, 0x11u, a7, &__dst);
  if (v85 == 1)
  {
    v34 = *&__dst.__r_.__value_.__r.__words[1];
    *&__dst.__r_.__value_.__r.__words[1] = 0uLL;
    v35 = *(&v84 + 1);
    v84 = v34;
    if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v35->__on_zero_shared)(v35);
      std::__shared_weak_count::__release_weak(v35);
    }
  }

  else
  {
    v83 = &unk_288115240;
    v84 = *&__dst.__r_.__value_.__r.__words[1];
    *&__dst.__r_.__value_.__r.__words[1] = 0uLL;
    v85 = 1;
  }

  v36 = __dst.__r_.__value_.__r.__words[2];
  if (__dst.__r_.__value_.__r.__words[2] && !atomic_fetch_add((__dst.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  if ((v85 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&v103, v67.__pn_.__r_.__value_.__l.__data_, v67.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v103 = *&v67.__pn_.__r_.__value_.__l.__data_;
      *&v104 = *(&v67.__pn_.__r_.__value_.__l + 2);
    }

    sub_2714D199C("Failed to write to file: ", &v103, &__dst);
    std::runtime_error::runtime_error(exception, &__dst);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v37 = (*(*v84 + 16))(v84);
  v38 = v37;
  v39 = v37 + *(*v37 - 24);
  if ((v39[32] & 5) != 0)
  {
    v40 = -1;
    v41 = v37 + *(*v37 - 24);
    if ((v41[32] & 5) != 0)
    {
LABEL_65:
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v111 = -1;
      goto LABEL_68;
    }
  }

  else
  {
    (*(**(v39 + 5) + 32))(&__dst);
    v40 = v119;
    v41 = v38 + *(*v38 - 24);
    if ((v41[32] & 5) != 0)
    {
      goto LABEL_65;
    }
  }

  (*(**(v41 + 5) + 32))(&v103);
LABEL_68:
  if (v12)
  {
    __dst.__r_.__value_.__l.__size_ = 1;
    __dst.__r_.__value_.__r.__words[0] = &unk_288116C00;
    __dst.__r_.__value_.__r.__words[2] = &unk_288116D50;
    operator new();
  }

  v72[0] = &unk_288117210;
  v72[1] = 0x400000001;
  v73 = &unk_288117360;
  v74 = v38;
  qmemcpy(v75, ",\n|", 3);
  v76 = 0;
  v77 = 0;
  *(&__dst.__r_.__value_.__s + 23) = 1;
  LOWORD(__dst.__r_.__value_.__l.__data_) = 44;
  v87 = 1;
  *v86 = 10;
  sub_27183CA64(&__dst, v86, 124);
  v72[0] = &unk_288117390;
  v73 = &unk_2881174E0;
  if (v76)
  {
    __dst.__r_.__value_.__s.__data_[0] = v75[0];
    sub_271120E64(v74, &__dst, 1);
  }

  MEMORY[0x2743BE7F0](v74, 3);
  ++v76;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__dst, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v88;
  }

  v113 = v89;
  sub_2713B3058(v114, v90);
  sub_271839128(v72, &__dst);
  if (v76)
  {
    v86[0] = v75[0];
    sub_271120E64(v74, v86, 1);
  }

  MEMORY[0x2743BE850](v74, v113);
  if (!__CFADD__(v76++, 1))
  {
    v86[0] = v75[0];
    sub_271120E64(v74, v86, 1);
  }

  MEMORY[0x2743BE7F0](v74, 6);
  ++v76;
  sub_2713B8374(v72, v114, 6u);
  v43 = v75[1];
  if (v76)
  {
    v86[0] = v75[0];
    sub_271120E64(v74, v86, 1);
  }

  v86[0] = v43;
  sub_271120E64(v74, v86, 1);
  ++v76;
  if (v126 == 1)
  {
    v44 = __p;
    if (__p)
    {
      v45 = v125;
      v46 = __p;
      if (v125 != __p)
      {
        do
        {
          v47 = *(v45 - 1);
          v45 -= 3;
          if (v47 < 0)
          {
            operator delete(*v45);
          }
        }

        while (v45 != v44);
        v46 = __p;
      }

      v125 = v44;
      operator delete(v46);
    }
  }

  if (v123 == 1 && v122 < 0)
  {
    operator delete(v121);
  }

  if (v120 == 1 && SHIBYTE(v119) < 0)
  {
    operator delete(v118);
  }

  if (v117 == 1 && v116 < 0)
  {
    operator delete(v115);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    v48 = v75[1];
    if (!v76)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

  v48 = v75[1];
  if (v76)
  {
LABEL_103:
    __dst.__r_.__value_.__s.__data_[0] = v75[0];
    sub_271120E64(v74, &__dst, 1);
  }

LABEL_104:
  __dst.__r_.__value_.__s.__data_[0] = v48;
  sub_271120E64(v74, &__dst, 1);
  v49 = v76 + 1;
  v76 = 0;
  v77 = v49;
  __dst.__r_.__value_.__s.__data_[0] = HIBYTE(v75[0]);
  sub_271120E64(v74, &__dst, 1);
  v50 = v81;
  if (v81)
  {
    v51 = *(v81 + 312);
    if (v51 <= 0x19000)
    {
      v53 = v38 + *(*v38 - 24);
      if ((v53[32] & 5) != 0)
      {
        v54 = -1;
      }

      else
      {
        v55 = v81;
        (*(**(v53 + 5) + 32))(&__dst);
        v54 = v119;
        v50 = v55;
        v51 = *(v55 + 312);
      }

      *(v50 + 312) = v54 + v51 - v111;
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      LOBYTE(v113) = 0;
      if (v80 == 1)
      {
        __dst.__r_.__value_.__r.__words[0] = &unk_288115240;
        *&__dst.__r_.__value_.__r.__words[1] = v79;
        v79 = 0uLL;
        LOBYTE(v113) = 1;
      }

      sub_2714DE8E4(v81, &__dst);
      if (v113 == 1)
      {
        v52 = __dst.__r_.__value_.__r.__words[2];
        if (__dst.__r_.__value_.__r.__words[2])
        {
          if (!atomic_fetch_add((__dst.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v52->__on_zero_shared)(v52);
            std::__shared_weak_count::__release_weak(v52);
          }
        }
      }
    }
  }

  if (SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v64, v67.__pn_.__r_.__value_.__l.__data_, v67.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v64 = v67;
  }

  v65 = v40 & ~(v40 >> 63);
  if (v80 == 1)
  {
    v56 = *(&v79 + 1);
    if (*(&v79 + 1))
    {
      if (!atomic_fetch_add((*(&v79 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v56->__on_zero_shared)(v56);
        std::__shared_weak_count::__release_weak(v56);
      }
    }
  }

  v57 = v82;
  if (v82 && !atomic_fetch_add(&v82->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v57->__on_zero_shared)(v57);
    std::__shared_weak_count::__release_weak(v57);
    if (v85 != 1)
    {
      goto LABEL_130;
    }
  }

  else if (v85 != 1)
  {
    goto LABEL_130;
  }

  v58 = *(&v84 + 1);
  if (*(&v84 + 1) && !atomic_fetch_add((*(&v84 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v58->__on_zero_shared)(v58);
    std::__shared_weak_count::__release_weak(v58);
  }

LABEL_130:
  if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(a1, v64.__pn_.__r_.__value_.__l.__data_, v64.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    *a1 = v64;
  }

  *(a1 + 24) = v65;
  if (SHIBYTE(v66.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178((a1 + 32), v66.__pn_.__r_.__value_.__l.__data_, v66.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 32) = v66;
  }

  if (SHIBYTE(v64.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__pn_.__r_.__value_.__l.__data_);
    if (v102 != 1)
    {
      goto LABEL_148;
    }
  }

  else if (v102 != 1)
  {
    goto LABEL_148;
  }

  v59 = v100;
  if (v100)
  {
    v60 = v101;
    v61 = v100;
    if (v101 != v100)
    {
      do
      {
        v62 = *(v60 - 1);
        v60 -= 3;
        if (v62 < 0)
        {
          operator delete(*v60);
        }
      }

      while (v60 != v59);
      v61 = v100;
    }

    v101 = v59;
    operator delete(v61);
  }

LABEL_148:
  if (v99 == 1 && v98 < 0)
  {
    operator delete(v97);
  }

  if (v96 == 1 && v95 < 0)
  {
    operator delete(v94);
  }

  if (v93 == 1 && v92 < 0)
  {
    operator delete(v91);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v66.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_159:
      if ((SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_166;
    }
  }

  else if ((SHIBYTE(v66.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_159;
  }

  operator delete(v66.__pn_.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v67.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_160:
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_167;
  }

LABEL_166:
  operator delete(v67.__pn_.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_161:
    if ((SHIBYTE(v69.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_168;
  }

LABEL_167:
  operator delete(v68.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v69.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_162:
    if ((v71 & 0x80000000) == 0)
    {
      return;
    }

LABEL_169:
    operator delete(v70[0]);
    return;
  }

LABEL_168:
  operator delete(v69.__pn_.__r_.__value_.__l.__data_);
  if (v71 < 0)
  {
    goto LABEL_169;
  }
}

void sub_2714EAFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, int a57, __int16 a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (a56 == 1)
  {
    sub_2717255F4(&a53);
  }

  sub_27112F828(&a58);
  if (a63 == 1)
  {
    sub_2717255F4(&a60);
  }

  sub_2714D7700(&a65);
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
LABEL_11:
    if (a33 < 0)
    {
      operator delete(a28);
      if ((a39 & 0x80000000) == 0)
      {
LABEL_13:
        if ((a45 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_17;
      }
    }

    else if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    operator delete(a34);
    if ((a45 & 0x80000000) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_17:
    operator delete(a40);
    _Unwind_Resume(a1);
  }

  operator delete(a22);
  goto LABEL_11;
}

uint64_t sub_2714EB248(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

void sub_2714EB2A4(std::string *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    v12 = __dynamic_cast(v10, &unk_28811D1B0, &unk_28811DB58, 0) != 0;
    if (!v11)
    {
LABEL_8:
      if (v12)
      {
        goto LABEL_9;
      }

LABEL_14:
      v13 = 0;
      v53 = 0;
      v54 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v12 = 0;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_9:
  v14 = *(a3 + 24);
  v13 = *(a3 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v53 = v14;
  v54 = v13;
  if (!v14)
  {
LABEL_15:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 866, "mesh_data_ptr", 0xDuLL, "ExportMeshData requires data to be MeshData", 0x2BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v16 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_22:
        qword_28087C420(*algn_28087C428, "mesh_data_ptr", 13, "ExportMeshData requires data to be MeshData", 43);
        v14 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v16 = qword_28087C408;
      v15 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_59;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "mesh_data_ptr", 13, "ExportMeshData requires data to be MeshData", 43);
      v16 += 16;
    }

    while (v16 != v15);
    if (byte_28087C430)
    {
      goto LABEL_22;
    }

LABEL_59:
    abort();
  }

LABEL_23:
  v17 = sub_27171D0B0(*(v14 + 16), 0);
  if (a4 == 64 || ((v17 == 2) & ~*(*(v14 + 16) + 408)) != 0)
  {
    if (a4 == 64 && !v17)
    {
      exception = __cxa_allocate_exception(0x88uLL);
      sub_27112B400(v36, ".obj");
      sub_27112B400(v40, "mesh is required to have per-vertex colors and normals");
      sub_2714C3178(v36, v40, &v24);
      v42 = v24;
      LOBYTE(v43) = 0;
      v52 = 0;
      if (v34 == 1)
      {
        v45 = 0;
        if (v27 == 1)
        {
          v43 = v25;
          v44 = v26;
          v26 = 0;
          v25 = 0uLL;
          v45 = 1;
        }

        LOBYTE(v46) = 0;
        v51 = 0;
        if (v33 == 1)
        {
          v47 = v29;
          v46 = *v28;
          v28[0] = 0;
          v28[1] = 0;
          v48 = v30;
          v49 = *v31;
          v50 = v32;
          v29 = 0;
          v31[0] = 0;
          v31[1] = 0;
          v32 = 0;
          v51 = 1;
        }

        v52 = 1;
      }

      sub_2714EC7BC(exception, &v42);
    }

    sub_2714E9E74(v36, a2, a3, ".obj", 4, a4, a5);
    sub_271725008(&v39, 0x30u, a5, v40);
    if (SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&__p, v39.__pn_.__r_.__value_.__l.__data_, v39.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v39;
    }

    sub_27171D49C(&__p, *(v14 + 16), a5, &v24);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    if ((v35 & 1) == 0)
    {
      v22 = sub_271389D20(&v24);
      sub_27139601C(v22);
    }

    if (SHIBYTE(v37) < 0)
    {
      sub_271127178(a1, v36[0], v36[1]);
      v19 = v35;
      a1[1].__r_.__value_.__r.__words[0] = v38;
      a1[1].__r_.__value_.__s.__data_[8] = 1;
      if ((v19 & 1) == 0 && v34 == 1)
      {
        if (v33 == 1)
        {
          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31[0]);
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(v28[0]);
          }
        }

        if (v27 == 1 && SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *v36;
      v18 = v38;
      a1->__r_.__value_.__r.__words[2] = v37;
      a1[1].__r_.__value_.__r.__words[0] = v18;
      a1[1].__r_.__value_.__s.__data_[8] = 1;
    }

    v20 = v41;
    if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      if ((SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_50:
        if ((SHIBYTE(v37) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_55;
      }
    }

    else if ((SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    operator delete(v39.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
LABEL_51:
      v13 = v54;
      if (!v54)
      {
        return;
      }

      goto LABEL_56;
    }

LABEL_55:
    operator delete(v36[0]);
    v13 = v54;
    if (!v54)
    {
      return;
    }

    goto LABEL_56;
  }

  sub_2714E9410(a2, a3, a4, a5, 0, 0, a1);
  if (!v13)
  {
    return;
  }

LABEL_56:
  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }
}

void sub_2714EB878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27112D71C(v51 - 224);
  sub_27112D71C(&a18);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
    if ((v50 & 1) == 0)
    {
LABEL_8:
      sub_27112F828(v51 - 104);
      _Unwind_Resume(a1);
    }
  }

  else if (!v50)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v49);
  sub_27112F828(v51 - 104);
  _Unwind_Resume(a1);
}

uint64_t sub_2714EB974(uint64_t a1, __int128 *a2, int a3)
{
  *(a1 + 176) = 0;
  v6 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v7 = a1 + 16;
  v8 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v9 = a1 + 24;
  v10 = MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 24);
  v12 = *(MEMORY[0x277D82818] + 16);
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v11;
  *(a1 + 8) = 0;
  v13 = (a1 + *(*a1 - 24));
  std::ios_base::init(v13, (a1 + 24));
  v14 = MEMORY[0x277D82890] + 24;
  v13[1].__vftable = 0;
  v13[1].__fmtflags_ = -1;
  v15 = v10[5];
  v16 = v10[4];
  *(a1 + 16) = v16;
  *(v7 + *(v16 - 24)) = v15;
  v17 = v10[1];
  *a1 = v17;
  *(a1 + *(v17 - 24)) = v10[6];
  *a1 = v14;
  *(a1 + 128) = v6;
  v18 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v8;
  *(a1 + 24) = v18;
  MEMORY[0x2743BED80](a1 + 32);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  v19 = *a2;
  *(a1 + 104) = *(a2 + 2);
  *(a1 + 88) = v19;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a3;
  sub_271129318(v9);
  return a1;
}

void sub_2714EBC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 111) < 0)
  {
    operator delete(*(v10 + 88));
  }

  *(v10 + 24) = v11;
  std::locale::~locale((v10 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743BEF20](a10);
  _Unwind_Resume(a1);
}

void sub_2714EBCEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714EBD40(uint64_t a1)
{
  v6[0] = 0;
  v8 = 0;
  sub_2714DE8E4(a1 + 24, v6);
  if (v8 == 1)
  {
    v2 = v7;
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }
  }

  v3 = MEMORY[0x277D82818];
  v4 = *MEMORY[0x277D82818];
  *(a1 + 48) = *MEMORY[0x277D82818];
  v5 = *(v3 + 72);
  *(a1 + 48 + *(v4 - 24)) = *(v3 + 64);
  *(a1 + 64) = v5;
  *(a1 + 72) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  *(a1 + 72) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 80));
  std::iostream::~basic_iostream();
  MEMORY[0x2743BEF20](a1 + 176);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

uint64_t sub_2714EBF30(uint64_t a1, uint64_t a2)
{
  *(a1 + 176) = 0;
  *(a1 + 128) = MEMORY[0x277D828C0] + 16;
  v4 = MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 24);
  v6 = *(MEMORY[0x277D82818] + 16);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v7 = (a1 + *(*a1 - 24));
  v8 = (a2 + *(*a2 - 24));
  std::ios_base::move(v7, v8);
  v7[1].__vftable = v8[1].__vftable;
  v8[1].__vftable = 0;
  v7[1].__fmtflags_ = v8[1].__fmtflags_;
  v9 = v4[5];
  v10 = v4[4];
  *(a1 + 16) = v10;
  *(a1 + 16 + *(v10 - 24)) = v9;
  v11 = v4[1];
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v4[6];
  *a1 = MEMORY[0x277D82890] + 24;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743BED80](a1 + 32);
  *(a1 + 88) = 0;
  v12 = (a1 + 88);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = *(a2 + 120);
  v13 = (a2 + 88);
  if (*(a2 + 111) >= 0)
  {
    v14 = a2 + 88;
  }

  else
  {
    v14 = *(a2 + 88);
  }

  v15 = *(a2 + 40);
  if (v15)
  {
    v16 = v15 - v14;
    v17 = *(a2 + 48) - v14;
    v18 = *(a2 + 56) - v14;
    v19 = *(a2 + 64);
    if (v19)
    {
LABEL_6:
      v20 = v19 - v14;
      v21 = *(a2 + 72) - v14;
      v22 = *(a2 + 80) - v14;
      goto LABEL_9;
    }
  }

  else
  {
    v18 = -1;
    v17 = -1;
    v16 = -1;
    v19 = *(a2 + 64);
    if (v19)
    {
      goto LABEL_6;
    }
  }

  v20 = -1;
  v21 = -1;
  v22 = -1;
LABEL_9:
  v23 = *(a2 + 112);
  v24 = v23 - v14;
  if (!v23)
  {
    v24 = -1;
  }

  v25 = *v13;
  *(a1 + 104) = *(a2 + 104);
  *v12 = v25;
  *(a2 + 111) = 0;
  *(a2 + 88) = 0;
  v26 = a1 + 88;
  if (*(a1 + 111) < 0)
  {
    v26 = *v12;
  }

  if (v16 != -1)
  {
    *(a1 + 40) = v26 + v16;
    *(a1 + 48) = v26 + v17;
    *(a1 + 56) = v26 + v18;
  }

  if (v20 != -1)
  {
    *(a1 + 80) = v26 + v22;
    *(a1 + 64) = v26 + v20;
    *(a1 + 72) = v26 + v20 + v21;
  }

  v27 = v26 + v24;
  if (v24 == -1)
  {
    v27 = 0;
  }

  *(a1 + 112) = v27;
  if (*(a2 + 111) < 0)
  {
    v13 = *(a2 + 88);
  }

  *(a2 + 40) = v13;
  *(a2 + 48) = v13;
  *(a2 + 56) = v13;
  *(a2 + 64) = v13;
  *(a2 + 72) = v13;
  *(a2 + 80) = v13;
  *(a2 + 112) = v13;
  std::locale::locale(&v29, (a2 + 32));
  (*(*(a1 + 24) + 16))(a1 + 24, &v29);
  std::locale::locale(&v30, (a1 + 32));
  std::locale::operator=((a1 + 32), &v29);
  std::locale::~locale(&v30);
  std::locale::~locale(&v29);
  *(a1 + *(*a1 - 24) + 40) = a1 + 24;
  return a1;
}

void sub_2714EC3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  if (*(v9 + 111) < 0)
  {
    operator delete(*v12);
  }

  *(v9 + 24) = v11;
  std::locale::~locale((v9 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743BEF20](v10);
  _Unwind_Resume(a1);
}

void *sub_2714EC420(void *result)
{
  *(result - 2) = &unk_288116C00;
  v1 = result[1];
  *result = &unk_288116D50;
  result[1] = 0;
  if (v1)
  {
    v2 = *(v1 + 80);
    if (v2)
    {
      *(v1 + 88) = v2;
      operator delete(v2);
    }

    if (*(v1 + 72) == 1)
    {
      free(*(v1 + 56));
    }

    if (*(v1 + 40) == 1)
    {
      free(*(v1 + 24));
    }

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t *sub_2714EC4E8(uint64_t *result)
{
  if (*(result + 120) == 1)
  {
    v1 = *result;
    *result = 0;
    if (v1)
    {
      v2 = result;
      sub_2715CC40C(v1 + 1, *v1);
      MEMORY[0x2743BF050](v1, 0x1022C40B06DCE69);
      return v2;
    }
  }

  else if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v3 = result;
        operator delete(result[10]);
        result = v3;
      }

      if (*(result + 71) < 0)
      {
        v4 = result;
        operator delete(result[6]);
        result = v4;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v5 = result;
      operator delete(result[2]);
      return v5;
    }
  }

  return result;
}

void sub_2714EC5D0(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    *(a1 + 40) = 1;
    sub_2714FCC00(*(a1 + 8) + 16);
    v2 = v8;
    v3 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v2 = __p[1];
    }

    if (v2 != 8)
    {
      goto LABEL_8;
    }

    v4 = __p[0];
    if ((v8 & 0x80u) == 0)
    {
      v4 = __p;
    }

    if (*v4 != 0x7A69762E64337663)
    {
      goto LABEL_8;
    }

    if (v9 > 6)
    {
      v5 = a1;
      if (v9 > 10)
      {
        if ((v9 - 12) >= 2)
        {
          if (v9 == 11)
          {
            *(a1 + 41) = 1;
            *(a1 + 52) = 4;
            goto LABEL_8;
          }

          if (v9 == 14)
          {
            goto LABEL_33;
          }

          goto LABEL_8;
        }

LABEL_18:
        *(v5 + 42) = 1;
        goto LABEL_8;
      }

      if (v9 == 7)
      {
        *(a1 + 44) = 1;
        v6 = 6;
        goto LABEL_29;
      }

      if (v9 != 8 && v9 != 10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v9 <= 4)
      {
        v5 = a1;
        if ((v9 - 2) >= 3)
        {
          if (v9 == 1)
          {
            *(a1 + 44) = 1;
            v6 = 5;
LABEL_29:
            *(v5 + 48) = v6;
            goto LABEL_8;
          }

          if (!v9)
          {
LABEL_33:
            sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/FileIOPrivate.cpp", 684, "", 0, "invalid data type", 0x11uLL, sub_271852CA8);
            abort();
          }

LABEL_8:
          if (v3 < 0)
          {
            operator delete(__p[0]);
          }

          return;
        }

        goto LABEL_18;
      }

      if (v9 != 5)
      {
        *(a1 + 56) = 3;
        goto LABEL_8;
      }
    }

    *(a1 + 41) = 1;
    *(a1 + 52) = 2;
    goto LABEL_8;
  }
}

void sub_2714EC7A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714ECAA8(_Unwind_Exception *a1)
{
  sub_27112D66C(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void sub_2714ECAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714ECAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  v29 = *(v27 - 56);
  *(v27 - 56) = 0;
  if (v29)
  {
    sub_27184D728(v27 - 56, v29);
  }

  sub_271130878(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_2714ECB9C(uint64_t a1)
{
  *a1 = &unk_288114B60;
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(a1 + 24))();
  }

  return a1;
}

void sub_2714ECC04(uint64_t a1)
{
  *a1 = &unk_288114B60;
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(a1 + 24))();
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714ECC94(uint64_t result, unsigned __int8 *a2)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v2 = *(result + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(result);
    v7 = *v6;
    *v6 = 4;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ECD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715CC40C(va, 4);
  _Unwind_Resume(a1);
}

void sub_2714ECD50(uint64_t result, char *a2)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v2 = *(result + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(result);
    v7 = *v6;
    *v6 = 5;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ECDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715CC40C(va, 5);
  _Unwind_Resume(a1);
}

void sub_2714ECE0C(uint64_t result, __int16 *a2)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v2 = *(result + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(result);
    v7 = *v6;
    *v6 = 5;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ECEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715CC40C(va, 5);
  _Unwind_Resume(a1);
}

void sub_2714ECEC8(uint64_t result, int *a2)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v2 = *(result + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(result);
    v7 = *v6;
    *v6 = 5;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ECF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715CC40C(va, 5);
  _Unwind_Resume(a1);
}

void sub_2714ECF84(uint64_t result, void ***a2)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v2 = *(result + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(result);
    v7 = *v6;
    *v6 = 5;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715CC40C(va, 5);
  _Unwind_Resume(a1);
}

void sub_2714ED040(uint64_t result, void ***a2)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v2 = *(result + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(result);
    v7 = *v6;
    *v6 = 5;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715CC40C(va, 5);
  _Unwind_Resume(a1);
}

void sub_2714ED0FC(uint64_t result, unsigned __int8 *a2)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v2 = *(result + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(result);
    v7 = *v6;
    *v6 = 6;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715CC40C(va, 6);
  _Unwind_Resume(a1);
}

void sub_2714ED1B8(uint64_t result, char *a2)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v2 = *(result + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(result);
    v7 = *v6;
    *v6 = 5;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715CC40C(va, 5);
  _Unwind_Resume(a1);
}

void sub_2714ED274(uint64_t result, unsigned __int16 *a2)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v2 = *(result + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(result);
    v7 = *v6;
    *v6 = 6;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715CC40C(va, 6);
  _Unwind_Resume(a1);
}

void sub_2714ED330(uint64_t result, _DWORD *a2)
{
  if (*(result + 88) == 1 && *(result + 80) == 7 && ((v2 = *(result + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), v5))
  {
    *(result + 96) = *a2;
    *(result + 100) = 1;
    *(result + 88) = 0;
  }

  else
  {
    v9 = *a2;
    v6 = sub_2718289B0(result);
    v7 = *v6;
    *v6 = 6;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715CC40C(va, 6);
  _Unwind_Resume(a1);
}

void sub_2714ED410(uint64_t result, void ***a2)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v2 = *(result + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(result);
    v7 = *v6;
    *v6 = 6;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715CC40C(va, 6);
  _Unwind_Resume(a1);
}

void sub_2714ED4CC(uint64_t result, void ***a2)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v2 = *(result + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v9 = *a2;
    v6 = sub_2718289B0(result);
    v7 = *v6;
    *v6 = 6;
    v8 = v6[1];
    v6[1] = v9;
    v9 = v8;
    sub_2715CC40C(&v9, v7);
  }
}

void sub_2714ED56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715CC40C(va, 6);
  _Unwind_Resume(a1);
}

void sub_2714ED588(uint64_t result, float *a2)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v2 = *(result + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    sub_27182ADE0(result, a2);
  }
}

void sub_2714ED5D0(uint64_t result, double *a2)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v2 = *(result + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    sub_27182AFE4(result, a2);
  }
}

void sub_2714ED61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182CE6C(a1, v3);
}

void sub_2714ED644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182B308(a1, v3);
}

void sub_2714ED66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182B5E0(a1, v3);
}

void sub_2714ED694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182B8F0(a1, v3);
}

void sub_2714ED6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182BC00(a1, v3);
}

void sub_2714ED6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182BF10(a1, v3);
}

void sub_2714ED70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_271828DE4(a1, v3);
}

void sub_2714ED734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182B474(a1, v3);
}

void sub_2714ED75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182B768(a1, v3);
}

void sub_2714ED784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182BA78(a1, v3);
}

void sub_2714ED7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182BD88(a1, v3);
}

void sub_2714ED7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182C098(a1, v3);
}

void sub_2714ED7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182C644(a1, v3);
}

void sub_2714ED824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182CAA4(a1, v3);
}

void sub_2714ED84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  sub_27182CFC4(a1, v3);
}

void sub_2714ED878(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  sub_271828DE4(a1, v3);
}

void *sub_2714ED8BC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2714EDCBC(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_2714ED9BC(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132648[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2714EDAB0(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v4 = *a2;
  v16[0] = *(a2 + 8);
  v3 = v16[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v4;
  *v12 = v3;
  *&v12[7] = *(v16 + 7);
  v13 = v5;
  memset(v16, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v15 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_288132648[v9])(&v10, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if ((v15 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v11);
    return;
  }

  operator delete(__p);
  if (v13 < 0)
  {
    goto LABEL_13;
  }
}

void sub_2714EDC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2714EDCBC(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2714EDE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2714EE074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (!v11)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a10, v11);
  _Unwind_Resume(exception_object);
}

void sub_2714EE0A0(uint64_t *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v17 + 7) = *(a2 + 15);
  v5 = *a2;
  v17[0] = *(a2 + 8);
  v4 = v17[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = v5;
  *v13 = v4;
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  memset(v17, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288132648[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v12, 2uLL);
  *(v3 + 24) = 2;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12);
    return;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_13;
  }
}

void sub_2714EE264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714EE2BC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2714EE4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_2714EE518(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132648[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void *sub_2714EE61C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2714EE928(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_2714EE71C(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v4 = *a2;
  v16[0] = *(a2 + 8);
  v3 = v16[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v4;
  *v12 = v3;
  *&v12[7] = *(v16 + 7);
  v13 = v5;
  memset(v16, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v15 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_288132648[v9])(&v10, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if ((v15 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v11);
    return;
  }

  operator delete(__p);
  if (v13 < 0)
  {
    goto LABEL_13;
  }
}

void sub_2714EE8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2714EE928(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2714EEAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_2714EEAD8(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132648[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2714EEBCC(uint64_t *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v17 + 7) = *(a2 + 15);
  v5 = *a2;
  v17[0] = *(a2 + 8);
  v4 = v17[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = v5;
  *v13 = v4;
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  memset(v17, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288132648[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v12, 2uLL);
  *(v3 + 24) = 2;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12);
    return;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_13;
  }
}

void sub_2714EED90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714EEDE8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2714EF028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_2714EF044(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288132648[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2714EF138(uint64_t *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v17 + 7) = *(a2 + 15);
  v5 = *a2;
  v17[0] = *(a2 + 8);
  v4 = v17[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = v5;
  *v13 = v4;
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  memset(v17, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288132648[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v12, 2uLL);
  *(v3 + 24) = 2;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12);
    return;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_13;
  }
}

void sub_2714EF2FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714EF354(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2714EF594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2714EF5B0(void *a1)
{
  *a1 = &unk_288116C00;
  v1 = a1[3];
  a1[2] = &unk_288116D50;
  a1[3] = 0;
  if (v1)
  {
    v2 = *(v1 + 80);
    if (v2)
    {
      *(v1 + 88) = v2;
      operator delete(v2);
    }

    if (*(v1 + 72) == 1)
    {
      free(*(v1 + 56));
    }

    if (*(v1 + 40) == 1)
    {
      free(*(v1 + 24));
    }

    MEMORY[0x2743BF050](v1, 0x1030C408C1A3048);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714EF6B4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(*(v1 + 88) - 8);
  sub_2718404E0((v1 + 48), *(v1 + 16) - v2 - 9);
  v3 = *(v1 + 48);
  if (v3)
  {
    memmove((*(v1 + 24) + v2), *(v1 + 56), v3);
  }

  *(v1 + 48) = 0;
  v4 = *(v1 + 80);
  v5 = *(v1 + 88) - 8;
  *(v1 + 88) = v5;
  if (v4 == v5)
  {
    std::ostream::write();
    if (*(v1 + 40) == 1)
    {
      free(*(v1 + 24));
      *(v1 + 40) = 0;
    }
  }
}

uint64_t **sub_2714EF750(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40) == 1)
  {
    v4 = v2 + 16;
    return sub_2718470CC(&v4, a2);
  }

  else
  {
    if (*a2 == 1)
    {
      v5 = -61;
    }

    else
    {
      v6 = -62;
    }

    return std::ostream::write();
  }
}

char *sub_2714EF7E0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40) == 1)
  {
    v5 = v2 + 16;
    return sub_271845378(&v5, a2);
  }

  else
  {
    v4 = *a2;
    if (v4 > -33)
    {
      v6 = *a2;
    }

    else
    {
      v7 = -48;
      v8 = v4;
    }

    return std::ostream::write();
  }
}

_BYTE *sub_2714EF870(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v7[1] = v2;
    v7[2] = v3;
    v7[0] = (v4 + 16);
    return sub_27184561C(v7, *a2);
  }

  else
  {
    v6 = *a2;

    return sub_2718458EC((v4 + 8), v6);
  }
}

_BYTE *sub_2714EF8C8(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v7[1] = v2;
    v7[2] = v3;
    v7[0] = (v4 + 16);
    return sub_271845BC4(v7, *a2);
  }

  else
  {
    v6 = *a2;

    return sub_271845FEC((v4 + 8), v6);
  }
}

_BYTE *sub_2714EF920(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v7[1] = v2;
    v7[2] = v3;
    v7[0] = (v4 + 16);
    return sub_271846460(v7, *a2);
  }

  else
  {
    v6 = *a2;

    return sub_2718469A8((v4 + 8), v6);
  }
}

_BYTE *sub_2714EF978(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v7[1] = v2;
    v7[2] = v3;
    v7[0] = (v4 + 16);
    return sub_271846460(v7, *a2);
  }

  else
  {
    v6 = *a2;

    return sub_2718469A8((v4 + 8), v6);
  }
}

char *sub_2714EF9D0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40) == 1)
  {
    v5 = v2 + 16;
    return sub_2718454CC(&v5, a2);
  }

  else
  {
    v4 = *a2;
    if (v4 < 0)
    {
      v6 = -52;
      v7 = v4;
    }

    else
    {
      v8 = *a2;
    }

    return std::ostream::write();
  }
}

char *sub_2714EFA5C(uint64_t a1, char *a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 40) == 1)
  {
    v5 = v2 + 16;
    return sub_271845378(&v5, a2);
  }

  else
  {
    v4 = *a2;
    if (v4 > -33)
    {
      v6 = *a2;
    }

    else
    {
      v7 = -48;
      v8 = v4;
    }

    return std::ostream::write();
  }
}