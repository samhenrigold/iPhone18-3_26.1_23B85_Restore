void sub_239EFC900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239EFC94C(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_239EFCD74(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_239EFCA54(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_239EFCD74(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_239EFCB60(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_239EFCD74(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_239EFCC68(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_239EFCD74(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_239EFCD74(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239EFCDBC(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

uint64_t *sub_239EFCE1C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239EFCEA4(result, a4);
  }

  return result;
}

void sub_239EFCE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_239EFC40C(&a9);
  _Unwind_Resume(a1);
}

void sub_239EFCEA4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_239EFC4AC(a1, a2);
  }

  sub_239E797B4();
}

void *sub_239EFCEE0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  sub_239EFCF68(v7);
  return v4;
}

uint64_t sub_239EFCF68(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239EFCFA0(a1);
  }

  return a1;
}

void sub_239EFCFA0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_239E9A9B4(v3);
    }

    v1 -= 16;
  }
}

char *sub_239EFCFE4(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_239E797B4();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      sub_239E7C684(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7;
      v7 += 8;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = a1[1];
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    a1[1] = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void sub_239EFD278(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_239F747AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EFD294(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239EFD2CC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_239EFD2FC(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D17698))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_239EFD33C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E7C648(result, a4);
  }

  return result;
}

void sub_239EFD398(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EFD4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_239EEDEA8(&a21);
  _Unwind_Resume(a1);
}

void sub_239EFD914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239EFDA74(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_239EFEAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239EFECF8(uint64_t a1, unint64_t a2)
{
  NSLog(&cfstr_Indices_1.isa);
  if (a2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      printf("%d ", *(a1 + v4));
      if (!v5)
      {
        putchar(10);
      }

      v4 = v5++;
    }

    while (v4 < a2);
  }

  return putchar(10);
}

uint64_t sub_239EFED8C(uint64_t a1, unint64_t a2)
{
  NSLog(&cfstr_Indices_1.isa);
  if (a2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      printf("%d ", *(a1 + 2 * v4));
      if (!v5)
      {
        putchar(10);
      }

      v4 = v5++;
    }

    while (v4 < a2);
  }

  return putchar(10);
}

uint64_t sub_239EFEE20(uint64_t a1, unint64_t a2)
{
  NSLog(&cfstr_Indices_1.isa);
  if (a2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      printf("%d ", *(a1 + 4 * v4));
      if (!v5)
      {
        putchar(10);
      }

      v4 = v5++;
    }

    while (v4 < a2);
  }

  return putchar(10);
}

void sub_239EFF5E8(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      sub_239E797B4();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

BOOL sub_239EFF72C(char *a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  memset(v59, 0, sizeof(v59));
  Alembic::AbcCoreOgawa::v12::WriteArchive::WriteArchive(&v42);
  sub_239E552A0(__p, a1);
  LODWORD(v53[0]) = 0;
  DWORD2(v53[0]) = 0;
  LODWORD(v44) = 0;
  LODWORD(v45) = 0;
  sub_239F11DC4(v59, __p, v53, &v44);
  if (SBYTE7(v56) < 0)
  {
    operator delete(__p[0]);
  }

  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  *__p = 0u;
  Alembic::Abc::v12::OArchive::getTop(__p, v59);
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v48 = __p[1];
  if (SBYTE7(v57) < 0)
  {
    sub_239E5BAE0(&v49, v56, *(&v56 + 1));
  }

  else
  {
    v49 = v56;
    v50 = v57;
  }

  v47 = MEMORY[0x277D867D0] + 16;
  v51 = *(&v57 + 1);
  v52 = v58;
  if (v58)
  {
    atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
  }

  sub_239E552A0(&v44, "materials");
  LODWORD(v42) = 0;
  v43 = 0;
  v41[0] = 0;
  v41[2] = 0;
  v40[0] = 0;
  v40[2] = 0;
  MEMORY[0x23EE7F010](v53, &v47, &v44, &v42, v41, v40);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  Alembic::Abc::v12::OObject::~OObject(&v47);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = v3;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v36, v60, v9, v10, v11, v12, 16, v6, v7, v8);
  if (v13)
  {
    v14 = *v37;
    do
    {
      v15 = 0;
      do
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v4);
        }

        sub_239EFFC44(*(*(&v36 + 1) + 8 * v15++), __p);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v16, &v36, v60, v20, v21, v22, v23, 16, v17, v18, v19);
    }

    while (v13);
  }

  v24 = v44 == v45;
  if (v44 != v45)
  {
    v25 = *(v44 + 23);
    v26 = v25 >= 0 ? v44 : *v44;
    v27 = v25 >= 0 ? *(v44 + 23) : *(v44 + 1);
    sub_239E98B94(MEMORY[0x277D82670], v26, v27);
    v28 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3);
    if (v28 >= 2)
    {
      v29 = 0;
      v30 = v28 - 1;
      v31 = MEMORY[0x277D82670];
      do
      {
        sub_239E98B94(v31, "\n", 1);
        v32 = *(v44 + v29 + 47);
        if (v32 >= 0)
        {
          v33 = v44 + v29 + 24;
        }

        else
        {
          v33 = *(v44 + v29 + 24);
        }

        if (v32 >= 0)
        {
          v34 = *(v44 + v29 + 47);
        }

        else
        {
          v34 = *(v44 + v29 + 32);
        }

        sub_239E98B94(v31, v33, v34);
        v29 += 24;
        --v30;
      }

      while (v30);
    }
  }

  v42 = &v44;
  sub_239EBD408(&v42);
  Alembic::Abc::v12::OObject::~OObject(v53);
  Alembic::Abc::v12::OObject::~OObject(__p);
  MEMORY[0x23EE7F050](v59);

  return v24;
}

void sub_239EFFA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void **__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  Alembic::Abc::v12::OObject::~OObject(&__p);
  MEMORY[0x23EE7F050](v51 - 256);
  if (a2 == 1)
  {
    v54 = __cxa_begin_catch(a1);
    v55 = sub_239E98B94(MEMORY[0x277D82670], "Failed to save ", 15);
    sub_239E552A0(&__p, v50);
    if (a49 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (a49 >= 0)
    {
      v57 = a49;
    }

    else
    {
      v57 = a45;
    }

    v58 = sub_239E98B94(v55, p_p, v57);
    v59 = sub_239E98B94(v58, " because ", 9);
    v60 = (*(*v54 + 16))(v54);
    v61 = strlen(v60);
    v62 = sub_239E98B94(v59, v60, v61);
    sub_239F00390(v62);
    if (a49 < 0)
    {
      operator delete(__p);
    }

    __cxa_end_catch();
    JUMPOUT(0x239EFFA24);
  }

  _Unwind_Resume(a1);
}

void sub_239EFFC44(void *a1, uint64_t a2)
{
  v185 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3)
  {
    v182 = 0;
    memset(v181, 0, sizeof(v181));
    v180 = 0u;
    v179 = 0u;
    *v178 = 0u;
    v176 = 0u;
    memset(v177, 0, sizeof(v177));
    v175 = 0u;
    sub_239EE76F8(&v175);
    v15 = objc_msgSend_name(v3, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);
    v16 = v15 == 0;

    if (v16)
    {
      v45 = sub_239E98B94(&v176, "mdlabc_", 7);
      ++dword_27DF912A8;
      MEMORY[0x23EE80140](v45);
    }

    else
    {
      v28 = objc_msgSend_name(v3, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23);
      v29 = v28;
      v41 = objc_msgSend_UTF8String(v28, v30, v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);
      v42 = strlen(v41);
      v43 = sub_239E98B94(&v176, v41, v42);
      v44 = sub_239E98B94(v43, "_", 1);
      ++dword_27DF912A8;
      MEMORY[0x23EE80140](v44);
    }

    memset(v174, 0, sizeof(v174));
    v169 = *(a2 + 8);
    if (*(a2 + 39) < 0)
    {
      sub_239E5BAE0(&v170, *(a2 + 16), *(a2 + 24));
    }

    else
    {
      v170 = *(a2 + 16);
      v171 = *(a2 + 32);
    }

    v47 = *(a2 + 40);
    v46 = *(a2 + 48);
    v168 = MEMORY[0x277D867D0] + 16;
    v172 = v47;
    v173 = v46;
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    std::stringbuf::str();
    LODWORD(v166[0]) = 0;
    DWORD2(v166[0]) = 0;
    LODWORD(v151) = 0;
    v152 = 0;
    v167[0] = 0;
    v167[2] = 0;
    sub_239F05E7C(v174, &v168, __p, v166, &v151, v167);
    if (SHIBYTE(v159.f64[0]) < 0)
    {
      operator delete(__p[0]);
    }

    Alembic::Abc::v12::OObject::~OObject(&v168);
    memset(v166, 0, sizeof(v166));
    Alembic::AbcGeom::v12::XformSample::XformSample(v166);
    v59 = objc_msgSend_transform(v3, v48, v49, v50, v55, v56, v57, v58, v51, v52, v53, v54);
    v60.n128_u64[0] = 0;
    objc_msgSend_localTransformAtTime_(v59, v61, v62, v63, v60, v68, v69, v70, v64, v65, v66, v67);
    v143 = v71;
    v144 = v72;
    v145 = v73;
    v146 = v74;

    *__p = vcvtq_f64_f32(*v143.f32);
    v159 = vcvt_hight_f64_f32(v143);
    v160 = vcvtq_f64_f32(*v144.f32);
    v161 = vcvt_hight_f64_f32(v144);
    v162 = vcvtq_f64_f32(*v145.f32);
    v163 = vcvt_hight_f64_f32(v145);
    v164 = vcvtq_f64_f32(*v146.f32);
    v165 = vcvt_hight_f64_f32(v146);
    Alembic::AbcGeom::v12::XformSample::setMatrix();
    Alembic::AbcGeom::v12::OXformSchema::set((&v174[3] + 8), v166);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = v3;
      v154 = 0u;
      v155 = 0u;
      v156 = 0u;
      v157 = 0u;
      v96 = objc_msgSend_submeshes(v85, v86, v87, v88, 0, v93, v94, v95, v89, v90, v91, v92);
      v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v97, &v154, v184, v101, v102, v103, v104, 16, v98, v99, v100);
      if (v112)
      {
        v117 = *v155;
        do
        {
          for (i = 0; i != v112; ++i)
          {
            if (*v155 != v117)
            {
              objc_enumerationMutation(v96);
            }

            v119 = *(*(&v154 + 1) + 8 * i);
            if (objc_msgSend_geometryType(v119, v105, v106, v107, v113, v114, v115, v116, v108, v109, v110, v111, *&v143, *&v144, *&v145, *&v146) == 5)
            {
              std::stringbuf::str();
              if (v153 >= 0)
              {
                v120 = &v151;
              }

              else
              {
                v120 = v151;
              }

              sub_239F00448(v85, v119, v120, v174);
            }

            else
            {
              std::stringbuf::str();
              if (v153 >= 0)
              {
                v121 = &v151;
              }

              else
              {
                v121 = v151;
              }

              sub_239F033E0(v85, v119, v121, v174);
            }

            if (v153 < 0)
            {
              operator delete(v151);
            }
          }

          v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v105, &v154, v184, v113, v114, v115, v116, 16, v109, v110, v111);
        }

        while (v112);
      }
    }

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v122 = objc_msgSend_children(v3, v75, v76, v77, 0, v82, v83, v84, v78, v79, v80, v81, *&v143, *&v144, *&v145, *&v146, 0);
    v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v123, &v147, v183, v127, v128, v129, v130, 16, v124, v125, v126);
    if (v131)
    {
      v132 = *v148;
      do
      {
        for (j = 0; j != v131; ++j)
        {
          if (*v148 != v132)
          {
            objc_enumerationMutation(v122);
          }

          sub_239EFFC44(*(*(&v147 + 1) + 8 * j), v174);
        }

        v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v122, v134, &v147, v183, v138, v139, v140, v141, 16, v135, v136, v137);
      }

      while (v131);
    }

    __p[0] = v166 + 8;
    sub_239F11CE8(__p);
    *&v174[0] = &unk_284D17468;
    sub_239F079E8(&v174[3] + 1);
    Alembic::Abc::v12::OObject::~OObject(v174);
    *&v175 = *MEMORY[0x277D82818];
    v142 = *(MEMORY[0x277D82818] + 72);
    *(&v175 + *(v175 - 24)) = *(MEMORY[0x277D82818] + 64);
    *&v176 = v142;
    *(&v176 + 1) = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v179) < 0)
    {
      operator delete(v178[1]);
    }

    *(&v176 + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v177);
    std::iostream::~basic_iostream();
    MEMORY[0x23EE80250](v181);
  }
}

void sub_239F00298(_Unwind_Exception *a1)
{
  sub_239EB746C(&STACK[0x3E0]);

  _Unwind_Resume(a1);
}

