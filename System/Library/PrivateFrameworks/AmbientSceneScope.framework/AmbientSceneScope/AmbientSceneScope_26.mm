void sub_23F13273C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394ED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394ED8))
  {
    sub_23F132854();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E394EC0, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F132854()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0B2960(__p);
}

void sub_23F1328C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F1328E0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F132958(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F132A10(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F132AB4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 19)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F132EAC(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v21 = v4;
      *(&v21 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v21 = v4;
    }
  }

  else
  {
    v21 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v22 + 4) = v12;
  v13 = v12;
  LODWORD(v22) = 3;
  v14 = v22;
  v15 = HIDWORD(v12);
  LODWORD(v23) = 1;
  HIDWORD(v23) = v10 | v8;
  v16 = v23;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v23;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v19 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v21 + 1))
  {
    atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v21;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v21 + 1) && !atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v21 + 1) + 16))(*(&v21 + 1));

    std::__shared_weak_count::__release_weak(*(&v21 + 1));
  }
}

void sub_23F132E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F132EAC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394EF8))
  {
    sub_23F132FC4();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E394EE0, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F132FC4()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0B33B8(__p);
}

void sub_23F133034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F133050(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F1330C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F133180(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F133224(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 20)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F13361C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v21 = v4;
      *(&v21 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v21 = v4;
    }
  }

  else
  {
    v21 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v22 + 4) = v12;
  v13 = v12;
  LODWORD(v22) = 3;
  v14 = v22;
  v15 = HIDWORD(v12);
  LODWORD(v23) = 1;
  HIDWORD(v23) = v10 | v8;
  v16 = v23;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v23;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v19 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v21 + 1))
  {
    atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v21;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v21 + 1) && !atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v21 + 1) + 16))(*(&v21 + 1));

    std::__shared_weak_count::__release_weak(*(&v21 + 1));
  }
}

void sub_23F1335CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F13361C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394F18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394F18))
  {
    sub_23F133734();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E394F00, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F133734()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0B3E10(__p);
}

void sub_23F1337A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F1337C0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F133838(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1338F0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F133994(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 22)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F133D8C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v21 = v4;
      *(&v21 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v21 = v4;
    }
  }

  else
  {
    v21 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v22 + 4) = v12;
  v13 = v12;
  LODWORD(v22) = 3;
  v14 = v22;
  v15 = HIDWORD(v12);
  LODWORD(v23) = 1;
  HIDWORD(v23) = v10 | v8;
  v16 = v23;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v23;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v19 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v21 + 1))
  {
    atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v21;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v21 + 1) && !atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v21 + 1) + 16))(*(&v21 + 1));

    std::__shared_weak_count::__release_weak(*(&v21 + 1));
  }
}

void sub_23F133D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F133D8C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394F38))
  {
    sub_23F133EA4();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E394F20, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F133EA4()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0B4B9C(__p);
}

void sub_23F133F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F133F30(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F133FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F134060(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F134104(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 23)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1344FC(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v21 = v4;
      *(&v21 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v21 = v4;
    }
  }

  else
  {
    v21 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v22 + 4) = v12;
  v13 = v12;
  LODWORD(v22) = 3;
  v14 = v22;
  v15 = HIDWORD(v12);
  LODWORD(v23) = 1;
  HIDWORD(v23) = v10 | v8;
  v16 = v23;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v23;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v19 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v21 + 1))
  {
    atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v21;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v21 + 1) && !atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v21 + 1) + 16))(*(&v21 + 1));

    std::__shared_weak_count::__release_weak(*(&v21 + 1));
  }
}

void sub_23F1344AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F1344FC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394F58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394F58))
  {
    sub_23F134614();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E394F40, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F134614()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0B564C(__p);
}

void sub_23F134684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F1346A0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F134718(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1347D0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F134874(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 24)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F134C6C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v21 = v4;
      *(&v21 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v21 = v4;
    }
  }

  else
  {
    v21 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v22 + 4) = v12;
  v13 = v12;
  LODWORD(v22) = 3;
  v14 = v22;
  v15 = HIDWORD(v12);
  LODWORD(v23) = 1;
  HIDWORD(v23) = v10 | v8;
  v16 = v23;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v23;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v19 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v21 + 1))
  {
    atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v21;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v21 + 1) && !atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v21 + 1) + 16))(*(&v21 + 1));

    std::__shared_weak_count::__release_weak(*(&v21 + 1));
  }
}

void sub_23F134C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F134C6C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394F78))
  {
    sub_23F134D84();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E394F60, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F134D84()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0B60FC(__p);
}

void sub_23F134DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F134E10(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F134E88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F134F40(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F134FE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 25)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1353D8(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F135388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F1353D8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394F98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394F98))
  {
    sub_23F1354F0();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E394F80, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F1354F0()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0B6BAC(__p);
}

void sub_23F135560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F13557C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F1355F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1356AC(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F135750(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 26)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F135B48(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F135AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F135B48(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394FB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394FB8))
  {
    sub_23F135C60();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E394FA0, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F135C60()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0B7790(__p);
}

void sub_23F135CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F135CEC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F135D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F135E1C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F135EC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 27)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1362B8(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F136268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F1362B8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394FD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394FD8))
  {
    sub_23F1363D0();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E394FC0, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F1363D0()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0B81E8(__p);
}

void sub_23F136440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F13645C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F1364D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F13658C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F136630(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 28)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F136A28(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F1369D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F136A28(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394FF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394FF8))
  {
    sub_23F136B40();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E394FE0, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F136B40()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0B8C40(__p);
}

void sub_23F136BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F136BCC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F136C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F136CFC(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F136DA0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 29)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F137194(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F137144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F137194(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395018))
  {
    sub_23F1372AC();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E395000, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F1372AC()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0B9564(__p);
}

void sub_23F13731C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F137338(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F1373B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F137468(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F13750C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 30)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F137904(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F1378B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F137904(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395038))
  {
    sub_23F137A1C();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E395020, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F137A1C()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0BA014(__p);
}

void sub_23F137A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F137AA8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F137B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F137BD8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F137C7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 31)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F138074(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F138024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F138074(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395058))
  {
    sub_23F13818C();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E395040, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F13818C()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0BAAC4(__p);
}

void sub_23F1381FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F138218(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F138290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F138348(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F1383EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 32)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1387E4(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F138794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F1387E4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395078))
  {
    sub_23F1388FC();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E395060, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F1388FC()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0BB574(__p);
}

void sub_23F13896C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F138988(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F138A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F138AB8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F138B5C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 33)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F138F50(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F138F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F138F50(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395098, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395098))
  {
    sub_23F139068();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E395080, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F139068()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0BC024(__p);
}

void sub_23F1390D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F1390F4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F13916C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F139224(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F1392C8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 34)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F1396C0(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F139670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F1396C0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E3950B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3950B8))
  {
    sub_23F1397D8();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E3950A0, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F1397D8()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0BCC08(__p);
}

void sub_23F139848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F139864(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F1398DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F139994(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F139A38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 35)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F139E30(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F139DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F139E30(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E3950D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3950D8))
  {
    sub_23F139F48();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E3950C0, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F139F48()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0BD660(__p);
}

void sub_23F139FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F139FD4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F13A04C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F13A104(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F13A1A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 36)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F13A5A0(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F13A550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F13A5A0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E3950F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3950F8))
  {
    sub_23F13A6B8();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E3950E0, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F13A6B8()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0BE0B8(__p);
}

void sub_23F13A728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F13A744(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F13A7BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F13A874(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F13A918(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 37)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F13AD0C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F13ACBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F13AD0C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395118))
  {
    sub_23F13AE24();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E395100, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F13AE24()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0BE9DC(__p);
}

void sub_23F13AE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F13AEB0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F13AF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F13AFE0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F13B084(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 38)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F13B47C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F13B42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F13B47C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395138))
  {
    sub_23F13B594();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E395120, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F13B594()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0BF48C(__p);
}

void sub_23F13B604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F13B620(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F13B698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F13B750(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F13B7F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 39)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F13BBEC(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F13BB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F13BBEC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395158))
  {
    sub_23F13BD04();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E395140, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F13BD04()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0BFF3C(__p);
}

void sub_23F13BD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F13BD90(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F13BE08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F13BEC0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_23F13BF64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 40)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F13C35C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v4;
      *(&v22 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 4;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v19 = qword_27E396178, v20 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27E396178;
      v20 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1));

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_23F13C30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F13C35C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395178))
  {
    sub_23F13C474();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", qword_27E395160, " from an ", qword_27E3947C0, " but the image is of incompatible format ", &v2);
}

void sub_23F13C474()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_23F0C09EC(__p);
}

