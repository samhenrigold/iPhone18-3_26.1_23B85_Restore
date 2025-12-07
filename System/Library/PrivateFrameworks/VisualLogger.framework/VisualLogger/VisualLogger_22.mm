uint64_t sub_2712C9E78(uint64_t result)
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

void sub_2712C9EF4(uint64_t *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v17 + 7) = *(a2 + 15);
  v5 = *a2;
  v17[0] = *(a2 + 8);
  v4 = v17[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = v5;
  *v13 = v4;
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  memset(v17, 0, 15);
  v7 = *(v2 + 24);
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

  v16 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_28812FA50[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v12, 2uLL);
  *(v3 + 24) = 2;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12);
    return;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_13;
  }
}

void sub_2712CA0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712CA110(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2712CA350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_2712CA36C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812FA50[v3])(&v6, v1);
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

void sub_2712CA460(int a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 - 1) > 0x27)
  {
    sub_2712FD28C(a1, &v7);
    *a2 = v7;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    if (v17 != 1)
    {
      *(a2 + 120) = 0;
      return;
    }

    *(a2 + 40) = 0;
    v4 = v10;
    if (v10 == 1)
    {
      *(a2 + 16) = __p;
      *(a2 + 32) = v9;
      v9 = 0;
      __p = 0uLL;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v5 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v16 & 1) == 0)
      {
LABEL_8:
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (!v4)
        {
          return;
        }

LABEL_17:
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p);
        }

        return;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v5 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v16 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v6 = v13;
    *(v5 + 16) = v12;
    *v5 = v11;
    v11 = 0uLL;
    *(a2 + 72) = v6;
    *(a2 + 80) = v14;
    *(a2 + 96) = v15;
    v12 = 0;
    v14 = 0uLL;
    v15 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_17;
  }

  v3 = 1;
  if ((a1 - 1) >= 4)
  {
    if ((a1 - 5) < 4)
    {
      *a2 = 2;
      *(a2 + 120) = 1;
      return;
    }

    if (a1 - 9) < 0x10 && ((0xFF0Fu >> (a1 - 9)))
    {
      v3 = 3;
    }

    else
    {
      v3 = 4;
      if ((a1 - 13) >= 4 && (a1 - 25) >= 0x10)
      {
        sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/Format.h", 493, "", 0, "unsupported format", 0x12uLL, sub_271852CA8);
        abort();
      }
    }
  }

  *a2 = v3;
  *(a2 + 120) = 1;
}

void sub_2712CA66C(int a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 - 1) <= 0x27)
  {
    v3 = 1;
    if ((a1 - 1) >= 4)
    {
      if ((a1 - 5) >= 4)
      {
        if (a1 - 9) < 0x10 && ((0xFF0Fu >> (a1 - 9)))
        {
          v3 = 3;
        }

        else
        {
          v3 = 4;
          if ((a1 - 13) >= 4 && (a1 - 25) >= 0x10)
          {
            sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/Format.h", 493, "", 0, "unsupported format", 0x12uLL, sub_271852CA8);
            abort();
          }
        }
      }

      else
      {
        v3 = 2;
      }
    }

    *a2 = dword_271870C80[a1 & 3] * v3;
    *(a2 + 120) = 1;
    return;
  }

  sub_2712FD28C(a1, &v7);
  *a2 = v7;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v17 != 1)
  {
    *(a2 + 120) = 0;
    return;
  }

  *(a2 + 40) = 0;
  v4 = v10;
  if (v10 != 1)
  {
    *(a2 + 48) = 0;
    v5 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v16 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v6 = v13;
    *(v5 + 16) = v12;
    *v5 = v11;
    v11 = 0uLL;
    *(a2 + 72) = v6;
    *(a2 + 80) = v14;
    *(a2 + 96) = v15;
    v12 = 0;
    v14 = 0uLL;
    v15 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_16;
  }

  *(a2 + 16) = __p;
  *(a2 + 32) = v9;
  v9 = 0;
  __p = 0uLL;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  v5 = a2 + 48;
  *(a2 + 104) = 0;
  if (v16)
  {
    goto LABEL_15;
  }

LABEL_8:
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (!v4)
  {
    return;
  }

LABEL_16:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void sub_2712CA87C(int a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 - 1) <= 0x27)
  {
    *a2 = dword_271870C80[a1 & 3];
    *(a2 + 120) = 1;
    return;
  }

  sub_2712FD28C(a1, &v6);
  *a2 = v6;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v16 != 1)
  {
    *(a2 + 120) = 0;
    return;
  }

  *(a2 + 40) = 0;
  v3 = v9;
  if (v9 == 1)
  {
    *(a2 + 16) = __p;
    *(a2 + 32) = v8;
    v8 = 0;
    __p = 0uLL;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    v4 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v15 & 1) == 0)
    {
LABEL_7:
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (!v3)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    *(a2 + 48) = 0;
    v4 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v5 = v12;
  *(v4 + 16) = v11;
  *v4 = v10;
  v10 = 0uLL;
  *(a2 + 72) = v5;
  *(a2 + 80) = v13;
  *(a2 + 96) = v14;
  v11 = 0;
  v13 = 0uLL;
  v14 = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (!v3)
  {
    return;
  }

LABEL_12:
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }
}

void sub_2712CA9E4(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  sub_2717CD2D0(&v1, &v3, &v4, 1, &v2, 1, 0);
  operator new();
}

void sub_2712CAD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_27112F828(v15 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712CADD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2712CADE8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881177F0;
  *(a1 + 8) = &unk_2881147D8;
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = a2 + 8;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a2 + 40);
    v6 = *(a2 + 48);
    v7 = *(a2 + 52);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = *(a2 + 40);
    v6 = *(a2 + 48);
    v7 = *(a2 + 52);
  }

  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  v9 = *(a2 + 24);
  v8 = a2 + 24;
  *(a1 + 40) = *(v8 + 8);
  *(a1 + 32) = v9;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 60) = v7;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = a1;
    v11 = v8;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v8 = v11;
    a1 = v10;
  }

  *(a1 + 64) = &unk_288114798;
  *(a1 + 72) = *v4;
  *v4 = 0;
  *(v4 + 8) = 0;
  result = *v8;
  *(a1 + 102) = *(v8 + 14);
  *(a1 + 88) = result;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  return result;
}

uint64_t sub_2712CAF40(uint64_t result)
{
  *result = &unk_2881177F0;
  if (*(result + 152) == 1)
  {
    *(result + 128) = &unk_288115A20;
    v1 = *(result + 144);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        result = v2;
      }
    }
  }

  if (*(result + 120) == 1)
  {
    *(result + 64) = &unk_288114798;
    v3 = *(result + 80);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        result = v4;
      }
    }
  }

  *(result + 8) = &unk_2881147D8;
  v5 = *(result + 24);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