void *sub_239F00390(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_239F00448(void *a1, void *a2, char *a3, uint64_t a4)
{
  v6 = a1;
  v1327 = a2;
  v1459 = 0;
  v1460 = 0;
  v1461 = 0;
  v18 = objc_msgSend_vertexCount(v6, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);
  v28 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v6, v19, @"position", 786435, v24, v25, v26, v27, v20, v21, v22, v23);
  v40 = objc_msgSend_dataStart(v28, v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  v1331 = v28;
  v52 = objc_msgSend_stride(v28, v41, v42, v43, v48, v49, v50, v51, v44, v45, v46, v47);
  if (v18)
  {
    v64 = v52;
    v65 = 0;
    v66 = v18;
    do
    {
      if (v65 + 12 <= objc_msgSend_bufferSize(v1331, v53, v54, v55, v60, v61, v62, v63, v56, v57, v58, v59))
      {
        v61.n128_u32[0] = *(v40 + v65);
        v62.n128_u32[0] = *(v40 + v65 + 4);
        v60.n128_u32[0] = *(v40 + v65 + 8);
        *&v1440 = __PAIR64__(v62.n128_u32[0], v61.n128_u32[0]);
        DWORD2(v1440) = v60.n128_u32[0];
        v67 = v1460;
        if (v1460 >= v1461)
        {
          v68 = sub_239F08808(&v1459, &v1440);
        }

        else
        {
          *v1460 = v61.n128_u32[0];
          v67[1] = v62.n128_u32[0];
          v68 = (v67 + 3);
          v67[2] = v60.n128_u32[0];
        }

        v1460 = v68;
      }

      v65 += v64;
      --v66;
    }

    while (v66);
  }

  v1326 = objc_msgSend_indexBufferAsIndexType_(v1327, v53, 32, v55, v60, v61, v62, v63, v56, v57, v58, v59);
  v1325 = objc_msgSend_map(v1326, v69, v70, v71, v76, v77, v78, v79, v72, v73, v74, v75);
  v91 = objc_msgSend_bytes(v1325, v80, v81, v82, v87, v88, v89, v90, v83, v84, v85, v86);
  v103 = objc_msgSend_indexCount(v1327, v92, v93, v94, v99, v100, v101, v102, v95, v96, v97, v98);
  v1456 = 0;
  v1457 = 0;
  v1458 = 0;
  v1453 = 0;
  v1454 = 0;
  v1455 = 0;
  v1450 = 0;
  v1451 = 0;
  v1452 = 0;
  v115 = objc_msgSend_geometryType(v1327, v104, v105, v106, v111, v112, v113, v114, v107, v108, v109, v110);
  v1330 = v6;
  v1328 = v18;
  if (v115 > 2)
  {
    switch(v115)
    {
      case 3:
        goto LABEL_426;
      case 4:
        sub_239E95D48(&v1456, v103);
        v279 = v103 >> 2;
        sub_239E95D48(&v1450, v103 >> 2);
        if (v103 >= 4)
        {
          do
          {
            LODWORD(v1440) = 4;
            sub_239E73254(&v1450, &v1440);
            --v279;
          }

          while (v279);
        }

        if (v103)
        {
          v280 = 0;
          v281 = v91 + 2;
          do
          {
            LODWORD(v1440) = *(v281 - 2);
            sub_239E73254(&v1456, &v1440);
            LODWORD(v1440) = v281[1];
            sub_239E73254(&v1456, &v1440);
            LODWORD(v1440) = *v281;
            sub_239E73254(&v1456, &v1440);
            LODWORD(v1440) = *(v281 - 1);
            sub_239E73254(&v1456, &v1440);
            v281 += 4;
            v280 += 4;
          }

          while (v103 > v280);
        }

        break;
      case 5:
        v137 = objc_msgSend_topology(v1327, v116, v117, v118, v123, v124, v125, v126, v119, v120, v121, v122);
        if (v137)
        {
          v142 = objc_msgSend_topology(v1327, v130, v131, v132, v138, v139, v140, v141, v133, v134, v135, v136);
          v161 = objc_msgSend_faceTopology(v142, v143, v144, v145, v150, v151, v152, v153, v146, v147, v148, v149);
          if (v161)
          {
            v166 = objc_msgSend_topology(v1327, v154, v155, v156, v162, v163, v164, v165, v157, v158, v159, v160);
            v178 = objc_msgSend_faceCount(v166, v167, v168, v169, v174, v175, v176, v177, v170, v171, v172, v173);

            if (!v178)
            {
              break;
            }

            v190 = objc_msgSend_topology(v1327, v179, v180, v181, v186, v187, v188, v189, v182, v183, v184, v185);
            v202 = objc_msgSend_faceCount(v190, v191, v192, v193, v198, v199, v200, v201, v194, v195, v196, v197);
            sub_239E95D48(&v1450, v202);

            v214 = objc_msgSend_topology(v1327, v203, v204, v205, v210, v211, v212, v213, v206, v207, v208, v209);
            v226 = objc_msgSend_faceTopology(v214, v215, v216, v217, v222, v223, v224, v225, v218, v219, v220, v221);
            v137 = objc_msgSend_map(v226, v227, v228, v229, v234, v235, v236, v237, v230, v231, v232, v233);

            v256 = objc_msgSend_bytes(v137, v238, v239, v240, v245, v246, v247, v248, v241, v242, v243, v244);
            for (i = 0; ; ++i)
            {
              v262 = objc_msgSend_topology(v1327, v249, v250, v251, v257, v258, v259, v260, v252, v253, v254, v255);
              v274 = objc_msgSend_faceCount(v262, v263, v264, v265, v270, v271, v272, v273, v266, v267, v268, v269);

              if (v274 <= i)
              {
                break;
              }

              LODWORD(v1440) = *(v256 + i);
              sub_239E73254(&v1450, &v1440);
            }

            v282 = v1450;
            v283 = v1451;
            if (v1451 != v1450)
            {
              v284 = 0;
              v285 = 0;
              do
              {
                v286 = v282[v284];
                if (v286 >= 1)
                {
                  v287 = v286 + 1;
                  v288 = &v91[v286 - 1 + v285];
                  do
                  {
                    v289 = *v288--;
                    LODWORD(v1440) = v289;
                    sub_239E73254(&v1456, &v1440);
                    --v287;
                  }

                  while (v287 > 1);
                  v282 = v1450;
                  v283 = v1451;
                  LODWORD(v286) = v1450[v284];
                }

                v285 += v286;
                ++v284;
              }

              while (v284 < (v283 - v282) >> 2);
            }
          }

          else
          {
          }
        }

        break;
    }
  }

  else if (v115)
  {
    if (v115 == 1)
    {
      sub_239E95D48(&v1456, v103);
      v277 = v103 >> 1;
      sub_239E95D48(&v1450, v103 >> 1);
      if (v103 >= 2)
      {
        do
        {
          LODWORD(v1440) = 2;
          sub_239E73254(&v1450, &v1440);
          --v277;
        }

        while (v277);
      }

      for (; v103; --v103)
      {
        v278 = *v91++;
        LODWORD(v1440) = v278;
        sub_239E73254(&v1456, &v1440);
      }
    }

    else if (v115 == 2)
    {
      sub_239E95D48(&v1456, v103);
      v127 = v103 / 3;
      sub_239E95D48(&v1450, v103 / 3);
      if (v103 >= 3)
      {
        do
        {
          LODWORD(v1440) = 3;
          sub_239E73254(&v1450, &v1440);
          --v127;
        }

        while (v127);
      }

      if (v103)
      {
        v128 = 0;
        v129 = v91 + 1;
        do
        {
          LODWORD(v1440) = *(v129 - 1);
          sub_239E73254(&v1456, &v1440);
          LODWORD(v1440) = v129[1];
          sub_239E73254(&v1456, &v1440);
          LODWORD(v1440) = *v129;
          sub_239E73254(&v1456, &v1440);
          v128 += 3;
          v129 += 3;
        }

        while (v103 > v128);
      }
    }
  }

  else
  {
    sub_239E95D48(&v1456, v103);
    sub_239E95D48(&v1450, v103);
    if (v103)
    {
      v275 = v103;
      do
      {
        LODWORD(v1440) = 1;
        sub_239E73254(&v1450, &v1440);
        --v275;
      }

      while (v275);
      do
      {
        v276 = *v91++;
        LODWORD(v1440) = v276;
        sub_239E73254(&v1456, &v1440);
        --v103;
      }

      while (v103);
    }
  }

  sub_239EB2474(&v1453, v1457 - v1456);
  v290 = v1456;
  if (v1457 != v1456)
  {
    v291 = v1457 - v1456;
    v292 = v1453;
    if (v291 <= 1)
    {
      v291 = 1;
    }

    do
    {
      v293 = *v290++;
      *v292++ = v293;
      --v291;
    }

    while (v291);
  }

  v1448 = 0uLL;
  v1449 = 0;
  sub_239E552A0(&v1440, a3);
  v294 = std::string::append(&v1440, "_geo");
  v295 = *&v294->__r_.__value_.__l.__data_;
  v1449 = v294->__r_.__value_.__r.__words[2];
  v1448 = v295;
  v294->__r_.__value_.__l.__size_ = 0;
  v294->__r_.__value_.__r.__words[2] = 0;
  v294->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v1441) < 0)
  {
    operator delete(v1440);
  }

  v296 = 0;
  v297 = *MEMORY[0x277D82818];
  v299 = *(MEMORY[0x277D82818] + 64);
  v298 = *(MEMORY[0x277D82818] + 72);
  while (Alembic::Abc::v12::OObject::getChildHeader())
  {
    v1447 = 0;
    memset(v1446, 0, sizeof(v1446));
    v1445 = 0u;
    v1444 = 0u;
    *__p = 0u;
    memset(v1442, 0, sizeof(v1442));
    v1441 = 0u;
    v1440 = 0u;
    sub_239EE76F8(&v1440);
    if (v1449 >= 0)
    {
      v300 = &v1448;
    }

    else
    {
      v300 = v1448;
    }

    if (v1449 >= 0)
    {
      v301 = HIBYTE(v1449);
    }

    else
    {
      v301 = *(&v1448 + 1);
    }

    v302 = sub_239E98B94(&v1441, v300, v301);
    MEMORY[0x23EE80140](v302, v296);
    std::stringbuf::str();
    if (SHIBYTE(v1449) < 0)
    {
      operator delete(v1448);
    }

    v1448 = v1423;
    v1449 = v1424;
    *&v1440 = v297;
    *(&v1440 + *(v297 - 24)) = v299;
    *&v1441 = v298;
    *(&v1441 + 1) = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v1444) < 0)
    {
      operator delete(__p[1]);
    }

    *(&v1441 + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v1442);
    std::iostream::~basic_iostream();
    MEMORY[0x23EE80250](v1446);
    v296 = (v296 + 1);
  }

  bzero(&v1440, 0x4C8uLL);
  v1435 = *(a4 + 8);
  if (*(a4 + 39) < 0)
  {
    sub_239E5BAE0(&v1436, *(a4 + 16), *(a4 + 24));
  }

  else
  {
    v1436 = *(a4 + 16);
    v1437 = *(a4 + 32);
  }

  v303 = v1328;
  v305 = *(a4 + 40);
  v304 = *(a4 + 48);
  v1434 = MEMORY[0x277D867D0] + 16;
  v1438 = v305;
  v1439 = v304;
  if (v304)
  {
    atomic_fetch_add_explicit((v304 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v1423) = 0;
  DWORD2(v1423) = 0;
  *__dst = 0;
  *&__dst[8] = 0;
  *v1369 = 0;
  *&v1369[8] = 0;
  sub_239F08980(&v1440, &v1434, &v1448, &v1423, __dst, v1369);
  Alembic::Abc::v12::OObject::~OObject(&v1434);
  bzero(&v1423, 0x240uLL);
  sub_239F0A9A4(__dst, &v1459);
  sub_239F0ABA8(v1369, &v1456);
  sub_239F0ABA8(&v1389, &v1450);
  v1418 = 0;
  v1419 = 0x100000006;
  v1422 = 0;
  v1420 = 0;
  v1421 = 0;
  v1413 = 0;
  v1414 = 0x100000006;
  v1417 = 0;
  v1415 = 0;
  v1416 = 0;
  __src = 0;
  v1409 = 0x10000000ALL;
  v1412 = 0;
  v1410 = 0;
  v1411 = 0;
  *&v1404 = 0;
  *(&v1404 + 1) = 0x100000006;
  v1407 = 0;
  v1405 = 0;
  v1406 = 0;
  v1399 = 0;
  v1400 = 0x10000000ALL;
  v1403 = 0;
  v1401 = 0;
  v1402 = 0;
  v1394 = 0;
  v1395 = 0x100000006;
  v1398 = 0;
  v1396 = 0;
  v1397 = 0;
  sub_239F0AC4C(&v1423, __dst, v1369, &v1389, &v1418, &v1413, &__src, &v1404, &v1399, &v1394);
  if (v1396)
  {
    v1397 = v1396;
    operator delete(v1396);
  }

  if (v1401)
  {
    v1402 = v1401;
    operator delete(v1401);
  }

  if (v1405)
  {
    v1406 = v1405;
    operator delete(v1405);
  }

  if (v1410)
  {
    v1411 = v1410;
    operator delete(v1410);
  }

  if (v1415)
  {
    v1416 = v1415;
    operator delete(v1415);
  }

  if (v1420)
  {
    v1421 = v1420;
    operator delete(v1420);
  }

  if (v1390.n128_u64[1])
  {
    v1391 = v1390.n128_i64[1];
    operator delete(v1390.n128_u64[1]);
  }

  if (v1370)
  {
    v1371 = v1370;
    operator delete(v1370);
  }

  if (v1382)
  {
    v1383[0] = v1382;
    operator delete(v1382);
  }

  v1329 = v6;
  v306 = v1327;
  v1419 = 0;
  v1418 = 0;
  v1420 = 0;
  v1414 = 0;
  v1413 = 0;
  v1415 = 0;
  v1409 = 0;
  __src = 0;
  v1410 = 0;
  v1404 = 0uLL;
  v1405 = 0;
  v1400 = 0;
  v1399 = 0;
  v1401 = 0;
  v318 = objc_msgSend_topology(v306, v307, v308, v309, v314, v315, v316, v317, v310, v311, v312, v313);

  if (!v318)
  {
    goto LABEL_132;
  }

  v330 = objc_msgSend_topology(v306, v319, v320, v321, v326, v327, v328, v329, v322, v323, v324, v325);
  v349 = objc_msgSend_edgeCreaseIndices(v330, v331, v332, v333, v338, v339, v340, v341, v334, v335, v336, v337);
  if (!v349)
  {
    goto LABEL_116;
  }

  v354 = objc_msgSend_topology(v306, v342, v343, v344, v350, v351, v352, v353, v345, v346, v347, v348);
  v366 = objc_msgSend_edgeCreaseCount(v354, v355, v356, v357, v362, v363, v364, v365, v358, v359, v360, v361);

  if (v366)
  {
    v378 = objc_msgSend_topology(v306, v367, v368, v369, v374, v375, v376, v377, v370, v371, v372, v373);
    v390 = objc_msgSend_edgeCreaseIndices(v378, v379, v380, v381, v386, v387, v388, v389, v382, v383, v384, v385);
    v330 = objc_msgSend_map(v390, v391, v392, v393, v398, v399, v400, v401, v394, v395, v396, v397);

    v420 = objc_msgSend_bytes(v330, v402, v403, v404, v409, v410, v411, v412, v405, v406, v407, v408);
    for (j = 0; ; ++j)
    {
      v426 = objc_msgSend_topology(v306, v413, v414, v415, v421, v422, v423, v424, v416, v417, v418, v419);
      v438 = objc_msgSend_edgeCreaseCount(v426, v427, v428, v429, v434, v435, v436, v437, v430, v431, v432, v433);

      if (j >= 2 * v438)
      {
        break;
      }

      *__dst = *(v420 + 4 * j);
      sub_239E73254(&v1418, __dst);
    }

    v450 = 0;
    v1419 = v1418;
    while (1)
    {
      v451 = objc_msgSend_topology(v306, v439, v440, v441, v446, v447, v448, v449, v442, v443, v444, v445);
      v463 = objc_msgSend_edgeCreaseCount(v451, v452, v453, v454, v459, v460, v461, v462, v455, v456, v457, v458);

      if (v463 <= v450)
      {
        break;
      }

      *__dst = 2;
      sub_239E73254(&v1413, __dst);
      ++v450;
    }

    v475 = objc_msgSend_topology(v306, v464, v465, v466, v471, v472, v473, v474, v467, v468, v469, v470);
    v487 = objc_msgSend_edgeCreases(v475, v476, v477, v478, v483, v484, v485, v486, v479, v480, v481, v482);

    if (v487)
    {
      v499 = objc_msgSend_topology(v306, v488, v489, v490, v495, v496, v497, v498, v491, v492, v493, v494);
      v511 = objc_msgSend_edgeCreases(v499, v500, v501, v502, v507, v508, v509, v510, v503, v504, v505, v506);
      v523 = objc_msgSend_map(v511, v512, v513, v514, v519, v520, v521, v522, v515, v516, v517, v518);

      v542 = objc_msgSend_bytes(v523, v524, v525, v526, v531, v532, v533, v534, v527, v528, v529, v530);
      for (k = 0; ; ++k)
      {
        v548 = objc_msgSend_topology(v306, v535, v536, v537, v543, v544, v545, v546, v538, v539, v540, v541);
        v560 = objc_msgSend_edgeCreaseCount(v548, v549, v550, v551, v556, v557, v558, v559, v552, v553, v554, v555);

        if (v560 <= k)
        {
          break;
        }

        sub_239E798A4(&__src, v542++);
      }
    }

    sub_239F0ABA8(__dst, &v1418);
    sub_239F0ABA8(v1369, &v1413);
    sub_239F0D37C(&v1389, &__src);
    sub_239F0AFC8(&v1423, __dst, v1369, &v1389);
    if (v1390.n128_u64[1])
    {
      v1391 = v1390.n128_i64[1];
      operator delete(v1390.n128_u64[1]);
    }

    if (v1370)
    {
      v1371 = v1370;
      operator delete(v1370);
    }

    if (v1382)
    {
      v1383[0] = v1382;
      operator delete(v1382);
    }

LABEL_116:
  }

  v561 = objc_msgSend_topology(v306, v367, v368, v369, v374, v375, v376, v377, v370, v371, v372, v373);
  v580 = objc_msgSend_vertexCreaseIndices(v561, v562, v563, v564, v569, v570, v571, v572, v565, v566, v567, v568);
  if (v580)
  {
    v585 = objc_msgSend_topology(v306, v573, v574, v575, v581, v582, v583, v584, v576, v577, v578, v579);
    v597 = objc_msgSend_vertexCreaseCount(v585, v586, v587, v588, v593, v594, v595, v596, v589, v590, v591, v592);

    if (!v597)
    {
      goto LABEL_132;
    }

    v609 = objc_msgSend_topology(v306, v598, v599, v600, v605, v606, v607, v608, v601, v602, v603, v604);
    v621 = objc_msgSend_vertexCreaseIndices(v609, v610, v611, v612, v617, v618, v619, v620, v613, v614, v615, v616);
    v561 = objc_msgSend_map(v621, v622, v623, v624, v629, v630, v631, v632, v625, v626, v627, v628);

    v651 = objc_msgSend_bytes(v561, v633, v634, v635, v640, v641, v642, v643, v636, v637, v638, v639);
    for (m = 0; ; ++m)
    {
      v657 = objc_msgSend_topology(v306, v644, v645, v646, v652, v653, v654, v655, v647, v648, v649, v650);
      v669 = objc_msgSend_vertexCreaseCount(v657, v658, v659, v660, v665, v666, v667, v668, v661, v662, v663, v664);

      if (v669 <= m)
      {
        break;
      }

      *__dst = *(v651 + 4 * m);
      sub_239E73254(&v1404, __dst);
    }

    v681 = objc_msgSend_topology(v306, v670, v671, v672, v677, v678, v679, v680, v673, v674, v675, v676);
    v693 = objc_msgSend_vertexCreases(v681, v682, v683, v684, v689, v690, v691, v692, v685, v686, v687, v688);

    if (v693)
    {
      v705 = objc_msgSend_topology(v306, v694, v695, v696, v701, v702, v703, v704, v697, v698, v699, v700);
      v717 = objc_msgSend_vertexCreases(v705, v706, v707, v708, v713, v714, v715, v716, v709, v710, v711, v712);
      v729 = objc_msgSend_map(v717, v718, v719, v720, v725, v726, v727, v728, v721, v722, v723, v724);

      v748 = objc_msgSend_bytes(v729, v730, v731, v732, v737, v738, v739, v740, v733, v734, v735, v736);
      for (n = 0; ; ++n)
      {
        v754 = objc_msgSend_topology(v306, v741, v742, v743, v749, v750, v751, v752, v744, v745, v746, v747);
        v766 = objc_msgSend_vertexCreaseCount(v754, v755, v756, v757, v762, v763, v764, v765, v758, v759, v760, v761);

        if (v766 <= n)
        {
          break;
        }

        sub_239E798A4(&v1399, v748++);
      }
    }

    sub_239F0ABA8(__dst, &v1404);
    sub_239F0D37C(v1369, &v1399);
    *(v1425 + 5) = *&__dst[5];
    v1425[0] = *__dst;
    sub_239F077C0(&v1426, v1382, v1383[0], (v1383[0] - v1382) >> 3);
    *(v1427 + 5) = *&v1369[5];
    v1427[0] = *v1369;
    sub_239F077C0(&v1428, v1370, v1371, (v1371 - v1370) >> 3);
    if (v1370)
    {
      v1371 = v1370;
      operator delete(v1370);
    }

    if (v1382)
    {
      v1383[0] = v1382;
      operator delete(v1382);
    }
  }

LABEL_132:
  Alembic::AbcGeom::v12::OSubDSchema::set();
  if (v1399)
  {
    v1400 = v1399;
    operator delete(v1399);
  }

  if (v1404)
  {
    *(&v1404 + 1) = v1404;
    operator delete(v1404);
  }

  if (__src)
  {
    v1409 = __src;
    operator delete(__src);
  }

  if (v1413)
  {
    v1414 = v1413;
    operator delete(v1413);
  }

  if (v1418)
  {
    v1419 = v1418;
    operator delete(v1418);
  }

  v1333 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v1329, v767, @"textureCoordinate", 786434, v772, v773, v774, v775, v768, v769, v770, v771);
  v6 = v1330;
  if (objc_msgSend_format(v1333, v776, v777, v778, v783, v784, v785, v786, v779, v780, v781, v782))
  {
    v1419 = 0;
    v1418 = 0;
    v1420 = 0;
    v798 = objc_msgSend_dataStart(v1333, v787, v788, v789, v794, v795, v796, v797, v790, v791, v792, v793);
    v810 = objc_msgSend_stride(v1333, v799, v800, v801, v806, v807, v808, v809, v802, v803, v804, v805);
    if (v1328)
    {
      v822 = v810;
      v823 = 0;
      v824 = v1328;
      do
      {
        if (v823 + 4 <= objc_msgSend_bufferSize(v1333, v811, v812, v813, v818, v819, v820, v821, v814, v815, v816, v817))
        {
          v818.n128_u32[0] = *(v798 + v823);
          v819.n128_u32[0] = *(v798 + v823 + 4);
          *__dst = v818.n128_u32[0];
          *&__dst[4] = v819.n128_u32[0];
          v825 = v1419;
          if (v1419 >= v1420)
          {
            v826 = sub_239F0B0A8(&v1418, __dst);
          }

          else
          {
            *v1419 = v818.n128_u32[0];
            *(v825 + 4) = v819.n128_u32[0];
            v826 = (v825 + 8);
          }

          v1419 = v826;
        }

        v823 += v822;
        --v824;
      }

      while (v824);
    }

    sub_239F0B230(v1369, &v1418);
    sub_239F0B2D4(&v1389, &v1453);
    sub_239F0B378(__dst, v1369, &v1389, 4);
    *(v1429 + 5) = *&__dst[5];
    v1429[0] = *__dst;
    sub_239F077C0(&v1430, v1382, v1383[0], (v1383[0] - v1382) >> 3);
    *(v1431 + 5) = *(v1384 + 5);
    v1431[0] = v1384[0];
    sub_239F077C0(&v1432, v1385, v1386, (v1386 - v1385) >> 3);
    v1433 = v1387[2];
    if (v1385)
    {
      v1386 = v1385;
      operator delete(v1385);
    }

    if (v1382)
    {
      v1383[0] = v1382;
      operator delete(v1382);
    }

    if (v1390.n128_u64[1])
    {
      v1391 = v1390.n128_i64[1];
      operator delete(v1390.n128_u64[1]);
    }

    if (v1370)
    {
      v1371 = v1370;
      operator delete(v1370);
    }

    if (v1418)
    {
      v1419 = v1418;
      operator delete(v1418);
    }
  }

  sub_239F07C18(&v1442[1] + 8, &v1389);
  v836 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v1329, v827, @"anisotropy", 786433, v832, v833, v834, v835, v828, v829, v830, v831);
  if (objc_msgSend_format(v836, v837, v838, v839, v844, v845, v846, v847, v840, v841, v842, v843))
  {
    v1409 = 0;
    __src = 0;
    v1410 = 0;
    v859 = objc_msgSend_dataStart(v836, v848, v849, v850, v855, v856, v857, v858, v851, v852, v853, v854);
    v871 = objc_msgSend_stride(v836, v860, v861, v862, v867, v868, v869, v870, v863, v864, v865, v866);
    if (v1328)
    {
      v883 = v871;
      v884 = 0;
      v885 = v1328;
      do
      {
        if (v884 + 4 <= objc_msgSend_bufferSize(v836, v872, v873, v874, v879, v880, v881, v882, v875, v876, v877, v878))
        {
          v886 = *(v859 + v884);
          v887 = v1409;
          if (v1409 >= v1410)
          {
            v889 = __src;
            v890 = v1409 - __src;
            v891 = (v1409 - __src) >> 2;
            v892 = v891 + 1;
            if ((v891 + 1) >> 62)
            {
              sub_239E797B4();
            }

            v893 = v1410 - __src;
            if ((v1410 - __src) >> 1 > v892)
            {
              v892 = v893 >> 1;
            }

            if (v893 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v894 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v894 = v892;
            }

            if (v894)
            {
              sub_239E79984(&__src, v894);
            }

            *(4 * v891) = v886;
            v888 = 4 * v891 + 4;
            memcpy(0, v889, v890);
            v895 = __src;
            __src = 0;
            v1409 = v888;
            v1410 = 0;
            if (v895)
            {
              operator delete(v895);
            }
          }

          else
          {
            *v1409 = v886;
            v888 = v887 + 4;
          }

          v1409 = v888;
          v6 = v1330;
        }

        v884 += v883;
        --v885;
      }

      while (v885);
    }

    v1376 = v1389;
    if (SHIBYTE(v1391) < 0)
    {
      sub_239E5BAE0(&v1377, v1390.n128_u64[0], v1390.n128_u64[1]);
    }

    else
    {
      v896 = v1390;
      v1377 = v1390;
      v1378 = v1391;
    }

    v303 = v1328;
    v1379 = v1392;
    v1380 = v1393;
    if (v1393)
    {
      atomic_fetch_add_explicit((v1393 + 8), 1uLL, memory_order_relaxed);
    }

    v897 = objc_msgSend_UTF8String(@"anisotropy", v872, v873, v874, v896, v880, v881, v882, v875, v876, v877, v878);
    sub_239E552A0(&v1404, v897);
    LODWORD(v1399) = 0;
    LODWORD(v1400) = 0;
    LODWORD(v1394) = 0;
    LODWORD(v1395) = 0;
    v1374 = 0;
    v1375 = 0;
    sub_239F0B42C(__dst, &v1376, &v1404, 1, 4, 1, &v1399, &v1394, &v1374);
    sub_239F0D37C(&v1418, &__src);
    sub_239F0B2D4(&v1413, &v1453);
    sub_239F0D420(v1369, &v1418, &v1413, 4);
    sub_239F07E40(__dst, v1369);
    if (v1372)
    {
      v1373 = v1372;
      operator delete(v1372);
    }

    if (v1370)
    {
      v1371 = v1370;
      operator delete(v1370);
    }

    if (v1415)
    {
      v1416 = v1415;
      operator delete(v1415);
    }

    if (v1420)
    {
      v1421 = v1420;
      operator delete(v1420);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1388);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1387);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1383);
    if (SHIBYTE(v1382) < 0)
    {
      operator delete(*__dst);
    }

    if (SHIBYTE(v1405) < 0)
    {
      operator delete(v1404);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v1376);
    if (__src)
    {
      v1409 = __src;
      operator delete(__src);
    }
  }

  v898 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v1329, v848, @"binormal", 786435, v855, v856, v857, v858, v851, v852, v853, v854);

  if (objc_msgSend_format(v898, v899, v900, v901, v906, v907, v908, v909, v902, v903, v904, v905))
  {
    v1409 = 0;
    __src = 0;
    v1410 = 0;
    v921 = objc_msgSend_dataStart(v898, v910, v911, v912, v917, v918, v919, v920, v913, v914, v915, v916);
    v933 = objc_msgSend_stride(v898, v922, v923, v924, v929, v930, v931, v932, v925, v926, v927, v928);
    if (v303)
    {
      v945 = v933;
      v946 = 0;
      v947 = v303;
      do
      {
        if (v946 + 12 <= objc_msgSend_bufferSize(v898, v934, v935, v936, v941, v942, v943, v944, v937, v938, v939, v940))
        {
          v942.n128_u32[0] = *(v921 + v946);
          v943.n128_u32[0] = *(v921 + v946 + 4);
          v941.n128_u32[0] = *(v921 + v946 + 8);
          *__dst = v942.n128_u32[0];
          *&__dst[4] = v943.n128_u32[0];
          *&__dst[8] = v941.n128_u32[0];
          v948 = v1409;
          if (v1409 >= v1410)
          {
            v949 = sub_239F08808(&__src, __dst);
          }

          else
          {
            *v1409 = v942.n128_u32[0];
            *(v948 + 4) = v943.n128_u32[0];
            v949 = v948 + 12;
            *(v948 + 8) = v941.n128_u32[0];
          }

          v1409 = v949;
        }

        v946 += v945;
        --v947;
      }

      while (v947);
    }

    v1364 = v1389;
    if (SHIBYTE(v1391) < 0)
    {
      sub_239E5BAE0(&v1365, v1390.n128_u64[0], v1390.n128_u64[1]);
    }

    else
    {
      v950 = v1390;
      v1365 = v1390;
      v1366 = v1391;
    }

    v1367 = v1392;
    v1368 = v1393;
    if (v1393)
    {
      atomic_fetch_add_explicit((v1393 + 8), 1uLL, memory_order_relaxed);
    }

    v951 = objc_msgSend_UTF8String(@"binormal", v934, v935, v936, v950, v942, v943, v944, v937, v938, v939, v940);
    sub_239E552A0(&v1404, v951);
    LODWORD(v1399) = 0;
    LODWORD(v1400) = 0;
    LODWORD(v1394) = 0;
    LODWORD(v1395) = 0;
    v1374 = 0;
    v1375 = 0;
    sub_239F0D4D4(__dst, &v1364, &v1404, 1, 4, 1, &v1399, &v1394, &v1374);
    sub_239F0EAB4(&v1418, &__src);
    sub_239F0B2D4(&v1413, &v1453);
    sub_239F0EB64(v1369, &v1418, &v1413, 4);
    sub_239F081B4(__dst, v1369);
    if (v1372)
    {
      v1373 = v1372;
      operator delete(v1372);
    }

    if (v1370)
    {
      v1371 = v1370;
      operator delete(v1370);
    }

    if (v1415)
    {
      v1416 = v1415;
      operator delete(v1415);
    }

    if (v1420)
    {
      v1421 = v1420;
      operator delete(v1420);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1388);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1387);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1383);
    if (SHIBYTE(v1382) < 0)
    {
      operator delete(*__dst);
    }

    if (SHIBYTE(v1405) < 0)
    {
      operator delete(v1404);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v1364);
    if (__src)
    {
      v1409 = __src;
      operator delete(__src);
    }
  }

  v952 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v1329, v910, @"bitangent", 786435, v917, v918, v919, v920, v913, v914, v915, v916);

  if (objc_msgSend_format(v952, v953, v954, v955, v960, v961, v962, v963, v956, v957, v958, v959))
  {
    v1409 = 0;
    __src = 0;
    v1410 = 0;
    v975 = objc_msgSend_dataStart(v952, v964, v965, v966, v971, v972, v973, v974, v967, v968, v969, v970);
    v987 = objc_msgSend_stride(v952, v976, v977, v978, v983, v984, v985, v986, v979, v980, v981, v982);
    if (v303)
    {
      v999 = v987;
      v1000 = 0;
      v1001 = v303;
      do
      {
        if (v1000 + 12 <= objc_msgSend_bufferSize(v952, v988, v989, v990, v995, v996, v997, v998, v991, v992, v993, v994))
        {
          v996.n128_u32[0] = *(v975 + v1000);
          v997.n128_u32[0] = *(v975 + v1000 + 4);
          v995.n128_u32[0] = *(v975 + v1000 + 8);
          *__dst = v996.n128_u32[0];
          *&__dst[4] = v997.n128_u32[0];
          *&__dst[8] = v995.n128_u32[0];
          v1002 = v1409;
          if (v1409 >= v1410)
          {
            v1003 = sub_239F08808(&__src, __dst);
          }

          else
          {
            *v1409 = v996.n128_u32[0];
            *(v1002 + 4) = v997.n128_u32[0];
            v1003 = v1002 + 12;
            *(v1002 + 8) = v995.n128_u32[0];
          }

          v1409 = v1003;
        }

        v1000 += v999;
        --v1001;
      }

      while (v1001);
    }

    v1359 = v1389;
    if (SHIBYTE(v1391) < 0)
    {
      sub_239E5BAE0(&v1360, v1390.n128_u64[0], v1390.n128_u64[1]);
    }

    else
    {
      v1004 = v1390;
      v1360 = v1390;
      v1361 = v1391;
    }

    v1362 = v1392;
    v1363 = v1393;
    if (v1393)
    {
      atomic_fetch_add_explicit((v1393 + 8), 1uLL, memory_order_relaxed);
    }

    v1005 = objc_msgSend_UTF8String(@"bitangent", v988, v989, v990, v1004, v996, v997, v998, v991, v992, v993, v994);
    sub_239E552A0(&v1404, v1005);
    LODWORD(v1399) = 0;
    LODWORD(v1400) = 0;
    LODWORD(v1394) = 0;
    LODWORD(v1395) = 0;
    v1374 = 0;
    v1375 = 0;
    sub_239F0D4D4(__dst, &v1359, &v1404, 1, 4, 1, &v1399, &v1394, &v1374);
    sub_239F0EAB4(&v1418, &__src);
    sub_239F0B2D4(&v1413, &v1453);
    sub_239F0EB64(v1369, &v1418, &v1413, 4);
    sub_239F081B4(__dst, v1369);
    if (v1372)
    {
      v1373 = v1372;
      operator delete(v1372);
    }

    if (v1370)
    {
      v1371 = v1370;
      operator delete(v1370);
    }

    if (v1415)
    {
      v1416 = v1415;
      operator delete(v1415);
    }

    if (v1420)
    {
      v1421 = v1420;
      operator delete(v1420);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1388);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1387);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1383);
    if (SHIBYTE(v1382) < 0)
    {
      operator delete(*__dst);
    }

    if (SHIBYTE(v1405) < 0)
    {
      operator delete(v1404);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v1359);
    if (__src)
    {
      v1409 = __src;
      operator delete(__src);
    }
  }

  v1006 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v1329, v964, @"tangent", 786435, v971, v972, v973, v974, v967, v968, v969, v970);

  if (objc_msgSend_format(v1006, v1007, v1008, v1009, v1014, v1015, v1016, v1017, v1010, v1011, v1012, v1013))
  {
    v1409 = 0;
    __src = 0;
    v1410 = 0;
    v1029 = objc_msgSend_dataStart(v1006, v1018, v1019, v1020, v1025, v1026, v1027, v1028, v1021, v1022, v1023, v1024);
    v1041 = objc_msgSend_stride(v1006, v1030, v1031, v1032, v1037, v1038, v1039, v1040, v1033, v1034, v1035, v1036);
    if (v303)
    {
      v1053 = v1041;
      v1054 = 0;
      v1055 = v303;
      do
      {
        if (v1054 + 12 <= objc_msgSend_bufferSize(v1006, v1042, v1043, v1044, v1049, v1050, v1051, v1052, v1045, v1046, v1047, v1048))
        {
          v1050.n128_u32[0] = *(v1029 + v1054);
          v1051.n128_u32[0] = *(v1029 + v1054 + 4);
          v1049.n128_u32[0] = *(v1029 + v1054 + 8);
          *__dst = v1050.n128_u32[0];
          *&__dst[4] = v1051.n128_u32[0];
          *&__dst[8] = v1049.n128_u32[0];
          v1056 = v1409;
          if (v1409 >= v1410)
          {
            v1057 = sub_239F08808(&__src, __dst);
          }

          else
          {
            *v1409 = v1050.n128_u32[0];
            *(v1056 + 4) = v1051.n128_u32[0];
            v1057 = v1056 + 12;
            *(v1056 + 8) = v1049.n128_u32[0];
          }

          v1409 = v1057;
        }

        v1054 += v1053;
        --v1055;
      }

      while (v1055);
    }

    v1354 = v1389;
    if (SHIBYTE(v1391) < 0)
    {
      sub_239E5BAE0(&v1355, v1390.n128_u64[0], v1390.n128_u64[1]);
    }

    else
    {
      v1058 = v1390;
      v1355 = v1390;
      v1356 = v1391;
    }

    v1357 = v1392;
    v1358 = v1393;
    if (v1393)
    {
      atomic_fetch_add_explicit((v1393 + 8), 1uLL, memory_order_relaxed);
    }

    v1059 = objc_msgSend_UTF8String(@"tangent", v1042, v1043, v1044, v1058, v1050, v1051, v1052, v1045, v1046, v1047, v1048);
    sub_239E552A0(&v1404, v1059);
    LODWORD(v1399) = 0;
    LODWORD(v1400) = 0;
    LODWORD(v1394) = 0;
    LODWORD(v1395) = 0;
    v1374 = 0;
    v1375 = 0;
    sub_239F0D4D4(__dst, &v1354, &v1404, 1, 4, 1, &v1399, &v1394, &v1374);
    sub_239F0EAB4(&v1418, &__src);
    sub_239F0B2D4(&v1413, &v1453);
    sub_239F0EB64(v1369, &v1418, &v1413, 4);
    sub_239F081B4(__dst, v1369);
    if (v1372)
    {
      v1373 = v1372;
      operator delete(v1372);
    }

    if (v1370)
    {
      v1371 = v1370;
      operator delete(v1370);
    }

    if (v1415)
    {
      v1416 = v1415;
      operator delete(v1415);
    }

    if (v1420)
    {
      v1421 = v1420;
      operator delete(v1420);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1388);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1387);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1383);
    if (SHIBYTE(v1382) < 0)
    {
      operator delete(*__dst);
    }

    if (SHIBYTE(v1405) < 0)
    {
      operator delete(v1404);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v1354);
    if (__src)
    {
      v1409 = __src;
      operator delete(__src);
    }
  }

  v1060 = objc_msgSend_vertexAttributeDataForAttributeNamed_(v1329, v1018, @"occlusionValue", v1020, v1025, v1026, v1027, v1028, v1021, v1022, v1023, v1024);

  if (!v1060)
  {
    v1133 = 0;
    goto LABEL_354;
  }

  if (!objc_msgSend_format(v1060, v1061, v1062, v1063, v1068, v1069, v1070, v1071, v1064, v1065, v1066, v1067))
  {
    v1133 = v1060;
    goto LABEL_354;
  }

  if ((objc_msgSend_format(v1060, v1061, v1072, v1063, v1068, v1069, v1070, v1071, v1064, v1065, v1066, v1067) & 0xF) == 1)
  {
    v1082 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v1329, v1073, @"occlusionValue", 786433, v1078, v1079, v1080, v1081, v1074, v1075, v1076, v1077);

    if (objc_msgSend_format(v1082, v1083, v1084, v1085, v1090, v1091, v1092, v1093, v1086, v1087, v1088, v1089))
    {
      v1409 = 0;
      __src = 0;
      v1410 = 0;
      v1095 = objc_msgSend_dataStart(v1082, v1061, v1094, v1063, v1068, v1069, v1070, v1071, v1064, v1065, v1066, v1067);
      v1107 = objc_msgSend_stride(v1082, v1096, v1097, v1098, v1103, v1104, v1105, v1106, v1099, v1100, v1101, v1102);
      if (v303)
      {
        v1119 = v1107;
        v1120 = 0;
        v1121 = v303;
        do
        {
          if (v1120 + 4 <= objc_msgSend_bufferSize(v1082, v1108, v1109, v1110, v1115, v1116, v1117, v1118, v1111, v1112, v1113, v1114))
          {
            v1122 = *(v1095 + v1120);
            v1123 = v1409;
            if (v1409 >= v1410)
            {
              v1125 = __src;
              v1126 = v1409 - __src;
              v1127 = (v1409 - __src) >> 2;
              v1128 = v1127 + 1;
              if ((v1127 + 1) >> 62)
              {
                sub_239E797B4();
              }

              v1129 = v1410 - __src;
              if ((v1410 - __src) >> 1 > v1128)
              {
                v1128 = v1129 >> 1;
              }

              if (v1129 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v1130 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v1130 = v1128;
              }

              if (v1130)
              {
                sub_239E79984(&__src, v1130);
              }

              *(4 * v1127) = v1122;
              v1124 = 4 * v1127 + 4;
              memcpy(0, v1125, v1126);
              v1131 = __src;
              __src = 0;
              v1409 = v1124;
              v1410 = 0;
              if (v1131)
              {
                operator delete(v1131);
              }

              v303 = v1328;
            }

            else
            {
              *v1409 = v1122;
              v1124 = v1123 + 4;
            }

            v1409 = v1124;
            v6 = v1330;
          }

          v1120 += v1119;
          --v1121;
        }

        while (v1121);
      }

      v1349 = v1389;
      if (SHIBYTE(v1391) < 0)
      {
        sub_239E5BAE0(&v1350, v1390.n128_u64[0], v1390.n128_u64[1]);
      }

      else
      {
        v1132 = v1390;
        v1350 = v1390;
        v1351 = v1391;
      }

      v1352 = v1392;
      v1353 = v1393;
      if (v1393)
      {
        atomic_fetch_add_explicit((v1393 + 8), 1uLL, memory_order_relaxed);
      }

      v1178 = objc_msgSend_UTF8String(@"occlusionValue", v1108, v1109, v1110, v1132, v1116, v1117, v1118, v1111, v1112, v1113, v1114);
      sub_239E552A0(&v1404, v1178);
      LODWORD(v1399) = 0;
      LODWORD(v1400) = 0;
      LODWORD(v1394) = 0;
      LODWORD(v1395) = 0;
      v1374 = 0;
      v1375 = 0;
      sub_239F0B42C(__dst, &v1349, &v1404, 1, 4, 1, &v1399, &v1394, &v1374);
      sub_239F0D37C(&v1418, &__src);
      sub_239F0B2D4(&v1413, &v1453);
      sub_239F0D420(v1369, &v1418, &v1413, 4);
      sub_239F07E40(__dst, v1369);
      if (v1372)
      {
        v1373 = v1372;
        operator delete(v1372);
      }

      if (v1370)
      {
        v1371 = v1370;
        operator delete(v1370);
      }

      if (v1415)
      {
        v1416 = v1415;
        operator delete(v1415);
      }

      if (v1420)
      {
        v1421 = v1420;
        operator delete(v1420);
      }

      Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1388);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1387);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1383);
      if (SHIBYTE(v1382) < 0)
      {
        operator delete(*__dst);
      }

      if (SHIBYTE(v1405) < 0)
      {
        operator delete(v1404);
      }

      v1177 = &v1349;