void sub_23F13C4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F13C500(int a1, uint64_t *a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
    case 1:
      v711 = &unk_28517DD38;
      sub_23F08C868(a3, &v712);
      v4 = *a2;
      v5 = v715;
      v6 = v712;
      if (!v712)
      {
        goto LABEL_957;
      }

      v7 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v6 = v712;
        v8 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v6;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v6 = v9;
          }
        }
      }

      if (v720 == 1)
      {
        (*(*v6 + 96))(&v725);
      }

      else
      {
LABEL_957:
        v725 = 0;
      }

      if (v715)
      {
        v551 = v716;
        if (v716)
        {
          v552 = v718;
          v553 = v714;
          if (v719 == 1 && v714)
          {
            v554 = v712;
            v555 = v713;
            if (v713)
            {
              atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v555->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v556 = v554;
                (v555->__on_zero_shared)(v555);
                std::__shared_weak_count::__release_weak(v555);
                v554 = v556;
              }
            }

            (*(*v554 + 88))(v554, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
            v553 = v714;
          }

          v557 = v551 - 1;
          if (v557)
          {
            for (i = 0; i != v557; ++i)
            {
              v559 = *(v4 + 24);
              if (*(v559 + 40) == 1)
              {
                v726 = (v559 + 16);
                if (v5)
                {
                  v560 = v5;
                  v561 = v553;
                  do
                  {
                    sub_23F2FC63C(&v726, v561++);
                    --v560;
                  }

                  while (v560);
                }
              }

              else if (v5)
              {
                for (j = 0; j != v5; ++j)
                {
                  v563 = *(v553 + j);
                  if (v563 < 0)
                  {
                    LOBYTE(v726) = -52;
                    BYTE1(v726) = v563;
                  }

                  else
                  {
                    LOBYTE(v726) = *(v553 + j);
                  }

                  std::ostream::write();
                }
              }

              v553 = (v553 + v552);
            }
          }

          v726 = v553;
          v727 = v5;
          sub_23F2F787C(v4, &v726);
        }
      }

      goto LABEL_1329;
    case 2:
      v711 = &unk_28517DFB0;
      sub_23F08DA84(a3, &v712);
      v44 = *a2;
      v162 = v715;
      v163 = v712;
      if (!v712)
      {
        goto LABEL_944;
      }

      v164 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v164->__on_zero_shared)(v164);
          std::__shared_weak_count::__release_weak(v164);
        }

        v163 = v712;
        v165 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v165->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v166 = v163;
            (v165->__on_zero_shared)(v165);
            std::__shared_weak_count::__release_weak(v165);
            v163 = v166;
          }
        }
      }

      if (v720 == 1)
      {
        (*(*v163 + 96))(&v725);
      }

      else
      {
LABEL_944:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      v544 = v716;
      if (!v716)
      {
        goto LABEL_1329;
      }

      v545 = v718;
      v302 = v714;
      if (v719 == 1 && v714)
      {
        v546 = v712;
        v547 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v547->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v548 = v546;
            (v547->__on_zero_shared)(v547);
            std::__shared_weak_count::__release_weak(v547);
            v546 = v548;
          }
        }

        (*(*v546 + 88))(v546, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v302 = v714;
      }

      v549 = v544 - 1;
      if (v549)
      {
        v550 = 2 * v545;
        do
        {
          v726 = v302;
          v727 = v162;
          sub_23F2F7948(v44, &v726);
          v302 = (v302 + v550);
          --v549;
        }

        while (v549);
      }

      goto LABEL_1101;
    case 3:
      v711 = &unk_285181F28;
      sub_23F12B4EC(a3, &v712);
      v156 = *a2;
      v157 = v715;
      v158 = v712;
      if (!v712)
      {
        goto LABEL_921;
      }

      v159 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v159->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v159->__on_zero_shared)(v159);
          std::__shared_weak_count::__release_weak(v159);
        }

        v158 = v712;
        v160 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v160->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v161 = v158;
            (v160->__on_zero_shared)(v160);
            std::__shared_weak_count::__release_weak(v160);
            v158 = v161;
          }
        }
      }

      if (v720 == 1)
      {
        (*(*v158 + 96))(&v725);
      }

      else
      {
LABEL_921:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      v532 = v716;
      if (!v716)
      {
        goto LABEL_1329;
      }

      v533 = v718;
      v534 = v714;
      if (v719 == 1 && v714)
      {
        v535 = v712;
        v536 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v536->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v537 = v535;
            (v536->__on_zero_shared)(v536);
            std::__shared_weak_count::__release_weak(v536);
            v535 = v537;
          }
        }

        (*(*v535 + 88))(v535, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v534 = v714;
      }

      v538 = v532 - 1;
      if (!v538)
      {
        goto LABEL_1265;
      }

      if (v157)
      {
        v539 = 0;
        v540 = 2 * v533;
        do
        {
          for (k = 0; k != v157; ++k)
          {
            v542 = v534[k];
            v710 = v534[k];
            v543 = *(v156 + 24);
            if (*(v543 + 40) == 1)
            {
              v726 = (v543 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v542 > 0x7F)
            {
              if (v542 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v542);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v542;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v542;
              std::ostream::write();
            }
          }

          v534 = (v534 + v540);
          ++v539;
        }

        while (v539 != v538);
LABEL_1265:
        if (v157)
        {
          v693 = 2 * v157;
          do
          {
            v694 = *v534;
            v710 = *v534;
            v695 = *(v156 + 24);
            if (*(v695 + 40) == 1)
            {
              v726 = (v695 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v694 > 0x7F)
            {
              if (v694 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v694);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v694;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v694;
              std::ostream::write();
            }

            ++v534;
            v693 -= 2;
          }

          while (v693);
        }
      }

      goto LABEL_1329;
    case 4:
      v711 = &unk_285182020;
      sub_23F12BBC8(a3, &v712);
      v55 = *a2;
      v99 = v715;
      v100 = v712;
      if (!v712)
      {
        goto LABEL_690;
      }

      v101 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v101->__on_zero_shared)(v101);
          std::__shared_weak_count::__release_weak(v101);
        }

        v100 = v712;
        v102 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v103 = v100;
            (v102->__on_zero_shared)(v102);
            std::__shared_weak_count::__release_weak(v102);
            v100 = v103;
          }
        }
      }

      if (v720 == 1)
      {
        (*(*v100 + 96))(&v725);
      }

      else
      {
LABEL_690:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      v401 = v716;
      if (!v716)
      {
        goto LABEL_1329;
      }

      v402 = v718;
      v322 = v714;
      if (v719 == 1 && v714)
      {
        v403 = v712;
        v404 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v404->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v405 = v403;
            (v404->__on_zero_shared)(v404);
            std::__shared_weak_count::__release_weak(v404);
            v403 = v405;
          }
        }

        (*(*v403 + 88))(v403, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v322 = v714;
      }

      v406 = v401 - 1;
      if (v406)
      {
        v407 = 0;
        v408 = 4 * v402;
        do
        {
          v409 = *(v55 + 24);
          if (*(v409 + 40) == 1)
          {
            v726 = (v409 + 16);
            if (v99)
            {
              v410 = 4 * v99;
              v411 = v322;
              do
              {
                sub_23F2FE06C(&v710, &v726, v411++);
                v410 -= 4;
              }

              while (v410);
            }
          }

          else if (v99)
          {
            v412 = 0;
            do
            {
              v413 = *(v322 + v412);
              LOBYTE(v726) = -54;
              *(&v726 + 1) = bswap32(v413);
              std::ostream::write();
              v412 += 4;
            }

            while (4 * v99 != v412);
          }

          v322 = (v322 + v408);
          ++v407;
        }

        while (v407 != v406);
      }

      goto LABEL_1199;
    case 5:
      v711 = &unk_285182118;
      sub_23F12C2A4(a3, &v712);
      v22 = *a2;
      v141 = v722;
      v142 = v712;
      if (!v712)
      {
        goto LABEL_853;
      }

      v143 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v143->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v143->__on_zero_shared)(v143);
          std::__shared_weak_count::__release_weak(v143);
        }

        v142 = v712;
        v144 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v144->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v145 = v142;
            (v144->__on_zero_shared)(v144);
            std::__shared_weak_count::__release_weak(v144);
            v142 = v145;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v142 + 96))(&v725);
      }

      else
      {
LABEL_853:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v494 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v495 = v721;
      v248 = v714;
      if (v723 == 1 && v714)
      {
        v496 = v712;
        v497 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v497->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v498 = v496;
            (v497->__on_zero_shared)(v497);
            std::__shared_weak_count::__release_weak(v497);
            v496 = v498;
          }
        }

        (*(*v496 + 88))(v496, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v248 = v714;
      }

      v252 = (2 * v141);
      v499 = v494 - 1;
      if (v499)
      {
        for (m = 0; m != v499; ++m)
        {
          v501 = *(v22 + 24);
          if (*(v501 + 40) == 1)
          {
            v726 = (v501 + 16);
            if (v252)
            {
              v502 = v252;
              v503 = v248;
              do
              {
                sub_23F2FC63C(&v726, v503++);
                --v502;
              }

              while (v502);
            }
          }

          else if (v252)
          {
            for (n = 0; n != v252; ++n)
            {
              v505 = *(v248 + n);
              if (v505 < 0)
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v505;
              }

              else
              {
                LOBYTE(v726) = *(v248 + n);
              }

              std::ostream::write();
            }
          }

          v248 = (v248 + v495);
        }
      }

      goto LABEL_1198;
    case 6:
      v711 = &unk_285182210;
      sub_23F12CA10(a3, &v712);
      v44 = *a2;
      v94 = v722;
      v95 = v712;
      if (!v712)
      {
        goto LABEL_676;
      }

      v96 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v96->__on_zero_shared)(v96);
          std::__shared_weak_count::__release_weak(v96);
        }

        v95 = v712;
        v97 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v98 = v95;
            (v97->__on_zero_shared)(v97);
            std::__shared_weak_count::__release_weak(v97);
            v95 = v98;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v95 + 96))(&v725);
      }

      else
      {
LABEL_676:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v394 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v395 = v721;
      v302 = v714;
      if (v723 == 1 && v714)
      {
        v396 = v712;
        v397 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v397->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v398 = v396;
            (v397->__on_zero_shared)(v397);
            std::__shared_weak_count::__release_weak(v397);
            v396 = v398;
          }
        }

        (*(*v396 + 88))(v396, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v302 = v714;
      }

      v162 = (2 * v94);
      v399 = v394 - 1;
      if (v399)
      {
        v400 = 2 * v395;
        do
        {
          v726 = v302;
          v727 = v162;
          sub_23F2F7948(v44, &v726);
          v302 = (v302 + v400);
          --v399;
        }

        while (v399);
      }

      goto LABEL_1101;
    case 7:
      v711 = &unk_285182308;
      sub_23F12D180(a3, &v712);
      v66 = *a2;
      v67 = v722;
      v68 = v712;
      if (!v712)
      {
        goto LABEL_576;
      }

      v69 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v69->__on_zero_shared)(v69);
          std::__shared_weak_count::__release_weak(v69);
        }

        v68 = v712;
        v70 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v71 = v68;
            (v70->__on_zero_shared)(v70);
            std::__shared_weak_count::__release_weak(v70);
            v68 = v71;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v68 + 96))(&v725);
      }

      else
      {
LABEL_576:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v341 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v342 = v721;
      v343 = v714;
      if (v723 == 1 && v714)
      {
        v344 = v712;
        v345 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v345->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v346 = v344;
            (v345->__on_zero_shared)(v345);
            std::__shared_weak_count::__release_weak(v345);
            v344 = v346;
          }
        }

        (*(*v344 + 88))(v344, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v343 = v714;
      }

      v347 = (2 * v67);
      v348 = v341 - 1;
      if (!v348)
      {
        goto LABEL_1221;
      }

      if (v347)
      {
        v349 = 0;
        v350 = 2 * v342;
        do
        {
          v351 = 0;
          do
          {
            v352 = v343[v351];
            v710 = v343[v351];
            v353 = *(v66 + 24);
            if (*(v353 + 40) == 1)
            {
              v726 = (v353 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v352 > 0x7F)
            {
              if (v352 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v352);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v352;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v352;
              std::ostream::write();
            }

            ++v351;
          }

          while (v347 != v351);
          v343 = (v343 + v350);
          ++v349;
        }

        while (v349 != v348);
LABEL_1221:
        if (v347)
        {
          v681 = 2 * v347;
          do
          {
            v682 = *v343;
            v710 = *v343;
            v683 = *(v66 + 24);
            if (*(v683 + 40) == 1)
            {
              v726 = (v683 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v682 > 0x7F)
            {
              if (v682 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v682);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v682;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v682;
              std::ostream::write();
            }

            ++v343;
            v681 -= 2;
          }

          while (v681);
        }
      }

      goto LABEL_1329;
    case 8:
      v711 = &unk_285182400;
      sub_23F12D8F0(a3, &v712);
      v55 = *a2;
      v151 = v722;
      v152 = v712;
      if (!v712)
      {
        goto LABEL_899;
      }

      v153 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v153->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v153->__on_zero_shared)(v153);
          std::__shared_weak_count::__release_weak(v153);
        }

        v152 = v712;
        v154 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v154->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v155 = v152;
            (v154->__on_zero_shared)(v154);
            std::__shared_weak_count::__release_weak(v154);
            v152 = v155;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v152 + 96))(&v725);
      }

      else
      {
LABEL_899:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v519 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v520 = v721;
      v322 = v714;
      if (v723 == 1 && v714)
      {
        v521 = v712;
        v522 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v522->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v523 = v521;
            (v522->__on_zero_shared)(v522);
            std::__shared_weak_count::__release_weak(v522);
            v521 = v523;
          }
        }

        (*(*v521 + 88))(v521, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v322 = v714;
      }

      v99 = (2 * v151);
      v524 = v519 - 1;
      if (v524)
      {
        v525 = 0;
        v526 = 4 * v520;
        do
        {
          v527 = *(v55 + 24);
          if (*(v527 + 40) == 1)
          {
            v726 = (v527 + 16);
            if (v99)
            {
              v528 = 4 * v99;
              v529 = v322;
              do
              {
                sub_23F2FE06C(&v710, &v726, v529++);
                v528 -= 4;
              }

              while (v528);
            }
          }

          else if (v99)
          {
            v530 = 0;
            do
            {
              v531 = *(v322 + v530);
              LOBYTE(v726) = -54;
              *(&v726 + 1) = bswap32(v531);
              std::ostream::write();
              v530 += 4;
            }

            while (4 * v99 != v530);
          }

          v322 = (v322 + v526);
          ++v525;
        }

        while (v525 != v524);
      }

      goto LABEL_1199;
    case 9:
      v711 = &unk_2851824F8;
      sub_23F12E060(a3, &v712);
      v135 = *a2;
      v136 = v722;
      v137 = v712;
      if (!v712)
      {
        goto LABEL_829;
      }

      v138 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v138->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v138->__on_zero_shared)(v138);
          std::__shared_weak_count::__release_weak(v138);
        }

        v137 = v712;
        v139 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v140 = v137;
            (v139->__on_zero_shared)(v139);
            std::__shared_weak_count::__release_weak(v139);
            v137 = v140;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v137 + 96))(&v725);
      }

      else
      {
LABEL_829:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v480 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v481 = v721;
      v482 = v714;
      if (v723 == 1 && v714)
      {
        v483 = v712;
        v484 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v484->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v485 = v483;
            (v484->__on_zero_shared)(v484);
            std::__shared_weak_count::__release_weak(v484);
            v483 = v485;
          }
        }

        (*(*v483 + 88))(v483, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v482 = v714;
      }

      v486 = (3 * v136);
      v487 = v480 - 1;
      if (v487)
      {
        for (ii = 0; ii != v487; ++ii)
        {
          v489 = *(v135 + 24);
          if (*(v489 + 40) == 1)
          {
            v726 = (v489 + 16);
            if (v136)
            {
              v490 = (3 * v136);
              v491 = v482;
              do
              {
                sub_23F2FC63C(&v726, v491++);
                --v490;
              }

              while (v490);
            }
          }

          else if (v136)
          {
            v492 = 0;
            do
            {
              v493 = *(v482 + v492);
              if (v493 < 0)
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v493;
              }

              else
              {
                LOBYTE(v726) = *(v482 + v492);
              }

              std::ostream::write();
              ++v492;
            }

            while (v486 != v492);
          }

          v482 = (v482 + v481);
        }
      }

      goto LABEL_1209;
    case 10:
      v711 = &unk_2851825F0;
      sub_23F12E7CC(a3, &v712);
      v44 = *a2;
      v178 = v722;
      v179 = v712;
      if (!v712)
      {
        goto LABEL_1028;
      }

      v180 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v180->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v180->__on_zero_shared)(v180);
          std::__shared_weak_count::__release_weak(v180);
        }

        v179 = v712;
        v181 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v182 = v179;
            (v181->__on_zero_shared)(v181);
            std::__shared_weak_count::__release_weak(v181);
            v179 = v182;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v179 + 96))(&v725);
      }

      else
      {
LABEL_1028:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v589 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v590 = v721;
      v302 = v714;
      if (v723 == 1 && v714)
      {
        v591 = v712;
        v592 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v592->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v593 = v591;
            (v592->__on_zero_shared)(v592);
            std::__shared_weak_count::__release_weak(v592);
            v591 = v593;
          }
        }

        (*(*v591 + 88))(v591, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v302 = v714;
      }

      v162 = (3 * v178);
      v594 = v589 - 1;
      if (v594)
      {
        v595 = 2 * v590;
        do
        {
          v726 = v302;
          v727 = v162;
          sub_23F2F7948(v44, &v726);
          v302 = (v302 + v595);
          --v594;
        }

        while (v594);
      }

      goto LABEL_1101;
    case 11:
      v711 = &unk_2851826E8;
      sub_23F12EF3C(a3, &v712);
      v172 = *a2;
      v173 = v722;
      v174 = v712;
      if (!v712)
      {
        goto LABEL_1004;
      }

      v175 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v175->__on_zero_shared)(v175);
          std::__shared_weak_count::__release_weak(v175);
        }

        v174 = v712;
        v176 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v177 = v174;
            (v176->__on_zero_shared)(v176);
            std::__shared_weak_count::__release_weak(v176);
            v174 = v177;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v174 + 96))(&v725);
      }

      else
      {
LABEL_1004:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v576 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v577 = v721;
      v578 = v714;
      if (v723 == 1 && v714)
      {
        v579 = v712;
        v580 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v580->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v581 = v579;
            (v580->__on_zero_shared)(v580);
            std::__shared_weak_count::__release_weak(v580);
            v579 = v581;
          }
        }

        (*(*v579 + 88))(v579, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v578 = v714;
      }

      v582 = (3 * v173);
      v583 = v576 - 1;
      if (!v583)
      {
        goto LABEL_1306;
      }

      if (v173)
      {
        v584 = 0;
        v585 = 2 * v577;
        do
        {
          v586 = 0;
          do
          {
            v587 = v578[v586];
            v710 = v578[v586];
            v588 = *(v172 + 24);
            if (*(v588 + 40) == 1)
            {
              v726 = (v588 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v587 > 0x7F)
            {
              if (v587 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v587);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v587;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v587;
              std::ostream::write();
            }

            ++v586;
          }

          while (3 * v173 != v586);
          v578 = (v578 + v585);
          ++v584;
        }

        while (v584 != v583);
        v582 = (3 * v173);
LABEL_1306:
        if (v173)
        {
          v702 = 2 * v582;
          do
          {
            v703 = *v578;
            v710 = *v578;
            v704 = *(v172 + 24);
            if (*(v704 + 40) == 1)
            {
              v726 = (v704 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v703 > 0x7F)
            {
              if (v703 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v703);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v703;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v703;
              std::ostream::write();
            }

            ++v578;
            v702 -= 2;
          }

          while (v702);
        }
      }

      goto LABEL_1329;
    case 12:
      v711 = &unk_2851827E0;
      sub_23F12F6AC(a3, &v712);
      v28 = *a2;
      v29 = v722;
      v30 = v712;
      if (!v712)
      {
        goto LABEL_434;
      }

      v31 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }

        v30 = v712;
        v32 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v33 = v30;
            (v32->__on_zero_shared)(v32);
            std::__shared_weak_count::__release_weak(v32);
            v30 = v33;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v30 + 96))(&v725);
      }

      else
      {
LABEL_434:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v260 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v261 = v721;
      v262 = v714;
      if (v723 == 1 && v714)
      {
        v263 = v712;
        v264 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v264->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v265 = v263;
            (v264->__on_zero_shared)(v264);
            std::__shared_weak_count::__release_weak(v264);
            v263 = v265;
          }
        }

        (*(*v263 + 88))(v263, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v262 = v714;
      }

      v266 = (3 * v29);
      v267 = v260 - 1;
      if (v267)
      {
        v268 = 0;
        v269 = 4 * v261;
        do
        {
          v270 = *(v28 + 24);
          if (*(v270 + 40) == 1)
          {
            v726 = (v270 + 16);
            if (v29)
            {
              v271 = 4 * (3 * v29);
              v272 = v262;
              do
              {
                sub_23F2FE06C(&v710, &v726, v272++);
                v271 -= 4;
              }

              while (v271);
            }
          }

          else if (v29)
          {
            v273 = 0;
            do
            {
              v274 = *(v262 + v273);
              LOBYTE(v726) = -54;
              *(&v726 + 1) = bswap32(v274);
              std::ostream::write();
              v273 += 4;
            }

            while (4 * (3 * v29) != v273);
          }

          v262 = (v262 + v269);
          ++v268;
        }

        while (v268 != v267);
        v266 = (3 * v29);
      }

      goto LABEL_1292;
    case 13:
      v711 = &unk_2851828D8;
      sub_23F12FE1C(a3, &v712);
      v22 = *a2;
      v50 = v722;
      v51 = v712;
      if (!v712)
      {
        goto LABEL_516;
      }

      v52 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v52->__on_zero_shared)(v52);
          std::__shared_weak_count::__release_weak(v52);
        }

        v51 = v712;
        v53 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v54 = v51;
            (v53->__on_zero_shared)(v53);
            std::__shared_weak_count::__release_weak(v53);
            v51 = v54;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v51 + 96))(&v725);
      }

      else
      {
LABEL_516:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v308 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v309 = v721;
      v248 = v714;
      if (v723 == 1 && v714)
      {
        v310 = v712;
        v311 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v311->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v312 = v310;
            (v311->__on_zero_shared)(v311);
            std::__shared_weak_count::__release_weak(v311);
            v310 = v312;
          }
        }

        (*(*v310 + 88))(v310, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v248 = v714;
      }

      v252 = (4 * v50);
      v313 = v308 - 1;
      if (v313)
      {
        for (jj = 0; jj != v313; ++jj)
        {
          v315 = *(v22 + 24);
          if (*(v315 + 40) == 1)
          {
            v726 = (v315 + 16);
            if (v252)
            {
              v316 = v252;
              v317 = v248;
              do
              {
                sub_23F2FC63C(&v726, v317++);
                --v316;
              }

              while (v316);
            }
          }

          else if (v252)
          {
            for (kk = 0; kk != v252; ++kk)
            {
              v319 = *(v248 + kk);
              if (v319 < 0)
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v319;
              }

              else
              {
                LOBYTE(v726) = *(v248 + kk);
              }

              std::ostream::write();
            }
          }

          v248 = (v248 + v309);
        }
      }

      goto LABEL_1198;
    case 14:
      v711 = &unk_2851829D0;
      sub_23F130588(a3, &v712);
      v44 = *a2;
      v45 = v722;
      v46 = v712;
      if (!v712)
      {
        goto LABEL_502;
      }

      v47 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v47->__on_zero_shared)(v47);
          std::__shared_weak_count::__release_weak(v47);
        }

        v46 = v712;
        v48 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v49 = v46;
            (v48->__on_zero_shared)(v48);
            std::__shared_weak_count::__release_weak(v48);
            v46 = v49;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v46 + 96))(&v725);
      }

      else
      {
LABEL_502:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v300 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v301 = v721;
      v302 = v714;
      if (v723 == 1 && v714)
      {
        v303 = v712;
        v304 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v304->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v305 = v303;
            (v304->__on_zero_shared)(v304);
            std::__shared_weak_count::__release_weak(v304);
            v303 = v305;
          }
        }

        (*(*v303 + 88))(v303, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v302 = v714;
      }

      v162 = (4 * v45);
      v306 = v300 - 1;
      if (v306)
      {
        v307 = 2 * v301;
        do
        {
          v726 = v302;
          v727 = v162;
          sub_23F2F7948(v44, &v726);
          v302 = (v302 + v307);
          --v306;
        }

        while (v306);
      }

      goto LABEL_1101;
    case 15:
      v711 = &unk_285182AC8;
      sub_23F130CF8(a3, &v712);
      v198 = *a2;
      v199 = v722;
      v200 = v712;
      if (!v712)
      {
        goto LABEL_1102;
      }

      v201 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v201->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v201->__on_zero_shared)(v201);
          std::__shared_weak_count::__release_weak(v201);
        }

        v200 = v712;
        v202 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v202->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v203 = v200;
            (v202->__on_zero_shared)(v202);
            std::__shared_weak_count::__release_weak(v202);
            v200 = v203;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v200 + 96))(&v725);
      }

      else
      {
LABEL_1102:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v628 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v629 = v721;
      v630 = v714;
      if (v723 == 1 && v714)
      {
        v631 = v712;
        v632 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v632->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v633 = v631;
            (v632->__on_zero_shared)(v632);
            std::__shared_weak_count::__release_weak(v632);
            v631 = v633;
          }
        }

        (*(*v631 + 88))(v631, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v630 = v714;
      }

      v634 = (4 * v199);
      v635 = v628 - 1;
      if (!v635)
      {
        goto LABEL_1276;
      }

      if (v634)
      {
        v636 = 0;
        v637 = 2 * v629;
        do
        {
          v638 = 0;
          do
          {
            v639 = v630[v638];
            v710 = v630[v638];
            v640 = *(v198 + 24);
            if (*(v640 + 40) == 1)
            {
              v726 = (v640 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v639 > 0x7F)
            {
              if (v639 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v639);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v639;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v639;
              std::ostream::write();
            }

            ++v638;
          }

          while (v634 != v638);
          v630 = (v630 + v637);
          ++v636;
        }

        while (v636 != v635);
LABEL_1276:
        if (v634)
        {
          v696 = 2 * v634;
          do
          {
            v697 = *v630;
            v710 = *v630;
            v698 = *(v198 + 24);
            if (*(v698 + 40) == 1)
            {
              v726 = (v698 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v697 > 0x7F)
            {
              if (v697 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v697);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v697;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v697;
              std::ostream::write();
            }

            ++v630;
            v696 -= 2;
          }

          while (v696);
        }
      }

      goto LABEL_1329;
    case 16:
      v711 = &unk_285182BC0;
      sub_23F131468(a3, &v712);
      v55 = *a2;
      v146 = v722;
      v147 = v712;
      if (!v712)
      {
        goto LABEL_877;
      }

      v148 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v148->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v148->__on_zero_shared)(v148);
          std::__shared_weak_count::__release_weak(v148);
        }

        v147 = v712;
        v149 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v149->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v150 = v147;
            (v149->__on_zero_shared)(v149);
            std::__shared_weak_count::__release_weak(v149);
            v147 = v150;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v147 + 96))(&v725);
      }

      else
      {
LABEL_877:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v506 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v507 = v721;
      v322 = v714;
      if (v723 == 1 && v714)
      {
        v508 = v712;
        v509 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v509->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v510 = v508;
            (v509->__on_zero_shared)(v509);
            std::__shared_weak_count::__release_weak(v509);
            v508 = v510;
          }
        }

        (*(*v508 + 88))(v508, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v322 = v714;
      }

      v99 = (4 * v146);
      v511 = v506 - 1;
      if (v511)
      {
        v512 = 0;
        v513 = 4 * v507;
        do
        {
          v514 = *(v55 + 24);
          if (*(v514 + 40) == 1)
          {
            v726 = (v514 + 16);
            if (v99)
            {
              v515 = 4 * v99;
              v516 = v322;
              do
              {
                sub_23F2FE06C(&v710, &v726, v516++);
                v515 -= 4;
              }

              while (v515);
            }
          }

          else if (v99)
          {
            v517 = 0;
            do
            {
              v518 = *(v322 + v517);
              LOBYTE(v726) = -54;
              *(&v726 + 1) = bswap32(v518);
              std::ostream::write();
              v517 += 4;
            }

            while (4 * v99 != v517);
          }

          v322 = (v322 + v513);
          ++v512;
        }

        while (v512 != v511);
      }

      goto LABEL_1199;
    case 17:
      v711 = &unk_285182CB8;
      sub_23F131BD8(a3, &v712);
      v135 = *a2;
      v204 = v722;
      v205 = v712;
      if (!v712)
      {
        goto LABEL_1126;
      }

      v206 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v206->__on_zero_shared)(v206);
          std::__shared_weak_count::__release_weak(v206);
        }

        v205 = v712;
        v207 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v207->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v208 = v205;
            (v207->__on_zero_shared)(v207);
            std::__shared_weak_count::__release_weak(v207);
            v205 = v208;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v205 + 96))(&v725);
      }

      else
      {
LABEL_1126:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v641 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v642 = v721;
      v482 = v714;
      if (v723 == 1 && v714)
      {
        v643 = v712;
        v644 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v644->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v645 = v643;
            (v644->__on_zero_shared)(v644);
            std::__shared_weak_count::__release_weak(v644);
            v643 = v645;
          }
        }

        (*(*v643 + 88))(v643, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v482 = v714;
      }

      v486 = (3 * v204);
      v646 = v641 - 1;
      if (v646)
      {
        for (mm = 0; mm != v646; ++mm)
        {
          v648 = *(v135 + 24);
          if (*(v648 + 40) == 1)
          {
            v726 = (v648 + 16);
            if (v204)
            {
              v649 = (3 * v204);
              v650 = v482;
              do
              {
                sub_23F2FC63C(&v726, v650++);
                --v649;
              }

              while (v649);
            }
          }

          else if (v204)
          {
            v651 = 0;
            do
            {
              v652 = *(v482 + v651);
              if (v652 < 0)
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v652;
              }

              else
              {
                LOBYTE(v726) = *(v482 + v651);
              }

              std::ostream::write();
              ++v651;
            }

            while (v486 != v651);
          }

          v482 = (v482 + v642);
        }
      }

      goto LABEL_1209;
    case 18:
      v711 = &unk_285182DB0;
      sub_23F132344(a3, &v712);
      v44 = *a2;
      v61 = v722;
      v62 = v712;
      if (!v712)
      {
        goto LABEL_562;
      }

      v63 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v63->__on_zero_shared)(v63);
          std::__shared_weak_count::__release_weak(v63);
        }

        v62 = v712;
        v64 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v65 = v62;
            (v64->__on_zero_shared)(v64);
            std::__shared_weak_count::__release_weak(v64);
            v62 = v65;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v62 + 96))(&v725);
      }

      else
      {
LABEL_562:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v334 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v335 = v721;
      v302 = v714;
      if (v723 == 1 && v714)
      {
        v336 = v712;
        v337 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v337->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v338 = v336;
            (v337->__on_zero_shared)(v337);
            std::__shared_weak_count::__release_weak(v337);
            v336 = v338;
          }
        }

        (*(*v336 + 88))(v336, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v302 = v714;
      }

      v162 = (3 * v61);
      v339 = v334 - 1;
      if (v339)
      {
        v340 = 2 * v335;
        do
        {
          v726 = v302;
          v727 = v162;
          sub_23F2F7948(v44, &v726);
          v302 = (v302 + v340);
          --v339;
        }

        while (v339);
      }

      goto LABEL_1101;
    case 19:
      v711 = &unk_285182EA8;
      sub_23F132AB4(a3, &v712);
      v16 = *a2;
      v17 = v722;
      v18 = v712;
      if (!v712)
      {
        goto LABEL_386;
      }

      v19 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v18 = v712;
        v20 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v21 = v18;
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
            v18 = v21;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v18 + 96))(&v725);
      }

      else
      {
LABEL_386:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v233 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v234 = v721;
      v235 = v714;
      if (v723 == 1 && v714)
      {
        v236 = v712;
        v237 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v237->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v238 = v236;
            (v237->__on_zero_shared)(v237);
            std::__shared_weak_count::__release_weak(v237);
            v236 = v238;
          }
        }

        (*(*v236 + 88))(v236, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v235 = v714;
      }

      v239 = (3 * v17);
      v240 = v233 - 1;
      if (!v240)
      {
        goto LABEL_1294;
      }

      if (v17)
      {
        v241 = 0;
        v242 = 2 * v234;
        do
        {
          v243 = 0;
          do
          {
            v244 = v235[v243];
            v710 = v235[v243];
            v245 = *(v16 + 24);
            if (*(v245 + 40) == 1)
            {
              v726 = (v245 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v244 > 0x7F)
            {
              if (v244 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v244);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v244;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v244;
              std::ostream::write();
            }

            ++v243;
          }

          while (3 * v17 != v243);
          v235 = (v235 + v242);
          ++v241;
        }

        while (v241 != v240);
        v239 = (3 * v17);
LABEL_1294:
        if (v17)
        {
          v699 = 2 * v239;
          do
          {
            v700 = *v235;
            v710 = *v235;
            v701 = *(v16 + 24);
            if (*(v701 + 40) == 1)
            {
              v726 = (v701 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v700 > 0x7F)
            {
              if (v700 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v700);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v700;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v700;
              std::ostream::write();
            }

            ++v235;
            v699 -= 2;
          }

          while (v699);
        }
      }

      goto LABEL_1329;
    case 20:
      v711 = &unk_285182FA0;
      sub_23F133224(a3, &v712);
      v28 = *a2;
      v188 = v722;
      v189 = v712;
      if (!v712)
      {
        goto LABEL_1066;
      }

      v190 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v190->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v190->__on_zero_shared)(v190);
          std::__shared_weak_count::__release_weak(v190);
        }

        v189 = v712;
        v191 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v191->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v192 = v189;
            (v191->__on_zero_shared)(v191);
            std::__shared_weak_count::__release_weak(v191);
            v189 = v192;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v189 + 96))(&v725);
      }

      else
      {
LABEL_1066:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v608 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v609 = v721;
      v262 = v714;
      if (v723 == 1 && v714)
      {
        v610 = v712;
        v611 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v611->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v612 = v610;
            (v611->__on_zero_shared)(v611);
            std::__shared_weak_count::__release_weak(v611);
            v610 = v612;
          }
        }

        (*(*v610 + 88))(v610, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v262 = v714;
      }

      v266 = (3 * v188);
      v613 = v608 - 1;
      if (v613)
      {
        v614 = 0;
        v615 = 4 * v609;
        do
        {
          v616 = *(v28 + 24);
          if (*(v616 + 40) == 1)
          {
            v726 = (v616 + 16);
            if (v188)
            {
              v617 = 4 * (3 * v188);
              v618 = v262;
              do
              {
                sub_23F2FE06C(&v710, &v726, v618++);
                v617 -= 4;
              }

              while (v617);
            }
          }

          else if (v188)
          {
            v619 = 0;
            do
            {
              v620 = *(v262 + v619);
              LOBYTE(v726) = -54;
              *(&v726 + 1) = bswap32(v620);
              std::ostream::write();
              v619 += 4;
            }

            while (4 * (3 * v188) != v619);
          }

          v262 = (v262 + v615);
          ++v614;
        }

        while (v614 != v613);
        v266 = (3 * v188);
      }

      goto LABEL_1292;
    case 21:
      v711 = &unk_28517E0A8;
      sub_23F08E4D4(a3, &v712);
      v135 = *a2;
      v215 = v722;
      v216 = v712;
      if (!v712)
      {
        goto LABEL_1174;
      }

      v217 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v217->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v217->__on_zero_shared)(v217);
          std::__shared_weak_count::__release_weak(v217);
        }

        v216 = v712;
        v218 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v218->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v219 = v216;
            (v218->__on_zero_shared)(v218);
            std::__shared_weak_count::__release_weak(v218);
            v216 = v219;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v216 + 96))(&v725);
      }

      else
      {
LABEL_1174:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v666 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v667 = v721;
      v482 = v714;
      if (v723 == 1 && v714)
      {
        v668 = v712;
        v669 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v669->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v670 = v668;
            (v669->__on_zero_shared)(v669);
            std::__shared_weak_count::__release_weak(v669);
            v668 = v670;
          }
        }

        (*(*v668 + 88))(v668, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v482 = v714;
      }

      v486 = (3 * v215);
      v671 = v666 - 1;
      if (v671)
      {
        for (nn = 0; nn != v671; ++nn)
        {
          v673 = *(v135 + 24);
          if (*(v673 + 40) == 1)
          {
            v726 = (v673 + 16);
            if (v215)
            {
              v674 = (3 * v215);
              v675 = v482;
              do
              {
                sub_23F2FC63C(&v726, v675++);
                --v674;
              }

              while (v674);
            }
          }

          else if (v215)
          {
            v676 = 0;
            do
            {
              v677 = *(v482 + v676);
              if (v677 < 0)
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v677;
              }

              else
              {
                LOBYTE(v726) = *(v482 + v676);
              }

              std::ostream::write();
              ++v676;
            }

            while (v486 != v676);
          }

          v482 = (v482 + v667);
        }
      }

