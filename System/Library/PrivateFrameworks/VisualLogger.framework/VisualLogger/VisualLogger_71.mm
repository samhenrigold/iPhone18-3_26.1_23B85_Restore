void sub_27168A940(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 24)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168AD38(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v5;
      *(&v22 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v22 = v5;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if (!*(a1 + 28))
  {
    v8 = 1;
  }

  v10 = !v8;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | v9;
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  *(&v23 + 4) = v13;
  v14 = v13;
  LODWORD(v23) = 3;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v11 | v9;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
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
    if (byte_28087C430)
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
  *(a2 + 16) = v7;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_27168ACE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168AD38(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808795F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808795F0))
  {
    sub_27168AE50();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_2808795D8, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168AE50()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_2716110E8(__p);
}

void sub_27168AEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168AEDC(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 25)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168B2D0(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 32) << 32;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_27168B280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168B2D0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879610))
  {
    sub_27168B3E8();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_2808795F8, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168B3E8()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_2712196BC(__p);
}

void sub_27168B458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168B474(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 26)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168B86C(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_27168B81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168B86C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879630))
  {
    sub_27168B984();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280879618, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168B984()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_2716121BC(__p);
}

void sub_27168B9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168BA10(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 27)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168BE08(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_27168BDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168BE08(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879650))
  {
    sub_27168BF20();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280879638, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168BF20()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_271612C14(__p);
}

void sub_27168BF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168BFAC(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 28)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168C3A4(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_27168C354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168C3A4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879670))
  {
    sub_27168C4BC();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280879658, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168C4BC()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_27161366C(__p);
}

void sub_27168C52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168C548(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 29)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168C93C(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 32) << 32;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_27168C8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168C93C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879690))
  {
    sub_27168CA54();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280879678, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168CA54()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_271613DBC(__p);
}

void sub_27168CAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168CAE0(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 30)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168CED8(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_27168CE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168CED8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808796B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808796B0))
  {
    sub_27168CFF0();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280879698, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168CFF0()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_27161486C(__p);
}

void sub_27168D060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168D07C(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 31)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168D474(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_27168D424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168D474(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808796D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808796D0))
  {
    sub_27168D58C();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_2808796B8, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168D58C()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_27121B1A8(__p);
}

void sub_27168D5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168D618(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 32)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168DA10(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_27168D9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168DA10(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808796F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808796F0))
  {
    sub_27168DB28();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_2808796D8, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168DB28()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_27121CC98(__p);
}

void sub_27168DB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168DBB4(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 33)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168DFA8(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 32) << 32;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_27168DF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168DFA8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879710))
  {
    sub_27168E0C0();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_2808796F8, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168E0C0()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_271615B28(__p);
}

void sub_27168E130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168E14C(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 34)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168E544(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_27168E4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168E544(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879730))
  {
    sub_27168E65C();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280879718, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168E65C()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_27161670C(__p);
}

void sub_27168E6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168E6E8(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 35)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168EAE0(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_27168EA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168EAE0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879750))
  {
    sub_27168EBF8();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280879738, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168EBF8()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_271617164(__p);
}

void sub_27168EC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168EC84(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 36)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168F07C(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_27168F02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168F07C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879770))
  {
    sub_27168F194();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280879758, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168F194()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_271617BBC(__p);
}

void sub_27168F204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168F220(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 37)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168F614(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 32) << 32;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_27168F5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168F614(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879790))
  {
    sub_27168F72C();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280879778, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168F72C()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_27121E788(__p);
}

void sub_27168F79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168F7B8(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 38)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27168FBB0(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_27168FB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27168FBB0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808797B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808797B0))
  {
    sub_27168FCC8();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280879798, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_27168FCC8()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_271220274(__p);
}

void sub_27168FD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27168FD54(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 39)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27169014C(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_2716900FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27169014C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808797D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808797D0))
  {
    sub_271690264();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_2808797B8, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_271690264()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_271618EC0(__p);
}

void sub_2716902D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2716902F0(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 40)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2716906E8(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v5;
      *(&v23 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v23 = v5;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a1 + 28))
  {
    v10 = 1;
  }

  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a1 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  LODWORD(v24) = 4;
  *(&v24 + 4) = v14;
  v15 = v14;
  v16 = v24;
  v17 = HIDWORD(v14);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v13;
  v18 = v25;
  v19 = HIDWORD(v12);
  if (HIDWORD(v14) * HIDWORD(v12) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v18 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v20)(*(v20 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 += 16;
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v22 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v7;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v22;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }
}

void sub_271690698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_2716906E8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808797F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808797F0))
  {
    sub_271690800();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_2808797D8, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_271690800()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_271619970(__p);
}

