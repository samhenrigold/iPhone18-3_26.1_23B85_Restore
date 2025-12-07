void sub_2713324D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(v5);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_2713324FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271332518(uint64_t result)
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

void sub_2713325A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 2, (a1 + 5), 2, 2);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 2;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_2713326F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271332704(uint64_t *a1, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  v3 = *a2 != 0;
  if (a2[1])
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  v4 = *a2;
  v5[8] = &unk_288110F48;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_271560C74(v5, v6);
  operator new();
}

void sub_271332874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27154DEC8(va);
  _Unwind_Resume(a1);
}

void sub_271332888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271332940(uint64_t a1)
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

void sub_2713329D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      v13 = v3;
      v14 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      v13 = *(a2 + 8);
      v14 = 0;
    }

    (*(*v3 + 72))(&v18);
    v12 = v18[2];
    v16 = *v18;
    v17 = v12;
    v18 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v18 = *(&v16 + 1);
    v15 = 0;
    sub_271332704(&v13, &v18);
  }

  if (*(a2 + 48) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 32);
  v18 = &unk_288110F48;
  v11 = 0x100000000;
  if (v10 > 0x100000000)
  {
    v11 = v10;
  }

  v13 = v10;
  v14 = (v10 != 0) | (v11 << 32);
  sub_271560C74(&v16, &v13);
  operator new();
}

void sub_2713330D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(v11);
  sub_2711FF85C(va);
  _Unwind_Resume(a1);
}

void sub_2713330F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  sub_27112F828(v5);
  sub_27112F828(va2);
  sub_27112F828(va);
  sub_2711FF85C(va1);
  _Unwind_Resume(a1);
}

void sub_271333120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2711FF85C(va);
  _Unwind_Resume(a1);
}

void sub_271333134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27154DEC8(va);
  _Unwind_Resume(a1);
}

void sub_271333148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2711FF85C(va);
  _Unwind_Resume(a1);
}

void sub_27133315C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27112F828(v14);
  sub_27112F828(va);
  sub_27112F828(&a9);
  sub_2711FF85C(&a14);
  _Unwind_Resume(a1);
}

void sub_271333188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2711FF85C(va);
  _Unwind_Resume(a1);
}

void sub_27133319C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2713331B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2711FF85C(va);
  _Unwind_Resume(a1);
}

void sub_2713331C4(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 8), 2, (a2 + 9), 2, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 2;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_2713333A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(v5);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_2713333CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_2713333E8(uint64_t result)
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

void sub_271333478(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 2, (a1 + 5), 2, 2);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 3;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_2713335C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2713335D4(uint64_t *a1, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  v3 = *a2 != 0;
  if (a2[1])
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  v4 = *a2;
  v5[8] = &unk_288110658;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_271562088(v5, v6);
  operator new();
}

void sub_271333744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271553FBC(va);
  _Unwind_Resume(a1);
}

void sub_271333758(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271333810(uint64_t a1)
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

void sub_2713338A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      v13 = v3;
      v14 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      v13 = *(a2 + 8);
      v14 = 0;
    }

    (*(*v3 + 72))(v15);
    v12 = *(v15[0] + 8);
    v15[0] = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v15[0] = v12;
    v16 = 0;
    sub_2713335D4(&v13, v15);
  }

  if (*(a2 + 48) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 32);
  v16 = &unk_288110658;
  v11 = 0x100000000;
  if (v10 > 0x100000000)
  {
    v11 = v10;
  }

  v15[0] = v10;
  v15[1] = (v10 != 0) | (v11 << 32);
  sub_271562088(&v13, v15);
  operator new();
}

void sub_27133437C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  sub_27112F828(v5);
  sub_27112F828(va1);
  sub_27112F828(va2);
  sub_2712000B4(va);
  _Unwind_Resume(a1);
}

void sub_2713343A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2712000B4(va);
  _Unwind_Resume(a1);
}

void sub_2713343BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271553FBC(va);
  _Unwind_Resume(a1);
}

void sub_2713343E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(v11);
  sub_27112F828(va);
  sub_27112F828(&a9);
  sub_2712000B4((v12 - 72));
  _Unwind_Resume(a1);
}

void sub_271334438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133444C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 8), 2, (a2 + 9), 2, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 3;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271334630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(v5);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271334654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271334670(uint64_t result)
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

void sub_271334700(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 2, (a1 + 5), 2, 4);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 4;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271334848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133485C(uint64_t *a1, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  v3 = *a2 != 0;
  if (a2[1])
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  v4 = *a2;
  v5[8] = &unk_2881104B8;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_27156349C(v5, v6);
  operator new();
}

void sub_2713349CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27155A0A0(va);
  _Unwind_Resume(a1);
}

void sub_2713349E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271334A98(uint64_t a1)
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

void sub_271334B28(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      v13 = v3;
      v14 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      v13 = *(a2 + 8);
      v14 = 0;
    }

    (*(*v3 + 72))(&v18);
    v12 = v18[2];
    v16 = *v18;
    v17 = v12;
    v18 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v18 = *(&v16 + 1);
    v15 = 0;
    sub_27133485C(&v13, &v18);
  }

  if (*(a2 + 48) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 32);
  v18 = &unk_2881104B8;
  v11 = 0x100000000;
  if (v10 > 0x100000000)
  {
    v11 = v10;
  }

  v13 = v10;
  v14 = (v10 != 0) | (v11 << 32);
  sub_27156349C(&v16, &v13);
  operator new();
}

void sub_271335230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(v11);
  sub_27120090C(va);
  _Unwind_Resume(a1);
}

void sub_27133524C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  sub_27112F828(v5);
  sub_27112F828(va2);
  sub_27112F828(va);
  sub_27120090C(va1);
  _Unwind_Resume(a1);
}

void sub_271335278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27120090C(va);
  _Unwind_Resume(a1);
}

void sub_27133528C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27155A0A0(va);
  _Unwind_Resume(a1);
}

void sub_2713352A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27120090C(va);
  _Unwind_Resume(a1);
}

void sub_2713352B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27112F828(v14);
  sub_27112F828(va);
  sub_27112F828(&a9);
  sub_27120090C(&a14);
  _Unwind_Resume(a1);
}

void sub_2713352E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27120090C(va);
  _Unwind_Resume(a1);
}

void sub_2713352F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271335308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27120090C(va);
  _Unwind_Resume(a1);
}

void sub_27133531C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 8), 2, (a2 + 9), 2, 4);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 4;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271335500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(v5);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271335524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271335540(uint64_t result)
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

void sub_2713355D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 1);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 5;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271335718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133572C(uint64_t *a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 2 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 2;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_2881103C8;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x1FFFFFFFFLL | ((v3 >> 1) << 33);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_2715648B0(v5, v6);
  operator new();
}

void sub_271335904(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271335938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713359F0(uint64_t a1)
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

void sub_271335A80(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      *v18 = v3;
      *&v18[8] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      *v18 = *(a2 + 8);
      *&v18[8] = 0;
    }

    (*(*v3 + 72))(v22);
    v14 = *(*v22 + 16);
    v13 = *(*v22 + 32);
    *v15 = **v22;
    *&v15[16] = v14;
    v16 = v13;
    *v22 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v22 = *&v15[12];
    v17 = 0;
    sub_27133572C(v18, v22);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v17 = &unk_2881103C8;
  v11 = 2 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  *&v18[4] = v10;
  *v18 = 2;
  *v22 = 1;
  *&v22[4] = v11 & 0x1FFFFFFFFLL | ((v12 >> 1) << 33);
  *&v18[12] = *v22;
  v19 = v12;
  v20 = v10;
  v21 = *&v22[4];
  sub_2715648B0(v15, v18);
  operator new();
}

void sub_271336204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133629C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271201164(va);
  _Unwind_Resume(a1);
}

void sub_2713362B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_27112F828(va);
  sub_271201164(va2);
  _Unwind_Resume(a1);
}

void sub_2713362DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271201164(va);
  _Unwind_Resume(a1);
}

void sub_271336304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271201164(va);
  _Unwind_Resume(a1);
}

void sub_271336318(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 1);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 5;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_2713364FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(v5);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271336520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27133653C(uint64_t result)
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

void sub_2713365CC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 2);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 7;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271336714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271336728(uint64_t *a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 2 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 2;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_288110228;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x1FFFFFFFFLL | ((v3 >> 1) << 33);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_271565CE0(v5, v6);
  operator new();
}

void sub_271336900(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271336934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713369EC(uint64_t a1)
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

void sub_271336A7C(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      v18 = v3;
      *v19 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      v18 = *(a2 + 8);
      *v19 = 0;
    }

    (*(*v3 + 72))(v23);
    v14 = *(*v23 + 16);
    v13 = *(*v23 + 32);
    *v15 = **v23;
    *&v15[16] = v14;
    v16 = v13;
    *v23 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v17 = *&v15[12];
    sub_271336728(&v18, &v17);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v11 = 2 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  HIDWORD(v18) = *(a2 + 36);
  LODWORD(v18) = 2;
  v17 = &unk_288110228;
  *v19 = HIDWORD(v10);
  *v23 = 1;
  *&v23[4] = v11 & 0x1FFFFFFFFLL | ((v12 >> 1) << 33);
  *&v19[4] = *v23;
  v20 = v12;
  v21 = v10;
  v22 = *&v23[4];
  sub_271565CE0(v15, &v18);
  operator new();
}