LABEL_351:
      Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1177);
      if (__src)
      {
        v1409 = __src;
        operator delete(__src);
      }
    }
  }

  else
  {
    v1082 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v1329, v1073, @"occlusionValue", 786434, v1078, v1079, v1080, v1081, v1074, v1075, v1076, v1077);

    if (objc_msgSend_format(v1082, v1134, v1135, v1136, v1141, v1142, v1143, v1144, v1137, v1138, v1139, v1140))
    {
      v1409 = 0;
      __src = 0;
      v1410 = 0;
      v1146 = objc_msgSend_dataStart(v1082, v1061, v1145, v1063, v1068, v1069, v1070, v1071, v1064, v1065, v1066, v1067);
      v1158 = objc_msgSend_stride(v1082, v1147, v1148, v1149, v1154, v1155, v1156, v1157, v1150, v1151, v1152, v1153);
      if (v303)
      {
        v1170 = v1158;
        v1171 = 0;
        v1172 = v303;
        do
        {
          if (v1171 + 8 <= objc_msgSend_bufferSize(v1082, v1159, v1160, v1161, v1166, v1167, v1168, v1169, v1162, v1163, v1164, v1165))
          {
            v1166.n128_u32[0] = *(v1146 + v1171);
            v1167.n128_u32[0] = *(v1146 + v1171 + 4);
            *__dst = v1166.n128_u32[0];
            *&__dst[4] = v1167.n128_u32[0];
            v1173 = v1409;
            if (v1409 >= v1410)
            {
              v1174 = sub_239F0B0A8(&__src, __dst);
            }

            else
            {
              *v1409 = v1166.n128_u32[0];
              *(v1173 + 4) = v1167.n128_u32[0];
              v1174 = (v1173 + 8);
            }

            v1409 = v1174;
          }

          v1171 += v1170;
          --v1172;
        }

        while (v1172);
      }

      v1344 = v1389;
      if (SHIBYTE(v1391) < 0)
      {
        sub_239E5BAE0(&v1345, v1390.n128_u64[0], v1390.n128_u64[1]);
      }

      else
      {
        v1175 = v1390;
        v1345 = v1390;
        v1346 = v1391;
      }

      v1347 = v1392;
      v1348 = v1393;
      if (v1393)
      {
        atomic_fetch_add_explicit((v1393 + 8), 1uLL, memory_order_relaxed);
      }

      v1176 = objc_msgSend_UTF8String(@"occlusionValue", v1159, v1160, v1161, v1175, v1167, v1168, v1169, v1162, v1163, v1164, v1165);
      sub_239E552A0(&v1404, v1176);
      LODWORD(v1399) = 0;
      LODWORD(v1400) = 0;
      LODWORD(v1394) = 0;
      LODWORD(v1395) = 0;
      v1374 = 0;
      v1375 = 0;
      sub_239F0EC18(__dst, &v1344, &v1404, 1, 4, 1, &v1399, &v1394, &v1374);
      sub_239F0B230(&v1418, &__src);
      sub_239F0B2D4(&v1413, &v1453);
      sub_239F0B378(v1369, &v1418, &v1413, 4);
      sub_239F084DC(__dst, v1369);
      if (v1372)
      {
        v1373 = v1372;
        operator delete(v1372);
      }

      if (v1370)
      {
        v1371 = v1370;
        operator delete(v1370);
      }

      if (v1415)
      {
        v1416 = v1415;
        operator delete(v1415);
      }

      if (v1420)
      {
        v1421 = v1420;
        operator delete(v1420);
      }

      Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1388);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1387);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1383);
      if (SHIBYTE(v1382) < 0)
      {
        operator delete(*__dst);
      }

      if (SHIBYTE(v1405) < 0)
      {
        operator delete(v1404);
      }

      v1177 = &v1344;
      goto LABEL_351;
    }
  }

  v1133 = v1082;
LABEL_354:
  v1179 = objc_msgSend_vertexAttributeDataForAttributeNamed_(v1329, v1061, @"color", v1063, v1068, v1069, v1070, v1071, v1064, v1065, v1066, v1067);

  if (v1179)
  {
    if (objc_msgSend_format(v1179, v1180, v1181, v1182, v1187, v1188, v1189, v1190, v1183, v1184, v1185, v1186))
    {
      if ((objc_msgSend_format(v1179, v1191, v1192, v1193, v1198, v1199, v1200, v1201, v1194, v1195, v1196, v1197) & 0xF) == 1)
      {
        v1211 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v1329, v1202, @"color", 786433, v1207, v1208, v1209, v1210, v1203, v1204, v1205, v1206);

        if (objc_msgSend_format(v1211, v1212, v1213, v1214, v1219, v1220, v1221, v1222, v1215, v1216, v1217, v1218))
        {
          v1409 = 0;
          __src = 0;
          v1410 = 0;
          v1234 = objc_msgSend_dataStart(v1211, v1223, v1224, v1225, v1230, v1231, v1232, v1233, v1226, v1227, v1228, v1229);
          v1246 = objc_msgSend_stride(v1211, v1235, v1236, v1237, v1242, v1243, v1244, v1245, v1238, v1239, v1240, v1241);
          if (v303)
          {
            v1258 = v1246;
            v1259 = 0;
            do
            {
              if (v1259 + 4 <= objc_msgSend_bufferSize(v1211, v1247, v1248, v1249, v1254, v1255, v1256, v1257, v1250, v1251, v1252, v1253))
              {
                v1260 = *(v1234 + v1259);
                v1261 = v1409;
                if (v1409 >= v1410)
                {
                  v1263 = __src;
                  v1264 = v1409 - __src;
                  v1265 = (v1409 - __src) >> 2;
                  v1266 = v1265 + 1;
                  if ((v1265 + 1) >> 62)
                  {
                    sub_239E797B4();
                  }

                  v1267 = v1410 - __src;
                  if ((v1410 - __src) >> 1 > v1266)
                  {
                    v1266 = v1267 >> 1;
                  }

                  if (v1267 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v1268 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v1268 = v1266;
                  }

                  if (v1268)
                  {
                    sub_239E79984(&__src, v1268);
                  }

                  *(4 * v1265) = v1260;
                  v1262 = 4 * v1265 + 4;
                  memcpy(0, v1263, v1264);
                  v1269 = __src;
                  __src = 0;
                  v1409 = v1262;
                  v1410 = 0;
                  if (v1269)
                  {
                    operator delete(v1269);
                  }
                }

                else
                {
                  *v1409 = v1260;
                  v1262 = v1261 + 4;
                }

                v1409 = v1262;
                v6 = v1330;
              }

              v1259 += v1258;
              --v1328;
            }

            while (v1328);
          }

          v1339 = v1389;
          if (SHIBYTE(v1391) < 0)
          {
            sub_239E5BAE0(&v1340, v1390.n128_u64[0], v1390.n128_u64[1]);
          }

          else
          {
            v1270 = v1390;
            v1340 = v1390;
            v1341 = v1391;
          }

          v1342 = v1392;
          v1343 = v1393;
          if (v1393)
          {
            atomic_fetch_add_explicit((v1393 + 8), 1uLL, memory_order_relaxed);
          }

          v1324 = objc_msgSend_UTF8String(@"color", v1247, v1248, v1249, v1270, v1255, v1256, v1257, v1250, v1251, v1252, v1253);
          sub_239E552A0(&v1404, v1324);
          LODWORD(v1399) = 0;
          LODWORD(v1400) = 0;
          LODWORD(v1394) = 0;
          LODWORD(v1395) = 0;
          v1374 = 0;
          v1375 = 0;
          sub_239F0B42C(__dst, &v1339, &v1404, 1, 4, 1, &v1399, &v1394, &v1374);
          sub_239F0D37C(&v1418, &__src);
          sub_239F0B2D4(&v1413, &v1453);
          sub_239F0D420(v1369, &v1418, &v1413, 4);
          sub_239F07E40(__dst, v1369);
          if (v1372)
          {
            v1373 = v1372;
            operator delete(v1372);
          }

          if (v1370)
          {
            v1371 = v1370;
            operator delete(v1370);
          }

          if (v1415)
          {
            v1416 = v1415;
            operator delete(v1415);
          }

          if (v1420)
          {
            v1421 = v1420;
            operator delete(v1420);
          }

          Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1388);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1387);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1383);
          if (SHIBYTE(v1382) < 0)
          {
            operator delete(*__dst);
          }

          if (SHIBYTE(v1405) < 0)
          {
            operator delete(v1404);
          }

          v1323 = &v1339;
LABEL_422:
          Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1323);
          if (__src)
          {
            v1409 = __src;
            operator delete(__src);
          }
        }
      }

      else
      {
        v1211 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v1329, v1202, @"color", 786435, v1207, v1208, v1209, v1210, v1203, v1204, v1205, v1206);

        if (objc_msgSend_format(v1211, v1271, v1272, v1273, v1278, v1279, v1280, v1281, v1274, v1275, v1276, v1277))
        {
          v1409 = 0;
          __src = 0;
          v1410 = 0;
          v1293 = objc_msgSend_dataStart(v1211, v1282, v1283, v1284, v1289, v1290, v1291, v1292, v1285, v1286, v1287, v1288);
          v1305 = objc_msgSend_stride(v1211, v1294, v1295, v1296, v1301, v1302, v1303, v1304, v1297, v1298, v1299, v1300);
          if (v303)
          {
            v1317 = v1305;
            v1318 = 0;
            do
            {
              if (v1318 + 12 <= objc_msgSend_bufferSize(v1211, v1306, v1307, v1308, v1313, v1314, v1315, v1316, v1309, v1310, v1311, v1312))
              {
                v1314.n128_u32[0] = *(v1293 + v1318);
                v1315.n128_u32[0] = *(v1293 + v1318 + 4);
                v1313.n128_u32[0] = *(v1293 + v1318 + 8);
                *__dst = v1314.n128_u32[0];
                *&__dst[4] = v1315.n128_u32[0];
                *&__dst[8] = v1313.n128_u32[0];
                v1319 = v1409;
                if (v1409 >= v1410)
                {
                  v1320 = sub_239F08808(&__src, __dst);
                }

                else
                {
                  *v1409 = v1314.n128_u32[0];
                  *(v1319 + 4) = v1315.n128_u32[0];
                  v1320 = v1319 + 12;
                  *(v1319 + 8) = v1313.n128_u32[0];
                }

                v1409 = v1320;
              }

              v1318 += v1317;
              --v303;
            }

            while (v303);
          }

          v1334 = v1389;
          if (SHIBYTE(v1391) < 0)
          {
            sub_239E5BAE0(&v1335, v1390.n128_u64[0], v1390.n128_u64[1]);
          }

          else
          {
            v1321 = v1390;
            v1335 = v1390;
            v1336 = v1391;
          }

          v1337 = v1392;
          v1338 = v1393;
          if (v1393)
          {
            atomic_fetch_add_explicit((v1393 + 8), 1uLL, memory_order_relaxed);
          }

          v1322 = objc_msgSend_UTF8String(@"color", v1306, v1307, v1308, v1321, v1314, v1315, v1316, v1309, v1310, v1311, v1312);
          sub_239E552A0(&v1404, v1322);
          LODWORD(v1399) = 0;
          LODWORD(v1400) = 0;
          LODWORD(v1394) = 0;
          LODWORD(v1395) = 0;
          v1374 = 0;
          v1375 = 0;
          sub_239F0D4D4(__dst, &v1334, &v1404, 1, 4, 1, &v1399, &v1394, &v1374);
          sub_239F0EAB4(&v1418, &__src);
          sub_239F0B2D4(&v1413, &v1453);
          sub_239F0EB64(v1369, &v1418, &v1413, 4);
          sub_239F081B4(__dst, v1369);
          if (v1372)
          {
            v1373 = v1372;
            operator delete(v1372);
          }

          if (v1370)
          {
            v1371 = v1370;
            operator delete(v1370);
          }

          if (v1415)
          {
            v1416 = v1415;
            operator delete(v1415);
          }

          if (v1420)
          {
            v1421 = v1420;
            operator delete(v1420);
          }

          Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1388);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1387);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v1383);
          if (SHIBYTE(v1382) < 0)
          {
            operator delete(*__dst);
          }

          if (SHIBYTE(v1405) < 0)
          {
            operator delete(v1404);
          }

          v1323 = &v1334;
          goto LABEL_422;
        }
      }
    }

    else
    {
      v1211 = v1179;
    }
  }

  else
  {
    v1211 = 0;
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v1389);
  sub_239F101F8(&v1423);
  *&v1440 = &unk_284D17488;
  sub_239F0A868(&v1442[1] + 8);
  Alembic::Abc::v12::OObject::~OObject(&v1440);
  if (SHIBYTE(v1449) < 0)
  {
    operator delete(v1448);
  }

LABEL_426:
  if (v1450)
  {
    v1451 = v1450;
    operator delete(v1450);
  }

  if (v1453)
  {
    v1454 = v1453;
    operator delete(v1453);
  }

  if (v1456)
  {
    v1457 = v1456;
    operator delete(v1456);
  }

  if (v1459)
  {
    v1460 = v1459;
    operator delete(v1459);
  }
}