LABEL_1209:
      v726 = v482;
      v727 = v486;
      sub_23F2F787C(v135, &v726);
      goto LABEL_1329;
    case 22:
      v711 = &unk_285183098;
      sub_23F133994(a3, &v712);
      v44 = *a2;
      v78 = v722;
      v79 = v712;
      if (!v712)
      {
        goto LABEL_624;
      }

      v80 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v80->__on_zero_shared)(v80);
          std::__shared_weak_count::__release_weak(v80);
        }

        v79 = v712;
        v81 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v82 = v79;
            (v81->__on_zero_shared)(v81);
            std::__shared_weak_count::__release_weak(v81);
            v79 = v82;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v79 + 96))(&v725);
      }

      else
      {
LABEL_624:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v367 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v368 = v721;
      v302 = v714;
      if (v723 == 1 && v714)
      {
        v369 = v712;
        v370 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v370->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v371 = v369;
            (v370->__on_zero_shared)(v370);
            std::__shared_weak_count::__release_weak(v370);
            v369 = v371;
          }
        }

        (*(*v369 + 88))(v369, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v302 = v714;
      }

      v162 = (3 * v78);
      v372 = v367 - 1;
      if (v372)
      {
        v373 = 2 * v368;
        do
        {
          v726 = v302;
          v727 = v162;
          sub_23F2F7948(v44, &v726);
          v302 = (v302 + v373);
          --v372;
        }

        while (v372);
      }

      goto LABEL_1101;
    case 23:
      v711 = &unk_285183190;
      sub_23F134104(a3, &v712);
      v209 = *a2;
      v210 = v722;
      v211 = v712;
      if (!v712)
      {
        goto LABEL_1150;
      }

      v212 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v212->__on_zero_shared)(v212);
          std::__shared_weak_count::__release_weak(v212);
        }

        v211 = v712;
        v213 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v213->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v214 = v211;
            (v213->__on_zero_shared)(v213);
            std::__shared_weak_count::__release_weak(v213);
            v211 = v214;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v211 + 96))(&v725);
      }

      else
      {
LABEL_1150:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v653 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v654 = v721;
      v655 = v714;
      if (v723 == 1 && v714)
      {
        v656 = v712;
        v657 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v657->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v658 = v656;
            (v657->__on_zero_shared)(v657);
            std::__shared_weak_count::__release_weak(v657);
            v656 = v658;
          }
        }

        (*(*v656 + 88))(v656, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v655 = v714;
      }

      v659 = (3 * v210);
      v660 = v653 - 1;
      if (!v660)
      {
        goto LABEL_1318;
      }

      if (v210)
      {
        v661 = 0;
        v662 = 2 * v654;
        do
        {
          v663 = 0;
          do
          {
            v664 = v655[v663];
            v710 = v655[v663];
            v665 = *(v209 + 24);
            if (*(v665 + 40) == 1)
            {
              v726 = (v665 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v664 > 0x7F)
            {
              if (v664 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v664);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v664;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v664;
              std::ostream::write();
            }

            ++v663;
          }

          while (3 * v210 != v663);
          v655 = (v655 + v662);
          ++v661;
        }

        while (v661 != v660);
        v659 = (3 * v210);
LABEL_1318:
        if (v210)
        {
          v705 = 2 * v659;
          do
          {
            v706 = *v655;
            v710 = *v655;
            v707 = *(v209 + 24);
            if (*(v707 + 40) == 1)
            {
              v726 = (v707 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v706 > 0x7F)
            {
              if (v706 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v706);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v706;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v706;
              std::ostream::write();
            }

            ++v655;
            v705 -= 2;
          }

          while (v705);
        }
      }

      goto LABEL_1329;
    case 24:
      v711 = &unk_285183288;
      sub_23F134874(a3, &v712);
      v28 = *a2;
      v39 = v722;
      v40 = v712;
      if (!v712)
      {
        goto LABEL_480;
      }

      v41 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v41->__on_zero_shared)(v41);
          std::__shared_weak_count::__release_weak(v41);
        }

        v40 = v712;
        v42 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v43 = v40;
            (v42->__on_zero_shared)(v42);
            std::__shared_weak_count::__release_weak(v42);
            v40 = v43;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v40 + 96))(&v725);
      }

      else
      {
LABEL_480:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v287 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v288 = v721;
      v262 = v714;
      if (v723 == 1 && v714)
      {
        v289 = v712;
        v290 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v290->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v291 = v289;
            (v290->__on_zero_shared)(v290);
            std::__shared_weak_count::__release_weak(v290);
            v289 = v291;
          }
        }

        (*(*v289 + 88))(v289, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v262 = v714;
      }

      v266 = (3 * v39);
      v292 = v287 - 1;
      if (v292)
      {
        v293 = 0;
        v294 = 4 * v288;
        do
        {
          v295 = *(v28 + 24);
          if (*(v295 + 40) == 1)
          {
            v726 = (v295 + 16);
            if (v39)
            {
              v296 = 4 * (3 * v39);
              v297 = v262;
              do
              {
                sub_23F2FE06C(&v710, &v726, v297++);
                v296 -= 4;
              }

              while (v296);
            }
          }

          else if (v39)
          {
            v298 = 0;
            do
            {
              v299 = *(v262 + v298);
              LOBYTE(v726) = -54;
              *(&v726 + 1) = bswap32(v299);
              std::ostream::write();
              v298 += 4;
            }

            while (4 * (3 * v39) != v298);
          }

          v262 = (v262 + v294);
          ++v293;
        }

        while (v293 != v292);
        v266 = (3 * v39);
      }

