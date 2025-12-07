void sub_255B2418C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF9318(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF9318(&a9);
  _Unwind_Resume(a1);
}

void sub_255B241C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF973C(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF973C(&a9);
  _Unwind_Resume(a1);
}

void sub_255B24238(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    sub_255C010CC(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4028;
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

uint64_t sub_255B244F4(uint64_t a1)
{
  *a1 = &unk_2867C46B8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B2456C(uint64_t a1, uint64_t a2)
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
          *&v20 = &unk_2867C4068;
          *(&v20 + 1) = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v20 + 1);
            v6 = v21;
          }

          v18[0] = &unk_2867C4068;
          v18[1] = v5;
          v19 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B148B4(a1, v18);
          v18[0] = &unk_2867C4068;
          v7 = v19;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v20 = &unk_2867C4068;
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
        sub_255A7C284();
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

void sub_255B247F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B24810(uint64_t a1, uint64_t a2)
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
          v21 = &unk_2867C4068;
          v22 = v6;
          v23 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v22;
            v7 = v23;
          }

          v19[0] = &unk_2867C4068;
          v19[1] = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B148B4(v24, v19);
          *a1 = *v24;
          v8 = v25;
          *(a1 + 8) = *&v24[8];
          *(a1 + 24) = v8;
          *(a1 + 40) = v26;
          v19[0] = &unk_2867C4068;
          v9 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v21 = &unk_2867C4068;
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
        sub_255A7C284();
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

  *v24 = 2;
  *&v24[4] = v13;
  v14 = 2 * (v13 != 0);
  LODWORD(v15) = v14 * v13;
  if (HIDWORD(v13))
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 & 0x1FFFFFFFFLL | ((v15 >> 1) << 33);
  v17 = __PAIR64__(*&v24[4], 2);
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

void sub_255B24AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B24AE4(uint64_t a1)
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

    v18 = &unk_2867C4048;
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

    v18 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v18 = &unk_2867C4048;
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
      sub_255B24810(v17, a1);
      sub_255B24810(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_255C00FD0(v19);
  goto LABEL_25;
}

void sub_255B24E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B24E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B24E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B24E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255B15318(v20);
  MEMORY[0x259C49320](v20, 0x10A3C4049419736);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B24EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B24EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B24ED8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4048;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4048;
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
    sub_255C00FD0(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4048;
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

void *sub_255B25194(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C46B8;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CFFE8[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

double sub_255B25230(uint64_t a1, uint64_t *lpsrc)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CA230, 0);
  if (!v5)
  {
    (*(v4 + 72))(v51, lpsrc, 7);
    v12 = *&v51[0];
    v14 = *(*&v51[0] + 16);
    v13 = *(*&v51[0] + 32);
    v34 = **&v51[0];
    v35 = v14;
    v36 = v13;
    *&v51[0] = 0;
    MEMORY[0x259C49320](v12, 0xC400A2AC0F1, v15, v16, v17, v18);
    sub_255B2456C(v51, a1);
    *&v40[0] = &v34;
    *(&v40[0] + 1) = v51;
    *&result = sub_255AF5898(v40);
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

    v42 = &unk_2867C4048;
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

    v42 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v42 = &unk_2867C4048;
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
        sub_255C00FD0(v43);
      }
    }
  }

  sub_255B24810(v40, v6);
  *&v34 = &unk_2867C4868;
  if (HIDWORD(v41) <= 0x10)
  {
    v28 = 16;
  }

  else
  {
    v28 = HIDWORD(v41);
  }

  LODWORD(v51[0]) = 2;
  DWORD1(v51[0]) = v41;
  v45 = *&v51[0];
  LODWORD(v51[0]) = 1;
  *(v51 + 4) = DWORD2(v41) | (v28 << 32);
  v47 = *&v51[0];
  v46 = DWORD1(v41);
  v48 = v28;
  v49 = v41;
  v50 = *(v51 + 4);
  sub_255B15018(&v34, &v45);
  v51[0] = v40[0];
  v51[1] = v40[1];
  v51[2] = v41;
  sub_255B15390(&v34, v51);
  *&v34 = &unk_2867C4868;
  sub_255BF9318(&v42);
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
    (off_2867CFFE8[v30])(v51, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_38;
  }

  *&v51[0] = a1 + 16;
  (off_2867D0018[v29])(v51);
LABEL_38:
  v31 = DWORD2(v36);
  result = *&v37;
  v32 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v32;
  *(a1 + 80) = v39;
  *&v34 = &unk_2867C46B8;
  if (v31 != -1)
  {
    (off_2867CFFE8[v31])(v51, &v35);
  }

  return result;
}

