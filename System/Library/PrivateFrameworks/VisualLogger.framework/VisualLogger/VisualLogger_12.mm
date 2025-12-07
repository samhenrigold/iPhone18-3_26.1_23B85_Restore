void sub_271211014(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Two8u]", 29, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_2712112B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_271211400(uint64_t result)
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

void sub_271211478(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271211530(uint64_t a1)
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

void sub_2712115D4(void *a1)
{
  *a1 = &unk_2881135D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712116A8(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271211738(uint64_t a1, uint64_t a2, __n128 a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 5)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_271211B2C(&v24, a2);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v24.__r_.__value_.__r.__words[0] = v5;
      v24.__r_.__value_.__l.__size_ = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      *&v24.__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    *&v24.__r_.__value_.__l.__data_ = 0uLL;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a2 + 28))
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
    v12 = *(a2 + 32) << 32;
  }

  v13 = v12 | (2 * v9);
  v14 = *(a2 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  *v25 = 2;
  *&v25[4] = v14;
  v15 = v14;
  v16 = *v25;
  v17 = HIDWORD(v14);
  *v25 = 1;
  *&v25[4] = v13;
  v18 = *v25;
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
        v18 = *v25;
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
  v22 = *(a2 + 52);
  size = v24.__r_.__value_.__l.__size_;
  if (v24.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v24.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v24.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v7;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 36) = v18;
  *(a1 + 44) = v19;
  *(a1 + 48) = v15;
  *(a1 + 56) = v13;
  *(a1 + 64) = v22;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size, a3);

    std::__shared_weak_count::__release_weak(size);
  }
}

void sub_271211ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_271211B2C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B318))
  {
    sub_271210F88();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B4B8, " from an ", &qword_2808780D8, " but the image is of incompatible format ", &v3);
}

void *sub_271211C38(void *result)
{
  *result = &unk_288113498;
  v1 = result[2];
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

BOOL sub_271211CCC(const void *a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = __dynamic_cast(a1, &unk_288123908, &unk_2881249B0, 0)) != 0)
  {
    v7 = v3;
    v8 = a2;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v4 = 0;
      return v4 != 0;
    }
  }

  v4 = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v4 != 0;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return v7 != 0;
}

void *sub_271211E2C(void *result)
{
  *result = &unk_288113518;
  v1 = result[2];
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

void sub_271211EC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = __dynamic_cast(v4, &unk_288123908, &unk_2881249B0, 0)) == 0)
  {
    v13 = 0;
    v14 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271212278(v11, a2);
    std::logic_error::logic_error(exception, v11);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v13 = v6;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a2 + 40);
    *v11 = *(a2 + 24);
    *&v11[16] = v7;
    v12 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    *(a1 + 8) = v5;
    v8 = *&v11[16];
    *(a1 + 16) = *v11;
    *(a1 + 32) = v8;
    *(a1 + 48) = v12;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v6;
    *(a1 + 8) = 0;
    v9 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v9;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_2712120CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_271212114(void *a1)
{
  *a1 = &unk_288113518;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712121E8(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271212278(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B320))
  {
    sub_271212644();
  }

  if ((atomic_load_explicit(&qword_28087B328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B328))
  {
    sub_271212A74();
  }

  v20 = "Attempting to create an ";
  v21 = 24;
  v4 = byte_28087B4E7;
  if (byte_28087B4E7 >= 0)
  {
    v5 = &qword_28087B4D0;
  }

  else
  {
    v4 = unk_28087B4D8;
    v5 = qword_28087B4D0;
  }

  v22 = v5;
  v23 = v4;
  v24 = " from an ";
  v25 = 9;
  v6 = byte_28087B4FF;
  v7 = &qword_28087B4E8;
  if (byte_28087B4FF < 0)
  {
    v6 = qword_28087B4F0;
    v7 = qword_28087B4E8;
  }

  v26[0] = v7;
  v26[1] = v6;
  sub_271131230(&v20, &v27, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v20 = p_p;
    v21 = size;
    v22 = " but the other image contains an incompatible buffer type ";
    v23 = 58;
    v24 = v11;
    v25 = v12;
    sub_271131230(&v20, v26, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  v17 = v16 + 46;
  if (v16 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v17 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v17;
  if (v15 >= 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v18, v16);
  strcpy((a1 + v16), " but the other image does not contain a buffer");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_271212620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271212644()
{
  v4 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Two16f]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271212918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271212A74()
{
  v1 = 16;
  strcpy(__p, "ConstSharedImage");
  sub_271212B00(__p);
}

void sub_271212AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271212B00(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Two16f]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271212DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_271212EEC(uint64_t result)
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

void sub_271212F64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121301C(uint64_t a1)
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

void sub_2712130C0(void *a1)
{
  *a1 = &unk_288113498;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271213194(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271213224(uint64_t a1, uint64_t a2, __n128 a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 7)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27121361C(&v24, a2);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v24.__r_.__value_.__r.__words[0] = v5;
      v24.__r_.__value_.__l.__size_ = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      *&v24.__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    *&v24.__r_.__value_.__l.__data_ = 0uLL;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a2 + 28))
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
    v12 = (*(a2 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v13 = v12 | (2 * v9);
  v14 = *(a2 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  *v25 = 2;
  *&v25[4] = v14;
  v15 = v14;
  v16 = *v25;
  v17 = HIDWORD(v14);
  *v25 = 1;
  *&v25[4] = v13;
  v18 = *v25;
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
        v18 = *v25;
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
  v22 = *(a2 + 52);
  size = v24.__r_.__value_.__l.__size_;
  if (v24.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v24.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v24.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v7;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 36) = v18;
  *(a1 + 44) = v19;
  *(a1 + 48) = v15;
  *(a1 + 56) = v13;
  *(a1 + 64) = v22;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size, a3);

    std::__shared_weak_count::__release_weak(size);
  }
}

void sub_2712135CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27121361C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B328))
  {
    sub_271212A74();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B4E8, " from an ", &qword_2808780D8, " but the image is of incompatible format ", &v3);
}

void *sub_271213728(void *result)
{
  *result = &unk_288113398;
  v1 = result[2];
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

BOOL sub_2712137BC(const void *a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = __dynamic_cast(a1, &unk_288123908, &unk_288124998, 0)) != 0)
  {
    v7 = v3;
    v8 = a2;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v4 = 0;
      return v4 != 0;
    }
  }

  v4 = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v4 != 0;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return v7 != 0;
}

void *sub_27121391C(void *result)
{
  *result = &unk_288113418;
  v1 = result[2];
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

void sub_2712139B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = __dynamic_cast(v4, &unk_288123908, &unk_288124998, 0)) == 0)
  {
    v13 = 0;
    v14 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271213D68(v11, a2);
    std::logic_error::logic_error(exception, v11);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v13 = v6;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a2 + 40);
    *v11 = *(a2 + 24);
    *&v11[16] = v7;
    v12 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    *(a1 + 8) = v5;
    v8 = *&v11[16];
    *(a1 + 16) = *v11;
    *(a1 + 32) = v8;
    *(a1 + 48) = v12;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v6;
    *(a1 + 8) = 0;
    v9 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v9;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_271213BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_271213C04(void *a1)
{
  *a1 = &unk_288113418;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271213CD8(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271213D68(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B330))
  {
    sub_271214134();
  }

  if ((atomic_load_explicit(&qword_28087B338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B338))
  {
    sub_271214564();
  }

  v20 = "Attempting to create an ";
  v21 = 24;
  v4 = byte_28087B517;
  if (byte_28087B517 >= 0)
  {
    v5 = &qword_28087B500;
  }

  else
  {
    v4 = unk_28087B508;
    v5 = qword_28087B500;
  }

  v22 = v5;
  v23 = v4;
  v24 = " from an ";
  v25 = 9;
  v6 = byte_28087B52F;
  v7 = &qword_28087B518;
  if (byte_28087B52F < 0)
  {
    v6 = qword_28087B520;
    v7 = qword_28087B518;
  }

  v26[0] = v7;
  v26[1] = v6;
  sub_271131230(&v20, &v27, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v20 = p_p;
    v21 = size;
    v22 = " but the other image contains an incompatible buffer type ";
    v23 = 58;
    v24 = v11;
    v25 = v12;
    sub_271131230(&v20, v26, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  v17 = v16 + 46;
  if (v16 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v17 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v17;
  if (v15 >= 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v18, v16);
  strcpy((a1 + v16), " but the other image does not contain a buffer");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_271214110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271214134()
{
  v4 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Two32f]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271214408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271214564()
{
  v1 = 16;
  strcpy(__p, "ConstSharedImage");
  sub_2712145F0(__p);
}

void sub_2712145D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712145F0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Two32f]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271214894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_2712149DC(uint64_t result)
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

void sub_271214A54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271214B0C(uint64_t a1)
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

void sub_271214BB0(void *a1)
{
  *a1 = &unk_288113398;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271214C84(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271214D14(uint64_t a1, uint64_t a2, __n128 a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 8)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27121510C(&v24, a2);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v24.__r_.__value_.__r.__words[0] = v5;
      v24.__r_.__value_.__l.__size_ = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      *&v24.__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    *&v24.__r_.__value_.__l.__data_ = 0uLL;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a2 + 28))
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
    v12 = (*(a2 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v13 = v12 | (2 * v9);
  v14 = *(a2 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  *v25 = 2;
  *&v25[4] = v14;
  v15 = v14;
  v16 = *v25;
  v17 = HIDWORD(v14);
  *v25 = 1;
  *&v25[4] = v13;
  v18 = *v25;
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
        v18 = *v25;
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
  v22 = *(a2 + 52);
  size = v24.__r_.__value_.__l.__size_;
  if (v24.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v24.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v24.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v7;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 36) = v18;
  *(a1 + 44) = v19;
  *(a1 + 48) = v15;
  *(a1 + 56) = v13;
  *(a1 + 64) = v22;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size, a3);

    std::__shared_weak_count::__release_weak(size);
  }
}

void sub_2712150BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27121510C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B338))
  {
    sub_271214564();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B518, " from an ", &qword_2808780D8, " but the image is of incompatible format ", &v3);
}

void *sub_271215218(void *result)
{
  *result = &unk_288114318;
  v1 = result[2];
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

BOOL sub_2712152AC(const void *a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = __dynamic_cast(a1, &unk_288123908, &unk_288124AB8, 0)) != 0)
  {
    v7 = v3;
    v8 = a2;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v4 = 0;
      return v4 != 0;
    }
  }

  v4 = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v4 != 0;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return v7 != 0;
}

