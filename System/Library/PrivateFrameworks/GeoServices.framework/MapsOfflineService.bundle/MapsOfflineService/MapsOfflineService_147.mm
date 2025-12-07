void sub_90C788(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if ((sub_683A9C(a2) & 1) == 0)
  {
    operator new();
  }

  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v63 = 1065353216;
  v64 = 1;
  v8 = sub_683938(a2);
  std::to_string(&v58, v8);
  sub_67EDAC(&v59, "{Speed}", &v58.__r_.__value_.__l.__data_, &v58.__r_.__value_.__l.__data_);
  strcpy(&v57, "Speed_Camera_Ahead");
  v57.__r_.__value_.__s.__data_[19] = unk_22A40AB;
  HIDWORD(v57.__r_.__value_.__r.__words[2]) = unk_22A40AC;
  if (*(a2 + 96))
  {
    v9 = "_Speed_Limit_Kph";
  }

  else
  {
    v9 = "_Speed_Limit_Mph";
  }

  std::string::append(&v57, v9, 0x10uLL);
  v10 = sub_683938(a2);
  v11 = sub_6DEFC(v10, *(*(a1 + 2120) + 1000));
  if (v11 <= 1)
  {
    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_61;
      }

      v13 = SHIBYTE(v57.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = v57.__r_.__value_.__l.__size_;
        v24 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v24 - v57.__r_.__value_.__l.__size_ >= 4)
        {
          v25 = v57.__r_.__value_.__r.__words[0];
          *(v57.__r_.__value_.__r.__words[0] + v57.__r_.__value_.__l.__size_) = 1870091359;
          v26 = size + 4;
          if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_59;
          }

          goto LABEL_54;
        }

        if (0x7FFFFFFFFFFFFFF7 - (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v57.__r_.__value_.__l.__size_ + 4 - v24)
        {
          goto LABEL_113;
        }
      }

      else if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) - 19) >= 4)
      {
        v25 = &v57;
        *(&v57.__r_.__value_.__l.__data_ + SHIBYTE(v57.__r_.__value_.__r.__words[2])) = 1870091359;
        v26 = v13 + 4;
        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      }

      operator new();
    }

    v16 = SHIBYTE(v57.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v20 = v57.__r_.__value_.__l.__size_;
      v21 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v21 - v57.__r_.__value_.__l.__size_ >= 4)
      {
        v25 = v57.__r_.__value_.__r.__words[0];
        *(v57.__r_.__value_.__r.__words[0] + v57.__r_.__value_.__l.__size_) = 1701728095;
        v26 = v20 + 4;
        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      }

      if (0x7FFFFFFFFFFFFFF7 - (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v57.__r_.__value_.__l.__size_ + 4 - v21)
      {
        goto LABEL_113;
      }
    }

    else if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) - 19) >= 4)
    {
      v25 = &v57;
      *(&v57.__r_.__value_.__l.__data_ + SHIBYTE(v57.__r_.__value_.__r.__words[2])) = 1701728095;
      v26 = v16 + 4;
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_59;
      }

      goto LABEL_54;
    }

    operator new();
  }

  if (v11 == 2)
  {
    v14 = SHIBYTE(v57.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v17 = v57.__r_.__value_.__l.__size_;
      v18 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v18 - v57.__r_.__value_.__l.__size_ >= 4)
      {
        v25 = v57.__r_.__value_.__r.__words[0];
        *(v57.__r_.__value_.__r.__words[0] + v57.__r_.__value_.__l.__size_) = 2003125855;
        v26 = v17 + 4;
        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      }

      if (0x7FFFFFFFFFFFFFF7 - (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v57.__r_.__value_.__l.__size_ + 4 - v18)
      {
        goto LABEL_113;
      }
    }

    else if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) - 19) >= 4)
    {
      v25 = &v57;
      *(&v57.__r_.__value_.__l.__data_ + SHIBYTE(v57.__r_.__value_.__r.__words[2])) = 2003125855;
      v26 = v14 + 4;
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_59;
      }

      goto LABEL_54;
    }

    operator new();
  }

  if (v11 != 3)
  {
    if (v11 != 4)
    {
      goto LABEL_61;
    }

    v12 = SHIBYTE(v57.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) - 17) < 6)
      {
LABEL_38:
        operator new();
      }

      v25 = &v57;
LABEL_58:
      v29 = v25 + v12;
      *(v29 + 2) = 29285;
      *v29 = 1752452959;
      v26 = v12 + 6;
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_59;
      }

      goto LABEL_54;
    }

    v12 = v57.__r_.__value_.__l.__size_;
    v22 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v22 - v57.__r_.__value_.__l.__size_ >= 6)
    {
      v25 = v57.__r_.__value_.__r.__words[0];
      goto LABEL_58;
    }

    if (0x7FFFFFFFFFFFFFF7 - (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) >= v57.__r_.__value_.__l.__size_ + 6 - v22)
    {
      goto LABEL_38;
    }

LABEL_113:
    sub_3244();
  }

  v15 = SHIBYTE(v57.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v15 = v57.__r_.__value_.__l.__size_;
    v19 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v19 - v57.__r_.__value_.__l.__size_ < 5)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v57.__r_.__value_.__l.__size_ + 5 - v19)
      {
        goto LABEL_113;
      }

LABEL_32:
      operator new();
    }

    v25 = v57.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) - 18) < 5)
    {
      goto LABEL_32;
    }

    v25 = &v57;
  }

  v27 = v25 + v15;
  v27[4] = 121;
  *v27 = 1851870559;
  v26 = v15 + 5;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_59:
    v57.__r_.__value_.__l.__size_ = v26;
    v28 = v25 + v26;
    goto LABEL_60;
  }

LABEL_54:
  *(&v57.__r_.__value_.__s + 23) = v26 & 0x7F;
  v28 = v25 + v26;
LABEL_60:
  *v28 = 0;
LABEL_61:
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v57.__r_.__value_.__l.__size_;
  }

  if (v30 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v30 + 7 >= 0x17)
  {
    operator new();
  }

  v54 = 0uLL;
  v53 = 0;
  HIBYTE(v54) = v30 + 7;
  if (v30)
  {
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v57;
    }

    else
    {
      v31 = v57.__r_.__value_.__r.__words[0];
    }

    memmove(&v53, v31, v30);
  }

  strcpy(&v53 + v30, "_Spoken");
  sub_67E77C(&v59, &v53);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
    if (a3)
    {
      goto LABEL_74;
    }
  }

  else if (a3)
  {
LABEL_74:
    v50 = 0;
    v51 = 0;
    v52 = 301989888;
    strcpy(__p, "Watch_Speed_Spok");
    sub_67E494(&v53, __p);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(*__p);
    }

    sub_680994(a4, &v59, 14, &v53, 1);
    v32 = v56;
    if (v56)
    {
      do
      {
        v33 = *v32;
        sub_55F7FC((v32 + 2));
        operator delete(v32);
        v32 = v33;
      }

      while (v33);
    }

    v34 = v55;
    v55 = 0;
    if (v34)
    {
      operator delete(v34);
    }

    v35 = v53;
    if (v53)
    {
      v36 = v54;
      v37 = v53;
      if (v54 != v53)
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
        v37 = v53;
      }

      *&v54 = v35;
      operator delete(v37);
    }

    goto LABEL_92;
  }

  v47 = 0;
  v48 = 0;
  sub_680484(a4, &v59, 1, &v47);
  v39 = v48;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_92:
  if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

LABEL_108:
    operator delete(v58.__r_.__value_.__l.__data_);
    v40 = *(&v61 + 1);
    if (!*(&v61 + 1))
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  operator delete(v57.__r_.__value_.__l.__data_);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_108;
  }

LABEL_94:
  v40 = *(&v61 + 1);
  if (!*(&v61 + 1))
  {
    goto LABEL_96;
  }

  do
  {
LABEL_95:
    v41 = *v40;
    sub_55F7FC((v40 + 2));
    operator delete(v40);
    v40 = v41;
  }

  while (v41);
LABEL_96:
  v42 = *(&v60 + 1);
  *(&v60 + 1) = 0;
  if (v42)
  {
    operator delete(v42);
  }

  v43 = v59;
  if (v59)
  {
    v44 = *(&v59 + 1);
    v45 = v59;
    if (*(&v59 + 1) != v59)
    {
      do
      {
        v46 = *(v44 - 1);
        v44 -= 3;
        if (v46 < 0)
        {
          operator delete(*v44);
        }
      }

      while (v44 != v43);
      v45 = v59;
    }

    *(&v59 + 1) = v43;
    operator delete(v45);
  }
}

void sub_90D2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  sub_53A58C(&a17);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  sub_53A58C((v41 - 160));
  _Unwind_Resume(a1);
}

void sub_90D3B8(uint64_t a1@<X8>)
{
  sub_67E494(&v12, &qword_27B10D8);
  v10 = 0;
  v11 = 0;
  sub_680484(a1, &v12, 1, &v10);
  v2 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = v15;
  if (v15)
  {
    do
    {
      v4 = *v3;
      sub_55F7FC((v3 + 2));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = __p;
  __p = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v12;
  if (v12)
  {
    v7 = v13;
    v8 = v12;
    if (v13 != v12)
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
      v8 = v12;
    }

    v13 = v6;
    operator delete(v8);
  }
}

void sub_90D4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_90D4E8(uint64_t a1@<X8>)
{
  sub_67E494(&v12, &qword_27B10F0);
  v10 = 0;
  v11 = 0;
  sub_680484(a1, &v12, 1, &v10);
  v2 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = v15;
  if (v15)
  {
    do
    {
      v4 = *v3;
      sub_55F7FC((v3 + 2));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = __p;
  __p = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v12;
  if (v12)
  {
    v7 = v13;
    v8 = v12;
    if (v13 != v12)
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
      v8 = v12;
    }

    v13 = v6;
    operator delete(v8);
  }
}

void sub_90D5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_90D618(uint64_t a1@<X8>)
{
  sub_67E494(&v12, &qword_27B1090);
  v10 = 0;
  v11 = 0;
  sub_680484(a1, &v12, 1, &v10);
  v2 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = v15;
  if (v15)
  {
    do
    {
      v4 = *v3;
      sub_55F7FC((v3 + 2));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = __p;
  __p = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v12;
  if (v12)
  {
    v7 = v13;
    v8 = v12;
    if (v13 != v12)
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
      v8 = v12;
    }

    v13 = v6;
    operator delete(v8);
  }
}

void sub_90D72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_90D748(uint64_t a1@<X8>)
{
  sub_67E494(&v12, &qword_27B10A8);
  v10 = 0;
  v11 = 0;
  sub_680484(a1, &v12, 1, &v10);
  v2 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = v15;
  if (v15)
  {
    do
    {
      v4 = *v3;
      sub_55F7FC((v3 + 2));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = __p;
  __p = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v12;
  if (v12)
  {
    v7 = v13;
    v8 = v12;
    if (v13 != v12)
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
      v8 = v12;
    }

    v13 = v6;
    operator delete(v8);
  }
}

void sub_90D85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_90D878(uint64_t a1@<X8>)
{
  sub_67E494(&v12, &qword_27B10C0);
  v10 = 0;
  v11 = 0;
  sub_680484(a1, &v12, 1, &v10);
  v2 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = v15;
  if (v15)
  {
    do
    {
      v4 = *v3;
      sub_55F7FC((v3 + 2));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = __p;
  __p = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v12;
  if (v12)
  {
    v7 = v13;
    v8 = v12;
    if (v13 != v12)
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
      v8 = v12;
    }

    v13 = v6;
    operator delete(v8);
  }
}

void sub_90D98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_90D9A8(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 168))(&v5);
  sub_90DC8C(a2, 0, &v4);
  operator new();
}

void sub_90DC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
{
  sub_1F1A8(&a9);
  sub_53A58C(&a11);
  sub_662AC8(&a20);
  _Unwind_Resume(a1);
}

void sub_90DC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_90DC8C(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (*(a1 + 181))
  {
    v6 = "Pass_Entrance";
  }

  else if (*(a1 + 180))
  {
    v6 = "Pass_Exit";
  }

  else
  {
    if (*(a1 + 183))
    {
      v6 = "Pass_Intersection";
    }

    else
    {
      v6 = "Pass_Street";
    }

    if (v6[23] < 0)
    {
      sub_325C(&__p, *v6, *(v6 + 1));
      goto LABEL_11;
    }
  }

  __p = *v6;
LABEL_11:
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 56) = 1065353216;
  *(a3 + 64) = 1;
  if (*(a1 + 180) == 1 && sub_684280(a1))
  {
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v8 - __p.__r_.__value_.__l.__size_ < 0xF)
      {
        if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 15 - v8)
        {
          sub_3244();
        }

LABEL_18:
        operator new();
      }

      p_p = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 8) < 0xF)
      {
        goto LABEL_18;
      }

      p_p = &__p;
    }

    qmemcpy(p_p + size, "_PrevExitNumber", 15);
    v10 = size + 15;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      __p.__r_.__value_.__l.__size_ = size + 15;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v10 & 0x7F;
    }

    p_p->__r_.__value_.__s.__data_[v10] = 0;
    sub_67F2AC(a3, "{PrevExitNumber}", (a1 + 8), 0);
  }

  if (a2)
  {
    v11 = "_Spoken_To_Secondary";
  }

  else
  {
    v11 = "_Spoken_Primary";
  }

  if (a2)
  {
    v12 = 20;
  }

  else
  {
    v12 = 15;
  }

  std::string::append(&__p, v11, v12);
  sub_67E35C(a3, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_90DF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_53A58C(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_90DF74(uint64_t a1, uint64_t a2)
{
  sub_909CBC(a1, 0, 0, 1, &v6);
  sub_90DC8C(a2, 0, &v5);
  sub_8494C8(a1, &v7);
  if (v8 < 0)
  {
    operator delete(v7);
  }

  operator new();
}

void sub_90E290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void **);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  sub_662AC8(va2);
  _Unwind_Resume(a1);
}

void sub_90E2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v23);
  sub_53A58C(&a12);
  sub_662AC8(&a21);
  _Unwind_Resume(a1);
}

void sub_90E2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_90E2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void **);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_53A58C(va);
  sub_662AC8(va1);
  _Unwind_Resume(a1);
}

void sub_90E30C(uint64_t a1@<X1>, void *a2@<X8>, uint64_t a3@<X0>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_6C1460(1, &v57, *(a3 + 2528) - 360);
  sub_90DC8C(a1, 0, &v53);
  nullsub_1();
  LODWORD(v41[0]) = 10;
  v7 = a2[1];
  if (v7 >= a2[2])
  {
    v8 = sub_915678(a2, v6, v41, &v53);
  }

  else
  {
    sub_680994(a2[1], v6, 10, &v53, 1);
    v8 = v7 + 104;
  }

  a2[1] = v8;
  sub_6C1460(1, v41, *(a3 + 2528) - 360);
  v9 = a2[1];
  if (v9 >= a2[2])
  {
    v15.n128_f64[0] = sub_6872EC(a2, v41);
    v16 = v50.n128_u64[1];
    a2[1] = v17;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16, v15.n128_f64[0]);
      std::__shared_weak_count::__release_weak(v16);
    }
  }

  else
  {
    v9->n128_u64[0] = 0;
    v9->n128_u64[1] = 0;
    v9[1].n128_u64[0] = 0;
    *v9 = *v41;
    v9[1].n128_u64[0] = v42;
    v41[0] = 0;
    v41[1] = 0;
    v10 = __p;
    v42 = 0;
    __p = 0;
    v9[1].n128_u64[1] = v10;
    v9[2].n128_u64[0] = v44;
    v44 = 0;
    v11 = v45;
    v9[2].n128_u64[1] = v45;
    v12 = v46;
    v9[3].n128_u64[0] = v46;
    v9[3].n128_u32[2] = v47;
    if (v12)
    {
      v13 = v11[1];
      v14 = v9[2].n128_u64[0];
      if ((v14 & (v14 - 1)) != 0)
      {
        if (v13 >= v14)
        {
          v13 %= v14;
        }
      }

      else
      {
        v13 &= v14 - 1;
      }

      v10[v13] = v9 + 40;
      v45 = 0;
      v46 = 0;
    }

    v9[4].n128_u8[0] = v48;
    v9[4].n128_u32[2] = v49;
    v15 = v50;
    v9[5] = v50;
    v50 = 0uLL;
    v18 = v52;
    v9[6].n128_u16[0] = v51;
    v9[6].n128_u8[2] = v18;
    a2[1] = v9 + 104;
  }

  v19 = v45;
  if (v45)
  {
    do
    {
      v20 = *v19;
      sub_55F7FC((v19 + 2));
      operator delete(v19);
      v19 = v20;
    }

    while (v20);
  }

  v21 = __p;
  __p = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = v41[0];
  if (v41[0])
  {
    v23 = v41[1];
    v24 = v41[0];
    if (v41[1] != v41[0])
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = v41[0];
    }

    v41[1] = v22;
    operator delete(v24);
  }

  v26 = v56;
  if (v56)
  {
    do
    {
      v27 = *v26;
      sub_55F7FC((v26 + 2));
      operator delete(v26);
      v26 = v27;
    }

    while (v27);
  }

  v28 = v55;
  v55 = 0;
  if (v28)
  {
    operator delete(v28);
  }

  v29 = v53;
  if (v53)
  {
    v30 = v54;
    v31 = v53;
    if (v54 != v53)
    {
      do
      {
        v32 = *(v30 - 1);
        v30 -= 3;
        if (v32 < 0)
        {
          operator delete(*v30);
        }
      }

      while (v30 != v29);
      v31 = v53;
    }

    v54 = v29;
    operator delete(v31);
  }

  v33 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33, v15);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = v60;
  if (v60)
  {
    do
    {
      v35 = *v34;
      sub_55F7FC((v34 + 2));
      operator delete(v34);
      v34 = v35;
    }

    while (v35);
  }

  v36 = v59;
  v59 = 0;
  if (v36)
  {
    operator delete(v36);
  }

  v37 = v57;
  if (v57)
  {
    v38 = v58;
    v39 = v57;
    if (v58 != v57)
    {
      do
      {
        v40 = *(v38 - 1);
        v38 -= 3;
        if (v40 < 0)
        {
          operator delete(*v38);
        }
      }

      while (v38 != v37);
      v39 = v57;
    }

    v58 = v37;
    operator delete(v39);
  }
}

void sub_90E6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_662AC8(&a9);
  sub_53A58C(&a23);
  sub_662AC8((v24 - 136));
  sub_681738(v23);
  _Unwind_Resume(a1);
}

void sub_90E70C(_Unwind_Exception *a1)
{
  sub_662AC8((v2 - 136));
  sub_681738(v1);
  _Unwind_Resume(a1);
}

void sub_90E73C(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (*(a1 + 3301))
  {
    v7 = "Dismount";
LABEL_3:
    v27 = *v7;
    v28 = *(v7 + 2);
    goto LABEL_9;
  }

  if (*(a1 + 3302))
  {
    v7 = "Remount";
  }

  else
  {
    v7 = "Mount";
  }

  if ((v7[23] & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  sub_325C(&v27, *v7, *(v7 + 1));
LABEL_9:
  if (v28 >= 0)
  {
    v8 = HIBYTE(v28);
  }

  else
  {
    v8 = *(&v27 + 1);
  }

  if (v8 + 15 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v8 + 15 >= 0x17)
  {
    operator new();
  }

  v25[1] = 0;
  v26 = 0;
  v25[0] = 0;
  HIBYTE(v26) = v8 + 15;
  if (v8)
  {
    if (v28 >= 0)
    {
      v9 = &v27;
    }

    else
    {
      v9 = v27;
    }

    memmove(v25, v9, v8);
  }

  strcpy(v25 + v8, "_Spoken_Primary");
  sub_67E494(&v21, v25);
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  sub_680484(a4, &v21, a3, &v19);
  v11 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v24;
  if (v24)
  {
    do
    {
      v13 = *v12;
      sub_55F7FC((v12 + 2));
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = __p;
  __p = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = v21;
  if (v21)
  {
    v16 = v22;
    v17 = v21;
    if (v22 != v21)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v21;
    }

    v22 = v15;
    operator delete(v17);
  }

  if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v27);
    return;
  }

  operator delete(v25[0]);
  if (SHIBYTE(v28) < 0)
  {
    goto LABEL_41;
  }
}

void sub_90E9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_1F1A8(&a9);
  sub_53A58C(&a11);
  if (a25 < 0)
  {
    operator delete(__p);
    if ((*(v25 - 73) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v25 - 73) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v25 - 96));
  _Unwind_Resume(a1);
}

