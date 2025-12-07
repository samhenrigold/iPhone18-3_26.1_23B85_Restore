void sub_23F2BB298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2BB2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2BB2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2BB2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_23F04B948(&a14);
  _Unwind_Resume(a1);
}

void sub_23F2BB358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2BB36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2BB5C8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void *sub_23F2BB5FC(void *a1, void (**a2)(uint64_t))
{
  v4[8] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  if (*a2)
  {
    (*a2)(2);
  }

  if (v4 != a1 && *a1 != 0)
  {
    (*a1)(2, a1, v4, 0, 0);
  }

  if (v4[0])
  {
    (v4[0])(0, v4, 0, 0, 0);
  }

  return a1;
}

void sub_23F2BB758(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_23F2BB778(void *a1, uint64_t a2)
{
  LOBYTE(__p[0]) = 123;
  v3 = sub_23EF2F9B0(a1, __p, 1);
  v9 = *(a2 + 16);
  sub_23F2BB858(&v9, __p);
  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_23EF2F9B0(v3, v4, v5);
  v12 = 125;
  result = sub_23EF2F9B0(v6, &v12, 1);
  if (v11 < 0)
  {
    v8 = result;
    operator delete(__p[0]);
    return v8;
  }

  return result;
}

void sub_23F2BB83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2BB858@<X0>(unsigned __int8 **a1@<X0>, _BYTE *a2@<X8>)
{
  v32[6] = 0;
  v4 = MEMORY[0x277D828A0] + 64;
  v32[0] = MEMORY[0x277D828A0] + 64;
  v5 = *(MEMORY[0x277D82828] + 16);
  v23 = *(MEMORY[0x277D82828] + 8);
  *(&v23 + *(v23 - 24)) = v5;
  v6 = (&v23 + *(v23 - 24));
  std::ios_base::init(v6, &v24);
  v7 = MEMORY[0x277D828A0] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v23 = v7;
  v32[0] = v4;
  v8 = MEMORY[0x277D82868] + 16;
  v24 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CACAF0](&v25);
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v9 = MEMORY[0x277D82878] + 16;
  v24 = MEMORY[0x277D82878] + 16;
  *__p = 0u;
  v30 = 0u;
  v31 = 16;
  sub_23EF36F98(&v24);
  v10 = v23;
  *(&v23 + *(v23 - 24) + 8) = *(&v23 + *(v23 - 24) + 8) & 0xFFFFFFB5 | 8;
  v11 = (&v23 + *(v10 - 24));
  if (v11[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v11);
    v12 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 32);
    std::locale::~locale(&v33);
  }

  v22 = v9;
  v11[1].__fmtflags_ = 48;
  v13 = a1[1];
  if (v13)
  {
    v14 = *a1;
    v15 = &v13[v14];
    v16 = v14 + 1;
    do
    {
      *(&v26 + *(v23 - 24)) = 2;
      MEMORY[0x245CAC900](&v23, *v14);
      if (v15 != v16)
      {
        *(&v26 + *(v23 - 24)) = 1;
        LOBYTE(v33.__locale_) = 32;
        sub_23EF2F9B0(&v23, &v33, 1);
      }

      ++v14;
      ++v16;
      --v13;
    }

    while (v13);
  }

  if ((v31 & 0x10) != 0)
  {
    v19 = *(&v30 + 1);
    v17 = MEMORY[0x277D82828];
    if (*(&v30 + 1) < v28)
    {
      *(&v30 + 1) = v28;
      v19 = v28;
    }

    v20 = *(&v27 + 1);
    v18 = v19 - *(&v27 + 1);
    if ((v19 - *(&v27 + 1)) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v17 = MEMORY[0x277D82828];
    if ((v31 & 8) == 0)
    {
      v18 = 0;
      a2[23] = 0;
      goto LABEL_19;
    }

    v20 = v26;
    v18 = v27 - v26;
    if (v27 - v26 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_23:
      sub_23EF2F8F4();
    }
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  a2[23] = v18;
  if (v18)
  {
    memmove(a2, v20, v18);
  }

LABEL_19:
  a2[v18] = 0;
  v23 = *v17;
  *(&v23 + *(v23 - 24)) = v17[3];
  v24 = v22;
  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
  }

  v24 = v8;
  std::locale::~locale(&v25);
  std::ostream::~ostream();
  return MEMORY[0x245CACBF0](v32);
}

void sub_23F2BBD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_23F2BD534(&a12);
  MEMORY[0x245CACBF0](a11);
  _Unwind_Resume(a1);
}

void sub_23F2BBDFC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CD00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2BBE50(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    return v1(0, result + 24, 0, 0, 0);
  }

  return result;
}