void sub_271690870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27169088C(int a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  switch(a1)
  {
    case 0:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      v712 = &unk_28810E1F8;
      sub_2715EF504(a3, &v713, a4);
      v5 = *a2;
      v6 = v716;
      v7 = v713;
      if (!v713)
      {
        goto LABEL_957;
      }

      v8 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        v7 = v713;
        v9 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v10 = v7;
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
            v7 = v10;
          }
        }
      }

      if (v721 == 1)
      {
        (*(*v7 + 96))(&v726);
      }

      else
      {
LABEL_957:
        v726 = 0;
      }

      if (v716)
      {
        v552 = v717;
        if (v717)
        {
          v553 = v719;
          v554 = v715;
          if (v720 == 1 && v715)
          {
            v555 = v713;
            v556 = v714;
            if (v714)
            {
              atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v556->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v557 = v555;
                (v556->__on_zero_shared)(v556);
                std::__shared_weak_count::__release_weak(v556);
                v555 = v557;
              }
            }

            (*(*v555 + 88))(v555, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v554 = v715;
          }

          v558 = v552 - 1;
          if (v558)
          {
            for (i = 0; i != v558; ++i)
            {
              v560 = *(v5 + 24);
              if (*(v560 + 40) == 1)
              {
                v727 = (v560 + 16);
                if (v6)
                {
                  v561 = v6;
                  v562 = v554;
                  do
                  {
                    sub_2718454CC(&v727, v562++);
                    --v561;
                  }

                  while (v561);
                }
              }

              else if (v6)
              {
                for (j = 0; j != v6; ++j)
                {
                  v564 = *(v554 + j);
                  if (v564 < 0)
                  {
                    LOBYTE(v727) = -52;
                    BYTE1(v727) = v564;
                  }

                  else
                  {
                    LOBYTE(v727) = *(v554 + j);
                  }

                  std::ostream::write();
                }
              }

              v554 = (v554 + v553);
            }
          }

          v727 = v554;
          v728 = v6;
          sub_27183F44C(v5, &v727);
        }
      }

      goto LABEL_1329;
    case 2:
      v712 = &unk_28810DB78;
      sub_2715EFA94(a3, &v713, a4);
      v45 = *a2;
      v163 = v716;
      v164 = v713;
      if (!v713)
      {
        goto LABEL_944;
      }

      v165 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v165->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v165->__on_zero_shared)(v165);
          std::__shared_weak_count::__release_weak(v165);
        }

        v164 = v713;
        v166 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v166->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v167 = v164;
            (v166->__on_zero_shared)(v166);
            std::__shared_weak_count::__release_weak(v166);
            v164 = v167;
          }
        }
      }

      if (v721 == 1)
      {
        (*(*v164 + 96))(&v726);
      }

      else
      {
LABEL_944:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v545 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v546 = v719;
      v303 = v715;
      if (v720 == 1 && v715)
      {
        v547 = v713;
        v548 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v548->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v549 = v547;
            (v548->__on_zero_shared)(v548);
            std::__shared_weak_count::__release_weak(v548);
            v547 = v549;
          }
        }

        (*(*v547 + 88))(v547, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v550 = v545 - 1;
      if (v550)
      {
        v551 = 2 * v546;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v551);
          --v550;
        }

        while (v550);
      }

      goto LABEL_1101;
    case 3:
      v712 = &unk_28810D4B8;
      sub_271683A48(a3, &v713, a4);
      v157 = *a2;
      v158 = v716;
      v159 = v713;
      if (!v713)
      {
        goto LABEL_921;
      }

      v160 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v160->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v160->__on_zero_shared)(v160);
          std::__shared_weak_count::__release_weak(v160);
        }

        v159 = v713;
        v161 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v161->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v162 = v159;
            (v161->__on_zero_shared)(v161);
            std::__shared_weak_count::__release_weak(v161);
            v159 = v162;
          }
        }
      }

      if (v721 == 1)
      {
        (*(*v159 + 96))(&v726);
      }

      else
      {
LABEL_921:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v533 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v534 = v719;
      v535 = v715;
      if (v720 == 1 && v715)
      {
        v536 = v713;
        v537 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v537->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v538 = v536;
            (v537->__on_zero_shared)(v537);
            std::__shared_weak_count::__release_weak(v537);
            v536 = v538;
          }
        }

        (*(*v536 + 88))(v536, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v535 = v715;
      }

      v539 = v533 - 1;
      if (!v539)
      {
        goto LABEL_1265;
      }

      if (v158)
      {
        v540 = 0;
        v541 = 2 * v534;
        do
        {
          for (k = 0; k != v158; ++k)
          {
            v543 = v535[k];
            v711 = v535[k];
            v544 = *(v157 + 24);
            if (*(v544 + 40) == 1)
            {
              v727 = (v544 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v543 > 0x7F)
            {
              if (v543 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v543);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v543;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v543;
              std::ostream::write();
            }
          }

          v535 = (v535 + v541);
          ++v540;
        }

        while (v540 != v539);
LABEL_1265:
        if (v158)
        {
          v694 = 2 * v158;
          do
          {
            v695 = *v535;
            v711 = *v535;
            v696 = *(v157 + 24);
            if (*(v696 + 40) == 1)
            {
              v727 = (v696 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v695 > 0x7F)
            {
              if (v695 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v695);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v695;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v695;
              std::ostream::write();
            }

            ++v535;
            v694 -= 2;
          }

          while (v694);
        }
      }

      goto LABEL_1329;
    case 4:
      v712 = &unk_28810D378;
      sub_271683F50(a3, &v713, a4);
      v56 = *a2;
      v100 = v716;
      v101 = v713;
      if (!v713)
      {
        goto LABEL_690;
      }

      v102 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v102->__on_zero_shared)(v102);
          std::__shared_weak_count::__release_weak(v102);
        }

        v101 = v713;
        v103 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v104 = v101;
            (v103->__on_zero_shared)(v103);
            std::__shared_weak_count::__release_weak(v103);
            v101 = v104;
          }
        }
      }

      if (v721 == 1)
      {
        (*(*v101 + 96))(&v726);
      }

      else
      {
LABEL_690:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v402 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v403 = v719;
      v323 = v715;
      if (v720 == 1 && v715)
      {
        v404 = v713;
        v405 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v405->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v406 = v404;
            (v405->__on_zero_shared)(v405);
            std::__shared_weak_count::__release_weak(v405);
            v404 = v406;
          }
        }

        (*(*v404 + 88))(v404, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v323 = v715;
      }

      v407 = v402 - 1;
      if (v407)
      {
        v408 = 0;
        v409 = 4 * v403;
        do
        {
          v410 = *(v56 + 24);
          if (*(v410 + 40) == 1)
          {
            v727 = (v410 + 16);
            if (v100)
            {
              v411 = 4 * v100;
              v412 = v323;
              do
              {
                sub_271846EFC(&v711, &v727, v412++);
                v411 -= 4;
              }

              while (v411);
            }
          }

          else if (v100)
          {
            v413 = 0;
            do
            {
              v414 = *(v323 + v413);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v414);
              std::ostream::write();
              v413 += 4;
            }

            while (4 * v100 != v413);
          }

          v323 = (v323 + v409);
          ++v408;
        }

        while (v408 != v407);
      }

      goto LABEL_1199;
    case 5:
      v712 = &unk_28810D2B8;
      sub_271684458(a3, &v713, a4);
      v23 = *a2;
      v142 = v723;
      v143 = v713;
      if (!v713)
      {
        goto LABEL_853;
      }

      v144 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v144->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v144->__on_zero_shared)(v144);
          std::__shared_weak_count::__release_weak(v144);
        }

        v143 = v713;
        v145 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v146 = v143;
            (v145->__on_zero_shared)(v145);
            std::__shared_weak_count::__release_weak(v145);
            v143 = v146;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v143 + 96))(&v726);
      }

      else
      {
LABEL_853:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v495 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v496 = v722;
      v249 = v715;
      if (v724 == 1 && v715)
      {
        v497 = v713;
        v498 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v498->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v499 = v497;
            (v498->__on_zero_shared)(v498);
            std::__shared_weak_count::__release_weak(v498);
            v497 = v499;
          }
        }

        (*(*v497 + 88))(v497, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v249 = v715;
      }

      v253 = (2 * v142);
      v500 = v495 - 1;
      if (v500)
      {
        for (m = 0; m != v500; ++m)
        {
          v502 = *(v23 + 24);
          if (*(v502 + 40) == 1)
          {
            v727 = (v502 + 16);
            if (v253)
            {
              v503 = v253;
              v504 = v249;
              do
              {
                sub_2718454CC(&v727, v504++);
                --v503;
              }

              while (v503);
            }
          }

          else if (v253)
          {
            for (n = 0; n != v253; ++n)
            {
              v506 = *(v249 + n);
              if (v506 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v506;
              }

              else
              {
                LOBYTE(v727) = *(v249 + n);
              }

              std::ostream::write();
            }
          }

          v249 = (v249 + v496);
        }
      }

      goto LABEL_1198;
    case 6:
      v712 = &unk_28810D238;
      sub_2716849F0(a3, &v713, a4);
      v45 = *a2;
      v95 = v723;
      v96 = v713;
      if (!v713)
      {
        goto LABEL_676;
      }

      v97 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v97->__on_zero_shared)(v97);
          std::__shared_weak_count::__release_weak(v97);
        }

        v96 = v713;
        v98 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v99 = v96;
            (v98->__on_zero_shared)(v98);
            std::__shared_weak_count::__release_weak(v98);
            v96 = v99;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v96 + 96))(&v726);
      }

      else
      {
LABEL_676:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v395 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v396 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v397 = v713;
        v398 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v399 = v397;
            (v398->__on_zero_shared)(v398);
            std::__shared_weak_count::__release_weak(v398);
            v397 = v399;
          }
        }

        (*(*v397 + 88))(v397, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (2 * v95);
      v400 = v395 - 1;
      if (v400)
      {
        v401 = 2 * v396;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v401);
          --v400;
        }

        while (v400);
      }

      goto LABEL_1101;
    case 7:
      v712 = &unk_28810D178;
      sub_271684F8C(a3, &v713, a4);
      v67 = *a2;
      v68 = v723;
      v69 = v713;
      if (!v713)
      {
        goto LABEL_576;
      }

      v70 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v70->__on_zero_shared)(v70);
          std::__shared_weak_count::__release_weak(v70);
        }

        v69 = v713;
        v71 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v72 = v69;
            (v71->__on_zero_shared)(v71);
            std::__shared_weak_count::__release_weak(v71);
            v69 = v72;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v69 + 96))(&v726);
      }

      else
      {
LABEL_576:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v342 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v343 = v722;
      v344 = v715;
      if (v724 == 1 && v715)
      {
        v345 = v713;
        v346 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v346->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v347 = v345;
            (v346->__on_zero_shared)(v346);
            std::__shared_weak_count::__release_weak(v346);
            v345 = v347;
          }
        }

        (*(*v345 + 88))(v345, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v344 = v715;
      }

      v348 = (2 * v68);
      v349 = v342 - 1;
      if (!v349)
      {
        goto LABEL_1221;
      }

      if (v348)
      {
        v350 = 0;
        v351 = 2 * v343;
        do
        {
          v352 = 0;
          do
          {
            v353 = v344[v352];
            v711 = v344[v352];
            v354 = *(v67 + 24);
            if (*(v354 + 40) == 1)
            {
              v727 = (v354 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v353 > 0x7F)
            {
              if (v353 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v353);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v353;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v353;
              std::ostream::write();
            }

            ++v352;
          }

          while (v348 != v352);
          v344 = (v344 + v351);
          ++v350;
        }

        while (v350 != v349);
LABEL_1221:
        if (v348)
        {
          v682 = 2 * v348;
          do
          {
            v683 = *v344;
            v711 = *v344;
            v684 = *(v67 + 24);
            if (*(v684 + 40) == 1)
            {
              v727 = (v684 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v683 > 0x7F)
            {
              if (v683 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v683);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v683;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v683;
              std::ostream::write();
            }

            ++v344;
            v682 -= 2;
          }

          while (v682);
        }
      }

      goto LABEL_1329;
    case 8:
      v712 = &unk_28810D0B8;
      sub_271685528(a3, &v713, a4);
      v56 = *a2;
      v152 = v723;
      v153 = v713;
      if (!v713)
      {
        goto LABEL_899;
      }

      v154 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v154->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v154->__on_zero_shared)(v154);
          std::__shared_weak_count::__release_weak(v154);
        }

        v153 = v713;
        v155 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v155->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v156 = v153;
            (v155->__on_zero_shared)(v155);
            std::__shared_weak_count::__release_weak(v155);
            v153 = v156;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v153 + 96))(&v726);
      }

      else
      {
LABEL_899:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v520 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v521 = v722;
      v323 = v715;
      if (v724 == 1 && v715)
      {
        v522 = v713;
        v523 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v523->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v524 = v522;
            (v523->__on_zero_shared)(v523);
            std::__shared_weak_count::__release_weak(v523);
            v522 = v524;
          }
        }

        (*(*v522 + 88))(v522, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v323 = v715;
      }

      v100 = (2 * v152);
      v525 = v520 - 1;
      if (v525)
      {
        v526 = 0;
        v527 = 4 * v521;
        do
        {
          v528 = *(v56 + 24);
          if (*(v528 + 40) == 1)
          {
            v727 = (v528 + 16);
            if (v100)
            {
              v529 = 4 * v100;
              v530 = v323;
              do
              {
                sub_271846EFC(&v711, &v727, v530++);
                v529 -= 4;
              }

              while (v529);
            }
          }

          else if (v100)
          {
            v531 = 0;
            do
            {
              v532 = *(v323 + v531);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v532);
              std::ostream::write();
              v531 += 4;
            }

            while (4 * v100 != v531);
          }

          v323 = (v323 + v527);
          ++v526;
        }

        while (v526 != v525);
      }

      goto LABEL_1199;
    case 9:
      v712 = &unk_28810D038;
      sub_271685AC4(a3, &v713, a4);
      v136 = *a2;
      v137 = v723;
      v138 = v713;
      if (!v713)
      {
        goto LABEL_829;
      }

      v139 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v139->__on_zero_shared)(v139);
          std::__shared_weak_count::__release_weak(v139);
        }

        v138 = v713;
        v140 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v141 = v138;
            (v140->__on_zero_shared)(v140);
            std::__shared_weak_count::__release_weak(v140);
            v138 = v141;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v138 + 96))(&v726);
      }

      else
      {
LABEL_829:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v481 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v482 = v722;
      v483 = v715;
      if (v724 == 1 && v715)
      {
        v484 = v713;
        v485 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v485->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v486 = v484;
            (v485->__on_zero_shared)(v485);
            std::__shared_weak_count::__release_weak(v485);
            v484 = v486;
          }
        }

        (*(*v484 + 88))(v484, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v483 = v715;
      }

      v487 = (3 * v137);
      v488 = v481 - 1;
      if (v488)
      {
        for (ii = 0; ii != v488; ++ii)
        {
          v490 = *(v136 + 24);
          if (*(v490 + 40) == 1)
          {
            v727 = (v490 + 16);
            if (v137)
            {
              v491 = (3 * v137);
              v492 = v483;
              do
              {
                sub_2718454CC(&v727, v492++);
                --v491;
              }

              while (v491);
            }
          }

          else if (v137)
          {
            v493 = 0;
            do
            {
              v494 = *(v483 + v493);
              if (v494 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v494;
              }

              else
              {
                LOBYTE(v727) = *(v483 + v493);
              }

              std::ostream::write();
              ++v493;
            }

            while (v487 != v493);
          }

          v483 = (v483 + v482);
        }
      }

      goto LABEL_1209;
    case 10:
      v712 = &unk_28810E738;
      sub_27168605C(a3, &v713, a4);
      v45 = *a2;
      v179 = v723;
      v180 = v713;
      if (!v713)
      {
        goto LABEL_1028;
      }

      v181 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v181->__on_zero_shared)(v181);
          std::__shared_weak_count::__release_weak(v181);
        }

        v180 = v713;
        v182 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v182->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v183 = v180;
            (v182->__on_zero_shared)(v182);
            std::__shared_weak_count::__release_weak(v182);
            v180 = v183;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v180 + 96))(&v726);
      }

      else
      {
LABEL_1028:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v590 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v591 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v592 = v713;
        v593 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v593->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v594 = v592;
            (v593->__on_zero_shared)(v593);
            std::__shared_weak_count::__release_weak(v593);
            v592 = v594;
          }
        }

        (*(*v592 + 88))(v592, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (3 * v179);
      v595 = v590 - 1;
      if (v595)
      {
        v596 = 2 * v591;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v596);
          --v595;
        }

        while (v595);
      }

      goto LABEL_1101;
    case 11:
      v712 = &unk_28810E6B8;
      sub_2716865F8(a3, &v713, a4);
      v173 = *a2;
      v174 = v723;
      v175 = v713;
      if (!v713)
      {
        goto LABEL_1004;
      }

      v176 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v176->__on_zero_shared)(v176);
          std::__shared_weak_count::__release_weak(v176);
        }

        v175 = v713;
        v177 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v177->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v178 = v175;
            (v177->__on_zero_shared)(v177);
            std::__shared_weak_count::__release_weak(v177);
            v175 = v178;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v175 + 96))(&v726);
      }

      else
      {
LABEL_1004:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v577 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v578 = v722;
      v579 = v715;
      if (v724 == 1 && v715)
      {
        v580 = v713;
        v581 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v582 = v580;
            (v581->__on_zero_shared)(v581);
            std::__shared_weak_count::__release_weak(v581);
            v580 = v582;
          }
        }

        (*(*v580 + 88))(v580, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v579 = v715;
      }

      v583 = (3 * v174);
      v584 = v577 - 1;
      if (!v584)
      {
        goto LABEL_1306;
      }

      if (v174)
      {
        v585 = 0;
        v586 = 2 * v578;
        do
        {
          v587 = 0;
          do
          {
            v588 = v579[v587];
            v711 = v579[v587];
            v589 = *(v173 + 24);
            if (*(v589 + 40) == 1)
            {
              v727 = (v589 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v588 > 0x7F)
            {
              if (v588 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v588);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v588;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v588;
              std::ostream::write();
            }

            ++v587;
          }

          while (3 * v174 != v587);
          v579 = (v579 + v586);
          ++v585;
        }

        while (v585 != v584);
        v583 = (3 * v174);
LABEL_1306:
        if (v174)
        {
          v703 = 2 * v583;
          do
          {
            v704 = *v579;
            v711 = *v579;
            v705 = *(v173 + 24);
            if (*(v705 + 40) == 1)
            {
              v727 = (v705 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v704 > 0x7F)
            {
              if (v704 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v704);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v704;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v704;
              std::ostream::write();
            }

            ++v579;
            v703 -= 2;
          }

          while (v703);
        }
      }

      goto LABEL_1329;
    case 12:
      v712 = &unk_28810E638;
      sub_271686B94(a3, &v713, a4);
      v29 = *a2;
      v30 = v723;
      v31 = v713;
      if (!v713)
      {
        goto LABEL_434;
      }

      v32 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v32->__on_zero_shared)(v32);
          std::__shared_weak_count::__release_weak(v32);
        }

        v31 = v713;
        v33 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v34 = v31;
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
            v31 = v34;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v31 + 96))(&v726);
      }

      else
      {
LABEL_434:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v261 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v262 = v722;
      v263 = v715;
      if (v724 == 1 && v715)
      {
        v264 = v713;
        v265 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v265->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v266 = v264;
            (v265->__on_zero_shared)(v265);
            std::__shared_weak_count::__release_weak(v265);
            v264 = v266;
          }
        }

        (*(*v264 + 88))(v264, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v263 = v715;
      }

      v267 = (3 * v30);
      v268 = v261 - 1;
      if (v268)
      {
        v269 = 0;
        v270 = 4 * v262;
        do
        {
          v271 = *(v29 + 24);
          if (*(v271 + 40) == 1)
          {
            v727 = (v271 + 16);
            if (v30)
            {
              v272 = 4 * (3 * v30);
              v273 = v263;
              do
              {
                sub_271846EFC(&v711, &v727, v273++);
                v272 -= 4;
              }

              while (v272);
            }
          }

          else if (v30)
          {
            v274 = 0;
            do
            {
              v275 = *(v263 + v274);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v275);
              std::ostream::write();
              v274 += 4;
            }

            while (4 * (3 * v30) != v274);
          }

          v263 = (v263 + v270);
          ++v269;
        }

        while (v269 != v268);
        v267 = (3 * v30);
      }

      goto LABEL_1292;
    case 13:
      v712 = &unk_28810E5B8;
      sub_271687130(a3, &v713, a4);
      v23 = *a2;
      v51 = v723;
      v52 = v713;
      if (!v713)
      {
        goto LABEL_516;
      }

      v53 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v53->__on_zero_shared)(v53);
          std::__shared_weak_count::__release_weak(v53);
        }

        v52 = v713;
        v54 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v55 = v52;
            (v54->__on_zero_shared)(v54);
            std::__shared_weak_count::__release_weak(v54);
            v52 = v55;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v52 + 96))(&v726);
      }

      else
      {
LABEL_516:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v309 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v310 = v722;
      v249 = v715;
      if (v724 == 1 && v715)
      {
        v311 = v713;
        v312 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v312->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v313 = v311;
            (v312->__on_zero_shared)(v312);
            std::__shared_weak_count::__release_weak(v312);
            v311 = v313;
          }
        }

        (*(*v311 + 88))(v311, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v249 = v715;
      }

      v253 = (4 * v51);
      v314 = v309 - 1;
      if (v314)
      {
        for (jj = 0; jj != v314; ++jj)
        {
          v316 = *(v23 + 24);
          if (*(v316 + 40) == 1)
          {
            v727 = (v316 + 16);
            if (v253)
            {
              v317 = v253;
              v318 = v249;
              do
              {
                sub_2718454CC(&v727, v318++);
                --v317;
              }

              while (v317);
            }
          }

          else if (v253)
          {
            for (kk = 0; kk != v253; ++kk)
            {
              v320 = *(v249 + kk);
              if (v320 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v320;
              }

              else
              {
                LOBYTE(v727) = *(v249 + kk);
              }

              std::ostream::write();
            }
          }

          v249 = (v249 + v310);
        }
      }

      goto LABEL_1198;
    case 14:
      v712 = &unk_28810E538;
      sub_2716876C8(a3, &v713, a4);
      v45 = *a2;
      v46 = v723;
      v47 = v713;
      if (!v713)
      {
        goto LABEL_502;
      }

      v48 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v48->__on_zero_shared)(v48);
          std::__shared_weak_count::__release_weak(v48);
        }

        v47 = v713;
        v49 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v50 = v47;
            (v49->__on_zero_shared)(v49);
            std::__shared_weak_count::__release_weak(v49);
            v47 = v50;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v47 + 96))(&v726);
      }

      else
      {
LABEL_502:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v301 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v302 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v304 = v713;
        v305 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v305->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v306 = v304;
            (v305->__on_zero_shared)(v305);
            std::__shared_weak_count::__release_weak(v305);
            v304 = v306;
          }
        }

        (*(*v304 + 88))(v304, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (4 * v46);
      v307 = v301 - 1;
      if (v307)
      {
        v308 = 2 * v302;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v308);
          --v307;
        }

        while (v307);
      }

      goto LABEL_1101;
    case 15:
      v712 = &unk_28810E4B8;
      sub_271687C64(a3, &v713, a4);
      v199 = *a2;
      v200 = v723;
      v201 = v713;
      if (!v713)
      {
        goto LABEL_1102;
      }

      v202 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v202->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v202->__on_zero_shared)(v202);
          std::__shared_weak_count::__release_weak(v202);
        }

        v201 = v713;
        v203 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v203->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v204 = v201;
            (v203->__on_zero_shared)(v203);
            std::__shared_weak_count::__release_weak(v203);
            v201 = v204;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v201 + 96))(&v726);
      }

      else
      {
LABEL_1102:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v629 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v630 = v722;
      v631 = v715;
      if (v724 == 1 && v715)
      {
        v632 = v713;
        v633 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v633->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v634 = v632;
            (v633->__on_zero_shared)(v633);
            std::__shared_weak_count::__release_weak(v633);
            v632 = v634;
          }
        }

        (*(*v632 + 88))(v632, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v631 = v715;
      }

      v635 = (4 * v200);
      v636 = v629 - 1;
      if (!v636)
      {
        goto LABEL_1276;
      }

      if (v635)
      {
        v637 = 0;
        v638 = 2 * v630;
        do
        {
          v639 = 0;
          do
          {
            v640 = v631[v639];
            v711 = v631[v639];
            v641 = *(v199 + 24);
            if (*(v641 + 40) == 1)
            {
              v727 = (v641 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v640 > 0x7F)
            {
              if (v640 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v640);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v640;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v640;
              std::ostream::write();
            }

            ++v639;
          }

          while (v635 != v639);
          v631 = (v631 + v638);
          ++v637;
        }

        while (v637 != v636);
LABEL_1276:
        if (v635)
        {
          v697 = 2 * v635;
          do
          {
            v698 = *v631;
            v711 = *v631;
            v699 = *(v199 + 24);
            if (*(v699 + 40) == 1)
            {
              v727 = (v699 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v698 > 0x7F)
            {
              if (v698 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v698);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v698;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v698;
              std::ostream::write();
            }

            ++v631;
            v697 -= 2;
          }

          while (v697);
        }
      }

      goto LABEL_1329;
    case 16:
      v712 = &unk_28810E438;
      sub_271688200(a3, &v713, a4);
      v56 = *a2;
      v147 = v723;
      v148 = v713;
      if (!v713)
      {
        goto LABEL_877;
      }

      v149 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v149->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v149->__on_zero_shared)(v149);
          std::__shared_weak_count::__release_weak(v149);
        }

        v148 = v713;
        v150 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v150->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v151 = v148;
            (v150->__on_zero_shared)(v150);
            std::__shared_weak_count::__release_weak(v150);
            v148 = v151;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v148 + 96))(&v726);
      }

      else
      {
LABEL_877:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v507 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v508 = v722;
      v323 = v715;
      if (v724 == 1 && v715)
      {
        v509 = v713;
        v510 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v510->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v511 = v509;
            (v510->__on_zero_shared)(v510);
            std::__shared_weak_count::__release_weak(v510);
            v509 = v511;
          }
        }

        (*(*v509 + 88))(v509, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v323 = v715;
      }

      v100 = (4 * v147);
      v512 = v507 - 1;
      if (v512)
      {
        v513 = 0;
        v514 = 4 * v508;
        do
        {
          v515 = *(v56 + 24);
          if (*(v515 + 40) == 1)
          {
            v727 = (v515 + 16);
            if (v100)
            {
              v516 = 4 * v100;
              v517 = v323;
              do
              {
                sub_271846EFC(&v711, &v727, v517++);
                v516 -= 4;
              }

              while (v516);
            }
          }

          else if (v100)
          {
            v518 = 0;
            do
            {
              v519 = *(v323 + v518);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v519);
              std::ostream::write();
              v518 += 4;
            }

            while (4 * v100 != v518);
          }

          v323 = (v323 + v514);
          ++v513;
        }

        while (v513 != v512);
      }

      goto LABEL_1199;
    case 17:
      v712 = &unk_28810E3B8;
      sub_27168879C(a3, &v713, a4);
      v136 = *a2;
      v205 = v723;
      v206 = v713;
      if (!v713)
      {
        goto LABEL_1126;
      }

      v207 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v207->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v207->__on_zero_shared)(v207);
          std::__shared_weak_count::__release_weak(v207);
        }

        v206 = v713;
        v208 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v208->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v209 = v206;
            (v208->__on_zero_shared)(v208);
            std::__shared_weak_count::__release_weak(v208);
            v206 = v209;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v206 + 96))(&v726);
      }

      else
      {
LABEL_1126:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v642 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v643 = v722;
      v483 = v715;
      if (v724 == 1 && v715)
      {
        v644 = v713;
        v645 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v645->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v646 = v644;
            (v645->__on_zero_shared)(v645);
            std::__shared_weak_count::__release_weak(v645);
            v644 = v646;
          }
        }

        (*(*v644 + 88))(v644, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v483 = v715;
      }

      v487 = (3 * v205);
      v647 = v642 - 1;
      if (v647)
      {
        for (mm = 0; mm != v647; ++mm)
        {
          v649 = *(v136 + 24);
          if (*(v649 + 40) == 1)
          {
            v727 = (v649 + 16);
            if (v205)
            {
              v650 = (3 * v205);
              v651 = v483;
              do
              {
                sub_2718454CC(&v727, v651++);
                --v650;
              }

              while (v650);
            }
          }

          else if (v205)
          {
            v652 = 0;
            do
            {
              v653 = *(v483 + v652);
              if (v653 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v653;
              }

              else
              {
                LOBYTE(v727) = *(v483 + v652);
              }

              std::ostream::write();
              ++v652;
            }

            while (v487 != v652);
          }

          v483 = (v483 + v643);
        }
      }

      goto LABEL_1209;
    case 18:
      v712 = &unk_28810E338;
      sub_271688D34(a3, &v713, a4);
      v45 = *a2;
      v62 = v723;
      v63 = v713;
      if (!v713)
      {
        goto LABEL_562;
      }

      v64 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v64->__on_zero_shared)(v64);
          std::__shared_weak_count::__release_weak(v64);
        }

        v63 = v713;
        v65 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v66 = v63;
            (v65->__on_zero_shared)(v65);
            std::__shared_weak_count::__release_weak(v65);
            v63 = v66;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v63 + 96))(&v726);
      }

      else
      {
LABEL_562:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v335 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v336 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v337 = v713;
        v338 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v338->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v339 = v337;
            (v338->__on_zero_shared)(v338);
            std::__shared_weak_count::__release_weak(v338);
            v337 = v339;
          }
        }

        (*(*v337 + 88))(v337, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (3 * v62);
      v340 = v335 - 1;
      if (v340)
      {
        v341 = 2 * v336;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v341);
          --v340;
        }

        while (v340);
      }

      goto LABEL_1101;
    case 19:
      v712 = &unk_28810E2B8;
      sub_2716892D0(a3, &v713, a4);
      v17 = *a2;
      v18 = v723;
      v19 = v713;
      if (!v713)
      {
        goto LABEL_386;
      }

      v20 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v19 = v713;
        v21 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v22 = v19;
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
            v19 = v22;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v19 + 96))(&v726);
      }

      else
      {
LABEL_386:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v234 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v235 = v722;
      v236 = v715;
      if (v724 == 1 && v715)
      {
        v237 = v713;
        v238 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v238->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v239 = v237;
            (v238->__on_zero_shared)(v238);
            std::__shared_weak_count::__release_weak(v238);
            v237 = v239;
          }
        }

        (*(*v237 + 88))(v237, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v236 = v715;
      }

      v240 = (3 * v18);
      v241 = v234 - 1;
      if (!v241)
      {
        goto LABEL_1294;
      }

      if (v18)
      {
        v242 = 0;
        v243 = 2 * v235;
        do
        {
          v244 = 0;
          do
          {
            v245 = v236[v244];
            v711 = v236[v244];
            v246 = *(v17 + 24);
            if (*(v246 + 40) == 1)
            {
              v727 = (v246 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v245 > 0x7F)
            {
              if (v245 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v245);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v245;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v245;
              std::ostream::write();
            }

            ++v244;
          }

          while (3 * v18 != v244);
          v236 = (v236 + v243);
          ++v242;
        }

        while (v242 != v241);
        v240 = (3 * v18);
LABEL_1294:
        if (v18)
        {
          v700 = 2 * v240;
          do
          {
            v701 = *v236;
            v711 = *v236;
            v702 = *(v17 + 24);
            if (*(v702 + 40) == 1)
            {
              v727 = (v702 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v701 > 0x7F)
            {
              if (v701 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v701);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v701;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v701;
              std::ostream::write();
            }

            ++v236;
            v700 -= 2;
          }

          while (v700);
        }
      }

      goto LABEL_1329;
    case 20:
      v712 = &unk_28810E178;
      sub_27168986C(a3, &v713, a4);
      v29 = *a2;
      v189 = v723;
      v190 = v713;
      if (!v713)
      {
        goto LABEL_1066;
      }

      v191 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v191->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v191->__on_zero_shared)(v191);
          std::__shared_weak_count::__release_weak(v191);
        }

        v190 = v713;
        v192 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v192->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v193 = v190;
            (v192->__on_zero_shared)(v192);
            std::__shared_weak_count::__release_weak(v192);
            v190 = v193;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v190 + 96))(&v726);
      }

      else
      {
LABEL_1066:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v609 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v610 = v722;
      v263 = v715;
      if (v724 == 1 && v715)
      {
        v611 = v713;
        v612 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v612->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v613 = v611;
            (v612->__on_zero_shared)(v612);
            std::__shared_weak_count::__release_weak(v612);
            v611 = v613;
          }
        }

        (*(*v611 + 88))(v611, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v263 = v715;
      }

      v267 = (3 * v189);
      v614 = v609 - 1;
      if (v614)
      {
        v615 = 0;
        v616 = 4 * v610;
        do
        {
          v617 = *(v29 + 24);
          if (*(v617 + 40) == 1)
          {
            v727 = (v617 + 16);
            if (v189)
            {
              v618 = 4 * (3 * v189);
              v619 = v263;
              do
              {
                sub_271846EFC(&v711, &v727, v619++);
                v618 -= 4;
              }

              while (v618);
            }
          }

          else if (v189)
          {
            v620 = 0;
            do
            {
              v621 = *(v263 + v620);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v621);
              std::ostream::write();
              v620 += 4;
            }

            while (4 * (3 * v189) != v620);
          }

          v263 = (v263 + v616);
          ++v615;
        }

        while (v615 != v614);
        v267 = (3 * v189);
      }

      goto LABEL_1292;
    case 21:
      v712 = &unk_28810E0B8;
      sub_2715EFF9C(a3, &v713, a4);
      v136 = *a2;
      v216 = v723;
      v217 = v713;
      if (!v713)
      {
        goto LABEL_1174;
      }

      v218 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v218->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v218->__on_zero_shared)(v218);
          std::__shared_weak_count::__release_weak(v218);
        }

        v217 = v713;
        v219 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v219->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v220 = v217;
            (v219->__on_zero_shared)(v219);
            std::__shared_weak_count::__release_weak(v219);
            v217 = v220;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v217 + 96))(&v726);
      }

      else
      {
LABEL_1174:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v667 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v668 = v722;
      v483 = v715;
      if (v724 == 1 && v715)
      {
        v669 = v713;
        v670 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v670->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v671 = v669;
            (v670->__on_zero_shared)(v670);
            std::__shared_weak_count::__release_weak(v670);
            v669 = v671;
          }
        }

        (*(*v669 + 88))(v669, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v483 = v715;
      }

      v487 = (3 * v216);
      v672 = v667 - 1;
      if (v672)
      {
        for (nn = 0; nn != v672; ++nn)
        {
          v674 = *(v136 + 24);
          if (*(v674 + 40) == 1)
          {
            v727 = (v674 + 16);
            if (v216)
            {
              v675 = (3 * v216);
              v676 = v483;
              do
              {
                sub_2718454CC(&v727, v676++);
                --v675;
              }

              while (v675);
            }
          }

          else if (v216)
          {
            v677 = 0;
            do
            {
              v678 = *(v483 + v677);
              if (v678 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v678;
              }

              else
              {
                LOBYTE(v727) = *(v483 + v677);
              }

              std::ostream::write();
              ++v677;
            }

            while (v487 != v677);
          }

          v483 = (v483 + v668);
        }
      }

