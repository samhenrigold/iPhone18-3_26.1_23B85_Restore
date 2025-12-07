void sub_271582F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271582F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_2717F319C(va);
  sub_2717F319C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271582F7C(uint64_t a1)
{
  *a1 = &unk_288109608;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_271582FF4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void sub_271583050(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_271583B94(v20, a1);
        sub_271253768(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27158331C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271583330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271583344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271583358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158336C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288109608;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_288109288;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v32 = v4;
  v33 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = &unk_28087C000;
  if (!v4)
  {
    goto LABEL_16;
  }

  v11 = *v4;
  v10 = v4[1];
  if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v11)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8, &unk_288109288);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_69;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "ref.IsValid()", 13, "", 0);
      v12 += 16;
    }

    while (v12 != v13);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_23;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_24:
  v39[0] = &unk_288109288;
  v39[1] = v32;
  v40 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v39);
  v39[0] = &unk_288109288;
  v14 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = v33;
    v37 = v32;
    v38 = v33;
    if (v33)
    {
      goto LABEL_29;
    }

LABEL_33:
    v36 = &unk_288109288;
    goto LABEL_34;
  }

  v15 = v33;
  v37 = v32;
  v38 = v33;
  if (!v33)
  {
    goto LABEL_33;
  }

LABEL_29:
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = &unk_288109288;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_34:
  v34[0] = &unk_288109288;
  v34[1] = v32;
  v35 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = sub_2717F3514(v34);
  v17 = sub_2717F3958(v34);
  v18 = sub_2717F3D9C(v34);
  v19 = sub_2717F41E0(v34);
  v34[0] = &unk_288109288;
  v20 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v27 = v19;
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    v28 = v27;
    v9 = &unk_28087C000;
    *(a1 + 48) = v16 | (v17 << 32);
    *(a1 + 56) = v18 | (v28 << 32);
    v21 = v33;
    if (!v33)
    {
      goto LABEL_40;
    }
  }

  else
  {
    *(a1 + 48) = v16 | (v17 << 32);
    *(a1 + 56) = v18 | (v19 << 32);
    v21 = v33;
    if (!v33)
    {
      goto LABEL_40;
    }
  }

  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
    v22 = *(a2 + 8);
    if (v22)
    {
      goto LABEL_41;
    }

LABEL_51:
    v26 = 0;
    goto LABEL_52;
  }

LABEL_40:
  v22 = *(a2 + 8);
  if (!v22)
  {
    goto LABEL_51;
  }

LABEL_41:
  v23 = *(v22 + 8);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      v24 = *(a2 + 8);
      if (v24)
      {
        goto LABEL_44;
      }

LABEL_58:
      v26 = 0;
      if (!*(a1 + 48))
      {
        goto LABEL_59;
      }

LABEL_53:
      if ((v26 == 0) == (*(a1 + 52) == 0))
      {
        return a1;
      }

      goto LABEL_60;
    }
  }

  v24 = *(a2 + 8);
  if (!v24)
  {
    goto LABEL_58;
  }

