void sub_27154FE10(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_27154FF94(uint64_t a1, int a2, int a3, __int128 *a4, __int16 a5)
{
  v12 = a5;
  *a1 = &unk_288115360;
  *(a1 + 8) = a2;
  sub_27154F348(a2, a4, a1 + 16);
  if (*(a4 + 6))
  {
    v8 = *(a4 + 7) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *a4;
    v10 = a4[1];
    *(a1 + 80) = *(a4 + 4);
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
  }

  else
  {
    sub_27154F808(a2, a1 + 16, a1 + 48);
  }

  if (!sub_27154608C(a1))
  {
    sub_271550A40(a1, v14);
    sub_271550E4C(a1, v13);
    v15[0] = v13;
    v15[1] = &v12;
    sub_271575070(v15);
    sub_27157D548(v14);
  }

  return a1;
}

void sub_271550090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D548(va);
  sub_2715500C0(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_2715500C0(uint64_t a1)
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

uint64_t sub_271550138(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *a1 = &unk_288115360;
  *(a1 + 8) = 0;
  sub_27154F348(0, a2, a1 + 16);
  if (*(a2 + 6))
  {
    v6 = *(a2 + 7) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 80) = *(a2 + 4);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  else
  {
    sub_27154F808(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_271550A40(a1, v13);
    sub_271550E4C(a1, v12);
    sub_2712A3624(v11, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_271550238(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 56));
  sub_2715500C0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_271550268(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115360;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  v18 = v15 | (v16 << 32);
  LODWORD(v27) = 3;
  HIDWORD(v27) = v18;
  *(a1 + 48) = v27;
  *(a1 + 56) = v16;
  *(a1 + 60) = 0x300000001;
  *(a1 + 68) = v17 >> 1;
  *(a1 + 72) = v18;
  *(a1 + 80) = ((v17 >> 1) << 32) | 3;
  v19 = *(a2 + 8);
  if (!v19)
  {
    v23 = 0;
    goto LABEL_33;
  }

  v20 = *(v19 + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v21 = *(a2 + 8);
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_39:
      v23 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v23 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v21 = *(a2 + 8);
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_28:
  v23 = *v21;
  v22 = v21[1];
  if (!v22 || (atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 72))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(a1 + 72))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v23)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v24 = qword_28087C408, v25 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v24 = qword_28087C408;
      v25 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v24 += 16;
    }

    while (v24 != v25);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_271550798(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_271550A40(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_27154FE10((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_271550DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271550E4C(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_271551050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271551064(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_27154FE10((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_271551418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271551470(int a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 24))
  {
    v4 = *(a3 + 28) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  if (a1 == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }
}

void sub_2715518F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(&a9);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271551914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271551930(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (*(a2 + 24) != 2)
      {
        goto LABEL_25;
      }

LABEL_23:
      sub_271551BA4(v15, a2);
      v11 = v17;
      *a3 = v16;
      *(a3 + 16) = v11;
      *(a3 + 32) = v18;
      return;
    }

    if (a1 == 3)
    {
      if (*(a2 + 24) != 3)
      {
        goto LABEL_25;
      }

      sub_271551F34(a2, &v12);
      sub_271551BA4(v15, &v12);
      v4 = v17;
      *a3 = v16;
      *(a3 + 16) = v4;
      *(a3 + 32) = v18;
      v12 = &unk_288115A20;
      v5 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (*(a2 + 24) != 1)
      {
LABEL_25:
        sub_2711308D4();
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v13 = v6;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v13;
    }

    v12 = &unk_2881152B0;
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
        }
      }

      if (v9)
      {
        sub_271581FB4(v13);
      }
    }

    sub_271551BA4(v15, &v12);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_271551B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271551B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271551B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_271551BA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a2, 0);
  v12 = sub_27157F398(a2);
  v13 = sub_27157F5D4(a2);
  result = sub_27157F810(a2);
  v15 = result >> 1;
  v16 = v12;
  v17 = v12 | (v13 << 32);
  if (v13)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  HIDWORD(v26) = v19;
  LODWORD(v26) = 4;
  *a1 = v11;
  *(a1 + 8) = v26;
  *(a1 + 16) = HIDWORD(v19);
  *(a1 + 20) = 0x400000001;
  *(a1 + 28) = v15;
  *(a1 + 32) = v19;
  *(a1 + 40) = ((result >> 1) << 32) | 4;
  if (HIDWORD(v19) * v15 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        v25 = qword_28087C420;
        v24 = *algn_28087C428;

        return v25(v24, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v23 = *v20;
      v22 = *(v20 + 8);
      v20 += 16;
      v23(v22, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_271551F34(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_2715520B8(uint64_t a1, int a2, int a3, __int128 *a4, __int16 a5)
{
  v12 = a5;
  *a1 = &unk_2881152D0;
  *(a1 + 8) = a2;
  sub_271551470(a2, a4, a1 + 16);
  if (*(a4 + 6))
  {
    v8 = *(a4 + 7) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *a4;
    v10 = a4[1];
    *(a1 + 80) = *(a4 + 4);
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
  }

  else
  {
    sub_271551930(a2, a1 + 16, a1 + 48);
  }

  if (!sub_27154608C(a1))
  {
    sub_271552B64(a1, v14);
    sub_271552F70(a1, v13);
    v15[0] = v13;
    v15[1] = &v12;
    sub_2715758B0(v15);
    sub_27157D548(v14);
  }

  return a1;
}

void sub_2715521B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D548(va);
  sub_2715521E4(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_2715521E4(uint64_t a1)
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

uint64_t sub_27155225C(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *a1 = &unk_2881152D0;
  *(a1 + 8) = 0;
  sub_271551470(0, a2, a1 + 16);
  if (*(a2 + 6))
  {
    v6 = *(a2 + 7) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 80) = *(a2 + 4);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  else
  {
    sub_271551930(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_271552B64(a1, v13);
    sub_271552F70(a1, v12);
    sub_271244900(v11, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_27155235C(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 56));
  sub_2715521E4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27155238C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881152D0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  v18 = v15 | (v16 << 32);
  LODWORD(v27) = 4;
  HIDWORD(v27) = v18;
  *(a1 + 48) = v27;
  *(a1 + 56) = v16;
  *(a1 + 60) = 0x400000001;
  *(a1 + 68) = v17 >> 1;
  *(a1 + 72) = v18;
  *(a1 + 80) = ((v17 >> 1) << 32) | 4;
  v19 = *(a2 + 8);
  if (!v19)
  {
    v23 = 0;
    goto LABEL_33;
  }

  v20 = *(v19 + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v21 = *(a2 + 8);
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_39:
      v23 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v23 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v21 = *(a2 + 8);
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_28:
  v23 = *v21;
  v22 = v21[1];
  if (!v22 || (atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 72))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(a1 + 72))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v23)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v24 = qword_28087C408, v25 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v24 = qword_28087C408;
      v25 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v24 += 16;
    }

    while (v24 != v25);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_2715528BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_271552B64(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271551F34((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_271552F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271552F70(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_271553204(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271551F34((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_2715535B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271553610(int a1@<W0>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v4 = a3[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  if (a1 == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }
}

void sub_271553A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(&a9);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271553AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_271553AD0(int a1, uint64_t a2, __n128 a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (*(a2 + 24) != 1)
        {
LABEL_26:
          sub_2711308D4();
        }

        goto LABEL_24;
      }

      return a3.n128_u64[0];
    }

    if (*(a2 + 24))
    {
      goto LABEL_26;
    }

    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v11 = v5;
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = v11;
    }

    v10 = &unk_2881152B0;
    if (v5)
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7, a3);
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      if (v8)
      {
        sub_271581FB4(v11);
      }
    }

    sub_27154D928(&v13, &v10);
    v9 = v14;
    sub_27157D2FC(&v10);
    return v9;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      return a3.n128_u64[0];
    }

    if (*(a2 + 24) != 3)
    {
      goto LABEL_26;
    }

    sub_271553D14(a2, &v10);
    sub_27154D928(&v13, &v10);
    a3.n128_u64[0] = v14;
    v10 = &unk_288115A20;
    v3 = v12;
    if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return a3.n128_u64[0];
    }

    v9 = a3.n128_u64[0];
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    return v9;
  }

  if (*(a2 + 24) != 2)
  {
    goto LABEL_26;
  }

LABEL_24:
  sub_27154D928(&v13, a2);
  return v14;
}

void sub_271553CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271553CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271553D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271553D14(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_271553E98(uint64_t a1, int a2, int a3, _DWORD *a4, __int16 a5)
{
  v13 = a5;
  *a1 = &unk_288115990;
  *(a1 + 8) = a2;
  sub_271553610(a2, a4, a1 + 16);
  if (*a4)
  {
    v9 = a4[1] == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    *(a1 + 48) = *a4;
  }

  else
  {
    *(a1 + 48) = sub_271553AD0(a2, a1 + 16, v8);
    *(a1 + 56) = v10;
  }

  if (!sub_27154608C(a1))
  {
    sub_2715548D0(a1, v15);
    sub_271554CDC(a1, v14);
    v16[0] = v14;
    v16[1] = &v13;
    sub_271575CAC(v16, v11);
    sub_27157D548(v15);
  }

  return a1;
}

void sub_271553F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D548(va);
  sub_271553FBC(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_271553FBC(uint64_t a1)
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

uint64_t sub_271554034(uint64_t a1, _DWORD *a2, __int128 *a3)
{
  *a1 = &unk_288115990;
  *(a1 + 8) = 0;
  sub_271553610(0, a2, a1 + 16);
  if (*a2)
  {
    v7 = a2[1] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    *(a1 + 48) = *a2;
  }

  else
  {
    *(a1 + 48) = sub_271553AD0(0, a1 + 16, v6);
    *(a1 + 56) = v8;
  }

  v10 = *a3;
  v11 = *(a3 + 2);
  if (!sub_27154608C(a1))
  {
    sub_2715548D0(a1, v13);
    sub_271554CDC(a1, v12);
    sub_27123D99C(&v10, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_27155412C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D548(va);
  sub_271553FBC(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_27155415C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115990;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  *(a1 + 48) = v15 | (v16 << 32);
  *(a1 + 56) = ((v17 >> 1) << 32) | 1;
  v18 = *(a2 + 8);
  if (!v18)
  {
    v22 = 0;
    goto LABEL_33;
  }

  v19 = *(v18 + 8);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      v20 = *(a2 + 8);
      if (v20)
      {
        goto LABEL_28;
      }

LABEL_39:
      v22 = 0;
      if (!*(a1 + 48))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v22 == 0) == (*(a1 + 52) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v20 = *(a2 + 8);
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_28:
  v22 = *v20;
  v21 = v20[1];
  if (!v21 || (atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 48))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  if (*(a1 + 48))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v22)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v23 = qword_28087C408, v24 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v23 = qword_28087C408;
      v24 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v23)(*(v23 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v23 += 16;
    }

    while (v23 != v24);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_271554628(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_2715548D0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271553D14((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_271554C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271554CDC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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

void sub_27155501C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271555030(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271553D14((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_2715553E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155543C(int a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 24))
  {
    v4 = *(a3 + 28) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  if (a1 == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }
}

void sub_2715558C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(&a9);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_2715558E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715558FC(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (*(a2 + 24) != 2)
      {
        goto LABEL_25;
      }

LABEL_23:
      sub_271555B70(v15, a2);
      v11 = v17;
      *a3 = v16;
      *(a3 + 16) = v11;
      *(a3 + 32) = v18;
      return;
    }

    if (a1 == 3)
    {
      if (*(a2 + 24) != 3)
      {
        goto LABEL_25;
      }

      sub_271555F00(a2, &v12);
      sub_271555B70(v15, &v12);
      v4 = v17;
      *a3 = v16;
      *(a3 + 16) = v4;
      *(a3 + 32) = v18;
      v12 = &unk_288115A20;
      v5 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (*(a2 + 24) != 1)
      {
LABEL_25:
        sub_2711308D4();
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v13 = v6;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v13;
    }

    v12 = &unk_2881152B0;
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
        }
      }

      if (v9)
      {
        sub_271581FB4(v13);
      }
    }

    sub_271555B70(v15, &v12);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_271555B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271555B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271555B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_271555B70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a2, 0);
  v12 = sub_27157F398(a2);
  v13 = sub_27157F5D4(a2);
  result = sub_27157F810(a2);
  v15 = result >> 1;
  v16 = v12;
  v17 = v12 | (v13 << 32);
  if (v13)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  HIDWORD(v26) = v19;
  LODWORD(v26) = 2;
  *a1 = v11;
  *(a1 + 8) = v26;
  *(a1 + 16) = HIDWORD(v19);
  *(a1 + 20) = 0x200000001;
  *(a1 + 28) = v15;
  *(a1 + 32) = v19;
  *(a1 + 40) = ((result >> 1) << 32) | 2;
  if (HIDWORD(v19) * v15 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        v25 = qword_28087C420;
        v24 = *algn_28087C428;

        return v25(v24, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v23 = *v20;
      v22 = *(v20 + 8);
      v20 += 16;
      v23(v22, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_271555F00(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_271556084(uint64_t a1, int a2, int a3, __int128 *a4, __int16 a5)
{
  v13 = a5;
  *a1 = &unk_288115900;
  *(a1 + 8) = a2;
  sub_27155543C(a2, a4, a1 + 16);
  if (*(a4 + 6))
  {
    v8 = *(a4 + 7) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *a4;
    v10 = a4[1];
    *(a1 + 80) = *(a4 + 4);
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
  }

  else
  {
    sub_2715558FC(a2, a1 + 16, a1 + 48);
  }

  if (!sub_27154608C(a1))
  {
    sub_271556B38(a1, v15);
    sub_271556F44(a1, v14);
    v16[0] = v14;
    v16[1] = &v13;
    sub_271575FE8(v16, v11);
    sub_27157D548(v15);
  }

  return a1;
}

void sub_271556180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D548(va);
  sub_2715561B0(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_2715561B0(uint64_t a1)
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

uint64_t sub_271556228(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *a1 = &unk_288115900;
  *(a1 + 8) = 0;
  sub_27155543C(0, a2, a1 + 16);
  if (*(a2 + 6))
  {
    v6 = *(a2 + 7) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 80) = *(a2 + 4);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  else
  {
    sub_2715558FC(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_271556B38(a1, v13);
    sub_271556F44(a1, v12);
    v14[0] = v11;
    v14[1] = v12;
    sub_2712A0BBC(v14);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_271556330(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 72));
  sub_2715561B0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_271556360(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115900;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  v18 = v15 | (v16 << 32);
  LODWORD(v27) = 2;
  HIDWORD(v27) = v18;
  *(a1 + 48) = v27;
  *(a1 + 56) = v16;
  *(a1 + 60) = 0x200000001;
  *(a1 + 68) = v17 >> 1;
  *(a1 + 72) = v18;
  *(a1 + 80) = ((v17 >> 1) << 32) | 2;
  v19 = *(a2 + 8);
  if (!v19)
  {
    v23 = 0;
    goto LABEL_33;
  }

  v20 = *(v19 + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v21 = *(a2 + 8);
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_39:
      v23 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v23 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v21 = *(a2 + 8);
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_28:
  v23 = *v21;
  v22 = v21[1];
  if (!v22 || (atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 72))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(a1 + 72))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v23)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v24 = qword_28087C408, v25 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v24 = qword_28087C408;
      v25 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v24 += 16;
    }

    while (v24 != v25);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_271556890(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_271556B38(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271555F00((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_271556EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271556F44(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_2715571D8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271555F00((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_27155758C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_2715575E4(int a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 24))
  {
    v4 = *(a3 + 28) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  if (a1 == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }
}

void sub_271557A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(&a9);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271557A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271557AA4(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (*(a2 + 24) != 2)
      {
        goto LABEL_25;
      }

LABEL_23:
      sub_271551BA4(v15, a2);
      v11 = v17;
      *a3 = v16;
      *(a3 + 16) = v11;
      *(a3 + 32) = v18;
      return;
    }

    if (a1 == 3)
    {
      if (*(a2 + 24) != 3)
      {
        goto LABEL_25;
      }

      sub_271557D18(a2, &v12);
      sub_271551BA4(v15, &v12);
      v4 = v17;
      *a3 = v16;
      *(a3 + 16) = v4;
      *(a3 + 32) = v18;
      v12 = &unk_288115A20;
      v5 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (*(a2 + 24) != 1)
      {
LABEL_25:
        sub_2711308D4();
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v13 = v6;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v13;
    }

    v12 = &unk_2881152B0;
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
        }
      }

      if (v9)
      {
        sub_271581FB4(v13);
      }
    }

    sub_271551BA4(v15, &v12);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_271557CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271557CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271557D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271557D18(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_271557E9C(uint64_t a1, int a2, int a3, __int128 *a4, __int16 a5)
{
  v13 = a5;
  *a1 = &unk_288115870;
  *(a1 + 8) = a2;
  sub_2715575E4(a2, a4, a1 + 16);
  if (*(a4 + 6))
  {
    v8 = *(a4 + 7) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *a4;
    v10 = a4[1];
    *(a1 + 80) = *(a4 + 4);
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
  }

  else
  {
    sub_271557AA4(a2, a1 + 16, a1 + 48);
  }

  if (!sub_27154608C(a1))
  {
    sub_271558950(a1, v15);
    sub_271558D5C(a1, v14);
    v16[0] = v14;
    v16[1] = &v13;
    sub_2715767EC(v16, v11);
    sub_27157D548(v15);
  }

  return a1;
}

void sub_271557F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D548(va);
  sub_271557FC8(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_271557FC8(uint64_t a1)
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

uint64_t sub_271558040(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *a1 = &unk_288115870;
  *(a1 + 8) = 0;
  sub_2715575E4(0, a2, a1 + 16);
  if (*(a2 + 6))
  {
    v6 = *(a2 + 7) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 80) = *(a2 + 4);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  else
  {
    sub_271557AA4(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_271558950(a1, v13);
    sub_271558D5C(a1, v12);
    v14[0] = v11;
    v14[1] = v12;
    sub_2712A6EAC(v14);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_271558148(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 72));
  sub_271557FC8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_271558178(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115870;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  v18 = v15 | (v16 << 32);
  LODWORD(v27) = 4;
  HIDWORD(v27) = v18;
  *(a1 + 48) = v27;
  *(a1 + 56) = v16;
  *(a1 + 60) = 0x400000001;
  *(a1 + 68) = v17 >> 1;
  *(a1 + 72) = v18;
  *(a1 + 80) = ((v17 >> 1) << 32) | 4;
  v19 = *(a2 + 8);
  if (!v19)
  {
    v23 = 0;
    goto LABEL_33;
  }

  v20 = *(v19 + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v21 = *(a2 + 8);
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_39:
      v23 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v23 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v21 = *(a2 + 8);
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_28:
  v23 = *v21;
  v22 = v21[1];
  if (!v22 || (atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 72))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(a1 + 72))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v23)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v24 = qword_28087C408, v25 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v24 = qword_28087C408;
      v25 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v24 += 16;
    }

    while (v24 != v25);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_2715586A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_271558950(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271557D18((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_271558D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271558D5C(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_271558FF0(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271557D18((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_2715593A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_2715593FC(int a1@<W0>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v4 = a3[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  if (a1 == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }
}

void sub_271559880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(&a9);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_2715598A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2715598BC(int a1, uint64_t a2, __n128 a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (*(a2 + 24) != 1)
        {
LABEL_26:
          sub_2711308D4();
        }

        goto LABEL_24;
      }

      return a3.n128_u64[0];
    }

    if (*(a2 + 24))
    {
      goto LABEL_26;
    }

    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v11 = v5;
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = v11;
    }

    v10 = &unk_2881152B0;
    if (v5)
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7, a3);
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      if (v8)
      {
        sub_271581FB4(v11);
      }
    }

    sub_271559B00(v13, &v10);
    v9 = v14;
    sub_27157D2FC(&v10);
    return v9;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      return a3.n128_u64[0];
    }

    if (*(a2 + 24) != 3)
    {
      goto LABEL_26;
    }

    sub_271559DF8(a2, &v10);
    sub_271559B00(v13, &v10);
    a3.n128_u64[0] = v14;
    v10 = &unk_288115A20;
    v3 = v12;
    if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return a3.n128_u64[0];
    }

    v9 = a3.n128_u64[0];
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    return v9;
  }

  if (*(a2 + 24) != 2)
  {
    goto LABEL_26;
  }

LABEL_24:
  sub_271559B00(v13, a2);
  return v14;
}

void sub_271559AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271559AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271559AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_271559B00(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a2, 0);
  v12 = sub_27157F398(a2);
  v13 = sub_27157F5D4(a2);
  result = sub_27157F810(a2);
  v15 = v12;
  v16 = v12 | (v13 << 32);
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  *a1 = v11;
  a1[1] = v18;
  a1[2] = ((result >> 2) << 32) | 1;
  if (HIDWORD(v18) * (result >> 2) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        v24 = qword_28087C420;
        v23 = *algn_28087C428;

        return v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v22 = *v19;
      v21 = *(v19 + 8);
      v19 += 16;
      v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_271559DF8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_271559F7C(uint64_t a1, int a2, int a3, _DWORD *a4, float a5)
{
  v13 = a5;
  *a1 = &unk_2881157E0;
  *(a1 + 8) = a2;
  sub_2715593FC(a2, a4, a1 + 16);
  if (*a4)
  {
    v9 = a4[1] == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    *(a1 + 48) = *a4;
  }

  else
  {
    *(a1 + 48) = sub_2715598BC(a2, a1 + 16, v8);
    *(a1 + 56) = v10;
  }

  if (!sub_27154608C(a1))
  {
    sub_27155A9B4(a1, v15);
    sub_27155ADC0(a1, v14);
    v16[0] = v14;
    v16[1] = &v13;
    sub_271576D2C(v16, v11);
    sub_27157D548(v15);
  }

  return a1;
}

void sub_27155A070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D548(va);
  sub_27155A0A0(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_27155A0A0(uint64_t a1)
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

uint64_t sub_27155A118(uint64_t a1, _DWORD *a2, __int128 *a3)
{
  *a1 = &unk_2881157E0;
  *(a1 + 8) = 0;
  sub_2715593FC(0, a2, a1 + 16);
  if (*a2)
  {
    v7 = a2[1] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    *(a1 + 48) = *a2;
  }

  else
  {
    *(a1 + 48) = sub_2715598BC(0, a1 + 16, v6);
    *(a1 + 56) = v8;
  }

  v10 = *a3;
  v11 = *(a3 + 2);
  if (!sub_27154608C(a1))
  {
    sub_27155A9B4(a1, v13);
    sub_27155ADC0(a1, v12);
    sub_27125505C(&v10, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_27155A210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D548(va);
  sub_27155A0A0(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_27155A240(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881157E0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  *(a1 + 48) = v15 | (v16 << 32);
  *(a1 + 56) = ((v17 >> 2) << 32) | 1;
  v18 = *(a2 + 8);
  if (!v18)
  {
    v22 = 0;
    goto LABEL_33;
  }

  v19 = *(v18 + 8);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      v20 = *(a2 + 8);
      if (v20)
      {
        goto LABEL_28;
      }

LABEL_39:
      v22 = 0;
      if (!*(a1 + 48))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v22 == 0) == (*(a1 + 52) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v20 = *(a2 + 8);
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_28:
  v22 = *v20;
  v21 = v20[1];
  if (!v21 || (atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 48))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  if (*(a1 + 48))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v22)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v23 = qword_28087C408, v24 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v23 = qword_28087C408;
      v24 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v23)(*(v23 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v23 += 16;
    }

    while (v23 != v24);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_27155A70C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_27155A9B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271559DF8((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_27155AD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155ADC0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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

void sub_27155B100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155B114(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271559DF8((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_27155B4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155B520(int a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 24))
  {
    v4 = *(a3 + 28) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  if (a1 == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }
}

void sub_27155B9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(&a9);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155B9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27155B9E0(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (*(a2 + 24) != 2)
      {
        goto LABEL_25;
      }

LABEL_23:
      sub_27155BC54(v15, a2);
      v11 = v17;
      *a3 = v16;
      *(a3 + 16) = v11;
      *(a3 + 32) = v18;
      return;
    }

    if (a1 == 3)
    {
      if (*(a2 + 24) != 3)
      {
        goto LABEL_25;
      }

      sub_27155BFE4(a2, &v12);
      sub_27155BC54(v15, &v12);
      v4 = v17;
      *a3 = v16;
      *(a3 + 16) = v4;
      *(a3 + 32) = v18;
      v12 = &unk_288115A20;
      v5 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (*(a2 + 24) != 1)
      {
LABEL_25:
        sub_2711308D4();
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v13 = v6;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v13;
    }

    v12 = &unk_2881152B0;
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
        }
      }

      if (v9)
      {
        sub_271581FB4(v13);
      }
    }

    sub_27155BC54(v15, &v12);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_27155BC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_27155BC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27155BC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_27155BC54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a2, 0);
  v12 = sub_27157F398(a2);
  v13 = sub_27157F5D4(a2);
  result = sub_27157F810(a2);
  v15 = result >> 2;
  v16 = v12;
  v17 = v12 | (v13 << 32);
  if (v13)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  HIDWORD(v26) = v19;
  LODWORD(v26) = 2;
  *a1 = v11;
  *(a1 + 8) = v26;
  *(a1 + 16) = HIDWORD(v19);
  *(a1 + 20) = 0x200000001;
  *(a1 + 28) = v15;
  *(a1 + 32) = v19;
  *(a1 + 40) = ((result >> 2) << 32) | 2;
  if (HIDWORD(v19) * v15 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        v25 = qword_28087C420;
        v24 = *algn_28087C428;

        return v25(v24, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v23 = *v20;
      v22 = *(v20 + 8);
      v20 += 16;
      v23(v22, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_27155BFE4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_27155C168(uint64_t a1, int a2, int a3, __int128 *a4, float a5)
{
  v13 = a5;
  *a1 = &unk_288115750;
  *(a1 + 8) = a2;
  sub_27155B520(a2, a4, a1 + 16);
  if (*(a4 + 6))
  {
    v8 = *(a4 + 7) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *a4;
    v10 = a4[1];
    *(a1 + 80) = *(a4 + 4);
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
  }

  else
  {
    sub_27155B9E0(a2, a1 + 16, a1 + 48);
  }

  if (!sub_27154608C(a1))
  {
    sub_27155CC14(a1, v15);
    sub_27155D020(a1, v14);
    v16[0] = v14;
    v16[1] = &v13;
    sub_271576F84(v16, v11);
    sub_27157D548(v15);
  }

  return a1;
}

void sub_27155C264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D548(va);
  sub_27155C294(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_27155C294(uint64_t a1)
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

uint64_t sub_27155C30C(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *a1 = &unk_288115750;
  *(a1 + 8) = 0;
  sub_27155B520(0, a2, a1 + 16);
  if (*(a2 + 6))
  {
    v6 = *(a2 + 7) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 80) = *(a2 + 4);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  else
  {
    sub_27155B9E0(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_27155CC14(a1, v13);
    sub_27155D020(a1, v12);
    sub_2712A2500(v11, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_27155C40C(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 56));
  sub_27155C294(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27155C43C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115750;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  v18 = v15 | (v16 << 32);
  LODWORD(v27) = 2;
  HIDWORD(v27) = v18;
  *(a1 + 48) = v27;
  *(a1 + 56) = v16;
  *(a1 + 60) = 0x200000001;
  *(a1 + 68) = v17 >> 2;
  *(a1 + 72) = v18;
  *(a1 + 80) = ((v17 >> 2) << 32) | 2;
  v19 = *(a2 + 8);
  if (!v19)
  {
    v23 = 0;
    goto LABEL_33;
  }

  v20 = *(v19 + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v21 = *(a2 + 8);
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_39:
      v23 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v23 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v21 = *(a2 + 8);
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_28:
  v23 = *v21;
  v22 = v21[1];
  if (!v22 || (atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 72))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(a1 + 72))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v23)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v24 = qword_28087C408, v25 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v24 = qword_28087C408;
      v25 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v24 += 16;
    }

    while (v24 != v25);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_27155C96C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_27155CC14(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_27155BFE4((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_27155CFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155D020(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_27155D2B4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_27155BFE4((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_27155D668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155D6C0(int a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 24))
  {
    v4 = *(a3 + 28) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    operator new();
  }

  if (a1 == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }
}

void sub_27155DB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27157D16C(&a9);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155DB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27155DB80(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (*(a2 + 24) != 2)
      {
        goto LABEL_25;
      }

LABEL_23:
      sub_27155DDF4(v15, a2);
      v11 = v17;
      *a3 = v16;
      *(a3 + 16) = v11;
      *(a3 + 32) = v18;
      return;
    }

    if (a1 == 3)
    {
      if (*(a2 + 24) != 3)
      {
        goto LABEL_25;
      }

      sub_27155E184(a2, &v12);
      sub_27155DDF4(v15, &v12);
      v4 = v17;
      *a3 = v16;
      *(a3 + 16) = v4;
      *(a3 + 32) = v18;
      v12 = &unk_288115A20;
      v5 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (*(a2 + 24) != 1)
      {
LABEL_25:
        sub_2711308D4();
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v13 = v6;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v13;
    }

    v12 = &unk_2881152B0;
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
        }
      }

      if (v9)
      {
        sub_271581FB4(v13);
      }
    }

    sub_27155DDF4(v15, &v12);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_27155DDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_27155DDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27155DDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_27155DDF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a2, 0);
  v12 = sub_27157F398(a2);
  v13 = sub_27157F5D4(a2);
  result = sub_27157F810(a2);
  v15 = result >> 2;
  v16 = v12;
  v17 = v12 | (v13 << 32);
  if (v13)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  HIDWORD(v26) = v19;
  LODWORD(v26) = 4;
  *a1 = v11;
  *(a1 + 8) = v26;
  *(a1 + 16) = HIDWORD(v19);
  *(a1 + 20) = 0x400000001;
  *(a1 + 28) = v15;
  *(a1 + 32) = v19;
  *(a1 + 40) = ((result >> 2) << 32) | 4;
  if (HIDWORD(v19) * v15 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v20 = qword_28087C408, v21 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        v25 = qword_28087C420;
        v24 = *algn_28087C428;

        return v25(v24, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v20 = qword_28087C408;
      v21 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v23 = *v20;
      v22 = *(v20 + 8);
      v20 += 16;
      v23(v22, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v20 != v21);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_27155E184(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_27155E308(uint64_t a1, int a2, int a3, __int128 *a4, float a5)
{
  v13 = a5;
  *a1 = &unk_2881156C0;
  *(a1 + 8) = a2;
  sub_27155D6C0(a2, a4, a1 + 16);
  if (*(a4 + 6))
  {
    v8 = *(a4 + 7) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *a4;
    v10 = a4[1];
    *(a1 + 80) = *(a4 + 4);
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
  }

  else
  {
    sub_27155DB80(a2, a1 + 16, a1 + 48);
  }

  if (!sub_27154608C(a1))
  {
    sub_27155EDB4(a1, v15);
    sub_27155F1C0(a1, v14);
    v16[0] = v14;
    v16[1] = &v13;
    sub_271577500(v16, v11);
    sub_27157D548(v15);
  }

  return a1;
}

void sub_27155E404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27157D548(va);
  sub_27155E434(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_27155E434(uint64_t a1)
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

uint64_t sub_27155E4AC(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *a1 = &unk_2881156C0;
  *(a1 + 8) = 0;
  sub_27155D6C0(0, a2, a1 + 16);
  if (*(a2 + 6))
  {
    v6 = *(a2 + 7) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 80) = *(a2 + 4);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  else
  {
    sub_27155DB80(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_27155EDB4(a1, v13);
    sub_27155F1C0(a1, v12);
    sub_271245B78(v11, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_27155E5AC(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 56));
  sub_27155E434(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27155E5DC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881156C0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  v18 = v15 | (v16 << 32);
  LODWORD(v27) = 4;
  HIDWORD(v27) = v18;
  *(a1 + 48) = v27;
  *(a1 + 56) = v16;
  *(a1 + 60) = 0x400000001;
  *(a1 + 68) = v17 >> 2;
  *(a1 + 72) = v18;
  *(a1 + 80) = ((v17 >> 2) << 32) | 4;
  v19 = *(a2 + 8);
  if (!v19)
  {
    v23 = 0;
    goto LABEL_33;
  }

  v20 = *(v19 + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v21 = *(a2 + 8);
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_39:
      v23 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v23 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v21 = *(a2 + 8);
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_28:
  v23 = *v21;
  v22 = v21[1];
  if (!v22 || (atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 72))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(a1 + 72))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v23)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v24 = qword_28087C408, v25 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v24 = qword_28087C408;
      v25 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v24 += 16;
    }

    while (v24 != v25);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_27155EB0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_27155EDB4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_27155E184((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_27155F168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(v3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155F1C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_27155F454(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_27155E184((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}