LABEL_1209:
      v727 = v483;
      v728 = v487;
      sub_27183F44C(v136, &v727);
      goto LABEL_1329;
    case 22:
      v712 = &unk_28810DFF8;
      sub_271689E08(a3, &v713, a4);
      v45 = *a2;
      v79 = v723;
      v80 = v713;
      if (!v713)
      {
        goto LABEL_624;
      }

      v81 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v81->__on_zero_shared)(v81);
          std::__shared_weak_count::__release_weak(v81);
        }

        v80 = v713;
        v82 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v82->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v83 = v80;
            (v82->__on_zero_shared)(v82);
            std::__shared_weak_count::__release_weak(v82);
            v80 = v83;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v80 + 96))(&v726);
      }

      else
      {
LABEL_624:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v368 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v369 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v370 = v713;
        v371 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v371->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v372 = v370;
            (v371->__on_zero_shared)(v371);
            std::__shared_weak_count::__release_weak(v371);
            v370 = v372;
          }
        }

        (*(*v370 + 88))(v370, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (3 * v79);
      v373 = v368 - 1;
      if (v373)
      {
        v374 = 2 * v369;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v374);
          --v373;
        }

        while (v373);
      }

      goto LABEL_1101;
    case 23:
      v712 = &unk_28810DF78;
      sub_27168A3A4(a3, &v713, a4);
      v210 = *a2;
      v211 = v723;
      v212 = v713;
      if (!v713)
      {
        goto LABEL_1150;
      }

      v213 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v213->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v213->__on_zero_shared)(v213);
          std::__shared_weak_count::__release_weak(v213);
        }

        v212 = v713;
        v214 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v214->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v215 = v212;
            (v214->__on_zero_shared)(v214);
            std::__shared_weak_count::__release_weak(v214);
            v212 = v215;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v212 + 96))(&v726);
      }

      else
      {
LABEL_1150:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v654 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v655 = v722;
      v656 = v715;
      if (v724 == 1 && v715)
      {
        v657 = v713;
        v658 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v658->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v659 = v657;
            (v658->__on_zero_shared)(v658);
            std::__shared_weak_count::__release_weak(v658);
            v657 = v659;
          }
        }

        (*(*v657 + 88))(v657, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v656 = v715;
      }

      v660 = (3 * v211);
      v661 = v654 - 1;
      if (!v661)
      {
        goto LABEL_1318;
      }

      if (v211)
      {
        v662 = 0;
        v663 = 2 * v655;
        do
        {
          v664 = 0;
          do
          {
            v665 = v656[v664];
            v711 = v656[v664];
            v666 = *(v210 + 24);
            if (*(v666 + 40) == 1)
            {
              v727 = (v666 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v665 > 0x7F)
            {
              if (v665 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v665);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v665;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v665;
              std::ostream::write();
            }

            ++v664;
          }

          while (3 * v211 != v664);
          v656 = (v656 + v663);
          ++v662;
        }

        while (v662 != v661);
        v660 = (3 * v211);
LABEL_1318:
        if (v211)
        {
          v706 = 2 * v660;
          do
          {
            v707 = *v656;
            v711 = *v656;
            v708 = *(v210 + 24);
            if (*(v708 + 40) == 1)
            {
              v727 = (v708 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v707 > 0x7F)
            {
              if (v707 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v707);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v707;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v707;
              std::ostream::write();
            }

            ++v656;
            v706 -= 2;
          }

          while (v706);
        }
      }

      goto LABEL_1329;
    case 24:
      v712 = &unk_28810DEF8;
      sub_27168A940(a3, &v713, a4);
      v29 = *a2;
      v40 = v723;
      v41 = v713;
      if (!v713)
      {
        goto LABEL_480;
      }

      v42 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v42->__on_zero_shared)(v42);
          std::__shared_weak_count::__release_weak(v42);
        }

        v41 = v713;
        v43 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v44 = v41;
            (v43->__on_zero_shared)(v43);
            std::__shared_weak_count::__release_weak(v43);
            v41 = v44;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v41 + 96))(&v726);
      }

      else
      {
LABEL_480:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v288 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v289 = v722;
      v263 = v715;
      if (v724 == 1 && v715)
      {
        v290 = v713;
        v291 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v291->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v292 = v290;
            (v291->__on_zero_shared)(v291);
            std::__shared_weak_count::__release_weak(v291);
            v290 = v292;
          }
        }

        (*(*v290 + 88))(v290, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v263 = v715;
      }

      v267 = (3 * v40);
      v293 = v288 - 1;
      if (v293)
      {
        v294 = 0;
        v295 = 4 * v289;
        do
        {
          v296 = *(v29 + 24);
          if (*(v296 + 40) == 1)
          {
            v727 = (v296 + 16);
            if (v40)
            {
              v297 = 4 * (3 * v40);
              v298 = v263;
              do
              {
                sub_271846EFC(&v711, &v727, v298++);
                v297 -= 4;
              }

              while (v297);
            }
          }

          else if (v40)
          {
            v299 = 0;
            do
            {
              v300 = *(v263 + v299);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v300);
              std::ostream::write();
              v299 += 4;
            }

            while (4 * (3 * v40) != v299);
          }

          v263 = (v263 + v295);
          ++v294;
        }

        while (v294 != v293);
        v267 = (3 * v40);
      }