void sub_23F2BBEAC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CD50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BBF00(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BBF1C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_23F2BBF1C;
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
      *a3 = sub_23F2BBF1C;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518CD90;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F34767ALL)
      {
        if (((v5 & 0x800000023F34767ALL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F34767ALL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F34767ALL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F3476B0)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BC0F0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CDB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BC144(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BC160(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_23F2BC160;
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
      *a3 = sub_23F2BC160;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518CDF0;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F3476FELL)
      {
        if (((v5 & 0x800000023F3476FELL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F3476FELL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F3476FELL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347734)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BC334(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CE10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BC388(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BC3A4(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_23F2BC3A4;
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
      *a3 = sub_23F2BC3A4;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518CE50;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F347782)
      {
        if (((v5 & 0x800000023F347782 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F347782))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F347782 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F3477B8)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BC578(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CE70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BC5CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BC5E8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_23F2BC5E8;
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
      *a3 = sub_23F2BC5E8;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518CEB0;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F347806)
      {
        if (((v5 & 0x800000023F347806 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F347806))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F347806 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F34783C)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BC7BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BC810(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BC82C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_23F2BC82C;
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
      *a3 = sub_23F2BC82C;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518CF10;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F34788ALL)
      {
        if (((v5 & 0x800000023F34788ALL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F34788ALL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F34788ALL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F3478C0)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BCA00(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CF30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BCA54(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BCA70(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_23F2BCA70;
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
      *a3 = sub_23F2BCA70;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518CF70;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F34790ELL)
      {
        if (((v5 & 0x800000023F34790ELL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F34790ELL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F34790ELL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347944)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BCC44(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CF90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BCC98(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BCCB4(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_23F2BCCB4;
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
      *a3 = sub_23F2BCCB4;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518CFD0;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F347992)
      {
        if (((v5 & 0x800000023F347992 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F347992))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F347992 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F3479C8)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BCE88(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CFF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BCEDC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BCEF8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_23F2BCEF8;
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
      *a3 = sub_23F2BCEF8;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518D030;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F347A16)
      {
        if (((v5 & 0x800000023F347A16 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F347A16))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F347A16 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347A4C)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BD0CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518D050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BD120(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BD13C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_23F2BD13C;
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
      *a3 = sub_23F2BD13C;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518D090;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F347A9ALL)
      {
        if (((v5 & 0x800000023F347A9ALL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F347A9ALL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F347A9ALL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347AD0)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BD310(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518D0B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BD364(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BD380(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_23F2BD380;
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
      *a3 = sub_23F2BD380;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518D0F0;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F347B1ELL)
      {
        if (((v5 & 0x800000023F347B1ELL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F347B1ELL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F347B1ELL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347B54)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

uint64_t sub_23F2BD534(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_23F2BD654(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if ((*(*a1 + 56) & 3) != 0)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Container/src/Lines.cpp", 42, "this->numbers.Size() % (N * 2) == 0", 0x23uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "this->numbers.Size() % (N * 2) == 0", 35, &unk_23F3091D6, 0);
        return a1;
      }
    }

    else
    {
      v3 = qword_27E396178;
      v4 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_11;
      }
    }

    do
    {
      (*v3)(*(v3 + 8), "this->numbers.Size() % (N * 2) == 0", 35, &unk_23F3091D6, 0);
      v3 += 16;
    }

    while (v3 != v4);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

uint64_t sub_23F2BD7B8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (__ROR8__(0xAAAAAAAAAAAAAAABLL * *(*a1 + 56), 1) >= 0x2AAAAAAAAAAAAAABuLL)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Container/src/Lines.cpp", 42, "this->numbers.Size() % (N * 2) == 0", 0x23uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "this->numbers.Size() % (N * 2) == 0", 35, &unk_23F3091D6, 0);
        return a1;
      }
    }

    else
    {
      v3 = qword_27E396178;
      v4 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_11;
      }
    }

    do
    {
      (*v3)(*(v3 + 8), "this->numbers.Size() % (N * 2) == 0", 35, &unk_23F3091D6, 0);
      v3 += 16;
    }

    while (v3 != v4);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

void sub_23F2BDBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F2BDC38(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x245CACD00](v1, 0x20C40960023A9);
    return v2;
  }

  return result;
}

void sub_23F2BDC94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2BDCCC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F2BDD30(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE")
  {
    if (((v2 & "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F2BDD90(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_23F2BDD90;
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
      *a3 = sub_23F2BDD90;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518D150;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347CBC)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BE1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2BE254(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2BE28C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F2BE2F0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE")
  {
    if (((v2 & "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F2BE350(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_23F2BE350;
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
      *a3 = sub_23F2BE350;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518D1B0;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347E24)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_23F2BE4F4(int a1, unsigned __int8 **a2, void **a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_23F2C6BA0(a2, 6);
        v21 = *a2;
        v23 = *(*a2 + 5);
        v22 = *(v21 + 6);
        v8 = *a3;
        v37 = *a3;
        if (v22 > 7)
        {
          sub_23EF2F9B0(v8, "{", 1);
          sub_23EF2F9B0(v8, "{", 1);
          sub_23F2C07D4(&v38, &v37, v23);
        }
      }

      else
      {
        sub_23F2C6BA0(a2, 7);
        v15 = *a2;
        v17 = *(*a2 + 5);
        v16 = *(v15 + 6);
        v8 = *a3;
        v37 = *a3;
        if (v16 > 0xF)
        {
          sub_23EF2F9B0(v8, "{", 1);
          sub_23EF2F9B0(v8, "{", 1);
          sub_23F2C0C98(&v38, &v37, v17);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_23F2C6BA0(a2, 8);
          v27 = *a2;
          v29 = *(*a2 + 5);
          v28 = *(v27 + 6);
          v8 = *a3;
          v37 = *a3;
          if (v28 > 0x1F)
          {
            sub_23EF2F9B0(v8, "{", 1);
            sub_23EF2F9B0(v8, "{", 1);
            sub_23F2C115C(&v38, &v37, v29);
          }

          break;
        case 11:
          sub_23F2C6BA0(a2, 11);
          v33 = *a2;
          v35 = *(*a2 + 5);
          v34 = *(v33 + 6);
          v8 = *a3;
          v37 = *a3;
          if (v34 > 0xF)
          {
            sub_23EF2F9B0(v8, "{", 1);
            sub_23EF2F9B0(v8, "{", 1);
            sub_23F29F608(&v38, &v37, v35);
          }

          break;
        case 12:
          sub_23F2C6BA0(a2, 12);
          v9 = *a2;
          v11 = *(*a2 + 5);
          v10 = *(v9 + 6);
          v8 = *a3;
          v37 = *a3;
          if (v10 > 0x1F)
          {
            sub_23EF2F9B0(v8, "{", 1);
            sub_23EF2F9B0(v8, "{", 1);
            sub_23F2A00DC(&v38, &v37, v11);
          }

          break;
        default:
          goto LABEL_33;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_33;
      }

      sub_23F2C6BA0(a2, 1);
      v12 = *a2;
      v14 = *(*a2 + 5);
      v13 = *(v12 + 6);
      v8 = *a3;
      v37 = *a3;
      if (v13 > 7)
      {
        sub_23EF2F9B0(v8, "{", 1);
        sub_23EF2F9B0(v8, "{", 1);
        sub_23F2BF684(&v38, &v37, v14);
      }
    }

    else
    {
      sub_23F2C6BA0(a2, 0);
      v18 = *a2;
      v20 = *(*a2 + 5);
      v19 = *(v18 + 6);
      v8 = *a3;
      v37 = *a3;
      if (v19 > 3)
      {
        sub_23EF2F9B0(v8, "{", 1);
        sub_23EF2F9B0(v8, "{", 1);
        sub_23F2BF1C0(&v38, &v37, v20);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F2C6BA0(a2, 2);
        v24 = *a2;
        v26 = *(*a2 + 5);
        v25 = *(v24 + 6);
        v8 = *a3;
        v37 = *a3;
        if (v25 > 0xF)
        {
          sub_23EF2F9B0(v8, "{", 1);
          sub_23EF2F9B0(v8, "{", 1);
          sub_23F2BFB48(&v38, &v37, v26);
        }

        break;
      case 3:
        sub_23F2C6BA0(a2, 3);
        v30 = *a2;
        v32 = *(*a2 + 5);
        v31 = *(v30 + 6);
        v8 = *a3;
        v37 = *a3;
        if (v31 > 0x1F)
        {
          sub_23EF2F9B0(v8, "{", 1);
          sub_23EF2F9B0(v8, "{", 1);
          sub_23F2BFE4C(&v38, &v37, v32);
        }

        break;
      case 5:
        sub_23F2C6BA0(a2, 5);
        v5 = *a2;
        v7 = *(*a2 + 5);
        v6 = *(v5 + 6);
        v8 = *a3;
        v37 = *a3;
        if (v6 > 3)
        {
          sub_23EF2F9B0(v8, "{", 1);
          sub_23EF2F9B0(v8, "{", 1);
          sub_23F2C0310(&v38, &v37, v7);
        }

        return sub_23EF2F9B0(v8, "{}", 2);
      default:
LABEL_33:

        sub_23F2F1304(a1);
    }
  }

  return sub_23EF2F9B0(v8, "{}", 2);
}

void sub_23F2BF43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2BF4C4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
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
  (*(&off_28518D1D8 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v6])(&v17, a2);
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
  (*(&off_28518D1D8 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v8])(&v17, a2);
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
    sub_23EF41D6C();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28518D1D8 + v9))(&v11, a2);
}

void sub_23F2BF660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2BF900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2BF988(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
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
  (*(&off_28518D1D8 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v6])(&v17, a2);
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
  (*(&off_28518D1D8 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v8])(&v17, a2);
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
    sub_23EF41D6C();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28518D1D8 + v9))(&v11, a2);
}

void sub_23F2BFB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2BFDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C00C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C0150(uint64_t a1, uint64_t a2, unint64_t *a3)
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
  (*(&off_28518D1D8 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v6])(&v17, a2);
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
  (*(&off_28518D1D8 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v8])(&v17, a2);
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
    sub_23EF41D6C();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28518D1D8 + v9))(&v11, a2);
}

void sub_23F2C02EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C058C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C0614(uint64_t a1, uint64_t a2, char *a3)
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
  (*(&off_28518D1D8 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v6])(&v17, a2);
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
  (*(&off_28518D1D8 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v8])(&v17, a2);
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
    sub_23EF41D6C();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28518D1D8 + v9))(&v11, a2);
}

void sub_23F2C07B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C0A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C0AD8(uint64_t a1, uint64_t a2, __int16 *a3)
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
  (*(&off_28518D1D8 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v6])(&v17, a2);
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
  (*(&off_28518D1D8 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v8])(&v17, a2);
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
    sub_23EF41D6C();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28518D1D8 + v9))(&v11, a2);
}

void sub_23F2C0C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C0F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C0F9C(uint64_t a1, uint64_t a2, int *a3)
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
  (*(&off_28518D1D8 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v6])(&v17, a2);
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
  (*(&off_28518D1D8 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v8])(&v17, a2);
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
    sub_23EF41D6C();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28518D1D8 + v9))(&v11, a2);
}

void sub_23F2C1138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C13D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C1460(uint64_t a1, uint64_t a2, uint64_t *a3)
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
  (*(&off_28518D1D8 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v6])(&v17, a2);
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
  (*(&off_28518D1D8 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v8])(&v17, a2);
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
    sub_23EF41D6C();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28518D1D8 + v9))(&v11, a2);
}

void sub_23F2C15FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F2C1620(int a1, unsigned __int8 **a2, void **a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_23F2C6BA0(a2, 6);
        v21 = *a2;
        v22 = *(*a2 + 5);
        v23 = *(v21 + 6);
        v8 = *a3;
        v37 = *a3;
        if (v23 > 0xB)
        {
          sub_23EF2F9B0(v8, "{", 1);
          sub_23EF2F9B0(v8, "{", 1);
          sub_23F2C3BD8(&v38, &v37, v22);
        }
      }

      else
      {
        sub_23F2C6BA0(a2, 7);
        v15 = *a2;
        v16 = *(*a2 + 5);
        v17 = *(v15 + 6);
        v8 = *a3;
        v37 = *a3;
        if (v17 > 0x17)
        {
          sub_23EF2F9B0(v8, "{", 1);
          sub_23EF2F9B0(v8, "{", 1);
          sub_23F2C4120(&v38, &v37, v16);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_23F2C6BA0(a2, 8);
          v27 = *a2;
          v28 = *(*a2 + 5);
          v29 = *(v27 + 6);
          v8 = *a3;
          v37 = *a3;
          if (v29 > 0x2F)
          {
            sub_23EF2F9B0(v8, "{", 1);
            sub_23EF2F9B0(v8, "{", 1);
            sub_23F2C4668(&v38, &v37, v28);
          }

          break;
        case 11:
          sub_23F2C6BA0(a2, 11);
          v33 = *a2;
          v34 = *(*a2 + 5);
          v35 = *(v33 + 6);
          v8 = *a3;
          v37 = *a3;
          if (v35 > 0x17)
          {
            sub_23EF2F9B0(v8, "{", 1);
            sub_23EF2F9B0(v8, "{", 1);
            sub_23F2C4BB0(&v38, &v37, v34);
          }

          break;
        case 12:
          sub_23F2C6BA0(a2, 12);
          v9 = *a2;
          v10 = *(*a2 + 5);
          v11 = *(v9 + 6);
          v8 = *a3;
          v37 = *a3;
          if (v11 > 0x2F)
          {
            sub_23EF2F9B0(v8, "{", 1);
            sub_23EF2F9B0(v8, "{", 1);
            sub_23F2C4EB4(&v38, &v37, v10);
          }

          break;
        default:
          goto LABEL_33;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_33;
      }

      sub_23F2C6BA0(a2, 1);
      v12 = *a2;
      v13 = *(*a2 + 5);
      v14 = *(v12 + 6);
      v8 = *a3;
      v37 = *a3;
      if (v14 > 0xB)
      {
        sub_23EF2F9B0(v8, "{", 1);
        sub_23EF2F9B0(v8, "{", 1);
        sub_23F2C28FC(&v38, &v37, v13);
      }
    }

    else
    {
      sub_23F2C6BA0(a2, 0);
      v18 = *a2;
      v19 = *(*a2 + 5);
      v20 = *(v18 + 6);
      v8 = *a3;
      v37 = *a3;
      if (v20 > 5)
      {
        sub_23EF2F9B0(v8, "{", 1);
        sub_23EF2F9B0(v8, "{", 1);
        sub_23F2C23B4(&v38, &v37, v19);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F2C6BA0(a2, 2);
        v24 = *a2;
        v25 = *(*a2 + 5);
        v26 = *(v24 + 6);
        v8 = *a3;
        v37 = *a3;
        if (v26 > 0x17)
        {
          sub_23EF2F9B0(v8, "{", 1);
          sub_23EF2F9B0(v8, "{", 1);
          sub_23F2C2E44(&v38, &v37, v25);
        }

        break;
      case 3:
        sub_23F2C6BA0(a2, 3);
        v30 = *a2;
        v31 = *(*a2 + 5);
        v32 = *(v30 + 6);
        v8 = *a3;
        v37 = *a3;
        if (v32 > 0x2F)
        {
          sub_23EF2F9B0(v8, "{", 1);
          sub_23EF2F9B0(v8, "{", 1);
          sub_23F2C3148(&v38, &v37, v31);
        }

        break;
      case 5:
        sub_23F2C6BA0(a2, 5);
        v5 = *a2;
        v6 = *(*a2 + 5);
        v7 = *(v5 + 6);
        v8 = *a3;
        v37 = *a3;
        if (v7 > 5)
        {
          sub_23EF2F9B0(v8, "{", 1);
          sub_23EF2F9B0(v8, "{", 1);
          sub_23F2C3690(&v38, &v37, v6);
        }

        return sub_23EF2F9B0(v8, "{}", 2);
      default:
LABEL_33:

        sub_23F2F1304(a1);
    }
  }

  return sub_23EF2F9B0(v8, "{}", 2);
}

void sub_23F2C2630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C26B8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_28518D1F0[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_28518D1D8 + v11))(&v13, a2);
}

void sub_23F2C28D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C2B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C2C00(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_28518D1F0[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_28518D1D8 + v11))(&v13, a2);
}

void sub_23F2C2E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C30C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C33C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C344C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_28518D1F0[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_28518D1D8 + v11))(&v13, a2);
}

void sub_23F2C366C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C390C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C3994(uint64_t a1, uint64_t a2, char *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_28518D1F0[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_28518D1D8 + v11))(&v13, a2);
}

void sub_23F2C3BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C3E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C3EDC(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_28518D1F0[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_28518D1D8 + v11))(&v13, a2);
}

void sub_23F2C40FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C439C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C4424(uint64_t a1, uint64_t a2, int *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_28518D1F0[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_28518D1D8 + v11))(&v13, a2);
}

void sub_23F2C4644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C48E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C496C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_28518D1F0[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_28518D1D8 + v11))(&v13, a2);
}

void sub_23F2C4B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C4E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C5130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C5418(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C56AC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C5944(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C5BDC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C5E74(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C610C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C63A4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C663C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C68D4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C6B6C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

unsigned __int8 **sub_23F2C6BA0(unsigned __int8 **result, int a2)
{
  v4 = a2;
  if (**result != a2)
  {
    v2 = result;
    __cxa_allocate_exception(0x10uLL);
    sub_23F2C6C8C(&v3, &v4, *v2);
  }

  return result;
}

void sub_23F2C6C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_23F2C6C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7[0] = v5;
  v7[1] = "Span of value type ";
  v7[2] = v5;
  v7[3] = "Span of value type ";
  v7[4] = "Span of value type ";
  v8 = v7;
  sub_23F05AE98(&v8);
  sub_23EF848B8(&v4, v5, a2);
}

void sub_23F2C6DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2C6DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2C6DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2C6DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2C6E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void *sub_23F2C6E24(void *a1, unsigned __int8 **a2)
{
  v4 = sub_23EF2F9B0(a1, "{", 1);
  v89.__r_.__value_.__s.__data_[0] = **a2;
  v5 = sub_23F2F1524(v4, &v89);
  sub_23EF2F9B0(v5, ",", 1);
  v6 = **a2;
  if (v6 > 5)
  {
    if (**a2 > 7u)
    {
      switch(v6)
      {
        case 8u:
          sub_23F2C6BA0(a2, 8);
          v59 = *(*a2 + 6);
          if (v59 > 7)
          {
            v60 = *(*a2 + 5);
            sub_23EF2F9B0(a1, "{", 1);
            std::to_string(&v89, *v60);
            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v61 = &v89;
            }

            else
            {
              v61 = v89.__r_.__value_.__r.__words[0];
            }

            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v89.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v89.__r_.__value_.__l.__size_;
            }

            sub_23EF2F9B0(a1, v61, size);
            v63 = v59 & 0xFFFFFFFFFFFFFFF8;
            if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89.__r_.__value_.__l.__data_);
            }

            v64 = v63 - 8;
            if (v64)
            {
              v65 = v60 + 1;
              do
              {
                sub_23EF2F9B0(a1, ",", 1);
                std::to_string(&v89, *v65);
                if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v66 = &v89;
                }

                else
                {
                  v66 = v89.__r_.__value_.__r.__words[0];
                }

                if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v67 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v67 = v89.__r_.__value_.__l.__size_;
                }

                sub_23EF2F9B0(a1, v66, v67);
                if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v89.__r_.__value_.__l.__data_);
                }

                ++v65;
                v64 -= 8;
              }

              while (v64);
            }

            goto LABEL_149;
          }

          goto LABEL_151;
        case 0xBu:
          sub_23F2C6BA0(a2, 11);
          v76 = *a2;
          v78 = *(*a2 + 5);
          v77 = *(v76 + 6);
          v89.__r_.__value_.__r.__words[0] = a1;
          if (v77 <= 3)
          {
            goto LABEL_151;
          }

          v80 = v77 & 0xFFFFFFFFFFFFFFFCLL;
          sub_23EF2F9B0(a1, "{", 1);
          sub_23EF821A4(&v87, &v89, v78);
          v81 = v80 - 4;
          if (v80 != 4)
          {
            v82 = v78 + 1;
            do
            {
              sub_23EF2F9B0(v89.__r_.__value_.__l.__data_, ",", 1);
              sub_23EF821A4(&v87, &v89, v82++);
              v81 -= 4;
            }

            while (v81);
          }

          break;
        case 0xCu:
          sub_23F2C6BA0(a2, 12);
          v16 = *a2;
          v18 = *(*a2 + 5);
          v17 = *(v16 + 6);
          v89.__r_.__value_.__r.__words[0] = a1;
          if (v17 <= 7)
          {
            goto LABEL_151;
          }

          v19 = v17 & 0xFFFFFFFFFFFFFFF8;
          sub_23EF2F9B0(a1, "{", 1);
          sub_23F2C8228(&v87, &v89, v18);
          v20 = v19 - 8;
          if (v19 != 8)
          {
            v21 = v18 + 1;
            do
            {
              sub_23EF2F9B0(v89.__r_.__value_.__l.__data_, ",", 1);
              sub_23F2C8228(&v87, &v89, v21++);
              v20 -= 8;
            }

            while (v20);
          }

          break;
        default:
          goto LABEL_152;
      }

      v75 = v89.__r_.__value_.__r.__words[0];
      v74 = "}";
      goto LABEL_157;
    }

    if (v6 == 6)
    {
      sub_23F2C6BA0(a2, 6);
      v41 = *(*a2 + 6);
      if (v41 > 1)
      {
        v42 = *(*a2 + 5);
        sub_23EF2F9B0(a1, "{", 1);
        std::to_string(&v89, *v42);
        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v89;
        }

        else
        {
          v43 = v89.__r_.__value_.__r.__words[0];
        }

        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v44 = v89.__r_.__value_.__l.__size_;
        }

        sub_23EF2F9B0(a1, v43, v44);
        v45 = v41 & 0xFFFFFFFFFFFFFFFELL;
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        v46 = v45 - 2;
        if (v46)
        {
          v47 = v42 + 1;
          do
          {
            sub_23EF2F9B0(a1, ",", 1);
            std::to_string(&v89, *v47);
            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v48 = &v89;
            }

            else
            {
              v48 = v89.__r_.__value_.__r.__words[0];
            }

            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v49 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v49 = v89.__r_.__value_.__l.__size_;
            }

            sub_23EF2F9B0(a1, v48, v49);
            if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89.__r_.__value_.__l.__data_);
            }

            ++v47;
            v46 -= 2;
          }

          while (v46);
        }

        goto LABEL_149;
      }

      goto LABEL_151;
    }

    if (v6 == 7)
    {
      sub_23F2C6BA0(a2, 7);
      v31 = *(*a2 + 6);
      if (v31 > 3)
      {
        v32 = *(*a2 + 5);
        sub_23EF2F9B0(a1, "{", 1);
        std::to_string(&v89, *v32);
        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v89;
        }

        else
        {
          v33 = v89.__r_.__value_.__r.__words[0];
        }

        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v34 = v89.__r_.__value_.__l.__size_;
        }

        sub_23EF2F9B0(a1, v33, v34);
        v35 = v31 & 0xFFFFFFFFFFFFFFFCLL;
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        v36 = v35 - 4;
        if (v36)
        {
          v37 = v32 + 1;
          do
          {
            sub_23EF2F9B0(a1, ",", 1);
            std::to_string(&v89, *v37);
            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &v89;
            }

            else
            {
              v38 = v89.__r_.__value_.__r.__words[0];
            }

            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = v89.__r_.__value_.__l.__size_;
            }

            sub_23EF2F9B0(a1, v38, v39);
            if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89.__r_.__value_.__l.__data_);
            }

            ++v37;
            v36 -= 4;
          }

          while (v36);
        }

        goto LABEL_149;
      }

      goto LABEL_151;
    }