void *sub_27121540C(void *result)
{
  *result = &unk_288114398;
  v1 = result[2];
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

void sub_2712154A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = __dynamic_cast(v4, &unk_288123908, &unk_288124AB8, 0)) == 0)
  {
    v13 = 0;
    v14 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271215858(v11, a2);
    std::logic_error::logic_error(exception, v11);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v13 = v6;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a2 + 40);
    *v11 = *(a2 + 24);
    *&v11[16] = v7;
    v12 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    *(a1 + 8) = v5;
    v8 = *&v11[16];
    *(a1 + 16) = *v11;
    *(a1 + 32) = v8;
    *(a1 + 48) = v12;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v6;
    *(a1 + 8) = 0;
    v9 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v9;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_2712156AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_2712156F4(void *a1)
{
  *a1 = &unk_288114398;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712157C8(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271215858(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B340))
  {
    sub_271215C24();
  }

  if ((atomic_load_explicit(&qword_28087B348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B348))
  {
    sub_271216054();
  }

  v20 = "Attempting to create an ";
  v21 = 24;
  v4 = byte_28087B547;
  if (byte_28087B547 >= 0)
  {
    v5 = &qword_28087B530;
  }

  else
  {
    v4 = unk_28087B538;
    v5 = qword_28087B530;
  }

  v22 = v5;
  v23 = v4;
  v24 = " from an ";
  v25 = 9;
  v6 = byte_28087B55F;
  v7 = &qword_28087B548;
  if (byte_28087B55F < 0)
  {
    v6 = qword_28087B550;
    v7 = qword_28087B548;
  }

  v26[0] = v7;
  v26[1] = v6;
  sub_271131230(&v20, &v27, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v20 = p_p;
    v21 = size;
    v22 = " but the other image contains an incompatible buffer type ";
    v23 = 58;
    v24 = v11;
    v25 = v12;
    sub_271131230(&v20, v26, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  v17 = v16 + 46;
  if (v16 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v17 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v17;
  if (v15 >= 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v18, v16);
  strcpy((a1 + v16), " but the other image does not contain a buffer");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_271215C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271215C24()
{
  v4 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Rgb8u]", 29, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271215EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271216054()
{
  v1 = 16;
  strcpy(__p, "ConstSharedImage");
  sub_2712160E0(__p);
}

void sub_2712160C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712160E0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgb8u]", 29, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271216384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_2712164CC(uint64_t result)
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

void sub_271216544(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712165FC(uint64_t a1)
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

void sub_2712166A0(void *a1)
{
  *a1 = &unk_288114318;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271216774(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271216804(uint64_t a1, uint64_t a2, __n128 a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 21)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_271216BF8(&v23, a2);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v23.__r_.__value_.__r.__words[0] = v5;
      v23.__r_.__value_.__l.__size_ = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      *&v23.__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    *&v23.__r_.__value_.__l.__data_ = 0uLL;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 24) == 0;
  if (*(a2 + 24))
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if (!*(a2 + 28))
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
    v11 = *(a2 + 32) << 32;
  }

  v12 = v11 | v9;
  v13 = *(a2 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  *&v24[4] = v13;
  v14 = v13;
  *v24 = 3;
  v15 = *v24;
  v16 = HIDWORD(v13);
  *v24 = 1;
  *&v24[4] = v12;
  v17 = *v24;
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
        v17 = *v24;
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
  v21 = *(a2 + 52);
  size = v23.__r_.__value_.__l.__size_;
  if (v23.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v23.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v23.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v7;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 36) = v17;
  *(a1 + 44) = v18;
  *(a1 + 48) = v14;
  *(a1 + 56) = v12;
  *(a1 + 64) = v21;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size, a3);

    std::__shared_weak_count::__release_weak(size);
  }
}

void sub_271216BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_271216BF8(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B348))
  {
    sub_271216054();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B548, " from an ", &qword_2808780D8, " but the image is of incompatible format ", &v3);
}

void *sub_271216D04(void *result)
{
  *result = &unk_288114218;
  v1 = result[2];
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

BOOL sub_271216D98(const void *a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = __dynamic_cast(a1, &unk_288123908, &unk_288124AA0, 0)) != 0)
  {
    v7 = v3;
    v8 = a2;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v4 = 0;
      return v4 != 0;
    }
  }

  v4 = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v4 != 0;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return v7 != 0;
}