LABEL_1292:
      v727 = v263;
      v728 = v267;
      sub_27183F614(v29, &v727);
      goto LABEL_1329;
    case 25:
      v712 = &unk_28810DE38;
      sub_27168AEDC(a3, &v713, a4);
      v23 = *a2;
      v24 = v723;
      v25 = v713;
      if (!v713)
      {
        goto LABEL_410;
      }

      v26 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }

        v25 = v713;
        v27 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v28 = v25;
            (v27->__on_zero_shared)(v27);
            std::__shared_weak_count::__release_weak(v27);
            v25 = v28;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v25 + 96))(&v726);
      }

      else
      {
LABEL_410:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v247 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v248 = v722;
      v249 = v715;
      if (v724 == 1 && v715)
      {
        v250 = v713;
        v251 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v251->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v252 = v250;
            (v251->__on_zero_shared)(v251);
            std::__shared_weak_count::__release_weak(v251);
            v250 = v252;
          }
        }

        (*(*v250 + 88))(v250, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v249 = v715;
      }

      v253 = (4 * v24);
      v254 = v247 - 1;
      if (v254)
      {
        for (i1 = 0; i1 != v254; ++i1)
        {
          v256 = *(v23 + 24);
          if (*(v256 + 40) == 1)
          {
            v727 = (v256 + 16);
            if (v253)
            {
              v257 = v253;
              v258 = v249;
              do
              {
                sub_2718454CC(&v727, v258++);
                --v257;
              }

              while (v257);
            }
          }

          else if (v253)
          {
            for (i2 = 0; i2 != v253; ++i2)
            {
              v260 = *(v249 + i2);
              if (v260 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v260;
              }

              else
              {
                LOBYTE(v727) = *(v249 + i2);
              }

              std::ostream::write();
            }
          }

          v249 = (v249 + v248);
        }
      }

      goto LABEL_1198;
    case 26:
      v712 = &unk_28810DDB8;
      sub_27168B474(a3, &v713, a4);
      v45 = *a2;
      v84 = v723;
      v85 = v713;
      if (!v713)
      {
        goto LABEL_638;
      }

      v86 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v86->__on_zero_shared)(v86);
          std::__shared_weak_count::__release_weak(v86);
        }

        v85 = v713;
        v87 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v87->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v88 = v85;
            (v87->__on_zero_shared)(v87);
            std::__shared_weak_count::__release_weak(v87);
            v85 = v88;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v85 + 96))(&v726);
      }

      else
      {
LABEL_638:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v375 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v376 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v377 = v713;
        v378 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v378->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v379 = v377;
            (v378->__on_zero_shared)(v378);
            std::__shared_weak_count::__release_weak(v378);
            v377 = v379;
          }
        }

        (*(*v377 + 88))(v377, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (4 * v84);
      v380 = v375 - 1;
      if (v380)
      {
        v381 = 2 * v376;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v381);
          --v380;
        }

        while (v380);
      }

      goto LABEL_1101;
    case 27:
      v712 = &unk_28810DD38;
      sub_27168BA10(a3, &v713, a4);
      v11 = *a2;
      v12 = v723;
      v13 = v713;
      if (!v713)
      {
        goto LABEL_362;
      }

      v14 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        v13 = v713;
        v15 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v16 = v13;
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
            v13 = v16;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v13 + 96))(&v726);
      }

      else
      {
LABEL_362:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v221 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v222 = v722;
      v223 = v715;
      if (v724 == 1 && v715)
      {
        v224 = v713;
        v225 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v225->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v226 = v224;
            (v225->__on_zero_shared)(v225);
            std::__shared_weak_count::__release_weak(v225);
            v224 = v226;
          }
        }

        (*(*v224 + 88))(v224, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v223 = v715;
      }

      v227 = (4 * v12);
      v228 = v221 - 1;
      if (!v228)
      {
        goto LABEL_1210;
      }

      if (v227)
      {
        v229 = 0;
        v230 = 2 * v222;
        do
        {
          v231 = 0;
          do
          {
            v232 = v223[v231];
            v711 = v223[v231];
            v233 = *(v11 + 24);
            if (*(v233 + 40) == 1)
            {
              v727 = (v233 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v232 > 0x7F)
            {
              if (v232 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v232);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v232;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v232;
              std::ostream::write();
            }

            ++v231;
          }

          while (v227 != v231);
          v223 = (v223 + v230);
          ++v229;
        }

        while (v229 != v228);
LABEL_1210:
        if (v227)
        {
          v679 = 2 * v227;
          do
          {
            v680 = *v223;
            v711 = *v223;
            v681 = *(v11 + 24);
            if (*(v681 + 40) == 1)
            {
              v727 = (v681 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v680 > 0x7F)
            {
              if (v680 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v680);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v680;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v680;
              std::ostream::write();
            }

            ++v223;
            v679 -= 2;
          }

          while (v679);
        }
      }

      goto LABEL_1329;
    case 28:
      v712 = &unk_28810DCB8;
      sub_27168BFAC(a3, &v713, a4);
      v56 = *a2;
      v105 = v723;
      v106 = v713;
      if (!v713)
      {
        goto LABEL_711;
      }

      v107 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v107->__on_zero_shared)(v107);
          std::__shared_weak_count::__release_weak(v107);
        }

        v106 = v713;
        v108 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v108->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v109 = v106;
            (v108->__on_zero_shared)(v108);
            std::__shared_weak_count::__release_weak(v108);
            v106 = v109;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v106 + 96))(&v726);
      }

      else
      {
LABEL_711:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v415 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v416 = v722;
      v323 = v715;
      if (v724 == 1 && v715)
      {
        v417 = v713;
        v418 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v418->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v419 = v417;
            (v418->__on_zero_shared)(v418);
            std::__shared_weak_count::__release_weak(v418);
            v417 = v419;
          }
        }

        (*(*v417 + 88))(v417, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v323 = v715;
      }

      v100 = (4 * v105);
      v420 = v415 - 1;
      if (v420)
      {
        v421 = 0;
        v422 = 4 * v416;
        do
        {
          v423 = *(v56 + 24);
          if (*(v423 + 40) == 1)
          {
            v727 = (v423 + 16);
            if (v100)
            {
              v424 = 4 * v100;
              v425 = v323;
              do
              {
                sub_271846EFC(&v711, &v727, v425++);
                v424 -= 4;
              }

              while (v424);
            }
          }

          else if (v100)
          {
            v426 = 0;
            do
            {
              v427 = *(v323 + v426);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v427);
              std::ostream::write();
              v426 += 4;
            }

            while (4 * v100 != v426);
          }

          v323 = (v323 + v422);
          ++v421;
        }

        while (v421 != v420);
      }

      goto LABEL_1199;
    case 29:
      v712 = &unk_28810DC38;
      sub_27168C548(a3, &v713, a4);
      v23 = *a2;
      v35 = v723;
      v36 = v713;
      if (!v713)
      {
        goto LABEL_456;
      }

      v37 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        v36 = v713;
        v38 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v39 = v36;
            (v38->__on_zero_shared)(v38);
            std::__shared_weak_count::__release_weak(v38);
            v36 = v39;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v36 + 96))(&v726);
      }

      else
      {
LABEL_456:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v276 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v277 = v722;
      v249 = v715;
      if (v724 == 1 && v715)
      {
        v278 = v713;
        v279 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v279->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v280 = v278;
            (v279->__on_zero_shared)(v279);
            std::__shared_weak_count::__release_weak(v279);
            v278 = v280;
          }
        }

        (*(*v278 + 88))(v278, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v249 = v715;
      }

      v253 = (4 * v35);
      v281 = v276 - 1;
      if (v281)
      {
        for (i3 = 0; i3 != v281; ++i3)
        {
          v283 = *(v23 + 24);
          if (*(v283 + 40) == 1)
          {
            v727 = (v283 + 16);
            if (v253)
            {
              v284 = v253;
              v285 = v249;
              do
              {
                sub_2718454CC(&v727, v285++);
                --v284;
              }

              while (v284);
            }
          }

          else if (v253)
          {
            for (i4 = 0; i4 != v253; ++i4)
            {
              v287 = *(v249 + i4);
              if (v287 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v287;
              }

              else
              {
                LOBYTE(v727) = *(v249 + i4);
              }

              std::ostream::write();
            }
          }

          v249 = (v249 + v277);
        }
      }

      goto LABEL_1198;
    case 30:
      v712 = &unk_28810DAF8;
      sub_27168CAE0(a3, &v713, a4);
      v45 = *a2;
      v121 = v723;
      v122 = v713;
      if (!v713)
      {
        goto LABEL_779;
      }

      v123 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v123->__on_zero_shared)(v123);
          std::__shared_weak_count::__release_weak(v123);
        }

        v122 = v713;
        v124 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v125 = v122;
            (v124->__on_zero_shared)(v124);
            std::__shared_weak_count::__release_weak(v124);
            v122 = v125;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v122 + 96))(&v726);
      }

      else
      {
LABEL_779:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v454 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v455 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v456 = v713;
        v457 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v457->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v458 = v456;
            (v457->__on_zero_shared)(v457);
            std::__shared_weak_count::__release_weak(v457);
            v456 = v458;
          }
        }

        (*(*v456 + 88))(v456, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (4 * v121);
      v459 = v454 - 1;
      if (v459)
      {
        v460 = 2 * v455;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v460);
          --v459;
        }

        while (v459);
      }

      goto LABEL_1101;
    case 31:
      v712 = &unk_28810DA38;
      sub_27168D07C(a3, &v713, a4);
      v89 = *a2;
      v90 = v723;
      v91 = v713;
      if (!v713)
      {
        goto LABEL_652;
      }

      v92 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v92->__on_zero_shared)(v92);
          std::__shared_weak_count::__release_weak(v92);
        }

        v91 = v713;
        v93 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v94 = v91;
            (v93->__on_zero_shared)(v93);
            std::__shared_weak_count::__release_weak(v93);
            v91 = v94;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v91 + 96))(&v726);
      }

      else
      {
LABEL_652:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v382 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v383 = v722;
      v384 = v715;
      if (v724 == 1 && v715)
      {
        v385 = v713;
        v386 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v386->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v387 = v385;
            (v386->__on_zero_shared)(v386);
            std::__shared_weak_count::__release_weak(v386);
            v385 = v387;
          }
        }

        (*(*v385 + 88))(v385, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v384 = v715;
      }

      v388 = (4 * v90);
      v389 = v382 - 1;
      if (!v389)
      {
        goto LABEL_1243;
      }

      if (v388)
      {
        v390 = 0;
        v391 = 2 * v383;
        do
        {
          v392 = 0;
          do
          {
            v393 = v384[v392];
            v711 = v384[v392];
            v394 = *(v89 + 24);
            if (*(v394 + 40) == 1)
            {
              v727 = (v394 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v393 > 0x7F)
            {
              if (v393 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v393);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v393;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v393;
              std::ostream::write();
            }

            ++v392;
          }

          while (v388 != v392);
          v384 = (v384 + v391);
          ++v390;
        }

        while (v390 != v389);
LABEL_1243:
        if (v388)
        {
          v688 = 2 * v388;
          do
          {
            v689 = *v384;
            v711 = *v384;
            v690 = *(v89 + 24);
            if (*(v690 + 40) == 1)
            {
              v727 = (v690 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v689 > 0x7F)
            {
              if (v689 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v689);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v689;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v689;
              std::ostream::write();
            }

            ++v384;
            v688 -= 2;
          }

          while (v688);
        }
      }

      goto LABEL_1329;
    case 32:
      v712 = &unk_28810D978;
      sub_27168D618(a3, &v713, a4);
      v56 = *a2;
      v131 = v723;
      v132 = v713;
      if (!v713)
      {
        goto LABEL_807;
      }

      v133 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v133->__on_zero_shared)(v133);
          std::__shared_weak_count::__release_weak(v133);
        }

        v132 = v713;
        v134 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v135 = v132;
            (v134->__on_zero_shared)(v134);
            std::__shared_weak_count::__release_weak(v134);
            v132 = v135;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v132 + 96))(&v726);
      }

      else
      {
LABEL_807:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v468 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v469 = v722;
      v323 = v715;
      if (v724 == 1 && v715)
      {
        v470 = v713;
        v471 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v471->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v472 = v470;
            (v471->__on_zero_shared)(v471);
            std::__shared_weak_count::__release_weak(v471);
            v470 = v472;
          }
        }

        (*(*v470 + 88))(v470, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v323 = v715;
      }

      v100 = (4 * v131);
      v473 = v468 - 1;
      if (v473)
      {
        v474 = 0;
        v475 = 4 * v469;
        do
        {
          v476 = *(v56 + 24);
          if (*(v476 + 40) == 1)
          {
            v727 = (v476 + 16);
            if (v100)
            {
              v477 = 4 * v100;
              v478 = v323;
              do
              {
                sub_271846EFC(&v711, &v727, v478++);
                v477 -= 4;
              }

              while (v477);
            }
          }

          else if (v100)
          {
            v479 = 0;
            do
            {
              v480 = *(v323 + v479);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v480);
              std::ostream::write();
              v479 += 4;
            }

            while (4 * v100 != v479);
          }

          v323 = (v323 + v475);
          ++v474;
        }

        while (v474 != v473);
      }

      goto LABEL_1199;
    case 33:
      v712 = &unk_28810D8F8;
      sub_27168DBB4(a3, &v713, a4);
      v23 = *a2;
      v184 = v723;
      v185 = v713;
      if (!v713)
      {
        goto LABEL_1042;
      }

      v186 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v186->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v186->__on_zero_shared)(v186);
          std::__shared_weak_count::__release_weak(v186);
        }

        v185 = v713;
        v187 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v187->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v188 = v185;
            (v187->__on_zero_shared)(v187);
            std::__shared_weak_count::__release_weak(v187);
            v185 = v188;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v185 + 96))(&v726);
      }

      else
      {
LABEL_1042:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v597 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v598 = v722;
      v249 = v715;
      if (v724 == 1 && v715)
      {
        v599 = v713;
        v600 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v600->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v601 = v599;
            (v600->__on_zero_shared)(v600);
            std::__shared_weak_count::__release_weak(v600);
            v599 = v601;
          }
        }

        (*(*v599 + 88))(v599, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v249 = v715;
      }

      v253 = (4 * v184);
      v602 = v597 - 1;
      if (v602)
      {
        for (i5 = 0; i5 != v602; ++i5)
        {
          v604 = *(v23 + 24);
          if (*(v604 + 40) == 1)
          {
            v727 = (v604 + 16);
            if (v253)
            {
              v605 = v253;
              v606 = v249;
              do
              {
                sub_2718454CC(&v727, v606++);
                --v605;
              }

              while (v605);
            }
          }

          else if (v253)
          {
            for (i6 = 0; i6 != v253; ++i6)
            {
              v608 = *(v249 + i6);
              if (v608 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v608;
              }

              else
              {
                LOBYTE(v727) = *(v249 + i6);
              }

              std::ostream::write();
            }
          }

          v249 = (v249 + v598);
        }
      }

      goto LABEL_1198;
    case 34:
      v712 = &unk_28810D878;
      sub_27168E14C(a3, &v713, a4);
      v45 = *a2;
      v126 = v723;
      v127 = v713;
      if (!v713)
      {
        goto LABEL_793;
      }

      v128 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v128->__on_zero_shared)(v128);
          std::__shared_weak_count::__release_weak(v128);
        }

        v127 = v713;
        v129 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v129->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v130 = v127;
            (v129->__on_zero_shared)(v129);
            std::__shared_weak_count::__release_weak(v129);
            v127 = v130;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v127 + 96))(&v726);
      }

      else
      {
LABEL_793:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v461 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v462 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v463 = v713;
        v464 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v464->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v465 = v463;
            (v464->__on_zero_shared)(v464);
            std::__shared_weak_count::__release_weak(v464);
            v463 = v465;
          }
        }

        (*(*v463 + 88))(v463, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (4 * v126);
      v466 = v461 - 1;
      if (v466)
      {
        v467 = 2 * v462;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v467);
          --v466;
        }

        while (v466);
      }

      goto LABEL_1101;
    case 35:
      v712 = &unk_28810D7F8;
      sub_27168E6E8(a3, &v713, a4);
      v115 = *a2;
      v116 = v723;
      v117 = v713;
      if (!v713)
      {
        goto LABEL_755;
      }

      v118 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v118->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v118->__on_zero_shared)(v118);
          std::__shared_weak_count::__release_weak(v118);
        }

        v117 = v713;
        v119 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v120 = v117;
            (v119->__on_zero_shared)(v119);
            std::__shared_weak_count::__release_weak(v119);
            v117 = v120;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v117 + 96))(&v726);
      }

      else
      {
LABEL_755:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v441 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v442 = v722;
      v443 = v715;
      if (v724 == 1 && v715)
      {
        v444 = v713;
        v445 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v445->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v446 = v444;
            (v445->__on_zero_shared)(v445);
            std::__shared_weak_count::__release_weak(v445);
            v444 = v446;
          }
        }

        (*(*v444 + 88))(v444, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v443 = v715;
      }

      v447 = (4 * v116);
      v448 = v441 - 1;
      if (!v448)
      {
        goto LABEL_1254;
      }

      if (v447)
      {
        v449 = 0;
        v450 = 2 * v442;
        do
        {
          v451 = 0;
          do
          {
            v452 = v443[v451];
            v711 = v443[v451];
            v453 = *(v115 + 24);
            if (*(v453 + 40) == 1)
            {
              v727 = (v453 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v452 > 0x7F)
            {
              if (v452 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v452);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v452;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v452;
              std::ostream::write();
            }

            ++v451;
          }

          while (v447 != v451);
          v443 = (v443 + v450);
          ++v449;
        }

        while (v449 != v448);
LABEL_1254:
        if (v447)
        {
          v691 = 2 * v447;
          do
          {
            v692 = *v443;
            v711 = *v443;
            v693 = *(v115 + 24);
            if (*(v693 + 40) == 1)
            {
              v727 = (v693 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v692 > 0x7F)
            {
              if (v692 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v692);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v692;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v692;
              std::ostream::write();
            }

            ++v443;
            v691 -= 2;
          }

          while (v691);
        }
      }

      goto LABEL_1329;
    case 36:
      v712 = &unk_28810D778;
      sub_27168EC84(a3, &v713, a4);
      v56 = *a2;
      v110 = v723;
      v111 = v713;
      if (!v713)
      {
        goto LABEL_733;
      }

      v112 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v112->__on_zero_shared)(v112);
          std::__shared_weak_count::__release_weak(v112);
        }

        v111 = v713;
        v113 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v113->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v114 = v111;
            (v113->__on_zero_shared)(v113);
            std::__shared_weak_count::__release_weak(v113);
            v111 = v114;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v111 + 96))(&v726);
      }

      else
      {
LABEL_733:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v428 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v429 = v722;
      v323 = v715;
      if (v724 == 1 && v715)
      {
        v430 = v713;
        v431 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v431->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v432 = v430;
            (v431->__on_zero_shared)(v431);
            std::__shared_weak_count::__release_weak(v431);
            v430 = v432;
          }
        }

        (*(*v430 + 88))(v430, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v323 = v715;
      }

      v100 = (4 * v110);
      v433 = v428 - 1;
      if (v433)
      {
        v434 = 0;
        v435 = 4 * v429;
        do
        {
          v436 = *(v56 + 24);
          if (*(v436 + 40) == 1)
          {
            v727 = (v436 + 16);
            if (v100)
            {
              v437 = 4 * v100;
              v438 = v323;
              do
              {
                sub_271846EFC(&v711, &v727, v438++);
                v437 -= 4;
              }

              while (v437);
            }
          }

          else if (v100)
          {
            v439 = 0;
            do
            {
              v440 = *(v323 + v439);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v440);
              std::ostream::write();
              v439 += 4;
            }

            while (4 * v100 != v439);
          }

          v323 = (v323 + v435);
          ++v434;
        }

        while (v434 != v433);
      }

      goto LABEL_1199;
    case 37:
      v712 = &unk_28810D6B8;
      sub_27168F220(a3, &v713, a4);
      v23 = *a2;
      v168 = v723;
      v169 = v713;
      if (!v713)
      {
        goto LABEL_980;
      }

      v170 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v170->__on_zero_shared)(v170);
          std::__shared_weak_count::__release_weak(v170);
        }

        v169 = v713;
        v171 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v171->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v172 = v169;
            (v171->__on_zero_shared)(v171);
            std::__shared_weak_count::__release_weak(v171);
            v169 = v172;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v169 + 96))(&v726);
      }

      else
      {
LABEL_980:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v565 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v566 = v722;
      v249 = v715;
      if (v724 == 1 && v715)
      {
        v567 = v713;
        v568 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v568->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v569 = v567;
            (v568->__on_zero_shared)(v568);
            std::__shared_weak_count::__release_weak(v568);
            v567 = v569;
          }
        }

        (*(*v567 + 88))(v567, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v249 = v715;
      }

      v253 = (4 * v168);
      v570 = v565 - 1;
      if (v570)
      {
        for (i7 = 0; i7 != v570; ++i7)
        {
          v572 = *(v23 + 24);
          if (*(v572 + 40) == 1)
          {
            v727 = (v572 + 16);
            if (v253)
            {
              v573 = v253;
              v574 = v249;
              do
              {
                sub_2718454CC(&v727, v574++);
                --v573;
              }

              while (v573);
            }
          }

          else if (v253)
          {
            for (i8 = 0; i8 != v253; ++i8)
            {
              v576 = *(v249 + i8);
              if (v576 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v576;
              }

              else
              {
                LOBYTE(v727) = *(v249 + i8);
              }

              std::ostream::write();
            }
          }

          v249 = (v249 + v566);
        }
      }

LABEL_1198:
      v727 = v249;
      v728 = v253;
      sub_27183F44C(v23, &v727);
      goto LABEL_1329;
    case 38:
      v712 = &unk_28810D5F8;
      sub_27168F7B8(a3, &v713, a4);
      v45 = *a2;
      v194 = v723;
      v195 = v713;
      if (!v713)
      {
        goto LABEL_1088;
      }

      v196 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v196->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v196->__on_zero_shared)(v196);
          std::__shared_weak_count::__release_weak(v196);
        }

        v195 = v713;
        v197 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v197->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v198 = v195;
            (v197->__on_zero_shared)(v197);
            std::__shared_weak_count::__release_weak(v197);
            v195 = v198;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v195 + 96))(&v726);
      }

      else
      {
LABEL_1088:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v622 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v623 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v624 = v713;
        v625 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v625->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v626 = v624;
            (v625->__on_zero_shared)(v625);
            std::__shared_weak_count::__release_weak(v625);
            v624 = v626;
          }
        }

        (*(*v624 + 88))(v624, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (4 * v194);
      v627 = v622 - 1;
      if (v627)
      {
        v628 = 2 * v623;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v628);
          --v627;
        }

        while (v627);
      }

LABEL_1101:
      v727 = v303;
      v728 = v163;
      sub_27183F518(v45, &v727);
      goto LABEL_1329;
    case 39:
      v712 = &unk_28810D578;
      sub_27168FD54(a3, &v713, a4);
      v73 = *a2;
      v74 = v723;
      v75 = v713;
      if (!v713)
      {
        goto LABEL_600;
      }

      v76 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v76->__on_zero_shared)(v76);
          std::__shared_weak_count::__release_weak(v76);
        }

        v75 = v713;
        v77 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v78 = v75;
            (v77->__on_zero_shared)(v77);
            std::__shared_weak_count::__release_weak(v77);
            v75 = v78;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v75 + 96))(&v726);
      }

      else
      {
LABEL_600:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v355 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v356 = v722;
      v357 = v715;
      if (v724 == 1 && v715)
      {
        v358 = v713;
        v359 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v359->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v360 = v358;
            (v359->__on_zero_shared)(v359);
            std::__shared_weak_count::__release_weak(v359);
            v358 = v360;
          }
        }

        (*(*v358 + 88))(v358, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v357 = v715;
      }

      v361 = (4 * v74);
      v362 = v355 - 1;
      if (!v362)
      {
        goto LABEL_1232;
      }

      if (v361)
      {
        v363 = 0;
        v364 = 2 * v356;
        do
        {
          v365 = 0;
          do
          {
            v366 = v357[v365];
            v711 = v357[v365];
            v367 = *(v73 + 24);
            if (*(v367 + 40) == 1)
            {
              v727 = (v367 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v366 > 0x7F)
            {
              if (v366 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v366);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v366;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v366;
              std::ostream::write();
            }

            ++v365;
          }

          while (v361 != v365);
          v357 = (v357 + v364);
          ++v363;
        }

        while (v363 != v362);
LABEL_1232:
        if (v361)
        {
          v685 = 2 * v361;
          do
          {
            v686 = *v357;
            v711 = *v357;
            v687 = *(v73 + 24);
            if (*(v687 + 40) == 1)
            {
              v727 = (v687 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v686 > 0x7F)
            {
              if (v686 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v686);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v686;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v686;
              std::ostream::write();
            }

            ++v357;
            v685 -= 2;
          }

          while (v685);
        }
      }

LABEL_1329:
      v709 = v726;
      v726 = 0;
      if (v709)
      {
        (*(*v709 + 8))(v709);
      }

      v710 = v714;
      if (v714)
      {
        if (!atomic_fetch_add(&v714->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v710->__on_zero_shared)(v710);
          std::__shared_weak_count::__release_weak(v710);
        }
      }

      return;
    case 40:
      v712 = &unk_28810D438;
      sub_2716902F0(a3, &v713, a4);
      v56 = *a2;
      v57 = v723;
      v58 = v713;
      if (!v713)
      {
        goto LABEL_540;
      }

      v59 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v59->__on_zero_shared)(v59);
          std::__shared_weak_count::__release_weak(v59);
        }

        v58 = v713;
        v60 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v61 = v58;
            (v60->__on_zero_shared)(v60);
            std::__shared_weak_count::__release_weak(v60);
            v58 = v61;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v58 + 96))(&v726);
      }

      else
      {
LABEL_540:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v321 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v322 = v722;
      v323 = v715;
      if (v724 == 1 && v715)
      {
        v324 = v713;
        v325 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v325->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v326 = v324;
            (v325->__on_zero_shared)(v325);
            std::__shared_weak_count::__release_weak(v325);
            v324 = v326;
          }
        }

        (*(*v324 + 88))(v324, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v323 = v715;
      }

      v100 = (4 * v57);
      v327 = v321 - 1;
      if (v327)
      {
        v328 = 0;
        v329 = 4 * v322;
        do
        {
          v330 = *(v56 + 24);
          if (*(v330 + 40) == 1)
          {
            v727 = (v330 + 16);
            if (v100)
            {
              v331 = 4 * v100;
              v332 = v323;
              do
              {
                sub_271846EFC(&v711, &v727, v332++);
                v331 -= 4;
              }

              while (v331);
            }
          }

          else if (v100)
          {
            v333 = 0;
            do
            {
              v334 = *(v323 + v333);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v334);
              std::ostream::write();
              v333 += 4;
            }

            while (4 * v100 != v333);
          }

          v323 = (v323 + v329);
          ++v328;
        }

        while (v328 != v327);
      }

