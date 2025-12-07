void sub_254AC9980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_254AC99CC(va);

  _Unwind_Resume(a1);
}

void sub_254AC9998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_254AC99CC(void *a1)
{
  *a1 = &unk_2866F58E8;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_254AC9CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_254AC99CC(&a18);
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v20);

  _Unwind_Resume(a1);
}

void sub_254AC9D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_254AC99CC(va);

  _Unwind_Resume(a1);
}

void sub_254ACA364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  sub_254AC99CC(&a9);
  sub_254AC99CC((v18 - 104));

  _Unwind_Resume(a1);
}

void sub_254ACA7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_254AC99CC(&a9);
  sub_254AC99CC((v9 - 104));
  _Unwind_Resume(a1);
}

void sub_254ACA844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
    operator delete(v17);
    _Unwind_Resume(a1);
  }

  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_254ACA87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_254AC99CC((v12 - 104));
  _Unwind_Resume(a1);
}

void sub_254ACAC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v66);
  sub_254AC99CC(&a9);
  sub_254ACE85C(&a16, MEMORY[0x277D82810]);
  MEMORY[0x259C23250](&a65);

  _Unwind_Resume(a1);
}

uint64_t *sub_254ACACE4(uint64_t *a1, uint64_t a2, int a3)
{
  a1[58] = 0;
  v4 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v5 = *(MEMORY[0x277D82810] + 16);
  v6 = *(MEMORY[0x277D82810] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x277D82860] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x259C23180](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_254ACAE6C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x259C23250](v1);
  _Unwind_Resume(a1);
}

void sub_254ACB0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_254AC99CC(&a9);
  sub_254AC99CC(&a16);

  _Unwind_Resume(a1);
}

void sub_254ACB114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_254AC99CC(va);

  _Unwind_Resume(a1);
}

void sub_254ACB12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_254AC99CC(va);

  _Unwind_Resume(a1);
}

void sub_254ACB480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12)
{
  __cxa_free_exception(v12);
  sub_254AC99CC(&a12);

  _Unwind_Resume(a1);
}

void sub_254ACB828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v10);
  sub_254AC99CC(&a9);

  _Unwind_Resume(a1);
}

void sub_254ACB860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_254AC99CC(&a9);

  _Unwind_Resume(a1);
}

void sub_254ACB878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_254AC99CC(&a9);

  _Unwind_Resume(a1);
}

void sub_254ACBBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v10);
  sub_254AC99CC(&a9);

  _Unwind_Resume(a1);
}

void sub_254ACBBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_254AC99CC(&a9);

  _Unwind_Resume(a1);
}

void sub_254ACBC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_254AC99CC(&a9);

  _Unwind_Resume(a1);
}

void sub_254ACC004(_Unwind_Exception *a1)
{
  sub_254AC99CC((v2 - 120));

  _Unwind_Resume(a1);
}

void sub_254ACC01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_254AC99CC(va);

  _Unwind_Resume(a1);
}

void sub_254ACC044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_254AC99CC(va);
  sub_254AC99CC((v4 - 120));

  _Unwind_Resume(a1);
}

void sub_254ACC088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  sub_254AC99CC(va);
  sub_254AC99CC(va1);

  _Unwind_Resume(a1);
}

void sub_254ACC0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_254AC99CC((v14 - 120));

  _Unwind_Resume(a1);
}

void *sub_254ACC0D0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != *(a1 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Tensor types mismatch.");
    goto LABEL_8;
  }

  v3 = (*(**(a2 + 40) + 24))(*(a2 + 40));
  v5 = v4;
  v6 = (*(**(a1 + 40) + 24))(*(a1 + 40));
  if (v5 != v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Tensor sizes mismatch.");
LABEL_8:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return memcpy(v6, v3, v5);
}

void sub_254ACC7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  __cxa_free_exception(v27);
  sub_254AC99CC(&a25);

  _Unwind_Resume(a1);
}

void sub_254ACC898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
    sub_254AC99CC(&a25);

    _Unwind_Resume(a1);
  }

  sub_254AC99CC(&a25);

  _Unwind_Resume(a1);
}

void sub_254ACC8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_254AC99CC(va);

  _Unwind_Resume(a1);
}

void sub_254ACCDD0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_254AC99CC((v3 - 120));

  _Unwind_Resume(a1);
}

void sub_254ACCE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_254AC99CC(&a12);
  sub_254AC99CC((v20 - 120));

  _Unwind_Resume(a1);
}

void sub_254ACD234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_254AC99CC(&a9);
  sub_254AC99CC(&a16);
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_254ACD680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_254AC99CC(&a10);
  sub_254AC99CC(&a21);
  operator delete(v22);

  _Unwind_Resume(a1);
}

void *sub_254ACD748(void *result, uint64_t a2)
{
  *result = &unk_2866F58E8;
  v2 = *(a2 + 8);
  result[2] = 0;
  *(result + 2) = v2;
  result[3] = 0;
  result[4] = 0;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  v5 = *(a2 + 48);
  result[5] = *(a2 + 40);
  result[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *result = &unk_2866F58A0;
  return result;
}

void sub_254ACD82C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_254ACD864(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    sub_254ACE924((a1 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  }

  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_254ACDA3C(void *a1)
{
  *a1 = &unk_2866F58E8;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x259C232D0);
}

void *sub_254ACDAF4(void *a1)
{
  *a1 = &unk_2866F58E8;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_254ACDB8C(void *a1)
{
  *a1 = &unk_2866F58E8;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x259C232D0);
}

uint64_t sub_254ACDC44(uint64_t result)
{
  v1 = *(result + 8);
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

void sub_254ACDE84(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_254ACDE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v13 = *v11;
  if (*v11)
  {
    *(v10 + 24) = v13;
    operator delete(v13);
  }

  sub_254ACDC44(va);
  sub_254ACDC44(&a9);
  _Unwind_Resume(a1);
}

void sub_254ACDEE8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2866F5908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C232D0);
}

void sub_254ACDF3C(uint64_t a1)
{
  if (*(a1 + 201) == 1)
  {
    free(*(a1 + 32));
  }
}

uint64_t sub_254ACDF58(uint64_t a1, unsigned int *a2, int32x4_t **a3)
{
  v28 = 0u;
  espresso_buffer_pack_tensor_shape();
  v6 = *a2;
  if (v6 >= 5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unknown data type");
    goto LABEL_20;
  }

  v7 = qword_254AE77A0[v6];
  v9 = *a3;
  v8 = a3[1];
  if (*a3 == v8)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v10 = v8 - v9 - 8;
  if (v10 >= 0x38)
  {
    v14 = (v10 >> 3) + 1;
    v12 = (v9 + 8 * (v14 & 0x3FFFFFFFFFFFFFF8));
    v15 = v9 + 2;
    v16.i64[0] = 0x100000001;
    v16.i64[1] = 0x100000001;
    v17 = v14 & 0x3FFFFFFFFFFFFFF8;
    v18.i64[0] = 0x100000001;
    v18.i64[1] = 0x100000001;
    do
    {
      v20 = v15[-2];
      v19 = v15[-1];
      v22 = *v15;
      v21 = v15[1];
      v15 += 4;
      v16 = vmulq_s32(v16, vuzp1q_s32(v20, v19));
      v18 = vmulq_s32(v18, vuzp1q_s32(v22, v21));
      v17 -= 8;
    }

    while (v17);
    v23 = vmulq_s32(v18, v16);
    *v23.i8 = vmul_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v11 = v23.i32[0] * v23.i32[1];
    if (v14 == (v14 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 1;
    v12 = *a3;
  }

  do
  {
    v24 = v12->i32[0];
    v12 = (v12 + 8);
    v11 *= v24;
  }

  while (v12 != v8);
LABEL_10:
  v13 = v11;
LABEL_11:
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x1000uLL, (v13 * v7 + 4095) & 0xFFFFFFFFFFFFF000, 0xA6D64935uLL))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to allocate aligned memory.");
    goto LABEL_20;
  }

  *&v28 = memptr;
  v25 = *a2;
  if (v25 >= 5 || ((0x1Du >> v25) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unknown data type.");
    goto LABEL_20;
  }

  v29 = dword_254AE77C8[v25];
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 8) = v28;
  *(a1 + 24) = 0u;
  *a1 = &unk_2866F5958;
  *(a1 + 40) = 0u;
  *(a1 + 168) = v29;
  *(a1 + 176) = 257;
  if (*(a1 + 168) != 65568)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unexpected espresso buffer storage type");
LABEL_20:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

uint64_t sub_254ACE22C(uint64_t result)
{
  if (*(result + 177) == 1)
  {
    v1 = result;
    free(*(result + 8));
    return v1;
  }

  return result;
}

void sub_254ACE26C(uint64_t a1)
{
  if (*(a1 + 177) == 1)
  {
    free(*(a1 + 8));
  }

  JUMPOUT(0x259C232D0);
}

int8x16_t sub_254ACE314@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  rank = espresso_buffer_get_rank();
  if (rank >= 6)
  {
    v8 = rank;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v15, v8);
    v10 = std::string::insert(&v15, 0, "Unsupported tensor rank: ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v13.i64[0] = v10->__r_.__value_.__r.__words[2];
    v12 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = vshlq_n_s64(*(a1 + 152), 2uLL);
  result = vextq_s8(v5, v5, 8uLL);
  v7 = vshlq_n_s64(*(a1 + 136), 2uLL);
  v12 = result;
  v13 = vextq_s8(v7, v7, 8uLL);
  v14 = 4 * *(a1 + 128);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (rank)
  {
    if (((8 * rank) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  return result;
}

void sub_254ACE45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void sub_254ACE4BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  v6 = v5;
  (*(*a1 + 32))(&__p, a1);
  sub_254ACE644(a2, v4, v6, &__p);
}

void sub_254ACE56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254ACE5B4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_254ACE610(exception, a1);
  __cxa_throw(exception, off_2797A5C18, MEMORY[0x277D825F0]);
}

std::logic_error *sub_254ACE610(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_254ACE76C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_254ACDC44(v1);
  _Unwind_Resume(a1);
}

void sub_254ACE794(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C232D0);
}

uint64_t sub_254ACE7CC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x259C232B0);
  }

  return result;
}