LABEL_152:
    sub_23F2F1304(v6);
  }

  if (**a2 > 1u)
  {
    switch(v6)
    {
      case 2u:
        sub_23F2C6BA0(a2, 2);
        v50 = *(*a2 + 6);
        if (v50 > 3)
        {
          v51 = *(*a2 + 5);
          sub_23EF2F9B0(a1, "{", 1);
          std::to_string(&v89, *v51);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v52 = &v89;
          }

          else
          {
            v52 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v53 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v53 = v89.__r_.__value_.__l.__size_;
          }

          sub_23EF2F9B0(a1, v52, v53);
          v54 = v50 & 0xFFFFFFFFFFFFFFFCLL;
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          v55 = v54 - 4;
          if (v55)
          {
            v56 = v51 + 1;
            do
            {
              sub_23EF2F9B0(a1, ",", 1);
              std::to_string(&v89, *v56);
              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v57 = &v89;
              }

              else
              {
                v57 = v89.__r_.__value_.__r.__words[0];
              }

              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v58 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v58 = v89.__r_.__value_.__l.__size_;
              }

              sub_23EF2F9B0(a1, v57, v58);
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
              }

              ++v56;
              v55 -= 4;
            }

            while (v55);
          }

          goto LABEL_149;
        }

        goto LABEL_151;
      case 3u:
        sub_23F2C6BA0(a2, 3);
        v68 = *(*a2 + 6);
        if (v68 > 7)
        {
          v69 = *(*a2 + 5);
          sub_23EF2F9B0(a1, "{", 1);
          std::to_string(&v89, *v69);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v70 = &v89;
          }

          else
          {
            v70 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v71 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v71 = v89.__r_.__value_.__l.__size_;
          }

          sub_23EF2F9B0(a1, v70, v71);
          v72 = v68 & 0xFFFFFFFFFFFFFFF8;
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          v73 = v72 - 8;
          if (v73)
          {
            v84 = v69 + 1;
            do
            {
              sub_23EF2F9B0(a1, ",", 1);
              std::to_string(&v89, *v84);
              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v85 = &v89;
              }

              else
              {
                v85 = v89.__r_.__value_.__r.__words[0];
              }

              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v86 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v86 = v89.__r_.__value_.__l.__size_;
              }

              sub_23EF2F9B0(a1, v85, v86);
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
              }

              ++v84;
              v73 -= 8;
            }

            while (v73);
          }

          goto LABEL_149;
        }

LABEL_151:
        v74 = "{}";
        v75 = a1;
        v79 = 2;
LABEL_158:
        sub_23EF2F9B0(v75, v74, v79);
        return sub_23EF2F9B0(a1, "}", 1);
      case 5u:
        sub_23F2C6BA0(a2, 5);
        v7 = *a2;
        v8 = *(*a2 + 6);
        if (v8 > 0)
        {
          v9 = *(v7 + 5);
          sub_23EF2F9B0(a1, "{", 1);
          std::to_string(&v89, *v9);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v10 = &v89;
          }

          else
          {
            v10 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v11 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v11 = v89.__r_.__value_.__l.__size_;
          }

          sub_23EF2F9B0(a1, v10, v11);
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          v12 = v8 - 1;
          if (v8 != 1)
          {
            v13 = v9 + 1;
            do
            {
              sub_23EF2F9B0(a1, ",", 1);
              std::to_string(&v89, *v13);
              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v14 = &v89;
              }

              else
              {
                v14 = v89.__r_.__value_.__r.__words[0];
              }

              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v15 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v15 = v89.__r_.__value_.__l.__size_;
              }

              sub_23EF2F9B0(a1, v14, v15);
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
              }

              ++v13;
              --v12;
            }

            while (v12);
          }

LABEL_149:
          v74 = "}";
          v75 = a1;
LABEL_157:
          v79 = 1;
          goto LABEL_158;
        }

        goto LABEL_151;
    }

    goto LABEL_152;
  }

  if (**a2)
  {
    sub_23F2C6BA0(a2, 1);
    v22 = *(*a2 + 6);
    if (v22 > 1)
    {
      v23 = *(*a2 + 5);
      sub_23EF2F9B0(a1, "{", 1);
      std::to_string(&v89, *v23);
      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v89;
      }

      else
      {
        v24 = v89.__r_.__value_.__r.__words[0];
      }

      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v89.__r_.__value_.__l.__size_;
      }

      sub_23EF2F9B0(a1, v24, v25);
      v26 = v22 & 0xFFFFFFFFFFFFFFFELL;
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      v27 = v26 - 2;
      if (v27)
      {
        v28 = v23 + 1;
        do
        {
          sub_23EF2F9B0(a1, ",", 1);
          std::to_string(&v89, *v28);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v89;
          }

          else
          {
            v29 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v30 = v89.__r_.__value_.__l.__size_;
          }

          sub_23EF2F9B0(a1, v29, v30);
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          ++v28;
          v27 -= 2;
        }

        while (v27);
      }

      goto LABEL_149;
    }

    goto LABEL_151;
  }

  sub_23F2C6BA0(a2, 0);
  v40 = *(*a2 + 6);
  v89.__r_.__value_.__r.__words[0] = *(*a2 + 5);
  v89.__r_.__value_.__l.__size_ = v40;
  v87 = a1;
  sub_23F295760(&v88, &v87, &v89);
  return sub_23EF2F9B0(a1, "}", 1);
}

void sub_23F2C7724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23F2C7774(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v33 = *(a2 + 8);
        v34 = *(a2 + 16);
        v35 = *(v33 + 48);
        if (v35 >> 1 == *(v34 + 48) >> 1)
        {
          v36 = *(v33 + 40);
          v37 = *(v34 + 40);
          if (v35 < 2 || v36 == v37)
          {
            return 1;
          }

          v68 = 2 * (v35 >> 1);
          while (*v36 == *v37)
          {
            ++v36;
            ++v37;
            v68 -= 2;
            if (!v68)
            {
              return 1;
            }
          }
        }
      }

      else
      {
        v21 = *(a2 + 8);
        v22 = *(a2 + 16);
        v23 = *(v21 + 48);
        if (v23 >> 2 == *(v22 + 48) >> 2)
        {
          v24 = *(v21 + 40);
          v25 = *(v22 + 40);
          if (v23 < 4 || v24 == v25)
          {
            return 1;
          }

          v64 = 4 * (v23 >> 2);
          while (*v24 == *v25)
          {
            ++v24;
            ++v25;
            v64 -= 4;
            if (!v64)
            {
              return 1;
            }
          }
        }
      }

      return 0;
    }

    switch(a1)
    {
      case 8:
        v45 = *(a2 + 8);
        v46 = *(a2 + 16);
        v47 = *(v45 + 48);
        if (v47 >> 3 == *(v46 + 48) >> 3)
        {
          v48 = *(v45 + 40);
          v49 = *(v46 + 40);
          if (v47 < 8 || v48 == v49)
          {
            return 1;
          }

          v70 = 8 * (v47 >> 3);
          while (*v48 == *v49)
          {
            ++v48;
            ++v49;
            v70 -= 8;
            if (!v70)
            {
              return 1;
            }
          }
        }

        return 0;
      case 11:
        v57 = *(a2 + 8);
        v58 = *(a2 + 16);
        v59 = *(v57 + 48);
        if (v59 >> 2 == *(v58 + 48) >> 2)
        {
          v60 = *(v57 + 40);
          v61 = *(v58 + 40);
          if (v59 < 4 || v60 == v61)
          {
            return 1;
          }

          v75 = 4 * (v59 >> 2);
          while (*v60 == *v61)
          {
            ++v60;
            ++v61;
            v75 -= 4;
            if (!v75)
            {
              return 1;
            }
          }
        }

        return 0;
      case 12:
        v9 = *(a2 + 8);
        v10 = *(a2 + 16);
        v11 = *(v9 + 48);
        if (v11 >> 3 == *(v10 + 48) >> 3)
        {
          v12 = *(v9 + 40);
          v13 = *(v10 + 40);
          if (v11 < 8 || v12 == v13)
          {
            return 1;
          }

          v73 = 8 * (v11 >> 3);
          while (*v12 == *v13)
          {
            ++v12;
            ++v13;
            v73 -= 8;
            if (!v73)
            {
              return 1;
            }
          }
        }

        return 0;
    }

    goto LABEL_83;
  }

  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        v39 = *(a2 + 8);
        v40 = *(a2 + 16);
        v41 = *(v39 + 48);
        if (v41 >> 2 == *(v40 + 48) >> 2)
        {
          v42 = *(v39 + 40);
          v43 = *(v40 + 40);
          if (v41 < 4 || v42 == v43)
          {
            return 1;
          }

          v69 = 4 * (v41 >> 2);
          while (*v42 == *v43)
          {
            ++v42;
            ++v43;
            v69 -= 4;
            if (!v69)
            {
              return 1;
            }
          }
        }

        return 0;
      case 3:
        v51 = *(a2 + 8);
        v52 = *(a2 + 16);
        v53 = *(v51 + 48);
        if (v53 >> 3 == *(v52 + 48) >> 3)
        {
          v54 = *(v51 + 40);
          v55 = *(v52 + 40);
          if (v53 < 8 || v54 == v55)
          {
            return 1;
          }

          v74 = 8 * (v53 >> 3);
          while (*v54 == *v55)
          {
            ++v54;
            ++v55;
            v74 -= 8;
            if (!v74)
            {
              return 1;
            }
          }
        }

        return 0;
      case 5:
        v2 = *(a2 + 8);
        v3 = *(a2 + 16);
        v4 = *(v2 + 48);
        if (v4 == *(v3 + 48))
        {
          v5 = *(v2 + 40);
          v6 = *(v3 + 40);
          if (v4)
          {
            v7 = v5 == v6;
          }

          else
          {
            v7 = 1;
          }

          if (v7)
          {
            return 1;
          }

          v71 = v4 - 1;
          do
          {
            v72 = v71;
            v67 = *v5 == *v6;
            if (*v5 != *v6)
            {
              break;
            }

            ++v5;
            ++v6;
            --v71;
          }

          while (v72);
          return v67;
        }

        return 0;
    }