LABEL_44:
  v26 = *v24;
  v25 = v24[1];
  if (!v25 || (atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_52:
    if (!*(a1 + 48))
    {
      goto LABEL_59;
    }

    goto LABEL_53;
  }

  (v25->__on_zero_shared)(v25);
  std::__shared_weak_count::__release_weak(v25);
  if (*(a1 + 48))
  {
    goto LABEL_53;
  }

LABEL_59:
  if (v26)
  {
LABEL_60:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8, &unk_288109288);
    if (v9[1072] == 1)
    {
      if (byte_28087C438 != 1 || (v29 = qword_28087C408, v30 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_67:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v29 = qword_28087C408;
      v30 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_69;
      }
    }

    do
    {
      (*v29)(*(v29 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v29 += 16;
    }

    while (v29 != v30);
    if (v9[1072])
    {
      goto LABEL_67;
    }

LABEL_69:
    abort();
  }

  return a1;
}

void sub_271583A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_2717F319C(va);
  sub_2717F319C(&a9);
  sub_271582FF4(v17);
  _Unwind_Resume(a1);
}

void sub_271583AF0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_2711308D4();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_271583B94(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          v22 = &unk_288109288;
          v23 = v5;
          v24 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v23;
            v6 = v24;
          }

          v20[0] = &unk_288109288;
          v20[1] = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_2715829FC(a1, v20);
          v20[0] = &unk_288109288;
          v7 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v22 = &unk_288109288;
          v8 = v24;
          if (v24)
          {
            if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  a1[1] = v12;
  a1[2] = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_33:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_28087C408;
      v15 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_28087C430)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_271583ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F319C(&a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715842D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715842F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271584324(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_27158454C(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_27158454C(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_27158454C(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_271584510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271584524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271584538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158454C(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_51;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v39[0] = &unk_288109288;
  v39[1] = v12;
  v40 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v39);
  v39[0] = &unk_288109288;
  v13 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(a2 + 16);
    v37 = *(a2 + 8);
    v38 = v14;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_22:
    v36 = &unk_288109288;
    goto LABEL_23;
  }

  v14 = *(a2 + 16);
  v37 = *(a2 + 8);
  v38 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_18:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = &unk_288109288;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_23:
  v16 = *(a2 + 8);
  v15 = *(a2 + 16);
  v33 = &unk_288109288;
  v34 = v16;
  v35 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = sub_2717F1FA4(&v33, 0);
  *&v41 = &unk_288109288;
  *(&v41 + 1) = v34;
  v42 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_2717F3514(&v41);
  v19 = sub_2717F3958(&v41);
  v20 = sub_2717F3D9C(&v41);
  v21 = sub_2717F41E0(&v41);
  v22 = v18;
  *&v41 = &unk_288109288;
  v23 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v18 | (v19 << 32);
  v25 = v20 | (v21 << 32);
  v33 = &unk_288109288;
  v26 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v19)
  {
    v27 = v22 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  *(&v41 + 4) = v28;
  LODWORD(v41) = 2;
  v29 = v41;
  LODWORD(v41) = 1;
  *(&v41 + 4) = v25;
  v30 = v41;
  *a1 = v17;
  *(a1 + 8) = v29;
  *(a1 + 16) = HIDWORD(v28);
  *(a1 + 20) = v30;
  *(a1 + 28) = v21;
  *(a1 + 32) = v28;
  *(a1 + 40) = v25;
  if (HIDWORD(v28) * v21 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v31 = qword_28087C408, v32 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_47:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v31 = qword_28087C408;
      v32 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      (*v31)(*(v31 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v31 += 16;
    }

    while (v31 != v32);
    if (byte_28087C430)
    {
      goto LABEL_47;
    }

LABEL_51:
    abort();
  }
}

void sub_271584B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271584B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271584B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271584B48(uint64_t a1)
{
  *a1 = &unk_288109578;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271584BC0(uint64_t a1, size_t *a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_271585750(v20, a1);
        sub_27129F754(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_271584E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271584EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271584EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271584EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271584EDC(uint64_t a1, uint64_t a2)
{
  v40[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_288109578;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_288109288;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v31 = v4;
  v32 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = *v4;
  v9 = v4[1];
  if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "ref.IsValid()", 13, "", 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_23;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_24:
  v38[0] = &unk_288109288;
  v38[1] = v31;
  v39 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v38);
  v38[0] = &unk_288109288;
  v13 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = v32;
    v36 = v31;
    v37 = v32;
    if (v32)
    {
      goto LABEL_29;
    }

LABEL_33:
    v35 = &unk_288109288;
    goto LABEL_34;
  }

  v14 = v32;
  v36 = v31;
  v37 = v32;
  if (!v32)
  {
    goto LABEL_33;
  }

LABEL_29:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v35 = &unk_288109288;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

LABEL_34:
  v33[0] = &unk_288109288;
  v33[1] = v31;
  v34 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = sub_2717F3514(v33);
  v16 = sub_2717F3958(v33);
  v17 = sub_2717F3D9C(v33);
  v18 = sub_2717F41E0(v33);
  v33[0] = &unk_288109288;
  v19 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v20 = v18;
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v18 = v20;
  }

  v21 = v17 | (v18 << 32);
  v22 = v15 | (v16 << 32);
  LODWORD(v40[0]) = 2;
  HIDWORD(v40[0]) = v22;
  *(a1 + 48) = v40[0];
  *(a1 + 56) = v16;
  LODWORD(v40[0]) = 1;
  *(v40 + 4) = v21;
  *(a1 + 60) = v40[0];
  *(a1 + 68) = v18;
  *(a1 + 72) = v22;
  *(a1 + 80) = v21;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
    v23 = *(a2 + 8);
    if (v23)
    {
      goto LABEL_42;
    }

LABEL_50:
    v27 = 0;
    goto LABEL_51;
  }

  v23 = *(a2 + 8);
  if (!v23)
  {
    goto LABEL_50;
  }

LABEL_42:
  v24 = *(v23 + 8);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
      v25 = *(a2 + 8);
      if (v25)
      {
        goto LABEL_45;
      }

LABEL_57:
      v27 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_58;
      }

LABEL_52:
      if ((v27 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_59;
    }
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    goto LABEL_57;
  }

LABEL_45:
  v27 = *v25;
  v26 = v25[1];
  if (!v26 || (atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_51:
    if (!*(a1 + 72))
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if (*(a1 + 72))
  {
    goto LABEL_52;
  }

LABEL_58:
  if (v27)
  {
LABEL_59:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v28 = qword_28087C408, v29 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_66:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v28 = qword_28087C408;
      v29 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v28)(*(v28 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v28 += 16;
    }

    while (v28 != v29);
    if (byte_28087C430)
    {
      goto LABEL_66;
    }

LABEL_68:
    abort();
  }

  return a1;
}

void sub_27158562C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  sub_271582FF4(v3);
  _Unwind_Resume(a1);
}

void sub_2715856AC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_2711308D4();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_271585750(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          *&v20 = &unk_288109288;
          *(&v20 + 1) = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v20 + 1);
            v6 = v21;
          }

          v18[0] = &unk_288109288;
          v18[1] = v5;
          v19 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_27158454C(a1, v18);
          v18[0] = &unk_288109288;
          v7 = v19;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v20 = &unk_288109288;
          v8 = v21;
          if (v21)
          {
            if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v11 = *(a2 + 72) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 72);
  if (v11)
  {
    v12 = 0;
  }

  LODWORD(v20) = 2;
  *(&v20 + 4) = v12;
  v13 = 2 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x1FFFFFFFFLL | ((v14 >> 1) << 33);
  v16 = __PAIR64__(DWORD1(v20), 2);
  LODWORD(v20) = 1;
  *(&v20 + 4) = v15;
  v17 = v20;
  *a1 = 0;
  *(a1 + 8) = v16;
  *(a1 + 16) = HIDWORD(v12);
  *(a1 + 20) = v17;
  *(a1 + 28) = v14;
  *(a1 + 32) = v12;
  *(a1 + 40) = v15;
}

void sub_2715859D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_271585DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271585DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271585E28(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_271586050(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_271586050(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_271586050(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_271586014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271586028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158603C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271586050(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_51;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v39[0] = &unk_288109288;
  v39[1] = v12;
  v40 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v39);
  v39[0] = &unk_288109288;
  v13 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(a2 + 16);
    v37 = *(a2 + 8);
    v38 = v14;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_22:
    v36 = &unk_288109288;
    goto LABEL_23;
  }

  v14 = *(a2 + 16);
  v37 = *(a2 + 8);
  v38 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_18:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = &unk_288109288;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_23:
  v16 = *(a2 + 8);
  v15 = *(a2 + 16);
  v33 = &unk_288109288;
  v34 = v16;
  v35 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = sub_2717F1FA4(&v33, 0);
  *&v41 = &unk_288109288;
  *(&v41 + 1) = v34;
  v42 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_2717F3514(&v41);
  v19 = sub_2717F3958(&v41);
  v20 = sub_2717F3D9C(&v41);
  v21 = sub_2717F41E0(&v41);
  v22 = v18;
  *&v41 = &unk_288109288;
  v23 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v18 | (v19 << 32);
  v25 = v20 | (v21 << 32);
  v33 = &unk_288109288;
  v26 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v19)
  {
    v27 = v22 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  *(&v41 + 4) = v28;
  LODWORD(v41) = 3;
  v29 = v41;
  LODWORD(v41) = 1;
  *(&v41 + 4) = v25;
  v30 = v41;
  *a1 = v17;
  *(a1 + 8) = v29;
  *(a1 + 16) = HIDWORD(v28);
  *(a1 + 20) = v30;
  *(a1 + 28) = v21;
  *(a1 + 32) = v28;
  *(a1 + 40) = v25;
  if (HIDWORD(v28) * v21 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v31 = qword_28087C408, v32 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_47:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v31 = qword_28087C408;
      v32 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      (*v31)(*(v31 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v31 += 16;
    }

    while (v31 != v32);
    if (byte_28087C430)
    {
      goto LABEL_47;
    }

LABEL_51:
    abort();
  }
}

void sub_271586604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271586618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158662C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158664C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_271587574(v20, a1);
        v24[0] = v20;
        v24[1] = a2;
        sub_27157487C(v24);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27158691C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271586930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271586944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271586958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158696C(uint64_t a1)
{
  *a1 = &unk_2881094E8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715869E4(uint64_t a1, size_t *a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_271587574(v20, a1);
        sub_2712A2E80(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_271586CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271586CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271586CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271586CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271586D00(uint64_t a1, uint64_t a2)
{
  v40[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_2881094E8;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_288109288;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v31 = v4;
  v32 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = *v4;
  v9 = v4[1];
  if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "ref.IsValid()", 13, "", 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_23;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_24:
  v38[0] = &unk_288109288;
  v38[1] = v31;
  v39 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v38);
  v38[0] = &unk_288109288;
  v13 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = v32;
    v36 = v31;
    v37 = v32;
    if (v32)
    {
      goto LABEL_29;
    }

LABEL_33:
    v35 = &unk_288109288;
    goto LABEL_34;
  }

  v14 = v32;
  v36 = v31;
  v37 = v32;
  if (!v32)
  {
    goto LABEL_33;
  }

LABEL_29:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v35 = &unk_288109288;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

LABEL_34:
  v33[0] = &unk_288109288;
  v33[1] = v31;
  v34 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = sub_2717F3514(v33);
  v16 = sub_2717F3958(v33);
  v17 = sub_2717F3D9C(v33);
  v18 = sub_2717F41E0(v33);
  v33[0] = &unk_288109288;
  v19 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v20 = v18;
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v18 = v20;
  }

  v21 = v17 | (v18 << 32);
  v22 = v15 | (v16 << 32);
  LODWORD(v40[0]) = 3;
  HIDWORD(v40[0]) = v22;
  *(a1 + 48) = v40[0];
  *(a1 + 56) = v16;
  LODWORD(v40[0]) = 1;
  *(v40 + 4) = v21;
  *(a1 + 60) = v40[0];
  *(a1 + 68) = v18;
  *(a1 + 72) = v22;
  *(a1 + 80) = v21;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
    v23 = *(a2 + 8);
    if (v23)
    {
      goto LABEL_42;
    }

LABEL_50:
    v27 = 0;
    goto LABEL_51;
  }

  v23 = *(a2 + 8);
  if (!v23)
  {
    goto LABEL_50;
  }

LABEL_42:
  v24 = *(v23 + 8);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
      v25 = *(a2 + 8);
      if (v25)
      {
        goto LABEL_45;
      }

LABEL_57:
      v27 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_58;
      }

LABEL_52:
      if ((v27 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_59;
    }
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    goto LABEL_57;
  }

LABEL_45:
  v27 = *v25;
  v26 = v25[1];
  if (!v26 || (atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_51:
    if (!*(a1 + 72))
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if (*(a1 + 72))
  {
    goto LABEL_52;
  }

LABEL_58:
  if (v27)
  {
LABEL_59:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v28 = qword_28087C408, v29 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_66:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v28 = qword_28087C408;
      v29 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v28)(*(v28 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v28 += 16;
    }

    while (v28 != v29);
    if (byte_28087C430)
    {
      goto LABEL_66;
    }

LABEL_68:
    abort();
  }

  return a1;
}

void sub_271587450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  sub_271582FF4(v3);
  _Unwind_Resume(a1);
}

void sub_2715874D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_2711308D4();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_271587574(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_22;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          v13 = &unk_288109288;
          v14 = v5;
          v15 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v14;
            v6 = v15;
          }

          v11[0] = &unk_288109288;
          v11[1] = v5;
          v12 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271586050(a1, v11);
          v11[0] = &unk_288109288;
          v7 = v12;
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v13 = &unk_288109288;
          v8 = v15;
          if (v15)
          {
            if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_22:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_27157497C(a1, 0, (a2 + 72));
}

void sub_271587784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F319C(&a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271587B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271587BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271587BD4(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_271587DFC(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_271587DFC(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_271587DFC(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_271587DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271587DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271587DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271587DFC(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_51;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v39[0] = &unk_288109288;
  v39[1] = v12;
  v40 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v39);
  v39[0] = &unk_288109288;
  v13 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(a2 + 16);
    v37 = *(a2 + 8);
    v38 = v14;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_22:
    v36 = &unk_288109288;
    goto LABEL_23;
  }

  v14 = *(a2 + 16);
  v37 = *(a2 + 8);
  v38 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_18:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = &unk_288109288;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_23:
  v16 = *(a2 + 8);
  v15 = *(a2 + 16);
  v33 = &unk_288109288;
  v34 = v16;
  v35 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = sub_2717F1FA4(&v33, 0);
  *&v41 = &unk_288109288;
  *(&v41 + 1) = v34;
  v42 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_2717F3514(&v41);
  v19 = sub_2717F3958(&v41);
  v20 = sub_2717F3D9C(&v41);
  v21 = sub_2717F41E0(&v41);
  v22 = v18;
  *&v41 = &unk_288109288;
  v23 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v18 | (v19 << 32);
  v25 = v20 | (v21 << 32);
  v33 = &unk_288109288;
  v26 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v19)
  {
    v27 = v22 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  *(&v41 + 4) = v28;
  LODWORD(v41) = 4;
  v29 = v41;
  LODWORD(v41) = 1;
  *(&v41 + 4) = v25;
  v30 = v41;
  *a1 = v17;
  *(a1 + 8) = v29;
  *(a1 + 16) = HIDWORD(v28);
  *(a1 + 20) = v30;
  *(a1 + 28) = v21;
  *(a1 + 32) = v28;
  *(a1 + 40) = v25;
  if (HIDWORD(v28) * v21 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v31 = qword_28087C408, v32 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_47:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v31 = qword_28087C408;
      v32 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      (*v31)(*(v31 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v31 += 16;
    }

    while (v31 != v32);
    if (byte_28087C430)
    {
      goto LABEL_47;
    }

LABEL_51:
    abort();
  }
}

void sub_2715883B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715883C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715883D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715883F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_42;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return;
  }

  v6 = *v3;
  v5 = v3[1];
  if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (!v6)
    {
      return;
    }
  }

  else if (!v6)
  {
    return;
  }

  v7 = *(a1 + 40);
  switch(v7)
  {
    case 2:
      v16 = *(a1 + 24);
      v17 = *(a1 + 32);
      v26 = v16;
      v27 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        v16 = v26;
      }

      v25 = &unk_288109248;
      if (!v16)
      {
        goto LABEL_35;
      }

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

      if (!v19)
      {
        goto LABEL_35;
      }

      break;
    case 1:
      v12 = *(a1 + 24);
      v13 = *(a1 + 32);
      v26 = v12;
      v27 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        v12 = v26;
      }

      v25 = &unk_288109248;
      if (!v12)
      {
        goto LABEL_35;
      }

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

      if (!v15)
      {
        goto LABEL_35;
      }

      break;
    case 0:
      v8 = *(a1 + 24);
      v9 = *(a1 + 32);
      v26 = v8;
      v27 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        v8 = v26;
      }

      v25 = &unk_288109248;
      if (!v8)
      {
        goto LABEL_35;
      }

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

      if (!v11)
      {
        goto LABEL_35;
      }

      break;
    default:
LABEL_42:
      sub_2711308D4();
  }

  sub_2717F9298(v26);
LABEL_35:
  sub_271589360(v20, a1);
  v28[0] = v20;
  v28[1] = a2;
  if (v24 == 1)
  {
    sub_2715746BC(v28);
  }

  else
  {
    v29 = a2;
    if (v21 && v22)
    {
      if (v23)
      {
        v30 = &v29;
        sub_271574B58(&v30, v20);
      }
    }
  }

  sub_2717F2278(&v25);
}

void sub_271588708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158871C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271588730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271588744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271588758(uint64_t a1)
{
  *a1 = &unk_288109458;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715887D0(uint64_t a1, size_t *a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_271589360(v20, a1);
        sub_2712A6008(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_271588A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271588AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271588AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271588AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271588AEC(uint64_t a1, uint64_t a2)
{
  v40[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_288109458;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_288109288;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v31 = v4;
  v32 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = *v4;
  v9 = v4[1];
  if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "ref.IsValid()", 13, "", 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_23;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_24:
  v38[0] = &unk_288109288;
  v38[1] = v31;
  v39 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v38);
  v38[0] = &unk_288109288;
  v13 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = v32;
    v36 = v31;
    v37 = v32;
    if (v32)
    {
      goto LABEL_29;
    }

LABEL_33:
    v35 = &unk_288109288;
    goto LABEL_34;
  }

  v14 = v32;
  v36 = v31;
  v37 = v32;
  if (!v32)
  {
    goto LABEL_33;
  }

LABEL_29:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v35 = &unk_288109288;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

LABEL_34:
  v33[0] = &unk_288109288;
  v33[1] = v31;
  v34 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = sub_2717F3514(v33);
  v16 = sub_2717F3958(v33);
  v17 = sub_2717F3D9C(v33);
  v18 = sub_2717F41E0(v33);
  v33[0] = &unk_288109288;
  v19 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v20 = v18;
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v18 = v20;
  }

  v21 = v17 | (v18 << 32);
  v22 = v15 | (v16 << 32);
  LODWORD(v40[0]) = 4;
  HIDWORD(v40[0]) = v22;
  *(a1 + 48) = v40[0];
  *(a1 + 56) = v16;
  LODWORD(v40[0]) = 1;
  *(v40 + 4) = v21;
  *(a1 + 60) = v40[0];
  *(a1 + 68) = v18;
  *(a1 + 72) = v22;
  *(a1 + 80) = v21;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
    v23 = *(a2 + 8);
    if (v23)
    {
      goto LABEL_42;
    }

LABEL_50:
    v27 = 0;
    goto LABEL_51;
  }

  v23 = *(a2 + 8);
  if (!v23)
  {
    goto LABEL_50;
  }

LABEL_42:
  v24 = *(v23 + 8);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
      v25 = *(a2 + 8);
      if (v25)
      {
        goto LABEL_45;
      }

LABEL_57:
      v27 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_58;
      }

LABEL_52:
      if ((v27 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_59;
    }
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    goto LABEL_57;
  }

LABEL_45:
  v27 = *v25;
  v26 = v25[1];
  if (!v26 || (atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_51:
    if (!*(a1 + 72))
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if (*(a1 + 72))
  {
    goto LABEL_52;
  }

LABEL_58:
  if (v27)
  {
LABEL_59:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v28 = qword_28087C408, v29 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_66:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v28 = qword_28087C408;
      v29 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v28)(*(v28 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v28 += 16;
    }

    while (v28 != v29);
    if (byte_28087C430)
    {
      goto LABEL_66;
    }

LABEL_68:
    abort();
  }

  return a1;
}

void sub_27158923C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  sub_271582FF4(v3);
  _Unwind_Resume(a1);
}

void sub_2715892BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_2711308D4();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_271589360(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          *&v20 = &unk_288109288;
          *(&v20 + 1) = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v20 + 1);
            v6 = v21;
          }

          v18[0] = &unk_288109288;
          v18[1] = v5;
          v19 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271587DFC(a1, v18);
          v18[0] = &unk_288109288;
          v7 = v19;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v20 = &unk_288109288;
          v8 = v21;
          if (v21)
          {
            if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v11 = *(a2 + 72) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 72);
  if (v11)
  {
    v12 = 0;
  }

  LODWORD(v20) = 4;
  *(&v20 + 4) = v12;
  v13 = 4 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x3FFFFFFFFLL | ((v14 >> 2) << 34);
  v16 = __PAIR64__(DWORD1(v20), 4);
  LODWORD(v20) = 1;
  *(&v20 + 4) = v15;
  v17 = v20;
  *a1 = 0;
  *(a1 + 8) = v16;
  *(a1 + 16) = HIDWORD(v12);
  *(a1 + 20) = v17;
  *(a1 + 28) = v14;
  *(a1 + 32) = v12;
  *(a1 + 40) = v15;
}

void sub_2715895E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_2715899EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271589A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271589A38(int a1, uint64_t a2, double a3)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) == 2)
    {
      v10 = *(a2 + 8);
      v9 = *(a2 + 16);
      v12[0] = &unk_288109288;
      v12[1] = v10;
      v13 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_271589C44(v18, v12);
      a3 = *&v19;
      v12[0] = &unk_288109288;
      v5 = v13;
      if (!v13)
      {
        return *&a3;
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (a1 == 1)
  {
    if (*(a2 + 24) == 1)
    {
      v8 = *(a2 + 8);
      v7 = *(a2 + 16);
      v14[0] = &unk_288109288;
      v14[1] = v8;
      v15 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_271589C44(v18, v14);
      a3 = *&v19;
      v14[0] = &unk_288109288;
      v5 = v15;
      if (!v15)
      {
        return *&a3;
      }

      goto LABEL_18;
    }

LABEL_20:
    sub_2711308D4();
  }

  if (a1)
  {
    return *&a3;
  }

  if (*(a2 + 24))
  {
    goto LABEL_20;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  v16[0] = &unk_288109288;
  v16[1] = v4;
  v17 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_271589C44(v18, v16);
  a3 = *&v19;
  v16[0] = &unk_288109288;
  v5 = v17;
  if (!v17)
  {
    return *&a3;
  }

LABEL_18:
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return *&a3;
  }

  v11 = a3;
  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return *&v11;
}

void sub_271589C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271589C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271589C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271589C44(uint64_t *a1, uint64_t a2)
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_65;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_65;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v42[0] = &unk_288109288;
  v42[1] = v12;
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v42);
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_21:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
          goto LABEL_31;
        }
      }

      else
      {
        v15 = qword_28087C408;
        v16 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_65;
        }
      }

      do
      {
        (*v15)(*(v15 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
        v15 += 16;
      }

      while (v15 != v16);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_30;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_21;
  }

LABEL_31:
  v42[0] = &unk_288109288;
  v17 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17, v14);
    std::__shared_weak_count::__release_weak(v17);
    v18 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = v18;
    if (v18)
    {
      goto LABEL_34;
    }