void *sub_271216EF8(void *result)
{
  *result = &unk_288114298;
  v1 = result[2];
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

void sub_271216F8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = __dynamic_cast(v4, &unk_288123908, &unk_288124AA0, 0)) == 0)
  {
    v13 = 0;
    v14 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271217344(v11, a2);
    std::logic_error::logic_error(exception, v11);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v13 = v6;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a2 + 40);
    *v11 = *(a2 + 24);
    *&v11[16] = v7;
    v12 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    *(a1 + 8) = v5;
    v8 = *&v11[16];
    *(a1 + 16) = *v11;
    *(a1 + 32) = v8;
    *(a1 + 48) = v12;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v6;
    *(a1 + 8) = 0;
    v9 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v9;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_271217198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_2712171E0(void *a1)
{
  *a1 = &unk_288114298;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712172B4(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271217344(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B350))
  {
    sub_271217710();
  }

  if ((atomic_load_explicit(&qword_28087B358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B358))
  {
    sub_271217B40();
  }

  v20 = "Attempting to create an ";
  v21 = 24;
  v4 = byte_28087B577;
  if (byte_28087B577 >= 0)
  {
    v5 = &qword_28087B560;
  }

  else
  {
    v4 = unk_28087B568;
    v5 = qword_28087B560;
  }

  v22 = v5;
  v23 = v4;
  v24 = " from an ";
  v25 = 9;
  v6 = byte_28087B58F;
  v7 = &qword_28087B578;
  if (byte_28087B58F < 0)
  {
    v6 = qword_28087B580;
    v7 = qword_28087B578;
  }

  v26[0] = v7;
  v26[1] = v6;
  sub_271131230(&v20, &v27, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v20 = p_p;
    v21 = size;
    v22 = " but the other image contains an incompatible buffer type ";
    v23 = 58;
    v24 = v11;
    v25 = v12;
    sub_271131230(&v20, v26, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  v17 = v16 + 46;
  if (v16 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v17 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v17;
  if (v15 >= 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v18, v16);
  strcpy((a1 + v16), " but the other image does not contain a buffer");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2712176EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271217710()
{
  v4 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Rgb16u]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_2712179E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271217B40()
{
  v1 = 16;
  strcpy(__p, "ConstSharedImage");
  sub_271217BCC(__p);
}

void sub_271217BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271217BCC(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgb16u]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271217E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_271217FB8(uint64_t result)
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

void sub_271218030(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712180E8(uint64_t a1)
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

void sub_27121818C(void *a1)
{
  *a1 = &unk_288114218;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271218260(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_2712182F0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 22)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2712186E8(&v23, a2);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v23.__r_.__value_.__r.__words[0] = v5;
      v23.__r_.__value_.__l.__size_ = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      *&v23.__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    *&v23.__r_.__value_.__l.__data_ = 0uLL;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 24) == 0;
  if (*(a2 + 24))
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if (!*(a2 + 28))
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
    v11 = (*(a2 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | v9;
  v13 = *(a2 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  *&v24[4] = v13;
  v14 = v13;
  *v24 = 3;
  v15 = *v24;
  v16 = HIDWORD(v13);
  *v24 = 1;
  *&v24[4] = v11 | v9;
  v17 = *v24;
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
        v17 = *v24;
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
  v21 = *(a2 + 52);
  size = v23.__r_.__value_.__l.__size_;
  if (v23.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v23.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v23.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v7;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 36) = v17;
  *(a1 + 44) = v18;
  *(a1 + 48) = v14;
  *(a1 + 56) = v12;
  *(a1 + 64) = v21;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size, a3);

    std::__shared_weak_count::__release_weak(size);
  }
}

void sub_271218698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_2712186E8(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B358))
  {
    sub_271217B40();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B578, " from an ", &qword_2808780D8, " but the image is of incompatible format ", &v3);
}

void *sub_2712187F4(void *result)
{
  *result = &unk_288114098;
  v1 = result[2];
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

BOOL sub_271218888(const void *a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = __dynamic_cast(a1, &unk_288123908, &unk_288124A88, 0)) != 0)
  {
    v7 = v3;
    v8 = a2;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v4 = 0;
      return v4 != 0;
    }
  }

  v4 = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v4 != 0;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return v7 != 0;
}

void *sub_2712189E8(void *result)
{
  *result = &unk_288114118;
  v1 = result[2];
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

void sub_271218A7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = __dynamic_cast(v4, &unk_288123908, &unk_288124A88, 0)) == 0)
  {
    v13 = 0;
    v14 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271218E34(v11, a2);
    std::logic_error::logic_error(exception, v11);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v13 = v6;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a2 + 40);
    *v11 = *(a2 + 24);
    *&v11[16] = v7;
    v12 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    *(a1 + 8) = v5;
    v8 = *&v11[16];
    *(a1 + 16) = *v11;
    *(a1 + 32) = v8;
    *(a1 + 48) = v12;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v6;
    *(a1 + 8) = 0;
    v9 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v9;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_271218C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_271218CD0(void *a1)
{
  *a1 = &unk_288114118;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271218DA4(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271218E34(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B360))
  {
    sub_271219200();
  }

  if ((atomic_load_explicit(&qword_28087B368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B368))
  {
    sub_271219630();
  }

  v20 = "Attempting to create an ";
  v21 = 24;
  v4 = byte_28087B5A7;
  if (byte_28087B5A7 >= 0)
  {
    v5 = &qword_28087B590;
  }

  else
  {
    v4 = unk_28087B598;
    v5 = qword_28087B590;
  }

  v22 = v5;
  v23 = v4;
  v24 = " from an ";
  v25 = 9;
  v6 = byte_28087B5BF;
  v7 = &qword_28087B5A8;
  if (byte_28087B5BF < 0)
  {
    v6 = qword_28087B5B0;
    v7 = qword_28087B5A8;
  }

  v26[0] = v7;
  v26[1] = v6;
  sub_271131230(&v20, &v27, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v20 = p_p;
    v21 = size;
    v22 = " but the other image contains an incompatible buffer type ";
    v23 = 58;
    v24 = v11;
    v25 = v12;
    sub_271131230(&v20, v26, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  v17 = v16 + 46;
  if (v16 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v17 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v17;
  if (v15 >= 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v18, v16);
  strcpy((a1 + v16), " but the other image does not contain a buffer");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2712191DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271219200()
{
  v4 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Bgra8u]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_2712194D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_271219630()
{
  v1 = 16;
  strcpy(__p, "ConstSharedImage");
  sub_2712196BC(__p);
}

void sub_2712196A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712196BC(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Bgra8u]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271219960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_271219AA8(uint64_t result)
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

void sub_271219B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271219BD8(uint64_t a1)
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

void sub_271219C7C(void *a1)
{
  *a1 = &unk_288114098;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271219D50(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271219DE0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 25)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27121A1D4(&v24, a2);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v24.__r_.__value_.__r.__words[0] = v5;
      v24.__r_.__value_.__l.__size_ = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      *&v24.__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    *&v24.__r_.__value_.__l.__data_ = 0uLL;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a2 + 28))
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
    v12 = *(a2 + 32) << 32;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a2 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  *v25 = 4;
  *&v25[4] = v14;
  v15 = v14;
  v16 = *v25;
  v17 = HIDWORD(v14);
  *v25 = 1;
  *&v25[4] = v13;
  v18 = *v25;
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
        v18 = *v25;
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
  v22 = *(a2 + 52);
  size = v24.__r_.__value_.__l.__size_;
  if (v24.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v24.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v24.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v7;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 36) = v18;
  *(a1 + 44) = v19;
  *(a1 + 48) = v15;
  *(a1 + 56) = v13;
  *(a1 + 64) = v22;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size, a3);

    std::__shared_weak_count::__release_weak(size);
  }
}

void sub_27121A184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27121A1D4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B368))
  {
    sub_271219630();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B5A8, " from an ", &qword_2808780D8, " but the image is of incompatible format ", &v3);
}

void *sub_27121A2E0(void *result)
{
  *result = &unk_288113D58;
  v1 = result[2];
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

BOOL sub_27121A374(const void *a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = __dynamic_cast(a1, &unk_288123908, &unk_288124A58, 0)) != 0)
  {
    v7 = v3;
    v8 = a2;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v4 = 0;
      return v4 != 0;
    }
  }

  v4 = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v4 != 0;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return v7 != 0;
}

void *sub_27121A4D4(void *result)
{
  *result = &unk_288113DD8;
  v1 = result[2];
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

void sub_27121A568(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = __dynamic_cast(v4, &unk_288123908, &unk_288124A58, 0)) == 0)
  {
    v13 = 0;
    v14 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_27121A920(v11, a2);
    std::logic_error::logic_error(exception, v11);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v13 = v6;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a2 + 40);
    *v11 = *(a2 + 24);
    *&v11[16] = v7;
    v12 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    *(a1 + 8) = v5;
    v8 = *&v11[16];
    *(a1 + 16) = *v11;
    *(a1 + 32) = v8;
    *(a1 + 48) = v12;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v6;
    *(a1 + 8) = 0;
    v9 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v9;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_27121A774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_27121A7BC(void *a1)
{
  *a1 = &unk_288113DD8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121A890(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_27121A920(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B370))
  {
    sub_27121ACEC();
  }

  if ((atomic_load_explicit(&qword_28087B378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B378))
  {
    sub_27121B11C();
  }

  v20 = "Attempting to create an ";
  v21 = 24;
  v4 = byte_28087B5D7;
  if (byte_28087B5D7 >= 0)
  {
    v5 = &qword_28087B5C0;
  }

  else
  {
    v4 = unk_28087B5C8;
    v5 = qword_28087B5C0;
  }

  v22 = v5;
  v23 = v4;
  v24 = " from an ";
  v25 = 9;
  v6 = byte_28087B5EF;
  v7 = &qword_28087B5D8;
  if (byte_28087B5EF < 0)
  {
    v6 = qword_28087B5E0;
    v7 = qword_28087B5D8;
  }

  v26[0] = v7;
  v26[1] = v6;
  sub_271131230(&v20, &v27, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v20 = p_p;
    v21 = size;
    v22 = " but the other image contains an incompatible buffer type ";
    v23 = 58;
    v24 = v11;
    v25 = v12;
    sub_271131230(&v20, v26, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  v17 = v16 + 46;
  if (v16 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v17 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v17;
  if (v15 >= 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v18, v16);
  strcpy((a1 + v16), " but the other image does not contain a buffer");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_27121ACC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27121ACEC()
{
  v4 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Rgba16f]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27121AFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27121B11C()
{
  v1 = 16;
  strcpy(__p, "ConstSharedImage");
  sub_27121B1A8(__p);
}

void sub_27121B18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27121B1A8(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgba16f]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27121B44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_27121B594(uint64_t result)
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

void sub_27121B60C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121B6C4(uint64_t a1)
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

void sub_27121B768(void *a1)
{
  *a1 = &unk_288113D58;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121B83C(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_27121B8CC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 31)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27121BCC4(&v24, a2);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v24.__r_.__value_.__r.__words[0] = v5;
      v24.__r_.__value_.__l.__size_ = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      *&v24.__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    *&v24.__r_.__value_.__l.__data_ = 0uLL;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a2 + 28))
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
    v12 = (*(a2 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a2 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  *v25 = 4;
  *&v25[4] = v14;
  v15 = v14;
  v16 = *v25;
  v17 = HIDWORD(v14);
  *v25 = 1;
  *&v25[4] = v13;
  v18 = *v25;
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
        v18 = *v25;
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
  v22 = *(a2 + 52);
  size = v24.__r_.__value_.__l.__size_;
  if (v24.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v24.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v24.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v7;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 36) = v18;
  *(a1 + 44) = v19;
  *(a1 + 48) = v15;
  *(a1 + 56) = v13;
  *(a1 + 64) = v22;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size, a3);

    std::__shared_weak_count::__release_weak(size);
  }
}

void sub_27121BC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27121BCC4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B378))
  {
    sub_27121B11C();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B5D8, " from an ", &qword_2808780D8, " but the image is of incompatible format ", &v3);
}