void sub_271337210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713372A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2712019BC(va);
  _Unwind_Resume(a1);
}

void sub_2713372BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  sub_27112F828(v3);
  sub_27112F828(va2);
  sub_27112F828(va);
  sub_2712019BC(va1);
  _Unwind_Resume(a1);
}

void sub_2713372E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2712019BC(va);
  _Unwind_Resume(a1);
}

void sub_2713372FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271337310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2712019BC(va);
  _Unwind_Resume(a1);
}

void sub_271337324(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 7;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271337508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(v5);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133752C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271337548(uint64_t result)
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

void sub_2713375D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 4);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 8;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271337720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271337734(uint64_t *a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 2 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 2;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_288110138;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x1FFFFFFFFLL | ((v3 >> 1) << 33);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_27156710C(v5, v6);
  operator new();
}

void sub_27133790C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271337940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713379F8(uint64_t a1)
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

void sub_271337A88(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      *v18 = v3;
      *&v18[8] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      *v18 = *(a2 + 8);
      *&v18[8] = 0;
    }

    (*(*v3 + 72))(v22);
    v14 = *(*v22 + 16);
    v13 = *(*v22 + 32);
    *v15 = **v22;
    *&v15[16] = v14;
    v16 = v13;
    *v22 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v22 = *&v15[12];
    v17 = 0;
    sub_271337734(v18, v22);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v17 = &unk_288110138;
  v11 = 2 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  *&v18[4] = v10;
  *v18 = 2;
  *v22 = 1;
  *&v22[4] = v11 & 0x1FFFFFFFFLL | ((v12 >> 1) << 33);
  *&v18[12] = *v22;
  v19 = v12;
  v20 = v10;
  v21 = *&v22[4];
  sub_27156710C(v15, v18);
  operator new();
}

void sub_27133820C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713382A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271202214(va);
  _Unwind_Resume(a1);
}

void sub_2713382B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_27112F828(va);
  sub_271202214(va2);
  _Unwind_Resume(a1);
}

void sub_2713382E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271202214(va);
  _Unwind_Resume(a1);
}

void sub_27133830C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271202214(va);
  _Unwind_Resume(a1);
}

void sub_271338320(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 4);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 8;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271338504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(v5);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271338528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271338544(uint64_t result)
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

void sub_2713385D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 1);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 21;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_27133871C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271338730(uint64_t *a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 3;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_288111658;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 | (v3 << 32);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_271568530(v5, v6);
  operator new();
}

void sub_271338900(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271338934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713389EC(uint64_t a1)
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

void sub_271338A7C(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      *v18 = v3;
      *&v18[8] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      *v18 = *(a2 + 8);
      *&v18[8] = 0;
    }

    (*(*v3 + 72))(v22);
    v14 = *(*v22 + 16);
    v13 = *(*v22 + 32);
    *v15 = **v22;
    *&v15[16] = v14;
    v16 = v13;
    *v22 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v22 = *&v15[12];
    v17 = 0;
    sub_271338730(v18, v22);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v17 = &unk_288111658;
  if (v10)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  *&v18[4] = v10;
  *v18 = 3;
  *v22 = 1;
  *&v22[4] = v11 | (v12 << 32);
  *&v18[12] = *v22;
  v19 = v12;
  v20 = v10;
  v21 = *&v22[4];
  sub_271568530(v15, v18);
  operator new();
}

void sub_2713391F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271339290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271202A6C(va);
  _Unwind_Resume(a1);
}

void sub_2713392A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_27112F828(va);
  sub_271202A6C(va2);
  _Unwind_Resume(a1);
}

void sub_2713392D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271202A6C(va);
  _Unwind_Resume(a1);
}

void sub_2713392F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271202A6C(va);
  _Unwind_Resume(a1);
}

void sub_27133930C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 1);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 21;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_2713394F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(v5);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271339514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271339530(uint64_t result)
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

void sub_2713395C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 2);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 22;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271339708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133971C(uint64_t *a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 3;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_288111568;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 | (v3 << 32);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_27156985C(v5, v6);
  operator new();
}

void sub_2713398EC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271339920(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713399D8(uint64_t a1)
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

void sub_271339A68(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      *v18 = v3;
      *&v18[8] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      *v18 = *(a2 + 8);
      *&v18[8] = 0;
    }

    (*(*v3 + 72))(v22);
    v14 = *(*v22 + 16);
    v13 = *(*v22 + 32);
    *v15 = **v22;
    *&v15[16] = v14;
    v16 = v13;
    *v22 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v22 = *&v15[12];
    v17 = 0;
    sub_27133971C(v18, v22);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v17 = &unk_288111568;
  if (v10)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  *&v18[4] = v10;
  *v18 = 3;
  *v22 = 1;
  *&v22[4] = v11 | (v12 << 32);
  *&v18[12] = *v22;
  v19 = v12;
  v20 = v10;
  v21 = *&v22[4];
  sub_27156985C(v15, v18);
  operator new();
}

void sub_27133A1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133A27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_2712032C4(va);
  _Unwind_Resume(a1);
}

void sub_27133A290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_27112F828(va);
  sub_2712032C4(va2);
  _Unwind_Resume(a1);
}

void sub_27133A2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_2712032C4(va);
  _Unwind_Resume(a1);
}

void sub_27133A2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_2712032C4(va);
  _Unwind_Resume(a1);
}

void sub_27133A2F8(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 22;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_27133A4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(v5);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133A500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27133A51C(uint64_t result)
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

void sub_27133A5AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 1);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 25;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_27133A6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133A708(uint64_t *a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 4;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_288111318;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_27156AB88(v5, v6);
  operator new();
}

void sub_27133A8E0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133A914(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27133A9CC(uint64_t a1)
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

void sub_27133AA5C(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      *v18 = v3;
      *&v18[8] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      *v18 = *(a2 + 8);
      *&v18[8] = 0;
    }

    (*(*v3 + 72))(v22);
    v14 = *(*v22 + 16);
    v13 = *(*v22 + 32);
    *v15 = **v22;
    *&v15[16] = v14;
    v16 = v13;
    *v22 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v22 = *&v15[12];
    v17 = 0;
    sub_27133A708(v18, v22);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v17 = &unk_288111318;
  v11 = 4 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  *&v18[4] = v10;
  *v18 = 4;
  *v22 = 1;
  *&v22[4] = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
  *&v18[12] = *v22;
  v19 = v12;
  v20 = v10;
  v21 = *&v22[4];
  sub_27156AB88(v15, v18);
  operator new();
}

void sub_27133B1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133B278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271203B1C(va);
  _Unwind_Resume(a1);
}

void sub_27133B28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_27112F828(va);
  sub_271203B1C(va2);
  _Unwind_Resume(a1);
}

void sub_27133B2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271203B1C(va);
  _Unwind_Resume(a1);
}

void sub_27133B2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271203B1C(va);
  _Unwind_Resume(a1);
}

void sub_27133B2F4(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 1);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 25;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_27133B4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(v5);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133B4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27133B518(uint64_t result)
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

void sub_27133B5A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 2);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 31;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_27133B6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133B704(uint64_t *a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 4;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_288110DA8;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_27156BFC0(v5, v6);
  operator new();
}

void sub_27133B8DC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133B910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27133B9C8(uint64_t a1)
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

void sub_27133BA58(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      v18 = v3;
      *v19 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      v18 = *(a2 + 8);
      *v19 = 0;
    }

    (*(*v3 + 72))(v23);
    v14 = *(*v23 + 16);
    v13 = *(*v23 + 32);
    *v15 = **v23;
    *&v15[16] = v14;
    v16 = v13;
    *v23 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v17 = *&v15[12];
    sub_27133B704(&v18, &v17);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v11 = 4 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  HIDWORD(v18) = *(a2 + 36);
  LODWORD(v18) = 4;
  v17 = &unk_288110DA8;
  *v19 = HIDWORD(v10);
  *v23 = 1;
  *&v23[4] = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
  *&v19[4] = *v23;
  v20 = v12;
  v21 = v10;
  v22 = *&v23[4];
  sub_27156BFC0(v15, &v18);
  operator new();
}

void sub_27133C1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133C284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271204374(va);
  _Unwind_Resume(a1);
}

void sub_27133C298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  sub_27112F828(v3);
  sub_27112F828(va2);
  sub_27112F828(va);
  sub_271204374(va1);
  _Unwind_Resume(a1);
}

void sub_27133C2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271204374(va);
  _Unwind_Resume(a1);
}

void sub_27133C2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133C2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271204374(va);
  _Unwind_Resume(a1);
}

void sub_27133C300(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 31;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_27133C4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(v5);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133C508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27133C524(uint64_t result)
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

void sub_27133C5B4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 4);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 32;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_27133C6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133C710(uint64_t *a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 4;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_288110CB8;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_27156D3EC(v5, v6);
  operator new();
}

void sub_27133C8E8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133C91C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27133C9D4(uint64_t a1)
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