LABEL_38:
    v39 = &unk_288109288;
    goto LABEL_39;
  }

  v18 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v18;
  if (!v18)
  {
    goto LABEL_38;
  }

LABEL_34:
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_288109288;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41, v14);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_39:
  v20 = *(a2 + 8);
  v19 = *(a2 + 16);
  v36 = &unk_288109288;
  v37 = v20;
  v38 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_2717F1FA4(&v36, 0);
  v44[0] = &unk_288109288;
  v44[1] = v37;
  v45 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = sub_2717F3514(v44);
  v23 = sub_2717F3958(v44);
  v24 = sub_2717F3D9C(v44);
  v25 = v22;
  v26 = sub_2717F41E0(v44) << 31;
  v44[0] = &unk_288109288;
  v27 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = v22 | (v23 << 32);
  v36 = &unk_288109288;
  v29 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (v23)
  {
    v30 = v25 == 0;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  *a1 = v21;
  a1[1] = v31;
  a1[2] = v26 & 0xFFFFFFFF00000000 | (v24 >> 1);
  if (HIDWORD(v26) * HIDWORD(v31) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, v36);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v32 = qword_28087C408, v33 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_63:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v32 = qword_28087C408;
      v33 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_65;
      }
    }

    do
    {
      v35 = *v32;
      v34 = *(v32 + 8);
      v32 += 16;
      v35(v34, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v32 != v33);
    if (byte_28087C430)
    {
      goto LABEL_63;
    }

LABEL_65:
    abort();
  }
}

