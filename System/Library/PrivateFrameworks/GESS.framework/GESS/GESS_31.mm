void sub_24BF0AE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BF0AE74(uint64_t a1, void *a2, char **a3, int ***a4)
{
  v4 = *(*a2 + 168);
  if ((v4 & 2) != 0)
  {
    v5 = **a4;
    v6 = (*a4)[1];
    v7 = v5 + 1;
    if (v5 != v6 && v7 != v6)
    {
      v9 = *v5;
      v10 = v5 + 1;
      do
      {
        v12 = *v10++;
        v11 = v12;
        v13 = v9 < v12;
        if (v9 <= v12)
        {
          v9 = v11;
        }

        if (v13)
        {
          v5 = v7;
        }

        v7 = v10;
      }

      while (v10 != v6);
    }

    v14 = (*a4)[6];
    if (v14 >= 2)
    {
      v15 = 4 * (v14 == *v5);
    }

    else
    {
      v15 = 4;
    }

    v4 = v15 | v4 & 0xFB;
  }

  return sub_24BF0F384(a2, a4, a3, v4, *(*a2 + 160), 0);
}

void sub_24BF0AF04(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v30 = 0;
  sub_24BD0E524(&v31, 1uLL, &v30);
  sub_24BCA2788(&v31, __dst, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v6 = v31;
  if (__dst != v31)
  {
    v7 = 0;
    do
    {
      v8 = *(*v5 + 24);
      v9 = (*a3 + 16 * v7);
      v10 = *(*v5 + 168) | 6;
      v11 = **v9;
      v12 = (*v9)[1] - v11;
      v13 = (v12 >> 2) - 1;
      if (((v12 >> 2) - 1) < 0)
      {
        goto LABEL_22;
      }

      v14 = 0;
      v15 = *(*v5 + 160);
      v16 = (v12 >> 2);
      v17 = 1;
      v18 = 1;
      v19 = 1;
      do
      {
        v20 = v10;
        v21 = *(v8 + 8 * v14);
        v22 = *(v11 + 4 * v14);
        if (v22 == 1 || v21 == v18)
        {
          v24 = -1;
        }

        else
        {
          v24 = -5;
        }

        v25 = *(v11 + 4 * v13);
        if (v25 == 1 || *(v8 + 8 * v13) == v17)
        {
          v27 = -1;
        }

        else
        {
          v27 = -3;
        }

        v10 = v24 & v27 & v20;
        v18 *= v22;
        v17 *= v25;
        if (v21)
        {
          v28 = *(v11 + 4 * v14);
        }

        else
        {
          v28 = 1;
        }

        v19 *= v28;
        ++v14;
        --v13;
      }

      while (v16 != v14);
      if (v19 == 1)
      {
LABEL_22:
        LOBYTE(v10) = v10 | 1;
        v29 = 1;
      }

      else
      {
        if (v19 == v15)
        {
          v29 = *(*v5 + 160);
        }

        else
        {
          v29 = v19;
        }

        if (v19 != v15)
        {
          LOBYTE(v10) = v10 & 0xFE | v20 & ((v10 & 6) != 0);
        }
      }

      sub_24BE7F2FC((*a3 + 16 * v7), v5, (*v5 + 24), v10, v29, *(v8 + 8 * *(a1 + 48)) * v6[v7]);
      ++v7;
      v6 = v31;
    }

    while (v7 < (__dst - v31) >> 2);
  }

  if (v6)
  {
    __dst = v6;
    operator delete(v6);
  }
}

void sub_24BF0B09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF0B0BC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(*a2 + 8) - **a2) >> 2;
  v19 = 0;
  sub_24BF0B420(&__p, v6, &v19);
  v7 = *(*a2 + 8) - **a2;
  if (v7)
  {
    v8 = 0;
    v9 = v7 >> 2;
    v10 = *(a1 + 24);
    v11 = *(*a2 + 24);
    v12 = *(a1 + 72);
    v13 = __p;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      v15 = *v10++;
      v14 = v15;
      v17 = *v11++;
      v16 = v17;
      v8 += v17 * v14;
      v18 = *v12++;
      *v13++ = v16 * v18;
      --v9;
    }

    while (v9);
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  sub_24BF0B3A4(a3 + 1, __p, v21, (v21 - __p) >> 3);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

void sub_24BF0B19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF0B1B8(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  sub_24BC91EAC(__p, ((*a3)[1] - **a3) >> 2);
  v6 = *a2;
  v7 = *(a1 + 24);
  v8 = *v6;
  v9 = *(a1 + 32) - v7;
  if (v9)
  {
    v10 = v9 >> 2;
    v11 = *(v8 + 24);
    v12 = __p[0];
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      v13 = *v7++;
      *v12++ = *(v11 + 8 * v13);
      --v10;
    }

    while (v10);
  }

  v14 = *(v8 + 168);
  if ((v14 & 1) != 0 && *(v8 + 160) == *(v8 + 48))
  {
    v14 |= 6u;
    v15 = (*a3)[1] - **a3;
    if (v15)
    {
      v16 = 0;
      v17 = (v15 >> 2) - 1;
      v18 = 1;
      v19 = 1;
      do
      {
        if (*(__p[0] + v16) == v19)
        {
          v20 = -1;
        }

        else if (sub_24BD1EEAC(a3, v16) == 1)
        {
          v20 = -1;
        }

        else
        {
          v20 = -5;
        }

        v21 = sub_24BD1EEAC(a3, v16);
        if (*(__p[0] + v17) == v18)
        {
          v22 = 2;
        }

        else
        {
          v22 = 2 * (sub_24BD1EEAC(a3, v17) == 1);
        }

        v19 *= v21;
        v14 = v22 & v14 | v14 & v20 & 0xFD;
        v18 *= sub_24BD1EEAC(a3, v17);
        ++v16;
        --v17;
      }

      while (v16 < ((*a3)[1] - **a3) >> 2);
      v8 = *v6;
    }
  }

  sub_24BF0F384(v6, a3, __p, v14, *(v8 + 160), 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24BF0B384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BF0B3A4(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BF0B404(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BF0B420(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_24BC91F24(a1, a2);
  }

  return a1;
}

void sub_24BF0B4DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF0B4F8(void *a1, void *a2)
{
  switch(*(*a2 + 56))
  {
    case 0:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      sub_24BF0BBC0(a2);

      JUMPOUT(0x24C254390);
    case 1:
      sub_24BF0BB0C(a2);
      goto LABEL_23;
    case 2:
      sub_24BF0CE14(a2);

      JUMPOUT(0x24C254400);
    case 3:
      sub_24BF0CEC8(a2);
LABEL_23:

      JUMPOUT(0x24C2543D0);
    case 4:
      sub_24BF0CF7C(a2);

      JUMPOUT(0x24C254420);
    case 5:
      sub_24BF0BA58(a2);
      goto LABEL_27;
    case 6:
      sub_24BF0CBF8(a2);

      JUMPOUT(0x24C2543F0);
    case 7:
      sub_24BF0CCAC(a2);
LABEL_27:

      JUMPOUT(0x24C2543C0);
    case 8:
      sub_24BF0CD60(a2);

      JUMPOUT(0x24C254410);
    case 9:

      sub_24BF0B81C(a1, a2);
      break;
    case 0xA:

      sub_24BF0B7AC(a1, a2);
      break;
    case 0xB:

      sub_24BF0B890(a1, a2);
      break;
    case 0xC:

      sub_24BF0B908(a1, a2);
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unsupported constant type");
      __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }
}

void *sub_24BF0B7AC(void *a1, void *a2)
{
  v2 = a1 + *(*a1 - 24);
  v3 = *(v2 + 4);
  *(v2 + 2) = 7;
  sub_24BF0C928(a2);
  result = std::ostream::operator<<();
  *(result + *(*result - 24) + 16) = v3;
  return result;
}

void *sub_24BF0B81C(void *a1, void *a2)
{
  v2 = a1 + *(*a1 - 24);
  v3 = *(v2 + 4);
  *(v2 + 2) = 7;
  _H0 = sub_24BF0C9DC(a2);
  __asm { FCVT            S0, H0 }

  result = std::ostream::operator<<();
  *(result + *(*result - 24) + 16) = v3;
  return result;
}

void *sub_24BF0B890(void *a1, void *a2)
{
  v2 = a1 + *(*a1 - 24);
  v3 = *(v2 + 4);
  *(v2 + 2) = 7;
  sub_24BF0CA90(a2);
  result = std::ostream::operator<<();
  *(result + *(*result - 24) + 16) = v3;
  return result;
}

void sub_24BF0B908(void *a1, void *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 16);
  sub_24BF0CB44(a2);
  sub_24BF0BC74(*(*a2 + 56) & 0xFFFFFFFFFFLL, __p);
  if ((v13 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v6 = v13;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_24BC95264(a1, v5, v6);
  v8 = sub_24BC95264(v7, "(", 1);
  *(v8 + *(*v8 - 24) + 16) = 7;
  v9 = std::ostream::operator<<();
  sub_24BC95264(v9, ", ", 2);
  v10 = std::ostream::operator<<();
  v11 = sub_24BC95264(v10, ")", 1);
  *(v11 + *(*v11 - 24) + 16) = v4;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24BF0BA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF0BA58(void *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE7F100(a1);
  return **(*a1 + 152);
}

uint64_t sub_24BF0BB0C(void *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE7F100(a1);
  return **(*a1 + 152);
}

uint64_t sub_24BF0BBC0(void *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE7F100(a1);
  return **(*a1 + 152);
}

void *sub_24BF0BC74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = a1;
  if (a1 >= 0xD)
  {
    sub_24BCE1268(v7);
    v4 = sub_24BC95264(v7, "Unsupported compilation type ", 29);
    sub_24BF031F4(v4, &v8);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    MEMORY[0x24C254100](exception, v6);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v2 = off_27916D218[a1 & 0xF];

  return sub_24BC836D4(a2, v2);
}

void sub_24BF0BD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void **sub_24BF0BD90(void ***a1, void x1_0, void ***a2, void *a3)
{
  memset(v49, 0, sizeof(v49));
  v50 = 1065353216;
  sub_24BCE1268(&v44);
  sub_24BCE1268(&v39);
  v7 = *a1;
  v8 = a1[1];
  while (v7 != v8)
  {
    sub_24BE9C334(v49, v7);
    v7 += 2;
  }

  v9 = *a2;
  v10 = a2[1];
  while (v9 != v10)
  {
    v11 = sub_24BE9C334(v49, v9);
    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = *v11;
    }

    if (v12 >= 0)
    {
      v14 = *(v11 + 23);
    }

    else
    {
      v14 = v11[1];
    }

    v15 = sub_24BC95264(&v44, v13, v14);
    v16 = *(*v9 + 7);
    LODWORD(__p[0]) = v16;
    BYTE4(__p[0]) = BYTE4(v16);
    v38 = sub_24BE80CA0(__p);
    v17 = sub_24BF0330C(v15, &v38);
    MEMORY[0x24C2543E0](v17, *(*v9 + 60));
    (*(**(*v9 + 8) + 40))(*(*v9 + 8), &v44);
    v18 = *(*v9 + 22);
    v19 = *(*v9 + 23);
    while (v18 != v19)
    {
      v20 = sub_24BE9C334(v49, v18);
      v21 = *(v20 + 23);
      if (v21 >= 0)
      {
        v22 = v20;
      }

      else
      {
        v22 = *v20;
      }

      if (v21 >= 0)
      {
        v23 = *(v20 + 23);
      }

      else
      {
        v23 = v20[1];
      }

      sub_24BC95264(&v44, v22, v23);
      v18 += 2;
    }

    v9 += 2;
  }

  sub_24BC95264(&v44, "_", 1);
  v24 = *a1;
  v25 = a1[1];
  if (*a1 != v25)
  {
    do
    {
      __p[0] = *v24;
      if (sub_24BF0D030(a3, __p))
      {
        sub_24BC95264(&v44, "C", 1);
        sub_24BF0B4F8(&v39, v24);
      }

      else
      {
        if (*(*v24 + 1) == **v24)
        {
          v26 = "S";
        }

        else
        {
          v26 = "V";
        }

        sub_24BC95264(&v44, v26, 1);
      }

      v24 += 2;
    }

    while (v24 != v25);
  }

  sub_24BC95264(&v44, "_", 1);
  v28 = *a1;
  v27 = a1[1];
  while (v28 != v27)
  {
    __p[0] = *v28;
    if (!sub_24BF0D030(a3, __p))
    {
      v29 = *(*v28 + 7);
      LODWORD(__p[0]) = v29;
      BYTE4(__p[0]) = BYTE4(v29);
      v38 = sub_24BE80CA0(__p);
      v30 = sub_24BF0330C(&v44, &v38);
      MEMORY[0x24C2543E0](v30, *(*v28 + 60));
    }

    v28 += 2;
  }

  v31 = sub_24BC95264(&v44, "_", 1);
  std::stringbuf::str();
  v32 = sub_24BCCC4B4(&v38, __p);
  MEMORY[0x24C2543E0](v31, v32);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v39 = *MEMORY[0x277D82828];
  v33 = v39;
  v34 = *(MEMORY[0x277D82828] + 24);
  *(&v39 + *(v39 - 24)) = v34;
  v40 = MEMORY[0x277D82878] + 16;
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  v40 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v41);
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](&v43);
  v44 = v33;
  *(&v44 + *(v33 - 24)) = v34;
  v45 = MEMORY[0x277D82878] + 16;
  if (v47 < 0)
  {
    operator delete(v46[7].__locale_);
  }

  v45 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v46);
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](&v48);
  return sub_24BE9D1E0(v49);
}

void sub_24BF0C238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BCE1400(&a16);
  sub_24BCE1400(&a49);
  sub_24BE9D1E0((v49 - 128));
  _Unwind_Resume(a1);
}

BOOL sub_24BF0C2A8(const void ****a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v5 = 0;
    LOBYTE(v10) = 1;
    LOBYTE(v9) = 1;
    v8 = 1;
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    v7 = *(a2 + 8) - *a2;
    v8 = 1;
    LOBYTE(v9) = 1;
    LOBYTE(v10) = 1;
    do
    {
      v11 = *v3;
      v12 = **v3;
      v13 = (*v3)[1] - v12;
      if (v13)
      {
        v14 = v13 == v7 && memcmp(v12, v6, v7) == 0;
        ++v5;
        v15 = *(v11 + 168);
        v8 &= v14 & v15;
        v9 &= *&v14 & ((v15 & 2) >> 1);
        v10 &= *&v14 & ((v15 & 4) >> 2);
      }

      v3 += 2;
    }

    while (v3 != v4);
  }

  result = 0;
  if ((v5 < 2) | (v9 | v10) & 1 && (v5 != 1) | v8 & 1)
  {
    return v5 || *a2 == *(a2 + 8);
  }

  return result;
}