LABEL_1199:
      v727 = v323;
      v728 = v100;
      sub_27183F614(v56, &v727);
      goto LABEL_1329;
    default:
      return;
  }
}

void sub_271697624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = a22;
  a22 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_271317FB8(&a12);
  _Unwind_Resume(a1);
}

void sub_2716984FC(int a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  switch(a1)
  {
    case 0:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      v712 = &unk_28810E1F8;
      sub_2715EF504(a3, &v713, a4);
      v5 = *a2;
      v6 = v716;
      v7 = v713;
      if (!v713)
      {
        goto LABEL_957;
      }

      v8 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        v7 = v713;
        v9 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v10 = v7;
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
            v7 = v10;
          }
        }
      }

      if (v721 == 1)
      {
        (*(*v7 + 96))(&v726);
      }

      else
      {
LABEL_957:
        v726 = 0;
      }

      if (v716)
      {
        v552 = v717;
        if (v717)
        {
          v553 = v719;
          v554 = v715;
          if (v720 == 1 && v715)
          {
            v555 = v713;
            v556 = v714;
            if (v714)
            {
              atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v556->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v557 = v555;
                (v556->__on_zero_shared)(v556);
                std::__shared_weak_count::__release_weak(v556);
                v555 = v557;
              }
            }

            (*(*v555 + 88))(v555, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v554 = v715;
          }

          v558 = v552 - 1;
          if (v558)
          {
            for (i = 0; i != v558; ++i)
            {
              v560 = *(v5 + 24);
              if (*(v560 + 40) == 1)
              {
                v727 = (v560 + 16);
                if (v6)
                {
                  v561 = v6;
                  v562 = v554;
                  do
                  {
                    sub_2718454CC(&v727, v562++);
                    --v561;
                  }

                  while (v561);
                }
              }

              else if (v6)
              {
                for (j = 0; j != v6; ++j)
                {
                  v564 = *(v554 + j);
                  if (v564 < 0)
                  {
                    LOBYTE(v727) = -52;
                    BYTE1(v727) = v564;
                  }

                  else
                  {
                    LOBYTE(v727) = *(v554 + j);
                  }

                  std::ostream::write();
                }
              }

              v554 = (v554 + v553);
            }
          }

          v727 = v554;
          v728 = v6;
          sub_27183F44C(v5, &v727);
        }
      }

      goto LABEL_1329;
    case 2:
      v712 = &unk_28810DB78;
      sub_2715EFA94(a3, &v713, a4);
      v45 = *a2;
      v163 = v716;
      v164 = v713;
      if (!v713)
      {
        goto LABEL_944;
      }

      v165 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v165->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v165->__on_zero_shared)(v165);
          std::__shared_weak_count::__release_weak(v165);
        }

        v164 = v713;
        v166 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v166->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v167 = v164;
            (v166->__on_zero_shared)(v166);
            std::__shared_weak_count::__release_weak(v166);
            v164 = v167;
          }
        }
      }

      if (v721 == 1)
      {
        (*(*v164 + 96))(&v726);
      }

      else
      {
LABEL_944:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v545 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v546 = v719;
      v303 = v715;
      if (v720 == 1 && v715)
      {
        v547 = v713;
        v548 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v548->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v549 = v547;
            (v548->__on_zero_shared)(v548);
            std::__shared_weak_count::__release_weak(v548);
            v547 = v549;
          }
        }

        (*(*v547 + 88))(v547, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v550 = v545 - 1;
      if (v550)
      {
        v551 = 2 * v546;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v551);
          --v550;
        }

        while (v550);
      }

      goto LABEL_1101;
    case 3:
      v712 = &unk_28810D4B8;
      sub_271683A48(a3, &v713, a4);
      v157 = *a2;
      v158 = v716;
      v159 = v713;
      if (!v713)
      {
        goto LABEL_921;
      }

      v160 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v160->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v160->__on_zero_shared)(v160);
          std::__shared_weak_count::__release_weak(v160);
        }

        v159 = v713;
        v161 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v161->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v162 = v159;
            (v161->__on_zero_shared)(v161);
            std::__shared_weak_count::__release_weak(v161);
            v159 = v162;
          }
        }
      }

      if (v721 == 1)
      {
        (*(*v159 + 96))(&v726);
      }

      else
      {
LABEL_921:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v533 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v534 = v719;
      v535 = v715;
      if (v720 == 1 && v715)
      {
        v536 = v713;
        v537 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v537->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v538 = v536;
            (v537->__on_zero_shared)(v537);
            std::__shared_weak_count::__release_weak(v537);
            v536 = v538;
          }
        }

        (*(*v536 + 88))(v536, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v535 = v715;
      }

      v539 = v533 - 1;
      if (!v539)
      {
        goto LABEL_1265;
      }

      if (v158)
      {
        v540 = 0;
        v541 = 2 * v534;
        do
        {
          for (k = 0; k != v158; ++k)
          {
            v543 = v535[k];
            v711 = v535[k];
            v544 = *(v157 + 24);
            if (*(v544 + 40) == 1)
            {
              v727 = (v544 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v543 > 0x7F)
            {
              if (v543 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v543);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v543;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v543;
              std::ostream::write();
            }
          }

          v535 = (v535 + v541);
          ++v540;
        }

        while (v540 != v539);
LABEL_1265:
        if (v158)
        {
          v694 = 2 * v158;
          do
          {
            v695 = *v535;
            v711 = *v535;
            v696 = *(v157 + 24);
            if (*(v696 + 40) == 1)
            {
              v727 = (v696 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v695 > 0x7F)
            {
              if (v695 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v695);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v695;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v695;
              std::ostream::write();
            }

            ++v535;
            v694 -= 2;
          }

          while (v694);
        }
      }

      goto LABEL_1329;
    case 4:
      v712 = &unk_28810D378;
      sub_271683F50(a3, &v713, a4);
      v56 = *a2;
      v100 = v716;
      v101 = v713;
      if (!v713)
      {
        goto LABEL_690;
      }

      v102 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v102->__on_zero_shared)(v102);
          std::__shared_weak_count::__release_weak(v102);
        }

        v101 = v713;
        v103 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v104 = v101;
            (v103->__on_zero_shared)(v103);
            std::__shared_weak_count::__release_weak(v103);
            v101 = v104;
          }
        }
      }

      if (v721 == 1)
      {
        (*(*v101 + 96))(&v726);
      }

      else
      {
LABEL_690:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      v402 = v717;
      if (!v717)
      {
        goto LABEL_1329;
      }

      v403 = v719;
      v323 = v715;
      if (v720 == 1 && v715)
      {
        v404 = v713;
        v405 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v405->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v406 = v404;
            (v405->__on_zero_shared)(v405);
            std::__shared_weak_count::__release_weak(v405);
            v404 = v406;
          }
        }

        (*(*v404 + 88))(v404, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v323 = v715;
      }

      v407 = v402 - 1;
      if (v407)
      {
        v408 = 0;
        v409 = 4 * v403;
        do
        {
          v410 = *(v56 + 24);
          if (*(v410 + 40) == 1)
          {
            v727 = (v410 + 16);
            if (v100)
            {
              v411 = 4 * v100;
              v412 = v323;
              do
              {
                sub_271846EFC(&v711, &v727, v412++);
                v411 -= 4;
              }

              while (v411);
            }
          }

          else if (v100)
          {
            v413 = 0;
            do
            {
              v414 = *(v323 + v413);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v414);
              std::ostream::write();
              v413 += 4;
            }

            while (4 * v100 != v413);
          }

          v323 = (v323 + v409);
          ++v408;
        }

        while (v408 != v407);
      }

      goto LABEL_1199;
    case 5:
      v712 = &unk_28810D2B8;
      sub_271684458(a3, &v713, a4);
      v23 = *a2;
      v142 = v723;
      v143 = v713;
      if (!v713)
      {
        goto LABEL_853;
      }

      v144 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v144->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v144->__on_zero_shared)(v144);
          std::__shared_weak_count::__release_weak(v144);
        }

        v143 = v713;
        v145 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v146 = v143;
            (v145->__on_zero_shared)(v145);
            std::__shared_weak_count::__release_weak(v145);
            v143 = v146;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v143 + 96))(&v726);
      }

      else
      {
LABEL_853:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v495 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v496 = v722;
      v249 = v715;
      if (v724 == 1 && v715)
      {
        v497 = v713;
        v498 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v498->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v499 = v497;
            (v498->__on_zero_shared)(v498);
            std::__shared_weak_count::__release_weak(v498);
            v497 = v499;
          }
        }

        (*(*v497 + 88))(v497, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v249 = v715;
      }

      v253 = (2 * v142);
      v500 = v495 - 1;
      if (v500)
      {
        for (m = 0; m != v500; ++m)
        {
          v502 = *(v23 + 24);
          if (*(v502 + 40) == 1)
          {
            v727 = (v502 + 16);
            if (v253)
            {
              v503 = v253;
              v504 = v249;
              do
              {
                sub_2718454CC(&v727, v504++);
                --v503;
              }

              while (v503);
            }
          }

          else if (v253)
          {
            for (n = 0; n != v253; ++n)
            {
              v506 = *(v249 + n);
              if (v506 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v506;
              }

              else
              {
                LOBYTE(v727) = *(v249 + n);
              }

              std::ostream::write();
            }
          }

          v249 = (v249 + v496);
        }
      }

      goto LABEL_1198;
    case 6:
      v712 = &unk_28810D238;
      sub_2716849F0(a3, &v713, a4);
      v45 = *a2;
      v95 = v723;
      v96 = v713;
      if (!v713)
      {
        goto LABEL_676;
      }

      v97 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v97->__on_zero_shared)(v97);
          std::__shared_weak_count::__release_weak(v97);
        }

        v96 = v713;
        v98 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v99 = v96;
            (v98->__on_zero_shared)(v98);
            std::__shared_weak_count::__release_weak(v98);
            v96 = v99;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v96 + 96))(&v726);
      }

      else
      {
LABEL_676:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v395 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v396 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v397 = v713;
        v398 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v399 = v397;
            (v398->__on_zero_shared)(v398);
            std::__shared_weak_count::__release_weak(v398);
            v397 = v399;
          }
        }

        (*(*v397 + 88))(v397, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (2 * v95);
      v400 = v395 - 1;
      if (v400)
      {
        v401 = 2 * v396;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v401);
          --v400;
        }

        while (v400);
      }

      goto LABEL_1101;
    case 7:
      v712 = &unk_28810D178;
      sub_271684F8C(a3, &v713, a4);
      v67 = *a2;
      v68 = v723;
      v69 = v713;
      if (!v713)
      {
        goto LABEL_576;
      }

      v70 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v70->__on_zero_shared)(v70);
          std::__shared_weak_count::__release_weak(v70);
        }

        v69 = v713;
        v71 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v72 = v69;
            (v71->__on_zero_shared)(v71);
            std::__shared_weak_count::__release_weak(v71);
            v69 = v72;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v69 + 96))(&v726);
      }

      else
      {
LABEL_576:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v342 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v343 = v722;
      v344 = v715;
      if (v724 == 1 && v715)
      {
        v345 = v713;
        v346 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v346->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v347 = v345;
            (v346->__on_zero_shared)(v346);
            std::__shared_weak_count::__release_weak(v346);
            v345 = v347;
          }
        }

        (*(*v345 + 88))(v345, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v344 = v715;
      }

      v348 = (2 * v68);
      v349 = v342 - 1;
      if (!v349)
      {
        goto LABEL_1221;
      }

      if (v348)
      {
        v350 = 0;
        v351 = 2 * v343;
        do
        {
          v352 = 0;
          do
          {
            v353 = v344[v352];
            v711 = v344[v352];
            v354 = *(v67 + 24);
            if (*(v354 + 40) == 1)
            {
              v727 = (v354 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v353 > 0x7F)
            {
              if (v353 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v353);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v353;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v353;
              std::ostream::write();
            }

            ++v352;
          }

          while (v348 != v352);
          v344 = (v344 + v351);
          ++v350;
        }

        while (v350 != v349);
LABEL_1221:
        if (v348)
        {
          v682 = 2 * v348;
          do
          {
            v683 = *v344;
            v711 = *v344;
            v684 = *(v67 + 24);
            if (*(v684 + 40) == 1)
            {
              v727 = (v684 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v683 > 0x7F)
            {
              if (v683 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v683);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v683;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v683;
              std::ostream::write();
            }

            ++v344;
            v682 -= 2;
          }

          while (v682);
        }
      }

      goto LABEL_1329;
    case 8:
      v712 = &unk_28810D0B8;
      sub_271685528(a3, &v713, a4);
      v56 = *a2;
      v152 = v723;
      v153 = v713;
      if (!v713)
      {
        goto LABEL_899;
      }

      v154 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v154->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v154->__on_zero_shared)(v154);
          std::__shared_weak_count::__release_weak(v154);
        }

        v153 = v713;
        v155 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v155->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v156 = v153;
            (v155->__on_zero_shared)(v155);
            std::__shared_weak_count::__release_weak(v155);
            v153 = v156;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v153 + 96))(&v726);
      }

      else
      {
LABEL_899:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v520 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v521 = v722;
      v323 = v715;
      if (v724 == 1 && v715)
      {
        v522 = v713;
        v523 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v523->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v524 = v522;
            (v523->__on_zero_shared)(v523);
            std::__shared_weak_count::__release_weak(v523);
            v522 = v524;
          }
        }

        (*(*v522 + 88))(v522, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v323 = v715;
      }

      v100 = (2 * v152);
      v525 = v520 - 1;
      if (v525)
      {
        v526 = 0;
        v527 = 4 * v521;
        do
        {
          v528 = *(v56 + 24);
          if (*(v528 + 40) == 1)
          {
            v727 = (v528 + 16);
            if (v100)
            {
              v529 = 4 * v100;
              v530 = v323;
              do
              {
                sub_271846EFC(&v711, &v727, v530++);
                v529 -= 4;
              }

              while (v529);
            }
          }

          else if (v100)
          {
            v531 = 0;
            do
            {
              v532 = *(v323 + v531);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v532);
              std::ostream::write();
              v531 += 4;
            }

            while (4 * v100 != v531);
          }

          v323 = (v323 + v527);
          ++v526;
        }

        while (v526 != v525);
      }

      goto LABEL_1199;
    case 9:
      v712 = &unk_28810D038;
      sub_271685AC4(a3, &v713, a4);
      v136 = *a2;
      v137 = v723;
      v138 = v713;
      if (!v713)
      {
        goto LABEL_829;
      }

      v139 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v139->__on_zero_shared)(v139);
          std::__shared_weak_count::__release_weak(v139);
        }

        v138 = v713;
        v140 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v141 = v138;
            (v140->__on_zero_shared)(v140);
            std::__shared_weak_count::__release_weak(v140);
            v138 = v141;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v138 + 96))(&v726);
      }

      else
      {
LABEL_829:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v481 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v482 = v722;
      v483 = v715;
      if (v724 == 1 && v715)
      {
        v484 = v713;
        v485 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v485->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v486 = v484;
            (v485->__on_zero_shared)(v485);
            std::__shared_weak_count::__release_weak(v485);
            v484 = v486;
          }
        }

        (*(*v484 + 88))(v484, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v483 = v715;
      }

      v487 = (3 * v137);
      v488 = v481 - 1;
      if (v488)
      {
        for (ii = 0; ii != v488; ++ii)
        {
          v490 = *(v136 + 24);
          if (*(v490 + 40) == 1)
          {
            v727 = (v490 + 16);
            if (v137)
            {
              v491 = (3 * v137);
              v492 = v483;
              do
              {
                sub_2718454CC(&v727, v492++);
                --v491;
              }

              while (v491);
            }
          }

          else if (v137)
          {
            v493 = 0;
            do
            {
              v494 = *(v483 + v493);
              if (v494 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v494;
              }

              else
              {
                LOBYTE(v727) = *(v483 + v493);
              }

              std::ostream::write();
              ++v493;
            }

            while (v487 != v493);
          }

          v483 = (v483 + v482);
        }
      }

      goto LABEL_1209;
    case 10:
      v712 = &unk_28810E738;
      sub_27168605C(a3, &v713, a4);
      v45 = *a2;
      v179 = v723;
      v180 = v713;
      if (!v713)
      {
        goto LABEL_1028;
      }

      v181 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v181->__on_zero_shared)(v181);
          std::__shared_weak_count::__release_weak(v181);
        }

        v180 = v713;
        v182 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v182->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v183 = v180;
            (v182->__on_zero_shared)(v182);
            std::__shared_weak_count::__release_weak(v182);
            v180 = v183;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v180 + 96))(&v726);
      }

      else
      {
LABEL_1028:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v590 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v591 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v592 = v713;
        v593 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v593->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v594 = v592;
            (v593->__on_zero_shared)(v593);
            std::__shared_weak_count::__release_weak(v593);
            v592 = v594;
          }
        }

        (*(*v592 + 88))(v592, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (3 * v179);
      v595 = v590 - 1;
      if (v595)
      {
        v596 = 2 * v591;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v596);
          --v595;
        }

        while (v595);
      }

      goto LABEL_1101;
    case 11:
      v712 = &unk_28810E6B8;
      sub_2716865F8(a3, &v713, a4);
      v173 = *a2;
      v174 = v723;
      v175 = v713;
      if (!v713)
      {
        goto LABEL_1004;
      }

      v176 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v176->__on_zero_shared)(v176);
          std::__shared_weak_count::__release_weak(v176);
        }

        v175 = v713;
        v177 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v177->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v178 = v175;
            (v177->__on_zero_shared)(v177);
            std::__shared_weak_count::__release_weak(v177);
            v175 = v178;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v175 + 96))(&v726);
      }

      else
      {
LABEL_1004:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v577 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v578 = v722;
      v579 = v715;
      if (v724 == 1 && v715)
      {
        v580 = v713;
        v581 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v582 = v580;
            (v581->__on_zero_shared)(v581);
            std::__shared_weak_count::__release_weak(v581);
            v580 = v582;
          }
        }

        (*(*v580 + 88))(v580, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v579 = v715;
      }

      v583 = (3 * v174);
      v584 = v577 - 1;
      if (!v584)
      {
        goto LABEL_1306;
      }

      if (v174)
      {
        v585 = 0;
        v586 = 2 * v578;
        do
        {
          v587 = 0;
          do
          {
            v588 = v579[v587];
            v711 = v579[v587];
            v589 = *(v173 + 24);
            if (*(v589 + 40) == 1)
            {
              v727 = (v589 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v588 > 0x7F)
            {
              if (v588 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v588);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v588;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v588;
              std::ostream::write();
            }

            ++v587;
          }

          while (3 * v174 != v587);
          v579 = (v579 + v586);
          ++v585;
        }

        while (v585 != v584);
        v583 = (3 * v174);
LABEL_1306:
        if (v174)
        {
          v703 = 2 * v583;
          do
          {
            v704 = *v579;
            v711 = *v579;
            v705 = *(v173 + 24);
            if (*(v705 + 40) == 1)
            {
              v727 = (v705 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v704 > 0x7F)
            {
              if (v704 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v704);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v704;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v704;
              std::ostream::write();
            }

            ++v579;
            v703 -= 2;
          }

          while (v703);
        }
      }

      goto LABEL_1329;
    case 12:
      v712 = &unk_28810E638;
      sub_271686B94(a3, &v713, a4);
      v29 = *a2;
      v30 = v723;
      v31 = v713;
      if (!v713)
      {
        goto LABEL_434;
      }

      v32 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v32->__on_zero_shared)(v32);
          std::__shared_weak_count::__release_weak(v32);
        }

        v31 = v713;
        v33 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v34 = v31;
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
            v31 = v34;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v31 + 96))(&v726);
      }

      else
      {
LABEL_434:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v261 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v262 = v722;
      v263 = v715;
      if (v724 == 1 && v715)
      {
        v264 = v713;
        v265 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v265->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v266 = v264;
            (v265->__on_zero_shared)(v265);
            std::__shared_weak_count::__release_weak(v265);
            v264 = v266;
          }
        }

        (*(*v264 + 88))(v264, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v263 = v715;
      }

      v267 = (3 * v30);
      v268 = v261 - 1;
      if (v268)
      {
        v269 = 0;
        v270 = 4 * v262;
        do
        {
          v271 = *(v29 + 24);
          if (*(v271 + 40) == 1)
          {
            v727 = (v271 + 16);
            if (v30)
            {
              v272 = 4 * (3 * v30);
              v273 = v263;
              do
              {
                sub_271846EFC(&v711, &v727, v273++);
                v272 -= 4;
              }

              while (v272);
            }
          }

          else if (v30)
          {
            v274 = 0;
            do
            {
              v275 = *(v263 + v274);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v275);
              std::ostream::write();
              v274 += 4;
            }

            while (4 * (3 * v30) != v274);
          }

          v263 = (v263 + v270);
          ++v269;
        }

        while (v269 != v268);
        v267 = (3 * v30);
      }

      goto LABEL_1292;
    case 13:
      v712 = &unk_28810E5B8;
      sub_271687130(a3, &v713, a4);
      v23 = *a2;
      v51 = v723;
      v52 = v713;
      if (!v713)
      {
        goto LABEL_516;
      }

      v53 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v53->__on_zero_shared)(v53);
          std::__shared_weak_count::__release_weak(v53);
        }

        v52 = v713;
        v54 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v55 = v52;
            (v54->__on_zero_shared)(v54);
            std::__shared_weak_count::__release_weak(v54);
            v52 = v55;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v52 + 96))(&v726);
      }

      else
      {
LABEL_516:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v309 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v310 = v722;
      v249 = v715;
      if (v724 == 1 && v715)
      {
        v311 = v713;
        v312 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v312->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v313 = v311;
            (v312->__on_zero_shared)(v312);
            std::__shared_weak_count::__release_weak(v312);
            v311 = v313;
          }
        }

        (*(*v311 + 88))(v311, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v249 = v715;
      }

      v253 = (4 * v51);
      v314 = v309 - 1;
      if (v314)
      {
        for (jj = 0; jj != v314; ++jj)
        {
          v316 = *(v23 + 24);
          if (*(v316 + 40) == 1)
          {
            v727 = (v316 + 16);
            if (v253)
            {
              v317 = v253;
              v318 = v249;
              do
              {
                sub_2718454CC(&v727, v318++);
                --v317;
              }

              while (v317);
            }
          }

          else if (v253)
          {
            for (kk = 0; kk != v253; ++kk)
            {
              v320 = *(v249 + kk);
              if (v320 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v320;
              }

              else
              {
                LOBYTE(v727) = *(v249 + kk);
              }

              std::ostream::write();
            }
          }

          v249 = (v249 + v310);
        }
      }

      goto LABEL_1198;
    case 14:
      v712 = &unk_28810E538;
      sub_2716876C8(a3, &v713, a4);
      v45 = *a2;
      v46 = v723;
      v47 = v713;
      if (!v713)
      {
        goto LABEL_502;
      }

      v48 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v48->__on_zero_shared)(v48);
          std::__shared_weak_count::__release_weak(v48);
        }

        v47 = v713;
        v49 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v50 = v47;
            (v49->__on_zero_shared)(v49);
            std::__shared_weak_count::__release_weak(v49);
            v47 = v50;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v47 + 96))(&v726);
      }

      else
      {
LABEL_502:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v301 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v302 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v304 = v713;
        v305 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v305->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v306 = v304;
            (v305->__on_zero_shared)(v305);
            std::__shared_weak_count::__release_weak(v305);
            v304 = v306;
          }
        }

        (*(*v304 + 88))(v304, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (4 * v46);
      v307 = v301 - 1;
      if (v307)
      {
        v308 = 2 * v302;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v308);
          --v307;
        }

        while (v307);
      }

      goto LABEL_1101;
    case 15:
      v712 = &unk_28810E4B8;
      sub_271687C64(a3, &v713, a4);
      v199 = *a2;
      v200 = v723;
      v201 = v713;
      if (!v713)
      {
        goto LABEL_1102;
      }

      v202 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v202->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v202->__on_zero_shared)(v202);
          std::__shared_weak_count::__release_weak(v202);
        }

        v201 = v713;
        v203 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v203->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v204 = v201;
            (v203->__on_zero_shared)(v203);
            std::__shared_weak_count::__release_weak(v203);
            v201 = v204;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v201 + 96))(&v726);
      }

      else
      {
LABEL_1102:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v629 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v630 = v722;
      v631 = v715;
      if (v724 == 1 && v715)
      {
        v632 = v713;
        v633 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v633->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v634 = v632;
            (v633->__on_zero_shared)(v633);
            std::__shared_weak_count::__release_weak(v633);
            v632 = v634;
          }
        }

        (*(*v632 + 88))(v632, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v631 = v715;
      }

      v635 = (4 * v200);
      v636 = v629 - 1;
      if (!v636)
      {
        goto LABEL_1276;
      }

      if (v635)
      {
        v637 = 0;
        v638 = 2 * v630;
        do
        {
          v639 = 0;
          do
          {
            v640 = v631[v639];
            v711 = v631[v639];
            v641 = *(v199 + 24);
            if (*(v641 + 40) == 1)
            {
              v727 = (v641 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v640 > 0x7F)
            {
              if (v640 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v640);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v640;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v640;
              std::ostream::write();
            }

            ++v639;
          }

          while (v635 != v639);
          v631 = (v631 + v638);
          ++v637;
        }

        while (v637 != v636);
LABEL_1276:
        if (v635)
        {
          v697 = 2 * v635;
          do
          {
            v698 = *v631;
            v711 = *v631;
            v699 = *(v199 + 24);
            if (*(v699 + 40) == 1)
            {
              v727 = (v699 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v698 > 0x7F)
            {
              if (v698 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v698);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v698;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v698;
              std::ostream::write();
            }

            ++v631;
            v697 -= 2;
          }

          while (v697);
        }
      }

      goto LABEL_1329;
    case 16:
      v712 = &unk_28810E438;
      sub_271688200(a3, &v713, a4);
      v56 = *a2;
      v147 = v723;
      v148 = v713;
      if (!v713)
      {
        goto LABEL_877;
      }

      v149 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v149->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v149->__on_zero_shared)(v149);
          std::__shared_weak_count::__release_weak(v149);
        }

        v148 = v713;
        v150 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v150->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v151 = v148;
            (v150->__on_zero_shared)(v150);
            std::__shared_weak_count::__release_weak(v150);
            v148 = v151;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v148 + 96))(&v726);
      }

      else
      {
LABEL_877:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v507 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v508 = v722;
      v323 = v715;
      if (v724 == 1 && v715)
      {
        v509 = v713;
        v510 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v510->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v511 = v509;
            (v510->__on_zero_shared)(v510);
            std::__shared_weak_count::__release_weak(v510);
            v509 = v511;
          }
        }

        (*(*v509 + 88))(v509, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v323 = v715;
      }

      v100 = (4 * v147);
      v512 = v507 - 1;
      if (v512)
      {
        v513 = 0;
        v514 = 4 * v508;
        do
        {
          v515 = *(v56 + 24);
          if (*(v515 + 40) == 1)
          {
            v727 = (v515 + 16);
            if (v100)
            {
              v516 = 4 * v100;
              v517 = v323;
              do
              {
                sub_271846EFC(&v711, &v727, v517++);
                v516 -= 4;
              }

              while (v516);
            }
          }

          else if (v100)
          {
            v518 = 0;
            do
            {
              v519 = *(v323 + v518);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v519);
              std::ostream::write();
              v518 += 4;
            }

            while (4 * v100 != v518);
          }

          v323 = (v323 + v514);
          ++v513;
        }

        while (v513 != v512);
      }

      goto LABEL_1199;
    case 17:
      v712 = &unk_28810E3B8;
      sub_27168879C(a3, &v713, a4);
      v136 = *a2;
      v205 = v723;
      v206 = v713;
      if (!v713)
      {
        goto LABEL_1126;
      }

      v207 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v207->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v207->__on_zero_shared)(v207);
          std::__shared_weak_count::__release_weak(v207);
        }

        v206 = v713;
        v208 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v208->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v209 = v206;
            (v208->__on_zero_shared)(v208);
            std::__shared_weak_count::__release_weak(v208);
            v206 = v209;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v206 + 96))(&v726);
      }

      else
      {
LABEL_1126:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v642 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v643 = v722;
      v483 = v715;
      if (v724 == 1 && v715)
      {
        v644 = v713;
        v645 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v645->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v646 = v644;
            (v645->__on_zero_shared)(v645);
            std::__shared_weak_count::__release_weak(v645);
            v644 = v646;
          }
        }

        (*(*v644 + 88))(v644, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v483 = v715;
      }

      v487 = (3 * v205);
      v647 = v642 - 1;
      if (v647)
      {
        for (mm = 0; mm != v647; ++mm)
        {
          v649 = *(v136 + 24);
          if (*(v649 + 40) == 1)
          {
            v727 = (v649 + 16);
            if (v205)
            {
              v650 = (3 * v205);
              v651 = v483;
              do
              {
                sub_2718454CC(&v727, v651++);
                --v650;
              }

              while (v650);
            }
          }

          else if (v205)
          {
            v652 = 0;
            do
            {
              v653 = *(v483 + v652);
              if (v653 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v653;
              }

              else
              {
                LOBYTE(v727) = *(v483 + v652);
              }

              std::ostream::write();
              ++v652;
            }

            while (v487 != v652);
          }

          v483 = (v483 + v643);
        }
      }

      goto LABEL_1209;
    case 18:
      v712 = &unk_28810E338;
      sub_271688D34(a3, &v713, a4);
      v45 = *a2;
      v62 = v723;
      v63 = v713;
      if (!v713)
      {
        goto LABEL_562;
      }

      v64 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v64->__on_zero_shared)(v64);
          std::__shared_weak_count::__release_weak(v64);
        }

        v63 = v713;
        v65 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v66 = v63;
            (v65->__on_zero_shared)(v65);
            std::__shared_weak_count::__release_weak(v65);
            v63 = v66;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v63 + 96))(&v726);
      }

      else
      {
LABEL_562:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v335 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v336 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v337 = v713;
        v338 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v338->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v339 = v337;
            (v338->__on_zero_shared)(v338);
            std::__shared_weak_count::__release_weak(v338);
            v337 = v339;
          }
        }

        (*(*v337 + 88))(v337, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (3 * v62);
      v340 = v335 - 1;
      if (v340)
      {
        v341 = 2 * v336;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v341);
          --v340;
        }

        while (v340);
      }

      goto LABEL_1101;
    case 19:
      v712 = &unk_28810E2B8;
      sub_2716892D0(a3, &v713, a4);
      v17 = *a2;
      v18 = v723;
      v19 = v713;
      if (!v713)
      {
        goto LABEL_386;
      }

      v20 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v19 = v713;
        v21 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v22 = v19;
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
            v19 = v22;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v19 + 96))(&v726);
      }

      else
      {
LABEL_386:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v234 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v235 = v722;
      v236 = v715;
      if (v724 == 1 && v715)
      {
        v237 = v713;
        v238 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v238->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v239 = v237;
            (v238->__on_zero_shared)(v238);
            std::__shared_weak_count::__release_weak(v238);
            v237 = v239;
          }
        }

        (*(*v237 + 88))(v237, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v236 = v715;
      }

      v240 = (3 * v18);
      v241 = v234 - 1;
      if (!v241)
      {
        goto LABEL_1294;
      }

      if (v18)
      {
        v242 = 0;
        v243 = 2 * v235;
        do
        {
          v244 = 0;
          do
          {
            v245 = v236[v244];
            v711 = v236[v244];
            v246 = *(v17 + 24);
            if (*(v246 + 40) == 1)
            {
              v727 = (v246 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v245 > 0x7F)
            {
              if (v245 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v245);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v245;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v245;
              std::ostream::write();
            }

            ++v244;
          }

          while (3 * v18 != v244);
          v236 = (v236 + v243);
          ++v242;
        }

        while (v242 != v241);
        v240 = (3 * v18);
LABEL_1294:
        if (v18)
        {
          v700 = 2 * v240;
          do
          {
            v701 = *v236;
            v711 = *v236;
            v702 = *(v17 + 24);
            if (*(v702 + 40) == 1)
            {
              v727 = (v702 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v701 > 0x7F)
            {
              if (v701 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v701);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v701;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v701;
              std::ostream::write();
            }

            ++v236;
            v700 -= 2;
          }

          while (v700);
        }
      }

      goto LABEL_1329;
    case 20:
      v712 = &unk_28810E178;
      sub_27168986C(a3, &v713, a4);
      v29 = *a2;
      v189 = v723;
      v190 = v713;
      if (!v713)
      {
        goto LABEL_1066;
      }

      v191 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v191->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v191->__on_zero_shared)(v191);
          std::__shared_weak_count::__release_weak(v191);
        }

        v190 = v713;
        v192 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v192->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v193 = v190;
            (v192->__on_zero_shared)(v192);
            std::__shared_weak_count::__release_weak(v192);
            v190 = v193;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v190 + 96))(&v726);
      }

      else
      {
LABEL_1066:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v609 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v610 = v722;
      v263 = v715;
      if (v724 == 1 && v715)
      {
        v611 = v713;
        v612 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v612->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v613 = v611;
            (v612->__on_zero_shared)(v612);
            std::__shared_weak_count::__release_weak(v612);
            v611 = v613;
          }
        }

        (*(*v611 + 88))(v611, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v263 = v715;
      }

      v267 = (3 * v189);
      v614 = v609 - 1;
      if (v614)
      {
        v615 = 0;
        v616 = 4 * v610;
        do
        {
          v617 = *(v29 + 24);
          if (*(v617 + 40) == 1)
          {
            v727 = (v617 + 16);
            if (v189)
            {
              v618 = 4 * (3 * v189);
              v619 = v263;
              do
              {
                sub_271846EFC(&v711, &v727, v619++);
                v618 -= 4;
              }

              while (v618);
            }
          }

          else if (v189)
          {
            v620 = 0;
            do
            {
              v621 = *(v263 + v620);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v621);
              std::ostream::write();
              v620 += 4;
            }

            while (4 * (3 * v189) != v620);
          }

          v263 = (v263 + v616);
          ++v615;
        }

        while (v615 != v614);
        v267 = (3 * v189);
      }

      goto LABEL_1292;
    case 21:
      v712 = &unk_28810E0B8;
      sub_2715EFF9C(a3, &v713, a4);
      v136 = *a2;
      v216 = v723;
      v217 = v713;
      if (!v713)
      {
        goto LABEL_1174;
      }

      v218 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v218->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v218->__on_zero_shared)(v218);
          std::__shared_weak_count::__release_weak(v218);
        }

        v217 = v713;
        v219 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v219->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v220 = v217;
            (v219->__on_zero_shared)(v219);
            std::__shared_weak_count::__release_weak(v219);
            v217 = v220;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v217 + 96))(&v726);
      }

      else
      {
LABEL_1174:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v667 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v668 = v722;
      v483 = v715;
      if (v724 == 1 && v715)
      {
        v669 = v713;
        v670 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v670->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v671 = v669;
            (v670->__on_zero_shared)(v670);
            std::__shared_weak_count::__release_weak(v670);
            v669 = v671;
          }
        }

        (*(*v669 + 88))(v669, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v483 = v715;
      }

      v487 = (3 * v216);
      v672 = v667 - 1;
      if (v672)
      {
        for (nn = 0; nn != v672; ++nn)
        {
          v674 = *(v136 + 24);
          if (*(v674 + 40) == 1)
          {
            v727 = (v674 + 16);
            if (v216)
            {
              v675 = (3 * v216);
              v676 = v483;
              do
              {
                sub_2718454CC(&v727, v676++);
                --v675;
              }

              while (v675);
            }
          }

          else if (v216)
          {
            v677 = 0;
            do
            {
              v678 = *(v483 + v677);
              if (v678 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v678;
              }

              else
              {
                LOBYTE(v727) = *(v483 + v677);
              }

              std::ostream::write();
              ++v677;
            }

            while (v487 != v677);
          }

          v483 = (v483 + v668);
        }
      }

