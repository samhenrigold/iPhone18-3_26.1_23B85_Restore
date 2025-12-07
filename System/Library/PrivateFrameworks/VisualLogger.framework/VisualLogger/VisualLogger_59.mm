void sub_2715B12A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2715B12C0(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v11 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v11;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v21 = &unk_288109288;
          v22 = v6;
          v23 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v22;
            v7 = v23;
          }

          v19[0] = &unk_288109288;
          v19[1] = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271587DFC(v24, v19);
          *a1 = *v24;
          v8 = v25;
          *(a1 + 8) = *&v24[8];
          *(a1 + 24) = v8;
          *(a1 + 40) = v26;
          v19[0] = &unk_288109288;
          v9 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v21 = &unk_288109288;
          v10 = v23;
          if (v23)
          {
            if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }

          return;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v12 = *(a2 + 72) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a2 + 72);
  if (v12)
  {
    v13 = 0;
  }

  *v24 = 4;
  *&v24[4] = v13;
  v14 = 4 * (v13 != 0);
  LODWORD(v15) = v14 * v13;
  if (HIDWORD(v13))
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 & 0x3FFFFFFFFLL | ((v15 >> 2) << 34);
  v17 = __PAIR64__(*&v24[4], 4);
  *v24 = 1;
  *&v24[4] = v16;
  v18 = *v24;
  *a1 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = HIDWORD(v13);
  *(a1 + 20) = v18;
  *(a1 + 28) = v15;
  *(a1 + 32) = v13;
  *(a1 + 40) = v16;
}

void sub_2715B1564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2715B1594(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
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
      sub_2715B12C0(v17, a1);
      sub_2715B12C0(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v19);
  goto LABEL_25;
}

void sub_2715B1978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B19A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B19B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_271582FF4(v21);
  MEMORY[0x2743BF050](v20, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B1A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B1A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B1A28(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715B1CE4(uint64_t a1, uint64_t *lpsrc)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C8E0, 0);
  if (!v5)
  {
    (*(v4 + 72))(v47, lpsrc, 29);
    v12 = *&v47[0];
    v14 = *(*&v47[0] + 16);
    v13 = *(*&v47[0] + 32);
    v34 = **&v47[0];
    v35 = v14;
    v36 = v13;
    *&v47[0] = 0;
    MEMORY[0x2743BF050](v12, 0xC400A2AC0F1, v15, v16, v17, v18);
    sub_2715B101C(v47, a1);
    sub_2712A6008(&v34, v47);
    return result;
  }

  v6 = v5;
  v7 = v5[10];
  if (v7 == 2)
  {
    v24 = *(v5 + 3);
    v25 = *(v5 + 4);
    v43 = v24;
    v44 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      v24 = v43;
    }

    v42 = &unk_288109268;
    if (v24)
    {
      v27 = *v24;
      v26 = v24[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }
      }

      if (v27)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v7 == 1)
  {
    v20 = *(v5 + 3);
    v21 = *(v5 + 4);
    v43 = v20;
    v44 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v43;
    }

    v42 = &unk_288109268;
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
        goto LABEL_29;
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
    v43 = v8;
    v44 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = v43;
    }

    v42 = &unk_288109268;
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
LABEL_29:
        sub_2717F919C(v43);
      }
    }
  }

  sub_2715B12C0(v40, v6);
  if (HIDWORD(v41) <= 0x20)
  {
    v28 = 32;
  }

  else
  {
    v28 = HIDWORD(v41);
  }

  LODWORD(v47[0]) = 4;
  DWORD1(v47[0]) = v41;
  *v45 = *&v47[0];
  LODWORD(v47[0]) = 1;
  *(v47 + 4) = DWORD2(v41) | (v28 << 32);
  *&v45[12] = *&v47[0];
  *&v45[8] = DWORD1(v41);
  *&v45[20] = v28;
  *&v45[24] = v41;
  v46 = *(v47 + 4);
  *&v34 = &unk_288109458;
  DWORD2(v34) = 0;
  if (DWORD1(v41) && v41)
  {
    sub_2715877A0();
  }

  *(&v35 + 1) = 0;
  *&v36 = 0;
  *&v35 = &unk_288109288;
  DWORD2(v36) = 0;
  if (v41 && DWORD1(v41))
  {
    sub_271587BD4(0, &v35, &v37);
  }

  else
  {
    v37 = *v45;
    v38 = *&v45[16];
    v39 = v46;
  }

  v47[0] = v40[0];
  v47[1] = v40[1];
  v47[2] = v41;
  sub_2715887D0(&v34, v47);
  *&v34 = &unk_28810A028;
  sub_2717F1E54(&v42);
  v29 = DWORD2(v36);
  *(a1 + 8) = DWORD2(v34);
  v30 = *(a1 + 40);
  if (v30 == -1)
  {
    if (v29 == -1)
    {
      result = *&v37;
      v33 = v38;
      *(a1 + 48) = v37;
      *(a1 + 64) = v33;
      *(a1 + 80) = v39;
      return result;
    }
  }

  else if (v29 == -1)
  {
    (off_288133918[v30])(v47, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_45;
  }

  *&v47[0] = a1 + 16;
  (off_288133948[v29])(v47);
LABEL_45:
  v31 = DWORD2(v36);
  result = *&v37;
  v32 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v32;
  *(a1 + 80) = v39;
  *&v34 = &unk_288109458;
  if (v31 != -1)
  {
    (off_288133918[v31])(v47, &v35);
  }

  return result;
}