void sub_27133CA64(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      __dst = v3;
      *v19 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      __dst = *(a2 + 8);
      *v19 = 0;
    }

    (*(*v3 + 72))(v23);
    v14 = *(*v23 + 16);
    v13 = *(*v23 + 32);
    *__src = **v23;
    *&__src[16] = v14;
    v16 = v13;
    *v23 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v23 = *&__src[12];
    v17 = 0;
    sub_27133C710(&__dst, v23);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v11 = 4 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  HIDWORD(__dst) = *(a2 + 36);
  LODWORD(__dst) = 4;
  v17 = &unk_288110CB8;
  *v19 = HIDWORD(v10);
  *v23 = 1;
  *&v23[4] = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
  *&v19[4] = *v23;
  v20 = v12;
  v21 = v10;
  v22 = *&v23[4];
  sub_27156D3EC(__src, &__dst);
  operator new();
}

void sub_27133D408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133D4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_27112F828(v29);
  sub_27112F828(&a17);
  sub_27112F828(&a14);
  sub_271204BCC(&a29);
  _Unwind_Resume(a1);
}

void sub_27133D4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133D51C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 4);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 32;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_27133D700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(v5);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133D724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27133D740(uint64_t result)
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

void sub_27133D7D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 1);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 37;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_27133D918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133D92C(uint64_t *a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 4;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_2881108E8;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_27156E810(v5, v6);
  operator new();
}

void sub_27133DB04(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133DB38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27133DBF0(uint64_t a1)
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

void sub_27133DC80(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      *v18 = v3;
      *&v18[8] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      *v18 = *(a2 + 8);
      *&v18[8] = 0;
    }

    (*(*v3 + 72))(v22);
    v14 = *(*v22 + 16);
    v13 = *(*v22 + 32);
    *v15 = **v22;
    *&v15[16] = v14;
    v16 = v13;
    *v22 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v22 = *&v15[12];
    v17 = 0;
    sub_27133D92C(v18, v22);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v17 = &unk_2881108E8;
  v11 = 4 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  *&v18[4] = v10;
  *v18 = 4;
  *v22 = 1;
  *&v22[4] = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
  *&v18[12] = *v22;
  v19 = v12;
  v20 = v10;
  v21 = *&v22[4];
  sub_27156E810(v15, v18);
  operator new();
}

void sub_27133E404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133E49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271205424(va);
  _Unwind_Resume(a1);
}

void sub_27133E4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_27112F828(va);
  sub_271205424(va2);
  _Unwind_Resume(a1);
}

void sub_27133E4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271205424(va);
  _Unwind_Resume(a1);
}

void sub_27133E504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_271205424(va);
  _Unwind_Resume(a1);
}

void sub_27133E518(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 1);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 37;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_27133E6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(v5);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133E720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27133E73C(uint64_t result)
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

void sub_27133E7CC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 2);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 38;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_27133E914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133E928(uint64_t *a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 4;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_2881107F8;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_27156FC48(v5, v6);
  operator new();
}

void sub_27133EB00(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133EB34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27133EBEC(uint64_t a1)
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

void sub_27133EC7C(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      __dst = v3;
      *v19 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      __dst = *(a2 + 8);
      *v19 = 0;
    }

    (*(*v3 + 72))(v23);
    v14 = *(*v23 + 16);
    v13 = *(*v23 + 32);
    *__src = **v23;
    *&__src[16] = v14;
    v16 = v13;
    *v23 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v23 = *&__src[12];
    v17 = 0;
    sub_27133E928(&__dst, v23);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v11 = 4 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  HIDWORD(__dst) = *(a2 + 36);
  LODWORD(__dst) = 4;
  v17 = &unk_2881107F8;
  *v19 = HIDWORD(v10);
  *v23 = 1;
  *&v23[4] = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
  *&v19[4] = *v23;
  v20 = v12;
  v21 = v10;
  v22 = *&v23[4];
  sub_27156FC48(__src, &__dst);
  operator new();
}

void sub_27133F620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133F6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_27112F828(v29);
  sub_27112F828(&a17);
  sub_27112F828(&a14);
  sub_271205C7C(&a29);
  _Unwind_Resume(a1);
}

void sub_27133F70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133F734(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 38;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_27133F918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(v5);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133F93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133F958(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  if (a1)
  {
    if (a3 > 5)
    {
      if (a3 <= 7)
      {
        if (a3 != 6)
        {
          v31 = a1;
          v32 = 4 * a2;
          sub_2711EB7CC(&v31, __p);
        }

        v31 = a1;
        v32 = 4 * a2;
        sub_2711EB698(&v31, __p);
      }

      switch(a3)
      {
        case 8:
          v31 = a1;
          v32 = 4 * a2;
          sub_2711EB900(&v31, __p);
        case 0xB:
          v31 = a1;
          v32 = 4 * a2;
          sub_2711EBA34(&v31, __p);
        case 0xC:
          v31 = a1;
          v32 = 4 * a2;
          sub_2711EBB68(&v31, __p);
      }
    }

    else if (a3 <= 1)
    {
      if (!a3)
      {
        v31 = a1;
        v32 = 4 * a2;
        sub_2711E8CC0(&v31, __p);
      }

      if (a3 == 1)
      {
        v31 = a1;
        v32 = 4 * a2;
        sub_2711EB1C4(&v31, __p);
      }
    }

    else
    {
      switch(a3)
      {
        case 2:
          v31 = a1;
          v32 = 4 * a2;
          sub_2711EB310(&v31, __p);
        case 3:
          v31 = a1;
          v32 = 4 * a2;
          sub_2711EB444(&v31, __p);
        case 5:
          v31 = a1;
          v32 = 4 * a2;
          sub_2711EB578(&v31, __p);
      }
    }

    sub_27183428C(a3);
  }

  if (!a2)
  {
    operator new();
  }

  sub_271340474(v8, &v30);
  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(v10, v8[0], v8[1]);
  }

  else
  {
    *v10 = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(10, v10, __p);
  *a4 = *__p;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v29 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_34;
  }

  *(a4 + 40) = 0;
  v5 = v22;
  if (v22 == 1)
  {
    *(a4 + 16) = v20;
    *(a4 + 32) = v21;
    v21 = 0;
    v20 = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
LABEL_27:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v7 = v25;
  *(v6 + 16) = v24;
  *v6 = v23;
  v23 = 0uLL;
  *(a4 + 72) = v7;
  *(a4 + 80) = v26;
  *(a4 + 96) = v27;
  v24 = 0;
  v26 = 0uLL;
  v27 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

LABEL_34:
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(v15);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_271340394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(v9 - 48);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2713403D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271340414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271340474(uint64_t a1, unint64_t *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = "data pointer is null but num_lines is ";
  v9 = v4;
  v10 = "data pointer is null but num_lines is ";
  v11 = "data pointer is null but num_lines is ";
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_271228A78(&v6);
  std::to_string(&v6, *a2);
  v7 = v4;
  v8 = &v6;
  v9 = v4;
  v10 = &v6;
  v11 = &v6;
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v7;
  (off_2881309D8[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v6;
  result = (off_2881309F0[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_2881309C0[v5])(&v7, v4);
  }

  return result;
}

void sub_271340594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713405B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2713405A0);
}

void sub_2713405D4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  if (a1)
  {
    if (a3 > 5)
    {
      if (a3 <= 7)
      {
        if (a3 != 6)
        {
          v31 = a1;
          v32 = 6 * a2;
          sub_2711EB7CC(&v31, __p);
        }

        v31 = a1;
        v32 = 6 * a2;
        sub_2711EB698(&v31, __p);
      }

      switch(a3)
      {
        case 8:
          v31 = a1;
          v32 = 6 * a2;
          sub_2711EB900(&v31, __p);
        case 0xB:
          v31 = a1;
          v32 = 6 * a2;
          sub_2711EBA34(&v31, __p);
        case 0xC:
          v31 = a1;
          v32 = 6 * a2;
          sub_2711EBB68(&v31, __p);
      }
    }

    else if (a3 <= 1)
    {
      if (!a3)
      {
        v31 = a1;
        v32 = 6 * a2;
        sub_2711E8CC0(&v31, __p);
      }

      if (a3 == 1)
      {
        v31 = a1;
        v32 = 6 * a2;
        sub_2711EB1C4(&v31, __p);
      }
    }

    else
    {
      switch(a3)
      {
        case 2:
          v31 = a1;
          v32 = 6 * a2;
          sub_2711EB310(&v31, __p);
        case 3:
          v31 = a1;
          v32 = 6 * a2;
          sub_2711EB444(&v31, __p);
        case 5:
          v31 = a1;
          v32 = 6 * a2;
          sub_2711EB578(&v31, __p);
      }
    }

    sub_27183428C(a3);
  }

  if (!a2)
  {
    operator new();
  }

  sub_271340474(v8, &v30);
  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(v10, v8[0], v8[1]);
  }

  else
  {
    *v10 = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(10, v10, __p);
  *a4 = *__p;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v29 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_34;
  }

  *(a4 + 40) = 0;
  v5 = v22;
  if (v22 == 1)
  {
    *(a4 + 16) = v20;
    *(a4 + 32) = v21;
    v21 = 0;
    v20 = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
LABEL_27:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v7 = v25;
  *(v6 + 16) = v24;
  *v6 = v23;
  v23 = 0uLL;
  *(a4 + 72) = v7;
  *(a4 + 80) = v26;
  *(a4 + 96) = v27;
  v24 = 0;
  v26 = 0uLL;
  v27 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

LABEL_34:
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(v15);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_271341038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(v9 - 48);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271341078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2713410B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271341118()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0uLL;
  v4 = 0;
  sub_271750B14();
}

void sub_271341CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271341DBC(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x271341DB4);
}