void sub_27158A2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158A310(uint64_t a1)
{
  *a1 = &unk_2881093C8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27158A388(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_27158AFFC(v20, a1);
        sub_271254000(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27158A654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158A668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158A67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158A690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158A6A4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881093C8;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_288109288;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v33 = &unk_288109288;
  v34 = v4;
  v35 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = *v4;
  v9 = v4[1];
  if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8, &unk_288109288);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_82;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "ref.IsValid()", 13, "", 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_23;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_24:
  v41[0] = &unk_288109288;
  v41[1] = v34;
  v42 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v41);
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_32:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8, v33);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_41:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
          goto LABEL_42;
        }
      }

      else
      {
        v15 = qword_28087C408;
        v16 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_82;
        }
      }

      do
      {
        (*v15)(*(v15 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
        v15 += 16;
      }

      while (v15 != v16);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_41;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_32;
  }

LABEL_42:
  v41[0] = &unk_288109288;
  v17 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17, v14);
    std::__shared_weak_count::__release_weak(v17);
    v18 = v35;
    v39 = v34;
    v40 = v35;
    if (v35)
    {
      goto LABEL_45;
    }

LABEL_49:
    v38 = &unk_288109288;
    goto LABEL_50;
  }

  v18 = v35;
  v39 = v34;
  v40 = v35;
  if (!v35)
  {
    goto LABEL_49;
  }

LABEL_45:
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = &unk_288109288;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40, v14);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_50:
  v36[0] = &unk_288109288;
  v36[1] = v34;
  v37 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = sub_2717F3514(v36);
  v20 = sub_2717F3958(v36);
  v21 = sub_2717F3D9C(v36);
  v22 = sub_2717F41E0(v36);
  v36[0] = &unk_288109288;
  v23 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v24 = v22;
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    v22 = v24;
  }

  *(a1 + 48) = v19 | (v20 << 32);
  *(a1 + 56) = (v22 << 31) & 0xFFFFFFFF00000000 | (v21 >> 1);
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    v25 = *(a2 + 8);
    if (v25)
    {
      goto LABEL_58;
    }

LABEL_66:
    v29 = 0;
    goto LABEL_67;
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    goto LABEL_66;
  }

LABEL_58:
  v26 = *(v25 + 8);
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
      v27 = *(a2 + 8);
      if (v27)
      {
        goto LABEL_61;
      }

LABEL_71:
      v29 = 0;
      if (!*(a1 + 48))
      {
        goto LABEL_72;
      }

LABEL_68:
      if ((v29 == 0) == (*(a1 + 52) == 0))
      {
        return a1;
      }

      goto LABEL_73;
    }
  }

  v27 = *(a2 + 8);
  if (!v27)
  {
    goto LABEL_71;
  }