void sub_239F02A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19)
{
  v22 = *(v20 - 208);
  if (v22)
  {
    *(v20 - 200) = v22;
    operator delete(v22);
  }

  v23 = *(v20 - 184);
  if (v23)
  {
    *(v20 - 176) = v23;
    operator delete(v23);
  }

  v24 = *(v20 - 160);
  if (v24)
  {
    *(v20 - 152) = v24;
    operator delete(v24);
  }

  v25 = *(v20 - 136);
  if (v25)
  {
    *(v20 - 128) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void sub_239F033E0(void *a1, void *a2, char *a3, uint64_t a4)
{
  v7 = a1;
  v943 = a2;
  v1069 = 0;
  v1070 = 0;
  v1071 = 0;
  v940 = v7;
  v19 = objc_msgSend_vertexCount(v7, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  v29 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v7, v20, @"position", 786435, v25, v26, v27, v28, v21, v22, v23, v24);
  v41 = objc_msgSend_dataStart(v29, v30, v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);
  v944 = v29;
  v53 = objc_msgSend_stride(v29, v42, v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);
  if (v19)
  {
    v65 = v53;
    v66 = 0;
    v67 = v19;
    do
    {
      if (v66 + 12 <= objc_msgSend_bufferSize(v944, v54, v55, v56, v61, v62, v63, v64, v57, v58, v59, v60))
      {
        v62.n128_u32[0] = *(v41 + v66);
        v63.n128_u32[0] = *(v41 + v66 + 4);
        v61.n128_u32[0] = *(v41 + v66 + 8);
        *&v1050 = __PAIR64__(v63.n128_u32[0], v62.n128_u32[0]);
        DWORD2(v1050) = v61.n128_u32[0];
        v68 = v1070;
        if (v1070 >= v1071)
        {
          v69 = sub_239F08808(&v1069, &v1050);
        }

        else
        {
          *v1070 = v62.n128_u32[0];
          v68[1] = v63.n128_u32[0];
          v69 = (v68 + 3);
          v68[2] = v61.n128_u32[0];
        }

        v1070 = v69;
      }

      v66 += v65;
      --v67;
    }

    while (v67);
  }

  v939 = objc_msgSend_indexBufferAsIndexType_(v943, v54, 32, v56, v61, v62, v63, v64, v57, v58, v59, v60);
  v938 = objc_msgSend_map(v939, v70, v71, v72, v77, v78, v79, v80, v73, v74, v75, v76);
  v92 = objc_msgSend_bytes(v938, v81, v82, v83, v88, v89, v90, v91, v84, v85, v86, v87);
  v104 = objc_msgSend_indexCount(v943, v93, v94, v95, v100, v101, v102, v103, v96, v97, v98, v99);
  v1066 = 0;
  v1067 = 0;
  v1068 = 0;
  v1063 = 0;
  v1064 = 0;
  v1065 = 0;
  v1060 = 0;
  v1061 = 0;
  v1062 = 0;
  v116 = objc_msgSend_geometryType(v943, v105, v106, v107, v112, v113, v114, v115, v108, v109, v110, v111);
  v941 = v19;
  if (v116 > 2)
  {
    switch(v116)
    {
      case 3:
        goto LABEL_391;
      case 4:
        sub_239E95D48(&v1066, v104);
        v280 = v104 >> 2;
        sub_239E95D48(&v1060, v104 >> 2);
        if (v104 >= 4)
        {
          do
          {
            LODWORD(v1050) = 4;
            sub_239E73254(&v1060, &v1050);
            --v280;
          }

          while (v280);
        }

        if (v104)
        {
          v281 = 0;
          v282 = v92 + 2;
          do
          {
            LODWORD(v1050) = *(v282 - 2);
            sub_239E73254(&v1066, &v1050);
            LODWORD(v1050) = v282[1];
            sub_239E73254(&v1066, &v1050);
            LODWORD(v1050) = *v282;
            sub_239E73254(&v1066, &v1050);
            LODWORD(v1050) = *(v282 - 1);
            sub_239E73254(&v1066, &v1050);
            v282 += 4;
            v281 += 4;
          }

          while (v104 > v281);
        }

        break;
      case 5:
        v138 = objc_msgSend_topology(v943, v117, v118, v119, v124, v125, v126, v127, v120, v121, v122, v123);
        if (v138)
        {
          v143 = objc_msgSend_topology(v943, v131, v132, v133, v139, v140, v141, v142, v134, v135, v136, v137);
          v162 = objc_msgSend_faceTopology(v143, v144, v145, v146, v151, v152, v153, v154, v147, v148, v149, v150);
          if (v162)
          {
            v167 = objc_msgSend_topology(v943, v155, v156, v157, v163, v164, v165, v166, v158, v159, v160, v161);
            v179 = objc_msgSend_faceCount(v167, v168, v169, v170, v175, v176, v177, v178, v171, v172, v173, v174);

            if (!v179)
            {
              break;
            }

            v191 = objc_msgSend_topology(v943, v180, v181, v182, v187, v188, v189, v190, v183, v184, v185, v186);
            v203 = objc_msgSend_faceCount(v191, v192, v193, v194, v199, v200, v201, v202, v195, v196, v197, v198);
            sub_239E95D48(&v1060, v203);

            v215 = objc_msgSend_topology(v943, v204, v205, v206, v211, v212, v213, v214, v207, v208, v209, v210);
            v227 = objc_msgSend_faceTopology(v215, v216, v217, v218, v223, v224, v225, v226, v219, v220, v221, v222);
            v138 = objc_msgSend_map(v227, v228, v229, v230, v235, v236, v237, v238, v231, v232, v233, v234);

            v257 = objc_msgSend_bytes(v138, v239, v240, v241, v246, v247, v248, v249, v242, v243, v244, v245);
            for (i = 0; ; ++i)
            {
              v263 = objc_msgSend_topology(v943, v250, v251, v252, v258, v259, v260, v261, v253, v254, v255, v256);
              v275 = objc_msgSend_faceCount(v263, v264, v265, v266, v271, v272, v273, v274, v267, v268, v269, v270);

              if (v275 <= i)
              {
                break;
              }

              LODWORD(v1050) = *(v257 + i);
              sub_239E73254(&v1060, &v1050);
            }

            v283 = v1060;
            v284 = v1061;
            if (v1061 != v1060)
            {
              v285 = 0;
              v286 = 0;
              do
              {
                v287 = v283[v285];
                if (v287 >= 1)
                {
                  v288 = v287 + 1;
                  v289 = &v92[v287 - 1 + v286];
                  do
                  {
                    v290 = *v289--;
                    LODWORD(v1050) = v290;
                    sub_239E73254(&v1066, &v1050);
                    --v288;
                  }

                  while (v288 > 1);
                  v283 = v1060;
                  v284 = v1061;
                  LODWORD(v287) = v1060[v285];
                }

                v286 += v287;
                ++v285;
              }

              while (v285 < (v284 - v283) >> 2);
            }
          }

          else
          {
          }
        }

        break;
    }
  }

  else if (v116)
  {
    if (v116 == 1)
    {
      sub_239E95D48(&v1066, v104);
      v278 = v104 >> 1;
      sub_239E95D48(&v1060, v104 >> 1);
      if (v104 >= 2)
      {
        do
        {
          LODWORD(v1050) = 2;
          sub_239E73254(&v1060, &v1050);
          --v278;
        }

        while (v278);
      }

      for (; v104; --v104)
      {
        v279 = *v92++;
        LODWORD(v1050) = v279;
        sub_239E73254(&v1066, &v1050);
      }
    }

    else if (v116 == 2)
    {
      sub_239E95D48(&v1066, v104);
      v128 = v104 / 3;
      sub_239E95D48(&v1060, v104 / 3);
      if (v104 >= 3)
      {
        do
        {
          LODWORD(v1050) = 3;
          sub_239E73254(&v1060, &v1050);
          --v128;
        }

        while (v128);
      }

      if (v104)
      {
        v129 = 0;
        v130 = v92 + 1;
        do
        {
          LODWORD(v1050) = *(v130 - 1);
          sub_239E73254(&v1066, &v1050);
          LODWORD(v1050) = v130[1];
          sub_239E73254(&v1066, &v1050);
          LODWORD(v1050) = *v130;
          sub_239E73254(&v1066, &v1050);
          v129 += 3;
          v130 += 3;
        }

        while (v104 > v129);
      }
    }
  }

  else
  {
    sub_239E95D48(&v1066, v104);
    sub_239E95D48(&v1060, v104);
    if (v104)
    {
      v276 = v104;
      do
      {
        LODWORD(v1050) = 1;
        sub_239E73254(&v1060, &v1050);
        --v276;
      }

      while (v276);
      do
      {
        v277 = *v92++;
        LODWORD(v1050) = v277;
        sub_239E73254(&v1066, &v1050);
        --v104;
      }

      while (v104);
    }
  }

  sub_239EB2474(&v1063, v1067 - v1066);
  v291 = v1066;
  if (v1067 != v1066)
  {
    v292 = v1067 - v1066;
    v293 = v1063;
    if (v292 <= 1)
    {
      v292 = 1;
    }

    do
    {
      v294 = *v291++;
      *v293++ = v294;
      --v292;
    }

    while (v292);
  }

  v1058 = 0uLL;
  v1059 = 0;
  sub_239E552A0(&v1050, a3);
  v295 = std::string::append(&v1050, "_geo");
  v296 = *&v295->__r_.__value_.__l.__data_;
  v1059 = v295->__r_.__value_.__r.__words[2];
  v1058 = v296;
  v295->__r_.__value_.__l.__size_ = 0;
  v295->__r_.__value_.__r.__words[2] = 0;
  v295->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v1051) < 0)
  {
    operator delete(v1050);
  }

  v297 = 0;
  v298 = *MEMORY[0x277D82818];
  v300 = *(MEMORY[0x277D82818] + 64);
  v299 = *(MEMORY[0x277D82818] + 72);
  while (Alembic::Abc::v12::OObject::getChildHeader())
  {
    v1057 = 0;
    v1055 = 0u;
    memset(v1056, 0, sizeof(v1056));
    v1053 = 0u;
    v1054 = 0u;
    v1051 = 0u;
    memset(v1052, 0, sizeof(v1052));
    v1050 = 0u;
    sub_239EE76F8(&v1050);
    if (v1059 >= 0)
    {
      v301 = &v1058;
    }

    else
    {
      v301 = v1058;
    }

    if (v1059 >= 0)
    {
      v302 = HIBYTE(v1059);
    }

    else
    {
      v302 = *(&v1058 + 1);
    }

    v303 = sub_239E98B94(&v1051, v301, v302);
    MEMORY[0x23EE80140](v303, v297);
    std::stringbuf::str();
    if (SHIBYTE(v1059) < 0)
    {
      operator delete(v1058);
    }

    v1058 = v1026;
    v1059 = v1027;
    *&v1050 = v298;
    *(&v1050 + *(v298 - 24)) = v300;
    *&v1051 = v299;
    *(&v1051 + 1) = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v1054) < 0)
    {
      operator delete(*(&v1053 + 1));
    }

    *(&v1051 + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v1052);
    std::iostream::~basic_iostream();
    MEMORY[0x23EE80250](v1056);
    v297 = (v297 + 1);
  }

  bzero(&v1050, 0x398uLL);
  v1045 = *(a4 + 8);
  if (*(a4 + 39) < 0)
  {
    sub_239E5BAE0(&v1046, *(a4 + 16), *(a4 + 24));
  }

  else
  {
    v1046 = *(a4 + 16);
    v1047 = *(a4 + 32);
  }

  v305 = *(a4 + 40);
  v304 = *(a4 + 48);
  v1044 = MEMORY[0x277D867D0] + 16;
  v1048 = v305;
  v1049 = v304;
  if (v304)
  {
    atomic_fetch_add_explicit((v304 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v1026) = 0;
  DWORD2(v1026) = 0;
  LODWORD(__dst) = 0;
  DWORD2(__dst) = 0;
  LODWORD(v1010) = 0;
  LODWORD(v1011) = 0;
  sub_239F1056C(&v1050, &v1044, &v1058, &v1026, &__dst, &v1010);
  Alembic::Abc::v12::OObject::~OObject(&v1044);
  v1042 = 0u;
  v1043 = 0u;
  v1041 = 0u;
  memset(v1040, 0, sizeof(v1040));
  v1038 = 0u;
  v1039 = 0u;
  v1036 = 0u;
  v1037 = 0u;
  v1034 = 0u;
  v1035 = 0u;
  v1032 = 0u;
  v1033 = 0u;
  v1030 = 0u;
  v1031 = 0u;
  v1028 = 0u;
  v1029 = 0u;
  v1026 = 0u;
  v1027 = 0u;
  sub_239F0A9A4(&v1005, &v1069);
  sub_239F0ABA8(&v1022, &v1066);
  sub_239F0ABA8(v1019, &v1060);
  *&__dst = 0;
  *(&__dst + 1) = 0x20000000ALL;
  v995 = 0u;
  *v996 = 0u;
  *&v996[16] = 0x100000005;
  v997 = 0;
  v999 = 0;
  v998 = 0;
  v1000 = 127;
  v1010 = 0;
  v1011 = 0x30000000ALL;
  v1012 = 0u;
  v1013 = 0u;
  v1014 = 0x100000005;
  v1015 = 0;
  v1017 = 0;
  v1016 = 0;
  v1018 = 127;
  sub_239F117AC(&v1026, &v1005, &v1022, v1019, &__dst, &v1010);
  if (v1015)
  {
    v1016 = v1015;
    operator delete(v1015);
  }

  if (v1012)
  {
    *(&v1012 + 1) = v1012;
    operator delete(v1012);
  }

  if (v997)
  {
    v998 = v997;
    operator delete(v997);
  }

  if (v995)
  {
    *(&v995 + 1) = v995;
    operator delete(v995);
  }

  if (v1020)
  {
    v1021 = v1020;
    operator delete(v1020);
  }

  if (v1024)
  {
    v1025 = v1024;
    operator delete(v1024);
  }

  if (v1006.n128_u64[1])
  {
    v1007 = v1006.n128_i64[1];
    operator delete(v1006.n128_u64[1]);
  }

  v306 = v940;
  v307 = v943;
  v1023 = 0;
  v1022 = 0;
  v1024 = 0;
  v317 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v306, v308, @"normal", 786435, v313, v314, v315, v316, v309, v310, v311, v312);
  if (objc_msgSend_format(v317, v318, v319, v320, v325, v326, v327, v328, v321, v322, v323, v324))
  {
    v340 = objc_msgSend_dataStart(v317, v329, v330, v331, v336, v337, v338, v339, v332, v333, v334, v335);
    v359 = objc_msgSend_stride(v317, v341, v342, v343, v348, v349, v350, v351, v344, v345, v346, v347);
    v364 = 0;
    for (j = 0; j < objc_msgSend_vertexCount(v306, v352, v353, v354, v360, v361, v362, v363, v355, v356, v357, v358); ++j)
    {
      if (v364 + 12 <= objc_msgSend_bufferSize(v317, v366, v367, v368, v373, v374, v375, v376, v369, v370, v371, v372))
      {
        v377 = *(v340 + v364 + 8);
        *&__dst = *(v340 + v364);
        DWORD2(__dst) = v377;
        sub_239F11A3C(&v1022, &__dst);
      }

      v364 += v359;
    }

    sub_239F11A8C(&v1010, &v1022);
    sub_239F0B2D4(&v1005, &v1063);
    sub_239F11B3C(&__dst, &v1010, &v1005, 4);
    *(&v1040[4] + 13) = *(&__dst + 5);
    *(&v1040[4] + 1) = __dst;
    sub_239F077C0(&v1040[5] + 1, v995, *(&v995 + 1), (*(&v995 + 1) - v995) >> 3);
    *(&v1041 + 5) = *&v996[13];
    *&v1041 = *&v996[8];
    sub_239F077C0(&v1042, v997, v998, (v998 - v997) >> 3);
    DWORD2(v1043) = v1000;
    if (v997)
    {
      v998 = v997;
      operator delete(v997);
    }

    if (v995)
    {
      *(&v995 + 1) = v995;
      operator delete(v995);
    }

    if (v1006.n128_u64[1])
    {
      v1007 = v1006.n128_i64[1];
      operator delete(v1006.n128_u64[1]);
    }

    if (v1012)
    {
      *(&v1012 + 1) = v1012;
      operator delete(v1012);
    }
  }

  Alembic::AbcGeom::v12::OPolyMeshSchema::set();

  if (v1022)
  {
    v1023 = v1022;
    operator delete(v1022);
  }

  objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v306, v378, @"textureCoordinate", 786434, v383, v384, v385, v386, v379, v380, v381, v382);
  v945 = v387 = v941;
  if (objc_msgSend_format(v945, v388, v389, v390, v395, v396, v397, v398, v391, v392, v393, v394))
  {
    v1023 = 0;
    v1022 = 0;
    v1024 = 0;
    v410 = objc_msgSend_dataStart(v945, v399, v400, v401, v406, v407, v408, v409, v402, v403, v404, v405);
    v422 = objc_msgSend_stride(v945, v411, v412, v413, v418, v419, v420, v421, v414, v415, v416, v417);
    if (v941)
    {
      v434 = v422;
      v435 = 0;
      v436 = v941;
      do
      {
        if (v435 + 4 <= objc_msgSend_bufferSize(v945, v423, v424, v425, v430, v431, v432, v433, v426, v427, v428, v429))
        {
          v430.n128_u32[0] = *(v410 + v435);
          v431.n128_u32[0] = *(v410 + v435 + 4);
          *&__dst = __PAIR64__(v431.n128_u32[0], v430.n128_u32[0]);
          v437 = v1023;
          if (v1023 >= v1024)
          {
            v438 = sub_239F0B0A8(&v1022, &__dst);
          }

          else
          {
            *v1023 = v430.n128_u32[0];
            *(v437 + 1) = v431.n128_u32[0];
            v438 = v437 + 1;
          }

          v1023 = v438;
        }

        v435 += v434;
        --v436;
      }

      while (v436);
    }

    sub_239F0B230(&v1010, &v1022);
    sub_239F0B2D4(&v1005, &v1063);
    sub_239F0B378(&__dst, &v1010, &v1005, 4);
    *&v1039 = __dst;
    *(&v1039 + 5) = *(&__dst + 5);
    sub_239F077C0(v1040, v995, *(&v995 + 1), (*(&v995 + 1) - v995) >> 3);
    *(&v1040[1] + 1) = *&v996[8];
    *(&v1040[1] + 13) = *&v996[13];
    sub_239F077C0(&v1040[2] + 1, v997, v998, (v998 - v997) >> 3);
    LODWORD(v1040[4]) = v1000;
    if (v997)
    {
      v998 = v997;
      operator delete(v997);
    }

    if (v995)
    {
      *(&v995 + 1) = v995;
      operator delete(v995);
    }

    if (v1006.n128_u64[1])
    {
      v1007 = v1006.n128_i64[1];
      operator delete(v1006.n128_u64[1]);
    }

    if (v1012)
    {
      *(&v1012 + 1) = v1012;
      operator delete(v1012);
    }

    if (v1022)
    {
      v1023 = v1022;
      operator delete(v1022);
    }
  }

  sub_239F10340(&v1052[1] + 8, &v1005);
  v942 = v306;
  v448 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v306, v439, @"anisotropy", 786433, v444, v445, v446, v447, v440, v441, v442, v443);
  if (objc_msgSend_format(v448, v449, v450, v451, v456, v457, v458, v459, v452, v453, v454, v455))
  {
    v1003 = 0;
    __src = 0;
    v1004 = 0;
    v471 = objc_msgSend_dataStart(v448, v460, v461, v462, v467, v468, v469, v470, v463, v464, v465, v466);
    v483 = objc_msgSend_stride(v448, v472, v473, v474, v479, v480, v481, v482, v475, v476, v477, v478);
    if (v941)
    {
      v495 = v483;
      v496 = 0;
      v497 = v941;
      do
      {
        if (v496 + 4 <= objc_msgSend_bufferSize(v448, v484, v485, v486, v491, v492, v493, v494, v487, v488, v489, v490))
        {
          v498 = *(v471 + v496);
          v499 = v1003;
          if (v1003 >= v1004)
          {
            v501 = __src;
            v502 = v1003 - __src;
            v503 = (v1003 - __src) >> 2;
            v504 = v503 + 1;
            if ((v503 + 1) >> 62)
            {
              sub_239E797B4();
            }

            v505 = v1004 - __src;
            if ((v1004 - __src) >> 1 > v504)
            {
              v504 = v505 >> 1;
            }

            if (v505 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v506 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v506 = v504;
            }

            if (v506)
            {
              sub_239E79984(&__src, v506);
            }

            *(4 * v503) = v498;
            v500 = 4 * v503 + 4;
            memcpy(0, v501, v502);
            v507 = __src;
            __src = 0;
            v1003 = v500;
            v1004 = 0;
            if (v507)
            {
              operator delete(v507);
            }
          }

          else
          {
            *v1003 = v498;
            v500 = (v499 + 4);
          }

          v1003 = v500;
        }

        v496 += v495;
        --v497;
      }

      while (v497);
    }

    v989 = v1005;
    if (SHIBYTE(v1007) < 0)
    {
      sub_239E5BAE0(&v990, v1006.n128_u64[0], v1006.n128_u64[1]);
    }

    else
    {
      v508 = v1006;
      v990 = v1006;
      v991 = v1007;
    }

    v387 = v941;
    v992 = v1008;
    v993 = v1009;
    if (v1009)
    {
      atomic_fetch_add_explicit((v1009 + 8), 1uLL, memory_order_relaxed);
    }

    v509 = objc_msgSend_UTF8String(@"anisotropy", v484, v485, v486, v508, v492, v493, v494, v487, v488, v489, v490);
    sub_239E552A0(v987, v509);
    v985 = 0;
    v986 = 0;
    v983 = 0;
    v984 = 0;
    v981 = 0;
    v982 = 0;
    sub_239F0B42C(&__dst, &v989, v987, 1, 4, 1, &v985, &v983, &v981);
    sub_239F0D37C(&v1022, &__src);
    sub_239F0B2D4(v1019, &v1063);
    sub_239F0D420(&v1010, &v1022, v1019, 4);
    sub_239F07E40(&__dst, &v1010);
    if (v1015)
    {
      v1016 = v1015;
      operator delete(v1015);
    }

    if (v1012)
    {
      *(&v1012 + 1) = v1012;
      operator delete(v1012);
    }

    if (v1020)
    {
      v1021 = v1020;
      operator delete(v1020);
    }

    if (v1024)
    {
      v1025 = v1024;
      operator delete(v1024);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1001);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v999);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v995 + 8));
    if (SBYTE7(v995) < 0)
    {
      operator delete(__dst);
    }

    if (v988 < 0)
    {
      operator delete(v987[0]);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v989);
    if (__src)
    {
      v1003 = __src;
      operator delete(__src);
    }
  }

  v510 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v942, v460, @"binormal", 786435, v467, v468, v469, v470, v463, v464, v465, v466);

  if (objc_msgSend_format(v510, v511, v512, v513, v518, v519, v520, v521, v514, v515, v516, v517))
  {
    v1003 = 0;
    __src = 0;
    v1004 = 0;
    v533 = objc_msgSend_dataStart(v510, v522, v523, v524, v529, v530, v531, v532, v525, v526, v527, v528);
    v545 = objc_msgSend_stride(v510, v534, v535, v536, v541, v542, v543, v544, v537, v538, v539, v540);
    if (v387)
    {
      v557 = v545;
      v558 = 0;
      v559 = v387;
      do
      {
        if (v558 + 12 <= objc_msgSend_bufferSize(v510, v546, v547, v548, v553, v554, v555, v556, v549, v550, v551, v552))
        {
          v554.n128_u32[0] = *(v533 + v558);
          v555.n128_u32[0] = *(v533 + v558 + 4);
          v553.n128_u32[0] = *(v533 + v558 + 8);
          *&__dst = __PAIR64__(v555.n128_u32[0], v554.n128_u32[0]);
          DWORD2(__dst) = v553.n128_u32[0];
          v560 = v1003;
          if (v1003 >= v1004)
          {
            v561 = sub_239F08808(&__src, &__dst);
          }

          else
          {
            *v1003 = v554.n128_u32[0];
            *(v560 + 1) = v555.n128_u32[0];
            v561 = (v560 + 12);
            *(v560 + 2) = v553.n128_u32[0];
          }

          v1003 = v561;
        }

        v558 += v557;
        --v559;
      }

      while (v559);
    }

    v976 = v1005;
    if (SHIBYTE(v1007) < 0)
    {
      sub_239E5BAE0(&v977, v1006.n128_u64[0], v1006.n128_u64[1]);
    }

    else
    {
      v562 = v1006;
      v977 = v1006;
      v978 = v1007;
    }

    v979 = v1008;
    v980 = v1009;
    if (v1009)
    {
      atomic_fetch_add_explicit((v1009 + 8), 1uLL, memory_order_relaxed);
    }

    v563 = objc_msgSend_UTF8String(@"binormal", v546, v547, v548, v562, v554, v555, v556, v549, v550, v551, v552);
    sub_239E552A0(v987, v563);
    v985 = 0;
    v986 = 0;
    v983 = 0;
    v984 = 0;
    v981 = 0;
    v982 = 0;
    sub_239F0D4D4(&__dst, &v976, v987, 1, 4, 1, &v985, &v983, &v981);
    sub_239F0EAB4(&v1022, &__src);
    sub_239F0B2D4(v1019, &v1063);
    sub_239F0EB64(&v1010, &v1022, v1019, 4);
    sub_239F081B4(&__dst, &v1010);
    if (v1015)
    {
      v1016 = v1015;
      operator delete(v1015);
    }

    if (v1012)
    {
      *(&v1012 + 1) = v1012;
      operator delete(v1012);
    }

    if (v1020)
    {
      v1021 = v1020;
      operator delete(v1020);
    }

    if (v1024)
    {
      v1025 = v1024;
      operator delete(v1024);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1001);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v999);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v995 + 8));
    if (SBYTE7(v995) < 0)
    {
      operator delete(__dst);
    }

    if (v988 < 0)
    {
      operator delete(v987[0]);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v976);
    if (__src)
    {
      v1003 = __src;
      operator delete(__src);
    }
  }

  v564 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v942, v522, @"bitangent", 786435, v529, v530, v531, v532, v525, v526, v527, v528);

  if (objc_msgSend_format(v564, v565, v566, v567, v572, v573, v574, v575, v568, v569, v570, v571))
  {
    v1003 = 0;
    __src = 0;
    v1004 = 0;
    v587 = objc_msgSend_dataStart(v564, v576, v577, v578, v583, v584, v585, v586, v579, v580, v581, v582);
    v599 = objc_msgSend_stride(v564, v588, v589, v590, v595, v596, v597, v598, v591, v592, v593, v594);
    if (v387)
    {
      v611 = v599;
      v612 = 0;
      v613 = v387;
      do
      {
        if (v612 + 12 <= objc_msgSend_bufferSize(v564, v600, v601, v602, v607, v608, v609, v610, v603, v604, v605, v606))
        {
          v608.n128_u32[0] = *(v587 + v612);
          v609.n128_u32[0] = *(v587 + v612 + 4);
          v607.n128_u32[0] = *(v587 + v612 + 8);
          *&__dst = __PAIR64__(v609.n128_u32[0], v608.n128_u32[0]);
          DWORD2(__dst) = v607.n128_u32[0];
          v614 = v1003;
          if (v1003 >= v1004)
          {
            v615 = sub_239F08808(&__src, &__dst);
          }

          else
          {
            *v1003 = v608.n128_u32[0];
            *(v614 + 1) = v609.n128_u32[0];
            v615 = (v614 + 12);
            *(v614 + 2) = v607.n128_u32[0];
          }

          v1003 = v615;
        }

        v612 += v611;
        --v613;
      }

      while (v613);
    }

    v971 = v1005;
    if (SHIBYTE(v1007) < 0)
    {
      sub_239E5BAE0(&v972, v1006.n128_u64[0], v1006.n128_u64[1]);
    }

    else
    {
      v616 = v1006;
      v972 = v1006;
      v973 = v1007;
    }

    v974 = v1008;
    v975 = v1009;
    if (v1009)
    {
      atomic_fetch_add_explicit((v1009 + 8), 1uLL, memory_order_relaxed);
    }

    v617 = objc_msgSend_UTF8String(@"bitangent", v600, v601, v602, v616, v608, v609, v610, v603, v604, v605, v606);
    sub_239E552A0(v987, v617);
    v985 = 0;
    v986 = 0;
    v983 = 0;
    v984 = 0;
    v981 = 0;
    v982 = 0;
    sub_239F0D4D4(&__dst, &v971, v987, 1, 4, 1, &v985, &v983, &v981);
    sub_239F0EAB4(&v1022, &__src);
    sub_239F0B2D4(v1019, &v1063);
    sub_239F0EB64(&v1010, &v1022, v1019, 4);
    sub_239F081B4(&__dst, &v1010);
    if (v1015)
    {
      v1016 = v1015;
      operator delete(v1015);
    }

    if (v1012)
    {
      *(&v1012 + 1) = v1012;
      operator delete(v1012);
    }

    if (v1020)
    {
      v1021 = v1020;
      operator delete(v1020);
    }

    if (v1024)
    {
      v1025 = v1024;
      operator delete(v1024);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1001);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v999);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v995 + 8));
    if (SBYTE7(v995) < 0)
    {
      operator delete(__dst);
    }

    if (v988 < 0)
    {
      operator delete(v987[0]);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v971);
    if (__src)
    {
      v1003 = __src;
      operator delete(__src);
    }
  }

  v618 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v942, v576, @"tangent", 786435, v583, v584, v585, v586, v579, v580, v581, v582);

  if (objc_msgSend_format(v618, v619, v620, v621, v626, v627, v628, v629, v622, v623, v624, v625))
  {
    v1003 = 0;
    __src = 0;
    v1004 = 0;
    v641 = objc_msgSend_dataStart(v618, v630, v631, v632, v637, v638, v639, v640, v633, v634, v635, v636);
    v653 = objc_msgSend_stride(v618, v642, v643, v644, v649, v650, v651, v652, v645, v646, v647, v648);
    if (v387)
    {
      v665 = v653;
      v666 = 0;
      v667 = v387;
      do
      {
        if (v666 + 12 <= objc_msgSend_bufferSize(v618, v654, v655, v656, v661, v662, v663, v664, v657, v658, v659, v660))
        {
          v662.n128_u32[0] = *(v641 + v666);
          v663.n128_u32[0] = *(v641 + v666 + 4);
          v661.n128_u32[0] = *(v641 + v666 + 8);
          *&__dst = __PAIR64__(v663.n128_u32[0], v662.n128_u32[0]);
          DWORD2(__dst) = v661.n128_u32[0];
          v668 = v1003;
          if (v1003 >= v1004)
          {
            v669 = sub_239F08808(&__src, &__dst);
          }

          else
          {
            *v1003 = v662.n128_u32[0];
            *(v668 + 1) = v663.n128_u32[0];
            v669 = (v668 + 12);
            *(v668 + 2) = v661.n128_u32[0];
          }

          v1003 = v669;
        }

        v666 += v665;
        --v667;
      }

      while (v667);
    }

    v966 = v1005;
    if (SHIBYTE(v1007) < 0)
    {
      sub_239E5BAE0(&v967, v1006.n128_u64[0], v1006.n128_u64[1]);
    }

    else
    {
      v670 = v1006;
      v967 = v1006;
      v968 = v1007;
    }

    v969 = v1008;
    v970 = v1009;
    if (v1009)
    {
      atomic_fetch_add_explicit((v1009 + 8), 1uLL, memory_order_relaxed);
    }

    v671 = objc_msgSend_UTF8String(@"tangent", v654, v655, v656, v670, v662, v663, v664, v657, v658, v659, v660);
    sub_239E552A0(v987, v671);
    v985 = 0;
    v986 = 0;
    v983 = 0;
    v984 = 0;
    v981 = 0;
    v982 = 0;
    sub_239F0D4D4(&__dst, &v966, v987, 1, 4, 1, &v985, &v983, &v981);
    sub_239F0EAB4(&v1022, &__src);
    sub_239F0B2D4(v1019, &v1063);
    sub_239F0EB64(&v1010, &v1022, v1019, 4);
    sub_239F081B4(&__dst, &v1010);
    if (v1015)
    {
      v1016 = v1015;
      operator delete(v1015);
    }

    if (v1012)
    {
      *(&v1012 + 1) = v1012;
      operator delete(v1012);
    }

    if (v1020)
    {
      v1021 = v1020;
      operator delete(v1020);
    }

    if (v1024)
    {
      v1025 = v1024;
      operator delete(v1024);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1001);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v999);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v995 + 8));
    if (SBYTE7(v995) < 0)
    {
      operator delete(__dst);
    }

    if (v988 < 0)
    {
      operator delete(v987[0]);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v966);
    if (__src)
    {
      v1003 = __src;
      operator delete(__src);
    }
  }

  v672 = objc_msgSend_vertexAttributeDataForAttributeNamed_(v942, v630, @"occlusionValue", v632, v637, v638, v639, v640, v633, v634, v635, v636);

  if (!v672)
  {
    v745 = 0;
    goto LABEL_319;
  }

  if (!objc_msgSend_format(v672, v673, v674, v675, v680, v681, v682, v683, v676, v677, v678, v679))
  {
    v745 = v672;
    goto LABEL_319;
  }

  if ((objc_msgSend_format(v672, v673, v684, v675, v680, v681, v682, v683, v676, v677, v678, v679) & 0xF) == 1)
  {
    v694 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v942, v685, @"occlusionValue", 786433, v690, v691, v692, v693, v686, v687, v688, v689);

    if (objc_msgSend_format(v694, v695, v696, v697, v702, v703, v704, v705, v698, v699, v700, v701))
    {
      v1003 = 0;
      __src = 0;
      v1004 = 0;
      v707 = objc_msgSend_dataStart(v694, v673, v706, v675, v680, v681, v682, v683, v676, v677, v678, v679);
      v719 = objc_msgSend_stride(v694, v708, v709, v710, v715, v716, v717, v718, v711, v712, v713, v714);
      if (v387)
      {
        v731 = v719;
        v732 = 0;
        v733 = v941;
        do
        {
          if (v732 + 4 <= objc_msgSend_bufferSize(v694, v720, v721, v722, v727, v728, v729, v730, v723, v724, v725, v726))
          {
            v734 = *(v707 + v732);
            v735 = v1003;
            if (v1003 >= v1004)
            {
              v737 = __src;
              v738 = v1003 - __src;
              v739 = (v1003 - __src) >> 2;
              v740 = v739 + 1;
              if ((v739 + 1) >> 62)
              {
                sub_239E797B4();
              }

              v741 = v1004 - __src;
              if ((v1004 - __src) >> 1 > v740)
              {
                v740 = v741 >> 1;
              }

              if (v741 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v742 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v742 = v740;
              }

              if (v742)
              {
                sub_239E79984(&__src, v742);
              }

              *(4 * v739) = v734;
              v736 = 4 * v739 + 4;
              memcpy(0, v737, v738);
              v743 = __src;
              __src = 0;
              v1003 = v736;
              v1004 = 0;
              if (v743)
              {
                operator delete(v743);
              }
            }

            else
            {
              *v1003 = v734;
              v736 = (v735 + 4);
            }

            v1003 = v736;
          }

          v732 += v731;
          --v733;
        }

        while (v733);
      }

      v961 = v1005;
      if (SHIBYTE(v1007) < 0)
      {
        sub_239E5BAE0(&v962, v1006.n128_u64[0], v1006.n128_u64[1]);
      }

      else
      {
        v744 = v1006;
        v962 = v1006;
        v963 = v1007;
      }

      v387 = v941;
      v964 = v1008;
      v965 = v1009;
      if (v1009)
      {
        atomic_fetch_add_explicit((v1009 + 8), 1uLL, memory_order_relaxed);
      }

      v790 = objc_msgSend_UTF8String(@"occlusionValue", v720, v721, v722, v744, v728, v729, v730, v723, v724, v725, v726);
      sub_239E552A0(v987, v790);
      v985 = 0;
      v986 = 0;
      v983 = 0;
      v984 = 0;
      v981 = 0;
      v982 = 0;
      sub_239F0B42C(&__dst, &v961, v987, 1, 4, 1, &v985, &v983, &v981);
      sub_239F0D37C(&v1022, &__src);
      sub_239F0B2D4(v1019, &v1063);
      sub_239F0D420(&v1010, &v1022, v1019, 4);
      sub_239F07E40(&__dst, &v1010);
      if (v1015)
      {
        v1016 = v1015;
        operator delete(v1015);
      }

      if (v1012)
      {
        *(&v1012 + 1) = v1012;
        operator delete(v1012);
      }

      if (v1020)
      {
        v1021 = v1020;
        operator delete(v1020);
      }

      if (v1024)
      {
        v1025 = v1024;
        operator delete(v1024);
      }

      Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1001);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v999);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v995 + 8));
      if (SBYTE7(v995) < 0)
      {
        operator delete(__dst);
      }

      if (v988 < 0)
      {
        operator delete(v987[0]);
      }

      v789 = &v961;