void sub_271341DD8()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0uLL;
  v4 = 0;
  sub_271751114();
}

void sub_271342A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271342B24(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x271342B1CLL);
}

void sub_271342B40(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 440);
  v4 = *(a1 + 448);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = __dynamic_cast(v3, &unk_28811D1B0, &unk_28811DC78, 0) != 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (v5)
    {
LABEL_9:
      v7 = *(a1 + 440);
      v6 = *(a1 + 448);
      if (v6)
      {
        v8 = v6 + 1;
        atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
        v22 = v7;
        v23 = v6;
        if (v7)
        {
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          v12 = 0uLL;
          v24[0] = v7;
          v24[1] = v6;
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          goto LABEL_20;
        }
      }

      else
      {
        v22 = *(a1 + 440);
        v23 = 0;
        if (v7)
        {
          v12 = 0uLL;
          v24[0] = v7;
          v24[1] = 0;
LABEL_20:
          v9 = v7 + 2;
          v10 = v7[2];
          v25 = &v12;
          v11 = *v10;
          if (v11 > 5)
          {
            if (v11 <= 7)
            {
              if (v11 != 6)
              {
                sub_271759D80(v9, 7);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713457F8;
                operator new();
              }

              sub_271759D80(v9, 6);
              v28 = v7;
              *&v29 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v27 = sub_2713457F8;
              operator new();
            }

            switch(v11)
            {
              case 8:
                sub_271759D80(v9, 8);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713457F8;
                operator new();
              case 11:
                sub_271759D80(v9, 11);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713457F8;
                operator new();
              case 12:
                sub_271759D80(v9, 12);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713457F8;
                operator new();
            }
          }

          else
          {
            if (v11 <= 1)
            {
              if (v11)
              {
                sub_271759D80(v9, 1);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713457F8;
                operator new();
              }

              sub_271759D80(v9, 0);
              v28 = v7;
              *&v29 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v27 = sub_2713457F8;
              operator new();
            }

            switch(v11)
            {
              case 2:
                sub_271759D80(v9, 2);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713457F8;
                operator new();
              case 3:
                sub_271759D80(v9, 3);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713457F8;
                operator new();
              case 5:
                sub_271759D80(v9, 5);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_2713457F8;
                operator new();
            }
          }

          sub_27183428C(v11);
        }
      }

LABEL_14:
      *v24 = *"cv3d.viz";
      v25 = 0x800000000000000;
      v26 = 12;
      sub_2711BE814(&v21, v24, 1uLL);
      if (*(a1 + 23) < 0)
      {
        sub_271127178(v18, *a1, *(a1 + 8));
      }

      else
      {
        *v18 = *a1;
        v19 = *(a1 + 16);
      }

      v20 = *(a1 + 24);
      LODWORD(v12) = 2;
      sub_271343FA4(v13, &v12);
      *__p = *v13;
      v16 = v14;
      v13[1] = 0;
      v14 = 0;
      v13[0] = 0;
      v17 = 1;
      sub_271369E70(&v21, v18, __p);
    }

LABEL_13:
    v22 = 0;
    v23 = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  goto LABEL_13;
}

void sub_271343E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271343FA4(uint64_t a1, unsigned int *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = "cannot return data as VZLines";
  v9 = v4;
  v10 = "cannot return data as VZLines";
  v11 = "cannot return data as VZLines";
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_2712390A4(&v6);
  std::to_string(&v6, *a2);
  v7 = v4;
  v8 = &v6;
  v9 = v4;
  v10 = &v6;
  v11 = &v6;
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v7;
  (off_2881309D8[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v6;
  result = (off_2881309F0[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_2881309C0[v5])(&v7, v4);
  }

  return result;
}

void sub_2713440C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713440E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2713440D0);
}

void sub_271344104(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 440);
  v4 = *(a1 + 448);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = __dynamic_cast(v3, &unk_28811D1B0, &unk_28811DC60, 0) != 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (v5)
    {
LABEL_9:
      v7 = *(a1 + 440);
      v6 = *(a1 + 448);
      if (v6)
      {
        v8 = v6 + 1;
        atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
        v22 = v7;
        v23 = v6;
        if (v7)
        {
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          v12 = 0uLL;
          v24[0] = v7;
          v24[1] = v6;
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          goto LABEL_20;
        }
      }

      else
      {
        v22 = *(a1 + 440);
        v23 = 0;
        if (v7)
        {
          v12 = 0uLL;
          v24[0] = v7;
          v24[1] = 0;
LABEL_20:
          v9 = v7 + 2;
          v10 = v7[2];
          v25 = &v12;
          v11 = *v10;
          if (v11 > 5)
          {
            if (v11 <= 7)
            {
              if (v11 != 6)
              {
                sub_271759D80(v9, 7);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271345B40;
                operator new();
              }

              sub_271759D80(v9, 6);
              v28 = v7;
              *&v29 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v27 = sub_271345B40;
              operator new();
            }

            switch(v11)
            {
              case 8:
                sub_271759D80(v9, 8);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271345B40;
                operator new();
              case 11:
                sub_271759D80(v9, 11);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271345B40;
                operator new();
              case 12:
                sub_271759D80(v9, 12);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271345B40;
                operator new();
            }
          }

          else
          {
            if (v11 <= 1)
            {
              if (v11)
              {
                sub_271759D80(v9, 1);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271345B40;
                operator new();
              }

              sub_271759D80(v9, 0);
              v28 = v7;
              *&v29 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v27 = sub_271345B40;
              operator new();
            }

            switch(v11)
            {
              case 2:
                sub_271759D80(v9, 2);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271345B40;
                operator new();
              case 3:
                sub_271759D80(v9, 3);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271345B40;
                operator new();
              case 5:
                sub_271759D80(v9, 5);
                v28 = v7;
                *&v29 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v27 = sub_271345B40;
                operator new();
            }
          }

          sub_27183428C(v11);
        }
      }

LABEL_14:
      *v24 = *"cv3d.viz";
      v25 = 0x800000000000000;
      v26 = 13;
      sub_2711BE814(&v21, v24, 1uLL);
      if (*(a1 + 23) < 0)
      {
        sub_271127178(v18, *a1, *(a1 + 8));
      }

      else
      {
        *v18 = *a1;
        v19 = *(a1 + 16);
      }

      v20 = *(a1 + 24);
      LODWORD(v12) = 3;
      sub_271343FA4(v13, &v12);
      *__p = *v13;
      v16 = v14;
      v13[1] = 0;
      v14 = 0;
      v13[0] = 0;
      v17 = 1;
      sub_271369E70(&v21, v18, __p);
    }

LABEL_13:
    v22 = 0;
    v23 = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  goto LABEL_13;
}