LABEL_61:
  v29 = *v27;
  v28 = v27[1];
  if (!v28 || (atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_67:
    if (!*(a1 + 48))
    {
      goto LABEL_72;
    }

    goto LABEL_68;
  }

  (v28->__on_zero_shared)(v28);
  std::__shared_weak_count::__release_weak(v28);
  if (*(a1 + 48))
  {
    goto LABEL_68;
  }

LABEL_72:
  if (v29)
  {
LABEL_73:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8, &unk_288109288);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v30 = qword_28087C408, v31 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_80:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v30 = qword_28087C408;
      v31 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_82;
      }
    }

    do
    {
      (*v30)(*(v30 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v30 += 16;
    }

    while (v30 != v31);
    if (byte_28087C430)
    {
      goto LABEL_80;
    }

LABEL_82:
    abort();
  }

  return a1;
}

void sub_27158AEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2717F319C(&a9);
  sub_271582FF4(v9);
  _Unwind_Resume(a1);
}

void sub_27158AF58(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_2711308D4();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_27158AFFC(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          v22 = &unk_288109288;
          v23 = v5;
          v24 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v23;
            v6 = v24;
          }

          v20[0] = &unk_288109288;
          v20[1] = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271589C44(a1, v20);
          v20[0] = &unk_288109288;
          v7 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v22 = &unk_288109288;
          v8 = v24;
          if (v24)
          {
            if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  a1[1] = v12;
  a1[2] = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_33:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_28087C408;
      v15 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_28087C430)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_27158B33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F319C(&a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158B740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158B760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27158B78C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_27158B9B4(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_27158B9B4(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_27158B9B4(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_27158B978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158B98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158B9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158B9B4(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_65;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_65;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v42[0] = &unk_288109288;
  v42[1] = v12;
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v42);
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_21:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
          goto LABEL_31;
        }
      }

      else
      {
        v15 = qword_28087C408;
        v16 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_65;
        }
      }

      do
      {
        (*v15)(*(v15 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
        v15 += 16;
      }

      while (v15 != v16);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_30;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_21;
  }

LABEL_31:
  v42[0] = &unk_288109288;
  v17 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17, v14);
    std::__shared_weak_count::__release_weak(v17);
    v18 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = v18;
    if (v18)
    {
      goto LABEL_34;
    }

LABEL_38:
    v39 = &unk_288109288;
    goto LABEL_39;
  }

  v18 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v18;
  if (!v18)
  {
    goto LABEL_38;
  }

LABEL_34:
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_288109288;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41, v14);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_39:
  v20 = *(a2 + 8);
  v19 = *(a2 + 16);
  v36 = &unk_288109288;
  v37 = v20;
  v38 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_2717F1FA4(&v36, 0);
  *&v44 = &unk_288109288;
  *(&v44 + 1) = v37;
  v45 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = sub_2717F3514(&v44);
  v23 = sub_2717F3958(&v44);
  v24 = sub_2717F3D9C(&v44);
  v25 = v22;
  v26 = sub_2717F41E0(&v44) << 31;
  *&v44 = &unk_288109288;
  v27 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = v22 | (v23 << 32);
  v36 = &unk_288109288;
  v29 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (v23)
  {
    v30 = v25 == 0;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  *(&v44 + 4) = v31;
  LODWORD(v44) = 3;
  v32 = v44;
  LODWORD(v44) = 1;
  *(&v44 + 4) = v26 & 0xFFFFFFFF00000000 | (v24 >> 1);
  v33 = v44;
  *a1 = v21;
  *(a1 + 8) = v32;
  *(a1 + 16) = HIDWORD(v31);
  *(a1 + 20) = v33;
  *(a1 + 28) = HIDWORD(v26);
  *(a1 + 32) = v31;
  *(a1 + 40) = v26 & 0xFFFFFFFF00000000 | (v24 >> 1);
  if (HIDWORD(v31) * HIDWORD(v26) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v34 = qword_28087C408, v35 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_63:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v34 = qword_28087C408;
      v35 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_65;
      }
    }

    do
    {
      (*v34)(*(v34 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v34 += 16;
    }

    while (v34 != v35);
    if (byte_28087C430)
    {
      goto LABEL_63;
    }

LABEL_65:
    abort();
  }
}

void sub_27158C0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158C0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158C0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158C0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158C108(uint64_t a1)
{
  *a1 = &unk_288109338;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27158C180(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_27158CE54(v20, a1);
        sub_2712A3624(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27158C44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158C460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158C474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158C488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158C49C(uint64_t a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_288109338;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_288109288;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v34 = v4;
  v35 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = *v4;
  v9 = v4[1];
  if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_82;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "ref.IsValid()", 13, "", 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_23;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_24:
  v41[0] = &unk_288109288;
  v41[1] = v34;
  v42 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v41);
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_32:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_41:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
          goto LABEL_42;
        }
      }

      else
      {
        v15 = qword_28087C408;
        v16 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_82;
        }
      }

      do
      {
        (*v15)(*(v15 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
        v15 += 16;
      }

      while (v15 != v16);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_41;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_32;
  }

LABEL_42:
  v41[0] = &unk_288109288;
  v17 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17, v14);
    std::__shared_weak_count::__release_weak(v17);
    v18 = v35;
    v39 = v34;
    v40 = v35;
    if (v35)
    {
      goto LABEL_45;
    }

LABEL_49:
    v38 = &unk_288109288;
    goto LABEL_50;
  }

  v18 = v35;
  v39 = v34;
  v40 = v35;
  if (!v35)
  {
    goto LABEL_49;
  }

LABEL_45:
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = &unk_288109288;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40, v14);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_50:
  v36[0] = &unk_288109288;
  v36[1] = v34;
  v37 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = sub_2717F3514(v36);
  v20 = sub_2717F3958(v36);
  v21 = sub_2717F3D9C(v36);
  v22 = sub_2717F41E0(v36);
  v36[0] = &unk_288109288;
  v23 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v24 = v22;
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    v22 = v24;
  }

  v25 = v19 | (v20 << 32);
  LODWORD(v43[0]) = 3;
  HIDWORD(v43[0]) = v25;
  *(a1 + 48) = v43[0];
  *(a1 + 56) = v20;
  LODWORD(v43[0]) = 1;
  *(v43 + 4) = (v22 << 31) & 0xFFFFFFFF00000000 | (v21 >> 1);
  *(a1 + 60) = v43[0];
  *(a1 + 68) = v22 >> 1;
  *(a1 + 72) = v25;
  *(a1 + 80) = (v22 << 31) & 0xFFFFFFFF00000000 | (v21 >> 1);
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    v26 = *(a2 + 8);
    if (v26)
    {
      goto LABEL_58;
    }

LABEL_66:
    v30 = 0;
    goto LABEL_67;
  }

  v26 = *(a2 + 8);
  if (!v26)
  {
    goto LABEL_66;
  }

LABEL_58:
  v27 = *(v26 + 8);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
      v28 = *(a2 + 8);
      if (v28)
      {
        goto LABEL_61;
      }

LABEL_71:
      v30 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_72;
      }

LABEL_68:
      if ((v30 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_73;
    }
  }

  v28 = *(a2 + 8);
  if (!v28)
  {
    goto LABEL_71;
  }

LABEL_61:
  v30 = *v28;
  v29 = v28[1];
  if (!v29 || (atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_67:
    if (!*(a1 + 72))
    {
      goto LABEL_72;
    }

    goto LABEL_68;
  }

  (v29->__on_zero_shared)(v29);
  std::__shared_weak_count::__release_weak(v29);
  if (*(a1 + 72))
  {
    goto LABEL_68;
  }

LABEL_72:
  if (v30)
  {
LABEL_73:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v31 = qword_28087C408, v32 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_80:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v31 = qword_28087C408;
      v32 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_82;
      }
    }

    do
    {
      (*v31)(*(v31 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v31 += 16;
    }

    while (v31 != v32);
    if (byte_28087C430)
    {
      goto LABEL_80;
    }

LABEL_82:
    abort();
  }

  return a1;
}

void sub_27158CD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  sub_271582FF4(v3);
  _Unwind_Resume(a1);
}

