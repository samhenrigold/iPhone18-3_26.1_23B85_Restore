void sub_27159259C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  sub_271582FF4(v3);
  _Unwind_Resume(a1);
}

void sub_27159260C(uint64_t a1, uint64_t a2)
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

void sub_2715926B0(uint64_t a1, uint64_t a2)
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

          sub_2715911EC(a1, v18);
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

void sub_271592938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_271592D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_271592D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271592D88(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

    sub_271592FB0(v20, v14);
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

        sub_271592FB0(v20, v18);
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

    sub_271592FB0(v20, v16);
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

void sub_271592F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271592F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271592F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271592FB0(uint64_t a1, uint64_t a2)
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

void sub_2715936B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715936CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715936E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715936F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

uint64_t sub_271593714(uint64_t a1)
{
  *a1 = &unk_288109848;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27159378C(uint64_t a1, uint64_t a2)
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
        sub_271594474(v20, a1);
        v24[0] = a2;
        v24[1] = v20;
        sub_2712A6EAC(v24);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_271593A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271593A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271593A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271593A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271593AAC(uint64_t a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_288109848;
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

void sub_271594360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  sub_271582FF4(v3);
  _Unwind_Resume(a1);
}

void sub_2715943D0(uint64_t a1, uint64_t a2)
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

void sub_271594474(uint64_t a1, uint64_t a2)
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

          sub_271592FB0(a1, v18);
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

void sub_2715946FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_271594B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_271594B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271594B4C(int a1, uint64_t a2, double a3)
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

      sub_271594D58(v18, v12);
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

      sub_271594D58(v18, v14);
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

  sub_271594D58(v18, v16);
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

void sub_271594D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271594D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271594D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271594D58(uint64_t *a1, uint64_t a2)
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
  if (v13 <= 1380410944)
  {
    if (v13 != 843264102 && v13 != 1278226534)
    {
LABEL_22:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 124, "Contains(pf::formats::F32(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_31:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
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
        (*v15)(*(v15 + 8), "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
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

  else if (v13 != 1380410945 && v13 != 1717855600 && v13 != 1717856627)
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
  v26 = sub_2717F41E0(v44) << 30;
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
  a1[2] = v26 & 0xFFFFFFFF00000000 | (v24 >> 2);
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

void sub_2715953FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271595414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_2717F319C(va);
  sub_2717F319C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271595430(uint64_t a1)
{
  *a1 = &unk_2881097B8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715954A8(uint64_t a1, char **a2)
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
        sub_27159612C(v20, a1);
        sub_27125505C(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_271595774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271595788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159579C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715957B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715957C4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881097B8;
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
  if (v13 <= 1380410944)
  {
    if (v13 != 843264102 && v13 != 1278226534)
    {
LABEL_33:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 124, "Contains(pf::formats::F32(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8, v33);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_42:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
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
        (*v15)(*(v15 + 8), "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
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

  else if (v13 != 1380410945 && v13 != 1717855600 && v13 != 1717856627)
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
  *(a1 + 56) = (v22 << 30) & 0xFFFFFFFF00000000 | (v21 >> 2);
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

void sub_271596018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2717F319C(&a9);
  sub_271582FF4(v9);
  _Unwind_Resume(a1);
}

void sub_271596088(uint64_t a1, uint64_t a2)
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

void sub_27159612C(uint64_t *a1, uint64_t a2)
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

          sub_271594D58(a1, v20);
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

void sub_27159646C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F319C(&a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271596870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_271596890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2715968BC(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

    sub_271596AE4(v20, v14);
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

        sub_271596AE4(v20, v18);
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

    sub_271596AE4(v20, v16);
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

void sub_271596AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271596ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271596AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271596AE4(uint64_t a1, uint64_t a2)
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
  if (v13 <= 1380410944)
  {
    if (v13 != 843264102 && v13 != 1278226534)
    {
LABEL_22:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 124, "Contains(pf::formats::F32(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_31:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
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
        (*v15)(*(v15 + 8), "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
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

  else if (v13 != 1380410945 && v13 != 1717855600 && v13 != 1717856627)
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
  v26 = sub_2717F41E0(&v44) << 30;
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
  *(&v44 + 4) = v26 & 0xFFFFFFFF00000000 | (v24 >> 2);
  v33 = v44;
  *a1 = v21;
  *(a1 + 8) = v32;
  *(a1 + 16) = HIDWORD(v31);
  *(a1 + 20) = v33;
  *(a1 + 28) = HIDWORD(v26);
  *(a1 + 32) = v31;
  *(a1 + 40) = v26 & 0xFFFFFFFF00000000 | (v24 >> 2);
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

void sub_2715971EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271597200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271597214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271597228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

uint64_t sub_271597248(uint64_t a1)
{
  *a1 = &unk_288109728;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715972C0(uint64_t a1, uint64_t a2)
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
        sub_271597FA4(v20, a1);
        sub_2712A2500(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27159758C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715975A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715975B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715975C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715975DC(uint64_t a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_288109728;
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
  if (v13 <= 1380410944)
  {
    if (v13 != 843264102 && v13 != 1278226534)
    {
LABEL_33:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 124, "Contains(pf::formats::F32(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_42:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
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
        (*v15)(*(v15 + 8), "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
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

  else if (v13 != 1380410945 && v13 != 1717855600 && v13 != 1717856627)
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
  *(v43 + 4) = (v22 << 30) & 0xFFFFFFFF00000000 | (v21 >> 2);
  *(a1 + 60) = v43[0];
  *(a1 + 68) = v22 >> 2;
  *(a1 + 72) = v25;
  *(a1 + 80) = (v22 << 30) & 0xFFFFFFFF00000000 | (v21 >> 2);
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

void sub_271597E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  sub_271582FF4(v3);
  _Unwind_Resume(a1);
}

void sub_271597F00(uint64_t a1, uint64_t a2)
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

void sub_271597FA4(uint64_t a1, uint64_t a2)
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

          sub_271596AE4(a1, v18);
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

void sub_27159822C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_271598630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_271598650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27159867C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

    sub_2715988A4(v20, v14);
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

        sub_2715988A4(v20, v18);
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

    sub_2715988A4(v20, v16);
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

void sub_271598868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27159887C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271598890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715988A4(uint64_t a1, uint64_t a2)
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
  if (v13 <= 1380410944)
  {
    if (v13 != 843264102 && v13 != 1278226534)
    {
LABEL_22:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 124, "Contains(pf::formats::F32(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_31:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
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
        (*v15)(*(v15 + 8), "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
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

  else if (v13 != 1380410945 && v13 != 1717855600 && v13 != 1717856627)
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
  v26 = sub_2717F41E0(&v44) << 30;
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
  *(&v44 + 4) = v26 & 0xFFFFFFFF00000000 | (v24 >> 2);
  v33 = v44;
  *a1 = v21;
  *(a1 + 8) = v32;
  *(a1 + 16) = HIDWORD(v31);
  *(a1 + 20) = v33;
  *(a1 + 28) = HIDWORD(v26);
  *(a1 + 32) = v31;
  *(a1 + 40) = v26 & 0xFFFFFFFF00000000 | (v24 >> 2);
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

void sub_271598FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271598FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271598FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271598FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

uint64_t sub_271599008(uint64_t a1)
{
  *a1 = &unk_288109698;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271599080(uint64_t a1, const void **a2)
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
        sub_271599D64(v20, a1);
        sub_271245B78(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27159934C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271599360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271599374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271599388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27159939C(uint64_t a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_288109698;
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
  if (v13 <= 1380410944)
  {
    if (v13 != 843264102 && v13 != 1278226534)
    {
LABEL_33:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 124, "Contains(pf::formats::F32(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_42:
          v14.n128_f64[0] = qword_28087C420(*algn_28087C428, "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
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
        (*v15)(*(v15 + 8), "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
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

  else if (v13 != 1380410945 && v13 != 1717855600 && v13 != 1717856627)
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
  LODWORD(v43[0]) = 4;
  HIDWORD(v43[0]) = v25;
  *(a1 + 48) = v43[0];
  *(a1 + 56) = v20;
  LODWORD(v43[0]) = 1;
  *(v43 + 4) = (v22 << 30) & 0xFFFFFFFF00000000 | (v21 >> 2);
  *(a1 + 60) = v43[0];
  *(a1 + 68) = v22 >> 2;
  *(a1 + 72) = v25;
  *(a1 + 80) = (v22 << 30) & 0xFFFFFFFF00000000 | (v21 >> 2);
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

void sub_271599C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  sub_271582FF4(v3);
  _Unwind_Resume(a1);
}

void sub_271599CC0(uint64_t a1, uint64_t a2)
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

void sub_271599D64(uint64_t a1, uint64_t a2)
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

          sub_2715988A4(a1, v18);
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

void sub_271599FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

uint64_t sub_27159A008(uint64_t a1)
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

void sub_27159A080(uint64_t *a1, uint64_t a2)
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

void sub_27159A3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F319C(&a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27159A3DC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v10 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v10;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v24 = &unk_288109288;
          v25 = v6;
          v26 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v25;
            v7 = v26;
          }

          v20[0] = &unk_288109288;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_2715829FC(&v22, v20);
          *a1 = v22;
          *(a1 + 8) = v23;
          v20[0] = &unk_288109288;
          v8 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v24 = &unk_288109288;
          v9 = v26;
          if (v26)
          {
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v5)
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
  *(a1 + 8) = v12;
  *(a1 + 16) = (v12 != 0) | (v13 << 32);
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

void sub_27159A72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_27159A75C(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v19 = v12;
    v20 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = v19;
    }

    v18 = &unk_288109268;
    if (!v12)
    {
      goto LABEL_25;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      goto LABEL_25;
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v19 = v8;
    v20 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = v19;
    }

    v18 = &unk_288109268;
    if (!v8)
    {
      goto LABEL_25;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v3)
    {
      sub_2711308D4();
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    v19 = v4;
    v20 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = v19;
    }

    v18 = &unk_288109268;
    if (!v4)
    {
      goto LABEL_25;
    }

    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (!v7)
    {
LABEL_25:
      sub_27159A3DC(v17, a1);
      sub_27159A3DC(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v19);
  goto LABEL_25;
}

void sub_27159AACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159AAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159AAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159AB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_271582FF4(v16);
  MEMORY[0x2743BF050](v15, 0x10A3C40EE3858B8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159AB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159AB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159AB7C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288109268;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288109268;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_2717F919C(a2[1]);
    return;
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_288109288;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_288109268;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

double sub_27159AE38(uint64_t a1, uint64_t *lpsrc)
{
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C940, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v40, lpsrc, 1);
    v12 = v40;
    v13 = *(v40 + 16);
    v30 = *v40;
    v31[0] = v13;
    *&v40 = 0;
    MEMORY[0x2743BF050](v12, 0xC400A2AC0F1, v14);
    sub_27159A080(&v40, a1);
    sub_271253768(&v30, &v40);
    return result;
  }

  v6 = v5;
  v7 = v5[10];
  if (v7 == 2)
  {
    v20 = *(v5 + 3);
    v21 = *(v5 + 4);
    v37 = v20;
    v38 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v37;
    }

    v36 = &unk_288109268;
    if (v20)
    {
      v23 = *v20;
      v22 = v20[1];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }
      }

      if (v23)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v7 == 1)
  {
    v16 = *(v5 + 3);
    v17 = *(v5 + 4);
    v37 = v16;
    v38 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      v16 = v37;
    }

    v36 = &unk_288109268;
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
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (v7)
    {
      sub_2711308D4();
    }

    v8 = *(v5 + 3);
    v9 = *(v5 + 4);
    v37 = v8;
    v38 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = v37;
    }

    v36 = &unk_288109268;
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
LABEL_30:
        sub_2717F919C(v37);
      }
    }
  }

  sub_27159A3DC(&v34, v6);
  if (HIDWORD(v35) <= 0x20)
  {
    v25 = 32;
  }

  else
  {
    v25 = HIDWORD(v35);
  }

  *&v39 = *(&v34 + 1);
  *(&v39 + 1) = v35 | (v25 << 32);
  *&v30 = &unk_288109608;
  DWORD2(v30) = 0;
  if (HIDWORD(*(&v34 + 1)) && DWORD2(v34))
  {
    sub_2715823BC();
  }

  v31[1] = 0;
  v31[2] = 0;
  v31[0] = &unk_288109288;
  v32 = 0;
  if (DWORD2(v34) && HIDWORD(v34))
  {
    *&v33 = sub_2715827F0(0, v31, v24);
    *(&v33 + 1) = v26;
  }

  else
  {
    v33 = v39;
  }

  v40 = v34;
  v41 = v35;
  sub_271583050(&v30, &v40);
  *&v30 = &unk_28810A268;
  sub_2717F1E54(&v36);
  v27 = v32;
  *(a1 + 8) = DWORD2(v30);
  v28 = *(a1 + 40);
  if (v28 == -1)
  {
    if (v27 == -1)
    {
      result = *&v33;
      *(a1 + 48) = v33;
      return result;
    }
  }

  else if (v27 == -1)
  {
    (off_288133918[v28])(&v40, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_46;
  }

  *&v40 = a1 + 16;
  (off_288133948[v27])(&v40);
LABEL_46:
  v29 = v32;
  result = *&v33;
  *(a1 + 48) = v33;
  *&v30 = &unk_288109608;
  if (v29 != -1)
  {
    (off_288133918[v29])(&v40, v31);
  }

  return result;
}

void sub_27159B2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159B2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159B310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159B328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_271582FF4(v19);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159B35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_271582F7C(&a9);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159B378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159B3B8(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    sub_27159A080(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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

void sub_27159B524(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    sub_27159A3DC(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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

uint64_t *sub_27159B690()
{
  if ((atomic_load_explicit(&qword_28087BC50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BC50))
  {
    sub_2715C79F4();
  }

  if (byte_28087BCEF >= 0)
  {
    return &qword_28087BCD8;
  }

  else
  {
    return qword_28087BCD8;
  }
}

void sub_27159B760(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    switch(v3)
    {
      case 2:
        v17 = *(a1 + 24);
        v18 = *(a1 + 32);
        v30 = v17;
        v31 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
          v17 = v30;
        }

        v29 = &unk_288109248;
        if (v17)
        {
          v20 = *v17;
          v19 = v17[1];
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v19->__on_zero_shared)(v19);
              std::__shared_weak_count::__release_weak(v19);
            }
          }

          if (v20)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 1:
        v13 = *(a1 + 24);
        v14 = *(a1 + 32);
        v30 = v13;
        v31 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
          v13 = v30;
        }

        v29 = &unk_288109248;
        if (v13)
        {
          v16 = *v13;
          v15 = v13[1];
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v15->__on_zero_shared)(v15);
              std::__shared_weak_count::__release_weak(v15);
            }
          }

          if (v16)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 0:
        v4 = *(a1 + 24);
        v5 = *(a1 + 32);
        v30 = v4;
        v31 = v5;
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
          v4 = v30;
        }

        v29 = &unk_288109248;
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
LABEL_39:
            sub_2717F9298(v30);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_2711308D4();
  }

  v8 = *(a1 + 40);
  if (v8 == 2)
  {
    v25 = *(a1 + 24);
    v26 = *(a1 + 32);
    v30 = v25;
    v31 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      v25 = v30;
    }

    v29 = &unk_288109268;
    if (!v25)
    {
      goto LABEL_57;
    }

    v28 = *v25;
    v27 = v25[1];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
      }
    }

    if (!v28)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (v8 != 1)
    {
      if (v8)
      {
        goto LABEL_58;
      }

      v9 = *(a1 + 24);
      v10 = *(a1 + 32);
      v30 = v9;
      v31 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        v9 = v30;
      }

      v29 = &unk_288109268;
      if (v9)
      {
        v12 = *v9;
        v11 = v9[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }
        }

        if (v12)
        {
          goto LABEL_56;
        }
      }

LABEL_57:
      operator new();
    }

    v21 = *(a1 + 24);
    v22 = *(a1 + 32);
    v30 = v21;
    v31 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v30;
    }

    v29 = &unk_288109268;
    if (!v21)
    {
      goto LABEL_57;
    }

    v24 = *v21;
    v23 = v21[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }
    }

    if (!v24)
    {
      goto LABEL_57;
    }
  }

LABEL_56:
  sub_2717F919C(v30);
  goto LABEL_57;
}

void sub_27159BE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F1E54(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_27159BEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F2278(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_27159BF24(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288109248;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288109248;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_2717F9298(a2[1]);
    return;
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_288109288;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_288109248;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_27159C1E0(uint64_t a1)
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

void sub_27159C258(uint64_t *a1, uint64_t a2)
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

void sub_27159C598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F319C(&a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27159C5B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v10 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v10;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v24 = &unk_288109288;
          v25 = v6;
          v26 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v25;
            v7 = v26;
          }

          v20[0] = &unk_288109288;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271589C44(&v22, v20);
          *a1 = v22;
          *(a1 + 8) = v23;
          v20[0] = &unk_288109288;
          v8 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v24 = &unk_288109288;
          v9 = v26;
          if (v26)
          {
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v5)
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
  *(a1 + 8) = v12;
  *(a1 + 16) = (v12 != 0) | (v13 << 32);
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

void sub_27159C904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_27159C934(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v19 = v12;
    v20 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = v19;
    }

    v18 = &unk_288109268;
    if (!v12)
    {
      goto LABEL_25;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      goto LABEL_25;
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v19 = v8;
    v20 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = v19;
    }

    v18 = &unk_288109268;
    if (!v8)
    {
      goto LABEL_25;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v3)
    {
      sub_2711308D4();
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    v19 = v4;
    v20 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = v19;
    }

    v18 = &unk_288109268;
    if (!v4)
    {
      goto LABEL_25;
    }

    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (!v7)
    {
LABEL_25:
      sub_27159C5B4(v17, a1);
      sub_27159C5B4(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v19);
  goto LABEL_25;
}

void sub_27159CCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159CCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159CCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159CCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_271582FF4(v16);
  MEMORY[0x2743BF050](v15, 0x10A3C40EE3858B8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159CD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159CD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159CD54(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288109268;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288109268;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_2717F919C(a2[1]);
    return;
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_288109288;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_288109268;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

double sub_27159D010(uint64_t a1, uint64_t *lpsrc)
{
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C8C8, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v40, lpsrc, 2);
    v12 = v40;
    v13 = *(v40 + 16);
    v30 = *v40;
    v31[0] = v13;
    *&v40 = 0;
    MEMORY[0x2743BF050](v12, 0xC400A2AC0F1, v14);
    sub_27159C258(&v40, a1);
    sub_271254000(&v30, &v40);
    return result;
  }

  v6 = v5;
  v7 = v5[10];
  if (v7 == 2)
  {
    v20 = *(v5 + 3);
    v21 = *(v5 + 4);
    v37 = v20;
    v38 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v37;
    }

    v36 = &unk_288109268;
    if (v20)
    {
      v23 = *v20;
      v22 = v20[1];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }
      }

      if (v23)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v7 == 1)
  {
    v16 = *(v5 + 3);
    v17 = *(v5 + 4);
    v37 = v16;
    v38 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      v16 = v37;
    }

    v36 = &unk_288109268;
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
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (v7)
    {
      sub_2711308D4();
    }

    v8 = *(v5 + 3);
    v9 = *(v5 + 4);
    v37 = v8;
    v38 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = v37;
    }

    v36 = &unk_288109268;
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
LABEL_30:
        sub_2717F919C(v37);
      }
    }
  }

  sub_27159C5B4(&v34, v6);
  if (HIDWORD(v35) <= 0x10)
  {
    v25 = 16;
  }

  else
  {
    v25 = HIDWORD(v35);
  }

  *&v39 = *(&v34 + 1);
  *(&v39 + 1) = v35 | (v25 << 32);
  *&v30 = &unk_2881093C8;
  DWORD2(v30) = 0;
  if (HIDWORD(*(&v34 + 1)) && DWORD2(v34))
  {
    sub_271589604();
  }

  v31[1] = 0;
  v31[2] = 0;
  v31[0] = &unk_288109288;
  v32 = 0;
  if (DWORD2(v34) && HIDWORD(v34))
  {
    *&v33 = sub_271589A38(0, v31, v24);
    *(&v33 + 1) = v26;
  }

  else
  {
    v33 = v39;
  }

  v40 = v34;
  v41 = v35;
  sub_27158A388(&v30, &v40);
  *&v30 = &unk_288109F98;
  sub_2717F1E54(&v36);
  v27 = v32;
  *(a1 + 8) = DWORD2(v30);
  v28 = *(a1 + 40);
  if (v28 == -1)
  {
    if (v27 == -1)
    {
      result = *&v33;
      *(a1 + 48) = v33;
      return result;
    }
  }

  else if (v27 == -1)
  {
    (off_288133918[v28])(&v40, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_46;
  }

  *&v40 = a1 + 16;
  (off_288133948[v27])(&v40);
LABEL_46:
  v29 = v32;
  result = *&v33;
  *(a1 + 48) = v33;
  *&v30 = &unk_2881093C8;
  if (v29 != -1)
  {
    (off_288133918[v29])(&v40, v31);
  }

  return result;
}

void sub_27159D4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159D4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159D4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159D500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_271582FF4(v19);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159D534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_27158A310(&a9);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159D550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159D590(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    sub_27159C258(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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

void sub_27159D6FC(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    sub_27159C5B4(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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

uint64_t *sub_27159D868()
{
  if ((atomic_load_explicit(&qword_28087BC58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BC58))
  {
    sub_2715C7AF8();
  }

  if (byte_28087BD07 >= 0)
  {
    return &qword_28087BCF0;
  }

  else
  {
    return qword_28087BCF0;
  }
}

void sub_27159D938(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    switch(v3)
    {
      case 2:
        v17 = *(a1 + 24);
        v18 = *(a1 + 32);
        v30 = v17;
        v31 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
          v17 = v30;
        }

        v29 = &unk_288109248;
        if (v17)
        {
          v20 = *v17;
          v19 = v17[1];
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v19->__on_zero_shared)(v19);
              std::__shared_weak_count::__release_weak(v19);
            }
          }

          if (v20)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 1:
        v13 = *(a1 + 24);
        v14 = *(a1 + 32);
        v30 = v13;
        v31 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
          v13 = v30;
        }

        v29 = &unk_288109248;
        if (v13)
        {
          v16 = *v13;
          v15 = v13[1];
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v15->__on_zero_shared)(v15);
              std::__shared_weak_count::__release_weak(v15);
            }
          }

          if (v16)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 0:
        v4 = *(a1 + 24);
        v5 = *(a1 + 32);
        v30 = v4;
        v31 = v5;
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
          v4 = v30;
        }

        v29 = &unk_288109248;
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
LABEL_39:
            sub_2717F9298(v30);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_2711308D4();
  }

  v8 = *(a1 + 40);
  if (v8 == 2)
  {
    v25 = *(a1 + 24);
    v26 = *(a1 + 32);
    v30 = v25;
    v31 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      v25 = v30;
    }

    v29 = &unk_288109268;
    if (!v25)
    {
      goto LABEL_57;
    }

    v28 = *v25;
    v27 = v25[1];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
      }
    }

    if (!v28)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (v8 != 1)
    {
      if (v8)
      {
        goto LABEL_58;
      }

      v9 = *(a1 + 24);
      v10 = *(a1 + 32);
      v30 = v9;
      v31 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        v9 = v30;
      }

      v29 = &unk_288109268;
      if (v9)
      {
        v12 = *v9;
        v11 = v9[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }
        }

        if (v12)
        {
          goto LABEL_56;
        }
      }

LABEL_57:
      operator new();
    }

    v21 = *(a1 + 24);
    v22 = *(a1 + 32);
    v30 = v21;
    v31 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v30;
    }

    v29 = &unk_288109268;
    if (!v21)
    {
      goto LABEL_57;
    }

    v24 = *v21;
    v23 = v21[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }
    }

    if (!v24)
    {
      goto LABEL_57;
    }
  }

LABEL_56:
  sub_2717F919C(v30);
  goto LABEL_57;
}

void sub_27159E050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F1E54(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_27159E08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F2278(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_27159E0FC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288109248;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288109248;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_2717F9298(a2[1]);
    return;
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_288109288;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_288109248;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_27159E3B8(uint64_t a1)
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

void sub_27159E430(uint64_t *a1, uint64_t a2)
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

void sub_27159E770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F319C(&a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27159E78C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v10 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v10;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v24 = &unk_288109288;
          v25 = v6;
          v26 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v25;
            v7 = v26;
          }

          v20[0] = &unk_288109288;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_27158F460(&v22, v20);
          *a1 = v22;
          *(a1 + 8) = v23;
          v20[0] = &unk_288109288;
          v8 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v24 = &unk_288109288;
          v9 = v26;
          if (v26)
          {
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v5)
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
  *(a1 + 8) = v12;
  *(a1 + 16) = (v12 != 0) | (v13 << 32);
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

void sub_27159EADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_27159EB0C(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v19 = v12;
    v20 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = v19;
    }

    v18 = &unk_288109268;
    if (!v12)
    {
      goto LABEL_25;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      goto LABEL_25;
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v19 = v8;
    v20 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = v19;
    }

    v18 = &unk_288109268;
    if (!v8)
    {
      goto LABEL_25;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v3)
    {
      sub_2711308D4();
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    v19 = v4;
    v20 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = v19;
    }

    v18 = &unk_288109268;
    if (!v4)
    {
      goto LABEL_25;
    }

    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (!v7)
    {
LABEL_25:
      sub_27159E78C(v17, a1);
      sub_27159E78C(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v19);
  goto LABEL_25;
}

void sub_27159EE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159EE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159EEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159EEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_271582FF4(v16);
  MEMORY[0x2743BF050](v15, 0x10A3C40EE3858B8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159EF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159EF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159EF2C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288109268;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288109268;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_2717F919C(a2[1]);
    return;
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_288109288;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_288109268;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

double sub_27159F1E8(uint64_t a1, uint64_t *lpsrc)
{
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C838, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v40, lpsrc, 3);
    v12 = v40;
    v13 = *(v40 + 16);
    v30 = *v40;
    v31[0] = v13;
    *&v40 = 0;
    MEMORY[0x2743BF050](v12, 0xC400A2AC0F1, v14);
    sub_27159E430(&v40, a1);
    *&result = sub_27123D99C(&v30, &v40);
    return result;
  }

  v6 = v5;
  v7 = v5[10];
  if (v7 == 2)
  {
    v20 = *(v5 + 3);
    v21 = *(v5 + 4);
    v37 = v20;
    v38 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v37;
    }

    v36 = &unk_288109268;
    if (v20)
    {
      v23 = *v20;
      v22 = v20[1];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }
      }

      if (v23)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v7 == 1)
  {
    v16 = *(v5 + 3);
    v17 = *(v5 + 4);
    v37 = v16;
    v38 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      v16 = v37;
    }

    v36 = &unk_288109268;
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
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (v7)
    {
      sub_2711308D4();
    }

    v8 = *(v5 + 3);
    v9 = *(v5 + 4);
    v37 = v8;
    v38 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = v37;
    }

    v36 = &unk_288109268;
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
LABEL_30:
        sub_2717F919C(v37);
      }
    }
  }

  sub_27159E78C(&v34, v6);
  if (HIDWORD(v35) <= 0x10)
  {
    v25 = 16;
  }

  else
  {
    v25 = HIDWORD(v35);
  }

  *&v39 = *(&v34 + 1);
  *(&v39 + 1) = v35 | (v25 << 32);
  *&v30 = &unk_288109968;
  DWORD2(v30) = 0;
  if (HIDWORD(*(&v34 + 1)) && DWORD2(v34))
  {
    sub_27158EE20();
  }

  v31[1] = 0;
  v31[2] = 0;
  v31[0] = &unk_288109288;
  v32 = 0;
  if (DWORD2(v34) && HIDWORD(v34))
  {
    *&v33 = sub_27158F254(0, v31, v24);
    *(&v33 + 1) = v26;
  }

  else
  {
    v33 = v39;
  }

  v40 = v34;
  v41 = v35;
  sub_27158FBB0(&v30, &v40);
  *&v30 = &unk_288109C38;
  sub_2717F1E54(&v36);
  v27 = v32;
  *(a1 + 8) = DWORD2(v30);
  v28 = *(a1 + 40);
  if (v28 == -1)
  {
    if (v27 == -1)
    {
      result = *&v33;
      *(a1 + 48) = v33;
      return result;
    }
  }

  else if (v27 == -1)
  {
    (off_288133918[v28])(&v40, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_46;
  }

  *&v40 = a1 + 16;
  (off_288133948[v27])(&v40);
LABEL_46:
  v29 = v32;
  result = *&v33;
  *(a1 + 48) = v33;
  *&v30 = &unk_288109968;
  if (v29 != -1)
  {
    (off_288133918[v29])(&v40, v31);
  }

  return result;
}