void sub_2713454A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271345630(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881069A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271345684(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271345724(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271345778(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *sub_2713457F8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_2713457F8;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_2713457F8;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B7F8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj2EEENS3_7PackageELj12EvEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj2EEENS3_7PackageELj12EvEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj2EEENS3_7PackageELj12EvEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj2EEENS3_7PackageELj12EvEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188BDC0)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_27134599C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27134599C;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27134599C;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B858;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj2EEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj2EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj2EEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj2EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188BDF8)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_271345B40(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_271345B40;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_271345B40;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B7E8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj3EEENS3_7PackageELj13EvEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj3EEENS3_7PackageELj13EvEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj3EEENS3_7PackageELj13EvEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con5LinesILj3EEENS3_7PackageELj13EvEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188BE5C)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_271345CE4(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_271345CE4;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_271345CE4;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B848;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj3EEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj3EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj3EEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3con5LinesILj3EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188BE94)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_2713460B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271346344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2713463A0(void *result)
{
  result[3] = &unk_28812D848;
  result[4] = &unk_288131488;
  v1 = result[6];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  *result = &unk_288131488;
  v3 = result[2];
  if (v3)
  {
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

void sub_2713464C4(void *a1)
{
  *a1 = &unk_28812D848;
  a1[1] = &unk_288131488;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    *(a1 - 3) = &unk_288131488;
    v2 = *(a1 - 1);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    *(a1 - 3) = &unk_288131488;
    v2 = *(a1 - 1);
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_27134661C(void *a1)
{
  a1[3] = &unk_28812D848;
  a1[4] = &unk_288131488;
  v1 = a1[6];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  *a1 = &unk_288131488;
  v3 = a1[2];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271346754(void *a1)
{
  *a1 = &unk_28812D848;
  a1[1] = &unk_288131488;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  *(a1 - 3) = &unk_288131488;
  v3 = *(a1 - 1);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271346CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271346D30(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 48) = 0;
  if (*(a2 + 64) == 1)
  {
    *(result + 8) = 0;
    *(result + 40) = -1;
    v2 = *(a2 + 56);
    if (v2 != -1)
    {
      v3 = result;
      v9 = result + 8;
      v4 = a2;
      (off_288130A58[v2])(&v9, a2 + 24);
      result = v3;
      *(v3 + 40) = v2;
      a2 = v4;
    }

    *(result + 48) = 1;
  }

  v5 = *(a2 + 72);
  v6 = *(a2 + 80);
  *(result + 72) = 0;
  *(result + 64) = v6;
  *(result + 56) = v5;
  *(result + 104) = 0;
  if (*(a2 + 168) == 1)
  {
    *(result + 72) = 0;
    *(result + 96) = -1;
    v7 = *(a2 + 160);
    if (v7 != -1)
    {
      v8 = result;
      v9 = result + 72;
      (off_288130A78[v7])(&v9, a2 + 136);
      result = v8;
      *(v8 + 96) = v7;
    }

    *(result + 104) = 1;
  }

  return result;
}

void sub_271346E34(_Unwind_Exception *a1)
{
  v4 = sub_27116F16C(v1);
  sub_27116F1C8(v4);
  sub_27116EEC8(v2);
  _Unwind_Resume(a1);
}

void sub_271346E54(_Unwind_Exception *a1)
{
  sub_27116F024(v1);
  sub_27116F080(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_271346E70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v11 = 0;
  if (*(a1 + 48) == 1)
  {
    v9 = 0;
    v10 = -1;
    v4 = *(a1 + 40);
    if (v4 != -1)
    {
      v7 = &v9;
      (off_288130A58[v4])(&v7, a1 + 8);
      v10 = v4;
    }

    v11 = 1;
  }

  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v18 = 0;
  if (*(a1 + 104) == 1)
  {
    v17 = -1;
    v5 = *(a1 + 96);
    if (v5 != -1)
    {
      v7 = &v16;
      (off_288130A78[v5])(&v7, a1 + 72);
      v17 = v5;
    }

    v18 = 1;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  *a2 = off_2881327C0;
  sub_2712B1AE8((a2 + 2), v8);
  return sub_271347580(v8);
}

void sub_27134701C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = sub_27116F16C(v31);
  sub_27116F1C8(v33);
  if ((a29 & 1) != 0 && a27 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  sub_27116EEC8(&a11);
  _Unwind_Resume(a1);
}

void sub_271347060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27116F024(v5);
  sub_27116F080(va);
  _Unwind_Resume(a1);
}

void sub_27134707C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271347580(va);
  _Unwind_Resume(a1);
}

void sub_271347090(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a1;
      sub_271127178(__p, *a2, *(a2 + 8));
      a1 = v4;
    }

    else
    {
      *__p = *a2;
      v6 = *(a2 + 16);
    }

    sub_271347184(a1, __p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 40);
    if (v2 != -1)
    {
      v3 = a1;
      (off_288130A48[v2])(__p, a1 + 8);
      a1 = v3;
    }

    *(a1 + 40) = -1;
    *(a1 + 48) = 0;
  }
}

void sub_271347168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271347184(uint64_t a1, __int128 *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_271127178((a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      *(a1 + 24) = *(a2 + 2);
      *(a1 + 8) = v3;
    }

    *(a1 + 40) = 1;
    *(a1 + 48) = 1;
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    sub_271127178(&v8, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    v9 = *(a2 + 2);
  }

  v10 = 1;
  v4 = *(a1 + 40);
  if (v4 == -1)
  {
    goto LABEL_16;
  }

  if (v4 != 1)
  {
    (off_288130A48[v4])(&v7, a1 + 8);
LABEL_16:
    *(a1 + 8) = v8;
    *(a1 + 24) = v9;
    v9 = 0;
    v8 = 0uLL;
    *(a1 + 40) = 1;
    v5 = v10;
    if (v10 == -1)
    {
      return a1;
    }

LABEL_17:
    (off_288130A48[v5])(&v7, &v8);
    return a1;
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = v8;
  *(a1 + 24) = v9;
  HIBYTE(v9) = 0;
  LOBYTE(v8) = 0;
  v5 = v10;
  if (v10 != -1)
  {
    goto LABEL_17;
  }

  return a1;
}

void sub_271347308(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_271120E50(a1);
}

void sub_271347320(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_271127178(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v5 = *(a2 + 16);
    }

    sub_271347408(a1 + 72, __p);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (*(a1 + 104) == 1)
  {
    v3 = *(a1 + 96);
    if (v3 != -1)
    {
      (off_288130A68[v3])(__p, a1 + 72);
    }

    *(a1 + 96) = -1;
    *(a1 + 104) = 0;
  }
}

void sub_2713473EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271347408(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 32) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_271127178(&v7, *a2, *(a2 + 1));
      v9 = 1;
      v3 = *(a1 + 24);
      if (v3 == -1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = *a2;
      v8 = *(a2 + 2);
      v9 = 1;
      v3 = *(a1 + 24);
      if (v3 == -1)
      {
        goto LABEL_16;
      }
    }

    if (v3 == 1)
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      *a1 = v7;
      *(a1 + 16) = v8;
      HIBYTE(v8) = 0;
      LOBYTE(v7) = 0;
      v5 = v9;
      if (v9 == -1)
      {
        return a1;
      }

      goto LABEL_17;
    }

    (off_288130A68[v3])(&v10, a1);
LABEL_16:
    *a1 = v7;
    *(a1 + 16) = v8;
    v8 = 0;
    v7 = 0uLL;
    *(a1 + 24) = 1;
    v5 = v9;
    if (v9 == -1)
    {
      return a1;
    }

LABEL_17:
    (off_288130A68[v5])(&v10, &v7);
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    sub_271127178(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  *(a1 + 24) = 1;
  *(a1 + 32) = 1;
  return a1;
}

uint64_t sub_271347580(uint64_t a1)
{
  if (*(a1 + 680) == 1)
  {
    v2 = *(a1 + 672);
    if (v2 != -1)
    {
      (off_288130A48[v2])(&v15, a1 + 640);
    }

    *(a1 + 672) = -1;
  }

  if (*(a1 + 624) == 1 && *(a1 + 616) == 1)
  {
    v3 = *(a1 + 592);
    if (v3)
    {
      v4 = *(a1 + 600);
      v5 = *(a1 + 592);
      if (v4 == v3)
      {
LABEL_19:
        *(a1 + 600) = v3;
        operator delete(v5);
        goto LABEL_20;
      }

      while (1)
      {
        v6 = v4;
        if (*(v4 - 16) == 1 && *(v4 - 41) < 0)
        {
          operator delete(*(v4 - 8));
          v4 -= 12;
          if (*(v6 - 72) == 1)
          {
LABEL_14:
            if (*(v6 - 73) < 0)
            {
              operator delete(*v4);
            }
          }
        }

        else
        {
          v4 -= 12;
          if (*(v6 - 72) == 1)
          {
            goto LABEL_14;
          }
        }

        if (v4 == v3)
        {
          v5 = *(a1 + 592);
          goto LABEL_19;
        }
      }
    }
  }

LABEL_20:
  if (*(a1 + 576) == 1)
  {
    v7 = *(a1 + 560);
    if (v7 != -1)
    {
      (off_288130AA8[v7])(&v16, a1 + 448);
    }

    *(a1 + 560) = -1;
  }

  if (*(a1 + 416) == 1)
  {
    v8 = *(a1 + 400);
    if (v8 != -1)
    {
      (off_288130A98[v8])(&v19, a1 + 336);
    }

    *(a1 + 400) = -1;
  }

  if (*(a1 + 312) == 1)
  {
    v9 = *(a1 + 304);
    if (v9 != -1)
    {
      (off_288130A48[v9])(&v17, a1 + 272);
    }

    *(a1 + 304) = -1;
  }

  if (*(a1 + 256) == 1 && (v10 = *(a1 + 248)) != 0 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (*(a1 + 224) != 1)
    {
      goto LABEL_39;
    }
  }

  else if (*(a1 + 224) != 1)
  {
    goto LABEL_39;
  }

  v11 = *(a1 + 216);
  if (v11 != -1)
  {
    (off_288130A88[v11])(&v20, a1 + 160);
  }

  *(a1 + 216) = -1;
LABEL_39:
  if (*(a1 + 152) == 1)
  {
    v12 = *(a1 + 144);
    if (v12 != -1)
    {
      (off_288130A68[v12])(&v21, a1 + 120);
    }

    *(a1 + 144) = -1;
  }

  if (*(a1 + 112) == 1 && *(a1 + 104) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if (*(a1 + 48) != 1)
    {
      return a1;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    return a1;
  }

  v13 = *(a1 + 40);
  if (v13 != -1)
  {
    (off_288130A48[v13])(&v18, a1 + 8);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271347894(void *a1, uint64_t a2, uint64_t *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  LOBYTE(v3) = 0;
  v6 = 0;
  if (*(a2 + 32) == 1)
  {
    sub_2711895D8(&v3, a2);
    v3 = &unk_28812ED60;
    v6 = 1;
    v10 = 0;
    v9 = 0uLL;
    if (v5 != v4)
    {
      if (!(((v5 - v4) >> 5) >> 60))
      {
        operator new();
      }

      sub_27134B450();
    }

    *v7 = vdupq_n_s64(0);
    v8 = v5 - v4;
  }

  else
  {
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
  }

  operator new();
}

void sub_271347E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a18 == 1)
  {
    sub_271235358(&a15);
  }

  _Unwind_Resume(exception_object);
}

char **sub_271347F18(char **a1)
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
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_271347FCC(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 && *a1)
  {
    LOBYTE(v15) = 0;
    v18 = 0;
    if (*(a2 + 32) == 1)
    {
      *v16 = *(a2 + 8);
      v17 = *(a2 + 24);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v15 = &unk_28812ED60;
      v18 = 1;
    }

    v5 = strlen(a1);
    if (v5 < 0x7FFFFFFFFFFFFFF8)
    {
      v6 = v5;
      if (v5 < 0x17)
      {
        HIBYTE(v11) = v5;
        if (v5)
        {
          memcpy(&__dst, a1, v5);
        }

        *(&__dst + v6) = 0;
        *__p = __dst;
        v13 = v11;
        v14 = 1;
        sub_271347894(&v28, &v15, __p);
      }

      operator new();
    }

    sub_271120DA8();
  }

  sub_2711CC04C(v19, "namespace must not be empty");
  v27 = 1;
  sub_27112D480(10, v19, &v28);
  *a3 = v28;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v38 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_22;
  }

  *(a3 + 40) = 0;
  v7 = v31;
  if (v31 == 1)
  {
    *(a3 + 16) = v29;
    *(a3 + 32) = v30;
    v30 = 0;
    v29 = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v8 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v37 & 1) == 0)
    {
LABEL_12:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v8 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v37 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v9 = v34;
  *(v8 + 16) = v33;
  *v8 = v32;
  v32 = 0uLL;
  *(a3 + 72) = v9;
  *(a3 + 80) = v35;
  *(a3 + 96) = v36;
  v33 = 0;
  v35 = 0uLL;
  v36 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

LABEL_22:
  if (v27 == 1)
  {
    if (v26 == 1)
    {
      if (v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }
    }

    if (v21 == 1 && v20 < 0)
    {
      operator delete(v19[0]);
    }
  }
}

void sub_2713483B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 == 1)
  {
    sub_271235358(&a21);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27134842C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    LOBYTE(v17[0]) = 0;
    v18 = 0;
    if (*(a2 + 24) == 1)
    {
      v7 = a4;
      v8 = a1;
      memset(v17, 0, sizeof(v17));
      v9 = a2;
      sub_27116E754(v17, *a2, *(a2 + 8), 0xFAFAFAFAFAFAFAFBLL * ((*(a2 + 8) - *a2) >> 4));
      v18 = 1;
      a1 = v8;
      a4 = v7;
      a2 = v9;
    }

    v10 = *(a2 + 48);
    v19 = *(a2 + 32);
    v20 = v10;
    v21 = 1;
    v25[0] = 0;
    v27 = 0;
    if (*(a4 + 32) != 1)
    {
LABEL_19:
      sub_2712ABD88(a1, v17, v25);
    }

    v11 = *(a4 + 24);
    if (v11)
    {
      v12 = a1;
      if (v11 == a4)
      {
        v26 = v25;
        (*(*v11 + 24))(v11, v25);
        a1 = v12;
        goto LABEL_18;
      }

      v11 = (*(*v11 + 16))(*(a4 + 24));
      a1 = v12;
    }

    v26 = v11;
LABEL_18:
    v27 = 1;
    goto LABEL_19;
  }

  LOBYTE(v15) = 0;
  v16 = 0;
  v22[0] = 0;
  v24 = 0;
  if (*(a4 + 32) != 1)
  {
LABEL_16:
    sub_2712ABD88(a1, &v15, v22);
  }

  v13 = *(a4 + 24);
  if (v13)
  {
    v14 = a1;
    if (v13 == a4)
    {
      v23 = v22;
      (*(*v13 + 24))(v13, v22);
      a1 = v14;
      goto LABEL_15;
    }

    v13 = (*(*v13 + 16))(*(a4 + 24), a2);
    a1 = v14;
  }

  v23 = v13;
LABEL_15:
  v24 = 1;
  goto LABEL_16;
}

void sub_271348F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  sub_271144524(v50 - 128);
  sub_271349074(va);
  _Unwind_Resume(a1);
}

void sub_271348F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  sub_271144524(v41 - 168);
  sub_271349074(va);
  _Unwind_Resume(a1);
}