void sub_24BF0C3C8(uint64_t *a1, void *a2, void *a3, void *a4, char a5, int a6)
{
  v54[4] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v9 = *a1;
    if (a1[1] == *a1)
    {
      v35 = 0;
      v13 = 0;
      v34 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        if (v12 >= ((a2[1] - *a2) >> 4))
        {
          break;
        }

        v14 = *(v9 + v10);
        if (((*(*(*a2 + 16 * v12) + 56) ^ v14[7]) & 0xFF00000000) == 0 && v14[1] != *v14)
        {
          v16 = *(v9 + v10 + 8);
          if (v16)
          {
            if (!*(v16 + 8))
            {
              v17 = v14[18];
              if (v17)
              {
                if (!*(v17 + 8))
                {
                  v49 = *(*a3 + v10);
                  if (!sub_24BF0D030(a4, &v49))
                  {
                    if (a6)
                    {
                      v18 = *a2;
                      v48[0] = *(v9 + v10);
                      v19 = *(v9 + v10 + 8);
                      v48[1] = v19;
                      if (v19)
                      {
                        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
                      }

                      sub_24BE7F46C((v18 + 16 * v12++), v48);
                      sub_24BE7F218(v48);
                    }

                    else
                    {
                      sub_24BE7F3AC((*a2 + 16 * v12++), v9 + v10);
                    }
                  }
                }
              }
            }
          }
        }

        if (v50 == v51)
        {
          v15 = *(v9 + v10);
          if (*(v15 + 48) == *(**a2 + 48))
          {
            if (&v50 != (v15 + 24))
            {
              sub_24BD07E64(&v50, *(v15 + 24), *(v15 + 32), (*(v15 + 32) - *(v15 + 24)) >> 3);
              v15 = *(v9 + v10);
            }

            v6 = *(v15 + 168);
            v13 = *(v15 + 160);
          }
        }

        ++v11;
        v9 = *a1;
        v10 += 16;
      }

      while (v11 < (a1[1] - *a1) >> 4);
      v34 = v12;
      v35 = v6;
    }

    v36 = *a2;
    if (v34 < (a2[1] - *a2) >> 4)
    {
      v37 = sub_24BE7E2A4(*(*(v36 + 16 * v34) + 60) * v13);
      __p = 0uLL;
      v47 = 0;
      sub_24BD7E680(&__p, v50, v51, (v51 - v50) >> 3);
      v54[0] = &off_285F93798;
      v54[1] = sub_24BE7E1F0;
      v54[3] = v54;
      sub_24BE7F25C((v36 + 16 * v34), v37, v13, &__p, v35);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }
  }

  else
  {
    v20 = *a1;
    if (a1[1] == *a1)
    {
      v33 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      do
      {
        if (v24 >= ((a2[1] - *a2) >> 4))
        {
          break;
        }

        v25 = *(v20 + v22);
        if ((*(v25 + 168) & 2) != 0)
        {
          v26 = *(*a2 + 16 * v24);
          if (*(v25 + 48) == *(v26 + 48) && ((*(v26 + 56) ^ *(v25 + 56)) & 0xFF00000000) == 0)
          {
            v27 = *(v20 + v22 + 8);
            if (v27)
            {
              if (!*(v27 + 8))
              {
                v28 = *(v25 + 144);
                if (v28)
                {
                  if (!*(v28 + 8))
                  {
                    v50 = *(*a3 + v22);
                    if (!sub_24BF0D030(a4, &v50))
                    {
                      v29 = *a2;
                      v30 = (*a2 + 16 * v24);
                      if (a6)
                      {
                        v31 = *(v20 + v22);
                        v45[0] = v31;
                        v32 = *(v20 + v22 + 8);
                        v45[1] = v32;
                        if (v32)
                        {
                          atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
                          v29 = *a2;
                          v31 = *(v20 + v22);
                        }

                        sub_24BE7F3C4(v30, v45, (*(v29 + 16 * v24) + 24), *(v31 + 168), *(v31 + 160), 0);
                        sub_24BE7F218(v45);
                      }

                      else
                      {
                        sub_24BE7F2FC(v30, v20 + v22, (*v30 + 24), *(*(v20 + v22) + 168), *(*(v20 + v22) + 160), 0);
                      }

                      ++v24;
                    }
                  }
                }
              }
            }
          }
        }

        ++v23;
        v20 = *a1;
        v22 += 16;
      }

      while (v23 < (a1[1] - *a1) >> 4);
      v33 = v24;
    }

    v38 = *a2;
    if (v33 < (a2[1] - *a2) >> 4)
    {
      v39 = sub_24BE7E2A4(*(*(v38 + 16 * v33) + 60) * *(*(v38 + 16 * v33) + 48));
      v53[0] = &off_285F93798;
      v53[1] = sub_24BE7E1F0;
      v53[3] = v53;
      sub_24BE7EE1C((v38 + 16 * v33), v39);
    }
  }
}

float sub_24BF0C928(void *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE7F100(a1);
  return **(*a1 + 152);
}

__int16 sub_24BF0C9DC@<H0>(void *a1@<X0>)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE7F100(a1);
  return **(*a1 + 152);
}

uint64_t sub_24BF0CA90(void *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE7F100(a1);
  return **(*a1 + 152);
}

float sub_24BF0CB44(void *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE7F100(a1);
  return **(*a1 + 152);
}

uint64_t sub_24BF0CBF8(void *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE7F100(a1);
  return **(*a1 + 152);
}

uint64_t sub_24BF0CCAC(void *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE7F100(a1);
  return **(*a1 + 152);
}

uint64_t sub_24BF0CD60(void *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE7F100(a1);
  return **(*a1 + 152);
}

uint64_t sub_24BF0CE14(void *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE7F100(a1);
  return **(*a1 + 152);
}

uint64_t sub_24BF0CEC8(void *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE7F100(a1);
  return **(*a1 + 152);
}

uint64_t sub_24BF0CF7C(void *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BE7F100(a1);
  return **(*a1 + 152);
}

void *sub_24BF0D030(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v3 == v8)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24BF0D0E4(uint64_t *a1, uint64_t a2, void *a3, int a4)
{
  result = (*(**a3 + 40))(*a3, *(*a1 + 152), *(*a1 + 60) * *(*a1 + 48), a2);
  if (a4)
  {
    v8 = *a1;
    v9 = *(*a1 + 60);
    switch(v9)
    {
      case 8:
        v16 = *(v8 + 160);
        if (v16)
        {
          v17 = 0;
          v18 = *(v8 + 152);
          do
          {
            v19 = 0;
            v20 = 7;
            do
            {
              v21 = *(v18 + v19);
              *(v18 + v19) = *(v18 + v20);
              *(v18 + v20) = v21;
              ++v19;
              --v20;
            }

            while (v19 != 4);
            ++v17;
            v18 += 8;
          }

          while (v17 != v16);
        }

        break;
      case 4:
        v13 = *(v8 + 160);
        if (v13)
        {
          v14 = *(v8 + 152);
          do
          {
            v7.i32[0] = *v14;
            v15 = vrev64_s16(*&vmovl_u8(v7));
            v7 = vuzp1_s8(v15, v15);
            *v14++ = v7.i32[0];
            --v13;
          }

          while (v13);
        }

        break;
      case 2:
        v10 = *(v8 + 160);
        if (v10)
        {
          v11 = (*(v8 + 152) + 1);
          do
          {
            v12 = *(v11 - 1);
            *(v11 - 1) = *v11;
            *v11 = v12;
            v11 += 2;
            --v10;
          }

          while (v10);
        }

        break;
    }
  }

  return result;
}

void sub_24BF0D20C(uint64_t a1, uint64_t a2, int ***a3)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = sub_24BE7E2A4(*(*a3 + 60) * (*a3)[6]);
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(a3, v4);
}