void sub_2712CB0F0(uint64_t a1)
{
  sub_2712CAF40(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712CB128(_DWORD *a1)
{
  v1 = a1[8];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[9];
  if (!v2)
  {
    return 0;
  }

  v3 = a1[14];
  if ((v3 - 1) >= 4)
  {
    if ((v3 - 5) >= 4)
    {
      if (v3 - 9) < 0x10 && ((0xFF0Fu >> (v3 - 9)))
      {
        v4 = 3;
      }

      else
      {
        v4 = 4;
        if ((v3 - 13) >= 4 && (v3 - 25) >= 0x10)
        {
          if (!v3)
          {
            sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/Format.h", 491, "", 0, "dynamic format properties only known at runtime", 0x2FuLL, sub_271852CA8);
            abort();
          }

          sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/Format.h", 493, "", 0, "unsupported format", 0x12uLL, sub_271852CA8);
          abort();
        }
      }
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

  return (a1[10] * (v2 - 1)) + qword_27187ABD8[v3 & 3] * (v4 * v1);
}

uint64_t sub_2712CB250(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 60) == 1 && *(a1 + 48))
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v4 = v6;
      }
    }

    (*(*v4 + 88))(v4, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
  }

  v7 = *(a1 + 48);
  v8 = *(a2 + 48);
  if (*(a2 + 60) == 1 && v8 != 0)
  {
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v12 = v10;
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = v12;
      }
    }

    (*(*v10 + 88))(v10, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
    v8 = *(a2 + 48);
  }

  if (v7 == v8)
  {
    if (*(a1 + 48) == v7)
    {
      if (*(a1 + 56) == *(a2 + 56))
      {
        result = 0;
        if (*(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36))
        {
          return *(a1 + 40) == *(a2 + 40);
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return sub_271229730(a1 + 8, a2 + 8);
  }

  return result;
}

void sub_2712CB4A8(int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a2;
  v26 = a4;
  v23 = a5;
  v24 = a3;
  v22 = a6;
  if ((a2 - 1) < 0x28)
  {
    sub_2712CA9E4(&v11);
  }

  sub_2712FD28C(a2, &v11);
  *a7 = v11;
  *(a7 + 16) = 0;
  *(a7 + 112) = 0;
  if (v21 != 1)
  {
    *(a7 + 160) = 0;
    return;
  }

  *(a7 + 40) = 0;
  v8 = v14;
  if (v14 != 1)
  {
    *(a7 + 48) = 0;
    v9 = a7 + 48;
    *(a7 + 104) = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v10 = v17;
    *(v9 + 16) = v16;
    *v9 = v15;
    v15 = 0uLL;
    *(a7 + 72) = v10;
    *(a7 + 80) = v18;
    *(a7 + 96) = v19;
    v16 = 0;
    v18 = 0uLL;
    v19 = 0;
    *(a7 + 104) = 1;
    *(a7 + 112) = 1;
    *(a7 + 160) = 0;
    if (!v8)
    {
      return;
    }

    goto LABEL_11;
  }

  *(a7 + 16) = v12;
  *(a7 + 32) = v13;
  v13 = 0;
  v12 = 0uLL;
  *(a7 + 40) = 1;
  *(a7 + 48) = 0;
  v9 = a7 + 48;
  *(a7 + 104) = 0;
  if (v20)
  {
    goto LABEL_10;
  }

LABEL_6:
  *(a7 + 112) = 1;
  *(a7 + 160) = 0;
  if (!v8)
  {
    return;
  }

LABEL_11:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }
}

void sub_2712CBA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_27112D66C(v23 + 16);
  sub_27112E024(va);
  sub_271154B3C(v24 - 248);
  _Unwind_Resume(a1);
}