void sub_27158CDB0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_2711308D4();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_27158CE54(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_22;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          v13 = &unk_288109288;
          v14 = v5;
          v15 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v14;
            v6 = v15;
          }

          v11[0] = &unk_288109288;
          v11[1] = v5;
          v12 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_27158B9B4(a1, v11);
          v11[0] = &unk_288109288;
          v7 = v12;
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v13 = &unk_288109288;
          v8 = v15;
          if (v15)
          {
            if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_22:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_27157497C(a1, 0, (a2 + 72));
}

void sub_27158D064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F319C(&a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158D468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158D488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27158D4B4(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_27158D6DC(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_27158D6DC(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_27158D6DC(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_27158D6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158D6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158D6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158D6DC(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_65;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_65;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v42[0] = &unk_288109288;
  v42[1] = v12;
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v42);
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_21:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
          goto LABEL_31;
        }
      }

      else
      {
        v15 = qword_28087C408;
        v16 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_65;
        }
      }

      do
      {
        (*v15)(*(v15 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
        v15 += 16;
      }

      while (v15 != v16);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_30;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_21;
  }

LABEL_31:
  v42[0] = &unk_288109288;
  v17 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17, v14);
    std::__shared_weak_count::__release_weak(v17);
    v18 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = v18;
    if (v18)
    {
      goto LABEL_34;
    }

LABEL_38:
    v39 = &unk_288109288;
    goto LABEL_39;
  }

  v18 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v18;
  if (!v18)
  {
    goto LABEL_38;
  }

LABEL_34:
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_288109288;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41, v14);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_39:
  v20 = *(a2 + 8);
  v19 = *(a2 + 16);
  v36 = &unk_288109288;
  v37 = v20;
  v38 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_2717F1FA4(&v36, 0);
  *&v44 = &unk_288109288;
  *(&v44 + 1) = v37;
  v45 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = sub_2717F3514(&v44);
  v23 = sub_2717F3958(&v44);
  v24 = sub_2717F3D9C(&v44);
  v25 = v22;
  v26 = sub_2717F41E0(&v44) << 31;
  *&v44 = &unk_288109288;
  v27 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = v22 | (v23 << 32);
  v36 = &unk_288109288;
  v29 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (v23)
  {
    v30 = v25 == 0;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  *(&v44 + 4) = v31;
  LODWORD(v44) = 4;
  v32 = v44;
  LODWORD(v44) = 1;
  *(&v44 + 4) = v26 & 0xFFFFFFFF00000000 | (v24 >> 1);
  v33 = v44;
  *a1 = v21;
  *(a1 + 8) = v32;
  *(a1 + 16) = HIDWORD(v31);
  *(a1 + 20) = v33;
  *(a1 + 28) = HIDWORD(v26);
  *(a1 + 32) = v31;
  *(a1 + 40) = v26 & 0xFFFFFFFF00000000 | (v24 >> 1);
  if (HIDWORD(v31) * HIDWORD(v26) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v34 = qword_28087C408, v35 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_63:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v34 = qword_28087C408;
      v35 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_65;
      }
    }

    do
    {
      (*v34)(*(v34 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v34 += 16;
    }

    while (v34 != v35);
    if (byte_28087C430)
    {
      goto LABEL_63;
    }

LABEL_65:
    abort();
  }
}

void sub_27158DDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158DDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158DDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158DE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158DE30(uint64_t a1)
{
  *a1 = &unk_2881092A8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27158DEA8(uint64_t a1, const void **a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_27158EB7C(v20, a1);
        sub_271244900(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27158E174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158E188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158E19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158E1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158E1C4(uint64_t a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_2881092A8;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_288109288;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v34 = v4;
  v35 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = *v4;
  v9 = v4[1];
  if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_82;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "ref.IsValid()", 13, "", 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_23;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_24:
  v41[0] = &unk_288109288;
  v41[1] = v34;
  v42 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v41);
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_32:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_41:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
          goto LABEL_42;
        }
      }

      else
      {
        v15 = qword_28087C408;
        v16 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_82;
        }
      }

      do
      {
        (*v15)(*(v15 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
        v15 += 16;
      }

      while (v15 != v16);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_41;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_32;
  }

LABEL_42:
  v41[0] = &unk_288109288;
  v17 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17, v14);
    std::__shared_weak_count::__release_weak(v17);
    v18 = v35;
    v39 = v34;
    v40 = v35;
    if (v35)
    {
      goto LABEL_45;
    }

LABEL_49:
    v38 = &unk_288109288;
    goto LABEL_50;
  }

  v18 = v35;
  v39 = v34;
  v40 = v35;
  if (!v35)
  {
    goto LABEL_49;
  }

LABEL_45:
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = &unk_288109288;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40, v14);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_50:
  v36[0] = &unk_288109288;
  v36[1] = v34;
  v37 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = sub_2717F3514(v36);
  v20 = sub_2717F3958(v36);
  v21 = sub_2717F3D9C(v36);
  v22 = sub_2717F41E0(v36);
  v36[0] = &unk_288109288;
  v23 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v24 = v22;
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    v22 = v24;
  }

  v25 = v19 | (v20 << 32);
  LODWORD(v43[0]) = 4;
  HIDWORD(v43[0]) = v25;
  *(a1 + 48) = v43[0];
  *(a1 + 56) = v20;
  LODWORD(v43[0]) = 1;
  *(v43 + 4) = (v22 << 31) & 0xFFFFFFFF00000000 | (v21 >> 1);
  *(a1 + 60) = v43[0];
  *(a1 + 68) = v22 >> 1;
  *(a1 + 72) = v25;
  *(a1 + 80) = (v22 << 31) & 0xFFFFFFFF00000000 | (v21 >> 1);
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    v26 = *(a2 + 8);
    if (v26)
    {
      goto LABEL_58;
    }

LABEL_66:
    v30 = 0;
    goto LABEL_67;
  }

  v26 = *(a2 + 8);
  if (!v26)
  {
    goto LABEL_66;
  }

LABEL_58:
  v27 = *(v26 + 8);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
      v28 = *(a2 + 8);
      if (v28)
      {
        goto LABEL_61;
      }

LABEL_71:
      v30 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_72;
      }

LABEL_68:
      if ((v30 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_73;
    }
  }

  v28 = *(a2 + 8);
  if (!v28)
  {
    goto LABEL_71;
  }

LABEL_61:
  v30 = *v28;
  v29 = v28[1];
  if (!v29 || (atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_67:
    if (!*(a1 + 72))
    {
      goto LABEL_72;
    }

    goto LABEL_68;
  }

  (v29->__on_zero_shared)(v29);
  std::__shared_weak_count::__release_weak(v29);
  if (*(a1 + 72))
  {
    goto LABEL_68;
  }

LABEL_72:
  if (v30)
  {
LABEL_73:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v31 = qword_28087C408, v32 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_80:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v31 = qword_28087C408;
      v32 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_82;
      }
    }

    do
    {
      (*v31)(*(v31 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v31 += 16;
    }

    while (v31 != v32);
    if (byte_28087C430)
    {
      goto LABEL_80;
    }

LABEL_82:
    abort();
  }

  return a1;
}

void sub_27158EA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  sub_271582FF4(v3);
  _Unwind_Resume(a1);
}

void sub_27158EAD8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_2711308D4();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_27158EB7C(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          *&v20 = &unk_288109288;
          *(&v20 + 1) = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v20 + 1);
            v6 = v21;
          }

          v18[0] = &unk_288109288;
          v18[1] = v5;
          v19 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_27158D6DC(a1, v18);
          v18[0] = &unk_288109288;
          v7 = v19;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v20 = &unk_288109288;
          v8 = v21;
          if (v21)
          {
            if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v11 = *(a2 + 72) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 72);
  if (v11)
  {
    v12 = 0;
  }

  LODWORD(v20) = 4;
  *(&v20 + 4) = v12;
  v13 = 4 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x3FFFFFFFFLL | ((v14 >> 2) << 34);
  v16 = __PAIR64__(DWORD1(v20), 4);
  LODWORD(v20) = 1;
  *(&v20 + 4) = v15;
  v17 = v20;
  *a1 = 0;
  *(a1 + 8) = v16;
  *(a1 + 16) = HIDWORD(v12);
  *(a1 + 20) = v17;
  *(a1 + 28) = v14;
  *(a1 + 32) = v12;
  *(a1 + 40) = v15;
}