LABEL_1209:
      v727 = v483;
      v728 = v487;
      sub_27183F44C(v136, &v727);
      goto LABEL_1329;
    case 22:
      v712 = &unk_28810DFF8;
      sub_271689E08(a3, &v713, a4);
      v45 = *a2;
      v79 = v723;
      v80 = v713;
      if (!v713)
      {
        goto LABEL_624;
      }

      v81 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v81->__on_zero_shared)(v81);
          std::__shared_weak_count::__release_weak(v81);
        }

        v80 = v713;
        v82 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v82->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v83 = v80;
            (v82->__on_zero_shared)(v82);
            std::__shared_weak_count::__release_weak(v82);
            v80 = v83;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v80 + 96))(&v726);
      }

      else
      {
LABEL_624:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v368 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v369 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v370 = v713;
        v371 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v371->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v372 = v370;
            (v371->__on_zero_shared)(v371);
            std::__shared_weak_count::__release_weak(v371);
            v370 = v372;
          }
        }

        (*(*v370 + 88))(v370, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (3 * v79);
      v373 = v368 - 1;
      if (v373)
      {
        v374 = 2 * v369;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v374);
          --v373;
        }

        while (v373);
      }

      goto LABEL_1101;
    case 23:
      v712 = &unk_28810DF78;
      sub_27168A3A4(a3, &v713, a4);
      v210 = *a2;
      v211 = v723;
      v212 = v713;
      if (!v713)
      {
        goto LABEL_1150;
      }

      v213 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v213->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v213->__on_zero_shared)(v213);
          std::__shared_weak_count::__release_weak(v213);
        }

        v212 = v713;
        v214 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v214->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v215 = v212;
            (v214->__on_zero_shared)(v214);
            std::__shared_weak_count::__release_weak(v214);
            v212 = v215;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v212 + 96))(&v726);
      }

      else
      {
LABEL_1150:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v654 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v655 = v722;
      v656 = v715;
      if (v724 == 1 && v715)
      {
        v657 = v713;
        v658 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v658->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v659 = v657;
            (v658->__on_zero_shared)(v658);
            std::__shared_weak_count::__release_weak(v658);
            v657 = v659;
          }
        }

        (*(*v657 + 88))(v657, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v656 = v715;
      }

      v660 = (3 * v211);
      v661 = v654 - 1;
      if (!v661)
      {
        goto LABEL_1318;
      }

      if (v211)
      {
        v662 = 0;
        v663 = 2 * v655;
        do
        {
          v664 = 0;
          do
          {
            v665 = v656[v664];
            v711 = v656[v664];
            v666 = *(v210 + 24);
            if (*(v666 + 40) == 1)
            {
              v727 = (v666 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v665 > 0x7F)
            {
              if (v665 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v665);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v665;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v665;
              std::ostream::write();
            }

            ++v664;
          }

          while (3 * v211 != v664);
          v656 = (v656 + v663);
          ++v662;
        }

        while (v662 != v661);
        v660 = (3 * v211);
LABEL_1318:
        if (v211)
        {
          v706 = 2 * v660;
          do
          {
            v707 = *v656;
            v711 = *v656;
            v708 = *(v210 + 24);
            if (*(v708 + 40) == 1)
            {
              v727 = (v708 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v707 > 0x7F)
            {
              if (v707 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v707);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v707;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v707;
              std::ostream::write();
            }

            ++v656;
            v706 -= 2;
          }

          while (v706);
        }
      }

      goto LABEL_1329;
    case 24:
      v712 = &unk_28810DEF8;
      sub_27168A940(a3, &v713, a4);
      v29 = *a2;
      v40 = v723;
      v41 = v713;
      if (!v713)
      {
        goto LABEL_480;
      }

      v42 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v42->__on_zero_shared)(v42);
          std::__shared_weak_count::__release_weak(v42);
        }

        v41 = v713;
        v43 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v44 = v41;
            (v43->__on_zero_shared)(v43);
            std::__shared_weak_count::__release_weak(v43);
            v41 = v44;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v41 + 96))(&v726);
      }

      else
      {
LABEL_480:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v288 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v289 = v722;
      v263 = v715;
      if (v724 == 1 && v715)
      {
        v290 = v713;
        v291 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v291->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v292 = v290;
            (v291->__on_zero_shared)(v291);
            std::__shared_weak_count::__release_weak(v291);
            v290 = v292;
          }
        }

        (*(*v290 + 88))(v290, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v263 = v715;
      }

      v267 = (3 * v40);
      v293 = v288 - 1;
      if (v293)
      {
        v294 = 0;
        v295 = 4 * v289;
        do
        {
          v296 = *(v29 + 24);
          if (*(v296 + 40) == 1)
          {
            v727 = (v296 + 16);
            if (v40)
            {
              v297 = 4 * (3 * v40);
              v298 = v263;
              do
              {
                sub_271846EFC(&v711, &v727, v298++);
                v297 -= 4;
              }

              while (v297);
            }
          }

          else if (v40)
          {
            v299 = 0;
            do
            {
              v300 = *(v263 + v299);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v300);
              std::ostream::write();
              v299 += 4;
            }

            while (4 * (3 * v40) != v299);
          }

          v263 = (v263 + v295);
          ++v294;
        }

        while (v294 != v293);
        v267 = (3 * v40);
      }