void sub_271348F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  sub_27112D66C(v59 + 16);
  sub_271145690(va);
  _Unwind_Resume(a1);
}

void sub_27134903C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  sub_271144524(v50 - 128);
  sub_271349074(va);
  _Unwind_Resume(a1);
}

void sub_271349058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  sub_271144524(v41 - 168);
  sub_271349074(va);
  _Unwind_Resume(a1);
}

void **sub_271349074(void **result)
{
  if (*(result + 64) == 1 && *(result + 24) == 1)
  {
    v1 = *result;
    if (*result)
    {
      v2 = result[1];
      v3 = *result;
      if (v2 != v1)
      {
        v4 = result;
        v5 = 0;
        do
        {
          v6 = &v2[v5];
          if (v2[v5 - 8] == 1)
          {
            v7 = *(v6 - 4);
            if (v7 != -1)
            {
              (off_288130AB8[v7])(&v9, v6 - 48);
            }

            *(v6 - 4) = -1;
          }

          *(v6 - 102) = off_2881327C0;
          sub_271347580((v6 - 800));
          v5 -= 816;
        }

        while (&v2[v5] != v1);
        result = v4;
        v3 = *v4;
      }

      result[1] = v1;
      v8 = result;
      operator delete(v3);
      return v8;
    }
  }

  return result;
}

void sub_27134918C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2[1];
  v32 = *a2;
  v33 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = sub_271541EA4(v4, &v32);
  v7 = v33;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v6;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
LABEL_6:
    *(a3 + 120) = 1;
    return;
  }

  sub_2711CC04C(v12, "destination to add is already contained in the logger");
  v20 = 1;
  sub_27112D480(13, v12, &v21);
  *a3 = v21;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v31 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_19;
  }

  *(a3 + 40) = 0;
  v9 = v24;
  if (v24 != 1)
  {
    *(a3 + 48) = 0;
    v10 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v30 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    v11 = v27;
    *(v10 + 16) = v26;
    *v10 = v25;
    v25 = 0uLL;
    *(a3 + 72) = v11;
    *(a3 + 80) = v28;
    *(a3 + 96) = v29;
    v26 = 0;
    v28 = 0uLL;
    v29 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_17:
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_19;
  }

  *(a3 + 16) = __p;
  *(a3 + 32) = v23;
  v23 = 0;
  __p = 0uLL;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  v10 = a3 + 48;
  *(a3 + 104) = 0;
  if (v30)
  {
    goto LABEL_16;
  }

LABEL_12:
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (v9)
  {
    goto LABEL_17;
  }

LABEL_19:
  if (v20 == 1)
  {
    if (v19 == 1)
    {
      if (v18 < 0)
      {
        operator delete(v17);
      }

      if (v16 < 0)
      {
        operator delete(v15);
      }
    }

    if (v14 == 1 && v13 < 0)
    {
      operator delete(v12[0]);
    }
  }
}

void sub_2713493F0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_271542144(*a1, *a2))
  {
    *(a3 + 120) = 1;
    return;
  }

  sub_2711CC04C(v7, "destination to remove was not found in the logger");
  v15 = 1;
  sub_27112D480(13, v7, &v16);
  *a3 = v16;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v26 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_14;
  }

  *(a3 + 40) = 0;
  v4 = v19;
  if (v19 != 1)
  {
    *(a3 + 48) = 0;
    v5 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v6 = v22;
    *(v5 + 16) = v21;
    *v5 = v20;
    v20 = 0uLL;
    *(a3 + 72) = v6;
    *(a3 + 80) = v23;
    *(a3 + 96) = v24;
    v21 = 0;
    v23 = 0uLL;
    v24 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v4)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_14;
  }

  *(a3 + 16) = __p;
  *(a3 + 32) = v18;
  v18 = 0;
  __p = 0uLL;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  v5 = a3 + 48;
  *(a3 + 104) = 0;
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_7:
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7[0]);
    }
  }
}

void sub_2713495D4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2715437EC(*a1, &__p);
  v15 = 0;
  v14 = 0uLL;
  sub_271235F18(&v14, (v12 - __p) >> 4);
  if (__p != v12)
  {
    v4 = *__p;
    v3 = *(__p + 1);
    v16 = *__p;
    v17 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
      v19 = v4;
      v20 = v3;
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    else
    {
      v19 = v4;
      v20 = 0;
    }

    v18[0] = v4;
    v18[1] = v3;
    operator new();
  }

  v5 = v15;
  v10 = v14;
  v15 = 0;
  v14 = 0uLL;
  v18[0] = &v14;
  sub_271189798(v18);
  *(a2 + 8) = v10;
  *(a2 + 24) = v5;
  memset(v13, 0, sizeof(v13));
  *a2 = &unk_28812ED60;
  v18[0] = v13;
  sub_271189798(v18);
  v6 = __p;
  if (__p)
  {
    v7 = v12;
    v8 = __p;
    if (v12 != __p)
    {
      do
      {
        v9 = *(v7 - 1);
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        v7 -= 16;
      }

      while (v7 != v6);
      v8 = __p;
    }

    v12 = v6;
    operator delete(v8);
  }
}