void sub_27158EE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_27158F208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158F228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27158F254(int a1, uint64_t a2, double a3)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) == 2)
    {
      v10 = *(a2 + 8);
      v9 = *(a2 + 16);
      v12[0] = &unk_288109288;
      v12[1] = v10;
      v13 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_27158F460(v18, v12);
      a3 = *&v19;
      v12[0] = &unk_288109288;
      v5 = v13;
      if (!v13)
      {
        return *&a3;
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (a1 == 1)
  {
    if (*(a2 + 24) == 1)
    {
      v8 = *(a2 + 8);
      v7 = *(a2 + 16);
      v14[0] = &unk_288109288;
      v14[1] = v8;
      v15 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_27158F460(v18, v14);
      a3 = *&v19;
      v14[0] = &unk_288109288;
      v5 = v15;
      if (!v15)
      {
        return *&a3;
      }

      goto LABEL_18;
    }

LABEL_20:
    sub_2711308D4();
  }

  if (a1)
  {
    return *&a3;
  }

  if (*(a2 + 24))
  {
    goto LABEL_20;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  v16[0] = &unk_288109288;
  v16[1] = v4;
  v17 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_27158F460(v18, v16);
  a3 = *&v19;
  v16[0] = &unk_288109288;
  v5 = v17;
  if (!v17)
  {
    return *&a3;
  }

LABEL_18:
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return *&a3;
  }

  v11 = a3;
  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return *&v11;
}

void sub_27158F424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158F438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158F44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158F460(uint64_t *a1, uint64_t a2)
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_66;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v42[0] = &unk_288109288;
  v42[1] = v12;
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v42);
  if (v13 <= 1380411456)
  {
    if (v13 != 843264104 && v13 != 1278226536)
    {
LABEL_22:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 122, "Contains(pf::formats::F16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_31:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
          goto LABEL_32;
        }
      }

      else
      {
        v15 = qword_28087C408;
        v16 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_66;
        }
      }

      do
      {
        (*v15)(*(v15 + 8), "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
        v15 += 16;
      }

      while (v15 != v16);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_31;
    }
  }

  else if (v13 != 1380411457 && v13 != 1751410032 && v13 != 1751411059)
  {
    goto LABEL_22;
  }

LABEL_32:
  v42[0] = &unk_288109288;
  v17 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17, v14);
    std::__shared_weak_count::__release_weak(v17);
    v18 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = v18;
    if (v18)
    {
      goto LABEL_35;
    }

LABEL_39:
    v39 = &unk_288109288;
    goto LABEL_40;
  }

  v18 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v18;
  if (!v18)
  {
    goto LABEL_39;
  }

LABEL_35:
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_288109288;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41, v14);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_40:
  v20 = *(a2 + 8);
  v19 = *(a2 + 16);
  v36 = &unk_288109288;
  v37 = v20;
  v38 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_2717F1FA4(&v36, 0);
  v44[0] = &unk_288109288;
  v44[1] = v37;
  v45 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = sub_2717F3514(v44);
  v23 = sub_2717F3958(v44);
  v24 = sub_2717F3D9C(v44);
  v25 = v22;
  v26 = sub_2717F41E0(v44) << 31;
  v44[0] = &unk_288109288;
  v27 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = v22 | (v23 << 32);
  v36 = &unk_288109288;
  v29 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (v23)
  {
    v30 = v25 == 0;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  *a1 = v21;
  a1[1] = v31;
  a1[2] = v26 & 0xFFFFFFFF00000000 | (v24 >> 1);
  if (HIDWORD(v26) * HIDWORD(v31) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, v36);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v32 = qword_28087C408, v33 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_64:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v32 = qword_28087C408;
      v33 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v35 = *v32;
      v34 = *(v32 + 8);
      v32 += 16;
      v35(v34, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v32 != v33);
    if (byte_28087C430)
    {
      goto LABEL_64;
    }

LABEL_66:
    abort();
  }
}

void sub_27158FB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158FB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_2717F319C(va);
  sub_2717F319C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27158FB38(uint64_t a1)
{
  *a1 = &unk_288109968;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27158FBB0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_271590834(v20, a1);
        sub_27123D99C(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27158FE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158FE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158FEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158FEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158FECC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288109968;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_288109288;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v33 = &unk_288109288;
  v34 = v4;
  v35 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = *v4;
  v9 = v4[1];
  if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8, &unk_288109288);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_83;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "ref.IsValid()", 13, "", 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_23;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_24:
  v41[0] = &unk_288109288;
  v41[1] = v34;
  v42 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v41);
  if (v13 <= 1380411456)
  {
    if (v13 != 843264104 && v13 != 1278226536)
    {
LABEL_33:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 122, "Contains(pf::formats::F16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8, v33);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_42:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
          goto LABEL_43;
        }
      }

      else
      {
        v15 = qword_28087C408;
        v16 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_83;
        }
      }

      do
      {
        (*v15)(*(v15 + 8), "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
        v15 += 16;
      }

      while (v15 != v16);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_42;
    }
  }

  else if (v13 != 1380411457 && v13 != 1751410032 && v13 != 1751411059)
  {
    goto LABEL_33;
  }

LABEL_43:
  v41[0] = &unk_288109288;
  v17 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17, v14);
    std::__shared_weak_count::__release_weak(v17);
    v18 = v35;
    v39 = v34;
    v40 = v35;
    if (v35)
    {
      goto LABEL_46;
    }

LABEL_50:
    v38 = &unk_288109288;
    goto LABEL_51;
  }

  v18 = v35;
  v39 = v34;
  v40 = v35;
  if (!v35)
  {
    goto LABEL_50;
  }

LABEL_46:
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = &unk_288109288;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40, v14);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_51:
  v36[0] = &unk_288109288;
  v36[1] = v34;
  v37 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = sub_2717F3514(v36);
  v20 = sub_2717F3958(v36);
  v21 = sub_2717F3D9C(v36);
  v22 = sub_2717F41E0(v36);
  v36[0] = &unk_288109288;
  v23 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v24 = v22;
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    v22 = v24;
  }

  *(a1 + 48) = v19 | (v20 << 32);
  *(a1 + 56) = (v22 << 31) & 0xFFFFFFFF00000000 | (v21 >> 1);
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    v25 = *(a2 + 8);
    if (v25)
    {
      goto LABEL_59;
    }

LABEL_67:
    v29 = 0;
    goto LABEL_68;
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    goto LABEL_67;
  }

LABEL_59:
  v26 = *(v25 + 8);
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
      v27 = *(a2 + 8);
      if (v27)
      {
        goto LABEL_62;
      }

LABEL_72:
      v29 = 0;
      if (!*(a1 + 48))
      {
        goto LABEL_73;
      }

LABEL_69:
      if ((v29 == 0) == (*(a1 + 52) == 0))
      {
        return a1;
      }

      goto LABEL_74;
    }
  }

  v27 = *(a2 + 8);
  if (!v27)
  {
    goto LABEL_72;
  }

LABEL_62:
  v29 = *v27;
  v28 = v27[1];
  if (!v28 || (atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_68:
    if (!*(a1 + 48))
    {
      goto LABEL_73;
    }

    goto LABEL_69;
  }

  (v28->__on_zero_shared)(v28);
  std::__shared_weak_count::__release_weak(v28);
  if (*(a1 + 48))
  {
    goto LABEL_69;
  }

LABEL_73:
  if (v29)
  {
LABEL_74:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8, &unk_288109288);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v30 = qword_28087C408, v31 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_81:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v30 = qword_28087C408;
      v31 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_83;
      }
    }

    do
    {
      (*v30)(*(v30 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v30 += 16;
    }

    while (v30 != v31);
    if (byte_28087C430)
    {
      goto LABEL_81;
    }

LABEL_83:
    abort();
  }

  return a1;
}