uint64_t sub_254ACE7EC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000254AE7928)
  {
    if (((v2 & 0x8000000254AE7928 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000254AE7928))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000254AE7928 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_254ACE85C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x259C23190](a1 + 1);

  return std::ostream::~ostream();
}

char *sub_254ACE924(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_254ACE59C();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void *sub_254ACEA80(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C231A0](v14, a1);
  if (v14[0] == 1)
  {
    v6 = (a1 + *(*a1 - 24));
    rdbuf = v6->__rdbuf_;
    fmtflags = v6->__fmtflags_;
    v9 = v6[1].__fmtflags_;
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((fmtflags & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_254ACEC2C(rdbuf, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C231B0](v14);
  return a1;
}

void sub_254ACEBC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C231B0](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x254ACEBA4);
}

uint64_t sub_254ACEC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_254ACEE24();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_254ACEE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254AD1440(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v6);
  operator delete(v8);

  _Unwind_Resume(a1);
}

void sub_254AD1B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  sub_254AC99CC(&a35);
  sub_254AD21A8(&a42);

  _Unwind_Resume(a1);
}

void sub_254AD1C14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a3 + 23) < 0)
  {
    sub_254AD6E24(v20, *a3, *(a3 + 8));
  }

  else
  {
    *v20 = *a3;
    v21 = *(a3 + 16);
  }

  sub_254AD7958(&__p, v20, 1uLL);
  sub_254AD3138(a1, a2, &__p, v19);
  v8 = sub_254AD4BF0(v19, a3);
  if (!v8)
  {
    sub_254AD4B94("unordered_map::at: key not found");
  }

  *a4 = &unk_2866F58E8;
  v9 = *(v8 + 12);
  *(a4 + 16) = 0;
  *(a4 + 8) = v9;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  v11 = v8[7];
  v10 = v8[8];
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  v12 = v8[11];
  *(a4 + 40) = v8[10];
  *(a4 + 48) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  *a4 = &unk_2866F58A0;
  sub_254AD20AC(v19);
  v13 = __p;
  if (__p)
  {
    v14 = v18;
    v15 = __p;
    if (v18 != __p)
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
      v15 = __p;
    }

    v18 = v13;
    operator delete(v15);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_254AD1E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_254AD3640(&a9);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_254AD1E5C(uint64_t a1)
{
  *(a1 + 24) = &unk_2866F58E8;
  v2 = *(a1 + 72);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_254AD1F18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 168);
  if (v4 == 65568 || v4 == 131104)
  {
    v6 = 4;
  }

  else
  {
    if (v4 != 262152)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unsupported espresso type encountered.");
      goto LABEL_13;
    }

    v6 = 1;
  }

  v7 = *(v3 + 160) * *(v3 + 120) * v6;
  v8 = *(v3 + 120);
  v9 = *(v3 + 136);
  v10 = *(v3 + 152);
  v18 = *(v3 + 168);
  v11 = *(v3 + 8);
  v12 = *(v3 + 40);
  v17[1] = *(v3 + 24);
  v17[2] = v12;
  v17[0] = v11;
  v13 = *(v3 + 56);
  v14 = *(v3 + 72);
  v15 = *(v3 + 104);
  v17[5] = *(v3 + 88);
  v17[6] = v15;
  v17[3] = v13;
  v17[4] = v14;
  v17[8] = v9;
  v17[9] = v10;
  v17[7] = v8;
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 0x1000uLL, (v7 + 4095) & 0xFFFFFFFFFFFFF000, 0xA6D64935uLL))
  {
    *&v17[0] = memptr;
    memcpy(memptr, *(v3 + 8), v7);
    LOWORD(memptr) = 257;
    sub_254AD53A0(a2, v17);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Failed to allocate aligned memory.");
LABEL_13:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t sub_254AD20AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      v2[5] = &unk_2866F58E8;
      v4 = v2[11];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v5 = v2[7];
      if (v5)
      {
        goto LABEL_7;
      }

LABEL_8:
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = v2[7];
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    v2[8] = v5;
    operator delete(v5);
    goto LABEL_8;
  }

LABEL_12:
  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void *sub_254AD21A8(void *a1)
{
  *a1 = &unk_2866F58E8;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_254AD27C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  sub_254AC99CC(&a35);
  sub_254AD21A8(&a42);

  _Unwind_Resume(a1);
}

void sub_254AD2FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  sub_254AD20AC(&a29);
  sub_254AD1E5C(v53 + 80);
  sub_254AD1E5C(v54 - 248);
  sub_254AC99CC(&a13);
  sub_254AC99CC(&a21);
  if (a45 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_254AD3138(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  for (i = *(a2 + 16); i; i = *i)
  {
    *v26 = &unk_2866F5B60;
    if (*(i + 39) < 0)
    {
      sub_254AD6E24(&v26[8], i[2], i[3]);
    }

    else
    {
      v8 = *(i + 1);
      v27 = i[4];
      *&v26[8] = v8;
    }

    v28 = *v6;
    (*(*i[10] + 16))(i[10], v26);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(*&v26[8]);
    }
  }

  v9 = *a3;
  v10 = a3[1];
  if (*a3 != v10)
  {
    do
    {
      if (!sub_254AD6070(v6 + 24, v9))
      {
        v25 = espresso_network_bind_buffer();
        HIBYTE(v24[2]) = 21;
        strcpy(v24, "Binding output buffer");
        sub_254AD58D4(&v25, v24);
        if (SHIBYTE(v24[2]) < 0)
        {
          operator delete(v24[0]);
        }

        LOWORD(v24[0]) = 0;
        sub_254AD53A0(&v17, v26);
      }

      v11 = sub_254AD4BF0(v6 + 24, v9);
      if (!v11)
      {
        sub_254AD4B94("unordered_map::at: key not found");
      }

      v17 = &unk_2866F58E8;
      v18 = *(v11 + 12);
      v20 = 0;
      v21 = 0;
      v19 = 0;
      v13 = v11[7];
      v12 = v11[8];
      if (v12 != v13)
      {
        if (((v12 - v13) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_254ACE59C();
      }

      v14 = v11[11];
      v22 = v11[10];
      v23 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = &unk_2866F58E8;
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }
      }

      else
      {
        v17 = &unk_2866F58E8;
      }

      v9 += 3;
    }

    while (v9 != v10);
  }

  LODWORD(v24[0]) = espresso_plan_execute_sync();
  v26[23] = 14;
  strcpy(v26, "Executing plan");
  sub_254AD58D4(v24, v26);
  if ((v26[23] & 0x80000000) != 0)
  {
    operator delete(*v26);
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = *(v6 + 56);
  prime = *(v6 + 25);
  if (prime == 1)
  {
    prime = 2;
LABEL_33:
    sub_254AD6228(a4, prime);
    goto LABEL_34;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(v6 + 25));
  }

  if (prime)
  {
    goto LABEL_33;
  }

LABEL_34:
  for (j = *(v6 + 26); j; j = *j)
  {
    sub_254AD63BC(a4, j + 2, (j + 2));
  }
}