void *sub_27121BDD0(void *result)
{
  *result = &unk_288113C58;
  v1 = result[2];
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

BOOL sub_27121BE64(const void *a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = __dynamic_cast(a1, &unk_288123908, &unk_288124A40, 0)) != 0)
  {
    v7 = v3;
    v8 = a2;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v4 = 0;
      return v4 != 0;
    }
  }

  v4 = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v4 != 0;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return v7 != 0;
}

void *sub_27121BFC4(void *result)
{
  *result = &unk_288113CD8;
  v1 = result[2];
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

void sub_27121C058(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = __dynamic_cast(v4, &unk_288123908, &unk_288124A40, 0)) == 0)
  {
    v13 = 0;
    v14 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_27121C410(v11, a2);
    std::logic_error::logic_error(exception, v11);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v13 = v6;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a2 + 40);
    *v11 = *(a2 + 24);
    *&v11[16] = v7;
    v12 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    *(a1 + 8) = v5;
    v8 = *&v11[16];
    *(a1 + 16) = *v11;
    *(a1 + 32) = v8;
    *(a1 + 48) = v12;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v6;
    *(a1 + 8) = 0;
    v9 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v9;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_27121C264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_27121C2AC(void *a1)
{
  *a1 = &unk_288113CD8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121C380(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_27121C410(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B380))
  {
    sub_27121C7DC();
  }

  if ((atomic_load_explicit(&qword_28087B388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B388))
  {
    sub_27121CC0C();
  }

  v20 = "Attempting to create an ";
  v21 = 24;
  v4 = byte_28087B607;
  if (byte_28087B607 >= 0)
  {
    v5 = &qword_28087B5F0;
  }

  else
  {
    v4 = unk_28087B5F8;
    v5 = qword_28087B5F0;
  }

  v22 = v5;
  v23 = v4;
  v24 = " from an ";
  v25 = 9;
  v6 = byte_28087B61F;
  v7 = &qword_28087B608;
  if (byte_28087B61F < 0)
  {
    v6 = qword_28087B610;
    v7 = qword_28087B608;
  }

  v26[0] = v7;
  v26[1] = v6;
  sub_271131230(&v20, &v27, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v20 = p_p;
    v21 = size;
    v22 = " but the other image contains an incompatible buffer type ";
    v23 = 58;
    v24 = v11;
    v25 = v12;
    sub_271131230(&v20, v26, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  v17 = v16 + 46;
  if (v16 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v17 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v17;
  if (v15 >= 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v18, v16);
  strcpy((a1 + v16), " but the other image does not contain a buffer");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_27121C7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27121C7DC()
{
  v4 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Rgba32f]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27121CAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27121CC0C()
{
  v1 = 16;
  strcpy(__p, "ConstSharedImage");
  sub_27121CC98(__p);
}

void sub_27121CC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27121CC98(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Rgba32f]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27121CF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_27121D084(uint64_t result)
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

void sub_27121D0FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121D1B4(uint64_t a1)
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

void sub_27121D258(void *a1)
{
  *a1 = &unk_288113C58;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121D32C(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_27121D3BC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 32)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27121D7B4(&v24, a2);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v24.__r_.__value_.__r.__words[0] = v5;
      v24.__r_.__value_.__l.__size_ = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      *&v24.__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    *&v24.__r_.__value_.__l.__data_ = 0uLL;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a2 + 28))
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
    v12 = (*(a2 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a2 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  *v25 = 4;
  *&v25[4] = v14;
  v15 = v14;
  v16 = *v25;
  v17 = HIDWORD(v14);
  *v25 = 1;
  *&v25[4] = v13;
  v18 = *v25;
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
        v18 = *v25;
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
  v22 = *(a2 + 52);
  size = v24.__r_.__value_.__l.__size_;
  if (v24.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v24.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v24.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v7;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 36) = v18;
  *(a1 + 44) = v19;
  *(a1 + 48) = v15;
  *(a1 + 56) = v13;
  *(a1 + 64) = v22;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size, a3);

    std::__shared_weak_count::__release_weak(size);
  }
}

void sub_27121D764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27121D7B4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B388))
  {
    sub_27121CC0C();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B608, " from an ", &qword_2808780D8, " but the image is of incompatible format ", &v3);
}

void *sub_27121D8C0(void *result)
{
  *result = &unk_288113A58;
  v1 = result[2];
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

BOOL sub_27121D954(const void *a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = __dynamic_cast(a1, &unk_288123908, &unk_288124A28, 0)) != 0)
  {
    v7 = v3;
    v8 = a2;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v4 = 0;
      return v4 != 0;
    }
  }

  v4 = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v4 != 0;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return v7 != 0;
}

void *sub_27121DAB4(void *result)
{
  *result = &unk_288113AD8;
  v1 = result[2];
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

void sub_27121DB48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = __dynamic_cast(v4, &unk_288123908, &unk_288124A28, 0)) == 0)
  {
    v13 = 0;
    v14 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_27121DF00(v11, a2);
    std::logic_error::logic_error(exception, v11);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v13 = v6;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a2 + 40);
    *v11 = *(a2 + 24);
    *&v11[16] = v7;
    v12 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    *(a1 + 8) = v5;
    v8 = *&v11[16];
    *(a1 + 16) = *v11;
    *(a1 + 32) = v8;
    *(a1 + 48) = v12;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v6;
    *(a1 + 8) = 0;
    v9 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v9;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_27121DD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_27121DD9C(void *a1)
{
  *a1 = &unk_288113AD8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121DE70(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_27121DF00(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B390))
  {
    sub_27121E2CC();
  }

  if ((atomic_load_explicit(&qword_28087B398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B398))
  {
    sub_27121E6FC();
  }

  v20 = "Attempting to create an ";
  v21 = 24;
  v4 = byte_28087B637;
  if (byte_28087B637 >= 0)
  {
    v5 = &qword_28087B620;
  }

  else
  {
    v4 = unk_28087B628;
    v5 = qword_28087B620;
  }

  v22 = v5;
  v23 = v4;
  v24 = " from an ";
  v25 = 9;
  v6 = byte_28087B64F;
  v7 = &qword_28087B638;
  if (byte_28087B64F < 0)
  {
    v6 = qword_28087B640;
    v7 = qword_28087B638;
  }

  v26[0] = v7;
  v26[1] = v6;
  sub_271131230(&v20, &v27, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v20 = p_p;
    v21 = size;
    v22 = " but the other image contains an incompatible buffer type ";
    v23 = 58;
    v24 = v11;
    v25 = v12;
    sub_271131230(&v20, v26, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  v17 = v16 + 46;
  if (v16 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v17 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v17;
  if (v15 >= 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v18, v16);
  strcpy((a1 + v16), " but the other image does not contain a buffer");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_27121E2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27121E2CC()
{
  v4 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Argb8u]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27121E5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27121E6FC()
{
  v1 = 16;
  strcpy(__p, "ConstSharedImage");
  sub_27121E788(__p);
}

void sub_27121E76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27121E788(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Argb8u]", 30, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27121EA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_27121EB74(uint64_t result)
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

void sub_27121EBEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121ECA4(uint64_t a1)
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

void sub_27121ED48(void *a1)
{
  *a1 = &unk_288113A58;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121EE1C(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_27121EEAC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 37)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27121F2A0(&v24, a2);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v24.__r_.__value_.__r.__words[0] = v5;
      v24.__r_.__value_.__l.__size_ = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      *&v24.__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    *&v24.__r_.__value_.__l.__data_ = 0uLL;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a2 + 28))
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
    v12 = *(a2 + 32) << 32;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a2 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  *v25 = 4;
  *&v25[4] = v14;
  v15 = v14;
  v16 = *v25;
  v17 = HIDWORD(v14);
  *v25 = 1;
  *&v25[4] = v13;
  v18 = *v25;
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
        v18 = *v25;
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
  v22 = *(a2 + 52);
  size = v24.__r_.__value_.__l.__size_;
  if (v24.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v24.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v24.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v7;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 36) = v18;
  *(a1 + 44) = v19;
  *(a1 + 48) = v15;
  *(a1 + 56) = v13;
  *(a1 + 64) = v22;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size, a3);

    std::__shared_weak_count::__release_weak(size);
  }
}

void sub_27121F250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_27121F2A0(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B398))
  {
    sub_27121E6FC();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B638, " from an ", &qword_2808780D8, " but the image is of incompatible format ", &v3);
}

void *sub_27121F3AC(void *result)
{
  *result = &unk_288113958;
  v1 = result[2];
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

BOOL sub_27121F440(const void *a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1 && (v3 = __dynamic_cast(a1, &unk_288123908, &unk_288124A10, 0)) != 0)
  {
    v7 = v3;
    v8 = a2;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (a2 && !atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a2->__on_zero_shared)(a2);
      std::__shared_weak_count::__release_weak(a2);
      v4 = 0;
      return v4 != 0;
    }
  }

  v4 = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v4 != 0;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return v7 != 0;
}