void sub_27159F698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159F6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159F6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159F6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_271582FF4(v19);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159F70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_27158FB38(&a9);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159F728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159F768(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    sub_27159E430(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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

void sub_27159F8D4(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    sub_27159E78C(&v8, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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

uint64_t *sub_27159FA40()
{
  if ((atomic_load_explicit(&qword_28087BC60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BC60))
  {
    sub_2715C7BFC();
  }

  if (byte_28087BD1F >= 0)
  {
    return &qword_28087BD08;
  }

  else
  {
    return qword_28087BD08;
  }
}

void sub_27159FB10(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    switch(v3)
    {
      case 2:
        v17 = *(a1 + 24);
        v18 = *(a1 + 32);
        v30 = v17;
        v31 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
          v17 = v30;
        }

        v29 = &unk_288109248;
        if (v17)
        {
          v20 = *v17;
          v19 = v17[1];
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v19->__on_zero_shared)(v19);
              std::__shared_weak_count::__release_weak(v19);
            }
          }

          if (v20)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 1:
        v13 = *(a1 + 24);
        v14 = *(a1 + 32);
        v30 = v13;
        v31 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
          v13 = v30;
        }

        v29 = &unk_288109248;
        if (v13)
        {
          v16 = *v13;
          v15 = v13[1];
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v15->__on_zero_shared)(v15);
              std::__shared_weak_count::__release_weak(v15);
            }
          }

          if (v16)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 0:
        v4 = *(a1 + 24);
        v5 = *(a1 + 32);
        v30 = v4;
        v31 = v5;
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
          v4 = v30;
        }

        v29 = &unk_288109248;
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
LABEL_39:
            sub_2717F9298(v30);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_2711308D4();
  }

  v8 = *(a1 + 40);
  if (v8 == 2)
  {
    v25 = *(a1 + 24);
    v26 = *(a1 + 32);
    v30 = v25;
    v31 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      v25 = v30;
    }

    v29 = &unk_288109268;
    if (!v25)
    {
      goto LABEL_57;
    }

    v28 = *v25;
    v27 = v25[1];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
      }
    }

    if (!v28)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (v8 != 1)
    {
      if (v8)
      {
        goto LABEL_58;
      }

      v9 = *(a1 + 24);
      v10 = *(a1 + 32);
      v30 = v9;
      v31 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        v9 = v30;
      }

      v29 = &unk_288109268;
      if (v9)
      {
        v12 = *v9;
        v11 = v9[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }
        }

        if (v12)
        {
          goto LABEL_56;
        }
      }