LABEL_1292:
      v727 = v263;
      v728 = v267;
      sub_27183F614(v29, &v727);
      goto LABEL_1329;
    case 25:
      v712 = &unk_28810DE38;
      sub_27168AEDC(a3, &v713, a4);
      v23 = *a2;
      v24 = v723;
      v25 = v713;
      if (!v713)
      {
        goto LABEL_410;
      }

      v26 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }

        v25 = v713;
        v27 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v28 = v25;
            (v27->__on_zero_shared)(v27);
            std::__shared_weak_count::__release_weak(v27);
            v25 = v28;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v25 + 96))(&v726);
      }

      else
      {
LABEL_410:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v247 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v248 = v722;
      v249 = v715;
      if (v724 == 1 && v715)
      {
        v250 = v713;
        v251 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v251->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v252 = v250;
            (v251->__on_zero_shared)(v251);
            std::__shared_weak_count::__release_weak(v251);
            v250 = v252;
          }
        }

        (*(*v250 + 88))(v250, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v249 = v715;
      }

      v253 = (4 * v24);
      v254 = v247 - 1;
      if (v254)
      {
        for (i1 = 0; i1 != v254; ++i1)
        {
          v256 = *(v23 + 24);
          if (*(v256 + 40) == 1)
          {
            v727 = (v256 + 16);
            if (v253)
            {
              v257 = v253;
              v258 = v249;
              do
              {
                sub_2718454CC(&v727, v258++);
                --v257;
              }

              while (v257);
            }
          }

          else if (v253)
          {
            for (i2 = 0; i2 != v253; ++i2)
            {
              v260 = *(v249 + i2);
              if (v260 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v260;
              }

              else
              {
                LOBYTE(v727) = *(v249 + i2);
              }

              std::ostream::write();
            }
          }

          v249 = (v249 + v248);
        }
      }

      goto LABEL_1198;
    case 26:
      v712 = &unk_28810DDB8;
      sub_27168B474(a3, &v713, a4);
      v45 = *a2;
      v84 = v723;
      v85 = v713;
      if (!v713)
      {
        goto LABEL_638;
      }

      v86 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v86->__on_zero_shared)(v86);
          std::__shared_weak_count::__release_weak(v86);
        }

        v85 = v713;
        v87 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v87->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v88 = v85;
            (v87->__on_zero_shared)(v87);
            std::__shared_weak_count::__release_weak(v87);
            v85 = v88;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v85 + 96))(&v726);
      }

      else
      {
LABEL_638:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v375 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v376 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v377 = v713;
        v378 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v378->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v379 = v377;
            (v378->__on_zero_shared)(v378);
            std::__shared_weak_count::__release_weak(v378);
            v377 = v379;
          }
        }

        (*(*v377 + 88))(v377, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (4 * v84);
      v380 = v375 - 1;
      if (v380)
      {
        v381 = 2 * v376;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v381);
          --v380;
        }

        while (v380);
      }

      goto LABEL_1101;
    case 27:
      v712 = &unk_28810DD38;
      sub_27168BA10(a3, &v713, a4);
      v11 = *a2;
      v12 = v723;
      v13 = v713;
      if (!v713)
      {
        goto LABEL_362;
      }

      v14 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        v13 = v713;
        v15 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v16 = v13;
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
            v13 = v16;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v13 + 96))(&v726);
      }

      else
      {
LABEL_362:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v221 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v222 = v722;
      v223 = v715;
      if (v724 == 1 && v715)
      {
        v224 = v713;
        v225 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v225->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v226 = v224;
            (v225->__on_zero_shared)(v225);
            std::__shared_weak_count::__release_weak(v225);
            v224 = v226;
          }
        }

        (*(*v224 + 88))(v224, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v223 = v715;
      }

      v227 = (4 * v12);
      v228 = v221 - 1;
      if (!v228)
      {
        goto LABEL_1210;
      }

      if (v227)
      {
        v229 = 0;
        v230 = 2 * v222;
        do
        {
          v231 = 0;
          do
          {
            v232 = v223[v231];
            v711 = v223[v231];
            v233 = *(v11 + 24);
            if (*(v233 + 40) == 1)
            {
              v727 = (v233 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v232 > 0x7F)
            {
              if (v232 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v232);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v232;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v232;
              std::ostream::write();
            }

            ++v231;
          }

          while (v227 != v231);
          v223 = (v223 + v230);
          ++v229;
        }

        while (v229 != v228);
LABEL_1210:
        if (v227)
        {
          v679 = 2 * v227;
          do
          {
            v680 = *v223;
            v711 = *v223;
            v681 = *(v11 + 24);
            if (*(v681 + 40) == 1)
            {
              v727 = (v681 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v680 > 0x7F)
            {
              if (v680 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v680);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v680;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v680;
              std::ostream::write();
            }

            ++v223;
            v679 -= 2;
          }

          while (v679);
        }
      }

      goto LABEL_1329;
    case 28:
      v712 = &unk_28810DCB8;
      sub_27168BFAC(a3, &v713, a4);
      v56 = *a2;
      v105 = v723;
      v106 = v713;
      if (!v713)
      {
        goto LABEL_711;
      }

      v107 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v107->__on_zero_shared)(v107);
          std::__shared_weak_count::__release_weak(v107);
        }

        v106 = v713;
        v108 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v108->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v109 = v106;
            (v108->__on_zero_shared)(v108);
            std::__shared_weak_count::__release_weak(v108);
            v106 = v109;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v106 + 96))(&v726);
      }

      else
      {
LABEL_711:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v415 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v416 = v722;
      v323 = v715;
      if (v724 == 1 && v715)
      {
        v417 = v713;
        v418 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v418->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v419 = v417;
            (v418->__on_zero_shared)(v418);
            std::__shared_weak_count::__release_weak(v418);
            v417 = v419;
          }
        }

        (*(*v417 + 88))(v417, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v323 = v715;
      }

      v100 = (4 * v105);
      v420 = v415 - 1;
      if (v420)
      {
        v421 = 0;
        v422 = 4 * v416;
        do
        {
          v423 = *(v56 + 24);
          if (*(v423 + 40) == 1)
          {
            v727 = (v423 + 16);
            if (v100)
            {
              v424 = 4 * v100;
              v425 = v323;
              do
              {
                sub_271846EFC(&v711, &v727, v425++);
                v424 -= 4;
              }

              while (v424);
            }
          }

          else if (v100)
          {
            v426 = 0;
            do
            {
              v427 = *(v323 + v426);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v427);
              std::ostream::write();
              v426 += 4;
            }

            while (4 * v100 != v426);
          }

          v323 = (v323 + v422);
          ++v421;
        }

        while (v421 != v420);
      }

      goto LABEL_1199;
    case 29:
      v712 = &unk_28810DC38;
      sub_27168C548(a3, &v713, a4);
      v23 = *a2;
      v35 = v723;
      v36 = v713;
      if (!v713)
      {
        goto LABEL_456;
      }

      v37 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        v36 = v713;
        v38 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v39 = v36;
            (v38->__on_zero_shared)(v38);
            std::__shared_weak_count::__release_weak(v38);
            v36 = v39;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v36 + 96))(&v726);
      }

      else
      {
LABEL_456:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v276 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v277 = v722;
      v249 = v715;
      if (v724 == 1 && v715)
      {
        v278 = v713;
        v279 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v279->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v280 = v278;
            (v279->__on_zero_shared)(v279);
            std::__shared_weak_count::__release_weak(v279);
            v278 = v280;
          }
        }

        (*(*v278 + 88))(v278, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v249 = v715;
      }

      v253 = (4 * v35);
      v281 = v276 - 1;
      if (v281)
      {
        for (i3 = 0; i3 != v281; ++i3)
        {
          v283 = *(v23 + 24);
          if (*(v283 + 40) == 1)
          {
            v727 = (v283 + 16);
            if (v253)
            {
              v284 = v253;
              v285 = v249;
              do
              {
                sub_2718454CC(&v727, v285++);
                --v284;
              }

              while (v284);
            }
          }

          else if (v253)
          {
            for (i4 = 0; i4 != v253; ++i4)
            {
              v287 = *(v249 + i4);
              if (v287 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v287;
              }

              else
              {
                LOBYTE(v727) = *(v249 + i4);
              }

              std::ostream::write();
            }
          }

          v249 = (v249 + v277);
        }
      }

      goto LABEL_1198;
    case 30:
      v712 = &unk_28810DAF8;
      sub_27168CAE0(a3, &v713, a4);
      v45 = *a2;
      v121 = v723;
      v122 = v713;
      if (!v713)
      {
        goto LABEL_779;
      }

      v123 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v123->__on_zero_shared)(v123);
          std::__shared_weak_count::__release_weak(v123);
        }

        v122 = v713;
        v124 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v125 = v122;
            (v124->__on_zero_shared)(v124);
            std::__shared_weak_count::__release_weak(v124);
            v122 = v125;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v122 + 96))(&v726);
      }

      else
      {
LABEL_779:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v454 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v455 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v456 = v713;
        v457 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v457->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v458 = v456;
            (v457->__on_zero_shared)(v457);
            std::__shared_weak_count::__release_weak(v457);
            v456 = v458;
          }
        }

        (*(*v456 + 88))(v456, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (4 * v121);
      v459 = v454 - 1;
      if (v459)
      {
        v460 = 2 * v455;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v460);
          --v459;
        }

        while (v459);
      }

      goto LABEL_1101;
    case 31:
      v712 = &unk_28810DA38;
      sub_27168D07C(a3, &v713, a4);
      v89 = *a2;
      v90 = v723;
      v91 = v713;
      if (!v713)
      {
        goto LABEL_652;
      }

      v92 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v92->__on_zero_shared)(v92);
          std::__shared_weak_count::__release_weak(v92);
        }

        v91 = v713;
        v93 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v94 = v91;
            (v93->__on_zero_shared)(v93);
            std::__shared_weak_count::__release_weak(v93);
            v91 = v94;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v91 + 96))(&v726);
      }

      else
      {
LABEL_652:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v382 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v383 = v722;
      v384 = v715;
      if (v724 == 1 && v715)
      {
        v385 = v713;
        v386 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v386->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v387 = v385;
            (v386->__on_zero_shared)(v386);
            std::__shared_weak_count::__release_weak(v386);
            v385 = v387;
          }
        }

        (*(*v385 + 88))(v385, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v384 = v715;
      }

      v388 = (4 * v90);
      v389 = v382 - 1;
      if (!v389)
      {
        goto LABEL_1243;
      }

      if (v388)
      {
        v390 = 0;
        v391 = 2 * v383;
        do
        {
          v392 = 0;
          do
          {
            v393 = v384[v392];
            v711 = v384[v392];
            v394 = *(v89 + 24);
            if (*(v394 + 40) == 1)
            {
              v727 = (v394 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v393 > 0x7F)
            {
              if (v393 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v393);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v393;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v393;
              std::ostream::write();
            }

            ++v392;
          }

          while (v388 != v392);
          v384 = (v384 + v391);
          ++v390;
        }

        while (v390 != v389);
LABEL_1243:
        if (v388)
        {
          v688 = 2 * v388;
          do
          {
            v689 = *v384;
            v711 = *v384;
            v690 = *(v89 + 24);
            if (*(v690 + 40) == 1)
            {
              v727 = (v690 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v689 > 0x7F)
            {
              if (v689 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v689);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v689;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v689;
              std::ostream::write();
            }

            ++v384;
            v688 -= 2;
          }

          while (v688);
        }
      }

      goto LABEL_1329;
    case 32:
      v712 = &unk_28810D978;
      sub_27168D618(a3, &v713, a4);
      v56 = *a2;
      v131 = v723;
      v132 = v713;
      if (!v713)
      {
        goto LABEL_807;
      }

      v133 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v133->__on_zero_shared)(v133);
          std::__shared_weak_count::__release_weak(v133);
        }

        v132 = v713;
        v134 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v135 = v132;
            (v134->__on_zero_shared)(v134);
            std::__shared_weak_count::__release_weak(v134);
            v132 = v135;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v132 + 96))(&v726);
      }

      else
      {
LABEL_807:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v468 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v469 = v722;
      v323 = v715;
      if (v724 == 1 && v715)
      {
        v470 = v713;
        v471 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v471->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v472 = v470;
            (v471->__on_zero_shared)(v471);
            std::__shared_weak_count::__release_weak(v471);
            v470 = v472;
          }
        }

        (*(*v470 + 88))(v470, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v323 = v715;
      }

      v100 = (4 * v131);
      v473 = v468 - 1;
      if (v473)
      {
        v474 = 0;
        v475 = 4 * v469;
        do
        {
          v476 = *(v56 + 24);
          if (*(v476 + 40) == 1)
          {
            v727 = (v476 + 16);
            if (v100)
            {
              v477 = 4 * v100;
              v478 = v323;
              do
              {
                sub_271846EFC(&v711, &v727, v478++);
                v477 -= 4;
              }

              while (v477);
            }
          }

          else if (v100)
          {
            v479 = 0;
            do
            {
              v480 = *(v323 + v479);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v480);
              std::ostream::write();
              v479 += 4;
            }

            while (4 * v100 != v479);
          }

          v323 = (v323 + v475);
          ++v474;
        }

        while (v474 != v473);
      }

      goto LABEL_1199;
    case 33:
      v712 = &unk_28810D8F8;
      sub_27168DBB4(a3, &v713, a4);
      v23 = *a2;
      v184 = v723;
      v185 = v713;
      if (!v713)
      {
        goto LABEL_1042;
      }

      v186 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v186->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v186->__on_zero_shared)(v186);
          std::__shared_weak_count::__release_weak(v186);
        }

        v185 = v713;
        v187 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v187->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v188 = v185;
            (v187->__on_zero_shared)(v187);
            std::__shared_weak_count::__release_weak(v187);
            v185 = v188;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v185 + 96))(&v726);
      }

      else
      {
LABEL_1042:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v597 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v598 = v722;
      v249 = v715;
      if (v724 == 1 && v715)
      {
        v599 = v713;
        v600 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v600->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v601 = v599;
            (v600->__on_zero_shared)(v600);
            std::__shared_weak_count::__release_weak(v600);
            v599 = v601;
          }
        }

        (*(*v599 + 88))(v599, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v249 = v715;
      }

      v253 = (4 * v184);
      v602 = v597 - 1;
      if (v602)
      {
        for (i5 = 0; i5 != v602; ++i5)
        {
          v604 = *(v23 + 24);
          if (*(v604 + 40) == 1)
          {
            v727 = (v604 + 16);
            if (v253)
            {
              v605 = v253;
              v606 = v249;
              do
              {
                sub_2718454CC(&v727, v606++);
                --v605;
              }

              while (v605);
            }
          }

          else if (v253)
          {
            for (i6 = 0; i6 != v253; ++i6)
            {
              v608 = *(v249 + i6);
              if (v608 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v608;
              }

              else
              {
                LOBYTE(v727) = *(v249 + i6);
              }

              std::ostream::write();
            }
          }

          v249 = (v249 + v598);
        }
      }

      goto LABEL_1198;
    case 34:
      v712 = &unk_28810D878;
      sub_27168E14C(a3, &v713, a4);
      v45 = *a2;
      v126 = v723;
      v127 = v713;
      if (!v713)
      {
        goto LABEL_793;
      }

      v128 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v128->__on_zero_shared)(v128);
          std::__shared_weak_count::__release_weak(v128);
        }

        v127 = v713;
        v129 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v129->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v130 = v127;
            (v129->__on_zero_shared)(v129);
            std::__shared_weak_count::__release_weak(v129);
            v127 = v130;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v127 + 96))(&v726);
      }

      else
      {
LABEL_793:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v461 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v462 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v463 = v713;
        v464 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v464->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v465 = v463;
            (v464->__on_zero_shared)(v464);
            std::__shared_weak_count::__release_weak(v464);
            v463 = v465;
          }
        }

        (*(*v463 + 88))(v463, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (4 * v126);
      v466 = v461 - 1;
      if (v466)
      {
        v467 = 2 * v462;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v467);
          --v466;
        }

        while (v466);
      }

      goto LABEL_1101;
    case 35:
      v712 = &unk_28810D7F8;
      sub_27168E6E8(a3, &v713, a4);
      v115 = *a2;
      v116 = v723;
      v117 = v713;
      if (!v713)
      {
        goto LABEL_755;
      }

      v118 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v118->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v118->__on_zero_shared)(v118);
          std::__shared_weak_count::__release_weak(v118);
        }

        v117 = v713;
        v119 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v120 = v117;
            (v119->__on_zero_shared)(v119);
            std::__shared_weak_count::__release_weak(v119);
            v117 = v120;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v117 + 96))(&v726);
      }

      else
      {
LABEL_755:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v441 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v442 = v722;
      v443 = v715;
      if (v724 == 1 && v715)
      {
        v444 = v713;
        v445 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v445->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v446 = v444;
            (v445->__on_zero_shared)(v445);
            std::__shared_weak_count::__release_weak(v445);
            v444 = v446;
          }
        }

        (*(*v444 + 88))(v444, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v443 = v715;
      }

      v447 = (4 * v116);
      v448 = v441 - 1;
      if (!v448)
      {
        goto LABEL_1254;
      }

      if (v447)
      {
        v449 = 0;
        v450 = 2 * v442;
        do
        {
          v451 = 0;
          do
          {
            v452 = v443[v451];
            v711 = v443[v451];
            v453 = *(v115 + 24);
            if (*(v453 + 40) == 1)
            {
              v727 = (v453 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v452 > 0x7F)
            {
              if (v452 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v452);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v452;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v452;
              std::ostream::write();
            }

            ++v451;
          }

          while (v447 != v451);
          v443 = (v443 + v450);
          ++v449;
        }

        while (v449 != v448);
LABEL_1254:
        if (v447)
        {
          v691 = 2 * v447;
          do
          {
            v692 = *v443;
            v711 = *v443;
            v693 = *(v115 + 24);
            if (*(v693 + 40) == 1)
            {
              v727 = (v693 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v692 > 0x7F)
            {
              if (v692 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v692);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v692;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v692;
              std::ostream::write();
            }

            ++v443;
            v691 -= 2;
          }

          while (v691);
        }
      }

      goto LABEL_1329;
    case 36:
      v712 = &unk_28810D778;
      sub_27168EC84(a3, &v713, a4);
      v56 = *a2;
      v110 = v723;
      v111 = v713;
      if (!v713)
      {
        goto LABEL_733;
      }

      v112 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v112->__on_zero_shared)(v112);
          std::__shared_weak_count::__release_weak(v112);
        }

        v111 = v713;
        v113 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v113->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v114 = v111;
            (v113->__on_zero_shared)(v113);
            std::__shared_weak_count::__release_weak(v113);
            v111 = v114;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v111 + 96))(&v726);
      }

      else
      {
LABEL_733:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v428 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v429 = v722;
      v323 = v715;
      if (v724 == 1 && v715)
      {
        v430 = v713;
        v431 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v431->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v432 = v430;
            (v431->__on_zero_shared)(v431);
            std::__shared_weak_count::__release_weak(v431);
            v430 = v432;
          }
        }

        (*(*v430 + 88))(v430, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v323 = v715;
      }

      v100 = (4 * v110);
      v433 = v428 - 1;
      if (v433)
      {
        v434 = 0;
        v435 = 4 * v429;
        do
        {
          v436 = *(v56 + 24);
          if (*(v436 + 40) == 1)
          {
            v727 = (v436 + 16);
            if (v100)
            {
              v437 = 4 * v100;
              v438 = v323;
              do
              {
                sub_271846EFC(&v711, &v727, v438++);
                v437 -= 4;
              }

              while (v437);
            }
          }

          else if (v100)
          {
            v439 = 0;
            do
            {
              v440 = *(v323 + v439);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v440);
              std::ostream::write();
              v439 += 4;
            }

            while (4 * v100 != v439);
          }

          v323 = (v323 + v435);
          ++v434;
        }

        while (v434 != v433);
      }

      goto LABEL_1199;
    case 37:
      v712 = &unk_28810D6B8;
      sub_27168F220(a3, &v713, a4);
      v23 = *a2;
      v168 = v723;
      v169 = v713;
      if (!v713)
      {
        goto LABEL_980;
      }

      v170 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v170->__on_zero_shared)(v170);
          std::__shared_weak_count::__release_weak(v170);
        }

        v169 = v713;
        v171 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v171->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v172 = v169;
            (v171->__on_zero_shared)(v171);
            std::__shared_weak_count::__release_weak(v171);
            v169 = v172;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v169 + 96))(&v726);
      }

      else
      {
LABEL_980:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v565 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v566 = v722;
      v249 = v715;
      if (v724 == 1 && v715)
      {
        v567 = v713;
        v568 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v568->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v569 = v567;
            (v568->__on_zero_shared)(v568);
            std::__shared_weak_count::__release_weak(v568);
            v567 = v569;
          }
        }

        (*(*v567 + 88))(v567, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v249 = v715;
      }

      v253 = (4 * v168);
      v570 = v565 - 1;
      if (v570)
      {
        for (i7 = 0; i7 != v570; ++i7)
        {
          v572 = *(v23 + 24);
          if (*(v572 + 40) == 1)
          {
            v727 = (v572 + 16);
            if (v253)
            {
              v573 = v253;
              v574 = v249;
              do
              {
                sub_2718454CC(&v727, v574++);
                --v573;
              }

              while (v573);
            }
          }

          else if (v253)
          {
            for (i8 = 0; i8 != v253; ++i8)
            {
              v576 = *(v249 + i8);
              if (v576 < 0)
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v576;
              }

              else
              {
                LOBYTE(v727) = *(v249 + i8);
              }

              std::ostream::write();
            }
          }

          v249 = (v249 + v566);
        }
      }