void *sub_27121F5A0(void *result)
{
  *result = &unk_2881139D8;
  v1 = result[2];
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

void sub_27121F634(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || (v6 = __dynamic_cast(v4, &unk_288123908, &unk_288124A10, 0)) == 0)
  {
    v13 = 0;
    v14 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_27121F9EC(v11, a2);
    std::logic_error::logic_error(exception, v11);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  v13 = v6;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a2 + 40);
    *v11 = *(a2 + 24);
    *&v11[16] = v7;
    v12 = *(a2 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    *(a1 + 8) = v5;
    v8 = *&v11[16];
    *(a1 + 16) = *v11;
    *(a1 + 32) = v8;
    *(a1 + 48) = v12;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a1 = v6;
    *(a1 + 8) = 0;
    v9 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 24);
    *(a1 + 32) = v9;
    *(a1 + 48) = *(a2 + 56);
  }
}

void sub_27121F840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v18 - 48);
      sub_27112F828(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_27121F888(void *a1)
{
  *a1 = &unk_2881139D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27121F95C(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_27121F9EC(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B3A0))
  {
    sub_27121FDB8();
  }

  if ((atomic_load_explicit(&qword_28087B3A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B3A8))
  {
    sub_2712201E8();
  }

  v20 = "Attempting to create an ";
  v21 = 24;
  v4 = byte_28087B667;
  if (byte_28087B667 >= 0)
  {
    v5 = &qword_28087B650;
  }

  else
  {
    v4 = unk_28087B658;
    v5 = qword_28087B650;
  }

  v22 = v5;
  v23 = v4;
  v24 = " from an ";
  v25 = 9;
  v6 = byte_28087B67F;
  v7 = &qword_28087B668;
  if (byte_28087B67F < 0)
  {
    v6 = qword_28087B670;
    v7 = qword_28087B668;
  }

  v26[0] = v7;
  v26[1] = v6;
  sub_271131230(&v20, &v27, 0, 0, &__p);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v8 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

LABEL_18:
    v11 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v20 = p_p;
    v21 = size;
    v22 = " but the other image contains an incompatible buffer type ";
    v23 = 58;
    v24 = v11;
    v25 = v12;
    sub_271131230(&v20, v26, 0, 0, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_32;
    }

    return;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_22:
  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  v17 = v16 + 46;
  if (v16 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v17 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = v17;
  if (v15 >= 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  memmove(a1, v18, v16);
  strcpy((a1 + v16), " but the other image does not contain a buffer");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_27121FD94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27121FDB8()
{
  v4 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "ConstSharedImage");
  sub_271851C68("cv3d::kit::img::Format::Argb16u]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_27122008C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    v38 = (v36 - 88);
    if ((v36 - 88) == v35)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  operator delete(a21);
  v38 = (v36 - 88);
  if ((v36 - 88) == v35)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_10:
    v39 = *(v35 - 1);
    v35 -= 3;
    if (v39 < 0)
    {
      operator delete(*v35);
    }
  }

  while (v35 != v38);
LABEL_7:
  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2712201E8()
{
  v1 = 16;
  strcpy(__p, "ConstSharedImage");
  sub_271220274(__p);
}

void sub_271220258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271220274(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_271851C68("cv3d::kit::img::Format::Argb16u]", 31, &v1);
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v1.__r_.__value_.__l.__data_, v1.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v1;
  }

  sub_27184BC8C(&v3, &__p, "cv3d::kit::img::", 16, "", 0, 1, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271220518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

uint64_t sub_271220660(uint64_t result)
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

void sub_2712206D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271220790(uint64_t a1)
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

void sub_271220834(void *a1)
{
  *a1 = &unk_288113958;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271220908(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271220998(uint64_t a1, uint64_t a2, __n128 a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 38)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_271220D90(&v24, a2);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v24.__r_.__value_.__r.__words[0] = v5;
      v24.__r_.__value_.__l.__size_ = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      *&v24.__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    *&v24.__r_.__value_.__l.__data_ = 0uLL;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 24);
  v11 = v8 == 0;
  v9 = v8 != 0;
  v10 = v11;
  if (!*(a2 + 28))
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
    v12 = (*(a2 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v13 = v12 | (4 * v9);
  v14 = *(a2 + 24);
  if (!v11)
  {
    v14 = 0;
  }

  *v25 = 4;
  *&v25[4] = v14;
  v15 = v14;
  v16 = *v25;
  v17 = HIDWORD(v14);
  *v25 = 1;
  *&v25[4] = v13;
  v18 = *v25;
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
        v18 = *v25;
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
  v22 = *(a2 + 52);
  size = v24.__r_.__value_.__l.__size_;
  if (v24.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v24.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v24.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 16) = v7;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 36) = v18;
  *(a1 + 44) = v19;
  *(a1 + 48) = v15;
  *(a1 + 56) = v13;
  *(a1 + 64) = v22;
  if (size && !atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size, a3);

    std::__shared_weak_count::__release_weak(size);
  }
}

void sub_271220D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_271220D90(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_28087B3A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B3A8))
  {
    sub_2712201E8();
  }

  if ((atomic_load_explicit(&qword_2808780F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808780F0))
    {
      sub_27120AD64();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", &qword_28087B668, " from an ", &qword_2808780D8, " but the image is of incompatible format ", &v3);
}

void sub_271220E9C(uint64_t a1, unsigned int *a2)
{
  v5 = 0;
  v6[0] = v4;
  v6[1] = "image of pixel format '";
  v6[2] = v4;
  v6[3] = "image of pixel format '";
  v6[4] = "image of pixel format '";
  v7 = v6;
  sub_2711D0C58(&v7);
  sub_27120AACC(&v3, v4, a2);
}

void sub_271220FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271220FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271220FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271220FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void *sub_27122101C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_27122141C(a2, v3);
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

size_t sub_27122111C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812EBB8[v3])(&v6, v1);
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

void sub_271221210(uint64_t *a1, uint64_t a2)
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
    (off_28812EBB8[v9])(&v10, v2);
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

void sub_2712213D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27122141C(uint64_t a1, const char *a2)
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

void sub_2712215B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2712215CC(void *a1, int a2, uint64_t **a3, uint64_t a4, __n128 a5)
{
  v205 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      v6 = &unk_288114458;
      v179.__r_.__value_.__r.__words[0] = &unk_288114458;
      sub_27120A3E8(&v179.__r_.__value_.__l.__size_, a4, a5);
      if (!sub_271208E98(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        LOBYTE(v198) = 0;
        goto LABEL_177;
      }

      v200 = &unk_2881144D8;
      sub_27120908C(&v201, &v179);
      v8 = *(&v201 + 1);
      v7 = v201;
      v187 = &unk_2881144D8;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      *&v190 = v203;
      LOBYTE(v191) = 1;
      LOBYTE(v198) = 0;
      v193 = &unk_28810E238;
      if (!v8)
      {
        v194 = v7;
        v195 = 0;
        v196 = v189;
        *&v197 = v190;
        LOBYTE(v198) = 1;
LABEL_334:
        v187 = &unk_2881144D8;
        v162 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v162->__on_zero_shared)(v162);
          std::__shared_weak_count::__release_weak(v162);
        }

        if (v198)
        {
          goto LABEL_338;
        }

LABEL_177:
        v103 = v180;
        if (v183 == 1 && v180)
        {
          v105 = v179.__r_.__value_.__r.__words[2];
          size = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v106 = size;
              (v105->__on_zero_shared)(v105);
              std::__shared_weak_count::__release_weak(v105);
              size = v106;
            }
          }

          (*(*size + 88))(size, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v103 = v180;
        }

        v107 = v182;
        v108 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107F18;
        v188 = v108;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v181, 0x4C303038u, v103, v107 | 0x100000000, &v187);
      }

      p_shared_owners = &v8->__shared_owners_;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      *&v197 = v190;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v7;
      v195 = v8;
      if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_6;
        }
      }

      else
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_6:
          LOBYTE(v198) = 1;
          if ((v191 & 1) == 0)
          {
            goto LABEL_338;
          }

          goto LABEL_334;
        }
      }

      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      LOBYTE(v198) = 1;
      if ((v191 & 1) == 0)
      {
LABEL_338:
        v150 = v194;
        v163 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v164 = v150;
            (v163->__on_zero_shared)(v163);
            std::__shared_weak_count::__release_weak(v163);
            v150 = v164;
          }
        }

        goto LABEL_351;
      }

      goto LABEL_334;
    case 2:
      v6 = &unk_288113E98;
      v179.__r_.__value_.__r.__words[0] = &unk_288113E98;
      sub_27120C7B8(&v179.__r_.__value_.__l.__size_, a4, a5);
      if (!sub_27120B268(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        LOBYTE(v198) = 0;
        goto LABEL_187;
      }

      v200 = &unk_288113F18;
      sub_27120B45C(&v201, &v179);
      v38 = *(&v201 + 1);
      v37 = v201;
      v187 = &unk_288113F18;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      *&v190 = v203;
      LOBYTE(v191) = 1;
      LOBYTE(v198) = 0;
      v193 = &unk_28810DBB8;
      if (!v38)
      {
        v194 = v37;
        v195 = 0;
        v196 = v189;
        *&v197 = v190;
        LOBYTE(v198) = 1;
LABEL_344:
        v187 = &unk_288113F18;
        v165 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v165->__on_zero_shared)(v165);
          std::__shared_weak_count::__release_weak(v165);
        }

        if (v198)
        {
          goto LABEL_348;
        }