void sub_271349994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, char *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_271189798(va1);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2713499B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_27115E960(&a23);
  sub_27112F828(&a21);
  a23 = &a17;
  sub_271189798(&a23);
  sub_271347F18(&a11);
  _Unwind_Resume(a1);
}

void sub_271349A00(uint64_t *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *a1;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *a1;
  }

  v8 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v9 = v8;
  }

  v10 = (*(*v7 + 48))(v7, a2, v9);
  *a3 = &unk_2881177D0;
  a3[1] = v10;
  a3[2] = *(__dynamic_cast(v10, &unk_28811D060, &unk_28811DAA8, 0) + 5);
  a3[3] = v6;
  a3[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_271349BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271349BD8(uint64_t *a1, const char *a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = &unk_2719251FD;
  }

  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v12 = v4;
  if (v4)
  {
    memcpy(__dst, v3, v4);
  }

  *(__dst + v5) = 0;
  if ((v12 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = (*(*v2 + 48))(v2, v6, v7);
  result = (*(*v8 + 32))(v8);
  if (v12 < 0)
  {
    v10 = result;
    operator delete(__dst[0]);
    return v10;
  }

  return result;
}

void sub_271349D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271349D58(uint64_t *a1, const char *a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = &unk_2719251FD;
  }

  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memcpy(__dst, v3, v4);
  }

  *(__dst + v5) = 0;
  if ((v10 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = (*(*v2 + 48))(v2, v6, v7);
  (*(*v8 + 40))(v8, 1);
  if (v10 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_271349EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271349ED0(uint64_t *a1, const char *a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = &unk_2719251FD;
  }

  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memcpy(__dst, v3, v4);
  }

  *(__dst + v5) = 0;
  if ((v10 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = (*(*v2 + 48))(v2, v6, v7);
  (*(*v8 + 40))(v8, 2);
  if (v10 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_27134A02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27134A048(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &unk_2719251FD;
  }

  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v37 = v8;
  if (v8)
  {
    memcpy(&__dst, v7, v8);
    *(&__dst + v9) = 0;
    v10 = v37;
    if ((v37 & 0x8000000000000000) == 0)
    {
LABEL_8:
      if (v10)
      {
        if (a2 <= 2)
        {
          v11 = *a1;
LABEL_19:
          p_dst = &__dst;
LABEL_43:
          v17 = (*(*v11 + 48))(v11, p_dst, v10);
          (*(*v17 + 40))(v17, a2);
          *(a4 + 120) = 1;
          LOBYTE(v10) = v37;
          goto LABEL_44;
        }

LABEL_20:
        v18 = a2;
        sub_27134A4D0(v19, &v18);
        *v21 = *v19;
        v22 = v20;
        v19[1] = 0;
        v20 = 0;
        v19[0] = 0;
        v23 = 1;
        sub_271369D54(v21, &v24);
        *a4 = v24;
        *(a4 + 16) = 0;
        *(a4 + 112) = 0;
        if (v34 != 1)
        {
          *(a4 + 120) = 0;
          goto LABEL_35;
        }

        *(a4 + 40) = 0;
        v13 = v27;
        if (v27 == 1)
        {
          *(a4 + 16) = __p;
          *(a4 + 32) = v26;
          v26 = 0;
          __p = 0uLL;
          *(a4 + 40) = 1;
          *(a4 + 48) = 0;
          v14 = a4 + 48;
          *(a4 + 104) = 0;
          if ((v33 & 1) == 0)
          {
LABEL_23:
            *(a4 + 112) = 1;
            *(a4 + 120) = 0;
            if (!v13)
            {
LABEL_35:
              if (v23 == 1 && SHIBYTE(v22) < 0)
              {
                operator delete(v21[0]);
              }

              if (SHIBYTE(v20) < 0)
              {
                operator delete(v19[0]);
              }

              goto LABEL_44;
            }

LABEL_33:
            if (SHIBYTE(v26) < 0)
            {
              operator delete(__p);
            }

            goto LABEL_35;
          }
        }

        else
        {
          *(a4 + 48) = 0;
          v14 = a4 + 48;
          *(a4 + 104) = 0;
          if ((v33 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        *v14 = v28;
        *(v14 + 16) = v29;
        v29 = 0;
        v28 = 0uLL;
        *(a4 + 72) = v30;
        *(a4 + 80) = v31;
        *(a4 + 96) = v32;
        v31 = 0uLL;
        v32 = 0;
        *(a4 + 104) = 1;
        *(a4 + 112) = 1;
        *(a4 + 120) = 0;
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      goto LABEL_16;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v10 = v37;
    if ((v37 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v36)
  {
    if (a2 > 2)
    {
      goto LABEL_20;
    }

    v11 = *a1;
    v10 = v36;
    goto LABEL_42;
  }

LABEL_16:
  if (a2)
  {
    if (a2 >= 3)
    {
      goto LABEL_20;
    }

    v11 = *a1;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    v10 = v36;
LABEL_42:
    p_dst = __dst;
    goto LABEL_43;
  }

  sub_27123BF10(&v24);
  *a4 = v24;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v34 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_44;
  }

  *(a4 + 40) = 0;
  v15 = v27;
  if (v27 == 1)
  {
    *(a4 + 16) = __p;
    *(a4 + 32) = v26;
    v26 = 0;
    __p = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v16 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v33 & 1) == 0)
    {
LABEL_29:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v15)
      {
        goto LABEL_44;
      }

      goto LABEL_49;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v16 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v33 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  *v16 = v28;
  *(v16 + 16) = v29;
  v29 = 0;
  v28 = 0uLL;
  *(a4 + 72) = v30;
  *(a4 + 80) = v31;
  *(a4 + 96) = v32;
  v31 = 0uLL;
  v32 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v15)
  {
    goto LABEL_44;
  }

LABEL_49:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

LABEL_44:
  if ((v10 & 0x80) != 0)
  {
    operator delete(__dst);
  }
}

void sub_27134A460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (v22 < 0)
  {
    operator delete(*(v23 + 120));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27134A4D0(uint64_t a1, unsigned __int8 *a2)
{
  v5 = 0;
  v8 = v4;
  v9 = "invalid EnableState value '";
  v10 = v4;
  v11 = "invalid EnableState value '";
  v12 = "invalid EnableState value '";
  v6.__r_.__value_.__r.__words[0] = &v8;
  sub_27134B55C(&v6);
  std::to_string(&v6, *a2);
  v8 = v4;
  v9 = &v6;
  v10 = v4;
  v11 = &v6;
  v12 = &v6;
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v8;
  (off_288130AE0[v5])(&v7, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  v8 = v4;
  v9 = "'";
  v10 = v4;
  v11 = "'";
  v12 = "'";
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6.__r_.__value_.__r.__words[0] = &v8;
  (*(&off_288130AF8 + v5))(&v6, v4);
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v8 = &v6;
  result = (off_288130B10[v5])(&v8, v4);
  if (v5 != -1)
  {
    return (off_288130AC8[v5])(&v8, v4);
  }

  return result;
}

void sub_27134A63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_27134A65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271137AE8(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x27134A64CLL);
}

void sub_27134A680(uint64_t *a1, char ***a2)
{
  v4 = **a2;
  v5 = sub_271543694(*a1);
  v6 = v4[48];
  v7 = *(v5 + 24);
  if (v6 != v7 || v6 == 0)
  {
    if (v6 != v7)
    {
LABEL_21:
      v15 = *a1;

      sub_271543130(v15, a2);
      return;
    }
  }

  else
  {
    v9 = v4[47];
    if (v9 >= 0)
    {
      v10 = v4[47];
    }

    else
    {
      v10 = *(v4 + 4);
    }

    v11 = *(v5 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v5 + 8);
    }

    if (v10 != v11)
    {
      goto LABEL_21;
    }

    v13 = v9 >= 0 ? v4 + 24 : *(v4 + 3);
    v14 = v12 >= 0 ? v5 : *v5;
    if (memcmp(v13, v14, v10))
    {
      goto LABEL_21;
    }
  }

  v16 = *a1;
  v17 = **a2;
  if (v17[23] < 0)
  {
    v17 = *v17;
  }

  v18 = strlen(v17);
  v19 = (*(*v16 + 48))(v16, v17, v18);

  sub_27134B074(v16, v19, (a2 + 2));
}

void sub_27134A7C8(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    do
    {
      v6 = *(v3 + 8);
      v11 = *v3;
      v12 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v3 + 24);
      v7 = *(v3 + 32);
      v13 = off_28810C940;
      v14 = v8;
      v15 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_27134A680(a1, &v11);
      v9 = v15;
      if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v10 = v12;
        if (v12)
        {
LABEL_11:
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }
        }
      }

      else
      {
        v10 = v12;
        if (v12)
        {
          goto LABEL_11;
        }
      }

      v3 += 40;
    }

    while (v3 != v4);
  }
}

void sub_27134A924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271396310(va);
  _Unwind_Resume(a1);
}

void sub_27134A938(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_271543938(*a1, v27);
  if (v37)
  {
    *(a2 + 120) = 1;
    return;
  }

  sub_2711D40C8(v27, &v6);
  v16 = v6;
  LOBYTE(__p) = 0;
  v26 = 0;
  if (v15 == 1)
  {
    sub_27112F6CC(&__p, &v7);
    v26 = 1;
    *a2 = v16;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    v3 = v19;
    if (v19 == 1)
    {
      *(a2 + 16) = __p;
      *(a2 + 32) = v18;
      v18 = 0;
      __p = 0uLL;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v25 & 1) == 0)
      {
LABEL_7:
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (!v3)
        {
          goto LABEL_14;
        }

LABEL_12:
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_14;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v25 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v5 = v22;
    *(v4 + 16) = v21;
    *v4 = v20;
    v20 = 0uLL;
    *(a2 + 72) = v5;
    *(a2 + 80) = v23;
    *(a2 + 96) = v24;
    v21 = 0;
    v23 = 0uLL;
    v24 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *a2 = v6;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

LABEL_14:
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7);
    }
  }

  if ((v37 & 1) == 0 && v36 == 1)
  {
    if (v35 == 1)
    {
      if (v34 < 0)
      {
        operator delete(v33);
      }

      if (v32 < 0)
      {
        operator delete(v31);
      }
    }

    if (v30 == 1 && v29 < 0)
    {
      operator delete(v28);
    }
  }
}

void sub_27134AB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(v3 + 16);
  sub_27112D71C(va);
  sub_27112E024(v4 - 160);
  _Unwind_Resume(a1);
}

void *sub_27134ABB4(void *result)
{
  *result = &unk_2881177D0;
  v1 = result[4];
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

void sub_27134AC48(void *a1)
{
  *a1 = &unk_2881177D0;
  v1 = a1[4];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27134ACF0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    if (a2 >= 3)
    {
      v13 = a2;
      sub_27134A4D0(v14, &v13);
      *v16 = *v14;
      v17 = v15;
      v14[1] = 0;
      v15 = 0;
      v14[0] = 0;
      v18 = 1;
      sub_271369D54(v16, &v19);
      *a3 = v19;
      *(a3 + 16) = 0;
      *(a3 + 112) = 0;
      if (v29 != 1)
      {
        *(a3 + 120) = 0;
        goto LABEL_23;
      }

      *(a3 + 40) = 0;
      v5 = v22;
      if (v22 == 1)
      {
        *(a3 + 16) = __p;
        *(a3 + 32) = v21;
        v21 = 0;
        __p = 0uLL;
        *(a3 + 40) = 1;
        *(a3 + 48) = 0;
        v6 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v28 & 1) == 0)
        {
LABEL_6:
          *(a3 + 112) = 1;
          *(a3 + 120) = 0;
          if (!v5)
          {
LABEL_23:
            if (v18 == 1 && SHIBYTE(v17) < 0)
            {
              operator delete(v16[0]);
            }

            if (SHIBYTE(v15) < 0)
            {
              operator delete(v14[0]);
            }

            return;
          }

LABEL_21:
          if (SHIBYTE(v21) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_23;
        }
      }

      else
      {
        *(a3 + 48) = 0;
        v6 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v28 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v11 = v25;
      *(v6 + 16) = v24;
      *v6 = v23;
      v24 = 0;
      v23 = 0uLL;
      *(a3 + 72) = v11;
      *(a3 + 80) = v26;
      *(a3 + 96) = v27;
      v26 = 0uLL;
      v27 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v5)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

LABEL_10:
    (*(**(a1 + 8) + 40))(*(a1 + 8), a2);
    *(a3 + 120) = 1;
    return;
  }

  v7 = a2;
  v8 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (*(v8 + 23) < 0)
  {
    a2 = v7;
    if (*(v8 + 8))
    {
      goto LABEL_10;
    }
  }

  else
  {
    a2 = v7;
    if (*(v8 + 23))
    {
      goto LABEL_10;
    }
  }

  sub_27123BF10(&v19);
  *a3 = v19;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v29 != 1)
  {
    *(a3 + 120) = 0;
    return;
  }

  *(a3 + 40) = 0;
  v9 = v22;
  if (v22 == 1)
  {
    *(a3 + 16) = __p;
    *(a3 + 32) = v21;
    v21 = 0;
    __p = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v10 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v28 & 1) == 0)
    {
LABEL_17:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v9)
      {
        return;
      }

      goto LABEL_31;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v10 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v12 = v25;
  *(v10 + 16) = v24;
  *v10 = v23;
  v24 = 0;
  v23 = 0uLL;
  *(a3 + 72) = v12;
  *(a3 + 80) = v26;
  *(a3 + 96) = v27;
  v26 = 0uLL;
  v27 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v9)
  {
    return;
  }