LABEL_1292:
      v726 = v262;
      v727 = v266;
      sub_23F2F7A44(v28, &v726);
      goto LABEL_1329;
    case 25:
      v711 = &unk_285183380;
      sub_23F134FE4(a3, &v712);
      v22 = *a2;
      v23 = v722;
      v24 = v712;
      if (!v712)
      {
        goto LABEL_410;
      }

      v25 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v24 = v712;
        v26 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v27 = v24;
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
            v24 = v27;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v24 + 96))(&v725);
      }

      else
      {
LABEL_410:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v246 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v247 = v721;
      v248 = v714;
      if (v723 == 1 && v714)
      {
        v249 = v712;
        v250 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v250->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v251 = v249;
            (v250->__on_zero_shared)(v250);
            std::__shared_weak_count::__release_weak(v250);
            v249 = v251;
          }
        }

        (*(*v249 + 88))(v249, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v248 = v714;
      }

      v252 = (4 * v23);
      v253 = v246 - 1;
      if (v253)
      {
        for (i1 = 0; i1 != v253; ++i1)
        {
          v255 = *(v22 + 24);
          if (*(v255 + 40) == 1)
          {
            v726 = (v255 + 16);
            if (v252)
            {
              v256 = v252;
              v257 = v248;
              do
              {
                sub_23F2FC63C(&v726, v257++);
                --v256;
              }

              while (v256);
            }
          }

          else if (v252)
          {
            for (i2 = 0; i2 != v252; ++i2)
            {
              v259 = *(v248 + i2);
              if (v259 < 0)
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v259;
              }

              else
              {
                LOBYTE(v726) = *(v248 + i2);
              }

              std::ostream::write();
            }
          }

          v248 = (v248 + v247);
        }
      }

      goto LABEL_1198;
    case 26:
      v711 = &unk_285183478;
      sub_23F135750(a3, &v712);
      v44 = *a2;
      v83 = v722;
      v84 = v712;
      if (!v712)
      {
        goto LABEL_638;
      }

      v85 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
        }

        v84 = v712;
        v86 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v87 = v84;
            (v86->__on_zero_shared)(v86);
            std::__shared_weak_count::__release_weak(v86);
            v84 = v87;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v84 + 96))(&v725);
      }

      else
      {
LABEL_638:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v374 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v375 = v721;
      v302 = v714;
      if (v723 == 1 && v714)
      {
        v376 = v712;
        v377 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v377->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v378 = v376;
            (v377->__on_zero_shared)(v377);
            std::__shared_weak_count::__release_weak(v377);
            v376 = v378;
          }
        }

        (*(*v376 + 88))(v376, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v302 = v714;
      }

      v162 = (4 * v83);
      v379 = v374 - 1;
      if (v379)
      {
        v380 = 2 * v375;
        do
        {
          v726 = v302;
          v727 = v162;
          sub_23F2F7948(v44, &v726);
          v302 = (v302 + v380);
          --v379;
        }

        while (v379);
      }

      goto LABEL_1101;
    case 27:
      v711 = &unk_285183570;
      sub_23F135EC0(a3, &v712);
      v10 = *a2;
      v11 = v722;
      v12 = v712;
      if (!v712)
      {
        goto LABEL_362;
      }

      v13 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 = v712;
        v14 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v12;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v12 = v15;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v12 + 96))(&v725);
      }

      else
      {
LABEL_362:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v220 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v221 = v721;
      v222 = v714;
      if (v723 == 1 && v714)
      {
        v223 = v712;
        v224 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v224->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v225 = v223;
            (v224->__on_zero_shared)(v224);
            std::__shared_weak_count::__release_weak(v224);
            v223 = v225;
          }
        }

        (*(*v223 + 88))(v223, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v222 = v714;
      }

      v226 = (4 * v11);
      v227 = v220 - 1;
      if (!v227)
      {
        goto LABEL_1210;
      }

      if (v226)
      {
        v228 = 0;
        v229 = 2 * v221;
        do
        {
          v230 = 0;
          do
          {
            v231 = v222[v230];
            v710 = v222[v230];
            v232 = *(v10 + 24);
            if (*(v232 + 40) == 1)
            {
              v726 = (v232 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v231 > 0x7F)
            {
              if (v231 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v231);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v231;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v231;
              std::ostream::write();
            }

            ++v230;
          }

          while (v226 != v230);
          v222 = (v222 + v229);
          ++v228;
        }

        while (v228 != v227);
LABEL_1210:
        if (v226)
        {
          v678 = 2 * v226;
          do
          {
            v679 = *v222;
            v710 = *v222;
            v680 = *(v10 + 24);
            if (*(v680 + 40) == 1)
            {
              v726 = (v680 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v679 > 0x7F)
            {
              if (v679 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v679);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v679;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v679;
              std::ostream::write();
            }

            ++v222;
            v678 -= 2;
          }

          while (v678);
        }
      }

      goto LABEL_1329;
    case 28:
      v711 = &unk_285183668;
      sub_23F136630(a3, &v712);
      v55 = *a2;
      v104 = v722;
      v105 = v712;
      if (!v712)
      {
        goto LABEL_711;
      }

      v106 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v106->__on_zero_shared)(v106);
          std::__shared_weak_count::__release_weak(v106);
        }

        v105 = v712;
        v107 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v108 = v105;
            (v107->__on_zero_shared)(v107);
            std::__shared_weak_count::__release_weak(v107);
            v105 = v108;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v105 + 96))(&v725);
      }

      else
      {
LABEL_711:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v414 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v415 = v721;
      v322 = v714;
      if (v723 == 1 && v714)
      {
        v416 = v712;
        v417 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v417->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v418 = v416;
            (v417->__on_zero_shared)(v417);
            std::__shared_weak_count::__release_weak(v417);
            v416 = v418;
          }
        }

        (*(*v416 + 88))(v416, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v322 = v714;
      }

      v99 = (4 * v104);
      v419 = v414 - 1;
      if (v419)
      {
        v420 = 0;
        v421 = 4 * v415;
        do
        {
          v422 = *(v55 + 24);
          if (*(v422 + 40) == 1)
          {
            v726 = (v422 + 16);
            if (v99)
            {
              v423 = 4 * v99;
              v424 = v322;
              do
              {
                sub_23F2FE06C(&v710, &v726, v424++);
                v423 -= 4;
              }

              while (v423);
            }
          }

          else if (v99)
          {
            v425 = 0;
            do
            {
              v426 = *(v322 + v425);
              LOBYTE(v726) = -54;
              *(&v726 + 1) = bswap32(v426);
              std::ostream::write();
              v425 += 4;
            }

            while (4 * v99 != v425);
          }

          v322 = (v322 + v421);
          ++v420;
        }

        while (v420 != v419);
      }

      goto LABEL_1199;
    case 29:
      v711 = &unk_285183760;
      sub_23F136DA0(a3, &v712);
      v22 = *a2;
      v34 = v722;
      v35 = v712;
      if (!v712)
      {
        goto LABEL_456;
      }

      v36 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v36->__on_zero_shared)(v36);
          std::__shared_weak_count::__release_weak(v36);
        }

        v35 = v712;
        v37 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v38 = v35;
            (v37->__on_zero_shared)(v37);
            std::__shared_weak_count::__release_weak(v37);
            v35 = v38;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v35 + 96))(&v725);
      }

      else
      {
LABEL_456:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v275 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v276 = v721;
      v248 = v714;
      if (v723 == 1 && v714)
      {
        v277 = v712;
        v278 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v278->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v279 = v277;
            (v278->__on_zero_shared)(v278);
            std::__shared_weak_count::__release_weak(v278);
            v277 = v279;
          }
        }

        (*(*v277 + 88))(v277, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v248 = v714;
      }

      v252 = (4 * v34);
      v280 = v275 - 1;
      if (v280)
      {
        for (i3 = 0; i3 != v280; ++i3)
        {
          v282 = *(v22 + 24);
          if (*(v282 + 40) == 1)
          {
            v726 = (v282 + 16);
            if (v252)
            {
              v283 = v252;
              v284 = v248;
              do
              {
                sub_23F2FC63C(&v726, v284++);
                --v283;
              }

              while (v283);
            }
          }

          else if (v252)
          {
            for (i4 = 0; i4 != v252; ++i4)
            {
              v286 = *(v248 + i4);
              if (v286 < 0)
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v286;
              }

              else
              {
                LOBYTE(v726) = *(v248 + i4);
              }

              std::ostream::write();
            }
          }

          v248 = (v248 + v276);
        }
      }

      goto LABEL_1198;
    case 30:
      v711 = &unk_285183858;
      sub_23F13750C(a3, &v712);
      v44 = *a2;
      v120 = v722;
      v121 = v712;
      if (!v712)
      {
        goto LABEL_779;
      }

      v122 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v122->__on_zero_shared)(v122);
          std::__shared_weak_count::__release_weak(v122);
        }

        v121 = v712;
        v123 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v124 = v121;
            (v123->__on_zero_shared)(v123);
            std::__shared_weak_count::__release_weak(v123);
            v121 = v124;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v121 + 96))(&v725);
      }

      else
      {
LABEL_779:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v453 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v454 = v721;
      v302 = v714;
      if (v723 == 1 && v714)
      {
        v455 = v712;
        v456 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v456->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v457 = v455;
            (v456->__on_zero_shared)(v456);
            std::__shared_weak_count::__release_weak(v456);
            v455 = v457;
          }
        }

        (*(*v455 + 88))(v455, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v302 = v714;
      }

      v162 = (4 * v120);
      v458 = v453 - 1;
      if (v458)
      {
        v459 = 2 * v454;
        do
        {
          v726 = v302;
          v727 = v162;
          sub_23F2F7948(v44, &v726);
          v302 = (v302 + v459);
          --v458;
        }

        while (v458);
      }

      goto LABEL_1101;
    case 31:
      v711 = &unk_285183950;
      sub_23F137C7C(a3, &v712);
      v88 = *a2;
      v89 = v722;
      v90 = v712;
      if (!v712)
      {
        goto LABEL_652;
      }

      v91 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v91->__on_zero_shared)(v91);
          std::__shared_weak_count::__release_weak(v91);
        }

        v90 = v712;
        v92 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v93 = v90;
            (v92->__on_zero_shared)(v92);
            std::__shared_weak_count::__release_weak(v92);
            v90 = v93;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v90 + 96))(&v725);
      }

      else
      {
LABEL_652:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v381 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v382 = v721;
      v383 = v714;
      if (v723 == 1 && v714)
      {
        v384 = v712;
        v385 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v385->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v386 = v384;
            (v385->__on_zero_shared)(v385);
            std::__shared_weak_count::__release_weak(v385);
            v384 = v386;
          }
        }

        (*(*v384 + 88))(v384, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v383 = v714;
      }

      v387 = (4 * v89);
      v388 = v381 - 1;
      if (!v388)
      {
        goto LABEL_1243;
      }

      if (v387)
      {
        v389 = 0;
        v390 = 2 * v382;
        do
        {
          v391 = 0;
          do
          {
            v392 = v383[v391];
            v710 = v383[v391];
            v393 = *(v88 + 24);
            if (*(v393 + 40) == 1)
            {
              v726 = (v393 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v392 > 0x7F)
            {
              if (v392 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v392);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v392;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v392;
              std::ostream::write();
            }

            ++v391;
          }

          while (v387 != v391);
          v383 = (v383 + v390);
          ++v389;
        }

        while (v389 != v388);
LABEL_1243:
        if (v387)
        {
          v687 = 2 * v387;
          do
          {
            v688 = *v383;
            v710 = *v383;
            v689 = *(v88 + 24);
            if (*(v689 + 40) == 1)
            {
              v726 = (v689 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v688 > 0x7F)
            {
              if (v688 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v688);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v688;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v688;
              std::ostream::write();
            }

            ++v383;
            v687 -= 2;
          }

          while (v687);
        }
      }

      goto LABEL_1329;
    case 32:
      v711 = &unk_285183A48;
      sub_23F1383EC(a3, &v712);
      v55 = *a2;
      v130 = v722;
      v131 = v712;
      if (!v712)
      {
        goto LABEL_807;
      }

      v132 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v132->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v132->__on_zero_shared)(v132);
          std::__shared_weak_count::__release_weak(v132);
        }

        v131 = v712;
        v133 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v134 = v131;
            (v133->__on_zero_shared)(v133);
            std::__shared_weak_count::__release_weak(v133);
            v131 = v134;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v131 + 96))(&v725);
      }

      else
      {
LABEL_807:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v467 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v468 = v721;
      v322 = v714;
      if (v723 == 1 && v714)
      {
        v469 = v712;
        v470 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v470->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v471 = v469;
            (v470->__on_zero_shared)(v470);
            std::__shared_weak_count::__release_weak(v470);
            v469 = v471;
          }
        }

        (*(*v469 + 88))(v469, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v322 = v714;
      }

      v99 = (4 * v130);
      v472 = v467 - 1;
      if (v472)
      {
        v473 = 0;
        v474 = 4 * v468;
        do
        {
          v475 = *(v55 + 24);
          if (*(v475 + 40) == 1)
          {
            v726 = (v475 + 16);
            if (v99)
            {
              v476 = 4 * v99;
              v477 = v322;
              do
              {
                sub_23F2FE06C(&v710, &v726, v477++);
                v476 -= 4;
              }

              while (v476);
            }
          }

          else if (v99)
          {
            v478 = 0;
            do
            {
              v479 = *(v322 + v478);
              LOBYTE(v726) = -54;
              *(&v726 + 1) = bswap32(v479);
              std::ostream::write();
              v478 += 4;
            }

            while (4 * v99 != v478);
          }

          v322 = (v322 + v474);
          ++v473;
        }

        while (v473 != v472);
      }

      goto LABEL_1199;
    case 33:
      v711 = &unk_285183B40;
      sub_23F138B5C(a3, &v712);
      v22 = *a2;
      v183 = v722;
      v184 = v712;
      if (!v712)
      {
        goto LABEL_1042;
      }

      v185 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v185->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v185->__on_zero_shared)(v185);
          std::__shared_weak_count::__release_weak(v185);
        }

        v184 = v712;
        v186 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v186->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v187 = v184;
            (v186->__on_zero_shared)(v186);
            std::__shared_weak_count::__release_weak(v186);
            v184 = v187;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v184 + 96))(&v725);
      }

      else
      {
LABEL_1042:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v596 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v597 = v721;
      v248 = v714;
      if (v723 == 1 && v714)
      {
        v598 = v712;
        v599 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v599->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v600 = v598;
            (v599->__on_zero_shared)(v599);
            std::__shared_weak_count::__release_weak(v599);
            v598 = v600;
          }
        }

        (*(*v598 + 88))(v598, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v248 = v714;
      }

      v252 = (4 * v183);
      v601 = v596 - 1;
      if (v601)
      {
        for (i5 = 0; i5 != v601; ++i5)
        {
          v603 = *(v22 + 24);
          if (*(v603 + 40) == 1)
          {
            v726 = (v603 + 16);
            if (v252)
            {
              v604 = v252;
              v605 = v248;
              do
              {
                sub_23F2FC63C(&v726, v605++);
                --v604;
              }

              while (v604);
            }
          }

          else if (v252)
          {
            for (i6 = 0; i6 != v252; ++i6)
            {
              v607 = *(v248 + i6);
              if (v607 < 0)
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v607;
              }

              else
              {
                LOBYTE(v726) = *(v248 + i6);
              }

              std::ostream::write();
            }
          }

          v248 = (v248 + v597);
        }
      }

      goto LABEL_1198;
    case 34:
      v711 = &unk_285183C38;
      sub_23F1392C8(a3, &v712);
      v44 = *a2;
      v125 = v722;
      v126 = v712;
      if (!v712)
      {
        goto LABEL_793;
      }

      v127 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v127->__on_zero_shared)(v127);
          std::__shared_weak_count::__release_weak(v127);
        }

        v126 = v712;
        v128 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v129 = v126;
            (v128->__on_zero_shared)(v128);
            std::__shared_weak_count::__release_weak(v128);
            v126 = v129;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v126 + 96))(&v725);
      }

      else
      {
LABEL_793:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v460 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v461 = v721;
      v302 = v714;
      if (v723 == 1 && v714)
      {
        v462 = v712;
        v463 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v463->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v464 = v462;
            (v463->__on_zero_shared)(v463);
            std::__shared_weak_count::__release_weak(v463);
            v462 = v464;
          }
        }

        (*(*v462 + 88))(v462, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v302 = v714;
      }

      v162 = (4 * v125);
      v465 = v460 - 1;
      if (v465)
      {
        v466 = 2 * v461;
        do
        {
          v726 = v302;
          v727 = v162;
          sub_23F2F7948(v44, &v726);
          v302 = (v302 + v466);
          --v465;
        }

        while (v465);
      }

      goto LABEL_1101;
    case 35:
      v711 = &unk_285183D30;
      sub_23F139A38(a3, &v712);
      v114 = *a2;
      v115 = v722;
      v116 = v712;
      if (!v712)
      {
        goto LABEL_755;
      }

      v117 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v117->__on_zero_shared)(v117);
          std::__shared_weak_count::__release_weak(v117);
        }

        v116 = v712;
        v118 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v118->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v119 = v116;
            (v118->__on_zero_shared)(v118);
            std::__shared_weak_count::__release_weak(v118);
            v116 = v119;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v116 + 96))(&v725);
      }

      else
      {
LABEL_755:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v440 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v441 = v721;
      v442 = v714;
      if (v723 == 1 && v714)
      {
        v443 = v712;
        v444 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v444->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v445 = v443;
            (v444->__on_zero_shared)(v444);
            std::__shared_weak_count::__release_weak(v444);
            v443 = v445;
          }
        }

        (*(*v443 + 88))(v443, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v442 = v714;
      }

      v446 = (4 * v115);
      v447 = v440 - 1;
      if (!v447)
      {
        goto LABEL_1254;
      }

      if (v446)
      {
        v448 = 0;
        v449 = 2 * v441;
        do
        {
          v450 = 0;
          do
          {
            v451 = v442[v450];
            v710 = v442[v450];
            v452 = *(v114 + 24);
            if (*(v452 + 40) == 1)
            {
              v726 = (v452 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v451 > 0x7F)
            {
              if (v451 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v451);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v451;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v451;
              std::ostream::write();
            }

            ++v450;
          }

          while (v446 != v450);
          v442 = (v442 + v449);
          ++v448;
        }

        while (v448 != v447);
LABEL_1254:
        if (v446)
        {
          v690 = 2 * v446;
          do
          {
            v691 = *v442;
            v710 = *v442;
            v692 = *(v114 + 24);
            if (*(v692 + 40) == 1)
            {
              v726 = (v692 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v691 > 0x7F)
            {
              if (v691 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v691);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v691;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v691;
              std::ostream::write();
            }

            ++v442;
            v690 -= 2;
          }

          while (v690);
        }
      }

      goto LABEL_1329;
    case 36:
      v711 = &unk_285183E28;
      sub_23F13A1A8(a3, &v712);
      v55 = *a2;
      v109 = v722;
      v110 = v712;
      if (!v712)
      {
        goto LABEL_733;
      }

      v111 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v111->__on_zero_shared)(v111);
          std::__shared_weak_count::__release_weak(v111);
        }

        v110 = v712;
        v112 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v113 = v110;
            (v112->__on_zero_shared)(v112);
            std::__shared_weak_count::__release_weak(v112);
            v110 = v113;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v110 + 96))(&v725);
      }

      else
      {
LABEL_733:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v427 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v428 = v721;
      v322 = v714;
      if (v723 == 1 && v714)
      {
        v429 = v712;
        v430 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v430->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v431 = v429;
            (v430->__on_zero_shared)(v430);
            std::__shared_weak_count::__release_weak(v430);
            v429 = v431;
          }
        }

        (*(*v429 + 88))(v429, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v322 = v714;
      }

      v99 = (4 * v109);
      v432 = v427 - 1;
      if (v432)
      {
        v433 = 0;
        v434 = 4 * v428;
        do
        {
          v435 = *(v55 + 24);
          if (*(v435 + 40) == 1)
          {
            v726 = (v435 + 16);
            if (v99)
            {
              v436 = 4 * v99;
              v437 = v322;
              do
              {
                sub_23F2FE06C(&v710, &v726, v437++);
                v436 -= 4;
              }

              while (v436);
            }
          }

          else if (v99)
          {
            v438 = 0;
            do
            {
              v439 = *(v322 + v438);
              LOBYTE(v726) = -54;
              *(&v726 + 1) = bswap32(v439);
              std::ostream::write();
              v438 += 4;
            }

            while (4 * v99 != v438);
          }

          v322 = (v322 + v434);
          ++v433;
        }

        while (v433 != v432);
      }

      goto LABEL_1199;
    case 37:
      v711 = &unk_285183F20;
      sub_23F13A918(a3, &v712);
      v22 = *a2;
      v167 = v722;
      v168 = v712;
      if (!v712)
      {
        goto LABEL_980;
      }

      v169 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v169->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v169->__on_zero_shared)(v169);
          std::__shared_weak_count::__release_weak(v169);
        }

        v168 = v712;
        v170 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v171 = v168;
            (v170->__on_zero_shared)(v170);
            std::__shared_weak_count::__release_weak(v170);
            v168 = v171;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v168 + 96))(&v725);
      }

      else
      {
LABEL_980:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v564 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v565 = v721;
      v248 = v714;
      if (v723 == 1 && v714)
      {
        v566 = v712;
        v567 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v567->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v568 = v566;
            (v567->__on_zero_shared)(v567);
            std::__shared_weak_count::__release_weak(v567);
            v566 = v568;
          }
        }

        (*(*v566 + 88))(v566, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v248 = v714;
      }

      v252 = (4 * v167);
      v569 = v564 - 1;
      if (v569)
      {
        for (i7 = 0; i7 != v569; ++i7)
        {
          v571 = *(v22 + 24);
          if (*(v571 + 40) == 1)
          {
            v726 = (v571 + 16);
            if (v252)
            {
              v572 = v252;
              v573 = v248;
              do
              {
                sub_23F2FC63C(&v726, v573++);
                --v572;
              }

              while (v572);
            }
          }

          else if (v252)
          {
            for (i8 = 0; i8 != v252; ++i8)
            {
              v575 = *(v248 + i8);
              if (v575 < 0)
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v575;
              }

              else
              {
                LOBYTE(v726) = *(v248 + i8);
              }

              std::ostream::write();
            }
          }

          v248 = (v248 + v565);
        }
      }