void sub_2712CBA90(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  if (*(a2 + 400) == 1)
  {
    if (*(a2 + 16) == 1)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      if (*(a2 + 56) != 1)
      {
LABEL_14:
        *&v26 = v5;
        BYTE8(v26) = v6;
        sub_27113523C(&v27, (a2 + 32));
        sub_2712FB3DC(&v43, a1 + 8, &v26);
        sub_271228D08(&v44, &v43);
      }
    }

    else
    {
      v43 = &unk_28810A440;
      v5 = sub_271815924();
      v6 = 2;
      if (*(a2 + 56) != 1)
      {
        goto LABEL_14;
      }
    }

    sub_2711DAE40((a2 + 32), 1000000000);
    goto LABEL_14;
  }

  LOBYTE(v14) = 0;
  LOBYTE(v15) = 0;
  LOBYTE(v16) = 0;
  v17 = 0;
  v18 = v14;
  v19 = v15;
  LOBYTE(v20) = 0;
  v21 = 0;
  LOBYTE(v22) = 0;
  v23 = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  sub_27113523C(&v44, &v16);
  *&v26 = sub_271815924();
  BYTE8(v26) = 2;
  LOBYTE(v27) = 0;
  v29 = 0;
  if (v46 == 1)
  {
    v27 = v44;
    v28 = v45;
    v45 = 0;
    v44 = 0uLL;
    v29 = 1;
  }

  v30 = v47;
  v31 = v48;
  LOBYTE(v32) = 0;
  v34 = 0;
  if (v51 == 1)
  {
    v32 = v49;
    v33 = v50;
    v50 = 0;
    v49 = 0uLL;
    v34 = 1;
    LOBYTE(v35) = 0;
    v39 = 0;
    if (v54 != 1)
    {
LABEL_9:
      LOBYTE(v40) = 0;
      v42 = 0;
      if ((v57 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(v35) = 0;
    v39 = 0;
    if (v54 != 1)
    {
      goto LABEL_9;
    }
  }

  _X0 = 0;
  _X1 = 0;
  v36 = v53;
  v35 = v52;
  v53 = 0;
  v52 = 0uLL;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v37 = _X0;
  v38 = 0;
  v39 = 1;
  LOBYTE(v40) = 0;
  v42 = 0;
  if ((v57 & 1) == 0)
  {
LABEL_10:
    if (v54 != 1)
    {
      goto LABEL_20;
    }

LABEL_18:
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

LABEL_20:
    if (v51 == 1 && SHIBYTE(v50) < 0)
    {
      operator delete(v49);
    }

    if (v46 == 1 && SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    sub_2712FB3DC(&v43, a1 + 8, &v26);
    sub_271228D08(&v44, &v43);
  }

LABEL_17:
  v40 = v55;
  v41 = v56;
  v56 = 0;
  v55 = 0uLL;
  v42 = 1;
  if (v54 != 1)
  {
    goto LABEL_20;
  }

  goto LABEL_18;
}

void sub_2712CC7C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2712CC8BC(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 55);
  v5 = *(a1 + 56);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = __dynamic_cast(v4, &unk_28811D1B0, &unk_28811D018, 0) != 0;
    if (!v5)
    {
LABEL_8:
      if (v6)
      {
        goto LABEL_9;
      }

LABEL_15:
      v27 = 0;
      v28 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_9:
  v7 = *(a1 + 55);
  v8 = *(a1 + 56);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = v7;
  v28 = v8;
  if (!v7)
  {
LABEL_16:
    v29 = *"cv3d.viz";
    v30 = 0x800000000000000;
    v31 = 1;
    sub_2711BE814(&v26, &v29, 1uLL);
    if (*(a1 + 23) < 0)
    {
      sub_271127178(&v23, *a1, *(a1 + 1));
    }

    else
    {
      v23 = *a1;
      v24 = *(a1 + 2);
    }

    v25 = *(a1 + 6);
    operator new();
  }

  v9 = *(v7 + 24);
  v10 = *(v7 + 32);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = *(v7 + 56);
    v12 = *(v7 + 64);
    v13 = *(v7 + 68);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = *(v7 + 56);
    v12 = *(v7 + 64);
    v13 = *(v7 + 68);
  }

  *&v15 = v9;
  *(&v15 + 1) = v10;
  *v16 = *(v7 + 40);
  *&v16[8] = *(v7 + 48);
  *&v16[16] = v11;
  *&v16[24] = v12;
  *&v16[28] = v13;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17[0] = &unk_2881177F0;
  v17[1] = &unk_2881147D8;
  v17[2] = 0;
  *v18 = *v16;
  *&v18[14] = *&v16[14];
  LOBYTE(v19) = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  *a2 = &unk_2881177F0;
  *(a2 + 8) = &unk_2881147D8;
  v17[3] = 0;
  *(a2 + 16) = v15;
  *(a2 + 32) = *v16;
  *(a2 + 46) = *&v16[14];
  *(a2 + 64) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  sub_2712CAF40(v17);
  v14 = v28;
  if (v28)
  {
    if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

void sub_2712CCE74(_Unwind_Exception *a1)
{
  sub_2711BEA2C((v1 - 136));
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  sub_27112F828(v1 - 112);
  _Unwind_Resume(a1);
}

void sub_2712CCEFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_2712CD20C(&v16, **v1, *(v1 + 8));
  if ((v18 & 1) == 0)
  {
    v2 = SHIBYTE(v17);
    if (SHIBYTE(v17) < 0)
    {
      sub_271127178(v3, v16, *(&v16 + 1));
    }

    else
    {
      *v3 = v16;
      v4 = v17;
    }

    v5 = 1;
    sub_271369D54(v3, &v6);
    sub_2712CD070(*(v1 + 16), &v6);
    if (v15 == 1)
    {
      if (v14 == 1)
      {
        if (v13 < 0)
        {
          operator delete(__p);
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

    if (v5 == 1 && SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }

    if (v2 < 0)
    {
      operator delete(v16);
    }
  }
}

__int128 *sub_2712CD070(__int128 *a1, __int128 *a2)
{
  v5 = *a2;
  LOBYTE(v6[0]) = 0;
  v15 = 0;
  if (*(a2 + 112) == 1)
  {
    v8 = 0;
    if (*(a2 + 40) == 1)
    {
      *v6 = a2[1];
      v7 = *(a2 + 4);
      *(a2 + 24) = 0uLL;
      *(a2 + 2) = 0;
      v8 = 1;
    }

    LOBYTE(v9[0]) = 0;
    v14 = 0;
    if (*(a2 + 104) == 1)
    {
      v3 = *(a2 + 9);
      v10 = *(a2 + 8);
      *v9 = a2[3];
      *(a2 + 56) = 0uLL;
      *(a2 + 6) = 0;
      v11 = v3;
      *__p = a2[5];
      v13 = *(a2 + 12);
      a2[5] = 0uLL;
      *(a2 + 12) = 0;
      v14 = 1;
    }

    v15 = 1;
  }

  v16 = 0;
  sub_2712D959C(&v5, a1);
  if (v16 == 1)
  {
    (*v5)(&v5);
    return a1;
  }

  if (v15 != 1)
  {
    return a1;
  }

  if (v14 == 1)
  {
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }
  }

  if (v8 != 1 || (SHIBYTE(v7) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v6[0]);
  return a1;
}

void sub_2712CD20C(uint64_t a1, int a2, uint64_t **a3)
{
  v67 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      sub_2712D6134(a3[1], *a3[2], &v43);
      if (v53)
      {
        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 2:
      sub_2712DA1A4(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 3:
      sub_2712DAF50(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 4:
      sub_2712DBCFC(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 5:
      sub_2712DCAB0(a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v24 = *a3[2];
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v24 << 32) | 2;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 6:
      sub_2712DD6C8(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v27 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v27 << 32) | 2;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 7:
      sub_2712DE480(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v20 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v20 << 32) | 2;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 8:
      sub_2712DF238(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v30 = *a3[2] >> 2;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v30 << 32) | 2;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 9:
      sub_2712DFFF4(a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v16 = *a3[2];
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v16 << 32) | 3;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 10:
      sub_2712E0C18(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v29 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v29 << 32) | 3;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 11:
      sub_2712E19EC(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v13 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v13 << 32) | 3;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 12:
      sub_2712E27C0(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v15 = *a3[2] >> 2;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v15 << 32) | 3;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 13:
      sub_2712E3598(a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v26 = *a3[2];
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v26 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 14:
      sub_2712E41A8(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v11 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v11 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 15:
      sub_2712E4F60(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v19 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v19 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 16:
      sub_2712E5D18(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v10 = *a3[2] >> 2;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v10 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 17:
      sub_2712E6AD4(a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v22 = *a3[2];
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v22 << 32) | 3;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 18:
      sub_2712E76F8(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v28 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v28 << 32) | 3;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 19:
      sub_2712E84CC(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v35 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v35 << 32) | 3;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      goto LABEL_427;
    case 20:
      sub_2712E92A0(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v23 = *a3[2] >> 2;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v23 << 32) | 3;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 21:
      sub_2712EA078(a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v25 = *a3[2];
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v25 << 32) | 3;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 22:
      sub_2712EAC9C(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v33 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v33 << 32) | 3;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      goto LABEL_427;
    case 23:
      sub_2712EBA70(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v36 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v36 << 32) | 3;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      goto LABEL_427;
    case 24:
      sub_2712EC844(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v18 = *a3[2] >> 2;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v18 << 32) | 3;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 25:
      sub_2712ED61C(a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v17 = *a3[2];
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v17 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 26:
      sub_2712EE22C(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v40 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v40 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 == 1)
      {
        if (BYTE8(v63) == 1)
        {
          if (SBYTE7(v63) < 0)
          {
            operator delete(__p);
          }

          if (SBYTE7(v61) < 0)
          {
            operator delete(v60);
          }
        }

        if (BYTE8(v59) == 1 && SBYTE7(v59) < 0)
        {
          goto LABEL_435;
        }
      }

      goto LABEL_519;
    case 27:
      sub_2712EEFE4(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v8 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v8 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 28:
      sub_2712EFD9C(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v37 = *a3[2] >> 2;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v37 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      goto LABEL_427;
    case 29:
      sub_2712F0B58(a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v38 = *a3[2];
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v38 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      goto LABEL_427;
    case 30:
      sub_2712F1768(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v31 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v31 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      sub_2712CD070(a3[3], &v57);
      if (v64 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v63) == 1)
      {
        if (SBYTE7(v63) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60);
        }
      }

      if (BYTE8(v59) != 1 || (SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 31:
      sub_2712F2520(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v21 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v21 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      goto LABEL_427;
    case 32:
      sub_2712F32D8(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v32 = *a3[2] >> 2;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v32 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      goto LABEL_427;
    case 33:
      sub_2712F4094(a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v12 = *a3[2];
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v12 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      goto LABEL_427;
    case 34:
      sub_2712F4CA4(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v9 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v9 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      goto LABEL_427;
    case 35:
      sub_2712F5A5C(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v6 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v6 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      goto LABEL_427;
    case 36:
      sub_2712F6814(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v7 = *a3[2] >> 2;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v7 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      goto LABEL_427;
    case 37:
      sub_2712F75D0(a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v5 = *a3[2];
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v5 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      goto LABEL_427;
    case 38:
      sub_2712F81E0(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v39 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v39 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      goto LABEL_427;
    case 39:
      sub_2712F8F98(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v34 = *a3[2] >> 1;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v34 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

      goto LABEL_427;
    case 40:
      sub_2712F9D50(**a3, a3[1], *a3[2], &v43);
      if (v53)
      {
        if (*a3[1])
        {
          v14 = *a3[2] >> 2;
          LODWORD(v57) = 1;
          *(&v57 + 4) = (v14 << 32) | 4;
        }

        else
        {
          LODWORD(v57) = 1;
          *(&v57 + 4) = 0;
        }

        operator new();
      }

      v57 = v43;
      LOBYTE(v58) = 0;
      LOBYTE(v64) = 0;
      if (v52 == 1)
      {
        sub_27112F6CC(&v58, &v44);
        LOBYTE(v64) = 1;
      }

LABEL_427:
      sub_2712CD070(a3[3], &v57);
      if (v64 == 1)
      {
        if (BYTE8(v63) == 1)
        {
          if (SBYTE7(v63) < 0)
          {
            operator delete(__p);
          }

          if (SBYTE7(v61) < 0)
          {
            operator delete(v60);
          }
        }

        if (BYTE8(v59) == 1 && SBYTE7(v59) < 0)
        {
LABEL_435:
          operator delete(v58);
        }
      }

LABEL_519:
      if ((v53 & 1) == 0 && v52 == 1)
      {
        if (v51 == 1)
        {
          if (v50 < 0)
          {
            operator delete(v49);
          }

          if (v48 < 0)
          {
            operator delete(v47);
          }
        }

        if (v46 == 1 && SHIBYTE(v45) < 0)
        {
          operator delete(v44);
        }
      }

      *(a1 + 24) = 1;
      return;
    default:
      LODWORD(v42) = 0;
      v63 = xmmword_27187AA9C;
      v64 = unk_27187AAAC;
      v65 = xmmword_27187AABC;
      v66 = unk_27187AACC;
      v59 = xmmword_27187AA5C;
      v60 = unk_27187AA6C;
      v61 = xmmword_27187AA7C;
      __p = unk_27187AA8C;
      v57 = xmmword_27187AA3C;
      v58 = unk_27187AA4C;
      v55[0] = 0;
      *&v43 = v54;
      *(&v43 + 1) = "Invalid runtime format ";
      *&v44 = v54;
      *(&v44 + 1) = "Invalid runtime format ";
      v45 = "Invalid runtime format ";
      v56 = &v43;
      sub_2711D0C58(&v56);
      sub_27120AACC(&v41, v54, &v42);
  }
}

void sub_2712D5040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112D66C(v11 + 16);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D50F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a14, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_2712CAF40(&a49);
  sub_27115475C(&a42);
  sub_2712EEF50(&a32);
  sub_2712EE864(&a12);
  sub_2712EE864(&a14);
  sub_27112E024(&a16);
  _Unwind_Resume(a1);
}

void sub_2712D5CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  sub_27112D71C(va);
  sub_27112E024(&a14);
  _Unwind_Resume(a1);
}

void sub_2712D5D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D6010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D6024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D6038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D604C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D6060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D6074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D6088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D609C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D60B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2712D6120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2712D6134(unsigned int *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = 1;
  v7 = a2;
  if (*a1 > a2 && a1[1] != 0)
  {
    v4 = *a1;
    v5 = 1;
    sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ", a1, " and pixel format ", &v5, ". It must be at least: pixel byte size (", &v6, ") x width (", a1, ") = ", &v4, ".");
  }

  *(a3 + 120) = 1;
}

void sub_2712D6340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a28 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_2712D6378(__int128 *a1, uint64_t a2)
{
  *&v8 = &unk_2881177F0;
  *(&v8 + 1) = &unk_2881147D8;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *v9 = v3;
  *v10 = v4;
  *&v10[14] = *(a2 + 46);
  LOBYTE(v11) = 0;
  v14 = 0;
  if (*(a2 + 120) == 1)
  {
    v11 = &unk_288114798;
    v5 = *(a2 + 72);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    v6 = *(a2 + 88);
    *__p = v5;
    *v13 = v6;
    *&v13[14] = *(a2 + 102);
    v14 = 1;
  }

  LOBYTE(v15) = 0;
  v17 = 0;
  if (*(a2 + 152) == 1)
  {
    v15 = &unk_288115A20;
    v16 = *(a2 + 136);
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    v17 = 1;
  }

  v18 = 1;
  sub_2712D959C(&v8, a1);
  if (v18 == 1)
  {
    (*v8)(&v8);
    return a1;
  }

  if (v13[24] != 1)
  {
    return a1;
  }

  if (v13[16] == 1)
  {
    if ((v13[15] & 0x80000000) != 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(*&v10[16]);
    }
  }

  if (v10[8] != 1 || (v10[7] & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v9[0]);
  return a1;
}

void sub_2712D654C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271154B3C(va);
  _Unwind_Resume(a1);
}

void *sub_2712D6560(void *result)
{
  *result = &unk_288114418;
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

uint64_t *sub_2712D65F4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 104);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        v3(*(v2 + 32), *(v2 + 24));
        LODWORD(v3) = *(v2 + 104);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812EEC0[v3])(&v5, v2 + 24);
LABEL_8:
    *(v2 + 104) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C406B89191FLL);
  }

  return a1;
}

void sub_2712D669C(std::string *a1, unsigned int *a2, std::string *a3, uint64_t a4, std::string *a5, unsigned int *a6, std::string *a7, unsigned int *a8, std::string *a9, unsigned int *a10, std::string *a11, unsigned int *a12, std::string *a13)
{
  v18 = 0;
  v21 = v17;
  v22 = a1;
  v23 = v17;
  v24 = a1;
  v25 = a1;
  v19.__r_.__value_.__r.__words[0] = &v21;
  sub_2712C3BC8(&v19);
  std::to_string(&v19, *a2);
  v21 = v17;
  v22 = &v19;
  v23 = v17;
  v24 = &v19;
  v25 = &v19;
  if (v18 != -1)
  {
    v20 = &v21;
    (off_28812FB58[v18])(&v20, v17);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    v21 = v17;
    v22 = a3;
    v23 = v17;
    v24 = a3;
    v25 = a3;
    if (v18 != -1)
    {
      v19.__r_.__value_.__r.__words[0] = &v21;
      (*(&off_28812FB70 + v18))(&v19, v17);
      sub_2712D7094(&v16, v17, a4);
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_2712D6B3C(std::string *a1, unsigned int *a2, std::string *a3, unsigned int *a4, std::string *a5, unsigned int *a6, std::string *a7)
{
  v12 = 0;
  v15 = v11;
  v16 = a1;
  v17 = v11;
  v18 = a1;
  v19 = a1;
  v13.__r_.__value_.__r.__words[0] = &v15;
  sub_2712C3BC8(&v13);
  std::to_string(&v13, *a2);
  v15 = v11;
  v16 = &v13;
  v17 = v11;
  v18 = &v13;
  v19 = &v13;
  if (v12 != -1)
  {
    v14 = &v15;
    (off_28812FB58[v12])(&v14, v11);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    v15 = v11;
    v16 = a3;
    v17 = v11;
    v18 = a3;
    v19 = a3;
    if (v12 != -1)
    {
      v13.__r_.__value_.__r.__words[0] = &v15;
      (*(&off_28812FC30 + v12))(&v13, v11);
      sub_27120AACC(&v10, v11, a4);
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_2712D6E10(std::string *a1, void *a2, std::string *a3, unsigned int *a4, std::string *a5, unsigned int *a6, std::string *a7)
{
  v13 = 0;
  v15 = v12;
  v16 = a1;
  v17 = v12;
  v18 = a1;
  v19 = a1;
  v14.__r_.__value_.__r.__words[0] = &v15;
  sub_2712C3608(&v14);
  sub_271136C48(&v11, v12, a2);
  v15 = v12;
  v16 = a3;
  v17 = v12;
  v18 = a3;
  v19 = a3;
  if (v13 != -1)
  {
    v14.__r_.__value_.__r.__words[0] = &v15;
    (*(&off_28812FC30 + v13))(&v14, v12);
    sub_27120AACC(&v10, v12, a4);
  }

  sub_2711308D4();
}

void sub_2712D7330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  v27 = a15;
  a15 = 0;
  if (!v27)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a15, v27);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2712D73B8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28812FBA0 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_28812FB58[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28812FBA0 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_28812FB58[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_2711308D4();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28812FBA0 + v9))(&v11, a2);
}

void sub_2712D7554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712D7588(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712D7988(a2, v3);
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

size_t sub_2712D7688(uint64_t **a1)
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

void sub_2712D777C(uint64_t *a1, uint64_t a2)
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

void sub_2712D793C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712D7988(uint64_t a1, const char *a2)
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

void sub_2712D7B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void *sub_2712D7B48(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712D7E54(a2, v3);
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

void sub_2712D7C48(uint64_t *a1, uint64_t a2)
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

void sub_2712D7E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712D7E54(uint64_t a1, const char *a2)
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

void sub_2712D7FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void *sub_2712D8014(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712D8320(a2, v3);
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

void sub_2712D8114(uint64_t *a1, uint64_t a2)
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

void sub_2712D82D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712D8320(uint64_t a1, const char *a2)
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

void sub_2712D84BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void *sub_2712D84E0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712D88E0(a2, v3);
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

size_t sub_2712D85E0(uint64_t **a1)
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

void sub_2712D86D4(uint64_t *a1, uint64_t a2)
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

void sub_2712D8894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712D88E0(uint64_t a1, const char *a2)
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

void sub_2712D8A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void *sub_2712D8AA0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712D8DAC(a2, v3);
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

void sub_2712D8BA0(uint64_t *a1, uint64_t a2)
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

void sub_2712D8D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712D8DAC(uint64_t a1, const char *a2)
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

void sub_2712D8F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2712D8F5C(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288114418;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v6, 0, 1);
  v3 = *(v6 + 16);
  *(a1 + 24) = *v6;
  *(a1 + 40) = v3;
  v6 = 0;
  MEMORY[0x2743BF050]();
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  return a1;
}

void sub_2712D9170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712D918C(void *a1)
{
  *a1 = &unk_288114418;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712D9260(uint64_t a1)
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

void sub_2712D92F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712D932C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 104);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 104) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 40);
      if (v2)
      {
        v2(*(v1 + 32), *(v1 + 24));
        LODWORD(v2) = *(v1 + 104);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812EEC0[v2])(&v3, v1 + 24);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712D93E4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE1EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE1EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE1EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE1EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712D9444(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 2, (a2 + 5), 2, 1);
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
  *(a1 + 40) = 1;
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

void sub_2712D9588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712D959C(__int128 *a1, __int128 *a2)
{
  v44[2] = *MEMORY[0x277D85DE8];
  LOBYTE(v8) = *(a2 + 160);
  if (*(a1 + 160) == 1)
  {
    if (*(a2 + 160))
    {
      *&v32 = &unk_2881177F0;
      *(&v32 + 1) = &unk_2881147D8;
      v9 = a1[1];
      v10 = a1[2];
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      v33 = v9;
      v34[0] = v10;
      *(v34 + 14) = *(a1 + 46);
      LOBYTE(v35) = 0;
      v38 = 0;
      if (*(a1 + 120) == 1)
      {
        v35 = &unk_288114798;
        v36 = *(a1 + 72);
        *(a1 + 9) = 0;
        *(a1 + 10) = 0;
        v37[0] = *(a1 + 88);
        *(v37 + 14) = *(a1 + 102);
        v38 = 1;
      }

      LOBYTE(v39) = 0;
      v41 = 0;
      if (*(a1 + 152) == 1)
      {
        v39 = &unk_288115A20;
        v40 = *(a1 + 136);
        *(a1 + 17) = 0;
        *(a1 + 18) = 0;
        v41 = 1;
      }

      sub_2712D9DB8(a1, a2);
      sub_2712D9DB8(a2, &v32);
LABEL_41:
      sub_2712CAF40(&v32);
      return;
    }

    v32 = *a2;
    v14 = *(a2 + 112);
    if (v14 != 1)
    {
      v15 = 0;
LABEL_48:
      *a2 = &unk_2881177F0;
      *(a2 + 1) = &unk_2881147D8;
      a2[1] = a1[1];
      *(a1 + 3) = 0;
      *(a1 + 2) = 0;
      v22 = a1[2];
      v23 = *(a1 + 46);
      *(a2 + 64) = 0;
      *(a2 + 46) = v23;
      a2[2] = v22;
      *(a2 + 120) = 0;
      if (*(a1 + 120) == 1)
      {
        *(a2 + 8) = &unk_288114798;
        *(a2 + 72) = *(a1 + 72);
        *(a1 + 9) = 0;
        *(a1 + 10) = 0;
        v24 = *(a1 + 88);
        *(a2 + 102) = *(a1 + 102);
        *(a2 + 88) = v24;
        *(a2 + 120) = 1;
      }

      *(a2 + 128) = 0;
      *(a2 + 152) = 0;
      if (*(a1 + 152) == 1)
      {
        *(a2 + 16) = &unk_288115A20;
        *(a2 + 136) = *(a1 + 136);
        *(a1 + 17) = 0;
        *(a1 + 18) = 0;
        *(a2 + 152) = 1;
      }

      (**a1)(a1);
      *a1 = v32;
      *(a1 + 16) = 0;
      *(a1 + 112) = 0;
      if (v14)
      {
        *(a1 + 40) = 0;
        if (v2)
        {
          *(a1 + 2) = v15;
          *(a1 + 3) = v44[0];
          *(a1 + 31) = *(v44 + 7);
          *(a1 + 39) = v5;
          *(a1 + 40) = 1;
          v15 = 0;
          v5 = 0;
        }

        *(a1 + 48) = 0;
        *(a1 + 104) = 0;
        if (v4)
        {
          v25 = v43[0];
          *(a1 + 6) = v3;
          *(a1 + 7) = v25;
          *(a1 + 63) = *(v43 + 7);
          *(a1 + 71) = v30;
          *(a1 + 9) = v29;
          *(a1 + 10) = v28;
          *(a1 + 11) = v42[0];
          *(a1 + 95) = *(v42 + 7);
          *(a1 + 103) = v31;
          *(a1 + 104) = 1;
        }

        v26 = *(a1 + 160);
        *(a1 + 112) = 1;
        *(a1 + 160) = *(a2 + 160);
        *(a2 + 160) = v26;
        if ((v2 & (v5 < 0)) == 1)
        {
          operator delete(v15);
        }
      }

      else
      {
        v27 = *(a1 + 160);
        *(a1 + 160) = *(a2 + 160);
        *(a2 + 160) = v27;
      }

      return;
    }

    v2 = *(a2 + 40);
    if (v2 == 1)
    {
      v15 = *(a2 + 2);
      v44[0] = *(a2 + 3);
      v8 = *(a2 + 31);
      *(v44 + 7) = v8;
      v5 = *(a2 + 39);
      *(a2 + 3) = 0;
      *(a2 + 4) = 0;
      *(a2 + 2) = 0;
      v4 = *(a2 + 104);
      if (v4 != 1)
      {
LABEL_21:
        v3 = 0;
LABEL_45:
        v31 = v8;
        if (v2 && *(a2 + 39) < 0)
        {
          operator delete(*(a2 + 2));
          LOBYTE(v2) = 1;
        }

        goto LABEL_48;
      }
    }

    else
    {
      v15 = 0;
      v4 = *(a2 + 104);
      if (v4 != 1)
      {
        goto LABEL_21;
      }
    }

    v3 = *(a2 + 6);
    v43[0] = *(a2 + 7);
    *(v43 + 7) = *(a2 + 63);
    v30 = *(a2 + 71);
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    v28 = *(a2 + 10);
    v29 = *(a2 + 9);
    v42[0] = *(a2 + 11);
    *(v42 + 7) = *(a2 + 95);
    LOBYTE(v8) = *(a2 + 103);
    *(a2 + 11) = 0;
    *(a2 + 12) = 0;
    *(a2 + 10) = 0;
    goto LABEL_45;
  }

  if (*(a2 + 160))
  {
    *&v32 = &unk_2881177F0;
    v11 = a2[1];
    *(&v32 + 1) = &unk_2881147D8;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    v12 = a2[2];
    v33 = v11;
    v34[0] = v12;
    *(v34 + 14) = *(a2 + 46);
    LOBYTE(v35) = 0;
    v38 = 0;
    if (*(a2 + 120) == 1)
    {
      v35 = &unk_288114798;
      v36 = *(a2 + 72);
      *(a2 + 9) = 0;
      *(a2 + 10) = 0;
      v37[0] = *(a2 + 88);
      *(v37 + 14) = *(a2 + 102);
      v38 = 1;
    }

    LOBYTE(v39) = 0;
    v41 = 0;
    if (*(a2 + 152) == 1)
    {
      v39 = &unk_288115A20;
      v40 = *(a2 + 136);
      *(a2 + 17) = 0;
      *(a2 + 18) = 0;
      v41 = 1;
    }

    (**a2)(a2);
    *a2 = *a1;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    if (*(a1 + 112) != 1)
    {
      goto LABEL_36;
    }

    *(a2 + 40) = 0;
    if (*(a1 + 40) == 1)
    {
      v16 = a1[1];
      *(a2 + 4) = *(a1 + 4);
      a2[1] = v16;
      *(a1 + 3) = 0;
      *(a1 + 4) = 0;
      *(a1 + 2) = 0;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v13 = a2 + 3;
      *(a2 + 104) = 0;
      if (*(a1 + 104) != 1)
      {
LABEL_16:
        *(a2 + 112) = 1;
        if ((a1[7] & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_28;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v13 = a2 + 3;
      *(a2 + 104) = 0;
      if (*(a1 + 104) != 1)
      {
        goto LABEL_16;
      }
    }

    v17 = a1[3];
    *(v13 + 2) = *(a1 + 8);
    *v13 = v17;
    *(a1 + 7) = 0;
    *(a1 + 8) = 0;
    *(a1 + 6) = 0;
    *(a2 + 9) = *(a1 + 9);
    v18 = a1[5];
    *(a2 + 12) = *(a1 + 12);
    a2[5] = v18;
    *(a1 + 11) = 0;
    *(a1 + 12) = 0;
    *(a1 + 10) = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    if ((a1[7] & 1) == 0)
    {
LABEL_36:
      *a1 = &unk_2881177F0;
      *(a1 + 1) = &unk_2881147D8;
      v19 = v33;
      v33 = 0uLL;
      v20 = v34[0];
      a1[1] = v19;
      a1[2] = v20;
      *(a1 + 46) = *(v34 + 14);
      *(a1 + 64) = 0;
      *(a1 + 120) = 0;
      if (v38 == 1)
      {
        *(a1 + 8) = &unk_288114798;
        *(a1 + 72) = v36;
        v36 = 0uLL;
        *(a1 + 88) = v37[0];
        *(a1 + 102) = *(v37 + 14);
        *(a1 + 120) = 1;
      }

      *(a1 + 128) = 0;
      *(a1 + 152) = 0;
      if (v41 == 1)
      {
        *(a1 + 16) = &unk_288115A20;
        *(a1 + 136) = v40;
        v40 = 0uLL;
        *(a1 + 152) = 1;
      }

      v21 = *(a1 + 160);
      *(a1 + 160) = *(a2 + 160);
      *(a2 + 160) = v21;
      goto LABEL_41;
    }

LABEL_28:
    if (*(a1 + 104) == 1)
    {
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 10));
      }

      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 6));
      }
    }

    if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
    {
      operator delete(*(a1 + 2));
    }

    goto LABEL_36;
  }

  sub_27112F120(a1, a2);
}

uint64_t sub_2712D9DB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 32) = v6;
  sub_2712D9F9C(a1 + 64, a2 + 64);
  v7 = *(a1 + 152);
  if (v7 == *(a2 + 152))
  {
    if (*(a1 + 152) && (v8 = *(a2 + 136), *(a2 + 136) = 0, *(a2 + 144) = 0, v9 = *(a1 + 144), *(a1 + 136) = v8, v9) && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      return a1;
    }

    else
    {
      return a1;
    }
  }

  else
  {
    *(a1 + 128) = &unk_288115A20;
    if (v7)
    {
      v11 = *(a1 + 144);
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        *(a1 + 152) = 0;
        return a1;
      }

      else
      {
        *(a1 + 152) = 0;
        return a1;
      }
    }

    else
    {
      *(a1 + 136) = *(a2 + 136);
      *(a2 + 136) = 0;
      *(a2 + 144) = 0;
      *(a1 + 152) = 1;
      return a1;
    }
  }
}

void sub_2712D9F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (v2 == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      v3 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v4 = *(a1 + 16);
      *(a1 + 8) = v3;
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = a1;
          v6 = a2;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          a2 = v6;
          a1 = v5;
        }
      }

      v7 = *(a2 + 24);
      *(a1 + 38) = *(a2 + 38);
      *(a1 + 24) = v7;
    }
  }

  else
  {
    *a1 = &unk_288114798;
    if (v2)
    {
      v8 = *(a1 + 16);
      if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = a1;
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        *(v10 + 56) = 0;
      }

      else
      {
        *(a1 + 56) = 0;
      }
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v9 = *(a2 + 24);
      *(a1 + 38) = *(a2 + 38);
      *(a1 + 24) = v9;
      *(a1 + 56) = 1;
    }
  }
}

void *sub_2712DA110(void *result)
{
  *result = &unk_288114418;
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

void sub_2712DA1A4(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 2;
  v9 = a3;
  v7 = 2;
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
    if (2 * *a2 > a3)
    {
      v5 = 2 * *a2;
      v6 = 2;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if (a3)
    {
      v6 = 2;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if (a1)
    {
      v6 = 2;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712DA6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712DA740(void *result)
{
  *result = &unk_288113E58;
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

uint64_t *sub_2712DA7D4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 104);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        v3(*(v2 + 32), *(v2 + 24));
        LODWORD(v3) = *(v2 + 104);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812EEE0[v3])(&v5, v2 + 24);
LABEL_8:
    *(v2 + 104) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C406B89191FLL);
  }

  return a1;
}

uint64_t sub_2712DA87C(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113E58;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v6, 0, 2);
  v3 = *(v6 + 16);
  *(a1 + 24) = *v6;
  *(a1 + 40) = v3;
  v6 = 0;
  MEMORY[0x2743BF050]();
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  return a1;
}

void sub_2712DAA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712DAAAC(void *a1)
{
  *a1 = &unk_288113E58;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DAB80(uint64_t a1)
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

void sub_2712DAC14(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DAC4C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 104);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 104) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 40);
      if (v2)
      {
        v2(*(v1 + 32), *(v1 + 24));
        LODWORD(v2) = *(v1 + 104);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812EEE0[v2])(&v3, v1 + 24);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712DAD04(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE2EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE2EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE2EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE2EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712DAD64(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 2, (a2 + 5), 2, 2);
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
  *(a1 + 40) = 2;
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

void sub_2712DAEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712DAEBC(void *result)
{
  *result = &unk_288113E58;
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

void sub_2712DAF50(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 2;
  v9 = a3;
  v7 = 2;
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
    if (2 * *a2 > a3)
    {
      v5 = 2 * *a2;
      v6 = 3;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if (a3)
    {
      v6 = 3;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if (a1)
    {
      v6 = 3;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712DB474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712DB4EC(void *result)
{
  *result = &unk_2881137D8;
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

uint64_t *sub_2712DB580(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 104);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        v3(*(v2 + 32), *(v2 + 24));
        LODWORD(v3) = *(v2 + 104);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812EF00[v3])(&v5, v2 + 24);
LABEL_8:
    *(v2 + 104) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C406B89191FLL);
  }

  return a1;
}

uint64_t sub_2712DB628(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_2881137D8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v6, 0, 3);
  v3 = *(v6 + 16);
  *(a1 + 24) = *v6;
  *(a1 + 40) = v3;
  v6 = 0;
  MEMORY[0x2743BF050]();
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  return a1;
}

void sub_2712DB83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712DB858(void *a1)
{
  *a1 = &unk_2881137D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DB92C(uint64_t a1)
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

void sub_2712DB9C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DB9F8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 104);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 104) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 40);
      if (v2)
      {
        v2(*(v1 + 32), *(v1 + 24));
        LODWORD(v2) = *(v1 + 104);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812EF00[v2])(&v3, v1 + 24);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712DBAB0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE3EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE3EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE3EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE3EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712DBB10(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 2, (a2 + 5), 2, 2);
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
  *(a1 + 40) = 3;
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

void sub_2712DBC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712DBC68(void *result)
{
  *result = &unk_2881137D8;
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

void sub_2712DBCFC(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 4;
  v9 = a3;
  v7 = 4;
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
    if (4 * *a2 > a3)
    {
      v5 = 4 * *a2;
      v6 = 4;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 3) != 0)
    {
      v6 = 4;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if ((a1 & 3) != 0)
    {
      v6 = 4;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712DC228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712DC2A0(void *result)
{
  *result = &unk_288113698;
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

uint64_t *sub_2712DC334(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 104);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        v3(*(v2 + 32), *(v2 + 24));
        LODWORD(v3) = *(v2 + 104);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812EF20[v3])(&v5, v2 + 24);
LABEL_8:
    *(v2 + 104) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C406B89191FLL);
  }

  return a1;
}

uint64_t sub_2712DC3DC(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113698;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v6, 0, 4);
  v3 = *(v6 + 16);
  *(a1 + 24) = *v6;
  *(a1 + 40) = v3;
  v6 = 0;
  MEMORY[0x2743BF050]();
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  return a1;
}

void sub_2712DC5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712DC60C(void *a1)
{
  *a1 = &unk_288113698;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DC6E0(uint64_t a1)
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

void sub_2712DC774(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DC7AC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 104);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 104) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 40);
      if (v2)
      {
        v2(*(v1 + 32), *(v1 + 24));
        LODWORD(v2) = *(v1 + 104);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812EF20[v2])(&v3, v1 + 24);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712DC864(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE4EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE4EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE4EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE4EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712DC8C4(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 2, (a2 + 5), 2, 4);
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
  *(a1 + 40) = 4;
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

void sub_2712DCA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712DCA1C(void *result)
{
  *result = &unk_288113698;
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

void sub_2712DCAB0(unsigned int *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = 2;
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
    if (2 * *a1 > a2)
    {
      v4 = 2 * *a1;
      v5 = 5;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ", a1, " and pixel format ", &v5, ". It must be at least: pixel byte size (", &v6, ") x width (", a1, ") = ", &v4, ".");
    }

    if (a2)
    {
      v5 = 5;
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ", &v5, ". It must be a multiple of the pixel byte size (", &v6, ").");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712DCE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
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

void *sub_2712DCEB4(void *result)
{
  *result = &unk_288113598;
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

uint64_t *sub_2712DCF48(uint64_t *a1)
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

    (off_28812EF40[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712DCFF0(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113598;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 5);
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

void sub_2712DD208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712DD224(void *a1)
{
  *a1 = &unk_288113598;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DD2F8(uint64_t a1)
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

void sub_2712DD38C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DD3C4(uint64_t result)
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

    (off_28812EF40[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712DD47C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE5EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE5EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE5EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE5EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712DD4DC(uint64_t a1, void *a2)
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
  *(a1 + 40) = 5;
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

void sub_2712DD620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712DD634(void *result)
{
  *result = &unk_288113598;
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

void sub_2712DD6C8(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 2;
  v9 = a3;
  v7 = 4;
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
    if (4 * *a2 > a3)
    {
      v5 = 4 * *a2;
      v6 = 6;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 3) != 0)
    {
      v6 = 6;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if (a1)
    {
      v6 = 6;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712DDBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712DDC6C(void *result)
{
  *result = &unk_288113558;
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

uint64_t *sub_2712DDD00(uint64_t *a1)
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

    (off_28812EF60[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712DDDA8(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113558;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 6);
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

void sub_2712DDFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712DDFDC(void *a1)
{
  *a1 = &unk_288113558;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DE0B0(uint64_t a1)
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

void sub_2712DE144(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DE17C(uint64_t result)
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

    (off_28812EF60[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712DE234(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE6EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE6EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE6EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE6EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712DE294(uint64_t a1, void *a2)
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
  *(a1 + 40) = 6;
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

void sub_2712DE3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712DE3EC(void *result)
{
  *result = &unk_288113558;
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

void sub_2712DE480(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 2;
  v9 = a3;
  v7 = 4;
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
    if (4 * *a2 > a3)
    {
      v5 = 4 * *a2;
      v6 = 7;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 3) != 0)
    {
      v6 = 7;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if (a1)
    {
      v6 = 7;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712DE9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712DEA24(void *result)
{
  *result = &unk_288113458;
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

uint64_t *sub_2712DEAB8(uint64_t *a1)
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

    (off_28812EF80[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712DEB60(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113458;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 7);
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

void sub_2712DED78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712DED94(void *a1)
{
  *a1 = &unk_288113458;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DEE68(uint64_t a1)
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

void sub_2712DEEFC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DEF34(uint64_t result)
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

    (off_28812EF80[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712DEFEC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE7EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE7EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE7EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE7EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712DF04C(uint64_t a1, void *a2)
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
  *(a1 + 40) = 7;
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

void sub_2712DF190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712DF1A4(void *result)
{
  *result = &unk_288113458;
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

void sub_2712DF238(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v8 = 4;
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
      v6 = 8;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 7) != 0)
    {
      v6 = 8;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if ((a1 & 3) != 0)
    {
      v6 = 8;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712DF768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712DF7E0(void *result)
{
  *result = &unk_288113358;
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

uint64_t *sub_2712DF874(uint64_t *a1)
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

    (off_28812EFA0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712DF91C(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113358;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 8);
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

void sub_2712DFB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712DFB50(void *a1)
{
  *a1 = &unk_288113358;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DFC24(uint64_t a1)
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

void sub_2712DFCB8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DFCF0(uint64_t result)
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

    (off_28812EFA0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712DFDA8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE8EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE8EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE8EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE8EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712DFE08(uint64_t a1, void *a2)
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
  *(a1 + 40) = 8;
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

void sub_2712DFF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712DFF60(void *result)
{
  *result = &unk_288113358;
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

void sub_2712DFFF4(unsigned int *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
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
      v5 = 9;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ", a1, " and pixel format ", &v5, ". It must be at least: pixel byte size (", &v6, ") x width (", a1, ") = ", &v4, ".");
    }

    if (-1431655765 * a2 >= 0x55555556)
    {
      v5 = 9;
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ", &v5, ". It must be a multiple of the pixel byte size (", &v6, ").");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712E03AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
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

void *sub_2712E0404(void *result)
{
  *result = &unk_288113318;
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

uint64_t *sub_2712E0498(uint64_t *a1)
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

    (off_28812EFC0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E0540(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288113318;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 9);
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

void sub_2712E0758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E0774(void *a1)
{
  *a1 = &unk_288113318;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E0848(uint64_t a1)
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

void sub_2712E08DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E0914(uint64_t result)
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

    (off_28812EFC0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E09CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE9EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE9EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE9EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE9EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E0A2C(uint64_t a1, void *a2)
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
  *(a1 + 40) = 9;
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

void sub_2712E0B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E0B84(void *result)
{
  *result = &unk_288113318;
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

void sub_2712E0C18(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
      v7 = 10;
      sub_2712D669C("Image row byte stride ", &v10, " is invalid for the given size ", a2, " and pixel format ", &v7, ". It must be at least: pixel byte size (", &v8, ") x width (", a2, ") = ", &v6, ".");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 1) >= 0x2AAAAAAB)
    {
      v7 = 10;
      sub_2712D6B3C("Image row byte stride ", &v10, " is invalid for pixel format ", &v7, ". It must be a multiple of the pixel byte size (", &v8, ").");
    }

    if (a1)
    {
      v7 = 10;
      sub_2712D6E10("Image base address ", &v11, " is invalid for pixel format ", &v7, ". It must be aligned with the value type size (", &v9, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712E1160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712E11D8(void *result)
{
  *result = &unk_288114758;
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

uint64_t *sub_2712E126C(uint64_t *a1)
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

    (off_28812EFE0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E1314(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288114758;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 10);
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

void sub_2712E152C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E1548(void *a1)
{
  *a1 = &unk_288114758;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E161C(uint64_t a1)
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

void sub_2712E16B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E16E8(uint64_t result)
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

    (off_28812EFE0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E17A0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE10EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE10EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE10EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE10EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E1800(uint64_t a1, void *a2)
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
  *(a1 + 40) = 10;
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

void sub_2712E1944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E1958(void *result)
{
  *result = &unk_288114758;
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

void sub_2712E19EC(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
      v7 = 11;
      sub_2712D669C("Image row byte stride ", &v10, " is invalid for the given size ", a2, " and pixel format ", &v7, ". It must be at least: pixel byte size (", &v8, ") x width (", a2, ") = ", &v6, ".");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 1) >= 0x2AAAAAAB)
    {
      v7 = 11;
      sub_2712D6B3C("Image row byte stride ", &v10, " is invalid for pixel format ", &v7, ". It must be a multiple of the pixel byte size (", &v8, ").");
    }

    if (a1)
    {
      v7 = 11;
      sub_2712D6E10("Image base address ", &v11, " is invalid for pixel format ", &v7, ". It must be aligned with the value type size (", &v9, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712E1F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712E1FAC(void *result)
{
  *result = &unk_288114718;
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

uint64_t *sub_2712E2040(uint64_t *a1)
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

    (off_28812F000[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E20E8(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288114718;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 11);
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

void sub_2712E2300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E231C(void *a1)
{
  *a1 = &unk_288114718;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E23F0(uint64_t a1)
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

void sub_2712E2484(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E24BC(uint64_t result)
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

    (off_28812F000[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E2574(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE11EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE11EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE11EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE11EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E25D4(uint64_t a1, void *a2)
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
  *(a1 + 40) = 11;
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

void sub_2712E2718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E272C(void *result)
{
  *result = &unk_288114718;
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

void sub_2712E27C0(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
      v7 = 12;
      sub_2712D669C("Image row byte stride ", &v10, " is invalid for the given size ", a2, " and pixel format ", &v7, ". It must be at least: pixel byte size (", &v8, ") x width (", a2, ") = ", &v6, ".");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 2) >= 0x15555556)
    {
      v7 = 12;
      sub_2712D6B3C("Image row byte stride ", &v10, " is invalid for pixel format ", &v7, ". It must be a multiple of the pixel byte size (", &v8, ").");
    }

    if ((a1 & 3) != 0)
    {
      v7 = 12;
      sub_2712D6E10("Image base address ", &v11, " is invalid for pixel format ", &v7, ". It must be aligned with the value type size (", &v9, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712E2D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712E2D84(void *result)
{
  *result = &unk_2881146D8;
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

uint64_t *sub_2712E2E18(uint64_t *a1)
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

    (off_28812F020[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E2EC0(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_2881146D8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 12);
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

void sub_2712E30D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E30F4(void *a1)
{
  *a1 = &unk_2881146D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E31C8(uint64_t a1)
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

void sub_2712E325C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E3294(uint64_t result)
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

    (off_28812F020[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E334C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE12EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE12EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE12EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE12EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E33AC(uint64_t a1, void *a2)
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
  *(a1 + 40) = 12;
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

void sub_2712E34F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E3504(void *result)
{
  *result = &unk_2881146D8;
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

void sub_2712E3598(unsigned int *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
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
      v5 = 13;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ", a1, " and pixel format ", &v5, ". It must be at least: pixel byte size (", &v6, ") x width (", a1, ") = ", &v4, ".");
    }

    if ((a2 & 3) != 0)
    {
      v5 = 13;
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ", &v5, ". It must be a multiple of the pixel byte size (", &v6, ").");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712E393C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
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

void *sub_2712E3994(void *result)
{
  *result = &unk_288114698;
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

uint64_t *sub_2712E3A28(uint64_t *a1)
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

    (off_28812F040[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E3AD0(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288114698;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 13);
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

void sub_2712E3CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E3D04(void *a1)
{
  *a1 = &unk_288114698;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E3DD8(uint64_t a1)
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

void sub_2712E3E6C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E3EA4(uint64_t result)
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

    (off_28812F040[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E3F5C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE13EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE13EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE13EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE13EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E3FBC(uint64_t a1, void *a2)
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
  *(a1 + 40) = 13;
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

void sub_2712E4100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E4114(void *result)
{
  *result = &unk_288114698;
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

void sub_2712E41A8(uint64_t a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
      v6 = 14;
      sub_2712D669C("Image row byte stride ", &v9, " is invalid for the given size ", a2, " and pixel format ", &v6, ". It must be at least: pixel byte size (", &v7, ") x width (", a2, ") = ", &v5, ".");
    }

    if ((a3 & 7) != 0)
    {
      v6 = 14;
      sub_2712D6B3C("Image row byte stride ", &v9, " is invalid for pixel format ", &v6, ". It must be a multiple of the pixel byte size (", &v7, ").");
    }

    if (a1)
    {
      v6 = 14;
      sub_2712D6E10("Image base address ", &v10, " is invalid for pixel format ", &v6, ". It must be aligned with the value type size (", &v8, ").");
    }
  }

  *(a4 + 120) = 1;
}

void sub_2712E46D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712E474C(void *result)
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

uint64_t *sub_2712E47E0(uint64_t *a1)
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

    (off_28812F060[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E4888(uint64_t a1, atomic_ullong *a2)
{
  *a1 = &unk_288114658;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 14);
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

void sub_2712E4AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E4ABC(void *a1)
{
  *a1 = &unk_288114658;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E4B90(uint64_t a1)
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

void sub_2712E4C24(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E4C5C(uint64_t result)
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

    (off_28812F060[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E4D14(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE14EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE14EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE14EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE14EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E4D74(uint64_t a1, void *a2)
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
  *(a1 + 40) = 14;
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