LABEL_187:
        v109 = v180;
        if (v183 == 1 && v180)
        {
          v111 = v179.__r_.__value_.__r.__words[2];
          v110 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v112 = v110;
              (v111->__on_zero_shared)(v111);
              std::__shared_weak_count::__release_weak(v111);
              v110 = v112;
            }
          }

          (*(*v110 + 88))(v110, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v109 = v180;
        }

        v113 = 2 * v182;
        v114 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107DB8;
        v188 = v114;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v181, 0x62313667u, v109, v113 | 0x100000000, &v187);
      }

      v39 = &v38->__shared_owners_;
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      *&v197 = v190;
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v37;
      v195 = v38;
      if (atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v39, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_66;
        }
      }

      else
      {
        (v38->__on_zero_shared)(v38);
        std::__shared_weak_count::__release_weak(v38);
        if (atomic_fetch_add(v39, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_66:
          LOBYTE(v198) = 1;
          if ((v191 & 1) == 0)
          {
            goto LABEL_348;
          }

          goto LABEL_344;
        }
      }

      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
      LOBYTE(v198) = 1;
      if ((v191 & 1) == 0)
      {
LABEL_348:
        v150 = v194;
        v166 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v166->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v167 = v150;
            (v166->__on_zero_shared)(v166);
            std::__shared_weak_count::__release_weak(v166);
            v150 = v167;
          }
        }

        goto LABEL_351;
      }

      goto LABEL_344;
    case 3:
      v6 = &unk_288113818;
      v179.__r_.__value_.__r.__words[0] = &unk_288113818;
      sub_27120E20C(&v179.__r_.__value_.__l.__size_, a4, a5);
      if (!sub_27120CCBC(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        LOBYTE(v198) = 0;
        goto LABEL_137;
      }

      v200 = &unk_288113898;
      sub_27120CEB0(&v201, &v179);
      v26 = *(&v201 + 1);
      v25 = v201;
      v187 = &unk_288113898;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      *&v190 = v203;
      LOBYTE(v191) = 1;
      LOBYTE(v198) = 0;
      v193 = &unk_28810D4F8;
      if (!v26)
      {
        v194 = v25;
        v195 = 0;
        v196 = v189;
        *&v197 = v190;
        LOBYTE(v198) = 1;
LABEL_294:
        v187 = &unk_288113898;
        v149 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v149->__on_zero_shared)(v149);
          std::__shared_weak_count::__release_weak(v149);
        }

        if (v198)
        {
          goto LABEL_298;
        }

LABEL_137:
        v79 = v180;
        if (v183 == 1 && v180)
        {
          v81 = v179.__r_.__value_.__r.__words[2];
          v80 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v82 = v80;
              (v81->__on_zero_shared)(v81);
              std::__shared_weak_count::__release_weak(v81);
              v80 = v82;
            }
          }

          (*(*v80 + 88))(v80, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v79 = v180;
        }

        v83 = 2 * v182;
        v84 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107C00;
        v188 = v84;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v181, 0x4C303068u, v79, v83 | 0x100000000, &v187);
      }

      v27 = &v26->__shared_owners_;
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      *&v197 = v190;
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v25;
      v195 = v26;
      if (atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v27, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_42;
        }
      }

      else
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
        if (atomic_fetch_add(v27, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_42:
          LOBYTE(v198) = 1;
          if ((v191 & 1) == 0)
          {
            goto LABEL_298;
          }

          goto LABEL_294;
        }
      }

      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
      LOBYTE(v198) = 1;
      if ((v191 & 1) == 0)
      {
LABEL_298:
        v150 = v194;
        v151 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v152 = v150;
            (v151->__on_zero_shared)(v151);
            std::__shared_weak_count::__release_weak(v151);
            v150 = v152;
          }
        }

        goto LABEL_351;
      }

      goto LABEL_294;
    case 4:
      v6 = &unk_2881136D8;
      v179.__r_.__value_.__r.__words[0] = &unk_2881136D8;
      sub_27120FC60(&v179.__r_.__value_.__l.__size_, a4, a5);
      if (!sub_27120E710(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        LOBYTE(v198) = 0;
        goto LABEL_167;
      }

      v200 = &unk_288113758;
      sub_27120E904(&v201, &v179);
      v35 = *(&v201 + 1);
      v34 = v201;
      v187 = &unk_288113758;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      *&v190 = v203;
      LOBYTE(v191) = 1;
      LOBYTE(v198) = 0;
      v193 = &unk_28810D3B8;
      if (!v35)
      {
        v194 = v34;
        v195 = 0;
        v196 = v189;
        *&v197 = v190;
        LOBYTE(v198) = 1;
        goto LABEL_324;
      }

      v36 = &v35->__shared_owners_;
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      *&v197 = v190;
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v34;
      v195 = v35;
      if (atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v36, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_60;
        }
      }

      else
      {
        (v35->__on_zero_shared)(v35);
        std::__shared_weak_count::__release_weak(v35);
        if (atomic_fetch_add(v36, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_60:
          LOBYTE(v198) = 1;
          if ((v191 & 1) == 0)
          {
            goto LABEL_328;
          }

          goto LABEL_324;
        }
      }

      (v35->__on_zero_shared)(v35);
      std::__shared_weak_count::__release_weak(v35);
      LOBYTE(v198) = 1;
      if (v191)
      {
LABEL_324:
        v187 = &unk_288113758;
        v159 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v159->__on_zero_shared)(v159);
          std::__shared_weak_count::__release_weak(v159);
        }

        if (v198)
        {
          goto LABEL_328;
        }

LABEL_167:
        v97 = v180;
        if (v183 == 1 && v180)
        {
          v99 = v179.__r_.__value_.__r.__words[2];
          v98 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v99->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v100 = v98;
              (v99->__on_zero_shared)(v99);
              std::__shared_weak_count::__release_weak(v99);
              v98 = v100;
            }
          }

          (*(*v98 + 88))(v98, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v97 = v180;
        }

        v101 = 4 * v182;
        v102 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107BA8;
        v188 = v102;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v181, 0x4C303066u, v97, v101 | 0x100000000, &v187);
      }

LABEL_328:
      v150 = v194;
      v160 = v195;
      if (v195)
      {
        atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v160->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v161 = v150;
          (v160->__on_zero_shared)(v160);
          std::__shared_weak_count::__release_weak(v160);
          v150 = v161;
        }
      }

LABEL_351:
      sub_271545F0C(v150, a1);
      if (v198 != 1)
      {
        goto LABEL_355;
      }

LABEL_352:
      v168 = v195;
      if (v195 && !atomic_fetch_add(&v195->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v168->__on_zero_shared)(v168);
        std::__shared_weak_count::__release_weak(v168);
      }

LABEL_355:
      v179.__r_.__value_.__r.__words[0] = v6;
      v169 = v179.__r_.__value_.__r.__words[2];
      if (v179.__r_.__value_.__r.__words[2])
      {
        if (!atomic_fetch_add((v179.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v169->__on_zero_shared)(v169);
          std::__shared_weak_count::__release_weak(v169);
        }
      }

      return;
    case 5:
      v6 = &unk_2881135D8;
      v179.__r_.__value_.__r.__words[0] = &unk_2881135D8;
      sub_271211738(&v179.__r_.__value_.__l.__size_, a4, a5);
      if (!sub_2712101E0(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_107;
      }

      v200 = &unk_288113658;
      sub_2712103D4(&v201, &v179);
      v17 = *(&v201 + 1);
      v16 = v201;
      v187 = &unk_288113658;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810D2F8;
      if (!v17)
      {
        v194 = v16;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_264:
        v187 = &unk_288113658;
        v140 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v140->__on_zero_shared)(v140);
          std::__shared_weak_count::__release_weak(v140);
        }

        if (v199)
        {
          goto LABEL_268;
        }

LABEL_107:
        v61 = v180;
        if (v186 == 1 && v180)
        {
          v63 = v179.__r_.__value_.__r.__words[2];
          v62 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v64 = v62;
              (v63->__on_zero_shared)(v63);
              std::__shared_weak_count::__release_weak(v63);
              v62 = v64;
            }
          }

          (*(*v62 + 88))(v62, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v61 = v180;
        }

        v65 = v184;
        v66 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107B50;
        v188 = v66;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x32433038u, v61, v65 | 0x100000000, &v187);
      }

      v18 = &v17->__shared_owners_;
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v16;
      v195 = v17;
      if (atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v18, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_24;
        }
      }

      else
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
        if (atomic_fetch_add(v18, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_24:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_268;
          }

          goto LABEL_264;
        }
      }

      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_268:
        v134 = v194;
        v141 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v142 = v134;
            (v141->__on_zero_shared)(v141);
            std::__shared_weak_count::__release_weak(v141);
            v134 = v142;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_264;
    case 7:
      v6 = &unk_288113498;
      v179.__r_.__value_.__r.__words[0] = &unk_288113498;
      sub_271213224(&v179.__r_.__value_.__l.__size_, a4, a5);
      if (!sub_271211CCC(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_197;
      }

      v200 = &unk_288113518;
      sub_271211EC0(&v201, &v179);
      v41 = *(&v201 + 1);
      v40 = v201;
      v187 = &unk_288113518;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810D1B8;
      if (!v41)
      {
        v194 = v40;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_361:
        v187 = &unk_288113518;
        v170 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v170->__on_zero_shared)(v170);
          std::__shared_weak_count::__release_weak(v170);
        }

        if (v199)
        {
          goto LABEL_365;
        }

