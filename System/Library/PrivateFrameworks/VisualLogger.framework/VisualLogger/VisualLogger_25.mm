uint64_t sub_27131749C(uint64_t a1)
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

uint64_t sub_27131752C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = (a1 + 24);
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_2713178B8(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 22);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271317864(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713178B8(uint64_t *a1)
{
  v2[0] = *(a1 + 12);
  v11 = &unk_288111528;
  sub_2717D7028(v12, v2);
  v3 = v12[0];
  v2[2] = &unk_288112C18;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_271317B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(v7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271317BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_271317BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271317BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271317C20(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271317C58(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271317CBC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE22EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE22EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE22EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE22EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271317D1C(uint64_t a1, void *a2)
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

void sub_271317F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_271317F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271317F40(uint64_t result)
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

uint64_t sub_271317FB8(uint64_t result)
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

void sub_271318030(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713180E8(uint64_t a1)
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

void sub_27131818C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271318244(uint64_t a1)
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

uint64_t sub_2713182D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_271318660(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 23);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_27131860C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_271318660(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3[14] = &unk_288111478;
  sub_2717C0830(&v2, v3);
  operator new();
}

void sub_2713188CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_271318A3C(va);
  _Unwind_Resume(a1);
}

void sub_2713188E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_271318A3C(va1);
  _Unwind_Resume(a1);
}

void sub_27131891C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271318A3C(va);
  _Unwind_Resume(a1);
}

void sub_271318930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717AD3E8(va);
  _Unwind_Resume(a1);
}

void sub_271318960(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271318998(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2717AD3E8(result);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2713189DC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE23EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE23EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE23EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE23EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_271318A3C(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2717AD3E8(v2);
    MEMORY[0x2743BF050](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

void sub_271318A90(uint64_t a1, void *a2)
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
  *(a1 + 40) = 23;
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

void sub_271318C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_271318C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271318CB4(uint64_t result)
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

uint64_t sub_271318D2C(uint64_t result)
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

void sub_271318DA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271318E5C(uint64_t a1)
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

void sub_271318F00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271318FB8(uint64_t a1)
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

uint64_t sub_271319048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = (a1 + 24);
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_2713193D4(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 24);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271319380(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713193D4(uint64_t *a1)
{
  v2[0] = *(a1 + 12);
  v11 = &unk_2881113C8;
  sub_2717D71EC(v12, v2);
  v3 = v12[0];
  v2[2] = &unk_288112B18;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_2713196A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(v7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_2713196C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_2713196F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271319708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_27131973C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271319774(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2713197D8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE24EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE24EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE24EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE24EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271319838(uint64_t a1, void *a2)
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
  *(a1 + 40) = 24;
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

void sub_271319A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_271319A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271319A5C(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_28810DE38;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v18) = 4;
  HIDWORD(v18) = v10;
  v11 = v10;
  v12 = v18;
  v13 = HIDWORD(v10);
  LODWORD(v19) = 1;
  HIDWORD(v19) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_16:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_28087C430)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v19;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  return a1;
}

void sub_271319C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271319CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271319CB8(uint64_t result)
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

uint64_t sub_271319D30(uint64_t result)
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

void sub_271319DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271319E60(uint64_t a1)
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

void sub_271319F04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271319FBC(uint64_t a1)
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

uint64_t sub_27131A04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = (a1 + 24);
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_27131A3D8(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 25);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_27131A384(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_27131A3D8(size_t *a1)
{
  v2 = *(a1 + 12);
  v3[14] = &unk_2881112D8;
  sub_2717C1094(&v2, v3);
  operator new();
}

void sub_27131A648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27131A664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_271308D7C(va1);
  _Unwind_Resume(a1);
}

void sub_27131A698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27131A6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23)
  {
    free(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_27131A6E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131A718(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27131A77C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE25EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE25EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE25EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE25EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27131A7DC(uint64_t a1, void *a2)
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

void sub_27131A9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_27131A9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27131AA00(uint64_t result)
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

uint64_t sub_27131AA78(uint64_t result)
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

void sub_27131AAF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131ABA8(uint64_t a1)
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

void sub_27131AC4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131AD04(uint64_t a1)
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

uint64_t sub_27131AD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_27131B120(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 26);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_27131B0CC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_27131B120(uint64_t a1)
{
  v2[0] = *(a1 + 12);
  v11 = &unk_288111228;
  sub_2717D73B0(v12, v2);
  v3 = v12[0];
  v2[2] = &unk_288112A18;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_27131B3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(v7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27131B40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_27131B440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27131B454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_27131B488(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131B4C0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27131B524(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE26EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE26EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE26EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE26EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27131B584(uint64_t a1, void *a2)
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
  *(a1 + 40) = 26;
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

void sub_27131B768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_27131B78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27131B7A8(uint64_t result)
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

uint64_t sub_27131B820(uint64_t result)
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

void sub_27131B898(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131B950(uint64_t a1)
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

void sub_27131B9F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131BAAC(uint64_t a1)
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

uint64_t sub_27131BB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_27131BEC8(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 27);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_27131BE74(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_27131BEC8(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3[14] = &unk_288111178;
  sub_2717C1914(&v2, v3);
  operator new();
}

void sub_27131C134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27131C2A4(va);
  _Unwind_Resume(a1);
}

void sub_27131C150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27131C2A4(va1);
  _Unwind_Resume(a1);
}

void sub_27131C184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27131C2A4(va);
  _Unwind_Resume(a1);
}

void sub_27131C198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717B0474(va);
  _Unwind_Resume(a1);
}

void sub_27131C1C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131C200(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2717B0474(result);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27131C244(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE27EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE27EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE27EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE27EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_27131C2A4(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2717B0474(v2);
    MEMORY[0x2743BF050](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

void sub_27131C2F8(uint64_t a1, void *a2)
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
  *(a1 + 40) = 27;
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

void sub_27131C4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_27131C500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27131C51C(uint64_t result)
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

uint64_t sub_27131C594(uint64_t result)
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

void sub_27131C60C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131C6C4(uint64_t a1)
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

void sub_27131C768(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131C820(uint64_t a1)
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

uint64_t sub_27131C8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_27131CC3C(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 28);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_27131CBE8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_27131CC3C(uint64_t a1)
{
  v2[0] = *(a1 + 12);
  v11 = &unk_2881110C8;
  sub_2717D757C(v12, v2);
  v3 = v12[0];
  v2[2] = &unk_288112918;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_27131CF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(v7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27131CF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_27131CF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27131CF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_27131CFA4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131CFDC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27131D040(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE28EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE28EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE28EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE28EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27131D0A0(uint64_t a1, void *a2)
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
  *(a1 + 40) = 28;
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

void sub_27131D284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_27131D2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27131D2C4(uint64_t result)
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

uint64_t sub_27131D33C(uint64_t result)
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

void sub_27131D3B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131D46C(uint64_t a1)
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

void sub_27131D510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131D5C8(uint64_t a1)
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

uint64_t sub_27131D658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = (a1 + 24);
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_27131D9E4(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 29);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_27131D990(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_27131D9E4(size_t *a1)
{
  v2 = *(a1 + 12);
  v3[14] = &unk_288110FF8;
  sub_2717C2188(&v2, v3);
  operator new();
}

void sub_27131DC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27131DC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_271308D7C(va1);
  _Unwind_Resume(a1);
}

void sub_27131DCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27131DCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23)
  {
    free(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_27131DCEC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131DD24(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27131DD88(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE29EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE29EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE29EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE29EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27131DDE8(uint64_t a1, void *a2)
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
  *(a1 + 40) = 29;
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

void sub_27131DFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_27131DFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27131E00C(uint64_t result)
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

uint64_t sub_27131E084(uint64_t result)
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

void sub_27131E0FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131E1B4(uint64_t a1)
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

void sub_27131E258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131E310(uint64_t a1)
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

uint64_t sub_27131E3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_27131E72C(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 30);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_27131E6D8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_27131E72C(uint64_t a1)
{
  v2[0] = *(a1 + 12);
  v11 = &unk_288110E58;
  sub_2717D73B0(v12, v2);
  v3 = v12[0];
  v2[2] = &unk_288112798;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_27131E9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(v7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27131EA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_27131EA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27131EA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_27131EA94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131EACC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27131EB30(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE30EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE30EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE30EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE30EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27131EB90(uint64_t a1, void *a2)
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
  *(a1 + 40) = 30;
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

void sub_27131ED74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_27131ED98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27131EDB4(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_28810DA38;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v18) = 4;
  HIDWORD(v18) = v10;
  v11 = v10;
  v12 = v18;
  v13 = HIDWORD(v10);
  LODWORD(v19) = 1;
  HIDWORD(v19) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_16:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_28087C430)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v19;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  return a1;
}

void sub_27131EFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27131EFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27131F010(uint64_t result)
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

uint64_t sub_27131F088(uint64_t result)
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

void sub_27131F100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131F1B8(uint64_t a1)
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

void sub_27131F25C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131F314(uint64_t a1)
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

uint64_t sub_27131F3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_27131F730(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 31);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_27131F6DC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_27131F730(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3[14] = &unk_288110D68;
  sub_2717C2A08(&v2, v3);
  operator new();
}

void sub_27131F99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27131FB0C(va);
  _Unwind_Resume(a1);
}

void sub_27131F9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27131FB0C(va1);
  _Unwind_Resume(a1);
}

void sub_27131F9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27131FB0C(va);
  _Unwind_Resume(a1);
}

void sub_27131FA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717B34FC(va);
  _Unwind_Resume(a1);
}

void sub_27131FA30(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27131FA68(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2717B34FC(result);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27131FAAC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE31EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE31EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE31EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE31EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_27131FB0C(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2717B34FC(v2);
    MEMORY[0x2743BF050](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

void sub_27131FB60(uint64_t a1, void *a2)
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

void sub_27131FD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_27131FD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27131FD84(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_28810D978;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v18) = 4;
  HIDWORD(v18) = v10;
  v11 = v10;
  v12 = v18;
  v13 = HIDWORD(v10);
  LODWORD(v19) = 1;
  HIDWORD(v19) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_16:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_28087C430)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v19;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  return a1;
}

void sub_27131FFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27131FFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27131FFE0(uint64_t result)
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

uint64_t sub_271320058(uint64_t result)
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

void sub_2713200D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271320188(uint64_t a1)
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

void sub_27132022C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713202E4(uint64_t a1)
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

uint64_t sub_271320374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_271320700(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 32);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_2713206AC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_271320700(uint64_t a1)
{
  v2[0] = *(a1 + 12);
  v11 = &unk_288110C78;
  sub_2717D757C(v12, v2);
  v3 = v12[0];
  v2[2] = &unk_288112698;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_2713209D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(v7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_2713209EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_271320A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271320A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271320A68(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271320AA0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271320B04(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE32EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE32EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE32EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE32EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271320B64(uint64_t a1, void *a2)
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

void sub_271320D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_271320D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271320D88(uint64_t result)
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

uint64_t sub_271320E00(uint64_t result)
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

void sub_271320E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271320F30(uint64_t a1)
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

void sub_271320FD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27132108C(uint64_t a1)
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

uint64_t sub_27132111C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = (a1 + 24);
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_2713214A8(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 33);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271321454(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713214A8(size_t *a1)
{
  v2 = *(a1 + 12);
  v3[14] = &unk_288110BA8;
  sub_2717C327C(&v2, v3);
  operator new();
}

void sub_271321718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271321734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_271308D7C(va1);
  _Unwind_Resume(a1);
}

void sub_271321768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27132177C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23)
  {
    free(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713217B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713217E8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27132184C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE33EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE33EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE33EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE33EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2713218AC(uint64_t a1, void *a2)
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
  *(a1 + 40) = 33;
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

void sub_271321A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_271321AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271321AD0(uint64_t result)
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

uint64_t sub_271321B48(uint64_t result)
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

void sub_271321BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271321C78(uint64_t a1)
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

void sub_271321D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271321DD4(uint64_t a1)
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

uint64_t sub_271321E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_2713221F0(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 34);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_27132219C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713221F0(uint64_t a1)
{
  v2[0] = *(a1 + 12);
  v11 = &unk_288110AF8;
  sub_2717D73B0(v12, v2);
  v3 = v12[0];
  v2[2] = &unk_288112598;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_2713224C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(v7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_2713224DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_271322510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271322524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271322558(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271322590(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2713225F4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271322654(uint64_t a1, void *a2)
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
  *(a1 + 40) = 34;
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

void sub_271322838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_27132285C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271322878(uint64_t result)
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

uint64_t sub_2713228F0(uint64_t result)
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

void sub_271322968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271322A20(uint64_t a1)
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

void sub_271322AC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271322B7C(uint64_t a1)
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

uint64_t sub_271322C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_271322F98(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 35);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271322F44(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_271322F98(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3[14] = &unk_288110A48;
  sub_2717C3AFC(&v2, v3);
  operator new();
}

void sub_271323204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_271323374(va);
  _Unwind_Resume(a1);
}

void sub_271323220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_271323374(va1);
  _Unwind_Resume(a1);
}

void sub_271323254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271323374(va);
  _Unwind_Resume(a1);
}

void sub_271323268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717B6584(va);
  _Unwind_Resume(a1);
}

void sub_271323298(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713232D0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2717B6584(result);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271323314(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_271323374(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2717B6584(v2);
    MEMORY[0x2743BF050](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

void sub_2713233C8(uint64_t a1, void *a2)
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
  *(a1 + 40) = 35;
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

void sub_2713235AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_2713235D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_2713235EC(uint64_t result)
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

uint64_t sub_271323664(uint64_t result)
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

void sub_2713236DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271323794(uint64_t a1)
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

void sub_271323838(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713238F0(uint64_t a1)
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

uint64_t sub_271323980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_271323D0C(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 36);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271323CB8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_271323D0C(uint64_t a1)
{
  v2[0] = *(a1 + 12);
  v11 = &unk_288110998;
  sub_2717D757C(v12, v2);
  v3 = v12[0];
  v2[2] = &unk_288112498;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_271323FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(v7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271323FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_27132402C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271324040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271324074(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713240AC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271324110(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271324170(uint64_t a1, void *a2)
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
  *(a1 + 40) = 36;
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

void sub_271324354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_271324378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271324394(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_28810D6B8;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v18) = 4;
  HIDWORD(v18) = v10;
  v11 = v10;
  v12 = v18;
  v13 = HIDWORD(v10);
  LODWORD(v19) = 1;
  HIDWORD(v19) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_16:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_28087C430)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v19;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2713245C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2713245DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713245F0(uint64_t result)
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

uint64_t sub_271324668(uint64_t result)
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

void sub_2713246E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271324798(uint64_t a1)
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

void sub_27132483C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713248F4(uint64_t a1)
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

uint64_t sub_271324984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = (a1 + 24);
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_271324D10(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 37);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271324CBC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_271324D10(size_t *a1)
{
  v2 = *(a1 + 12);
  v3[14] = &unk_2881108A8;
  sub_2717C4370(&v2, v3);
  operator new();
}

void sub_271324F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271324F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_271308D7C(va1);
  _Unwind_Resume(a1);
}

void sub_271324FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271324FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23)
  {
    free(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_271325018(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271325050(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2713250B4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE37EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE37EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE37EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE37EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271325114(uint64_t a1, void *a2)
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

void sub_2713252F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_27132531C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271325338(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_28810D5F8;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v18) = 4;
  HIDWORD(v18) = v10;
  v11 = v10;
  v12 = v18;
  v13 = HIDWORD(v10);
  LODWORD(v19) = 1;
  HIDWORD(v19) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_16:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_28087C430)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v19;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  return a1;
}

void sub_27132556C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271325580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271325594(uint64_t result)
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

uint64_t sub_27132560C(uint64_t result)
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

void sub_271325684(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27132573C(uint64_t a1)
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

void sub_2713257E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271325898(uint64_t a1)
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

uint64_t sub_271325928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_271325CB4(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 38);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271325C60(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_271325CB4(uint64_t a1)
{
  v2[0] = *(a1 + 12);
  v11 = &unk_2881107B8;
  sub_2717D73B0(v12, v2);
  v3 = v12[0];
  v2[2] = &unk_288112398;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_271325F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(v7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271325FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_271325FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271325FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_27132601C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271326054(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2713260B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE38EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE38EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE38EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE38EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271326118(uint64_t a1, void *a2)
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

void sub_2713262FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_271326320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27132633C(uint64_t result)
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

uint64_t sub_2713263B4(uint64_t result)
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

void sub_27132642C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713264E4(uint64_t a1)
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

void sub_271326588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271326640(uint64_t a1)
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

uint64_t sub_2713266D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_271326A5C(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 39);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271326A08(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_271326A5C(uint64_t a1)
{
  v2 = *(a1 + 12);
  v3[14] = &unk_288110708;
  sub_2717C4BF0(&v2, v3);
  operator new();
}

void sub_271326CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_271326E38(va);
  _Unwind_Resume(a1);
}

void sub_271326CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_271326E38(va1);
  _Unwind_Resume(a1);
}

void sub_271326D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271326E38(va);
  _Unwind_Resume(a1);
}

void sub_271326D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2717B960C(va);
  _Unwind_Resume(a1);
}

void sub_271326D5C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271326D94(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2717B960C(result);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271326DD8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE39EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE39EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE39EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE39EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_271326E38(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2717B960C(v2);
    MEMORY[0x2743BF050](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

void sub_271326E8C(uint64_t a1, void *a2)
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
  *(a1 + 40) = 39;
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

void sub_271327070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_271327094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_2713270B0(uint64_t result)
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

uint64_t sub_271327128(uint64_t result)
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

void sub_2713271A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271327258(uint64_t a1)
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

void sub_2713272FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713273B4(uint64_t a1)
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

uint64_t sub_271327444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_2713277D0(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 40);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_27132777C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713277D0(uint64_t a1)
{
  v2[0] = *(a1 + 12);
  v11 = &unk_288110568;
  sub_2717D757C(v12, v2);
  v3 = v12[0];
  v2[2] = &unk_288112218;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_271327AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(v7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271327ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_271327AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271327B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271327B38(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271327B70(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271327BD4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE40EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE40EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE40EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE40EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271327C34(uint64_t a1, void *a2)
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
  *(a1 + 40) = 40;
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

void sub_271327E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_271327E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void *sub_271327E68(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_271328174(a2, v3);
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

void sub_271327F68(uint64_t *a1, uint64_t a2)
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
    (off_288130910[v9])(&v10, v2);
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

void sub_271328128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271328174(uint64_t a1, const char *a2)
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

void sub_271328310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void *sub_271328334(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_271328640(a2, v3);
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

void sub_271328434(uint64_t *a1, uint64_t a2)
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
    (off_288130910[v9])(&v10, v2);
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

void sub_2713285F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271328640(uint64_t a1, const char *a2)
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

void sub_2713287DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_271328808(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = **v1;
  v3 = *(v1 + 24);
  v4[0] = *(v1 + 8);
  v4[1] = v3;
  v5 = *(v1 + 40);
  sub_27132884C(v2, v4);
}

void sub_27132884C(int a1, int **a2)
{
  v159[2] = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 0:
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 33:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      v3 = **a2;
      if (v3 == 1)
      {
        v86 = a2[2];
        *&v131 = &unk_288114498;
        sub_271331834(&v117, v86);
      }

      if (!v3)
      {
        v4 = a2[2];
        *&v148 = &unk_288114498;
        v159[0] = &unk_2881117F8;
        LODWORD(v5) = *v4;
        v6 = v4[1];
        v7 = *v4 != 0;
        if (*v4 <= 0x20)
        {
          LODWORD(v5) = 32;
        }

        v8 = *v4;
        *&v131 = &unk_288116190;
        if (v6)
        {
          v5 = v5;
        }

        else
        {
          v5 = 32;
        }

        v117 = v8;
        *&v118 = v7 | (v5 << 32);
        sub_27154547C(&v131, 0, 1, &v117, 0);
        *&v131 = &unk_288116190;
        operator new();
      }

      sub_2712D6134(a2[2], *a2[4], &v131);
      if (v141)
      {
        v107 = a2[2];
        v108 = *a2[3];
        LODWORD(v119) = *a2[4];
        sub_27130440C(&v117, v108, v107, &v119);
        *&v148 = &unk_28810F6B8;
        sub_271331B00(&v148 + 8, &v117);
      }

      v119 = v131;
      LOBYTE(v120) = 0;
      v128 = 0;
      if (v140 == 1)
      {
        sub_27112F6CC(&v120, v132);
        v128 = 1;
      }

      goto LABEL_179;
    case 2:
      v55 = **a2;
      if (v55 == 1)
      {
        v87 = a2[2];
        *&v131 = &unk_288113ED8;
        sub_271332704(&v117, v87);
      }

      if (!v55)
      {
        v56 = a2[2];
        *&v148 = &unk_288113ED8;
        v159[0] = &unk_288110F48;
        LODWORD(v57) = *v56;
        v58 = v56[1];
        v59 = *v56 != 0;
        if (*v56 <= 0x10)
        {
          LODWORD(v57) = 16;
        }

        v60 = *v56;
        *&v131 = &unk_288115F50;
        if (v58)
        {
          v57 = v57;
        }

        else
        {
          v57 = 16;
        }

        v117 = v60;
        *&v118 = v59 | (v57 << 32);
        sub_27154DDA4(&v131, 0, 2, &v117, 0);
        *&v131 = &unk_288115F50;
        operator new();
      }

      sub_2712DA1A4(*a2[3], a2[2], *a2[4], &v131);
      if (v141)
      {
        v109 = a2[2];
        v110 = *a2[3];
        LODWORD(v119) = *a2[4];
        sub_271305334(&v117, v110, v109, &v119);
        *&v148 = &unk_28810F1B8;
        sub_2713329D0(&v148 + 8, &v117);
      }

      v119 = v131;
      LOBYTE(v120) = 0;
      v128 = 0;
      if (v140 == 1)
      {
        sub_27112F6CC(&v120, v132);
        v128 = 1;
      }

      goto LABEL_179;
    case 3:
      v35 = **a2;
      if (v35 == 1)
      {
        v82 = a2[2];
        *&v131 = &unk_288113858;
        sub_2713335D4(&v117, v82);
      }

      if (!v35)
      {
        v36 = a2[2];
        *&v148 = &unk_288113858;
        v159[0] = &unk_288110658;
        LODWORD(v37) = *v36;
        v38 = v36[1];
        v39 = *v36 != 0;
        if (*v36 <= 0x10)
        {
          LODWORD(v37) = 16;
        }

        v40 = *v36;
        *&v131 = &unk_288115C80;
        if (v38)
        {
          v37 = v37;
        }

        else
        {
          v37 = 16;
        }

        v117 = v40;
        *&v118 = v39 | (v37 << 32);
        sub_271553E98(&v131, 0, 3, &v117, 0);
        *&v131 = &unk_288115C80;
        operator new();
      }

      sub_2712DAF50(*a2[3], a2[2], *a2[4], &v131);
      if (v141)
      {
        v99 = a2[2];
        v100 = *a2[3];
        LODWORD(v119) = *a2[4];
        sub_27130621C(&v117, v100, v99, &v119);
        *&v148 = &unk_28810EC38;
        sub_2713338A0(&v148 + 8, &v117);
      }

      v119 = v131;
      LOBYTE(v120) = 0;
      v128 = 0;
      if (v140 == 1)
      {
        sub_27112F6CC(&v120, v132);
        v128 = 1;
      }

      goto LABEL_179;
    case 4:
      v47 = **a2;
      if (v47 == 1)
      {
        v84 = a2[2];
        *&v131 = &unk_288113718;
        sub_27133485C(&v117, v84);
      }

      if (!v47)
      {
        v48 = a2[2];
        *&v148 = &unk_288113718;
        v159[0] = &unk_2881104B8;
        LODWORD(v49) = *v48;
        v50 = v48[1];
        v51 = *v48 != 0;
        if (*v48 <= 8)
        {
          LODWORD(v49) = 8;
        }

        v52 = *v48;
        *&v131 = &unk_288115BF0;
        if (v50)
        {
          v49 = v49;
        }

        else
        {
          v49 = 8;
        }

        v117 = v52;
        *&v118 = v51 | (v49 << 32);
        sub_271559F7C(&v131, 0, 4, &v117, 0.0);
        *&v131 = &unk_288115BF0;
        operator new();
      }

      sub_2712DBCFC(*a2[3], a2[2], *a2[4], &v131);
      if (v141)
      {
        v103 = a2[2];
        v104 = *a2[3];
        LODWORD(v119) = *a2[4];
        sub_271307114(&v117, v104, v103, &v119);
        *&v148 = &unk_28810EB38;
        sub_271334B28(&v148 + 8, &v117);
      }

      v119 = v131;
      LOBYTE(v120) = 0;
      v128 = 0;
      if (v140 == 1)
      {
        sub_27112F6CC(&v120, v132);
        v128 = 1;
      }

LABEL_179:
      sub_2712CD070(a2[1], &v119);
      if (v128 == 1)
      {
        if (v127 == 1)
        {
          if (v126 < 0)
          {
            operator delete(__p);
          }

          if (v124 < 0)
          {
            operator delete(v123);
          }
        }

        if (v122 == 1 && v121 < 0)
        {
          operator delete(v120);
        }
      }

      if ((v141 & 1) == 0 && v140 == 1)
      {
        if (v139 == 1)
        {
          if (v138 < 0)
          {
            operator delete(v137);
          }

          if (v136 < 0)
          {
            operator delete(v135);
          }
        }

        if (v134 == 1 && v133 < 0)
        {
          operator delete(v132[0]);
        }
      }

      return;
    case 5:
      v21 = **a2;
      if (v21 == 1)
      {
        v77 = a2[2];
        *&v131 = &unk_288113618;
        sub_27133572C(&v142, v77);
      }

      if (!v21)
      {
        v22 = a2[2];
        LOBYTE(v130) = 0;
        *&v148 = &unk_288113618;
        v129 = &unk_2881103C8;
        sub_27157106C(v22, &v130, &v131);
        operator new();
      }

      sub_2712DCAB0(a2[2], *a2[4], &v148);
      if (v158)
      {
        v90 = a2[2];
        v91 = *a2[3];
        LODWORD(v119) = *a2[4];
        sub_271307FFC(&v142, v91, v90, &v119);
        *&v131 = &unk_28810EA78;
        sub_271335A80(&v131 + 8, &v142);
      }

      v119 = v148;
      LOBYTE(v120) = 0;
      v128 = 0;
      if (v157 == 1)
      {
        sub_27112F6CC(&v120, &v149);
        v128 = 1;
      }

      goto LABEL_206;
    case 7:
      v29 = **a2;
      if (v29 == 1)
      {
        v81 = a2[2];
        *&v131 = &unk_2881134D8;
        sub_271336728(&v142, v81);
      }

      if (!v29)
      {
        v30 = a2[2];
        *&v148 = &unk_2881134D8;
        v130 = &unk_288110228;
        v31 = v30[1];
        v32 = 2 * (*v30 != 0);
        LODWORD(v33) = v32 * *v30;
        if (v33 <= 0x10)
        {
          LODWORD(v33) = 16;
        }

        v34 = *v30;
        *&v131 = &unk_288115AD0;
        if (v31)
        {
          v33 = v33;
        }

        else
        {
          v33 = 16;
        }

        v143 = v34;
        v142 = 2;
        LODWORD(v159[0]) = 1;
        *(v159 + 4) = v32 & 0x1FFFFFFFFLL | ((v33 >> 1) << 33);
        v144 = v159[0];
        v145 = v33;
        v146 = v34;
        v147 = *(v159 + 4);
        sub_271556084(&v131, 0, 7, &v142, 0);
        *&v131 = &unk_288115AD0;
        operator new();
      }

      sub_2712DE480(*a2[3], a2[2], *a2[4], &v148);
      if (v158)
      {
        v97 = a2[2];
        v98 = *a2[3];
        LODWORD(v119) = *a2[4];
        sub_271309DA0(&v142, v98, v97, &v119);
        *&v131 = &unk_28810E978;
        sub_271336A7C(&v131 + 8, &v142);
      }

      v119 = v148;
      LOBYTE(v120) = 0;
      v128 = 0;
      if (v157 == 1)
      {
        sub_27112F6CC(&v120, &v149);
        v128 = 1;
      }

      goto LABEL_206;
    case 8:
      v69 = **a2;
      if (v69 == 1)
      {
        v96 = a2[2];
        *&v131 = &unk_2881133D8;
        sub_271337734(&v142, v96);
      }

      if (!v69)
      {
        v70 = a2[2];
        *&v148 = &unk_2881133D8;
        v130 = &unk_288110138;
        v71 = v70[1];
        v72 = 2 * (*v70 != 0);
        LODWORD(v73) = v72 * *v70;
        if (v73 <= 8)
        {
          LODWORD(v73) = 8;
        }

        v74 = *v70;
        *&v131 = &unk_288115A40;
        if (v71)
        {
          v73 = v73;
        }

        else
        {
          v73 = 8;
        }

        v143 = v74;
        v142 = 2;
        LODWORD(v159[0]) = 1;
        *(v159 + 4) = v72 & 0x1FFFFFFFFLL | ((v73 >> 1) << 33);
        v144 = v159[0];
        v145 = v73;
        v146 = v74;
        v147 = *(v159 + 4);
        sub_27155C168(&v131, 0, 8, &v142, 0.0);
        *&v131 = &unk_288115A40;
        operator new();
      }

      sub_2712DF238(*a2[3], a2[2], *a2[4], &v148);
      if (v158)
      {
        v115 = a2[2];
        v116 = *a2[3];
        LODWORD(v119) = *a2[4];
        sub_27130AD70(&v142, v116, v115, &v119);
        *&v131 = &unk_28810E8B8;
        sub_271337A88(&v131 + 8, &v142);
      }

      v119 = v148;
      LOBYTE(v120) = 0;
      v128 = 0;
      if (v157 == 1)
      {
        sub_27112F6CC(&v120, &v149);
        v128 = 1;
      }

      goto LABEL_206;
    case 21:
      v23 = **a2;
      if (v23 == 1)
      {
        v78 = a2[2];
        *&v131 = &unk_288114358;
        sub_271338730(&v142, v78);
      }

      if (!v23)
      {
        v24 = a2[2];
        *&v148 = &unk_288114358;
        v130 = &unk_288111658;
        v25 = v24[1];
        if (*v24)
        {
          v26 = 3;
        }

        else
        {
          v26 = 0;
        }

        LODWORD(v27) = v26 * *v24;
        if (v27 <= 0x20)
        {
          LODWORD(v27) = 32;
        }

        v28 = *v24;
        *&v131 = &unk_288116100;
        if (v25)
        {
          v27 = v27;
        }

        else
        {
          v27 = 32;
        }

        v143 = v28;
        v142 = 3;
        LODWORD(v159[0]) = 1;
        *(v159 + 4) = v26 | (v27 << 32);
        v144 = v159[0];
        v145 = v27;
        v146 = v28;
        v147 = *(v159 + 4);
        sub_271549C34(&v131, 0, 21, &v142, 0);
        *&v131 = &unk_288116100;
        operator new();
      }

      sub_2712EA078(a2[2], *a2[4], &v148);
      if (v158)
      {
        v92 = a2[2];
        v93 = *a2[3];
        LODWORD(v119) = *a2[4];
        sub_271315F98(&v142, v93, v92, &v119);
        *&v131 = &unk_28810F5B8;
        sub_271338A7C(&v131 + 8, &v142);
      }

      v119 = v148;
      LOBYTE(v120) = 0;
      v128 = 0;
      if (v157 == 1)
      {
        sub_27112F6CC(&v120, &v149);
        v128 = 1;
      }

      goto LABEL_206;
    case 22:
      v63 = **a2;
      if (v63 == 1)
      {
        v95 = a2[2];
        *&v131 = &unk_288114258;
        sub_27133971C(&v142, v95);
      }

      if (!v63)
      {
        v64 = a2[2];
        *&v148 = &unk_288114258;
        v130 = &unk_288111568;
        v65 = v64[1];
        if (*v64)
        {
          v66 = 3;
        }

        else
        {
          v66 = 0;
        }

        LODWORD(v67) = v66 * *v64;
        if (v67 <= 0x10)
        {
          LODWORD(v67) = 16;
        }

        v68 = *v64;
        *&v131 = &unk_288116070;
        if (v65)
        {
          v67 = v67;
        }

        else
        {
          v67 = 16;
        }

        v143 = v68;
        v142 = 3;
        LODWORD(v159[0]) = 1;
        *(v159 + 4) = v66 | (v67 << 32);
        v144 = v159[0];
        v145 = v67;
        v146 = v68;
        v147 = *(v159 + 4);
        sub_27154FF94(&v131, 0, 22, &v142, 0);
        *&v131 = &unk_288116070;
        operator new();
      }

      sub_2712EAC9C(*a2[3], a2[2], *a2[4], &v148);
      if (v158)
      {
        v113 = a2[2];
        v114 = *a2[3];
        LODWORD(v119) = *a2[4];
        sub_271316F3C(&v142, v114, v113, &v119);
        *&v131 = &unk_28810F4F8;
        sub_271339A68(&v131 + 8, &v142);
      }

      v119 = v148;
      LOBYTE(v120) = 0;
      v128 = 0;
      if (v157 == 1)
      {
        sub_27112F6CC(&v120, &v149);
        v128 = 1;
      }

      goto LABEL_206;
    case 25:
      v61 = **a2;
      if (v61 == 1)
      {
        v94 = a2[2];
        *&v131 = &unk_2881140D8;
        sub_27133A708(&v142, v94);
      }

      if (!v61)
      {
        v62 = a2[2];
        LOBYTE(v130) = 0;
        *&v148 = &unk_2881140D8;
        v129 = &unk_288111318;
        sub_2715711F4(v62, &v130, &v131);
        operator new();
      }

      sub_2712ED61C(a2[2], *a2[4], &v148);
      if (v158)
      {
        v111 = a2[2];
        v112 = *a2[3];
        LODWORD(v119) = *a2[4];
        sub_271319A5C(&v142, v112, v111, &v119);
        *&v131 = &unk_28810F3B8;
        sub_27133AA5C(&v131 + 8, &v142);
      }

      v119 = v148;
      LOBYTE(v120) = 0;
      v128 = 0;
      if (v157 == 1)
      {
        sub_27112F6CC(&v120, &v149);
        v128 = 1;
      }

      goto LABEL_206;
    case 31:
      v41 = **a2;
      if (v41 == 1)
      {
        v83 = a2[2];
        *&v131 = &unk_288113D98;
        sub_27133B704(&v142, v83);
      }

      if (!v41)
      {
        v42 = a2[2];
        *&v148 = &unk_288113D98;
        v130 = &unk_288110DA8;
        v43 = v42[1];
        v44 = 4 * (*v42 != 0);
        LODWORD(v45) = v44 * *v42;
        if (v45 <= 0x10)
        {
          LODWORD(v45) = 16;
        }

        v46 = *v42;
        *&v131 = &unk_288115EC0;
        if (v43)
        {
          v45 = v45;
        }

        else
        {
          v45 = 16;
        }

        v143 = v46;
        v142 = 4;
        LODWORD(v159[0]) = 1;
        *(v159 + 4) = v44 & 0x3FFFFFFFFLL | ((v45 >> 2) << 34);
        v144 = v159[0];
        v145 = v45;
        v146 = v46;
        v147 = *(v159 + 4);
        sub_271557E9C(&v131, 0, 31, &v142, 0);
        *&v131 = &unk_288115EC0;
        operator new();
      }

      sub_2712F2520(*a2[3], a2[2], *a2[4], &v148);
      if (v158)
      {
        v101 = a2[2];
        v102 = *a2[3];
        LODWORD(v119) = *a2[4];
        sub_27131EDB4(&v142, v102, v101, &v119);
        *&v131 = &unk_28810F0B8;
        sub_27133BA58(&v131 + 8, &v142);
      }

      v119 = v148;
      LOBYTE(v120) = 0;
      v128 = 0;
      if (v157 == 1)
      {
        sub_27112F6CC(&v120, &v149);
        v128 = 1;
      }

      goto LABEL_206;
    case 32:
      v15 = **a2;
      if (v15 == 1)
      {
        v76 = a2[2];
        *&v131 = &unk_288113C98;
        sub_27133C710(&v142, v76);
      }

      if (!v15)
      {
        v16 = a2[2];
        *&v148 = &unk_288113C98;
        v130 = &unk_288110CB8;
        v17 = v16[1];
        v18 = 4 * (*v16 != 0);
        LODWORD(v19) = v18 * *v16;
        if (v19 <= 8)
        {
          LODWORD(v19) = 8;
        }

        v20 = *v16;
        *&v131 = &unk_288115E30;
        if (v17)
        {
          v19 = v19;
        }

        else
        {
          v19 = 8;
        }

        v143 = v20;
        v142 = 4;
        LODWORD(v159[0]) = 1;
        *(v159 + 4) = v18 & 0x3FFFFFFFFLL | ((v19 >> 2) << 34);
        v144 = v159[0];
        v145 = v19;
        v146 = v20;
        v147 = *(v159 + 4);
        sub_27155E308(&v131, 0, 32, &v142, 0.0);
        *&v131 = &unk_288115E30;
        operator new();
      }

      sub_2712F32D8(*a2[3], a2[2], *a2[4], &v148);
      if (v158)
      {
        v88 = a2[2];
        v89 = *a2[3];
        LODWORD(v119) = *a2[4];
        sub_27131FD84(&v142, v89, v88, &v119);
        *&v131 = &unk_28810EFF8;
        sub_27133CA64(&v131 + 8, &v142);
      }

      v119 = v148;
      LOBYTE(v120) = 0;
      v128 = 0;
      if (v157 == 1)
      {
        sub_27112F6CC(&v120, &v149);
        v128 = 1;
      }

      goto LABEL_206;
    case 37:
      v53 = **a2;
      if (v53 == 1)
      {
        v85 = a2[2];
        *&v131 = &unk_288113A98;
        sub_27133D92C(&v142, v85);
      }

      if (!v53)
      {
        v54 = a2[2];
        LOBYTE(v130) = 0;
        *&v148 = &unk_288113A98;
        v129 = &unk_2881108E8;
        sub_27157137C(v54, &v130, &v131);
        operator new();
      }

      sub_2712F75D0(a2[2], *a2[4], &v148);
      if (v158)
      {
        v105 = a2[2];
        v106 = *a2[3];
        LODWORD(v119) = *a2[4];
        sub_271324394(&v142, v106, v105, &v119);
        *&v131 = &unk_28810EDF8;
        sub_27133DC80(&v131 + 8, &v142);
      }

      v119 = v148;
      LOBYTE(v120) = 0;
      v128 = 0;
      if (v157 == 1)
      {
        sub_27112F6CC(&v120, &v149);
        v128 = 1;
      }

      goto LABEL_206;
    case 38:
      v9 = **a2;
      if (v9 == 1)
      {
        v75 = a2[2];
        *&v131 = &unk_288113998;
        sub_27133E928(&v142, v75);
      }

      if (!v9)
      {
        v10 = a2[2];
        *&v148 = &unk_288113998;
        v130 = &unk_2881107F8;
        v11 = v10[1];
        v12 = 4 * (*v10 != 0);
        LODWORD(v13) = v12 * *v10;
        if (v13 <= 0x10)
        {
          LODWORD(v13) = 16;
        }

        v14 = *v10;
        *&v131 = &unk_288115D10;
        if (v11)
        {
          v13 = v13;
        }

        else
        {
          v13 = 16;
        }

        v143 = v14;
        v142 = 4;
        LODWORD(v159[0]) = 1;
        *(v159 + 4) = v12 & 0x3FFFFFFFFLL | ((v13 >> 2) << 34);
        v144 = v159[0];
        v145 = v13;
        v146 = v14;
        v147 = *(v159 + 4);
        sub_2715520B8(&v131, 0, 38, &v142, 0);
        *&v131 = &unk_288115D10;
        operator new();
      }

      sub_2712F81E0(*a2[3], a2[2], *a2[4], &v148);
      if (v158)
      {
        v79 = a2[2];
        v80 = *a2[3];
        LODWORD(v119) = *a2[4];
        sub_271325338(&v142, v80, v79, &v119);
        *&v131 = &unk_28810ED38;
        sub_27133EC7C(&v131 + 8, &v142);
      }

      v119 = v148;
      LOBYTE(v120) = 0;
      v128 = 0;
      if (v157 == 1)
      {
        sub_27112F6CC(&v120, &v149);
        v128 = 1;
      }

LABEL_206:
      sub_2712CD070(a2[1], &v119);
      if (v128 == 1)
      {
        if (v127 == 1)
        {
          if (v126 < 0)
          {
            operator delete(__p);
          }

          if (v124 < 0)
          {
            operator delete(v123);
          }
        }

        if (v122 == 1 && v121 < 0)
        {
          operator delete(v120);
        }
      }

      if ((v158 & 1) == 0 && v157 == 1)
      {
        if (v156 == 1)
        {
          if (v155 < 0)
          {
            operator delete(v154);
          }

          if (v153 < 0)
          {
            operator delete(v152);
          }
        }

        if (v151 == 1 && v150 < 0)
        {
          operator delete(v149);
        }
      }

      break;
    default:
      return;
  }
}

void sub_271330040(_Unwind_Exception *a1)
{
  sub_27112D66C(v1 + 16);
  sub_27112E024(v2 - 232);
  _Unwind_Resume(a1);
}

void sub_2713300A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2713315A4(uint64_t result)
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

__n128 sub_271331634(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288115A20;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

__n128 sub_271331664(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v2 = &unk_2881152B0;
  return result;
}

__n128 sub_271331694(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v2 = &unk_288115290;
  return result;
}

__n128 sub_2713316C4(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  *a2 = 0uLL;
  return result;
}

void sub_2713316D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 2, (a1 + 5), 2, 1);
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
  *(a2 + 40) = 1;
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

void sub_271331820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271331834(uint64_t *a1, _DWORD *a2)
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
  v5[8] = &unk_2881117F8;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_27155F860(v5, v6);
  operator new();
}

void sub_2713319A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715455A0(va);
  _Unwind_Resume(a1);
}

void sub_2713319B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271331A70(uint64_t a1)
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

void sub_271331B00(uint64_t a1, uint64_t a2)
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
    sub_271331834(&v13, &v18);
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
  v18 = &unk_2881117F8;
  v11 = 0x100000000;
  if (v10 > 0x100000000)
  {
    v11 = v10;
  }

  v13 = v10;
  v14 = (v10 != 0) | (v11 << 32);
  sub_27155F860(&v16, &v13);
  operator new();
}

void sub_271332208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(v11);
  sub_2711FF004(va);
  _Unwind_Resume(a1);
}

void sub_271332224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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
  sub_2711FF004(va1);
  _Unwind_Resume(a1);
}

void sub_271332250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2711FF004(va);
  _Unwind_Resume(a1);
}

void sub_271332264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2715455A0(va);
  _Unwind_Resume(a1);
}

void sub_271332278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2711FF004(va);
  _Unwind_Resume(a1);
}

void sub_27133228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27112F828(v14);
  sub_27112F828(va);
  sub_27112F828(&a9);
  sub_2711FF004(&a14);
  _Unwind_Resume(a1);
}

void sub_2713322B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2711FF004(va);
  _Unwind_Resume(a1);
}

void sub_2713322CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2713322E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2711FF004(va);
  _Unwind_Resume(a1);
}

void sub_2713322F4(uint64_t a1, void *a2)
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
  sub_2717F1B04(&v9, (a2 + 8), 2, (a2 + 9), 2, 1);
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
  *(a1 + 40) = 1;
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