void sub_90EA30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v50[16] = 0xE00000000000000;
  *v50 = *"Two_Stage_Turn";
  v47 = 0u;
  v48 = 0u;
  v49 = 1065353216;
  if (!sub_734C10(a1 + 760))
  {
    goto LABEL_5;
  }

  strcpy(&v50[14], "_Road");
  v50[23] = 19;
  v43 = "{Road}";
  v4 = sub_666FBC(&v47, "{Road}", &unk_229EB70, &v43);
  sub_52CB8C(v4 + 5, (a1 + 760));
  v5 = v50[23];
  if ((v50[23] & 0x8000000000000000) == 0)
  {
    if ((v50[23] - 8) >= 0xF)
    {
      v6 = v50;
      goto LABEL_63;
    }

LABEL_5:
    operator new();
  }

  v5 = *&v50[8];
  if ((*&v50[16] & 0x7FFFFFFFFFFFFFFFuLL) - 1 - *&v50[8] < 0xF)
  {
    if (0x7FFFFFFFFFFFFFF7 - (*&v50[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&v50[8] + 15 - ((*&v50[16] & 0x7FFFFFFFFFFFFFFFuLL) - 1))
    {
      sub_3244();
    }

    goto LABEL_5;
  }

  v6 = *v50;
LABEL_63:
  qmemcpy(&v6[v5], "_Spoken_Primary", 15);
  v34 = v5 + 15;
  if ((v50[23] & 0x80000000) != 0)
  {
    *&v50[8] = v5 + 15;
  }

  else
  {
    v50[23] = v34 & 0x7F;
  }

  v6[v34] = 0;
  sub_67E4F8(&v43, v50, &v47);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  sub_5F0850(&v36, a1 + 80);
  nullsub_1();
  v8 = *v7;
  v9 = v7[1];
  if (*v7 != v9)
  {
    do
    {
      if (*(v8 + 23) < 0)
      {
        sub_325C(&__p, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&__p.__r_.__value_.__l.__data_ = v10;
      }

      sub_61BA64(&__p, "_Spoken_Primary", "_Spoken_To_Secondary");
      v11 = v41;
      if (v41 >= v42)
      {
        v41 = sub_1CEE8(&v40, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_325C(v41, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          v41 = v11 + 24;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

LABEL_17:
          operator delete(__p.__r_.__value_.__l.__data_);
          goto LABEL_8;
        }

        v12 = *&__p.__r_.__value_.__l.__data_;
        *(v41 + 2) = *(&__p.__r_.__value_.__l + 2);
        *v11 = v12;
        v41 = v11 + 24;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_17;
        }
      }

LABEL_8:
      v8 = (v8 + 24);
    }

    while (v8 != v9);
  }

  sub_67E58C(&v36, &v40);
  sub_680994(a2, &v43, 6, &v36, 1);
  v13 = v39;
  if (v39)
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

  v15 = v38;
  v38 = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v36;
  if (v36)
  {
    v17 = v37;
    v18 = v36;
    if (v37 != v36)
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
      v18 = v36;
    }

    v37 = v16;
    operator delete(v18);
  }

  v20 = v40;
  if (v40)
  {
    v21 = v41;
    v22 = v40;
    if (v41 != v40)
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
      v22 = v40;
    }

    v41 = v20;
    operator delete(v22);
  }

  v24 = v46;
  if (v46)
  {
    do
    {
      v25 = *v24;
      sub_55F7FC((v24 + 2));
      operator delete(v24);
      v24 = v25;
    }

    while (v25);
  }

  v26 = v45;
  v45 = 0;
  if (v26)
  {
    operator delete(v26);
  }

  v27 = v43;
  if (v43)
  {
    v28 = v44;
    v29 = v43;
    if (v44 != v43)
    {
      do
      {
        v30 = *(v28 - 1);
        v28 -= 3;
        if (v30 < 0)
        {
          operator delete(*v28);
        }
      }

      while (v28 != v27);
      v29 = v43;
    }

    v44 = v27;
    operator delete(v29);
  }

  v31 = v48;
  if (v48)
  {
    do
    {
      v32 = *v31;
      sub_55F7FC((v31 + 2));
      operator delete(v31);
      v31 = v32;
    }

    while (v32);
  }

  v33 = v47;
  *&v47 = 0;
  if (v33)
  {
    operator delete(v33);
  }

  if ((v50[23] & 0x80000000) != 0)
  {
    operator delete(*v50);
  }
}

void sub_90EF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, void **a27)
{
  sub_53A58C(&a15);
  sub_1A104(&a24);
  sub_53A58C(&a27);
  sub_540798(v27 - 160);
  if (*(v27 - 89) < 0)
  {
    operator delete(*(v27 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_90EF98(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  if (a1[1936] == 1)
  {
    sub_90EFAC();
  }

  sub_91049C(a1, a2, a3, a4, a5);
}

void sub_9102C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void **a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_662AC8(&a30);
  sub_662AC8(&a68);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  sub_53A58C(&a59);
  if (a66 < 0)
  {
    operator delete(a65);
  }

  sub_1F1A8(&a67);
  sub_662AC8(&STACK[0x250]);
  sub_681738((v68 - 160));
  _Unwind_Resume(a1);
}

void sub_91049C(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  sub_8665EC(a1, a2, a3, a5);
  if (a1[3300] == 1)
  {
    operator new();
  }

  if (a1[2285] == 1)
  {
    sub_908E44(a1, *a5, &qword_27B0670);
  }

  if (a4)
  {
    v8 = 99;
    if (a1[3297])
    {
      v8 = 96;
    }

    v9 = &qword_27B0568;
    if (a1[3297])
    {
      v9 = &xmmword_27B0550;
    }

    v10 = &xmmword_27B0570 + 15;
    if (a1[3297])
    {
      v10 = &byte_27B0567;
    }

    if (*v10 < 0)
    {
      v11 = 99;
      if (a1[3297])
      {
        v11 = 96;
      }

      sub_325C(&v12, qword_27B0250[v8], qword_27B0250[v11 + 1]);
    }

    else
    {
      v12 = *v9;
      v13 = v9[2];
    }

    sub_680CB0(*a5, "_Intersection");
    sub_908E44(a1, *a5, &v12);
  }
}

void sub_91091C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, void **a17)
{
  sub_662AC8(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
    sub_681738(v17);
    _Unwind_Resume(a1);
  }

  sub_681738(v17);
  _Unwind_Resume(a1);
}

void sub_9109D8(uint64_t a1@<X0>, int a2@<W1>, __int128 **a3@<X8>)
{
  v7 = 0;
  v8 = 0;
  sub_680484(a3, a1 + 80, 1, &v7);
  v6 = v8;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  sub_8651B8(a1, a3, 0, 0);
  sub_868248(a1, a3, a2);
}

void sub_91133C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  sub_1F1A8(&a9);
  sub_1F1A8(&a11);
  sub_662AC8(&a13);
  sub_662AC8(&a27);
  sub_1F1A8(v27 - 128);
  _Unwind_Resume(a1);
}

void sub_9113F0(uint64_t a1)
{
  v5 = 0uLL;
  v6 = 0;
  sub_8677A8(a1, &v4);
  operator new();
}

void sub_911BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37)
{
  sub_662AC8(&a9);
  sub_662AC8(&a24);
  sub_662AC8(&a37);
  sub_1F1A8(v37 - 168);
  if (*(v37 - 129) < 0)
  {
    operator delete(*(v37 - 152));
  }

  sub_681738((v37 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_911C9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_6C8F24(a2);
  if (result)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v7 = sub_6C7CD8(a2);
    v8 = *a1;
    if (v7)
    {
      v9 = *(v8 + 152);
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v9 = *(v8 + 160);
      v10 = a1;
      v11 = a2;
    }

    return v9(v10, v11);
  }

  return result;
}

uint64_t sub_911D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_6C8F24(a2);
  if (result)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v7 = (a1 - 2512);
    v8 = sub_6C7CD8(a2);
    v9 = *v7;
    if (v8)
    {
      v10 = *(v9 + 152);
      v11 = v7;
      v12 = a2;
    }

    else
    {
      v10 = *(v9 + 160);
      v11 = v7;
      v12 = a2;
    }

    return v10(v11, v12);
  }

  return result;
}

void sub_911E70(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_5F1934(v3, a1);
  sub_6C7E98(v3, 6);
  sub_6C1460(1, &v2, v3);
  operator new();
}

void sub_912470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void **a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_662AC8(&a23);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_662AC8(&a42);
  sub_5C3168(&a55);
  sub_681738(v55);
  _Unwind_Resume(a1);
}

void sub_912524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  sub_5C3168(va);
  sub_681738(v51);
  _Unwind_Resume(a1);
}

void sub_912560(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (sub_6C7CD8(a2))
  {
    operator new();
  }

  if (byte_27B090F < 0)
  {
    sub_325C(&v44, xmmword_27B08F8, *(&xmmword_27B08F8 + 1));
  }

  else
  {
    v44 = xmmword_27B08F8;
    v45 = unk_27B0908;
  }

  if (sub_6C7864((a1 + 2544)) && (a1[3264] & 1) == 0)
  {
    (*(*a1 + 168))(&v35, a1, 0, 0);
    if (sub_6810A0(&v35))
    {
      sub_67E494(&v31, &v44);
      operator new();
    }

    v5 = v41;
    if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = v38;
    if (v38)
    {
      do
      {
        v7 = *v6;
        sub_55F7FC((v6 + 2));
        operator delete(v6);
        v6 = v7;
      }

      while (v7);
    }

    v8 = v37;
    v37 = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = v35;
    if (v35)
    {
      v10 = v36;
      v11 = v35;
      if (v36 != v35)
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

        while (v10 != v9);
        v11 = v35;
      }

      v36 = v9;
      operator delete(v11);
    }
  }

  *v32 = 0u;
  v33 = 0u;
  v34 = 1065353216;
  v29 = 0;
  v30 = 0;
  sub_68070C(&v35, &v44, v32, 1, &v29);
  v13 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = v33;
  if (v33)
  {
    do
    {
      v15 = *v14;
      sub_55F7FC((v14 + 2));
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = v32[0];
  v32[0] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *(a3 + 8);
  if (v17 >= *(a3 + 16))
  {
    v20 = sub_686F34(a3, &v35);
  }

  else
  {
    sub_5F0850(*(a3 + 8), &v35);
    *(v17 + 72) = v39;
    *(v17 + 80) = v40;
    v18 = v41;
    *(v17 + 88) = v41;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v42;
    *(v17 + 98) = v43;
    *(v17 + 96) = v19;
    v20 = v17 + 104;
  }

  *(a3 + 8) = v20;
  v21 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = v38;
  if (v38)
  {
    do
    {
      v23 = *v22;
      sub_55F7FC((v22 + 2));
      operator delete(v22);
      v22 = v23;
    }

    while (v23);
  }

  v24 = v37;
  v37 = 0;
  if (v24)
  {
    operator delete(v24);
  }

  v25 = v35;
  if (v35)
  {
    v26 = v36;
    v27 = v35;
    if (v36 != v35)
    {
      do
      {
        v28 = *(v26 - 1);
        v26 -= 3;
        if (v28 < 0)
        {
          operator delete(*v26);
        }
      }

      while (v26 != v25);
      v27 = v35;
    }

    v36 = v25;
    operator delete(v27);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }
}

void sub_912BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_662AC8(va);
  sub_662AC8((v23 - 168));
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
    sub_681738(v22);
    _Unwind_Resume(a1);
  }

  sub_681738(v22);
  _Unwind_Resume(a1);
}

void sub_912CAC(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  sub_6C17C4(a1 + 2544, &v93);
  size = HIBYTE(v93.__r_.__value_.__r.__words[2]);
  if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v93.__r_.__value_.__l.__size_;
  }

  if (!size || sub_6C72BC(a1 + 2544))
  {
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 88) = 0;
    *(a4 + 96) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 56) = 1065353216;
    *(a4 + 64) = 1;
    *(a4 + 80) = 0;
    *(a4 + 95) = 0;
    goto LABEL_104;
  }

  v66 = a2;
  v9 = a2 | a3;
  v10 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
  if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v93.__r_.__value_.__l.__size_;
  }

  if (v9)
  {
    v12 = "_Spoken_Primary";
  }

  else
  {
    v12 = "_Spoken_Secondary";
  }

  if (v9)
  {
    v13 = 15;
  }

  else
  {
    v13 = 17;
  }

  if (v11 + v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v11 + v13 > 0x16)
  {
    operator new();
  }

  memset(&__p, 0, sizeof(__p));
  *(&__p.__r_.__value_.__s + 23) = v11 + v13;
  if (v11)
  {
    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v93;
    }

    else
    {
      v14 = v93.__r_.__value_.__r.__words[0];
    }

    memmove(&__p, v14, v11);
  }

  v15 = &__p + v11;
  memcpy(v15, v12, v13);
  v16 = 17;
  if (v9)
  {
    v16 = 15;
  }

  v15[v16] = 0;
  if (v10 < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  v93 = __p;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  sub_5F0850(&v86, a1 + 80);
  nullsub_1();
  v18 = *v17;
  v19 = v17[1];
  if (*v17 != v19)
  {
    do
    {
      if (*(v18 + 23) < 0)
      {
        sub_325C(&__p, *v18, *(v18 + 1));
      }

      else
      {
        v20 = *v18;
        __p.__r_.__value_.__r.__words[2] = *(v18 + 2);
        *&__p.__r_.__value_.__l.__data_ = v20;
      }

      sub_61BA64(&__p, "_Spoken_Primary", "_Spoken_To_Secondary");
      sub_913514(a1, &__p);
      v21 = v91;
      if (v91 >= v92)
      {
        v91 = sub_1CEE8(&v90, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_325C(v91, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          v91 = v21 + 3;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

LABEL_38:
          operator delete(__p.__r_.__value_.__l.__data_);
          goto LABEL_29;
        }

        v22 = *&__p.__r_.__value_.__l.__data_;
        v91[2] = __p.__r_.__value_.__r.__words[2];
        *v21 = v22;
        v91 = v21 + 3;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_38;
        }
      }

LABEL_29:
      v18 = (v18 + 24);
    }

    while (v18 != v19);
  }

  sub_67E58C(&v86, &v90);
  *v75 = 0u;
  v76 = 0u;
  v77 = 1065353216;
  sub_5F0850(&v71, &v86);
  sub_680B2C(&__p, &v93.__r_.__value_.__l.__data_, v75, 6, &v71, 1);
  v23 = v74;
  if (v74)
  {
    do
    {
      v24 = *v23;
      sub_55F7FC((v23 + 2));
      operator delete(v23);
      v23 = v24;
    }

    while (v24);
  }

  v25 = v73;
  v73 = 0;
  if (v25)
  {
    operator delete(v25);
  }

  v26 = v71;
  if (v71)
  {
    v27 = v72;
    v28 = v71;
    if (v72 != v71)
    {
      do
      {
        v29 = *(v27 - 1);
        v27 -= 3;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = v71;
    }

    v72 = v26;
    operator delete(v28);
  }

  v30 = v76;
  if (v76)
  {
    do
    {
      v31 = *v30;
      sub_55F7FC((v30 + 2));
      operator delete(v30);
      v30 = v31;
    }

    while (v31);
  }

  v32 = v75[0];
  v75[0] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  if (a3 && *(a1 + 3296) == 1)
  {
    v33 = *(a1 + 3297);
    v34 = 96;
    if (!*(a1 + 3297))
    {
      v34 = 99;
    }

    v35 = &qword_27B0568;
    if (*(a1 + 3297))
    {
      v35 = &xmmword_27B0550;
    }

    v36 = &xmmword_27B0570 + 15;
    if (*(a1 + 3297))
    {
      v36 = &byte_27B0567;
    }

    if (*v36 < 0)
    {
      v57 = v33 == 0;
      v58 = 99;
      if (!v57)
      {
        v58 = 96;
      }

      sub_325C(v75, qword_27B0250[v34], qword_27B0250[v58 + 1]);
      LOBYTE(v33) = *(a1 + 3297);
    }

    else
    {
      *v75 = *v35;
      *&v76 = v35[2];
    }

    v59 = 114;
    if (v33)
    {
      v59 = 111;
    }

    v60 = &qword_27B05E0;
    if (v33)
    {
      v60 = &qword_27B05C8;
    }

    v61 = &xmmword_27B05E8 + 15;
    if (v33)
    {
      v61 = &xmmword_27B05D0 + 15;
    }

    if (*v61 < 0)
    {
      v57 = (v33 & 1) == 0;
      v62 = 114;
      if (!v57)
      {
        v62 = 111;
      }

      sub_325C(v69, qword_27B0250[v59], qword_27B0250[v62 + 1]);
    }

    else
    {
      *v69 = *v60;
      v70 = v60[2];
    }

    v63 = v69;
    if (v66)
    {
      v64 = v75;
    }

    else
    {
      v64 = v69;
    }

    v65 = &v76 + 7;
    if (!v66)
    {
      v65 = &v70 + 7;
    }

    if (*v65 < 0)
    {
      if (v66)
      {
        v63 = v75;
      }

      sub_325C(v67, *v64, v63[1]);
    }

    else
    {
      *v67 = *v64;
      v68 = v64[2];
    }

    sub_908E44(a1, &__p, v67);
  }

  sub_5F0850(a4, &__p);
  *(a4 + 72) = v81;
  v37 = v83;
  *(a4 + 80) = v82;
  *(a4 + 88) = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a4 + 96) = v84;
  *(a4 + 98) = v85;
  v38 = v83;
  if (v83 && !atomic_fetch_add(&v83->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  v39 = v80;
  if (v80)
  {
    do
    {
      v40 = *v39;
      sub_55F7FC((v39 + 2));
      operator delete(v39);
      v39 = v40;
    }

    while (v40);
  }

  v41 = v79;
  v79 = 0;
  if (v41)
  {
    operator delete(v41);
  }

  v42 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    v43 = __p.__r_.__value_.__l.__size_;
    v44 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
    {
      do
      {
        v45 = *(v43 - 1);
        v43 -= 3;
        if (v45 < 0)
        {
          operator delete(*v43);
        }
      }

      while (v43 != v42);
      v44 = __p.__r_.__value_.__r.__words[0];
    }

    __p.__r_.__value_.__l.__size_ = v42;
    operator delete(v44);
  }

  v46 = v89;
  if (v89)
  {
    do
    {
      v47 = *v46;
      sub_55F7FC((v46 + 2));
      operator delete(v46);
      v46 = v47;
    }

    while (v47);
  }

  v48 = v88;
  v88 = 0;
  if (v48)
  {
    operator delete(v48);
  }

  v49 = v86;
  if (v86)
  {
    v50 = v87;
    v51 = v86;
    if (v87 != v86)
    {
      do
      {
        v52 = *(v50 - 1);
        v50 -= 3;
        if (v52 < 0)
        {
          operator delete(*v50);
        }
      }

      while (v50 != v49);
      v51 = v86;
    }

    v87 = v49;
    operator delete(v51);
  }

  v53 = v90;
  if (v90)
  {
    v54 = v91;
    v55 = v90;
    if (v91 != v90)
    {
      do
      {
        v56 = *(v54 - 1);
        v54 -= 3;
        if (v56 < 0)
        {
          operator delete(*v54);
        }
      }

      while (v54 != v53);
      v55 = v90;
    }

    v91 = v53;
    operator delete(v55);
  }

LABEL_104:
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }
}

void sub_913400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a38 & 0x80000000) == 0)
  {
LABEL_6:
    sub_662AC8(&a42);
    sub_53A58C((v47 - 208));
    sub_1A104((v47 - 136));
    if (*(v47 - 89) < 0)
    {
      operator delete(*(v47 - 112));
    }

    _Unwind_Resume(a1);
  }

  operator delete(a33);
  goto LABEL_6;
}