LABEL_197:
        v115 = v180;
        if (v186 == 1 && v180)
        {
          v117 = v179.__r_.__value_.__r.__words[2];
          v116 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v118 = v116;
              (v117->__on_zero_shared)(v117);
              std::__shared_weak_count::__release_weak(v117);
              v116 = v118;
            }
          }

          (*(*v116 + 88))(v116, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v115 = v180;
        }

        v119 = 2 * v184;
        v120 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107AF8;
        v188 = v120;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x32433068u, v115, v119 | 0x100000000, &v187);
      }

      v42 = &v41->__shared_owners_;
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v40;
      v195 = v41;
      if (atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v42, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_72;
        }
      }

      else
      {
        (v41->__on_zero_shared)(v41);
        std::__shared_weak_count::__release_weak(v41);
        if (atomic_fetch_add(v42, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_72:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_365;
          }

          goto LABEL_361;
        }
      }

      (v41->__on_zero_shared)(v41);
      std::__shared_weak_count::__release_weak(v41);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_365:
        v134 = v194;
        v171 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v171->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v172 = v134;
            (v171->__on_zero_shared)(v171);
            std::__shared_weak_count::__release_weak(v171);
            v134 = v172;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_361;
    case 8:
      v6 = &unk_288113398;
      v179.__r_.__value_.__r.__words[0] = &unk_288113398;
      sub_271214D14(&v179.__r_.__value_.__l.__size_, a4, a5);
      if (!sub_2712137BC(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_147;
      }

      v200 = &unk_288113418;
      sub_2712139B0(&v201, &v179);
      v29 = *(&v201 + 1);
      v28 = v201;
      v187 = &unk_288113418;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810D0F8;
      if (!v29)
      {
        v194 = v28;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_304:
        v187 = &unk_288113418;
        v153 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v153->__on_zero_shared)(v153);
          std::__shared_weak_count::__release_weak(v153);
        }

        if (v199)
        {
          goto LABEL_308;
        }

LABEL_147:
        v85 = v180;
        if (v186 == 1 && v180)
        {
          v87 = v179.__r_.__value_.__r.__words[2];
          v86 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v87->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v88 = v86;
              (v87->__on_zero_shared)(v87);
              std::__shared_weak_count::__release_weak(v87);
              v86 = v88;
            }
          }

          (*(*v86 + 88))(v86, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v85 = v180;
        }

        v89 = 4 * v184;
        v90 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107AA0;
        v188 = v90;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x32433066u, v85, v89 | 0x100000000, &v187);
      }

      v30 = &v29->__shared_owners_;
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v28;
      v195 = v29;
      if (atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v30, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_48;
        }
      }

      else
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
        if (atomic_fetch_add(v30, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_48:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_308;
          }

          goto LABEL_304;
        }
      }

      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_308:
        v134 = v194;
        v154 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v154->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v155 = v134;
            (v154->__on_zero_shared)(v154);
            std::__shared_weak_count::__release_weak(v154);
            v134 = v155;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_304;
    case 21:
      v6 = &unk_288114318;
      v179.__r_.__value_.__r.__words[0] = &unk_288114318;
      sub_271216804(&v179.__r_.__value_.__l.__size_, a4, a5);
      if (!sub_2712152AC(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_97;
      }

      v200 = &unk_288114398;
      sub_2712154A0(&v201, &v179);
      v14 = *(&v201 + 1);
      v13 = v201;
      v187 = &unk_288114398;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810E0F8;
      if (!v14)
      {
        v194 = v13;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_254:
        v187 = &unk_288114398;
        v137 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v137->__on_zero_shared)(v137);
          std::__shared_weak_count::__release_weak(v137);
        }

        if (v199)
        {
          goto LABEL_258;
        }

LABEL_97:
        v55 = v180;
        if (v186 == 1 && v180)
        {
          v57 = v179.__r_.__value_.__r.__words[2];
          v56 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v58 = v56;
              (v57->__on_zero_shared)(v57);
              std::__shared_weak_count::__release_weak(v57);
              v56 = v58;
            }
          }

          (*(*v56 + 88))(v56, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v55 = v180;
        }

        v59 = v184;
        v60 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107EC0;
        v188 = v60;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x18u, v55, v59 | 0x100000000, &v187);
      }

      v15 = &v14->__shared_owners_;
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v13;
      v195 = v14;
      if (atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v15, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_18;
        }
      }

      else
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        if (atomic_fetch_add(v15, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_18:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_258;
          }

          goto LABEL_254;
        }
      }

      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_258:
        v134 = v194;
        v138 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v138->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v139 = v134;
            (v138->__on_zero_shared)(v138);
            std::__shared_weak_count::__release_weak(v138);
            v134 = v139;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_254;
    case 22:
      v6 = &unk_288114218;
      v179.__r_.__value_.__r.__words[0] = &unk_288114218;
      sub_2712182F0(&v179.__r_.__value_.__l.__size_, a4, a5);
      if (!sub_271216D98(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_117;
      }

      v200 = &unk_288114298;
      sub_271216F8C(&v201, &v179);
      v20 = *(&v201 + 1);
      v19 = v201;
      v187 = &unk_288114298;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810E038;
      if (!v20)
      {
        v194 = v19;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_274:
        v187 = &unk_288114298;
        v143 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v143->__on_zero_shared)(v143);
          std::__shared_weak_count::__release_weak(v143);
        }

        if (v199)
        {
          goto LABEL_278;
        }

LABEL_117:
        v67 = v180;
        if (v186 == 1 && v180)
        {
          v69 = v179.__r_.__value_.__r.__words[2];
          v68 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v70 = v68;
              (v69->__on_zero_shared)(v69);
              std::__shared_weak_count::__release_weak(v69);
              v68 = v70;
            }
          }

          (*(*v68 + 88))(v68, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v67 = v180;
        }

        v71 = 2 * v184;
        v72 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107E68;
        v188 = v72;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x62343872u, v67, v71 | 0x100000000, &v187);
      }

      v21 = &v20->__shared_owners_;
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v19;
      v195 = v20;
      if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v21, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_30;
        }
      }

      else
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
        if (atomic_fetch_add(v21, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_30:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_278;
          }

          goto LABEL_274;
        }
      }

      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_278:
        v134 = v194;
        v144 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v144->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v145 = v134;
            (v144->__on_zero_shared)(v144);
            std::__shared_weak_count::__release_weak(v144);
            v134 = v145;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_274;
    case 25:
      v6 = &unk_288114098;
      v179.__r_.__value_.__r.__words[0] = &unk_288114098;
      sub_271219DE0(&v179.__r_.__value_.__l.__size_, a4, a5);
      if (!sub_271218888(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_127;
      }

      v200 = &unk_288114118;
      sub_271218A7C(&v201, &v179);
      v23 = *(&v201 + 1);
      v22 = v201;
      v187 = &unk_288114118;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810DE78;
      if (!v23)
      {
        v194 = v22;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_284:
        v187 = &unk_288114118;
        v146 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v146->__on_zero_shared)(v146);
          std::__shared_weak_count::__release_weak(v146);
        }

        if (v199)
        {
          goto LABEL_288;
        }

LABEL_127:
        v73 = v180;
        if (v186 == 1 && v180)
        {
          v75 = v179.__r_.__value_.__r.__words[2];
          v74 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v76 = v74;
              (v75->__on_zero_shared)(v75);
              std::__shared_weak_count::__release_weak(v75);
              v74 = v76;
            }
          }

          (*(*v74 + 88))(v74, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v73 = v180;
        }

        v77 = v184;
        v78 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107E10;
        v188 = v78;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x42475241u, v73, v77 | 0x100000000, &v187);
      }

      v24 = &v23->__shared_owners_;
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v22;
      v195 = v23;
      if (atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v24, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_36;
        }
      }

      else
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
        if (atomic_fetch_add(v24, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_36:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_288;
          }

          goto LABEL_284;
        }
      }

      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_288:
        v134 = v194;
        v147 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v147->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v148 = v134;
            (v147->__on_zero_shared)(v147);
            std::__shared_weak_count::__release_weak(v147);
            v134 = v148;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_284;
    case 31:
      v6 = &unk_288113D58;
      v179.__r_.__value_.__r.__words[0] = &unk_288113D58;
      sub_27121B8CC(&v179.__r_.__value_.__l.__size_, a4, a5);
      if (!sub_27121A374(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_157;
      }

      v200 = &unk_288113DD8;
      sub_27121A568(&v201, &v179);
      v32 = *(&v201 + 1);
      v31 = v201;
      v187 = &unk_288113DD8;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810DA78;
      if (!v32)
      {
        v194 = v31;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_314:
        v187 = &unk_288113DD8;
        v156 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v156->__on_zero_shared)(v156);
          std::__shared_weak_count::__release_weak(v156);
        }

        if (v199)
        {
          goto LABEL_318;
        }