void sub_271590720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2717F319C(&a9);
  sub_271582FF4(v9);
  _Unwind_Resume(a1);
}

void sub_271590790(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_2711308D4();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_271590834(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          v22 = &unk_288109288;
          v23 = v5;
          v24 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v23;
            v6 = v24;
          }

          v20[0] = &unk_288109288;
          v20[1] = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_27158F460(a1, v20);
          v20[0] = &unk_288109288;
          v7 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v22 = &unk_288109288;
          v8 = v24;
          if (v24)
          {
            if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  a1[1] = v12;
  a1[2] = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_33:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_28087C408;
      v15 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_28087C430)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_271590B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F319C(&a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271590F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271590F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271590FC4(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_2715911EC(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_2715911EC(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_2715911EC(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_2715911B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715911C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715911D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715911EC(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_66;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v42[0] = &unk_288109288;
  v42[1] = v12;
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v42);
  if (v13 <= 1380411456)
  {
    if (v13 != 843264104 && v13 != 1278226536)
    {
LABEL_22:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 122, "Contains(pf::formats::F16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_31:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
          goto LABEL_32;
        }
      }

      else
      {
        v15 = qword_28087C408;
        v16 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_66;
        }
      }

      do
      {
        (*v15)(*(v15 + 8), "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
        v15 += 16;
      }

      while (v15 != v16);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_31;
    }
  }

  else if (v13 != 1380411457 && v13 != 1751410032 && v13 != 1751411059)
  {
    goto LABEL_22;
  }

LABEL_32:
  v42[0] = &unk_288109288;
  v17 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17, v14);
    std::__shared_weak_count::__release_weak(v17);
    v18 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = v18;
    if (v18)
    {
      goto LABEL_35;
    }

LABEL_39:
    v39 = &unk_288109288;
    goto LABEL_40;
  }

  v18 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v18;
  if (!v18)
  {
    goto LABEL_39;
  }

LABEL_35:
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_288109288;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41, v14);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_40:
  v20 = *(a2 + 8);
  v19 = *(a2 + 16);
  v36 = &unk_288109288;
  v37 = v20;
  v38 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_2717F1FA4(&v36, 0);
  *&v44 = &unk_288109288;
  *(&v44 + 1) = v37;
  v45 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = sub_2717F3514(&v44);
  v23 = sub_2717F3958(&v44);
  v24 = sub_2717F3D9C(&v44);
  v25 = v22;
  v26 = sub_2717F41E0(&v44) << 31;
  *&v44 = &unk_288109288;
  v27 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = v22 | (v23 << 32);
  v36 = &unk_288109288;
  v29 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (v23)
  {
    v30 = v25 == 0;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  *(&v44 + 4) = v31;
  LODWORD(v44) = 2;
  v32 = v44;
  LODWORD(v44) = 1;
  *(&v44 + 4) = v26 & 0xFFFFFFFF00000000 | (v24 >> 1);
  v33 = v44;
  *a1 = v21;
  *(a1 + 8) = v32;
  *(a1 + 16) = HIDWORD(v31);
  *(a1 + 20) = v33;
  *(a1 + 28) = HIDWORD(v26);
  *(a1 + 32) = v31;
  *(a1 + 40) = v26 & 0xFFFFFFFF00000000 | (v24 >> 1);
  if (HIDWORD(v31) * HIDWORD(v26) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v34 = qword_28087C408, v35 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_64:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v34 = qword_28087C408;
      v35 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      (*v34)(*(v34 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v34 += 16;
    }

    while (v34 != v35);
    if (byte_28087C430)
    {
      goto LABEL_64;
    }

LABEL_66:
    abort();
  }
}

void sub_2715918F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271591908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27159191C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271591930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271591950(uint64_t a1)
{
  *a1 = &unk_2881098D8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715919C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_2715926B0(v20, a1);
        v24[0] = a2;
        v24[1] = v20;
        sub_2712A0BBC(v24);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_271591C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271591CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271591CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271591CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271591CE8(uint64_t a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_2881098D8;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_288109288;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v34 = v4;
  v35 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = *v4;
  v9 = v4[1];
  if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_83;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "ref.IsValid()", 13, "", 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_23;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_24:
  v41[0] = &unk_288109288;
  v41[1] = v34;
  v42 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v41);
  if (v13 <= 1380411456)
  {
    if (v13 != 843264104 && v13 != 1278226536)
    {
LABEL_33:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 122, "Contains(pf::formats::F16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_42:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
          goto LABEL_43;
        }
      }

      else
      {
        v15 = qword_28087C408;
        v16 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_83;
        }
      }

      do
      {
        (*v15)(*(v15 + 8), "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
        v15 += 16;
      }

      while (v15 != v16);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_42;
    }
  }

  else if (v13 != 1380411457 && v13 != 1751410032 && v13 != 1751411059)
  {
    goto LABEL_33;
  }

LABEL_43:
  v41[0] = &unk_288109288;
  v17 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17, v14);
    std::__shared_weak_count::__release_weak(v17);
    v18 = v35;
    v39 = v34;
    v40 = v35;
    if (v35)
    {
      goto LABEL_46;
    }

LABEL_50:
    v38 = &unk_288109288;
    goto LABEL_51;
  }

  v18 = v35;
  v39 = v34;
  v40 = v35;
  if (!v35)
  {
    goto LABEL_50;
  }

LABEL_46:
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = &unk_288109288;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40, v14);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_51:
  v36[0] = &unk_288109288;
  v36[1] = v34;
  v37 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = sub_2717F3514(v36);
  v20 = sub_2717F3958(v36);
  v21 = sub_2717F3D9C(v36);
  v22 = sub_2717F41E0(v36);
  v36[0] = &unk_288109288;
  v23 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v24 = v22;
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    v22 = v24;
  }

  v25 = v19 | (v20 << 32);
  LODWORD(v43[0]) = 2;
  HIDWORD(v43[0]) = v25;
  *(a1 + 48) = v43[0];
  *(a1 + 56) = v20;
  LODWORD(v43[0]) = 1;
  *(v43 + 4) = (v22 << 31) & 0xFFFFFFFF00000000 | (v21 >> 1);
  *(a1 + 60) = v43[0];
  *(a1 + 68) = v22 >> 1;
  *(a1 + 72) = v25;
  *(a1 + 80) = (v22 << 31) & 0xFFFFFFFF00000000 | (v21 >> 1);
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    v26 = *(a2 + 8);
    if (v26)
    {
      goto LABEL_59;
    }

LABEL_67:
    v30 = 0;
    goto LABEL_68;
  }

  v26 = *(a2 + 8);
  if (!v26)
  {
    goto LABEL_67;
  }

LABEL_59:
  v27 = *(v26 + 8);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
      v28 = *(a2 + 8);
      if (v28)
      {
        goto LABEL_62;
      }

LABEL_72:
      v30 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_73;
      }

LABEL_69:
      if ((v30 == 0) == (*(a1 + 76) == 0))
      {
        return a1;
      }

      goto LABEL_74;
    }
  }

  v28 = *(a2 + 8);
  if (!v28)
  {
    goto LABEL_72;
  }

LABEL_62:
  v30 = *v28;
  v29 = v28[1];
  if (!v29 || (atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_68:
    if (!*(a1 + 72))
    {
      goto LABEL_73;
    }

    goto LABEL_69;
  }

  (v29->__on_zero_shared)(v29);
  std::__shared_weak_count::__release_weak(v29);
  if (*(a1 + 72))
  {
    goto LABEL_69;
  }

LABEL_73:
  if (v30)
  {
LABEL_74:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v31 = qword_28087C408, v32 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_81:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v31 = qword_28087C408;
      v32 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_83;
      }
    }

    do
    {
      (*v31)(*(v31 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v31 += 16;
    }

    while (v31 != v32);
    if (byte_28087C430)
    {
      goto LABEL_81;
    }

LABEL_83:
    abort();
  }

  return a1;
}