void sub_913514(uint64_t a1, std::string *a2)
{
  v3 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if ((v3 & 0x80u) == 0)
  {
    v5 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v5 = a2->__r_.__value_.__l.__size_;
  }

  if (v5 >= 0xA)
  {
    if ((v3 & 0x80u) == 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = a2->__r_.__value_.__r.__words[0];
    }

    v10 = v9->__r_.__value_.__r.__words[0];
    v11 = LOWORD(v9->__r_.__value_.__r.__words[1]);
    v6 = v10 == 0x75545F7468676952 && v11 == 28274;
LABEL_16:
    if ((v3 & 0x80u) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = a2->__r_.__value_.__r.__words[0];
    }

    v14 = v13->__r_.__value_.__r.__words[0];
    v15 = v13->__r_.__value_.__s.__data_[8];
    v8 = v14 == 0x7275545F7466654CLL && v15 == 110;
    v7 = v6;
    if (v8)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (v5 == 9)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (!v7)
  {
    return;
  }

LABEL_27:
  HIBYTE(v65) = 0;
  LOBYTE(__p[0]) = 0;
  v17 = a2->__r_.__value_.__r.__words[0];
  if ((v3 & 0x80u) == 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = a2->__r_.__value_.__r.__words[0];
  }

  if (v5 >= 7)
  {
    v19 = v18 + v5;
    v20 = v18;
    while (1)
    {
      v21 = memchr(v20, 95, v5 - 6);
      if (!v21)
      {
        goto LABEL_52;
      }

      if (*v21 == 1869632351 && *(v21 + 3) == 1852140399)
      {
        break;
      }

      v20 = (v21 + 1);
      v5 = v19 - v20;
      if (v19 - v20 < 7)
      {
        goto LABEL_52;
      }
    }

    if (v21 != v19)
    {
      v23 = v21 - v18;
      if (v21 - v18 != -1)
      {
        if ((v3 & 0x80) != 0)
        {
          if (size >= v23)
          {
            goto LABEL_43;
          }
        }

        else
        {
          size = v3;
          v17 = a2;
          if (v23 <= v3)
          {
LABEL_43:
            v24 = size - v23;
            if (size - v23 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v24 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v63) = size - v23;
            if (size != v23)
            {
              memmove(&__dst, v17 + v23, v24);
            }

            *(&__dst + v24) = 0;
            if (SHIBYTE(v65) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = __dst;
            v65 = v63;
            goto LABEL_52;
          }
        }

        sub_49D4();
      }
    }
  }

LABEL_52:
  if (v7)
  {
    v25 = SHIBYTE(v65);
    if (v65 >= 0)
    {
      v26 = HIBYTE(v65);
    }

    else
    {
      v26 = __p[1];
    }

    if (v26 + 10 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v26 + 10 >= 0x17)
      {
        operator new();
      }

      *(&__dst + 1) = 28274;
      v63 = 0;
      HIBYTE(v63) = v26 + 10;
      *&__dst = 0x75545F7468676952;
      v27 = &__dst + 10;
      if (!v26)
      {
        goto LABEL_72;
      }

LABEL_68:
      if (v25 >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      memmove(v27, v28, v26);
      goto LABEL_72;
    }

LABEL_168:
    sub_3244();
  }

  v25 = SHIBYTE(v65);
  if (v65 >= 0)
  {
    v26 = HIBYTE(v65);
  }

  else
  {
    v26 = __p[1];
  }

  if (v26 + 9 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_168;
  }

  if (v26 + 9 >= 0x17)
  {
    operator new();
  }

  *(&__dst + 1) = 110;
  v63 = 0;
  HIBYTE(v63) = v26 + 9;
  *&__dst = 0x7275545F7466654CLL;
  v27 = &__dst + 9;
  if (v26)
  {
    goto LABEL_68;
  }

LABEL_72:
  v27[v26] = 0;
  v29 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v29 >= 0)
  {
    v30 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = a2->__r_.__value_.__l.__size_;
  }

  v31 = HIBYTE(v63);
  v32 = SHIBYTE(v63);
  if (v63 < 0)
  {
    v31 = *(&__dst + 1);
  }

  if (v30 != v31 || (v29 >= 0 ? (v33 = a2) : (v33 = a2->__r_.__value_.__r.__words[0]), v63 >= 0 ? (p_dst = &__dst) : (p_dst = __dst), memcmp(v33, p_dst, v30)))
  {
    if (v8 && sub_6C6CE8(a1 + 2544))
    {
      v61 = 0;
      __s[0] = 0;
      v35 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v35 & 0x80u) == 0)
      {
        v36 = a2;
      }

      else
      {
        v36 = a2->__r_.__value_.__r.__words[0];
      }

      if ((v35 & 0x80u) != 0)
      {
        v35 = a2->__r_.__value_.__l.__size_;
      }

      if (v35 >= 5)
      {
        v37 = v36 + v35;
        v38 = v36;
        do
        {
          v39 = memchr(v38, 76, v35 - 4);
          if (!v39)
          {
            break;
          }

          if (*v39 == 1952867660 && v39[4] == 95)
          {
            if (v39 != v37 && v39 - v36 != -1)
            {
              std::string::replace(a2, v39 - v36, 5uLL, __s, 0);
              if (v61 < 0)
              {
                operator delete(*__s);
              }
            }

            break;
          }

          v38 = (v39 + 1);
          v35 = v37 - v38;
        }

        while (v37 - v38 >= 5);
      }

      v61 = 0;
      __s[0] = 0;
      v41 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v41 & 0x80u) == 0)
      {
        v42 = a2;
      }

      else
      {
        v42 = a2->__r_.__value_.__r.__words[0];
      }

      if ((v41 & 0x80u) != 0)
      {
        v41 = a2->__r_.__value_.__l.__size_;
      }

      if (v41 >= 7)
      {
        v43 = v42 + v41;
        v44 = v42;
        do
        {
          v45 = memchr(v44, 95, v41 - 6);
          if (!v45)
          {
            break;
          }

          if (*v45 == 1635013471 && *(v45 + 3) == 1850702177)
          {
            if (v45 != v43 && v45 - v42 != -1)
            {
              std::string::replace(a2, v45 - v42, 7uLL, __s, 0);
              if (v61 < 0)
              {
                operator delete(*__s);
              }
            }

            break;
          }

          v44 = (v45 + 1);
          v41 = v43 - v44;
        }

        while (v43 - v44 >= 7);
      }
    }

    if (v7 && sub_6C6CF8(a1 + 2544))
    {
      v61 = 0;
      __s[0] = 0;
      v47 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v47 & 0x80u) == 0)
      {
        v48 = a2;
      }

      else
      {
        v48 = a2->__r_.__value_.__r.__words[0];
      }

      if ((v47 & 0x80u) != 0)
      {
        v47 = a2->__r_.__value_.__l.__size_;
      }

      if (v47 >= 6)
      {
        v49 = v48 + v47;
        v50 = v48;
        do
        {
          v51 = memchr(v50, 82, v47 - 5);
          if (!v51)
          {
            break;
          }

          if (*v51 == 1751607634 && *(v51 + 2) == 24436)
          {
            if (v51 != v49 && v51 - v48 != -1)
            {
              std::string::replace(a2, v51 - v48, 6uLL, __s, 0);
              if (v61 < 0)
              {
                operator delete(*__s);
              }
            }

            break;
          }

          v50 = (v51 + 1);
          v47 = v49 - v50;
        }

        while (v49 - v50 >= 6);
      }

      v61 = 0;
      __s[0] = 0;
      v53 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v53 & 0x80u) == 0)
      {
        v54 = a2;
      }

      else
      {
        v54 = a2->__r_.__value_.__r.__words[0];
      }

      if ((v53 & 0x80u) != 0)
      {
        v53 = a2->__r_.__value_.__l.__size_;
      }

      if (v53 > 6)
      {
        v55 = v54 + v53;
        v56 = v54;
        do
        {
          v57 = memchr(v56, 95, v53 - 6);
          if (!v57)
          {
            break;
          }

          if (*v57 == 1635013471 && *(v57 + 3) == 1850702177)
          {
            if (v57 != v55 && v57 - v54 != -1)
            {
              std::string::replace(a2, v57 - v54, 7uLL, __s, 0);
              if (v61 < 0)
              {
                operator delete(*__s);
              }
            }

            break;
          }

          v56 = (v57 + 1);
          v53 = v55 - v56;
        }

        while (v55 - v56 >= 7);
      }
    }
  }

  if ((v32 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v65) & 0x80000000) == 0)
    {
      return;
    }

LABEL_165:
    operator delete(__p[0]);
    return;
  }

  operator delete(__dst);
  if (SHIBYTE(v65) < 0)
  {
    goto LABEL_165;
  }
}

void sub_913C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a25 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  if ((a25 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a20);
  _Unwind_Resume(exception_object);
}

void sub_913CB0()
{
  v5 = 0uLL;
  v6 = 0;
  operator new();
}

void sub_9145E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  sub_662AC8(&a9);
  sub_1F1A8(&a25);
  sub_662AC8(&a27);
  sub_662AC8((v27 - 232));
  sub_1F1A8(v27 - 128);
  sub_681738((v27 - 112));
  _Unwind_Resume(a1);
}

void sub_9146E4(_BYTE *a1@<X0>, std::string *a2@<X8>)
{
  if (a1[3299] == 1)
  {
    a2->__r_.__value_.__r.__words[2] = 0x800000000000000;
    v3 = "Dismount";
LABEL_5:
    *&a2->__r_.__value_.__l.__data_ = *v3;
    return;
  }

  if (a1[3303] == 1)
  {
    a2->__r_.__value_.__r.__words[2] = 0x400000000000000;
    v3 = "Walk";
    goto LABEL_5;
  }

  if (sub_8EF184(a1))
  {
    sub_863300(a1, a2);
    if (a1[1940] == 1)
    {
      std::string::append(a2, "_", 1uLL);
      std::string::append(a2, "Cross", 5uLL);
    }
  }

  else
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }
}

void sub_9147AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_9147C8(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (sub_843C88(a1))
  {
    if (*(a1 + 3303) == 1)
    {
      *a3 = *"Destination";
      *(a3 + 16) = 0xB00000000000000;
    }

    else
    {

      sub_85FE1C(a1, a3);
    }

    return;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 936);
  v7 = *(a1 + 944);
  if (v6 == v7)
  {
    if (!sub_734C10(a1 + 304))
    {
      return;
    }

    v6 = *(a1 + 936);
    v7 = *(a1 + 944);
    if (v6 == v7)
    {
      v8 = sub_734C10(a1 + 304);
      v6 = *(a1 + 936);
      v7 = *(a1 + 944);
      if (v8)
      {
        goto LABEL_14;
      }
    }
  }

  if (v7 - v6 == 152)
  {
LABEL_14:
    v9 = 1;
  }

  else
  {
    v9 = sub_8441CC(a1) ^ 1;
    v6 = *(a1 + 936);
    v7 = *(a1 + 944);
  }

  if (v6 == v7)
  {
    v10 = a1 + 304;
  }

  else
  {
    v10 = v6;
  }

  v11 = sub_7345C4(v10 + 64);
  v12 = *(a1 + 1928);
  if (v11 && (*(a1 + 2281) & 1) == 0)
  {
    v13 = 1;
    if ((*(a1 + 2282) & 1) == 0 && v12 != 23 && (*(a1 + 2283) & 1) == 0 && v12 != 92)
    {
      v13 = *(a1 + 1939) | (v12 == 95);
    }
  }

  else
  {
    v13 = 1;
  }

  if (*(a1 + 2282) == 1)
  {
    v14 = "Ferry";
LABEL_24:
    *v33 = *v14;
    v34 = *(v14 + 2);
    goto LABEL_27;
  }

  if (v12 == 23)
  {
    goto LABEL_26;
  }

  if (*(a1 + 2283) == 1)
  {
    v14 = "ShuttleName";
    goto LABEL_24;
  }

  if (v12 == 97 || v12 == 95 || v12 == 92)
  {
LABEL_26:
    HIBYTE(v34) = 0;
    LOBYTE(v33[0]) = 0;
  }

  else
  {
    if (*(a1 + 2281))
    {
      v14 = "Intersection";
    }

    else if (*(a1 + 2280))
    {
      v14 = "Freeway";
    }

    else if (*(a1 + 1944) == -1)
    {
      if (*(a1 + 1960) == -1)
      {
        if (*(a1 + 1952) == -1)
        {
          v14 = "Road";
        }

        else
        {
          v14 = "ElevatorName";
        }
      }

      else
      {
        v14 = "EscalatorName";
      }
    }

    else
    {
      v14 = "StairsName";
    }

    if ((v14[23] & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    sub_325C(v33, *v14, *(v14 + 1));
  }

LABEL_27:
  v15 = "Road1";
  if (v9)
  {
    v15 = v33;
  }

  if (v15 != a3)
  {
    v16 = HIBYTE(v34);
    if (!v9)
    {
      v16 = 5;
    }

    if (*(a3 + 23) < 0)
    {
      v17 = v33[1];
      if (!v9)
      {
        v17 = 0;
      }

      if (v16 >= 0)
      {
        v18 = v15;
      }

      else
      {
        v18 = *v15;
      }

      if (v16 >= 0)
      {
        v19 = v16;
      }

      else
      {
        v19 = v17;
      }

      sub_13B38(a3, v18, v19);
    }

    else if (v16 < 0)
    {
      if (v9)
      {
        v20 = v33[1];
      }

      else
      {
        v20 = 0;
      }

      sub_13A68(a3, *v15, v20);
    }

    else
    {
      *a3 = *v15;
      *(a3 + 16) = v15[2];
    }
  }

  if (!(v13 & 1 | ((*(a1 + 1936) & 1) == 0)))
  {
    if (a3 != "Shield1")
    {
      if (*(a3 + 23) < 0)
      {
        sub_13B38(a3, "Shield1", 7uLL);
      }

      else
      {
        *(a3 + 16) = 0x700000000000000;
        *a3 = *"Shield1";
      }
    }

    if (sub_734A38(v10 + 64))
    {
      std::string::append(a3, "_Direction1", 0xBuLL);
    }

    else if (sub_734D68(v10))
    {
      if (v9)
      {
        if (*(a1 + 2280) == 1)
        {
          v32 = 0x800000000000000;
          *__p = *"_Freeway";
          v21 = 8;
        }

        else if (*(a1 + 1952) == -1)
        {
          if (*(a1 + 1960) == -1)
          {
            if (*(a1 + 1944) == -1)
            {
              *__p = *"_Road";
              v32 = 0x500000000000000;
              v21 = 5;
            }

            else
            {
              *__p = *"_StairsName";
              v32 = 0xB00000000000000;
              v21 = 11;
            }
          }

          else
          {
            v32 = 0xE00000000000000;
            *__p = *"_EscalatorName";
            v21 = 14;
          }
        }

        else
        {
          *__p = *"_ElevatorName";
          v32 = 0xD00000000000000;
          v21 = 13;
        }
      }

      else
      {
        v32 = 0x600000000000000;
        *__p = *"_Road1";
        v21 = 6;
      }

      std::string::append(a3, __p, v21);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if ((v9 | a2))
  {
    goto LABEL_104;
  }

  v22 = *(a1 + 936);
  v23 = sub_7345C4(v22 + 216);
  v24 = v23;
  if (v23 && (*(a1 + 1936) & 1) != 0)
  {
    v25 = "_Shield2";
  }

  else
  {
    v25 = "_Road2";
  }

  v26 = v25[23];
  v27 = v26 >= 0 ? v25 : *v25;
  v28 = v26 >= 0 ? *(v25 + 23) : *(v25 + 1);
  std::string::append(a3, v27, v28);
  if ((*(a1 + 1936) & v24 & 1) == 0)
  {
    goto LABEL_104;
  }

  if (sub_734A38(v22 + 216))
  {
    v29 = "_Direction2";
    v30 = 11;
  }

  else
  {
    if (!sub_734D68(v22 + 152))
    {
      goto LABEL_104;
    }

    v29 = "_Road2";
    v30 = 6;
  }

  std::string::append(a3, v29, v30);
LABEL_104:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }
}

void sub_914D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((*(v21 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v21);
  _Unwind_Resume(exception_object);
}

BOOL sub_914DD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 960);
  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 968) - v2) >> 3) < 2)
  {
    return 1;
  }

  sub_5139E8(v9, (v2 + 152));
  if (sub_7345C4(&v13))
  {
    v7 = *(a1 + 1936) ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  v3 = v8 != 0;
  if (v8)
  {
    if ((v7 & 1) == 0)
    {
      v3 = sub_734D68(v9);
    }
  }

  if (v19 < 0)
  {
    operator delete(__p);
    if ((v17 & 0x80000000) == 0)
    {
LABEL_14:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v16);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_15:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    operator delete(v11);
    if ((v10 & 0x80000000) == 0)
    {
      return v3;
    }

    goto LABEL_22;
  }

LABEL_20:
  operator delete(v14);
  if (v12 < 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v10 & 0x80000000) == 0)
  {
    return v3;
  }

LABEL_22:
  operator delete(v9[0]);
  return v3;
}

void sub_914F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