LABEL_1198:
      v727 = v249;
      v728 = v253;
      sub_27183F44C(v23, &v727);
      goto LABEL_1329;
    case 38:
      v712 = &unk_28810D5F8;
      sub_27168F7B8(a3, &v713, a4);
      v45 = *a2;
      v194 = v723;
      v195 = v713;
      if (!v713)
      {
        goto LABEL_1088;
      }

      v196 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v196->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v196->__on_zero_shared)(v196);
          std::__shared_weak_count::__release_weak(v196);
        }

        v195 = v713;
        v197 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v197->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v198 = v195;
            (v197->__on_zero_shared)(v197);
            std::__shared_weak_count::__release_weak(v197);
            v195 = v198;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v195 + 96))(&v726);
      }

      else
      {
LABEL_1088:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v622 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v623 = v722;
      v303 = v715;
      if (v724 == 1 && v715)
      {
        v624 = v713;
        v625 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v625->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v626 = v624;
            (v625->__on_zero_shared)(v625);
            std::__shared_weak_count::__release_weak(v625);
            v624 = v626;
          }
        }

        (*(*v624 + 88))(v624, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v715;
      }

      v163 = (4 * v194);
      v627 = v622 - 1;
      if (v627)
      {
        v628 = 2 * v623;
        do
        {
          v727 = v303;
          v728 = v163;
          sub_27183F518(v45, &v727);
          v303 = (v303 + v628);
          --v627;
        }

        while (v627);
      }

LABEL_1101:
      v727 = v303;
      v728 = v163;
      sub_27183F518(v45, &v727);
      goto LABEL_1329;
    case 39:
      v712 = &unk_28810D578;
      sub_27168FD54(a3, &v713, a4);
      v73 = *a2;
      v74 = v723;
      v75 = v713;
      if (!v713)
      {
        goto LABEL_600;
      }

      v76 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v76->__on_zero_shared)(v76);
          std::__shared_weak_count::__release_weak(v76);
        }

        v75 = v713;
        v77 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v78 = v75;
            (v77->__on_zero_shared)(v77);
            std::__shared_weak_count::__release_weak(v77);
            v75 = v78;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v75 + 96))(&v726);
      }

      else
      {
LABEL_600:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v355 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v356 = v722;
      v357 = v715;
      if (v724 == 1 && v715)
      {
        v358 = v713;
        v359 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v359->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v360 = v358;
            (v359->__on_zero_shared)(v359);
            std::__shared_weak_count::__release_weak(v359);
            v358 = v360;
          }
        }

        (*(*v358 + 88))(v358, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v357 = v715;
      }

      v361 = (4 * v74);
      v362 = v355 - 1;
      if (!v362)
      {
        goto LABEL_1232;
      }

      if (v361)
      {
        v363 = 0;
        v364 = 2 * v356;
        do
        {
          v365 = 0;
          do
          {
            v366 = v357[v365];
            v711 = v357[v365];
            v367 = *(v73 + 24);
            if (*(v367 + 40) == 1)
            {
              v727 = (v367 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v366 > 0x7F)
            {
              if (v366 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v366);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v366;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v366;
              std::ostream::write();
            }

            ++v365;
          }

          while (v361 != v365);
          v357 = (v357 + v364);
          ++v363;
        }

        while (v363 != v362);
LABEL_1232:
        if (v361)
        {
          v685 = 2 * v361;
          do
          {
            v686 = *v357;
            v711 = *v357;
            v687 = *(v73 + 24);
            if (*(v687 + 40) == 1)
            {
              v727 = (v687 + 16);
              sub_2718459EC(&v727, &v711);
            }

            else if (v686 > 0x7F)
            {
              if (v686 > 0xFF)
              {
                LOBYTE(v727) = -51;
                *(&v727 + 1) = __rev16(v686);
              }

              else
              {
                LOBYTE(v727) = -52;
                BYTE1(v727) = v686;
              }

              std::ostream::write();
            }

            else
            {
              LOBYTE(v727) = v686;
              std::ostream::write();
            }

            ++v357;
            v685 -= 2;
          }

          while (v685);
        }
      }

LABEL_1329:
      v709 = v726;
      v726 = 0;
      if (v709)
      {
        (*(*v709 + 8))(v709);
      }

      v710 = v714;
      if (v714)
      {
        if (!atomic_fetch_add(&v714->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v710->__on_zero_shared)(v710);
          std::__shared_weak_count::__release_weak(v710);
        }
      }

      return;
    case 40:
      v712 = &unk_28810D438;
      sub_2716902F0(a3, &v713, a4);
      v56 = *a2;
      v57 = v723;
      v58 = v713;
      if (!v713)
      {
        goto LABEL_540;
      }

      v59 = v714;
      if (v714)
      {
        atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v59->__on_zero_shared)(v59);
          std::__shared_weak_count::__release_weak(v59);
        }

        v58 = v713;
        v60 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v61 = v58;
            (v60->__on_zero_shared)(v60);
            std::__shared_weak_count::__release_weak(v60);
            v58 = v61;
          }
        }
      }

      if (v725 == 1)
      {
        (*(*v58 + 96))(&v726);
      }

      else
      {
LABEL_540:
        v726 = 0;
      }

      if (!v716)
      {
        goto LABEL_1329;
      }

      if (!v717)
      {
        goto LABEL_1329;
      }

      v321 = v718;
      if (!v718)
      {
        goto LABEL_1329;
      }

      v322 = v722;
      v323 = v715;
      if (v724 == 1 && v715)
      {
        v324 = v713;
        v325 = v714;
        if (v714)
        {
          atomic_fetch_add_explicit(&v714->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v325->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v326 = v324;
            (v325->__on_zero_shared)(v325);
            std::__shared_weak_count::__release_weak(v325);
            v324 = v326;
          }
        }

        (*(*v324 + 88))(v324, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v323 = v715;
      }

      v100 = (4 * v57);
      v327 = v321 - 1;
      if (v327)
      {
        v328 = 0;
        v329 = 4 * v322;
        do
        {
          v330 = *(v56 + 24);
          if (*(v330 + 40) == 1)
          {
            v727 = (v330 + 16);
            if (v100)
            {
              v331 = 4 * v100;
              v332 = v323;
              do
              {
                sub_271846EFC(&v711, &v727, v332++);
                v331 -= 4;
              }

              while (v331);
            }
          }

          else if (v100)
          {
            v333 = 0;
            do
            {
              v334 = *(v323 + v333);
              LOBYTE(v727) = -54;
              *(&v727 + 1) = bswap32(v334);
              std::ostream::write();
              v333 += 4;
            }

            while (4 * v100 != v333);
          }

          v323 = (v323 + v329);
          ++v328;
        }

        while (v328 != v327);
      }

LABEL_1199:
      v727 = v323;
      v728 = v100;
      sub_27183F614(v56, &v727);
      goto LABEL_1329;
    default:
      return;
  }
}