LABEL_83:
    sub_23F2F1304(a1);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v15 = *(a2 + 8);
      v16 = *(a2 + 16);
      v17 = *(v15 + 48);
      if (v17 >> 1 == *(v16 + 48) >> 1)
      {
        v18 = *(v15 + 40);
        v19 = *(v16 + 40);
        if (v17 < 2 || v18 == v19)
        {
          return 1;
        }

        v63 = 2 * (v17 >> 1);
        while (*v18 == *v19)
        {
          ++v18;
          ++v19;
          v63 -= 2;
          if (!v63)
          {
            return 1;
          }
        }
      }

      return 0;
    }

    goto LABEL_83;
  }

  v27 = *(a2 + 8);
  v28 = *(a2 + 16);
  v29 = *(v27 + 48);
  if (v29 == *(v28 + 48))
  {
    v30 = *(v27 + 40);
    v31 = *(v28 + 40);
    if (v29)
    {
      v32 = v30 == v31;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      return 1;
    }

    v65 = v29 - 1;
    do
    {
      v66 = v65;
      v67 = *v30 == *v31;
      if (*v30 != *v31)
      {
        break;
      }

      ++v30;
      ++v31;
      --v65;
    }

    while (v66);
    return v67;
  }

  return 0;
}

void sub_23F2C7C2C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518D230;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2C7C80(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    return v1(0, result + 32, 0, 0, 0);
  }

  return result;
}

size_t sub_23F2C7CBC(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28518D270[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
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

void sub_23F2C7DB0(uint64_t *a1, uint64_t a2)
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
    sub_23EF2F8F4();
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
    (off_28518D270[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23EF42150(v3, &v12, 2uLL);
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

void sub_23F2C7F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C7FCC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
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

      sub_23EF34E18();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
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
      sub_23EF2F8F4();
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

void sub_23F2C820C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F2C8228(uint64_t a1, void **a2, double *a3)
{
  std::to_string(&v19, *a3);
  v5 = v19.__r_.__value_.__r.__words[0];
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v19;
  }

  else
  {
    v6 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v8 = size;
  do
  {
    if (!v8)
    {
      v8 = -1;
      if ((*(&v19.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_14;
      }

LABEL_11:
      if (v8 != HIBYTE(v19.__r_.__value_.__r.__words[2]) - 1)
      {
        v5 = &v19;
        goto LABEL_16;
      }

LABEL_15:
      sub_23EF2F9B0(*a2, v6, size);
LABEL_46:
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_49;
    }

    v9 = v6->__r_.__value_.__s.__data_[--v8];
  }

  while (v9 == 48);
  if ((*(&v19.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v8 == v19.__r_.__value_.__l.__size_ - 1)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (strtod(v5, 0) != *a3)
  {
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v19;
    }

    else
    {
      v6 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    goto LABEL_15;
  }

  v10 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v19;
  }

  else
  {
    v11 = v19.__r_.__value_.__r.__words[0];
  }

  v12 = 1;
  if (v11->__r_.__value_.__s.__data_[v8] == 46)
  {
    v12 = 2;
  }

  v13 = v12 + v8;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v19.__r_.__value_.__l.__size_;
  }

  if (v10 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  v18 = v14;
  if (v14)
  {
    memmove(__p, v11, v14);
  }

  *(__p + v14) = 0;
  if ((v18 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v16 = v18;
  }

  else
  {
    v16 = __p[1];
  }

  sub_23EF2F9B0(*a2, v15, v16);
  if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return;
  }

LABEL_49:
  operator delete(v19.__r_.__value_.__l.__data_);
}

void sub_23F2C8430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C849C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (*(*a1 + 56))
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Container/src/Points.cpp", 42, "this->numbers.Size() % N == 0", 0x1DuLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "this->numbers.Size() % N == 0", 29, &unk_23F3091D6, 0);
        return a1;
      }
    }

    else
    {
      v3 = qword_27E396178;
      v4 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_11;
      }
    }

    do
    {
      (*v3)(*(v3 + 8), "this->numbers.Size() % N == 0", 29, &unk_23F3091D6, 0);
      v3 += 16;
    }

    while (v3 != v4);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

uint64_t sub_23F2C85FC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (0xAAAAAAAAAAAAAAABLL * *(*a1 + 56) >= 0x5555555555555556)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Container/src/Points.cpp", 42, "this->numbers.Size() % N == 0", 0x1DuLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "this->numbers.Size() % N == 0", 29, &unk_23F3091D6, 0);
        return a1;
      }
    }

    else
    {
      v3 = qword_27E396178;
      v4 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_11;
      }
    }

    do
    {
      (*v3)(*(v3 + 8), "this->numbers.Size() % N == 0", 29, &unk_23F3091D6, 0);
      v3 += 16;
    }

    while (v3 != v4);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

void sub_23F2C8A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C8A78(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2C8AB0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F2C8B14(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE")
  {
    if (((v2 & "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F2C8B74(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_23F2C8B74;
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
      *a3 = sub_23F2C8B74;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518D308;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347FB0)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2C8FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C9034(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2C906C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F2C90D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE")
  {
    if (((v2 & "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F2C9130(int a1, void *a2, void *a3, uint64_t a4, void *a5)
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
      *a3 = sub_23F2C9130;
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
      *a3 = sub_23F2C9130;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518D368;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F3480E8)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_23F2C92D4(int a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        return sub_23F2C996C(v4);
      }

      else
      {
        return sub_23F2C9A70(v4);
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          return sub_23F2C9B74(v4);
        case 11:
          return sub_23F2C9C78(v4);
        case 12:
          return sub_23F2C9D7C(v4);
        default:
          goto LABEL_23;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_23;
      }

      return sub_23F2C955C(v4);
    }

    else
    {
      return sub_23F2C9458(v4);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return sub_23F2C9660(v4);
      case 3:
        return sub_23F2C9764(v4);
      case 5:
        return sub_23F2C9868(v4);
      default:
LABEL_23:

        sub_23F2F1304(a1);
    }
  }
}

void *sub_23F2C9458(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 0);
  v3 = *v2;
  v5 = *(*v2 + 5);
  v4 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v4 > 1)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2BF1C0(&v9, &v8, v5);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2C955C(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 1);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 3)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2BF684(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2C9660(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 2);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 7)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2BFB48(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2C9764(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 3);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 0xF)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2BFE4C(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2C9868(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 5);
  v3 = *v2;
  v5 = *(*v2 + 5);
  v4 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v4 > 1)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2C0310(&v9, &v8, v5);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2C996C(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 6);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 3)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2C07D4(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2C9A70(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 7);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 7)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2C0C98(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2C9B74(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 8);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 0xF)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2C115C(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2C9C78(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 11);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 7)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F29F608(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2C9D7C(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 12);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 0xF)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2A00DC(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2C9E80(int a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        return sub_23F2CA598(v4);
      }

      else
      {
        return sub_23F2CA6BC(v4);
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          return sub_23F2CA7E0(v4);
        case 11:
          return sub_23F2CA904(v4);
        case 12:
          return sub_23F2CAA28(v4);
        default:
          goto LABEL_23;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_23;
      }

      return sub_23F2CA118(v4);
    }

    else
    {
      return sub_23F2CA004(v4);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return sub_23F2CA23C(v4);
      case 3:
        return sub_23F2CA360(v4);
      case 5:
        return sub_23F2CA484(v4);
      default:
LABEL_23:

        sub_23F2F1304(a1);
    }
  }
}

void *sub_23F2CA004(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 0);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 2)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2C23B4(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2CA118(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 1);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 5)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2C28FC(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2CA23C(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 2);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 0xB)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2C2E44(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2CA360(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 3);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 0x17)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2C3148(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2CA484(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 5);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 2)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2C3690(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2CA598(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 6);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 5)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2C3BD8(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2CA6BC(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 7);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 0xB)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2C4120(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2CA7E0(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 8);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 0x17)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2C4668(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2CA904(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 11);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 0xB)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2C4BB0(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void *sub_23F2CAA28(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 12);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = *(v3 + 6);
  v6 = **(a1 + 8);
  v8 = v6;
  if (v5 > 0x17)
  {
    sub_23EF2F9B0(v6, "{", 1);
    sub_23F2C4EB4(&v9, &v8, v4);
  }

  return sub_23EF2F9B0(v6, "{}", 2);
}

void sub_23F2CAB4C(uint64_t a1)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (v4)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    goto LABEL_14;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/src/BundleRef.cpp", 49, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v5 = qword_27E396178, v6 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_13:
      qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
LABEL_14:
      v9 = CFBundleCopyExecutableURL(*a1);
      sub_23F083784(&v10, v9);
    }
  }

  else
  {
    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_15;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "IsValid()", 9, &unk_23F3091D6, 0);
  }

  while (v5 != v6);
  if (byte_27E3961A0)
  {
    goto LABEL_13;
  }

LABEL_15:
  abort();
}