void sub_2715B2214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B2228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B223C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B2250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715B22FC(uint64_t a1, int a2)
{
  if (a2 == 29)
  {
LABEL_10:
    sub_2715B101C(&v8, a1);
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

void sub_2715B2468(uint64_t a1, int a2)
{
  if (a2 == 29)
  {
LABEL_10:
    sub_2715B12C0(&v8, a1);
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

uint64_t *sub_2715B25D4()
{
  if ((atomic_load_explicit(&qword_28087BCA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BCA8))
  {
    sub_2715C8520();
  }

  if (byte_28087BDF7 >= 0)
  {
    return &qword_28087BDE0;
  }

  else
  {
    return qword_28087BDE0;
  }
}

void sub_2715B26A4(uint64_t a1, int a2)
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

void sub_2715B2DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F1E54(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B2DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F2278(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B2E68(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715B3124(uint64_t a1)
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

void sub_2715B319C(uint64_t a1, uint64_t a2)
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

void sub_2715B3424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2715B3440(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v11 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v11;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v21 = &unk_288109288;
          v22 = v6;
          v23 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v22;
            v7 = v23;
          }

          v19[0] = &unk_288109288;
          v19[1] = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271592FB0(v24, v19);
          *a1 = *v24;
          v8 = v25;
          *(a1 + 8) = *&v24[8];
          *(a1 + 24) = v8;
          *(a1 + 40) = v26;
          v19[0] = &unk_288109288;
          v9 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v21 = &unk_288109288;
          v10 = v23;
          if (v23)
          {
            if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }

          return;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v12 = *(a2 + 72) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a2 + 72);
  if (v12)
  {
    v13 = 0;
  }

  *v24 = 4;
  *&v24[4] = v13;
  v14 = 4 * (v13 != 0);
  LODWORD(v15) = v14 * v13;
  if (HIDWORD(v13))
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 & 0x3FFFFFFFFLL | ((v15 >> 2) << 34);
  v17 = __PAIR64__(*&v24[4], 4);
  *v24 = 1;
  *&v24[4] = v16;
  v18 = *v24;
  *a1 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = HIDWORD(v13);
  *(a1 + 20) = v18;
  *(a1 + 28) = v15;
  *(a1 + 32) = v13;
  *(a1 + 40) = v16;
}

void sub_2715B36E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2715B3714(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
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
      sub_2715B3440(v17, a1);
      sub_2715B3440(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v19);
  goto LABEL_25;
}

void sub_2715B3AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B3B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B3B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B3B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_271582FF4(v21);
  MEMORY[0x2743BF050](v20, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B3B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B3B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B3BA8(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715B3E64(uint64_t a1, uint64_t *lpsrc)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C8B0, 0);
  if (!v5)
  {
    (*(v4 + 72))(v47, lpsrc, 31);
    v12 = *&v47[0];
    v14 = *(*&v47[0] + 16);
    v13 = *(*&v47[0] + 32);
    v34 = **&v47[0];
    v35 = v14;
    v36 = v13;
    *&v47[0] = 0;
    MEMORY[0x2743BF050](v12, 0xC400A2AC0F1, v15, v16, v17, v18);
    sub_2715B319C(v47, a1);
    *&v40[0] = &v34;
    *(&v40[0] + 1) = v47;
    *&result = sub_2712A6EAC(v40);
    return result;
  }

  v6 = v5;
  v7 = v5[10];
  if (v7 == 2)
  {
    v24 = *(v5 + 3);
    v25 = *(v5 + 4);
    v43 = v24;
    v44 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      v24 = v43;
    }

    v42 = &unk_288109268;
    if (v24)
    {
      v27 = *v24;
      v26 = v24[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }
      }

      if (v27)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v7 == 1)
  {
    v20 = *(v5 + 3);
    v21 = *(v5 + 4);
    v43 = v20;
    v44 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v43;
    }

    v42 = &unk_288109268;
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
        goto LABEL_29;
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
    v43 = v8;
    v44 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = v43;
    }

    v42 = &unk_288109268;
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
LABEL_29:
        sub_2717F919C(v43);
      }
    }
  }

  sub_2715B3440(v40, v6);
  if (HIDWORD(v41) <= 0x10)
  {
    v28 = 16;
  }

  else
  {
    v28 = HIDWORD(v41);
  }

  LODWORD(v47[0]) = 4;
  DWORD1(v47[0]) = v41;
  *v45 = *&v47[0];
  LODWORD(v47[0]) = 1;
  *(v47 + 4) = DWORD2(v41) | (v28 << 32);
  *&v45[12] = *&v47[0];
  *&v45[8] = DWORD1(v41);
  *&v45[20] = v28;
  *&v45[24] = v41;
  v46 = *(v47 + 4);
  *&v34 = &unk_288109848;
  DWORD2(v34) = 0;
  if (DWORD1(v41) && v41)
  {
    sub_271592954();
  }

  *(&v35 + 1) = 0;
  *&v36 = 0;
  *&v35 = &unk_288109288;
  DWORD2(v36) = 0;
  if (v41 && DWORD1(v41))
  {
    sub_271592D88(0, &v35, &v37);
  }

  else
  {
    v37 = *v45;
    v38 = *&v45[16];
    v39 = v46;
  }

  v47[0] = v40[0];
  v47[1] = v40[1];
  v47[2] = v41;
  sub_27159378C(&v34, v47);
  *&v34 = &unk_288109F08;
  sub_2717F1E54(&v42);
  v29 = DWORD2(v36);
  *(a1 + 8) = DWORD2(v34);
  v30 = *(a1 + 40);
  if (v30 == -1)
  {
    if (v29 == -1)
    {
      result = *&v37;
      v33 = v38;
      *(a1 + 48) = v37;
      *(a1 + 64) = v33;
      *(a1 + 80) = v39;
      return result;
    }
  }

  else if (v29 == -1)
  {
    (off_288133918[v30])(v47, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_45;
  }

  *&v47[0] = a1 + 16;
  (off_288133948[v29])(v47);
LABEL_45:
  v31 = DWORD2(v36);
  result = *&v37;
  v32 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v32;
  *(a1 + 80) = v39;
  *&v34 = &unk_288109848;
  if (v31 != -1)
  {
    (off_288133918[v31])(v47, &v35);
  }

  return result;
}

void sub_2715B439C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B43B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B43C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B43D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715B4484(uint64_t a1, int a2)
{
  if (a2 == 31)
  {
LABEL_10:
    sub_2715B319C(&v8, a1);
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

void sub_2715B45F0(uint64_t a1, int a2)
{
  if (a2 == 31)
  {
LABEL_10:
    sub_2715B3440(&v8, a1);
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

uint64_t *sub_2715B475C()
{
  if ((atomic_load_explicit(&qword_28087BCB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BCB0))
  {
    sub_2715C8624();
  }

  if (byte_28087BE0F >= 0)
  {
    return &qword_28087BDF8;
  }

  else
  {
    return qword_28087BDF8;
  }
}

void sub_2715B482C(uint64_t a1, int a2)
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

void sub_2715B4F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F1E54(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B4F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F2278(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B4FF0(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715B52AC(uint64_t a1)
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

void sub_2715B5324(uint64_t a1, uint64_t a2)
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

void sub_2715B55AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2715B55C8(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v11 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v11;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v21 = &unk_288109288;
          v22 = v6;
          v23 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v22;
            v7 = v23;
          }

          v19[0] = &unk_288109288;
          v19[1] = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_2715988A4(v24, v19);
          *a1 = *v24;
          v8 = v25;
          *(a1 + 8) = *&v24[8];
          *(a1 + 24) = v8;
          *(a1 + 40) = v26;
          v19[0] = &unk_288109288;
          v9 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v21 = &unk_288109288;
          v10 = v23;
          if (v23)
          {
            if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }

          return;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v12 = *(a2 + 72) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a2 + 72);
  if (v12)
  {
    v13 = 0;
  }

  *v24 = 4;
  *&v24[4] = v13;
  v14 = 4 * (v13 != 0);
  LODWORD(v15) = v14 * v13;
  if (HIDWORD(v13))
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 & 0x3FFFFFFFFLL | ((v15 >> 2) << 34);
  v17 = __PAIR64__(*&v24[4], 4);
  *v24 = 1;
  *&v24[4] = v16;
  v18 = *v24;
  *a1 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = HIDWORD(v13);
  *(a1 + 20) = v18;
  *(a1 + 28) = v15;
  *(a1 + 32) = v13;
  *(a1 + 40) = v16;
}

void sub_2715B586C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2715B589C(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
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
      sub_2715B55C8(v17, a1);
      sub_2715B55C8(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v19);
  goto LABEL_25;
}

void sub_2715B5C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B5C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B5CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B5CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_271582FF4(v21);
  MEMORY[0x2743BF050](v20, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B5D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B5D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B5D30(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715B5FEC(uint64_t a1, uint64_t *lpsrc)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C898, 0);
  if (!v5)
  {
    (*(v4 + 72))(v47, lpsrc, 32);
    v12 = *&v47[0];
    v14 = *(*&v47[0] + 16);
    v13 = *(*&v47[0] + 32);
    v34 = **&v47[0];
    v35 = v14;
    v36 = v13;
    *&v47[0] = 0;
    MEMORY[0x2743BF050](v12, 0xC400A2AC0F1, v15, v16, v17, v18);
    sub_2715B5324(v47, a1);
    sub_271245B78(&v34, v47);
    return result;
  }

  v6 = v5;
  v7 = v5[10];
  if (v7 == 2)
  {
    v24 = *(v5 + 3);
    v25 = *(v5 + 4);
    v43 = v24;
    v44 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      v24 = v43;
    }

    v42 = &unk_288109268;
    if (v24)
    {
      v27 = *v24;
      v26 = v24[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }
      }

      if (v27)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v7 == 1)
  {
    v20 = *(v5 + 3);
    v21 = *(v5 + 4);
    v43 = v20;
    v44 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v43;
    }

    v42 = &unk_288109268;
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
        goto LABEL_29;
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
    v43 = v8;
    v44 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = v43;
    }

    v42 = &unk_288109268;
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
LABEL_29:
        sub_2717F919C(v43);
      }
    }
  }

  sub_2715B55C8(v40, v6);
  if (HIDWORD(v41) <= 8)
  {
    v28 = 8;
  }

  else
  {
    v28 = HIDWORD(v41);
  }

  LODWORD(v47[0]) = 4;
  DWORD1(v47[0]) = v41;
  *v45 = *&v47[0];
  LODWORD(v47[0]) = 1;
  *(v47 + 4) = DWORD2(v41) | (v28 << 32);
  *&v45[12] = *&v47[0];
  *&v45[8] = DWORD1(v41);
  *&v45[20] = v28;
  *&v45[24] = v41;
  v46 = *(v47 + 4);
  *&v34 = &unk_288109698;
  DWORD2(v34) = 0;
  if (DWORD1(v41) && v41)
  {
    sub_271598248();
  }

  *(&v35 + 1) = 0;
  *&v36 = 0;
  *&v35 = &unk_288109288;
  DWORD2(v36) = 0;
  if (v41 && DWORD1(v41))
  {
    sub_27159867C(0, &v35, &v37);
  }

  else
  {
    v37 = *v45;
    v38 = *&v45[16];
    v39 = v46;
  }

  v47[0] = v40[0];
  v47[1] = v40[1];
  v47[2] = v41;
  sub_271599080(&v34, v47);
  *&v34 = &unk_288109E78;
  sub_2717F1E54(&v42);
  v29 = DWORD2(v36);
  *(a1 + 8) = DWORD2(v34);
  v30 = *(a1 + 40);
  if (v30 == -1)
  {
    if (v29 == -1)
    {
      result = *&v37;
      v33 = v38;
      *(a1 + 48) = v37;
      *(a1 + 64) = v33;
      *(a1 + 80) = v39;
      return result;
    }
  }

  else if (v29 == -1)
  {
    (off_288133918[v30])(v47, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_45;
  }

  *&v47[0] = a1 + 16;
  (off_288133948[v29])(v47);
LABEL_45:
  v31 = DWORD2(v36);
  result = *&v37;
  v32 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v32;
  *(a1 + 80) = v39;
  *&v34 = &unk_288109698;
  if (v31 != -1)
  {
    (off_288133918[v31])(v47, &v35);
  }

  return result;
}

void sub_2715B651C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B6530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B6544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B6558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715B6604(uint64_t a1, int a2)
{
  if (a2 == 32)
  {
LABEL_10:
    sub_2715B5324(&v8, a1);
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

void sub_2715B6770(uint64_t a1, int a2)
{
  if (a2 == 32)
  {
LABEL_10:
    sub_2715B55C8(&v8, a1);
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

uint64_t *sub_2715B68DC()
{
  if ((atomic_load_explicit(&qword_28087BCB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BCB8))
  {
    sub_2715C8728();
  }

  if (byte_28087BE27 >= 0)
  {
    return &qword_28087BE10;
  }

  else
  {
    return qword_28087BE10;
  }
}

void sub_2715B69AC(uint64_t a1, int a2)
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

void sub_2715B70C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F1E54(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B7100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F2278(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B7170(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715B742C(uint64_t a1)
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

void sub_2715B74A4(uint64_t a1, uint64_t a2)
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

void sub_2715B772C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2715B7748(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v11 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v11;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v21 = &unk_288109288;
          v22 = v6;
          v23 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v22;
            v7 = v23;
          }

          v19[0] = &unk_288109288;
          v19[1] = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271587DFC(v24, v19);
          *a1 = *v24;
          v8 = v25;
          *(a1 + 8) = *&v24[8];
          *(a1 + 24) = v8;
          *(a1 + 40) = v26;
          v19[0] = &unk_288109288;
          v9 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v21 = &unk_288109288;
          v10 = v23;
          if (v23)
          {
            if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }

          return;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v12 = *(a2 + 72) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a2 + 72);
  if (v12)
  {
    v13 = 0;
  }

  *v24 = 4;
  *&v24[4] = v13;
  v14 = 4 * (v13 != 0);
  LODWORD(v15) = v14 * v13;
  if (HIDWORD(v13))
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 & 0x3FFFFFFFFLL | ((v15 >> 2) << 34);
  v17 = __PAIR64__(*&v24[4], 4);
  *v24 = 1;
  *&v24[4] = v16;
  v18 = *v24;
  *a1 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = HIDWORD(v13);
  *(a1 + 20) = v18;
  *(a1 + 28) = v15;
  *(a1 + 32) = v13;
  *(a1 + 40) = v16;
}

void sub_2715B79EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2715B7A1C(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
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
      sub_2715B7748(v17, a1);
      sub_2715B7748(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v19);
  goto LABEL_25;
}

void sub_2715B7E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B7E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B7E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B7E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_271582FF4(v21);
  MEMORY[0x2743BF050](v20, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B7E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B7E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B7EB0(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715B816C(uint64_t a1, uint64_t *lpsrc)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C880, 0);
  if (!v5)
  {
    (*(v4 + 72))(v47, lpsrc, 33);
    v12 = *&v47[0];
    v14 = *(*&v47[0] + 16);
    v13 = *(*&v47[0] + 32);
    v34 = **&v47[0];
    v35 = v14;
    v36 = v13;
    *&v47[0] = 0;
    MEMORY[0x2743BF050](v12, 0xC400A2AC0F1, v15, v16, v17, v18);
    sub_2715B74A4(v47, a1);
    sub_2712A6008(&v34, v47);
    return result;
  }

  v6 = v5;
  v7 = v5[10];
  if (v7 == 2)
  {
    v24 = *(v5 + 3);
    v25 = *(v5 + 4);
    v43 = v24;
    v44 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      v24 = v43;
    }

    v42 = &unk_288109268;
    if (v24)
    {
      v27 = *v24;
      v26 = v24[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }
      }

      if (v27)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v7 == 1)
  {
    v20 = *(v5 + 3);
    v21 = *(v5 + 4);
    v43 = v20;
    v44 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v43;
    }

    v42 = &unk_288109268;
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
        goto LABEL_29;
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
    v43 = v8;
    v44 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = v43;
    }

    v42 = &unk_288109268;
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
LABEL_29:
        sub_2717F919C(v43);
      }
    }
  }

  sub_2715B7748(v40, v6);
  if (HIDWORD(v41) <= 0x20)
  {
    v28 = 32;
  }

  else
  {
    v28 = HIDWORD(v41);
  }

  LODWORD(v47[0]) = 4;
  DWORD1(v47[0]) = v41;
  *v45 = *&v47[0];
  LODWORD(v47[0]) = 1;
  *(v47 + 4) = DWORD2(v41) | (v28 << 32);
  *&v45[12] = *&v47[0];
  *&v45[8] = DWORD1(v41);
  *&v45[20] = v28;
  *&v45[24] = v41;
  v46 = *(v47 + 4);
  *&v34 = &unk_288109458;
  DWORD2(v34) = 0;
  if (DWORD1(v41) && v41)
  {
    sub_2715877A0();
  }

  *(&v35 + 1) = 0;
  *&v36 = 0;
  *&v35 = &unk_288109288;
  DWORD2(v36) = 0;
  if (v41 && DWORD1(v41))
  {
    sub_271587BD4(0, &v35, &v37);
  }

  else
  {
    v37 = *v45;
    v38 = *&v45[16];
    v39 = v46;
  }

  v47[0] = v40[0];
  v47[1] = v40[1];
  v47[2] = v41;
  sub_2715887D0(&v34, v47);
  *&v34 = &unk_288109DE8;
  sub_2717F1E54(&v42);
  v29 = DWORD2(v36);
  *(a1 + 8) = DWORD2(v34);
  v30 = *(a1 + 40);
  if (v30 == -1)
  {
    if (v29 == -1)
    {
      result = *&v37;
      v33 = v38;
      *(a1 + 48) = v37;
      *(a1 + 64) = v33;
      *(a1 + 80) = v39;
      return result;
    }
  }

  else if (v29 == -1)
  {
    (off_288133918[v30])(v47, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_45;
  }

  *&v47[0] = a1 + 16;
  (off_288133948[v29])(v47);
LABEL_45:
  v31 = DWORD2(v36);
  result = *&v37;
  v32 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v32;
  *(a1 + 80) = v39;
  *&v34 = &unk_288109458;
  if (v31 != -1)
  {
    (off_288133918[v31])(v47, &v35);
  }

  return result;
}

void sub_2715B869C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B86B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B86C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B86D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715B8784(uint64_t a1, int a2)
{
  if (a2 == 33)
  {
LABEL_10:
    sub_2715B74A4(&v8, a1);
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

void sub_2715B88F0(uint64_t a1, int a2)
{
  if (a2 == 33)
  {
LABEL_10:
    sub_2715B7748(&v8, a1);
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

uint64_t *sub_2715B8A5C()
{
  if ((atomic_load_explicit(&qword_28087BCC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BCC0))
  {
    sub_2715C882C();
  }

  if (byte_28087BE3F >= 0)
  {
    return &qword_28087BE28;
  }

  else
  {
    return qword_28087BE28;
  }
}

void sub_2715B8B2C(uint64_t a1, int a2)
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

void sub_2715B9244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F1E54(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B9280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F2278(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B92F0(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715B95AC(uint64_t a1)
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

void sub_2715B9624(uint64_t a1, uint64_t a2)
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

void sub_2715B98AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2715B98C8(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v11 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v11;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v21 = &unk_288109288;
          v22 = v6;
          v23 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v22;
            v7 = v23;
          }

          v19[0] = &unk_288109288;
          v19[1] = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271587DFC(v24, v19);
          *a1 = *v24;
          v8 = v25;
          *(a1 + 8) = *&v24[8];
          *(a1 + 24) = v8;
          *(a1 + 40) = v26;
          v19[0] = &unk_288109288;
          v9 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v21 = &unk_288109288;
          v10 = v23;
          if (v23)
          {
            if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }

          return;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v12 = *(a2 + 72) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a2 + 72);
  if (v12)
  {
    v13 = 0;
  }

  *v24 = 4;
  *&v24[4] = v13;
  v14 = 4 * (v13 != 0);
  LODWORD(v15) = v14 * v13;
  if (HIDWORD(v13))
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 & 0x3FFFFFFFFLL | ((v15 >> 2) << 34);
  v17 = __PAIR64__(*&v24[4], 4);
  *v24 = 1;
  *&v24[4] = v16;
  v18 = *v24;
  *a1 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = HIDWORD(v13);
  *(a1 + 20) = v18;
  *(a1 + 28) = v15;
  *(a1 + 32) = v13;
  *(a1 + 40) = v16;
}

void sub_2715B9B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2715B9B9C(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
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
      sub_2715B98C8(v17, a1);
      sub_2715B98C8(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v19);
  goto LABEL_25;
}

void sub_2715B9F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B9F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B9FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B9FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_271582FF4(v21);
  MEMORY[0x2743BF050](v20, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715BA008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715BA01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715BA030(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715BA2EC(uint64_t a1, uint64_t *lpsrc)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C868, 0);
  if (!v5)
  {
    (*(v4 + 72))(v47, lpsrc, 37);
    v12 = *&v47[0];
    v14 = *(*&v47[0] + 16);
    v13 = *(*&v47[0] + 32);
    v34 = **&v47[0];
    v35 = v14;
    v36 = v13;
    *&v47[0] = 0;
    MEMORY[0x2743BF050](v12, 0xC400A2AC0F1, v15, v16, v17, v18);
    sub_2715B9624(v47, a1);
    sub_2712A6008(&v34, v47);
    return result;
  }

  v6 = v5;
  v7 = v5[10];
  if (v7 == 2)
  {
    v24 = *(v5 + 3);
    v25 = *(v5 + 4);
    v43 = v24;
    v44 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      v24 = v43;
    }

    v42 = &unk_288109268;
    if (v24)
    {
      v27 = *v24;
      v26 = v24[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }
      }

      if (v27)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v7 == 1)
  {
    v20 = *(v5 + 3);
    v21 = *(v5 + 4);
    v43 = v20;
    v44 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v43;
    }

    v42 = &unk_288109268;
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
        goto LABEL_29;
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
    v43 = v8;
    v44 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = v43;
    }

    v42 = &unk_288109268;
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
LABEL_29:
        sub_2717F919C(v43);
      }
    }
  }

  sub_2715B98C8(v40, v6);
  if (HIDWORD(v41) <= 0x20)
  {
    v28 = 32;
  }

  else
  {
    v28 = HIDWORD(v41);
  }

  LODWORD(v47[0]) = 4;
  DWORD1(v47[0]) = v41;
  *v45 = *&v47[0];
  LODWORD(v47[0]) = 1;
  *(v47 + 4) = DWORD2(v41) | (v28 << 32);
  *&v45[12] = *&v47[0];
  *&v45[8] = DWORD1(v41);
  *&v45[20] = v28;
  *&v45[24] = v41;
  v46 = *(v47 + 4);
  *&v34 = &unk_288109458;
  DWORD2(v34) = 0;
  if (DWORD1(v41) && v41)
  {
    sub_2715877A0();
  }

  *(&v35 + 1) = 0;
  *&v36 = 0;
  *&v35 = &unk_288109288;
  DWORD2(v36) = 0;
  if (v41 && DWORD1(v41))
  {
    sub_271587BD4(0, &v35, &v37);
  }

  else
  {
    v37 = *v45;
    v38 = *&v45[16];
    v39 = v46;
  }

  v47[0] = v40[0];
  v47[1] = v40[1];
  v47[2] = v41;
  sub_2715887D0(&v34, v47);
  *&v34 = &unk_288109D58;
  sub_2717F1E54(&v42);
  v29 = DWORD2(v36);
  *(a1 + 8) = DWORD2(v34);
  v30 = *(a1 + 40);
  if (v30 == -1)
  {
    if (v29 == -1)
    {
      result = *&v37;
      v33 = v38;
      *(a1 + 48) = v37;
      *(a1 + 64) = v33;
      *(a1 + 80) = v39;
      return result;
    }
  }

  else if (v29 == -1)
  {
    (off_288133918[v30])(v47, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_45;
  }

  *&v47[0] = a1 + 16;
  (off_288133948[v29])(v47);
LABEL_45:
  v31 = DWORD2(v36);
  result = *&v37;
  v32 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v32;
  *(a1 + 80) = v39;
  *&v34 = &unk_288109458;
  if (v31 != -1)
  {
    (off_288133918[v31])(v47, &v35);
  }

  return result;
}

void sub_2715BA81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715BA830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715BA844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715BA858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715BA904(uint64_t a1, int a2)
{
  if (a2 == 37)
  {
LABEL_10:
    sub_2715B9624(&v8, a1);
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

void sub_2715BAA70(uint64_t a1, int a2)
{
  if (a2 == 37)
  {
LABEL_10:
    sub_2715B98C8(&v8, a1);
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

uint64_t *sub_2715BABDC()
{
  if ((atomic_load_explicit(&qword_28087BCC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BCC8))
  {
    sub_2715C8930();
  }

  if (byte_28087BE57 >= 0)
  {
    return &qword_28087BE40;
  }

  else
  {
    return qword_28087BE40;
  }
}

void sub_2715BACAC(uint64_t a1, int a2)
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

void sub_2715BB3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F1E54(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715BB400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F2278(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715BB470(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715BB72C(uint64_t a1)
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

void sub_2715BB7A4(uint64_t a1, uint64_t a2)
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

void sub_2715BBA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2715BBA48(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v11 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v11;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v21 = &unk_288109288;
          v22 = v6;
          v23 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v22;
            v7 = v23;
          }

          v19[0] = &unk_288109288;
          v19[1] = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_27158D6DC(v24, v19);
          *a1 = *v24;
          v8 = v25;
          *(a1 + 8) = *&v24[8];
          *(a1 + 24) = v8;
          *(a1 + 40) = v26;
          v19[0] = &unk_288109288;
          v9 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v21 = &unk_288109288;
          v10 = v23;
          if (v23)
          {
            if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }

          return;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v12 = *(a2 + 72) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a2 + 72);
  if (v12)
  {
    v13 = 0;
  }

  *v24 = 4;
  *&v24[4] = v13;
  v14 = 4 * (v13 != 0);
  LODWORD(v15) = v14 * v13;
  if (HIDWORD(v13))
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 & 0x3FFFFFFFFLL | ((v15 >> 2) << 34);
  v17 = __PAIR64__(*&v24[4], 4);
  *v24 = 1;
  *&v24[4] = v16;
  v18 = *v24;
  *a1 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = HIDWORD(v13);
  *(a1 + 20) = v18;
  *(a1 + 28) = v15;
  *(a1 + 32) = v13;
  *(a1 + 40) = v16;
}

void sub_2715BBCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2715BBD1C(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
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
      sub_2715BBA48(v17, a1);
      sub_2715BBA48(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v19);
  goto LABEL_25;
}

void sub_2715BC100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715BC114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715BC128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715BC13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_271582FF4(v21);
  MEMORY[0x2743BF050](v20, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715BC188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715BC19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715BC1B0(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715BC46C(uint64_t a1, uint64_t *lpsrc)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C850, 0);
  if (!v5)
  {
    (*(v4 + 72))(v47, lpsrc, 38);
    v12 = *&v47[0];
    v14 = *(*&v47[0] + 16);
    v13 = *(*&v47[0] + 32);
    v34 = **&v47[0];
    v35 = v14;
    v36 = v13;
    *&v47[0] = 0;
    MEMORY[0x2743BF050](v12, 0xC400A2AC0F1, v15, v16, v17, v18);
    sub_2715BB7A4(v47, a1);
    sub_271244900(&v34, v47);
    return result;
  }

  v6 = v5;
  v7 = v5[10];
  if (v7 == 2)
  {
    v24 = *(v5 + 3);
    v25 = *(v5 + 4);
    v43 = v24;
    v44 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      v24 = v43;
    }

    v42 = &unk_288109268;
    if (v24)
    {
      v27 = *v24;
      v26 = v24[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }
      }

      if (v27)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v7 == 1)
  {
    v20 = *(v5 + 3);
    v21 = *(v5 + 4);
    v43 = v20;
    v44 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v43;
    }

    v42 = &unk_288109268;
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
        goto LABEL_29;
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
    v43 = v8;
    v44 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = v43;
    }

    v42 = &unk_288109268;
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
LABEL_29:
        sub_2717F919C(v43);
      }
    }
  }

  sub_2715BBA48(v40, v6);
  if (HIDWORD(v41) <= 0x10)
  {
    v28 = 16;
  }

  else
  {
    v28 = HIDWORD(v41);
  }

  LODWORD(v47[0]) = 4;
  DWORD1(v47[0]) = v41;
  *v45 = *&v47[0];
  LODWORD(v47[0]) = 1;
  *(v47 + 4) = DWORD2(v41) | (v28 << 32);
  *&v45[12] = *&v47[0];
  *&v45[8] = DWORD1(v41);
  *&v45[20] = v28;
  *&v45[24] = v41;
  v46 = *(v47 + 4);
  *&v34 = &unk_2881092A8;
  DWORD2(v34) = 0;
  if (DWORD1(v41) && v41)
  {
    sub_27158D080();
  }

  *(&v35 + 1) = 0;
  *&v36 = 0;
  *&v35 = &unk_288109288;
  DWORD2(v36) = 0;
  if (v41 && DWORD1(v41))
  {
    sub_27158D4B4(0, &v35, &v37);
  }

  else
  {
    v37 = *v45;
    v38 = *&v45[16];
    v39 = v46;
  }

  v47[0] = v40[0];
  v47[1] = v40[1];
  v47[2] = v41;
  sub_27158DEA8(&v34, v47);
  *&v34 = &unk_288109CC8;
  sub_2717F1E54(&v42);
  v29 = DWORD2(v36);
  *(a1 + 8) = DWORD2(v34);
  v30 = *(a1 + 40);
  if (v30 == -1)
  {
    if (v29 == -1)
    {
      result = *&v37;
      v33 = v38;
      *(a1 + 48) = v37;
      *(a1 + 64) = v33;
      *(a1 + 80) = v39;
      return result;
    }
  }

  else if (v29 == -1)
  {
    (off_288133918[v30])(v47, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_45;
  }

  *&v47[0] = a1 + 16;
  (off_288133948[v29])(v47);
LABEL_45:
  v31 = DWORD2(v36);
  result = *&v37;
  v32 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v32;
  *(a1 + 80) = v39;
  *&v34 = &unk_2881092A8;
  if (v31 != -1)
  {
    (off_288133918[v31])(v47, &v35);
  }

  return result;
}

void sub_2715BC99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715BC9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715BC9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715BC9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715BCA84(uint64_t a1, int a2)
{
  if (a2 == 38)
  {
LABEL_10:
    sub_2715BB7A4(&v8, a1);
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

void sub_2715BCBF0(uint64_t a1, int a2)
{
  if (a2 == 38)
  {
LABEL_10:
    sub_2715BBA48(&v8, a1);
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

uint64_t *sub_2715BCD5C()
{
  if ((atomic_load_explicit(&qword_28087BCD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BCD0))
  {
    sub_2715C8A34();
  }

  if (byte_28087BE6F >= 0)
  {
    return &qword_28087BE58;
  }

  else
  {
    return qword_28087BE58;
  }
}

void sub_2715BCE2C(uint64_t a1, int a2)
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

void sub_2715BD544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F1E54(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715BD580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717F1CC4(v12);
  sub_2717F2278(va);
  MEMORY[0x2743BF050](v11, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715BD5F0(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715BD8AC@<D0>(unsigned int *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*a1 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = *a1;
  }

  v5 = *a1;
  if (a1[1])
  {
    v6 = v4;
  }

  else
  {
    v6 = 32;
  }

  *&v9 = *a1;
  *(&v9 + 1) = (*a1 != 0) | (v6 << 32);
  *a2 = &unk_288109608;
  *(a2 + 8) = 0;
  if (v5 && HIDWORD(v5))
  {
    sub_2715823BC();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && HIDWORD(v5))
  {
    *(a2 + 48) = sub_2715827F0(0, a2 + 16, a3);
    *(a2 + 56) = v7;
    *a2 = &unk_28810A268;
  }

  else
  {
    result = *&v9;
    *(a2 + 48) = v9;
    *a2 = &unk_28810A268;
  }

  return result;
}

double sub_2715BD9F0@<D0>(unsigned int *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*a1 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = *a1;
  }

  v5 = *a1;
  if (a1[1])
  {
    v6 = v4;
  }

  else
  {
    v6 = 16;
  }

  *&v9 = *a1;
  *(&v9 + 1) = (*a1 != 0) | (v6 << 32);
  *a2 = &unk_2881093C8;
  *(a2 + 8) = 0;
  if (v5 && HIDWORD(v5))
  {
    sub_271589604();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && HIDWORD(v5))
  {
    *(a2 + 48) = sub_271589A38(0, a2 + 16, a3);
    *(a2 + 56) = v7;
    *a2 = &unk_288109F98;
  }

  else
  {
    result = *&v9;
    *(a2 + 48) = v9;
    *a2 = &unk_288109F98;
  }

  return result;
}

double sub_2715BDB34@<D0>(unsigned int *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*a1 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = *a1;
  }

  v5 = *a1;
  if (a1[1])
  {
    v6 = v4;
  }

  else
  {
    v6 = 16;
  }

  *&v9 = *a1;
  *(&v9 + 1) = (*a1 != 0) | (v6 << 32);
  *a2 = &unk_288109968;
  *(a2 + 8) = 0;
  if (v5 && HIDWORD(v5))
  {
    sub_27158EE20();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && HIDWORD(v5))
  {
    *(a2 + 48) = sub_27158F254(0, a2 + 16, a3);
    *(a2 + 56) = v7;
    *a2 = &unk_288109C38;
  }

  else
  {
    result = *&v9;
    *(a2 + 48) = v9;
    *a2 = &unk_288109C38;
  }

  return result;
}

double sub_2715BDC78@<D0>(unsigned int *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*a1 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = *a1;
  }

  v5 = *a1;
  if (a1[1])
  {
    v6 = v4;
  }

  else
  {
    v6 = 8;
  }

  *&v9 = *a1;
  *(&v9 + 1) = (*a1 != 0) | (v6 << 32);
  *a2 = &unk_2881097B8;
  *(a2 + 8) = 0;
  if (v5 && HIDWORD(v5))
  {
    sub_271594718();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && HIDWORD(v5))
  {
    *(a2 + 48) = sub_271594B4C(0, a2 + 16, a3);
    *(a2 + 56) = v7;
    *a2 = &unk_288109BA8;
  }

  else
  {
    result = *&v9;
    *(a2 + 48) = v9;
    *a2 = &unk_288109BA8;
  }

  return result;
}

void sub_2715BDDBC(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = 2 * (*a1 != 0);
  if ((v3 * *a1) <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 32;
  }

  *v8 = 2;
  *&v8[4] = *a1;
  LODWORD(v9) = 1;
  HIDWORD(v9) = 2 * (*a1 != 0);
  *&v8[12] = v9;
  *&v8[20] = v7;
  *&v8[24] = *a1;
  *a2 = &unk_288109578;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_271583EF0();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271584324(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v8;
    *(a2 + 64) = *&v8[16];
    *(a2 + 80) = v3 & 0x1FFFFFFFFLL | ((v7 >> 1) << 33);
  }

  *a2 = &unk_288109B18;
}

void sub_2715BDF5C(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = 2 * (*a1 != 0);
  if ((v3 * *a1) <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 16;
  }

  *v8 = 2;
  *&v8[4] = *a1;
  LODWORD(v9) = 1;
  HIDWORD(v9) = 2 * (*a1 != 0);
  *&v8[12] = v9;
  *&v8[20] = v7;
  *&v8[24] = *a1;
  *a2 = &unk_2881098D8;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_271590B90();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271590FC4(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v8;
    *(a2 + 64) = *&v8[16];
    *(a2 + 80) = v3 & 0x1FFFFFFFFLL | ((v7 >> 1) << 33);
  }

  *a2 = &unk_288109A88;
}

void sub_2715BE0FC(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = 2 * (*a1 != 0);
  if ((v3 * *a1) <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 8;
  }

  *v8 = 2;
  *&v8[4] = *a1;
  LODWORD(v9) = 1;
  HIDWORD(v9) = 2 * (*a1 != 0);
  *&v8[12] = v9;
  *&v8[20] = v7;
  *&v8[24] = *a1;
  *a2 = &unk_288109728;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_271596488();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_2715968BC(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v8;
    *(a2 + 64) = *&v8[16];
    *(a2 + 80) = v3 & 0x1FFFFFFFFLL | ((v7 >> 1) << 33);
  }

  *a2 = &unk_2881099F8;
}

void sub_2715BE29C(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 * *a1) <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 32;
  }

  *v8 = 3;
  *&v8[4] = *a1;
  LODWORD(v9) = 1;
  HIDWORD(v9) = v3;
  *&v8[12] = v9;
  *&v8[20] = v7;
  *&v8[24] = *a1;
  *a2 = &unk_2881094E8;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_2715859F4();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271585E28(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v8;
    *(a2 + 64) = *&v8[16];
    *(a2 + 80) = v3 | (v7 << 32);
  }

  *a2 = &unk_28810A2F8;
}

void sub_2715BE434(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 * *a1) <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 32;
  }

  *v8 = 3;
  *&v8[4] = *a1;
  LODWORD(v9) = 1;
  HIDWORD(v9) = v3;
  *&v8[12] = v9;
  *&v8[20] = v7;
  *&v8[24] = *a1;
  *a2 = &unk_2881094E8;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_2715859F4();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271585E28(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v8;
    *(a2 + 64) = *&v8[16];
    *(a2 + 80) = v3 | (v7 << 32);
  }

  *a2 = &unk_28810A1D8;
}

void sub_2715BE5CC(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 * *a1) <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 16;
  }

  *v8 = 3;
  *&v8[4] = *a1;
  LODWORD(v9) = 1;
  HIDWORD(v9) = v3;
  *&v8[12] = v9;
  *&v8[20] = v7;
  *&v8[24] = *a1;
  *a2 = &unk_288109338;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_27158B358();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_27158B78C(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v8;
    *(a2 + 64) = *&v8[16];
    *(a2 + 80) = v3 | (v7 << 32);
  }

  *a2 = &unk_28810A148;
}

void sub_2715BE764(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = 4 * (*a1 != 0);
  if ((v3 * *a1) <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 32;
  }

  *v8 = 4;
  *&v8[4] = *a1;
  LODWORD(v9) = 1;
  HIDWORD(v9) = 4 * (*a1 != 0);
  *&v8[12] = v9;
  *&v8[20] = v7;
  *&v8[24] = *a1;
  *a2 = &unk_288109458;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_2715877A0();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271587BD4(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v8;
    *(a2 + 64) = *&v8[16];
    *(a2 + 80) = v3 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  }

  *a2 = &unk_28810A0B8;
}

void sub_2715BE904(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = 4 * (*a1 != 0);
  if ((v3 * *a1) <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 32;
  }

  *v8 = 4;
  *&v8[4] = *a1;
  LODWORD(v9) = 1;
  HIDWORD(v9) = 4 * (*a1 != 0);
  *&v8[12] = v9;
  *&v8[20] = v7;
  *&v8[24] = *a1;
  *a2 = &unk_288109458;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_2715877A0();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271587BD4(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v8;
    *(a2 + 64) = *&v8[16];
    *(a2 + 80) = v3 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  }

  *a2 = &unk_28810A028;
}

void sub_2715BEAA4(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = 4 * (*a1 != 0);
  if ((v3 * *a1) <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 16;
  }

  *v8 = 4;
  *&v8[4] = *a1;
  LODWORD(v9) = 1;
  HIDWORD(v9) = 4 * (*a1 != 0);
  *&v8[12] = v9;
  *&v8[20] = v7;
  *&v8[24] = *a1;
  *a2 = &unk_288109848;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_271592954();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271592D88(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v8;
    *(a2 + 64) = *&v8[16];
    *(a2 + 80) = v3 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  }

  *a2 = &unk_288109F08;
}

void sub_2715BEC44(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = 4 * (*a1 != 0);
  if ((v3 * *a1) <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 8;
  }

  *v8 = 4;
  *&v8[4] = *a1;
  LODWORD(v9) = 1;
  HIDWORD(v9) = 4 * (*a1 != 0);
  *&v8[12] = v9;
  *&v8[20] = v7;
  *&v8[24] = *a1;
  *a2 = &unk_288109698;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_271598248();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_27159867C(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v8;
    *(a2 + 64) = *&v8[16];
    *(a2 + 80) = v3 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  }

  *a2 = &unk_288109E78;
}

void sub_2715BEDE4(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = 4 * (*a1 != 0);
  if ((v3 * *a1) <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 32;
  }

  *v8 = 4;
  *&v8[4] = *a1;
  LODWORD(v9) = 1;
  HIDWORD(v9) = 4 * (*a1 != 0);
  *&v8[12] = v9;
  *&v8[20] = v7;
  *&v8[24] = *a1;
  *a2 = &unk_288109458;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_2715877A0();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271587BD4(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v8;
    *(a2 + 64) = *&v8[16];
    *(a2 + 80) = v3 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  }

  *a2 = &unk_288109DE8;
}

void sub_2715BEF84(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = 4 * (*a1 != 0);
  if ((v3 * *a1) <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 32;
  }

  *v8 = 4;
  *&v8[4] = *a1;
  LODWORD(v9) = 1;
  HIDWORD(v9) = 4 * (*a1 != 0);
  *&v8[12] = v9;
  *&v8[20] = v7;
  *&v8[24] = *a1;
  *a2 = &unk_288109458;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_2715877A0();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271587BD4(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v8;
    *(a2 + 64) = *&v8[16];
    *(a2 + 80) = v3 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  }

  *a2 = &unk_288109D58;
}

void sub_2715BF124(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = 4 * (*a1 != 0);
  if ((v3 * *a1) <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 16;
  }

  *v8 = 4;
  *&v8[4] = *a1;
  LODWORD(v9) = 1;
  HIDWORD(v9) = 4 * (*a1 != 0);
  *&v8[12] = v9;
  *&v8[20] = v7;
  *&v8[24] = *a1;
  *a2 = &unk_2881092A8;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_27158D080();
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_27158D4B4(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v8;
    *(a2 + 64) = *&v8[16];
    *(a2 + 80) = v3 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  }

  *a2 = &unk_288109CC8;
}

void *sub_2715BF2C4(void *a1)
{
  *a1 = &unk_28810A3A8;
  sub_2717F1E54(a1 + 1);
  return a1;
}

void sub_2715BF308(void *a1)
{
  *a1 = &unk_28810A3A8;
  sub_2717F1E54(a1 + 1);

  JUMPOUT(0x2743BF050);
}

void *sub_2715BF36C(void *a1)
{
  *a1 = &unk_28810A388;
  sub_2717F2278(a1 + 1);
  return a1;
}

void sub_2715BF3B0(void *a1)
{
  *a1 = &unk_28810A388;
  sub_2717F2278(a1 + 1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715BF414(uint64_t a1)
{
  *a1 = &unk_288109608;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40EE3858B8);
}

uint64_t sub_2715BF4A0(uint64_t a1)
{
  *a1 = &unk_2881093C8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40EE3858B8);
}

uint64_t sub_2715BF52C(uint64_t a1)
{
  *a1 = &unk_288109968;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40EE3858B8);
}

uint64_t sub_2715BF5B8(uint64_t a1)
{
  *a1 = &unk_2881097B8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40EE3858B8);
}

uint64_t sub_2715BF644(uint64_t a1)
{
  *a1 = &unk_288109578;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BF6D0(uint64_t a1)
{
  *a1 = &unk_2881098D8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BF75C(uint64_t a1)
{
  *a1 = &unk_288109728;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BF7E8(uint64_t a1)
{
  *a1 = &unk_2881094E8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BF874(uint64_t a1)
{
  *a1 = &unk_2881094E8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BF900(uint64_t a1)
{
  *a1 = &unk_288109338;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BF98C(uint64_t a1)
{
  *a1 = &unk_288109458;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BFA18(uint64_t a1)
{
  *a1 = &unk_288109458;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BFAA4(uint64_t a1)
{
  *a1 = &unk_288109848;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BFB30(uint64_t a1)
{
  *a1 = &unk_288109698;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BFBBC(uint64_t a1)
{
  *a1 = &unk_288109458;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BFC48(uint64_t a1)
{
  *a1 = &unk_288109458;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BFCD4(uint64_t a1)
{
  *a1 = &unk_2881092A8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

void sub_2715BFD60(uint64_t a1, void *a2)
{
  *a2 = &unk_288109288;
  v2 = a2[2];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_2715BFE08(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_288133918[v4])(&v8, v3);
    a3 = v7;
LABEL_7:
    *v3 = &unk_288109288;
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

__n128 sub_2715BFF10(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_288133918[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    result = *(a3 + 8);
    *(v3 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *v3 = &unk_288109268;
    *(v3 + 24) = 1;
    return result;
  }

  sub_2717F1D58(a2, a3);
  return result;
}

__n128 sub_2715BFFC8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_288133918[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    result = *(a3 + 8);
    *(v3 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *v3 = &unk_288109248;
    *(v3 + 24) = 2;
    return result;
  }

  sub_2717F217C(a2, a3);
  return result;
}

uint64_t sub_2715C0080(uint64_t result)
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

void sub_2715C00F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715C01B0(uint64_t a1)
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

uint64_t sub_2715C0254(uint64_t result)
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

void sub_2715C02CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715C0384(uint64_t a1)
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

uint64_t sub_2715C0428(uint64_t result)
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

void sub_2715C04A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715C0558(uint64_t a1)
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

uint64_t sub_2715C05FC(uint64_t a1)
{
  result = sub_2717F4624(a1);
  if (result > 875836517)
  {
    if (result > 1111970368)
    {
      if (result == 1111970369 || result == 1278226488 || result == 1380401729)
      {
        return result;
      }
    }

    else if (result == 875836518 || result == 875836534 || result == 1094862674)
    {
      return result;
    }
  }

  else if (result > 843264055)
  {
    if (result == 843264056 || result == 875704422 || result == 875704438)
    {
      return result;
    }
  }

  else if (result == 24 || result == 32 || result == 842285639)
  {
    return result;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 118, "Contains(pf::formats::U8(), ref.Format())", 0x29uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (byte_28087C438 == 1)
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_25:
        v5 = *v2;
        v4 = *(v2 + 8);
        v2 += 16;
        v5(v4, "Contains(pf::formats::U8(), ref.Format())", 41, "", 0);
      }

      while (v2 != v3);
      if (byte_28087C430)
      {
        goto LABEL_27;
      }

LABEL_30:
      abort();
    }
  }

LABEL_27:
  v7 = qword_28087C420;
  v6 = *algn_28087C428;

  return (v7)(v6, "Contains(pf::formats::U8(), ref.Format())", 41, "", 0);
}

void sub_2715C0864(void x0_0, int a1, unint64_t a2, double a4)
{
  v65[2] = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
      v65[0] = &unk_2881117D8;
      if (a2 <= 0x20)
      {
        v4 = 32;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 << 32;
      if (!HIDWORD(a2))
      {
        v5 = 0x2000000000;
      }

      if (a2)
      {
        ++v5;
      }

      *v63 = a2;
      *&v63[8] = v5;
      if (HIDWORD(a2) && a2)
      {
        sub_2715823BC();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        *&v59 = sub_2715827F0(0, &v55, a4);
        *(&v59 + 1) = v53;
      }

      else
      {
        v59 = *v63;
      }

      operator new();
    case 2:
      v65[0] = &unk_288110F28;
      if (a2 <= 0x10)
      {
        v23 = 16;
      }

      else
      {
        v23 = a2;
      }

      v24 = v23 << 32;
      if (!HIDWORD(a2))
      {
        v24 = 0x1000000000;
      }

      if (a2)
      {
        ++v24;
      }

      *v63 = a2;
      *&v63[8] = v24;
      if (HIDWORD(a2) && a2)
      {
        sub_271589604();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        *&v59 = sub_271589A38(0, &v55, a4);
        *(&v59 + 1) = v52;
      }

      else
      {
        v59 = *v63;
      }

      operator new();
    case 3:
      v65[0] = &unk_288110638;
      if (a2 <= 0x10)
      {
        v21 = 16;
      }

      else
      {
        v21 = a2;
      }

      v22 = v21 << 32;
      if (!HIDWORD(a2))
      {
        v22 = 0x1000000000;
      }

      if (a2)
      {
        ++v22;
      }

      *v63 = a2;
      *&v63[8] = v22;
      if (HIDWORD(a2) && a2)
      {
        sub_27158EE20();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        *&v59 = sub_27158F254(0, &v55, a4);
        *(&v59 + 1) = v51;
      }

      else
      {
        v59 = *v63;
      }

      operator new();
    case 4:
      v65[0] = &unk_288110498;
      if (a2 <= 8)
      {
        v40 = 8;
      }

      else
      {
        v40 = a2;
      }

      v41 = v40 << 32;
      if (!HIDWORD(a2))
      {
        v41 = 0x800000000;
      }

      if (a2)
      {
        ++v41;
      }

      *v63 = a2;
      *&v63[8] = v41;
      if (HIDWORD(a2) && a2)
      {
        sub_271594718();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        *&v59 = sub_271594B4C(0, &v55, a4);
        *(&v59 + 1) = v54;
      }

      else
      {
        v59 = *v63;
      }

      operator new();
    case 5:
      v62 = &unk_2881103A8;
      v25 = 2 * (a2 != 0);
      if ((v25 * a2) <= 0x20)
      {
        v26 = 32;
      }

      else
      {
        v26 = v25 * a2;
      }

      if (HIDWORD(a2))
      {
        v27 = v26;
      }

      else
      {
        v27 = 32;
      }

      *v63 = 2;
      *&v63[4] = a2;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v25 & 0x1FFFFFFFFLL | ((v27 >> 1) << 33);
      *&v63[12] = v65[0];
      *&v63[20] = v27;
      *&v63[24] = a2;
      v64 = *(v65 + 4);
      if (HIDWORD(a2) && a2)
      {
        sub_271583EF0();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        sub_271584324(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 30:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageBuffer.h", 980, "", 0, "The buffer does not support the given format", 0x2CuLL, sub_271852CA8, a4);
      abort();
    case 7:
      v62 = &unk_288110208;
      v42 = 2 * (a2 != 0);
      if ((v42 * a2) <= 0x10)
      {
        v43 = 16;
      }

      else
      {
        v43 = v42 * a2;
      }

      if (HIDWORD(a2))
      {
        v44 = v43;
      }

      else
      {
        v44 = 16;
      }

      *v63 = 2;
      *&v63[4] = a2;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v42 & 0x1FFFFFFFFLL | ((v44 >> 1) << 33);
      *&v63[12] = v65[0];
      *&v63[20] = v44;
      *&v63[24] = a2;
      v64 = *(v65 + 4);
      if (HIDWORD(a2) && a2)
      {
        sub_271590B90();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        sub_271590FC4(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 8:
      v62 = &unk_288110118;
      v31 = 2 * (a2 != 0);
      if ((v31 * a2) <= 8)
      {
        v32 = 8;
      }

      else
      {
        v32 = v31 * a2;
      }

      if (HIDWORD(a2))
      {
        v33 = v32;
      }

      else
      {
        v33 = 8;
      }

      *v63 = 2;
      *&v63[4] = a2;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v31 & 0x1FFFFFFFFLL | ((v33 >> 1) << 33);
      *&v63[12] = v65[0];
      *&v63[20] = v33;
      *&v63[24] = a2;
      v64 = *(v65 + 4);
      if (HIDWORD(a2) && a2)
      {
        sub_271596488();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        sub_2715968BC(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 17:
      v62 = &unk_288111A28;
      if (a2)
      {
        v28 = 3;
      }

      else
      {
        v28 = 0;
      }

      if ((v28 * a2) <= 0x20)
      {
        v29 = 32;
      }

      else
      {
        v29 = v28 * a2;
      }

      if (HIDWORD(a2))
      {
        v30 = v29;
      }

      else
      {
        v30 = 32;
      }

      *v63 = 3;
      *&v63[4] = a2;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v28 | (v30 << 32);
      *&v63[12] = v65[0];
      *&v63[20] = v30;
      *&v63[24] = a2;
      v64 = *(v65 + 4);
      if (HIDWORD(a2) && a2)
      {
        sub_2715859F4();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        sub_271585E28(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 21:
      v62 = &unk_288111638;
      if (a2)
      {
        v15 = 3;
      }

      else
      {
        v15 = 0;
      }

      if ((v15 * a2) <= 0x20)
      {
        v16 = 32;
      }

      else
      {
        v16 = v15 * a2;
      }

      if (HIDWORD(a2))
      {
        v17 = v16;
      }

      else
      {
        v17 = 32;
      }

      *v63 = 3;
      *&v63[4] = a2;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v15 | (v17 << 32);
      *&v63[12] = v65[0];
      *&v63[20] = v17;
      *&v63[24] = a2;
      v64 = *(v65 + 4);
      if (HIDWORD(a2) && a2)
      {
        sub_2715859F4();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        sub_271585E28(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 22:
      v62 = &unk_288111548;
      if (a2)
      {
        v45 = 3;
      }

      else
      {
        v45 = 0;
      }

      if ((v45 * a2) <= 0x10)
      {
        v46 = 16;
      }

      else
      {
        v46 = v45 * a2;
      }

      if (HIDWORD(a2))
      {
        v47 = v46;
      }

      else
      {
        v47 = 16;
      }

      *v63 = 3;
      *&v63[4] = a2;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v45 | (v47 << 32);
      *&v63[12] = v65[0];
      *&v63[20] = v47;
      *&v63[24] = a2;
      v64 = *(v65 + 4);
      if (HIDWORD(a2) && a2)
      {
        sub_27158B358();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        sub_27158B78C(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 25:
      v62 = &unk_2881112F8;
      v6 = 4 * (a2 != 0);
      if ((v6 * a2) <= 0x20)
      {
        v7 = 32;
      }

      else
      {
        v7 = v6 * a2;
      }

      if (HIDWORD(a2))
      {
        v8 = v7;
      }

      else
      {
        v8 = 32;
      }

      *v63 = 4;
      *&v63[4] = a2;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
      *&v63[12] = v65[0];
      *&v63[20] = v8;
      *&v63[24] = a2;
      v64 = *(v65 + 4);
      if (HIDWORD(a2) && a2)
      {
        sub_2715877A0();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        sub_271587BD4(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 29:
      v62 = &unk_288111018;
      v9 = 4 * (a2 != 0);
      if ((v9 * a2) <= 0x20)
      {
        v10 = 32;
      }

      else
      {
        v10 = v9 * a2;
      }

      if (HIDWORD(a2))
      {
        v11 = v10;
      }

      else
      {
        v11 = 32;
      }

      *v63 = 4;
      *&v63[4] = a2;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v9 & 0x3FFFFFFFFLL | ((v11 >> 2) << 34);
      *&v63[12] = v65[0];
      *&v63[20] = v11;
      *&v63[24] = a2;
      v64 = *(v65 + 4);
      if (HIDWORD(a2) && a2)
      {
        sub_2715877A0();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        sub_271587BD4(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 31:
      v62 = &unk_288110D88;
      v34 = 4 * (a2 != 0);
      if ((v34 * a2) <= 0x10)
      {
        v35 = 16;
      }

      else
      {
        v35 = v34 * a2;
      }

      if (HIDWORD(a2))
      {
        v36 = v35;
      }

      else
      {
        v36 = 16;
      }

      *v63 = 4;
      *&v63[4] = a2;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v34 & 0x3FFFFFFFFLL | ((v36 >> 2) << 34);
      *&v63[12] = v65[0];
      *&v63[20] = v36;
      *&v63[24] = a2;
      v64 = *(v65 + 4);
      if (HIDWORD(a2) && a2)
      {
        sub_271592954();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        sub_271592D88(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 32:
      v62 = &unk_288110C98;
      v48 = 4 * (a2 != 0);
      if ((v48 * a2) <= 8)
      {
        v49 = 8;
      }

      else
      {
        v49 = v48 * a2;
      }

      if (HIDWORD(a2))
      {
        v50 = v49;
      }

      else
      {
        v50 = 8;
      }

      *v63 = 4;
      *&v63[4] = a2;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v48 & 0x3FFFFFFFFLL | ((v50 >> 2) << 34);
      *&v63[12] = v65[0];
      *&v63[20] = v50;
      *&v63[24] = a2;
      v64 = *(v65 + 4);
      if (HIDWORD(a2) && a2)
      {
        sub_271598248();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        sub_27159867C(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 33:
      v62 = &unk_288110BC8;
      v18 = 4 * (a2 != 0);
      if ((v18 * a2) <= 0x20)
      {
        v19 = 32;
      }

      else
      {
        v19 = v18 * a2;
      }

      if (HIDWORD(a2))
      {
        v20 = v19;
      }

      else
      {
        v20 = 32;
      }

      *v63 = 4;
      *&v63[4] = a2;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v18 & 0x3FFFFFFFFLL | ((v20 >> 2) << 34);
      *&v63[12] = v65[0];
      *&v63[20] = v20;
      *&v63[24] = a2;
      v64 = *(v65 + 4);
      if (HIDWORD(a2) && a2)
      {
        sub_2715877A0();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        sub_271587BD4(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 37:
      v62 = &unk_2881108C8;
      v12 = 4 * (a2 != 0);
      if ((v12 * a2) <= 0x20)
      {
        v13 = 32;
      }

      else
      {
        v13 = v12 * a2;
      }

      if (HIDWORD(a2))
      {
        v14 = v13;
      }

      else
      {
        v14 = 32;
      }

      *v63 = 4;
      *&v63[4] = a2;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v12 & 0x3FFFFFFFFLL | ((v14 >> 2) << 34);
      *&v63[12] = v65[0];
      *&v63[20] = v14;
      *&v63[24] = a2;
      v64 = *(v65 + 4);
      if (HIDWORD(a2) && a2)
      {
        sub_2715877A0();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        sub_271587BD4(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 38:
      v62 = &unk_2881107D8;
      v37 = 4 * (a2 != 0);
      if ((v37 * a2) <= 0x10)
      {
        v38 = 16;
      }

      else
      {
        v38 = v37 * a2;
      }

      if (HIDWORD(a2))
      {
        v39 = v38;
      }

      else
      {
        v39 = 16;
      }

      *v63 = 4;
      *&v63[4] = a2;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v37 & 0x3FFFFFFFFLL | ((v39 >> 2) << 34);
      *&v63[12] = v65[0];
      *&v63[20] = v39;
      *&v63[24] = a2;
      v64 = *(v65 + 4);
      if (HIDWORD(a2) && a2)
      {
        sub_27158D080();
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a2 && HIDWORD(a2))
      {
        sub_27158D4B4(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8, a4);
      abort();
  }
}