void sub_24BF0D2F4(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  sub_24BCC9A1C(&v19, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
  v7 = *a1;
  v17 = 0;
  v18 = 0;
  __p = 0;
  sub_24BD7E680(&__p, *(v7 + 24), *(v7 + 32), (*(v7 + 32) - *(v7 + 24)) >> 3);
  v8 = (a2[1] - *a2) >> 2;
  v9 = (v8 - 1);
  if (v8 - 1 >= 0)
  {
    do
    {
      v10 = *(*a2 + 4 * v9);
      v11 = v19 + 4 * v10;
      v12 = v20 - (v11 + 4);
      if (v20 != v11 + 4)
      {
        memmove(v19 + 4 * v10, v11 + 4, v20 - (v11 + 4));
      }

      v20 = &v11[v12];
      v13 = __p + 8 * v10;
      v14 = v17 - (v13 + 8);
      if (v17 != v13 + 8)
      {
        memmove(__p + 8 * v10, v13 + 8, v17 - (v13 + 8));
      }

      v17 = &v13[v14];
    }

    while (v9-- > 0);
  }

  sub_24BF0DEB8(a3, &v19, &__p);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_24BF0D420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF0D454(uint64_t **a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  v127[2] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *a2;
  if (*a1)[6] == (*a1)[20] && a2[1] - v7 == v6[1] - *v6 && (v6[21])
  {
    *a3 = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    return;
  }

  v103 = a3;
  if ((v6[21] & 2) != 0)
  {
    LODWORD(v120) = sub_24BD1EEAC(a1, *v7);
    v124 = 0;
    v125 = 0;
    v123 = 0;
    sub_24BCC9910(&v123, &v120, &v120 + 1, 1uLL);
    v126 = *((*a1)[3] + 8 * **a2);
    v121 = 0;
    v122 = 0;
    v120 = 0;
    sub_24BCCD684(&v120, &v126, v127, 1uLL);
    v8 = *a2;
    if ((a2[1] - *a2) >= 5)
    {
      v9 = 0;
      do
      {
        v10 = v8[v9 + 1];
        if (v10 - 1 == v8[v9] && (v11 = sub_24BD1EEAC(a1, v10), v10 = (*a2)[v9 + 1], v11 >= 2))
        {
          v12 = sub_24BD1EEAC(a1, v10);
          *(v124 - 1) *= v12;
          v8 = *a2;
          *(v121 - 1) = *((*a1)[3] + 8 * (*a2)[v9 + 1]);
        }

        else
        {
          v13 = sub_24BD1EEAC(a1, v10);
          v14 = v124;
          if (v124 >= v125)
          {
            v16 = v123;
            v17 = v124 - v123;
            v18 = (v124 - v123) >> 2;
            v19 = v18 + 1;
            if ((v18 + 1) >> 62)
            {
              sub_24BC8E01C();
            }

            v20 = v125 - v123;
            if ((v125 - v123) >> 1 > v19)
            {
              v19 = v20 >> 1;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v21 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              sub_24BC92E0C(&v123, v21);
            }

            v22 = (4 * v18);
            v23 = &v22[-((v124 - v123) >> 2)];
            *v22 = v13;
            v15 = (v22 + 1);
            memcpy(v23, v16, v17);
            v24 = v123;
            v123 = v23;
            v124 = v15;
            v125 = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v124 = v13;
            v15 = v14 + 4;
          }

          v124 = v15;
          sub_24BD4C778(&v120, ((*a1)[3] + 8 * (*a2)[v9 + 1]));
          v8 = *a2;
        }

        v25 = v9 + 2;
        ++v9;
      }

      while (v25 < a2[1] - v8);
    }

    v26 = ((v124 - v123) >> 2) - 1;
    if (v26 >= 0)
    {
      v27 = v26 + 1;
      v28 = 4 * (((v124 - v123) >> 2) - 1);
      v29 = v28 ^ 0xFFFFFFFFFFFFFFFCLL;
      v30 = 8 * (((v124 - v123) >> 2) - 1);
      v31 = v30 + 8;
      v32 = v30 ^ 0xFFFFFFFFFFFFFFF8;
      do
      {
        if (*&v123[v28] == 1)
        {
          v33 = &v123[v28];
          v34 = &v123[v28 + 4];
          v35 = v29 + v124 - v123;
          if (v34 != v124)
          {
            memmove(v33, v34, v29 + v124 - v123);
          }

          v124 = &v33[v35];
          v36 = &v120[v31 - 8];
          v37 = v32 + v121 - v120;
          if (&v120[v31] != v121)
          {
            memmove(&v120[v31 - 8], &v120[v31], v32 + v121 - v120);
          }

          v121 = &v36[v37];
        }

        v29 += 4;
        v31 -= 8;
        v32 += 8;
        v28 -= 4;
        v38 = v27-- <= 1;
      }

      while (!v38);
    }

    v39 = *(v121 - 1);
    if (v39)
    {
      if (v39 == 1)
      {
        v118 = 0uLL;
        v119 = 0;
        sub_24BCC9A1C(&v118, v123, v124, (v124 - v123) >> 2);
        memset(v117, 0, sizeof(v117));
        sub_24BD7E680(v117, v120, v121, (v121 - v120) >> 3);
        *v103 = 1;
        *(v103 + 8) = v118;
        v40 = v119;
        v118 = 0uLL;
        v119 = 0;
        v41 = v117[0];
        *(v103 + 24) = v40;
        *(v103 + 32) = v41;
        v42 = v117;
      }

      else
      {
        v115 = 0uLL;
        v116 = 0;
        sub_24BCC9A1C(&v115, v123, v124, (v124 - v123) >> 2);
        memset(v114, 0, sizeof(v114));
        sub_24BD7E680(v114, v120, v121, (v121 - v120) >> 3);
        *v103 = 2;
        *(v103 + 8) = v115;
        v44 = v116;
        v115 = 0uLL;
        v116 = 0;
        v45 = v114[0];
        *(v103 + 24) = v44;
        *(v103 + 32) = v45;
        v42 = v114;
      }

      v43 = 0;
      *(v103 + 40) = *(v42 + 1);
      v42[1] = 0;
      v42[2] = 0;
      *v42 = 0;
    }

    else
    {
      v43 = 1;
    }

    if (v120)
    {
      v121 = v120;
      operator delete(v120);
    }

    if (v123)
    {
      v124 = v123;
      operator delete(v123);
    }

    if (!v43)
    {
      return;
    }

    v7 = *a2;
  }

  v123 = 0;
  v124 = 0;
  v125 = 0;
  v46 = a2[1];
  if (v7 == v46)
  {
    v60 = 0;
    v59 = 0;
  }

  else
  {
    do
    {
      v47 = *v7;
      if (sub_24BD1EEAC(a1, *v7) >= 2)
      {
        v48 = sub_24BD1EEAC(a1, v47);
        v49 = *((*a1)[3] + 8 * v47);
        v50 = v124;
        if (v124 >= v125)
        {
          v52 = (v124 - v123) >> 4;
          v53 = v52 + 1;
          if ((v52 + 1) >> 60)
          {
            sub_24BC8E01C();
          }

          v54 = v125 - v123;
          if ((v125 - v123) >> 3 > v53)
          {
            v53 = v54 >> 3;
          }

          if (v54 >= 0x7FFFFFFFFFFFFFF0)
          {
            v55 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = v53;
          }

          if (v55)
          {
            sub_24BDB4770(&v123, v55);
          }

          v56 = (16 * v52);
          *v56 = v48;
          v56[1] = v49;
          v51 = (16 * v52 + 16);
          v57 = (16 * v52 - (v124 - v123));
          memcpy(v57, v123, v124 - v123);
          v58 = v123;
          v123 = v57;
          v124 = v51;
          v125 = 0;
          if (v58)
          {
            operator delete(v58);
          }
        }

        else
        {
          *v124 = v48;
          *(v50 + 1) = v49;
          v51 = v50 + 16;
        }

        v124 = v51;
      }

      ++v7;
    }

    while (v7 != v46);
    v59 = v123;
    v60 = v124;
  }

  v61 = 126 - 2 * __clz((v60 - v59) >> 4);
  if (v60 == v59)
  {
    v62 = 0;
  }

  else
  {
    v62 = v61;
  }

  sub_24BF0DF34(v59, v60, v62, 1);
  v63 = v123;
  v64 = v124;
  v65 = ((v124 - v123) >> 4) - 1;
  if (v65 >= 1)
  {
    v66 = (v124 - v123) >> 4;
    do
    {
      v67 = &v63[4 * v65];
      v68 = *v67;
      v69 = *(v67 + 1);
      v70 = &v63[4 * (v66 - 2)];
      if (*(v70 + 1) == v69 * v68)
      {
        v71 = *v70;
        v72 = v67 + 4;
        if (v67 + 4 == v64)
        {
          v64 = &v63[4 * v65];
        }

        else
        {
          do
          {
            *(v72 - 4) = *v72;
            *(v72 - 1) = *(v72 + 1);
            v72 += 4;
          }

          while (v72 != v64);
          v64 = v72 - 4;
        }

        v124 = v64;
        *v70 = v71 * v68;
        *(v70 + 1) = v69;
      }

      --v66;
      v38 = v65-- <= 1;
    }

    while (!v38);
  }

  v120 = 0;
  v121 = 0;
  v122 = 0;
  v126 = 0;
  v127[0] = 0;
  v127[1] = 0;
  do
  {
    v113 = *v63;
    v73 = v121;
    if (v121 >= v122)
    {
      v75 = v120;
      v76 = v121 - v120;
      v77 = (v121 - v120) >> 2;
      v78 = v77 + 1;
      if ((v77 + 1) >> 62)
      {
        sub_24BC8E01C();
      }

      v79 = v122 - v120;
      if ((v122 - v120) >> 1 > v78)
      {
        v78 = v79 >> 1;
      }

      if (v79 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v80 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v80 = v78;
      }

      if (v80)
      {
        sub_24BC92E0C(&v120, v80);
      }

      v81 = (4 * v77);
      v82 = &v81[-((v121 - v120) >> 2)];
      *v81 = v113;
      v74 = (v81 + 1);
      memcpy(v82, v75, v76);
      v83 = v120;
      v120 = v82;
      v121 = v74;
      v122 = 0;
      if (v83)
      {
        operator delete(v83);
      }
    }

    else
    {
      *v121 = v113;
      v74 = v73 + 4;
    }

    v121 = v74;
    sub_24BD4C778(&v126, &v113 + 1);
    v63 += 4;
  }

  while (v63 != v64);
  v84 = *(v127[0] - 8);
  if (v84 == 1)
  {
    v111 = 0uLL;
    v112 = 0;
    sub_24BCC9A1C(&v111, v120, v121, (v121 - v120) >> 2);
    v85 = v103;
    memset(v110, 0, sizeof(v110));
    sub_24BD7E680(v110, v126, v127[0], (v127[0] - v126) >> 3);
    *v103 = 3;
    *(v103 + 8) = v111;
    v87 = v112;
    v111 = 0uLL;
    v112 = 0;
    v88 = v110[0];
    *(v103 + 24) = v87;
    *(v103 + 32) = v88;
    v89 = v110;
    goto LABEL_118;
  }

  v85 = v103;
  if (!v84)
  {
    v86 = v120;
    goto LABEL_116;
  }

  v90 = ((*a1)[1] - **a1) >> 2;
  v91 = (v90 - 1);
  if (v90 - 1 < 0)
  {
    v96 = 0;
    v97 = 1;
    goto LABEL_112;
  }

  v92 = 1;
  while (1)
  {
    if (v91 == *(a2[1] - 1))
    {
      goto LABEL_107;
    }

    v93 = *((*a1)[3] + 8 * v91);
    v94 = sub_24BD1EEAC(a1, v91);
    if (!v93)
    {
      break;
    }

    if (v93 != v92 && v94 != 1)
    {
LABEL_109:
      v96 = 0;
      goto LABEL_110;
    }

    v92 *= v94;
LABEL_107:
    v38 = v91-- <= 0;
    if (v38)
    {
      goto LABEL_109;
    }
  }

  if (v94 == 1)
  {
    goto LABEL_107;
  }

  v96 = 1;
LABEL_110:
  v97 = v92;
LABEL_112:
  v98 = *(v127[0] - 8);
  v86 = v120;
  if (v98 != v97)
  {
    v96 = 1;
  }

  if (v98 >= v97 && (v96 & 1) != 0)
  {
LABEL_116:
    v105 = 0uLL;
    v106 = 0;
    sub_24BCC9A1C(&v105, v86, v121, (v121 - v86) >> 2);
    memset(v104, 0, sizeof(v104));
    sub_24BD7E680(v104, v126, v127[0], (v127[0] - v126) >> 3);
    *v103 = 5;
    *(v103 + 8) = v105;
    v99 = v106;
    v105 = 0uLL;
    v106 = 0;
    v100 = v104[0];
    *(v103 + 24) = v99;
    *(v103 + 32) = v100;
    v89 = v104;
  }

  else
  {
    v108 = 0uLL;
    v109 = 0;
    sub_24BCC9A1C(&v108, v120, v121, (v121 - v120) >> 2);
    memset(v107, 0, sizeof(v107));
    sub_24BD7E680(v107, v126, v127[0], (v127[0] - v126) >> 3);
    *v103 = 4;
    *(v103 + 8) = v108;
    v101 = v109;
    v108 = 0uLL;
    v109 = 0;
    v102 = v107[0];
    *(v103 + 24) = v101;
    *(v103 + 32) = v102;
    v89 = v107;
  }

LABEL_118:
  *(v85 + 40) = *(v89 + 1);
  v89[1] = 0;
  v89[2] = 0;
  *v89 = 0;
  if (v126)
  {
    v127[0] = v126;
    operator delete(v126);
  }

  if (v120)
  {
    v121 = v120;
    operator delete(v120);
  }

  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }
}

void sub_24BF0DDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 128);
  if (v38)
  {
    *(v36 - 120) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 176);
  if (v39)
  {
    *(v36 - 168) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 152);
  if (v40)
  {
    *(v36 - 144) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BF0DEB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_24BCC9A1C(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BD7E680(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  return a1;
}

void sub_24BF0DF18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_24BF0DF34(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  j = v7;
  while (1)
  {
    v7 = j;
    v9 = (a2 - j) >> 4;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          return sub_24BF0EA84(j, (j + 16), a2 - 4);
        case 4:
          result = sub_24BF0EA84(j, (j + 16), (j + 32));
          v50 = *(a2 - 1);
          v51 = *(j + 40);
          if ((v50 == 0) != (v51 != 0))
          {
            if (v50 <= v51)
            {
              return result;
            }
          }

          else if (v50 >= v51)
          {
            return result;
          }

          v101 = *(j + 32);
          *(j + 32) = *(a2 - 4);
          *(a2 - 4) = v101;
          *(j + 40) = v50;
          *(a2 - 1) = v51;
          v102 = *(j + 40);
          v103 = *(j + 24);
          if ((v102 == 0) != (v103 != 0))
          {
            if (v102 <= v103)
            {
              return result;
            }
          }

          else if (v102 >= v103)
          {
            return result;
          }

          v109 = *(j + 16);
          v110 = *(j + 32);
          *(j + 16) = v110;
          *(j + 32) = v109;
          *(j + 24) = v102;
          *(j + 40) = v103;
          v111 = *(j + 8);
          if ((v102 == 0) != (v111 != 0))
          {
            if (v102 <= v111)
            {
              return result;
            }
          }

          else if (v102 >= v111)
          {
            return result;
          }

          v112 = *j;
          *j = v110;
          *(j + 16) = v112;
          *(j + 8) = v102;
          *(j + 24) = v111;
          return result;
        case 5:

          return sub_24BF0EBDC(j, j + 16, j + 32, (j + 48), a2 - 4);
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v48 = *(a2 - 1);
        v49 = *(j + 8);
        if ((v48 == 0) != (v49 != 0))
        {
          if (v48 <= v49)
          {
            return result;
          }
        }

        else if (v48 >= v49)
        {
          return result;
        }

        v100 = *j;
        *j = *(a2 - 4);
        *(a2 - 4) = v100;
        *(j + 8) = v48;
        *(a2 - 1) = v49;
        return result;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (j == a2)
      {
        return result;
      }

      v65 = (v9 - 2) >> 1;
      v66 = v65;
      while (1)
      {
        v67 = v66;
        if (v65 < v66)
        {
          goto LABEL_168;
        }

        v68 = (2 * v66) | 1;
        v69 = j + 16 * v68;
        if (2 * v67 + 2 < v9)
        {
          v70 = *(v69 + 8);
          v71 = *(v69 + 24);
          if ((v70 == 0) == (v71 != 0))
          {
            if (v70 >= v71)
            {
              goto LABEL_150;
            }

LABEL_149:
            v69 += 16;
            v68 = 2 * v67 + 2;
            goto LABEL_150;
          }

          if (v70 > v71)
          {
            goto LABEL_149;
          }
        }

LABEL_150:
        v72 = (j + 16 * v67);
        v73 = *(v69 + 8);
        v74 = *v72;
        v75 = v72[1];
        result = v75 != 0;
        if ((v73 == 0) != (v75 != 0))
        {
          if (v73 <= v75)
          {
            goto LABEL_154;
          }
        }

        else if (v73 >= v75)
        {
LABEL_154:
          *v72 = *v69;
          v72[1] = v73;
          if (v65 < v68)
          {
LABEL_155:
            v76 = v69;
LABEL_167:
            *v76 = v74;
            *(v76 + 8) = v75;
            goto LABEL_168;
          }

          while (2)
          {
            v77 = 2 * v68;
            v68 = (2 * v68) | 1;
            v76 = j + 16 * v68;
            v78 = v77 + 2;
            if (v78 < v9)
            {
              v79 = *(v76 + 8);
              v80 = *(v76 + 24);
              if ((v79 == 0) != (v80 != 0))
              {
                if (v79 <= v80)
                {
                  goto LABEL_162;
                }
              }

              else if (v79 >= v80)
              {
                goto LABEL_162;
              }

              v76 += 16;
              v68 = v78;
            }

LABEL_162:
            v81 = *(v76 + 8);
            result = v81 == 0;
            if ((v75 != 0) != (v81 == 0))
            {
              if (v81 > v75)
              {
                goto LABEL_155;
              }
            }

            else if (v81 < v75)
            {
              goto LABEL_155;
            }

            *v69 = *v76;
            *(v69 + 8) = v81;
            v69 = v76;
            if (v65 < v68)
            {
              goto LABEL_167;
            }

            continue;
          }
        }

LABEL_168:
        v66 = v67 - 1;
        if (!v67)
        {
          while (1)
          {
            v82 = 0;
            v83 = *j;
            v84 = *(j + 8);
            v85 = j;
            do
            {
              v86 = v85;
              v87 = &v85[2 * v82];
              v85 = v87 + 2;
              v88 = 2 * v82;
              v82 = (2 * v82) | 1;
              v89 = v88 + 2;
              if (v89 >= v9)
              {
                goto LABEL_176;
              }

              v90 = v87[3];
              result = v87[5];
              if ((v90 == 0) == (result != 0))
              {
                if (v90 >= result)
                {
                  goto LABEL_176;
                }

LABEL_175:
                v85 = v87 + 4;
                v82 = v89;
                goto LABEL_176;
              }

              if (v90 > result)
              {
                goto LABEL_175;
              }

LABEL_176:
              *v86 = *v85;
              v86[1] = v85[1];
            }

            while (v82 <= ((v9 - 2) >> 1));
            if (v85 == a2 - 2)
            {
              *v85 = v83;
              goto LABEL_192;
            }

            *v85 = *(a2 - 4);
            v85[1] = *(a2 - 1);
            *(a2 - 4) = v83;
            *(a2 - 1) = v84;
            v91 = (v85 - j + 16) >> 4;
            v92 = v91 - 2;
            if (v91 < 2)
            {
              goto LABEL_193;
            }

            v93 = v92 >> 1;
            v94 = j + 16 * (v92 >> 1);
            v95 = *(v94 + 8);
            v96 = *v85;
            v84 = v85[1];
            result = v84 != 0;
            if ((v95 == 0) == (v84 != 0))
            {
              if (v95 >= v84)
              {
                goto LABEL_193;
              }

LABEL_184:
              *v85 = *v94;
              v85[1] = v95;
              if (v92 >= 2)
              {
                do
                {
                  v97 = v93 - 1;
                  v93 = (v93 - 1) >> 1;
                  v85 = (j + 16 * v93);
                  v98 = v85[1];
                  result = v98 == 0;
                  if ((v84 != 0) != (v98 == 0))
                  {
                    if (v98 <= v84)
                    {
                      goto LABEL_185;
                    }
                  }

                  else if (v98 >= v84)
                  {
                    goto LABEL_185;
                  }

                  *v94 = *v85;
                  *(v94 + 8) = v98;
                  v94 = j + 16 * v93;
                }

                while (v97 > 1);
              }

              else
              {
LABEL_185:
                v85 = v94;
              }

              *v85 = v96;
LABEL_192:
              v85[1] = v84;
              goto LABEL_193;
            }

            if (v95 > v84)
            {
              goto LABEL_184;
            }

LABEL_193:
            a2 -= 2;
            if (v9-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v10 = v9 >> 1;
    v11 = j + 16 * (v9 >> 1);
    if (v9 < 0x81)
    {
      result = sub_24BF0EA84((v7 + 16 * (v9 >> 1)), v7, a2 - 4);
    }

    else
    {
      sub_24BF0EA84(v7, (v7 + 16 * (v9 >> 1)), a2 - 4);
      sub_24BF0EA84((v7 + 16), (v11 - 16), a2 - 8);
      sub_24BF0EA84((v7 + 32), (v7 + 16 + 16 * v10), a2 - 12);
      result = sub_24BF0EA84((v11 - 16), v11, (v7 + 16 + 16 * v10));
      v12 = *v7;
      *v7 = *v11;
      *v11 = v12;
      v13 = *(v7 + 8);
      *(v7 + 8) = *(v11 + 8);
      *(v11 + 8) = v13;
    }

    --a3;
    v14 = *v7;
    if (a4)
    {
      v15 = *(v7 + 8);
LABEL_29:
      for (i = 0; ; i += 16)
      {
        v20 = *(v7 + i + 24);
        if ((v15 != 0) == (v20 == 0))
        {
          break;
        }

        if (v20 <= v15)
        {
          goto LABEL_35;
        }

LABEL_34:
        ;
      }

      if (v20 < v15)
      {
        goto LABEL_34;
      }

LABEL_35:
      v21 = (v7 + i + 16);
      v22 = a2 - 2;
      if (i)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[1];
            v22 -= 2;
            if ((v15 != 0) == (v24 == 0))
            {
              break;
            }

            if (v24 > v15)
            {
              goto LABEL_55;
            }
          }
        }

        while (v24 >= v15);
      }

      else
      {
        v23 = a2;
        if (v21 < a2)
        {
          v25 = a2 - 2;
          do
          {
            while (1)
            {
              v23 = v25;
              v26 = v25[1];
              v25 -= 2;
              if ((v15 != 0) == (v26 == 0))
              {
                break;
              }

              if (v26 > v15 || v21 >= v23)
              {
                goto LABEL_55;
              }
            }
          }

          while (v26 >= v15 && v21 < v23);
        }
      }

LABEL_55:
      j = v21;
      if (v21 < v23)
      {
        v29 = v23;
        do
        {
          v30 = *j;
          *j = *v29;
          *v29 = v30;
          v31 = *(j + 8);
          *(j + 8) = v29[1];
          v29[1] = v31;
          v32 = j + 16;
          do
          {
            while (1)
            {
              j = v32;
              v33 = *(v32 + 8);
              v32 += 16;
              if ((v15 != 0) == (v33 == 0))
              {
                break;
              }

              if (v33 <= v15)
              {
                goto LABEL_62;
              }
            }
          }

          while (v33 < v15);
LABEL_62:
          v34 = v29 - 2;
          do
          {
            while (1)
            {
              v29 = v34;
              v35 = v34[1];
              v34 -= 2;
              if ((v15 != 0) == (v35 == 0))
              {
                break;
              }

              if (v35 > v15)
              {
                goto LABEL_67;
              }
            }
          }

          while (v35 >= v15);
LABEL_67:
          ;
        }

        while (j < v29);
      }

      if (j - 16 != v7)
      {
        *v7 = *(j - 16);
        *(v7 + 8) = *(j - 8);
      }

      *(j - 16) = v14;
      *(j - 8) = v15;
      if (v21 < v23)
      {
LABEL_73:
        result = sub_24BF0DF34(v7, j - 16, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v36 = sub_24BF0EE18(v7, (j - 16));
        result = sub_24BF0EE18(j, a2);
        if (result)
        {
          a2 = (j - 16);
          if (v36)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v36)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
      v16 = *(v7 - 8);
      v15 = *(v7 + 8);
      if ((v16 == 0) != (v15 != 0))
      {
        if (v16 > v15)
        {
          goto LABEL_29;
        }
      }

      else if (v16 < v15)
      {
        goto LABEL_29;
      }

      v17 = *(a2 - 1);
      if ((v15 == 0) != (v17 != 0))
      {
        if (v15 > v17)
        {
          goto LABEL_75;
        }
      }

      else if (v15 < v17)
      {
LABEL_75:
        v37 = v7 + 16;
        do
        {
          while (1)
          {
            j = v37;
            v38 = *(v37 + 8);
            v37 += 16;
            if ((v15 == 0) == (v38 != 0))
            {
              break;
            }

            if (v15 > v38)
            {
              goto LABEL_80;
            }
          }
        }

        while (v15 >= v38);
        goto LABEL_80;
      }

      for (j = v7 + 16; j < a2; j += 16)
      {
        v18 = *(j + 8);
        if ((v15 == 0) != (v18 != 0))
        {
          if (v15 > v18)
          {
            break;
          }
        }

        else if (v15 < v18)
        {
          break;
        }
      }

LABEL_80:
      v39 = a2;
      if (j >= a2)
      {
        goto LABEL_98;
      }

      v40 = a2 - 3;
      while ((v15 == 0) != (v17 != 0))
      {
        if (v15 <= v17)
        {
          goto LABEL_87;
        }

LABEL_86:
        v41 = *v40;
        v40 -= 2;
        v17 = v41;
      }

      if (v15 < v17)
      {
        goto LABEL_86;
      }

LABEL_87:
      v39 = v40 + 1;
LABEL_98:
      while (j < v39)
      {
        v42 = *j;
        *j = *v39;
        *v39 = v42;
        v43 = *(j + 8);
        *(j + 8) = v39[1];
        v39[1] = v43;
        v44 = j + 16;
        do
        {
          while (1)
          {
            j = v44;
            v45 = *(v44 + 8);
            v44 += 16;
            if ((v15 == 0) == (v45 != 0))
            {
              break;
            }

            if (v15 > v45)
            {
              goto LABEL_93;
            }
          }
        }

        while (v15 >= v45);
LABEL_93:
        v46 = v39 - 2;
        do
        {
          while (1)
          {
            v39 = v46;
            v47 = v46[1];
            v46 -= 2;
            if ((v15 == 0) == (v47 != 0))
            {
              break;
            }

            if (v15 <= v47)
            {
              goto LABEL_98;
            }
          }
        }

        while (v15 < v47);
      }

      if (j - 16 != v7)
      {
        *v7 = *(j - 16);
        *(v7 + 8) = *(j - 8);
      }

      a4 = 0;
      *(j - 16) = v14;
      *(j - 8) = v15;
    }
  }

  v52 = (j + 16);
  v54 = j == a2 || v52 == a2;
  if ((a4 & 1) == 0)
  {
    if (v54)
    {
      return result;
    }

    while (1)
    {
      v104 = v7;
      v7 = v52;
      v106 = *(v104 + 16);
      v105 = *(v104 + 24);
      v107 = *(v104 + 8);
      if ((v105 == 0) != (v107 != 0))
      {
        if (v105 > v107)
        {
          goto LABEL_207;
        }
      }

      else if (v105 < v107)
      {
        do
        {
LABEL_207:
          while (1)
          {
            v108 = v104;
            *(v104 + 16) = *v104;
            *(v104 + 24) = v107;
            v104 -= 16;
            v107 = *(v108 - 8);
            if ((v105 == 0) == (v107 != 0))
            {
              break;
            }

            if (v105 <= v107)
            {
              goto LABEL_211;
            }
          }
        }

        while (v105 < v107);
LABEL_211:
        *v108 = v106;
        *(v108 + 8) = v105;
      }

      v52 = (v7 + 16);
      if ((v7 + 16) == a2)
      {
        return result;
      }
    }
  }

  if (v54)
  {
    return result;
  }

  v55 = 0;
  v56 = j;
  while (2)
  {
    v57 = v56;
    v56 = v52;
    v59 = *(v57 + 16);
    v58 = *(v57 + 24);
    v60 = *(v57 + 8);
    if ((v58 == 0) != (v60 != 0))
    {
      if (v58 <= v60)
      {
        goto LABEL_139;
      }
    }

    else if (v58 >= v60)
    {
      goto LABEL_139;
    }

    *(v57 + 16) = *v57;
    *(v56 + 8) = v60;
    v61 = j;
    if (v57 == j)
    {
      goto LABEL_138;
    }

    v62 = v55;
    while (2)
    {
      v63 = *(j + v62 - 8);
      if ((v58 == 0) != (v63 != 0))
      {
        if (v58 <= v63)
        {
          v61 = v57;
          goto LABEL_138;
        }

LABEL_135:
        v57 -= 16;
        v64 = j + v62;
        *v64 = *(j + v62 - 16);
        *(v64 + 8) = v63;
        v62 -= 16;
        if (!v62)
        {
          v61 = j;
          goto LABEL_138;
        }

        continue;
      }

      break;
    }

    if (v58 < v63)
    {
      goto LABEL_135;
    }

    v61 = j + v62;
LABEL_138:
    *v61 = v59;
    *(v61 + 8) = v58;
LABEL_139:
    v52 = (v56 + 16);
    v55 += 16;
    if ((v56 + 16) != a2)
    {
      continue;
    }

    return result;
  }
}

int *sub_24BF0EA84(int *result, int *a2, int *a3)
{
  v3 = *(a2 + 1);
  v4 = *(result + 1);
  if ((v3 == 0) == (v4 != 0))
  {
    if (v3 >= v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = *(a3 + 1);
    if ((v3 != 0) != (v6 == 0))
    {
      if (v6 <= v3)
      {
LABEL_9:
        v7 = *result;
        *result = *a2;
        *a2 = v7;
        *(result + 1) = v3;
        *(a2 + 1) = v4;
        v8 = *(a3 + 1);
        if ((v4 != 0) != (v8 == 0))
        {
          if (v8 <= v4)
          {
            return result;
          }
        }

        else if (v8 >= v4)
        {
          return result;
        }

        *a2 = *a3;
        *a3 = v7;
        *(a2 + 1) = v8;
LABEL_20:
        *(a3 + 1) = v4;
        return result;
      }
    }

    else if (v6 >= v3)
    {
      goto LABEL_9;
    }

    v12 = *result;
    *result = *a3;
    *a3 = v12;
    *(result + 1) = v6;
    goto LABEL_20;
  }

  if (v3 > v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = *(a3 + 1);
  if ((v3 != 0) != (v5 == 0))
  {
    if (v5 <= v3)
    {
      return result;
    }
  }

  else if (v5 >= v3)
  {
    return result;
  }

  v9 = *a2;
  *a2 = *a3;
  *a3 = v9;
  *(a2 + 1) = v5;
  *(a3 + 1) = v3;
  v10 = *(a2 + 1);
  v11 = *(result + 1);
  if ((v10 == 0) != (v11 != 0))
  {
    if (v10 <= v11)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (v10 < v11)
  {
LABEL_22:
    v13 = *result;
    *result = *a2;
    *a2 = v13;
    *(result + 1) = v10;
    *(a2 + 1) = v11;
  }

  return result;
}

int *sub_24BF0EBDC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5)
{
  result = sub_24BF0EA84(a1, a2, a3);
  v11 = *(a4 + 1);
  v12 = *(a3 + 8);
  if ((v11 == 0) != (v12 != 0))
  {
    if (v11 <= v12)
    {
      goto LABEL_14;
    }
  }

  else if (v11 >= v12)
  {
    goto LABEL_14;
  }

  v13 = *a3;
  *a3 = *a4;
  *a4 = v13;
  *(a3 + 8) = v11;
  *(a4 + 1) = v12;
  v14 = *(a3 + 8);
  v15 = *(a2 + 8);
  if ((v14 == 0) != (v15 != 0))
  {
    if (v14 <= v15)
    {
      goto LABEL_14;
    }
  }

  else if (v14 >= v15)
  {
    goto LABEL_14;
  }

  v16 = *a2;
  *a2 = *a3;
  *a3 = v16;
  *(a2 + 8) = v14;
  *(a3 + 8) = v15;
  v17 = *(a2 + 8);
  v18 = *(a1 + 8);
  if ((v17 == 0) == (v18 != 0))
  {
    if (v17 >= v18)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v17 > v18)
  {
LABEL_13:
    v19 = *a1;
    *a1 = *a2;
    *a2 = v19;
    *(a1 + 8) = v17;
    *(a2 + 8) = v18;
  }

LABEL_14:
  v20 = *(a5 + 1);
  v21 = *(a4 + 1);
  if ((v20 == 0) != (v21 != 0))
  {
    if (v20 <= v21)
    {
      return result;
    }
  }

  else if (v20 >= v21)
  {
    return result;
  }

  v22 = *a4;
  *a4 = *a5;
  *a5 = v22;
  *(a4 + 1) = v20;
  *(a5 + 1) = v21;
  v23 = *(a4 + 1);
  v24 = *(a3 + 8);
  if ((v23 == 0) != (v24 != 0))
  {
    if (v23 <= v24)
    {
      return result;
    }
  }

  else if (v23 >= v24)
  {
    return result;
  }

  v25 = *a3;
  *a3 = *a4;
  *a4 = v25;
  *(a3 + 8) = v23;
  *(a4 + 1) = v24;
  v26 = *(a3 + 8);
  v27 = *(a2 + 8);
  if ((v26 == 0) != (v27 != 0))
  {
    if (v26 <= v27)
    {
      return result;
    }
  }

  else if (v26 >= v27)
  {
    return result;
  }

  v28 = *a2;
  *a2 = *a3;
  *a3 = v28;
  *(a2 + 8) = v26;
  *(a3 + 8) = v27;
  v29 = *(a2 + 8);
  v30 = *(a1 + 8);
  if ((v29 == 0) == (v30 != 0))
  {
    if (v29 >= v30)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (v29 > v30)
  {
LABEL_30:
    v31 = *a1;
    *a1 = *a2;
    *a2 = v31;
    *(a1 + 8) = v29;
    *(a2 + 8) = v30;
  }

  return result;
}

BOOL sub_24BF0EE18(uint64_t a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      sub_24BF0EA84(a1, (a1 + 16), a2 - 4);
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_24BF0EBDC(a1, a1 + 16, a1 + 32, (a1 + 48), a2 - 4);
        return 1;
      }

      goto LABEL_12;
    }

    sub_24BF0EA84(a1, (a1 + 16), (a1 + 32));
    v17 = *(a2 - 1);
    v18 = *(a1 + 40);
    if ((v17 == 0) != (v18 != 0))
    {
      if (v17 <= v18)
      {
        return 1;
      }
    }

    else if (v17 >= v18)
    {
      return 1;
    }

    v20 = *(a1 + 32);
    *(a1 + 32) = *(a2 - 4);
    *(a2 - 4) = v20;
    *(a1 + 40) = v17;
    *(a2 - 1) = v18;
    v21 = *(a1 + 40);
    v22 = *(a1 + 24);
    if ((v21 == 0) != (v22 != 0))
    {
      if (v21 <= v22)
      {
        return 1;
      }
    }

    else if (v21 >= v22)
    {
      return 1;
    }

    v23 = *(a1 + 16);
    v24 = *(a1 + 32);
    *(a1 + 16) = v24;
    *(a1 + 32) = v23;
    *(a1 + 24) = v21;
    *(a1 + 40) = v22;
    v25 = *(a1 + 8);
    if ((v21 == 0) != (v25 != 0))
    {
      if (v21 <= v25)
      {
        return 1;
      }
    }

    else if (v21 >= v25)
    {
      return 1;
    }

    v27 = *a1;
    *a1 = v24;
    *(a1 + 16) = v27;
    *(a1 + 8) = v21;
    *(a1 + 24) = v25;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *(a1 + 8);
    if ((v5 == 0) != (v6 != 0))
    {
      if (v5 <= v6)
      {
        return 1;
      }
    }

    else if (v5 >= v6)
    {
      return 1;
    }

    v19 = *a1;
    *a1 = *(a2 - 4);
    *(a2 - 4) = v19;
    *(a1 + 8) = v5;
    *(a2 - 1) = v6;
    return 1;
  }

LABEL_12:
  v7 = (a1 + 32);
  sub_24BF0EA84(a1, (a1 + 16), (a1 + 32));
  v8 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (2)
  {
    v11 = *v8;
    v12 = v8[1];
    v13 = v7[1];
    if ((v12 == 0) != (v13 != 0))
    {
      if (v12 <= v13)
      {
        goto LABEL_27;
      }
    }

    else if (v12 >= v13)
    {
      goto LABEL_27;
    }

    *v8 = *v7;
    v8[1] = v13;
    v14 = v9;
    while (1)
    {
      v15 = *(a1 + v14 + 24);
      if ((v12 == 0) == (v15 != 0))
      {
        break;
      }

      if (v12 <= v15)
      {
        goto LABEL_25;
      }

LABEL_23:
      *(a1 + v14 + 32) = *(a1 + v14 + 16);
      *(a1 + v14 + 40) = v15;
      v14 -= 16;
      if (v14 == -32)
      {
        v16 = a1;
        goto LABEL_26;
      }
    }

    if (v12 < v15)
    {
      goto LABEL_23;
    }

LABEL_25:
    v16 = a1 + v14 + 32;
LABEL_26:
    *v16 = v11;
    *(v16 + 8) = v12;
    if (++v10 != 8)
    {
LABEL_27:
      v7 = v8;
      v9 += 16;
      v8 += 2;
      if (v8 == a2)
      {
        return 1;
      }

      continue;
    }

    return v8 + 2 == a2;
  }
}

void sub_24BF0F0DC(uint64_t **a1@<X0>, int **a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  v8 = ((*a1)[1] - **a1) >> 2;
  v24 = 0;
  sub_24BF0B420(&__p, v8, &v24);
  v10 = **a1;
  v9 = (*a1)[1];
  v11 = v9 - v10;
  if (v9 == v10)
  {
    v13 = 0;
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = v11 >> 2;
    v15 = *a2;
    v16 = (*a1)[3];
    v17 = *a3;
    v18 = __p;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    do
    {
      v20 = *v15++;
      v19 = v20;
      v22 = *v16++;
      v21 = v22;
      v23 = *v17++;
      v13 += v21 * v19;
      *v18++ = v21 * v23;
      v12 |= v23 >> 31;
      --v14;
    }

    while (v14);
  }

  *a4 = v12;
  *(a4 + 8) = v13;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = 0;
  sub_24BF0B3A4((a4 + 16), __p, v26, (v26 - __p) >> 3);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

void sub_24BF0F1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BF0F1EC(void *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v10 = **a5;
  v11 = (*a5)[1] - v10;
  v12 = (v11 >> 2) - 1;
  if (((v11 >> 2) - 1) < 0)
  {
    v27 = 257;
    v20 = 1;
  }

  else
  {
    v13 = 0;
    v14 = *a2;
    v15 = (v11 >> 2);
    v16 = 1;
    v17 = 1;
    v18 = 1;
    v19 = 1;
    v20 = 1;
    do
    {
      v21 = *&v14[8 * v13];
      v22 = *(v10 + 4 * v13);
      v23 = v22 == 1 || v21 == v17;
      v24 = *(v10 + 4 * v12);
      if (!v23)
      {
        v18 = 0;
      }

      if (v24 != 1 && *&v14[8 * v12] != v16)
      {
        v19 = 0;
      }

      v17 *= v22;
      v16 *= v24;
      if (v21)
      {
        v26 = *(v10 + 4 * v13);
      }

      else
      {
        v26 = 1;
      }

      v20 *= v26;
      ++v13;
      --v12;
    }

    while (v15 != v13);
    v27 = v19 | (v18 << 8);
  }

  v28 = (*(*a1 + 168) & 0xF8) + 2 * v27 + ((v27 >> 6) & 0xFC);
  if (v20 == a4)
  {
    v29 = v28 + 1;
  }

  else
  {
    v29 = v28;
  }

  return sub_24BF0F384(a1, a5, a2, v29, a4, a3);
}

uint64_t *sub_24BF0F2D8(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!v2 || *(v2 + 8) || (v4 = *(*a1 + 144)) == 0 || *(v4 + 8))
  {

    return sub_24BE7F3AC(a2, a1);
  }

  else
  {
    v5[0] = *a1;
    v5[1] = v2;
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    sub_24BE7F46C(a2, v5);
    return sub_24BE7F218(v5);
  }
}

uint64_t *sub_24BF0F384(void *a1, uint64_t *a2, char **a3, char a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[1];
  if (!v6 || *(v6 + 8) || (v8 = *(*a1 + 144)) == 0 || *(v8 + 8))
  {

    return sub_24BE7F2FC(a2, a1, a3, a4, a5, a6);
  }

  else
  {
    v9[0] = *a1;
    v9[1] = v6;
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    sub_24BE7F3C4(a2, v9, a3, a4, a5, a6);
    return sub_24BE7F218(v9);
  }
}

void sub_24BF0F43C(int **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v7 = *a1;
  v8 = a1[1];
  if (v8 != *a1)
  {
    if (*v7 == 1)
    {
      v10 = 1;
    }

    else
    {
      LODWORD(__p) = 0;
      sub_24BC97D60(&v45, &__p);
      v7 = *a1;
      v8 = a1[1];
      v10 = **a1;
    }

    LODWORD(__p) = 1;
    if ((v8 - v7) >= 5)
    {
      v11 = 1;
      v12 = 1;
      do
      {
        v13 = *&v7[4 * v11];
        v10 *= v13;
        v14 = *a2;
        v15 = *(a2 + 8);
        if (*a2 != v15)
        {
          if (v10 <= a3)
          {
            while (*(*v14 + 8 * v11) * v13 == *(*v14 + 8 * v12 - 8))
            {
              v14 += 3;
              if (v14 == v15)
              {
                goto LABEL_12;
              }
            }
          }

          LODWORD(v40) = -1;
          sub_24BC97D60(&v45, &v40);
          v12 = __p;
          v7 = *a1;
          v10 = v13;
        }

LABEL_12:
        if (*&v7[4 * v12] != 1)
        {
          sub_24BC97D60(&v45, &__p);
          v12 = __p;
          v7 = *a1;
        }

        LODWORD(__p) = ++v12;
        v11 = v12;
      }

      while (v12 < ((a1[1] - v7) >> 2));
    }

    LODWORD(__p) = -1;
    sub_24BC97D60(&v45, &__p);
  }

  __p = 0;
  v43 = 0;
  v44 = 0;
  sub_24BF0FF98(&v40, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  for (i = 0; ; i += 2)
  {
    v17 = (v46 - v45) >> 2;
    v18 = i;
    if (v17 > i)
    {
      do
      {
        if (*(v45 + v18) != -1)
        {
          break;
        }

        ++v18;
      }

      while (v17 > v18);
      i = v18;
    }

    if (v17 == v18)
    {
      break;
    }

    v19 = *(v45 + v18);
    v20 = *a1;
    v21 = (*a1)[v19];
    LODWORD(v48) = v21;
    v22 = *(v45 + i + 1);
    if (v22 != -1)
    {
      v23 = (v45 + 4 * i + 8);
      do
      {
        v21 *= *&v20[4 * v22];
        LODWORD(v48) = v21;
        v24 = *v23++;
        v22 = v24;
        ++i;
      }

      while (v24 != -1);
    }

    sub_24BC97D60(&__p, &v48);
    v25 = *a2;
    if (*(a2 + 8) != *a2)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        sub_24BD4C778(&v40[v26], (v25[v26] + 8 * *(v45 + i)));
        ++v27;
        v25 = *a2;
        v26 += 3;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) > v27);
    }
  }

  if (*a1 != a1[1] && __p == v43)
  {
    LODWORD(v48) = 1;
    sub_24BC97D60(&__p, &v48);
    v28 = v40;
    for (j = v41; v28 != j; v28 += 3)
    {
      v31 = v28[1];
      v30 = v28[2];
      if (v31 >= v30)
      {
        v33 = *v28;
        v34 = v31 - *v28;
        v35 = v34 >> 3;
        v36 = (v34 >> 3) + 1;
        if (v36 >> 61)
        {
          sub_24BC8E01C();
        }

        v37 = v30 - v33;
        if (v37 >> 2 > v36)
        {
          v36 = v37 >> 2;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFF8)
        {
          v38 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          sub_24BC91F60(v28, v38);
        }

        *(8 * v35) = 0;
        v32 = 8 * v35 + 8;
        memcpy(0, v33, v34);
        v39 = *v28;
        *v28 = 0;
        v28[1] = v32;
        v28[2] = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      else
      {
        *v31 = 0;
        v32 = (v31 + 8);
      }

      v28[1] = v32;
    }
  }

  sub_24BF1003C(a4, &__p, &v40);
  v48 = &v40;
  sub_24BC8EE84(&v48);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }
}

void sub_24BF0F7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t *a18)
{
  a18 = &a9;
  sub_24BC8EE84(&a18);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_24BF0F864(int **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v7 = *a1;
  v8 = a1[1];
  if (v8 != *a1)
  {
    if (*v7 == 1)
    {
      v10 = 1;
    }

    else
    {
      LODWORD(__p) = 0;
      sub_24BC97D60(&v45, &__p);
      v7 = *a1;
      v8 = a1[1];
      v10 = **a1;
    }

    LODWORD(__p) = 1;
    if ((v8 - v7) >= 5)
    {
      v11 = 1;
      v12 = 1;
      do
      {
        v13 = *&v7[4 * v11];
        v10 *= v13;
        v14 = *a2;
        v15 = *(a2 + 8);
        if (*a2 != v15)
        {
          if (v10 <= a3)
          {
            while (*(*v14 + 8 * v11) * v13 == *(*v14 + 8 * v12 - 8))
            {
              v14 += 3;
              if (v14 == v15)
              {
                goto LABEL_12;
              }
            }
          }

          LODWORD(v40) = -1;
          sub_24BC97D60(&v45, &v40);
          v12 = __p;
          v7 = *a1;
          v10 = v13;
        }

LABEL_12:
        if (*&v7[4 * v12] != 1)
        {
          sub_24BC97D60(&v45, &__p);
          v12 = __p;
          v7 = *a1;
        }

        LODWORD(__p) = ++v12;
        v11 = v12;
      }

      while (v12 < ((a1[1] - v7) >> 2));
    }

    LODWORD(__p) = -1;
    sub_24BC97D60(&v45, &__p);
  }

  __p = 0;
  v43 = 0;
  v44 = 0;
  sub_24BF10238(&v40, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  for (i = 0; ; i += 2)
  {
    v17 = (v46 - v45) >> 2;
    v18 = i;
    if (v17 > i)
    {
      do
      {
        if (*(v45 + v18) != -1)
        {
          break;
        }

        ++v18;
      }

      while (v17 > v18);
      i = v18;
    }

    if (v17 == v18)
    {
      break;
    }

    v19 = *(v45 + v18);
    v20 = *a1;
    v21 = (*a1)[v19];
    LODWORD(v48) = v21;
    v22 = *(v45 + i + 1);
    if (v22 != -1)
    {
      v23 = (v45 + 4 * i + 8);
      do
      {
        v21 *= *&v20[4 * v22];
        LODWORD(v48) = v21;
        v24 = *v23++;
        v22 = v24;
        ++i;
      }

      while (v24 != -1);
    }

    sub_24BC97D60(&__p, &v48);
    v25 = *a2;
    if (*(a2 + 8) != *a2)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        sub_24BD4C778(&v40[v26], (v25[v26] + 8 * *(v45 + i)));
        ++v27;
        v25 = *a2;
        v26 += 3;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) > v27);
    }
  }

  if (*a1 != a1[1] && __p == v43)
  {
    LODWORD(v48) = 1;
    sub_24BC97D60(&__p, &v48);
    v28 = v40;
    for (j = v41; v28 != j; v28 += 3)
    {
      v31 = v28[1];
      v30 = v28[2];
      if (v31 >= v30)
      {
        v33 = *v28;
        v34 = v31 - *v28;
        v35 = v34 >> 3;
        v36 = (v34 >> 3) + 1;
        if (v36 >> 61)
        {
          sub_24BC8E01C();
        }

        v37 = v30 - v33;
        if (v37 >> 2 > v36)
        {
          v36 = v37 >> 2;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFF8)
        {
          v38 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          sub_24BC91F60(v28, v38);
        }

        *(8 * v35) = 0;
        v32 = 8 * v35 + 8;
        memcpy(0, v33, v34);
        v39 = *v28;
        *v28 = 0;
        v28[1] = v32;
        v28[2] = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      else
      {
        *v31 = 0;
        v32 = (v31 + 8);
      }

      v28[1] = v32;
    }
  }

  sub_24BF102DC(a4, &__p, &v40);
  v48 = &v40;
  sub_24BC8EE84(&v48);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }
}

void sub_24BF0FC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t *a18)
{
  a18 = &a9;
  sub_24BC8EE84(&a18);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_24BF0FC8C(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  __p = 0;
  v18 = 0;
  v19 = 0;
  if (*(a1 + 8) != *a1)
  {
    sub_24BC97D60(&v20, *a1);
    sub_24BD4C778(&__p, *a2);
    v8 = *a1;
    v9 = *(a1 + 8);
    if ((v9 - *a1) >= 5)
    {
      v10 = 1;
      v11 = 1;
      v12 = 1;
      do
      {
        v13 = v8[v12];
        if (v13 != 1)
        {
          v14 = (*a2)[v11];
          v15 = v18;
          if (v14 * v13 == *(v18 - 1) && (v16 = *(v21 - 1), v16 * v13 <= a3))
          {
            *(v21 - 1) = v16 * v13;
            *(v15 - 1) = v14;
          }

          else
          {
            sub_24BC97D60(&v20, &v8[v12]);
            sub_24BD4C778(&__p, &(*a2)[v11]);
            v8 = *a1;
            v9 = *(a1 + 8);
          }
        }

        ++v10;
        ++v11;
        ++v12;
      }

      while (v10 < (v9 - v8) >> 2);
    }
  }

  sub_24BF104D8(a4, &v20, &__p);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_24BF0FDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF0FE0C(uint64_t a1@<X0>, uint64_t **a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  __p = 0;
  v18 = 0;
  v19 = 0;
  if (*(a1 + 8) != *a1)
  {
    sub_24BC97D60(&v20, *a1);
    sub_24BD4C778(&__p, *a2);
    v8 = *a1;
    v9 = *(a1 + 8);
    if ((v9 - *a1) >= 5)
    {
      v10 = 1;
      v11 = 1;
      v12 = 1;
      do
      {
        v13 = v8[v12];
        if (v13 != 1)
        {
          v14 = (*a2)[v11];
          v15 = v18;
          if (v14 * v13 == *(v18 - 1) && (v16 = *(v21 - 1), v16 * v13 <= a3))
          {
            *(v21 - 1) = v16 * v13;
            *(v15 - 1) = v14;
          }

          else
          {
            sub_24BC97D60(&v20, &v8[v12]);
            sub_24BD4C778(&__p, &(*a2)[v11]);
            v8 = *a1;
            v9 = *(a1 + 8);
          }
        }

        ++v10;
        ++v11;
        ++v12;
      }

      while (v10 < (v9 - v8) >> 2);
    }
  }

  sub_24BF0DEB8(a4, &v20, &__p);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_24BF0FF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BF0FF98(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_24BCA04D4(a1, a2);
  }

  return a1;
}

uint64_t *sub_24BF1003C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_24BCC9A1C(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BF100C4(a1 + 3, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_24BF100A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BF100C4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCA04D4(result, a4);
  }

  return result;
}

void sub_24BF1012C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BC8EE84(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BF1014C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_24BF0B3A4(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_24BF10200(v8);
  return v4;
}

uint64_t sub_24BF10200(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BCB71DC(a1);
  }

  return a1;
}

uint64_t *sub_24BF10238(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_24BCA04D4(a1, a2);
  }

  return a1;
}

uint64_t *sub_24BF102DC(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_24BCC9A1C(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BF10364(a1 + 3, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_24BF10348(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BF10364(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCA04D4(result, a4);
  }

  return result;
}

void sub_24BF103CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BC8EE84(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BF103EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_24BD7E680(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_24BF104A0(v8);
  return v4;
}

uint64_t sub_24BF104A0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BCB71DC(a1);
  }

  return a1;
}

uint64_t *sub_24BF104D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_24BCC9A1C(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BF0B3A4(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  return a1;
}

void sub_24BF10538(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF10554()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Abs has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF105B0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Add has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF1060C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AddMM has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10668()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Arange has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF106C4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcCos has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10720()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcCosh has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF1077C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcSin has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF107D8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcSinh has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10834()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcTan has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10890()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcTan2 has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF108EC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcTanh has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10948()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArgPartition has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF109A4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArgReduce has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10A00()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArgSort has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10A5C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AsType has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10AB8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AsStrided has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10B14()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "BitwiseBinary has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10B70()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "BlockMaskedMM has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10BCC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Broadcast has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10C28()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Ceil has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10C84()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cholesky has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10CE0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Concatenate has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10D3C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Conjugate has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10D98()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Contiguous has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10DF4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Convolution has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10E50()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Copy has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10EAC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cos has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10F08()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cosh has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10F64()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "CustomTransforms has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF10FC0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Depends has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF1101C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Divide has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11078()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "DivMod has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF110D4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NumberOfElements has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11130()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Remainder has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF1118C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Eigh has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF111E8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Equal has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11244()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Erf has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF112A0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ErfInv has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF112FC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Exp has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11358()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Expm1 has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF113B4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "FFT has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11410()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Floor has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF1146C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Full has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF114C8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Gather has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11524()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GatherMM has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11580()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GatherQMM has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF115DC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Greater has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11638()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GreaterEqual has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11694()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Hadamard has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF116F0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Imag has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF1174C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Less has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF117A8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LessEqual has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11804()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Load has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11860()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Log has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF118BC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Log1p has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11918()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LogicalNot has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11974()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LogicalAnd has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF119D0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LogicalOr has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11A2C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LogAddExp has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11A88()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Matmul has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11AE4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Maximum has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11B40()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Minimum has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11B9C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Multiply has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11BF8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Negative has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11C54()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NotEqual has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11CB0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Pad has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11D0C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Partition has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11D68()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Power has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11DC4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "QRF has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11E20()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "QuantizedMatmul has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11E7C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "RandomBits has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11ED8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Real has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11F34()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Reduce has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11F90()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Reshape has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF11FEC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Round has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF12048()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Scan has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF120A4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Scatter has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF12100()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Select has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF1215C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sigmoid has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF121B8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sign has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF12214()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sin has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF12270()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sinh has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF122CC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Slice has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF12328()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SliceUpdate has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF12384()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Softmax has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF123E0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sort has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF1243C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Split has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF12498()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Square has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF124F4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sqrt has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF12550()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "StopGradient has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF125AC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Subtract has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF12608()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SVD has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF12664()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Tan has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF126C0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Tanh has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF1271C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Transpose has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF12778()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Inverse has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF127D4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "View has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF12830()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AffineQuantize has no CPU implementation.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF128A8(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF12950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF129A8(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF12A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF12B00(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF12BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF12C00(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF12CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF12D00(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF12DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF12E00(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF12EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF12F00(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF12FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF13000(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF130A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF13100(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF131A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF131F8(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF132A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1331C(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF133C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF13414(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF134BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF1350C(void *a1)
{
  *a1 = &unk_285F9C020;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_24BF1356C(void *a1)
{
  *a1 = &unk_285F9C020;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x24C2548B0);
}

void sub_24BF135EC(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF13694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF13744(void *a1)
{
  *a1 = &unk_285F9C240;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BF13794(void *a1)
{
  *a1 = &unk_285F9C240;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C2548B0);
}

void sub_24BF13820(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF138C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1394C(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF139F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF13A44(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF13AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF13B3C(void *a1)
{
  *a1 = &unk_285F9C4E8;
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_24BF13BBC(void *a1)
{
  *a1 = &unk_285F9C4E8;
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x24C2548B0);
}

void sub_24BF13C78(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF13D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF13D78(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF13E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF13E78(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF13F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF13F70(void *a1)
{
  *a1 = &unk_285F9C708;
  v2 = a1 + 3;
  sub_24BEFC488((a1 + 11));
  sub_24BEFC508((a1 + 7));
  sub_24BEFC588(v2);
  return a1;
}

void sub_24BF13FCC(void *a1)
{
  *a1 = &unk_285F9C708;
  v2 = a1 + 3;
  sub_24BEFC488((a1 + 11));
  sub_24BEFC508((a1 + 7));
  sub_24BEFC588(v2);

  JUMPOUT(0x24C2548B0);
}

void sub_24BF14090(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF14138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF14190(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  memset(v8, 0, sizeof(v8));
  sub_24BCC9A1C(v8, *v4, *(v4 + 8), (*(v4 + 8) - *v4) >> 2);
  v5 = **a1;
  v10[0] = 0;
  v10[1] = 0;
  v9 = 0;
  sub_24BCC9A1C(&v9, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, v8, &v11, 2uLL);
  for (i = 0; i != -6; i -= 3)
  {
    v7 = v8[i + 3];
    if (v7)
    {
      v10[i] = v7;
      operator delete(v7);
    }
  }
}

void sub_24BF14280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = (v11 + 32);
  v14 = -48;
  while (1)
  {
    v15 = *(v13 - 1);
    if (v15)
    {
      *v13 = v15;
      operator delete(v15);
    }

    v13 -= 3;
    v14 += 24;
    if (!v14)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_24BF14304(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF143AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF14404(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF144AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF144E8(uint64_t a1, void *a2)
{
  if (*(a1 + 20) == 1)
  {
    return sub_24BC95264(a2, "NaNEqual", 8);
  }

  else
  {
    return sub_24BC95264(a2, "Equal", 5);
  }
}

void sub_24BF14528(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF145D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF14628(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF146D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF14728(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF147D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF14828(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF148D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF14920(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF149C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF14A18(void *a1)
{
  *a1 = &unk_285F9CCB0;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BF14A68(void *a1)
{
  *a1 = &unk_285F9CCB0;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C2548B0);
}

void sub_24BF14AF4(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF14B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF14C20(void *a1)
{
  *a1 = &unk_285F9CE48;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_24BF14C80(void *a1)
{
  *a1 = &unk_285F9CE48;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x24C2548B0);
}

void sub_24BF14D1C(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF14DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF14E1C(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF14EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF14F14(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF14FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF15014(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF150BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF15114(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF151BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF15214(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF152BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF1530C(void *a1)
{
  *a1 = &unk_285F9D200;
  v2 = a1[4];
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  return a1;
}

void sub_24BF15358(void *a1)
{
  *a1 = &unk_285F9D200;
  v1 = a1[4];
  if (v1)
  {
    sub_24BC9EC78(v1);
  }

  JUMPOUT(0x24C2548B0);
}

void *sub_24BF153C4(void *result, void *a2)
{
  v2 = *(result + 5);
  switch(v2)
  {
    case 0:
      return sub_24BC95264(a2, "Log2", 4);
    case 1:
      return sub_24BC95264(a2, "Log10", 5);
    case 2:
      return sub_24BC95264(a2, "Log", 3);
  }

  return result;
}

void sub_24BF15430(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF154D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF15528(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF155D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF15628(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF156D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF15728(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF157D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF15828(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF158D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF15928(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF159D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF15A5C(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF15B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF15B5C(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF15C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF15C5C(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF15D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF15D5C(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF15E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF15E5C(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF15F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF15F54(uint64_t *a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  __p = 0;
  v2 = 0;
  v3 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_24BCE220C(a1, &__p, &v4, 1uLL);
  if (__p)
  {
    v2 = __p;
    operator delete(__p);
  }
}

void sub_24BF15FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF15FF8(void *a1)
{
  *a1 = &unk_285F9D8E8;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BF16048(void *a1)
{
  *a1 = &unk_285F9D8E8;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C2548B0);
}

void *sub_24BF160CC(void *a1)
{
  *a1 = &unk_285F9D970;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_24BF1613C(void *a1)
{
  *a1 = &unk_285F9D970;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x24C2548B0);
}

void sub_24BF161E0(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF16288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF162E0(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF16388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF16430(void *a1)
{
  *a1 = &unk_285F9DC18;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BF16480(void *a1)
{
  *a1 = &unk_285F9DC18;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C2548B0);
}

void sub_24BF1650C(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF165B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF16604(void *a1)
{
  *a1 = &unk_285F9DD28;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BF16654(void *a1)
{
  *a1 = &unk_285F9DD28;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C2548B0);
}

void *sub_24BF166C4(void *result, void *a2)
{
  v2 = *(result + 5);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        return sub_24BC95264(a2, "Prod", 4);
      case 4:
        v3 = "Min";
        return sub_24BC95264(a2, v3, 3);
      case 5:
        v3 = "Max";
        return sub_24BC95264(a2, v3, 3);
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = "And";
        return sub_24BC95264(a2, v3, 3);
      case 1:
        return sub_24BC95264(a2, "Or", 2);
      case 2:
        v3 = "Sum";
        return sub_24BC95264(a2, v3, 3);
    }
  }

  return result;
}

void *sub_24BF1676C(void *a1)
{
  *a1 = &unk_285F9DDB0;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BF167BC(void *a1)
{
  *a1 = &unk_285F9DDB0;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C2548B0);
}

void sub_24BF16848(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF168F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF1692C(uint64_t a1, void *a2)
{
  result = sub_24BC95264(a2, "Cum", 3);
  v5 = *(a1 + 20);
  if (v5 > 1)
  {
    if (v5 == 3)
    {
      v6 = "Prod";
      v7 = a2;
      v8 = 4;
      goto LABEL_12;
    }

    if (v5 != 2)
    {
      return result;
    }

    v6 = "Sum";
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      return result;
    }

    v6 = "Min";
  }

  else
  {
    v6 = "Max";
  }

  v7 = a2;
  v8 = 3;
LABEL_12:

  return sub_24BC95264(v7, v6, v8);
}

void *sub_24BF169FC(uint64_t a1, void *a2)
{
  result = sub_24BC95264(a2, "Scatter", 7);
  v5 = *(a1 + 20);
  if (v5 > 1)
  {
    if (v5 == 3)
    {
      v6 = " Prod";
      v7 = a2;
      v8 = 5;
      goto LABEL_12;
    }

    if (v5 != 2)
    {
      return result;
    }

    v6 = " Sum";
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      return result;
    }

    v6 = " Min";
  }

  else
  {
    v6 = " Max";
  }

  v7 = a2;
  v8 = 4;
LABEL_12:

  return sub_24BC95264(v7, v6, v8);
}

void *sub_24BF16AB4(void *a1)
{
  *a1 = &unk_285F9DF48;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BF16B04(void *a1)
{
  *a1 = &unk_285F9DF48;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C2548B0);
}

void sub_24BF16B90(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF16C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF16C90(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF16D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF16D90(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF16E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF16E90(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF16F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF16F88(void *a1)
{
  *a1 = &unk_285F9E1F0;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_24BF16FF8(void *a1)
{
  *a1 = &unk_285F9E1F0;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x24C2548B0);
}

void *sub_24BF1709C(void *a1)
{
  *a1 = &unk_285F9E278;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_24BF1710C(void *a1)
{
  *a1 = &unk_285F9E278;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x24C2548B0);
}

void sub_24BF171B0(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF17258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF172A8(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF17350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF173A0(void *a1)
{
  *a1 = &unk_285F9E410;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BF173F0(void *a1)
{
  *a1 = &unk_285F9E410;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C2548B0);
}

void sub_24BF1747C(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF17524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF17560(uint64_t a1, void *a2)
{
  if (*(a1 + 20) == 1)
  {
    return sub_24BC95264(a2, "Rsqrt", 5);
  }

  else
  {
    return sub_24BC95264(a2, "Sqrt", 4);
  }
}

void sub_24BF17598(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF17640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF17698(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF17740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF17798(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF17840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF17898(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF17940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF17998(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_24BCE220C(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_24BF17A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF17AA8(void *a1)
{
  *a1 = &unk_285F9E840;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BF17AF8(void *a1)
{
  *a1 = &unk_285F9E840;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BF17C2C(uint64_t a1, void *lpsrc)
{
  v3 = __dynamic_cast(lpsrc, &unk_285F9A8F8, &unk_285F9EB18, 0);
  v5 = v3;
  if (v3)
  {
    v6 = *(a1 + 47);
    if (v6 >= 0)
    {
      v7 = *(a1 + 47);
    }

    else
    {
      v7 = *(a1 + 32);
    }

    v8 = *(v3 + 47);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = v3[4];
    }

    v4 = v7 == v8 && (v6 >= 0 ? (v10 = (a1 + 24)) : (v10 = *(a1 + 24)), v9 >= 0 ? (v11 = v5 + 3) : (v11 = v5[3]), !memcmp(v10, v11, v7)) && *(a1 + 48) == *(v5 + 48);
  }

  return (v5 != 0) & v4;
}

void sub_24BF17D1C(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = **a2;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  sub_24BCC9A1C(&v11, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
  v7 = (v12 - 4);
  v12 -= 4;
  if (*(a1 + 48) == 1)
  {
    __p = 0;
    v15 = 0;
    v16 = 0;
    sub_24BCC9A1C(&__p, v11, v7, (v7 - v11) >> 2);
    v8 = **a2;
    v18[0] = 0;
    v18[1] = 0;
    v17 = 0;
    sub_24BCC9A1C(&v17, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 2);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_24BCE220C(a3, &__p, &v19, 2uLL);
    for (i = 0; i != -6; i -= 3)
    {
      v10 = v18[i - 1];
      if (v10)
      {
        v18[i] = v10;
        operator delete(v10);
      }
    }
  }

  else
  {
    __p = 0;
    v15 = 0;
    v16 = 0;
    sub_24BCC9A1C(&__p, v11, v7, (v7 - v11) >> 2);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_24BCE220C(a3, &__p, &v17, 1uLL);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_24BF17EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  v15 = (v13 + 32);
  v16 = -48;
  while (1)
  {
    v17 = *(v15 - 1);
    if (v17)
    {
      *v15 = v17;
      operator delete(v17);
    }

    v15 -= 3;
    v16 += 24;
    if (!v16)
    {
      if (__p)
      {
        operator delete(__p);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_24BF17F14(uint64_t a1)
{
  *a1 = &unk_285F9EAC8;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_24BF17F64(uint64_t a1)
{
  *a1 = &unk_285F9EAC8;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x24C2548B0);
}

void *sub_24BF17FE8(void *a1)
{
  *a1 = &unk_285F9EB40;
  sub_24BE8B96C((a1 + 7));
  *a1 = &unk_285F97920;
  sub_24BE8B96C((a1 + 3));
  return a1;
}

void sub_24BF18050(void *a1)
{
  *a1 = &unk_285F9EB40;
  sub_24BE8B96C((a1 + 7));
  *a1 = &unk_285F97920;
  sub_24BE8B96C((a1 + 3));

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BF180DC()
{
  if ((atomic_load_explicit(&qword_27F0794A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0794A0))
  {
    operator new();
  }

  return qword_27F079498;
}

void sub_24BF18154(_Unwind_Exception *a1)
{
  MEMORY[0x24C2548B0](v1, 0x10A1C4062353280);
  __cxa_guard_abort(&qword_27F0794A0);
  _Unwind_Resume(a1);
}

id sub_24BF1818C(MTL::Private::Selector *a1)
{
  v1 = *a1;
  v2 = MTL::Private::Selector::s_kcontents(a1);

  return [v1 v2];
}

uint64_t sub_24BF181C8(uint64_t a1)
{
  *a1 = &unk_285F9EBB8;
  v2 = sub_24BF55DE0();
  v3 = *v2;
  *(a1 + 16) = *v2;
  *(a1 + 8) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_24BFADFF4(a1 + 72, v3);
  *(a1 + 184) = 850045863;
  *(a1 + 168) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 1;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  sub_24BF55ED4(v15);
  sub_24BC836D4(__p, "memory_size");
  v16 = __p;
  v4 = sub_24BF19530(v15, __p, &unk_24BFEDD60, &v16);
  if (*(v4 + 16) != 1)
  {
    sub_24BF04188();
  }

  v5 = v4[5];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = sub_24BF193F0(v15);
  v7 = [*(a1 + 8) MTL:? :? Private:? :? Selector:? :?s_krecommendedMaxWorkingSetSize(v6)];
  v8 = v7 * 1.5;
  if (v5 * 0.95 < v8)
  {
    v8 = v5 * 0.95;
  }

  *(a1 + 128) = v8;
  v9 = ([*(a1 + 8) MTL:? :? Private:? :? Selector:? :?s_krecommendedMaxWorkingSetSize(v7)] * 0.95);
  v10 = *(a1 + 128);
  if (v10 < v9)
  {
    v9 = *(a1 + 128);
  }

  *(a1 + 136) = v9;
  *(a1 + 160) = v10;
  v11 = sub_24BF55DE0();
  sub_24BF55D30(v11, *(a1 + 72));
  return a1;
}

void sub_24BF18380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_24BF193F0(&a15);
  std::mutex::~mutex(v16);
  sub_24BFAE3AC(v15 + 7);
  sub_24BF183E0(v15);
  _Unwind_Resume(a1);
}

NS::Private::Class *sub_24BF183E0(NS::Private::Class *a1)
{
  v4[4] = *MEMORY[0x277D85DE8];
  sub_24BF53AE4(a1, &v3);
  sub_24BF18B50(a1);
  sub_24BF192EC(&v3, 0);
  sub_24BF19370(v4);
  sub_24BF19228(*(a1 + 2));
  return a1;
}

void sub_24BF18468(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

uint64_t sub_24BF18478(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 160);
  *(a1 + 160) = a2;
  return v2;
}

uint64_t sub_24BF18488(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 128);
  *(a1 + 128) = a2;
  *(a1 + 176) = a3;
  v5 = ([*(a1 + 8) MTL:? :? Private:? :? Selector:? :?s_krecommendedMaxWorkingSetSize(a1)] * 0.95);
  if (*(a1 + 128) < v5)
  {
    v5 = *(a1 + 128);
  }

  *(a1 + 136) = v5;
  return v4;
}

uint64_t sub_24BF184F8(uint64_t a1, MTL::Private::Selector *a2)
{
  v2 = *(a1 + 168);
  *(a1 + 168) = a2;
  sub_24BFAE168((a1 + 72), a2);
  return v2;
}

id sub_24BF18528(uint64_t a1, unint64_t a2, int a3)
{
  v42[32] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  if ([*(a1 + 8) MTL:? :? Private:? :? Selector:? :?s_kmaxBufferLength(a1)] < a2)
  {
    sub_24BCE1268(&v41);
    v30 = sub_24BC95264(&v41, "Attempting to allocate ", 23);
    v31 = MEMORY[0x24C2543E0](v30, v4);
    v32 = sub_24BC95264(v31, " bytes which is greater than", 28);
    v33 = sub_24BC95264(v32, " the maximum allowed buffer size of ", 36);
    v34 = [*(a1 + 8) MTL:? :? Private:? :? Selector:? :?s_kmaxBufferLength(v33)];
    v35 = MEMORY[0x24C2543E0](v33, v34);
    sub_24BC95264(v35, " bytes.", 7);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    MEMORY[0x24C254100](exception, &v39);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v6 = MEMORY[0x277D85FA0];
  if (*MEMORY[0x277D85FA0] < v4)
  {
    v4 = (v4 + *MEMORY[0x277D85FA0] - 1) / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0];
  }

  v39 = (a1 + 184);
  v40 = 1;
  v37 = (a1 + 184);
  std::mutex::lock((a1 + 184));
  v8 = *(a1 + 32);
  v38 = a3;
  for (i = (a1 + 32); v8; v8 = v8[v12])
  {
    v10 = v8[4];
    v11 = v10 >= v4;
    v12 = v10 < v4;
    if (v11)
    {
      i = v8;
    }
  }

  while (i != (a1 + 32))
  {
    v13 = v4 + 2 * *v6;
    if (v13 >= 2 * v4)
    {
      v13 = 2 * v4;
    }

    if (i[4] >= v13)
    {
      break;
    }

    v14 = i[5];
    v15 = v14[2];
    sub_24BF19274(a1 + 16, v14);
    v16 = i[5];
    if (v16)
    {
      MEMORY[0x24C2548B0](v16, 0x20C40960023A9);
    }

    v17 = i[1];
    v18 = i;
    if (v17)
    {
      do
      {
        v19 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v19 = v18[2];
        v20 = *v19 == v18;
        v18 = v19;
      }

      while (!v20);
    }

    if (*(a1 + 24) == i)
    {
      *(a1 + 24) = v19;
    }

    v21 = *(a1 + 32);
    --*(a1 + 40);
    sub_24BCADED0(v21, i);
    operator delete(i);
    i = v19;
    if (v15)
    {
      v22 = [v15 MTL:v37 :? Private:? :? Selector:? :?s_klength(v7)];
      *(a1 + 64) -= v22;
      goto LABEL_31;
    }
  }

  v23 = *(a1 + 144) + v4 + *(a1 + 64);
  if ((!v38 || (*(a1 + 176) & 1) == 0) && v23 >= *(a1 + 128))
  {
    v15 = 0;
    goto LABEL_39;
  }

  sub_24BF53AE4(v7, &v41);
  v24 = *(a1 + 136);
  if (v23 >= v24)
  {
    sub_24BF189B4((a1 + 16), v23 - v24);
  }

  std::mutex::unlock(v37);
  v40 = 0;
  v15 = [*(a1 + 8) MTL:v4 :256 Private:? :? Selector:? :?s_knewBufferWithLength_options_(v25)];
  sub_24BF18A98(&v39);
  sub_24BF192EC(&v41, 0);
  v22 = sub_24BF19370(v42);
LABEL_31:
  v26 = [v15 MTL:? :? Private:? :? Selector:? :?s_klength(v22)];
  v27 = *(a1 + 152);
  v28 = v26 + *(a1 + 144);
  if (v27 <= v28)
  {
    v27 = v26 + *(a1 + 144);
  }

  *(a1 + 144) = v28;
  *(a1 + 152) = v27;
  if (*(a1 + 64) >= *(a1 + 160))
  {
    sub_24BF53AE4(v26, &v41);
    sub_24BF189B4((a1 + 16), *(a1 + 64) - *(a1 + 160));
    sub_24BF192EC(&v41, 0);
    sub_24BF19370(v42);
  }

  sub_24BFADFF8((a1 + 72), v15);
  if (v40)
  {
LABEL_39:
    std::mutex::unlock(v39);
  }

  return v15;
}

void sub_24BF18904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, char a5, int a6, int a7, __int16 a8, char a9, char a10, char a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  if (SHIBYTE(a15) < 0)
  {
    operator delete(a13);
    if ((v30 & 1) == 0)
    {
LABEL_6:
      sub_24BD0E408(&a16, MEMORY[0x277D82828]);
      MEMORY[0x24C2547D0](va);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  goto LABEL_6;
}

void sub_24BF189B4(MTL::Private::Selector *result, unint64_t a2)
{
  v2 = result;
  v3 = *(result + 6);
  if (v3 * 0.9 <= a2)
  {

    sub_24BF18B50(result);
  }

  else
  {
    v5 = *(result + 5);
    v6 = 0;
    if (v5)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      do
      {
        v8 = v5[2];
        if (v8)
        {
          v9 = [v8 MTL:? :? Private:? :? Selector:? :?s_klength(result)];
          v6 += v9;
          [*(*(v2 + 5) + 16) NS:? :? Private:? :? Selector:? :?s_krelease(v9)];
          v5 = *(v2 + 5);
          v5[2] = 0;
        }

        result = sub_24BF19274(v2, v5);
        v5 = *(v2 + 5);
        if (v5)
        {
          v10 = v6 >= a2;
        }

        else
        {
          v10 = 1;
        }
      }

      while (!v10);
      v3 = *(v2 + 6);
    }

    *(v2 + 6) = v3 - v6;
  }
}

void sub_24BF18A98(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  sub_24BF18AF8(v3);
}

void sub_24BF18AF8(uint64_t a1)
{
  std::mutex::lock((a1 + 184));
  sub_24BF18B50((a1 + 16));

  std::mutex::unlock((a1 + 184));
}

void sub_24BF18B50(void *a1)
{
  v2 = a1[1];
  v3 = a1 + 2;
  if (v2 != a1 + 2)
  {
    do
    {
      v4 = v2[5];
      v5 = *(v4 + 2);
      if (!v5 || ([v5 NS:? :? Private:? :? Selector:? :?s_krelease(v4)], v2[5]))
      {
        MEMORY[0x24C2548B0]();
      }

      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  sub_24BF19228(a1[2]);
  a1[1] = v3;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
}

void sub_24BF18C18(uint64_t a1, void *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    std::mutex::lock((a1 + 184));
    v4 = sub_24BFAE0DC((a1 + 72), a2);
    *(a1 + 144) -= [a2 MTL:? :? Private:? :? Selector:? :?s_klength(v4)];
    if (*(a1 + 64) < *(a1 + 160))
    {
      operator new();
    }

    std::mutex::unlock((a1 + 184));
    v6 = sub_24BF53AE4(v5, &v7);
    [a2 NS:? :? Private:? :? Selector:? :?s_krelease(v6)];
    sub_24BF192EC(&v7, 0);
    sub_24BF19370(v8);
  }
}

id sub_24BF18E7C(MTL::Private::Selector *a1, void *a2)
{
  v3 = MTL::Private::Selector::s_klength(a1);

  return [a2 v3];
}

uint64_t sub_24BF18EB8(uint64_t a1)
{
  v2 = sub_24BF180DC();
  v3 = *(v2 + 160);
  *(v2 + 160) = a1;
  return v3;
}

uint64_t sub_24BF18EE8(uint64_t a1, char a2)
{
  v4 = sub_24BF180DC();
  v5 = *(v4 + 128);
  *(v4 + 128) = a1;
  *(v4 + 176) = a2;
  v6 = ([*(v4 + 8) MTL:? :? Private:? :? Selector:? :?s_krecommendedMaxWorkingSetSize(v4)] * 0.95);
  if (*(v4 + 128) < v6)
  {
    v6 = *(v4 + 128);
  }

  *(v4 + 136) = v6;
  return v5;
}

uint64_t sub_24BF18F64(MTL::Private::Selector *a1)
{
  sub_24BF55ED4(v10);
  sub_24BC836D4(__p, "max_recommended_working_set_size");
  v11 = __p;
  v2 = sub_24BF19530(v10, __p, &unk_24BFEDD60, &v11);
  if (*(v2 + 16) != 1)
  {
    sub_24BF04188();
  }

  v3 = v2[5];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BF193F0(v10);
  if (v3 < a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[metal::set_wired_limit] Setting a wired limit larger than the maximum working set size is not allowed.");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v4 = sub_24BF180DC();
  v5 = *(v4 + 168);
  *(v4 + 168) = a1;
  sub_24BFAE168((v4 + 72), a1);
  return v5;
}

void sub_24BF190C8()
{
  v0 = sub_24BF180DC();
  std::mutex::lock((v0 + 184));
  *(v0 + 152) = 0;

  std::mutex::unlock((v0 + 184));
}

void sub_24BF19128()
{
  v0 = sub_24BF180DC();

  sub_24BF18AF8(v0);
}

uint64_t sub_24BF19150(uint64_t a1)
{
  *a1 = &unk_285F9EBB8;
  v2 = (a1 + 16);
  std::mutex::~mutex((a1 + 184));
  sub_24BFAE3AC((a1 + 72));
  sub_24BF183E0(v2);
  return a1;
}

void sub_24BF191AC(uint64_t a1)
{
  *a1 = &unk_285F9EBB8;
  v2 = (a1 + 16);
  std::mutex::~mutex((a1 + 184));
  sub_24BFAE3AC((a1 + 72));
  sub_24BF183E0(v2);

  JUMPOUT(0x24C2548B0);
}

void sub_24BF19228(void *a1)
{
  if (a1)
  {
    sub_24BF19228(*a1);
    sub_24BF19228(a1[1]);

    operator delete(a1);
  }
}

uint64_t sub_24BF19274(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      v3 = a2[1];
      if (v3)
      {
        *(v2 + 8) = v3;
        *a2[1] = v2;
LABEL_12:
        *a2 = 0;
        a2[1] = 0;
        return result;
      }

      if (*(result + 40) == a2)
      {
        *(result + 40) = v2;
        *(v2 + 8) = 0;
        goto LABEL_12;
      }
    }

    v4 = (result + 32);
    if (*(result + 32) == a2)
    {
      v5 = a2[1];
      if (v5)
      {
        *v4 = v5;
        *v5 = 0;
      }

      else if (*(result + 40) == a2)
      {
        *v4 = 0;
        *(result + 40) = 0;
      }
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t *sub_24BF192EC(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_24BF1931C((result + 1), v3);
  }

  return result;
}

uint64_t sub_24BF1931C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_24BCA1F3C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_24BF19370(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_24BF193F0(uint64_t a1)
{
  sub_24BF1942C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24BF1942C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_24BF19470((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_24BF19470(uint64_t a1)
{
  sub_24BF194C0(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_24BF194C0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_285F9EBF8[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_24BF19518(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

const void **sub_24BF19530(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_24BCCC4B4(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_24BCCC960(a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_24BF197B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BF197C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF197C8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_24BF19470(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_24BF19814(uint64_t **a1, void *a2, __int128 *a3, unsigned int *a4)
{
  v6 = *a1;
  v7 = *a1 + 2;
  v8 = sub_24BF1A0BC(*a1, v7);
  v9 = *a2;
  if (*(**a2 + 48))
  {
    v10 = v8;
    if (v8 == 4)
    {
      sub_24BF1B4F4(v6, v7, *a2);
      sub_24BF1B808(v32, &__p, v34, v34 + 24, v34 + 48);
      v39.__r_.__value_.__r.__words[0] = &v34;
      sub_24BC8EE84(&v39);
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v12 = v32[0];
      v11 = v32[1];
      v13 = HIDWORD(*(*v9 + 160));
      if (v13)
      {
        v14 = 4;
      }

      else
      {
        v14 = 2;
      }

      memset(&v31, 0, sizeof(v31));
      MEMORY[0x24C2541D0](&v31, "g");
      v15 = (v11 - v12) >> 2;
      if (v15 > 3)
      {
        std::to_string(&v39, v14);
        sub_24BF1BA5C(&v31, "n", &v39);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          v18 = v39.__r_.__value_.__r.__words[0];
LABEL_36:
          operator delete(v18);
          if (!v13)
          {
LABEL_37:
            if (*(a3 + 23) < 0)
            {
              sub_24BC8DE9C(&__dst, *a3, *(a3 + 1));
            }

            else
            {
              __dst = *a3;
              v38 = *(a3 + 2);
            }

            sub_24BFB7BD8(v6, v35);
            sub_24BF1BB04(&v31, "_", &__dst, v35);
            if (v36 < 0)
            {
              operator delete(v35[0]);
            }

            if (SHIBYTE(v38) < 0)
            {
              operator delete(__dst);
            }

            v23 = sub_24BF55DE0();
            v24 = *(*v6 + 56);
            v25 = *(*v9 + 56);
            v26 = *(a3 + 23);
            if (a2[1] - *a2 == 32)
            {
              if (v26 < 0)
              {
                sub_24BC8DE9C(&v29, *a3, *(a3 + 1));
              }

              else
              {
                v29 = *a3;
                v30 = *(a3 + 2);
              }

              sub_24BF86B00(v23, &v31, v24 & 0xFFFFFFFFFFLL, v25 & 0xFFFFFFFFFFLL, &v29);
            }

            if (v26 < 0)
            {
              sub_24BC8DE9C(&v27, *a3, *(a3 + 1));
            }

            else
            {
              v27 = *a3;
              v28 = *(a3 + 2);
            }

            sub_24BF868C0(v23, &v31, v24 & 0xFFFFFFFFFFLL, v25 & 0xFFFFFFFFFFLL, &v27);
          }

LABEL_28:
          std::string::append(&v31, "large");
          goto LABEL_37;
        }
      }

      else
      {
        std::to_string(&__p, v15);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v31, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v18 = __p.__r_.__value_.__r.__words[0];
          goto LABEL_36;
        }
      }

      if (!v13)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

    memset(&__p, 0, sizeof(__p));
    memset(&v39, 0, sizeof(v39));
    sub_24BF1B958(v32, &v39, &__p, &__p, &__p);
    if (v39.__r_.__value_.__r.__words[0])
    {
      v39.__r_.__value_.__l.__size_ = v39.__r_.__value_.__r.__words[0];
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v19 = HIDWORD(*(*v9 + 160));
    memset(&v31, 0, sizeof(v31));
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v21 = "vs";
        v22 = "vs2";
      }

      else
      {
        v21 = "vv";
        v22 = "vv2";
      }
    }

    else
    {
      if (!v10)
      {
        v20 = "ss";
LABEL_34:
        MEMORY[0x24C2541D0](&v31, v20);
        goto LABEL_37;
      }

      v21 = "sv";
      v22 = "sv2";
    }

    if (v19)
    {
      v20 = v22;
    }

    else
    {
      v20 = v21;
    }

    goto LABEL_34;
  }
}

void sub_24BF19FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_24BF1BCB4(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF1A0BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 160);
  if (*(*a1 + 160) == 1)
  {
    if (v4 == 1)
    {
      return 0;
    }

    if (*(v3 + 168))
    {
      return 1;
    }
  }

  else if (v4 == 1)
  {
    v6 = *(v2 + 168);
    if (v6)
    {
      return 2;
    }

    goto LABEL_10;
  }

  v6 = *(v2 + 168);
LABEL_10:
  if ((v6 & 2) != 0 && (*(v3 + 168) & 2) != 0 || (v6 & 4) != 0 && (*(v3 + 168) & 4) != 0)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

void sub_24BF1A138(uint64_t **a1, void *a2, __int128 *a3, unsigned int *a4)
{
  v8 = *a1;
  v9 = sub_24BF1A0BC(*a1, *a1 + 2);
  sub_24BF1A1D4(v8, v8 + 2, *a2, v9);
  sub_24BF1A1D4(v8, v8 + 2, (*a2 + 16), v9);

  sub_24BF19814(a1, a2, a3, a4);
}

void sub_24BF1A1D4(void *a1, void *a2, uint64_t *a3, int a4)
{
  v7 = a1;
  v57[4] = *MEMORY[0x277D85DE8];
  v8 = a2[1];
  if (!v8 || *(v8 + 8) || (v16 = *(*a2 + 144)) == 0 || *(v16 + 8) || ((*(*a3 + 56) ^ *(*a2 + 56)) & 0xFF00000000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v17 = sub_24BF180D8(a1);
    a1 = (*(*v17 + 16))(v17, **(*a2 + 136));
    v9 = a1 <= *(*a3 + 60) * *(*a3 + 48) + 0x4000;
  }

  v10 = v7[1];
  if (v10)
  {
    if (*(v10 + 8) || (v18 = *(*v7 + 144)) == 0 || *(v18 + 8) || ((*(*a3 + 56) ^ *(*v7 + 56)) & 0xFF00000000) != 0)
    {
      LODWORD(v10) = 0;
    }

    else
    {
      v19 = sub_24BF180D8(a1);
      LODWORD(v10) = (*(*v19 + 16))(v19, **(*v7 + 136)) <= *(*a3 + 60) * *(*a3 + 48) + 0x4000;
    }
  }

  if (a4 <= 1)
  {
    if (!a4)
    {
      v13 = sub_24BE7E2A4(*(*a3 + 60));
      v14 = *v7;
      v52 = 0;
      v51 = 0uLL;
      sub_24BD7E680(&v51, *(v14 + 24), *(v14 + 32), (*(v14 + 32) - *(v14 + 24)) >> 3);
      v15 = *(*v7 + 168);
      v57[0] = &off_285F93798;
      v57[1] = sub_24BE7E1F0;
      v57[3] = v57;
      sub_24BE7F25C(a3, v13, 1, &v51, v15);
    }

    if (!v9)
    {
      v30 = sub_24BE7E2A4(*(*a3 + 60) * *(*a2 + 160));
      v31 = *a2;
      v32 = *(*a2 + 160);
      v49 = 0;
      v48 = 0uLL;
      sub_24BD7E680(&v48, *(v31 + 24), *(v31 + 32), (*(v31 + 32) - *(v31 + 24)) >> 3);
      v33 = *(*a2 + 168);
      v56[0] = &off_285F93798;
      v56[1] = sub_24BE7E1F0;
      v56[3] = v56;
      sub_24BE7F25C(a3, v30, v32, &v48, v33);
    }

    v22 = a2[1];
    v50[0] = *a2;
    v50[1] = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    sub_24BE7F46C(a3, v50);
    v12 = v50;
  }

  else
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        if (v10)
        {
          v11 = v7[1];
          v44[0] = *v7;
          v44[1] = v11;
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          }

          sub_24BE7F46C(a3, v44);
          v12 = v44;
        }

        else
        {
          if (!v9)
          {
            v35 = sub_24BE7E2A4(*(*a3 + 60) * *(*v7 + 160));
            v36 = *v7;
            v37 = *(*v7 + 160);
            v42 = 0;
            __p = 0uLL;
            sub_24BD7E680(&__p, *(v36 + 24), *(v36 + 32), (*(v36 + 32) - *(v36 + 24)) >> 3);
            v38 = *(*v7 + 168);
            v54[0] = &off_285F93798;
            v54[1] = sub_24BE7E1F0;
            v54[3] = v54;
            sub_24BE7F25C(a3, v35, v37, &__p, v38);
          }

          v29 = a2[1];
          v43[0] = *a2;
          v43[1] = v29;
          if (v29)
          {
            atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
          }

          sub_24BE7F46C(a3, v43);
          v12 = v43;
        }

        goto LABEL_49;
      }

      if (v10 && (*(*v7 + 168) & 2) != 0 && *(*v7 + 48) == *(*a3 + 48))
      {
        v21 = v7[1];
        v40[0] = *v7;
        v40[1] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        sub_24BE7F46C(a3, v40);
        v12 = v40;
        goto LABEL_49;
      }

      if (v9)
      {
        v23 = *a3;
        if ((*(*a2 + 168) & 2) != 0 && *(*a2 + 48) == *(v23 + 48))
        {
          v24 = a2[1];
          v39[0] = *a2;
          v39[1] = v24;
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }

          sub_24BE7F46C(a3, v39);
          v12 = v39;
          goto LABEL_49;
        }
      }

      else
      {
        v23 = *a3;
      }

      v34 = sub_24BE7E2A4(*(v23 + 60) * *(v23 + 48));
      v53[0] = &off_285F93798;
      v53[1] = sub_24BE7E1F0;
      v53[3] = v53;
      sub_24BE7EE1C(a3, v34);
    }

    if (!v10)
    {
      v25 = sub_24BE7E2A4(*(*a3 + 60) * *(*v7 + 160));
      v26 = *v7;
      v27 = *(*v7 + 160);
      v46 = 0;
      v45 = 0uLL;
      sub_24BD7E680(&v45, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
      v28 = *(*v7 + 168);
      v55[0] = &off_285F93798;
      v55[1] = sub_24BE7E1F0;
      v55[3] = v55;
      sub_24BE7F25C(a3, v25, v27, &v45, v28);
    }

    v20 = v7[1];
    v47[0] = *v7;
    v47[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    sub_24BE7F46C(a3, v47);
    v12 = v47;
  }

LABEL_49:
  sub_24BE7F218(v12);
}

void sub_24BF1A8E0(uint64_t **a1, uint64_t a2, __int128 *a3, unsigned int *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 8);
  v9[0] = *a2;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v8, 0, sizeof(v8));
  sub_24BCC9984(v8, v9, &v10, 1uLL);
  sub_24BE7F218(v9);
  sub_24BF19814(a1, v8, a3, a4);
  v9[0] = v8;
  sub_24BCC961C(v9);
}

void sub_24BF1A9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BF1A9D0(uint64_t **a1, uint64_t *a2, __int128 *a3, unsigned int *a4)
{
  v8 = *a1;
  v9 = sub_24BF1A0BC(*a1, *a1 + 2);
  sub_24BF1A1D4(v8, v8 + 2, a2, v9);

  sub_24BF1A8E0(a1, a2, a3, a4);
}

void sub_24BF1AA60(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AADC(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AB58(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1ABB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1ABD4(uint64_t a1, uint64_t **a2, void *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A138(a2, a3, &__p, (*(**a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AC54(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1ACB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1ACD0(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AD4C(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1ADAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1ADC8(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AE44(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AEC0(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AF3C(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AFB8(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B034(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B0B0(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B12C(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B1A8(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B224(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B2A0(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B31C(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B398(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v5 = *(a1 + 20);
  if (v5 <= 1)
  {
    if (v5 > 1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v5 == 2 || v5 == 3 || v5 == 4)
  {
LABEL_7:
    sub_24BFB7ED4(a1);
    sub_24BF1A9D0(a2, a3, &__p, (*(*a3 + 64) + 8));
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }
}