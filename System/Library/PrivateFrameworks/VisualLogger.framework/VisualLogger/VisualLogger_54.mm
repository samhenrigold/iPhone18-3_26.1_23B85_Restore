void sub_27155F808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27155F860(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288116190;
  v3 = *(a2 + 8);
  LODWORD(v4) = *(a2 + 12);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v4;
  }

  *&v12 = *a2;
  *(&v12 + 1) = v3 | (v4 << 32);
  *a1 = &unk_288115630;
  *(a1 + 8) = 0;
  sub_271544900(0, &v12, a1 + 16);
  if (!v12 || !DWORD1(v12))
  {
    *(a1 + 48) = v12;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = v14;
  }

  v13 = &unk_2881152B0;
  if (v5)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v8)
    {
LABEL_13:
      sub_271581FB4(v14);
    }
  }

LABEL_14:
  sub_271545004(v16, &v13);
  v9 = v16[1];
  v10 = v16[2];
  sub_27157D2FC(&v13);
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
LABEL_16:
  *a1 = &unk_288116190;
  return a1;
}

void sub_27155F9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D16C(va);
  sub_271545618(v5 + 16);
  _Unwind_Resume(a1);
}

void sub_27155FA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D2FC(va);
  sub_271545618(v5 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27155FA40(uint64_t a1)
{
  *a1 = &unk_288115630;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27155FAB8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_27154608C(a1))
  {
    if (*(a1 + 52))
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a1 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a2 = 0;
    a2[1] = v5;
    a2[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a1 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v20 = &unk_288115A20;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v20 = &unk_288115A20;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_271545004(a2, &v20);
  v20 = &unk_288115A20;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_27155FDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155FE0C(void *a1, uint64_t a2)
{
  if (sub_27154608C(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v22 = &unk_288115A20;
    v23 = v11;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v22 = &unk_288115A20;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_271545004(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_288115A20;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_271560160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271560188(uint64_t a1)
{
  sub_271546A24(v5, a1);
  sub_27155FE0C(&v4, a1);
  sub_27155FE0C(&v3, a1);
  operator new();
}

void sub_271560264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  MEMORY[0x2743BF050](v15, 0x10A3C40A1F8E8FFLL, a3, a4, a5, a6, a7, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271560290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_2715602A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_2715602C4(uint64_t a1, uint64_t *lpsrc)
{
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124AD0, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v22, lpsrc, 1);
    v10 = v22;
    v11 = *(v22 + 16);
    v15 = *v22;
    v16[0] = v11;
    *&v22 = 0;
    MEMORY[0x2743BF050](v10, 0xC400A2AC0F1, v12);
    sub_27155FAB8(a1, &v22);
    sub_271253768(&v15, &v22);
    return result;
  }

  v6 = v5;
  sub_271546A24(v21, v5);
  sub_27155FE0C(&v19, v6);
  v22 = v19;
  v23 = v20;
  *&v15 = &unk_288116190;
  if (HIDWORD(v20) <= 0x20)
  {
    v7 = 32;
  }

  else
  {
    v7 = HIDWORD(v20);
  }

  v24[0] = *(&v19 + 1);
  v24[1] = v20 | (v7 << 32);
  sub_271545674(&v15, v24, &v22);
  *&v15 = &unk_288116190;
  sub_27157D2FC(v21);
  v8 = v17;
  *(a1 + 8) = DWORD2(v15);
  v9 = *(a1 + 40);
  if (v9 == -1)
  {
    if (v8 == -1)
    {
      result = *&v18;
      *(a1 + 48) = v18;
      return result;
    }
  }

  else if (v8 == -1)
  {
    (off_2881337B0[v9])(&v22, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v22 = a1 + 16;
  (off_2881337F0[v8])(&v22);
LABEL_12:
  v14 = v17;
  result = *&v18;
  *(a1 + 48) = v18;
  *&v15 = &unk_288115630;
  if (v14 != -1)
  {
    (off_2881337B0[v14])(&v22, v16);
  }

  return result;
}

void sub_271560518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271560554(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    sub_27155FAB8(a1, &v8);
    operator new();
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_2715606C0(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    sub_27155FE0C(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_27156082C()
{
  if ((atomic_load_explicit(&qword_28087BA70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BA70))
  {
    sub_27157A8D8();
  }

  if (byte_28087BAF7 >= 0)
  {
    return &qword_28087BAE0;
  }

  else
  {
    return qword_28087BAE0;
  }
}

void sub_2715608FC(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_2715462C4(a1, &v3);
    operator new();
  }

  sub_271546A24(&v3, a1);
  operator new();
}

void sub_271560BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D2FC(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_271560C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D548(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271560C74(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115F50;
  v3 = *(a2 + 8);
  LODWORD(v4) = *(a2 + 12);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *&v12 = *a2;
  *(&v12 + 1) = v3 | (v4 << 32);
  *a1 = &unk_2881153F0;
  *(a1 + 8) = 0;
  sub_27154D224(0, &v12, a1 + 16);
  if (!v12 || !DWORD1(v12))
  {
    *(a1 + 48) = v12;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = v14;
  }

  v13 = &unk_2881152B0;
  if (v5)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v8)
    {
LABEL_13:
      sub_271581FB4(v14);
    }
  }

LABEL_14:
  sub_27154D928(v16, &v13);
  v9 = v16[1];
  v10 = v16[2];
  sub_27157D2FC(&v13);
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
LABEL_16:
  *a1 = &unk_288115F50;
  return a1;
}

void sub_271560E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D16C(va);
  sub_271545618(v5 + 16);
  _Unwind_Resume(a1);
}

void sub_271560E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D2FC(va);
  sub_271545618(v5 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_271560E54(uint64_t a1)
{
  *a1 = &unk_2881153F0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271560ECC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_27154608C(a1))
  {
    if (*(a1 + 52))
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a1 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a2 = 0;
    a2[1] = v5;
    a2[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a1 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v20 = &unk_288115A20;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v20 = &unk_288115A20;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_27154D928(a2, &v20);
  v20 = &unk_288115A20;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_27156120C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271561220(void *a1, uint64_t a2)
{
  if (sub_27154608C(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v22 = &unk_288115A20;
    v23 = v11;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v22 = &unk_288115A20;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_27154D928(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_288115A20;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_271561574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27156159C(uint64_t a1)
{
  sub_27154EF3C(v5, a1);
  sub_271561220(&v4, a1);
  sub_271561220(&v3, a1);
  operator new();
}

void sub_271561678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  MEMORY[0x2743BF050](v15, 0x10A3C40A1F8E8FFLL, a3, a4, a5, a6, a7, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_2715616A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_2715616B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_2715616D8(uint64_t a1, uint64_t *lpsrc)
{
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124A70, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v22, lpsrc, 2);
    v10 = v22;
    v11 = *(v22 + 16);
    v15 = *v22;
    v16[0] = v11;
    *&v22 = 0;
    MEMORY[0x2743BF050](v10, 0xC400A2AC0F1, v12);
    sub_271560ECC(a1, &v22);
    sub_271254000(&v15, &v22);
    return result;
  }

  v6 = v5;
  sub_27154EF3C(v21, v5);
  sub_271561220(&v19, v6);
  v22 = v19;
  v23 = v20;
  *&v15 = &unk_288115F50;
  if (HIDWORD(v20) <= 0x10)
  {
    v7 = 16;
  }

  else
  {
    v7 = HIDWORD(v20);
  }

  v24[0] = *(&v19 + 1);
  v24[1] = v20 | (v7 << 32);
  sub_27154DF40(&v15, v24, &v22);
  *&v15 = &unk_288115F50;
  sub_27157D2FC(v21);
  v8 = v17;
  *(a1 + 8) = DWORD2(v15);
  v9 = *(a1 + 40);
  if (v9 == -1)
  {
    if (v8 == -1)
    {
      result = *&v18;
      *(a1 + 48) = v18;
      return result;
    }
  }

  else if (v8 == -1)
  {
    (off_2881337B0[v9])(&v22, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v22 = a1 + 16;
  (off_2881337F0[v8])(&v22);
LABEL_12:
  v14 = v17;
  result = *&v18;
  *(a1 + 48) = v18;
  *&v15 = &unk_2881153F0;
  if (v14 != -1)
  {
    (off_2881337B0[v14])(&v22, v16);
  }

  return result;
}

void sub_27156192C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271561968(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    sub_271560ECC(a1, &v8);
    operator new();
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271561AD4(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    sub_271561220(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_271561C40()
{
  if ((atomic_load_explicit(&qword_28087BA78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BA78))
  {
    sub_27157A9DC();
  }

  if (byte_28087BB0F >= 0)
  {
    return &qword_28087BAF8;
  }

  else
  {
    return qword_28087BAF8;
  }
}

void sub_271561D10(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_27154E7DC(a1, &v3);
    operator new();
  }

  sub_27154EF3C(&v3, a1);
  operator new();
}

void sub_271561FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D2FC(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_271562014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D548(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271562088(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115C80;
  v3 = *(a2 + 8);
  LODWORD(v4) = *(a2 + 12);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *&v12 = *a2;
  *(&v12 + 1) = v3 | (v4 << 32);
  *a1 = &unk_288115990;
  *(a1 + 8) = 0;
  sub_271553610(0, &v12, a1 + 16);
  if (!v12 || !DWORD1(v12))
  {
    *(a1 + 48) = v12;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = v14;
  }

  v13 = &unk_2881152B0;
  if (v5)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v8)
    {
LABEL_13:
      sub_271581FB4(v14);
    }
  }

LABEL_14:
  sub_27154D928(v16, &v13);
  v9 = v16[1];
  v10 = v16[2];
  sub_27157D2FC(&v13);
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
LABEL_16:
  *a1 = &unk_288115C80;
  return a1;
}

void sub_27156221C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D16C(va);
  sub_271545618(v5 + 16);
  _Unwind_Resume(a1);
}

void sub_271562238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D2FC(va);
  sub_271545618(v5 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_271562268(uint64_t a1)
{
  *a1 = &unk_288115990;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715622E0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_27154608C(a1))
  {
    if (*(a1 + 52))
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a1 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a2 = 0;
    a2[1] = v5;
    a2[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a1 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v20 = &unk_288115A20;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v20 = &unk_288115A20;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_27154D928(a2, &v20);
  v20 = &unk_288115A20;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_271562620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271562634(void *a1, uint64_t a2)
{
  if (sub_27154608C(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v22 = &unk_288115A20;
    v23 = v11;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v22 = &unk_288115A20;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_27154D928(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_288115A20;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_271562988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_2715629B0(uint64_t a1)
{
  sub_271555030(v5, a1);
  sub_271562634(&v4, a1);
  sub_271562634(&v3, a1);
  operator new();
}

void sub_271562A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  MEMORY[0x2743BF050](v15, 0x10A3C40A1F8E8FFLL, a3, a4, a5, a6, a7, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271562AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271562ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_271562AEC(uint64_t a1, uint64_t *lpsrc)
{
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881249F8, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v22, lpsrc, 3);
    v10 = v22;
    v11 = *(v22 + 16);
    v15 = *v22;
    v16[0] = v11;
    *&v22 = 0;
    MEMORY[0x2743BF050](v10, 0xC400A2AC0F1, v12);
    sub_2715622E0(a1, &v22);
    *&result = sub_27123D99C(&v15, &v22);
    return result;
  }

  v6 = v5;
  sub_271555030(v21, v5);
  sub_271562634(&v19, v6);
  v22 = v19;
  v23 = v20;
  *&v15 = &unk_288115C80;
  if (HIDWORD(v20) <= 0x10)
  {
    v7 = 16;
  }

  else
  {
    v7 = HIDWORD(v20);
  }

  v24[0] = *(&v19 + 1);
  v24[1] = v20 | (v7 << 32);
  sub_271554034(&v15, v24, &v22);
  *&v15 = &unk_288115C80;
  sub_27157D2FC(v21);
  v8 = v17;
  *(a1 + 8) = DWORD2(v15);
  v9 = *(a1 + 40);
  if (v9 == -1)
  {
    if (v8 == -1)
    {
      result = *&v18;
      *(a1 + 48) = v18;
      return result;
    }
  }

  else if (v8 == -1)
  {
    (off_2881337B0[v9])(&v22, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v22 = a1 + 16;
  (off_2881337F0[v8])(&v22);
LABEL_12:
  v14 = v17;
  result = *&v18;
  *(a1 + 48) = v18;
  *&v15 = &unk_288115990;
  if (v14 != -1)
  {
    (off_2881337B0[v14])(&v22, v16);
  }

  return result;
}

void sub_271562D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271562D7C(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    sub_2715622E0(a1, &v8);
    operator new();
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271562EE8(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    sub_271562634(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_271563054()
{
  if ((atomic_load_explicit(&qword_28087BA80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BA80))
  {
    sub_27157AAE0();
  }

  if (byte_28087BB27 >= 0)
  {
    return &qword_28087BB10;
  }

  else
  {
    return qword_28087BB10;
  }
}

void sub_271563124(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_2715548D0(a1, &v3);
    operator new();
  }

  sub_271555030(&v3, a1);
  operator new();
}

void sub_2715633EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D2FC(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_271563428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D548(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156349C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115BF0;
  v3 = *(a2 + 8);
  LODWORD(v4) = *(a2 + 12);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v4;
  }

  *&v12 = *a2;
  *(&v12 + 1) = v3 | (v4 << 32);
  *a1 = &unk_2881157E0;
  *(a1 + 8) = 0;
  sub_2715593FC(0, &v12, a1 + 16);
  if (!v12 || !DWORD1(v12))
  {
    *(a1 + 48) = v12;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = v14;
  }

  v13 = &unk_2881152B0;
  if (v5)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v8)
    {
LABEL_13:
      sub_271581FB4(v14);
    }
  }

LABEL_14:
  sub_271559B00(v16, &v13);
  v9 = v16[1];
  v10 = v16[2];
  sub_27157D2FC(&v13);
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
LABEL_16:
  *a1 = &unk_288115BF0;
  return a1;
}

void sub_271563630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D16C(va);
  sub_271545618(v5 + 16);
  _Unwind_Resume(a1);
}

void sub_27156364C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D2FC(va);
  sub_271545618(v5 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27156367C(uint64_t a1)
{
  *a1 = &unk_2881157E0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715636F4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_27154608C(a1))
  {
    if (*(a1 + 52))
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a1 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a2 = 0;
    a2[1] = v5;
    a2[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a1 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v20 = &unk_288115A20;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v20 = &unk_288115A20;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_271559B00(a2, &v20);
  v20 = &unk_288115A20;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_271563A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271563A48(void *a1, uint64_t a2)
{
  if (sub_27154608C(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v22 = &unk_288115A20;
    v23 = v11;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v22 = &unk_288115A20;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_271559B00(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_288115A20;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_271563D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271563DC4(uint64_t a1)
{
  sub_27155B114(v5, a1);
  sub_271563A48(&v4, a1);
  sub_271563A48(&v3, a1);
  operator new();
}

void sub_271563EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  MEMORY[0x2743BF050](v15, 0x10A3C40A1F8E8FFLL, a3, a4, a5, a6, a7, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271563ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271563EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_271563F00(uint64_t a1, uint64_t *lpsrc)
{
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881249E0, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v22, lpsrc, 4);
    v10 = v22;
    v11 = *(v22 + 16);
    v15 = *v22;
    v16[0] = v11;
    *&v22 = 0;
    MEMORY[0x2743BF050](v10, 0xC400A2AC0F1, v12);
    sub_2715636F4(a1, &v22);
    *&result = sub_27125505C(&v15, &v22);
    return result;
  }

  v6 = v5;
  sub_27155B114(v21, v5);
  sub_271563A48(&v19, v6);
  v22 = v19;
  v23 = v20;
  *&v15 = &unk_288115BF0;
  if (HIDWORD(v20) <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = HIDWORD(v20);
  }

  v24[0] = *(&v19 + 1);
  v24[1] = v20 | (v7 << 32);
  sub_27155A118(&v15, v24, &v22);
  *&v15 = &unk_288115BF0;
  sub_27157D2FC(v21);
  v8 = v17;
  *(a1 + 8) = DWORD2(v15);
  v9 = *(a1 + 40);
  if (v9 == -1)
  {
    if (v8 == -1)
    {
      result = *&v18;
      *(a1 + 48) = v18;
      return result;
    }
  }

  else if (v8 == -1)
  {
    (off_2881337B0[v9])(&v22, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v22 = a1 + 16;
  (off_2881337F0[v8])(&v22);
LABEL_12:
  v14 = v17;
  result = *&v18;
  *(a1 + 48) = v18;
  *&v15 = &unk_2881157E0;
  if (v14 != -1)
  {
    (off_2881337B0[v14])(&v22, v16);
  }

  return result;
}

void sub_271564154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271564190(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    sub_2715636F4(a1, &v8);
    operator new();
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_2715642FC(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    sub_271563A48(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_271564468()
{
  if ((atomic_load_explicit(&qword_28087BA88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BA88))
  {
    sub_27157ABE4();
  }

  if (byte_28087BB3F >= 0)
  {
    return &qword_28087BB28;
  }

  else
  {
    return qword_28087BB28;
  }
}

void sub_271564538(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_27155A9B4(a1, &v3);
    operator new();
  }

  sub_27155B114(&v3, a1);
  operator new();
}

void sub_271564800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D2FC(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_27156483C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D548(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2715648B0(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115B60;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v4;
  }

  *v18 = 2;
  v5 = *(a2 + 24);
  *&v18[4] = v5;
  *v13 = *v18;
  *&v13[8] = HIDWORD(v5);
  *v18 = 1;
  *&v18[4] = v3 | (v4 << 32);
  *&v13[12] = *v18;
  *&v13[20] = v4;
  *&v13[24] = v5;
  v14 = *&v18[4];
  *a1 = &unk_2881155A0;
  *(a1 + 8) = 0;
  sub_271546E30(0, v13, a1 + 16);
  if (!*&v13[24] || !*&v13[28])
  {
    v11 = *&v13[16];
    *(a1 + 48) = *v13;
    *(a1 + 64) = v11;
    *(a1 + 80) = v14;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v16;
  }

  v15 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v16);
    }
  }

LABEL_14:
  sub_271547560(v18, &v15);
  v10 = v19;
  *(a1 + 48) = *&v18[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v20;
  sub_27157D2FC(&v15);
LABEL_16:
  *a1 = &unk_288115B60;
  return a1;
}

void sub_271564ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D16C(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

void sub_271564AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D2FC(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_271564B0C(uint64_t a1)
{
  *a1 = &unk_2881155A0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271564B84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a1))
  {
    if (*(a1 + 76))
    {
      v5 = *(a1 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v19) = 2;
    *(&v19 + 4) = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(DWORD1(v19), 2);
    LODWORD(v19) = 1;
    *(&v19 + 4) = v9;
    v11 = v19;
    *a2 = 0;
    *(a2 + 8) = v10;
    *(a2 + 16) = HIDWORD(v6);
    *(a2 + 20) = v11;
    *(a2 + 28) = v8;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    return;
  }

  v12 = *(a1 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    *&v19 = &unk_288115A20;
    *(&v19 + 1) = v16;
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        *&v19 = &unk_288115A20;
        *(&v19 + 1) = v14;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v19 + 1) = 0;
  v20 = 0;
  *&v19 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v18);
    }
  }

LABEL_22:
  sub_271547560(a2, &v19);
  *&v19 = &unk_288115A20;
  v17 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_271564E18(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v23 = 2;
    *&v23[4] = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(*&v23[4], 2);
    *v23 = 1;
    *&v23[4] = v9;
    v11 = *v23;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    return;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v20 = &unk_288115A20;
    v21 = v16;
    v22 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v20 = &unk_288115A20;
        v21 = v14;
        v22 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_271547560(v23, &v20);
  *a1 = *v23;
  v17 = v24;
  *(a1 + 8) = *&v23[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v25;
  v20 = &unk_288115A20;
  v18 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }
}

void sub_2715650E0(uint64_t a1)
{
  v5[16] = *MEMORY[0x277D85DE8];
  sub_271548BE4(v5, a1);
  sub_271564E18(v4, a1);
  sub_271564E18(&v3, a1);
  operator new();
}

void sub_271565224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  MEMORY[0x2743BF050](v21, 0x10A3C40ED729E16, a3, a4, a5, a6, a7, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271565250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271565268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_271565288(uint64_t a1, uint64_t *lpsrc)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881249C8, 0);
  if (!v5)
  {
    (*(v4 + 72))(v30, lpsrc, 5);
    v10 = *&v30[0];
    v12 = *(*&v30[0] + 16);
    v11 = *(*&v30[0] + 32);
    v21 = **&v30[0];
    v22 = v12;
    v23 = v11;
    *&v30[0] = 0;
    MEMORY[0x2743BF050](v10, 0xC400A2AC0F1, v13, v14, v15, v16);
    sub_271564B84(a1, v30);
    sub_27129F754(&v21, v30);
    return result;
  }

  v6 = v5;
  sub_271548BE4(v29, v5);
  sub_271564E18(v27, v6);
  v30[0] = v27[0];
  v30[1] = v27[1];
  v30[2] = v28;
  *&v21 = &unk_288115B60;
  if (HIDWORD(v28) <= 0x20)
  {
    v7 = 32;
  }

  else
  {
    v7 = HIDWORD(v28);
  }

  *&v31[1] = v28;
  v31[0] = 2;
  LODWORD(v36[0]) = 1;
  *(v36 + 4) = DWORD2(v28) | (v7 << 32);
  v32 = v36[0];
  v33 = v7;
  v34 = v28;
  v35 = *(v36 + 4);
  sub_271547C40(&v21, v31, v30);
  *&v21 = &unk_288115B60;
  sub_27157D2FC(v29);
  v8 = DWORD2(v23);
  *(a1 + 8) = DWORD2(v21);
  v9 = *(a1 + 40);
  if (v9 == -1)
  {
    if (v8 == -1)
    {
      result = *&v24;
      v20 = v25;
      *(a1 + 48) = v24;
      *(a1 + 64) = v20;
      *(a1 + 80) = v26;
      return result;
    }
  }

  else if (v8 == -1)
  {
    (off_2881337B0[v9])(v30, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_11;
  }

  *&v30[0] = a1 + 16;
  (off_2881337F0[v8])(v30);
LABEL_11:
  v18 = DWORD2(v23);
  result = *&v24;
  v19 = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v19;
  *(a1 + 80) = v26;
  *&v21 = &unk_2881155A0;
  if (v18 != -1)
  {
    (off_2881337B0[v18])(v30, &v22);
  }

  return result;
}

void sub_271565544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715655B4(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
LABEL_10:
    sub_271564B84(a1, &v8);
    operator new();
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271565720(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
LABEL_10:
    sub_271564E18(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_27156588C()
{
  if ((atomic_load_explicit(&qword_28087BA90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BA90))
  {
    sub_27157ACE8();
  }

  if (byte_28087BB57 >= 0)
  {
    return &qword_28087BB40;
  }

  else
  {
    return qword_28087BB40;
  }
}

void sub_27156595C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_271548540(&v3, a1);
    operator new();
  }

  sub_271548BE4(&v3, a1);
  operator new();
}

void sub_271565C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D2FC(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_271565C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D548(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271565CE0(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115AD0;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *v18 = 2;
  v5 = *(a2 + 24);
  *&v18[4] = v5;
  *v13 = *v18;
  *&v13[8] = HIDWORD(v5);
  *v18 = 1;
  *&v18[4] = v3 | (v4 << 32);
  *&v13[12] = *v18;
  *&v13[20] = v4;
  *&v13[24] = v5;
  v14 = *&v18[4];
  *a1 = &unk_288115900;
  *(a1 + 8) = 0;
  sub_27155543C(0, v13, a1 + 16);
  if (!*&v13[24] || !*&v13[28])
  {
    v11 = *&v13[16];
    *(a1 + 48) = *v13;
    *(a1 + 64) = v11;
    *(a1 + 80) = v14;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v16;
  }

  v15 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v16);
    }
  }

LABEL_14:
  sub_271555B70(v18, &v15);
  v10 = v19;
  *(a1 + 48) = *&v18[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v20;
  sub_27157D2FC(&v15);
LABEL_16:
  *a1 = &unk_288115AD0;
  return a1;
}

void sub_271565EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D16C(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

void sub_271565F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D2FC(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_271565F3C(uint64_t a1)
{
  *a1 = &unk_288115900;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271565FB4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a1))
  {
    if (*(a1 + 76))
    {
      v5 = *(a1 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v19) = 2;
    *(&v19 + 4) = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(DWORD1(v19), 2);
    LODWORD(v19) = 1;
    *(&v19 + 4) = v9;
    v11 = v19;
    *a2 = 0;
    *(a2 + 8) = v10;
    *(a2 + 16) = HIDWORD(v6);
    *(a2 + 20) = v11;
    *(a2 + 28) = v8;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    return;
  }

  v12 = *(a1 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    *&v19 = &unk_288115A20;
    *(&v19 + 1) = v16;
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        *&v19 = &unk_288115A20;
        *(&v19 + 1) = v14;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v19 + 1) = 0;
  v20 = 0;
  *&v19 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v18);
    }
  }

LABEL_22:
  sub_271555B70(a2, &v19);
  *&v19 = &unk_288115A20;
  v17 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_271566248(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v23 = 2;
    *&v23[4] = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(*&v23[4], 2);
    *v23 = 1;
    *&v23[4] = v9;
    v11 = *v23;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    return;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v20 = &unk_288115A20;
    v21 = v16;
    v22 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v20 = &unk_288115A20;
        v21 = v14;
        v22 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_271555B70(v23, &v20);
  *a1 = *v23;
  v17 = v24;
  *(a1 + 8) = *&v23[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v25;
  v20 = &unk_288115A20;
  v18 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }
}

void sub_271566510(uint64_t a1)
{
  v5[16] = *MEMORY[0x277D85DE8];
  sub_2715571D8(v5, a1);
  sub_271566248(v4, a1);
  sub_271566248(&v3, a1);
  operator new();
}

void sub_271566654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  MEMORY[0x2743BF050](v21, 0x10A3C40ED729E16, a3, a4, a5, a6, a7, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271566680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271566698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_2715666B8(uint64_t a1, uint64_t *lpsrc)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881249B0, 0);
  if (!v5)
  {
    (*(v4 + 72))(v30, lpsrc, 7);
    v10 = *&v30[0];
    v12 = *(*&v30[0] + 16);
    v11 = *(*&v30[0] + 32);
    v21 = **&v30[0];
    v22 = v12;
    v23 = v11;
    *&v30[0] = 0;
    MEMORY[0x2743BF050](v10, 0xC400A2AC0F1, v13, v14, v15, v16);
    sub_271565FB4(a1, v30);
    *&v27[0] = &v21;
    *(&v27[0] + 1) = v30;
    *&result = sub_2712A0BBC(v27);
    return result;
  }

  v6 = v5;
  sub_2715571D8(v29, v5);
  sub_271566248(v27, v6);
  v30[0] = v27[0];
  v30[1] = v27[1];
  v30[2] = v28;
  *&v21 = &unk_288115AD0;
  if (HIDWORD(v28) <= 0x10)
  {
    v7 = 16;
  }

  else
  {
    v7 = HIDWORD(v28);
  }

  *&v31[1] = v28;
  v31[0] = 2;
  LODWORD(v36[0]) = 1;
  *(v36 + 4) = DWORD2(v28) | (v7 << 32);
  v32 = v36[0];
  v33 = v7;
  v34 = v28;
  v35 = *(v36 + 4);
  sub_271556228(&v21, v31, v30);
  *&v21 = &unk_288115AD0;
  sub_27157D2FC(v29);
  v8 = DWORD2(v23);
  *(a1 + 8) = DWORD2(v21);
  v9 = *(a1 + 40);
  if (v9 == -1)
  {
    if (v8 == -1)
    {
      result = *&v24;
      v20 = v25;
      *(a1 + 48) = v24;
      *(a1 + 64) = v20;
      *(a1 + 80) = v26;
      return result;
    }
  }

  else if (v8 == -1)
  {
    (off_2881337B0[v9])(v30, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_11;
  }

  *&v30[0] = a1 + 16;
  (off_2881337F0[v8])(v30);
LABEL_11:
  v18 = DWORD2(v23);
  result = *&v24;
  v19 = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v19;
  *(a1 + 80) = v26;
  *&v21 = &unk_288115900;
  if (v18 != -1)
  {
    (off_2881337B0[v18])(v30, &v22);
  }

  return result;
}

void sub_27156697C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715669EC(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    sub_271565FB4(a1, &v8);
    operator new();
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271566B58(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    sub_271566248(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_271566CC4()
{
  if ((atomic_load_explicit(&byte_28087BA98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&byte_28087BA98))
  {
    sub_27157ADEC();
  }

  if (byte_28087BB6F >= 0)
  {
    return &qword_28087BB58;
  }

  else
  {
    return qword_28087BB58;
  }
}

void sub_271566D94(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_271556B38(a1, &v3);
    operator new();
  }

  sub_2715571D8(&v3, a1);
  operator new();
}

void sub_27156705C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D2FC(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_271567098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D548(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156710C(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115A40;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v4;
  }

  *v18 = 2;
  v5 = *(a2 + 24);
  *&v18[4] = v5;
  *v13 = *v18;
  *&v13[8] = HIDWORD(v5);
  *v18 = 1;
  *&v18[4] = v3 | (v4 << 32);
  *&v13[12] = *v18;
  *&v13[20] = v4;
  *&v13[24] = v5;
  v14 = *&v18[4];
  *a1 = &unk_288115750;
  *(a1 + 8) = 0;
  sub_27155B520(0, v13, a1 + 16);
  if (!*&v13[24] || !*&v13[28])
  {
    v11 = *&v13[16];
    *(a1 + 48) = *v13;
    *(a1 + 64) = v11;
    *(a1 + 80) = v14;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v16;
  }

  v15 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v16);
    }
  }

LABEL_14:
  sub_27155BC54(v18, &v15);
  v10 = v19;
  *(a1 + 48) = *&v18[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v20;
  sub_27157D2FC(&v15);
LABEL_16:
  *a1 = &unk_288115A40;
  return a1;
}

void sub_271567318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D16C(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

void sub_271567334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D2FC(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_271567368(uint64_t a1)
{
  *a1 = &unk_288115750;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715673E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a1))
  {
    if (*(a1 + 76))
    {
      v5 = *(a1 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v19) = 2;
    *(&v19 + 4) = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(DWORD1(v19), 2);
    LODWORD(v19) = 1;
    *(&v19 + 4) = v9;
    v11 = v19;
    *a2 = 0;
    *(a2 + 8) = v10;
    *(a2 + 16) = HIDWORD(v6);
    *(a2 + 20) = v11;
    *(a2 + 28) = v8;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    return;
  }

  v12 = *(a1 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    *&v19 = &unk_288115A20;
    *(&v19 + 1) = v16;
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        *&v19 = &unk_288115A20;
        *(&v19 + 1) = v14;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v19 + 1) = 0;
  v20 = 0;
  *&v19 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v18);
    }
  }

LABEL_22:
  sub_27155BC54(a2, &v19);
  *&v19 = &unk_288115A20;
  v17 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_271567674(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v23 = 2;
    *&v23[4] = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(*&v23[4], 2);
    *v23 = 1;
    *&v23[4] = v9;
    v11 = *v23;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    return;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v20 = &unk_288115A20;
    v21 = v16;
    v22 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v20 = &unk_288115A20;
        v21 = v14;
        v22 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_27155BC54(v23, &v20);
  *a1 = *v23;
  v17 = v24;
  *(a1 + 8) = *&v23[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v25;
  v20 = &unk_288115A20;
  v18 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }
}

void sub_27156793C(uint64_t a1)
{
  v5[16] = *MEMORY[0x277D85DE8];
  sub_27155D2B4(v5, a1);
  sub_271567674(v4, a1);
  sub_271567674(&v3, a1);
  operator new();
}

void sub_271567A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  MEMORY[0x2743BF050](v21, 0x10A3C40ED729E16, a3, a4, a5, a6, a7, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271567AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271567AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_271567AE4(uint64_t a1, uint64_t *lpsrc)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124998, 0);
  if (!v5)
  {
    (*(v4 + 72))(v30, lpsrc, 8);
    v10 = *&v30[0];
    v12 = *(*&v30[0] + 16);
    v11 = *(*&v30[0] + 32);
    v21 = **&v30[0];
    v22 = v12;
    v23 = v11;
    *&v30[0] = 0;
    MEMORY[0x2743BF050](v10, 0xC400A2AC0F1, v13, v14, v15, v16);
    sub_2715673E0(a1, v30);
    *&result = sub_2712A2500(&v21, v30);
    return result;
  }

  v6 = v5;
  sub_27155D2B4(v29, v5);
  sub_271567674(v27, v6);
  v30[0] = v27[0];
  v30[1] = v27[1];
  v30[2] = v28;
  *&v21 = &unk_288115A40;
  if (HIDWORD(v28) <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = HIDWORD(v28);
  }

  *&v31[1] = v28;
  v31[0] = 2;
  LODWORD(v36[0]) = 1;
  *(v36 + 4) = DWORD2(v28) | (v7 << 32);
  v32 = v36[0];
  v33 = v7;
  v34 = v28;
  v35 = *(v36 + 4);
  sub_27155C30C(&v21, v31, v30);
  *&v21 = &unk_288115A40;
  sub_27157D2FC(v29);
  v8 = DWORD2(v23);
  *(a1 + 8) = DWORD2(v21);
  v9 = *(a1 + 40);
  if (v9 == -1)
  {
    if (v8 == -1)
    {
      result = *&v24;
      v20 = v25;
      *(a1 + 48) = v24;
      *(a1 + 64) = v20;
      *(a1 + 80) = v26;
      return result;
    }
  }

  else if (v8 == -1)
  {
    (off_2881337B0[v9])(v30, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_11;
  }

  *&v30[0] = a1 + 16;
  (off_2881337F0[v8])(v30);
LABEL_11:
  v18 = DWORD2(v23);
  result = *&v24;
  v19 = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v19;
  *(a1 + 80) = v26;
  *&v21 = &unk_288115750;
  if (v18 != -1)
  {
    (off_2881337B0[v18])(v30, &v22);
  }

  return result;
}

void sub_271567DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271567E10(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    sub_2715673E0(a1, &v8);
    operator new();
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271567F7C(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    sub_271567674(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_2715680E8()
{
  if ((atomic_load_explicit(&qword_28087BAA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAA0))
  {
    sub_27157AEF0();
  }

  if (byte_28087BB87 >= 0)
  {
    return &qword_28087BB70;
  }

  else
  {
    return qword_28087BB70;
  }
}

void sub_2715681B8(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_27155CC14(a1, &v3);
    operator new();
  }

  sub_27155D2B4(&v3, a1);
  operator new();
}

void sub_271568480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D2FC(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_2715684BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D548(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271568530(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288116100;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v4;
  }

  *v18 = 3;
  v5 = *(a2 + 24);
  *&v18[4] = v5;
  *v13 = *v18;
  *&v13[8] = HIDWORD(v5);
  *v18 = 1;
  *&v18[4] = v3 | (v4 << 32);
  *&v13[12] = *v18;
  *&v13[20] = v4;
  *&v13[24] = v5;
  v14 = *&v18[4];
  *a1 = &unk_288115510;
  *(a1 + 8) = 0;
  sub_271548FF0(0, v13, a1 + 16);
  if (!*&v13[24] || !*&v13[28])
  {
    v11 = *&v13[16];
    *(a1 + 48) = *v13;
    *(a1 + 64) = v11;
    *(a1 + 80) = v14;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v16;
  }

  v15 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v16);
    }
  }

LABEL_14:
  sub_271549728(&v15, v18);
  v10 = v19;
  *(a1 + 48) = *&v18[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v20;
  sub_27157D2FC(&v15);
LABEL_16:
  *a1 = &unk_288116100;
  return a1;
}

void sub_27156873C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D16C(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

void sub_271568758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D2FC(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27156878C(uint64_t a1)
{
  *a1 = &unk_288115510;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271568804(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_27154608C(a1))
  {

    sub_27157497C(a2, 0, (a1 + 72));
    return;
  }

  v4 = *(a1 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_2711308D4();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v11 = &unk_288115A20;
    v12 = v8;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a1 + 16);
      if (v6)
      {
        v11 = &unk_288115A20;
        v12 = v6;
        v13 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = &unk_288115A20;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_16:
  sub_271549728(&v11, a2);
  v11 = &unk_288115A20;
  v9 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_271568A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271568A1C(uint64_t a1, uint64_t a2)
{
  if (sub_27154608C(a2))
  {

    sub_27157497C(a1, 0, (a2 + 72));
    return;
  }

  v4 = *(a2 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_2711308D4();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    v16 = &unk_288115A20;
    v17 = v8;
    v18 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a2 + 16);
      if (v6)
      {
        v16 = &unk_288115A20;
        v17 = v6;
        v18 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = &unk_288115A20;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_16:
  sub_271549728(&v16, &v12);
  *a1 = v12;
  v9 = v14;
  *(a1 + 8) = v13;
  *(a1 + 24) = v9;
  *(a1 + 40) = v15;
  v16 = &unk_288115A20;
  v10 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_271568C68(uint64_t a1)
{
  v5[16] = *MEMORY[0x277D85DE8];
  sub_27154ACFC(v5, a1);
  sub_271568A1C(v4, a1);
  sub_271568A1C(&v3, a1);
  operator new();
}

void sub_271568DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  MEMORY[0x2743BF050](v21, 0x10A3C40ED729E16, a3, a4, a5, a6, a7, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271568DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271568DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_271568E10(uint64_t a1, uint64_t *lpsrc)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124AB8, 0);
  if (!v5)
  {
    (*(v4 + 72))(v30, lpsrc, 21);
    v10 = *&v30[0];
    v12 = *(*&v30[0] + 16);
    v11 = *(*&v30[0] + 32);
    v21 = **&v30[0];
    v22 = v12;
    v23 = v11;
    *&v30[0] = 0;
    MEMORY[0x2743BF050](v10, 0xC400A2AC0F1, v13, v14, v15, v16);
    sub_271568804(a1, v30);
    sub_2712A2E80(&v21, v30);
    return result;
  }

  v6 = v5;
  sub_27154ACFC(v29, v5);
  sub_271568A1C(v27, v6);
  v30[0] = v27[0];
  v30[1] = v27[1];
  v30[2] = v28;
  *&v21 = &unk_288116100;
  if (HIDWORD(v28) <= 0x20)
  {
    v7 = 32;
  }

  else
  {
    v7 = HIDWORD(v28);
  }

  *&v31[1] = v28;
  v31[0] = 3;
  LODWORD(v36[0]) = 1;
  *(v36 + 4) = DWORD2(v28) | (v7 << 32);
  v32 = v36[0];
  v33 = v7;
  v34 = v28;
  v35 = *(v36 + 4);
  sub_271549DD8(&v21, v31, v30);
  *&v21 = &unk_288116100;
  sub_27157D2FC(v29);
  v8 = DWORD2(v23);
  *(a1 + 8) = DWORD2(v21);
  v9 = *(a1 + 40);
  if (v9 == -1)
  {
    if (v8 == -1)
    {
      result = *&v24;
      v20 = v25;
      *(a1 + 48) = v24;
      *(a1 + 64) = v20;
      *(a1 + 80) = v26;
      return result;
    }
  }

  else if (v8 == -1)
  {
    (off_2881337B0[v9])(v30, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_11;
  }

  *&v30[0] = a1 + 16;
  (off_2881337F0[v8])(v30);
LABEL_11:
  v18 = DWORD2(v23);
  result = *&v24;
  v19 = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v19;
  *(a1 + 80) = v26;
  *&v21 = &unk_288115510;
  if (v18 != -1)
  {
    (off_2881337B0[v18])(v30, &v22);
  }

  return result;
}

void sub_2715690CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27156913C(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    sub_271568804(a1, &v8);
    operator new();
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_2715692A8(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    sub_271568A1C(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_271569414()
{
  if ((atomic_load_explicit(&qword_28087BAA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAA8))
  {
    sub_27157AFF4();
  }

  if (byte_28087BB9F >= 0)
  {
    return &qword_28087BB88;
  }

  else
  {
    return qword_28087BB88;
  }
}

void sub_2715694E4(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_27154A6D8(a1, &v3);
    operator new();
  }

  sub_27154ACFC(&v3, a1);
  operator new();
}

void sub_2715697AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D2FC(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_2715697E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D548(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156985C(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288116070;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *v18 = 3;
  v5 = *(a2 + 24);
  *&v18[4] = v5;
  *v13 = *v18;
  *&v13[8] = HIDWORD(v5);
  *v18 = 1;
  *&v18[4] = v3 | (v4 << 32);
  *&v13[12] = *v18;
  *&v13[20] = v4;
  *&v13[24] = v5;
  v14 = *&v18[4];
  *a1 = &unk_288115360;
  *(a1 + 8) = 0;
  sub_27154F348(0, v13, a1 + 16);
  if (!*&v13[24] || !*&v13[28])
  {
    v11 = *&v13[16];
    *(a1 + 48) = *v13;
    *(a1 + 64) = v11;
    *(a1 + 80) = v14;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v16;
  }

  v15 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v16);
    }
  }

LABEL_14:
  sub_27154FA80(&v15, v18);
  v10 = v19;
  *(a1 + 48) = *&v18[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v20;
  sub_27157D2FC(&v15);
LABEL_16:
  *a1 = &unk_288116070;
  return a1;
}

void sub_271569A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D16C(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

void sub_271569A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D2FC(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_271569AB8(uint64_t a1)
{
  *a1 = &unk_288115360;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271569B30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_27154608C(a1))
  {

    sub_27157497C(a2, 0, (a1 + 72));
    return;
  }

  v4 = *(a1 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_2711308D4();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v11 = &unk_288115A20;
    v12 = v8;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a1 + 16);
      if (v6)
      {
        v11 = &unk_288115A20;
        v12 = v6;
        v13 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = &unk_288115A20;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_16:
  sub_27154FA80(&v11, a2);
  v11 = &unk_288115A20;
  v9 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_271569D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271569D48(uint64_t a1, uint64_t a2)
{
  if (sub_27154608C(a2))
  {

    sub_27157497C(a1, 0, (a2 + 72));
    return;
  }

  v4 = *(a2 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_2711308D4();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    v16 = &unk_288115A20;
    v17 = v8;
    v18 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a2 + 16);
      if (v6)
      {
        v16 = &unk_288115A20;
        v17 = v6;
        v18 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = &unk_288115A20;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_16:
  sub_27154FA80(&v16, &v12);
  *a1 = v12;
  v9 = v14;
  *(a1 + 8) = v13;
  *(a1 + 24) = v9;
  *(a1 + 40) = v15;
  v16 = &unk_288115A20;
  v10 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_271569F94(uint64_t a1)
{
  v5[16] = *MEMORY[0x277D85DE8];
  sub_271551064(v5, a1);
  sub_271569D48(v4, a1);
  sub_271569D48(&v3, a1);
  operator new();
}

void sub_27156A0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  MEMORY[0x2743BF050](v21, 0x10A3C40ED729E16, a3, a4, a5, a6, a7, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156A104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156A11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_27156A13C(uint64_t a1, uint64_t *lpsrc)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124AA0, 0);
  if (!v5)
  {
    (*(v4 + 72))(v30, lpsrc, 22);
    v10 = *&v30[0];
    v12 = *(*&v30[0] + 16);
    v11 = *(*&v30[0] + 32);
    v21 = **&v30[0];
    v22 = v12;
    v23 = v11;
    *&v30[0] = 0;
    MEMORY[0x2743BF050](v10, 0xC400A2AC0F1, v13, v14, v15, v16);
    sub_271569B30(a1, v30);
    sub_2712A3624(&v21, v30);
    return result;
  }

  v6 = v5;
  sub_271551064(v29, v5);
  sub_271569D48(v27, v6);
  v30[0] = v27[0];
  v30[1] = v27[1];
  v30[2] = v28;
  *&v21 = &unk_288116070;
  if (HIDWORD(v28) <= 0x10)
  {
    v7 = 16;
  }

  else
  {
    v7 = HIDWORD(v28);
  }

  *&v31[1] = v28;
  v31[0] = 3;
  LODWORD(v36[0]) = 1;
  *(v36 + 4) = DWORD2(v28) | (v7 << 32);
  v32 = v36[0];
  v33 = v7;
  v34 = v28;
  v35 = *(v36 + 4);
  sub_271550138(&v21, v31, v30);
  *&v21 = &unk_288116070;
  sub_27157D2FC(v29);
  v8 = DWORD2(v23);
  *(a1 + 8) = DWORD2(v21);
  v9 = *(a1 + 40);
  if (v9 == -1)
  {
    if (v8 == -1)
    {
      result = *&v24;
      v20 = v25;
      *(a1 + 48) = v24;
      *(a1 + 64) = v20;
      *(a1 + 80) = v26;
      return result;
    }
  }

  else if (v8 == -1)
  {
    (off_2881337B0[v9])(v30, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_11;
  }

  *&v30[0] = a1 + 16;
  (off_2881337F0[v8])(v30);
LABEL_11:
  v18 = DWORD2(v23);
  result = *&v24;
  v19 = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v19;
  *(a1 + 80) = v26;
  *&v21 = &unk_288115360;
  if (v18 != -1)
  {
    (off_2881337B0[v18])(v30, &v22);
  }

  return result;
}

void sub_27156A3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27156A468(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    sub_271569B30(a1, &v8);
    operator new();
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27156A5D4(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    sub_271569D48(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_27156A740()
{
  if ((atomic_load_explicit(&qword_28087BAB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAB0))
  {
    sub_27157B0F8();
  }

  if (byte_28087BBB7 >= 0)
  {
    return &qword_28087BBA0;
  }

  else
  {
    return qword_28087BBA0;
  }
}

void sub_27156A810(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_271550A40(a1, &v3);
    operator new();
  }

  sub_271551064(&v3, a1);
  operator new();
}

void sub_27156AAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D2FC(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_27156AB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D548(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156AB88(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115FE0;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v4;
  }

  *v18 = 4;
  v5 = *(a2 + 24);
  *&v18[4] = v5;
  *v13 = *v18;
  *&v13[8] = HIDWORD(v5);
  *v18 = 1;
  *&v18[4] = v3 | (v4 << 32);
  *&v13[12] = *v18;
  *&v13[20] = v4;
  *&v13[24] = v5;
  v14 = *&v18[4];
  *a1 = &unk_288115480;
  *(a1 + 8) = 0;
  sub_27154B108(0, v13, a1 + 16);
  if (!*&v13[24] || !*&v13[28])
  {
    v11 = *&v13[16];
    *(a1 + 48) = *v13;
    *(a1 + 64) = v11;
    *(a1 + 80) = v14;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v16;
  }

  v15 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v16);
    }
  }

LABEL_14:
  sub_27154B838(v18, &v15);
  v10 = v19;
  *(a1 + 48) = *&v18[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v20;
  sub_27157D2FC(&v15);
LABEL_16:
  *a1 = &unk_288115FE0;
  return a1;
}

void sub_27156AD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D16C(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

void sub_27156ADB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D2FC(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27156ADE4(uint64_t a1)
{
  *a1 = &unk_288115480;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27156AE5C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a1))
  {
    if (*(a1 + 76))
    {
      v5 = *(a1 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v19) = 4;
    *(&v19 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v19), 4);
    LODWORD(v19) = 1;
    *(&v19 + 4) = v9;
    v11 = v19;
    *a2 = 0;
    *(a2 + 8) = v10;
    *(a2 + 16) = HIDWORD(v6);
    *(a2 + 20) = v11;
    *(a2 + 28) = v8;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    return;
  }

  v12 = *(a1 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    *&v19 = &unk_288115A20;
    *(&v19 + 1) = v16;
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        *&v19 = &unk_288115A20;
        *(&v19 + 1) = v14;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v19 + 1) = 0;
  v20 = 0;
  *&v19 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v18);
    }
  }

LABEL_22:
  sub_27154B838(a2, &v19);
  *&v19 = &unk_288115A20;
  v17 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_27156B0F0(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v23 = 4;
    *&v23[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v23[4], 4);
    *v23 = 1;
    *&v23[4] = v9;
    v11 = *v23;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    return;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v20 = &unk_288115A20;
    v21 = v16;
    v22 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v20 = &unk_288115A20;
        v21 = v14;
        v22 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_27154B838(v23, &v20);
  *a1 = *v23;
  v17 = v24;
  *(a1 + 8) = *&v23[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v25;
  v20 = &unk_288115A20;
  v18 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }
}

void sub_27156B3B8(uint64_t a1)
{
  v5[16] = *MEMORY[0x277D85DE8];
  sub_27154CE18(v5, a1);
  sub_27156B0F0(v4, a1);
  sub_27156B0F0(&v3, a1);
  operator new();
}

void sub_27156B500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  MEMORY[0x2743BF050](v21, 0x10A3C40ED729E16, a3, a4, a5, a6, a7, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156B52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156B544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_27156B564(uint64_t a1, uint64_t *lpsrc)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124A88, 0);
  if (!v5)
  {
    (*(v4 + 72))(v30, lpsrc, 25);
    v10 = *&v30[0];
    v12 = *(*&v30[0] + 16);
    v11 = *(*&v30[0] + 32);
    v21 = **&v30[0];
    v22 = v12;
    v23 = v11;
    *&v30[0] = 0;
    MEMORY[0x2743BF050](v10, 0xC400A2AC0F1, v13, v14, v15, v16);
    sub_27156AE5C(a1, v30);
    sub_2712A6008(&v21, v30);
    return result;
  }

  v6 = v5;
  sub_27154CE18(v29, v5);
  sub_27156B0F0(v27, v6);
  v30[0] = v27[0];
  v30[1] = v27[1];
  v30[2] = v28;
  *&v21 = &unk_288115FE0;
  if (HIDWORD(v28) <= 0x20)
  {
    v7 = 32;
  }

  else
  {
    v7 = HIDWORD(v28);
  }

  *&v31[1] = v28;
  v31[0] = 4;
  LODWORD(v36[0]) = 1;
  *(v36 + 4) = DWORD2(v28) | (v7 << 32);
  v32 = v36[0];
  v33 = v7;
  v34 = v28;
  v35 = *(v36 + 4);
  sub_27154BE7C(&v21, 25, v31, v30);
  *&v21 = &unk_288115FE0;
  sub_27157D2FC(v29);
  v8 = DWORD2(v23);
  *(a1 + 8) = DWORD2(v21);
  v9 = *(a1 + 40);
  if (v9 == -1)
  {
    if (v8 == -1)
    {
      result = *&v24;
      v20 = v25;
      *(a1 + 48) = v24;
      *(a1 + 64) = v20;
      *(a1 + 80) = v26;
      return result;
    }
  }

  else if (v8 == -1)
  {
    (off_2881337B0[v9])(v30, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_11;
  }

  *&v30[0] = a1 + 16;
  (off_2881337F0[v8])(v30);
LABEL_11:
  v18 = DWORD2(v23);
  result = *&v24;
  v19 = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v19;
  *(a1 + 80) = v26;
  *&v21 = &unk_288115480;
  if (v18 != -1)
  {
    (off_2881337B0[v18])(v30, &v22);
  }

  return result;
}

void sub_27156B824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27156B894(uint64_t a1, int a2)
{
  if (a2 == 25)
  {
LABEL_10:
    sub_27156AE5C(a1, &v8);
    operator new();
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27156BA00(uint64_t a1, int a2)
{
  if (a2 == 25)
  {
LABEL_10:
    sub_27156B0F0(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_27156BB6C()
{
  if ((atomic_load_explicit(&qword_28087BAB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAB8))
  {
    sub_27157B1FC();
  }

  if (byte_28087BBCF >= 0)
  {
    return &qword_28087BBB8;
  }

  else
  {
    return qword_28087BBB8;
  }
}

void sub_27156BC3C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_27154C774(&v3, a1);
    operator new();
  }

  sub_27154CE18(&v3, a1);
  operator new();
}

void sub_27156BF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D2FC(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_27156BF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D548(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156BFC0(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115EC0;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *v18 = 4;
  v5 = *(a2 + 24);
  *&v18[4] = v5;
  *v13 = *v18;
  *&v13[8] = HIDWORD(v5);
  *v18 = 1;
  *&v18[4] = v3 | (v4 << 32);
  *&v13[12] = *v18;
  *&v13[20] = v4;
  *&v13[24] = v5;
  v14 = *&v18[4];
  *a1 = &unk_288115870;
  *(a1 + 8) = 0;
  sub_2715575E4(0, v13, a1 + 16);
  if (!*&v13[24] || !*&v13[28])
  {
    v11 = *&v13[16];
    *(a1 + 48) = *v13;
    *(a1 + 64) = v11;
    *(a1 + 80) = v14;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v16;
  }

  v15 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v16);
    }
  }

LABEL_14:
  sub_271551BA4(v18, &v15);
  v10 = v19;
  *(a1 + 48) = *&v18[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v20;
  sub_27157D2FC(&v15);
LABEL_16:
  *a1 = &unk_288115EC0;
  return a1;
}

void sub_27156C1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D16C(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

void sub_27156C1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D2FC(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27156C21C(uint64_t a1)
{
  *a1 = &unk_288115870;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27156C294(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a1))
  {
    if (*(a1 + 76))
    {
      v5 = *(a1 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v19) = 4;
    *(&v19 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v19), 4);
    LODWORD(v19) = 1;
    *(&v19 + 4) = v9;
    v11 = v19;
    *a2 = 0;
    *(a2 + 8) = v10;
    *(a2 + 16) = HIDWORD(v6);
    *(a2 + 20) = v11;
    *(a2 + 28) = v8;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    return;
  }

  v12 = *(a1 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    *&v19 = &unk_288115A20;
    *(&v19 + 1) = v16;
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        *&v19 = &unk_288115A20;
        *(&v19 + 1) = v14;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v19 + 1) = 0;
  v20 = 0;
  *&v19 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v18);
    }
  }

LABEL_22:
  sub_271551BA4(a2, &v19);
  *&v19 = &unk_288115A20;
  v17 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_27156C528(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v23 = 4;
    *&v23[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v23[4], 4);
    *v23 = 1;
    *&v23[4] = v9;
    v11 = *v23;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    return;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v20 = &unk_288115A20;
    v21 = v16;
    v22 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v20 = &unk_288115A20;
        v21 = v14;
        v22 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_271551BA4(v23, &v20);
  *a1 = *v23;
  v17 = v24;
  *(a1 + 8) = *&v23[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v25;
  v20 = &unk_288115A20;
  v18 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }
}

void sub_27156C7F0(uint64_t a1)
{
  v5[16] = *MEMORY[0x277D85DE8];
  sub_271558FF0(v5, a1);
  sub_27156C528(v4, a1);
  sub_27156C528(&v3, a1);
  operator new();
}

void sub_27156C934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  MEMORY[0x2743BF050](v21, 0x10A3C40ED729E16, a3, a4, a5, a6, a7, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156C960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156C978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_27156C998(uint64_t a1, uint64_t *lpsrc)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124A58, 0);
  if (!v5)
  {
    (*(v4 + 72))(v30, lpsrc, 31);
    v10 = *&v30[0];
    v12 = *(*&v30[0] + 16);
    v11 = *(*&v30[0] + 32);
    v21 = **&v30[0];
    v22 = v12;
    v23 = v11;
    *&v30[0] = 0;
    MEMORY[0x2743BF050](v10, 0xC400A2AC0F1, v13, v14, v15, v16);
    sub_27156C294(a1, v30);
    *&v27[0] = &v21;
    *(&v27[0] + 1) = v30;
    *&result = sub_2712A6EAC(v27);
    return result;
  }

  v6 = v5;
  sub_271558FF0(v29, v5);
  sub_27156C528(v27, v6);
  v30[0] = v27[0];
  v30[1] = v27[1];
  v30[2] = v28;
  *&v21 = &unk_288115EC0;
  if (HIDWORD(v28) <= 0x10)
  {
    v7 = 16;
  }

  else
  {
    v7 = HIDWORD(v28);
  }

  *&v31[1] = v28;
  v31[0] = 4;
  LODWORD(v36[0]) = 1;
  *(v36 + 4) = DWORD2(v28) | (v7 << 32);
  v32 = v36[0];
  v33 = v7;
  v34 = v28;
  v35 = *(v36 + 4);
  sub_271558040(&v21, v31, v30);
  *&v21 = &unk_288115EC0;
  sub_27157D2FC(v29);
  v8 = DWORD2(v23);
  *(a1 + 8) = DWORD2(v21);
  v9 = *(a1 + 40);
  if (v9 == -1)
  {
    if (v8 == -1)
    {
      result = *&v24;
      v20 = v25;
      *(a1 + 48) = v24;
      *(a1 + 64) = v20;
      *(a1 + 80) = v26;
      return result;
    }
  }

  else if (v8 == -1)
  {
    (off_2881337B0[v9])(v30, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_11;
  }

  *&v30[0] = a1 + 16;
  (off_2881337F0[v8])(v30);
LABEL_11:
  v18 = DWORD2(v23);
  result = *&v24;
  v19 = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v19;
  *(a1 + 80) = v26;
  *&v21 = &unk_288115870;
  if (v18 != -1)
  {
    (off_2881337B0[v18])(v30, &v22);
  }

  return result;
}

void sub_27156CC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27156CCCC(uint64_t a1, int a2)
{
  if (a2 == 31)
  {
LABEL_10:
    sub_27156C294(a1, &v8);
    operator new();
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27156CE38(uint64_t a1, int a2)
{
  if (a2 == 31)
  {
LABEL_10:
    sub_27156C528(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_27156CFA4()
{
  if ((atomic_load_explicit(&qword_28087BAC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAC0))
  {
    sub_27157B300();
  }

  if (byte_28087BBE7 >= 0)
  {
    return &qword_28087BBD0;
  }

  else
  {
    return qword_28087BBD0;
  }
}

void sub_27156D074(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_271558950(a1, &v3);
    operator new();
  }

  sub_271558FF0(&v3, a1);
  operator new();
}

void sub_27156D33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D2FC(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_27156D378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D548(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156D3EC(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115E30;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v4;
  }

  *v18 = 4;
  v5 = *(a2 + 24);
  *&v18[4] = v5;
  *v13 = *v18;
  *&v13[8] = HIDWORD(v5);
  *v18 = 1;
  *&v18[4] = v3 | (v4 << 32);
  *&v13[12] = *v18;
  *&v13[20] = v4;
  *&v13[24] = v5;
  v14 = *&v18[4];
  *a1 = &unk_2881156C0;
  *(a1 + 8) = 0;
  sub_27155D6C0(0, v13, a1 + 16);
  if (!*&v13[24] || !*&v13[28])
  {
    v11 = *&v13[16];
    *(a1 + 48) = *v13;
    *(a1 + 64) = v11;
    *(a1 + 80) = v14;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v16;
  }

  v15 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v16);
    }
  }

LABEL_14:
  sub_27155DDF4(v18, &v15);
  v10 = v19;
  *(a1 + 48) = *&v18[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v20;
  sub_27157D2FC(&v15);
LABEL_16:
  *a1 = &unk_288115E30;
  return a1;
}

void sub_27156D5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D16C(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

void sub_27156D614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D2FC(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27156D648(uint64_t a1)
{
  *a1 = &unk_2881156C0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27156D6C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a1))
  {
    if (*(a1 + 76))
    {
      v5 = *(a1 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v19) = 4;
    *(&v19 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v19), 4);
    LODWORD(v19) = 1;
    *(&v19 + 4) = v9;
    v11 = v19;
    *a2 = 0;
    *(a2 + 8) = v10;
    *(a2 + 16) = HIDWORD(v6);
    *(a2 + 20) = v11;
    *(a2 + 28) = v8;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    return;
  }

  v12 = *(a1 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    *&v19 = &unk_288115A20;
    *(&v19 + 1) = v16;
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        *&v19 = &unk_288115A20;
        *(&v19 + 1) = v14;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v19 + 1) = 0;
  v20 = 0;
  *&v19 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v18);
    }
  }

LABEL_22:
  sub_27155DDF4(a2, &v19);
  *&v19 = &unk_288115A20;
  v17 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_27156D954(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v23 = 4;
    *&v23[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v23[4], 4);
    *v23 = 1;
    *&v23[4] = v9;
    v11 = *v23;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    return;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v20 = &unk_288115A20;
    v21 = v16;
    v22 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v20 = &unk_288115A20;
        v21 = v14;
        v22 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_27155DDF4(v23, &v20);
  *a1 = *v23;
  v17 = v24;
  *(a1 + 8) = *&v23[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v25;
  v20 = &unk_288115A20;
  v18 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }
}

void sub_27156DC1C(uint64_t a1)
{
  v5[16] = *MEMORY[0x277D85DE8];
  sub_27155F454(v5, a1);
  sub_27156D954(v4, a1);
  sub_27156D954(&v3, a1);
  operator new();
}

void sub_27156DD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  MEMORY[0x2743BF050](v21, 0x10A3C40ED729E16, a3, a4, a5, a6, a7, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156DD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156DDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_27156DDC4(uint64_t a1, uint64_t *lpsrc)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124A40, 0);
  if (!v5)
  {
    (*(v4 + 72))(v30, lpsrc, 32);
    v10 = *&v30[0];
    v12 = *(*&v30[0] + 16);
    v11 = *(*&v30[0] + 32);
    v21 = **&v30[0];
    v22 = v12;
    v23 = v11;
    *&v30[0] = 0;
    MEMORY[0x2743BF050](v10, 0xC400A2AC0F1, v13, v14, v15, v16);
    sub_27156D6C0(a1, v30);
    sub_271245B78(&v21, v30);
    return result;
  }

  v6 = v5;
  sub_27155F454(v29, v5);
  sub_27156D954(v27, v6);
  v30[0] = v27[0];
  v30[1] = v27[1];
  v30[2] = v28;
  *&v21 = &unk_288115E30;
  if (HIDWORD(v28) <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = HIDWORD(v28);
  }

  *&v31[1] = v28;
  v31[0] = 4;
  LODWORD(v36[0]) = 1;
  *(v36 + 4) = DWORD2(v28) | (v7 << 32);
  v32 = v36[0];
  v33 = v7;
  v34 = v28;
  v35 = *(v36 + 4);
  sub_27155E4AC(&v21, v31, v30);
  *&v21 = &unk_288115E30;
  sub_27157D2FC(v29);
  v8 = DWORD2(v23);
  *(a1 + 8) = DWORD2(v21);
  v9 = *(a1 + 40);
  if (v9 == -1)
  {
    if (v8 == -1)
    {
      result = *&v24;
      v20 = v25;
      *(a1 + 48) = v24;
      *(a1 + 64) = v20;
      *(a1 + 80) = v26;
      return result;
    }
  }

  else if (v8 == -1)
  {
    (off_2881337B0[v9])(v30, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_11;
  }

  *&v30[0] = a1 + 16;
  (off_2881337F0[v8])(v30);
LABEL_11:
  v18 = DWORD2(v23);
  result = *&v24;
  v19 = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v19;
  *(a1 + 80) = v26;
  *&v21 = &unk_2881156C0;
  if (v18 != -1)
  {
    (off_2881337B0[v18])(v30, &v22);
  }

  return result;
}

void sub_27156E080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27156E0F0(uint64_t a1, int a2)
{
  if (a2 == 32)
  {
LABEL_10:
    sub_27156D6C0(a1, &v8);
    operator new();
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27156E25C(uint64_t a1, int a2)
{
  if (a2 == 32)
  {
LABEL_10:
    sub_27156D954(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_27156E3C8()
{
  if ((atomic_load_explicit(&qword_28087BAC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAC8))
  {
    sub_27157B404();
  }

  if (byte_28087BBFF >= 0)
  {
    return &qword_28087BBE8;
  }

  else
  {
    return qword_28087BBE8;
  }
}

void sub_27156E498(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_27155EDB4(a1, &v3);
    operator new();
  }

  sub_27155F454(&v3, a1);
  operator new();
}

void sub_27156E760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D2FC(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_27156E79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D548(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156E810(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115DA0;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v4;
  }

  *v18 = 4;
  v5 = *(a2 + 24);
  *&v18[4] = v5;
  *v13 = *v18;
  *&v13[8] = HIDWORD(v5);
  *v18 = 1;
  *&v18[4] = v3 | (v4 << 32);
  *&v13[12] = *v18;
  *&v13[20] = v4;
  *&v13[24] = v5;
  v14 = *&v18[4];
  *a1 = &unk_288115480;
  *(a1 + 8) = 0;
  sub_27154B108(0, v13, a1 + 16);
  if (!*&v13[24] || !*&v13[28])
  {
    v11 = *&v13[16];
    *(a1 + 48) = *v13;
    *(a1 + 64) = v11;
    *(a1 + 80) = v14;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v16;
  }

  v15 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v16);
    }
  }

LABEL_14:
  sub_27154B838(v18, &v15);
  v10 = v19;
  *(a1 + 48) = *&v18[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v20;
  sub_27157D2FC(&v15);
LABEL_16:
  *a1 = &unk_288115DA0;
  return a1;
}

void sub_27156EA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D16C(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

void sub_27156EA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D2FC(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27156EA6C(uint64_t a1)
{
  *a1 = &unk_288115480;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27156EAE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a1))
  {
    if (*(a1 + 76))
    {
      v5 = *(a1 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v19) = 4;
    *(&v19 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v19), 4);
    LODWORD(v19) = 1;
    *(&v19 + 4) = v9;
    v11 = v19;
    *a2 = 0;
    *(a2 + 8) = v10;
    *(a2 + 16) = HIDWORD(v6);
    *(a2 + 20) = v11;
    *(a2 + 28) = v8;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    return;
  }

  v12 = *(a1 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    *&v19 = &unk_288115A20;
    *(&v19 + 1) = v16;
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        *&v19 = &unk_288115A20;
        *(&v19 + 1) = v14;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v19 + 1) = 0;
  v20 = 0;
  *&v19 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v18);
    }
  }

LABEL_22:
  sub_27154B838(a2, &v19);
  *&v19 = &unk_288115A20;
  v17 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_27156ED78(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v23 = 4;
    *&v23[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v23[4], 4);
    *v23 = 1;
    *&v23[4] = v9;
    v11 = *v23;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    return;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v20 = &unk_288115A20;
    v21 = v16;
    v22 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v20 = &unk_288115A20;
        v21 = v14;
        v22 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_27154B838(v23, &v20);
  *a1 = *v23;
  v17 = v24;
  *(a1 + 8) = *&v23[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v25;
  v20 = &unk_288115A20;
  v18 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }
}

void sub_27156F040(uint64_t a1)
{
  v5[16] = *MEMORY[0x277D85DE8];
  sub_27154CE18(v5, a1);
  sub_27156ED78(v4, a1);
  sub_27156ED78(&v3, a1);
  operator new();
}

void sub_27156F188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  MEMORY[0x2743BF050](v21, 0x10A3C40ED729E16, a3, a4, a5, a6, a7, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156F1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156F1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_27156F1EC(uint64_t a1, uint64_t *lpsrc)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124A28, 0);
  if (!v5)
  {
    (*(v4 + 72))(v30, lpsrc, 37);
    v10 = *&v30[0];
    v12 = *(*&v30[0] + 16);
    v11 = *(*&v30[0] + 32);
    v21 = **&v30[0];
    v22 = v12;
    v23 = v11;
    *&v30[0] = 0;
    MEMORY[0x2743BF050](v10, 0xC400A2AC0F1, v13, v14, v15, v16);
    sub_27156EAE4(a1, v30);
    sub_2712A6008(&v21, v30);
    return result;
  }

  v6 = v5;
  sub_27154CE18(v29, v5);
  sub_27156ED78(v27, v6);
  v30[0] = v27[0];
  v30[1] = v27[1];
  v30[2] = v28;
  *&v21 = &unk_288115DA0;
  if (HIDWORD(v28) <= 0x20)
  {
    v7 = 32;
  }

  else
  {
    v7 = HIDWORD(v28);
  }

  *&v31[1] = v28;
  v31[0] = 4;
  LODWORD(v36[0]) = 1;
  *(v36 + 4) = DWORD2(v28) | (v7 << 32);
  v32 = v36[0];
  v33 = v7;
  v34 = v28;
  v35 = *(v36 + 4);
  sub_27154BE7C(&v21, 37, v31, v30);
  *&v21 = &unk_288115DA0;
  sub_27157D2FC(v29);
  v8 = DWORD2(v23);
  *(a1 + 8) = DWORD2(v21);
  v9 = *(a1 + 40);
  if (v9 == -1)
  {
    if (v8 == -1)
    {
      result = *&v24;
      v20 = v25;
      *(a1 + 48) = v24;
      *(a1 + 64) = v20;
      *(a1 + 80) = v26;
      return result;
    }
  }

  else if (v8 == -1)
  {
    (off_2881337B0[v9])(v30, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_11;
  }

  *&v30[0] = a1 + 16;
  (off_2881337F0[v8])(v30);
LABEL_11:
  v18 = DWORD2(v23);
  result = *&v24;
  v19 = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v19;
  *(a1 + 80) = v26;
  *&v21 = &unk_288115480;
  if (v18 != -1)
  {
    (off_2881337B0[v18])(v30, &v22);
  }

  return result;
}

void sub_27156F4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27156F51C(uint64_t a1, int a2)
{
  if (a2 == 37)
  {
LABEL_10:
    sub_27156EAE4(a1, &v8);
    operator new();
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27156F688(uint64_t a1, int a2)
{
  if (a2 == 37)
  {
LABEL_10:
    sub_27156ED78(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_27156F7F4()
{
  if ((atomic_load_explicit(&qword_28087BAD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAD0))
  {
    sub_27157B508();
  }

  if (byte_28087BC17 >= 0)
  {
    return &qword_28087BC00;
  }

  else
  {
    return qword_28087BC00;
  }
}

void sub_27156F8C4(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_27154C774(&v3, a1);
    operator new();
  }

  sub_27154CE18(&v3, a1);
  operator new();
}

void sub_27156FB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D2FC(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_27156FBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D548(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156FC48(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115D10;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *v18 = 4;
  v5 = *(a2 + 24);
  *&v18[4] = v5;
  *v13 = *v18;
  *&v13[8] = HIDWORD(v5);
  *v18 = 1;
  *&v18[4] = v3 | (v4 << 32);
  *&v13[12] = *v18;
  *&v13[20] = v4;
  *&v13[24] = v5;
  v14 = *&v18[4];
  *a1 = &unk_2881152D0;
  *(a1 + 8) = 0;
  sub_271551470(0, v13, a1 + 16);
  if (!*&v13[24] || !*&v13[28])
  {
    v11 = *&v13[16];
    *(a1 + 48) = *v13;
    *(a1 + 64) = v11;
    *(a1 + 80) = v14;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v16;
  }

  v15 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v16);
    }
  }

LABEL_14:
  sub_271551BA4(v18, &v15);
  v10 = v19;
  *(a1 + 48) = *&v18[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v20;
  sub_27157D2FC(&v15);
LABEL_16:
  *a1 = &unk_288115D10;
  return a1;
}

void sub_27156FE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D16C(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

void sub_27156FE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27157D2FC(va);
  sub_271545618(v13 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27156FEA4(uint64_t a1)
{
  *a1 = &unk_2881152D0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27156FF1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a1))
  {
    if (*(a1 + 76))
    {
      v5 = *(a1 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v19) = 4;
    *(&v19 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v19), 4);
    LODWORD(v19) = 1;
    *(&v19 + 4) = v9;
    v11 = v19;
    *a2 = 0;
    *(a2 + 8) = v10;
    *(a2 + 16) = HIDWORD(v6);
    *(a2 + 20) = v11;
    *(a2 + 28) = v8;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    return;
  }

  v12 = *(a1 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    *&v19 = &unk_288115A20;
    *(&v19 + 1) = v16;
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        *&v19 = &unk_288115A20;
        *(&v19 + 1) = v14;
        v20 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v19 + 1) = 0;
  v20 = 0;
  *&v19 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v18);
    }
  }

LABEL_22:
  sub_271551BA4(a2, &v19);
  *&v19 = &unk_288115A20;
  v17 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_2715701B0(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v23 = 4;
    *&v23[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v23[4], 4);
    *v23 = 1;
    *&v23[4] = v9;
    v11 = *v23;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    return;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v20 = &unk_288115A20;
    v21 = v16;
    v22 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v20 = &unk_288115A20;
        v21 = v14;
        v22 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_271551BA4(v23, &v20);
  *a1 = *v23;
  v17 = v24;
  *(a1 + 8) = *&v23[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v25;
  v20 = &unk_288115A20;
  v18 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }
}

void sub_271570478(uint64_t a1)
{
  v5[16] = *MEMORY[0x277D85DE8];
  sub_271553204(v5, a1);
  sub_2715701B0(v4, a1);
  sub_2715701B0(&v3, a1);
  operator new();
}

void sub_2715705BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  MEMORY[0x2743BF050](v21, 0x10A3C40ED729E16, a3, a4, a5, a6, a7, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_2715705E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271570600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_271570620(uint64_t a1, uint64_t *lpsrc)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124A10, 0);
  if (!v5)
  {
    (*(v4 + 72))(v30, lpsrc, 38);
    v10 = *&v30[0];
    v12 = *(*&v30[0] + 16);
    v11 = *(*&v30[0] + 32);
    v21 = **&v30[0];
    v22 = v12;
    v23 = v11;
    *&v30[0] = 0;
    MEMORY[0x2743BF050](v10, 0xC400A2AC0F1, v13, v14, v15, v16);
    sub_27156FF1C(a1, v30);
    sub_271244900(&v21, v30);
    return result;
  }

  v6 = v5;
  sub_271553204(v29, v5);
  sub_2715701B0(v27, v6);
  v30[0] = v27[0];
  v30[1] = v27[1];
  v30[2] = v28;
  *&v21 = &unk_288115D10;
  if (HIDWORD(v28) <= 0x10)
  {
    v7 = 16;
  }

  else
  {
    v7 = HIDWORD(v28);
  }

  *&v31[1] = v28;
  v31[0] = 4;
  LODWORD(v36[0]) = 1;
  *(v36 + 4) = DWORD2(v28) | (v7 << 32);
  v32 = v36[0];
  v33 = v7;
  v34 = v28;
  v35 = *(v36 + 4);
  sub_27155225C(&v21, v31, v30);
  *&v21 = &unk_288115D10;
  sub_27157D2FC(v29);
  v8 = DWORD2(v23);
  *(a1 + 8) = DWORD2(v21);
  v9 = *(a1 + 40);
  if (v9 == -1)
  {
    if (v8 == -1)
    {
      result = *&v24;
      v20 = v25;
      *(a1 + 48) = v24;
      *(a1 + 64) = v20;
      *(a1 + 80) = v26;
      return result;
    }
  }

  else if (v8 == -1)
  {
    (off_2881337B0[v9])(v30, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_11;
  }

  *&v30[0] = a1 + 16;
  (off_2881337F0[v8])(v30);
LABEL_11:
  v18 = DWORD2(v23);
  result = *&v24;
  v19 = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v19;
  *(a1 + 80) = v26;
  *&v21 = &unk_2881152D0;
  if (v18 != -1)
  {
    (off_2881337B0[v18])(v30, &v22);
  }

  return result;
}

void sub_2715708DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157094C(uint64_t a1, int a2)
{
  if (a2 == 38)
  {
LABEL_10:
    sub_27156FF1C(a1, &v8);
    operator new();
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271570AB8(uint64_t a1, int a2)
{
  if (a2 == 38)
  {
LABEL_10:
    sub_2715701B0(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_271570C24()
{
  if ((atomic_load_explicit(&qword_28087BAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAD8))
  {
    sub_27157B60C();
  }

  if (byte_28087BC2F >= 0)
  {
    return &qword_28087BC18;
  }

  else
  {
    return qword_28087BC18;
  }
}

void sub_271570CF4(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_271552B64(a1, &v3);
    operator new();
  }

  sub_271553204(&v3, a1);
  operator new();
}

void sub_271570FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D2FC(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_271570FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(v12);
  sub_27157D548(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27157106C@<X0>(_DWORD *a1@<X1>, char *a2@<X2>, unint64_t a3@<X8>)
{
  v3 = a3;
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = 2 * (*a1 != 0);
  LODWORD(a3) = v4 * *a1;
  if (a3 <= 0x20)
  {
    LODWORD(a3) = 32;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  v7 = *a2;
  if (a1[1])
  {
    a3 = a3;
  }

  else
  {
    a3 = 32;
  }

  *v10 = 2;
  *&v10[4] = v5;
  *&v10[8] = v6;
  LODWORD(v12[0]) = 1;
  *(v12 + 4) = v4 & 0x1FFFFFFFFLL | ((a3 >> 1) << 33);
  *&v10[12] = v12[0];
  *&v10[20] = a3;
  *&v10[24] = v5;
  v11 = *(v12 + 4);
  LOBYTE(v12[0]) = v7;
  *v3 = &unk_2881155A0;
  *(v3 + 8) = 0;
  sub_271546E30(0, v10, v3 + 16);
  if (*&v10[24] && *&v10[28])
  {
    sub_2715472F0(0, v3 + 16, v3 + 48);
  }

  else
  {
    v8 = *&v10[16];
    *(v3 + 48) = *v10;
    *(v3 + 64) = v8;
    *(v3 + 80) = v11;
  }

  result = sub_271547A6C(v3, v12);
  *v3 = &unk_288115B60;
  return result;
}

uint64_t sub_2715711F4@<X0>(_DWORD *a1@<X1>, char *a2@<X2>, unint64_t a3@<X8>)
{
  v3 = a3;
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = 4 * (*a1 != 0);
  LODWORD(a3) = v4 * *a1;
  if (a3 <= 0x20)
  {
    LODWORD(a3) = 32;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  v7 = *a2;
  if (a1[1])
  {
    a3 = a3;
  }

  else
  {
    a3 = 32;
  }

  *v10 = 4;
  *&v10[4] = v5;
  *&v10[8] = v6;
  LODWORD(v12[0]) = 1;
  *(v12 + 4) = v4 & 0x3FFFFFFFFLL | ((a3 >> 2) << 34);
  *&v10[12] = v12[0];
  *&v10[20] = a3;
  *&v10[24] = v5;
  v11 = *(v12 + 4);
  LOBYTE(v12[0]) = v7;
  *v3 = &unk_288115480;
  *(v3 + 8) = 0;
  sub_27154B108(0, v10, v3 + 16);
  if (*&v10[24] && *&v10[28])
  {
    sub_27154B5C8(0, v3 + 16, v3 + 48);
  }

  else
  {
    v8 = *&v10[16];
    *(v3 + 48) = *v10;
    *(v3 + 64) = v8;
    *(v3 + 80) = v11;
  }

  result = sub_27154BD44(v3, v12);
  *v3 = &unk_288115FE0;
  return result;
}

uint64_t sub_27157137C@<X0>(_DWORD *a1@<X1>, char *a2@<X2>, unint64_t a3@<X8>)
{
  v3 = a3;
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = 4 * (*a1 != 0);
  LODWORD(a3) = v4 * *a1;
  if (a3 <= 0x20)
  {
    LODWORD(a3) = 32;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  v7 = *a2;
  if (a1[1])
  {
    a3 = a3;
  }

  else
  {
    a3 = 32;
  }

  *v10 = 4;
  *&v10[4] = v5;
  *&v10[8] = v6;
  LODWORD(v12[0]) = 1;
  *(v12 + 4) = v4 & 0x3FFFFFFFFLL | ((a3 >> 2) << 34);
  *&v10[12] = v12[0];
  *&v10[20] = a3;
  *&v10[24] = v5;
  v11 = *(v12 + 4);
  LOBYTE(v12[0]) = v7;
  *v3 = &unk_288115480;
  *(v3 + 8) = 0;
  sub_27154B108(0, v10, v3 + 16);
  if (*&v10[24] && *&v10[28])
  {
    sub_27154B5C8(0, v3 + 16, v3 + 48);
  }

  else
  {
    v8 = *&v10[16];
    *(v3 + 48) = *v10;
    *(v3 + 64) = v8;
    *(v3 + 80) = v11;
  }

  result = sub_27154BD44(v3, v12);
  *v3 = &unk_288115DA0;
  return result;
}

void *sub_271571504(void *a1)
{
  *a1 = &unk_288116240;
  sub_27157D2FC(a1 + 1);
  return a1;
}

void sub_271571548(void *a1)
{
  *a1 = &unk_288116240;
  sub_27157D2FC(a1 + 1);

  JUMPOUT(0x2743BF050);
}

void *sub_2715715AC(void *a1)
{
  *a1 = &unk_288116220;
  sub_27157D548(a1 + 1);
  return a1;
}

void sub_2715715F0(void *a1)
{
  *a1 = &unk_288116220;
  sub_27157D548(a1 + 1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271571654(uint64_t result)
{
  if (*(result + 32))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_288108EC0;
    __cxa_throw(exception, &unk_28811C2D8, std::exception::~exception);
  }

  return result;
}

uint64_t sub_2715716AC(uint64_t a1)
{
  *a1 = &unk_288115630;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_271571738(uint64_t a1)
{
  *a1 = &unk_2881153F0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_2715717C4(uint64_t a1)
{
  *a1 = &unk_288115990;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_271571850(uint64_t a1)
{
  *a1 = &unk_2881157E0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_2715718DC(uint64_t a1)
{
  *a1 = &unk_2881155A0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571968(uint64_t a1)
{
  *a1 = &unk_288115900;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_2715719F4(uint64_t a1)
{
  *a1 = &unk_288115750;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571A80(uint64_t a1)
{
  *a1 = &unk_288115510;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571B0C(uint64_t a1)
{
  *a1 = &unk_288115360;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571B98(uint64_t a1)
{
  *a1 = &unk_288115480;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571C24(uint64_t a1)
{
  *a1 = &unk_288115870;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571CB0(uint64_t a1)
{
  *a1 = &unk_2881156C0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571D3C(uint64_t a1)
{
  *a1 = &unk_288115480;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571DC8(uint64_t a1)
{
  *a1 = &unk_2881152D0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

void sub_271571E54(uint64_t a1, void *a2)
{
  *a2 = &unk_288115A20;
  v2 = a2[2];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_271571EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_271571F0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4)
  {
    v7 = a3;
    (off_2881337B0[v4])(&v8, v3);
    a3 = v7;
LABEL_7:
    *v3 = &unk_288115A20;
    *(v3 + 8) = *(a3 + 8);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(v3 + 24) = 0;
    return;
  }

  v5 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a2 + 16);
  *(a2 + 8) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

__n128 sub_271572014(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_2881337B0[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    result = *(a3 + 8);
    *(v3 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *v3 = &unk_2881152B0;
    *(v3 + 24) = 1;
    return result;
  }

  sub_27157D200(a2, a3);
  return result;
}

__n128 sub_2715720CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 2)
  {
    v6 = a3;
    (off_2881337B0[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    result = *(a3 + 8);
    *(v3 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *v3 = &unk_288115290;
    *(v3 + 24) = 2;
    return result;
  }

  sub_27157D44C(a2, a3);
  return result;
}

__n128 sub_271572184(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[1].n128_u32[2];
  if (v4 == -1)
  {
    goto LABEL_8;
  }

  if (v4 != 3)
  {
    v7 = a3;
    (off_2881337B0[v4])(&v8, v3);
    a3 = v7;
LABEL_8:
    result = *a3;
    *v3 = *a3;
    *a3 = 0uLL;
    v3[1].n128_u32[2] = 3;
    return result;
  }

  result = *a3;
  *a3 = 0uLL;
  v6 = a2->n128_u64[1];
  *a2 = result;
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }

  return result;
}

void sub_271572434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271572488(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_271572794(a2, v3);
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