LABEL_1198:
      v726 = v248;
      v727 = v252;
      sub_23F2F787C(v22, &v726);
      goto LABEL_1329;
    case 38:
      v711 = &unk_285184018;
      sub_23F13B084(a3, &v712);
      v44 = *a2;
      v193 = v722;
      v194 = v712;
      if (!v712)
      {
        goto LABEL_1088;
      }

      v195 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v195->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v195->__on_zero_shared)(v195);
          std::__shared_weak_count::__release_weak(v195);
        }

        v194 = v712;
        v196 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v196->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v197 = v194;
            (v196->__on_zero_shared)(v196);
            std::__shared_weak_count::__release_weak(v196);
            v194 = v197;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v194 + 96))(&v725);
      }

      else
      {
LABEL_1088:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v621 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v622 = v721;
      v302 = v714;
      if (v723 == 1 && v714)
      {
        v623 = v712;
        v624 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v624->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v625 = v623;
            (v624->__on_zero_shared)(v624);
            std::__shared_weak_count::__release_weak(v624);
            v623 = v625;
          }
        }

        (*(*v623 + 88))(v623, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v302 = v714;
      }

      v162 = (4 * v193);
      v626 = v621 - 1;
      if (v626)
      {
        v627 = 2 * v622;
        do
        {
          v726 = v302;
          v727 = v162;
          sub_23F2F7948(v44, &v726);
          v302 = (v302 + v627);
          --v626;
        }

        while (v626);
      }