void sub_23F2CAD48(void *a1@<X8>)
{
  sub_23F2D59FC(__p);
  if (v4)
  {
    sub_23F2D51F8(&bundleURL, __p, 1u);
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_23F2CAE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2CB0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F2CB140(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2CB178(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F2CB19C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP10__CFBundleEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP10__CFBundleEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP10__CFBundleEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP10__CFBundleEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

const __CFString *sub_23F2CB1FC@<X0>(const __CFString *result@<X0>, std::string *a2@<X8>)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v3 = result;
  TypeID = CFStringGetTypeID();
  result = CFGetTypeID(v3);
  if (result != TypeID)
  {
    goto LABEL_9;
  }

  result = CFStringGetLength(v3);
  if (result)
  {
    v5 = result;
    usedBufLen = 0;
    v10.location = 0;
    v10.length = result;
    result = CFStringGetBytes(v3, v10, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    if (result > 0)
    {
      memset(&v8, 0, sizeof(v8));
      if (usedBufLen)
      {
        std::string::append(&v8, usedBufLen, 0);
        v6 = usedBufLen;
        if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v8;
        }

        else
        {
          v7 = v8.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v6 = 0;
        v7 = &v8;
      }

      v11.location = 0;
      v11.length = v5;
      result = CFStringGetBytes(v3, v11, 0x8000100u, 0, 0, v7, v6, 0);
      *a2 = v8;
      goto LABEL_13;
    }

LABEL_9:
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    return result;
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
LABEL_13:
  a2[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

void sub_23F2CB33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2CB55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F2CB5DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2CB614(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F2CB638(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F2CB89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F2CB91C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2CB954(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F2CB978(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK11__CFBooleanEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK11__CFBooleanEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK11__CFBooleanEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK11__CFBooleanEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F2CBBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F2CBC5C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2CBC94(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F2CBCB8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP9__CFArrayEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP9__CFArrayEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP9__CFArrayEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP9__CFArrayEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F2CBD18(void *a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_23F2CB358(&v4, v3);
}

uint64_t sub_23F2CBE44(CFDataRef *a1)
{
  Length = CFDataGetLength(*a1);
  if (Length < 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  return Length & 0x7FFFFFFF;
}

void sub_23F2CBEA8(const UInt8 *a1, CFIndex a2)
{
  Default = CFAllocatorGetDefault();
  v6 = CFDataCreateWithBytesNoCopy(Default, a1, a2, *MEMORY[0x277CBED00]);
  sub_23F2CB358(&v7, v6);
}

void sub_23F2CBFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F2CBFEC(void *a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if (a3)
    {
      v3 = cf;
      CFRetain(cf);
      cf = v3;
    }
  }

  sub_23EF44AC4(&v4, cf);
}

void sub_23F2CC144(unint64_t a2@<X1>, unint64_t a4@<X3>, const __CFAllocator *a5@<X4>, CFDictionaryKeyCallBacks *a6@<X5>, const CFDictionaryValueCallBacks *a7@<X6>, void *a8@<X8>)
{
  if (a2 == a4)
  {
LABEL_10:
    if (a2)
    {
      if (!(a2 >> 61))
      {
        operator new();
      }

      sub_23EF3AE74();
    }

    if (!a4)
    {
      v15 = CFDictionaryCreate(a5, 0, 0, 0, a6, a7);
      sub_23F2CBFEC(a8, v15, 0);
    }

    if (!(a4 >> 61))
    {
      operator new();
    }

    sub_23EF3AE74();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/src/DictionaryRef.cpp", 94, "keys.size() == values.size()", 0x1CuLL, "Number of keys must match number of values", 0x2AuLL, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v11 = qword_27E396178, v12 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "keys.size() == values.size()", 28, "Number of keys must match number of values", 42);
      goto LABEL_10;
    }
  }

  else
  {
    v11 = qword_27E396178;
    v12 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_19;
    }
  }

  do
  {
    v14 = *v11;
    v13 = *(v11 + 8);
    v11 += 16;
    v14(v13, "keys.size() == values.size()", 28, "Number of keys must match number of values", 42);
  }

  while (v11 != v12);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_19:
  abort();
}

void sub_23F2CC534(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_23F2CC580(void ***a1)
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
        while (1)
        {
          v6 = *(v3 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v5 = v3 - 5;
          if (*(v3 - 17) < 0)
          {
            break;
          }

          v3 -= 5;
          if (v5 == v2)
          {
            goto LABEL_10;
          }
        }

        operator delete(*v5);
        v3 -= 5;
      }

      while (v5 != v2);
LABEL_10:
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_23F2CC654(uint64_t a1, char **a2, char a3, char **a4, char a5)
{
  v11 = *a1;
  v10 = *(a1 + 8);
  if (v10 && (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }
  }

  else if (!v11)
  {
    return;
  }

  v41 = 0;
  v42 = 0;
  v43 = 0;
  __p = 0;
  v39 = 0;
  v40 = 0;
  v13 = *a1;
  v12 = *(a1 + 8);
  if (v12 && (atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else if (v13)
  {
LABEL_7:
    Count = *a1;
    v14 = *(a1 + 8);
    if (v14 && (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      if (!Count)
      {
        goto LABEL_11;
      }
    }

    else if (!Count)
    {
LABEL_11:
      if (a3)
      {
        v16 = v41;
        v17 = (v42 - v41) >> 3;
        if (Count <= v17)
        {
          if (Count < v17)
          {
            v42 = (v41 + 8 * Count);
          }
        }

        else
        {
          sub_23F2D14D4(&v41, Count - v17);
          v16 = v41;
        }
      }

      else
      {
        v16 = 0;
      }

      if (a5)
      {
        v18 = __p;
        v19 = (v39 - __p) >> 3;
        if (Count <= v19)
        {
          if (Count < v19)
          {
            v39 = (__p + 8 * Count);
          }
        }

        else
        {
          sub_23F2D14D4(&__p, Count - v19);
          v18 = __p;
        }
      }

      else
      {
        v18 = 0;
      }

      CFDictionaryGetKeysAndValues(*a1, v16, v18);
      goto LABEL_22;
    }

    Count = CFDictionaryGetCount(*a1);
    goto LABEL_11;
  }

LABEL_22:
  if (a3)
  {
    v21 = v41;
    v20 = v42;
    v45 = 0;
    v44 = 0uLL;
    sub_23F06C5A0(&v44, (v42 - v41) >> 3);
    if (v21 != v20)
    {
      sub_23EFEB0A4(&v46, *v21);
    }

    v22 = v44;
    v23 = v45;
    v24 = *a2;
    if (*a2)
    {
      v36 = v44;
      v25 = a2[1];
      v26 = *a2;
      if (v25 != v24)
      {
        do
        {
          v27 = *(v25 - 1);
          if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v27->__on_zero_shared)(v27, v22);
            std::__shared_weak_count::__release_weak(v27);
          }

          v25 -= 16;
        }

        while (v25 != v24);
        v26 = *a2;
      }

      a2[1] = v24;
      operator delete(v26);
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v22 = v36;
    }

    *a2 = v22;
    a2[2] = v23;
  }

  v28 = __p;
  if (a5)
  {
    v29 = v39;
    v45 = 0;
    v44 = 0uLL;
    sub_23F06C5A0(&v44, (v39 - __p) >> 3);
    if (v28 != v29)
    {
      sub_23EFEB0A4(&v46, *v28);
    }

    v30 = v44;
    v31 = v45;
    v32 = *a4;
    if (*a4)
    {
      v37 = v44;
      v33 = a4[1];
      v34 = *a4;
      if (v33 != v32)
      {
        do
        {
          v35 = *(v33 - 1);
          if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v35->__on_zero_shared)(v35, v30);
            std::__shared_weak_count::__release_weak(v35);
          }

          v33 -= 16;
        }

        while (v33 != v32);
        v34 = *a4;
      }

      a4[1] = v32;
      operator delete(v34);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v30 = v37;
    }

    *a4 = v30;
    a4[2] = v31;
    v28 = __p;
  }

  if (v28)
  {
    operator delete(v28);
  }

  if (v41)
  {
    operator delete(v41);
  }
}

void sub_23F2CCB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  sub_23EFF0CC0(&a17);
  if (__p)
  {
    operator delete(__p);
    v18 = a14;
    if (!a14)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v18 = a14;
    if (!a14)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  _Unwind_Resume(a1);
}

void sub_23F2CCB8C(uint64_t a1)
{
  v2 = **(a1 + 24) + 24 * *(a1 + 8);
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v4 = *(v2 + 23);
    if (*(v3 + 23) < 0)
    {
      if (v4 >= 0)
      {
        v6 = v2;
      }

      else
      {
        v6 = *v2;
      }

      if (v4 >= 0)
      {
        v7 = *(v2 + 23);
      }

      else
      {
        v7 = *(v2 + 8);
      }

      sub_23EF36678(v3, v6, v7);
    }

    else if ((*(v2 + 23) & 0x80) != 0)
    {
      sub_23EF365A8(v3, *v2, *(v2 + 8));
    }

    else
    {
      v5 = *v2;
      *(v3 + 16) = *(v2 + 16);
      *v3 = v5;
    }
  }

  sub_23EFF1164(&v8, *(*(a1 + 24) + 24) + 16 * *(a1 + 8));
}

uint64_t sub_23F2CCCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a2;
  v14[1] = a3;
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_23F2CC654(a1, 0, 0, &__p, 1);
  v3 = __p;
  v4 = v12;
  if (__p == v12)
  {
    v5 = 1;
    v6 = __p;
    if (!__p)
    {
      return v5;
    }
  }

  else
  {
    v5 = 1;
    while (1)
    {
      v15 = v14;
      if ((sub_23F2D1628(&v15, v3, v14) & 1) == 0)
      {
        break;
      }

      v3 += 16;
      if (v3 == v4)
      {
        v6 = __p;
        if (__p)
        {
          goto LABEL_10;
        }

        return v5;
      }
    }

    v5 = 0;
    v6 = __p;
    if (!__p)
    {
      return v5;
    }
  }

LABEL_10:
  v7 = v12;
  v8 = v6;
  if (v12 != v6)
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
  return v5;
}

void sub_23F2CCE60(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a1;
  if (a1)
  {
    v4 = *a1;
    v5 = *(a1 + 8);
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v4)
      {
LABEL_5:
        if (CFDictionaryGetCount(*a1))
        {
          operator new();
        }
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }

    *&v9 = 0;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if (v6)
      {
        goto LABEL_12;
      }

LABEL_15:
      Count = 0;
      goto LABEL_13;
    }
  }

  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_12:
  Count = CFDictionaryGetCount(*a1);
LABEL_13:
  *a2 = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 64) = Count;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
}

void sub_23F2CDD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_23F2CC580((v19 - 144));
  sub_23F067058(va);
  _Unwind_Resume(a1);
}

void sub_23F2CDE6C(void *a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if (a3)
    {
      v3 = cf;
      CFRetain(cf);
      cf = v3;
    }
  }

  sub_23F1FE738(&v4, cf);
}

uint64_t sub_23F2CDFC4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        while (1)
        {
          v7 = *(v4 - 1);
          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v6 = v4 - 5;
          if (*(v4 - 17) < 0)
          {
            break;
          }

          v4 -= 5;
          if (v6 == v5)
          {
            return a1;
          }
        }

        operator delete(*v6);
        v4 -= 5;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void ****sub_23F2CE090(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          while (1)
          {
            v7 = *(v4 - 1);
            if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v7->__on_zero_shared)(v7);
              std::__shared_weak_count::__release_weak(v7);
            }

            v6 = v4 - 5;
            if (*(v4 - 17) < 0)
            {
              break;
            }

            v4 -= 5;
            if (v6 == v3)
            {
              goto LABEL_11;
            }
          }

          operator delete(*v6);
          v4 -= 5;
        }

        while (v6 != v3);
LABEL_11:
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_23F2CE174(const void **a1, const void **a2, uint64_t a3, char a4)
{
  v361 = *MEMORY[0x277D85DE8];
LABEL_2:
  v346 = a2 - 5;
  n = a1;
  while (1)
  {
    a1 = n;
    v7 = a2 - n;
    v8 = 0xCCCCCCCCCCCCCCCDLL * (a2 - n);
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          sub_23F2D009C(a1, a1 + 5, v346);
          return;
        case 4:

          sub_23F2D0668(a1, (a1 + 5), a1 + 5, v346);
          return;
        case 5:

          sub_23F2D0A6C(a1, (a1 + 5), (a1 + 10), (a1 + 15), v346);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v140 = a2 - 5;
        v141 = *(a2 - 17);
        if (v141 >= 0)
        {
          v142 = a2 - 5;
        }

        else
        {
          v142 = *(a2 - 5);
        }

        if (v141 >= 0)
        {
          v143 = *(a2 - 17);
        }

        else
        {
          v143 = *(a2 - 4);
        }

        v144 = *(a1 + 23);
        if (v144 >= 0)
        {
          v145 = a1;
        }

        else
        {
          v145 = *a1;
        }

        if (v144 >= 0)
        {
          v146 = *(a1 + 23);
        }

        else
        {
          v146 = a1[1];
        }

        if (v146 >= v143)
        {
          v147 = v143;
        }

        else
        {
          v147 = v146;
        }

        v148 = memcmp(v142, v145, v147);
        if (v148)
        {
          if ((v148 & 0x80000000) == 0)
          {
            return;
          }
        }

        else
        {
          v333 = v143 >= v146;
          if (v143 == v146)
          {
            v333 = *(a2 - 2) >= a1[3];
          }

          if (v333)
          {
            return;
          }
        }

        v334 = *a1;
        v357 = a1[2];
        *__p = v334;
        v335 = *v140;
        a1[2] = *(a2 - 3);
        *a1 = v335;
        v336 = *__p;
        *(a2 - 3) = v357;
        *v140 = v336;
        v337 = *(a1 + 3);
        a1[3] = 0;
        a1[4] = 0;
        v338 = *(a2 - 1);
        *(a2 - 2) = 0;
        *(a2 - 1) = 0;
        v339 = a1[4];
        *(a1 + 3) = v338;
        if (v339 && !atomic_fetch_add(&v339->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v355 = v337;
          (v339->__on_zero_shared)(v339);
          std::__shared_weak_count::__release_weak(v339);
          v337 = v355;
        }

        v340 = *(a2 - 1);
        *(a2 - 1) = v337;
        if (v340 && !atomic_fetch_add(&v340->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v340->__on_zero_shared)(v340);

          std::__shared_weak_count::__release_weak(v340);
        }

        return;
      }
    }

    if (v7 <= 959)
    {
      if ((a4 & 1) == 0)
      {
        if (a1 == a2)
        {
          return;
        }

        v302 = a1 + 5;
        if (a1 + 5 == a2)
        {
          return;
        }

        for (i = a1 + 9; ; i += 5)
        {
          v304 = a1;
          a1 = v302;
          v305 = *(v304 + 63);
          v306 = v305 >= 0 ? v302 : v304[5];
          v307 = v305 >= 0 ? *(v304 + 63) : v304[6];
          v308 = *(v304 + 23);
          v309 = v308 >= 0 ? v304 : *v304;
          v310 = v308 >= 0 ? *(v304 + 23) : v304[1];
          v311 = (v310 >= v307 ? v307 : v310);
          v312 = memcmp(v306, v309, v311);
          if (!v312)
          {
            break;
          }

          v313 = a2;
          if (v312 < 0)
          {
            goto LABEL_665;
          }

LABEL_643:
          v302 = a1 + 5;
          if (a1 + 5 == v313)
          {
            return;
          }
        }

        v314 = v307 >= v310;
        v313 = a2;
        if (v307 == v310)
        {
          v314 = v304[8] >= v304[3];
        }

        if (v314)
        {
          goto LABEL_643;
        }

LABEL_665:
        v315 = *a1;
        v357 = a1[2];
        *__p = v315;
        a1[1] = 0;
        a1[2] = 0;
        *a1 = 0;
        v358 = *(v304 + 4);
        v304[8] = 0;
        v304[9] = 0;
        for (j = i; ; j -= 5)
        {
          v317 = (j - 4);
          if (*(j - 9) < 0)
          {
            operator delete(*v317);
          }

          v318 = (j - 9);
          *v317 = *(j - 9);
          *(j - 2) = *(j - 7);
          *(j - 49) = 0;
          *(j - 72) = 0;
          v319 = *(j - 3);
          *(j - 6) = 0;
          *(j - 5) = 0;
          v320 = *j;
          *(j - 1) = v319;
          if (v320 && !atomic_fetch_add(&v320->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v320->__on_zero_shared)(v320);
            std::__shared_weak_count::__release_weak(v320);
          }

          if (SHIBYTE(v357) >= 0)
          {
            v321 = __p;
          }

          else
          {
            v321 = __p[0];
          }

          if (SHIBYTE(v357) >= 0)
          {
            v322 = HIBYTE(v357);
          }

          else
          {
            v322 = __p[1];
          }

          v323 = *(j - 89);
          if (v323 >= 0)
          {
            v324 = j - 14;
          }

          else
          {
            v324 = *(j - 14);
          }

          if (v323 >= 0)
          {
            v325 = *(j - 89);
          }

          else
          {
            v325 = *(j - 13);
          }

          if (v325 >= v322)
          {
            v326 = v322;
          }

          else
          {
            v326 = v325;
          }

          v327 = memcmp(v321, v324, v326);
          if (v327)
          {
            if ((v327 & 0x80000000) == 0)
            {
              goto LABEL_693;
            }
          }

          else
          {
            v328 = v322 >= v325;
            if (v322 == v325)
            {
              v328 = v358 >= *(j - 11);
            }

            if (v328)
            {
LABEL_693:
              if (*(j - 49) < 0)
              {
                operator delete(*v318);
              }

              v329 = *__p;
              *(j - 7) = v357;
              *v318 = v329;
              HIBYTE(v357) = 0;
              LOBYTE(__p[0]) = 0;
              v330 = v358;
              v358 = 0uLL;
              v331 = *(j - 5);
              *(j - 3) = v330;
              if (v331 && !atomic_fetch_add(&v331->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v331->__on_zero_shared)(v331);
                std::__shared_weak_count::__release_weak(v331);
              }

              v332 = *(&v358 + 1);
              if (*(&v358 + 1) && !atomic_fetch_add((*(&v358 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v332->__on_zero_shared)(v332);
                std::__shared_weak_count::__release_weak(v332);
              }

              if (SHIBYTE(v357) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_643;
            }
          }
        }
      }

      if (a1 == a2)
      {
        return;
      }

      v149 = a1 + 5;
      if (a1 + 5 == a2)
      {
        return;
      }

      v150 = 0;
      v151 = a1;
LABEL_349:
      v152 = v151;
      v151 = v149;
      v153 = *(v152 + 63);
      if (v153 >= 0)
      {
        v154 = v149;
      }

      else
      {
        v154 = v152[5];
      }

      if (v153 >= 0)
      {
        v155 = *(v152 + 63);
      }

      else
      {
        v155 = v152[6];
      }

      v156 = *(v152 + 23);
      if (v156 >= 0)
      {
        v157 = v152;
      }

      else
      {
        v157 = *v152;
      }

      if (v156 >= 0)
      {
        v158 = *(v152 + 23);
      }

      else
      {
        v158 = v152[1];
      }

      if (v158 >= v155)
      {
        v159 = v155;
      }

      else
      {
        v159 = v158;
      }

      v160 = memcmp(v154, v157, v159);
      if (v160)
      {
        v161 = a2;
        if ((v160 & 0x80000000) == 0)
        {
          goto LABEL_348;
        }
      }

      else
      {
        v162 = v155 >= v158;
        v161 = a2;
        if (v155 == v158)
        {
          v162 = v152[8] >= v152[3];
        }

        if (v162)
        {
          goto LABEL_348;
        }
      }

      v163 = *v151;
      v357 = v151[2];
      *__p = v163;
      v151[1] = 0;
      v151[2] = 0;
      *v151 = 0;
      v358 = *(v152 + 4);
      v152[8] = 0;
      v152[9] = 0;
      for (k = v150; ; k -= 40)
      {
        v165 = a1 + k;
        if (*(a1 + k + 63) < 0)
        {
          operator delete(*(v165 + 5));
        }

        *(v165 + 40) = *v165;
        *(v165 + 7) = *(v165 + 2);
        v165[23] = 0;
        *v165 = 0;
        v166 = *(v165 + 24);
        *(v165 + 3) = 0;
        *(v165 + 4) = 0;
        v167 = *(v165 + 9);
        *(v165 + 4) = v166;
        if (v167 && !atomic_fetch_add(&v167->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v167->__on_zero_shared)(v167);
          std::__shared_weak_count::__release_weak(v167);
        }

        if (!k)
        {
          v180 = a1;
          if (*(a1 + 23) < 0)
          {
            goto LABEL_400;
          }

          goto LABEL_401;
        }

        v168 = a1 + k;
        if (SHIBYTE(v357) >= 0)
        {
          v169 = __p;
        }

        else
        {
          v169 = __p[0];
        }

        if (SHIBYTE(v357) >= 0)
        {
          v170 = HIBYTE(v357);
        }

        else
        {
          v170 = __p[1];
        }

        v173 = *(v168 - 5);
        v171 = v168 - 40;
        v172 = v173;
        v174 = v171[23];
        if (v174 >= 0)
        {
          v175 = v171;
        }

        else
        {
          v175 = v172;
        }

        if (v174 >= 0)
        {
          v176 = v171[23];
        }

        else
        {
          v176 = *(v171 + 1);
        }

        if (v176 >= v170)
        {
          v177 = v170;
        }

        else
        {
          v177 = v176;
        }

        v178 = memcmp(v169, v175, v177);
        if (v178)
        {
          if ((v178 & 0x80000000) == 0)
          {
            goto LABEL_407;
          }
        }

        else
        {
          v179 = v170 >= v176;
          if (v170 == v176)
          {
            v179 = v358 >= *(a1 + k - 16);
          }

          if (v179)
          {
LABEL_407:
            v180 = (a1 + k);
            if (*(a1 + k + 23) < 0)
            {
LABEL_400:
              operator delete(*v180);
            }

LABEL_401:
            v181 = *__p;
            v180[2] = v357;
            *v180 = v181;
            HIBYTE(v357) = 0;
            LOBYTE(__p[0]) = 0;
            v182 = v358;
            v358 = 0uLL;
            *(a1 + k + 24) = v182;
            v183 = v180[4];
            v180[4] = *(&v182 + 1);
            if (v183 && !atomic_fetch_add(&v183->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v183->__on_zero_shared)(v183);
              std::__shared_weak_count::__release_weak(v183);
            }

            v184 = *(&v358 + 1);
            if (*(&v358 + 1) && !atomic_fetch_add((*(&v358 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v184->__on_zero_shared)(v184);
              std::__shared_weak_count::__release_weak(v184);
            }

            if (SHIBYTE(v357) < 0)
            {
              operator delete(__p[0]);
            }

LABEL_348:
            v149 = v151 + 5;
            v150 += 40;
            if (v151 + 5 == v161)
            {
              return;
            }

            goto LABEL_349;
          }
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v9 = v8 >> 1;
    v10 = &a1[5 * (v8 >> 1)];
    if (v7 < 0x1401)
    {
      sub_23F2D009C(v10, a1, v346);
      v344 = a3 - 1;
      if (a4)
      {
        goto LABEL_45;
      }
    }

    else
    {
      sub_23F2D009C(a1, v10, v346);
      v11 = 5 * v9;
      sub_23F2D009C(a1 + 5, &a1[v11 - 5], a2 - 10);
      sub_23F2D009C(a1 + 10, &a1[v11 + 5], a2 - 15);
      sub_23F2D009C(&a1[v11 - 5], v10, &a1[v11 + 5]);
      v12 = *a1;
      v357 = a1[2];
      *__p = v12;
      v13 = v10[2];
      *a1 = *v10;
      v14 = *(a1 + 3);
      a1[2] = v13;
      a1[3] = 0;
      v15 = v357;
      *v10 = *__p;
      a1[4] = 0;
      v16 = *(v10 + 3);
      v10[3] = 0;
      v10[4] = 0;
      v10[2] = v15;
      v17 = a1[4];
      *(a1 + 3) = v16;
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v350 = v14;
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
        v14 = v350;
      }

      v18 = v10[4];
      *(v10 + 3) = v14;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
        v344 = a3 - 1;
        if (a4)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v344 = a3 - 1;
        if (a4)
        {
          goto LABEL_45;
        }
      }
    }

    v19 = *(a1 - 17);
    if (v19 >= 0)
    {
      v20 = a1 - 5;
    }

    else
    {
      v20 = *(a1 - 5);
    }

    if (v19 >= 0)
    {
      v21 = *(a1 - 17);
    }

    else
    {
      v21 = *(a1 - 4);
    }

    v22 = *(a1 + 23);
    if (v22 >= 0)
    {
      v23 = a1;
    }

    else
    {
      v23 = *a1;
    }

    if (v22 >= 0)
    {
      v24 = *(a1 + 23);
    }

    else
    {
      v24 = a1[1];
    }

    if (v24 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v24;
    }

    v26 = memcmp(v20, v23, v25);
    if (v26)
    {
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_177;
      }

LABEL_45:
      v27 = 0;
      v28 = *a1;
      v357 = a1[2];
      *__p = v28;
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      v29 = *(a1 + 3);
      v358 = v29;
      a1[3] = 0;
      a1[4] = 0;
      if (SHIBYTE(v357) >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = __p[0];
      }

      if (SHIBYTE(v357) >= 0)
      {
        v31 = HIBYTE(v357);
      }

      else
      {
        v31 = __p[1];
      }

      v32 = v29;
      while (1)
      {
        v33 = SHIBYTE(a1[v27 + 7]);
        v34 = v33 >= 0 ? &a1[v27 + 5] : a1[v27 + 5];
        v35 = v33 >= 0 ? HIBYTE(a1[v27 + 7]) : a1[v27 + 6];
        v36 = (v31 >= v35 ? v35 : v31);
        v37 = memcmp(v34, v30, v36);
        if (!v37)
        {
          break;
        }

        if ((v37 & 0x80000000) == 0)
        {
          goto LABEL_68;
        }

LABEL_53:
        v27 += 5;
      }

      v38 = v35 >= v31;
      if (v35 == v31)
      {
        v38 = a1[v27 + 8] >= v32;
      }

      if (!v38)
      {
        goto LABEL_53;
      }

LABEL_68:
      v39 = &a1[v27 + 5];
      m = a2 - 5;
      if (v27 * 8)
      {
        while (1)
        {
          v41 = *(m + 23);
          if (v41 >= 0)
          {
            v42 = m;
          }

          else
          {
            v42 = *m;
          }

          if (v41 >= 0)
          {
            v43 = *(m + 23);
          }

          else
          {
            v43 = m[1];
          }

          if (v31 >= v43)
          {
            v44 = v43;
          }

          else
          {
            v44 = v31;
          }

          v45 = memcmp(v42, v30, v44);
          if (v45)
          {
            if (v45 < 0)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v46 = v43 >= v31;
            if (v43 == v31)
            {
              v46 = m[3] >= v32;
            }

            if (!v46)
            {
              goto LABEL_108;
            }
          }

          m -= 5;
        }
      }

      m = a2;
      if (v39 < a2)
      {
        for (m = a2 - 5; ; m -= 5)
        {
          v47 = *(m + 23);
          if (v47 >= 0)
          {
            v48 = m;
          }

          else
          {
            v48 = *m;
          }

          if (v47 >= 0)
          {
            v49 = *(m + 23);
          }

          else
          {
            v49 = m[1];
          }

          if (v31 >= v49)
          {
            v50 = v49;
          }

          else
          {
            v50 = v31;
          }

          v51 = memcmp(v48, v30, v50);
          if (v51)
          {
            if (v39 >= m || v51 < 0)
            {
              break;
            }
          }

          else if (v49 == v31)
          {
            if (v39 >= m || m[3] < v32)
            {
              break;
            }
          }

          else if (v39 >= m || v49 < v31)
          {
            break;
          }
        }
      }

LABEL_108:
      n = v39;
      if (v39 < m)
      {
        v52 = m;
        do
        {
          v53 = *n;
          v360 = n[2];
          v359 = v53;
          v54 = *v52;
          n[2] = v52[2];
          *n = v54;
          v55 = v359;
          v52[2] = v360;
          *v52 = v55;
          v56 = *(n + 3);
          n[3] = 0;
          n[4] = 0;
          v57 = *(v52 + 3);
          v52[3] = 0;
          v52[4] = 0;
          v58 = n[4];
          *(n + 3) = v57;
          if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v351 = v56;
            (v58->__on_zero_shared)(v58);
            std::__shared_weak_count::__release_weak(v58);
            v59 = v52[4];
            *(v52 + 3) = v351;
            if (v59)
            {
LABEL_114:
              if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v59->__on_zero_shared)(v59);
                std::__shared_weak_count::__release_weak(v59);
              }
            }
          }

          else
          {
            v59 = v52[4];
            *(v52 + 3) = v56;
            if (v59)
            {
              goto LABEL_114;
            }
          }

          if (SHIBYTE(v357) >= 0)
          {
            v60 = __p;
          }

          else
          {
            v60 = __p[0];
          }

          if (SHIBYTE(v357) >= 0)
          {
            v61 = HIBYTE(v357);
          }

          else
          {
            v61 = __p[1];
          }

          v62 = v358;
          do
          {
            while (1)
            {
              while (1)
              {
                n += 5;
                v63 = *(n + 23);
                v64 = v63 >= 0 ? n : *n;
                v65 = v63 >= 0 ? *(n + 23) : n[1];
                v66 = (v61 >= v65 ? v65 : v61);
                v67 = memcmp(v64, v60, v66);
                if (!v67)
                {
                  break;
                }

                if ((v67 & 0x80000000) == 0)
                {
                  goto LABEL_141;
                }
              }

              if (v65 != v61)
              {
                break;
              }

              if (n[3] >= v62)
              {
                goto LABEL_141;
              }
            }
          }

          while (v65 < v61);
          do
          {
            while (1)
            {
LABEL_141:
              while (1)
              {
                v52 -= 5;
                v68 = *(v52 + 23);
                v69 = v68 >= 0 ? v52 : *v52;
                v70 = v68 >= 0 ? *(v52 + 23) : v52[1];
                v71 = (v61 >= v70 ? v70 : v61);
                v72 = memcmp(v69, v60, v71);
                if (!v72)
                {
                  break;
                }

                if (v72 < 0)
                {
                  goto LABEL_110;
                }
              }

              if (v70 != v61)
              {
                break;
              }

              if (v52[3] < v62)
              {
                goto LABEL_110;
              }
            }
          }

          while (v70 >= v61);
LABEL_110:
          ;
        }

        while (n < v52);
      }

      v73 = (n - 5);
      if (n - 5 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v74 = *v73;
        a1[2] = *(n - 3);
        *a1 = v74;
        *(n - 17) = 0;
        *(n - 40) = 0;
        v75 = *(n - 1);
        *(n - 2) = 0;
        *(n - 1) = 0;
        v76 = a1[4];
        *(a1 + 3) = v75;
        if (v76)
        {
          if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v76->__on_zero_shared)(v76);
            std::__shared_weak_count::__release_weak(v76);
            if ((*(n - 17) & 0x80000000) == 0)
            {
              goto LABEL_163;
            }

LABEL_162:
            operator delete(*v73);
            goto LABEL_163;
          }
        }
      }

      if (*(n - 17) < 0)
      {
        goto LABEL_162;
      }

LABEL_163:
      v77 = *__p;
      *(n - 3) = v357;
      *v73 = v77;
      HIBYTE(v357) = 0;
      LOBYTE(__p[0]) = 0;
      v78 = v358;
      v358 = 0uLL;
      v79 = *(n - 1);
      *(n - 1) = v78;
      if (v79 && !atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v79->__on_zero_shared)(v79);
        std::__shared_weak_count::__release_weak(v79);
        v80 = *(&v358 + 1);
        if (!*(&v358 + 1))
        {
          goto LABEL_169;
        }
      }

      else
      {
        v80 = *(&v358 + 1);
        if (!*(&v358 + 1))
        {
          goto LABEL_169;
        }
      }

      if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v80->__on_zero_shared)(v80);
        std::__shared_weak_count::__release_weak(v80);
      }