LABEL_316:
      Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v789);
      if (__src)
      {
        v1003 = __src;
        operator delete(__src);
      }
    }
  }

  else
  {
    v694 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v942, v685, @"occlusionValue", 786434, v690, v691, v692, v693, v686, v687, v688, v689);

    if (objc_msgSend_format(v694, v746, v747, v748, v753, v754, v755, v756, v749, v750, v751, v752))
    {
      v1003 = 0;
      __src = 0;
      v1004 = 0;
      v758 = objc_msgSend_dataStart(v694, v673, v757, v675, v680, v681, v682, v683, v676, v677, v678, v679);
      v770 = objc_msgSend_stride(v694, v759, v760, v761, v766, v767, v768, v769, v762, v763, v764, v765);
      if (v387)
      {
        v782 = v770;
        v783 = 0;
        v784 = v387;
        do
        {
          if (v783 + 8 <= objc_msgSend_bufferSize(v694, v771, v772, v773, v778, v779, v780, v781, v774, v775, v776, v777))
          {
            v778.n128_u32[0] = *(v758 + v783);
            v779.n128_u32[0] = *(v758 + v783 + 4);
            *&__dst = __PAIR64__(v779.n128_u32[0], v778.n128_u32[0]);
            v785 = v1003;
            if (v1003 >= v1004)
            {
              v786 = sub_239F0B0A8(&__src, &__dst);
            }

            else
            {
              *v1003 = v778.n128_u32[0];
              *(v785 + 1) = v779.n128_u32[0];
              v786 = (v785 + 8);
            }

            v1003 = v786;
          }

          v783 += v782;
          --v784;
        }

        while (v784);
      }

      v956 = v1005;
      if (SHIBYTE(v1007) < 0)
      {
        sub_239E5BAE0(&v957, v1006.n128_u64[0], v1006.n128_u64[1]);
      }

      else
      {
        v787 = v1006;
        v957 = v1006;
        v958 = v1007;
      }

      v959 = v1008;
      v960 = v1009;
      if (v1009)
      {
        atomic_fetch_add_explicit((v1009 + 8), 1uLL, memory_order_relaxed);
      }

      v788 = objc_msgSend_UTF8String(@"occlusionValue", v771, v772, v773, v787, v779, v780, v781, v774, v775, v776, v777);
      sub_239E552A0(v987, v788);
      v985 = 0;
      v986 = 0;
      v983 = 0;
      v984 = 0;
      v981 = 0;
      v982 = 0;
      sub_239F0EC18(&__dst, &v956, v987, 1, 4, 1, &v985, &v983, &v981);
      sub_239F0B230(&v1022, &__src);
      sub_239F0B2D4(v1019, &v1063);
      sub_239F0B378(&v1010, &v1022, v1019, 4);
      sub_239F084DC(&__dst, &v1010);
      if (v1015)
      {
        v1016 = v1015;
        operator delete(v1015);
      }

      if (v1012)
      {
        *(&v1012 + 1) = v1012;
        operator delete(v1012);
      }

      if (v1020)
      {
        v1021 = v1020;
        operator delete(v1020);
      }

      if (v1024)
      {
        v1025 = v1024;
        operator delete(v1024);
      }

      Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1001);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v999);
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v995 + 8));
      if (SBYTE7(v995) < 0)
      {
        operator delete(__dst);
      }

      if (v988 < 0)
      {
        operator delete(v987[0]);
      }

      v789 = &v956;
      goto LABEL_316;
    }
  }

  v745 = v694;
LABEL_319:
  v791 = objc_msgSend_vertexAttributeDataForAttributeNamed_(v942, v673, @"color", v675, v680, v681, v682, v683, v676, v677, v678, v679);

  if (v791)
  {
    if (objc_msgSend_format(v791, v792, v793, v794, v799, v800, v801, v802, v795, v796, v797, v798))
    {
      if ((objc_msgSend_format(v791, v803, v804, v805, v810, v811, v812, v813, v806, v807, v808, v809) & 0xF) == 1)
      {
        v823 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v942, v814, @"color", 786433, v819, v820, v821, v822, v815, v816, v817, v818);

        if (objc_msgSend_format(v823, v824, v825, v826, v831, v832, v833, v834, v827, v828, v829, v830))
        {
          v1003 = 0;
          __src = 0;
          v1004 = 0;
          v846 = objc_msgSend_dataStart(v823, v835, v836, v837, v842, v843, v844, v845, v838, v839, v840, v841);
          v858 = objc_msgSend_stride(v823, v847, v848, v849, v854, v855, v856, v857, v850, v851, v852, v853);
          if (v387)
          {
            v870 = v858;
            v871 = 0;
            do
            {
              if (v871 + 4 <= objc_msgSend_bufferSize(v823, v859, v860, v861, v866, v867, v868, v869, v862, v863, v864, v865))
              {
                v872 = v387;
                v873 = *(v846 + v871);
                v874 = v1003;
                if (v1003 >= v1004)
                {
                  v876 = __src;
                  v877 = v1003 - __src;
                  v878 = (v1003 - __src) >> 2;
                  v879 = v878 + 1;
                  if ((v878 + 1) >> 62)
                  {
                    sub_239E797B4();
                  }

                  v880 = v1004 - __src;
                  if ((v1004 - __src) >> 1 > v879)
                  {
                    v879 = v880 >> 1;
                  }

                  if (v880 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v881 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v881 = v879;
                  }

                  if (v881)
                  {
                    sub_239E79984(&__src, v881);
                  }

                  *(4 * v878) = v873;
                  v875 = 4 * v878 + 4;
                  memcpy(0, v876, v877);
                  v882 = __src;
                  __src = 0;
                  v1003 = v875;
                  v1004 = 0;
                  if (v882)
                  {
                    operator delete(v882);
                  }
                }

                else
                {
                  *v1003 = v873;
                  v875 = (v874 + 4);
                }

                v1003 = v875;
                v387 = v872;
              }

              v871 += v870;
              --v387;
            }

            while (v387);
          }

          v951 = v1005;
          if (SHIBYTE(v1007) < 0)
          {
            sub_239E5BAE0(&v952, v1006.n128_u64[0], v1006.n128_u64[1]);
          }

          else
          {
            v883 = v1006;
            v952 = v1006;
            v953 = v1007;
          }

          v954 = v1008;
          v955 = v1009;
          if (v1009)
          {
            atomic_fetch_add_explicit((v1009 + 8), 1uLL, memory_order_relaxed);
          }

          v937 = objc_msgSend_UTF8String(@"color", v859, v860, v861, v883, v867, v868, v869, v862, v863, v864, v865);
          sub_239E552A0(v987, v937);
          v985 = 0;
          v986 = 0;
          v983 = 0;
          v984 = 0;
          v981 = 0;
          v982 = 0;
          sub_239F0B42C(&__dst, &v951, v987, 1, 4, 1, &v985, &v983, &v981);
          sub_239F0D37C(&v1022, &__src);
          sub_239F0B2D4(v1019, &v1063);
          sub_239F0D420(&v1010, &v1022, v1019, 4);
          sub_239F07E40(&__dst, &v1010);
          if (v1015)
          {
            v1016 = v1015;
            operator delete(v1015);
          }

          if (v1012)
          {
            *(&v1012 + 1) = v1012;
            operator delete(v1012);
          }

          if (v1020)
          {
            v1021 = v1020;
            operator delete(v1020);
          }

          if (v1024)
          {
            v1025 = v1024;
            operator delete(v1024);
          }

          Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1001);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v999);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v995 + 8));
          if (SBYTE7(v995) < 0)
          {
            operator delete(__dst);
          }

          if (v988 < 0)
          {
            operator delete(v987[0]);
          }

          v936 = &v951;
LABEL_387:
          Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v936);
          if (__src)
          {
            v1003 = __src;
            operator delete(__src);
          }
        }
      }

      else
      {
        v823 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v942, v814, @"color", 786435, v819, v820, v821, v822, v815, v816, v817, v818);

        if (objc_msgSend_format(v823, v884, v885, v886, v891, v892, v893, v894, v887, v888, v889, v890))
        {
          v1003 = 0;
          __src = 0;
          v1004 = 0;
          v906 = objc_msgSend_dataStart(v823, v895, v896, v897, v902, v903, v904, v905, v898, v899, v900, v901);
          v918 = objc_msgSend_stride(v823, v907, v908, v909, v914, v915, v916, v917, v910, v911, v912, v913);
          if (v387)
          {
            v930 = v918;
            v931 = 0;
            do
            {
              if (v931 + 12 <= objc_msgSend_bufferSize(v823, v919, v920, v921, v926, v927, v928, v929, v922, v923, v924, v925))
              {
                v927.n128_u32[0] = *(v906 + v931);
                v928.n128_u32[0] = *(v906 + v931 + 4);
                v926.n128_u32[0] = *(v906 + v931 + 8);
                *&__dst = __PAIR64__(v928.n128_u32[0], v927.n128_u32[0]);
                DWORD2(__dst) = v926.n128_u32[0];
                v932 = v1003;
                if (v1003 >= v1004)
                {
                  v933 = sub_239F08808(&__src, &__dst);
                }

                else
                {
                  *v1003 = v927.n128_u32[0];
                  *(v932 + 1) = v928.n128_u32[0];
                  v933 = (v932 + 12);
                  *(v932 + 2) = v926.n128_u32[0];
                }

                v1003 = v933;
              }

              v931 += v930;
              --v387;
            }

            while (v387);
          }

          v946 = v1005;
          if (SHIBYTE(v1007) < 0)
          {
            sub_239E5BAE0(&v947, v1006.n128_u64[0], v1006.n128_u64[1]);
          }

          else
          {
            v934 = v1006;
            v947 = v1006;
            v948 = v1007;
          }

          v949 = v1008;
          v950 = v1009;
          if (v1009)
          {
            atomic_fetch_add_explicit((v1009 + 8), 1uLL, memory_order_relaxed);
          }

          v935 = objc_msgSend_UTF8String(@"color", v919, v920, v921, v934, v927, v928, v929, v922, v923, v924, v925);
          sub_239E552A0(v987, v935);
          v985 = 0;
          v986 = 0;
          v983 = 0;
          v984 = 0;
          v981 = 0;
          v982 = 0;
          sub_239F0D4D4(&__dst, &v946, v987, 1, 4, 1, &v985, &v983, &v981);
          sub_239F0EAB4(&v1022, &__src);
          sub_239F0B2D4(v1019, &v1063);
          sub_239F0EB64(&v1010, &v1022, v1019, 4);
          sub_239F081B4(&__dst, &v1010);
          if (v1015)
          {
            v1016 = v1015;
            operator delete(v1015);
          }

          if (v1012)
          {
            *(&v1012 + 1) = v1012;
            operator delete(v1012);
          }

          if (v1020)
          {
            v1021 = v1020;
            operator delete(v1020);
          }

          if (v1024)
          {
            v1025 = v1024;
            operator delete(v1024);
          }

          Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1001);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v999);
          Alembic::Abc::v12::OArrayProperty::~OArrayProperty((&v995 + 8));
          if (SBYTE7(v995) < 0)
          {
            operator delete(__dst);
          }

          if (v988 < 0)
          {
            operator delete(v987[0]);
          }

          v936 = &v946;
          goto LABEL_387;
        }
      }
    }

    else
    {
      v823 = v791;
    }
  }

  else
  {
    v823 = 0;
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v1005);
  sub_239F11BF0(&v1026);
  *&v1050 = &unk_284D17428;
  sub_239F1169C(&v1052[1] + 8);
  Alembic::Abc::v12::OObject::~OObject(&v1050);
  if (SHIBYTE(v1059) < 0)
  {
    operator delete(v1058);
  }