LABEL_1101:
      v726 = v302;
      v727 = v162;
      sub_23F2F7948(v44, &v726);
      goto LABEL_1329;
    case 39:
      v711 = &unk_285184110;
      sub_23F13B7F4(a3, &v712);
      v72 = *a2;
      v73 = v722;
      v74 = v712;
      if (!v712)
      {
        goto LABEL_600;
      }

      v75 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v75->__on_zero_shared)(v75);
          std::__shared_weak_count::__release_weak(v75);
        }

        v74 = v712;
        v76 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v77 = v74;
            (v76->__on_zero_shared)(v76);
            std::__shared_weak_count::__release_weak(v76);
            v74 = v77;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v74 + 96))(&v725);
      }

      else
      {
LABEL_600:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v354 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v355 = v721;
      v356 = v714;
      if (v723 == 1 && v714)
      {
        v357 = v712;
        v358 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v358->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v359 = v357;
            (v358->__on_zero_shared)(v358);
            std::__shared_weak_count::__release_weak(v358);
            v357 = v359;
          }
        }

        (*(*v357 + 88))(v357, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v356 = v714;
      }

      v360 = (4 * v73);
      v361 = v354 - 1;
      if (!v361)
      {
        goto LABEL_1232;
      }

      if (v360)
      {
        v362 = 0;
        v363 = 2 * v355;
        do
        {
          v364 = 0;
          do
          {
            v365 = v356[v364];
            v710 = v356[v364];
            v366 = *(v72 + 24);
            if (*(v366 + 40) == 1)
            {
              v726 = (v366 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v365 > 0x7F)
            {
              if (v365 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v365);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v365;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v365;
              std::ostream::write();
            }

            ++v364;
          }

          while (v360 != v364);
          v356 = (v356 + v363);
          ++v362;
        }

        while (v362 != v361);
LABEL_1232:
        if (v360)
        {
          v684 = 2 * v360;
          do
          {
            v685 = *v356;
            v710 = *v356;
            v686 = *(v72 + 24);
            if (*(v686 + 40) == 1)
            {
              v726 = (v686 + 16);
              sub_23F2FCB5C(&v726, &v710);
            }

            else if (v685 > 0x7F)
            {
              if (v685 > 0xFF)
              {
                LOBYTE(v726) = -51;
                *(&v726 + 1) = __rev16(v685);
              }

              else
              {
                LOBYTE(v726) = -52;
                BYTE1(v726) = v685;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v726) = v685;
              std::ostream::write();
            }

            ++v356;
            v684 -= 2;
          }

          while (v684);
        }
      }

LABEL_1329:
      v708 = v725;
      v725 = 0;
      if (v708)
      {
        (*(*v708 + 8))(v708);
      }

      v709 = v713;
      if (v713)
      {
        if (!atomic_fetch_add(&v713->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v709->__on_zero_shared)(v709);
          std::__shared_weak_count::__release_weak(v709);
        }
      }

      return;
    case 40:
      v711 = &unk_285184208;
      sub_23F13BF64(a3, &v712);
      v55 = *a2;
      v56 = v722;
      v57 = v712;
      if (!v712)
      {
        goto LABEL_540;
      }

      v58 = v713;
      if (v713)
      {
        atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v58->__on_zero_shared)(v58);
          std::__shared_weak_count::__release_weak(v58);
        }

        v57 = v712;
        v59 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v60 = v57;
            (v59->__on_zero_shared)(v59);
            std::__shared_weak_count::__release_weak(v59);
            v57 = v60;
          }
        }
      }

      if (v724 == 1)
      {
        (*(*v57 + 96))(&v725);
      }

      else
      {
LABEL_540:
        v725 = 0;
      }

      if (!v715)
      {
        goto LABEL_1329;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v320 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v321 = v721;
      v322 = v714;
      if (v723 == 1 && v714)
      {
        v323 = v712;
        v324 = v713;
        if (v713)
        {
          atomic_fetch_add_explicit(&v713->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v324->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v325 = v323;
            (v324->__on_zero_shared)(v324);
            std::__shared_weak_count::__release_weak(v324);
            v323 = v325;
          }
        }

        (*(*v323 + 88))(v323, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v322 = v714;
      }

      v99 = (4 * v56);
      v326 = v320 - 1;
      if (v326)
      {
        v327 = 0;
        v328 = 4 * v321;
        do
        {
          v329 = *(v55 + 24);
          if (*(v329 + 40) == 1)
          {
            v726 = (v329 + 16);
            if (v99)
            {
              v330 = 4 * v99;
              v331 = v322;
              do
              {
                sub_23F2FE06C(&v710, &v726, v331++);
                v330 -= 4;
              }

              while (v330);
            }
          }

          else if (v99)
          {
            v332 = 0;
            do
            {
              v333 = *(v322 + v332);
              LOBYTE(v726) = -54;
              *(&v726 + 1) = bswap32(v333);
              std::ostream::write();
              v332 += 4;
            }

            while (4 * v99 != v332);
          }

          v322 = (v322 + v328);
          ++v327;
        }

        while (v327 != v326);
      }

LABEL_1199:
      v726 = v322;
      v727 = v99;
      sub_23F2F7A44(v55, &v726);
      goto LABEL_1329;
    default:
      return;
  }
}