void sub_255B256E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B256FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B25710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B25724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B25774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B257B4(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    sub_255B2456C(&v8, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255B25920(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    sub_255B24810(&v8, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255B25A8C()
{
  if ((atomic_load_explicit(&qword_27F7DD220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD220))
  {
    sub_255B55218();
  }

  if (byte_27F7DD30F >= 0)
  {
    return &qword_27F7DD2F8;
  }

  else
  {
    return qword_27F7DD2F8;
  }
}

void sub_255B25B5C(uint64_t a1, int a2)
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

        v29 = &unk_2867C4028;
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

        v29 = &unk_2867C4028;
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

        v29 = &unk_2867C4028;
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
            sub_255C010CC(v30);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_255A7C284();
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

    v29 = &unk_2867C4048;
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

      v29 = &unk_2867C4048;
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

    v29 = &unk_2867C4048;
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
  sub_255C00FD0(v30);
  goto LABEL_57;
}

void sub_255B26274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF9318(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF9318(&a9);
  _Unwind_Resume(a1);
}

void sub_255B262B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF973C(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF973C(&a9);
  _Unwind_Resume(a1);
}

void sub_255B26320(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    sub_255C010CC(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4028;
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

uint64_t sub_255B265DC(uint64_t a1)
{
  *a1 = &unk_2867C4508;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B26654(uint64_t a1, uint64_t a2)
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
          *&v20 = &unk_2867C4068;
          *(&v20 + 1) = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v20 + 1);
            v6 = v21;
          }

          v18[0] = &unk_2867C4068;
          v18[1] = v5;
          v19 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B17C84(a1, v18);
          v18[0] = &unk_2867C4068;
          v7 = v19;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v20 = &unk_2867C4068;
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
        sub_255A7C284();
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

void sub_255B268DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B268F8(uint64_t a1, uint64_t a2)
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
          v21 = &unk_2867C4068;
          v22 = v6;
          v23 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v22;
            v7 = v23;
          }

          v19[0] = &unk_2867C4068;
          v19[1] = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B17C84(v24, v19);
          *a1 = *v24;
          v8 = v25;
          *(a1 + 8) = *&v24[8];
          *(a1 + 24) = v8;
          *(a1 + 40) = v26;
          v19[0] = &unk_2867C4068;
          v9 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v21 = &unk_2867C4068;
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
        sub_255A7C284();
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

  *v24 = 2;
  *&v24[4] = v13;
  v14 = 2 * (v13 != 0);
  LODWORD(v15) = v14 * v13;
  if (HIDWORD(v13))
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 & 0x1FFFFFFFFLL | ((v15 >> 1) << 33);
  v17 = __PAIR64__(*&v24[4], 2);
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

void sub_255B26B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B26BCC(uint64_t a1)
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

    v18 = &unk_2867C4048;
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

    v18 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v18 = &unk_2867C4048;
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
      sub_255B268F8(v17, a1);
      sub_255B268F8(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_255C00FD0(v19);
  goto LABEL_25;
}

void sub_255B26F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B26F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B26F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B26F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255B186E8(v20);
  MEMORY[0x259C49320](v20, 0x10A3C4049419736);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B26F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B26FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B26FC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4048;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4048;
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
    sub_255C00FD0(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4048;
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

void *sub_255B2727C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C4508;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CFFE8[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

double sub_255B27318(uint64_t a1, uint64_t *lpsrc)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CA218, 0);
  if (!v5)
  {
    (*(v4 + 72))(v51, lpsrc, 8);
    v12 = *&v51[0];
    v14 = *(*&v51[0] + 16);
    v13 = *(*&v51[0] + 32);
    v34 = **&v51[0];
    v35 = v14;
    v36 = v13;
    *&v51[0] = 0;
    MEMORY[0x259C49320](v12, 0xC400A2AC0F1, v15, v16, v17, v18);
    sub_255B26654(v51, a1);
    *&result = sub_255AF7C3C(&v34, v51);
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

    v42 = &unk_2867C4048;
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

    v42 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v42 = &unk_2867C4048;
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
        sub_255C00FD0(v43);
      }
    }
  }

  sub_255B268F8(v40, v6);
  *&v34 = &unk_2867C47D8;
  if (HIDWORD(v41) <= 8)
  {
    v28 = 8;
  }

  else
  {
    v28 = HIDWORD(v41);
  }

  LODWORD(v51[0]) = 2;
  DWORD1(v51[0]) = v41;
  v45 = *&v51[0];
  LODWORD(v51[0]) = 1;
  *(v51 + 4) = DWORD2(v41) | (v28 << 32);
  v47 = *&v51[0];
  v46 = DWORD1(v41);
  v48 = v28;
  v49 = v41;
  v50 = *(v51 + 4);
  sub_255B183E8(&v34, &v45);
  v51[0] = v40[0];
  v51[1] = v40[1];
  v51[2] = v41;
  sub_255B18760(&v34, v51);
  *&v34 = &unk_2867C47D8;
  sub_255BF9318(&v42);
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
    (off_2867CFFE8[v30])(v51, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_38;
  }

  *&v51[0] = a1 + 16;
  (off_2867D0018[v29])(v51);
LABEL_38:
  v31 = DWORD2(v36);
  result = *&v37;
  v32 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v32;
  *(a1 + 80) = v39;
  *&v34 = &unk_2867C4508;
  if (v31 != -1)
  {
    (off_2867CFFE8[v31])(v51, &v35);
  }

  return result;
}

void sub_255B277C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B277DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B277F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B27804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B27854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B27894(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    sub_255B26654(&v8, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255B27A00(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    sub_255B268F8(&v8, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255B27B6C()
{
  if ((atomic_load_explicit(&qword_27F7DD228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD228))
  {
    sub_255B5531C();
  }

  if (byte_27F7DD327 >= 0)
  {
    return &qword_27F7DD310;
  }

  else
  {
    return qword_27F7DD310;
  }
}

void sub_255B27C3C(uint64_t a1, int a2)
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

        v29 = &unk_2867C4028;
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

        v29 = &unk_2867C4028;
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

        v29 = &unk_2867C4028;
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
            sub_255C010CC(v30);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_255A7C284();
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

    v29 = &unk_2867C4048;
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

      v29 = &unk_2867C4048;
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

    v29 = &unk_2867C4048;
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
  sub_255C00FD0(v30);
  goto LABEL_57;
}

void sub_255B28354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF9318(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF9318(&a9);
  _Unwind_Resume(a1);
}

void sub_255B28390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF973C(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF973C(&a9);
  _Unwind_Resume(a1);
}

void sub_255B28400(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    sub_255C010CC(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4028;
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

uint64_t sub_255B286BC(uint64_t a1)
{
  *a1 = &unk_2867C42C8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B28734(uint64_t a1, uint64_t a2)
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
          v13 = &unk_2867C4068;
          v14 = v5;
          v15 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v14;
            v6 = v15;
          }

          v11[0] = &unk_2867C4068;
          v11[1] = v5;
          v12 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B0CEF8(a1, v11);
          v11[0] = &unk_2867C4068;
          v7 = v12;
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v13 = &unk_2867C4068;
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
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_255AF2EE8(a1, 0, (a2 + 72));
}

void sub_255B28944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BFA730(&a9);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B28960(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_22;
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
          v18 = &unk_2867C4068;
          v19 = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v19;
            v7 = v20;
          }

          v12[0] = &unk_2867C4068;
          v12[1] = v6;
          v13 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B0CEF8(&v14, v12);
          *a1 = v14;
          v8 = v16;
          *(a1 + 8) = v15;
          *(a1 + 24) = v8;
          *(a1 + 40) = v17;
          v12[0] = &unk_2867C4068;
          v9 = v13;
          if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v18 = &unk_2867C4068;
          v10 = v20;
          if (v20)
          {
            if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }

          return;
        }

LABEL_22:
        sub_255A7C284();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_255AF2EE8(a1, 0, (a2 + 72));
}

void sub_255B28B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255BFA730(&a9);
  sub_255BFA730((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_255B28BC0(uint64_t a1)
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

    v18 = &unk_2867C4048;
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

    v18 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v18 = &unk_2867C4048;
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
      sub_255B28960(v17, a1);
      sub_255B28960(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_255C00FD0(v19);
  goto LABEL_25;
}

void sub_255B28F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B28F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B28F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B28F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255B0DB14(v21);
  MEMORY[0x259C49320](v21, 0x10A3C4049419736);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B28FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B28FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B28FCC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4048;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4048;
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
    sub_255C00FD0(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4048;
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

void *sub_255B29288(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C42C8;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CFFE8[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

double sub_255B29324(uint64_t a1, uint64_t *lpsrc)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CA398, 0);
  if (!v5)
  {
    (*(v4 + 72))(v54, lpsrc, 17);
    v12 = *&v54[0];
    v14 = *(*&v54[0] + 16);
    v13 = *(*&v54[0] + 32);
    v34 = **&v54[0];
    v35 = v14;
    v36 = v13;
    *&v54[0] = 0;
    MEMORY[0x259C49320](v12, 0xC400A2AC0F1, v15, v16, v17, v18);
    sub_255B28734(v54, a1);
    sub_255AF2C3C(&v34, v54);
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

    v42 = &unk_2867C4048;
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

    v42 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v42 = &unk_2867C4048;
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
        sub_255C00FD0(v43);
      }
    }
  }

  sub_255B28960(v40, v6);
  v45 = v40[0];
  v46 = v40[1];
  v47 = v41;
  *&v34 = &unk_2867C50D8;
  if (HIDWORD(v41) <= 0x20)
  {
    v28 = 32;
  }

  else
  {
    v28 = HIDWORD(v41);
  }

  LODWORD(v54[0]) = 3;
  DWORD1(v54[0]) = v41;
  v48 = *&v54[0];
  LODWORD(v54[0]) = 1;
  *(v54 + 4) = DWORD2(v41) | (v28 << 32);
  v50 = *&v54[0];
  v49 = DWORD1(v41);
  v51 = v28;
  v52 = v41;
  v53 = *(v54 + 4);
  sub_255B0D4F4(&v34, 17, &v48);
  v54[0] = v45;
  v54[1] = v46;
  v54[2] = v47;
  sub_255B0DB8C(&v34, v54);
  *&v34 = &unk_2867C50D8;
  sub_255BF9318(&v42);
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
    (off_2867CFFE8[v30])(v54, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_38;
  }

  *&v54[0] = a1 + 16;
  (off_2867D0018[v29])(v54);
LABEL_38:
  v31 = DWORD2(v36);
  result = *&v37;
  v32 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v32;
  *(a1 + 80) = v39;
  *&v34 = &unk_2867C42C8;
  if (v31 != -1)
  {
    (off_2867CFFE8[v31])(v54, &v35);
  }

  return result;
}

void sub_255B297EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B29800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B29814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B29828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B29878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B298B8(uint64_t a1, int a2)
{
  if (a2 == 17)
  {
LABEL_10:
    sub_255B28734(&v8, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255B29A24(uint64_t a1, int a2)
{
  if (a2 == 17)
  {
LABEL_10:
    sub_255B28960(&v8, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255B29B90()
{
  if ((atomic_load_explicit(&qword_27F7DD230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD230))
  {
    sub_255B55420();
  }

  if (byte_27F7DD33F >= 0)
  {
    return &qword_27F7DD328;
  }

  else
  {
    return qword_27F7DD328;
  }
}

void sub_255B29C60(uint64_t a1, int a2)
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

        v29 = &unk_2867C4028;
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

        v29 = &unk_2867C4028;
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

        v29 = &unk_2867C4028;
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
            sub_255C010CC(v30);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_255A7C284();
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

    v29 = &unk_2867C4048;
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

      v29 = &unk_2867C4048;
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

    v29 = &unk_2867C4048;
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
  sub_255C00FD0(v30);
  goto LABEL_57;
}

void sub_255B2A378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF9318(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF9318(&a9);
  _Unwind_Resume(a1);
}

void sub_255B2A3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF973C(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF973C(&a9);
  _Unwind_Resume(a1);
}

void sub_255B2A424(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    sub_255C010CC(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4028;
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

uint64_t sub_255B2A6E0(uint64_t a1)
{
  *a1 = &unk_2867C42C8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B2A758(uint64_t a1, uint64_t a2)
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
          v13 = &unk_2867C4068;
          v14 = v5;
          v15 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v14;
            v6 = v15;
          }

          v11[0] = &unk_2867C4068;
          v11[1] = v5;
          v12 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B0CEF8(a1, v11);
          v11[0] = &unk_2867C4068;
          v7 = v12;
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v13 = &unk_2867C4068;
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
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_255AF2EE8(a1, 0, (a2 + 72));
}

void sub_255B2A968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BFA730(&a9);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B2A984(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_22;
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
          v18 = &unk_2867C4068;
          v19 = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v19;
            v7 = v20;
          }

          v12[0] = &unk_2867C4068;
          v12[1] = v6;
          v13 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B0CEF8(&v14, v12);
          *a1 = v14;
          v8 = v16;
          *(a1 + 8) = v15;
          *(a1 + 24) = v8;
          *(a1 + 40) = v17;
          v12[0] = &unk_2867C4068;
          v9 = v13;
          if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v18 = &unk_2867C4068;
          v10 = v20;
          if (v20)
          {
            if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }

          return;
        }

LABEL_22:
        sub_255A7C284();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_255AF2EE8(a1, 0, (a2 + 72));
}

void sub_255B2ABB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255BFA730(&a9);
  sub_255BFA730((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_255B2ABE4(uint64_t a1)
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

    v18 = &unk_2867C4048;
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

    v18 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v18 = &unk_2867C4048;
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
      sub_255B2A984(v17, a1);
      sub_255B2A984(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_255C00FD0(v19);
  goto LABEL_25;
}

void sub_255B2AF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2AF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2AF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2AF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255B0DB14(v21);
  MEMORY[0x259C49320](v21, 0x10A3C4049419736);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B2AFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B2AFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B2AFF0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4048;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4048;
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
    sub_255C00FD0(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4048;
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

void *sub_255B2B2AC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C42C8;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CFFE8[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

double sub_255B2B348(uint64_t a1, uint64_t *lpsrc)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CA368, 0);
  if (!v5)
  {
    (*(v4 + 72))(v54, lpsrc, 21);
    v12 = *&v54[0];
    v14 = *(*&v54[0] + 16);
    v13 = *(*&v54[0] + 32);
    v34 = **&v54[0];
    v35 = v14;
    v36 = v13;
    *&v54[0] = 0;
    MEMORY[0x259C49320](v12, 0xC400A2AC0F1, v15, v16, v17, v18);
    sub_255B2A758(v54, a1);
    sub_255AF2C3C(&v34, v54);
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

    v42 = &unk_2867C4048;
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

    v42 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v42 = &unk_2867C4048;
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
        sub_255C00FD0(v43);
      }
    }
  }

  sub_255B2A984(v40, v6);
  v45 = v40[0];
  v46 = v40[1];
  v47 = v41;
  *&v34 = &unk_2867C4FB8;
  if (HIDWORD(v41) <= 0x20)
  {
    v28 = 32;
  }

  else
  {
    v28 = HIDWORD(v41);
  }

  LODWORD(v54[0]) = 3;
  DWORD1(v54[0]) = v41;
  v48 = *&v54[0];
  LODWORD(v54[0]) = 1;
  *(v54 + 4) = DWORD2(v41) | (v28 << 32);
  v50 = *&v54[0];
  v49 = DWORD1(v41);
  v51 = v28;
  v52 = v41;
  v53 = *(v54 + 4);
  sub_255B0D4F4(&v34, 21, &v48);
  v54[0] = v45;
  v54[1] = v46;
  v54[2] = v47;
  sub_255B0DB8C(&v34, v54);
  *&v34 = &unk_2867C4FB8;
  sub_255BF9318(&v42);
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
    (off_2867CFFE8[v30])(v54, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_38;
  }

  *&v54[0] = a1 + 16;
  (off_2867D0018[v29])(v54);
LABEL_38:
  v31 = DWORD2(v36);
  result = *&v37;
  v32 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v32;
  *(a1 + 80) = v39;
  *&v34 = &unk_2867C42C8;
  if (v31 != -1)
  {
    (off_2867CFFE8[v31])(v54, &v35);
  }

  return result;
}

void sub_255B2B810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2B824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2B838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2B84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B2B89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B2B8DC(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    sub_255B2A758(&v8, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255B2BA48(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    sub_255B2A984(&v8, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255B2BBB4()
{
  if ((atomic_load_explicit(&qword_27F7DD238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD238))
  {
    sub_255B55640();
  }

  if (byte_27F7DD357 >= 0)
  {
    return &qword_27F7DD340;
  }

  else
  {
    return qword_27F7DD340;
  }
}

void sub_255B2BC84(uint64_t a1, int a2)
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

        v29 = &unk_2867C4028;
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

        v29 = &unk_2867C4028;
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

        v29 = &unk_2867C4028;
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
            sub_255C010CC(v30);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_255A7C284();
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

    v29 = &unk_2867C4048;
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

      v29 = &unk_2867C4048;
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

    v29 = &unk_2867C4048;
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
  sub_255C00FD0(v30);
  goto LABEL_57;
}

void sub_255B2C39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF9318(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF9318(&a9);
  _Unwind_Resume(a1);
}

void sub_255B2C3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF973C(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF973C(&a9);
  _Unwind_Resume(a1);
}

void sub_255B2C448(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    sub_255C010CC(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4028;
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

uint64_t sub_255B2C704(uint64_t a1)
{
  *a1 = &unk_2867C4118;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B2C77C(uint64_t a1, uint64_t a2)
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
          v13 = &unk_2867C4068;
          v14 = v5;
          v15 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v14;
            v6 = v15;
          }

          v11[0] = &unk_2867C4068;
          v11[1] = v5;
          v12 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B11584(a1, v11);
          v11[0] = &unk_2867C4068;
          v7 = v12;
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v13 = &unk_2867C4068;
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
        sub_255A7C284();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_255AF2EE8(a1, 0, (a2 + 72));
}

void sub_255B2C98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BFA730(&a9);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255B2C9A8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_22;
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
          v18 = &unk_2867C4068;
          v19 = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v19;
            v7 = v20;
          }

          v12[0] = &unk_2867C4068;
          v12[1] = v6;
          v13 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B11584(&v14, v12);
          *a1 = v14;
          v8 = v16;
          *(a1 + 8) = v15;
          *(a1 + 24) = v8;
          *(a1 + 40) = v17;
          v12[0] = &unk_2867C4068;
          v9 = v13;
          if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v18 = &unk_2867C4068;
          v10 = v20;
          if (v20)
          {
            if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }

          return;
        }

LABEL_22:
        sub_255A7C284();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_255AF2EE8(a1, 0, (a2 + 72));
}

void sub_255B2CBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255BFA730(&a9);
  sub_255BFA730((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_255B2CC08(uint64_t a1)
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

    v18 = &unk_2867C4048;
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

    v18 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v18 = &unk_2867C4048;
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
      sub_255B2C9A8(v17, a1);
      sub_255B2C9A8(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_255C00FD0(v19);
  goto LABEL_25;
}

void sub_255B2CF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2CF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2CF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2CFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255B11FD8(v21);
  MEMORY[0x259C49320](v21, 0x10A3C4049419736);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B2CFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B2CFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B2D010(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4048;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4048;
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
    sub_255C00FD0(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4048;
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

void *sub_255B2D2CC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C4118;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CFFE8[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

double sub_255B2D368(uint64_t a1, uint64_t *lpsrc)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CA350, 0);
  if (!v5)
  {
    (*(v4 + 72))(v54, lpsrc, 22);
    v12 = *&v54[0];
    v14 = *(*&v54[0] + 16);
    v13 = *(*&v54[0] + 32);
    v34 = **&v54[0];
    v35 = v14;
    v36 = v13;
    *&v54[0] = 0;
    MEMORY[0x259C49320](v12, 0xC400A2AC0F1, v15, v16, v17, v18);
    sub_255B2C77C(v54, a1);
    sub_255AF42D4(&v34, v54);
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

    v42 = &unk_2867C4048;
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

    v42 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v42 = &unk_2867C4048;
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
        sub_255C00FD0(v43);
      }
    }
  }

  sub_255B2C9A8(v40, v6);
  v45 = v40[0];
  v46 = v40[1];
  v47 = v41;
  *&v34 = &unk_2867C4F28;
  if (HIDWORD(v41) <= 0x10)
  {
    v28 = 16;
  }

  else
  {
    v28 = HIDWORD(v41);
  }

  LODWORD(v54[0]) = 3;
  DWORD1(v54[0]) = v41;
  v48 = *&v54[0];
  LODWORD(v54[0]) = 1;
  *(v54 + 4) = DWORD2(v41) | (v28 << 32);
  v50 = *&v54[0];
  v49 = DWORD1(v41);
  v51 = v28;
  v52 = v41;
  v53 = *(v54 + 4);
  sub_255B11CD8(&v34, &v48);
  v54[0] = v45;
  v54[1] = v46;
  v54[2] = v47;
  sub_255B12050(&v34, v54);
  *&v34 = &unk_2867C4F28;
  sub_255BF9318(&v42);
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
    (off_2867CFFE8[v30])(v54, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_38;
  }

  *&v54[0] = a1 + 16;
  (off_2867D0018[v29])(v54);
LABEL_38:
  v31 = DWORD2(v36);
  result = *&v37;
  v32 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v32;
  *(a1 + 80) = v39;
  *&v34 = &unk_2867C4118;
  if (v31 != -1)
  {
    (off_2867CFFE8[v31])(v54, &v35);
  }

  return result;
}

void sub_255B2D82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2D840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2D854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2D868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B2D8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B2D8F8(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    sub_255B2C77C(&v8, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255B2DA64(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    sub_255B2C9A8(&v8, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255B2DBD0()
{
  if ((atomic_load_explicit(&qword_27F7DD240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD240))
  {
    sub_255B55744();
  }

  if (byte_27F7DD36F >= 0)
  {
    return &qword_27F7DD358;
  }

  else
  {
    return qword_27F7DD358;
  }
}

void sub_255B2DCA0(uint64_t a1, int a2)
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

        v29 = &unk_2867C4028;
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

        v29 = &unk_2867C4028;
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

        v29 = &unk_2867C4028;
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
            sub_255C010CC(v30);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_255A7C284();
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

    v29 = &unk_2867C4048;
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

      v29 = &unk_2867C4048;
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

    v29 = &unk_2867C4048;
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
  sub_255C00FD0(v30);
  goto LABEL_57;
}

void sub_255B2E3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF9318(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF9318(&a9);
  _Unwind_Resume(a1);
}

void sub_255B2E3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF973C(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF973C(&a9);
  _Unwind_Resume(a1);
}

void sub_255B2E464(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    sub_255C010CC(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4028;
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

uint64_t sub_255B2E720(uint64_t a1)
{
  *a1 = &unk_2867C4238;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B2E798(uint64_t a1, uint64_t a2)
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
          *&v20 = &unk_2867C4068;
          *(&v20 + 1) = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v20 + 1);
            v6 = v21;
          }

          v18[0] = &unk_2867C4068;
          v18[1] = v5;
          v19 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B0E948(a1, v18);
          v18[0] = &unk_2867C4068;
          v7 = v19;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v20 = &unk_2867C4068;
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
        sub_255A7C284();
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

void sub_255B2EA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B2EA3C(uint64_t a1, uint64_t a2)
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
          v21 = &unk_2867C4068;
          v22 = v6;
          v23 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v22;
            v7 = v23;
          }

          v19[0] = &unk_2867C4068;
          v19[1] = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B0E948(v24, v19);
          *a1 = *v24;
          v8 = v25;
          *(a1 + 8) = *&v24[8];
          *(a1 + 24) = v8;
          *(a1 + 40) = v26;
          v19[0] = &unk_2867C4068;
          v9 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v21 = &unk_2867C4068;
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
        sub_255A7C284();
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

void sub_255B2ECE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B2ED10(uint64_t a1)
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

    v18 = &unk_2867C4048;
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

    v18 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v18 = &unk_2867C4048;
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
      sub_255B2EA3C(v17, a1);
      sub_255B2EA3C(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_255C00FD0(v19);
  goto LABEL_25;
}

void sub_255B2F068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2F07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2F090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2F0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255B0F5AC(v20);
  MEMORY[0x259C49320](v20, 0x10A3C4049419736);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B2F0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B2F0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B2F108(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4048;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4048;
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
    sub_255C00FD0(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4048;
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

void *sub_255B2F3C4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C4238;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CFFE8[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

double sub_255B2F460(uint64_t a1, uint64_t *lpsrc)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CA338, 0);
  if (!v5)
  {
    (*(v4 + 72))(v51, lpsrc, 25);
    v12 = *&v51[0];
    v14 = *(*&v51[0] + 16);
    v13 = *(*&v51[0] + 32);
    v34 = **&v51[0];
    v35 = v14;
    v36 = v13;
    *&v51[0] = 0;
    MEMORY[0x259C49320](v12, 0xC400A2AC0F1, v15, v16, v17, v18);
    sub_255B2E798(v51, a1);
    sub_255AF328C(&v34, v51);
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

    v42 = &unk_2867C4048;
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

    v42 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v42 = &unk_2867C4048;
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
        sub_255C00FD0(v43);
      }
    }
  }

  sub_255B2EA3C(v40, v6);
  *&v34 = &unk_2867C4E98;
  if (HIDWORD(v41) <= 0x20)
  {
    v28 = 32;
  }

  else
  {
    v28 = HIDWORD(v41);
  }

  LODWORD(v51[0]) = 4;
  DWORD1(v51[0]) = v41;
  v45 = *&v51[0];
  LODWORD(v51[0]) = 1;
  *(v51 + 4) = DWORD2(v41) | (v28 << 32);
  v47 = *&v51[0];
  v46 = DWORD1(v41);
  v48 = v28;
  v49 = v41;
  v50 = *(v51 + 4);
  sub_255B0EF44(&v34, 25, &v45);
  v51[0] = v40[0];
  v51[1] = v40[1];
  v51[2] = v41;
  sub_255B0F624(&v34, v51);
  *&v34 = &unk_2867C4E98;
  sub_255BF9318(&v42);
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
    (off_2867CFFE8[v30])(v51, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_38;
  }

  *&v51[0] = a1 + 16;
  (off_2867D0018[v29])(v51);
LABEL_38:
  v31 = DWORD2(v36);
  result = *&v37;
  v32 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v32;
  *(a1 + 80) = v39;
  *&v34 = &unk_2867C4238;
  if (v31 != -1)
  {
    (off_2867CFFE8[v31])(v51, &v35);
  }

  return result;
}

void sub_255B2F914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2F928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2F93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B2F950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B2F9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B2F9E0(uint64_t a1, int a2)
{
  if (a2 == 25)
  {
LABEL_10:
    sub_255B2E798(&v8, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255B2FB4C(uint64_t a1, int a2)
{
  if (a2 == 25)
  {
LABEL_10:
    sub_255B2EA3C(&v8, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255B2FCB8()
{
  if ((atomic_load_explicit(&qword_27F7DD248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD248))
  {
    sub_255B55848();
  }

  if (byte_27F7DD387 >= 0)
  {
    return &qword_27F7DD370;
  }

  else
  {
    return qword_27F7DD370;
  }
}

void sub_255B2FD88(uint64_t a1, int a2)
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

        v29 = &unk_2867C4028;
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

        v29 = &unk_2867C4028;
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

        v29 = &unk_2867C4028;
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
            sub_255C010CC(v30);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_255A7C284();
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

    v29 = &unk_2867C4048;
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

      v29 = &unk_2867C4048;
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

    v29 = &unk_2867C4048;
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
  sub_255C00FD0(v30);
  goto LABEL_57;
}

void sub_255B304A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF9318(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF9318(&a9);
  _Unwind_Resume(a1);
}

void sub_255B304DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF973C(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF973C(&a9);
  _Unwind_Resume(a1);
}

void sub_255B3054C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    sub_255C010CC(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4028;
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

uint64_t sub_255B30808(uint64_t a1)
{
  *a1 = &unk_2867C4238;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B30880(uint64_t a1, uint64_t a2)
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
          *&v20 = &unk_2867C4068;
          *(&v20 + 1) = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v20 + 1);
            v6 = v21;
          }

          v18[0] = &unk_2867C4068;
          v18[1] = v5;
          v19 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B0E948(a1, v18);
          v18[0] = &unk_2867C4068;
          v7 = v19;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v20 = &unk_2867C4068;
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
        sub_255A7C284();
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

void sub_255B30B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B30B24(uint64_t a1, uint64_t a2)
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
          v21 = &unk_2867C4068;
          v22 = v6;
          v23 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v22;
            v7 = v23;
          }

          v19[0] = &unk_2867C4068;
          v19[1] = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B0E948(v24, v19);
          *a1 = *v24;
          v8 = v25;
          *(a1 + 8) = *&v24[8];
          *(a1 + 24) = v8;
          *(a1 + 40) = v26;
          v19[0] = &unk_2867C4068;
          v9 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v21 = &unk_2867C4068;
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
        sub_255A7C284();
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

void sub_255B30DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B30DF8(uint64_t a1)
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

    v18 = &unk_2867C4048;
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

    v18 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v18 = &unk_2867C4048;
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
      sub_255B30B24(v17, a1);
      sub_255B30B24(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_255C00FD0(v19);
  goto LABEL_25;
}

void sub_255B31150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B31164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B31178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B3118C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255B0F5AC(v20);
  MEMORY[0x259C49320](v20, 0x10A3C4049419736);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B311C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B311DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B311F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4048;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4048;
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
    sub_255C00FD0(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4048;
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

void *sub_255B314AC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2867C4238;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2867CFFE8[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x259C49320](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

double sub_255B31548(uint64_t a1, uint64_t *lpsrc)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CA320, 0);
  if (!v5)
  {
    (*(v4 + 72))(v51, lpsrc, 29);
    v12 = *&v51[0];
    v14 = *(*&v51[0] + 16);
    v13 = *(*&v51[0] + 32);
    v34 = **&v51[0];
    v35 = v14;
    v36 = v13;
    *&v51[0] = 0;
    MEMORY[0x259C49320](v12, 0xC400A2AC0F1, v15, v16, v17, v18);
    sub_255B30880(v51, a1);
    sub_255AF328C(&v34, v51);
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

    v42 = &unk_2867C4048;
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

    v42 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v42 = &unk_2867C4048;
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
        sub_255C00FD0(v43);
      }
    }
  }

  sub_255B30B24(v40, v6);
  *&v34 = &unk_2867C4E08;
  if (HIDWORD(v41) <= 0x20)
  {
    v28 = 32;
  }

  else
  {
    v28 = HIDWORD(v41);
  }

  LODWORD(v51[0]) = 4;
  DWORD1(v51[0]) = v41;
  v45 = *&v51[0];
  LODWORD(v51[0]) = 1;
  *(v51 + 4) = DWORD2(v41) | (v28 << 32);
  v47 = *&v51[0];
  v46 = DWORD1(v41);
  v48 = v28;
  v49 = v41;
  v50 = *(v51 + 4);
  sub_255B0EF44(&v34, 29, &v45);
  v51[0] = v40[0];
  v51[1] = v40[1];
  v51[2] = v41;
  sub_255B0F624(&v34, v51);
  *&v34 = &unk_2867C4E08;
  sub_255BF9318(&v42);
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
    (off_2867CFFE8[v30])(v51, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_38;
  }

  *&v51[0] = a1 + 16;
  (off_2867D0018[v29])(v51);
LABEL_38:
  v31 = DWORD2(v36);
  result = *&v37;
  v32 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v32;
  *(a1 + 80) = v39;
  *&v34 = &unk_2867C4238;
  if (v31 != -1)
  {
    (off_2867CFFE8[v31])(v51, &v35);
  }

  return result;
}

void sub_255B319FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B31A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B31A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9188(va);
  _Unwind_Resume(a1);
}

void sub_255B31A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B31A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_255BF9318(va);
  _Unwind_Resume(a1);
}

void sub_255B31AC8(uint64_t a1, int a2)
{
  if (a2 == 29)
  {
LABEL_10:
    sub_255B30880(&v8, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_255B31C34(uint64_t a1, int a2)
{
  if (a2 == 29)
  {
LABEL_10:
    sub_255B30B24(&v8, a1);
    operator new();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if (byte_27F7DD630)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_255B31DA0()
{
  if ((atomic_load_explicit(&qword_27F7DD250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD250))
  {
    sub_255B5594C();
  }

  if (byte_27F7DD39F >= 0)
  {
    return &qword_27F7DD388;
  }

  else
  {
    return qword_27F7DD388;
  }
}

void sub_255B31E70(uint64_t a1, int a2)
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

        v29 = &unk_2867C4028;
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

        v29 = &unk_2867C4028;
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

        v29 = &unk_2867C4028;
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
            sub_255C010CC(v30);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_255A7C284();
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

    v29 = &unk_2867C4048;
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

      v29 = &unk_2867C4048;
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

    v29 = &unk_2867C4048;
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
  sub_255C00FD0(v30);
  goto LABEL_57;
}

void sub_255B32588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF9318(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF9318(&a9);
  _Unwind_Resume(a1);
}

void sub_255B325C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255BF9188(v12);
  sub_255BF973C(va);
  MEMORY[0x259C49320](v11, 0xA1C40711E6FFCLL);
  sub_255BF973C(&a9);
  _Unwind_Resume(a1);
}

void sub_255B32634(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_2867C4068;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    *a2 = &unk_2867C4068;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_2867C4028;
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
    sub_255C010CC(a2[1]);
    return;
  }

  if (v3)
  {
    sub_255A7C284();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_2867C4068;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_2867C4028;
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

uint64_t sub_255B328F0(uint64_t a1)
{
  *a1 = &unk_2867C4628;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CFFE8[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_255B32968(uint64_t a1, uint64_t a2)
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
          *&v20 = &unk_2867C4068;
          *(&v20 + 1) = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v20 + 1);
            v6 = v21;
          }

          v18[0] = &unk_2867C4068;
          v18[1] = v5;
          v19 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B15A00(a1, v18);
          v18[0] = &unk_2867C4068;
          v7 = v19;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v20 = &unk_2867C4068;
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
        sub_255A7C284();
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

void sub_255B32BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B32C0C(uint64_t a1, uint64_t a2)
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
          v21 = &unk_2867C4068;
          v22 = v6;
          v23 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v22;
            v7 = v23;
          }

          v19[0] = &unk_2867C4068;
          v19[1] = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_255B15A00(v24, v19);
          *a1 = *v24;
          v8 = v25;
          *(a1 + 8) = *&v24[8];
          *(a1 + 24) = v8;
          *(a1 + 40) = v26;
          v19[0] = &unk_2867C4068;
          v9 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v21 = &unk_2867C4068;
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
        sub_255A7C284();
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

void sub_255B32EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_255BFA730(va);
  sub_255BFA730(va1);
  _Unwind_Resume(a1);
}

void sub_255B32EE0(uint64_t a1)
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

    v18 = &unk_2867C4048;
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

    v18 = &unk_2867C4048;
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
      sub_255A7C284();
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

    v18 = &unk_2867C4048;
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
      sub_255B32C0C(v17, a1);
      sub_255B32C0C(&v16, a1);
      operator new();
    }
  }

LABEL_24:
  sub_255C00FD0(v19);
  goto LABEL_25;
}