std::string *sub_914F3C@<X0>(std::string *result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  data = result[40].__r_.__value_.__l.__data_;
  size = result[40].__r_.__value_.__l.__size_;
  if (data == size)
  {
    return result;
  }

  v6 = result;
  result = sub_7345C4((data + 64));
  v8 = result;
  if (result && (v6[80].__r_.__value_.__s.__data_[16] & 1) != 0)
  {
    v9 = "TowardShield1";
    if ("TowardShield1" == a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v9 = "Signpost1";
    if ("Signpost1" == a3)
    {
      goto LABEL_18;
    }
  }

  v10 = v9[23];
  if (*(a3 + 23) < 0)
  {
    if (v10 >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = *v9;
    }

    if (v10 >= 0)
    {
      v12 = *(v9 + 23);
    }

    else
    {
      v12 = *(v9 + 1);
    }

    result = sub_13B38(a3, v11, v12);
  }

  else if (v9[23] < 0)
  {
    result = sub_13A68(a3, *v9, *(v9 + 1));
  }

  else
  {
    *a3 = *v9;
    *(a3 + 16) = *(v9 + 2);
  }

LABEL_18:
  if ((v6[80].__r_.__value_.__s.__data_[16] & v8 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (sub_734A38((data + 64)))
  {
    v13 = "_TowardDirection1";
    v14 = 17;
  }

  else
  {
    result = sub_734D68(data);
    if (!result)
    {
      goto LABEL_24;
    }

    v13 = "_Signpost1";
    v14 = 10;
  }

  result = std::string::append(a3, v13, v14);
LABEL_24:
  if (size - data != 152 && (a2 & 1) == 0)
  {
    v15 = v6[40].__r_.__value_.__l.__data_;
    v16 = sub_7345C4((v15 + 216));
    v17 = v16;
    if (v16 && (v6[80].__r_.__value_.__s.__data_[16] & 1) != 0)
    {
      v18 = "_TowardShield2";
    }

    else
    {
      v18 = "_Signpost2";
    }

    v19 = v18[23];
    v20 = v19 >= 0 ? v18 : *v18;
    v21 = v19 >= 0 ? *(v18 + 23) : *(v18 + 1);
    result = std::string::append(a3, v20, v21);
    if (v6[80].__r_.__value_.__s.__data_[16] & v17)
    {
      if (sub_734A38((v15 + 216)))
      {
        v22 = "_TowardDirection2";
        v23 = 17;
      }

      else
      {
        result = sub_734D68((v15 + 152));
        if (!result)
        {
          return result;
        }

        v22 = "_Signpost2";
        v23 = 10;
      }

      return std::string::append(a3, v22, v23);
    }
  }

  return result;
}

void sub_915108(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_915128(uint64_t a1)
{
  if (sub_84AF28(a1))
  {
    return 1;
  }

  if ((*(a1 + 1928) & 0xFFFFFFFE) == 6)
  {
    return 1;
  }

  return (*(a1 + 1936) ^ 1) & 1;
}

uint64_t sub_915194(void *a1)
{
  v1 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v4 = 0x276276276276276;
  }

  else
  {
    v4 = v2;
  }

  v14 = a1;
  if (v4)
  {
    if (v4 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 104 * v1;
  __p = 0;
  v11 = v5;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 56) = 1065353216;
  *(v5 + 64) = 1;
  *(v5 + 80) = 0;
  *(v5 + 95) = 0;
  v12 = 104 * v1 + 104;
  v13 = 0;
  sub_869430(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 104;
    sub_662AC8((i - 104));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_9152F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6870C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_91530C(void *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  v21 = a1;
  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 72 * v2;
  __p = 0;
  v18 = v6;
  v20 = 0;
  *v6 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(v6 + 16) = v8;
  *(v6 + 24) = v7;
  *(v6 + 32) = v9;
  v10 = *(a2 + 40);
  *&stru_20.segname[72 * v2] = v10;
  v11 = *(a2 + 48);
  *(v6 + 48) = v11;
  *(v6 + 56) = *(a2 + 56);
  if (v11)
  {
    v12 = *(v10 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v12 >= v9)
      {
        v12 %= v9;
      }
    }

    else
    {
      v12 &= v9 - 1;
    }

    *(v7 + 8 * v12) = 72 * v2 + 40;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
  }

  *(&stru_20.vmsize + 72 * v2) = *(a2 + 64);
  v19 = v6 + 72;
  sub_9154E0(a1, &__p);
  v13 = a1[1];
  v15 = v18;
  for (i = v19; v19 != v15; i = v19)
  {
    v19 = i - 72;
    sub_8C6340((i - 72));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v13;
}

void sub_9154CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_915624(va);
  _Unwind_Resume(a1);
}

void sub_9154E0(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v9 = &v4[v7];
      v10 = v6 + v7 * 8;
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *v10 = *&v4[v7];
      v11 = v4[v7 + 3];
      *(v10 + 16) = v4[v7 + 2];
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      v9[3] = 0;
      v12 = v4[v7 + 4];
      *(v10 + 24) = v11;
      *(v10 + 32) = v12;
      v9[4] = 0;
      v13 = v4[v7 + 5];
      *(v6 + v7 * 8 + 40) = v13;
      v14 = v4[v7 + 6];
      *(v10 + 48) = v14;
      *(v10 + 56) = v4[v7 + 7];
      if (v14)
      {
        v8 = v13[1];
        v15 = *(v10 + 32);
        if ((v15 & (v15 - 1)) != 0)
        {
          if (v8 >= v15)
          {
            v8 %= v15;
          }
        }

        else
        {
          v8 &= v15 - 1;
        }

        v11[v8] = (v6 + v7 * 8 + 40);
        v4[v7 + 5] = 0;
        v4[v7 + 6] = 0;
      }

      *(v10 + 64) = *(v9 + 64);
      v7 += 9;
    }

    while (&v4[v7] != v5);
    do
    {
      sub_8C6340(v4);
      v4 += 9;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v16 = *a1;
  *a1 = v6;
  *(a1 + 8) = v16;
  a2[1] = v16;
  v17 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v17;
  v18 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
}

uint64_t sub_915624(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_8C6340((i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_915678(void *a1, uint64_t a2, int *a3, uint64_t a4)
{
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v7 = 0x276276276276276;
  }

  else
  {
    v7 = v5;
  }

  v16 = a1;
  if (v7)
  {
    if (v7 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v13 = 104 * v4;
  v14 = 104 * v4;
  v15 = 0;
  sub_680994(104 * v4, a2, *a3, a4, 1);
  v14 = 104 * v4 + 104;
  sub_869430(a1, &__p);
  v8 = a1[1];
  v10 = v13;
  for (i = v14; v14 != v10; i = v14)
  {
    v14 = i - 104;
    sub_662AC8((i - 104));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_9157E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6870C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9157F8(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      v9 = 0x9D89D89D89D89D8ALL * ((v4 - *a1) >> 3);
      if (v4 == *a1)
      {
        v9 = 1;
      }

      if (v9 < 0x276276276276277)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = (0x4EC4EC4EC4EC4EC5 * (v7 >> 3) + 1) / -2;
    v5 = v6 - 104 * ((0x4EC4EC4EC4EC4EC5 * (v7 >> 3) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        sub_6876C8(v5, v6);
        v6 += 104;
        v5 += 104;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 104 * v8;
    a1[2] = v5;
  }

  result = sub_5F0850(v5, a2);
  *(v5 + 72) = *(a2 + 72);
  v11 = *(a2 + 88);
  *(v5 + 80) = *(a2 + 80);
  *(v5 + 88) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 96);
  *(v5 + 98) = *(a2 + 98);
  *(v5 + 96) = v12;
  a1[2] += 104;
  return result;
}

uint64_t sub_915A88(uint64_t a1, void *a2, void ***a3)
{
  v6 = a2[1];
  v7 = *(a1 + 8);
  if (v7 != a3)
  {
    v8 = 0;
    v9 = a2[2];
    do
    {
      v12 = &a3[v8];
      v13 = v9 + v8 * 8;
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      *v13 = *&a3[v8];
      v14 = a3[v8 + 3];
      *(v13 + 16) = a3[v8 + 2];
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      v15 = a3[v8 + 4];
      *(v13 + 24) = v14;
      *(v13 + 32) = v15;
      v12[4] = 0;
      v16 = a3[v8 + 5];
      *(v9 + v8 * 8 + 40) = v16;
      v17 = a3[v8 + 6];
      *(v13 + 48) = v17;
      *(v13 + 56) = a3[v8 + 7];
      if (v17)
      {
        v10 = v16[1];
        v18 = *(v13 + 32);
        if ((v18 & (v18 - 1)) != 0)
        {
          if (v10 >= v18)
          {
            v10 %= v18;
          }
        }

        else
        {
          v10 &= v18 - 1;
        }

        v14[v10] = (v9 + v8 * 8 + 40);
        a3[v8 + 5] = 0;
        a3[v8 + 6] = 0;
      }

      *(v13 + 64) = *(v12 + 64);
      *(v13 + 72) = *(v12 + 18);
      *(v13 + 80) = *(v12 + 5);
      v12[10] = 0;
      v12[11] = 0;
      v11 = *(v12 + 48);
      *(v13 + 98) = *(v12 + 98);
      *(v13 + 96) = v11;
      v8 += 13;
    }

    while (&a3[v8] != v7);
    v19 = a3;
    do
    {
      v19 = sub_662AC8(v19) + 13;
    }

    while (v19 != v7);
  }

  v20 = *a1;
  v21 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v22 = v21 + v20 - a3;
  if (v20 != a3)
  {
    v23 = 0;
    do
    {
      v26 = &v20[v23];
      v27 = v22 + v23 * 8;
      *v27 = 0;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      *v27 = *&v20[v23];
      v28 = v20[v23 + 3];
      *(v27 + 16) = v20[v23 + 2];
      *v26 = 0;
      v26[1] = 0;
      v26[2] = 0;
      v26[3] = 0;
      v29 = v20[v23 + 4];
      *(v27 + 24) = v28;
      *(v27 + 32) = v29;
      v26[4] = 0;
      v30 = v20[v23 + 5];
      *(v22 + v23 * 8 + 40) = v30;
      v31 = v20[v23 + 6];
      *(v27 + 48) = v31;
      *(v27 + 56) = v20[v23 + 7];
      if (v31)
      {
        v24 = v30[1];
        v32 = *(v27 + 32);
        if ((v32 & (v32 - 1)) != 0)
        {
          if (v24 >= v32)
          {
            v24 %= v32;
          }
        }

        else
        {
          v24 &= v32 - 1;
        }

        v28[v24] = (v22 + v23 * 8 + 40);
        v20[v23 + 5] = 0;
        v20[v23 + 6] = 0;
      }

      *(v27 + 64) = *(v26 + 64);
      *(v27 + 72) = *(v26 + 18);
      *(v27 + 80) = *(v26 + 5);
      v26[10] = 0;
      v26[11] = 0;
      v25 = *(v26 + 48);
      *(v27 + 98) = *(v26 + 98);
      *(v27 + 96) = v25;
      v23 += 13;
    }

    while (&v20[v23] != a3);
    do
    {
      v20 = sub_662AC8(v20) + 13;
    }

    while (v20 != a3);
  }

  a2[1] = v22;
  v33 = *a1;
  *a1 = v22;
  *(a1 + 8) = v33;
  a2[1] = v33;
  v34 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v34;
  v35 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v35;
  *a2 = a2[1];
  return v6;
}

uint64_t **sub_915CF8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
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

void sub_916128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F1274(va);
  _Unwind_Resume(a1);
}

void sub_91613C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F1274(va);
  _Unwind_Resume(a1);
}

void sub_916174(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266D660;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_916210(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266D6B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_9162AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266D700;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_916328()
{
  qword_27B0258 = 0;
  qword_27B0260 = 0;
  qword_27B0250[0] = 0;
  operator new();
}

void sub_919380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x377]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x378]);
  if ((SLOBYTE(STACK[0x377]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(STACK[0x360]);
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((SLOBYTE(STACK[0x347]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x348]);
  if ((SLOBYTE(STACK[0x347]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(STACK[0x330]);
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((SLOBYTE(STACK[0x317]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x318]);
  if ((SLOBYTE(STACK[0x317]) & 0x80000000) == 0)
  {
LABEL_8:
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(STACK[0x300]);
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SLOBYTE(STACK[0x2E7]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(STACK[0x2E8]);
  if ((SLOBYTE(STACK[0x2E7]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(STACK[0x2D0]);
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SLOBYTE(STACK[0x2B7]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(STACK[0x2B8]);
  if ((SLOBYTE(STACK[0x2B7]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(STACK[0x2A0]);
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SLOBYTE(STACK[0x287]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(STACK[0x288]);
  if ((SLOBYTE(STACK[0x287]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SLOBYTE(STACK[0x26F]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(STACK[0x270]);
  if ((SLOBYTE(STACK[0x26F]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(STACK[0x258]);
  if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(STACK[0x240]);
  if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(STACK[0x228]);
  if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SLOBYTE(STACK[0x20F]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(STACK[0x210]);
  if ((SLOBYTE(STACK[0x20F]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((a69 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(a70);
  if ((a69 & 0x80000000) == 0)
  {
LABEL_20:
    if ((a67 & 0x80000000) == 0)
    {
LABEL_42:
      if (a65 < 0)
      {
        operator delete(a63);
      }

      _Unwind_Resume(a1);
    }

LABEL_41:
    operator delete(a66);
    goto LABEL_42;
  }

LABEL_40:
  operator delete(a68);
  if ((a67 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  goto LABEL_41;
}

void *sub_919618(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a3);
  a1[2] = a4;
  a1[3] = a5;
  return a1;
}

BOOL sub_919660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  if (v3 == -1 || v3 == *(a3 + 16))
  {
    return 0;
  }

  v6 = (a2 + 1097);
  if (*(a3 + 386))
  {
    v6 = (a3 + 385);
  }

  v7 = *v6;
  v8 = *(a3 + 160);
  if (v7 == 1)
  {
    return (v8 - 21) <= 0x2D && ((1 << (v8 - 21)) & 0x250000002281) != 0 || v8 == 2;
  }

  else
  {
    return (v8 - 20) <= 0x2D && ((1 << (v8 - 20)) & 0x250000002281) != 0 || v8 == 1;
  }
}

BOOL sub_919700(void *a1, void *a2, uint64_t a3, int a4)
{
  v8 = *(a3 + 16);
  if (v8 == -1)
  {
    v8 = *(a3 + 24) - 1;
  }

  v9 = sub_4D1F50(a2, v8 + 1);
  if (*(a3 + 16) == -1)
  {
    v10 = *(a3 + 24) - 1;
  }

  else
  {
    v10 = *(a3 + 16);
  }

  v11 = sub_4D1F50(a2, v10);
  v12 = (*v11 - **v11);
  if (*v12 >= 0x9Bu)
  {
    v13 = v12[77];
    if (v13)
    {
      if ((*(*v11 + v13 + 3) & 2) != 0)
      {
        v22 = (*v9 - **v9);
        if (*v22 >= 0x2Fu)
        {
          v23 = v22[23];
          if (v23)
          {
            if (*(*v9 + v23) == 42 && (!a4 || (sub_312CB4(v9) & 1) != 0))
            {
              goto LABEL_16;
            }
          }
        }

        return 0;
      }
    }
  }

  result = sub_6A9E6C(*a1 + 3680, v9);
  if (!result)
  {
    return result;
  }

  v15 = (*v9 - **v9);
  if (*v15 < 0x2Fu)
  {
    return 0;
  }

  v16 = v15[23];
  if (!v16)
  {
    return 0;
  }

  v17 = *(*v9 + v16);
  v18 = v17 > 0x2A;
  v19 = (1 << v17) & 0x50426810004;
  if (v18 || v19 == 0)
  {
    return 0;
  }

LABEL_16:
  v21 = *(a3 + 160);
  if (v21 <= 0x23 && ((1 << v21) & 0x804000010) != 0)
  {
    return 1;
  }

  v24 = (a3 + 385);
  if (!*(a3 + 386))
  {
    v24 = a2 + 1097;
  }

  result = 1;
  if (*v24 == 1)
  {
    if ((v21 - 20 > 0x2D || ((1 << (v21 - 20)) & 0x250000002281) == 0) && v21 != 1)
    {
      return 0;
    }
  }

  else if ((v21 - 21 > 0x2D || ((1 << (v21 - 21)) & 0x250000002281) == 0) && v21 != 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_919900(uint64_t a1, _BYTE *a2, int a3)
{
  v3 = *(a1 + 24);
  if (v3[1414] == 1)
  {
    v4 = a2[2264] & (a2[2275] ^ 1 | v3[1056]);
    v5 = *(a1 + 16);
    if (v3[1454] != 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 16);
    if (v3[1454] != 1)
    {
      goto LABEL_9;
    }
  }

  if (v5[2417] == 1)
  {
    v6 = a2[2312];
    if (v3[1414])
    {
      goto LABEL_10;
    }

LABEL_7:
    v7 = v4 & 1;
    v8 = v6 & 1;
    v9 = 0;
    v10 = a2[2313];
    if (a3)
    {
      goto LABEL_11;
    }

    return (a2[2276] << 40) | (a2[2314] << 32) | (v9 << 24) | (v8 << 16) | (v7 << 8) | v10;
  }

LABEL_9:
  v6 = 0;
  if (!v3[1414])
  {
    goto LABEL_7;
  }

LABEL_10:
  v7 = v4 & 1;
  v8 = v6 & 1;
  v9 = a2[2264] & (a2[2275] ^ 1 | v3[1056]) & 1;
  v10 = a2[2313];
  if (a3)
  {
LABEL_11:
    v7 &= v5[2426];
    v8 = (v5[2428] & v8);
    v9 = (v5[2427] & v9);
  }

  return (a2[2276] << 40) | (a2[2314] << 32) | (v9 << 24) | (v8 << 16) | (v7 << 8) | v10;
}

void sub_9199F4(uint64_t a1@<X0>, int **a2@<X1>, _BYTE *a3@<X2>, void *a4@<X3>, __int128 **a6@<X8>)
{
  if (*(a2 + 8))
  {
    v7 = *a2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || a2[1] == 0)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    return;
  }

  sub_2B7A20(*(a1 + 8), a2[4] & 0xFFFFFFFFFFFFFFLL, v87);
  sub_2B7A20(*(a1 + 8), a2[4] & 0xFFFFFFFFFFFFFFLL, __p);
  v13 = __p[1];
  if (__p[1] == v82)
  {
    v17 = 0x7FFFFFFF;
    v18 = 0xFFFFFFFF00000000;
    v19 = 0xFFFFFFFFLL;
    if (!__p[1])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = sub_31AA0C(__p);
  v15 = v14;
  v17 = v16;
  v18 = v14 & 0xFFFFFFFF00000000;
  v13 = __p[1];
  v19 = v15;
  if (__p[1])
  {
LABEL_12:
    *&v82 = v13;
    operator delete(v13);
  }

LABEL_13:
  v85 = v18 | v19;
  v86 = v17;
  v20 = (*a2 - **a2);
  if (*v20 >= 0xDu && (v21 = v20[6]) != 0)
  {
    v22 = 4 * *(*a2 + v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_2AF704(*(a1 + 8) + 3896, 1u, 0);
  v24 = &v23[-*v23];
  if (*v24 < 0xBu)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 5);
    if (v25)
    {
      v25 += &v23[*&v23[v25]];
    }
  }

  v26 = (v25 + v22 + 4 + *(v25 + v22 + 4));
  v27 = (v26 - *v26);
  if (*v27 < 5u || (v28 = v27[2]) == 0)
  {
    v84 = 0;
    LOBYTE(__dst) = 0;
    v32 = *a2;
    if (a3[5] == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v29 = (v26 + v28);
  v30 = *v29;
  v31 = *(v29 + v30);
  if (v31 >= 0x17)
  {
    operator new();
  }

  v84 = *(v29 + v30);
  if (v31)
  {
    memcpy(&__dst, v29 + v30 + 4, v31);
    *(&__dst + v31) = 0;
    v32 = *a2;
    if (a3[5] == 1)
    {
      goto LABEL_32;
    }

LABEL_26:
    if (a3[3] == 1)
    {
      v33 = (v32 - *v32);
      v34 = *v33;
      if (*(a2 + 38))
      {
        if (v34 >= 0x4D)
        {
          v35 = v33[38];
          if (v35)
          {
            v36 = 8;
LABEL_45:
            v41 = 0;
            v42 = (*(v32 + v35) & v36) != 0;
            goto LABEL_51;
          }
        }
      }

      else if (v34 >= 0x4D)
      {
        v35 = v33[38];
        if (v35)
        {
          v36 = 4;
          goto LABEL_45;
        }
      }
    }

    goto LABEL_50;
  }

  *(&__dst + v31) = 0;
  v32 = *a2;
  if (a3[5] != 1)
  {
    goto LABEL_26;
  }

LABEL_32:
  if (a3[1] == 1)
  {
    v37 = (v32 - *v32);
    v38 = *v37;
    if (*(a2 + 38))
    {
      if (v38 >= 0x4D)
      {
        v39 = v37[38];
        if (v39)
        {
          v40 = 2;
LABEL_49:
          v42 = 0;
          v41 = (*(v32 + v39) & v40) != 0;
          goto LABEL_51;
        }
      }
    }

    else if (v38 >= 0x4D)
    {
      v39 = v37[38];
      if (v39)
      {
        v40 = 1;
        goto LABEL_49;
      }
    }
  }

LABEL_50:
  v41 = 0;
  v42 = 0;
LABEL_51:
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v43 = *(a2 + 38);
  v44 = *v32;
  v45 = -v44;
  v46 = (v32 - v44);
  v47 = *v46;
  if (*(a2 + 38))
  {
    if (v47 < 0x4D || !v46[38])
    {
      if (*v46 <= 0x4Cu)
      {
        goto LABEL_70;
      }

      goto LABEL_67;
    }

    if ((*(v32 + v46[38]) & 8) == 0)
    {
      goto LABEL_65;
    }

LABEL_61:
    if (!v41 && (a3[3] & 1) != 0)
    {
      sub_682E30(a4, &v85, &__dst, __p);
    }

    goto LABEL_65;
  }

  if (v47 < 0x4D || !v46[38])
  {
    if (*v46 > 0x4Cu)
    {
      goto LABEL_73;
    }

LABEL_77:
    v49 = v32 + v45;
    if (*(v32 + v45) > 0x4Cu)
    {
      goto LABEL_87;
    }

LABEL_91:
    v52 = (v32 + v45);
    if (*v52 <= 0x4Cu)
    {
      goto LABEL_135;
    }

    goto LABEL_99;
  }

  if ((*(v32 + v46[38]) & 4) != 0)
  {
    goto LABEL_61;
  }

LABEL_65:
  v46 = (v32 + v45);
  v48 = *(v32 + v45);
  if (*(a2 + 38))
  {
    if (v48 < 0x4D)
    {
      goto LABEL_70;
    }

LABEL_67:
    if (v46[38])
    {
      if ((*(v32 + v46[38]) & 2) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_75;
    }

LABEL_70:
    v49 = v32 + v45;
    if (*(v32 + v45) <= 0x4Cu)
    {
      goto LABEL_84;
    }

    goto LABEL_81;
  }

  if (v48 < 0x4D)
  {
    goto LABEL_77;
  }

LABEL_73:
  if (!v46[38])
  {
    goto LABEL_77;
  }

  v43 = 0;
  if ((*(v32 + v46[38]) & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_75:
  if (!v42 && (a3[1] & 1) != 0)
  {
    sub_682F48(a4, &v85, &__dst, __p);
  }

LABEL_79:
  v49 = v32 + v45;
  v50 = *(v32 + v45);
  if (v43)
  {
    if (v50 < 0x4D)
    {
      goto LABEL_84;
    }

LABEL_81:
    v51 = *(v49 + 38);
    if (v51)
    {
      if ((*(v32 + v51) & 0x20) == 0)
      {
        goto LABEL_93;
      }

LABEL_89:
      if (a3[2] == 1)
      {
        sub_682FD0(a4, &v85, &__dst, __p);
      }

      goto LABEL_93;
    }

LABEL_84:
    v52 = (v32 + v45);
    if (*v52 <= 0x4Cu)
    {
      goto LABEL_135;
    }

    goto LABEL_95;
  }

  if (v50 < 0x4D)
  {
    goto LABEL_91;
  }

LABEL_87:
  v53 = *(v49 + 38);
  if (!v53)
  {
    goto LABEL_91;
  }

  v43 = 0;
  if ((*(v32 + v53) & 0x10) != 0)
  {
    goto LABEL_89;
  }

LABEL_93:
  v52 = (v32 + v45);
  v54 = *v52;
  if (v43)
  {
    if (v54 < 0x4D)
    {
      goto LABEL_135;
    }

LABEL_95:
    v55 = v52[38];
    if (!v55 || (*(v32 + v55) & 0x80) == 0)
    {
      goto LABEL_135;
    }

LABEL_101:
    if (a3[2] != 1)
    {
      goto LABEL_135;
    }

    sub_91A920(*(a1 + 8), a2[4] & 0xFFFFFFFFFFFFFFLL, &v79);
    v57 = v79;
    if (v79 == v80)
    {
      if (v79)
      {
        v80 = v79;
        operator delete(v79);
      }

      goto LABEL_135;
    }

    sub_31BF20(v87, __p);
    sub_47190(v57, __p);
    v59 = v58;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v60 = *a2;
    v61 = (*a2 - **a2);
    v62 = 0.0;
    if (*v61 >= 9u)
    {
      v63 = v61[4];
      if (v63)
      {
        LODWORD(v62) = *(v60 + v63);
        v62 = *&v62;
      }
    }

    v64 = (1.0 - v59) * v62;
    if (v64 >= 0.0)
    {
      if (v64 >= 4.50359963e15)
      {
        goto LABEL_114;
      }

      v65 = (v64 + v64) + 1;
    }

    else
    {
      if (v64 <= -4.50359963e15)
      {
        goto LABEL_114;
      }

      v65 = (v64 + v64) - 1 + (((v64 + v64) - 1) >> 63);
    }

    v64 = (v65 >> 1);
LABEL_114:
    v78 = v64;
    v66 = (v60 - *v60);
    v67 = *v66;
    v68 = -1.0;
    if (*(a2 + 38))
    {
      if (v67 < 0x11)
      {
        goto LABEL_122;
      }

      v69 = v66[8];
      if (!v69)
      {
        goto LABEL_122;
      }
    }

    else
    {
      if (v67 < 0xF)
      {
        goto LABEL_122;
      }

      v69 = v66[7];
      if (!v69)
      {
        goto LABEL_122;
      }
    }

    v70 = *(v60 + v69);
    v68 = v70;
    if (!v70)
    {
      v68 = -1.0;
    }

LABEL_122:
    v77 = v68;
    if (*a3 != 1 || (v68 >= 0.0 ? (v71 = ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v71 = 1), v71 ? (v72 = *&v68 == 0) : (v72 = 1), !v72))
    {
      sub_683044(a4, &v78, v57, &__dst, __p);
    }

    sub_6830B8(a4, &v78, v57, &v77, a3[4], &__dst, __p);
  }

  if (v54 < 0x4D)
  {
    goto LABEL_135;
  }

LABEL_99:
  v56 = v52[38];
  if (v56 && (*(v32 + v56) & 0x40) != 0)
  {
    goto LABEL_101;
  }

LABEL_135:
  v73 = *a6;
  v74 = a6[1];
  v75 = 126 - 2 * __clz(0xD37A6F4DE9BD37A7 * ((v74 - *a6) >> 3));
  v7 = v74 == *a6;
  v79 = &v85;
  if (v7)
  {
    v76 = 0;
  }

  else
  {
    v76 = v75;
  }

  sub_921AF4(v73, v74, &v79, v76, 1);
  if (v84 < 0)
  {
    operator delete(__dst);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }
}

void sub_91A7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_682EB4(&a14);
  sub_5ECC44(&a14);
  if (*(v16 - 185) < 0)
  {
    operator delete(*(v16 - 208));
  }

  v18 = *(v16 - 160);
  if (v18)
  {
    *(v16 - 152) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_91A908(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x91A8ACLL);
}

int *sub_91A920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v6 = (result - *result);
  v7 = *v6;
  if ((a2 & 0xFF000000000000) != 0)
  {
    if (v7 < 0x5D || (v8 = v6[46]) == 0)
    {
LABEL_10:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return result;
    }
  }

  else
  {
    if (v7 < 0x5B)
    {
      goto LABEL_10;
    }

    v8 = v6[45];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  v9 = (result + v8 + *(result + v8));
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*v9)
  {
    operator new();
  }

  return result;
}

void sub_91AA54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_91AA70(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X4>, __int128 **a6@<X8>)
{
  if (sub_4D1DC0(a2) <= a4)
  {
    goto LABEL_63;
  }

  v12 = sub_50EA30(a2 + 138, a3);
  v13 = v12;
  if (*(v12 + 56) == -1)
  {
    v14 = *(v12 + 40);
  }

  else
  {
    v14 = *(v12 + 56);
  }

  v15 = sub_4D1F50(a2, a4);
  v16 = sub_2B51D8(*(a1 + 8), *(v15 + 32) | (*(v15 + 36) << 32));
  v17 = (v16 - *v16);
  if (*v17 >= 0x9Bu)
  {
    v18 = v17[77];
    if (v18)
    {
      if ((*(v16 + v18 + 3) & 4) != 0)
      {
        v22 = 1;
        goto LABEL_14;
      }
    }
  }

  v19 = *(v15 + 8);
  if (v19)
  {
    v20 = (v19 - *v19);
    if (*v20 >= 0x11u)
    {
      v21 = v20[8];
      if (v21)
      {
        v22 = (*(v19 + v21) >> 2) & 1;
LABEL_14:
        v51 = v22;
        goto LABEL_15;
      }
    }
  }

  v51 = 0;
LABEL_15:
  if (*(*(a1 + 16) + 2328) >= *(v13 + 1008))
  {
    v23 = (v13 + 1008);
  }

  else
  {
    v23 = (*(a1 + 16) + 2328);
  }

  v49 = a4;
  if (a4 >= v14)
  {
    v24 = 0;
    v50 = v14;
    v25 = v49;
    v26 = v49;
    while (1)
    {
      if (v24 > *v23)
      {
        goto LABEL_58;
      }

      v27 = sub_4D1F50(a2, v26);
      v28 = *(v27 + 32);
      v29 = *(v27 + 16);
      v54[0] = *v27;
      v54[1] = v29;
      v55 = v28;
      if (v26 != v25)
      {
        break;
      }

LABEL_55:
      v52 = v26;
      sub_9199F4(a1, v54, a5, &v52, a6);
      if (*a6 != a6[1])
      {
        return;
      }

      v24 += sub_4D23F8(a2, v26, v44);
      v52 = a6;
      sub_5ECC44(&v52);
      v32 = v26-- <= v50;
      if (v32)
      {
        goto LABEL_58;
      }
    }

    sub_6D34C0(*a1, v54, 0, &v52);
    v30 = *v52;
    v31 = v52[1];
    if (*v52 != v31)
    {
      while (1)
      {
        if (*(v30 + 241) == 1 && (*(v30 + 242) & 1) == 0)
        {
          v42 = *(v30 + 24);
          if (v42 != 3 && v42 != 0)
          {
            break;
          }
        }

        v30 += 248;
        if (v30 == v31)
        {
          goto LABEL_30;
        }
      }
    }

    v32 = v30 == v31 || v24 < *(*(a1 + 16) + 2336);
    v33 = v32;
    if (((v33 | v51) & 1) == 0)
    {
      v40 = 0;
      v51 = 0;
      v41 = v53;
      if (!v53)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

LABEL_30:
    v34 = sub_2B51D8(*(a1 + 8), v55 | (WORD2(v55) << 32));
    v35 = (v34 - *v34);
    if (*v35 < 0x9Bu || (v36 = v35[77]) == 0 || (*(v34 + v36 + 3) & 4) == 0)
    {
      v37 = DWORD2(v54[0]);
      if (*(&v54[0] + 1))
      {
        v38 = (*(&v54[0] + 1) - **(&v54[0] + 1));
        if (*v38 >= 0x11u)
        {
          v39 = v38[8];
          if (v39)
          {
            v51 &= (*(*(&v54[0] + 1) + v39) >> 2) & 1;
            v40 = 1;
            v41 = v53;
            if (!v53)
            {
              goto LABEL_54;
            }

            goto LABEL_52;
          }
        }

        v37 = 0;
      }

      v51 &= v37;
      v40 = 1;
      v41 = v53;
      if (!v53)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v51 &= 1u;
    v40 = 1;
    v41 = v53;
    if (!v53)
    {
      goto LABEL_54;
    }

LABEL_52:
    if (!atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v41->__on_zero_shared)(v41);
      std::__shared_weak_count::__release_weak(v41);
    }

LABEL_54:
    v25 = v49;
    if ((v40 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

LABEL_58:
  if (v49 + 1 < *(v13 + 24))
  {
    v45 = 0;
    v46 = v49 + 1;
    do
    {
      if (v45 > *v23)
      {
        break;
      }

      v47 = sub_4D1F50(a2, v46);
      *&v54[0] = v46;
      sub_9199F4(a1, v47, a5, v54, a6);
      if (*a6 != a6[1])
      {
        return;
      }

      v45 += sub_4D23F8(a2, v46, v48);
      *&v54[0] = a6;
      sub_5ECC44(v54);
      ++v46;
    }

    while (v46 < *(v13 + 24));
  }

LABEL_63:
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
}

void sub_91AE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_91AE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECC44(va);
  _Unwind_Resume(a1);
}

void sub_91AEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_5ECC44(va);
  _Unwind_Resume(a1);
}

void sub_91AEC8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, int a5@<W4>, int *a6@<X5>, void *a7@<X8>)
{
  v12 = sub_4D1F50(a2, *a3);
  sub_91B260(a1, v12, v46);
  if (v47)
  {
    v13 = *&v46[0] == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || *(&v46[0] + 1) == 0)
  {
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
    return;
  }

  v15 = (*&v46[0] - **&v46[0]);
  if (*v15 >= 9u && (v16 = v15[4]) != 0)
  {
    v17 = *(*&v46[0] + v16);
  }

  else
  {
    v17 = 0;
  }

  v44 = 0uLL;
  v45 = 0;
  v18 = *(a1 + 16);
  v19 = 2008;
  if (a5)
  {
    v19 = 2032;
  }

  v20 = 2016;
  if (a5)
  {
    v20 = 2040;
  }

  v21 = *(v18 + v19);
  v22 = *(v18 + v20);
  if (v21 <= v22)
  {
    v23 = *(v18 + v20);
  }

  else
  {
    v23 = *(v18 + v19);
  }

  v42 = *a6;
  v43[1] = HIBYTE(*(a6 + 2));
  BYTE2(v42) = 0;
  LOBYTE(v42) = 0;
  v43[0] = 0;
LABEL_23:
  if (v17 <= v23)
  {
    sub_6D34C0(*a1, v46, 0, &v40);
    v25 = *v40;
    v24 = v40[1];
    if (*v40 != v24)
    {
      while (1)
      {
        if (*(v25 + 241) == 1 && (*(v25 + 242) & 1) == 0)
        {
          v26 = *(v25 + 6);
          if (v26 != 3 && v26 != 0)
          {
            break;
          }
        }

        v25 += 31;
        if (v25 == v24)
        {
          v25 = v40[1];
          break;
        }
      }
    }

    *&v36[0] = *a4;
    sub_9199F4(a1, v46, &v42, v36, &v38);
    if (v38 == v39)
    {
      goto LABEL_43;
    }

    v28 = v38;
    while (1)
    {
      v29 = *(v28 + 4);
      v30 = v21;
      if (v29 != 1)
      {
        if (v29 != 2)
        {
          goto LABEL_38;
        }

        v30 = v22;
      }

      if (v17 <= v30)
      {
        sub_5FD2CC(&v44, v38, v39, 0xD37A6F4DE9BD37A7 * ((v39 - v38) >> 3));
LABEL_43:
        if (v25 == v40[1])
        {
          sub_91B260(a1, v46, v36);
          v46[0] = v36[0];
          v46[1] = v36[1];
          v47 = v37;
          v31 = 3;
          if (v37 && *&v46[0] && *(&v46[0] + 1))
          {
            v32 = (*&v46[0] - **&v46[0]);
            if (*v32 >= 9u && (v33 = v32[4]) != 0)
            {
              v34 = *(*&v46[0] + v33);
            }

            else
            {
              v34 = 0;
            }

            v31 = 0;
            v17 += v34;
          }
        }

        else
        {
          *a7 = v44;
          a7[2] = v45;
          v45 = 0;
          v44 = 0uLL;
          v31 = 1;
        }

        *&v36[0] = &v38;
        sub_5ECC44(v36);
        v35 = v41;
        if (v41)
        {
          if (!atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v35->__on_zero_shared)(v35);
            std::__shared_weak_count::__release_weak(v35);
          }
        }

        if (v31)
        {
          if (v31 != 3)
          {
            goto LABEL_58;
          }

          break;
        }

        goto LABEL_23;
      }

LABEL_38:
      v28 = (v28 + 184);
      if (v28 == v39)
      {
        goto LABEL_43;
      }
    }
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
LABEL_58:
  *&v36[0] = &v44;
  sub_5ECC44(v36);
}

void sub_91B204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a10 = &a15;
  sub_5ECC44(&a10);
  sub_1F1A8(&a18);
  a10 = &a21;
  sub_5ECC44(&a10);
  _Unwind_Resume(a1);
}

void sub_91B244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a10 = &a21;
  sub_5ECC44(&a10);
  _Unwind_Resume(a1);
}

void sub_91B260(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_6D34C0(*a1, a3, 0, &v22);
  v6 = *v22;
  v7 = v22[1];
  if (*v22 != v7)
  {
    while (1)
    {
      if (*(v6 + 241) == 1)
      {
        v8 = *(v6 + 24);
        if (!v8 || v8 == 3)
        {
          break;
        }
      }

      v6 += 248;
      if (v6 == v7)
      {
        goto LABEL_16;
      }
    }
  }

  if (v6 == v7 || (v11 = *v6, v10 = *(v6 + 8), v11 == v10))
  {
LABEL_16:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0x1000000000000;
    v18 = v23;
    if (!v23)
    {
      return;
    }

    goto LABEL_22;
  }

  v12 = *(a1 + 8);
  v13 = *(v10 - 8);
  v14 = sub_2B51D8(v12, v13 & 0xFFFFFFFFFFFFLL);
  if (*(v12 + 7772) == 1)
  {
    v15 = sub_30C50C(v12 + 3896, v13, 0);
    v16 = &v15[-*v15];
    if (*v16 < 5u)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 2);
      if (v17)
      {
        v17 += &v15[*&v15[v17]];
      }
    }

    v19 = v17 + ((v13 >> 30) & 0x3FFFC) + 4 + *(v17 + ((v13 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_31D7E8(v12, v13 & 0xFFFFFFFFFFFFLL, 1);
  *a4 = v14;
  *(a4 + 8) = v19;
  *(a4 + 16) = v20;
  *(a4 + 24) = v21;
  *(a4 + 32) = v13;
  v18 = v23;
  if (v23)
  {
LABEL_22:
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }
  }
}

void sub_91B428(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) == -1)
  {
    v7 = *(a3 + 24) - 1;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  v8 = sub_4D1F50(a2, v7);
  v9 = v8;
  v10 = (*v8 - **v8);
  if (*v10 >= 0xDu && (v11 = v10[6]) != 0)
  {
    v12 = 4 * *(*v8 + v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_2AF704(*(a1 + 8) + 3896, 1u, 0);
  v14 = &v13[-*v13];
  if (*v14 < 0xBu)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 5);
    if (v15)
    {
      v15 += &v13[*&v13[v15]];
    }
  }

  v16 = (v15 + v12 + 4 + *(v15 + v12 + 4));
  v17 = (v16 - *v16);
  if (*v17 >= 5u && (v18 = v17[2]) != 0)
  {
    v19 = (v16 + v18);
    v20 = *v19;
    v21 = *(v19 + v20);
    if (v21 >= 0x17)
    {
      operator new();
    }

    v37 = *(v19 + v20);
    if (v21)
    {
      memcpy(&__dst, v19 + v20 + 4, v21);
    }

    p_dst = (&__dst + v21);
  }

  else
  {
    v37 = 0;
    p_dst = &__dst;
  }

  *p_dst = 0;
  v23 = *v9;
  v24 = (*v9 - **v9);
  v25 = *v24;
  if (v25 >= 0x2F && v24[23])
  {
    v26 = *(v23 + v24[23]);
    v27 = v26 > 0x2F;
    v28 = (1 << v26) & 0xE2E040048000;
    if (!v27 && v28 != 0)
    {
      if (*(v9 + 38))
      {
        if (v25 >= 0x4D)
        {
          v30 = v24[38];
          if (v30)
          {
            if ((*(v23 + v30) & 8) != 0 || (*(v23 + v30) & 2) != 0)
            {
              goto LABEL_37;
            }
          }
        }
      }

      else if (v25 >= 0x4D)
      {
        v31 = v24[38];
        if (v31)
        {
          if (*(v23 + v31) & 4) != 0 || (*(v23 + v31))
          {
            goto LABEL_37;
          }
        }
      }

      v32 = sub_3116D0(v9);
      v33 = *(a1 + 8);
      sub_2B365C(v33, v32, 0, (v33 + 7800));
      v34 = *(v33 + 7800);
      v35 = *(v33 + 7808);
      if (v35 != v34)
      {
        if (((v35 - v34) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }
    }
  }

LABEL_37:
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 1;
  *(a4 + 8) = -1;
  *(a4 + 16) = -1;
  *(a4 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0xBFF0000000000000;
  *(a4 + 96) = 0;
  if (v37 < 0)
  {
    operator delete(__dst);
  }
}

void sub_91BB68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = *(v17 - 120);
  if (v19)
  {
    *(v17 - 112) = v19;
    operator delete(v19);
  }

  operator delete(__p);
  if (*(v17 - 129) < 0)
  {
    operator delete(*(v17 - 152));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_91BBD0(uint64_t a1, void *a2, unint64_t a3)
{
  if (a2[1290] != a2[1291])
  {
    v4 = sub_50EA30(a2 + 138, a3);
    v5 = a2[1291] - a2[1290];
    if (v5)
    {
      v6 = v4;
      v7 = 0;
      v8 = 0x4EC4EC4EC4EC4EC5 * (v5 >> 3);
      v9 = -1;
      while (1)
      {
        v10 = *(sub_8A5C2C(a2 + 1290, v7) + 8);
        if (v10 >= *(v6 + 40))
        {
          if (v10 >= *(v6 + 24))
          {
            return v9;
          }

          if (v9 == -1)
          {
            v9 = v7;
          }
        }

        if (v8 == ++v7)
        {
          return v9;
        }
      }
    }
  }

  return -1;
}

uint64_t sub_91BCB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  result = sub_578320((a3 + 1104), a2);
  if (*(result + 40) != -1 && *(result + 1008) != 0)
  {
    v12 = result;
    if ((sub_6838EC(a4) > 1 || *(a4 + 80) == 1) && *a5 != -1)
    {
      *(a4 + 16) = (*a5)++;
    }

    result = sub_6834F4(a4);
    if (result)
    {
      if ((*(a4 + 4) - 1) <= 1)
      {
        v13 = *(a4 + 16);
        *(v12 + 2088) = *a4;
        *(v12 + 2104) = v13;
        if (v12 + 2088 != a4)
        {
          sub_5FD2CC((v12 + 2120), *(a4 + 32), *(a4 + 40), 0xD37A6F4DE9BD37A7 * ((*(a4 + 40) - *(a4 + 32)) >> 3));
        }

        v14 = *(a4 + 56);
        v15 = *(a4 + 72);
        *(v12 + 2169) = *(a4 + 81);
        *(v12 + 2160) = v15;
        *(v12 + 2144) = v14;
      }

      v16 = *(a3 + 10328);
      if (v16 >= *(a3 + 10336))
      {
        v20 = sub_820B08((a3 + 10320), a4);
      }

      else
      {
        v17 = *(a4 + 16);
        *v16 = *a4;
        *(v16 + 16) = v17;
        *(v16 + 40) = 0;
        *(v16 + 48) = 0;
        *(v16 + 32) = 0;
        sub_5F3370(v16 + 32, *(a4 + 32), *(a4 + 40), 0xD37A6F4DE9BD37A7 * ((*(a4 + 40) - *(a4 + 32)) >> 3));
        v18 = *(a4 + 56);
        v19 = *(a4 + 72);
        *(v16 + 81) = *(a4 + 81);
        *(v16 + 72) = v19;
        *(v16 + 56) = v18;
        v20 = (v16 + 104);
        *(a3 + 10328) = v16 + 104;
      }

      *(a3 + 10328) = v20;
      *a6 += sub_683910(a4);
      result = sub_683924(a4);
      a6[1] += result;
    }
  }

  return result;
}

uint64_t sub_91BE70(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4)
{
  v6 = sub_50EA30(a2 + 138, a3);
  v9 = (v6 + 80);
  v8 = *(v6 + 80);
  if (v8 == -1)
  {
    v10 = 0;
    v9 = (v6 + 16);
  }

  else
  {
    v10 = *(v6 + 88) - sub_4D23F8(a2, v8, v7);
  }

  v11 = sub_4D2544(a2, a4[1], 0, *v9, 1u, v7);
  if (sub_683864(a4) && sub_6838CC(a4))
  {
    v13 = a4[4];
    v12 = a4[5];
    if (v13 != v12)
    {
      while (!sub_68312C(v13))
      {
        v13 += 184;
        if (v13 == v12)
        {
          v13 = v12;
          return v11 + v10 + *(v13 + 32);
        }
      }
    }
  }

  else
  {
    v13 = sub_91BF5C(a4 + 4, 0);
  }

  return v11 + v10 + *(v13 + 32);
}

unint64_t sub_91BF5C(void *a1, unint64_t a2)
{
  if (0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 184 * a2;
}

void sub_91C098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

unint64_t sub_91C178(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (*(*(result + 24) + 1527) == 1)
  {
    if ((*(v4 + 2474) & 1) == 0)
    {
      return result;
    }
  }

  else if (*(v4 + 2475) != 1)
  {
    return result;
  }

  v5 = *(a2 + 1112) - *(a2 + 1104);
  if (v5)
  {
    v6 = 0;
    v7 = 0x3795876FF3795877 * (v5 >> 3);
    do
    {
      result = sub_578320((a2 + 1104), v6);
      v8 = *(result + 160);
      if (((v8 - 25) > 0x3F || ((1 << (v8 - 25)) & 0x9000000000000001) == 0) && v8 != 17)
      {
        v11 = *(result + 24) + 1;
        v12 = result;
        result = sub_4D1DC0(a2);
        v13 = *(v12 + 24);
        if (v11 <= result)
        {
          ++v13;
        }

        v14 = *(v12 + 40);
        if (v14 <= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = *(v12 + 40);
        }

        v16 = v14 + 1;
        if (v14 < v13 && v16 != v15)
        {
          v18 = *(v3 + 8);
          v19 = *(sub_4D1F50(a2, v14) + 32);
          v20 = sub_4D1F50(a2, v16);
          sub_321094(v18, v19 & 0xFFFFFFFFFFFFFFLL, *(v20 + 32) & 0xFFFFFFFFFFFFFFLL, *(a2 + 1096), *(*(a2 + 1200) + 4 * v16));
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

void sub_91C308(uint64_t a1, uint64_t a2, unint64_t a3, char a4, void *a5)
{
  v20 = a4;
  v10 = sub_578320(a5 + 138, a3);
  v12 = *(v10 + 1968);
  if (*(v10 + 1960) == v12)
  {
    v18 = a2;
    v19 = sub_4D2630(a5, a2, v11);
    v14 = *(v10 + 1968);
    if (v14 < *(v10 + 1976))
    {
LABEL_6:
      sub_67E288(*(v10 + 1968), a2, a4, &v19);
      v15 = v14 + 40;
      *(v10 + 1968) = v14 + 40;
LABEL_8:
      *(v10 + 1968) = v15;
      sub_91C4FC(a1, a2, a3, a5);
      return;
    }

LABEL_7:
    v15 = sub_921680((v10 + 1960), &v18, &v20, &v19);
    goto LABEL_8;
  }

  if (sub_4D2544(a5, *(*(v12 - 32) - 8), 0, a2, 1u, v11) > *(*(a1 + 16) + 2480))
  {
    v18 = a2;
    v19 = sub_4D2630(a5, a2, v13);
    v14 = *(v10 + 1968);
    if (v14 < *(v10 + 1976))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  sub_67E308(v12 - 40, a2, a4);
  v16 = *(v10 + 2072);
  if (*(v10 + 2064) == v16 || !sub_6842B4(v16 - 432))
  {

    sub_91C4FC(a1, a2, a3, a5);
  }

  else
  {
    v17 = *(v10 + 2072) - 432;

    sub_6842E8(v17, a2);
  }
}

void sub_91C4FC(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v7 = sub_578320(a4 + 138, a3);
  v9 = *(v7 + 1968) - 40;
  v10 = *(v7 + 16);
  if (v10 < a2)
  {
    return;
  }

  v11 = v7;
  v19 = 0;
  if (v10 > a2)
  {
    v19 = sub_4D2544(a4, a2, 0, v10, 1u, v8);
  }

  v12 = v11[259];
  if (v11[258] == v12 || (v13 = sub_6842B4(v12 - 432), v12 = v11[259], !v13))
  {
    if (v12 >= v11[260])
    {
      v17 = sub_92183C(v11 + 258, &v19);
    }

    else
    {
      sub_683D58(v12, &v19);
      v17 = v12 + 432;
      v11[259] = v12 + 432;
    }

    v11[259] = v17;
    v18 = v17 - 432;
    goto LABEL_13;
  }

  if (sub_4D2544(a4, *(*(v12 - 232) - 8), 0, a2, 1u, v14) <= *(*(a1 + 16) + 2488))
  {
    v18 = v12 - 432;
LABEL_13:
    sub_6842E8(v18, a2);
    return;
  }

  v15 = v11[259];
  if (v15 >= v11[260])
  {
    v16 = sub_921990(v11 + 258, &v19, v9);
  }

  else
  {
    sub_684144(v11[259], &v19, v9);
    v16 = v15 + 432;
    v11[259] = v15 + 432;
  }

  v11[259] = v16;
}

uint64_t sub_91C67C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v10 = 0;
    while (v5 >= *(a3 + 40))
    {
      v11 = sub_4D1F50(a2, v5);
      v12 = (*v11 - **v11);
      v13 = *v12;
      if (*(v11 + 38))
      {
        if (v13 < 0x9F)
        {
          goto LABEL_17;
        }

        v14 = v12[79];
        if (!v14)
        {
          goto LABEL_17;
        }
      }

      else if (v13 < 0x9D || (v14 = v12[78]) == 0)
      {
LABEL_17:
        v18 = 0;
        v17 = 0;
        v20 = 0;
        v4 = 0;
        goto LABEL_29;
      }

      v15 = (*v11 + v14);
      v16 = *v15;
      v27 = 0;
      v28 = 0uLL;
      sub_315068(&v27, *(v15 + v16));
      sub_315204((v15 + v16), &v27);
      v17 = v27;
      v18 = v28;
      v19 = v27;
      if (v27 != v28)
      {
        v19 = v27;
        while (*v19 != a4)
        {
          v19 += 64;
          if (v19 == v28)
          {
            goto LABEL_28;
          }
        }
      }

      if (v19 != v28)
      {
        v21 = *(v19 + 5);
        v22 = *(v19 + 6);
        v23 = v21 + 8;
        if (v21 != v22 && v23 != v22)
        {
          do
          {
            if (*(v21 + 4) < *(v23 + 4))
            {
              v21 = v23;
            }

            v23 += 8;
          }

          while (v23 != v22);
        }

        if (v21 == v22)
        {
          if (!*(*(a1 + 16) + 2552))
          {
LABEL_36:
            v10 += sub_4D23F8(a2, v5, *&v28);
            if (v10 >= *(*(a1 + 16) + 2560))
            {
              v20 = 0;
              v4 = 1;
            }

            else
            {
              --v5;
              v20 = 1;
            }

            goto LABEL_29;
          }
        }

        else if (*(v21 + 4) >= *(*(a1 + 16) + 2552))
        {
          goto LABEL_36;
        }
      }

LABEL_28:
      v20 = 0;
      v4 = 0;
LABEL_29:
      if (v17)
      {
        while (v18 != v17)
        {
          v25 = *(v18 - 3);
          if (v25)
          {
            *(v18 - 2) = v25;
            operator delete(v25);
          }

          v18 -= 64;
        }

        operator delete(v17);
      }

      if ((v20 & 1) == 0)
      {
        return v4 & 1;
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

void sub_91C8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_315190(va);
  _Unwind_Resume(a1);
}

void sub_91C8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_315190(va);
  _Unwind_Resume(a1);
}

BOOL sub_91C8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 160);
  if (v3 == 4)
  {
    return 1;
  }

  if (*(a3 + 386))
  {
    v5 = (a3 + 385);
  }

  else
  {
    v5 = (a2 + 1097);
  }

  if (*v5 == 1)
  {
    return ((v3 - 21) > 0x2D || ((1 << (v3 - 21)) & 0x250000002281) == 0) && v3 != 2;
  }

  else
  {
    return ((v3 - 20) > 0x2D || ((1 << (v3 - 20)) & 0x250000002281) == 0) && v3 != 1;
  }
}

BOOL sub_91C960(void *a1, void *a2, uint64_t a3, int a4)
{
  v8 = *(a3 + 16);
  if (v8 == -1)
  {
    v8 = *(a3 + 24) - 1;
  }

  v9 = sub_4D1F50(a2, v8 + 1);
  if (*(a3 + 16) == -1)
  {
    v10 = *(a3 + 24) - 1;
  }

  else
  {
    v10 = *(a3 + 16);
  }

  v11 = sub_4D1F50(a2, v10);
  v12 = (*v11 - **v11);
  if (*v12 >= 0x9Bu)
  {
    v13 = v12[77];
    if (v13)
    {
      if ((*(*v11 + v13 + 3) & 2) != 0)
      {
        v22 = (*v9 - **v9);
        if (*v22 >= 0x2Fu)
        {
          v23 = v22[23];
          if (v23)
          {
            if (*(*v9 + v23) == 42 && (!a4 || (sub_312CB4(v9) & 1) != 0))
            {
              goto LABEL_16;
            }
          }
        }

        return 0;
      }
    }
  }

  result = sub_6ABAB4(*a1 + 3680, v9);
  if (!result)
  {
    return result;
  }

  v15 = (*v9 - **v9);
  if (*v15 < 0x2Fu)
  {
    return 0;
  }

  v16 = v15[23];
  if (!v16)
  {
    return 0;
  }

  v17 = *(*v9 + v16);
  v18 = v17 > 0x2A;
  v19 = (1 << v17) & 0x50426810004;
  if (v18 || v19 == 0)
  {
    return 0;
  }

LABEL_16:
  v21 = *(a3 + 160);
  if (v21 <= 0x23 && ((1 << v21) & 0x804000010) != 0)
  {
    return 1;
  }

  v24 = (a3 + 385);
  if (!*(a3 + 386))
  {
    v24 = a2 + 1097;
  }

  result = 1;
  if (*v24 == 1)
  {
    if ((v21 - 20 > 0x2D || ((1 << (v21 - 20)) & 0x250000002281) == 0) && v21 != 1)
    {
      return 0;
    }
  }

  else if ((v21 - 21 > 0x2D || ((1 << (v21 - 21)) & 0x250000002281) == 0) && v21 != 2)
  {
    return 0;
  }

  return result;
}

void sub_91CB60(uint64_t a1@<X0>, int **a2@<X1>, _BYTE *a3@<X2>, void *a4@<X3>, __int128 **a6@<X8>)
{
  if (*(a2 + 8))
  {
    v7 = *a2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || a2[1] == 0)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    return;
  }

  sub_2B7A20(*(a1 + 8), a2[4] & 0xFFFFFFFFFFFFFFLL, v87);
  sub_2B7A20(*(a1 + 8), a2[4] & 0xFFFFFFFFFFFFFFLL, __p);
  v13 = __p[1];
  if (__p[1] == v82)
  {
    v17 = 0x7FFFFFFF;
    v18 = 0xFFFFFFFF00000000;
    v19 = 0xFFFFFFFFLL;
    if (!__p[1])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = sub_31AA0C(__p);
  v15 = v14;
  v17 = v16;
  v18 = v14 & 0xFFFFFFFF00000000;
  v13 = __p[1];
  v19 = v15;
  if (__p[1])
  {
LABEL_12:
    *&v82 = v13;
    operator delete(v13);
  }

LABEL_13:
  v85 = v18 | v19;
  v86 = v17;
  v20 = (*a2 - **a2);
  if (*v20 >= 0xDu && (v21 = v20[6]) != 0)
  {
    v22 = 4 * *(*a2 + v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_2AF704(*(a1 + 8) + 3896, 1u, 0);
  v24 = &v23[-*v23];
  if (*v24 < 0xBu)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 5);
    if (v25)
    {
      v25 += &v23[*&v23[v25]];
    }
  }

  v26 = (v25 + v22 + 4 + *(v25 + v22 + 4));
  v27 = (v26 - *v26);
  if (*v27 < 5u || (v28 = v27[2]) == 0)
  {
    v84 = 0;
    LOBYTE(__dst) = 0;
    v32 = *a2;
    if (a3[5] == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v29 = (v26 + v28);
  v30 = *v29;
  v31 = *(v29 + v30);
  if (v31 >= 0x17)
  {
    operator new();
  }

  v84 = *(v29 + v30);
  if (v31)
  {
    memcpy(&__dst, v29 + v30 + 4, v31);
    *(&__dst + v31) = 0;
    v32 = *a2;
    if (a3[5] == 1)
    {
      goto LABEL_32;
    }

LABEL_26:
    if (a3[3] == 1)
    {
      v33 = (v32 - *v32);
      v34 = *v33;
      if (*(a2 + 38))
      {
        if (v34 >= 0x4D)
        {
          v35 = v33[38];
          if (v35)
          {
            v36 = 8;
LABEL_45:
            v41 = 0;
            v42 = (*(v32 + v35) & v36) != 0;
            goto LABEL_51;
          }
        }
      }

      else if (v34 >= 0x4D)
      {
        v35 = v33[38];
        if (v35)
        {
          v36 = 4;
          goto LABEL_45;
        }
      }
    }

    goto LABEL_50;
  }

  *(&__dst + v31) = 0;
  v32 = *a2;
  if (a3[5] != 1)
  {
    goto LABEL_26;
  }

LABEL_32:
  if (a3[1] == 1)
  {
    v37 = (v32 - *v32);
    v38 = *v37;
    if (*(a2 + 38))
    {
      if (v38 >= 0x4D)
      {
        v39 = v37[38];
        if (v39)
        {
          v40 = 2;
LABEL_49:
          v42 = 0;
          v41 = (*(v32 + v39) & v40) != 0;
          goto LABEL_51;
        }
      }
    }

    else if (v38 >= 0x4D)
    {
      v39 = v37[38];
      if (v39)
      {
        v40 = 1;
        goto LABEL_49;
      }
    }
  }

LABEL_50:
  v41 = 0;
  v42 = 0;
LABEL_51:
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v43 = *(a2 + 38);
  v44 = *v32;
  v45 = -v44;
  v46 = (v32 - v44);
  v47 = *v46;
  if (*(a2 + 38))
  {
    if (v47 < 0x4D || !v46[38])
    {
      if (*v46 <= 0x4Cu)
      {
        goto LABEL_70;
      }

      goto LABEL_67;
    }

    if ((*(v32 + v46[38]) & 8) == 0)
    {
      goto LABEL_65;
    }

LABEL_61:
    if (!v41 && (a3[3] & 1) != 0)
    {
      sub_682E30(a4, &v85, &__dst, __p);
    }

    goto LABEL_65;
  }

  if (v47 < 0x4D || !v46[38])
  {
    if (*v46 > 0x4Cu)
    {
      goto LABEL_73;
    }

LABEL_77:
    v49 = v32 + v45;
    if (*(v32 + v45) > 0x4Cu)
    {
      goto LABEL_87;
    }

LABEL_91:
    v52 = (v32 + v45);
    if (*v52 <= 0x4Cu)
    {
      goto LABEL_135;
    }

    goto LABEL_99;
  }

  if ((*(v32 + v46[38]) & 4) != 0)
  {
    goto LABEL_61;
  }

LABEL_65:
  v46 = (v32 + v45);
  v48 = *(v32 + v45);
  if (*(a2 + 38))
  {
    if (v48 < 0x4D)
    {
      goto LABEL_70;
    }

LABEL_67:
    if (v46[38])
    {
      if ((*(v32 + v46[38]) & 2) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_75;
    }

LABEL_70:
    v49 = v32 + v45;
    if (*(v32 + v45) <= 0x4Cu)
    {
      goto LABEL_84;
    }

    goto LABEL_81;
  }

  if (v48 < 0x4D)
  {
    goto LABEL_77;
  }

LABEL_73:
  if (!v46[38])
  {
    goto LABEL_77;
  }

  v43 = 0;
  if ((*(v32 + v46[38]) & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_75:
  if (!v42 && (a3[1] & 1) != 0)
  {
    sub_682F48(a4, &v85, &__dst, __p);
  }

LABEL_79:
  v49 = v32 + v45;
  v50 = *(v32 + v45);
  if (v43)
  {
    if (v50 < 0x4D)
    {
      goto LABEL_84;
    }

LABEL_81:
    v51 = *(v49 + 38);
    if (v51)
    {
      if ((*(v32 + v51) & 0x20) == 0)
      {
        goto LABEL_93;
      }

LABEL_89:
      if (a3[2] == 1)
      {
        sub_682FD0(a4, &v85, &__dst, __p);
      }

      goto LABEL_93;
    }

LABEL_84:
    v52 = (v32 + v45);
    if (*v52 <= 0x4Cu)
    {
      goto LABEL_135;
    }

    goto LABEL_95;
  }

  if (v50 < 0x4D)
  {
    goto LABEL_91;
  }

LABEL_87:
  v53 = *(v49 + 38);
  if (!v53)
  {
    goto LABEL_91;
  }

  v43 = 0;
  if ((*(v32 + v53) & 0x10) != 0)
  {
    goto LABEL_89;
  }

LABEL_93:
  v52 = (v32 + v45);
  v54 = *v52;
  if (v43)
  {
    if (v54 < 0x4D)
    {
      goto LABEL_135;
    }

LABEL_95:
    v55 = v52[38];
    if (!v55 || (*(v32 + v55) & 0x80) == 0)
    {
      goto LABEL_135;
    }

LABEL_101:
    if (a3[2] != 1)
    {
      goto LABEL_135;
    }

    sub_91A920(*(a1 + 8), a2[4] & 0xFFFFFFFFFFFFFFLL, &v79);
    v57 = v79;
    if (v79 == v80)
    {
      if (v79)
      {
        v80 = v79;
        operator delete(v79);
      }

      goto LABEL_135;
    }

    sub_31BF20(v87, __p);
    sub_47190(v57, __p);
    v59 = v58;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v60 = *a2;
    v61 = (*a2 - **a2);
    v62 = 0.0;
    if (*v61 >= 9u)
    {
      v63 = v61[4];
      if (v63)
      {
        LODWORD(v62) = *(v60 + v63);
        v62 = *&v62;
      }
    }

    v64 = (1.0 - v59) * v62;
    if (v64 >= 0.0)
    {
      if (v64 >= 4.50359963e15)
      {
        goto LABEL_114;
      }

      v65 = (v64 + v64) + 1;
    }

    else
    {
      if (v64 <= -4.50359963e15)
      {
        goto LABEL_114;
      }

      v65 = (v64 + v64) - 1 + (((v64 + v64) - 1) >> 63);
    }

    v64 = (v65 >> 1);
LABEL_114:
    v78 = v64;
    v66 = (v60 - *v60);
    v67 = *v66;
    v68 = -1.0;
    if (*(a2 + 38))
    {
      if (v67 < 0x11)
      {
        goto LABEL_122;
      }

      v69 = v66[8];
      if (!v69)
      {
        goto LABEL_122;
      }
    }

    else
    {
      if (v67 < 0xF)
      {
        goto LABEL_122;
      }

      v69 = v66[7];
      if (!v69)
      {
        goto LABEL_122;
      }
    }

    v70 = *(v60 + v69);
    v68 = v70;
    if (!v70)
    {
      v68 = -1.0;
    }

LABEL_122:
    v77 = v68;
    if (*a3 != 1 || (v68 >= 0.0 ? (v71 = ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v71 = 1), v71 ? (v72 = *&v68 == 0) : (v72 = 1), !v72))
    {
      sub_683044(a4, &v78, v57, &__dst, __p);
    }

    sub_6830B8(a4, &v78, v57, &v77, a3[4], &__dst, __p);
  }

  if (v54 < 0x4D)
  {
    goto LABEL_135;
  }

LABEL_99:
  v56 = v52[38];
  if (v56 && (*(v32 + v56) & 0x40) != 0)
  {
    goto LABEL_101;
  }

LABEL_135:
  v73 = *a6;
  v74 = a6[1];
  v75 = 126 - 2 * __clz(0xD37A6F4DE9BD37A7 * ((v74 - *a6) >> 3));
  v7 = v74 == *a6;
  v79 = &v85;
  if (v7)
  {
    v76 = 0;
  }

  else
  {
    v76 = v75;
  }

  sub_9239AC(v73, v74, &v79, v76, 1);
  if (v84 < 0)
  {
    operator delete(__dst);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }
}

void sub_91D960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_682EB4(&a14);
  sub_5ECC44(&a14);
  if (*(v16 - 185) < 0)
  {
    operator delete(*(v16 - 208));
  }

  v18 = *(v16 - 160);
  if (v18)
  {
    *(v16 - 152) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_91DA74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x91DA18);
}

void sub_91DA8C(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X4>, __int128 **a6@<X8>)
{
  if (sub_4D1DC0(a2) <= a4)
  {
    goto LABEL_63;
  }

  v12 = sub_50EA30(a2 + 138, a3);
  v13 = v12;
  if (*(v12 + 56) == -1)
  {
    v14 = *(v12 + 40);
  }

  else
  {
    v14 = *(v12 + 56);
  }

  v15 = sub_4D1F50(a2, a4);
  v16 = sub_2B51D8(a1[1], *(v15 + 32) | (*(v15 + 36) << 32));
  v17 = (v16 - *v16);
  if (*v17 >= 0x9Bu)
  {
    v18 = v17[77];
    if (v18)
    {
      if ((*(v16 + v18 + 3) & 4) != 0)
      {
        v22 = 1;
        goto LABEL_14;
      }
    }
  }

  v19 = *(v15 + 8);
  if (v19)
  {
    v20 = (v19 - *v19);
    if (*v20 >= 0x11u)
    {
      v21 = v20[8];
      if (v21)
      {
        v22 = (*(v19 + v21) >> 2) & 1;
LABEL_14:
        v51 = v22;
        goto LABEL_15;
      }
    }
  }

  v51 = 0;
LABEL_15:
  if (*(a1[2] + 2328) >= *(v13 + 1008))
  {
    v23 = (v13 + 1008);
  }

  else
  {
    v23 = (a1[2] + 2328);
  }

  v49 = a4;
  if (a4 >= v14)
  {
    v24 = 0;
    v50 = v14;
    v25 = v49;
    v26 = v49;
    while (1)
    {
      if (v24 > *v23)
      {
        goto LABEL_58;
      }

      v27 = sub_4D1F50(a2, v26);
      v28 = *(v27 + 32);
      v29 = *(v27 + 16);
      v54[0] = *v27;
      v54[1] = v29;
      v55 = v28;
      if (v26 != v25)
      {
        break;
      }

LABEL_55:
      v52 = v26;
      sub_91CB60(a1, v54, a5, &v52, a6);
      if (*a6 != a6[1])
      {
        return;
      }

      v24 += sub_4D23F8(a2, v26, v44);
      v52 = a6;
      sub_5ECC44(&v52);
      v32 = v26-- <= v50;
      if (v32)
      {
        goto LABEL_58;
      }
    }

    sub_6E5620(*a1, v54, 0, &v52);
    v30 = *v52;
    v31 = v52[1];
    if (*v52 != v31)
    {
      while (1)
      {
        if (*(v30 + 241) == 1 && (*(v30 + 242) & 1) == 0)
        {
          v42 = *(v30 + 24);
          if (v42 != 3 && v42 != 0)
          {
            break;
          }
        }

        v30 += 248;
        if (v30 == v31)
        {
          goto LABEL_30;
        }
      }
    }

    v32 = v30 == v31 || v24 < *(a1[2] + 2336);
    v33 = v32;
    if (((v33 | v51) & 1) == 0)
    {
      v40 = 0;
      v51 = 0;
      v41 = v53;
      if (!v53)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

LABEL_30:
    v34 = sub_2B51D8(a1[1], v55 | (WORD2(v55) << 32));
    v35 = (v34 - *v34);
    if (*v35 < 0x9Bu || (v36 = v35[77]) == 0 || (*(v34 + v36 + 3) & 4) == 0)
    {
      v37 = DWORD2(v54[0]);
      if (*(&v54[0] + 1))
      {
        v38 = (*(&v54[0] + 1) - **(&v54[0] + 1));
        if (*v38 >= 0x11u)
        {
          v39 = v38[8];
          if (v39)
          {
            v51 &= (*(*(&v54[0] + 1) + v39) >> 2) & 1;
            v40 = 1;
            v41 = v53;
            if (!v53)
            {
              goto LABEL_54;
            }

            goto LABEL_52;
          }
        }

        v37 = 0;
      }

      v51 &= v37;
      v40 = 1;
      v41 = v53;
      if (!v53)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v51 &= 1u;
    v40 = 1;
    v41 = v53;
    if (!v53)
    {
      goto LABEL_54;
    }

LABEL_52:
    if (!atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v41->__on_zero_shared)(v41);
      std::__shared_weak_count::__release_weak(v41);
    }

LABEL_54:
    v25 = v49;
    if ((v40 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

LABEL_58:
  if (v49 + 1 < *(v13 + 24))
  {
    v45 = 0;
    v46 = v49 + 1;
    do
    {
      if (v45 > *v23)
      {
        break;
      }

      v47 = sub_4D1F50(a2, v46);
      *&v54[0] = v46;
      sub_91CB60(a1, v47, a5, v54, a6);
      if (*a6 != a6[1])
      {
        return;
      }

      v45 += sub_4D23F8(a2, v46, v48);
      *&v54[0] = a6;
      sub_5ECC44(v54);
      ++v46;
    }

    while (v46 < *(v13 + 24));
  }

LABEL_63:
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
}

void sub_91DEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_91DEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECC44(va);
  _Unwind_Resume(a1);
}

void sub_91DECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_5ECC44(va);
  _Unwind_Resume(a1);
}

void sub_91DEE4(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, int a5@<W4>, int *a6@<X5>, void *a7@<X8>)
{
  v12 = sub_4D1F50(a2, *a3);
  sub_91E27C(a1, v12, v46);
  if (v47)
  {
    v13 = *&v46[0] == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || *(&v46[0] + 1) == 0)
  {
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
    return;
  }

  v15 = (*&v46[0] - **&v46[0]);
  if (*v15 >= 9u && (v16 = v15[4]) != 0)
  {
    v17 = *(*&v46[0] + v16);
  }

  else
  {
    v17 = 0;
  }

  v44 = 0uLL;
  v45 = 0;
  v18 = a1[2];
  v19 = 2008;
  if (a5)
  {
    v19 = 2032;
  }

  v20 = 2016;
  if (a5)
  {
    v20 = 2040;
  }

  v21 = *(v18 + v19);
  v22 = *(v18 + v20);
  if (v21 <= v22)
  {
    v23 = *(v18 + v20);
  }

  else
  {
    v23 = *(v18 + v19);
  }

  v42 = *a6;
  v43[1] = HIBYTE(*(a6 + 2));
  BYTE2(v42) = 0;
  LOBYTE(v42) = 0;
  v43[0] = 0;
LABEL_23:
  if (v17 <= v23)
  {
    sub_6E5620(*a1, v46, 0, &v40);
    v25 = *v40;
    v24 = v40[1];
    if (*v40 != v24)
    {
      while (1)
      {
        if (*(v25 + 241) == 1 && (*(v25 + 242) & 1) == 0)
        {
          v26 = *(v25 + 6);
          if (v26 != 3 && v26 != 0)
          {
            break;
          }
        }

        v25 += 31;
        if (v25 == v24)
        {
          v25 = v40[1];
          break;
        }
      }
    }

    *&v36[0] = *a4;
    sub_91CB60(a1, v46, &v42, v36, &v38);
    if (v38 == v39)
    {
      goto LABEL_43;
    }

    v28 = v38;
    while (1)
    {
      v29 = *(v28 + 4);
      v30 = v21;
      if (v29 != 1)
      {
        if (v29 != 2)
        {
          goto LABEL_38;
        }

        v30 = v22;
      }

      if (v17 <= v30)
      {
        sub_5FD2CC(&v44, v38, v39, 0xD37A6F4DE9BD37A7 * ((v39 - v38) >> 3));
LABEL_43:
        if (v25 == v40[1])
        {
          sub_91E27C(a1, v46, v36);
          v46[0] = v36[0];
          v46[1] = v36[1];
          v47 = v37;
          v31 = 3;
          if (v37 && *&v46[0] && *(&v46[0] + 1))
          {
            v32 = (*&v46[0] - **&v46[0]);
            if (*v32 >= 9u && (v33 = v32[4]) != 0)
            {
              v34 = *(*&v46[0] + v33);
            }

            else
            {
              v34 = 0;
            }

            v31 = 0;
            v17 += v34;
          }
        }

        else
        {
          *a7 = v44;
          a7[2] = v45;
          v45 = 0;
          v44 = 0uLL;
          v31 = 1;
        }

        *&v36[0] = &v38;
        sub_5ECC44(v36);
        v35 = v41;
        if (v41)
        {
          if (!atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v35->__on_zero_shared)(v35);
            std::__shared_weak_count::__release_weak(v35);
          }
        }

        if (v31)
        {
          if (v31 != 3)
          {
            goto LABEL_58;
          }

          break;
        }

        goto LABEL_23;
      }

LABEL_38:
      v28 = (v28 + 184);
      if (v28 == v39)
      {
        goto LABEL_43;
      }
    }
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
LABEL_58:
  *&v36[0] = &v44;
  sub_5ECC44(v36);
}

void sub_91E220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a10 = &a15;
  sub_5ECC44(&a10);
  sub_1F1A8(&a18);
  a10 = &a21;
  sub_5ECC44(&a10);
  _Unwind_Resume(a1);
}

void sub_91E260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a10 = &a21;
  sub_5ECC44(&a10);
  _Unwind_Resume(a1);
}

void sub_91E27C(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_6E5620(*a1, a3, 0, &v22);
  v6 = *v22;
  v7 = v22[1];
  if (*v22 != v7)
  {
    while (1)
    {
      if (*(v6 + 241) == 1)
      {
        v8 = *(v6 + 24);
        if (!v8 || v8 == 3)
        {
          break;
        }
      }

      v6 += 248;
      if (v6 == v7)
      {
        goto LABEL_16;
      }
    }
  }

  if (v6 == v7 || (v11 = *v6, v10 = *(v6 + 8), v11 == v10))
  {
LABEL_16:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0x1000000000000;
    v18 = v23;
    if (!v23)
    {
      return;
    }

    goto LABEL_22;
  }

  v12 = a1[1];
  v13 = *(v10 - 8);
  v14 = sub_2B51D8(v12, v13 & 0xFFFFFFFFFFFFLL);
  if (*(v12 + 7772) == 1)
  {
    v15 = sub_30C50C(v12 + 3896, v13, 0);
    v16 = &v15[-*v15];
    if (*v16 < 5u)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 2);
      if (v17)
      {
        v17 += &v15[*&v15[v17]];
      }
    }

    v19 = v17 + ((v13 >> 30) & 0x3FFFC) + 4 + *(v17 + ((v13 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_31D7E8(v12, v13 & 0xFFFFFFFFFFFFLL, 1);
  *a4 = v14;
  *(a4 + 8) = v19;
  *(a4 + 16) = v20;
  *(a4 + 24) = v21;
  *(a4 + 32) = v13;
  v18 = v23;
  if (v23)
  {
LABEL_22:
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }
  }
}

void sub_91E444(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) == -1)
  {
    v7 = *(a3 + 24) - 1;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  v8 = sub_4D1F50(a2, v7);
  v9 = v8;
  v10 = (*v8 - **v8);
  if (*v10 >= 0xDu && (v11 = v10[6]) != 0)
  {
    v12 = 4 * *(*v8 + v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_2AF704(*(a1 + 8) + 3896, 1u, 0);
  v14 = &v13[-*v13];
  if (*v14 < 0xBu)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 5);
    if (v15)
    {
      v15 += &v13[*&v13[v15]];
    }
  }

  v16 = (v15 + v12 + 4 + *(v15 + v12 + 4));
  v17 = (v16 - *v16);
  if (*v17 >= 5u && (v18 = v17[2]) != 0)
  {
    v19 = (v16 + v18);
    v20 = *v19;
    v21 = *(v19 + v20);
    if (v21 >= 0x17)
    {
      operator new();
    }

    v37 = *(v19 + v20);
    if (v21)
    {
      memcpy(&__dst, v19 + v20 + 4, v21);
    }

    p_dst = (&__dst + v21);
  }

  else
  {
    v37 = 0;
    p_dst = &__dst;
  }

  *p_dst = 0;
  v23 = *v9;
  v24 = (*v9 - **v9);
  v25 = *v24;
  if (v25 >= 0x2F && v24[23])
  {
    v26 = *(v23 + v24[23]);
    v27 = v26 > 0x2F;
    v28 = (1 << v26) & 0xE2E040048000;
    if (!v27 && v28 != 0)
    {
      if (*(v9 + 38))
      {
        if (v25 >= 0x4D)
        {
          v30 = v24[38];
          if (v30)
          {
            if ((*(v23 + v30) & 8) != 0 || (*(v23 + v30) & 2) != 0)
            {
              goto LABEL_37;
            }
          }
        }
      }

      else if (v25 >= 0x4D)
      {
        v31 = v24[38];
        if (v31)
        {
          if (*(v23 + v31) & 4) != 0 || (*(v23 + v31))
          {
            goto LABEL_37;
          }
        }
      }

      v32 = sub_3116D0(v9);
      v33 = *(a1 + 8);
      sub_2B365C(v33, v32, 0, (v33 + 7800));
      v34 = *(v33 + 7800);
      v35 = *(v33 + 7808);
      if (v35 != v34)
      {
        if (((v35 - v34) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }
    }
  }

LABEL_37:
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 1;
  *(a4 + 8) = -1;
  *(a4 + 16) = -1;
  *(a4 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0xBFF0000000000000;
  *(a4 + 96) = 0;
  if (v37 < 0)
  {
    operator delete(__dst);
  }
}

void sub_91EB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = *(v17 - 120);
  if (v19)
  {
    *(v17 - 112) = v19;
    operator delete(v19);
  }

  operator delete(__p);
  if (*(v17 - 129) < 0)
  {
    operator delete(*(v17 - 152));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_91EBEC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  result = sub_578320((a3 + 1104), a2);
  if (*(result + 40) != -1 && *(result + 1008) != 0)
  {
    v12 = result;
    if ((sub_6838EC(a4) > 1 || *(a4 + 80) == 1) && *a5 != -1)
    {
      *(a4 + 16) = (*a5)++;
    }

    result = sub_6834F4(a4);
    if (result)
    {
      if ((*(a4 + 4) - 1) <= 1)
      {
        v13 = *(a4 + 16);
        *(v12 + 2088) = *a4;
        *(v12 + 2104) = v13;
        if (v12 + 2088 != a4)
        {
          sub_5FD2CC((v12 + 2120), *(a4 + 32), *(a4 + 40), 0xD37A6F4DE9BD37A7 * ((*(a4 + 40) - *(a4 + 32)) >> 3));
        }

        v14 = *(a4 + 56);
        v15 = *(a4 + 72);
        *(v12 + 2169) = *(a4 + 81);
        *(v12 + 2160) = v15;
        *(v12 + 2144) = v14;
      }

      v16 = *(a3 + 10328);
      if (v16 >= *(a3 + 10336))
      {
        v20 = sub_820B08((a3 + 10320), a4);
      }

      else
      {
        v17 = *(a4 + 16);
        *v16 = *a4;
        *(v16 + 16) = v17;
        *(v16 + 40) = 0;
        *(v16 + 48) = 0;
        *(v16 + 32) = 0;
        sub_5F3370(v16 + 32, *(a4 + 32), *(a4 + 40), 0xD37A6F4DE9BD37A7 * ((*(a4 + 40) - *(a4 + 32)) >> 3));
        v18 = *(a4 + 56);
        v19 = *(a4 + 72);
        *(v16 + 81) = *(a4 + 81);
        *(v16 + 72) = v19;
        *(v16 + 56) = v18;
        v20 = (v16 + 104);
        *(a3 + 10328) = v16 + 104;
      }

      *(a3 + 10328) = v20;
      *a6 += sub_683910(a4);
      result = sub_683924(a4);
      a6[1] += result;
    }
  }

  return result;
}

unint64_t sub_91EDA4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (*(*(result + 24) + 1527) == 1)
  {
    if ((*(v4 + 2474) & 1) == 0)
    {
      return result;
    }
  }

  else if (*(v4 + 2475) != 1)
  {
    return result;
  }

  v5 = *(a2 + 1112) - *(a2 + 1104);
  if (v5)
  {
    v6 = 0;
    v7 = 0x3795876FF3795877 * (v5 >> 3);
    do
    {
      result = sub_578320((a2 + 1104), v6);
      v8 = *(result + 160);
      if (((v8 - 25) > 0x3F || ((1 << (v8 - 25)) & 0x9000000000000001) == 0) && v8 != 17)
      {
        v11 = *(result + 24) + 1;
        v12 = result;
        result = sub_4D1DC0(a2);
        v13 = *(v12 + 24);
        if (v11 <= result)
        {
          ++v13;
        }

        v14 = *(v12 + 40);
        if (v14 <= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = *(v12 + 40);
        }

        v16 = v14 + 1;
        if (v14 < v13 && v16 != v15)
        {
          v18 = *(v3 + 8);
          v19 = *(sub_4D1F50(a2, v14) + 32);
          v20 = sub_4D1F50(a2, v16);
          sub_321094(v18, v19 & 0xFFFFFFFFFFFFFFLL, *(v20 + 32) & 0xFFFFFFFFFFFFFFLL, *(a2 + 1096), *(*(a2 + 1200) + 4 * v16));
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

void sub_91EF34(uint64_t a1, uint64_t a2, unint64_t a3, char a4, void *a5)
{
  v20 = a4;
  v10 = sub_578320(a5 + 138, a3);
  v12 = *(v10 + 1968);
  if (*(v10 + 1960) == v12)
  {
    v18 = a2;
    v19 = sub_4D2630(a5, a2, v11);
    v14 = *(v10 + 1968);
    if (v14 < *(v10 + 1976))
    {
LABEL_6:
      sub_67E288(*(v10 + 1968), a2, a4, &v19);
      v15 = v14 + 40;
      *(v10 + 1968) = v14 + 40;
LABEL_8:
      *(v10 + 1968) = v15;
      sub_91F128(a1, a2, a3, a5);
      return;
    }

LABEL_7:
    v15 = sub_921680((v10 + 1960), &v18, &v20, &v19);
    goto LABEL_8;
  }

  if (sub_4D2544(a5, *(*(v12 - 32) - 8), 0, a2, 1u, v11) > *(*(a1 + 16) + 2480))
  {
    v18 = a2;
    v19 = sub_4D2630(a5, a2, v13);
    v14 = *(v10 + 1968);
    if (v14 < *(v10 + 1976))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  sub_67E308(v12 - 40, a2, a4);
  v16 = *(v10 + 2072);
  if (*(v10 + 2064) == v16 || !sub_6842B4(v16 - 432))
  {

    sub_91F128(a1, a2, a3, a5);
  }

  else
  {
    v17 = *(v10 + 2072) - 432;

    sub_6842E8(v17, a2);
  }
}

void sub_91F128(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v7 = sub_578320(a4 + 138, a3);
  v9 = *(v7 + 1968) - 40;
  v10 = *(v7 + 16);
  if (v10 < a2)
  {
    return;
  }

  v11 = v7;
  v19 = 0;
  if (v10 > a2)
  {
    v19 = sub_4D2544(a4, a2, 0, v10, 1u, v8);
  }

  v12 = v11[259];
  if (v11[258] == v12 || (v13 = sub_6842B4(v12 - 432), v12 = v11[259], !v13))
  {
    if (v12 >= v11[260])
    {
      v17 = sub_92183C(v11 + 258, &v19);
    }

    else
    {
      sub_683D58(v12, &v19);
      v17 = v12 + 432;
      v11[259] = v12 + 432;
    }

    v11[259] = v17;
    v18 = v17 - 432;
    goto LABEL_13;
  }

  if (sub_4D2544(a4, *(*(v12 - 232) - 8), 0, a2, 1u, v14) <= *(*(a1 + 16) + 2488))
  {
    v18 = v12 - 432;
LABEL_13:
    sub_6842E8(v18, a2);
    return;
  }

  v15 = v11[259];
  if (v15 >= v11[260])
  {
    v16 = sub_921990(v11 + 258, &v19, v9);
  }

  else
  {
    sub_684144(v11[259], &v19, v9);
    v16 = v15 + 432;
    v11[259] = v15 + 432;
  }

  v11[259] = v16;
}

uint64_t sub_91F2A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v10 = 0;
    while (v5 >= *(a3 + 40))
    {
      v11 = sub_4D1F50(a2, v5);
      v12 = (*v11 - **v11);
      v13 = *v12;
      if (*(v11 + 38))
      {
        if (v13 < 0x9F)
        {
          goto LABEL_17;
        }

        v14 = v12[79];
        if (!v14)
        {
          goto LABEL_17;
        }
      }

      else if (v13 < 0x9D || (v14 = v12[78]) == 0)
      {
LABEL_17:
        v18 = 0;
        v17 = 0;
        v20 = 0;
        v4 = 0;
        goto LABEL_29;
      }

      v15 = (*v11 + v14);
      v16 = *v15;
      v27 = 0;
      v28 = 0uLL;
      sub_315068(&v27, *(v15 + v16));
      sub_315204((v15 + v16), &v27);
      v17 = v27;
      v18 = v28;
      v19 = v27;
      if (v27 != v28)
      {
        v19 = v27;
        while (*v19 != a4)
        {
          v19 += 64;
          if (v19 == v28)
          {
            goto LABEL_28;
          }
        }
      }

      if (v19 != v28)
      {
        v21 = *(v19 + 5);
        v22 = *(v19 + 6);
        v23 = v21 + 8;
        if (v21 != v22 && v23 != v22)
        {
          do
          {
            if (*(v21 + 4) < *(v23 + 4))
            {
              v21 = v23;
            }

            v23 += 8;
          }

          while (v23 != v22);
        }

        if (v21 == v22)
        {
          if (!*(*(a1 + 16) + 2552))
          {
LABEL_36:
            v10 += sub_4D23F8(a2, v5, *&v28);
            if (v10 >= *(*(a1 + 16) + 2560))
            {
              v20 = 0;
              v4 = 1;
            }

            else
            {
              --v5;
              v20 = 1;
            }

            goto LABEL_29;
          }
        }

        else if (*(v21 + 4) >= *(*(a1 + 16) + 2552))
        {
          goto LABEL_36;
        }
      }

LABEL_28:
      v20 = 0;
      v4 = 0;
LABEL_29:
      if (v17)
      {
        while (v18 != v17)
        {
          v25 = *(v18 - 3);
          if (v25)
          {
            *(v18 - 2) = v25;
            operator delete(v25);
          }

          v18 -= 64;
        }

        operator delete(v17);
      }

      if ((v20 & 1) == 0)
      {
        return v4 & 1;
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

void sub_91F4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_315190(va);
  _Unwind_Resume(a1);
}

void sub_91F4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_315190(va);
  _Unwind_Resume(a1);
}

void sub_91F4F8(uint64_t a1@<X0>, int **a2@<X1>, _BYTE *a3@<X2>, void *a4@<X3>, __int128 **a6@<X8>)
{
  if (*(a2 + 8))
  {
    v7 = *a2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || a2[1] == 0)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    return;
  }

  sub_2B7A20(*(a1 + 8), a2[4] & 0xFFFFFFFFFFFFFFLL, v87);
  sub_2B7A20(*(a1 + 8), a2[4] & 0xFFFFFFFFFFFFFFLL, __p);
  v13 = __p[1];
  if (__p[1] == v82)
  {
    v17 = 0x7FFFFFFF;
    v18 = 0xFFFFFFFF00000000;
    v19 = 0xFFFFFFFFLL;
    if (!__p[1])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = sub_31AA0C(__p);
  v15 = v14;
  v17 = v16;
  v18 = v14 & 0xFFFFFFFF00000000;
  v13 = __p[1];
  v19 = v15;
  if (__p[1])
  {
LABEL_12:
    *&v82 = v13;
    operator delete(v13);
  }

LABEL_13:
  v85 = v18 | v19;
  v86 = v17;
  v20 = (*a2 - **a2);
  if (*v20 >= 0xDu && (v21 = v20[6]) != 0)
  {
    v22 = 4 * *(*a2 + v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_2AF704(*(a1 + 8) + 3896, 1u, 0);
  v24 = &v23[-*v23];
  if (*v24 < 0xBu)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 5);
    if (v25)
    {
      v25 += &v23[*&v23[v25]];
    }
  }

  v26 = (v25 + v22 + 4 + *(v25 + v22 + 4));
  v27 = (v26 - *v26);
  if (*v27 < 5u || (v28 = v27[2]) == 0)
  {
    v84 = 0;
    LOBYTE(__dst) = 0;
    v32 = *a2;
    if (a3[5] == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v29 = (v26 + v28);
  v30 = *v29;
  v31 = *(v29 + v30);
  if (v31 >= 0x17)
  {
    operator new();
  }

  v84 = *(v29 + v30);
  if (v31)
  {
    memcpy(&__dst, v29 + v30 + 4, v31);
    *(&__dst + v31) = 0;
    v32 = *a2;
    if (a3[5] == 1)
    {
      goto LABEL_32;
    }

LABEL_26:
    if (a3[3] == 1)
    {
      v33 = (v32 - *v32);
      v34 = *v33;
      if (*(a2 + 38))
      {
        if (v34 >= 0x4D)
        {
          v35 = v33[38];
          if (v35)
          {
            v36 = 8;
LABEL_45:
            v41 = 0;
            v42 = (*(v32 + v35) & v36) != 0;
            goto LABEL_51;
          }
        }
      }

      else if (v34 >= 0x4D)
      {
        v35 = v33[38];
        if (v35)
        {
          v36 = 4;
          goto LABEL_45;
        }
      }
    }

    goto LABEL_50;
  }

  *(&__dst + v31) = 0;
  v32 = *a2;
  if (a3[5] != 1)
  {
    goto LABEL_26;
  }

LABEL_32:
  if (a3[1] == 1)
  {
    v37 = (v32 - *v32);
    v38 = *v37;
    if (*(a2 + 38))
    {
      if (v38 >= 0x4D)
      {
        v39 = v37[38];
        if (v39)
        {
          v40 = 2;
LABEL_49:
          v42 = 0;
          v41 = (*(v32 + v39) & v40) != 0;
          goto LABEL_51;
        }
      }
    }

    else if (v38 >= 0x4D)
    {
      v39 = v37[38];
      if (v39)
      {
        v40 = 1;
        goto LABEL_49;
      }
    }
  }

LABEL_50:
  v41 = 0;
  v42 = 0;
LABEL_51:
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v43 = *(a2 + 38);
  v44 = *v32;
  v45 = -v44;
  v46 = (v32 - v44);
  v47 = *v46;
  if (*(a2 + 38))
  {
    if (v47 < 0x4D || !v46[38])
    {
      if (*v46 <= 0x4Cu)
      {
        goto LABEL_70;
      }

      goto LABEL_67;
    }

    if ((*(v32 + v46[38]) & 8) == 0)
    {
      goto LABEL_65;
    }

LABEL_61:
    if (!v41 && (a3[3] & 1) != 0)
    {
      sub_682E30(a4, &v85, &__dst, __p);
    }

    goto LABEL_65;
  }

  if (v47 < 0x4D || !v46[38])
  {
    if (*v46 > 0x4Cu)
    {
      goto LABEL_73;
    }

LABEL_77:
    v49 = v32 + v45;
    if (*(v32 + v45) > 0x4Cu)
    {
      goto LABEL_87;
    }

LABEL_91:
    v52 = (v32 + v45);
    if (*v52 <= 0x4Cu)
    {
      goto LABEL_135;
    }

    goto LABEL_99;
  }

  if ((*(v32 + v46[38]) & 4) != 0)
  {
    goto LABEL_61;
  }

LABEL_65:
  v46 = (v32 + v45);
  v48 = *(v32 + v45);
  if (*(a2 + 38))
  {
    if (v48 < 0x4D)
    {
      goto LABEL_70;
    }

LABEL_67:
    if (v46[38])
    {
      if ((*(v32 + v46[38]) & 2) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_75;
    }

LABEL_70:
    v49 = v32 + v45;
    if (*(v32 + v45) <= 0x4Cu)
    {
      goto LABEL_84;
    }

    goto LABEL_81;
  }

  if (v48 < 0x4D)
  {
    goto LABEL_77;
  }

LABEL_73:
  if (!v46[38])
  {
    goto LABEL_77;
  }

  v43 = 0;
  if ((*(v32 + v46[38]) & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_75:
  if (!v42 && (a3[1] & 1) != 0)
  {
    sub_682F48(a4, &v85, &__dst, __p);
  }

LABEL_79:
  v49 = v32 + v45;
  v50 = *(v32 + v45);
  if (v43)
  {
    if (v50 < 0x4D)
    {
      goto LABEL_84;
    }

LABEL_81:
    v51 = *(v49 + 38);
    if (v51)
    {
      if ((*(v32 + v51) & 0x20) == 0)
      {
        goto LABEL_93;
      }

LABEL_89:
      if (a3[2] == 1)
      {
        sub_682FD0(a4, &v85, &__dst, __p);
      }

      goto LABEL_93;
    }

LABEL_84:
    v52 = (v32 + v45);
    if (*v52 <= 0x4Cu)
    {
      goto LABEL_135;
    }

    goto LABEL_95;
  }

  if (v50 < 0x4D)
  {
    goto LABEL_91;
  }

LABEL_87:
  v53 = *(v49 + 38);
  if (!v53)
  {
    goto LABEL_91;
  }

  v43 = 0;
  if ((*(v32 + v53) & 0x10) != 0)
  {
    goto LABEL_89;
  }

LABEL_93:
  v52 = (v32 + v45);
  v54 = *v52;
  if (v43)
  {
    if (v54 < 0x4D)
    {
      goto LABEL_135;
    }

LABEL_95:
    v55 = v52[38];
    if (!v55 || (*(v32 + v55) & 0x80) == 0)
    {
      goto LABEL_135;
    }

LABEL_101:
    if (a3[2] != 1)
    {
      goto LABEL_135;
    }

    sub_91A920(*(a1 + 8), a2[4] & 0xFFFFFFFFFFFFFFLL, &v79);
    v57 = v79;
    if (v79 == v80)
    {
      if (v79)
      {
        v80 = v79;
        operator delete(v79);
      }

      goto LABEL_135;
    }

    sub_31BF20(v87, __p);
    sub_47190(v57, __p);
    v59 = v58;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v60 = *a2;
    v61 = (*a2 - **a2);
    v62 = 0.0;
    if (*v61 >= 9u)
    {
      v63 = v61[4];
      if (v63)
      {
        LODWORD(v62) = *(v60 + v63);
        v62 = *&v62;
      }
    }

    v64 = (1.0 - v59) * v62;
    if (v64 >= 0.0)
    {
      if (v64 >= 4.50359963e15)
      {
        goto LABEL_114;
      }

      v65 = (v64 + v64) + 1;
    }

    else
    {
      if (v64 <= -4.50359963e15)
      {
        goto LABEL_114;
      }

      v65 = (v64 + v64) - 1 + (((v64 + v64) - 1) >> 63);
    }

    v64 = (v65 >> 1);
LABEL_114:
    v78 = v64;
    v66 = (v60 - *v60);
    v67 = *v66;
    v68 = -1.0;
    if (*(a2 + 38))
    {
      if (v67 < 0x11)
      {
        goto LABEL_122;
      }

      v69 = v66[8];
      if (!v69)
      {
        goto LABEL_122;
      }
    }

    else
    {
      if (v67 < 0xF)
      {
        goto LABEL_122;
      }

      v69 = v66[7];
      if (!v69)
      {
        goto LABEL_122;
      }
    }

    v70 = *(v60 + v69);
    v68 = v70;
    if (!v70)
    {
      v68 = -1.0;
    }

LABEL_122:
    v77 = v68;
    if (*a3 != 1 || (v68 >= 0.0 ? (v71 = ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v71 = 1), v71 ? (v72 = *&v68 == 0) : (v72 = 1), !v72))
    {
      sub_683044(a4, &v78, v57, &__dst, __p);
    }

    sub_6830B8(a4, &v78, v57, &v77, a3[4], &__dst, __p);
  }

  if (v54 < 0x4D)
  {
    goto LABEL_135;
  }

LABEL_99:
  v56 = v52[38];
  if (v56 && (*(v32 + v56) & 0x40) != 0)
  {
    goto LABEL_101;
  }

LABEL_135:
  v73 = *a6;
  v74 = a6[1];
  v75 = 126 - 2 * __clz(0xD37A6F4DE9BD37A7 * ((v74 - *a6) >> 3));
  v7 = v74 == *a6;
  v79 = &v85;
  if (v7)
  {
    v76 = 0;
  }

  else
  {
    v76 = v75;
  }

  sub_9254FC(v73, v74, &v79, v76, 1);
  if (v84 < 0)
  {
    operator delete(__dst);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }
}

void sub_9202F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_682EB4(&a14);
  sub_5ECC44(&a14);
  if (*(v16 - 185) < 0)
  {
    operator delete(*(v16 - 208));
  }

  v18 = *(v16 - 160);
  if (v18)
  {
    *(v16 - 152) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_92040C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x9203B0);
}

void sub_920424(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) == -1)
  {
    v7 = *(a3 + 24) - 1;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  v8 = sub_4D1F50(a2, v7);
  v9 = v8;
  v10 = (*v8 - **v8);
  if (*v10 >= 0xDu && (v11 = v10[6]) != 0)
  {
    v12 = 4 * *(*v8 + v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_2AF704(*(a1 + 8) + 3896, 1u, 0);
  v14 = &v13[-*v13];
  if (*v14 < 0xBu)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 5);
    if (v15)
    {
      v15 += &v13[*&v13[v15]];
    }
  }

  v16 = (v15 + v12 + 4 + *(v15 + v12 + 4));
  v17 = (v16 - *v16);
  if (*v17 >= 5u && (v18 = v17[2]) != 0)
  {
    v19 = (v16 + v18);
    v20 = *v19;
    v21 = *(v19 + v20);
    if (v21 >= 0x17)
    {
      operator new();
    }

    v37 = *(v19 + v20);
    if (v21)
    {
      memcpy(&__dst, v19 + v20 + 4, v21);
    }

    p_dst = (&__dst + v21);
  }

  else
  {
    v37 = 0;
    p_dst = &__dst;
  }

  *p_dst = 0;
  v23 = *v9;
  v24 = (*v9 - **v9);
  v25 = *v24;
  if (v25 >= 0x2F && v24[23])
  {
    v26 = *(v23 + v24[23]);
    v27 = v26 > 0x2F;
    v28 = (1 << v26) & 0xE2E040048000;
    if (!v27 && v28 != 0)
    {
      if ((*(v9 + 39) & 0x20) != 0)
      {
        if (v25 >= 0x4D)
        {
          v30 = v24[38];
          if (v30)
          {
            if ((*(v23 + v30) & 4) != 0)
            {
              goto LABEL_37;
            }

            v31 = 1;
LABEL_36:
            if ((*(v23 + v30) & v31) != 0)
            {
              goto LABEL_37;
            }
          }
        }
      }

      else if (v25 >= 0x4D)
      {
        v30 = v24[38];
        if (v30)
        {
          if ((*(v23 + v30) & 8) != 0)
          {
            goto LABEL_37;
          }

          v31 = 2;
          goto LABEL_36;
        }
      }

      v32 = sub_314B90(v9);
      v33 = *(a1 + 8);
      sub_2B365C(v33, v32, 0, (v33 + 7800));
      v34 = *(v33 + 7800);
      v35 = *(v33 + 7808);
      if (v35 != v34)
      {
        if (((v35 - v34) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }
    }
  }

LABEL_37:
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 1;
  *(a4 + 8) = -1;
  *(a4 + 16) = -1;
  *(a4 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0xBFF0000000000000;
  *(a4 + 96) = 0;
  if (v37 < 0)
  {
    operator delete(__dst);
  }
}

void sub_920B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_682EB4(va);
  operator delete(__p);
  if (*(v16 - 97) < 0)
  {
    operator delete(*(v16 - 120));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_920B60(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  result = sub_578320((a3 + 1104), a2);
  if (*(result + 40) != -1 && *(result + 1008) != 0)
  {
    v12 = result;
    if ((sub_6838EC(a4) > 1 || *(a4 + 80) == 1) && *a5 != -1)
    {
      *(a4 + 16) = (*a5)++;
    }

    result = sub_6834F4(a4);
    if (result)
    {
      if ((*(a4 + 4) - 1) <= 1)
      {
        v13 = *(a4 + 16);
        *(v12 + 2088) = *a4;
        *(v12 + 2104) = v13;
        if (v12 + 2088 != a4)
        {
          sub_5FD2CC((v12 + 2120), *(a4 + 32), *(a4 + 40), 0xD37A6F4DE9BD37A7 * ((*(a4 + 40) - *(a4 + 32)) >> 3));
        }

        v14 = *(a4 + 56);
        v15 = *(a4 + 72);
        *(v12 + 2169) = *(a4 + 81);
        *(v12 + 2160) = v15;
        *(v12 + 2144) = v14;
      }

      v16 = *(a3 + 10328);
      if (v16 >= *(a3 + 10336))
      {
        v20 = sub_820B08((a3 + 10320), a4);
      }

      else
      {
        v17 = *(a4 + 16);
        *v16 = *a4;
        *(v16 + 16) = v17;
        *(v16 + 40) = 0;
        *(v16 + 48) = 0;
        *(v16 + 32) = 0;
        sub_5F3370(v16 + 32, *(a4 + 32), *(a4 + 40), 0xD37A6F4DE9BD37A7 * ((*(a4 + 40) - *(a4 + 32)) >> 3));
        v18 = *(a4 + 56);
        v19 = *(a4 + 72);
        *(v16 + 81) = *(a4 + 81);
        *(v16 + 72) = v19;
        *(v16 + 56) = v18;
        v20 = (v16 + 104);
        *(a3 + 10328) = v16 + 104;
      }

      *(a3 + 10328) = v20;
      *a6 += sub_683910(a4);
      result = sub_683924(a4);
      a6[1] += result;
    }
  }

  return result;
}