LABEL_157:
        v91 = v180;
        if (v186 == 1 && v180)
        {
          v93 = v179.__r_.__value_.__r.__words[2];
          v92 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v94 = v92;
              (v93->__on_zero_shared)(v93);
              std::__shared_weak_count::__release_weak(v93);
              v92 = v94;
            }
          }

          (*(*v92 + 88))(v92, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v91 = v180;
        }

        v95 = 2 * v184;
        v96 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107D60;
        v188 = v96;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x52476841u, v91, v95 | 0x100000000, &v187);
      }

      v33 = &v32->__shared_owners_;
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v31;
      v195 = v32;
      if (atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v33, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_54;
        }
      }

      else
      {
        (v32->__on_zero_shared)(v32);
        std::__shared_weak_count::__release_weak(v32);
        if (atomic_fetch_add(v33, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_54:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_318;
          }

          goto LABEL_314;
        }
      }

      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v32);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_318:
        v134 = v194;
        v157 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v157->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v158 = v134;
            (v157->__on_zero_shared)(v157);
            std::__shared_weak_count::__release_weak(v157);
            v134 = v158;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_314;
    case 32:
      v6 = &unk_288113C58;
      v179.__r_.__value_.__r.__words[0] = &unk_288113C58;
      sub_27121D3BC(&v179.__r_.__value_.__l.__size_, a4, a5);
      if (!sub_27121BE64(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_217;
      }

      v200 = &unk_288113CD8;
      sub_27121C058(&v201, &v179);
      v47 = *(&v201 + 1);
      v46 = v201;
      v187 = &unk_288113CD8;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810D9B8;
      if (!v47)
      {
        v194 = v46;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_381:
        v187 = &unk_288113CD8;
        v176 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v176->__on_zero_shared)(v176);
          std::__shared_weak_count::__release_weak(v176);
        }

        if (v199)
        {
          goto LABEL_385;
        }

LABEL_217:
        v127 = v180;
        if (v186 == 1 && v180)
        {
          v129 = v179.__r_.__value_.__r.__words[2];
          v128 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v129->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v130 = v128;
              (v129->__on_zero_shared)(v129);
              std::__shared_weak_count::__release_weak(v129);
              v128 = v130;
            }
          }

          (*(*v128 + 88))(v128, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v127 = v180;
        }

        v131 = 4 * v184;
        v132 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107D08;
        v188 = v132;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x52476641u, v127, v131 | 0x100000000, &v187);
      }

      v48 = &v47->__shared_owners_;
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v46;
      v195 = v47;
      if (atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v48, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_84;
        }
      }

      else
      {
        (v47->__on_zero_shared)(v47);
        std::__shared_weak_count::__release_weak(v47);
        if (atomic_fetch_add(v48, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_84:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_385;
          }

          goto LABEL_381;
        }
      }

      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_385:
        v134 = v194;
        v177 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v177->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v178 = v134;
            (v177->__on_zero_shared)(v177);
            std::__shared_weak_count::__release_weak(v177);
            v134 = v178;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_381;
    case 37:
      v6 = &unk_288113A58;
      v179.__r_.__value_.__r.__words[0] = &unk_288113A58;
      sub_27121EEAC(&v179.__r_.__value_.__l.__size_, a4, a5);
      if (!sub_27121D954(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_207;
      }

      v200 = &unk_288113AD8;
      sub_27121DB48(&v201, &v179);
      v44 = *(&v201 + 1);
      v43 = v201;
      v187 = &unk_288113AD8;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810D6F8;
      if (!v44)
      {
        v194 = v43;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_371:
        v187 = &unk_288113AD8;
        v173 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v173->__on_zero_shared)(v173);
          std::__shared_weak_count::__release_weak(v173);
        }

        if (v199)
        {
          goto LABEL_375;
        }

LABEL_207:
        v121 = v180;
        if (v186 == 1 && v180)
        {
          v123 = v179.__r_.__value_.__r.__words[2];
          v122 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v124 = v122;
              (v123->__on_zero_shared)(v123);
              std::__shared_weak_count::__release_weak(v123);
              v122 = v124;
            }
          }

          (*(*v122 + 88))(v122, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v121 = v180;
        }

        v125 = v184;
        v126 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107CB0;
        v188 = v126;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x20u, v121, v125 | 0x100000000, &v187);
      }

      v45 = &v44->__shared_owners_;
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v43;
      v195 = v44;
      if (atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v45, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_78;
        }
      }

      else
      {
        (v44->__on_zero_shared)(v44);
        std::__shared_weak_count::__release_weak(v44);
        if (atomic_fetch_add(v45, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_78:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_375;
          }

          goto LABEL_371;
        }
      }

      (v44->__on_zero_shared)(v44);
      std::__shared_weak_count::__release_weak(v44);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_375:
        v134 = v194;
        v174 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v174->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v175 = v134;
            (v174->__on_zero_shared)(v174);
            std::__shared_weak_count::__release_weak(v174);
            v134 = v175;
          }
        }

        goto LABEL_388;
      }

      goto LABEL_371;
    case 38:
      v6 = &unk_288113958;
      v179.__r_.__value_.__r.__words[0] = &unk_288113958;
      sub_271220998(&v179.__r_.__value_.__l.__size_, a4, a5);
      if (!sub_27121F440(v179.__r_.__value_.__l.__size_, v179.__r_.__value_.__r.__words[2]))
      {
        LOBYTE(v193) = 0;
        v199 = 0;
        goto LABEL_87;
      }

      v200 = &unk_2881139D8;
      sub_27121F634(&v201, &v179);
      v11 = *(&v201 + 1);
      v10 = v201;
      v187 = &unk_2881139D8;
      v188 = v201;
      v201 = 0uLL;
      v189 = v202;
      v190 = v203;
      v191 = v204;
      v192 = 1;
      v199 = 0;
      v193 = &unk_28810D638;
      if (!v11)
      {
        v194 = v10;
        v195 = 0;
        v196 = v189;
        v197 = v190;
        v198 = v191;
        v199 = 1;
LABEL_244:
        v187 = &unk_2881139D8;
        v133 = *(&v188 + 1);
        if (*(&v188 + 1) && !atomic_fetch_add((*(&v188 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v133->__on_zero_shared)(v133);
          std::__shared_weak_count::__release_weak(v133);
        }

        if (v199)
        {
          goto LABEL_248;
        }

LABEL_87:
        v49 = v180;
        if (v186 == 1 && v180)
        {
          v51 = v179.__r_.__value_.__r.__words[2];
          v50 = v179.__r_.__value_.__l.__size_;
          if (v179.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v52 = v50;
              (v51->__on_zero_shared)(v51);
              std::__shared_weak_count::__release_weak(v51);
              v50 = v52;
            }
          }

          (*(*v50 + 88))(v50, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
          v49 = v180;
        }

        v53 = 2 * v184;
        v54 = *&v179.__r_.__value_.__r.__words[1];
        if (v179.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        }

        v200 = 0;
        *&v201 = 0;
        v187 = &unk_288107C58;
        v188 = v54;
        *&v189 = &v187;
        BYTE8(v189) = 1;
        sub_27157E700(v185, 0x62363461u, v49, v53 | 0x100000000, &v187);
      }

      v12 = &v11->__shared_owners_;
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v189;
      v197 = v190;
      v198 = v191;
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v194 = v10;
      v195 = v11;
      if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_12;
        }
      }

      else
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        if (atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_12:
          v199 = 1;
          if ((v192 & 1) == 0)
          {
            goto LABEL_248;
          }

          goto LABEL_244;
        }
      }

      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      v199 = 1;
      if ((v192 & 1) == 0)
      {
LABEL_248:
        v134 = v194;
        v135 = v195;
        if (v195)
        {
          atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v136 = v134;
            (v135->__on_zero_shared)(v135);
            std::__shared_weak_count::__release_weak(v135);
            v134 = v136;
          }
        }

LABEL_388:
        sub_271545F0C(v134, a1);
        if (v199 != 1)
        {
          goto LABEL_355;
        }

        goto LABEL_352;
      }

      goto LABEL_244;
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_271224C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_271210164(va);
  sub_27121BDD0(&a10);
  _Unwind_Resume(a1);
}

void sub_271224E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27121BDD0(va);
  _Unwind_Resume(a1);
}

void sub_271224E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27121D8C0(va);
  _Unwind_Resume(a1);
}

void sub_271224E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271211C38(va);
  _Unwind_Resume(a1);
}

void sub_271224E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27120B1D4(va);
  _Unwind_Resume(a1);
}

void sub_271224EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27120E67C(va);
  _Unwind_Resume(a1);
}

void sub_271224EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27121A2E0(va);
  _Unwind_Resume(a1);
}