void sub_254AD35A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_254AD3640(void ***a1)
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
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_254AD3EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_254ACDC44(va);
  sub_254ACDC44(&a13);
  _Unwind_Resume(a1);
}

void sub_254AD3F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    JUMPOUT(0x254AD3F1CLL);
  }

  JUMPOUT(0x254AD3EC8);
}

uint64_t sub_254AD3F3C(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType != 32)
      {
        v2 = 1094862674;
        goto LABEL_10;
      }

      return 0;
    }

    if (PixelFormatType == 1111970369)
    {
      return 0;
    }

    v2 = 1278226488;
LABEL_10:
    if (PixelFormatType == v2)
    {
      return 0;
    }

LABEL_15:
    v4 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v8, v4);
    v6 = std::string::insert(&v8, 0, "Unsupported CVPixelBuffer type: ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v9);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType != 1717856627 && PixelFormatType != 1717855600)
    {
      goto LABEL_15;
    }
  }

  else if (PixelFormatType != 1278226534)
  {
    v2 = 1380401729;
    goto LABEL_10;
  }

  return 4;
}

void sub_254AD40B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_254AD4110(void *a1)
{
  *a1 = &unk_2866F58E8;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x259C232D0);
}

void sub_254AD429C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_254AD42BC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_254AD42D4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_254AD4328(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2866F5A48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C232D0);
}

void sub_254AD43D0(uint64_t a1)
{
  CVPixelBufferRelease(*(a1 + 8));

  JUMPOUT(0x259C232D0);
}

void *sub_254AD4450(uint64_t a1)
{
  BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 8));
  if (!BaseAddress)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to get CVPixelBuffer's data. Ensure the buffer was locked.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = BaseAddress;
  CVPixelBufferGetDataSize(*(a1 + 8));
  return v3;
}

void sub_254AD44DC(uint64_t a1@<X0>, size_t **a2@<X8>)
{
  sub_254AD3F3C(*(a1 + 8));
  CVPixelBufferGetBytesPerRow(*(a1 + 8));
  sub_254AD4720(*(a1 + 8));
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  operator new();
}

void sub_254AD456C(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!CVPixelBufferLockBaseAddress(a1[1], 1uLL))
  {
    v4 = (*(*a1 + 24))(a1);
    v6 = v5;
    (*(*a1 + 32))(&__p, a1);
    sub_254ACE644(a2, v4, v6, &__p);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Failed to lock pixel buffer.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_254AD46F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  sub_254AD49E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_254AD4720(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType == 32)
      {
        return 4;
      }

      v2 = 1094862674;
      goto LABEL_8;
    }

    if (PixelFormatType == 1111970369)
    {
      return 4;
    }

    v4 = 1278226488;
LABEL_14:
    if (PixelFormatType != v4)
    {
      goto LABEL_16;
    }

    return 1;
  }

  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType == 1717856627)
    {
      return 1;
    }

    v4 = 1717855600;
    goto LABEL_14;
  }

  if (PixelFormatType != 1278226534)
  {
    v2 = 1380401729;
LABEL_8:
    if (PixelFormatType == v2)
    {
      return 4;
    }

LABEL_16:
    v5 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v9, v5);
    v7 = std::string::insert(&v9, 0, "Unsupported CVPixelBuffer type: ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v10.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v10.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v10);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 1;
}

