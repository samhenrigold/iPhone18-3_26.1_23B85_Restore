void sub_2712E4EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E4ECC(void *result)
{
  *result = &unk_288114658;
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

void sub_2712E4F60(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 2;
  v9 = a3;
  v7 = 8;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      v6 = 15;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 7) != 0)
    {
      v6 = 15;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if (a1)
    {
      v6 = 15;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712E548C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E5504(void *result)
{
  *result = &unk_288114618;
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

uint64_t *sub_2712E5598(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F080[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E5640(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288114618;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 15);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E5858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E5874(void *a1)
{
  *a1 = &unk_288114618;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E5948(uint64_t a1)
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

void sub_2712E59DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E5A14(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F080[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E5ACC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE15EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE15EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE15EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE15EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E5B2C(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 15;
  *(a1 + 44) = 0;
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

void sub_2712E5C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E5C84(void *result)
{
  *result = &unk_288114618;
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

void sub_2712E5D18(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 4;
  v9 = a3;
  v7 = 16;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (16 * *a2 > a3)
    {
      v5 = 16 * *a2;
      v6 = 16;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 0xF) != 0)
    {
      v6 = 16;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if ((a1 & 3) != 0)
    {
      v6 = 16;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712E6248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E62C0(void *result)
{
  *result = &unk_2881145D8;
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

uint64_t *sub_2712E6354(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F0A0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E63FC(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_2881145D8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 16);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E6614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E6630(void *a1)
{
  *a1 = &unk_2881145D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E6704(uint64_t a1)
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

void sub_2712E6798(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E67D0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F0A0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E6888(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE16EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE16EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE16EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE16EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E68E8(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 16;
  *(a1 + 44) = 0;
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

void sub_2712E6A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E6A40(void *result)
{
  *result = &unk_2881145D8;
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

void sub_2712E6AD4(unsigned int *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = 3;
  v7 = a2;
  if (*a1)
  {
    v3 = a1[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (3 * *a1 > a2)
    {
      v4 = 3 * *a1;
      v5 = 17;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ", a1, " and pixel format ", &v5, ". It must be at least: pixel byte size (", &v6, ") x width (", a1, ") = ", &v4, ".");
    }

    if (-1431655765 * a2 >= 0x55555556)
    {
      v5 = 17;
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ", &v5, ". It must be a multiple of the pixel byte size (", &v6, ").");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712E6E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E6EE4(void *result)
{
  *result = &unk_288114598;
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

uint64_t *sub_2712E6F78(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F0C0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E7020(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288114598;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 17);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E7238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E7254(void *a1)
{
  *a1 = &unk_288114598;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E7328(uint64_t a1)
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

void sub_2712E73BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E73F4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F0C0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E74AC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE17EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE17EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE17EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE17EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E750C(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 17;
  *(a1 + 44) = 0;
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

void sub_2712E7650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E7664(void *result)
{
  *result = &unk_288114598;
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

void sub_2712E76F8(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v11 = a1;
  v9 = 2;
  v10 = a3;
  v8 = 6;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (6 * *a2 > a3)
    {
      v6 = 6 * *a2;
      v7 = 18;
      sub_2712D669C("Image row byte stride ", &v10, " is invalid for the given size ", a2, " and pixel format ", &v7, ". It must be at least: pixel byte size (", &v8, ") x width (", a2, ") = ", &v6, ".");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 1) >= 0x2AAAAAAB)
    {
      v7 = 18;
      sub_2712D6B3C("Image row byte stride ", &v10, " is invalid for pixel format ", &v7, ". It must be a multiple of the pixel byte size (", &v8, ").");
    }

    if (a1)
    {
      v7 = 18;
      sub_2712D6E10("Image base address ", &v11, " is invalid for pixel format ", &v7, ". It must be aligned with the value type size (", &v9, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712E7C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E7CB8(void *result)
{
  *result = &unk_288114558;
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

uint64_t *sub_2712E7D4C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F0E0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E7DF4(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288114558;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 18);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E800C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E8028(void *a1)
{
  *a1 = &unk_288114558;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E80FC(uint64_t a1)
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

void sub_2712E8190(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E81C8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F0E0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E8280(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE18EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE18EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE18EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE18EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E82E0(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 18;
  *(a1 + 44) = 0;
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

void sub_2712E8424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E8438(void *result)
{
  *result = &unk_288114558;
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

void sub_2712E84CC(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v11 = a1;
  v9 = 2;
  v10 = a3;
  v8 = 6;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (6 * *a2 > a3)
    {
      v6 = 6 * *a2;
      v7 = 19;
      sub_2712D669C("Image row byte stride ", &v10, " is invalid for the given size ", a2, " and pixel format ", &v7, ". It must be at least: pixel byte size (", &v8, ") x width (", a2, ") = ", &v6, ".");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 1) >= 0x2AAAAAAB)
    {
      v7 = 19;
      sub_2712D6B3C("Image row byte stride ", &v10, " is invalid for pixel format ", &v7, ". It must be a multiple of the pixel byte size (", &v8, ").");
    }

    if (a1)
    {
      v7 = 19;
      sub_2712D6E10("Image base address ", &v11, " is invalid for pixel format ", &v7, ". It must be aligned with the value type size (", &v9, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712E8A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E8A8C(void *result)
{
  *result = &unk_288114518;
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

uint64_t *sub_2712E8B20(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F100[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E8BC8(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288114518;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 19);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E8DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E8DFC(void *a1)
{
  *a1 = &unk_288114518;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E8ED0(uint64_t a1)
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

void sub_2712E8F64(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E8F9C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F100[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E9054(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE19EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE19EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE19EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE19EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E90B4(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 19;
  *(a1 + 44) = 0;
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

void sub_2712E91F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E920C(void *result)
{
  *result = &unk_288114518;
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

void sub_2712E92A0(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v11 = a1;
  v9 = 4;
  v10 = a3;
  v8 = 12;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (12 * *a2 > a3)
    {
      v6 = 12 * *a2;
      v7 = 20;
      sub_2712D669C("Image row byte stride ", &v10, " is invalid for the given size ", a2, " and pixel format ", &v7, ". It must be at least: pixel byte size (", &v8, ") x width (", a2, ") = ", &v6, ".");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 2) >= 0x15555556)
    {
      v7 = 20;
      sub_2712D6B3C("Image row byte stride ", &v10, " is invalid for pixel format ", &v7, ". It must be a multiple of the pixel byte size (", &v8, ").");
    }

    if ((a1 & 3) != 0)
    {
      v7 = 20;
      sub_2712D6E10("Image base address ", &v11, " is invalid for pixel format ", &v7, ". It must be aligned with the value type size (", &v9, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712E97EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E9864(void *result)
{
  *result = &unk_2881143D8;
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

uint64_t *sub_2712E98F8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F120[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E99A0(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_2881143D8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 20);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E9BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E9BD4(void *a1)
{
  *a1 = &unk_2881143D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E9CA8(uint64_t a1)
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

void sub_2712E9D3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E9D74(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F120[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E9E2C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE20EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE20EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE20EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE20EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E9E8C(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 20;
  *(a1 + 44) = 0;
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

void sub_2712E9FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E9FE4(void *result)
{
  *result = &unk_2881143D8;
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

void sub_2712EA078(unsigned int *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = 3;
  v7 = a2;
  if (*a1)
  {
    v3 = a1[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (3 * *a1 > a2)
    {
      v4 = 3 * *a1;
      v5 = 21;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ", a1, " and pixel format ", &v5, ". It must be at least: pixel byte size (", &v6, ") x width (", a1, ") = ", &v4, ".");
    }

    if (-1431655765 * a2 >= 0x55555556)
    {
      v5 = 21;
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ", &v5, ". It must be a multiple of the pixel byte size (", &v6, ").");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712EA430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712EA488(void *result)
{
  *result = &unk_2881142D8;
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

uint64_t *sub_2712EA51C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F140[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712EA5C4(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_2881142D8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 21);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712EA7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712EA7F8(void *a1)
{
  *a1 = &unk_2881142D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EA8CC(uint64_t a1)
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

void sub_2712EA960(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EA998(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F140[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712EAA50(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE21EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE21EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE21EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE21EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712EAAB0(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 21;
  *(a1 + 44) = 0;
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

void sub_2712EABF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712EAC08(void *result)
{
  *result = &unk_2881142D8;
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

void sub_2712EAC9C(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v11 = a1;
  v9 = 2;
  v10 = a3;
  v8 = 6;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (6 * *a2 > a3)
    {
      v6 = 6 * *a2;
      v7 = 22;
      sub_2712D669C("Image row byte stride ", &v10, " is invalid for the given size ", a2, " and pixel format ", &v7, ". It must be at least: pixel byte size (", &v8, ") x width (", a2, ") = ", &v6, ".");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 1) >= 0x2AAAAAAB)
    {
      v7 = 22;
      sub_2712D6B3C("Image row byte stride ", &v10, " is invalid for pixel format ", &v7, ". It must be a multiple of the pixel byte size (", &v8, ").");
    }

    if (a1)
    {
      v7 = 22;
      sub_2712D6E10("Image base address ", &v11, " is invalid for pixel format ", &v7, ". It must be aligned with the value type size (", &v9, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712EB1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712EB25C(void *result)
{
  *result = &unk_2881141D8;
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

uint64_t *sub_2712EB2F0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F160[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712EB398(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_2881141D8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 22);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712EB5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712EB5CC(void *a1)
{
  *a1 = &unk_2881141D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EB6A0(uint64_t a1)
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

void sub_2712EB734(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EB76C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F160[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712EB824(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE22EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE22EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE22EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE22EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712EB884(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 22;
  *(a1 + 44) = 0;
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

void sub_2712EB9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712EB9DC(void *result)
{
  *result = &unk_2881141D8;
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

void sub_2712EBA70(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v11 = a1;
  v9 = 2;
  v10 = a3;
  v8 = 6;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (6 * *a2 > a3)
    {
      v6 = 6 * *a2;
      v7 = 23;
      sub_2712D669C("Image row byte stride ", &v10, " is invalid for the given size ", a2, " and pixel format ", &v7, ". It must be at least: pixel byte size (", &v8, ") x width (", a2, ") = ", &v6, ".");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 1) >= 0x2AAAAAAB)
    {
      v7 = 23;
      sub_2712D6B3C("Image row byte stride ", &v10, " is invalid for pixel format ", &v7, ". It must be a multiple of the pixel byte size (", &v8, ").");
    }

    if (a1)
    {
      v7 = 23;
      sub_2712D6E10("Image base address ", &v11, " is invalid for pixel format ", &v7, ". It must be aligned with the value type size (", &v9, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712EBFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712EC030(void *result)
{
  *result = &unk_288114198;
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

uint64_t *sub_2712EC0C4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F180[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712EC16C(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288114198;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 23);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712EC384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712EC3A0(void *a1)
{
  *a1 = &unk_288114198;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EC474(uint64_t a1)
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

void sub_2712EC508(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EC540(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F180[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712EC5F8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE23EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE23EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE23EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE23EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712EC658(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 23;
  *(a1 + 44) = 0;
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

void sub_2712EC79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712EC7B0(void *result)
{
  *result = &unk_288114198;
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

void sub_2712EC844(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v11 = a1;
  v9 = 4;
  v10 = a3;
  v8 = 12;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (12 * *a2 > a3)
    {
      v6 = 12 * *a2;
      v7 = 24;
      sub_2712D669C("Image row byte stride ", &v10, " is invalid for the given size ", a2, " and pixel format ", &v7, ". It must be at least: pixel byte size (", &v8, ") x width (", a2, ") = ", &v6, ".");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 2) >= 0x15555556)
    {
      v7 = 24;
      sub_2712D6B3C("Image row byte stride ", &v10, " is invalid for pixel format ", &v7, ". It must be a multiple of the pixel byte size (", &v8, ").");
    }

    if ((a1 & 3) != 0)
    {
      v7 = 24;
      sub_2712D6E10("Image base address ", &v11, " is invalid for pixel format ", &v7, ". It must be aligned with the value type size (", &v9, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712ECD90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712ECE08(void *result)
{
  *result = &unk_288114158;
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

uint64_t *sub_2712ECE9C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F1A0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712ECF44(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288114158;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 24);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712ED15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712ED178(void *a1)
{
  *a1 = &unk_288114158;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712ED24C(uint64_t a1)
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

void sub_2712ED2E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712ED318(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F1A0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712ED3D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE24EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE24EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE24EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE24EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712ED430(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 24;
  *(a1 + 44) = 0;
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

void sub_2712ED574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712ED588(void *result)
{
  *result = &unk_288114158;
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

void sub_2712ED61C(unsigned int *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = 4;
  v7 = a2;
  if (*a1)
  {
    v3 = a1[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (4 * *a1 > a2)
    {
      v4 = 4 * *a1;
      v5 = 25;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ", a1, " and pixel format ", &v5, ". It must be at least: pixel byte size (", &v6, ") x width (", a1, ") = ", &v4, ".");
    }

    if ((a2 & 3) != 0)
    {
      v5 = 25;
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ", &v5, ". It must be a multiple of the pixel byte size (", &v6, ").");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712ED9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712EDA18(void *result)
{
  *result = &unk_288114058;
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

uint64_t *sub_2712EDAAC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F1C0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712EDB54(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288114058;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 25);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712EDD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712EDD88(void *a1)
{
  *a1 = &unk_288114058;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EDE5C(uint64_t a1)
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

void sub_2712EDEF0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EDF28(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F1C0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712EDFE0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE25EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE25EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE25EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE25EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712EE040(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 25;
  *(a1 + 44) = 0;
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

void sub_2712EE184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712EE198(void *result)
{
  *result = &unk_288114058;
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

void sub_2712EE22C(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 2;
  v9 = a3;
  v7 = 8;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      v6 = 26;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 7) != 0)
    {
      v6 = 26;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if (a1)
    {
      v6 = 26;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712EE758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712EE7D0(void *result)
{
  *result = &unk_288114018;
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

uint64_t *sub_2712EE864(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F1E0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712EE90C(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288114018;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 26);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712EEB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712EEB40(void *a1)
{
  *a1 = &unk_288114018;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EEC14(uint64_t a1)
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

void sub_2712EECA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EECE0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F1E0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712EED98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE26EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE26EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE26EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE26EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712EEDF8(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 26;
  *(a1 + 44) = 0;
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

void sub_2712EEF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712EEF50(void *result)
{
  *result = &unk_288114018;
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

void sub_2712EEFE4(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 2;
  v9 = a3;
  v7 = 8;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      v6 = 27;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 7) != 0)
    {
      v6 = 27;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if (a1)
    {
      v6 = 27;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712EF510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712EF588(void *result)
{
  *result = &unk_288113FD8;
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

uint64_t *sub_2712EF61C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F200[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712EF6C4(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113FD8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 27);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712EF8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712EF8F8(void *a1)
{
  *a1 = &unk_288113FD8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EF9CC(uint64_t a1)
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

void sub_2712EFA60(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EFA98(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F200[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712EFB50(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE27EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE27EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE27EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE27EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712EFBB0(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 27;
  *(a1 + 44) = 0;
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

void sub_2712EFCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712EFD08(void *result)
{
  *result = &unk_288113FD8;
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

void sub_2712EFD9C(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 4;
  v9 = a3;
  v7 = 16;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (16 * *a2 > a3)
    {
      v5 = 16 * *a2;
      v6 = 28;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 0xF) != 0)
    {
      v6 = 28;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if ((a1 & 3) != 0)
    {
      v6 = 28;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712F02CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F0344(void *result)
{
  *result = &unk_288113F98;
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

uint64_t *sub_2712F03D8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F220[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F0480(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113F98;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 28);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F0698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F06B4(void *a1)
{
  *a1 = &unk_288113F98;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F0788(uint64_t a1)
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

void sub_2712F081C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F0854(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F220[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F090C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE28EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE28EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE28EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE28EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F096C(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 28;
  *(a1 + 44) = 0;
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

void sub_2712F0AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F0AC4(void *result)
{
  *result = &unk_288113F98;
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

void sub_2712F0B58(unsigned int *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = 4;
  v7 = a2;
  if (*a1)
  {
    v3 = a1[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (4 * *a1 > a2)
    {
      v4 = 4 * *a1;
      v5 = 29;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ", a1, " and pixel format ", &v5, ". It must be at least: pixel byte size (", &v6, ") x width (", a1, ") = ", &v4, ".");
    }

    if ((a2 & 3) != 0)
    {
      v5 = 29;
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ", &v5, ". It must be a multiple of the pixel byte size (", &v6, ").");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712F0EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F0F54(void *result)
{
  *result = &unk_288113F58;
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

uint64_t *sub_2712F0FE8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F240[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F1090(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113F58;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 29);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F12A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F12C4(void *a1)
{
  *a1 = &unk_288113F58;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F1398(uint64_t a1)
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

void sub_2712F142C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F1464(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F240[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F151C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE29EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE29EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE29EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE29EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F157C(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 29;
  *(a1 + 44) = 0;
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

void sub_2712F16C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F16D4(void *result)
{
  *result = &unk_288113F58;
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

void sub_2712F1768(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 2;
  v9 = a3;
  v7 = 8;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      v6 = 30;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 7) != 0)
    {
      v6 = 30;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if (a1)
    {
      v6 = 30;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712F1C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F1D0C(void *result)
{
  *result = &unk_288113E18;
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

uint64_t *sub_2712F1DA0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F260[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F1E48(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113E18;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 30);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F2060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F207C(void *a1)
{
  *a1 = &unk_288113E18;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F2150(uint64_t a1)
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

void sub_2712F21E4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F221C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F260[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F22D4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE30EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE30EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE30EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE30EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F2334(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 30;
  *(a1 + 44) = 0;
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

void sub_2712F2478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F248C(void *result)
{
  *result = &unk_288113E18;
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

void sub_2712F2520(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 2;
  v9 = a3;
  v7 = 8;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      v6 = 31;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 7) != 0)
    {
      v6 = 31;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if (a1)
    {
      v6 = 31;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712F2A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F2AC4(void *result)
{
  *result = &unk_288113D18;
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

uint64_t *sub_2712F2B58(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F280[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F2C00(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113D18;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 31);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F2E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F2E34(void *a1)
{
  *a1 = &unk_288113D18;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F2F08(uint64_t a1)
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

void sub_2712F2F9C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F2FD4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F280[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F308C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE31EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE31EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE31EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE31EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F30EC(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 31;
  *(a1 + 44) = 0;
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

void sub_2712F3230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F3244(void *result)
{
  *result = &unk_288113D18;
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

void sub_2712F32D8(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 4;
  v9 = a3;
  v7 = 16;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (16 * *a2 > a3)
    {
      v5 = 16 * *a2;
      v6 = 32;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 0xF) != 0)
    {
      v6 = 32;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if ((a1 & 3) != 0)
    {
      v6 = 32;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712F3808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F3880(void *result)
{
  *result = &unk_288113C18;
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

uint64_t *sub_2712F3914(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F2A0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F39BC(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113C18;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 32);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F3BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F3BF0(void *a1)
{
  *a1 = &unk_288113C18;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F3CC4(uint64_t a1)
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

void sub_2712F3D58(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F3D90(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F2A0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F3E48(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE32EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE32EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE32EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE32EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F3EA8(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 32;
  *(a1 + 44) = 0;
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

void sub_2712F3FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F4000(void *result)
{
  *result = &unk_288113C18;
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

void sub_2712F4094(unsigned int *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = 4;
  v7 = a2;
  if (*a1)
  {
    v3 = a1[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (4 * *a1 > a2)
    {
      v4 = 4 * *a1;
      v5 = 33;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ", a1, " and pixel format ", &v5, ". It must be at least: pixel byte size (", &v6, ") x width (", a1, ") = ", &v4, ".");
    }

    if ((a2 & 3) != 0)
    {
      v5 = 33;
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ", &v5, ". It must be a multiple of the pixel byte size (", &v6, ").");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712F4438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F4490(void *result)
{
  *result = &unk_288113BD8;
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

uint64_t *sub_2712F4524(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F2C0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F45CC(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113BD8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 33);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F47E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F4800(void *a1)
{
  *a1 = &unk_288113BD8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F48D4(uint64_t a1)
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

void sub_2712F4968(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F49A0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F2C0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F4A58(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE33EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE33EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE33EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE33EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F4AB8(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 33;
  *(a1 + 44) = 0;
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

void sub_2712F4BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F4C10(void *result)
{
  *result = &unk_288113BD8;
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

void sub_2712F4CA4(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 2;
  v9 = a3;
  v7 = 8;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      v6 = 34;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 7) != 0)
    {
      v6 = 34;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if (a1)
    {
      v6 = 34;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712F51D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F5248(void *result)
{
  *result = &unk_288113B98;
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

uint64_t *sub_2712F52DC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F2E0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F5384(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113B98;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 34);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F559C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F55B8(void *a1)
{
  *a1 = &unk_288113B98;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F568C(uint64_t a1)
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

void sub_2712F5720(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F5758(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F2E0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F5810(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE34EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE34EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE34EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE34EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F5870(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 34;
  *(a1 + 44) = 0;
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

void sub_2712F59B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F59C8(void *result)
{
  *result = &unk_288113B98;
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

void sub_2712F5A5C(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 2;
  v9 = a3;
  v7 = 8;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      v6 = 35;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 7) != 0)
    {
      v6 = 35;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if (a1)
    {
      v6 = 35;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712F5F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F6000(void *result)
{
  *result = &unk_288113B58;
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

uint64_t *sub_2712F6094(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F300[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F613C(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113B58;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 35);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F6354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F6370(void *a1)
{
  *a1 = &unk_288113B58;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F6444(uint64_t a1)
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

void sub_2712F64D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F6510(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F300[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F65C8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE35EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE35EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE35EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE35EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F6628(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 35;
  *(a1 + 44) = 0;
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

void sub_2712F676C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F6780(void *result)
{
  *result = &unk_288113B58;
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

void sub_2712F6814(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 4;
  v9 = a3;
  v7 = 16;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (16 * *a2 > a3)
    {
      v5 = 16 * *a2;
      v6 = 36;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 0xF) != 0)
    {
      v6 = 36;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if ((a1 & 3) != 0)
    {
      v6 = 36;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712F6D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F6DBC(void *result)
{
  *result = &unk_288113B18;
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

uint64_t *sub_2712F6E50(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F320[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F6EF8(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113B18;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 36);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F7110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F712C(void *a1)
{
  *a1 = &unk_288113B18;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F7200(uint64_t a1)
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

void sub_2712F7294(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F72CC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F320[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F7384(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE36EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE36EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE36EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE36EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F73E4(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 36;
  *(a1 + 44) = 0;
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

void sub_2712F7528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F753C(void *result)
{
  *result = &unk_288113B18;
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

void sub_2712F75D0(unsigned int *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = 4;
  v7 = a2;
  if (*a1)
  {
    v3 = a1[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (4 * *a1 > a2)
    {
      v4 = 4 * *a1;
      v5 = 37;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ", a1, " and pixel format ", &v5, ". It must be at least: pixel byte size (", &v6, ") x width (", a1, ") = ", &v4, ".");
    }

    if ((a2 & 3) != 0)
    {
      v5 = 37;
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ", &v5, ". It must be a multiple of the pixel byte size (", &v6, ").");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712F7974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F79CC(void *result)
{
  *result = &unk_288113A18;
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

uint64_t *sub_2712F7A60(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F340[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F7B08(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113A18;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 37);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F7D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F7D3C(void *a1)
{
  *a1 = &unk_288113A18;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F7E10(uint64_t a1)
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

void sub_2712F7EA4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F7EDC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F340[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F7F94(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE37EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE37EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE37EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE37EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F7FF4(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 37;
  *(a1 + 44) = 0;
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

void sub_2712F8138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F814C(void *result)
{
  *result = &unk_288113A18;
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

void sub_2712F81E0(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 2;
  v9 = a3;
  v7 = 8;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      v6 = 38;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 7) != 0)
    {
      v6 = 38;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if (a1)
    {
      v6 = 38;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712F870C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F8784(void *result)
{
  *result = &unk_288113918;
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

uint64_t *sub_2712F8818(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F360[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F88C0(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113918;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 38);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F8AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F8AF4(void *a1)
{
  *a1 = &unk_288113918;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F8BC8(uint64_t a1)
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

void sub_2712F8C5C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F8C94(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F360[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F8D4C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE38EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE38EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE38EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE38EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F8DAC(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 38;
  *(a1 + 44) = 0;
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

void sub_2712F8EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F8F04(void *result)
{
  *result = &unk_288113918;
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

void sub_2712F8F98(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 2;
  v9 = a3;
  v7 = 8;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      v6 = 39;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 7) != 0)
    {
      v6 = 39;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if (a1)
    {
      v6 = 39;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712F94C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F953C(void *result)
{
  *result = &unk_2881138D8;
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

uint64_t *sub_2712F95D0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F380[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F9678(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_2881138D8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 39);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F9890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F98AC(void *a1)
{
  *a1 = &unk_2881138D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F9980(uint64_t a1)
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

void sub_2712F9A14(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F9A4C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F380[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F9B04(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE39EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE39EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE39EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE39EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F9B64(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 39;
  *(a1 + 44) = 0;
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

void sub_2712F9CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F9CBC(void *result)
{
  *result = &unk_2881138D8;
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

void sub_2712F9D50(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 4;
  v9 = a3;
  v7 = 16;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (16 * *a2 > a3)
    {
      v5 = 16 * *a2;
      v6 = 40;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 0xF) != 0)
    {
      v6 = 40;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if ((a1 & 3) != 0)
    {
      v6 = 40;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712FA280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712FA2F8(void *result)
{
  *result = &unk_288113798;
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

uint64_t *sub_2712FA38C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F3A0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712FA434(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113798;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 40);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712FA64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712FA668(void *a1)
{
  *a1 = &unk_288113798;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712FA73C(uint64_t a1)
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

void sub_2712FA7D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712FA808(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F3A0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712FA8C0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE40EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE40EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE40EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE40EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712FA920(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 40;
  *(a1 + 44) = 0;
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

void sub_2712FAA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712FAA78(void *result)
{
  *result = &unk_288113798;
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

void *sub_2712FAB1C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712FAF1C(a2, v3);
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

size_t sub_2712FAC1C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812FB40[v3])(&v6, v1);
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

void sub_2712FAD10(uint64_t *a1, uint64_t a2)
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
    (off_28812FB40[v9])(&v10, v2);
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

void sub_2712FAED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712FAF1C(uint64_t a1, const char *a2)
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

void sub_2712FB0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2712FB0E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712FB120(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2712FB150(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img12IImageBufferEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img12IImageBufferEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img12IImageBufferEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img12IImageBufferEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712FB380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2712FB3DC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a2 + 40);
    v7 = *(a2 + 48);
    v8 = *(a2 + 52);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *(a2 + 40);
    v7 = *(a2 + 48);
    v8 = *(a2 + 52);
  }

  *&v11 = v4;
  *(&v11 + 1) = v5;
  *v12 = *(a2 + 24);
  *&v12[8] = *(a2 + 32);
  *&v12[16] = v6;
  *&v12[24] = v7;
  *&v12[28] = v8;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = a3;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    a3 = v9;
  }

  *a1 = &unk_28812ECD0;
  *(a1 + 8) = &unk_28812ED18;
  *(a1 + 16) = &unk_2881147D8;
  *(a1 + 24) = v11;
  *(a1 + 40) = *v12;
  *(a1 + 54) = *&v12[14];
  *(a1 + 80) = *a3;
  sub_27113523C(a1 + 96, a3 + 1);
  *a1 = &unk_28810C6D8;
  *a1 = &unk_28810A4D8;
  return a1;
}

void sub_2712FB5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2712291B8(v3);
  sub_27115475C(va);
  _Unwind_Resume(a1);
}

void sub_2712FB60C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  if (a4 < 3)
  {
    if ((a3 - 1) < 0x28)
    {
      if (a1 != 1)
      {
        if (!a1)
        {
          v19[0] = a5;
          LODWORD(v45) = a6;
          if (a4 != 1)
          {
            if (!a4)
            {
              *&v20 = a2;
              sub_271791E64(a3, &v20, a8);
            }

            sub_2712CA9E4(a7);
          }

          *&v20 = a2;
          sub_27179AB54(a3, &v20);
        }

        operator new();
      }

      v42 = a4;
      v43 = a3;
      v41 = a5;
      v40 = a6;
      if (a3 <= 0x26 && ((1 << a3) & 0x61826001BELL) != 0 && ((0x63A26201BEuLL >> a3) & 1) != 0)
      {
        sub_2712CA9E4(&v29);
      }

      v25 = xmmword_27187ABF8;
      *v26 = unk_27187AC08;
      v27 = xmmword_27187AC18;
      v28 = 0x2600000025;
      v46 = 0;
      v22[0] = &v45;
      v22[1] = "invalid image format '";
      v22[2] = &v45;
      v23 = "invalid image format '";
      v24 = "invalid image format '";
      __dst = v22;
      sub_2712C3BC8(&__dst);
      sub_27120AACC(&v44, &v45, &v43);
    }

    sub_2712FD28C(a3, &v29);
    *a7 = v29;
    *(a7 + 16) = 0;
    *(a7 + 112) = 0;
    if (v39 != 1)
    {
      *(a7 + 160) = 0;
      return;
    }

    *(a7 + 40) = 0;
    v11 = v32;
    if (v32 == 1)
    {
      *(a7 + 16) = *__p;
      *(a7 + 32) = v31;
      __p[1] = 0;
      v31 = 0;
      __p[0] = 0;
      *(a7 + 40) = 1;
      *(a7 + 48) = 0;
      v12 = a7 + 48;
      *(a7 + 104) = 0;
      if ((v38 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(a7 + 48) = 0;
      v12 = a7 + 48;
      *(a7 + 104) = 0;
      if ((v38 & 1) == 0)
      {
LABEL_19:
        *(a7 + 112) = 1;
        *(a7 + 160) = 0;
        if (!v11)
        {
          return;
        }

LABEL_34:
        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
          return;
        }

        v14 = __p[0];
        goto LABEL_44;
      }
    }

    v15 = v35;
    *(v12 + 16) = v34;
    *v12 = *v33;
    v33[0] = 0;
    v33[1] = 0;
    *(a7 + 72) = v15;
    *(a7 + 80) = *v36;
    *(a7 + 96) = v37;
    v34 = 0;
    v36[0] = 0;
    v36[1] = 0;
    v37 = 0;
    *(a7 + 104) = 1;
    *(a7 + 112) = 1;
    *(a7 + 160) = 0;
    if (!v11)
    {
      return;
    }

    goto LABEL_34;
  }

  LODWORD(v23) = 0;
  *&v25 = v22;
  v26[0] = v22;
  v19[0] = &v25;
  sub_2711BF108(v19);
  if (v23 == -1)
  {
    sub_2711308D4();
  }

  *&v25 = v19;
  (off_288130958[v23])(&v20, &v25, v22);
  if (v23 != -1)
  {
    (off_288130910[v23])(&v25, v22);
  }

  *v16 = v20;
  v17 = v21;
  v20 = 0uLL;
  v21 = 0;
  v18 = 1;
  sub_271369D54(v16, &v29);
  *a7 = v29;
  *(a7 + 16) = 0;
  *(a7 + 112) = 0;
  if (v39 != 1)
  {
    *(a7 + 160) = 0;
    goto LABEL_26;
  }

  *(a7 + 40) = 0;
  v9 = v32;
  if (v32 == 1)
  {
    *(a7 + 16) = *__p;
    *(a7 + 32) = v31;
    __p[1] = 0;
    v31 = 0;
    __p[0] = 0;
    *(a7 + 40) = 1;
    *(a7 + 48) = 0;
    v10 = a7 + 48;
    *(a7 + 104) = 0;
    if ((v38 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(a7 + 48) = 0;
    v10 = a7 + 48;
    *(a7 + 104) = 0;
    if ((v38 & 1) == 0)
    {
LABEL_8:
      *(a7 + 112) = 1;
      *(a7 + 160) = 0;
      if (!v9)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  v13 = v35;
  *(v10 + 16) = v34;
  *v10 = *v33;
  v33[0] = 0;
  v33[1] = 0;
  *(a7 + 72) = v13;
  *(a7 + 80) = *v36;
  *(a7 + 96) = v37;
  v34 = 0;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  *(a7 + 104) = 1;
  *(a7 + 112) = 1;
  *(a7 + 160) = 0;
  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_26:
  if (v18 == 1 && SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    v14 = v20;
LABEL_44:
    operator delete(v14);
  }
}

void sub_2712FD050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (*(v59 - 121) < 0)
  {
    operator delete(*(v59 - 144));
  }

  __cxa_guard_abort(&qword_28087B720);
  sub_27112E024(&a59);
  sub_271154B3C(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_2712FD124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (*(v53 - 184) == 1 && *(v53 - 185) < 0)
  {
    operator delete(*(v53 - 208));
  }

  if (*(v53 - 209) < 0)
  {
    operator delete(*(v53 - 232));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712FD250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2712FD264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2712FD28C(int a1@<W0>, void *a2@<X8>)
{
  v3 = a1;
  sub_2712FD374("invalid VZPixelFormat value '", &v3, "'");
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 1;
  sub_271369D54(__p, a2);
  if (v8 == 1 && SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_2712FD33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
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

uint64_t sub_2712FD374(std::string *a1, unsigned int *a2, std::string *a3)
{
  v7 = 0;
  v10 = v6;
  v11 = a1;
  v12 = v6;
  v13 = a1;
  v14 = a1;
  v8.__r_.__value_.__r.__words[0] = &v10;
  sub_2712390A4(&v8);
  std::to_string(&v8, *a2);
  v10 = v6;
  v11 = &v8;
  v12 = v6;
  v13 = &v8;
  v14 = &v8;
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v9 = &v10;
  (off_288130928[v7])(&v9, v6);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v10 = v6;
  v11 = a3;
  v12 = v6;
  v13 = a3;
  v14 = a3;
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v8.__r_.__value_.__r.__words[0] = &v10;
  (*(&off_288130940 + v7))(&v8, v6);
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v10 = &v8;
  result = (off_288130958[v7])(&v10, v6);
  if (v7 != -1)
  {
    return (off_288130910[v7])(&v10, v6);
  }

  return result;
}

void sub_2712FD4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2712FD4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2712FD4ECLL);
}

void sub_2712FD520(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v13 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a2 + 48);
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    v6 = *(a2 + 56);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v12 = 0;
    v5 = *(a2 + 48);
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    v6 = *(a2 + 56);
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  if (v3)
  {
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v3;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        v3 = v7;
      }
    }

    v8 = (*(*v3 + 104))(v3);
    *(a1 + 44) = v8 & ((v8 >> 1) >> 15);
    v4 = v12;
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(a1 + 44) = 0;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v9 = v13;
    if (!v13)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = v13;
  if (!v13)
  {
    return;
  }

LABEL_13:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_2712FD718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_2712FD73C(int a1, uint64_t **a2)
{
  v442 = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 0:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      sub_2712D6134(a2[1], *a2[2], &v431);
      if ((v441 & 1) == 0)
      {
        v399 = v431;
        LOBYTE(v400[0]) = 0;
        v408 = 0;
        if (v440 == 1)
        {
          sub_27112F6CC(v400, &v432);
          v408 = 1;
        }

        goto LABEL_743;
      }

      v3 = a2[1];
      v4 = **a2;
      LODWORD(v399) = *a2[2];
      sub_27130440C(&v409, v4, v3, &v399);
      *&v420 = &unk_28810F638;
      sub_271304970(&v409, &v420 + 8);
      v396 = &unk_288114798;
      sub_271305110(&v397, &v420);
      sub_2712CADE8(&v399, &v396);
      sub_2712D6378(a2[3], &v399);
      sub_2712CAF40(&v399);
      v396 = &unk_288114798;
      v5 = v398;
      if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      sub_27112F828(&v420 + 8);
      v6 = v411;
      if (v411)
      {
        goto LABEL_373;
      }

      goto LABEL_752;
    case 2:
      sub_2712DA1A4(**a2, a2[1], *a2[2], &v431);
      if ((v441 & 1) == 0)
      {
        v399 = v431;
        LOBYTE(v400[0]) = 0;
        v408 = 0;
        if (v440 == 1)
        {
          sub_27112F6CC(v400, &v432);
          v408 = 1;
        }

        goto LABEL_743;
      }

      v287 = a2[1];
      v288 = **a2;
      LODWORD(v399) = *a2[2] >> 1;
      sub_271305334(&v409, v288, v287, &v399);
      *&v420 = &unk_28810F138;
      sub_271305898(&v409, &v420 + 8);
      v396 = &unk_288114798;
      sub_271305FF8(&v397, &v420);
      sub_2712CADE8(&v399, &v396);
      sub_2712D6378(a2[3], &v399);
      sub_2712CAF40(&v399);
      v396 = &unk_288114798;
      v289 = v398;
      if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v289->__on_zero_shared)(v289);
        std::__shared_weak_count::__release_weak(v289);
      }

      sub_27112F828(&v420 + 8);
      v6 = v411;
      if (!v411)
      {
        goto LABEL_752;
      }

      goto LABEL_373;
    case 3:
      sub_2712DAF50(**a2, a2[1], *a2[2], &v431);
      if ((v441 & 1) == 0)
      {
        v399 = v431;
        LOBYTE(v400[0]) = 0;
        v408 = 0;
        if (v440 == 1)
        {
          sub_27112F6CC(v400, &v432);
          v408 = 1;
        }

        goto LABEL_743;
      }

      v284 = a2[1];
      v285 = **a2;
      LODWORD(v399) = *a2[2] >> 1;
      sub_27130621C(&v409, v285, v284, &v399);
      *&v420 = &unk_28810EBB8;
      sub_271306780(&v409, &v420 + 8);
      v396 = &unk_288114798;
      sub_271306EF0(&v397, &v420);
      sub_2712CADE8(&v399, &v396);
      sub_2712D6378(a2[3], &v399);
      sub_2712CAF40(&v399);
      v396 = &unk_288114798;
      v286 = v398;
      if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v286->__on_zero_shared)(v286);
        std::__shared_weak_count::__release_weak(v286);
      }

      sub_27112F828(&v420 + 8);
      v6 = v411;
      if (v411)
      {
        goto LABEL_373;
      }

      goto LABEL_752;
    case 4:
      sub_2712DBCFC(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v180 = a2[1];
        v181 = **a2;
        LODWORD(v399) = *a2[2] >> 2;
        sub_271307114(&v409, v181, v180, &v399);
        *&v420 = &unk_28810EAB8;
        sub_271307678(&v409, &v420 + 8);
        v396 = &unk_288114798;
        sub_271307DD8(&v397, &v420);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v182 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v182->__on_zero_shared)(v182);
          std::__shared_weak_count::__release_weak(v182);
        }

        sub_27112F828(&v420 + 8);
        v6 = v411;
        if (v411)
        {
LABEL_373:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }
        }
      }

      else
      {
        v399 = v431;
        LOBYTE(v400[0]) = 0;
        v408 = 0;
        if (v440 == 1)
        {
          sub_27112F6CC(v400, &v432);
          v408 = 1;
        }

LABEL_743:
        sub_2712CD070(a2[3], &v399);
        if (v408 == 1)
        {
          if (v407 == 1)
          {
            if (v406 < 0)
            {
              operator delete(__p);
            }

            if (v404 < 0)
            {
              operator delete(v403);
            }
          }

          if (v402 == 1 && v401 < 0)
          {
            operator delete(v400[0]);
          }
        }
      }

LABEL_752:
      if ((v441 & 1) != 0 || v440 != 1)
      {
        return;
      }

      if (v439 == 1)
      {
        if (v438 < 0)
        {
          operator delete(v437);
        }

        if (v436 < 0)
        {
          operator delete(v435);
        }
      }

      if (v434 != 1 || (v433 & 0x80000000) == 0)
      {
        return;
      }

      v395 = v432;
      goto LABEL_842;
    case 5:
      sub_2712DCAB0(a2[1], *a2[2], &v420);
      if (v430)
      {
        v265 = a2[1];
        v266 = **a2;
        LODWORD(v399) = *a2[2];
        sub_271307FFC(&v409, v266, v265, &v399);
        *&v431 = &unk_28810E9F8;
        sub_2713085EC(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_271308DD4(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v267 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v267->__on_zero_shared)(v267);
          std::__shared_weak_count::__release_weak(v267);
        }

        sub_27112F828(&v431 + 8);
        v20 = v411;
        if (!v411 || atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_832;
        }

        goto LABEL_453;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 == 1)
      {
        if (v407 == 1)
        {
          if (v406 < 0)
          {
            operator delete(__p);
          }

          if (v404 < 0)
          {
            operator delete(v403);
          }
        }

        if (v402 == 1 && v401 < 0)
        {
          goto LABEL_831;
        }
      }

      goto LABEL_832;
    case 6:
      sub_2712DD6C8(**a2, a2[1], *a2[2], &v420);
      if ((v430 & 1) == 0)
      {
        v399 = v420;
        LOBYTE(v400[0]) = 0;
        v408 = 0;
        if (v429 == 1)
        {
          sub_27112F6CC(v400, v421);
          v408 = 1;
        }

        sub_2712CD070(a2[3], &v399);
        if (v408 != 1)
        {
          goto LABEL_832;
        }

        if (v407 == 1)
        {
          if (v406 < 0)
          {
            operator delete(__p);
          }

          if (v404 < 0)
          {
            operator delete(v403);
          }
        }

        if (v402 != 1 || (v401 & 0x80000000) == 0)
        {
          goto LABEL_832;
        }

        goto LABEL_831;
      }

      v167 = a2[1];
      v168 = **a2;
      v169 = *a2[2];
      v409 = &unk_28810D238;
      if (*(v167 + 1))
      {
        v170 = *v167 == 0;
      }

      else
      {
        v170 = 1;
      }

      v171 = (v169 << 31) & 0x7FFFFFFF00000000;
      if (v170)
      {
        v171 = 0;
      }

      v172 = v171 | (2 * (*v167 != 0));
      v399 = 0uLL;
      v173 = *v167;
      if (v170)
      {
        v173 = 0;
      }

      *(&v431 + 4) = v173;
      v174 = v173;
      LODWORD(v431) = 2;
      v175 = v431;
      v176 = HIDWORD(v173);
      LODWORD(v431) = 1;
      *(&v431 + 4) = v172;
      v177 = v431;
      v178 = HIDWORD(v171);
      if (HIDWORD(v173) * HIDWORD(v171) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
      {
        goto LABEL_844;
      }

      v410 = 0;
      v411 = 0;
      v412 = v168;
      v413 = v175;
      v415 = v177;
      v414 = v176;
      v416 = v178;
      v417 = v174;
      v418 = v172;
      v419 = 0;
      *&v431 = &unk_28810E9B8;
      sub_27130938C(&v409, &v431 + 8);
      v396 = &unk_288114798;
      sub_271309B7C(&v397, &v431);
      sub_2712CADE8(&v399, &v396);
      sub_2712D6378(a2[3], &v399);
      sub_2712CAF40(&v399);
      v396 = &unk_288114798;
      v179 = v398;
      if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v179->__on_zero_shared)(v179);
        std::__shared_weak_count::__release_weak(v179);
      }

      sub_27112F828(&v431 + 8);
      v20 = v411;
      if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_453:
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

LABEL_832:
      if ((v430 & 1) == 0 && v429 == 1)
      {
        if (v428 == 1)
        {
          if (v427 < 0)
          {
            operator delete(v426);
          }

          if (v425 < 0)
          {
            operator delete(v424);
          }
        }

        if (v423 == 1 && v422 < 0)
        {
          v395 = v421[0];
LABEL_842:
          operator delete(v395);
        }
      }

      return;
    case 7:
      sub_2712DE480(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v132 = a2[1];
        v133 = **a2;
        LODWORD(v399) = *a2[2] >> 1;
        sub_271309DA0(&v409, v133, v132, &v399);
        *&v431 = &unk_28810E8F8;
        sub_27130A390(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_27130AB4C(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v134 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v134->__on_zero_shared)(v134);
          std::__shared_weak_count::__release_weak(v134);
        }

        sub_27112F828(&v431 + 8);
        v20 = v411;
        if (!v411 || atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_832;
        }

        goto LABEL_453;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 == 1)
      {
        if (v407 == 1)
        {
          if (v406 < 0)
          {
            operator delete(__p);
          }

          if (v404 < 0)
          {
            operator delete(v403);
          }
        }

        if (v402 == 1 && v401 < 0)
        {
          goto LABEL_831;
        }
      }

      goto LABEL_832;
    case 8:
      sub_2712DF238(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v281 = a2[1];
        v282 = **a2;
        LODWORD(v399) = *a2[2] >> 2;
        sub_27130AD70(&v409, v282, v281, &v399);
        *&v431 = &unk_28810E838;
        sub_27130B360(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_27130BB50(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v283 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v283->__on_zero_shared)(v283);
          std::__shared_weak_count::__release_weak(v283);
        }

        sub_27112F828(&v431 + 8);
        v20 = v411;
        if (!v411 || atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_832;
        }

        goto LABEL_453;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 == 1)
      {
        if (v407 == 1)
        {
          if (v406 < 0)
          {
            operator delete(__p);
          }

          if (v404 < 0)
          {
            operator delete(v403);
          }
        }

        if (v402 == 1 && v401 < 0)
        {
          goto LABEL_831;
        }
      }

      goto LABEL_832;
    case 9:
      sub_2712DFFF4(a2[1], *a2[2], &v420);
      if (v430)
      {
        v251 = a2[1];
        v252 = **a2;
        v253 = a2[2];
        v409 = &unk_28810D038;
        v254 = *v251 == 0;
        if (*v251)
        {
          v255 = 3;
        }

        else
        {
          v255 = 0;
        }

        if (!*(v251 + 1))
        {
          v254 = 1;
        }

        v256 = *v253 << 32;
        if (v254)
        {
          v256 = 0;
        }

        v257 = v256 | v255;
        v399 = 0uLL;
        v258 = *v251;
        if (v254)
        {
          v258 = 0;
        }

        *(&v431 + 4) = v258;
        v259 = v258;
        LODWORD(v431) = 3;
        v260 = v431;
        v261 = HIDWORD(v258);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v256 | v255;
        v262 = v431;
        v263 = HIDWORD(v256);
        if (HIDWORD(v258) * HIDWORD(v256) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v410 = 0;
          v411 = 0;
          v412 = v252;
          v413 = v260;
          v415 = v262;
          v414 = v261;
          v416 = v263;
          v417 = v259;
          v418 = v257;
          v419 = 0;
          *&v431 = &unk_28810E7F8;
          sub_27130C108(&v409, &v431 + 8);
          v396 = &unk_288114798;
          sub_27130C898(&v397, &v431);
          sub_2712CADE8(&v399, &v396);
          sub_2712D6378(a2[3], &v399);
          sub_2712CAF40(&v399);
          v396 = &unk_288114798;
          v264 = v398;
          if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v264->__on_zero_shared)(v264);
            std::__shared_weak_count::__release_weak(v264);
          }

          sub_27112F828(&v431 + 8);
          v20 = v411;
          if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

LABEL_844:
        abort();
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 10:
      sub_2712E0C18(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v307 = a2[1];
        v308 = **a2;
        v309 = *a2[2];
        v409 = &unk_28810E738;
        v310 = *v307 == 0;
        if (*v307)
        {
          v311 = 3;
        }

        else
        {
          v311 = 0;
        }

        if (!*(v307 + 1))
        {
          v310 = 1;
        }

        v312 = (v309 << 31) & 0x7FFFFFFF00000000;
        if (v310)
        {
          v312 = 0;
        }

        v313 = v312 | v311;
        v399 = 0uLL;
        v314 = *v307;
        if (v310)
        {
          v314 = 0;
        }

        *(&v431 + 4) = v314;
        v315 = v314;
        LODWORD(v431) = 3;
        v316 = v431;
        v317 = HIDWORD(v314);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v312 | v311;
        v318 = v431;
        v319 = HIDWORD(v312);
        if (HIDWORD(v314) * HIDWORD(v312) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v410 = 0;
          v411 = 0;
          v412 = v308;
          v413 = v316;
          v415 = v318;
          v414 = v317;
          v416 = v319;
          v417 = v315;
          v418 = v313;
          v419 = 0;
          *&v431 = &unk_28810F978;
          sub_27130CE50(&v409, &v431 + 8);
          v396 = &unk_288114798;
          sub_27130D640(&v397, &v431);
          sub_2712CADE8(&v399, &v396);
          sub_2712D6378(a2[3], &v399);
          sub_2712CAF40(&v399);
          v396 = &unk_288114798;
          v320 = v398;
          if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v320->__on_zero_shared)(v320);
            std::__shared_weak_count::__release_weak(v320);
          }

          sub_27112F828(&v431 + 8);
          v20 = v411;
          if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 11:
      sub_2712E19EC(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v293 = a2[1];
        v294 = **a2;
        v295 = *a2[2];
        v409 = &unk_28810E6B8;
        v296 = *v293 == 0;
        if (*v293)
        {
          v297 = 3;
        }

        else
        {
          v297 = 0;
        }

        if (!*(v293 + 1))
        {
          v296 = 1;
        }

        v298 = (v295 << 31) & 0x7FFFFFFF00000000;
        if (v296)
        {
          v298 = 0;
        }

        v299 = v298 | v297;
        v399 = 0uLL;
        v300 = *v293;
        if (v296)
        {
          v300 = 0;
        }

        *(&v431 + 4) = v300;
        v301 = v300;
        LODWORD(v431) = 3;
        v302 = v431;
        v303 = HIDWORD(v300);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v298 | v297;
        v304 = v431;
        v305 = HIDWORD(v298);
        if (HIDWORD(v300) * HIDWORD(v298) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v410 = 0;
          v411 = 0;
          v412 = v294;
          v413 = v302;
          v415 = v304;
          v414 = v303;
          v416 = v305;
          v417 = v301;
          v418 = v299;
          v419 = 0;
          *&v431 = &unk_28810F938;
          sub_27130DBF8(&v409, &v431 + 8);
          v396 = &unk_288114798;
          sub_27130E3B4(&v397, &v431);
          sub_2712CADE8(&v399, &v396);
          sub_2712D6378(a2[3], &v399);
          sub_2712CAF40(&v399);
          v396 = &unk_288114798;
          v306 = v398;
          if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v306->__on_zero_shared)(v306);
            std::__shared_weak_count::__release_weak(v306);
          }

          sub_27112F828(&v431 + 8);
          v20 = v411;
          if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 12:
      sub_2712E27C0(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v38 = a2[1];
        v39 = **a2;
        v40 = *a2[2];
        v409 = &unk_28810E638;
        v41 = *v38 == 0;
        if (*v38)
        {
          v42 = 3;
        }

        else
        {
          v42 = 0;
        }

        if (!*(v38 + 1))
        {
          v41 = 1;
        }

        v43 = (v40 << 30) & 0x3FFFFFFF00000000;
        if (v41)
        {
          v43 = 0;
        }

        v44 = v43 | v42;
        v399 = 0uLL;
        v45 = *v38;
        if (v41)
        {
          v45 = 0;
        }

        *(&v431 + 4) = v45;
        v46 = v45;
        LODWORD(v431) = 3;
        v47 = v431;
        v48 = HIDWORD(v45);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v43 | v42;
        v49 = v431;
        v50 = HIDWORD(v43);
        if (HIDWORD(v45) * HIDWORD(v43) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v410 = 0;
          v411 = 0;
          v412 = v39;
          v413 = v47;
          v415 = v49;
          v414 = v48;
          v416 = v50;
          v417 = v46;
          v418 = v44;
          v419 = 0;
          *&v431 = &unk_28810F8F8;
          sub_27130E96C(&v409, &v431 + 8);
          v396 = &unk_288114798;
          sub_27130F15C(&v397, &v431);
          sub_2712CADE8(&v399, &v396);
          sub_2712D6378(a2[3], &v399);
          sub_2712CAF40(&v399);
          v396 = &unk_288114798;
          v51 = v398;
          if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v51->__on_zero_shared)(v51);
            std::__shared_weak_count::__release_weak(v51);
          }

          sub_27112F828(&v431 + 8);
          v20 = v411;
          if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 13:
      sub_2712E3598(a2[1], *a2[2], &v420);
      if (v430)
      {
        v92 = a2[1];
        v93 = **a2;
        v94 = a2[2];
        v409 = &unk_28810E5B8;
        if (*(v92 + 1))
        {
          v95 = *v92 == 0;
        }

        else
        {
          v95 = 1;
        }

        v96 = *v94 << 32;
        if (v95)
        {
          v96 = 0;
        }

        v97 = v96 | (4 * (*v92 != 0));
        v399 = 0uLL;
        v98 = *v92;
        if (v95)
        {
          v98 = 0;
        }

        *(&v431 + 4) = v98;
        v99 = v98;
        LODWORD(v431) = 4;
        v100 = v431;
        v101 = HIDWORD(v98);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v97;
        v102 = v431;
        v103 = HIDWORD(v96);
        if (HIDWORD(v98) * HIDWORD(v96) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v410 = 0;
          v411 = 0;
          v412 = v93;
          v413 = v100;
          v415 = v102;
          v414 = v101;
          v416 = v103;
          v417 = v99;
          v418 = v97;
          v419 = 0;
          *&v431 = &unk_28810F8B8;
          sub_27130F714(&v409, &v431 + 8);
          v396 = &unk_288114798;
          sub_27130FEA4(&v397, &v431);
          sub_2712CADE8(&v399, &v396);
          sub_2712D6378(a2[3], &v399);
          sub_2712CAF40(&v399);
          v396 = &unk_288114798;
          v104 = v398;
          if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v104->__on_zero_shared)(v104);
            std::__shared_weak_count::__release_weak(v104);
          }

          sub_27112F828(&v431 + 8);
          v20 = v411;
          if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 14:
      sub_2712E41A8(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v79 = a2[1];
        v80 = **a2;
        v81 = *a2[2];
        v409 = &unk_28810E538;
        if (*(v79 + 1))
        {
          v82 = *v79 == 0;
        }

        else
        {
          v82 = 1;
        }

        v83 = (v81 << 31) & 0x7FFFFFFF00000000;
        if (v82)
        {
          v83 = 0;
        }

        v84 = v83 | (4 * (*v79 != 0));
        v399 = 0uLL;
        v85 = *v79;
        if (v82)
        {
          v85 = 0;
        }

        *(&v431 + 4) = v85;
        v86 = v85;
        LODWORD(v431) = 4;
        v87 = v431;
        v88 = HIDWORD(v85);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v84;
        v89 = v431;
        v90 = HIDWORD(v83);
        if (HIDWORD(v85) * HIDWORD(v83) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v410 = 0;
          v411 = 0;
          v412 = v80;
          v413 = v87;
          v415 = v89;
          v414 = v88;
          v416 = v90;
          v417 = v86;
          v418 = v84;
          v419 = 0;
          *&v431 = &unk_28810F878;
          sub_27131045C(&v409, &v431 + 8);
          v396 = &unk_288114798;
          sub_271310C4C(&v397, &v431);
          sub_2712CADE8(&v399, &v396);
          sub_2712D6378(a2[3], &v399);
          sub_2712CAF40(&v399);
          v396 = &unk_288114798;
          v91 = v398;
          if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v91->__on_zero_shared)(v91);
            std::__shared_weak_count::__release_weak(v91);
          }

          sub_27112F828(&v431 + 8);
          v20 = v411;
          if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 15:
      sub_2712E4F60(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v351 = a2[1];
        v352 = **a2;
        v353 = *a2[2];
        v409 = &unk_28810E4B8;
        if (*(v351 + 1))
        {
          v354 = *v351 == 0;
        }

        else
        {
          v354 = 1;
        }

        v355 = (v353 << 31) & 0x7FFFFFFF00000000;
        if (v354)
        {
          v355 = 0;
        }

        v356 = v355 | (4 * (*v351 != 0));
        v399 = 0uLL;
        v357 = *v351;
        if (v354)
        {
          v357 = 0;
        }

        *(&v431 + 4) = v357;
        v358 = v357;
        LODWORD(v431) = 4;
        v359 = v431;
        v360 = HIDWORD(v357);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v356;
        v361 = v431;
        v362 = HIDWORD(v355);
        if (HIDWORD(v357) * HIDWORD(v355) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v410 = 0;
        v411 = 0;
        v412 = v352;
        v413 = v359;
        v415 = v361;
        v414 = v360;
        v416 = v362;
        v417 = v358;
        v418 = v356;
        v419 = 0;
        *&v431 = &unk_28810F838;
        sub_271311204(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_2713119C0(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v363 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v363->__on_zero_shared)(v363);
          std::__shared_weak_count::__release_weak(v363);
        }

        sub_27112F828(&v431 + 8);
        v20 = v411;
        if (!v411)
        {
          goto LABEL_832;
        }

        goto LABEL_452;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      break;
    case 16:
      sub_2712E5D18(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v268 = a2[1];
        v269 = **a2;
        v270 = *a2[2];
        v409 = &unk_28810E438;
        if (*(v268 + 1))
        {
          v271 = *v268 == 0;
        }

        else
        {
          v271 = 1;
        }

        v272 = (v270 << 30) & 0x3FFFFFFF00000000;
        if (v271)
        {
          v272 = 0;
        }

        v273 = v272 | (4 * (*v268 != 0));
        v399 = 0uLL;
        v274 = *v268;
        if (v271)
        {
          v274 = 0;
        }

        *(&v431 + 4) = v274;
        v275 = v274;
        LODWORD(v431) = 4;
        v276 = v431;
        v277 = HIDWORD(v274);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v273;
        v278 = v431;
        v279 = HIDWORD(v272);
        if (HIDWORD(v274) * HIDWORD(v272) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v410 = 0;
          v411 = 0;
          v412 = v269;
          v413 = v276;
          v415 = v278;
          v414 = v277;
          v416 = v279;
          v417 = v275;
          v418 = v273;
          v419 = 0;
          *&v431 = &unk_28810F7F8;
          sub_271311F78(&v409, &v431 + 8);
          v396 = &unk_288114798;
          sub_271312768(&v397, &v431);
          sub_2712CADE8(&v399, &v396);
          sub_2712D6378(a2[3], &v399);
          sub_2712CAF40(&v399);
          v396 = &unk_288114798;
          v280 = v398;
          if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v280->__on_zero_shared)(v280);
            std::__shared_weak_count::__release_weak(v280);
          }

          sub_27112F828(&v431 + 8);
          v20 = v411;
          if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 17:
      sub_2712E6AD4(a2[1], *a2[2], &v420);
      if (v430)
      {
        v364 = a2[1];
        v365 = **a2;
        v366 = a2[2];
        v409 = &unk_28810E3B8;
        v367 = *v364 == 0;
        if (*v364)
        {
          v368 = 3;
        }

        else
        {
          v368 = 0;
        }

        if (!*(v364 + 1))
        {
          v367 = 1;
        }

        v369 = *v366 << 32;
        if (v367)
        {
          v369 = 0;
        }

        v370 = v369 | v368;
        v399 = 0uLL;
        v371 = *v364;
        if (v367)
        {
          v371 = 0;
        }

        *(&v431 + 4) = v371;
        v372 = v371;
        LODWORD(v431) = 3;
        v373 = v431;
        v374 = HIDWORD(v371);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v369 | v368;
        v375 = v431;
        v376 = HIDWORD(v369);
        if (HIDWORD(v371) * HIDWORD(v369) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v410 = 0;
        v411 = 0;
        v412 = v365;
        v413 = v373;
        v415 = v375;
        v414 = v374;
        v416 = v376;
        v417 = v372;
        v418 = v370;
        v419 = 0;
        *&v431 = &unk_28810F778;
        sub_271312D20(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_2713134B0(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v377 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v377->__on_zero_shared)(v377);
          std::__shared_weak_count::__release_weak(v377);
        }

        sub_27112F828(&v431 + 8);
        v20 = v411;
        if (!v411)
        {
          goto LABEL_832;
        }

        goto LABEL_452;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      break;
    case 18:
      sub_2712E76F8(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v118 = a2[1];
        v119 = **a2;
        v120 = *a2[2];
        v409 = &unk_28810E338;
        v121 = *v118 == 0;
        if (*v118)
        {
          v122 = 3;
        }

        else
        {
          v122 = 0;
        }

        if (!*(v118 + 1))
        {
          v121 = 1;
        }

        v123 = (v120 << 31) & 0x7FFFFFFF00000000;
        if (v121)
        {
          v123 = 0;
        }

        v124 = v123 | v122;
        v399 = 0uLL;
        v125 = *v118;
        if (v121)
        {
          v125 = 0;
        }

        *(&v431 + 4) = v125;
        v126 = v125;
        LODWORD(v431) = 3;
        v127 = v431;
        v128 = HIDWORD(v125);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v123 | v122;
        v129 = v431;
        v130 = HIDWORD(v123);
        if (HIDWORD(v125) * HIDWORD(v123) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v410 = 0;
          v411 = 0;
          v412 = v119;
          v413 = v127;
          v415 = v129;
          v414 = v128;
          v416 = v130;
          v417 = v126;
          v418 = v124;
          v419 = 0;
          *&v431 = &unk_28810F738;
          sub_271313A68(&v409, &v431 + 8);
          v396 = &unk_288114798;
          sub_271314258(&v397, &v431);
          sub_2712CADE8(&v399, &v396);
          sub_2712D6378(a2[3], &v399);
          sub_2712CAF40(&v399);
          v396 = &unk_288114798;
          v131 = v398;
          if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v131->__on_zero_shared)(v131);
            std::__shared_weak_count::__release_weak(v131);
          }

          sub_27112F828(&v431 + 8);
          v20 = v411;
          if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 19:
      sub_2712E84CC(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v21 = a2[1];
        v22 = **a2;
        v23 = *a2[2];
        v409 = &unk_28810E2B8;
        v24 = *v21 == 0;
        if (*v21)
        {
          v25 = 3;
        }

        else
        {
          v25 = 0;
        }

        if (!*(v21 + 1))
        {
          v24 = 1;
        }

        v26 = (v23 << 31) & 0x7FFFFFFF00000000;
        if (v24)
        {
          v26 = 0;
        }

        v27 = v26 | v25;
        v399 = 0uLL;
        v28 = *v21;
        if (v24)
        {
          v28 = 0;
        }

        *(&v431 + 4) = v28;
        v29 = v28;
        LODWORD(v431) = 3;
        v30 = v431;
        v31 = HIDWORD(v28);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v26 | v25;
        v32 = v431;
        v33 = HIDWORD(v26);
        if (HIDWORD(v28) * HIDWORD(v26) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v410 = 0;
          v411 = 0;
          v412 = v22;
          v413 = v30;
          v415 = v32;
          v414 = v31;
          v416 = v33;
          v417 = v29;
          v418 = v27;
          v419 = 0;
          *&v431 = &unk_28810F6F8;
          sub_271314810(&v409, &v431 + 8);
          v396 = &unk_288114798;
          sub_271314FCC(&v397, &v431);
          sub_2712CADE8(&v399, &v396);
          sub_2712D6378(a2[3], &v399);
          sub_2712CAF40(&v399);
          v396 = &unk_288114798;
          v34 = v398;
          if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v34->__on_zero_shared)(v34);
            std::__shared_weak_count::__release_weak(v34);
          }

          sub_27112F828(&v431 + 8);
          v20 = v411;
          if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 20:
      sub_2712E92A0(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v334 = a2[1];
        v335 = **a2;
        v336 = *a2[2];
        v409 = &unk_28810E178;
        v337 = *v334 == 0;
        if (*v334)
        {
          v338 = 3;
        }

        else
        {
          v338 = 0;
        }

        if (!*(v334 + 1))
        {
          v337 = 1;
        }

        v339 = (v336 << 30) & 0x3FFFFFFF00000000;
        if (v337)
        {
          v339 = 0;
        }

        v340 = v339 | v338;
        v399 = 0uLL;
        v341 = *v334;
        if (v337)
        {
          v341 = 0;
        }

        *(&v431 + 4) = v341;
        v342 = v341;
        LODWORD(v431) = 3;
        v343 = v431;
        v344 = HIDWORD(v341);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v339 | v338;
        v345 = v431;
        v346 = HIDWORD(v339);
        if (HIDWORD(v341) * HIDWORD(v339) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v410 = 0;
        v411 = 0;
        v412 = v335;
        v413 = v343;
        v415 = v345;
        v414 = v344;
        v416 = v346;
        v417 = v342;
        v418 = v340;
        v419 = 0;
        *&v431 = &unk_28810F5F8;
        sub_271315584(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_271315D74(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v347 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v347->__on_zero_shared)(v347);
          std::__shared_weak_count::__release_weak(v347);
        }

        sub_27112F828(&v431 + 8);
        v20 = v411;
        if (!v411)
        {
          goto LABEL_832;
        }

        goto LABEL_452;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 21:
      sub_2712EA078(a2[1], *a2[2], &v420);
      if (v430)
      {
        v392 = a2[1];
        v393 = **a2;
        LODWORD(v399) = *a2[2];
        sub_271315F98(&v409, v393, v392, &v399);
        *&v431 = &unk_28810F538;
        sub_271316588(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_271316D18(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v394 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v394->__on_zero_shared)(v394);
          std::__shared_weak_count::__release_weak(v394);
        }

        sub_27112F828(&v431 + 8);
        v20 = v411;
        if (!v411 || atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_832;
        }

        goto LABEL_453;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 22:
      sub_2712EAC9C(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v148 = a2[1];
        v149 = **a2;
        LODWORD(v399) = *a2[2] >> 1;
        sub_271316F3C(&v409, v149, v148, &v399);
        *&v431 = &unk_28810F478;
        sub_27131752C(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_271317D1C(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v150 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v150->__on_zero_shared)(v150);
          std::__shared_weak_count::__release_weak(v150);
        }

        sub_27112F828(&v431 + 8);
        v20 = v411;
        if (!v411 || atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_832;
        }

        goto LABEL_453;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 == 1)
      {
        if (v407 == 1)
        {
          if (v406 < 0)
          {
            operator delete(__p);
          }

          if (v404 < 0)
          {
            operator delete(v403);
          }
        }

        if (v402 == 1 && v401 < 0)
        {
          goto LABEL_831;
        }
      }

      goto LABEL_832;
    case 23:
      sub_2712EBA70(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v378 = a2[1];
        v379 = **a2;
        v380 = *a2[2];
        v409 = &unk_28810DF78;
        v381 = *v378 == 0;
        if (*v378)
        {
          v382 = 3;
        }

        else
        {
          v382 = 0;
        }

        if (!*(v378 + 1))
        {
          v381 = 1;
        }

        v383 = (v380 << 31) & 0x7FFFFFFF00000000;
        if (v381)
        {
          v383 = 0;
        }

        v384 = v383 | v382;
        v399 = 0uLL;
        v385 = *v378;
        if (v381)
        {
          v385 = 0;
        }

        *(&v431 + 4) = v385;
        v386 = v385;
        LODWORD(v431) = 3;
        v387 = v431;
        v388 = HIDWORD(v385);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v383 | v382;
        v389 = v431;
        v390 = HIDWORD(v383);
        if (HIDWORD(v385) * HIDWORD(v383) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v410 = 0;
        v411 = 0;
        v412 = v379;
        v413 = v387;
        v415 = v389;
        v414 = v388;
        v416 = v390;
        v417 = v386;
        v418 = v384;
        v419 = 0;
        *&v431 = &unk_28810F438;
        sub_2713182D4(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_271318A90(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v391 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v391->__on_zero_shared)(v391);
          std::__shared_weak_count::__release_weak(v391);
        }

        sub_27112F828(&v431 + 8);
        v20 = v411;
        if (!v411)
        {
          goto LABEL_832;
        }

        goto LABEL_452;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      break;
    case 24:
      sub_2712EC844(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v65 = a2[1];
        v66 = **a2;
        v67 = *a2[2];
        v409 = &unk_28810DEF8;
        v68 = *v65 == 0;
        if (*v65)
        {
          v69 = 3;
        }

        else
        {
          v69 = 0;
        }

        if (!*(v65 + 1))
        {
          v68 = 1;
        }

        v70 = (v67 << 30) & 0x3FFFFFFF00000000;
        if (v68)
        {
          v70 = 0;
        }

        v71 = v70 | v69;
        v399 = 0uLL;
        v72 = *v65;
        if (v68)
        {
          v72 = 0;
        }

        *(&v431 + 4) = v72;
        v73 = v72;
        LODWORD(v431) = 3;
        v74 = v431;
        v75 = HIDWORD(v72);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v70 | v69;
        v76 = v431;
        v77 = HIDWORD(v70);
        if (HIDWORD(v72) * HIDWORD(v70) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v410 = 0;
          v411 = 0;
          v412 = v66;
          v413 = v74;
          v415 = v76;
          v414 = v75;
          v416 = v77;
          v417 = v73;
          v418 = v71;
          v419 = 0;
          *&v431 = &unk_28810F3F8;
          sub_271319048(&v409, &v431 + 8);
          v396 = &unk_288114798;
          sub_271319838(&v397, &v431);
          sub_2712CADE8(&v399, &v396);
          sub_2712D6378(a2[3], &v399);
          sub_2712CAF40(&v399);
          v396 = &unk_288114798;
          v78 = v398;
          if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v78->__on_zero_shared)(v78);
            std::__shared_weak_count::__release_weak(v78);
          }

          sub_27112F828(&v431 + 8);
          v20 = v411;
          if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 25:
      sub_2712ED61C(a2[1], *a2[2], &v420);
      if (v430)
      {
        v35 = a2[1];
        v36 = **a2;
        LODWORD(v399) = *a2[2];
        sub_271319A5C(&v409, v36, v35, &v399);
        *&v431 = &unk_28810F338;
        sub_27131A04C(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_27131A7DC(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v37 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        sub_27112F828(&v431 + 8);
        v20 = v411;
        if (!v411 || atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_832;
        }

        goto LABEL_453;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 == 1)
      {
        if (v407 == 1)
        {
          if (v406 < 0)
          {
            operator delete(__p);
          }

          if (v404 < 0)
          {
            operator delete(v403);
          }
        }

        if (v402 == 1 && v401 < 0)
        {
          goto LABEL_831;
        }
      }

      goto LABEL_832;
    case 26:
      sub_2712EE22C(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v151 = a2[1];
        v152 = **a2;
        v153 = *a2[2];
        v409 = &unk_28810DDB8;
        if (*(v151 + 1))
        {
          v154 = *v151 == 0;
        }

        else
        {
          v154 = 1;
        }

        v155 = (v153 << 31) & 0x7FFFFFFF00000000;
        if (v154)
        {
          v155 = 0;
        }

        v156 = v155 | (4 * (*v151 != 0));
        v399 = 0uLL;
        v157 = *v151;
        if (v154)
        {
          v157 = 0;
        }

        *(&v431 + 4) = v157;
        v158 = v157;
        LODWORD(v431) = 4;
        v159 = v431;
        v160 = HIDWORD(v157);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v156;
        v161 = v431;
        v162 = HIDWORD(v155);
        if (HIDWORD(v157) * HIDWORD(v155) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v410 = 0;
          v411 = 0;
          v412 = v152;
          v413 = v159;
          v415 = v161;
          v414 = v160;
          v416 = v162;
          v417 = v158;
          v418 = v156;
          v419 = 0;
          *&v431 = &unk_28810F2F8;
          sub_27131AD94(&v409, &v431 + 8);
          v396 = &unk_288114798;
          sub_27131B584(&v397, &v431);
          sub_2712CADE8(&v399, &v396);
          sub_2712D6378(a2[3], &v399);
          sub_2712CAF40(&v399);
          v396 = &unk_288114798;
          v163 = v398;
          if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v163->__on_zero_shared)(v163);
            std::__shared_weak_count::__release_weak(v163);
          }

          sub_27112F828(&v431 + 8);
          v20 = v411;
          if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 27:
      sub_2712EEFE4(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v7 = a2[1];
        v8 = **a2;
        v9 = *a2[2];
        v409 = &unk_28810DD38;
        if (*(v7 + 1))
        {
          v10 = *v7 == 0;
        }

        else
        {
          v10 = 1;
        }

        v11 = (v9 << 31) & 0x7FFFFFFF00000000;
        if (v10)
        {
          v11 = 0;
        }

        v12 = v11 | (4 * (*v7 != 0));
        v399 = 0uLL;
        v13 = *v7;
        if (v10)
        {
          v13 = 0;
        }

        *(&v431 + 4) = v13;
        v14 = v13;
        LODWORD(v431) = 4;
        v15 = v431;
        v16 = HIDWORD(v13);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v12;
        v17 = v431;
        v18 = HIDWORD(v11);
        if (HIDWORD(v13) * HIDWORD(v11) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v410 = 0;
          v411 = 0;
          v412 = v8;
          v413 = v15;
          v415 = v17;
          v414 = v16;
          v416 = v18;
          v417 = v14;
          v418 = v12;
          v419 = 0;
          *&v431 = &unk_28810F2B8;
          sub_27131BB3C(&v409, &v431 + 8);
          v396 = &unk_288114798;
          sub_27131C2F8(&v397, &v431);
          sub_2712CADE8(&v399, &v396);
          sub_2712D6378(a2[3], &v399);
          sub_2712CAF40(&v399);
          v396 = &unk_288114798;
          v19 = v398;
          if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
          }

          sub_27112F828(&v431 + 8);
          v20 = v411;
          if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 28:
      sub_2712EFD9C(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v183 = a2[1];
        v184 = **a2;
        v185 = *a2[2];
        v409 = &unk_28810DCB8;
        if (*(v183 + 1))
        {
          v186 = *v183 == 0;
        }

        else
        {
          v186 = 1;
        }

        v187 = (v185 << 30) & 0x3FFFFFFF00000000;
        if (v186)
        {
          v187 = 0;
        }

        v188 = v187 | (4 * (*v183 != 0));
        v399 = 0uLL;
        v189 = *v183;
        if (v186)
        {
          v189 = 0;
        }

        *(&v431 + 4) = v189;
        v190 = v189;
        LODWORD(v431) = 4;
        v191 = v431;
        v192 = HIDWORD(v189);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v188;
        v193 = v431;
        v194 = HIDWORD(v187);
        if (HIDWORD(v189) * HIDWORD(v187) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v410 = 0;
          v411 = 0;
          v412 = v184;
          v413 = v191;
          v415 = v193;
          v414 = v192;
          v416 = v194;
          v417 = v190;
          v418 = v188;
          v419 = 0;
          *&v431 = &unk_28810F278;
          sub_27131C8B0(&v409, &v431 + 8);
          v396 = &unk_288114798;
          sub_27131D0A0(&v397, &v431);
          sub_2712CADE8(&v399, &v396);
          sub_2712D6378(a2[3], &v399);
          sub_2712CAF40(&v399);
          v396 = &unk_288114798;
          v195 = v398;
          if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v195->__on_zero_shared)(v195);
            std::__shared_weak_count::__release_weak(v195);
          }

          sub_27112F828(&v431 + 8);
          v20 = v411;
          if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 29:
      sub_2712F0B58(a2[1], *a2[2], &v420);
      if (v430)
      {
        v52 = a2[1];
        v53 = **a2;
        v54 = a2[2];
        v409 = &unk_28810DC38;
        if (*(v52 + 1))
        {
          v55 = *v52 == 0;
        }

        else
        {
          v55 = 1;
        }

        v56 = *v54 << 32;
        if (v55)
        {
          v56 = 0;
        }

        v57 = v56 | (4 * (*v52 != 0));
        v399 = 0uLL;
        v58 = *v52;
        if (v55)
        {
          v58 = 0;
        }

        *(&v431 + 4) = v58;
        v59 = v58;
        LODWORD(v431) = 4;
        v60 = v431;
        v61 = HIDWORD(v58);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v57;
        v62 = v431;
        v63 = HIDWORD(v56);
        if (HIDWORD(v58) * HIDWORD(v56) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v410 = 0;
          v411 = 0;
          v412 = v53;
          v413 = v60;
          v415 = v62;
          v414 = v61;
          v416 = v63;
          v417 = v59;
          v418 = v57;
          v419 = 0;
          *&v431 = &unk_28810F1F8;
          sub_27131D658(&v409, &v431 + 8);
          v396 = &unk_288114798;
          sub_27131DDE8(&v397, &v431);
          sub_2712CADE8(&v399, &v396);
          sub_2712D6378(a2[3], &v399);
          sub_2712CAF40(&v399);
          v396 = &unk_288114798;
          v64 = v398;
          if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v64->__on_zero_shared)(v64);
            std::__shared_weak_count::__release_weak(v64);
          }

          sub_27112F828(&v431 + 8);
          v20 = v411;
          if (v411 && !atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      sub_2712CD070(a2[3], &v399);
      if (v408 != 1)
      {
        goto LABEL_832;
      }

      if (v407 == 1)
      {
        if (v406 < 0)
        {
          operator delete(__p);
        }

        if (v404 < 0)
        {
          operator delete(v403);
        }
      }

      if (v402 != 1 || (v401 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 30:
      sub_2712F1768(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v222 = a2[1];
        v223 = **a2;
        v224 = *a2[2];
        v409 = &unk_28810DAF8;
        if (*(v222 + 1))
        {
          v225 = *v222 == 0;
        }

        else
        {
          v225 = 1;
        }

        v226 = (v224 << 31) & 0x7FFFFFFF00000000;
        if (v225)
        {
          v226 = 0;
        }

        v227 = v226 | (4 * (*v222 != 0));
        v399 = 0uLL;
        v228 = *v222;
        if (v225)
        {
          v228 = 0;
        }

        *(&v431 + 4) = v228;
        v229 = v228;
        LODWORD(v431) = 4;
        v230 = v431;
        v231 = HIDWORD(v228);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v227;
        v232 = v431;
        v233 = HIDWORD(v226);
        if (HIDWORD(v228) * HIDWORD(v226) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v410 = 0;
        v411 = 0;
        v412 = v223;
        v413 = v230;
        v415 = v232;
        v414 = v231;
        v416 = v233;
        v417 = v229;
        v418 = v227;
        v419 = 0;
        *&v431 = &unk_28810F0F8;
        sub_27131E3A0(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_27131EB90(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v234 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v234->__on_zero_shared)(v234);
          std::__shared_weak_count::__release_weak(v234);
        }

        sub_27112F828(&v431 + 8);
        v20 = v411;
        if (!v411)
        {
          goto LABEL_832;
        }

LABEL_452:
        if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_832;
        }

        goto LABEL_453;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      break;
    case 31:
      sub_2712F2520(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v164 = a2[1];
        v165 = **a2;
        LODWORD(v399) = *a2[2] >> 1;
        sub_27131EDB4(&v409, v165, v164, &v399);
        *&v431 = &unk_28810F038;
        sub_27131F3A4(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_27131FB60(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v166 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v166->__on_zero_shared)(v166);
          std::__shared_weak_count::__release_weak(v166);
        }

        goto LABEL_451;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      break;
    case 32:
      sub_2712F32D8(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v248 = a2[1];
        v249 = **a2;
        LODWORD(v399) = *a2[2] >> 2;
        sub_27131FD84(&v409, v249, v248, &v399);
        *&v431 = &unk_28810EF78;
        sub_271320374(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_271320B64(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v250 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v250->__on_zero_shared)(v250);
          std::__shared_weak_count::__release_weak(v250);
        }

        goto LABEL_451;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      break;
    case 33:
      sub_2712F4094(a2[1], *a2[2], &v420);
      if (v430)
      {
        v321 = a2[1];
        v322 = **a2;
        v323 = a2[2];
        v409 = &unk_28810D8F8;
        if (*(v321 + 1))
        {
          v324 = *v321 == 0;
        }

        else
        {
          v324 = 1;
        }

        v325 = *v323 << 32;
        if (v324)
        {
          v325 = 0;
        }

        v326 = v325 | (4 * (*v321 != 0));
        v399 = 0uLL;
        v327 = *v321;
        if (v324)
        {
          v327 = 0;
        }

        *(&v431 + 4) = v327;
        v328 = v327;
        LODWORD(v431) = 4;
        v329 = v431;
        v330 = HIDWORD(v327);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v326;
        v331 = v431;
        v332 = HIDWORD(v325);
        if (HIDWORD(v327) * HIDWORD(v325) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v410 = 0;
        v411 = 0;
        v412 = v322;
        v413 = v329;
        v415 = v331;
        v414 = v330;
        v416 = v332;
        v417 = v328;
        v418 = v326;
        v419 = 0;
        *&v431 = &unk_28810EEF8;
        sub_27132111C(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_2713218AC(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v333 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v333->__on_zero_shared)(v333);
          std::__shared_weak_count::__release_weak(v333);
        }

LABEL_451:
        sub_27112F828(&v431 + 8);
        v20 = v411;
        if (!v411)
        {
          goto LABEL_832;
        }

        goto LABEL_452;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      break;
    case 34:
      sub_2712F4CA4(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v235 = a2[1];
        v236 = **a2;
        v237 = *a2[2];
        v409 = &unk_28810D878;
        if (*(v235 + 1))
        {
          v238 = *v235 == 0;
        }

        else
        {
          v238 = 1;
        }

        v239 = (v237 << 31) & 0x7FFFFFFF00000000;
        if (v238)
        {
          v239 = 0;
        }

        v240 = v239 | (4 * (*v235 != 0));
        v399 = 0uLL;
        v241 = *v235;
        if (v238)
        {
          v241 = 0;
        }

        *(&v431 + 4) = v241;
        v242 = v241;
        LODWORD(v431) = 4;
        v243 = v431;
        v244 = HIDWORD(v241);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v240;
        v245 = v431;
        v246 = HIDWORD(v239);
        if (HIDWORD(v241) * HIDWORD(v239) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v410 = 0;
        v411 = 0;
        v412 = v236;
        v413 = v243;
        v415 = v245;
        v414 = v244;
        v416 = v246;
        v417 = v242;
        v418 = v240;
        v419 = 0;
        *&v431 = &unk_28810EEB8;
        sub_271321E64(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_271322654(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v247 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v247->__on_zero_shared)(v247);
          std::__shared_weak_count::__release_weak(v247);
        }

        goto LABEL_451;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      break;
    case 35:
      sub_2712F5A5C(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v209 = a2[1];
        v210 = **a2;
        v211 = *a2[2];
        v409 = &unk_28810D7F8;
        if (*(v209 + 1))
        {
          v212 = *v209 == 0;
        }

        else
        {
          v212 = 1;
        }

        v213 = (v211 << 31) & 0x7FFFFFFF00000000;
        if (v212)
        {
          v213 = 0;
        }

        v214 = v213 | (4 * (*v209 != 0));
        v399 = 0uLL;
        v215 = *v209;
        if (v212)
        {
          v215 = 0;
        }

        *(&v431 + 4) = v215;
        v216 = v215;
        LODWORD(v431) = 4;
        v217 = v431;
        v218 = HIDWORD(v215);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v214;
        v219 = v431;
        v220 = HIDWORD(v213);
        if (HIDWORD(v215) * HIDWORD(v213) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v410 = 0;
        v411 = 0;
        v412 = v210;
        v413 = v217;
        v415 = v219;
        v414 = v218;
        v416 = v220;
        v417 = v216;
        v418 = v214;
        v419 = 0;
        *&v431 = &unk_28810EE78;
        sub_271322C0C(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_2713233C8(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v221 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v221->__on_zero_shared)(v221);
          std::__shared_weak_count::__release_weak(v221);
        }

        goto LABEL_451;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      break;
    case 36:
      sub_2712F6814(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v196 = a2[1];
        v197 = **a2;
        v198 = *a2[2];
        v409 = &unk_28810D778;
        if (*(v196 + 1))
        {
          v199 = *v196 == 0;
        }

        else
        {
          v199 = 1;
        }

        v200 = (v198 << 30) & 0x3FFFFFFF00000000;
        if (v199)
        {
          v200 = 0;
        }

        v201 = v200 | (4 * (*v196 != 0));
        v399 = 0uLL;
        v202 = *v196;
        if (v199)
        {
          v202 = 0;
        }

        *(&v431 + 4) = v202;
        v203 = v202;
        LODWORD(v431) = 4;
        v204 = v431;
        v205 = HIDWORD(v202);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v201;
        v206 = v431;
        v207 = HIDWORD(v200);
        if (HIDWORD(v202) * HIDWORD(v200) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v410 = 0;
        v411 = 0;
        v412 = v197;
        v413 = v204;
        v415 = v206;
        v414 = v205;
        v416 = v207;
        v417 = v203;
        v418 = v201;
        v419 = 0;
        *&v431 = &unk_28810EE38;
        sub_271323980(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_271324170(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v208 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v208->__on_zero_shared)(v208);
          std::__shared_weak_count::__release_weak(v208);
        }

        goto LABEL_451;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      break;
    case 37:
      sub_2712F75D0(a2[1], *a2[2], &v420);
      if (v430)
      {
        v290 = a2[1];
        v291 = **a2;
        LODWORD(v399) = *a2[2];
        sub_271324394(&v409, v291, v290, &v399);
        *&v431 = &unk_28810ED78;
        sub_271324984(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_271325114(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v292 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v292->__on_zero_shared)(v292);
          std::__shared_weak_count::__release_weak(v292);
        }

        goto LABEL_451;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      break;
    case 38:
      sub_2712F81E0(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v348 = a2[1];
        v349 = **a2;
        LODWORD(v399) = *a2[2] >> 1;
        sub_271325338(&v409, v349, v348, &v399);
        *&v431 = &unk_28810ECB8;
        sub_271325928(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_271326118(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v350 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v350->__on_zero_shared)(v350);
          std::__shared_weak_count::__release_weak(v350);
        }

        goto LABEL_451;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      break;
    case 39:
      sub_2712F8F98(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v135 = a2[1];
        v136 = **a2;
        v137 = *a2[2];
        v409 = &unk_28810D578;
        if (*(v135 + 1))
        {
          v138 = *v135 == 0;
        }

        else
        {
          v138 = 1;
        }

        v139 = (v137 << 31) & 0x7FFFFFFF00000000;
        if (v138)
        {
          v139 = 0;
        }

        v140 = v139 | (4 * (*v135 != 0));
        v399 = 0uLL;
        v141 = *v135;
        if (v138)
        {
          v141 = 0;
        }

        *(&v431 + 4) = v141;
        v142 = v141;
        LODWORD(v431) = 4;
        v143 = v431;
        v144 = HIDWORD(v141);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v140;
        v145 = v431;
        v146 = HIDWORD(v139);
        if (HIDWORD(v141) * HIDWORD(v139) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v410 = 0;
        v411 = 0;
        v412 = v136;
        v413 = v143;
        v415 = v145;
        v414 = v144;
        v416 = v146;
        v417 = v142;
        v418 = v140;
        v419 = 0;
        *&v431 = &unk_28810EC78;
        sub_2713266D0(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_271326E8C(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v147 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v147->__on_zero_shared)(v147);
          std::__shared_weak_count::__release_weak(v147);
        }

        goto LABEL_451;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      break;
    case 40:
      sub_2712F9D50(**a2, a2[1], *a2[2], &v420);
      if (v430)
      {
        v105 = a2[1];
        v106 = **a2;
        v107 = *a2[2];
        v409 = &unk_28810D438;
        if (*(v105 + 1))
        {
          v108 = *v105 == 0;
        }

        else
        {
          v108 = 1;
        }

        v109 = (v107 << 30) & 0x3FFFFFFF00000000;
        if (v108)
        {
          v109 = 0;
        }

        v110 = v109 | (4 * (*v105 != 0));
        v399 = 0uLL;
        v111 = *v105;
        if (v108)
        {
          v111 = 0;
        }

        *(&v431 + 4) = v111;
        v112 = v111;
        LODWORD(v431) = 4;
        v113 = v431;
        v114 = HIDWORD(v111);
        LODWORD(v431) = 1;
        *(&v431 + 4) = v110;
        v115 = v431;
        v116 = HIDWORD(v109);
        if (HIDWORD(v111) * HIDWORD(v109) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v410 = 0;
        v411 = 0;
        v412 = v106;
        v413 = v113;
        v415 = v115;
        v414 = v114;
        v416 = v116;
        v417 = v112;
        v418 = v110;
        v419 = 0;
        *&v431 = &unk_28810EB78;
        sub_271327444(&v409, &v431 + 8);
        v396 = &unk_288114798;
        sub_271327C34(&v397, &v431);
        sub_2712CADE8(&v399, &v396);
        sub_2712D6378(a2[3], &v399);
        sub_2712CAF40(&v399);
        v396 = &unk_288114798;
        v117 = v398;
        if (v398 && !atomic_fetch_add(&v398->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v117->__on_zero_shared)(v117);
          std::__shared_weak_count::__release_weak(v117);
        }

        goto LABEL_451;
      }

      v399 = v420;
      LOBYTE(v400[0]) = 0;
      v408 = 0;
      if (v429 == 1)
      {
        sub_27112F6CC(v400, v421);
        v408 = 1;
      }

      break;
    default:
      return;
  }

  sub_2712CD070(a2[3], &v399);
  if (v408 != 1)
  {
    goto LABEL_832;
  }

  if (v407 == 1)
  {
    if (v406 < 0)
    {
      operator delete(__p);
    }

    if (v404 < 0)
    {
      operator delete(v403);
    }
  }

  if (v402 != 1 || (v401 & 0x80000000) == 0)
  {
    goto LABEL_832;
  }

LABEL_831:
  operator delete(v400[0]);
  goto LABEL_832;
}