LABEL_391:
  if (v1060)
  {
    v1061 = v1060;
    operator delete(v1060);
  }

  if (v1063)
  {
    v1064 = v1063;
    operator delete(v1063);
  }

  if (v1066)
  {
    v1067 = v1066;
    operator delete(v1066);
  }

  if (v1069)
  {
    v1070 = v1069;
    operator delete(v1069);
  }
}

void sub_239F05664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  v21 = *(v19 - 208);
  if (v21)
  {
    *(v19 - 200) = v21;
    operator delete(v21);
  }

  v22 = *(v19 - 184);
  if (v22)
  {
    *(v19 - 176) = v22;
    operator delete(v22);
  }

  v23 = *(v19 - 160);
  if (v23)
  {
    *(v19 - 152) = v23;
    operator delete(v23);
  }

  v24 = *(v19 - 136);
  if (v24)
  {
    *(v19 - 128) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239F05E7C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 2;
  v12 = (a1 + 8);
  sub_239E552A0((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_284D17468;
  sub_239F06C30(a1 + 56);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v13 = *(a2 + 8);
  __p[1] = 0;
  *&v37[0] = 0;
  __p[0] = &__p[1];
  LODWORD(v51) = v13;
  sub_239F07444(&v51 + 1, __p);
  LODWORD(v54) = 0;
  v53 = 0u;
  *(&v54 + 4) = 1;
  sub_239E91CE0(__p, __p[1]);
  sub_239F0669C(a4, &v51);
  sub_239F0669C(a5, &v51);
  sub_239F0669C(a6, &v51);
  *v12 = v51;
  v49 = v12;
  v50 = "OSchemaObject::OSchemaObject( OObject)";
  v15 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v15)
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    *__p = 0u;
    sub_239EE76F8(__p);
    sub_239E98B94(v37, "NULL Parent ObjectWriter in OSchemaObject ctor", 46);
    __str = 0u;
    __str_16 = 0u;
    std::stringbuf::str();
    sub_239F072EC(&__str, &v47);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v27 = sub_239F073B0(exception, &__str);
    __cxa_throw(v27, &unk_284D178C8, sub_239F06748);
  }

  v47 = 0uLL;
  v48 = 0;
  sub_239F07444(&v47, &v51 + 1);
  if (DWORD2(v54) == 1)
  {
    v16 = 1;
  }

  else
  {
    sub_239E552A0(__p, "schema");
    sub_239E552A0(&__str, "AbcGeom_Xform_v3");
    v40 = __p;
    v17 = sub_239F075C4(&v47, __p, &unk_239F9BFF0, &v40, &v39);
    std::string::operator=((v17 + 7), &__str);
    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }

    if (SBYTE7(v37[0]) < 0)
    {
      operator delete(__p[0]);
    }

    sub_239E552A0(__p, "schemaObjTitle");
    sub_239F0674C(&__str);
    v40 = __p;
    v18 = sub_239F075C4(&v47, __p, &unk_239F9BFF0, &v40, &v39);
    std::string::operator=((v18 + 7), &__str);
    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }

    if (SBYTE7(v37[0]) < 0)
    {
      operator delete(__p[0]);
    }

    v16 = 0;
  }

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  __str = 0u;
  __str_16 = 0u;
  sub_239F0771C(&__str, a3, &v47);
  (*(*v15 + 80))(__p, v15, &__str);
  v19 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v20 = *(a1 + 48);
  *(a1 + 40) = v19;
  if (v20)
  {
    sub_239E9A9B4(v20);
    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }
  }

  v21 = v53;
  if (*(&v53 + 1))
  {
    atomic_fetch_add_explicit((*(&v53 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v21)
  {
    (*(*v15 + 24))(__p, v15);
    v22 = (*(*__p[0] + 48))(__p[0], v21);
    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }
  }

  else
  {
    v22 = v54;
  }

  v41[1] = 0;
  v41[0] = 0;
  v40 = v41;
  if (DWORD2(v54) == 1)
  {
    sub_239E552A0(__p, "replace");
    sub_239E552A0(&v39, "1");
    v32 = __p;
    v23 = sub_239F075C4(&v40, __p, &unk_239F9BFF0, &v32, v31);
    std::string::operator=((v23 + 7), &v39);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v37[0]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(**(a1 + 40) + 40))(&v34);
  sub_239E552A0(&v39, ".xform");
  v24 = *v12;
  LODWORD(v32) = 1;
  v33 = v24;
  v31[0] = 2;
  v31[2] = v22;
  v29 = 3;
  v30 = &v40;
  v28[0] = 6;
  v28[2] = v16;
  MEMORY[0x23EE7F0C0](__p, &v34, &v39, &v32, v31, &v29, v28);
  sub_239F0682C(a1 + 56, __p);
  sub_239F079E8(__p);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v35)
  {
    sub_239E9A9B4(v35);
  }

  sub_239E91CE0(&v40, v41[0]);
  if (*(&v21 + 1))
  {
    sub_239E9A9B4(*(&v21 + 1));
  }

  sub_239E91CE0(&v45, *(&v45 + 1));
  if (SHIBYTE(v44) < 0)
  {
    operator delete(*(&__str_16 + 1));
  }

  if (SBYTE7(__str_16) < 0)
  {
    operator delete(__str);
  }

  sub_239E91CE0(&v47, *(&v47 + 1));
  if (v14)
  {
    sub_239E9A9B4(v14);
  }

  if (*(&v53 + 1))
  {
    sub_239E9A9B4(*(&v53 + 1));
  }

  sub_239E91CE0(&v51 + 8, v52);
  return a1;
}

void sub_239F06450(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(__p, a18);
  sub_239F0740C((v20 - 256));
  sub_239EB746C(__p);
  if (v19)
  {
    sub_239E9A9B4(v19);
  }

  v23 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v24 = v23;
    sub_239F07AA4(v18 + 56);
    sub_239F07B3C(v18);
    sub_239F06B1C((v20 - 160), v24);
  }

  else
  {
    sub_239F07AA4(v18 + 56);
    sub_239F07B3C(v18);
    sub_239F06AAC((v20 - 160), 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x239F06364);
}

void sub_239F06620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 233) < 0)
  {
    operator delete(*(v24 - 256));
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  JUMPOUT(0x239F0656CLL);
}

void sub_239F06678(_Unwind_Exception *a1)
{
  sub_239F06B8C(v2 - 144);
  sub_239F079E8(v1 + 7);
  Alembic::Abc::v12::OObject::~OObject(v1);
  _Unwind_Resume(a1);
}

void sub_239F0669C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 > 3)
  {
    switch(v2)
    {
      case 4:
        v4 = *(a1 + 8);
        v6 = *v4;
        v5 = v4[1];
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
        }

        v7 = *(a2 + 40);
        *(a2 + 32) = v6;
        *(a2 + 40) = v5;
        if (v7)
        {
          sub_239E9A9B4(v7);
        }

        break;
      case 5:
        *(a2 + 52) = *(a1 + 8);
        break;
      case 6:
        *(a2 + 56) = *(a1 + 8);
        break;
    }
  }

  else
  {
    switch(v2)
    {
      case 1:
        *a2 = *(a1 + 8);
        break;
      case 2:
        *(a2 + 48) = *(a1 + 8);
        break;
      case 3:
        v3 = *(a1 + 8);
        if (a2 + 8 != v3)
        {
          sub_239F06E50((a2 + 8), *v3, (v3 + 8));
        }

        break;
    }
  }
}

void sub_239F0674C(std::string *a1@<X8>)
{
  sub_239E552A0(&v5, ":");
  v2 = std::string::insert(&v5, 0, "AbcGeom_Xform_v3");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v6.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v6.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v6, ".xform");
  *a1 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_239F067F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F0682C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  if (v6)
  {
    sub_239E9A9B4(v6);
  }

  v7 = *(a2 + 56);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 56) = v7;
  if (a1 != a2)
  {
    sub_239F077C0((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 3);
  }

  *(a1 + 112) = *(a2 + 112);
  std::string::operator=((a1 + 120), (a2 + 120));
  v9 = *(a2 + 144);
  v8 = *(a2 + 152);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 152);
  *(a1 + 144) = v9;
  *(a1 + 152) = v8;
  if (v10)
  {
    sub_239E9A9B4(v10);
  }

  v11 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v12 = *(a1 + 168);
  *(a1 + 160) = v11;
  if (v12)
  {
    sub_239E9A9B4(v12);
  }

  v13 = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v14 = *(a1 + 184);
  *(a1 + 176) = v13;
  if (v14)
  {
    sub_239E9A9B4(v14);
  }

  *(a1 + 192) = *(a2 + 192);
  std::string::operator=((a1 + 200), (a2 + 200));
  v16 = *(a2 + 224);
  v15 = *(a2 + 232);
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 232);
  *(a1 + 224) = v16;
  *(a1 + 232) = v15;
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  *(a1 + 240) = *(a2 + 240);
  std::string::operator=((a1 + 248), (a2 + 248));
  v19 = *(a2 + 272);
  v18 = *(a2 + 280);
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(a1 + 280);
  *(a1 + 272) = v19;
  *(a1 + 280) = v18;
  if (v20)
  {
    sub_239E9A9B4(v20);
  }

  *(a1 + 288) = *(a2 + 288);
  sub_239F07928((a1 + 296));
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  std::string::operator=((a1 + 352), (a2 + 352));
  v22 = *(a2 + 376);
  v21 = *(a2 + 384);
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = *(a1 + 384);
  *(a1 + 376) = v22;
  *(a1 + 384) = v21;
  if (v23)
  {
    sub_239E9A9B4(v23);
  }

  *(a1 + 392) = *(a2 + 392);
  std::string::operator=((a1 + 400), (a2 + 400));
  v25 = *(a2 + 424);
  v24 = *(a2 + 432);
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  v26 = *(a1 + 432);
  *(a1 + 424) = v25;
  *(a1 + 432) = v24;
  if (v26)
  {
    sub_239E9A9B4(v26);
  }

  v27 = *(a2 + 440);
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  v28 = *(a1 + 448);
  *(a1 + 440) = v27;
  if (v28)
  {
    sub_239E9A9B4(v28);
  }

  return a1;
}

uint64_t sub_239F06A5C(uint64_t a1)
{
  sub_239E91CE0(a1 + 48, *(a1 + 56));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F06AAC(uint64_t *a1, uint64_t a2)
{
  sub_239E552A0(&__p, a1[1]);
  Alembic::Abc::v12::ErrorHandler::operator()();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_239F06B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F06B1C(uint64_t *a1, uint64_t a2)
{
  sub_239E552A0(&__p, a1[1]);
  Alembic::Abc::v12::ErrorHandler::operator()();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_239F06B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F06B8C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  sub_239E91CE0(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_239F06BC8(void **a1)
{
  *a1 = &unk_284D17468;
  sub_239F079E8(a1 + 7);
  Alembic::Abc::v12::OObject::~OObject(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239F06C30(uint64_t a1)
{
  *(a1 + 8) = 2;
  sub_239E552A0((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_284D173B0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 127;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 2;
  sub_239E552A0((a1 + 120), "");
  *(a1 + 192) = 2;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 144) = 0u;
  sub_239E552A0((a1 + 200), "");
  *(a1 + 240) = 2;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  sub_239E552A0((a1 + 248), "");
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  Alembic::AbcGeom::v12::XformSample::XformSample((a1 + 288));
  *(a1 + 336) = 1;
  *(a1 + 344) = 2;
  sub_239E552A0((a1 + 352), "");
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2;
  sub_239E552A0((a1 + 400), "");
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 336) = 1;
  return a1;
}

void sub_239F06D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v10 + 43));
  a10 = v10 + 37;
  sub_239F11CE8(&a10);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v14);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v13);
  v17 = v10[23];
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  v18 = v10[21];
  if (v18)
  {
    sub_239E9A9B4(v18);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v12);
  v19 = *v15;
  if (*v15)
  {
    v10[12] = v19;
    operator delete(v19);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v11);
  _Unwind_Resume(a1);
}

void sub_239F06E18(void **a1)
{
  sub_239F079E8(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t **sub_239F06E50(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_239F07060(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          v16 = 0;
          v10 = sub_239F06FE4(v5, &v16, v15 + 4);
          sub_239E5B7B4(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_239F07060(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_239F070B4(&v13);
  }

  if (a2 != a3)
  {
    sub_239F0710C(v5);
  }

  return result;
}

void *sub_239F06FE4(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!sub_239E5BA74(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *sub_239F07060(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_239F070B4(uint64_t a1)
{
  sub_239E91CE0(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_239E91CE0(*a1, v2);
  }

  return a1;
}

void sub_239F0710C(uint64_t **a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  sub_239F07194();
}

void sub_239F07180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239F0720C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239F0720C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_239E91D3C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_239F07258(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_239E5BAE0(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_239F072D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F072EC(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_239E5BAE0((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v3;
  }

  *a1 = &unk_284D17400;
  return a1;
}

void sub_239F0735C(std::exception *a1)
{
  sub_239F0740C(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239F07394(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void *sub_239F073B0(void *a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v3 = (a2 + 8);
  v4 = v5;
  if (v3[23] < 0)
  {
    v3 = v4;
  }

  sub_239E552A0(a1 + 1, v3);
  *a1 = &unk_284D17400;
  return a1;
}

std::exception *sub_239F0740C(std::exception *a1)
{
  std::exception::~exception(a1);
  if (*(v2 + 31) < 0)
  {
    operator delete(a1[1].__vftable);
  }

  return a1;
}

void *sub_239F07444(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_239F0749C(a1, *a2, a2 + 1);
  return a1;
}

const void *sub_239F0749C(const void *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_239F07524(v5, (v5 + 8), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

const void *sub_239F07524(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_239E5BD88(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_239F07194();
  }

  return v3;
}

void *sub_239F075C4(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_239E5B718(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_239F07678();
  }

  return v5;
}

void *sub_239F0771C(void *__dst, __int128 *a2, const void ***a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  sub_239E552A0(__dst + 3, "");
  sub_239F07444(__dst + 6, a3);
  return __dst;
}

void sub_239F0778C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_239F077C0(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_239F078EC(v6, v10);
    }

    sub_239E797B4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_239F078EC(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_239E95BB4(a1, a2);
  }

  sub_239E797B4();
}

void sub_239F07928(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 56;
        sub_239F07994(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_239F07994(uint64_t a1, uint64_t a2)
{
  sub_239E79AAC(a2 + 32, *(a2 + 40));
  v3 = *(a2 + 8);
  if (v3)
  {
    *(a2 + 16) = v3;

    operator delete(v3);
  }
}

void **sub_239F079E8(void **a1)
{
  *a1 = &unk_284D173B0;
  v2 = a1[56];
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 49));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 43));
  v7 = a1 + 37;
  sub_239F11CE8(&v7);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 30));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 24));
  v3 = a1[23];
  if (v3)
  {
    sub_239E9A9B4(v3);
  }

  v4 = a1[21];
  if (v4)
  {
    sub_239E9A9B4(v4);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 14));
  v5 = a1[11];
  if (v5)
  {
    a1[12] = v5;
    operator delete(v5);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 1));
  return a1;
}

void sub_239F07AA4(uint64_t a1)
{
  sub_239F07B88(a1 + 112);
  sub_239F07B88(a1 + 192);
  v2 = *(a1 + 168);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  v3 = *(a1 + 184);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  if (v3)
  {
    sub_239E9A9B4(v3);
  }

  Alembic::AbcGeom::v12::XformSample::reset((a1 + 288));
  v4 = *(a1 + 448);
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  if (v4)
  {
    sub_239E9A9B4(v4);
  }

  sub_239F07B88(a1 + 344);
  sub_239F07B88(a1 + 392);
  *(a1 + 72) = 0;
  *(a1 + 336) = 1;

  sub_239F07B88(a1 + 8);
}

void sub_239F07B3C(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  JUMPOUT(0x23EE7FFA0);
}

void sub_239F07B88(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  JUMPOUT(0x23EE7FFA0);
}

void *sub_239F07BD4(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

_BYTE *sub_239F07C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1 + 8;
  v22 = "OGeomBaseSchema::getArbGeomParams()";
  v4 = *(a1 + 183);
  if (v4 < 0)
  {
    if (!*(a1 + 168))
    {
      goto LABEL_5;
    }
  }

  else if (!*(a1 + 183))
  {
LABEL_5:
    if (*(a1 + 184))
    {
      goto LABEL_17;
    }
  }

  v5 = *(a1 + 48);
  v15 = *(a1 + 40);
  v16 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_239E552A0(__p, ".arbGeomParams");
  v12[0] = 0;
  v12[2] = 0;
  v11[0] = 0;
  v11[2] = 0;
  MEMORY[0x23EE7EFD0](&v17, &v15, __p, v12, v11);
  *(a1 + 152) = v17;
  std::string::operator=((a1 + 160), &v18);
  v7 = v19;
  v6 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 192);
  *(a1 + 184) = v7;
  *(a1 + 192) = v6;
  if (v8)
  {
    sub_239E9A9B4(v8);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v17);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    sub_239E9A9B4(v16);
  }

  LOBYTE(v4) = *(a1 + 183);
LABEL_17:
  *a2 = *(a1 + 152);
  result = (a2 + 8);
  if ((v4 & 0x80) != 0)
  {
    result = sub_239E5BAE0(result, *(a1 + 160), *(a1 + 168));
  }

  else
  {
    *result = *(a1 + 160);
    *(a2 + 24) = *(a1 + 176);
  }

  v10 = *(a1 + 192);
  *(a2 + 32) = *(a1 + 184);
  *(a2 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_239F07D74(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  v25 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_239F06B1C((v23 - 48), v25);
  }

  else
  {
    sub_239F06AAC((v23 - 48), 0);
  }

  __cxa_end_catch();
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *v22 = 0u;
  *v22 = 2;
  sub_239E552A0((v22 + 8), "");
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  JUMPOUT(0x239F07D60);
}

void sub_239F07E40(uint64_t a1, void *a2)
{
  v25 = a1 + 24;
  v26 = "OTypedGeomParam::set()";
  if (!Alembic::Abc::v12::OArrayProperty::getNumSamples((a1 + 24)))
  {
    Alembic::Abc::v12::OArrayProperty::set();
    if (*(a1 + 120) == 1)
    {
      Alembic::Abc::v12::OArrayProperty::set();
    }

    return;
  }

  v20 = *(a1 + 24);
  if (*(a1 + 55) < 0)
  {
    sub_239E5BAE0(&v21, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
  }

  v4 = *(a1 + 64);
  v23 = *(a1 + 56);
  v24 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 5);
  *v16 = *a2;
  *&v16[5] = v5;
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_239F0AB2C(&__p, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  if (SHIBYTE(v22) < 0)
  {
    if (*(&v21 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (HIBYTE(v22))
  {
    goto LABEL_19;
  }

  if (v23)
  {
    if (*&v16[8] == 127 || !*v16 && v18 == __p)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v20);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set();
    }
  }

LABEL_19:
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v20);
  if (*(a1 + 120) == 1)
  {
    v11 = *(a1 + 72);
    if (*(a1 + 103) < 0)
    {
      sub_239E5BAE0(&v12, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      v12 = *(a1 + 80);
      v13 = *(a1 + 96);
    }

    v6 = *(a1 + 112);
    v14 = *(a1 + 104);
    v15 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *v7 = a2[5];
    *&v7[5] = *(a2 + 45);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_239F0AB2C(&v8, a2[7], a2[8], (a2[8] - a2[7]) >> 3);
    if (SHIBYTE(v13) < 0)
    {
      if (!*(&v12 + 1))
      {
        goto LABEL_31;
      }
    }

    else if (!HIBYTE(v13))
    {
LABEL_31:
      if (v14)
      {
        if (*&v7[8] == 127 || !*v7 && v9 == v8)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v11);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set();
        }
      }
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v11);
  }
}

void sub_239F0809C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a14);
  v27 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v28 = v27;
    sub_239F09F34(v23);
    sub_239F06B1C((v24 - 48), v28);
  }

  else
  {
    sub_239F09F34(v23);
    sub_239F06AAC((v24 - 48), 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x239F08088);
}

uint64_t sub_239F08168(uint64_t a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 128));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 72));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F081B4(uint64_t a1, void *a2)
{
  v25 = a1 + 24;
  v26 = "OTypedGeomParam::set()";
  if (!Alembic::Abc::v12::OArrayProperty::getNumSamples((a1 + 24)))
  {
    Alembic::Abc::v12::OArrayProperty::set();
    if (*(a1 + 120) == 1)
    {
      Alembic::Abc::v12::OArrayProperty::set();
    }

    return;
  }

  v20 = *(a1 + 24);
  if (*(a1 + 55) < 0)
  {
    sub_239E5BAE0(&v21, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
  }

  v4 = *(a1 + 64);
  v23 = *(a1 + 56);
  v24 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 5);
  *v16 = *a2;
  *&v16[5] = v5;
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_239F0AB2C(&__p, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  if (SHIBYTE(v22) < 0)
  {
    if (*(&v21 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (HIBYTE(v22))
  {
    goto LABEL_19;
  }

  if (v23)
  {
    if (*&v16[8] == 127 || !*v16 && v18 == __p)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v20);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set();
    }
  }

LABEL_19:
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v20);
  if (*(a1 + 120) == 1)
  {
    v11 = *(a1 + 72);
    if (*(a1 + 103) < 0)
    {
      sub_239E5BAE0(&v12, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      v12 = *(a1 + 80);
      v13 = *(a1 + 96);
    }

    v6 = *(a1 + 112);
    v14 = *(a1 + 104);
    v15 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *v7 = a2[5];
    *&v7[5] = *(a2 + 45);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_239F0AB2C(&v8, a2[7], a2[8], (a2[8] - a2[7]) >> 3);
    if (SHIBYTE(v13) < 0)
    {
      if (!*(&v12 + 1))
      {
        goto LABEL_31;
      }
    }

    else if (!HIBYTE(v13))
    {
LABEL_31:
      if (v14)
      {
        if (*&v7[8] == 127 || !*v7 && v9 == v8)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v11);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set();
        }
      }
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v11);
  }
}

void sub_239F08410(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a14);
  v27 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v28 = v27;
    sub_239F09F34(v23);
    sub_239F06B1C((v24 - 48), v28);
  }

  else
  {
    sub_239F09F34(v23);
    sub_239F06AAC((v24 - 48), 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x239F083FCLL);
}

void sub_239F084DC(uint64_t a1, void *a2)
{
  v25 = a1 + 24;
  v26 = "OTypedGeomParam::set()";
  if (!Alembic::Abc::v12::OArrayProperty::getNumSamples((a1 + 24)))
  {
    Alembic::Abc::v12::OArrayProperty::set();
    if (*(a1 + 120) == 1)
    {
      Alembic::Abc::v12::OArrayProperty::set();
    }

    return;
  }

  v20 = *(a1 + 24);
  if (*(a1 + 55) < 0)
  {
    sub_239E5BAE0(&v21, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
  }

  v4 = *(a1 + 64);
  v23 = *(a1 + 56);
  v24 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 5);
  *v16 = *a2;
  *&v16[5] = v5;
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_239F0AB2C(&__p, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  if (SHIBYTE(v22) < 0)
  {
    if (*(&v21 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (HIBYTE(v22))
  {
    goto LABEL_19;
  }

  if (v23)
  {
    if (*&v16[8] == 127 || !*v16 && v18 == __p)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v20);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set();
    }
  }

LABEL_19:
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v20);
  if (*(a1 + 120) == 1)
  {
    v11 = *(a1 + 72);
    if (*(a1 + 103) < 0)
    {
      sub_239E5BAE0(&v12, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      v12 = *(a1 + 80);
      v13 = *(a1 + 96);
    }

    v6 = *(a1 + 112);
    v14 = *(a1 + 104);
    v15 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *v7 = a2[5];
    *&v7[5] = *(a2 + 45);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_239F0AB2C(&v8, a2[7], a2[8], (a2[8] - a2[7]) >> 3);
    if (SHIBYTE(v13) < 0)
    {
      if (!*(&v12 + 1))
      {
        goto LABEL_31;
      }
    }

    else if (!HIBYTE(v13))
    {
LABEL_31:
      if (v14)
      {
        if (*&v7[8] == 127 || !*v7 && v9 == v8)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v11);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set();
        }
      }
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v11);
  }
}