LABEL_57:
      operator new();
    }

    v21 = *(a1 + 24);
    v22 = *(a1 + 32);
    v30 = v21;
    v31 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v30;
    }

    v29 = &unk_288109268;
    if (!v21)
    {
      goto LABEL_57;
    }

    v24 = *v21;
    v23 = v21[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }
    }

    if (!v24)
    {
      goto LABEL_57;
    }
  }

LABEL_56:
  sub_2717F919C(v30);
  goto LABEL_57;
}

void sub_2715A0228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F1E54(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715A0264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F2278(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715A02D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288109248;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288109248;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_2717F9298(a2[1]);
    return;
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_288109288;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_288109248;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_2715A0590(uint64_t a1)
{
  *a1 = &unk_2881097B8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715A0608(uint64_t *a1, uint64_t a2)
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

          sub_271594D58(a1, v20);
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

void sub_2715A0948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F319C(&a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715A0964(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v10 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v10;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v24 = &unk_288109288;
          v25 = v6;
          v26 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v25;
            v7 = v26;
          }

          v20[0] = &unk_288109288;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271594D58(&v22, v20);
          *a1 = v22;
          *(a1 + 8) = v23;
          v20[0] = &unk_288109288;
          v8 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v24 = &unk_288109288;
          v9 = v26;
          if (v26)
          {
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v5)
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
  *(a1 + 8) = v12;
  *(a1 + 16) = (v12 != 0) | (v13 << 32);
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

void sub_2715A0CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_2715A0CE4(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v19 = v12;
    v20 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = v19;
    }

    v18 = &unk_288109268;
    if (!v12)
    {
      goto LABEL_25;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      goto LABEL_25;
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v19 = v8;
    v20 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = v19;
    }

    v18 = &unk_288109268;
    if (!v8)
    {
      goto LABEL_25;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v3)
    {
      sub_2711308D4();
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    v19 = v4;
    v20 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = v19;
    }

    v18 = &unk_288109268;
    if (!v4)
    {
      goto LABEL_25;
    }

    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (!v7)
    {
LABEL_25:
      sub_2715A0964(v17, a1);
      sub_2715A0964(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v19);
  goto LABEL_25;
}

void sub_2715A1054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A1068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A107C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A1090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_271582FF4(v16);
  MEMORY[0x2743BF050](v15, 0x10A3C40EE3858B8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A10DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A10F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A1104(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288109268;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288109268;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_2717F919C(a2[1]);
    return;
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_288109288;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_288109268;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

double sub_2715A13C0(uint64_t a1, uint64_t *lpsrc)
{
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C820, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v40, lpsrc, 4);
    v12 = v40;
    v13 = *(v40 + 16);
    v30 = *v40;
    v31[0] = v13;
    *&v40 = 0;
    MEMORY[0x2743BF050](v12, 0xC400A2AC0F1, v14);
    sub_2715A0608(&v40, a1);
    *&result = sub_27125505C(&v30, &v40);
    return result;
  }

  v6 = v5;
  v7 = v5[10];
  if (v7 == 2)
  {
    v20 = *(v5 + 3);
    v21 = *(v5 + 4);
    v37 = v20;
    v38 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v37;
    }

    v36 = &unk_288109268;
    if (v20)
    {
      v23 = *v20;
      v22 = v20[1];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }
      }

      if (v23)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v7 == 1)
  {
    v16 = *(v5 + 3);
    v17 = *(v5 + 4);
    v37 = v16;
    v38 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      v16 = v37;
    }

    v36 = &unk_288109268;
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
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (v7)
    {
      sub_2711308D4();
    }

    v8 = *(v5 + 3);
    v9 = *(v5 + 4);
    v37 = v8;
    v38 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = v37;
    }

    v36 = &unk_288109268;
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
LABEL_30:
        sub_2717F919C(v37);
      }
    }
  }

  sub_2715A0964(&v34, v6);
  if (HIDWORD(v35) <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = HIDWORD(v35);
  }

  *&v39 = *(&v34 + 1);
  *(&v39 + 1) = v35 | (v25 << 32);
  *&v30 = &unk_2881097B8;
  DWORD2(v30) = 0;
  if (HIDWORD(*(&v34 + 1)) && DWORD2(v34))
  {
    sub_271594718();
  }

  v31[1] = 0;
  v31[2] = 0;
  v31[0] = &unk_288109288;
  v32 = 0;
  if (DWORD2(v34) && HIDWORD(v34))
  {
    *&v33 = sub_271594B4C(0, v31, v24);
    *(&v33 + 1) = v26;
  }

  else
  {
    v33 = v39;
  }

  v40 = v34;
  v41 = v35;
  sub_2715954A8(&v30, &v40);
  *&v30 = &unk_288109BA8;
  sub_2717F1E54(&v36);
  v27 = v32;
  *(a1 + 8) = DWORD2(v30);
  v28 = *(a1 + 40);
  if (v28 == -1)
  {
    if (v27 == -1)
    {
      result = *&v33;
      *(a1 + 48) = v33;
      return result;
    }
  }

  else if (v27 == -1)
  {
    (off_288133918[v28])(&v40, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_46;
  }

  *&v40 = a1 + 16;
  (off_288133948[v27])(&v40);
LABEL_46:
  v29 = v32;
  result = *&v33;
  *(a1 + 48) = v33;
  *&v30 = &unk_2881097B8;
  if (v29 != -1)
  {
    (off_288133918[v29])(&v40, v31);
  }

  return result;
}