LABEL_169:
      if (SHIBYTE(v357) < 0)
      {
        operator delete(__p[0]);
      }

      a3 = v344;
      if (v39 < m)
      {
        goto LABEL_174;
      }

      v81 = sub_23F2D0FB4(a1, (n - 5));
      if (sub_23F2D0FB4(n, a2))
      {
        a2 = n - 5;
        if (v81)
        {
          return;
        }

        goto LABEL_2;
      }

      if (!v81)
      {
LABEL_174:
        sub_23F2CE174(a1, (n - 5), v344, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v21 != v24)
      {
        if (v21 >= v24)
        {
          goto LABEL_177;
        }

        goto LABEL_45;
      }

      if (*(a1 - 2) < a1[3])
      {
        goto LABEL_45;
      }

LABEL_177:
      v82 = *a1;
      v357 = a1[2];
      *__p = v82;
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      v352 = *(a1 + 3);
      v358 = v352;
      a1[3] = 0;
      a1[4] = 0;
      if (SHIBYTE(v357) >= 0)
      {
        v83 = __p;
      }

      else
      {
        v83 = __p[0];
      }

      if (SHIBYTE(v357) >= 0)
      {
        v84 = HIBYTE(v357);
      }

      else
      {
        v84 = __p[1];
      }

      v85 = *(a2 - 17);
      v87 = *(a2 - 5);
      v86 = *(a2 - 4);
      if (v85 >= 0)
      {
        v88 = a2 - 5;
      }

      else
      {
        v88 = *(a2 - 5);
      }

      if (v85 >= 0)
      {
        v89 = *(a2 - 17);
      }

      else
      {
        v89 = *(a2 - 4);
      }

      if (v89 >= v84)
      {
        v90 = v84;
      }

      else
      {
        v90 = v89;
      }

      v91 = v83;
      v92 = memcmp(v83, v88, v90);
      if (v92)
      {
        if (v92 < 0)
        {
          goto LABEL_216;
        }
      }

      else
      {
        v99 = v84 >= v89;
        if (v84 == v89)
        {
          v99 = v352 >= *(a2 - 2);
        }

        if (!v99)
        {
LABEL_216:
          for (n = a1 + 5; ; n += 5)
          {
            v100 = *(n + 23);
            if (v100 >= 0)
            {
              v101 = n;
            }

            else
            {
              v101 = *n;
            }

            if (v100 >= 0)
            {
              v102 = *(n + 23);
            }

            else
            {
              v102 = n[1];
            }

            if (v102 >= v84)
            {
              v103 = v84;
            }

            else
            {
              v103 = v102;
            }

            v104 = memcmp(v91, v101, v103);
            if (v104)
            {
              if (v104 < 0)
              {
                goto LABEL_234;
              }
            }

            else
            {
              v105 = v84 >= v102;
              if (v84 == v102)
              {
                v105 = v352 >= n[3];
              }

              if (!v105)
              {
                goto LABEL_234;
              }
            }
          }
        }
      }

      for (n = a1 + 5; n < a2; n += 5)
      {
        v93 = *(n + 23);
        if (v93 >= 0)
        {
          v94 = n;
        }

        else
        {
          v94 = *n;
        }

        if (v93 >= 0)
        {
          v95 = *(n + 23);
        }

        else
        {
          v95 = n[1];
        }

        if (v95 >= v84)
        {
          v96 = v84;
        }

        else
        {
          v96 = v95;
        }

        v97 = memcmp(v91, v94, v96);
        if (v97)
        {
          if (v97 < 0)
          {
            break;
          }
        }

        else
        {
          v98 = v84 >= v95;
          if (v84 == v95)
          {
            v98 = v352 >= n[3];
          }

          if (!v98)
          {
            break;
          }
        }
      }

LABEL_234:
      ii = a2;
      if (n < a2)
      {
        for (ii = a2 - 5; ; v86 = ii[1])
        {
          if (v85 >= 0)
          {
            v108 = ii;
          }

          else
          {
            v108 = v87;
          }

          if (v85 >= 0)
          {
            v86 = v85;
          }

          if (v86 >= v84)
          {
            v109 = v84;
          }

          else
          {
            v109 = v86;
          }

          v110 = memcmp(v91, v108, v109);
          if (v110)
          {
            if ((v110 & 0x80000000) == 0)
            {
              break;
            }
          }

          else
          {
            v111 = v84 >= v86;
            if (v84 == v86)
            {
              v111 = v352 >= ii[3];
            }

            if (v111)
            {
              break;
            }
          }

          v107 = *(ii - 5);
          ii -= 5;
          v87 = v107;
          v85 = *(ii + 23);
        }
      }

LABEL_295:
      while (n < ii)
      {
        v112 = *n;
        v360 = n[2];
        v359 = v112;
        v113 = *ii;
        n[2] = ii[2];
        *n = v113;
        v114 = v359;
        ii[2] = v360;
        *ii = v114;
        v115 = *(n + 3);
        n[3] = 0;
        n[4] = 0;
        v116 = *(ii + 3);
        ii[3] = 0;
        ii[4] = 0;
        v117 = n[4];
        *(n + 3) = v116;
        if (v117 && !atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v353 = v115;
          (v117->__on_zero_shared)(v117);
          std::__shared_weak_count::__release_weak(v117);
          v115 = v353;
        }

        v118 = ii[4];
        *(ii + 3) = v115;
        if (v118 && !atomic_fetch_add(&v118->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v118->__on_zero_shared)(v118);
          std::__shared_weak_count::__release_weak(v118);
        }

        if (SHIBYTE(v357) >= 0)
        {
          v119 = __p;
        }

        else
        {
          v119 = __p[0];
        }

        if (SHIBYTE(v357) >= 0)
        {
          v120 = HIBYTE(v357);
        }

        else
        {
          v120 = __p[1];
        }

        v121 = v358;
        do
        {
          while (1)
          {
            while (1)
            {
              n += 5;
              v122 = *(n + 23);
              v123 = v122 >= 0 ? n : *n;
              v124 = v122 >= 0 ? *(n + 23) : n[1];
              v125 = (v124 >= v120 ? v120 : v124);
              v126 = memcmp(v119, v123, v125);
              if (!v126)
              {
                break;
              }

              if (v126 < 0)
              {
                goto LABEL_281;
              }
            }

            if (v120 != v124)
            {
              break;
            }

            if (v121 < n[3])
            {
              goto LABEL_281;
            }
          }
        }

        while (v120 >= v124);
        do
        {
          while (1)
          {
LABEL_281:
            while (1)
            {
              ii -= 5;
              v127 = *(ii + 23);
              v128 = v127 >= 0 ? ii : *ii;
              v129 = v127 >= 0 ? *(ii + 23) : ii[1];
              v130 = (v129 >= v120 ? v120 : v129);
              v131 = memcmp(v119, v128, v130);
              if (!v131)
              {
                break;
              }

              if ((v131 & 0x80000000) == 0)
              {
                goto LABEL_295;
              }
            }

            if (v120 != v129)
            {
              break;
            }

            if (v121 >= ii[3])
            {
              goto LABEL_295;
            }
          }
        }

        while (v120 < v129);
      }

      v132 = (n - 5);
      if (n - 5 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v133 = *v132;
        a1[2] = *(n - 3);
        *a1 = v133;
        *(n - 17) = 0;
        *(n - 40) = 0;
        v134 = *(n - 1);
        *(n - 2) = 0;
        *(n - 1) = 0;
        v135 = a1[4];
        *(a1 + 3) = v134;
        if (v135 && !atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v135->__on_zero_shared)(v135);
          std::__shared_weak_count::__release_weak(v135);
        }
      }

      if (*(n - 17) < 0)
      {
        operator delete(*v132);
      }

      v136 = *__p;
      *(n - 3) = v357;
      *v132 = v136;
      HIBYTE(v357) = 0;
      LOBYTE(__p[0]) = 0;
      v137 = v358;
      v358 = 0uLL;
      v138 = *(n - 1);
      *(n - 1) = v137;
      a3 = v344;
      if (v138 && !atomic_fetch_add(&v138->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v138->__on_zero_shared)(v138);
        std::__shared_weak_count::__release_weak(v138);
      }

      v139 = *(&v358 + 1);
      if (*(&v358 + 1) && !atomic_fetch_add((*(&v358 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v139->__on_zero_shared)(v139);
        std::__shared_weak_count::__release_weak(v139);
      }

      if (SHIBYTE(v357) < 0)
      {
        operator delete(__p[0]);
      }

      a4 = 0;
    }
  }

  if (a1 == a2)
  {
    return;
  }

  v185 = (v8 - 2) >> 1;
  v186 = v185;
  do
  {
    v187 = v186;
    if (v185 < v186)
    {
      goto LABEL_414;
    }

    v347 = v186;
    v188 = (2 * v186) | 1;
    v189 = &a1[5 * v188];
    v190 = 2 * v186 + 2;
    if (v190 < v8)
    {
      v191 = *(v189 + 23);
      if (v191 >= 0)
      {
        v192 = &a1[5 * v188];
      }

      else
      {
        v192 = *v189;
      }

      if (v191 >= 0)
      {
        v193 = *(v189 + 23);
      }

      else
      {
        v193 = v189[1];
      }

      v194 = *(v189 + 63);
      if (v194 >= 0)
      {
        v195 = v189 + 5;
      }

      else
      {
        v195 = v189[5];
      }

      if (v194 >= 0)
      {
        v196 = *(v189 + 63);
      }

      else
      {
        v196 = v189[6];
      }

      if (v196 >= v193)
      {
        v197 = v193;
      }

      else
      {
        v197 = v196;
      }

      v198 = memcmp(v192, v195, v197);
      if (v198)
      {
        v185 = (v8 - 2) >> 1;
        if ((v198 & 0x80000000) == 0)
        {
          goto LABEL_435;
        }

LABEL_434:
        v189 += 5;
        v188 = v190;
        goto LABEL_435;
      }

      v237 = v193 >= v196;
      if (v193 == v196)
      {
        v237 = v189[3] >= v189[8];
      }

      v185 = (v8 - 2) >> 1;
      if (!v237)
      {
        goto LABEL_434;
      }
    }

LABEL_435:
    v199 = &a1[5 * v347];
    v200 = *(v189 + 23);
    if (v200 >= 0)
    {
      v201 = v189;
    }

    else
    {
      v201 = *v189;
    }

    if (v200 >= 0)
    {
      v202 = *(v189 + 23);
    }

    else
    {
      v202 = v189[1];
    }

    v203 = *(v199 + 23);
    if (v203 >= 0)
    {
      v204 = &a1[5 * v347];
    }

    else
    {
      v204 = *v199;
    }

    if (v203 >= 0)
    {
      v205 = *(v199 + 23);
    }

    else
    {
      v205 = v199[1];
    }

    if (v205 >= v202)
    {
      v206 = v202;
    }

    else
    {
      v206 = v205;
    }

    v207 = memcmp(v201, v204, v206);
    if (v207)
    {
      v187 = v347;
      if (v207 < 0)
      {
        goto LABEL_414;
      }

LABEL_457:
      v209 = 0;
      v210 = *v199;
      v357 = v199[2];
      *__p = v210;
      v199[1] = 0;
      v199[2] = 0;
      *v199 = 0;
      v358 = *(v199 + 3);
      v199[3] = 0;
      v199[4] = 0;
      while (1)
      {
        if (v209 < 0)
        {
          operator delete(*v199);
        }

        v219 = *v189;
        v199[2] = v189[2];
        *v199 = v219;
        *(v189 + 23) = 0;
        *v189 = 0;
        v220 = *(v189 + 3);
        v189[3] = 0;
        v189[4] = 0;
        v221 = v199[4];
        *(v199 + 3) = v220;
        if (v221 && !atomic_fetch_add(&v221->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v221->__on_zero_shared)(v221);
          std::__shared_weak_count::__release_weak(v221);
        }

        if (v185 < v188)
        {
LABEL_511:
          if (*(v189 + 23) < 0)
          {
            operator delete(*v189);
          }

          v233 = *__p;
          v189[2] = v357;
          *v189 = v233;
          HIBYTE(v357) = 0;
          LOBYTE(__p[0]) = 0;
          v234 = v358;
          v358 = 0uLL;
          v235 = v189[4];
          *(v189 + 3) = v234;
          if (v235 && !atomic_fetch_add(&v235->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v235->__on_zero_shared)(v235);
            std::__shared_weak_count::__release_weak(v235);
          }

          v236 = *(&v358 + 1);
          if (*(&v358 + 1) && !atomic_fetch_add((*(&v358 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v236->__on_zero_shared)(v236);
            std::__shared_weak_count::__release_weak(v236);
          }

          if (SHIBYTE(v357) < 0)
          {
            operator delete(__p[0]);
          }

          v187 = v347;
          goto LABEL_414;
        }

        v222 = 2 * v188;
        v188 = (2 * v188) | 1;
        v211 = &a1[5 * v188];
        v223 = v222 + 2;
        if (v222 + 2 < v8)
        {
          v224 = *(v211 + 23);
          if (v224 >= 0)
          {
            v225 = &a1[5 * v188];
          }

          else
          {
            v225 = *v211;
          }

          if (v224 >= 0)
          {
            v226 = *(v211 + 23);
          }

          else
          {
            v226 = v211[1];
          }

          v227 = *(v211 + 63);
          if (v227 >= 0)
          {
            v228 = v211 + 5;
          }

          else
          {
            v228 = v211[5];
          }

          if (v227 >= 0)
          {
            v229 = *(v211 + 63);
          }

          else
          {
            v229 = v211[6];
          }

          if (v229 >= v226)
          {
            v230 = v226;
          }

          else
          {
            v230 = v229;
          }

          v231 = memcmp(v225, v228, v230);
          if (v231)
          {
            v185 = (v8 - 2) >> 1;
            if (v231 < 0)
            {
              goto LABEL_458;
            }
          }

          else
          {
            v232 = v226 >= v229;
            if (v226 == v229)
            {
              v232 = v211[3] >= v211[8];
            }

            v185 = (v8 - 2) >> 1;
            if (!v232)
            {
LABEL_458:
              v211 += 5;
              v188 = v223;
            }
          }
        }

        v212 = *(v211 + 23);
        if (v212 >= 0)
        {
          v213 = v211;
        }

        else
        {
          v213 = *v211;
        }

        if (v212 >= 0)
        {
          v214 = *(v211 + 23);
        }

        else
        {
          v214 = v211[1];
        }

        if (SHIBYTE(v357) >= 0)
        {
          v215 = __p;
        }

        else
        {
          v215 = __p[0];
        }

        if (SHIBYTE(v357) >= 0)
        {
          v216 = HIBYTE(v357);
        }

        else
        {
          v216 = __p[1];
        }

        if (v216 >= v214)
        {
          v217 = v214;
        }

        else
        {
          v217 = v216;
        }

        v218 = memcmp(v213, v215, v217);
        if (v218)
        {
          if (v218 < 0)
          {
            goto LABEL_511;
          }
        }

        else if (v214 == v216)
        {
          if (v211[3] < v358)
          {
            goto LABEL_511;
          }
        }

        else if (v214 < v216)
        {
          goto LABEL_511;
        }

        v209 = *(v189 + 23);
        v199 = v189;
        v189 = v211;
      }
    }

    v208 = v202 >= v205;
    if (v202 == v205)
    {
      v208 = v189[3] >= v199[3];
    }

    v187 = v347;
    if (v208)
    {
      goto LABEL_457;
    }

LABEL_414:
    v186 = v187 - 1;
  }

  while (v187);
  v238 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
  do
  {
    v240 = v238 - 2;
    if (v238 < 2)
    {
      goto LABEL_527;
    }

    v241 = 0;
    v242 = *a1;
    *&v359 = a1[1];
    *(&v359 + 7) = *(a1 + 15);
    v348 = *(a1 + 23);
    *a1 = 0;
    a1[1] = 0;
    v345 = a1[3];
    v341 = v242;
    v343 = a1[4];
    a1[3] = 0;
    a1[4] = 0;
    v243 = v240 >> 1;
    v244 = a1;
    a1[2] = 0;
    v354 = v240 >> 1;
    do
    {
      v245 = v244;
      v246 = &v244[5 * v241];
      v244 = v246 + 5;
      v247 = 2 * v241;
      v241 = (2 * v241) | 1;
      v248 = v247 + 2;
      if (v247 + 2 >= v238)
      {
        goto LABEL_551;
      }

      v249 = a1;
      v250 = v238;
      v251 = *(v246 + 63);
      if (v251 >= 0)
      {
        v252 = v246 + 5;
      }

      else
      {
        v252 = v246[5];
      }

      if (v251 >= 0)
      {
        v253 = *(v246 + 63);
      }

      else
      {
        v253 = v246[6];
      }

      v254 = *(v246 + 103);
      if (v254 >= 0)
      {
        v255 = v246 + 10;
      }

      else
      {
        v255 = v246[10];
      }

      if (v254 >= 0)
      {
        v256 = *(v246 + 103);
      }

      else
      {
        v256 = v246[11];
      }

      if (v256 >= v253)
      {
        v257 = v253;
      }

      else
      {
        v257 = v256;
      }

      v258 = memcmp(v252, v255, v257);
      if (v258)
      {
        v238 = v250;
        a1 = v249;
        v243 = v354;
        if ((v258 & 0x80000000) == 0)
        {
          goto LABEL_551;
        }

LABEL_550:
        v244 = v246 + 10;
        v241 = v248;
        goto LABEL_551;
      }

      v263 = v253 >= v256;
      if (v253 == v256)
      {
        v263 = v246[8] >= v246[13];
      }

      v238 = v250;
      a1 = v249;
      v243 = v354;
      if (!v263)
      {
        goto LABEL_550;
      }

LABEL_551:
      if (*(v245 + 23) < 0)
      {
        operator delete(*v245);
      }

      v259 = *v244;
      v245[2] = v244[2];
      *v245 = v259;
      *(v244 + 23) = 0;
      *v244 = 0;
      v260 = v244 + 3;
      v261 = *(v244 + 3);
      v244[3] = 0;
      v244[4] = 0;
      v262 = v245[4];
      *(v245 + 3) = v261;
      if (v262 && !atomic_fetch_add(&v262->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v262->__on_zero_shared)(v262);
        std::__shared_weak_count::__release_weak(v262);
      }
    }

    while (v241 <= v243);
    v264 = (a2 - 5);
    v265 = *(v244 + 23);
    if (v244 == a2 - 5)
    {
      if (v265 < 0)
      {
        operator delete(*v244);
      }

      *v244 = v341;
      v282 = *(&v359 + 7);
      v244[1] = v359;
      *(v244 + 15) = v282;
      *(v244 + 23) = v348;
      v283 = v244[4];
      v244[3] = v345;
      v244[4] = v343;
      if (v283 && !atomic_fetch_add(&v283->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v283->__on_zero_shared)(v283);
        std::__shared_weak_count::__release_weak(v283);
      }
    }

    else
    {
      if (v265 < 0)
      {
        operator delete(*v244);
      }

      v266 = *v264;
      v244[2] = *(a2 - 3);
      *v244 = v266;
      *(a2 - 17) = 0;
      *(a2 - 40) = 0;
      v267 = *(a2 - 1);
      *(a2 - 2) = 0;
      *(a2 - 1) = 0;
      v268 = v244[4];
      *(v244 + 3) = v267;
      if (v268 && !atomic_fetch_add(&v268->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v268->__on_zero_shared)(v268);
        std::__shared_weak_count::__release_weak(v268);
        if (*(a2 - 17) < 0)
        {
LABEL_567:
          operator delete(*v264);
        }
      }

      else if (*(a2 - 17) < 0)
      {
        goto LABEL_567;
      }

      *(a2 - 5) = v341;
      v269 = v359;
      *(a2 - 25) = *(&v359 + 7);
      *(a2 - 4) = v269;
      *(a2 - 17) = v348;
      v270 = *(a2 - 1);
      *(a2 - 2) = v345;
      *(a2 - 1) = v343;
      if (v270 && !atomic_fetch_add(&v270->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v270->__on_zero_shared)(v270);
        std::__shared_weak_count::__release_weak(v270);
        v271 = (v244 + 5) - a1;
        if (v271 < 41)
        {
          goto LABEL_527;
        }

LABEL_571:
        v272 = (-2 - 0x3333333333333333 * (v271 >> 3)) >> 1;
        v273 = &a1[5 * v272];
        v274 = *(v273 + 23);
        if (v274 >= 0)
        {
          v275 = &a1[5 * v272];
        }

        else
        {
          v275 = *v273;
        }

        if (v274 >= 0)
        {
          v276 = *(v273 + 23);
        }

        else
        {
          v276 = v273[1];
        }

        v277 = *(v244 + 23);
        if (v277 >= 0)
        {
          v278 = v244;
        }

        else
        {
          v278 = *v244;
        }

        if (v277 >= 0)
        {
          v279 = *(v244 + 23);
        }

        else
        {
          v279 = v244[1];
        }

        if (v279 >= v276)
        {
          v280 = v276;
        }

        else
        {
          v280 = v279;
        }

        v281 = memcmp(v275, v278, v280);
        if (v281)
        {
          if ((v281 & 0x80000000) == 0)
          {
            goto LABEL_527;
          }
        }

        else
        {
          v284 = v276 >= v279;
          if (v276 == v279)
          {
            v284 = v273[3] >= *v260;
          }

          if (v284)
          {
            goto LABEL_527;
          }
        }

        v285 = *v244;
        v357 = v244[2];
        *__p = v285;
        v244[1] = 0;
        v244[2] = 0;
        *v244 = 0;
        v358 = *(v244 + 3);
        *v260 = 0;
        v244[4] = 0;
        while (1)
        {
          v286 = v273;
          if (*(v244 + 23) < 0)
          {
            operator delete(*v244);
          }

          v287 = *v273;
          v244[2] = v273[2];
          *v244 = v287;
          *(v273 + 23) = 0;
          *v273 = 0;
          v288 = *(v273 + 3);
          v273[3] = 0;
          v273[4] = 0;
          v289 = v244[4];
          *(v244 + 3) = v288;
          if (v289 && !atomic_fetch_add(&v289->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v289->__on_zero_shared)(v289);
            std::__shared_weak_count::__release_weak(v289);
          }

          if (!v272)
          {
            break;
          }

          v272 = (v272 - 1) >> 1;
          v273 = &a1[5 * v272];
          v290 = *(v273 + 23);
          if (v290 >= 0)
          {
            v291 = &a1[5 * v272];
          }

          else
          {
            v291 = *v273;
          }

          if (v290 >= 0)
          {
            v292 = *(v273 + 23);
          }

          else
          {
            v292 = v273[1];
          }

          if (SHIBYTE(v357) >= 0)
          {
            v293 = __p;
          }

          else
          {
            v293 = __p[0];
          }

          if (SHIBYTE(v357) >= 0)
          {
            v294 = HIBYTE(v357);
          }

          else
          {
            v294 = __p[1];
          }

          if (v294 >= v292)
          {
            v295 = v292;
          }

          else
          {
            v295 = v294;
          }

          v296 = memcmp(v291, v293, v295);
          if (v296)
          {
            v244 = v286;
            if ((v296 & 0x80000000) == 0)
            {
              break;
            }
          }

          else
          {
            v297 = v292 >= v294;
            if (v292 == v294)
            {
              v244 = v286;
              if (v273[3] >= v358)
              {
                break;
              }
            }

            else
            {
              v244 = v286;
              if (v297)
              {
                break;
              }
            }
          }
        }

        if (*(v286 + 23) < 0)
        {
          operator delete(*v286);
        }

        v298 = *__p;
        v286[2] = v357;
        *v286 = v298;
        HIBYTE(v357) = 0;
        LOBYTE(__p[0]) = 0;
        v299 = v358;
        v358 = 0uLL;
        v300 = v286[4];
        *(v286 + 3) = v299;
        if (v300 && !atomic_fetch_add(&v300->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v300->__on_zero_shared)(v300);
          std::__shared_weak_count::__release_weak(v300);
        }

        v301 = *(&v358 + 1);
        if (*(&v358 + 1) && !atomic_fetch_add((*(&v358 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v301->__on_zero_shared)(v301);
          std::__shared_weak_count::__release_weak(v301);
        }

        if (SHIBYTE(v357) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v271 = (v244 + 5) - a1;
        if (v271 >= 41)
        {
          goto LABEL_571;
        }
      }
    }

LABEL_527:
    a2 -= 5;
  }

  while (v238-- > 2);
}