void sub_239F08738(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a14);
  v27 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v28 = v27;
    sub_239F09F34(v23);
    sub_239F06B1C((v24 - 48), v28);
  }

  else
  {
    sub_239F09F34(v23);
    sub_239F06AAC((v24 - 48), 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x239F08724);
}

uint64_t sub_239F08808(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    sub_239E95B5C(a1, v6);
  }

  v7 = 12 * v2;
  __p = 0;
  v11 = v7;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  v12 = 12 * v2 + 12;
  v13 = 0;
  sub_239EE8DF8(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 12) % 0xCuLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_239F08930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F08980(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 2;
  v12 = (a1 + 8);
  sub_239E552A0((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_284D17488;
  sub_239F096B0(a1 + 56);
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v13 = *(a2 + 8);
  __p[1] = 0;
  *&v38[0] = 0;
  __p[0] = &__p[1];
  LODWORD(v51) = v13;
  sub_239F07444(&v51 + 1, __p);
  LODWORD(v54) = 0;
  v53 = 0u;
  *(&v54 + 4) = 1;
  sub_239E91CE0(__p, __p[1]);
  sub_239F0669C(a4, &v51);
  sub_239F0669C(a5, &v51);
  sub_239F0669C(a6, &v51);
  *v12 = v51;
  v49 = v12;
  v50 = "OSchemaObject::OSchemaObject( OObject)";
  v15 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v15)
  {
    v39 = 0;
    *__p = 0u;
    memset(v38, 0, sizeof(v38));
    sub_239EE76F8(__p);
    sub_239E98B94(v38, "NULL Parent ObjectWriter in OSchemaObject ctor", 46);
    __str_16 = 0u;
    __str = 0u;
    std::stringbuf::str();
    sub_239F072EC(&__str, &v47);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v27 = sub_239F073B0(exception, &__str);
    __cxa_throw(v27, &unk_284D178C8, sub_239F06748);
  }

  v47 = 0uLL;
  v48 = 0;
  sub_239F07444(&v47, &v51 + 1);
  if (DWORD2(v54) == 1)
  {
    v16 = 1;
  }

  else
  {
    sub_239E552A0(__p, "schema");
    sub_239E552A0(&__str, "AbcGeom_SubD_v1");
    v40 = __p;
    v17 = sub_239F075C4(&v47, __p, &unk_239F9BFF0, &v40, v33);
    std::string::operator=((v17 + 7), &__str);
    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }

    if (SBYTE7(v38[0]) < 0)
    {
      operator delete(__p[0]);
    }

    sub_239E552A0(__p, "schemaObjTitle");
    sub_239F09178(&__str);
    v40 = __p;
    v18 = sub_239F075C4(&v47, __p, &unk_239F9BFF0, &v40, v33);
    std::string::operator=((v18 + 7), &__str);
    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }

    if (SBYTE7(v38[0]) < 0)
    {
      operator delete(__p[0]);
    }

    sub_239E552A0(__p, "schemaBaseType");
    sub_239E552A0(&__str, "AbcGeom_GeomBase_v1");
    v40 = __p;
    v19 = sub_239F075C4(&v47, __p, &unk_239F9BFF0, &v40, v33);
    std::string::operator=((v19 + 7), &__str);
    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }

    if (SBYTE7(v38[0]) < 0)
    {
      operator delete(__p[0]);
    }

    v16 = 0;
  }

  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  __str_16 = 0u;
  __str = 0u;
  sub_239F0771C(&__str, a3, &v47);
  (*(*v15 + 80))(__p, v15, &__str);
  v20 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v21 = *(a1 + 48);
  *(a1 + 40) = v20;
  if (v21)
  {
    sub_239E9A9B4(v21);
    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }
  }

  v22 = v53;
  if (*(&v53 + 1))
  {
    atomic_fetch_add_explicit((*(&v53 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v22)
  {
    (*(*v15 + 24))(__p, v15);
    v23 = (*(*__p[0] + 48))(__p[0], v22);
    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }
  }

  else
  {
    v23 = v54;
  }

  v41[1] = 0;
  v41[0] = 0;
  v40 = v41;
  (*(**(a1 + 40) + 40))(&v35);
  sub_239E552A0(v33, ".geom");
  v24 = *v12;
  v32[0] = 1;
  v32[2] = v24;
  v31[0] = 2;
  v31[2] = v23;
  v29 = 3;
  v30 = &v40;
  v28[0] = 6;
  v28[2] = v16;
  MEMORY[0x23EE7F070](__p, &v35, v33, v32, v31, &v29, v28);
  sub_239F09258(a1 + 56, __p);
  sub_239F0A868(__p);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36)
  {
    sub_239E9A9B4(v36);
  }

  sub_239E91CE0(&v40, v41[0]);
  if (*(&v22 + 1))
  {
    sub_239E9A9B4(*(&v22 + 1));
  }

  sub_239E91CE0(&v45, *(&v45 + 1));
  if (SHIBYTE(v44) < 0)
  {
    operator delete(*(&__str_16 + 1));
  }

  if (SBYTE7(__str_16) < 0)
  {
    operator delete(__str);
  }

  sub_239E91CE0(&v47, *(&v47 + 1));
  if (v14)
  {
    sub_239E9A9B4(v14);
  }

  if (*(&v53 + 1))
  {
    sub_239E9A9B4(*(&v53 + 1));
  }

  sub_239E91CE0(&v51 + 8, v52);
  return a1;
}

void sub_239F08F5C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(__p, a22);
  sub_239F0740C(&STACK[0x520]);
  sub_239EB746C(__p);
  if (v23)
  {
    sub_239E9A9B4(v23);
  }

  v27 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v28 = v27;
    sub_239F09B88(v22 + 56);
    sub_239F07B3C(v22);
    sub_239F06B1C((v24 - 176), v28);
  }

  else
  {
    sub_239F09B88(v22 + 56);
    sub_239F07B3C(v22);
    sub_239F06AAC((v24 - 176), 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x239F08E6CLL);
}

void sub_239F09154(_Unwind_Exception *a1)
{
  sub_239F06B8C(v2 - 160);
  sub_239F0A868(v1 + 56);
  Alembic::Abc::v12::OObject::~OObject(v1);
  _Unwind_Resume(a1);
}

void sub_239F09178(std::string *a1@<X8>)
{
  sub_239E552A0(&v5, ":");
  v2 = std::string::insert(&v5, 0, "AbcGeom_SubD_v1");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v6.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v6.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v6, ".geom");
  *a1 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_239F09224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F09258(uint64_t a1, uint64_t a2)
{
  sub_239F0A5BC(a1, a2);
  *(a1 + 248) = *(a2 + 248);
  std::string::operator=((a1 + 256), (a2 + 256));
  v5 = *(a2 + 280);
  v4 = *(a2 + 288);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 288);
  *(a1 + 280) = v5;
  *(a1 + 288) = v4;
  if (v6)
  {
    sub_239E9A9B4(v6);
  }

  *(a1 + 296) = *(a2 + 296);
  std::string::operator=((a1 + 304), (a2 + 304));
  v8 = *(a2 + 328);
  v7 = *(a2 + 336);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 336);
  *(a1 + 328) = v8;
  *(a1 + 336) = v7;
  if (v9)
  {
    sub_239E9A9B4(v9);
  }

  *(a1 + 344) = *(a2 + 344);
  std::string::operator=((a1 + 352), (a2 + 352));
  v11 = *(a2 + 376);
  v10 = *(a2 + 384);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 384);
  *(a1 + 376) = v11;
  *(a1 + 384) = v10;
  if (v12)
  {
    sub_239E9A9B4(v12);
  }

  *(a1 + 392) = *(a2 + 392);
  std::string::operator=((a1 + 400), (a2 + 400));
  v14 = *(a2 + 424);
  v13 = *(a2 + 432);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 432);
  *(a1 + 424) = v14;
  *(a1 + 432) = v13;
  if (v15)
  {
    sub_239E9A9B4(v15);
  }

  *(a1 + 440) = *(a2 + 440);
  std::string::operator=((a1 + 448), (a2 + 448));
  v17 = *(a2 + 472);
  v16 = *(a2 + 480);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 480);
  *(a1 + 472) = v17;
  *(a1 + 480) = v16;
  if (v18)
  {
    sub_239E9A9B4(v18);
  }

  *(a1 + 488) = *(a2 + 488);
  std::string::operator=((a1 + 496), (a2 + 496));
  v19 = *(a2 + 520);
  v20 = *(a2 + 528);
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 520) = v19;
  v21 = *(a1 + 528);
  *(a1 + 528) = v20;
  if (v21)
  {
    sub_239E9A9B4(v21);
  }

  *(a1 + 536) = *(a2 + 536);
  std::string::operator=((a1 + 544), (a2 + 544));
  v22 = *(a2 + 568);
  v23 = *(a2 + 576);
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 568) = v22;
  v24 = *(a1 + 576);
  *(a1 + 576) = v23;
  if (v24)
  {
    sub_239E9A9B4(v24);
  }

  *(a1 + 584) = *(a2 + 584);
  std::string::operator=((a1 + 592), (a2 + 592));
  v25 = *(a2 + 616);
  v26 = *(a2 + 624);
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 616) = v25;
  v27 = *(a1 + 624);
  *(a1 + 624) = v26;
  if (v27)
  {
    sub_239E9A9B4(v27);
  }

  *(a1 + 632) = *(a2 + 632);
  std::string::operator=((a1 + 640), (a2 + 640));
  v28 = *(a2 + 664);
  v29 = *(a2 + 672);
  if (v29)
  {
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 664) = v28;
  v30 = *(a1 + 672);
  *(a1 + 672) = v29;
  if (v30)
  {
    sub_239E9A9B4(v30);
  }

  *(a1 + 680) = *(a2 + 680);
  std::string::operator=((a1 + 688), (a2 + 688));
  v31 = *(a2 + 712);
  v32 = *(a2 + 720);
  if (v32)
  {
    atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 712) = v31;
  v33 = *(a1 + 720);
  *(a1 + 720) = v32;
  if (v33)
  {
    sub_239E9A9B4(v33);
  }

  *(a1 + 728) = *(a2 + 728);
  std::string::operator=((a1 + 736), (a2 + 736));
  v34 = *(a2 + 760);
  v35 = *(a2 + 768);
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 760) = v34;
  v36 = *(a1 + 768);
  *(a1 + 768) = v35;
  if (v36)
  {
    sub_239E9A9B4(v36);
  }

  *(a1 + 776) = *(a2 + 776);
  std::string::operator=((a1 + 784), (a2 + 784));
  v37 = *(a2 + 808);
  v38 = *(a2 + 816);
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 808) = v37;
  v39 = *(a1 + 816);
  *(a1 + 816) = v38;
  if (v39)
  {
    sub_239E9A9B4(v39);
  }

  *(a1 + 824) = *(a2 + 824);
  std::string::operator=((a1 + 832), (a2 + 832));
  v40 = *(a2 + 856);
  v41 = *(a2 + 864);
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 856) = v40;
  v42 = *(a1 + 864);
  *(a1 + 864) = v41;
  if (v42)
  {
    sub_239E9A9B4(v42);
  }

  *(a1 + 872) = *(a2 + 872);
  std::string::operator=((a1 + 880), (a2 + 880));
  v43 = *(a2 + 904);
  v44 = *(a2 + 912);
  if (v44)
  {
    atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 904) = v43;
  v45 = *(a1 + 912);
  *(a1 + 912) = v44;
  if (v45)
  {
    sub_239E9A9B4(v45);
  }

  sub_239F0A6FC(a1 + 920, (a2 + 920));
  v46 = (a1 + 1096);
  if (*(a1 + 1119) < 0)
  {
    operator delete(*v46);
  }

  v47 = *(a2 + 1096);
  *(a1 + 1112) = *(a2 + 1112);
  *v46 = v47;
  *(a2 + 1119) = 0;
  *(a2 + 1096) = 0;
  sub_239F0A7FC((a1 + 1120), (a2 + 1120));
  v48 = *(a2 + 1144);
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1144) = v48;
  return a1;
}

void sub_239F09648(Alembic::Abc::v12::OObject *a1)
{
  *a1 = &unk_284D17488;
  sub_239F0A868(a1 + 56);
  Alembic::Abc::v12::OObject::~OObject(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239F096B0(uint64_t a1)
{
  v2 = sub_239F099C0(a1);
  *v2 = &unk_284D173D0;
  *(v2 + 248) = 2;
  sub_239E552A0((v2 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 2;
  sub_239E552A0((a1 + 304), "");
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 2;
  sub_239E552A0((a1 + 352), "");
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2;
  sub_239E552A0((a1 + 400), "");
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 2;
  sub_239E552A0((a1 + 448), "");
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 2;
  sub_239E552A0((a1 + 496), "");
  *(a1 + 520) = 0u;
  *(a1 + 536) = 2;
  sub_239E552A0((a1 + 544), "");
  *(a1 + 568) = 0u;
  *(a1 + 584) = 2;
  sub_239E552A0((a1 + 592), "");
  *(a1 + 616) = 0u;
  *(a1 + 632) = 2;
  sub_239E552A0((a1 + 640), "");
  *(a1 + 664) = 0u;
  *(a1 + 680) = 2;
  sub_239E552A0((a1 + 688), "");
  *(a1 + 712) = 0u;
  *(a1 + 728) = 2;
  sub_239E552A0((a1 + 736), "");
  *(a1 + 760) = 0u;
  *(a1 + 776) = 2;
  sub_239E552A0((a1 + 784), "");
  *(a1 + 808) = 0u;
  *(a1 + 824) = 2;
  sub_239E552A0((a1 + 832), "");
  *(a1 + 856) = 0u;
  *(a1 + 872) = 2;
  sub_239E552A0((a1 + 880), "");
  *(a1 + 904) = 0u;
  sub_239F09E5C(a1 + 920);
  *(a1 + 1112) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1120) = a1 + 1128;
  *(a1 + 1144) = 0;
  *(a1 + 1152) = 0;
  *(a1 + 1160) = 0;
  return a1;
}

void sub_239F098CC(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 109));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v1 + 103));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 97));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 91));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 85));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 79));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 73));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 67));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v1 + 61));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v1 + 55));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v1 + 49));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 43));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 37));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v2);
  sub_239F09AE4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239F099C0(uint64_t a1)
{
  *(a1 + 8) = 2;
  sub_239E552A0((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_284D17350;
  *(a1 + 56) = 2;
  sub_239E552A0((a1 + 64), "");
  *(a1 + 104) = 2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_239E552A0((a1 + 112), "");
  *(a1 + 152) = 2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_239E552A0((a1 + 160), "");
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 2;
  sub_239E552A0((a1 + 208), "");
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  return a1;
}

void sub_239F09AA0(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v4);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v3);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v2);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1);
  _Unwind_Resume(a1);
}

void *sub_239F09AE4(void *a1)
{
  *a1 = &unk_284D17350;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

void sub_239F09B50(uint64_t a1)
{
  sub_239F0A868(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239F09B88(uint64_t a1)
{
  sub_239F07B88(a1 + 248);
  sub_239F07B88(a1 + 296);
  sub_239F07B88(a1 + 344);
  sub_239F07B88(a1 + 392);
  sub_239F07B88(a1 + 440);
  sub_239F07B88(a1 + 488);
  sub_239F07B88(a1 + 536);
  sub_239F07B88(a1 + 584);
  sub_239F07B88(a1 + 632);
  sub_239F07B88(a1 + 680);
  sub_239F07B88(a1 + 728);
  sub_239F07B88(a1 + 776);
  sub_239F07B88(a1 + 824);
  sub_239F07B88(a1 + 872);
  sub_239F09F34(a1 + 920);
  sub_239F09F84(a1 + 1120, *(a1 + 1128));
  *(a1 + 1120) = a1 + 1128;
  *(a1 + 1128) = 0u;

  sub_239F09DDC(a1);
}

uint64_t sub_239F09C50(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      goto LABEL_22;
    }
  }

  else if (*(a1 + 39))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_22;
  }

  if (*(a1 + 279) < 0)
  {
    if (*(a1 + 264))
    {
      goto LABEL_22;
    }
  }

  else if (*(a1 + 279))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 280))
  {
    goto LABEL_22;
  }

  if (*(a1 + 327) < 0)
  {
    if (*(a1 + 312))
    {
      goto LABEL_22;
    }
  }

  else if (*(a1 + 327))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 328))
  {
    goto LABEL_22;
  }

  if (*(a1 + 375) < 0)
  {
    if (!*(a1 + 360))
    {
      goto LABEL_20;
    }

LABEL_22:
    v1 = *(a1 + 1144);
    return v1 & 1;
  }

  if (*(a1 + 375))
  {
    goto LABEL_22;
  }

LABEL_20:
  if (!*(a1 + 376))
  {
    goto LABEL_22;
  }

  v1 = 1;
  return v1 & 1;
}

void *sub_239F09CE4(void *a1)
{
  *a1 = &unk_284D17350;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

void sub_239F09D50(void *a1)
{
  *a1 = &unk_284D17350;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);

  JUMPOUT(0x23EE802C0);
}

void sub_239F09DDC(uint64_t a1)
{
  sub_239F07B88(a1 + 56);
  sub_239F07B88(a1 + 104);
  sub_239F07B88(a1 + 152);
  sub_239F07B88(a1 + 200);

  sub_239F07B88(a1 + 8);
}

BOOL sub_239F09E30(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      return 0;
    }
  }

  else if (*(a1 + 39))
  {
    return 0;
  }

  return *(a1 + 40) != 0;
}

uint64_t sub_239F09E5C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  sub_239E552A0((a1 + 32), "");
  *(a1 + 72) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_239E552A0((a1 + 80), "");
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 124) = 0x20000007FLL;
  sub_239E552A0((a1 + 136), "");
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_239F09EF8(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v3);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_239F09F34(uint64_t a1)
{
  MEMORY[0x23EE7FFA0](a1, "");
  sub_239F07B88(a1 + 24);
  sub_239F07B88(a1 + 72);
  sub_239F07B88(a1 + 128);
  *(a1 + 124) = 127;
  *(a1 + 120) = 0;
}

void sub_239F09F84(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_239F09F84(a1, *a2);
    sub_239F09F84(a1, a2[1]);
    sub_239F09FE0((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_239F09FE0(uint64_t a1)
{
  v2 = (a1 + 24);
  *(a1 + 24) = &unk_284D17448;
  *(a1 + 80) = &unk_284D17380;
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 376));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 328));
  *(a1 + 80) = &unk_284D17320;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 280));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 232));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 184));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 136));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 88));
  Alembic::Abc::v12::OObject::~OObject(v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F0A0B8(void *a1)
{
  *a1 = &unk_284D17448;
  a1[7] = &unk_284D17380;
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 44));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 38));
  a1[7] = &unk_284D17320;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 32));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 26));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 20));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 14));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));

  Alembic::Abc::v12::OObject::~OObject(a1);
}

void *sub_239F0A17C(void *a1)
{
  *a1 = &unk_284D17380;
  v2 = (a1 + 7);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 37));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 31));
  *a1 = &unk_284D17320;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v2);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 1));
  return a1;
}

void sub_239F0A220(void *a1)
{
  *a1 = &unk_284D17448;
  a1[7] = &unk_284D17380;
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 44));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 38));
  a1[7] = &unk_284D17320;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 32));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 26));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 20));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 14));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));
  Alembic::Abc::v12::OObject::~OObject(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239F0A2F8(void *a1)
{
  *a1 = &unk_284D17380;
  v2 = (a1 + 7);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 37));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 31));
  *a1 = &unk_284D17320;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v2);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 1));

  JUMPOUT(0x23EE802C0);
}

void sub_239F0A3BC(uint64_t a1)
{
  sub_239F07B88(a1 + 248);

  sub_239F0A53C(a1);
}

BOOL sub_239F0A3F8(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (*(a1 + 39))
  {
    return 0;
  }

LABEL_5:
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (*(a1 + 279) < 0)
  {
    if (*(a1 + 264))
    {
      return 0;
    }
  }

  else if (*(a1 + 279))
  {
    return 0;
  }

  return *(a1 + 280) != 0;
}

void *sub_239F0A444(void *a1)
{
  *a1 = &unk_284D17320;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

void sub_239F0A4B0(void *a1)
{
  *a1 = &unk_284D17320;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);

  JUMPOUT(0x23EE802C0);
}

void sub_239F0A53C(uint64_t a1)
{
  sub_239F07B88(a1 + 56);
  sub_239F07B88(a1 + 104);
  sub_239F07B88(a1 + 152);
  sub_239F07B88(a1 + 200);

  sub_239F07B88(a1 + 8);
}

BOOL sub_239F0A590(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      return 0;
    }
  }

  else if (*(a1 + 39))
  {
    return 0;
  }

  return *(a1 + 40) != 0;
}

uint64_t sub_239F0A5BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  if (v6)
  {
    sub_239E9A9B4(v6);
  }

  *(a1 + 56) = *(a2 + 56);
  std::string::operator=((a1 + 64), (a2 + 64));
  v8 = *(a2 + 88);
  v7 = *(a2 + 96);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 96);
  *(a1 + 88) = v8;
  *(a1 + 96) = v7;
  if (v9)
  {
    sub_239E9A9B4(v9);
  }

  *(a1 + 104) = *(a2 + 104);
  std::string::operator=((a1 + 112), (a2 + 112));
  v11 = *(a2 + 136);
  v10 = *(a2 + 144);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 144);
  *(a1 + 136) = v11;
  *(a1 + 144) = v10;
  if (v12)
  {
    sub_239E9A9B4(v12);
  }

  *(a1 + 152) = *(a2 + 152);
  std::string::operator=((a1 + 160), (a2 + 160));
  v14 = *(a2 + 184);
  v13 = *(a2 + 192);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 192);
  *(a1 + 184) = v14;
  *(a1 + 192) = v13;
  if (v15)
  {
    sub_239E9A9B4(v15);
  }

  *(a1 + 200) = *(a2 + 200);
  std::string::operator=((a1 + 208), (a2 + 208));
  v17 = *(a2 + 232);
  v16 = *(a2 + 240);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 240);
  *(a1 + 232) = v17;
  *(a1 + 240) = v16;
  if (v18)
  {
    sub_239E9A9B4(v18);
  }

  return a1;
}

uint64_t sub_239F0A6FC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 6);
  std::string::operator=((a1 + 32), (a2 + 2));
  v6 = *(a2 + 7);
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 64);
  *(a1 + 56) = v6;
  *(a1 + 64) = v5;
  if (v7)
  {
    sub_239E9A9B4(v7);
  }

  *(a1 + 72) = *(a2 + 18);
  std::string::operator=((a1 + 80), (a2 + 5));
  v9 = *(a2 + 13);
  v8 = *(a2 + 14);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 112);
  *(a1 + 104) = v9;
  *(a1 + 112) = v8;
  if (v10)
  {
    sub_239E9A9B4(v10);
  }

  *(a1 + 120) = *(a2 + 15);
  *(a1 + 128) = *(a2 + 32);
  std::string::operator=((a1 + 136), (a2 + 136));
  v12 = *(a2 + 20);
  v11 = *(a2 + 21);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 168);
  *(a1 + 160) = v12;
  *(a1 + 168) = v11;
  if (v13)
  {
    sub_239E9A9B4(v13);
  }

  return a1;
}