void sub_254AD4894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_254AD48F8(uint64_t a1)
{
  *a1 = &unk_2866F5AF0;
  if (!CVPixelBufferUnlockBaseAddress(*(a1 + 8), *(a1 + 16)))
  {

    JUMPOUT(0x259C232D0);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_254AD49AC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  MEMORY[0x259C232D0](v1, 0x10A1C40AFD1EA57);
  _Unwind_Resume(a1);
}

uint64_t sub_254AD49E0(uint64_t a1)
{
  *a1 = &unk_2866F5AF0;
  if (CVPixelBufferUnlockBaseAddress(*(a1 + 8), *(a1 + 16)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_254AD4A7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_254ACE59C();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_254AD42D4();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_254AD4B94(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_254AD51F4(exception, a1);
  __cxa_throw(exception, off_2797A5C20, MEMORY[0x277D825F8]);
}

uint64_t **sub_254AD4BF0(void *a1, unsigned __int8 *a2)
{
  v2 = a2;
  v4 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v5 = a2[23];
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_254AD4DA8(&v25, a2, v5);
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
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
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
        if (v20 == v8)
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
      if (v16 == v8)
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

unint64_t sub_254AD4DA8(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v32 + v26 + v23;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v24 + v32 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v38 + v25 + v27;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v59 + v50 + v48 + v49;
        v41 = __ROR8__(v59 + v50 + v48, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

std::logic_error *sub_254AD51F4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t sub_254AD5228(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_254ACEE24();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *(a1 + v7) = 0;
  v8 = *(a3 + 8);
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_2866F58E8;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  v11 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 40);
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_254AD537C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_254AE5250(v1);
  _Unwind_Resume(a1);
}

void sub_254AD56E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_254ACDC44(&a11);
  sub_254ACDC44(&a9);
  _Unwind_Resume(a1);
}

void sub_254AD589C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_254AD58B4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  _Unwind_Resume(a1);
}

unsigned int *sub_254AD58D4(unsigned int *result, uint64_t **a2)
{
  if (*result)
  {
    v2 = result;
    sub_254AD5B0C(result, a2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v4 = std::string::append(&v13, " [espresso error: ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v12, *v2);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v12;
    }

    else
    {
      v6 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v14, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v15, "]");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v16);
    exception->__vftable = &unk_2866F5B38;
    __cxa_throw(exception, &unk_2866F5B10, std::runtime_error::~runtime_error);
  }

  return result;
}

void sub_254AD5A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
    if ((a33 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a28);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v33);
    goto LABEL_14;
  }

LABEL_12:
  if (!v34)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void sub_254AD5B0C(unsigned int *a1, uint64_t **a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254AE5260(a2, a1);
  }
}

void sub_254AD5B60(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x259C232D0);
}

uint64_t sub_254AD5B98(uint64_t result)
{
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_254AD5BD8(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x259C232D0);
}

void sub_254AD5C50(uint64_t a1, _OWORD *a2, int *a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3 > 1)
  {
    if (v4 == 2)
    {
      *&__p[2] = a2[1];
      v7 = espresso_network_bind_input_vimagebuffer_argb8();
      HIBYTE(__p[2]) = 21;
      strcpy(__p, "Binding vImage_Buffer");
      sub_254AD58D4(&v7, __p);
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_12;
      }

      *&__p[2] = a2[1];
      v7 = espresso_network_bind_input_vimagebuffer_planar8();
      HIBYTE(__p[2]) = 21;
      strcpy(__p, "Binding vImage_Buffer");
      sub_254AD58D4(&v7, __p);
    }
  }

  else
  {
    if (v4)
    {
      if (v4 == 1)
      {
        *&__p[2] = a2[1];
        v7 = espresso_network_bind_input_vimagebuffer_rgba8();
        HIBYTE(__p[2]) = 21;
        strcpy(__p, "Binding vImage_Buffer");
        sub_254AD58D4(&v7, __p);
        goto LABEL_10;
      }

LABEL_12:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unsupported image buffer type");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *&__p[2] = a2[1];
    v7 = espresso_network_bind_input_vimagebuffer_bgra8();
    HIBYTE(__p[2]) = 21;
    strcpy(__p, "Binding vImage_Buffer");
    sub_254AD58D4(&v7, __p);
  }

LABEL_10:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254AD5EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254AD5ED0(uint64_t a1, uint64_t a2)
{
  v4 = espresso_network_bind_cvpixelbuffer();
  v3 = 21;
  strcpy(__p, "Binding CVPixelBuffer");
  sub_254AD58D4(&v4, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }
}

void sub_254AD5F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254AD6054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_254AD6070(void *a1, uint64_t *a2)
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

  v6 = sub_254AD4DA8(&v25, a2, v5);
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

void sub_254AD6228(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_254AD42D4();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t **sub_254AD63BC(void *a1, uint64_t *a2, uint64_t a3)
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

  v7 = sub_254AD4DA8(v25, a2, v6);
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
    sub_254AD6788();
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

void sub_254AD6770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_254AD6938(va);
  _Unwind_Resume(a1);
}

void sub_254AD68EC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      sub_254AD6938(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 16));
  sub_254AD6938(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_254AD6938(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      *(v2 + 40) = &unk_2866F58E8;
      v3 = *(v2 + 88);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }

      v4 = *(v2 + 56);
      if (v4)
      {
        *(v2 + 64) = v4;
        operator delete(v4);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_254AD6A0C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = &unk_2866F58E8;
  v3 = *(a2 + 72);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a2 + 40);
  if (v4)
  {
    *(a2 + 48) = v4;
    operator delete(v4);
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

void **sub_254AD6ACC(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_254AD6A0C(a1, (v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_254AD6B34(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_254ACEE24();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *(a1 + v7) = 0;
  v8 = *(a3 + 8);
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_2866F58E8;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  v11 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 40);
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_254AD6C88(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_254AE5250(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_254AD6CAC(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_254ACEE24();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *(a1 + v7) = 0;
  v8 = *(a3 + 8);
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_2866F58E8;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  v11 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 40);
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_254AD6E00(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_254AE5250(v1);
  _Unwind_Resume(a1);
}

void *sub_254AD6E24(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_254ACEE24();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

uint64_t **sub_254AD6EE0(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
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

  v8 = sub_254AD4DA8(&v26, a2, v7);
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

void sub_254AD7318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_254AD6938(va);
  _Unwind_Resume(a1);
}

void sub_254AD732C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_254AD6938(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_254AD7344(void *a1, uint64_t *a2, uint64_t a3)
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

  v7 = sub_254AD4DA8(v25, a2, v6);
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
    sub_254AD7710();
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

void sub_254AD76F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_254AD789C(va);
  _Unwind_Resume(a1);
}

void sub_254AD7850(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      sub_254AD789C(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 16));
  sub_254AD789C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_254AD789C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_254AD6A0C(*(a1 + 8), v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void **sub_254AD78F0(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_254AD6A0C(a1, (v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_254AD7958(uint64_t *a1, __int128 *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  return a1;
}

void sub_254AD7A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_254AD7B14(va);
  *(v10 + 8) = v11;
  sub_254AD7A90(&a9);
  _Unwind_Resume(a1);
}

void ****sub_254AD7A90(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_254AD7B14(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void sub_254AD7B94(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2866F5BC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C232D0);
}

void sub_254AD7C10(uint64_t a1, void *a2, const char **a3)
{
  v4 = *a3;
  v5 = strlen(*a3);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      v8 = v5;
      if (v5)
      {
        memmove(&__dst, v4, v5);
      }

      *(&__dst + v6) = 0;
      *a2 = &unk_2866F5C10;
      operator new();
    }

    operator new();
  }

  sub_254ACEE24();
}

void sub_254AD7E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v12);
  sub_254AD9084(&a9);
  if (*(v10 - 49) < 0)
  {
    operator delete(*(v10 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_254AD7E80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void *sub_254AD7EEC(void *result)
{
  *result = &unk_2866F5C10;
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

void sub_254AD7F80(void *a1)
{
  *a1 = &unk_2866F5C10;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C232D0);
}

void sub_254AD8048(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2866F5C40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C232D0);
}

void sub_254AD80A8(void *a1, __int128 *a2, uint64_t **a3)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 2) = 0;
  a1[2] = 0;
  v6 = a1 + 2;
  a1[3] = 0;
  if (*(a2 + 23) < 0)
  {
    sub_254AD6E24(a1 + 32, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    a1[6] = *(a2 + 2);
    *(a1 + 2) = v7;
  }

  sub_254AD8840((a1 + 7), a3);
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 29) = 0u;
  *(a1 + 31) = 0u;
  *(a1 + 66) = 1065353216;
  if ((*(a3 + 28) & 1) == 0 && qword_27F71E138 != -1)
  {
    sub_254AE5318();
  }

  context = espresso_create_context();
  *v6 = context;
  if (context)
  {
    plan = espresso_create_plan();
    a1[3] = plan;
    if (plan)
    {
      if (*(a3 + 52) == 1 && (LODWORD(v20.__r_.__value_.__l.__data_) = espresso_plan_set_priority(), HIBYTE(__p[2]) = 20, strcpy(__p, "Setting plan priorty"), sub_254AD58D4(&v20, __p), SHIBYTE(__p[2]) < 0))
      {
        operator delete(__p[0]);
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else if ((*(a2 + 23) & 0x80000000) == 0)
      {
LABEL_12:
        *__p = *a2;
        __p[2] = *(a2 + 2);
        goto LABEL_15;
      }

      sub_254AD6E24(__p, *a2, *(a2 + 1));
LABEL_15:
      v10 = *(a3 + 135);
      if (v10 < 0)
      {
        v10 = a3[15];
      }

      if (v10)
      {
        if (SHIBYTE(__p[2]) >= 0)
        {
          v11 = HIBYTE(__p[2]);
        }

        else
        {
          v11 = __p[1];
        }

        if (v11 + 1 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_254ACEE24();
        }

        if (v11 + 1 >= 0x17)
        {
          operator new();
        }

        memset(&v20, 0, sizeof(v20));
        *(&v20.__r_.__value_.__s + 23) = v11 + 1;
        if (v11)
        {
          if (SHIBYTE(__p[2]) >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          memmove(&v20, v12, v11);
        }

        *(&v20.__r_.__value_.__l.__data_ + v11) = 58;
        v13 = *(a3 + 135);
        if (v13 >= 0)
        {
          v14 = (a3 + 14);
        }

        else
        {
          v14 = a3[14];
        }

        if (v13 >= 0)
        {
          v15 = *(a3 + 135);
        }

        else
        {
          v15 = a3[15];
        }

        v16 = std::string::append(&v20, v14, v15);
        v17 = v16->__r_.__value_.__r.__words[0];
        *&v22 = v16->__r_.__value_.__l.__size_;
        *(&v22 + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
        v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        __p[0] = v17;
        __p[1] = v22;
        *(&__p[1] + 7) = *(&v22 + 7);
        HIBYTE(__p[2]) = v18;
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }
      }

      LODWORD(v22) = espresso_plan_add_network();
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to create espresso plan.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to create espresso context.");
  }

  exception->__vftable = &unk_2866F5B38;
  __cxa_throw(exception, &unk_2866F5B10, std::runtime_error::~runtime_error);
}

void sub_254AD874C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_254AD20AC(v27);
  sub_254AD20AC(v26);
  sub_254AD9084(v25 + 56);
  if (*(v25 + 55) < 0)
  {
    operator delete(*(v25 + 32));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_254AD8840(uint64_t a1, uint64_t a2)
{
  v4 = sub_254AD89FC(a1, a2);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(a2 + 49);
  *(v4 + 9) = 0u;
  v8 = v4 + 9;
  *(v4 + 49) = v7;
  *(v4 + 3) = v5;
  *(v4 + 5) = v6;
  *(v4 + 11) = 0u;
  *(v4 + 26) = *(a2 + 104);
  prime = *(a2 + 80);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_254AD6228(v8, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 80));
    v10 = *(a1 + 80);
    v11 = prime >= *&v10;
    if (prime > *&v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
    v11 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v11)
  {
    v12 = vcvtps_u32_f32(*(a1 + 96) / *(a1 + 104));
    if (*&v10 < 3uLL || (v13 = vcnt_s8(v10), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
    {
      v12 = std::__next_prime(v12);
    }

    else
    {
      v14 = 1 << -__clz(v12 - 1);
      if (v12 >= 2)
      {
        v12 = v14;
      }
    }

    if (prime <= v12)
    {
      prime = v12;
    }

    if (prime < *&v10)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 88); i; i = *i)
  {
    sub_254AD8B44(v8, i + 2, (i + 2));
  }

  if (*(a2 + 135) < 0)
  {
    sub_254AD6E24((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v16 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v16;
  }

  return a1;
}

void sub_254AD89C0(_Unwind_Exception *a1)
{
  sub_254AD7E80(v2);
  sub_254AD3640(v1);
  _Unwind_Resume(a1);
}

void sub_254AD89DC(_Unwind_Exception *a1)
{
  sub_254AD7E80(v2);
  sub_254AD3640(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_254AD89FC(uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  return a1;
}

void sub_254AD8B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_254AD7B14(va);
  *(v10 + 8) = v11;
  sub_254AD7A90(&a9);
  _Unwind_Resume(a1);
}

uint64_t **sub_254AD8B44(void *a1, uint64_t *a2, uint64_t a3)
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

  v7 = sub_254AD4DA8(&v25, a2, v6);
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

void sub_254AD8F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_254AD8F7C(va);
  _Unwind_Resume(a1);
}

void sub_254AD8F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_254AD8F7C(va);
  _Unwind_Resume(a1);
}

void *sub_254AD8F7C(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t sub_254AD8FE4()
{
  result = MGGetBoolAnswer();
  byte_27F71E130 = result;
  return result;
}

uint64_t sub_254AD900C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    espresso_plan_destroy();
  }

  if (*(a1 + 16))
  {
    espresso_context_destroy();
  }

  sub_254AD20AC(a1 + 232);
  sub_254AD20AC(a1 + 192);
  sub_254AD9084(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

uint64_t sub_254AD9084(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    do
    {
      v7 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 1);
        v5 -= 3;
        if (v8 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
  }

  return a1;
}

void sub_254AD937C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_254AD94EC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_254AD962C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_254AD9CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254ADA2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_254ADB3D4(va);
  _Unwind_Resume(a1);
}

void sub_254ADA3D8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  MEMORY[0x259C232D0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_254ADA4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_254ADB254(va);
  _Unwind_Resume(a1);
}

void sub_254ADA508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_254AD21A8(v11);
  sub_254ADB254(va);
  _Unwind_Resume(a1);
}

void sub_254ADA524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_254ADB254(va);
  _Unwind_Resume(a1);
}

void sub_254ADA538(uint64_t a1, uint64_t a2)
{
  if (*a2 && *(a2 + 8))
  {
    pixelBufferOut = 0;
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v18 = Mutable;
    if (*(a2 + 20) == 1)
    {
      v6 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v7 = *MEMORY[0x277CC4DE8];
      v17.__r_.__value_.__r.__words[0] = v6;
      CFDictionarySetValue(Mutable, v7, v6);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    if (*(a2 + 32) == 1)
    {
      v8 = CFNumberCreate(v4, kCFNumberSInt64Type, (a2 + 24));
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D60], v8);
      CFRelease(v8);
    }

    v9 = CVPixelBufferCreate(v4, *a2, *(a2 + 8), *(a2 + 16), Mutable, &pixelBufferOut);
    if (!v9)
    {
      v10 = pixelBufferOut;
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      sub_254AD3B2C(a1, v10);
    }

    v12 = v9;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v16, v12);
    v14 = std::string::insert(&v16, 0, "Failed to create CVPixelBuffer. Status = ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v17);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v11, "Invalid dimensions requested for CVPixelBuffer creation.");
  __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_254ADA74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, const void *a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      sub_254ADB220(&a23);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  sub_254ADB220(&a23);
  _Unwind_Resume(a1);
}

void sub_254ADAB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_254ACDC44(va);
  _Unwind_Resume(a1);
}

void sub_254ADAD24(uint64_t a1)
{
  sub_254ADAD7C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNCreateSceneprintRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27F71E140 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_254AE532C();
    sub_254ADAD7C();
  }
}

void sub_254ADAD7C()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!qword_27F71E148)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = sub_254ADAE8C;
    v1[4] = &unk_2797A5D28;
    v1[5] = v1;
    v2 = xmmword_2797A5D10;
    v3 = 0;
    qword_27F71E148 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_27F71E148)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_254ADAE8C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_27F71E148 = result;
  return result;
}

Class sub_254ADAF00(uint64_t a1)
{
  sub_254ADAD7C();
  result = objc_getClass("VNImageRequestHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27F71E150 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_254AE5354();
    return sub_254ADAF58(v3, v4);
  }

  return result;
}

uint64_t sub_254ADAF58(uint64_t result, char *a2)
{
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_254ADB168(&v14, a2);
    v5 = std::string::insert(&v14, 0, "PixelBufferTransfer operation [");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v15, "] failed. Status = ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v13, v2);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v13;
    }

    else
    {
      v9 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v16, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v17);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_254ADB07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v33);
    goto LABEL_14;
  }

LABEL_12:
  if (!v34)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void *sub_254ADB168(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_254ACEE24();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

const void **sub_254ADB220(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFTypeRef **sub_254ADB254(CFTypeRef **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      CFRelease(*v1);
    }

    MEMORY[0x259C232D0](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

void sub_254ADB2B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C232D0);
}

uint64_t sub_254ADB2E8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      if (*v2)
      {
        CFRelease(*v2);
      }

      MEMORY[0x259C232D0](v2, 0x20C4093837F09);
    }

    JUMPOUT(0x259C232D0);
  }

  return result;
}

uint64_t sub_254ADB374(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN2ik19PixelBufferTransferEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN2ik19PixelBufferTransferEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN2ik19PixelBufferTransferEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN2ik19PixelBufferTransferEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef ***sub_254ADB3D4(CFTypeRef ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      if (*v3)
      {
        CFRelease(*v3);
      }

      MEMORY[0x259C232D0](v3, 0x20C4093837F09);
    }

    MEMORY[0x259C232D0](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

uint64_t sub_254ADB450(void *a1)
{
  v2 = objc_opt_new();
  v6 = objc_msgSend_toCVPixelBufferRefWithCIContext_(a1, v3, v2, v4, v5);

  return v6;
}

CVPixelBufferRef sub_254ADB4A8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_msgSend_extent(a1, v5, v6, v7, v8);
  v10 = v9;
  objc_msgSend_extent(a1, v11, v12, v13, v14);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v10, v15, 0x42475241u, 0, &pixelBufferOut);
  objc_msgSend_render_toCVPixelBuffer_(v4, v16, a1, pixelBufferOut, v17);
  v18 = pixelBufferOut;

  return v18;
}

void sub_254ADB9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
    if ((v26 & 1) == 0)
    {
LABEL_8:
      sub_254ADB220((v27 - 80));
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

void sub_254ADBBB4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  MEMORY[0x259C232D0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_254ADBBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_254ADB254(va);
  _Unwind_Resume(a1);
}

void sub_254ADBC04(uint64_t a1)
{
  *a1 = &unk_2866F5AF0;
  if (!CVPixelBufferUnlockBaseAddress(*(a1 + 8), *(a1 + 16)))
  {

    JUMPOUT(0x259C232D0);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_254ADBCB8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  MEMORY[0x259C232D0](v1, 0x10A1C40AFD1EA57);
  _Unwind_Resume(a1);
}

uint64_t sub_254ADBCEC(uint64_t a1)
{
  *a1 = &unk_2866F5AF0;
  if (CVPixelBufferUnlockBaseAddress(*(a1 + 8), *(a1 + 16)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

uint64_t sub_254ADBD88(uint64_t result, char *a2)
{
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_254ADB168(&v14, a2);
    v5 = std::string::insert(&v14, 0, "PixelBufferTransfer operation [");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v15, "] failed. Status = ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v13, v2);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v13;
    }

    else
    {
      v9 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v16, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v17);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_254ADBEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v33);
    goto LABEL_14;
  }

LABEL_12:
  if (!v34)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

__n128 sub_254ADC074@<Q0>(void *__s@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__s + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *__s;
    v6 = __s[1];
    v7 = (*__s + v6);
    if (v6 < 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = __s;
    v6 = *(__s + 23);
    v7 = __s + v4;
    if (v4 < 1)
    {
      goto LABEL_9;
    }
  }

  v8 = v5;
  do
  {
    v9 = memchr(v8, 47, v6);
    if (!v9)
    {
      break;
    }

    if (*v9 == 47)
    {
      goto LABEL_10;
    }

    v8 = v9 + 1;
    v6 = v7 - v8;
  }

  while (v7 - v8 > 0);
LABEL_9:
  v9 = v7;
LABEL_10:
  if (v9 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 - v5 + 1;
  }

  if ((v4 & 0x80000000) != 0)
  {
    v4 = __s[1];
    if (v4 < v10)
    {
      goto LABEL_81;
    }

    v11 = *__s;
  }

  else
  {
    v11 = __s;
    if (v10 > v4)
    {
LABEL_81:
      sub_254AE0B10();
    }
  }

  if (v4 - v10 >= v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = v4 - v10;
  }

  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_80;
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v31) = v12;
  if (v12)
  {
    memmove(&__dst, v11 + v10, v12);
    *(&__dst + v12) = 0;
    if ((*(__s + 23) & 0x80000000) == 0)
    {
LABEL_25:
      *__s = __dst;
      __s[2] = v31;
      v13 = *(__s + 23);
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_31:
      v14 = *__s;
      v15 = __s[1];
      v16 = (*__s + v15);
      if (v15 < 1)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((*(__s + 23) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  operator delete(*__s);
  *__s = __dst;
  __s[2] = v31;
  v13 = *(__s + 23);
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  v14 = __s;
  v15 = v13;
  v16 = __s + v13;
  if (v13 < 1)
  {
    goto LABEL_36;
  }

LABEL_32:
  v17 = v14;
  do
  {
    v18 = memchr(v17, 47, v15);
    if (!v18)
    {
      break;
    }

    if (*v18 == 47)
    {
      goto LABEL_37;
    }

    v17 = v18 + 1;
    v15 = v16 - v17;
  }

  while (v16 - v17 > 0);
LABEL_36:
  v18 = v16;
LABEL_37:
  v19 = v18 - v14;
  if (v18 == v16)
  {
    v19 = -1;
  }

  if ((v13 & 0x80000000) != 0)
  {
    v20 = *__s;
    v13 = __s[1];
    if (v13 >= v19)
    {
      v13 = v19;
    }

    if (v13 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_47;
    }

LABEL_80:
    sub_254ACEE24();
  }

  v20 = __s;
  if (v13 >= v19)
  {
    v13 = v19;
  }

  if (v13 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_80;
  }

LABEL_47:
  if (v13 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v31) = v13;
  if (v13)
  {
    memmove(&__dst, v20, v13);
    *(&__dst + v13) = 0;
    if ((*(__s + 23) & 0x80000000) == 0)
    {
LABEL_50:
      *__s = __dst;
      __s[2] = v31;
      v21 = *(__s + 23);
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_51;
      }

LABEL_56:
      v22 = *__s;
      v23 = __s[1];
      if (v23 < 1)
      {
        goto LABEL_76;
      }

      goto LABEL_57;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((*(__s + 23) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }
  }

  operator delete(*__s);
  *__s = __dst;
  __s[2] = v31;
  v21 = *(__s + 23);
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

LABEL_51:
  v22 = __s;
  v23 = v21;
  if (v21 < 1)
  {
    goto LABEL_76;
  }

LABEL_57:
  v24 = v22 + v23;
  v25 = v22;
  while (1)
  {
    v26 = memchr(v25, 95, v23);
    if (!v26)
    {
      goto LABEL_76;
    }

    if (*v26 == 95)
    {
      break;
    }

    v25 = v26 + 1;
    v23 = v24 - v25;
    if (v24 - v25 < 1)
    {
      goto LABEL_76;
    }
  }

  if (v26 != v24)
  {
    v27 = v26 - v22;
    if (v26 - v22 != -1)
    {
      if ((v21 & 0x80000000) != 0)
      {
        v28 = *__s;
        v21 = __s[1];
        if (v21 >= v27)
        {
          v21 = v27;
        }

        if (v21 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v28 = __s;
        if (v21 >= v27)
        {
          v21 = v27;
        }

        if (v21 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_80;
        }
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v31) = v21;
      if (v21)
      {
        memmove(&__dst, v28, v21);
      }

      *(&__dst + v21) = 0;
      if (*(__s + 23) < 0)
      {
        operator delete(*__s);
      }

      *__s = __dst;
      __s[2] = v31;
    }
  }

LABEL_76:
  result = *__s;
  *a2 = *__s;
  *(a2 + 16) = __s[2];
  __s[1] = 0;
  __s[2] = 0;
  *__s = 0;
  return result;
}

void sub_254ADDD60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  sub_254AC99CC(&a35);
  sub_254AD21A8(&a42);

  _Unwind_Resume(a1);
}

void sub_254ADE3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  sub_254AC99CC(&a13);
  sub_254AC99CC(&a39);
  sub_254AD21A8((v41 - 240));

  _Unwind_Resume(a1);
}

void sub_254ADE718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  sub_254AC99CC(v12);
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void sub_254ADFD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void **a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v65 < 0)
  {
    operator delete(__p);
  }

  sub_254AD20AC(&a20);
  sub_254AD3640(&a34);
  sub_254AC99CC(&a53);
  sub_254AC99CC(&a60);

  _Unwind_Resume(a1);
}

uint64_t sub_254AE0530(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_254ACEE24();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *(a1 + v7) = 0;
  v8 = *(a3 + 8);
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_2866F58E8;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  v11 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 40);
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_254AE0684(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_254AE5250(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_254AE06A8(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_254ACEE24();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *(a1 + v7) = 0;
  v8 = *(a3 + 8);
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_2866F58E8;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  v11 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 40);
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_254AE07FC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_254AE5250(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_254AE0820(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_254ACEE24();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *(a1 + v7) = 0;
  v8 = *(a3 + 8);
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_2866F58E8;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  v11 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 40);
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_254AE0974(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_254AE5250(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_254AE0998(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_254ACEE24();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *(a1 + v7) = 0;
  v8 = *(a3 + 8);
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_2866F58E8;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  v11 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 40);
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_254AE0AEC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_254AE5250(v1);
  _Unwind_Resume(a1);
}

void sub_254AE1080(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = IHKHarmonizationRequest;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_254AE11B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = IHKHarmonizationResult;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_254AE1708(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_254AD21A8(va);

  _Unwind_Resume(a1);
}

void sub_254AE1A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v14);
  sub_254AD9084(&a9);
  if (*(v12 - 65) < 0)
  {
    operator delete(*(v12 - 88));
    MEMORY[0x259C232D0](v10, v9);
    _Unwind_Resume(a1);
  }

  MEMORY[0x259C232D0](v10, v9);
  _Unwind_Resume(a1);
}

void sub_254AE23E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_254AD20AC(&a20);

  _Unwind_Resume(a1);
}

void sub_254AE24A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  v8 = *(v6 + 56);
  v9 = *(v6 + 64);
  v7 = (v6 + 56);
  if (v8 == v9)
  {
    sub_254AE278C(&__p);
  }

  else
  {
    sub_254AD89FC(&__p, v7);
  }

  sub_254AD3138(a1, a2, &__p, a3);
  v10 = __p;
  if (__p)
  {
    v11 = v15;
    v12 = __p;
    if (v15 != __p)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = __p;
    }

    v15 = v10;
    operator delete(v12);
  }
}

void sub_254AE2560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_254AD3640(va);
  _Unwind_Resume(a1);
}

const char *sub_254AE278C@<X0>(void *a2@<X8>)
{
  v3 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v10 = 0;
  while (1)
  {
    result = espresso_get_output_blob_name();
    v6 = result;
    v10 = result;
    if (!result)
    {
      break;
    }

    v7 = a2[1];
    if (v7 >= a2[2])
    {
      v4 = sub_254AE28E4(a2, &v10);
    }

    else
    {
      v8 = strlen(result);
      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_254ACEE24();
      }

      v9 = v8;
      if (v8 >= 0x17)
      {
        operator new();
      }

      v7[23] = v8;
      if (v8)
      {
        memmove(v7, v6, v8);
      }

      v7[v9] = 0;
      v4 = v7 + 24;
    }

    a2[1] = v4;
    ++v3;
  }

  return result;
}

void sub_254AE28B4(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_254AD3640(v1);
  _Unwind_Resume(a1);
}

void *sub_254AE28E4(uint64_t a1, const char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_254ACE59C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_254AD42D4();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v5;
  v15 = v5;
  v6 = *a2;
  v7 = strlen(*a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_254ACEE24();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v5[23] = v7;
  if (v7)
  {
    memmove(v5, v6, v7);
  }

  v5[v8] = 0;
  v9 = v5 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v14[-v10];
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

void sub_254AE2A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_254AE2A98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_254AE2A98(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_254AE2B00(uint64_t a1, const char **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_254ACEE24();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, v5, v6);
  }

  *(a1 + v7) = 0;
  v8 = *(a3 + 8);
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_2866F58E8;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  v11 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 40);
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_254AE2C54(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_254AE537C(v1);
  _Unwind_Resume(a1);
}

void **sub_254AE2C78(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_254AD6A0C(a1, (v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_254AE2F2C()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = MTLCreateSystemDefaultDevice();
    v3 = *(v0 + 16);
    *(v0 + 16) = v2;
    swift_unknownObjectRetain();
    sub_254AE31B0(v3);
  }

  sub_254AE31C0(v1);
  return v2;
}

uint64_t sub_254AE2F88(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return sub_254AE31B0(v2);
}

uint64_t (*sub_254AE2F98(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_254AE2F2C();
  return sub_254AE2FE0;
}

uint64_t sub_254AE2FE0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 16);
  *(v2 + 16) = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_254AE31B0(v3);

    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_254AE31B0(v3);
  }
}

id sub_254AE3050()
{
  v1 = v0[3];
  v2 = v1;
  if (v1 != 1)
  {
    goto LABEL_5;
  }

  v3 = (*(*v0 + 112))();
  if (v3)
  {
    v4 = v3;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v10 = 0;
    v2 = [v4 newDefaultLibraryWithBundle:v6 error:&v10];

    swift_unknownObjectRelease();
    v3 = v10;
    if (v2)
    {
      v7 = v0[3];
      v0[3] = v2;
      swift_unknownObjectRetain();
      sub_254AE31B0(v7);
LABEL_5:
      sub_254AE31C0(v1);
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  v9 = v3;
  sub_254AE5390();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_254AE31B0(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_254AE31C0(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_254AE31D0(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  return sub_254AE31B0(v2);
}

uint64_t (*sub_254AE31E0(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_254AE3050();
  return sub_254AE3228;
}

uint64_t sub_254AE3228(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 24);
  *(v2 + 24) = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_254AE31B0(v3);

    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_254AE31B0(v3);
  }
}

id sub_254AE3298(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2[4];
  v5 = v4;
  if (v4 != 1)
  {
    goto LABEL_5;
  }

  v6 = *(*v3 + 112);
  result = v6(a1, a2);
  if (result)
  {
    v8 = [result name];
    swift_unknownObjectRelease();
    v9 = sub_254AE5400();
    v11 = v10;

    MEMORY[0x259C22D60](v9, v11);

    sub_254AE53A0();

    result = (v6)(v12);
    if (result)
    {
      v5 = [result newCommandQueue];
      swift_unknownObjectRelease();
      v13 = v3[4];
      v3[4] = v5;
      swift_unknownObjectRetain();
      sub_254AE31B0(v13);
LABEL_5:
      sub_254AE31C0(v4);
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_254AE33E4(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  return sub_254AE31B0(v2);
}

uint64_t (*sub_254AE33F4(id *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_254AE3298(a1, a2);
  return sub_254AE343C;
}

uint64_t sub_254AE343C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 32);
  *(v2 + 32) = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_254AE31B0(v3);

    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_254AE31B0(v3);
  }
}

unint64_t sub_254AE34AC()
{
  result = qword_27F71DD80;
  if (!qword_27F71DD80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F71DD80);
  }

  return result;
}

unint64_t sub_254AE34F8()
{
  result = qword_27F71DD88;
  if (!qword_27F71DD88)
  {
    sub_254AE5430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F71DD88);
  }

  return result;
}

uint64_t sub_254AE3550(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_254AE3598()
{
  result = qword_27F71DD98;
  if (!qword_27F71DD98)
  {
    sub_254AE35FC(&qword_27F71DD90, &qword_254AE7C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F71DD98);
  }

  return result;
}

uint64_t sub_254AE35FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_254AE3644()
{
  v0 = swift_allocObject();
  sub_254AE367C();
  return v0;
}

int64x2_t *sub_254AE367C()
{
  v7[0] = sub_254AE5440();
  v1 = *(v7[0] - 8);
  MEMORY[0x28223BE20](v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_254AE5430();
  MEMORY[0x28223BE20](v4);
  v5 = sub_254AE53C0();
  MEMORY[0x28223BE20](v5 - 8);
  v0[1] = vdupq_n_s64(1uLL);
  v0[2].i64[0] = 1;
  sub_254AE34AC();
  sub_254AE53B0();
  v7[1] = MEMORY[0x277D84F90];
  sub_254AE34F8();
  sub_254AE3550(&qword_27F71DD90, &qword_254AE7C20);
  sub_254AE3598();
  sub_254AE5460();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v7[0]);
  v0[2].i64[1] = sub_254AE5450();
  (*(v0->i64[0] + 200))();
  return v0;
}

id sub_254AE38C0(uint64_t a1, uint64_t a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = (*(*v2 + 136))();
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v5 = sub_254AE53F0();
  v6 = [v4 newFunctionWithName_];

  v7 = swift_unknownObjectRelease();
  if (!v6)
  {
    return 0;
  }

  v8 = (*(*v2 + 112))(v7);
  if (v8)
  {
    v12[0] = 0;
    v9 = [v8 newComputePipelineStateWithFunction:v6 error:v12];
    swift_unknownObjectRelease();
    v8 = v12[0];
    if (v9)
    {
      swift_unknownObjectRelease();
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  v11 = v8;
  sub_254AE5390();

  swift_willThrow();
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_254AE5470();
  MEMORY[0x259C22D60](0xD000000000000025, 0x8000000254AEB0C0);
  sub_254AE3550(&qword_27F71DDA0, &qword_254AE7C28);
  sub_254AE5480();
  result = sub_254AE5490();
  __break(1u);
  return result;
}

id sub_254AE3AC4(CGImage *a1)
{
  v3 = objc_opt_self();
  Width = CGImageGetWidth(a1);
  v5 = [v3 texture2DDescriptorWithPixelFormat:80 width:Width height:CGImageGetHeight(a1) mipmapped:0];
  v6 = (*(*v1 + 112))();
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = [v6 newTextureWithDescriptor_];
  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    sub_254AE3C9C(v8, Height, &v20);
    v18 = v21;
    v19 = v20;
    v10 = v22;
    v11 = v23;
    v12 = CGImageGetDataProvider(a1);
    if (v12)
    {
      v13 = v12;
      v14 = CGDataProviderCopyData(v12);

      BytePtr = CFDataGetBytePtr(v14);
      if (BytePtr)
      {
        BytesPerRow = CGImageGetBytesPerRow(a1);
        v20 = v19;
        v21 = v18;
        v22 = v10;
        v23 = v11;
        [v7 replaceRegion:&v20 mipmapLevel:0 withBytes:BytePtr bytesPerRow:BytesPerRow];

        return v7;
      }

      goto LABEL_8;
    }

LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
  }

  result = sub_254AE5490();
  __break(1u);
  return result;
}

uint64_t sub_254AE3C9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

uint64_t sub_254AE3CB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  result = (*(*v5 + 160))();
  if (!result)
  {
    goto LABEL_30;
  }

  result = [result commandBuffer];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = result;
  swift_unknownObjectRelease();
  result = [v12 computeCommandEncoder];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = result;
  [result setComputePipelineState_];
  a5(v13);
  v14 = [a1 threadExecutionWidth];
  result = [a1 maxTotalThreadsPerThreadgroup];
  if (!v14)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (result == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_22;
  }

  v27 = a4;
  v15 = result / v14;
  v16 = sub_254AE3F54(v14, result / v14, &v29);
  v18 = v29;
  v17 = v30;
  v26 = v31;
  result = (*(*v5 + 112))(v16);
  if (result)
  {
    v19 = [result supportsFamily_];
    result = swift_unknownObjectRelease();
    if (v19)
    {
      v20 = sel_dispatchThreads_threadsPerThreadgroup_;
      v29 = a2;
      v30 = a3;
LABEL_20:
      v31 = v27;
      v28[0] = v18;
      v28[1] = v17;
      v28[2] = v26;
      [v13 v20];
      [v13 endEncoding];
      [v12 commit];
      [v12 waitUntilCompleted];
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    v21 = a2 + v14;
    if (!__OFADD__(a2, v14))
    {
      v22 = __OFSUB__(v21, 1);
      v23 = v21 - 1;
      if (!v22)
      {
        if (v23 == 0x8000000000000000 && v14 == -1)
        {
          goto LABEL_28;
        }

        v24 = a3 + v15;
        if (!__OFADD__(a3, v15))
        {
          v22 = __OFSUB__(v24, 1);
          v25 = v24 - 1;
          if (!v22)
          {
            if (v15)
            {
              if (v15 != -1 || v25 != 0x8000000000000000)
              {
                v20 = sel_dispatchThreadgroups_threadsPerThreadgroup_;
                v29 = v23 / v14;
                v30 = v25 / v15;
                goto LABEL_20;
              }

              goto LABEL_29;
            }

            goto LABEL_27;
          }

LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_254AE3F54@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

uint64_t sub_254AE3F64()
{
  sub_254AE31B0(*(v0 + 16));
  sub_254AE31B0(*(v0 + 24));
  sub_254AE31B0(*(v0 + 32));

  return v0;
}

uint64_t sub_254AE3F9C()
{
  sub_254AE31B0(*(v0 + 16));
  sub_254AE31B0(*(v0 + 24));
  sub_254AE31B0(*(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_254AE4048(unint64_t a1, int a2)
{
  v4 = a1;
  v5 = HIDWORD(a1);
  result = swift_beginAccess();
  v2[12] = v4;
  v2[13] = v5;
  v2[14] = a2;
  return result;
}

uint64_t sub_254AE40F0()
{
  v0[11] = (*(*v0 + 192))(0x697247796C707061, 0xE900000000000064);

  return swift_unknownObjectRelease();
}

uint64_t sub_254AE415C(void *a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, char a9)
{
  v61 = a8;
  v62 = a7;
  v16 = sub_254AE53E0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v60 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v58 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v65 = &v58 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v58 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v66 = &v58 - v29;
  MEMORY[0x28223BE20](v28);
  v59 = &v58 - v30;
  sub_254AE53D0();
  if (a9)
  {
    v31 = a1;
  }

  else
  {
    v31 = [objc_opt_self() convertCGImageToBGRA:a1 sRGB:?];
  }

  v32 = v31;
  v63 = v27;
  v64 = v22;
  sub_254AE53D0();
  LOWORD(v33) = CGImageGetBitmapInfo(v32);
  LODWORD(v22) = 0x54u >> v33;
  v9[8] = (*(*v9 + 208))(v32);
  v34 = swift_unknownObjectRelease();
  if (v33 & 0x2000) != 0 && (v22)
  {
    v22 = *(*v9 + 112);
    v35 = (v22)(v34);
    if (v35)
    {
      if (!a2)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (a3 < 0)
      {
        __break(1u);
      }

      else if ((a6 * a3) >> 64 == (a6 * a3) >> 63)
      {
        v58 = v16;
        v36 = v32;
        v37 = [v35 newBufferWithBytes:a2 length:? options:?];
        swift_unknownObjectRelease();
        v9[10] = v37;
        swift_unknownObjectRelease();
        v38 = v9[8];
        if (v38)
        {
          v39 = [v38 width];
          v40 = v9[8];
          v41 = v65;
          if (v40)
          {
            v42 = v39;
            v33 = objc_opt_self();
            v43 = [v33 texture2DDescriptorWithPixelFormat:80 width:v42 height:objc_msgSend(v40 mipmapped:sel_height), 0];
            v44 = (v22)([v43 setUsage_]);
            if (v44)
            {
              v33 = [v44 newTextureWithDescriptor_];
              swift_unknownObjectRelease();
              v9[9] = v33;
              swift_unknownObjectRelease();
              v45 = v63;
              sub_254AE53D0();
              (*(*v9 + 392))(v62, v61 | ((HIDWORD(v61) & 1) << 32), 1, 1, a4);
              sub_254AE53D0();
              v46 = v64;
              sub_254AE53D0();
              if (v9[9])
              {
                v47 = *(*v9 + 400);
                v48 = swift_unknownObjectRetain();
                v49 = v47(v48, v36);
                swift_unknownObjectRelease();
                v50 = v60;
                sub_254AE53D0();

                v51 = *(v17 + 8);
                v52 = v58;
                v51(v50, v58);
                v51(v46, v52);
                v51(v41, v52);
                v51(v45, v52);
                v51(v66, v52);
                v51(v59, v52);
                return v49;
              }

              goto LABEL_22;
            }

LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_23:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_254AE5470();
  MEMORY[0x259C22D60](0xD000000000000025, 0x8000000254AEB1C0);
  if (v22)
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  if (v22)
  {
    v55 = 0xE400000000000000;
  }

  else
  {
    v55 = 0xE500000000000000;
  }

  MEMORY[0x259C22D60](v54, v55);

  MEMORY[0x259C22D60](0x4C6E6169646E6520, 0xEE003D656C747469);
  if ((v33 & 0x2000) != 0)
  {
    v56 = 1702195828;
  }

  else
  {
    v56 = 0x65736C6166;
  }

  if ((v33 & 0x2000) != 0)
  {
    v57 = 0xE400000000000000;
  }

  else
  {
    v57 = 0xE500000000000000;
  }

  MEMORY[0x259C22D60](v56, v57);

  MEMORY[0x259C22D60](0xD00000000000001DLL, 0x8000000254AEB220);
  result = sub_254AE5490();
  __break(1u);
  return result;
}

id sub_254AE4738(uint64_t a1, uint64_t a2, char a3, char a4, float a5)
{
  result = v5[8];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = [result width];
  result = v5[8];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = [result height];
  if (v5[11])
  {
    v13 = result;
    MEMORY[0x28223BE20](result);
    v16[2] = v5;
    v16[3] = a1;
    v17 = a2;
    v18 = BYTE4(a2) & 1;
    v19 = a3 & 1;
    v20 = a4 & 1;
    v21 = a5;
    v14 = *(*v5 + 216);
    v15 = swift_unknownObjectRetain();
    v14(v15, v12, v13, 1, sub_254AE4CC8, v16);
    return swift_unknownObjectRelease();
  }

LABEL_7:
  __break(1u);
  return result;
}

CGContext *sub_254AE4874(void *a1)
{
  v2 = [a1 width];
  result = [a1 height];
  v4 = v2 * result;
  if ((v2 * result) >> 64 != (v2 * result) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v4 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = [a1 width];
  if ((result - 0x2000000000000000) >> 62 != 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = 4 * v4;
  if (4 * v4 < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = 4 * result;
  if (v5)
  {
    v7 = sub_254AE5420();
    *(v7 + 16) = v5;
    bzero((v7 + 32), v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_254AE3C9C([a1 width], objc_msgSend(a1, sel_height), &v13);
  [a1 getBytes:v7 + 32 bytesPerRow:v6 fromRegion:&v13 mipmapLevel:0];
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (!result)
  {
    goto LABEL_18;
  }

  v8 = result;
  v9 = [a1 width];
  v10 = [a1 height];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_254AE4F48(0, *(v7 + 16), 0, v7);
  }

  result = sub_254AE503C((v7 + 32), v9, v10, v6, v8);
  if (!result)
  {
    goto LABEL_19;
  }

  v11 = result;
  result = CGBitmapContextCreateImage(result);
  if (result)
  {
    v12 = result;

    return v12;
  }

LABEL_20:
  __break(1u);
  return result;
}

int64x2_t *sub_254AE4A60()
{
  v0 = swift_allocObject();
  *(v0 + 48) = 0x1000000010;
  *(v0 + 56) = 8;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return sub_254AE367C();
}

uint64_t sub_254AE4AAC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_254AE4AEC()
{
  v0 = sub_254AE3F64();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

id sub_254AE4BEC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_254AE4C20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IHKBilateralGridUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_254AE4C94(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IHKBilateralGridUtils();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_254AE4CC8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 36);
  v8 = *(v2 + 37);
  v9 = *(v2 + 38);
  v10 = *(v2 + 40);
  [a1 setTexture:v4[8] atIndex:0];
  [a1 setTexture:v4[9] atIndex:1];
  v11 = [a1 setBuffer:v4[10] offset:0 atIndex:0];
  if (v7)
  {
    v11 = (*(*v4 + 264))(v11);
    v5 = v11;
    v6 = v12;
  }

  v22 = v5;
  v23 = v6;
  v13 = *(*v4 + 112);
  result = v13(v11);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = [result newBufferWithBytes:&v22 length:12 options:0];
  swift_unknownObjectRelease();
  v21 = v8;
  result = v13([a1 setBuffer:v15 offset:0 atIndex:1]);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = [result newBufferWithBytes:&v21 length:1 options:0];
  swift_unknownObjectRelease();
  v20 = v9;
  result = v13([a1 setBuffer:v16 offset:0 atIndex:2]);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = [result newBufferWithBytes:&v20 length:1 options:0];
  swift_unknownObjectRelease();
  v19 = v10;
  result = v13([a1 setBuffer:v17 offset:0 atIndex:3]);
  if (result)
  {
    v18 = [result newBufferWithBytes:&v19 length:4 options:0];
    swift_unknownObjectRelease();
    [a1 setBuffer:v18 offset:0 atIndex:4];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

LABEL_11:
  __break(1u);
  return result;
}

char *sub_254AE4F48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_254AE3550(&unk_27F71E060, &qword_254AE7D68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

int64x2_t *sub_254AE5050(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, float a7)
{
  type metadata accessor for IHKBilateralGrid();
  v14 = swift_allocObject();
  *(v14 + 48) = 0x1000000010;
  *(v14 + 56) = 8;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  result = sub_254AE367C();
  if ((a3 | a2) >> 32)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v16 = a4 / 48 / a3;
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!HIDWORD(v16))
  {
    v17 = (*(result->i64[0] + 384))(a5, a1, a2, a3, a4, a2 | (a3 << 32), a4 / 48 / a3, a6 & 1, a7);

    return v17;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for IHKBGGridSize(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IHKBGGridSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IHKBGGridSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

void sub_254AE5250(void **a1)
{
  if (*(a1 + 23) < 0)
  {
    sub_254AD9148(a1);
  }
}

void sub_254AE5260(uint64_t **a1, unsigned int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 23);
  v4 = *a1;
  status_string = espresso_get_status_string();
  if (v3 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = v4;
  }

  v7 = 136315394;
  v8 = v6;
  v9 = 2080;
  v10 = status_string;
  _os_log_error_impl(&dword_254AC8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Encountered an error during: %s\n -> Espresso Error: %s", &v7, 0x16u);
}

void sub_254AE537C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x2821F7520](this, a2);
}

{
  return MEMORY[0x2821F7538](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7918]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}