LABEL_31:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }
}

void sub_27134B03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27134B074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 24))(a2))
  {
    v6 = *((*(*a2 + 56))(a2) + 8);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(a3 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  return a1;
}

void sub_27134B410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  sub_271396310(va2);
  sub_2714FBE4C(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27134B434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_2714FBE4C(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27134B488(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881067E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27134B4DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

size_t sub_27134B55C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288130AC8[v3])(&v6, v1);
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

uint64_t sub_27134B650(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 >= 0xD || ((0x19EFu >> v2) & 1) == 0)
  {
    sub_27183428C(v2);
  }

  return *(a1 + 2) / qword_27188BFD0[v2];
}

void *sub_27134B728(void *a1, void *a2)
{
  sub_271120E64(a1, "{", 1);
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    v5 = sub_271120E64(a1, "{label = ", 9);
    v6 = *(v4 + 16);
    switch(v6)
    {
      case 'f':
        v7 = "Confidence";
        v8 = 10;
        break;
      case 'e':
        v7 = "Material";
        v8 = 8;
        break;
      case 'd':
        v7 = "Semantic";
        v8 = 8;
        break;
      default:
        v7 = "unknown label";
        v8 = 13;
        break;
    }

    v9 = sub_271120E64(v5, v7, v8);
    sub_271120E64(v9, ", list = ", 9);
    operator new();
  }

  return sub_271120E64(a1, "}", 1);
}

void sub_27134D0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_271130878(&a25);
  v38 = a18;
  a18 = 0;
  if (!v38)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(&a18, v38);
  _Unwind_Resume(a1);
}

uint64_t sub_27134D368(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_271354130(&v19, &v20);
      std::logic_error::logic_error(exception, &v19);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 2);
    if (v6)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 * v6 != -1)
    {
      a5 = a4;
      goto LABEL_27;
    }

    v8 = a4;
    v9 = result;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_26;
      }

      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v17 = *v12;
      v16 = *(v12 + 8);
      v12 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v12 != v13);
LABEL_25:
    if (byte_28087C430)
    {
LABEL_26:
      qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      a5 = v8;
      result = v9;
      goto LABEL_27;
    }

LABEL_29:
    abort();
  }

  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 2);
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if (v7 * v6 == -1)
  {
    v8 = a5;
    v9 = result;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_26;
      }

      v10 = qword_28087C408;
      v11 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v10 = qword_28087C408;
      v11 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v15 = *v10;
      v14 = *(v10 + 8);
      v10 += 16;
      v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    goto LABEL_25;
  }

LABEL_27:
  *a5 = result;
  *(a5 + 8) = (v6 << 32) | 3;
  *(a5 + 16) = (v7 << 32) | 1;
  *(a5 + 24) = v6;
  *(a5 + 28) = v7;
  return result;
}

void sub_27134D660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t *sub_27134D698(uint64_t *result, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  v12 = a5;
  if (a4 == 2)
  {
    v5 = a3 - a2;
    v9 = result[28];
    if (!v9)
    {
LABEL_16:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v7 = v9;
        v10 = *(v9 + 32);
        if (v10 <= a5)
        {
          break;
        }

        v9 = *v7;
        if (!*v7)
        {
          goto LABEL_16;
        }
      }

      if (v10 >= a5)
      {
        break;
      }

      v9 = *(v7 + 8);
      if (!v9)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (a4 != 1)
    {
      __cxa_allocate_exception(0x10uLL);
      sub_271354888(v11, &v12);
    }

    v5 = a3 - a2;
    v6 = result[25];
    if (!v6)
    {
LABEL_9:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v7 = v6;
        v8 = *(v6 + 32);
        if (v8 <= a5)
        {
          break;
        }

        v6 = *v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a5)
      {
        break;
      }

      v6 = *(v7 + 8);
      if (!v6)
      {
        goto LABEL_9;
      }
    }
  }

  *(v7 + 40) = 0;
  *(v7 + 48) = a2;
  *(v7 + 56) = v5;
  return result;
}

void sub_27134D8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if (v22)
    {
LABEL_8:
      __cxa_free_exception(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (v22)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27134D924(uint64_t a1)
{
  sub_27118E634(a1 + 216, *(a1 + 224));
  sub_27118E634(a1 + 192, *(a1 + 200));
  return a1;
}