void sub_239F0A7FC(void *a1, void *a2)
{
  v4 = a1 + 1;
  sub_239F09F84(a1, a1[1]);
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  a1[2] = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

uint64_t sub_239F0A868(uint64_t a1)
{
  *a1 = &unk_284D173D0;
  sub_239F09F84(a1 + 1120, *(a1 + 1128));
  if (*(a1 + 1119) < 0)
  {
    operator delete(*(a1 + 1096));
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 1048));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 992));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 944));
  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 872));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 824));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 776));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 728));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 680));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 632));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 584));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 536));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 488));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 440));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 392));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 344));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 296));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 248));
  *a1 = &unk_284D17350;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 200));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 152));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 104));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 56));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));
  return a1;
}

void *sub_239F0A9A4(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  sub_239F0AA54(&__p, 1uLL, &v5);
  *a1 = v3;
  a1[1] = 0x30000000ALL;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  sub_239F0AB2C(a1 + 2, __p, v7, (v7 - __p) >> 3);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_239F0AA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239F0AA54(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_239F078EC(a1, a2);
  }

  return a1;
}

void sub_239F0AB10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239F0AB2C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239F078EC(result, a4);
  }

  return result;
}

void sub_239F0AB8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239F0ABA8(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = (a2[1] - *a2) >> 2;
  sub_239F0AA54(&__p, 1uLL, &v5);
  *a1 = v3;
  a1[1] = 0x100000006;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  sub_239F0AB2C(a1 + 2, __p, v7, (v7 - __p) >> 3);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_239F0AC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F0AC4C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v17 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v17;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_239F0AB2C((a1 + 16), a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  v18 = *a3;
  v19 = *(a3 + 5);
  *(a1 + 56) = 0;
  *(a1 + 45) = v19;
  *(a1 + 40) = v18;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_239F0AB2C((a1 + 56), a3[2], a3[3], (a3[3] - a3[2]) >> 3);
  v20 = *a4;
  v21 = *(a4 + 5);
  *(a1 + 96) = 0;
  *(a1 + 85) = v21;
  *(a1 + 80) = v20;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_239F0AB2C((a1 + 96), a4[2], a4[3], (a4[3] - a4[2]) >> 3);
  *(a1 + 120) = 0xC0000000C0000000;
  *(a1 + 128) = -1073741824;
  v22 = *a5;
  v23 = *(a5 + 5);
  *(a1 + 152) = 0;
  *(a1 + 141) = v23;
  *(a1 + 136) = v22;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  sub_239F0AB2C((a1 + 152), a5[2], a5[3], (a5[3] - a5[2]) >> 3);
  v24 = *a6;
  v25 = *(a6 + 5);
  *(a1 + 192) = 0;
  *(a1 + 181) = v25;
  *(a1 + 176) = v24;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  sub_239F0AB2C((a1 + 192), a6[2], a6[3], (a6[3] - a6[2]) >> 3);
  v26 = *a7;
  v27 = *(a7 + 5);
  *(a1 + 232) = 0;
  *(a1 + 221) = v27;
  *(a1 + 216) = v26;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  sub_239F0AB2C((a1 + 232), a7[2], a7[3], (a7[3] - a7[2]) >> 3);
  v28 = *a8;
  *(a1 + 261) = *(a8 + 5);
  *(a1 + 256) = v28;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  sub_239F0AB2C((a1 + 272), a8[2], a8[3], (a8[3] - a8[2]) >> 3);
  v29 = *a9;
  *(a1 + 301) = *(a9 + 5);
  *(a1 + 296) = v29;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  sub_239F0AB2C((a1 + 312), a9[2], a9[3], (a9[3] - a9[2]) >> 3);
  v30 = *a10;
  *(a1 + 341) = *(a10 + 5);
  *(a1 + 336) = v30;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  sub_239F0AB2C((a1 + 352), a10[2], a10[3], (a10[3] - a10[2]) >> 3);
  sub_239E552A0((a1 + 376), "catmull-clark");
  *(a1 + 400) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 416) = xmmword_239F9CD40;
  *(a1 + 432) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 448) = 0;
  *(a1 + 456) = 0x30000000ALL;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0x20000000ALL;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0x100000005;
  *(a1 + 544) = 0;
  *(a1 + 560) = 0;
  *(a1 + 552) = 0;
  *(a1 + 568) = 127;
  return a1;
}

void sub_239F0AEEC(_Unwind_Exception *exception_object)
{
  v9 = v1[44];
  if (v9)
  {
    v1[45] = v9;
    operator delete(v9);
  }

  v10 = v1[39];
  if (v10)
  {
    v1[40] = v10;
    operator delete(v10);
  }

  v11 = v1[34];
  if (v11)
  {
    v1[35] = v11;
    operator delete(v11);
  }

  v12 = *v7;
  if (*v7)
  {
    v1[30] = v12;
    operator delete(v12);
  }

  v13 = *v6;
  if (*v6)
  {
    v1[25] = v13;
    operator delete(v13);
  }

  v14 = *v5;
  if (*v5)
  {
    v1[20] = v14;
    operator delete(v14);
  }

  v15 = *v4;
  if (*v4)
  {
    v1[13] = v15;
    operator delete(v15);
  }

  v16 = *v3;
  if (*v3)
  {
    v1[8] = v16;
    operator delete(v16);
  }

  v17 = *v2;
  if (*v2)
  {
    v1[3] = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void **sub_239F0AFC8(void **result, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = result;
  v7 = *(a2 + 5);
  result[17] = *a2;
  *(result + 141) = v7;
  if (result + 17 != a2)
  {
    result = sub_239F077C0(result + 19, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  }

  v8 = *(a3 + 5);
  v6[22] = *a3;
  *(v6 + 181) = v8;
  if (v6 + 22 != a3)
  {
    result = sub_239F077C0(v6 + 24, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 3);
  }

  v9 = *(a4 + 5);
  v6[27] = *a4;
  *(v6 + 221) = v9;
  if (v6 + 27 != a4)
  {
    v10 = a4[2];
    v11 = a4[3];

    return sub_239F077C0(v6 + 29, v10, v11, (v11 - v10) >> 3);
  }

  return result;
}

uint64_t *sub_239F0B0A8(uint64_t **a1, void *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_239E797B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_239E95BB4(a1, v7);
  }

  __p = 0;
  v11 = (8 * v2);
  *v11 = *a2;
  v12 = 8 * v2 + 8;
  v13 = 0;
  sub_239F0B1C4(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_239F0B18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_239F0B1C4(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void *sub_239F0B230(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = (a2[1] - *a2) >> 3;
  sub_239F0AA54(&__p, 1uLL, &v5);
  *a1 = v3;
  a1[1] = 0x20000000ALL;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  sub_239F0AB2C(a1 + 2, __p, v7, (v7 - __p) >> 3);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_239F0B2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239F0B2D4(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = (a2[1] - *a2) >> 2;
  sub_239F0AA54(&__p, 1uLL, &v5);
  *a1 = v3;
  a1[1] = 0x100000005;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  sub_239F0AB2C(a1 + 2, __p, v7, (v7 - __p) >> 3);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_239F0B35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F0B378(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v7 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_239F0AB2C((a1 + 16), a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  v8 = *a3;
  v9 = *(a3 + 5);
  *(a1 + 56) = 0;
  *(a1 + 45) = v9;
  *(a1 + 40) = v8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_239F0AB2C((a1 + 56), a3[2], a3[3], (a3[3] - a3[2]) >> 3);
  *(a1 + 80) = a4;
  return a1;
}

void sub_239F0B410(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239F0B42C(void *__dst, uint64_t a2, __int128 *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a3 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v16 = *a3;
    __dst[2] = *(a3 + 2);
    *__dst = v16;
  }

  *(__dst + 6) = 2;
  sub_239E552A0(__dst + 4, "");
  *(__dst + 18) = 2;
  __dst[7] = 0;
  __dst[8] = 0;
  sub_239E552A0(__dst + 10, "");
  *(__dst + 32) = 2;
  __dst[13] = 0;
  __dst[14] = 0;
  *(__dst + 120) = a4;
  *(__dst + 31) = a5;
  sub_239E552A0(__dst + 17, "");
  __dst[20] = 0;
  __dst[21] = 0;
  v17 = *(a2 + 40);
  v20 = *(a2 + 32);
  v21 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_239F0B610(__p, &v20, a3, a4, a5, a6, a7, a8, a9);
  sub_239F0A6FC(__dst, __p);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v26);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v25);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v24);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21)
  {
    sub_239E9A9B4(v21);
  }

  return __dst;
}

void sub_239F0B5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  va_start(va, a11);
  sub_239F08168(va);
  if (a11)
  {
    sub_239E9A9B4(a11);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v14);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v13);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v12);
  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
  }

  _Unwind_Resume(a1);
}

char *sub_239F0B610(char *__dst, uint64_t *a2, __int128 *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a5;
  if (*(a3 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v17 = *a3;
    *(__dst + 2) = *(a3 + 2);
    *__dst = v17;
  }

  *(__dst + 6) = 2;
  v49 = __dst + 24;
  sub_239E552A0(__dst + 4, "");
  *(__dst + 18) = 2;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  sub_239E552A0(__dst + 10, "");
  *(__dst + 32) = 2;
  *(__dst + 13) = 0;
  *(__dst + 14) = 0;
  __dst[120] = a4;
  *(__dst + 31) = v12;
  sub_239E552A0(__dst + 17, "");
  *(__dst + 20) = 0;
  *(__dst + 21) = 0;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v84[0].__locale_ = 0;
  __p[1] = 0;
  __p[0] = &__p[1];
  LODWORD(v96) = 2;
  sub_239F07444(&v96 + 1, __p);
  LODWORD(v99) = 0;
  v98 = 0u;
  *(&v99 + 4) = 1;
  sub_239E91CE0(__p, __p[1]);
  if (v18)
  {
    sub_239E9A9B4(v18);
  }

  sub_239F0669C(a7, &v96);
  sub_239F0669C(a8, &v96);
  sub_239F0669C(a9, &v96);
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v19 = sub_239F07444(&v93, &v96 + 1);
  sub_239F0C350(v19, v12);
  sub_239E552A0(__p, "isGeomParam");
  sub_239E552A0(__str, "true");
  v70 = __p;
  v20 = sub_239F075C4(&v93, __p, &unk_239F9BFF0, &v70, &v92);
  std::string::operator=((v20 + 7), __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if (SHIBYTE(v84[0].__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  memset(&v92, 0, sizeof(v92));
  sub_239E552A0(&v92, "float32_t");
  sub_239E552A0(__p, "podName");
  *__str = __p;
  v21 = sub_239F075C4(&v93, __p, &unk_239F9BFF0, __str, &v70);
  std::string::operator=((v21 + 7), &v92);
  if (SHIBYTE(v84[0].__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  v91 = 0;
  v89 = 0u;
  memset(v90, 0, sizeof(v90));
  *v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  *__p = 0u;
  *&v84[0].__locale_ = 0u;
  sub_239F0C5B8(__p);
  MEMORY[0x23EE80160](__p, 1);
  memset(&v82, 0, sizeof(v82));
  std::stringbuf::str();
  sub_239E552A0(__str, "podExtent");
  v70 = __str;
  v22 = sub_239F075C4(&v93, __str, &unk_239F9BFF0, &v70, &v75);
  std::string::operator=((v22 + 7), &v82);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  v81 = 0;
  v79 = 0u;
  memset(v80, 0, sizeof(v80));
  *v77 = 0u;
  v78 = 0u;
  memset(__str, 0, sizeof(__str));
  sub_239F0C5B8(__str);
  MEMORY[0x23EE80160](__str, a6);
  memset(&v75, 0, sizeof(v75));
  std::stringbuf::str();
  sub_239E552A0(&v70, "arrayExtent");
  v74.__r_.__value_.__r.__words[0] = &v70;
  v23 = sub_239F075C4(&v93, &v70, &unk_239F9BFF0, &v74, &v66);
  std::string::operator=((v23 + 7), &v75);
  if (v71.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v70);
  }

  sub_239E552A0(&v70, "interpretation");
  sub_239E552A0(&v74, "");
  v66 = &v70;
  v24 = sub_239F075C4(&v93, &v70, &unk_239F9BFF0, &v66, &v59);
  std::string::operator=((v24 + 7), &v74);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v71.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v70);
  }

  v25 = v96;
  v26 = v98;
  if (*(&v98 + 1))
  {
    atomic_fetch_add_explicit((*(&v98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v26)
  {
    v27 = *a2;
    v28 = a2[1];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v27 + 24))(&v74);
    (*(*v74.__r_.__value_.__l.__data_ + 24))(&v70);
    v29 = (*(*v70 + 48))(v70, v26);
    if (v71.__r_.__value_.__r.__words[0])
    {
      sub_239E9A9B4(v71.__r_.__value_.__l.__data_);
    }

    if (v74.__r_.__value_.__l.__size_)
    {
      sub_239E9A9B4(v74.__r_.__value_.__l.__size_);
    }

    if (v28)
    {
      sub_239E9A9B4(v28);
    }
  }

  else
  {
    v29 = v99;
  }

  if (__dst[120] == 1)
  {
    v30 = a2[1];
    v68 = *a2;
    v69 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 3;
    v74.__r_.__value_.__l.__size_ = &v93;
    LODWORD(v66) = 1;
    LODWORD(v67) = v25;
    MEMORY[0x23EE7EFD0](&v70, &v68, a3, &v74, &v66);
    *(__dst + 32) = v70;
    std::string::operator=((__dst + 136), &v71);
    v32 = v72;
    v31 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v33 = *(__dst + 21);
    *(__dst + 20) = v32;
    *(__dst + 21) = v31;
    if (v33)
    {
      sub_239E9A9B4(v33);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v70);
    if (v69)
    {
      sub_239E9A9B4(v69);
    }

    v61 = *(__dst + 32);
    if (__dst[159] < 0)
    {
      sub_239E5BAE0(&v62, *(__dst + 17), *(__dst + 18));
    }

    else
    {
      v62 = *(__dst + 136);
      v63 = *(__dst + 19);
    }

    v38 = *(__dst + 21);
    v64 = *(__dst + 20);
    v65 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    sub_239E552A0(&v74, ".vals");
    LODWORD(v66) = 3;
    v67 = &v93;
    v59 = 1;
    v60 = v25;
    v57 = 2;
    v58 = v29;
    sub_239F0C844(&v70, &v61, &v74, &v66, &v59, &v57);
    *v49 = v70;
    std::string::operator=((__dst + 32), &v71);
    v40 = v72;
    v39 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v41 = *(__dst + 8);
    *(__dst + 7) = v40;
    *(__dst + 8) = v39;
    if (v41)
    {
      sub_239E9A9B4(v41);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v70);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v61);
    v52 = *(__dst + 32);
    if (__dst[159] < 0)
    {
      sub_239E5BAE0(&v53, *(__dst + 17), *(__dst + 18));
    }

    else
    {
      v53 = *(__dst + 136);
      v54 = *(__dst + 19);
    }

    v42 = *(__dst + 21);
    v55 = *(__dst + 20);
    v56 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    sub_239E552A0(&v74, ".indices");
    LODWORD(v66) = 2;
    LODWORD(v67) = v29;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    sub_239F0CD74(&v70, &v52, &v74, &v66, &v59, &v57);
    *(__dst + 18) = v70;
    std::string::operator=((__dst + 80), &v71);
    v44 = v72;
    v43 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(__dst + 14);
    *(__dst + 13) = v44;
    *(__dst + 14) = v43;
    if (v45)
    {
      sub_239E9A9B4(v45);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v70);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v52);
  }

  else
  {
    v34 = a2[1];
    v50 = *a2;
    v51 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 3;
    v74.__r_.__value_.__l.__size_ = &v93;
    LODWORD(v66) = 1;
    LODWORD(v67) = v25;
    v59 = 2;
    v60 = v29;
    v57 = 0;
    v58 = 0;
    sub_239F0D2A4(&v70, &v50, a3, &v74, &v66, &v59, &v57);
    *v49 = v70;
    std::string::operator=((__dst + 32), &v71);
    v36 = v72;
    v35 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v37 = *(__dst + 8);
    *(__dst + 7) = v36;
    *(__dst + 8) = v35;
    if (v37)
    {
      sub_239E9A9B4(v37);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v70);
    if (v51)
    {
      sub_239E9A9B4(v51);
    }
  }

  if (*(&v26 + 1))
  {
    sub_239E9A9B4(*(&v26 + 1));
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  *__str = *MEMORY[0x277D82828];
  v46 = *__str;
  v47 = *(MEMORY[0x277D82828] + 24);
  *&__str[*(*__str - 24)] = v47;
  *&__str[8] = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77[1]);
  }

  *&__str[8] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&__str[16]);
  std::ostream::~ostream();
  MEMORY[0x23EE80250](v80);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  __p[0] = v46;
  *(__p + *(v46 - 3)) = v47;
  __p[1] = (MEMORY[0x277D82878] + 16);
  if (SHIBYTE(v88) < 0)
  {
    operator delete(v87[1]);
  }

  __p[1] = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v84);
  std::ostream::~ostream();
  MEMORY[0x23EE80250](v90);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  sub_239E91CE0(&v93, v94);
  if (*(&v98 + 1))
  {
    sub_239E9A9B4(*(&v98 + 1));
  }

  sub_239E91CE0(&v96 + 8, v97);
  return __dst;
}

void sub_239F0C0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, Alembic::Abc::v12::OArrayProperty *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48)
{
  if (v51)
  {
    sub_239E9A9B4(v51);
  }

  if (a47 < 0)
  {
    operator delete(__p);
  }

  sub_239F0C724(&a48);
  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  sub_239F0C724(&STACK[0x240]);
  if (*(v52 - 185) < 0)
  {
    operator delete(*(v52 - 208));
  }

  sub_239E91CE0(v52 - 184, *(v52 - 176));
  sub_239F06B8C(v52 - 160);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v50);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v49);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(a10);
  if (*(v48 + 23) < 0)
  {
    operator delete(*v48);
  }

  _Unwind_Resume(a1);
}

void sub_239F0C2F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x239F0C288);
}

void sub_239F0C30C()
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  JUMPOUT(0x239F0C2A0);
}

void sub_239F0C324(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    JUMPOUT(0x239F0C2ACLL);
  }

  JUMPOUT(0x239F0C2B0);
}

void sub_239F0C350(uint64_t **a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

      sub_239E552A0(v9, "geoScope");
      sub_239E552A0(&__p, "uni");
      v12 = v9;
      v4 = sub_239F075C4(a1, v9, &unk_239F9BFF0, &v12, &v11);
      std::string::operator=((v4 + 7), &__p);
    }

    else
    {
      sub_239E552A0(v9, "geoScope");
      sub_239E552A0(&__p, "con");
      v12 = v9;
      v7 = sub_239F075C4(a1, v9, &unk_239F9BFF0, &v12, &v11);
      std::string::operator=((v7 + 7), &__p);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_239E552A0(v9, "geoScope");
        sub_239E552A0(&__p, "var");
        v12 = v9;
        v5 = sub_239F075C4(a1, v9, &unk_239F9BFF0, &v12, &v11);
        std::string::operator=((v5 + 7), &__p);
        break;
      case 3:
        sub_239E552A0(v9, "geoScope");
        sub_239E552A0(&__p, "vtx");
        v12 = v9;
        v6 = sub_239F075C4(a1, v9, &unk_239F9BFF0, &v12, &v11);
        std::string::operator=((v6 + 7), &__p);
        break;
      case 4:
        sub_239E552A0(v9, "geoScope");
        sub_239E552A0(&__p, "fvr");
        v12 = v9;
        v3 = sub_239F075C4(a1, v9, &unk_239F9BFF0, &v12, &v11);
        std::string::operator=((v3 + 7), &__p);
        break;
      default:
        return;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_239F0C564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239F0C5B8(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_239EE8484((a1 + 1), 16);
  return a1;
}

void sub_239F0C6FC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x23EE80250](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239F0C724(uint64_t a1)
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
  std::ostream::~ostream();
  MEMORY[0x23EE80250](a1 + 112);
  return a1;
}

uint64_t sub_239F0C844(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 2;
  sub_239E552A0((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v12 = *(a2 + 5);
  v16 = *(a2 + 4);
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  v15[0] = 1;
  v15[2] = v13;
  sub_239F0C920(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  return a1;
}

void sub_239F0C900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_239E9A9B4(a12);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v12);
  _Unwind_Resume(a1);
}

void sub_239F0C920(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *&v22 = &v22 + 8;
  *(&v22 + 1) = 0;
  LODWORD(v27) = 2;
  *&v23[0] = 0;
  sub_239F07444(&v27 + 1, &v22);
  LODWORD(v30) = 0;
  v29 = 0u;
  *(&v30 + 4) = 1;
  sub_239E91CE0(&v22, *(&v22 + 1));
  sub_239F0669C(a4, &v27);
  sub_239F0669C(a5, &v27);
  sub_239F0669C(a6, &v27);
  sub_239F0669C(a7, &v27);
  *a1 = v27;
  v25 = a1;
  v26 = "OTypedArrayProperty::init()";
  if (!*a2)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v22 = 0u;
    sub_239EE76F8(&v22);
    sub_239E98B94(v23, "NULL CompoundPropertyWriterPtr", 30);
    memset(v21, 0, sizeof(v21));
    std::stringbuf::str();
    sub_239F072EC(v21, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v18 = sub_239F073B0(exception, v21);
    __cxa_throw(v18, &unk_284D178C8, sub_239F06748);
  }

  v22 = 0uLL;
  *&v23[0] = 0;
  sub_239F07444(&v22, &v27 + 1);
  v13 = v29;
  if (*(&v29 + 1))
  {
    atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *a2;
  if (v13)
  {
    (*(*v14 + 24))(__p);
    (*(*__p[0] + 24))(v21);
    (*(**&v21[0] + 48))(*&v21[0], v13);
    if (*(&v21[0] + 1))
    {
      sub_239E9A9B4(*(&v21[0] + 1));
    }

    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }

    v14 = *a2;
  }

  BYTE4(__p[0]) = 1;
  LODWORD(__p[0]) = 10;
  (*(*v14 + 104))(v21);
  v15 = v21[0];
  v21[0] = 0uLL;
  v16 = *(a1 + 40);
  *(a1 + 32) = v15;
  if (v16)
  {
    sub_239E9A9B4(v16);
    if (*(&v21[0] + 1))
    {
      sub_239E9A9B4(*(&v21[0] + 1));
    }
  }

  if (*(&v13 + 1))
  {
    sub_239E9A9B4(*(&v13 + 1));
  }

  sub_239E91CE0(&v22, *(&v22 + 1));
  if (*(&v29 + 1))
  {
    sub_239E9A9B4(*(&v29 + 1));
  }

  sub_239E91CE0(&v27 + 8, v28);
}

void sub_239F0CC4C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v16.__vftable = va_arg(va1, std::exception_vtbl *);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_239F0740C(va);
  sub_239EB746C(va1);
  v14 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v15 = v14;
    sub_239F07B88(v10);
    sub_239F06B1C((v11 - 160), v15);
  }

  else
  {
    sub_239F07B88(v10);
    sub_239F06AAC((v11 - 160), 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x239F0CB64);
}

uint64_t sub_239F0CD74(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 2;
  sub_239E552A0((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v12 = *(a2 + 5);
  v16 = *(a2 + 4);
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  v15[0] = 1;
  v15[2] = v13;
  sub_239F0CE50(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  return a1;
}

void sub_239F0CE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_239E9A9B4(a12);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v12);
  _Unwind_Resume(a1);
}