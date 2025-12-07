void sub_2992F6B88(void *a1)
{
  *a1 = &unk_2A1F6E9F0;
  sub_2992F6C20((a1 + 1));

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992F6C20(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  sub_299219AB4(a1, 0);
  return a1;
}

void sub_2992F6C60(uint64_t a1, __int16 a2)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v5 >= v4)
  {
    v7 = *(a1 + 8);
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 1;
    if (v9 <= -2)
    {
      sub_299212A8C();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_299212A48(a1 + 8, v13);
    }

    v14 = (v5 - v7) >> 1;
    v15 = (2 * v9);
    v16 = (2 * v9 - 2 * v14);
    *v15 = a2;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = *(a1 + 8);
    *(a1 + 8) = v16;
    *(a1 + 16) = v6;
    *(a1 + 24) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 2;
  }

  *(a1 + 16) = v6;
  v18 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], *(a1 + 8), (v6 - *(a1 + 8)) >> 1);

  sub_299219AB4(a1, v18);
}

void *sub_2992F6D70(void *a1)
{
  *a1 = &unk_2A1F6EA68;
  sub_2992F6C20((a1 + 2));
  return a1;
}

void sub_2992F6DB4(void *a1)
{
  *a1 = &unk_2A1F6EA68;
  sub_2992F6C20((a1 + 2));

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992F6E8C(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_2A1F66DC0;
  v9 = (*(*a2 + 112))(a2);
  v10 = (*(*a2 + 392))(a2);
  sub_29933BEB8(a1, &off_2A1F6EDC8);
  *(a1 + 20) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = v10;
  *a1 = &unk_2A1F6EB48;
  *(a1 + 40) = &unk_2A1F6EDB0;
  v11 = (**(a2 + *(*a2 - 32)))(a2 + *(*a2 - 32));
  *(a1 + 72) = 0u;
  *(a1 + 48) = v11;
  *(a1 + 56) = 0u;
  *(a1 + 84) = 0u;
  v12 = (*(*a2 + 560))(a2);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_2992F85F8((a1 + 104), *v12, *(v12 + 8), (*(v12 + 8) - *v12) >> 2);
  v13 = *MEMORY[0x29EDB8ED8];
  theString = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v14 = (*(*a2 + 232))(a2);
  if (v14)
  {
    Mutable = CFStringCreateMutable(v13, 0);
  }

  else
  {
    Mutable = 0;
  }

  v16 = (*(*a2 + 24))(a2);
  CFStringAppend(theString, v16);
  if (Mutable)
  {
    CFStringAppend(Mutable, v14);
  }

  v17 = (*(*a2 + 24))(a2);
  CFStringGetLength(v17);
  if (a4)
  {
    operator new();
  }

  *(a1 + 56) = theString;
  *(a1 + 64) = Mutable;
  *(a1 + 96) = sub_299279FBC(theString);
  return a1;
}

void sub_2992F734C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *(a9 + 32);
  if (v15)
  {
    *(v13 + 112) = v15;
    operator delete(v15);
  }

  a13 = a9;
  sub_2992F8740(&a13);
  v16 = *(v13 + 48);
  *(v13 + 48) = 0;
  if (v16)
  {
    (*(*v16 + 16))(v16);
  }

  _Unwind_Resume(a1);
}

void *sub_2992F73F0(void *a1)
{
  *a1 = &unk_2A1F6EB48;
  a1[5] = &unk_2A1F6EDB0;
  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v7 = (a1 + 9);
  sub_2992F8740(&v7);
  v5 = a1[6];
  a1[6] = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  return a1;
}

void sub_2992F74C8(void *a1)
{
  sub_2992F73F0(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992F7500(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0 || (*(*a1 + 48))(a1) <= a2)
  {
    return 0;
  }

  v4 = (*(**(a1 + 48) + 48))(*(a1 + 48));
  if (a2 >= v4)
  {
    return *(*(a1 + 72) + 16 * (a2 - v4));
  }

  v5 = *(**(a1 + 48) + 120);

  return v5();
}

uint64_t sub_2992F75DC(uint64_t a1)
{
  v1 = (*(*a1 + 120))(a1);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t sub_2992F7648(uint64_t a1)
{
  result = (*(*a1 + 120))(a1);
  if (result)
  {
    v2 = *(*result + 16);

    return v2();
  }

  return result;
}

void sub_2992F76E8(void **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 - 1) > 1)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    (*(*a1[6] + 432))(&v10);
    v7 = 0;
    __dst = 0;
    v9 = 0;
    for (i = (*(*a1[6] + 48))(a1[6]); i < ((*a1)[6])(a1); ++i)
    {
      ((*a1)[53])(&__p, a1, i);
      sub_2992F87C8(&v7, __dst, __p, v13, (v13 - __p) >> 1);
      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }
    }

    sub_299218E20(a3, ((__dst - v7) >> 1) + ((v11 - v10) >> 1));
    sub_2992F87C8(a3, *(a3 + 8), v10, v11, (v11 - v10) >> 1);
    sub_2992F87C8(a3, *(a3 + 8), v7, __dst, (__dst - v7) >> 1);
    if (v7)
    {
      __dst = v7;
      operator delete(v7);
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }

  else
  {
    v5 = *(*a1[6] + 432);

    v5();
  }
}

void sub_2992F78F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef sub_2992F7964(uint64_t a1)
{
  __src = 0;
  v28 = 0;
  v29 = 0;
  v2 = (*(*a1 + 48))(a1);
  v3 = v2;
  if (v2)
  {
    v4 = 0;
    v24 = v2;
    do
    {
      v5 = (*(*a1 + 120))(a1, v4);
      (*(*v5 + 56))(&v25);
      v6 = v25;
      if (v26 != v25)
      {
        v7 = 0;
        if (((v26 - v25) >> 1) <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = (v26 - v25) >> 1;
        }

        v9 = v28;
        do
        {
          v10 = *&v25[2 * v7] + 48;
          if (v9 >= v29)
          {
            v11 = __src;
            v12 = v9 - __src;
            v13 = (v9 - __src) >> 1;
            if (v13 <= -2)
            {
              sub_299212A8C();
            }

            if (v29 - __src <= v13 + 1)
            {
              v14 = v13 + 1;
            }

            else
            {
              v14 = v29 - __src;
            }

            if (v29 - __src >= 0x7FFFFFFFFFFFFFFELL)
            {
              v15 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v14;
            }

            if (v15)
            {
              sub_299212A48(&__src, v15);
            }

            v16 = (v9 - __src) >> 1;
            v17 = (2 * v13);
            v18 = (2 * v13 - 2 * v16);
            *v17 = v10;
            v9 = (v17 + 1);
            memcpy(v18, v11, v12);
            v19 = __src;
            __src = v18;
            v28 = v9;
            v29 = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v9 = v10;
            v9 += 2;
          }

          v28 = v9;
          ++v7;
        }

        while (v8 != v7);
        v3 = v24;
        v6 = v25;
      }

      if (v6)
      {
        v26 = v6;
        operator delete(v6);
      }

      ++v4;
    }

    while (v4 != v3);
    v20 = __src;
    v21 = v28;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v22 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], v20, (v21 - v20) >> 1);
  if (__src)
  {
    v28 = __src;
    operator delete(__src);
  }

  return v22;
}

void sub_2992F7B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFString *sub_2992F7BBC(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v3 = (*(*a1 + 48))(a1);
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = (*(*a1 + 120))(a1, i);
      v7 = (*(*v6 + 72))(v6);
      CFStringAppend(Mutable, v7);
      CFRelease(v7);
    }
  }

  return Mutable;
}

uint64_t sub_2992F7CF4(uint64_t a1)
{
  v1 = (*(*a1 + 104))(a1);
  if ((v1 & 2) != 0)
  {
    return 77;
  }

  if ((v1 & 8) != 0)
  {
    return 65;
  }

  if ((v1 & 0x10) != 0)
  {
    return 85;
  }

  if ((v1 & 4) != 0)
  {
    return 76;
  }

  return (v1 << 10 >> 31) & 0x59;
}

BOOL sub_2992F7DB4(uint64_t a1, char a2, char a3)
{
  v3 = 1;
  if ((a2 & 1) == 0 && (a3 & 1) == 0)
  {
    return ((*(*a1 + 104))(a1) & 0x40) == 0;
  }

  return v3;
}

BOOL sub_2992F7EBC(uint64_t a1)
{
  v1 = (*(*a1 + 560))(a1);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*v1 != v3)
  {
    while (*v2 != 1)
    {
      if (++v2 == v3)
      {
        v2 = *(v1 + 8);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void sub_2992F82C8(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, void **a5, ...)
{
  va_start(va, a5);
  v7 = *a5;
  if (*a5)
  {
    *(v5 + 112) = v7;
    operator delete(v7);
  }

  sub_2992F8740(va);
  v8 = *(v5 + 48);
  *(v5 + 48) = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  MEMORY[0x29C29BFB0](v5, 0x10E1C40E0ACAB4CLL);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992F85F8(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2992F8674(result, a4);
  }

  return result;
}

void sub_2992F8658(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992F8674(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_2992F86B0(a1, a2);
  }

  sub_299212A8C();
}

void sub_2992F86B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2992F86F8(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2992F8740(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          sub_2991A893C(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

char *sub_2992F87C8(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + ((v10 - *a1) >> 1) < 0)
    {
      sub_299212A8C();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + ((v10 - *a1) >> 1))
    {
      v14 = a5 + ((v10 - *a1) >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      sub_299212A48(a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * a5;
    v35 = (2 * v16);
    do
    {
      v36 = *v7;
      v7 += 2;
      *v35++ = v36;
      v34 -= 2;
    }

    while (v34);
    memcpy((v33 + 2 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 2 * a5 + a1[1] - v5;
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

    return (2 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 1;
  if (v18 >= a5)
  {
    v29 = &__dst[2 * a5];
    v30 = (v10 - 2 * a5);
    v31 = a1[1];
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    a1[1] = v31;
    if (v10 != v29)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v29);
    }

    v28 = 2 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_30;
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
    v22 = &v5[2 * a5];
    v23 = v10 + v20;
    if (&v21[-2 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -2 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 2;
        v24 += 2;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[2 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_30:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void sub_2992F8A0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F6F440;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992F8A88(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  operator new();
}

void *sub_2992F8BD0(void *a1)
{
  v3 = a1 + 2;
  v2 = a1[2];
  *(v3 - 2) = 0;
  sub_2993EEE54(v2);
  sub_29931FE84(a1[6]);
  v4 = a1[5];
  a1[5] = 0;
  if (v4)
  {
    MEMORY[0x29C29BFB0](v4, 0x60C4044C4A2DFLL);
  }

  v5 = a1[4];
  a1[4] = 0;
  if (v5)
  {
    MEMORY[0x29C29BFB0](v5, 0x60C4044C4A2DFLL);
  }

  sub_2992EAF08(v3);
  return a1;
}

void sub_2992F8CB0(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x29C29BFB0](v2, 0x1020C40CDA6F8E5);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2992F8C9CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992F8CFC(int **a1, uint64_t a2, char a3)
{
  if (sub_2992F8E70(a1))
  {
    result = sub_2993B9184(*a1[5]);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *a1[4];
    v8 = *(v7 + 24);
    if (!v8)
    {
      return 0;
    }

    sub_299210C88(*(v7 + 24));
    v9 = atomic_load((v8 + 40));
    if (v9 != 2 || !*v8)
    {
      return 0;
    }
  }

  result = 0;
  if ((a3 & 8) == 0 && (*(a2 + 128) & 1) == 0)
  {
    v10 = *(a2 + 144);
    if (!v10 || CFStringGetLength(v10) < 2 || CEMStringContainsEmoji())
    {
      return 0;
    }

    if ((a3 & 4) != 0)
    {
      sub_299276A84(v10);
    }

    return 1;
  }

  return result;
}

void sub_2992F8E48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992F8E70(int **a1)
{
  v1 = **a1;
  if (v1 == 2)
  {
    if (*(a1 + 56) == 1)
    {
      v2 = sub_2993B9184(*a1[5]) != 0;
      return v2 & 1;
    }

LABEL_6:
    v2 = 0;
    return v2 & 1;
  }

  if (v1 != 1)
  {
    goto LABEL_6;
  }

  v2 = *(a1 + 24);
  return v2 & 1;
}

void sub_2992F8ED4(uint64_t a1, uint64_t a2, int a3, char a4, _BYTE *a5)
{
  v63 = *MEMORY[0x29EDCA608];
  if (*(a2 + 240) != *(a2 + 232))
  {
    LMLanguageModelCreatePredictionEnumerator();
    if (LMPredictionEnumeratorAdvance())
    {
      LODWORD(__src) = 0;
      if (LMPredictionEnumeratorGetPrediction() >= 1 && LMLanguageModelTokenHasAttributes() && LMLanguageModelCopyTokenAttributes())
      {
        operator new();
      }
    }

    LMPredictionEnumeratorRelease();
  }

  if (*(a2 + 104) != 1)
  {
    if (sub_2992F8CFC(a1, a2, a3))
    {
      v54 = 10;
      v55 = (a3 & 4) != 0;
      v56 = a4 ^ 1;
      if (sub_2992F8E70(a1))
      {
        sub_29931290C(*(a1 + 40), a5, &__src);
      }

      else
      {
        sub_29928005C(*(a1 + 32), a5, &__src);
      }

      if (__src != &v60)
      {
        operator new();
      }

      sub_29928113C(&__src, v60);
      return;
    }

    v22 = (a2 + 48);
    if (CFArrayGetCount(*(a2 + 96)) != (*(a2 + 56) - *(a2 + 48)) >> 2)
    {
      return;
    }

    *(a1 + 8) = a3;
    v54 = 0;
    if (*(a2 + 128))
    {
      if ((a3 & 0x28) != 0)
      {
        v47 = 0;
      }

      else
      {
        if ((atomic_load_explicit(&qword_2A1460E48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460E48))
        {
          qword_2A1460E40 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberFloatType, &unk_2994149FC);
          __cxa_guard_release(&qword_2A1460E48);
        }

        LMLanguageModelSetParameterValue();
        v47 = 1;
      }

      goto LABEL_48;
    }

    sub_299240D80(&v54, *(a2 + 96));
    v23 = *(*a1 + 8);
    if (*(v23 + 5) == 1 && (v24 = *(v23 + 40)) != 0)
    {
      if (!sub_29937720C(v22))
      {
        goto LABEL_60;
      }
    }

    else
    {
      v24 = *(v23 + 32);
      if ((sub_29937720C(v22) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    if (sub_299377274(v22, v24))
    {
      v47 = 0;
LABEL_48:
      v25 = *(*a1 + 8);
      if (*(v25 + 5) != 1 || (v26 = *(v25 + 40)) == 0)
      {
        v26 = *(v25 + 32);
      }

      sub_29938429C(v26, 2);
      LMLanguageModelCreatePredictionEnumerator();
      cf = 0;
      alloc = *MEMORY[0x29EDB8ED8];
      do
      {
        if (LMPredictionEnumeratorAdvance() != 1)
        {
          break;
        }

        v57 = 0;
        if (LMPredictionEnumeratorGetPrediction() < 1)
        {
          break;
        }
      }

      while (LMLanguageModelTokenHasAttributes());
      if (v47)
      {
        if ((atomic_load_explicit(&qword_2A1460E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460E58))
        {
          qword_2A1460E50 = CFNumberCreate(alloc, kCFNumberFloatType, &unk_299414A00);
          __cxa_guard_release(&qword_2A1460E58);
        }

        LMLanguageModelSetParameterValue();
      }

      LMPredictionEnumeratorRelease();
      if (cf)
      {
        CFRelease(cf);
      }
    }

LABEL_60:
    if (v54)
    {
      CFRelease(v54);
    }

    return;
  }

  v9 = *(a2 + 96);
  if (v9)
  {
    v10 = *(a2 + 48);
    v11 = (*(a2 + 56) - v10) >> 2;
    Count = CFArrayGetCount(*(a2 + 96));
    if (v11 == Count && Count != 0)
    {
      v14 = *(*a1 + 40);
      if (v14)
      {
        sub_299210C88(*(*a1 + 40));
        v15 = atomic_load((v14 + 40));
        if (v15 == 2)
        {
          if (*v14)
          {
            v16 = v11 - 1;
            if (v11 < 1)
            {
              if ((*(v10 + 4 * v16) - 1) >= 0x1F3)
              {
LABEL_64:
                LMLanguageModelCreatePredictionEnumerator();
                if (v11 < 1)
                {
                  alloca = 0;
                }

                else
                {
                  alloca = CFArrayGetValueAtIndex(v9, v11 - 1);
                }

                if (LMPredictionEnumeratorAdvance())
                {
                  v27 = 0;
                  v52 = *MEMORY[0x29EDB8ED8];
                  do
                  {
                    v57 = 0;
                    Prediction = LMPredictionEnumeratorGetPrediction();
                    if (Prediction < 1)
                    {
                      break;
                    }

                    if (v62[0] >= 0x1F4u)
                    {
                      v53 = *(a2 + 105);
                      __src = 0;
                      v60 = 0;
                      v61 = 0;
                      v29 = *(*a1 + 40);
                      if (v29)
                      {
                        sub_299210C88(*(*a1 + 40));
                        v30 = atomic_load(v29 + 10);
                        if (v30 == 2)
                        {
                          v31 = *v29;
                          if (*v29)
                          {
                            v51 = v27;
                            v32 = 0;
                            Mutable = 0;
                            v54 = 0;
                            while (1)
                            {
                              if (v62[v32] < 0x1F4u)
                              {
                                goto LABEL_104;
                              }

                              v34 = (*(*v31 + 32))(v31);
                              if (v54)
                              {
                                CFRelease(v54);
                              }

                              v54 = v34;
                              if (!v34)
                              {
                                goto LABEL_104;
                              }

                              Length = CFStringGetLength(v34);
                              v36 = Length;
                              v37 = Prediction != 1;
                              if (Length != 1)
                              {
                                v37 = 0;
                              }

                              if (Length <= 1 && !v37)
                              {
LABEL_104:
                                if (!Mutable)
                                {
                                  v27 = v51;
                                  goto LABEL_112;
                                }

                                v27 = v51;
                                if (CFStringGetLength(Mutable) >= 2)
                                {
                                  cf = sub_29932010C(*(a1 + 48), alloca, Mutable, v53 ^ 1u);
                                  operator new();
                                }

                                goto LABEL_111;
                              }

                              if (!Mutable)
                              {
                                Mutable = CFStringCreateMutable(v52, 0);
                              }

                              if (sub_2992FA27C(a1, v34, 134))
                              {
                                break;
                              }

                              if (v32 || (v53 & 1) == 0)
                              {
                                CFStringAppend(Mutable, @" ");
                                ++v36;
                                v34 = v54;
                              }

                              CFStringAppend(Mutable, v34);
                              v39 = v60;
                              if (v60 >= v61)
                              {
                                v41 = __src;
                                v42 = v60 - __src;
                                v43 = (v60 - __src) >> 1;
                                if (v43 <= -2)
                                {
                                  sub_299212A8C();
                                }

                                if (v61 - __src <= v43 + 1)
                                {
                                  v44 = v43 + 1;
                                }

                                else
                                {
                                  v44 = v61 - __src;
                                }

                                v45 = 0x7FFFFFFFFFFFFFFFLL;
                                if (v61 - __src < 0x7FFFFFFFFFFFFFFELL)
                                {
                                  v45 = v44;
                                }

                                if (v45)
                                {
                                  sub_299212A48(&__src, v45);
                                }

                                *(2 * v43) = v36;
                                v40 = (2 * v43 + 2);
                                memcpy(0, v41, v42);
                                v46 = __src;
                                __src = 0;
                                v60 = v40;
                                v61 = 0;
                                if (v46)
                                {
                                  operator delete(v46);
                                }
                              }

                              else
                              {
                                *v60 = v36;
                                v40 = v39 + 2;
                              }

                              v60 = v40;
                              if (Prediction == ++v32)
                              {
                                goto LABEL_104;
                              }
                            }

                            v27 = v51;
                            if (!Mutable)
                            {
                              goto LABEL_112;
                            }

LABEL_111:
                            CFRelease(Mutable);
LABEL_112:
                            if (v54)
                            {
                              CFRelease(v54);
                            }
                          }
                        }
                      }
                    }
                  }

                  while ((LMPredictionEnumeratorAdvance() & 1) != 0);
                }

                LMPredictionEnumeratorRelease();
              }
            }

            else
            {
              v17 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v9, v17);
                if (sub_2992FA300(ValueAtIndex))
                {
                  break;
                }

                if (v11 == ++v17)
                {
                  if ((*(v10 + 4 * v16) - 1) < 0x1F3)
                  {
                    return;
                  }

                  v19 = v11;
                  while (1)
                  {
                    v20 = v19 - 1;
                    v21 = CFArrayGetValueAtIndex(v9, v19 - 1);
                    if (sub_2992FA27C(a1, v21, 2))
                    {
                      break;
                    }

                    --v19;
                    if (v20 <= 0)
                    {
                      v19 = -1;
                      break;
                    }
                  }

                  if (v11 <= v19)
                  {
                    return;
                  }

                  goto LABEL_64;
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2992FA0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, char a32, void *__p, uint64_t a34)
{
  __cxa_guard_abort(&qword_2A1460E48);
  sub_299229F00(&a29, 0);
  _Unwind_Resume(a1);
}

CFIndex sub_2992FA27C(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  if (!theString)
  {
    return 0;
  }

  result = CFStringGetLength(theString);
  if (result)
  {
    if (sub_2992FA300(theString))
    {
      return 1;
    }

    else
    {
      v7 = *(a1 + 48);

      return sub_29931FFC0(v7, theString, a3);
    }
  }

  return result;
}

BOOL sub_2992FA300(const __CFString *a1)
{
  v2 = 1;
  if (CFStringCompare(a1, @"taiwan", 1uLL))
  {
    return CFStringCompare(a1, @"tibet", 1uLL) == kCFCompareEqualTo;
  }

  return v2;
}

void sub_2992FA358(uint64_t a1, const __CFURL *a2)
{
  *a1 = &unk_2A1F6F4A8;
  *(a1 + 8) = 0;
  sub_2992FA5C4((a1 + 16), a2, "", 0);
  sub_2992FA5C4((a1 + 24), a2, "logJointProb", 0xCuLL);
  sub_2992FA5C4((a1 + 32), a2, "logJointProb_batch32", 0x14uLL);
  *(a1 + 48) = 0;
  *(a1 + 40) = &unk_2A1F6F5E8;
  *(a1 + 64) = 0;
  *(a1 + 56) = 1;
  sub_299229F00((a1 + 48), 0);
  CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  operator new();
}

void sub_2992FA518(_Unwind_Exception *a1)
{
  sub_2992FD650((v1 + 24));
  sub_2992FD650((v1 + 16));
  v4 = *(v1 + 8);
  *v1 = v2;
  *(v1 + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_2992FA5C4(void *a1, CFURLRef url, _BYTE *a3, unint64_t a4)
{
  v54 = *MEMORY[0x29EDCA608];
  if (!url)
  {
    *a1 = 0;
    return;
  }

  error = 0;
  if (!CFURLResourceIsReachable(url, &error))
  {
    v11 = CFErrorCopyDescription(error);
    v44.__r_.__value_.__r.__words[0] = v11;
    v12 = sub_2993652F8(7u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buffer = 138412290;
      *&buffer[4] = v11;
      _os_log_debug_impl(&dword_29918C000, v12, OS_LOG_TYPE_DEBUG, "Montreal assets are not reachable: %@", buffer, 0xCu);
    }

    CFRelease(error);
    *a1 = 0;
    if (v11)
    {
      CFRelease(v11);
    }

    return;
  }

  if (CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
  {
    v8 = buffer;
  }

  else
  {
    v8 = &unk_29943AA03;
  }

  sub_2991C6CA8(__s, v8);
  v9 = v42;
  if ((v42 & 0x80000000) == 0)
  {
    if (v42)
    {
      v10 = __s;
      goto LABEL_16;
    }

LABEL_20:
    *a1 = 0;
    if ((v9 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_69;
  }

  if (!v41)
  {
    goto LABEL_20;
  }

  v10 = *__s;
LABEL_16:
  v13 = strlen(v10);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v13;
  if (v13)
  {
    memmove(&__dst, v10, v13);
  }

  __dst.__r_.__value_.__s.__data_[v14] = 0;
  if (a4)
  {
    sub_2991D9388(&v44, a3, &a3[a4], a4);
    v15 = std::string::insert(&v44, 0, "#", 1uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v51 = v15->__r_.__value_.__r.__words[2];
    *buffer = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v51) >= 0)
    {
      v17 = buffer;
    }

    else
    {
      v17 = *buffer;
    }

    if (SHIBYTE(v51) >= 0)
    {
      v18 = HIBYTE(v51);
    }

    else
    {
      v18 = *&buffer[8];
    }

    std::string::append(&__dst, v17, v18);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(*buffer);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v21 = CFURLCreateFromFileSystemRepresentation(0, p_dst, size, 0);
  keys = 0;
  v49 = 0;
  v44.__r_.__value_.__r.__words[0] = 0;
  v44.__r_.__value_.__l.__size_ = &v44;
  v44.__r_.__value_.__r.__words[2] = 0x2000000000;
  v22 = qword_2A1460E88;
  v45 = qword_2A1460E88;
  if (!qword_2A1460E88)
  {
    *buffer = MEMORY[0x29EDCA5F8];
    *&buffer[8] = 0x40000000;
    v51 = sub_2992FCDCC;
    v52 = &unk_29EF10D38;
    v53 = &v44;
    v23 = sub_2992FCE1C();
    v24 = dlsym(v23, "kMRLNeuralNetworkOptionModelURLKey");
    *(v53->__r_.__value_.__l.__size_ + 24) = v24;
    qword_2A1460E88 = *(v53->__r_.__value_.__l.__size_ + 24);
    v22 = *(v44.__r_.__value_.__l.__size_ + 24);
  }

  _Block_object_dispose(&v44, 8);
  if (!v22)
  {
    goto LABEL_71;
  }

  keys = *v22;
  v44.__r_.__value_.__r.__words[0] = 0;
  v44.__r_.__value_.__l.__size_ = &v44;
  v44.__r_.__value_.__r.__words[2] = 0x2000000000;
  v25 = qword_2A1460E90;
  v45 = qword_2A1460E90;
  if (!qword_2A1460E90)
  {
    *buffer = MEMORY[0x29EDCA5F8];
    *&buffer[8] = 0x40000000;
    v51 = sub_2992FCFA0;
    v52 = &unk_29EF10D98;
    v53 = &v44;
    v26 = sub_2992FCE1C();
    v27 = dlsym(v26, "kMRLNeuralNetworkOptionModelTypeKey");
    *(v53->__r_.__value_.__l.__size_ + 24) = v27;
    qword_2A1460E90 = *(v53->__r_.__value_.__l.__size_ + 24);
    v25 = *(v44.__r_.__value_.__l.__size_ + 24);
  }

  _Block_object_dispose(&v44, 8);
  if (!v25)
  {
    goto LABEL_71;
  }

  v49 = *v25;
  values = v21;
  v47 = 0;
  v44.__r_.__value_.__r.__words[0] = 0;
  v44.__r_.__value_.__l.__size_ = &v44;
  v44.__r_.__value_.__r.__words[2] = 0x2000000000;
  v28 = qword_2A1460E98;
  v45 = qword_2A1460E98;
  if (!qword_2A1460E98)
  {
    *buffer = MEMORY[0x29EDCA5F8];
    *&buffer[8] = 0x40000000;
    v51 = sub_2992FCFF0;
    v52 = &unk_29EF10DC0;
    v53 = &v44;
    v29 = sub_2992FCE1C();
    v30 = dlsym(v29, "kMRLNeuralNetworkModelTypeE5RT");
    *(v53->__r_.__value_.__l.__size_ + 24) = v30;
    qword_2A1460E98 = *(v53->__r_.__value_.__l.__size_ + 24);
    v28 = *(v44.__r_.__value_.__l.__size_ + 24);
  }

  _Block_object_dispose(&v44, 8);
  if (!v28)
  {
    goto LABEL_71;
  }

  v47 = *v28;
  v31 = CFDictionaryCreate(0, &keys, &values, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v44.__r_.__value_.__r.__words[0] = 0;
  v44.__r_.__value_.__l.__size_ = &v44;
  v44.__r_.__value_.__r.__words[2] = 0x2000000000;
  v32 = off_2A1460EA0;
  v45 = off_2A1460EA0;
  if (!off_2A1460EA0)
  {
    *buffer = MEMORY[0x29EDCA5F8];
    *&buffer[8] = 0x40000000;
    v51 = sub_2992FD040;
    v52 = &unk_29EF10DE8;
    v53 = &v44;
    v33 = sub_2992FCE1C();
    v34 = dlsym(v33, "MRLNeuralNetworkCreate");
    *(v53->__r_.__value_.__l.__size_ + 24) = v34;
    off_2A1460EA0 = *(v53->__r_.__value_.__l.__size_ + 24);
    v32 = *(v44.__r_.__value_.__l.__size_ + 24);
  }

  _Block_object_dispose(&v44, 8);
  if (!v32)
  {
LABEL_71:
    v38 = dlerror();
    abort_report_np("%s", v38);
    __break(1u);
    return;
  }

  v35 = v32(v31, &error);
  if (!error)
  {
    *a1 = v35;
    if (!v31)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v36 = CFErrorCopyDescription(error);
  v44.__r_.__value_.__r.__words[0] = v36;
  v37 = sub_2993652F8(7u);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buffer = 138412290;
    *&buffer[4] = v36;
    _os_log_debug_impl(&dword_29918C000, v37, OS_LOG_TYPE_DEBUG, "Montreal model creation by MRLNeuralNetworkCreate caught an error: %@", buffer, 0xCu);
  }

  CFRelease(error);
  *a1 = 0;
  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v31)
  {
LABEL_63:
    CFRelease(v31);
  }

LABEL_64:
  if (v21)
  {
    CFRelease(v21);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
LABEL_69:
    operator delete(*__s);
  }
}

void sub_2992FACAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992FADDC(uint64_t a1)
{
  *a1 = &unk_2A1F6F5E8;
  sub_299229F00((a1 + 8), 0);
  return a1;
}

void sub_2992FAE24(uint64_t a1, const __CFURL *a2, uint64_t *a3)
{
  *a1 = &unk_2A1F6F4A8;
  *(a1 + 8) = 0;
  sub_2992FA5C4((a1 + 16), a2, "", 0);
  sub_2992FA5C4((a1 + 24), a2, "logJointProb", 0xCuLL);
  sub_2992FA5C4((a1 + 32), a2, "logJointProb_batch32", 0x14uLL);
  *(a1 + 48) = 0;
  *(a1 + 40) = &unk_2A1F6F5E8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(a1 + 56) = 1;
  sub_299229F00((a1 + 48), 0);
  CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  operator new();
}

void sub_2992FB024(_Unwind_Exception *a1)
{
  sub_2992FD650((v1 + 24));
  sub_2992FD650((v1 + 16));
  v4 = *(v1 + 8);
  *v1 = v2;
  *(v1 + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2992FB0D0(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = a1[2];
  v3 = v2 != 0;
  if (!v2)
  {
    v4 = sub_2993652F8(3u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MontrealLanguageModel::isModelAvaiable] model for prediction isn't avaiable.", &v8, 2u);
    }
  }

  if (!a1[3])
  {
    v5 = sub_2993652F8(3u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "logJointProb";
      _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[MontrealLanguageModel::isModelAvaiable] model for joint probability isn't avaiable. Does the bundle contain function name '%s'?", &v8, 0xCu);
    }

    v3 = 0;
  }

  if (!a1[4])
  {
    v6 = sub_2993652F8(3u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "logJointProb_batch32";
      _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "[MontrealLanguageModel::isModelAvaiable] model for batched joint probability isn't avaiable. Does the bundle contain function name '%s'?", &v8, 0xCu);
    }

    return 0;
  }

  return v3;
}

void sub_2992FB24C(void *a1@<X0>, uint64_t **a2@<X1>, int a3@<W2>, float **a4@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2) - 33 <= 0xFFFFFFFFFFFFFFE3)
  {
    v7 = sub_2993652F8(3u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(cf[0]) = 0;
      _os_log_debug_impl(&dword_29918C000, v7, OS_LOG_TYPE_DEBUG, "[MontrealLanguageModel::jointProbabilitySingleInference]", cf, 2u);
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    operator new();
  }

  v8 = sub_2993652F8(3u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(cf[0]) = 0;
    _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[MontrealLanguageModel::jointProbabilityBatchedInference]", cf, 2u);
  }

  v46 = *a2;
  v47 = a2[1];
  v9 = 0xAAAAAAAAAAAAAAABLL * (v47 - *a2);
  LODWORD(cf[0]) = 0;
  v45 = v9;
  sub_2991AAFC8(a4, v9, cf);
  v10 = a1[6];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v52 = Mutable;
  if (v10 && CFArrayGetCount(v10))
  {
    for (i = 0; i < CFArrayGetCount(v10); ++i)
    {
      v13 = 32;
      do
      {
        v55.location = i;
        v55.length = 1;
        CFArrayAppendArray(Mutable, v10, v55);
        --v13;
      }

      while (v13);
    }
  }

  v14 = *a2;
  v15 = a2[1];
  if (*a2 == v15)
  {
    v20 = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v18 = *v14;
      v17 = v14[1];
      v14 += 3;
      v19 = (v17 - v18) >> 2;
      if (v16 <= v19)
      {
        v16 = v19;
      }
    }

    while (v14 != v15);
    v53 = *(a1[1] + 48);
    v50 = 0;
    v51 = 0;
    v49 = 0;
    if (v16)
    {
      if (v16 <= 0xAAAAAAAAAAAAAAALL)
      {
        cf[4] = &v49;
        sub_2992FD2C4(v16);
      }

      sub_299212A8C();
    }

    v20 = 0;
  }

  v21 = 0;
  if (v45 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v45;
  }

  do
  {
    sub_2992FBC64(a1[4], @"input", 32, *(v20 + 24 * v21++));
    sub_2992FBC64(a1[4], @"label", 32, *(v49 + 24 * v21));
    sub_2992FBDA0(a1[4], v52);
    v23 = sub_2992FBF58(a1[4]);
    sub_2992FC26C(v52, v23);
    v24 = sub_2992FC070(a1[4]);
    if (v47 != v46)
    {
      v25 = *a4;
      v26 = *a2 + 1;
      v27 = v22;
      do
      {
        if (v21 < (*v26 - *(v26 - 1)) >> 2)
        {
          _H0 = *v24;
          __asm { FCVT            D0, H0 }

          *&_D0 = *v25 + _D0 * 0.434294482;
          *v25 = *&_D0;
        }

        ++v25;
        ++v24;
        v26 += 3;
        --v27;
      }

      while (v27);
    }

    v20 = v49;
  }

  while (v21 < 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 3) - 1);
  if (v47 != v46 && a3)
  {
    v34 = 0;
    if (v45 <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = v45;
    }

    do
    {
      v36 = a1[8];
      v37 = &(*a2)[3 * v34];
      v39 = *v37;
      v38 = v37[1];
      v40 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      v41 = (v38 - v39) >> 2;
      cf[0] = v40;
      v42 = v41 - 15;
      if (v41 < 0xF)
      {
        v42 = 0;
      }

      if (v42 < v41)
      {
        if (v41 >= 0xF)
        {
          v43 = 15;
        }

        else
        {
          v43 = (v38 - v39) >> 2;
        }

        v44 = v34 + 32 * v41 - 32 * v43;
        do
        {
          v56.location = v44;
          v56.length = 1;
          CFArrayAppendArray(v40, v52, v56);
          v44 += 32;
          --v43;
        }

        while (v43);
        v40 = cf[0];
      }

      if (v40)
      {
        CFArrayAppendValue(*(v36 + 8), v40);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }

      ++v34;
    }

    while (v34 != v35);
  }

  cf[0] = &v49;
  sub_2992FD380(cf);
  if (v52)
  {
    CFRelease(v52);
  }
}

void sub_2992FBA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, const void *a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_2992530BC(&a16, 0);
  v23 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void sub_2992FBB94(unsigned __int16 *a1, CFArrayRef theArray)
{
  if (theArray && CFArrayGetCount(theArray))
  {
    Count = CFArrayGetCount(theArray);
    v5 = *a1;
    if (Count <= v5)
    {
      MutableCopy = CFArrayCreateMutableCopy(0, Count, theArray);
      v7 = (a1 + 4);
    }

    else
    {
      Mutable = CFArrayCreateMutable(0, v5, MEMORY[0x29EDB9000]);
      v11.length = *a1;
      v11.location = Count - v11.length;
      CFArrayAppendArray(Mutable, theArray, v11);
      v7 = (a1 + 4);
      MutableCopy = Mutable;
    }

    sub_2992530BC(v7, MutableCopy);
  }

  else
  {
    v9 = *(a1 + 1);

    CFArrayRemoveAllValues(v9);
  }
}

uint64_t sub_2992FBC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v8 = off_2A1460E68;
  v16 = off_2A1460E68;
  if (!off_2A1460E68)
  {
    v9 = sub_2992FCE1C();
    v14[3] = dlsym(v9, "MRLNeuralNetworkSetInput");
    off_2A1460E68 = v14[3];
    v8 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v8)
  {
    v11 = dlerror();
    v12 = abort_report_np("%s", v11);
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v12);
  }

  return v8(a1, a2, a3, 1, a4, 0);
}

uint64_t sub_2992FBDA0(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v4 = off_2A1460E70;
  v12 = off_2A1460E70;
  if (!off_2A1460E70)
  {
    v5 = sub_2992FCE1C();
    v10[3] = dlsym(v5, "MRLNeuralNetworkPredict");
    off_2A1460E70 = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    v7 = dlerror();
    v8 = abort_report_np("%s", v7);
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  return v4(a1, a2, 0);
}

void sub_2992FBEC0(unsigned __int16 *a1, CFArrayRef theArray)
{
  v4 = *(a1 + 1);
  if (v4)
  {
    while (CFArrayGetCount(v4) >= *a1)
    {
      CFArrayRemoveValueAtIndex(*(a1 + 1), 0);
      v4 = *(a1 + 1);
    }
  }

  if (CFArrayGetCount(theArray) != 1)
  {
    __assert_rtn("extendStates", "MontrealLanguageModel.cpp", 199, "CFArrayGetCount(other) == otherExpectedSize");
  }

  v5 = *(a1 + 1);

  sub_2992FC26C(v5, theArray);
}

uint64_t sub_2992FBF58(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v2 = off_2A1460E78;
  v10 = off_2A1460E78;
  if (!off_2A1460E78)
  {
    v3 = sub_2992FCE1C();
    v8[3] = dlsym(v3, "MRLNeuralNetworkCopyStates");
    off_2A1460E78 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = dlerror();
    v6 = abort_report_np("%s", v5);
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2(a1, 0);
}

uint64_t sub_2992FC070(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v2 = off_2A1460E80;
  v10 = off_2A1460E80;
  if (!off_2A1460E80)
  {
    v3 = sub_2992FCE1C();
    v8[3] = dlsym(v3, "MRLNeuralNetworkGetOutput");
    off_2A1460E80 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = dlerror();
    v6 = abort_report_np("%s", v5);
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2(a1, @"logits", 0);
}

void sub_2992FC190(void *a1, unsigned __int16 *a2)
{
  v3 = (a2 + 4);
  v2 = *(a2 + 1);
  if (v2)
  {
    *(a2 + 1) = 0;
    *a1 = v2;
    Mutable = CFArrayCreateMutable(0, *a2, MEMORY[0x29EDB9000]);

    sub_2992530BC(v3, Mutable);
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t *sub_2992FC218(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_2992530BC((v2 + 8), 0);
    MEMORY[0x29C29BFB0](v2, 0x1020C400CC4F872);
  }

  return a1;
}

void sub_2992FC26C(__CFArray *a1, CFArrayRef theArray)
{
  v5.length = CFArrayGetCount(theArray);
  v5.location = 0;
  CFArrayAppendArray(a1, theArray, v5);

  CFRelease(theArray);
}

void sub_2992FC2C0(const void ***a2@<X1>, const void **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v5 = *a2;
  if (*a2 != a2[1])
  {
    if (*v5)
    {
      __dynamic_cast(*v5, &unk_2A1F6F518, &unk_2A1F6F528, 0);
    }

    operator new();
  }
}

void sub_2992FC84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  sub_2992530BC(&__p, 0);
  sub_2992FC218((v24 - 112));
  v26 = *v23;
  if (*v23)
  {
    *(v23 + 8) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_2992FCB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_2992FC218(&a11);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2992FCB60(uint64_t a1, CFIndex a2)
{
  v3 = *MEMORY[0x29EDB8ED8];
  ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 64) + 8), a2);
  CFArrayCreateCopy(v3, ValueAtIndex);
  operator new();
}

void sub_2992FCBE8(uint64_t a1)
{
  sub_2992FD554(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992FCC20(void **a1)
{
  (*(*a1[1] + 24))(__p);
  ((*a1)[13])(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2992FCCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2992FCDCC(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "kMRLNeuralNetworkOptionModelURLKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460E88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2992FCE1C()
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!qword_2A1460E60)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 0x40000000;
    v3[3] = sub_2992FCF2C;
    v3[4] = &unk_29EF10D70;
    v3[5] = v3;
    v4 = xmmword_29EF10D58;
    v5 = 0;
    qword_2A1460E60 = _sl_dlopen();
    v1 = v3[0];
    v0 = qword_2A1460E60;
    if (qword_2A1460E60)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np("%s", v3[0]);
    }

    free(v1);
    return v0;
  }

  return qword_2A1460E60;
}

uint64_t sub_2992FCF2C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_2A1460E60 = result;
  return result;
}

void *sub_2992FCFA0(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "kMRLNeuralNetworkOptionModelTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460E90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992FCFF0(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "kMRLNeuralNetworkModelTypeE5RT");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460E98 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992FD040(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "MRLNeuralNetworkCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1460EA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2992FD090(uint64_t a1)
{
  *a1 = &unk_2A1F6F5E8;
  sub_299229F00((a1 + 8), 0);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2992FD184(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "MRLNeuralNetworkSetInput");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1460E68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992FD1D4(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "MRLNeuralNetworkPredict");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1460E70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992FD224(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "MRLNeuralNetworkCopyStates");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1460E78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992FD274(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "MRLNeuralNetworkGetOutput");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1460E80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2992FD2C4(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2992FD31C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2992FD380(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_2992FD410(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2992F8674(a1, a2);
  }

  return a1;
}

void sub_2992FD46C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992FD488(uint64_t result, uint64_t *a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 2)
    {
      v5 = (a4 - result) >> 1;
      v6 = v5 | 1;
      v7 = (result + 4 * (v5 | 1));
      v8 = v5 + 2;
      v9 = *a2;
      if (v8 < a3 && *(v9 + 2 * *v7) > *(v9 + 2 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *v7;
      v11 = *a4;
      v12 = *(v9 + 2 * v11);
      if (*(v9 + 2 * v10) <= v12)
      {
        do
        {
          *a4 = v10;
          a4 = v7;
          if (v4 < v6)
          {
            break;
          }

          v13 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 4 * v6);
          v14 = v13 + 2;
          if (v14 < a3 && *(v9 + 2 * *v7) > *(v9 + 2 * v7[1]))
          {
            ++v7;
            v6 = v14;
          }

          v10 = *v7;
        }

        while (*(v9 + 2 * v10) <= v12);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t sub_2992FD554(uint64_t a1)
{
  *a1 = &unk_2A1F6F4A8;
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(a1 + 40) = &unk_2A1F6F5E8;
  sub_299229F00((a1 + 48), 0);
  sub_2992FD650((a1 + 32));
  sub_2992FD650((a1 + 24));
  sub_2992FD650((a1 + 16));
  v3 = *(a1 + 8);
  *a1 = &unk_2A1F6F568;
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_2992FD650(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

uint64_t sub_2992FD684(uint64_t a1)
{
  *a1 = &unk_2A1F6F620;
  sub_2992530BC((a1 + 8), 0);
  return a1;
}

void sub_2992FD6CC(uint64_t a1)
{
  *a1 = &unk_2A1F6F620;
  sub_2992530BC((a1 + 8), 0);

  JUMPOUT(0x29C29BFB0);
}

uint64_t *sub_2992FD734@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    v3 = a2;
    v4 = result;
    while (1)
    {
      v6 = 0;
      v7 = 2 * v3;
      while (*(v4 + v6) == 12387)
      {
        ++v6;
        v7 -= 2;
        if (!v7)
        {
          v6 = ((v3 - 1) & 0x7FFFFFFFFFFFFFFFLL) + 1;
          break;
        }
      }

      if (v3 - 1 >= v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = v3 - 1;
      }

      v9 = sub_2992FD94C(*(v4 + v8));
      v11 = v9;
      v12 = v10;
      if (v8)
      {
        if (v10)
        {
          v13 = 0;
          while (*v9 != word_299414AA2[v13])
          {
            if (++v13 == 6)
            {
              goto LABEL_17;
            }
          }
        }

        --v8;
        v11 = sub_2992FD94C(*(v4 + v8));
        v12 = v14;
      }

LABEL_17:
      if (!v4)
      {
        break;
      }

      if (v3 - v8 < 2)
      {
        break;
      }

      v15 = v4 + v8;
      if (!sub_2992FDA0C(*v15))
      {
        break;
      }

      if (!sub_2992FDA0C(v15[1]))
      {
        break;
      }

      v16 = byte_299414BA4[*v15 - 12353];
      if (v16 < 0)
      {
        break;
      }

      v17 = 0;
      v18 = -1;
      do
      {
        if (v15[1] == word_299414BF8[v17])
        {
          v18 = v17;
        }

        ++v17;
      }

      while (v17 != 9);
      if (v18 < 0)
      {
        break;
      }

      v19 = 9 * v16 + v18;
      if (v19 > 0xCE)
      {
        break;
      }

      v20 = *(&off_29EF111B8 + v19);
      if (!*v20)
      {
        break;
      }

      v21 = 0;
      do
      {
        v22 = &v20[v21++];
      }

      while (v22[1]);
      if (!v21)
      {
        break;
      }

      v23 = v8 + 2;
      if (v8)
      {
        goto LABEL_41;
      }

LABEL_42:
      result = sub_29922C614(a3, v20, v21);
      if (v4)
      {
        v4 = (v4 + 2 * v23);
        v3 -= v23;
        if (v3)
        {
          continue;
        }
      }

      return result;
    }

    v23 = v8 + 1;
    if (v12)
    {
      v20 = v11;
    }

    else
    {
      v20 = v4;
    }

    if (v12 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v12;
    }

    if (!v8)
    {
      goto LABEL_42;
    }

    do
    {
LABEL_41:
      sub_2992174C4(a3, *v20);
      --v8;
    }

    while (v8);
    goto LABEL_42;
  }

  return result;
}

void sub_2992FD92C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2992FD94C(uint64_t a1)
{
  v1 = a1;
  if (sub_2992FDA0C(a1))
  {
    result = *(&off_29EF10F18 + v1 - 12353);
    if (*result)
    {
      v3 = 0;
      do
      {
        v4 = &result[2 * v3++];
      }

      while (*(v4 + 1));
    }
  }

  else
  {
    v5 = 0;
    result = byte_29945C656;
    while (word_299414C0A[v5] != v1)
    {
      if (++v5 == 6)
      {
        return result;
      }
    }

    result = *(&off_29EF11830 + v5);
    if (*result)
    {
      v6 = 0;
      do
      {
        v7 = &result[2 * v6++];
      }

      while (*(v7 + 1));
    }
  }

  return result;
}

BOOL sub_2992FDA0C(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_2A1460EB0, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    v3 = __cxa_guard_acquire(&qword_2A1460EB0);
    a1 = v4;
    if (v3)
    {
      word_2A1460EA8 = 12437;
      __cxa_guard_release(&qword_2A1460EB0);
      a1 = v4;
    }
  }

  return a1 > 0x3040 && a1 < word_2A1460EA8;
}

uint64_t sub_2992FDA94()
{
  if ((atomic_load_explicit(&qword_2A1462110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1462110))
  {
    operator new();
  }

  return qword_2A1462108;
}

uint64_t sub_2992FDB20(uint64_t a1)
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_2992FDBB8;
  block[3] = &unk_29EF10EA8;
  block[4] = a1;
  if (qword_2A1462118 != -1)
  {
    dispatch_once(&qword_2A1462118, block);
  }

  return a1;
}

void sub_2992FDBB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_299276360("/System/Library/PrivateFrameworks/EmojiFoundation.framework/EmojiFoundation");
  __path[1] = v2;
  if (v2)
  {
    v3 = v2;
    sub_299277A90(v2, __path);
    v4 = __path[0];
    v5 = dlopen(__path[0], 2);
    if (v4)
    {
      MEMORY[0x29C29BF70](v4, 0x1000C8077774924);
    }

    if (v5)
    {
      qword_2A1462120 = objc_getClass("EMFEmojiLocaleData");
      qword_2A1462128 = objc_getClass("EMFEmojiPreferencesService");
      qword_2A1462130 = objc_getClass("EMFEmojiToken");
    }

    *v1 = dispatch_group_create();
    CFRelease(v3);
  }

  else
  {
    *v1 = dispatch_group_create();
  }
}

void sub_2992FDC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

void sub_2992FDCD8(NSObject **a1, unsigned int a2, uint64_t a3)
{
  if (qword_2A1462120)
  {
    v3 = qword_2A1462128 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && qword_2A1462130 != 0)
  {
    v7 = sub_2992EF2F4(a2);
    if (v7)
    {
      v10 = objc_msgSend_emojiLocaleDataWithLocaleIdentifier_(qword_2A1462120, v8, v7, v9);
      v12 = objc_msgSend_emojiTokenWithString_localeData_(qword_2A1462130, v11, a3, v10);
      if (v12)
      {
        v15 = v12;
        v16 = objc_msgSend_sharedServiceWithMachName_(qword_2A1462128, v13, 0, v14);
        v17 = *a1;
        v21 = objc_msgSend_dispatchQueue(v16, v18, v19, v20);
        v22[0] = MEMORY[0x29EDCA5F8];
        v22[1] = 3221225472;
        v22[2] = sub_2992FDDDC;
        v22[3] = &unk_29EF10ED0;
        v22[4] = v16;
        v22[5] = v15;
        dispatch_group_async(v17, v21, v22);
      }
    }
  }
}

uint64_t sub_2992FDDDC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_preferences(*(a1 + 32), a2, a3, a4);
  objc_msgSend_didUseEmoji_(v5, v6, *(a1 + 40), v7);
  v11 = objc_msgSend_preferences(*(a1 + 32), v8, v9, v10);

  return MEMORY[0x2A1C70FE8](v11, sel_writeEmojiDefaults, v12, v13);
}

uint64_t sub_2992FDE24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (qword_2A1462120)
  {
    v4 = qword_2A1462128 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || qword_2A1462130 == 0)
  {
    return 0;
  }

  v7 = objc_msgSend_sharedServiceWithMachName_(qword_2A1462128, a2, 0, a4);
  v9 = objc_msgSend_emojiTokenWithString_localeData_(qword_2A1462130, v8, a2, 0);
  if (!objc_msgSend_supportsSkinToneVariants(v9, v10, v11, v12))
  {
    return 0;
  }

  v16 = objc_msgSend_preferences(v7, v13, v14, v15);
  UsedVariantEmojiForEmoji = objc_msgSend_lastUsedVariantEmojiForEmoji_(v16, v17, v9, v18);

  return objc_msgSend_string(UsedVariantEmojiForEmoji, v20, v21, v22);
}

uint64_t sub_2992FDED0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result <= 5 && ((1 << result) & 0x34) != 0)
  {
    operator new();
  }

  *a2 = 0;
  return result;
}

void sub_2992FDFA0(uint64_t a1)
{
  v2 = a1;
  v3 = sub_29936C2B8();
  if (v2 == 5)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (v2 == 13)
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  sub_29936C350(v3, v5, off_2A145F738[0], off_2A145F6B8[0]);
  operator new();
}

uint64_t *sub_2992FE060()
{
  if ((atomic_load_explicit(&qword_2A1462148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1462148))
  {
    qword_2A1462138 = 0;
    unk_2A1462140 = 0;
    __cxa_guard_release(&qword_2A1462148);
  }

  return &qword_2A1462138;
}

uint64_t *sub_2992FE0BC()
{
  if ((atomic_load_explicit(&qword_2A1462160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1462160))
  {
    qword_2A1462150 = L"";
    *algn_2A1462158 = 0;
    __cxa_guard_release(&qword_2A1462160);
  }

  return &qword_2A1462150;
}

const void **sub_2992FE120@<X0>(const void **result@<X0>, _BYTE *a2@<X8>)
{
  v3 = 2 * result[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v4 = *result;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    result = memmove(a2, v4, v3);
  }

  a2[v3] = 0;
  return result;
}

BOOL sub_2992FE1C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) < v2)
  {
    return 0;
  }

  v3 = *a1;
  return (!v2 || v3 != 0) && memcmp(v3, *a2, 2 * v2) == 0;
}

BOOL sub_2992FE218(uint64_t *a1, const void *a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a3;
  v5 = v3 - a3;
  if (v4 && ((v6 = *a1, !a3) || v6))
  {
    return memcmp((v6 + 2 * v5), a2, 2 * a3) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_2992FE264(void *a1, __int16 a2, double a3)
{
  v6 = a1[2];
  v5 = a1[3];
  if (v6 >= v5)
  {
    v9 = a1[1];
    v10 = v6 - v9;
    v11 = (v6 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      sub_2992EAC5C();
    }

    v13 = v5 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
    v15 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_2992EAC74((a1 + 1), v15);
    }

    v16 = v11;
    v17 = 8 * v11;
    *v17 = a2;
    v18 = a3;
    *(v17 + 4) = v18;
    v8 = 8 * v11 + 8;
    v19 = (v17 - 8 * v16);
    memcpy(v19, v9, v10);
    v20 = a1[1];
    a1[1] = v19;
    a1[2] = v8;
    a1[3] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v6 = a2;
    v7 = a3;
    *(v6 + 4) = v7;
    v8 = v6 + 8;
  }

  a1[2] = v8;
}

BOOL sub_2992FE360(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 8))(a1);
  if (v4 != (*(*a2 + 8))(a2))
  {
    return 0;
  }

  v5 = (**a1)(a1);
  return v5 == (**a2)(a2);
}

__CFString *sub_2992FE448(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v3 = (**a1)(a1);
  CFStringAppendFormat(Mutable, 0, @"{type:%d,%c,", v3, *(a1 + 32));
  v5 = *(a1 + 8);
  for (i = *(a1 + 16); v5 != i; i = *(a1 + 16))
  {
    v6 = *v5;
    if (v5 == i - 4)
    {
      CFStringAppendFormat(Mutable, 0, @"%c:%.2f", v6, *(v5 + 1));
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"%c:%.2f,", v6, *(v5 + 1));
    }

    v5 += 4;
  }

  CFStringAppend(Mutable, @"}\n");
  return Mutable;
}

BOOL sub_2992FE548(uint64_t a1, const void *a2)
{
  result = sub_2992FE360(a1, a2);
  if (result)
  {
    v5 = __dynamic_cast(a2, &unk_2A1F6F680, &unk_2A1F6F690, 0);
    if (!v5)
    {
      __cxa_bad_cast();
    }

    return vabdd_f64(v5[4], *(a1 + 32)) < 2.22044605e-16 && vabdd_f64(v5[5], *(a1 + 40)) < 2.22044605e-16 && vabdd_f64(v5[6], *(a1 + 48)) < 2.22044605e-16 && vabdd_f64(v5[7], *(a1 + 56)) < 2.22044605e-16 && *(v5 + 68) == *(a1 + 68);
  }

  return result;
}

uint64_t sub_2992FE63C(uint64_t result, uint64_t a2)
{
  v5 = 0;
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; v2 += 2)
  {
    result = (*(a2 + 16))(a2, *v2, &v5, v2[1]);
    if (v5)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_2992FE6AC(uint64_t a1, char a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_2992FE76C;
  v4[3] = &unk_29EF10EF8;
  v5 = a2;
  v4[4] = &v6;
  sub_2992FE63C(a1, v4);
  v2 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void sub_2992FE754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2992FE76C(uint64_t result, int a2, _BYTE *a3)
{
  if (a2 == *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

__CFString *sub_2992FE790(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v3 = (**a1)(a1);
  v4 = (*(*a1 + 8))(a1);
  CFStringAppendFormat(Mutable, 0, @"{type:%d,%c,%d,%.2f,%.2f,%.2f,%.2f,%d,", v3, v4, *(a1 + 64), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 68));
  v6 = *(a1 + 8);
  for (i = *(a1 + 16); v6 != i; i = *(a1 + 16))
  {
    v7 = *v6;
    if (v6 == i - 4)
    {
      CFStringAppendFormat(Mutable, 0, @"%c:%.2f", v7, *(v6 + 1));
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"%c:%.2f,", v7, *(v6 + 1));
    }

    v6 += 4;
  }

  CFStringAppendFormat(Mutable, 0, @"}\n");
  return Mutable;
}

void sub_2992FE8DC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  v38[4] = *MEMORY[0x29EDCA608];
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = sub_2992FEB74;
  v27 = sub_2992FEB98;
  v28 = "";
  v30 = 0;
  v31 = 0;
  __p = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 3321888768;
  v34 = sub_2992FEBB0;
  v35 = &unk_2A1F6F730;
  v36 = v22;
  sub_2992FF104(v38, a3);
  v37 = &v23;
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v32 = 0;
  if (v12 != v11)
  {
    v13 = 0;
    v14 = 0.0;
    do
    {
      if ((v32 & 1) != 0 || v13 >= a2)
      {
        break;
      }

      v15 = v12[1];
      v16 = v15;
      if (v13)
      {
        v17 = v15 >= a6 && (v14 - v15) <= a5;
        v16 = v14;
        if (!v17)
        {
          break;
        }
      }

      (v34)(v33, *v12, &v32);
      ++v13;
      v12 += 2;
      v14 = v16;
    }

    while (v12 != v11);
  }

  v18 = v24;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v19 = v18[6];
  v20 = v18[7];
  v21 = v20 - v19;
  if (v20 != v19)
  {
    if (!((v21 >> 3) >> 61))
    {
      sub_2992EAC74(a4, v21 >> 3);
    }

    sub_2992EAC5C();
  }

  sub_2992E55A4(v38);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }
}

void sub_2992FEB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a10, 8);
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2992FEB74(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2992FEB98(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2992FEBB0(uint64_t a1, __int16 a2, float a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24) || (sub_29922D1C4(a1 + 48, a2) & 1) == 0)
  {
    v6 = *(*(a1 + 40) + 8);
    v8 = v6[7];
    v7 = v6[8];
    if (v8 >= v7)
    {
      v10 = v6[6];
      v11 = v8 - v10;
      v12 = (v8 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        sub_2992EAC5C();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      v15 = v14 >= 0x7FFFFFFFFFFFFFF8;
      v16 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v15)
      {
        v16 = v13;
      }

      if (v16)
      {
        sub_2992EAC74((v6 + 6), v16);
      }

      v17 = v12;
      v18 = 8 * v12;
      *v18 = a2;
      *(v18 + 4) = a3;
      v9 = 8 * v12 + 8;
      v19 = (v18 - 8 * v17);
      memcpy(v19, v10, v11);
      v20 = v6[6];
      v6[6] = v19;
      v6[7] = v9;
      v6[8] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v8 = a2;
      *(v8 + 4) = a3;
      v9 = v8 + 8;
    }

    v6[7] = v9;
  }

  ++*(*(*(a1 + 32) + 8) + 24);
}

CFStringRef sub_2992FECFC(uint64_t (***a1)(void))
{
  v1 = *MEMORY[0x29EDB8ED8];
  v2 = (**a1)(a1);
  return CFStringCreateWithFormat(v1, 0, @"type:%d;", v2);
}

void *sub_2992FED78(void *a1)
{
  *a1 = &unk_2A1F6F788;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2992FEDC8(void *a1)
{
  *a1 = &unk_2A1F6F788;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992FEE50(uint64_t a1)
{
  *a1 = &unk_2A1F6F7C8;
  v4 = (a1 + 32);
  sub_29920E060(&v4);
  *a1 = &unk_2A1F6F788;
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2992FEED4(uint64_t a1)
{
  *a1 = &unk_2A1F6F7C8;
  v4 = (a1 + 32);
  sub_29920E060(&v4);
  *a1 = &unk_2A1F6F788;
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return MEMORY[0x29C29BFB0](a1, 0xA1C40B41E38F6);
}

void *sub_2992FEF7C(void *a1)
{
  *a1 = &unk_2A1F6F788;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2992FEFCC(void *a1)
{
  *a1 = &unk_2A1F6F788;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_2992FF044(void *a1)
{
  *a1 = &unk_2A1F6F788;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2992FF094(void *a1)
{
  *a1 = &unk_2A1F6F788;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992FF104(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_2992FF19C(uint64_t a1, const void *a2, const void *a3, const void *a4, uint64_t a5, int a6, char a7, unsigned int a8)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_299304F6C(a1, *a5, *(a5 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a5 + 8) - *a5) >> 1));
  *(a1 + 136) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = a6;
  *(a1 + 180) = a7;
  operator new();
}

void sub_2992FF4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, void **a16, void **a17)
{
  sub_29921ED28(a14);
  v19 = *(v17 + 96);
  if (v19)
  {
    *(v17 + 104) = v19;
    operator delete(v19);
  }

  v20 = *a15;
  if (*a15)
  {
    *(v17 + 80) = v20;
    operator delete(v20);
  }

  v21 = *a16;
  if (*a16)
  {
    *(v17 + 56) = v21;
    operator delete(v21);
  }

  v22 = *a17;
  if (*a17)
  {
    *(v17 + 32) = v22;
    operator delete(v22);
  }

  v23 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992FF534(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5, int a6, int a7, int a8)
{
  v11 = a5;
  v14 = sub_29925851C(a1, a2, a3);
  v14[3] = 0;
  v14[4] = 0;
  v14[5] = 0;
  sub_299305088(v14 + 3, *a4, a4[1], 0xD37A6F4DE9BD37A7 * ((a4[1] - *a4) >> 3));
  *(a1 + 52) = a6;
  *(a1 + 56) = a7;
  *(a1 + 60) = 0;
  *(a1 + 64) = a8;
  sub_2992FF608(a1, v11);
  return a1;
}

void sub_2992FF5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29927255C(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void sub_2992FF608(uint64_t *a1, int a2)
{
  v17 = 0;
  v4 = sub_2992FFFE0(a1);
  if (v4)
  {
    v5 = a1;
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
    }

    v6 = a1[3];
    v7 = a1[4];
    if (v6 == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        v8 += *(*(v6 + 104) - 10);
        v6 += 184;
      }

      while (v6 != v7);
    }

    v10 = v5 + 2 * v8;
    if (v5)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    v13[0] = v10;
    v13[1] = v11;
    sub_299216DAC(v13, &v17, 0, (*(a1 + 14) >> 30) & 1, &v14);
    v12 = v16;
    if ((v16 & 0x8000000000000000) != 0)
    {
      v12 = v15;
      operator delete(v14);
    }

    v9 = -10000 * (v12 - v17);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 12) = v9 + a2;
}

void *sub_2992FF6E4(unsigned int *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2 + 8;
  v7 = *(a2 + 87);
  if (v7 >= 0)
  {
    v8 = a2 + 8;
  }

  else
  {
    v8 = a2[8];
  }

  if (v7 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = a2[9];
  }

  v10 = sub_29925851C(a1, v8, v9);
  v10[3] = 0;
  v60 = (v10 + 3);
  v61 = v10;
  v10[4] = 0;
  v10[5] = 0;
  *(v10 + 13) = *(a2 + 55);
  *(v10 + 14) = a3;
  v5[15] = (*(*a2 + 408))(a2);
  v5[16] = (*(*a2 + 96))(a2);
  v69 = a2;
  if ((atomic_load_explicit(&qword_2A1460EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460EC0))
  {
    sub_299255778(0);
    qword_2A1460EB8 = &qword_2A1461DC0;
    __cxa_guard_release(&qword_2A1460EC0);
    v5 = v61;
  }

  v62 = (*(*a2 + 304))(a2);
  v63 = (*(*a2 + 48))(a2);
  v11 = *(a2 + 87);
  v12 = a2[8];
  if (v11 >= 0)
  {
    v12 = v6;
  }

  if (v11 < 0)
  {
    v11 = a2[9];
  }

  v77 = v12;
  v78 = v11;
  v13 = (*(*a2 + 552))(a2);
  v15 = v14;
  v16 = (*(*a2 + 544))(a2);
  v18 = v17;
  v19 = sub_29921788C(&v77, v5[14]);
  v20 = sub_299217570(v13, v15);
  v21 = sub_299217570(v16, v18);
  v67 = v16;
  v68 = v13;
  if (v19 && v19 == v21 && v19 == v20 && (v5[14] & 0x20) != 0 && (*(*a2 + 96))(a2) != 71)
  {
    v59 = (*(*a2 + 408))(a2);
    v22 = v18;
    if (!v59)
    {
      v78 -= v19;
      v15 -= v19;
      v22 = v18 - v19;
    }
  }

  else
  {
    v22 = v18;
  }

  v75 = 0uLL;
  v76 = 0;
  __p = 0;
  v73 = 0;
  v74 = 0;
  if (v63)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v78;
    do
    {
      v29 = (*v62 + 40 * v27);
      v30 = v29[15];
      v31 = v29[16];
      v70 = v22;
      v71 = v15;
      v65 = v25;
      v66 = v26;
      v32 = v22 - v26;
      v33 = v15 - v25;
      if (v29[13] >= (v78 - v24))
      {
        v34 = (v78 - v24);
      }

      else
      {
        v34 = v29[13];
      }

      if (v29[14] >= v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v29[14];
      }

      if (v29[12] >= v32)
      {
        v36 = v32;
      }

      else
      {
        v36 = v29[12];
      }

      v64 = v24;
      if (v23 >= v74)
      {
        v37 = __p;
        v38 = v23 - __p;
        v39 = 0xCCCCCCCCCCCCCCCDLL * ((v23 - __p) >> 1);
        v40 = v39 + 1;
        if (v39 + 1 > 0x1999999999999999)
        {
          sub_299212A8C();
        }

        if (0x999999999999999ALL * ((v74 - __p) >> 1) > v40)
        {
          v40 = 0x999999999999999ALL * ((v74 - __p) >> 1);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v74 - __p) >> 1) >= 0xCCCCCCCCCCCCCCCLL)
        {
          v41 = 0x1999999999999999;
        }

        else
        {
          v41 = v40;
        }

        if (v41)
        {
          sub_299305034(v41);
        }

        v42 = 10 * v39;
        *v42 = v34;
        *(v42 + 2) = v35;
        *(v42 + 4) = v36;
        *(v42 + 6) = v30;
        *(v42 + 8) = v31;
        v23 = (10 * v39 + 10);
        v43 = (v42 - v38);
        memcpy((v42 - v38), v37, v38);
        __p = v43;
        v73 = v23;
        v74 = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v23 = v34;
        *(v23 + 1) = v35;
        *(v23 + 2) = v36;
        *(v23 + 3) = v30;
        *(v23 + 4) = v31;
        v23 += 10;
      }

      v73 = v23;
      if (v27 == v63 - 1 || (v44 = qword_2A1460EB8, v45 = (*(*v69 + 352))(v69, v27), v46 = (*(*v69 + 344))(v69, v27 + 1), sub_299255970(v44, v45, v46)))
      {
        if (__p == v23)
        {
          v50 = 0.0;
        }

        else
        {
          v47 = 0;
          v48 = __p;
          do
          {
            v49 = *v48;
            v48 += 10;
            v47 += v49;
          }

          while (v48 != v23);
          v50 = v47;
        }

        v51 = v50 * (*(*v69 + 112))(v69) / v28;
        if (*(&v75 + 1) < v76)
        {
          sub_2992FF19C(*(&v75 + 1), v77, v68, v67, &__p, v51, 0, *(v61 + 14));
        }

        v52 = 0xD37A6F4DE9BD37A7 * ((*(&v75 + 1) - v75) >> 3) + 1;
        if (v52 <= 0x1642C8590B21642)
        {
          if (0xA6F4DE9BD37A6F4ELL * ((v76 - v75) >> 3) > v52)
          {
            v52 = 0xA6F4DE9BD37A6F4ELL * ((v76 - v75) >> 3);
          }

          if (0xD37A6F4DE9BD37A7 * ((v76 - v75) >> 3) >= 0xB21642C8590B21)
          {
            v53 = 0x1642C8590B21642;
          }

          else
          {
            v53 = v52;
          }

          v83 = &v75;
          if (v53)
          {
            sub_2993051A8(v53);
          }

          v79 = 0;
          v80 = 8 * ((*(&v75 + 1) - v75) >> 3);
          v81 = v80;
          v82 = 0;
          sub_2992FF19C(v80, v77, v68, v67, &__p, v51, 0, *(v61 + 14));
        }

        sub_299212A8C();
      }

      v24 = v64 + v34;
      v25 = v65 + v35;
      v26 = v66 + v36;
      ++v27;
      v22 = v70;
      v15 = v71;
    }

    while (v27 != v63);
  }

  v54 = *v60;
  if (*v60)
  {
    v55 = v61[4];
    v56 = *v60;
    if (v55 != v54)
    {
      do
      {
        v55 -= 184;
        sub_299305204(v55);
      }

      while (v55 != v54);
      v56 = *v60;
    }

    v61[4] = v54;
    operator delete(v56);
    *v60 = 0;
    v60[1] = 0;
    v60[2] = 0;
  }

  *(v61 + 3) = v75;
  v61[5] = v76;
  v76 = 0;
  v75 = 0uLL;
  v57 = (*(*v69 + 112))(v69);
  sub_2992FF608(v61, v57);
  if (__p)
  {
    operator delete(__p);
  }

  v79 = &v75;
  sub_29927255C(&v79);
  return v61;
}

void sub_2992FFF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  __cxa_guard_abort(&qword_2A1460EC0);
  a25 = a9;
  sub_29927255C(&a25);
  if (*(a10 + 23) < 0)
  {
    operator delete(*a10);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_2992FFFE0(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v3 += *(*(v1 + 104) - 10);
      v1 += 184;
    }

    while (v1 != v2);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(a1 + 8);
    if (v4 > v3)
    {
      return v4 - v3;
    }
  }

  else if (v3 < v4)
  {
    return v4 - v3;
  }

  return 0;
}

double sub_29930003C(uint64_t a1, void *a2, unint64_t a3)
{
  sub_29925851C(&__dst, a2, a3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

uint64_t *sub_29930008C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 24);
    sub_29927255C(&v3);
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    return MEMORY[0x29C29BFB0](v2, 0x1032C40CA71968DLL);
  }

  return result;
}

uint64_t sub_2993000F4(uint64_t a1)
{
  v18 = 0;
  v2 = a1;
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v5 += *(*(v3 + 104) - 10);
      v3 += 184;
    }

    while (v3 != v4);
  }

  v6 = v2 + 2 * v5;
  v7 = sub_2992FFFE0(a1);
  if (v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v14[0] = v6;
  v14[1] = v8;
  sub_299216DAC(v14, &v18, 0, (*(a1 + 56) >> 30) & 1, &v15);
  v9 = *(a1 + 48);
  v10 = v17;
  v11 = v18;
  if ((v17 & 0x8000000000000000) != 0)
  {
    v10 = v16;
    operator delete(v15);
  }

  v12 = v10 - v11;
  if (v11 > 0)
  {
    ++v12;
  }

  return (v9 + 10000 * v12);
}

uint64_t sub_2993001C8(uint64_t *a1, uint64_t a2)
{
  v29[6] = *MEMORY[0x29EDCA608];
  sub_2991D7954(v13);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      sub_299305474(buf, v4);
      sub_299277B3C(&__p, v25, *(v28 - 3));
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
        v7 = sub_2991C0E9C(&v14, p_p, HIBYTE(__p.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v7 = sub_2991C0E9C(&v14, p_p, __p.__r_.__value_.__l.__size_);
      }

      sub_2991C0E9C(v7, " ", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_29921ED28(v29);
      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v4 += 184;
    }

    while (v4 != v5);
  }

  v8 = sub_2993652F8(8u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_29927989C(v13, &__p);
    v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "logSegments";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    v20 = 2080;
    v21 = v11;
    _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[%s] %s: %s\n", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v13[0] = *MEMORY[0x29EDC9528];
  v9 = *(MEMORY[0x29EDC9528] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v14 = v9;
  v15 = MEMORY[0x29EDC9570] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C29BF00](&v18);
}

uint64_t sub_299300538(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xD37A6F4DE9BD37A7 * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0x1642C8590B21642)
    {
      sub_299212A8C();
    }

    v8 = 0xD37A6F4DE9BD37A7 * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0xB21642C8590B21)
    {
      v10 = 0x1642C8590B21642;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      sub_2993051A8(v10);
    }

    v15 = 0;
    v16 = 184 * v7;
    v17 = 184 * v7;
    v18 = 0;
    sub_299305474((184 * v7), a2);
    v6 = 184 * v7 + 184;
    v11 = a1[1];
    v12 = v16 + *a1 - v11;
    sub_299305294(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    a1[1] = v6;
    v14 = a1[2];
    a1[2] = v18;
    v17 = v13;
    v18 = v14;
    v15 = v13;
    v16 = v13;
    result = sub_299305424(&v15);
  }

  else
  {
    result = sub_299305474(a1[1], a2);
    v6 = v4 + 184;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_299300678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299305424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299300698(uint64_t a1)
{
  sub_29921ED28(a1 + 136);
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t *sub_299300714(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    goto LABEL_15;
  }

  v3 = *(a3 + 24);
  v4 = (*(a3 + 32) - v3) >> 3;
  v5 = 0xD37A6F4DE9BD37A7 * v4 - 1;
  if (0xD37A6F4DE9BD37A7 * v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = (v3 + 104);
    do
    {
      v8 = *v7;
      v7 += 23;
      v6 += *(v8 - 10);
      --v5;
    }

    while (v5);
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = 0;
  if (v10 != v9 && v6 >= 1)
  {
    v13 = 1;
    do
    {
      v6 -= *(*(v9 + 104 + v11) - 10);
      v11 += 184;
      if (v13 >= 0xD37A6F4DE9BD37A7 * ((v10 - v9) >> 3))
      {
        break;
      }

      ++v13;
    }

    while (v6 > 0);
  }

  if (!v6)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    if (v11 + v9 != v10)
    {
      sub_299305154(result, 0xD37A6F4DE9BD37A7 * ((v10 - (v11 + v9)) >> 3));
    }
  }

  else
  {
LABEL_15:
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  return result;
}

void sub_299300834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29927255C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_299300854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (a1 == a2)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v5 = a1;
    do
    {
      sub_29925493C(&v26, *(v5 + 72), (*(v5 + 72) + 2 * *(*(v5 + 104) - 6)), &v23);
      v5 += 184;
    }

    while (v5 != a2);
    v6 = v23;
    v7 = v24;
  }

  v8 = v7 - v6;
  v9 = v8 >> 1;
  if (v6)
  {
    v10 = v8 >> 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a3 + 72);
  v12 = *(*(a3 + 104) - 6);
  if (!v11)
  {
    v12 = 0;
  }

  if (v10 < v12)
  {
    v12 = v10;
  }

  if (v12)
  {
    v13 = 0;
    while (v11[v13] == *&v6[2 * v13])
    {
      if (v12 == ++v13)
      {
        v13 = v12;
        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if ((v9 * 0.6) < v13)
  {
    v14 = 0;
    v15 = 1;
    v16 = v13;
    do
    {
      v18 = *v11++;
      v17 = v18;
      if ((v18 - 12353) >= 0x56 && v17 != 12540 && v17 != 12316)
      {
        break;
      }

      v14 = v15++ >= v13;
      --v16;
    }

    while (v16);
    if (!v14)
    {
      v21 = 1;
      if (!v6)
      {
        return v21;
      }

      goto LABEL_32;
    }
  }

  v21 = 0;
  if (v6)
  {
LABEL_32:
    v24 = v6;
    operator delete(v6);
  }

  return v21;
}

void sub_2993009B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993009D0(uint64_t *a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v52 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1460ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460ED0))
  {
    sub_299255778(0);
    qword_2A1460EC8 = &qword_2A1461DC0;
    __cxa_guard_release(&qword_2A1460ED0);
  }

  v44 = *(a2 + 8);
  *v45 = 0u;
  *v46 = 0u;
  v47 = 0u;
  *v48 = 0u;
  *theDict = 0u;
  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  if (v8 != v9)
  {
    do
    {
      v10 = *v8;
      if (v8[1] != *v8)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          sub_2992738F8(&v44, (v8[9] + 2 * *(v8[12] + v11 + 4)), *(v10 + v11 + 4), *(v10 + v11), (v8[6] + 2 * *(v8[12] + v11 + 2)), *(v10 + v11 + 2), *(v10 + v11 + 6), *(v10 + v11 + 8));
          ++v12;
          v10 = *v8;
          v11 += 10;
        }

        while (v12 < 0xCCCCCCCCCCCCCCCDLL * ((v8[1] - *v8) >> 1));
      }

      v8 += 23;
    }

    while (v8 != v9);
    v8 = *(a3 + 24);
    v9 = *(a3 + 32);
  }

  if (v8 == v9)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v13 = *(v9 - 22);
    if (*(v9 - 23) == v13)
    {
      v17 = 0;
    }

    else
    {
      v14 = *(v13 - 4);
      v17 = v14 == 1607 || v14 == 1612 || (v14 - 1609) < 2;
    }

    v18 = 0;
    do
    {
      v18 += *(v8[13] - 10);
      v8 += 23;
    }

    while (v8 != v9);
  }

  v19 = a4[1];
  v20 = sub_2993000F4(a3);
  v21 = v19 > v18;
  v22 = v19 - v18;
  if (v21)
  {
    v23 = *a4;
    v24 = *(*a4 + a4[1] - 1);
    if (v24 != 12289 && v24 != 65292)
    {
      v39 = 0;
      while (word_299414B9C[v39] != v24)
      {
        if (++v39 == 4)
        {
          if ((v24 - 12300) < 2 || (v24 - 65288) < 2)
          {
            break;
          }

          v17 = 0;
          if (v22)
          {
            goto LABEL_31;
          }

          goto LABEL_42;
        }
      }
    }

    --v22;
    v17 = 1;
    if (v22)
    {
LABEL_31:
      v26 = v23 + 2 * v18;
      if (v23)
      {
        v27 = v22;
      }

      else
      {
        v27 = 0;
      }

      v43[0] = v26;
      v43[1] = v27;
      sub_299216DAC(v43, 0, 0, (**a2 >> 30) & 1, __p);
      if ((v51 & 0x80u) == 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = *__p;
      }

      if ((v51 & 0x80u) == 0)
      {
        v29 = v51;
      }

      else
      {
        v29 = *&__p[8];
      }

      sub_2992738F8(&v44, v28, v29, v22, v28, v29, 0, 0);
      if (v51 < 0)
      {
        operator delete(*__p);
      }
    }

LABEL_42:
    if (v17)
    {
      v30 = *(*a4 + a4[1] - 1);
      if ((atomic_load_explicit(&qword_2A1460EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460EF0))
      {
        sub_299255778(0);
        qword_2A1460EE8 = &qword_2A1461DC0;
        __cxa_guard_release(&qword_2A1460EF0);
      }

      if (v30 == 12289 || v30 == 65292)
      {
        v41 = 587;
      }

      else
      {
        v40 = 0;
        v41 = 582;
        while (word_299414B9C[v40] != v30)
        {
          if (++v40 == 4)
          {
            v32 = 0;
            v41 = 585;
            if (v30 > 65287)
            {
              if (v30 == 65288)
              {
                break;
              }

              v42 = 65289;
            }

            else
            {
              if (v30 == 12300)
              {
                break;
              }

              v42 = 12301;
            }

            if (v30 == v42)
            {
              v41 = 584;
              break;
            }

            goto LABEL_51;
          }
        }
      }

      v32 = word_29940982A[v41];
LABEL_51:
      v17 = 1;
      v33 = *a4 + 2 * a4[1] - 2;
      sub_2992738F8(&v44, v33, 1, 1, v33, 1, v32, v32);
    }
  }

  v34 = sub_2993652F8(8u);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    *__p = 136315394;
    *&__p[4] = "createCandidateFromAnalysis";
    *&__p[12] = 1024;
    *&__p[14] = v17;
    _os_log_debug_impl(&dword_29918C000, v34, OS_LOG_TYPE_DEBUG, "[%s] endingWithPunctuation:%d", __p, 0x12u);
  }

  v35 = kMecabraCandidateAttributeIsEndingWithPunctuation[0];
  if (v17)
  {
    v36 = MEMORY[0x29EDB8F00];
  }

  else
  {
    v36 = MEMORY[0x29EDB8EF8];
  }

  v37 = theDict[1];
  if (!theDict[1])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    sub_299274AE8(&theDict[1], Mutable);
    v37 = theDict[1];
  }

  CFDictionarySetValue(v37, v35, *v36);
  *a1 = sub_299273A90(&v44, a4, v20, *(a3 + 52), 0, *(a3 + 64), 0);
  if (theDict[1])
  {
    CFRelease(theDict[1]);
  }

  theDict[1] = 0;
  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  if (v46[1])
  {
    *&v47 = v46[1];
    operator delete(v46[1]);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }
}

void sub_299300EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  __cxa_guard_abort(&qword_2A1460EF0);
  sub_299273B40(&a12);
  _Unwind_Resume(a1);
}

void *sub_299300F70(uint64_t **a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    result[1] = 1;
    (*(*result + 528))(result, 8, "candidate to be added to top", 1);

    return sub_2992ABB04(a1, a2, 0);
  }

  return result;
}

uint64_t sub_299301008(unsigned int **a1, uint64_t a2, uint64_t **a3, uint64_t **a4, uint64_t a5, void *a6)
{
  v113[0] = *MEMORY[0x29EDCA608];
  if (a3[6] == a3[7] || !*(a2 + 8))
  {
    return 0;
  }

  v7 = a3;
  v8 = sub_2993652F8(8u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = CFStringCreateWithCharacters(0, *a2, *(a2 + 8));
    __p = v9;
    v10 = sub_2993652F8(8u);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (!v9)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    *buf = 136315394;
    *&buf[4] = "stabilizeCandidates";
    v107 = 2112;
    *v108 = v9;
    _os_log_debug_impl(&dword_29918C000, v10, OS_LOG_TYPE_DEBUG, "[%s] raw analysis string: %@", buf, 0x16u);
    if (v9)
    {
LABEL_6:
      CFRelease(v9);
    }
  }

LABEL_7:
  if (*a4 == a4[1])
  {
    v11 = 0;
  }

  else
  {
    v11 = **a4;
  }

  v12 = *(a2 + 8);
  v92 = v7;
  if (v12 <= 1)
  {
    v13 = sub_2993652F8(8u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "updateBestAnalysis";
      _os_log_debug_impl(&dword_29918C000, v13, OS_LOG_TYPE_DEBUG, "[%s] reset best analysis for short input", buf, 0xCu);
    }

    v14 = a1;
    sub_29930008C(a1 + 2, 0);
    goto LABEL_32;
  }

  v15 = a1[2];
  v94 = v11;
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = *a2;
  v17 = *(v15 + 23);
  if ((v17 & 0x8000000000000000) != 0)
  {
    v17 = *(v15 + 1);
    if (v17)
    {
      v18 = *v15;
      goto LABEL_20;
    }

LABEL_25:
    if (!a6)
    {
      if (v94)
      {
        v24 = (*(*v94 + 56))(v94);
        if (CFStringGetLength(v24) < *(a2 + 8))
        {
          v25 = sub_2993652F8(8u);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v91 = (*(*v94 + 24))(v94);
            *buf = 136315394;
            *&buf[4] = "updateBestAnalysis";
            v107 = 2112;
            *v108 = v91;
            _os_log_debug_impl(&dword_29918C000, v25, OS_LOG_TYPE_DEBUG, "[%s] updating best analysis from history: %@", buf, 0x16u);
          }

          operator new();
        }
      }

      v82 = sub_2993652F8(8u);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "updateBestAnalysis";
        _os_log_debug_impl(&dword_29918C000, v82, OS_LOG_TYPE_DEBUG, "[%s] updating best analysis from converted analysis string", buf, 0xCu);
      }

      v100[0] = 0;
      sub_299216DAC(a2, v100, 0, (**a1 >> 30) & 1, buf);
      operator new();
    }

    goto LABEL_26;
  }

  if (!*(v15 + 23))
  {
    goto LABEL_25;
  }

  v18 = a1[2];
LABEL_20:
  v19 = 0;
  v21 = *(v15 + 3);
  v20 = *(v15 + 4);
  v22 = v21;
  while (v17 > v12 || memcmp(v18, v16, 2 * v17))
  {
    if (0xD37A6F4DE9BD37A7 * ((v20 - v21) >> 3) == v19)
    {
      goto LABEL_25;
    }

    v23 = *(*(v22 + 104) - 10);
    v17 -= v23;
    v18 = (v18 + 2 * v23);
    ++v19;
    v22 += 184;
  }

  if (a6 && v19)
  {
LABEL_26:
    operator new();
  }

  if (v19)
  {
    if (v22 != v20)
    {
      do
      {
        sub_29922323C(v21, v22);
        sub_29922323C(v21 + 24, (v22 + 24));
        sub_29922323C(v21 + 48, (v22 + 48));
        sub_29922323C(v21 + 72, (v22 + 72));
        sub_29922323C(v21 + 96, (v22 + 96));
        v83 = *(v22 + 120);
        *(v21 + 128) = *(v22 + 128);
        *(v21 + 120) = v83;
        sub_29927E3A0(v21 + 136, (v22 + 136));
        v84 = *(v22 + 176);
        *(v21 + 180) = *(v22 + 180);
        *(v21 + 176) = v84;
        v21 += 184;
        v22 += 184;
      }

      while (v22 != v20);
      v20 = *(v15 + 4);
    }

    v7 = v92;
    while (v20 != v21)
    {
      v20 -= 184;
      sub_299305204(v20);
    }

    *(v15 + 4) = v21;
    v15 = a1[2];
    v16 = *a2;
    v12 = *(a2 + 8);
  }

  else
  {
    v7 = v92;
  }

  sub_29930003C(v15, v16, v12);
  v87 = sub_2993652F8(8u);
  v14 = a1;
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "updateBestAnalysis";
    v107 = 2048;
    *v108 = v19;
    _os_log_debug_impl(&dword_29918C000, v87, OS_LOG_TYPE_DEBUG, "[%s] updating best analysis from previous best analysis (segment gap: %zu)", buf, 0x16u);
  }

LABEL_32:
  v26 = *(a2 + 8);
  if ((**v14 & 0x20) == 0)
  {
    if (!v26)
    {
      goto LABEL_44;
    }

    v27 = 0;
    v28 = 1;
    v29 = *a2;
    v30 = *(a2 + 8);
    do
    {
      v31 = *v29++;
      v32 = (v31 + 191);
      v33 = v31 + 223;
      if (((v31 & 0xFFDF) - 65) >= 0x1Au && v32 >= 0x1A && v33 > 0x19u)
      {
        break;
      }

      v27 = v28++ >= v26;
      --v30;
    }

    while (v30);
    if (v27)
    {
LABEL_44:
      v36 = sub_2993652F8(8u);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "stabilizeCandidates";
        _os_log_debug_impl(&dword_29918C000, v36, OS_LOG_TYPE_DEBUG, "[%s] Temporary Roman mode ", buf, 0xCu);
      }

      return 0;
    }
  }

  v39 = *(*a2 + 2 * v26 - 2);
  if (v39 != 12289 && v39 != 65292)
  {
    v81 = 0;
    while (word_299414B9C[v81] != v39)
    {
      if (++v81 == 4)
      {
        if ((v39 - 12300) < 2 || (v39 - 65288) < 2)
        {
          break;
        }

        goto LABEL_59;
      }
    }
  }

  v41 = a1[2];
  if (!v41 || (sub_2993009D0(buf, a1, v41, a2), (v42 = *buf) == 0))
  {
LABEL_59:
    v102 = 0;
    sub_299216DAC(a2, &v102, 0, (**a1 >> 30) & 1, v100);
    if ((v101 & 0x80u) == 0)
    {
      v46 = v101;
    }

    else
    {
      v46 = v100[1];
    }

    if ((v101 & 0x80u) == 0)
    {
      v47 = v100;
    }

    else
    {
      v47 = v100[0];
    }

    if (a6 && ((*(*a6 + 544))(a6), (v49 = v48) != 0))
    {
      (*(*a6 + 552))(a6);
      v93 = 0;
      if (!v46)
      {
        goto LABEL_100;
      }

      v51 = v50;
      if (v46 <= v50)
      {
        goto LABEL_100;
      }

      v52 = v92[6];
      v53 = v92[7];
      if (v52 != v53)
      {
        while (1)
        {
          if (((*(**v52 + 88))() & 1) == 0 && (*(**v52 + 408))(*v52) != 1)
          {
            v93 = *v52;
            v54 = (*(**v52 + 544))();
            v56 = v55;
            v57 = (*(*a6 + 544))(a6);
            if (v56 >= v58)
            {
              v59 = v54 || v58 == 0;
              if (v59 && !memcmp(v54, v57, 2 * v58))
              {
                v60 = *((*(*v93 + 544))(v93) + 2 * v49);
                v61 = (v60 - 12353) < 0x56 || v60 == 12540;
                if (!v61 && v60 != 12316)
                {
                  break;
                }

                v63 = *(v47 + v51);
                if ((v63 - 12353) >= 0x56 && v63 != 12540 && v63 != 12316)
                {
                  break;
                }

                if (v60 == v63)
                {
                  break;
                }
              }
            }
          }

          if (++v52 == v53)
          {
            goto LABEL_99;
          }
        }

LABEL_100:
        if (v102 < 1)
        {
          goto LABEL_110;
        }

        v67 = a1[2];
        if (!v67)
        {
          goto LABEL_110;
        }

        if (!a6 && v93)
        {
          v68 = sub_2993000F4(a1[2]);
          if ((v68 - (*(*v93 + 112))(v93)) > 4999)
          {
            goto LABEL_110;
          }

          v67 = a1[2];
        }

        sub_2993009D0(&__p, a1, v67, a2);
        v69 = __p;
        if (__p)
        {
          v70 = sub_2993652F8(8u);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
          {
            v88 = sub_2993000F4(a1[2]);
            v89 = v93;
            if (v93)
            {
              v89 = (*(*v93 + 112))(v93);
            }

            v90 = "enabled";
            *buf = 136315906;
            *&buf[4] = "stabilizeCandidates";
            v107 = 1024;
            *v108 = v88;
            if (!a6)
            {
              v90 = "disabled";
            }

            *&v108[4] = 1024;
            *&v108[6] = v89;
            *v109 = 2080;
            *&v109[2] = v90;
            _os_log_debug_impl(&dword_29918C000, v70, OS_LOG_TYPE_DEBUG, "[%s] there is incomplete romaji and best analysis(weight:%d) can be trusted over top candidate(weight:%d) when truncated input is %s", buf, 0x22u);
          }

          v99 = v69;
          sub_299300F70(v92, &v99);
          v71 = v99;
          v99 = 0;
          if (v71)
          {
            (*(*v71 + 16))(v71);
          }

          v37 = 1;
LABEL_157:
          if (v101 < 0)
          {
            operator delete(v100[0]);
          }

          return v37;
        }

LABEL_110:
        v72 = sub_2993652F8(8u);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG) && *(a5 + 56) != *(a5 + 48))
        {
          v73 = 0;
          v74 = *MEMORY[0x29EDC9528];
          v75 = *(MEMORY[0x29EDC9528] + 64);
          v76 = *(MEMORY[0x29EDC9528] + 72);
          do
          {
            sub_2991D7954(buf);
            v77 = sub_2991C0E9C(&v108[2], "Last-bunsetsu candidate #", 25);
            v78 = v73 + 1;
            MEMORY[0x29C29BD60](v77, v73 + 1);
            v79 = *(*(a5 + 48) + 8 * v73);
            sub_29927989C(buf, &__p);
            if (v105 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            (*(*v79 + 528))(v79, 8, p_p, 1);
            if (v105 < 0)
            {
              operator delete(__p);
            }

            *buf = v74;
            *&buf[*(v74 - 24)] = v75;
            *&v108[2] = v76;
            *v109 = MEMORY[0x29EDC9570] + 16;
            if (v111 < 0)
            {
              operator delete(v110);
            }

            *v109 = MEMORY[0x29EDC9568] + 16;
            std::locale::~locale(&v109[8]);
            std::iostream::~basic_iostream();
            MEMORY[0x29C29BF00](&v112);
            v73 = v78;
          }

          while (v78 < (*(a5 + 56) - *(a5 + 48)) >> 3);
        }

        if (v93)
        {
          (*(*v93 + 528))(v93, 8, "top candidate", 1);
          operator new();
        }

        v37 = 0;
        goto LABEL_157;
      }
    }

    else
    {
      v64 = sub_2992AB584(v7);
      if (v64 != -1)
      {
        v65 = v7[6][v64];
        if (v65)
        {
          if ((*(*v65 + 88))(v65))
          {
            v66 = 0;
          }

          else
          {
            v66 = v65;
          }

          v93 = v66;
          goto LABEL_100;
        }
      }
    }

LABEL_99:
    v93 = 0;
    goto LABEL_100;
  }

  v43 = sub_29927363C(v7 + 1, buf);
  if (!v43 || (v44 = v43[3], v44 == -1) || (v45 = v7[6][v44], (*(*v45 + 408))(v45)))
  {
    (*(*v42 + 16))(v42);
    goto LABEL_59;
  }

  v85 = sub_2993652F8(8u);
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "stabilizeCandidates";
    _os_log_debug_impl(&dword_29918C000, v85, OS_LOG_TYPE_DEBUG, "[%s] candidate has a punctuation, using best analysis", buf, 0xCu);
  }

  v103 = v42;
  sub_299300F70(v7, &v103);
  v86 = v103;
  v103 = 0;
  if (v86)
  {
    (*(*v86 + 16))(v86);
  }

  return 1;
}

void sub_299304A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  __cxa_guard_abort(&qword_2A1460EE0);
  sub_299219AB4((v56 - 144), 0);
  if (a56 < 0)
  {
    operator delete(__p);
  }

  a34 = &a37;
  sub_29927255C(&a34);
  sub_29930008C(&a40, 0);
  sub_29930008C(&a41, 0);
  if (a48 < 0)
  {
    operator delete(a43);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_299304F6C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_299304FE8(result, a4);
  }

  return result;
}

void sub_299304FCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_299304FE8(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x199999999999999ALL)
  {
    sub_299305034(a2);
  }

  sub_299212A8C();
}

void sub_299305034(unint64_t a1)
{
  if (a1 < 0x199999999999999ALL)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t *sub_299305088(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_299305154(result, a4);
  }

  return result;
}

void sub_299305154(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    sub_2993051A8(a2);
  }

  sub_299212A8C();
}

void sub_2993051A8(unint64_t a1)
{
  if (a1 < 0x1642C8590B21643)
  {
    operator new();
  }

  sub_29919600C();
}

void sub_299305204(uint64_t a1)
{
  sub_29921ED28(a1 + 136);
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;

    operator delete(v6);
  }
}

void sub_299305294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = 0;
    do
    {
      v6 = a3 + v5;
      v7 = a1 + v5;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = *(a1 + v5);
      *(v6 + 16) = *(a1 + v5 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 24) = *(a1 + v5 + 24);
      *(v6 + 40) = *(a1 + v5 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 48) = *(a1 + v5 + 48);
      *(v6 + 64) = *(a1 + v5 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 72) = *(a1 + v5 + 72);
      *(v6 + 88) = *(a1 + v5 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(v6 + 96) = *(a1 + v5 + 96);
      *(v6 + 112) = *(a1 + v5 + 112);
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      v8 = *(a1 + v5 + 120);
      *(v6 + 128) = *(a1 + v5 + 128);
      *(v6 + 120) = v8;
      v9 = *(a1 + v5 + 136);
      *(v7 + 136) = 0;
      *(v6 + 136) = v9;
      v10 = *(a1 + v5 + 152);
      *(v6 + 144) = *(a1 + v5 + 144);
      *(a1 + v5 + 144) = 0;
      *(a3 + v5 + 152) = v10;
      v11 = *(a1 + v5 + 160);
      *(v6 + 160) = v11;
      *(v6 + 168) = *(a1 + v5 + 168);
      if (v11)
      {
        v12 = *(v10 + 8);
        v13 = *(v6 + 144);
        if ((v13 & (v13 - 1)) != 0)
        {
          if (v12 >= v13)
          {
            v12 %= v13;
          }
        }

        else
        {
          v12 &= v13 - 1;
        }

        *(v9 + 8 * v12) = a3 + v5 + 152;
        *(a1 + v5 + 152) = 0;
        *(a1 + v5 + 160) = 0;
      }

      v14 = *(v7 + 176);
      *(v6 + 180) = *(v7 + 180);
      *(v6 + 176) = v14;
      v5 += 184;
    }

    while (a1 + v5 != a2);
    do
    {
      sub_299305204(v4);
      v4 += 184;
    }

    while (v4 != a2);
  }
}

uint64_t sub_299305424(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 184;
    sub_299305204(i - 184);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_299305474(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_299304F6C(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 1));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_299215EC0(a1 + 3, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 1);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_299215EC0(a1 + 6, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 1);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_299215EC0(a1 + 9, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 1);
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  sub_299304F6C(a1 + 12, *(a2 + 96), *(a2 + 104), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 104) - *(a2 + 96)) >> 1));
  v4 = *(a2 + 120);
  v5 = *(a2 + 128);
  *(a1 + 17) = 0u;
  *(a1 + 64) = v5;
  a1[15] = v4;
  *(a1 + 19) = 0u;
  *(a1 + 42) = *(a2 + 168);
  sub_2992157F8((a1 + 17), *(a2 + 144));
  for (i = *(a2 + 152); i; i = *i)
  {
    v7 = i[2];
    v8 = a1[18];
    if (!*&v8)
    {
      goto LABEL_18;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = i[2];
      if (*&v8 <= v7)
      {
        v10 = v7 % *&v8;
      }
    }

    else
    {
      v10 = (*&v8 - 1) & v7;
    }

    v11 = *(a1[17] + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        break;
      }

      if (v9.u32[0] > 1uLL)
      {
        if (v13 >= *&v8)
        {
          v13 %= *&v8;
        }
      }

      else
      {
        v13 &= *&v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    if (v12[2] != v7)
    {
      goto LABEL_17;
    }
  }

  v14 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 44) = v14;
  return a1;
}

void sub_2993057B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11, void **a12)
{
  sub_29921ED28(v13);
  v15 = *a9;
  if (*a9)
  {
    *(v12 + 104) = v15;
    operator delete(v15);
  }

  v16 = *a10;
  if (*a10)
  {
    *(v12 + 80) = v16;
    operator delete(v16);
  }

  v17 = *a11;
  if (*a11)
  {
    *(v12 + 56) = v17;
    operator delete(v17);
  }

  v18 = *a12;
  if (*a12)
  {
    *(v12 + 32) = v18;
    operator delete(v18);
  }

  v19 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_2993058D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29927255C(&a9);
  _Unwind_Resume(a1);
}

void *sub_2993058F4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      sub_299305474(a3, v5);
      v5 += 184;
      a3 += 23;
      v6 -= 184;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_299305954(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 184;
    do
    {
      sub_299305204(v4);
      v4 -= 184;
      v2 += 184;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_299305A18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299305A34(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v5 = a1;
  v6 = 0;
  v7 = 0x7FFFFFFF;
  do
  {
    if ((*(**v5 + 408))(*v5) != 1)
    {
      v8 = (*(**v5 + 544))(*v5);
      v10 = v9;
      v11 = *(a3 + 72);
      v12 = v11 ? *(*(a3 + 104) - 6) : 0;
      if (v7 > (*(**v5 + 112))() && v10 >= v12)
      {
        if (v8)
        {
          v14 = 1;
        }

        else
        {
          v14 = v12 == 0;
        }

        if (v14 && !memcmp(v8, v11, 2 * v12))
        {
          v7 = (*(**v5 + 112))();
          v6 = *v5;
        }
      }
    }

    ++v5;
  }

  while (v5 != a2);
  return v6;
}

uint64_t sub_299305BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 88);
  *(a1 + 8) = a3;
  *(a1 + 16) = v5;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 136) = a4;
  *a1 = &unk_2A1F6F838;
  *(a1 + 144) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  sub_2992D6CE0((a1 + 200), a2);
  sub_29920D17C((a1 + 168), 0xAuLL);
  return a1;
}

void sub_299305C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992D6CA8((v3 + 208), 0);
  v5 = *(v3 + 168);
  if (v5)
  {
    *(v3 + 176) = v5;
    operator delete(v5);
  }

  sub_2992B6C08(va);
  sub_2992B51FC(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_299305C90(uint64_t a1)
{
  sub_29921FB44((a1 + 144));
  *(a1 + 192) = 0;

  return sub_29921FA70(a1);
}

void sub_299305CD0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (a1 + 48);
  if (*(a1 + 48) != *(a1 + 56))
  {
    if (*(a2 + 64) == 1 || (v7 = *(a1 + 88), v7 != *(a1 + 80)) && *(v7 - 4) == 2)
    {
      sub_2993080E4((a1 + 144));
      *(a1 + 144) = *(a1 + 48);
      *(a1 + 160) = *(a1 + 64);
      v6[1] = 0;
      v6[2] = 0;
      *v6 = 0;
      *(a1 + 192) = 0;
      sub_29921FA70(a1);
    }
  }

  v8 = *(a1 + 32);
  if ((v8 - *(a1 + 24)) >= 5)
  {
    v9 = *(a1 + 80);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 88) - v9) >> 3) >= 2)
    {
      v10 = *(a1 + 192);
      if (v10)
      {
        if ((*(v9 + 8 * ((*(a1 + 88) - v9) >> 3) - 8) & 1) == 0)
        {
          *(v8 - 4) = v10;
        }
      }
    }
  }

  sub_29921FDC8(a1, a2, a3);
}

uint64_t sub_299305DC8(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v2 = v1;
  v413 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1460EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460EF8))
  {
    sub_2991C6CA8(__p, "gh");
    v14 = 1;
    sub_2991C6CA8(v15, "gy");
    v16 = 2;
    sub_2991C6CA8(v17, "gt");
    v18 = 3;
    sub_2991C6CA8(v19, "fg");
    v20 = 4;
    sub_2991C6CA8(v21, "ft");
    v22 = 5;
    sub_2991C6CA8(v23, "fr");
    v24 = 6;
    sub_2991C6CA8(v25, "dr");
    v26 = 7;
    sub_2991C6CA8(v27, "de");
    v28 = 8;
    sub_2991C6CA8(v29, "se");
    v30 = 9;
    sub_2991C6CA8(v31, "sw");
    v32 = 10;
    sub_2991C6CA8(v33, "aw");
    v34 = 11;
    sub_2991C6CA8(v35, "aq");
    v36 = 12;
    sub_2991C6CA8(v37, "ws");
    v38 = 13;
    sub_2991C6CA8(v39, "ed");
    v40 = 14;
    sub_2991C6CA8(v41, "rd");
    v42 = 15;
    sub_2991C6CA8(v43, "rf");
    v44 = 16;
    sub_2991C6CA8(v45, "tf");
    v46 = 17;
    sub_2991C6CA8(v47, "tg");
    v48 = 18;
    sub_2991C6CA8(v49, "yg");
    v50 = 19;
    sub_2991C6CA8(v51, "yh");
    v52 = 20;
    sub_2991C6CA8(v53, "yu");
    v54 = 21;
    sub_2991C6CA8(v55, "uh");
    v56 = 22;
    sub_2991C6CA8(v57, "uj");
    v58 = 23;
    sub_2991C6CA8(v59, "iu");
    v60 = 24;
    sub_2991C6CA8(v61, "ij");
    v62 = 25;
    sub_2991C6CA8(v63, "io");
    v64 = 26;
    sub_2991C6CA8(v65, "oi");
    v66 = 27;
    sub_2991C6CA8(v67, "ik");
    v68 = 28;
    sub_2991C6CA8(v69, "ju");
    v70 = 29;
    sub_2991C6CA8(v71, "hu");
    v72 = 30;
    sub_2991C6CA8(v73, "hy");
    v74 = 31;
    sub_2991C6CA8(v75, "gf");
    v76 = 32;
    sub_2991C6CA8(v77, "fd");
    v78 = 33;
    sub_2991C6CA8(v79, "df");
    v80 = 34;
    sub_2991C6CA8(v81, "ds");
    v82 = 35;
    sub_2991C6CA8(v83, "er");
    v84 = 36;
    sub_2991C6CA8(v85, "xc");
    v86 = 37;
    sub_2991C6CA8(v87, "ty");
    v88 = 38;
    sub_2991C6CA8(v89, "yt");
    v90 = 39;
    sub_2991C6CA8(v91, "uy");
    v92 = 40;
    sub_2991C6CA8(v93, "ui");
    v94 = 41;
    sub_2991C6CA8(v95, "tr");
    v96 = 42;
    sub_2991C6CA8(v97, "rt");
    v98 = 43;
    sub_2991C6CA8(v99, "re");
    v100 = 44;
    sub_2991C6CA8(v101, "ew");
    v102 = 45;
    sub_2991C6CA8(v103, "es");
    v104 = 46;
    sub_2991C6CA8(v105, "sd");
    v106 = 47;
    sub_2991C6CA8(v107, "xd");
    v108 = 48;
    sub_2991C6CA8(v109, "xz");
    v110 = 49;
    sub_2991C6CA8(v111, "cx");
    v112 = 50;
    sub_2991C6CA8(v113, "cf");
    v114 = 51;
    sub_2991C6CA8(v115, "fc");
    v116 = 52;
    sub_2991C6CA8(v117, "gv");
    v118 = 53;
    sub_2991C6CA8(v119, "hg");
    v120 = 54;
    sub_2991C6CA8(v121, "hj");
    v122 = 55;
    sub_2991C6CA8(v123, "jh");
    v124 = 56;
    sub_2991C6CA8(v125, "hb");
    v126 = 57;
    sub_2991C6CA8(v127, "bn");
    v128 = 58;
    sub_2991C6CA8(v129, "nb");
    v130 = 59;
    sub_2991C6CA8(v131, "bh");
    v132 = 60;
    sub_2991C6CA8(v133, "sa");
    v134 = 61;
    sub_2991C6CA8(v135, "as");
    v136 = 62;
    sub_2991C6CA8(v137, "vg");
    v138 = 63;
    sub_2991C6CA8(v139, "vb");
    v140 = 64;
    sub_2991C6CA8(v141, "we");
    v142 = 65;
    sub_2991C6CA8(v143, "sz");
    v144 = 66;
    sub_2991C6CA8(v145, "zs");
    v146 = 67;
    sub_2991C6CA8(v147, "cv");
    v148 = 68;
    sub_2991C6CA8(v149, "vc");
    v150 = 69;
    sub_2991C6CA8(v151, "bv");
    v152 = 70;
    sub_2991C6CA8(v153, "dx");
    v154 = 71;
    sub_2991C6CA8(v155, "op");
    v156 = 72;
    sub_2991C6CA8(v157, "lo");
    v158 = 73;
    sub_2991C6CA8(v159, "lk");
    v160 = 74;
    sub_2991C6CA8(v161, "kl");
    v162 = 75;
    sub_2991C6CA8(v163, "km");
    v164 = 76;
    sub_2991C6CA8(v165, "mn");
    v166 = 77;
    sub_2991C6CA8(v167, "nm");
    v168 = 78;
    sub_2991C6CA8(v169, "zx");
    v170 = 79;
    sub_2991C6CA8(v171, "ok");
    v172 = 80;
    sub_2991C6CA8(v173, "ko");
    v174 = 81;
    sub_2991C6CA8(v175, "kj");
    v176 = 82;
    sub_2991C6CA8(v177, "jk");
    v178 = 83;
    sub_2991C6CA8(v179, "jn");
    v180 = 84;
    sub_2991C6CA8(v181, "nj");
    v182 = 85;
    sub_2991C6CA8(v183, "az");
    v184 = 86;
    sub_2991C6CA8(v185, "ji");
    v186 = 87;
    sub_2991C6CA8(v187, "po");
    v188 = 88;
    sub_2991C6CA8(v189, "mk");
    v190 = 89;
    sub_2991C6CA8(v191, "wq");
    v192 = 90;
    sub_2991C6CA8(v193, "qw");
    v194 = 91;
    sub_2991C6CA8(v195, "ol");
    v196 = 92;
    sub_2991C6CA8(v197, "qa");
    v198 = 93;
    sub_2991C6CA8(v199, "ki");
    v200 = 94;
    sub_2991C6CA8(v201, "wa");
    v202 = 95;
    sub_2991C6CA8(v203, "za");
    v204 = 96;
    sub_2991C6CA8(v205, "lp");
    v206 = 97;
    sub_2991C6CA8(v207, "ml");
    v208 = 98;
    sub_2991C6CA8(v209, "lm");
    v210 = 99;
    sub_2991C6CA8(v211, "pl");
    v212 = 100;
    sub_2991C6CA8(v213, "GH");
    v214 = 101;
    sub_2991C6CA8(v215, "GY");
    v216 = 102;
    sub_2991C6CA8(v217, "GT");
    v218 = 103;
    sub_2991C6CA8(v219, "FG");
    v220 = 104;
    sub_2991C6CA8(v221, "FT");
    v222 = 105;
    sub_2991C6CA8(v223, "FR");
    v224 = 106;
    sub_2991C6CA8(v225, "DR");
    v226 = 107;
    sub_2991C6CA8(v227, "DE");
    v228 = 108;
    sub_2991C6CA8(v229, "SE");
    v230 = 109;
    sub_2991C6CA8(v231, "SW");
    v232 = 110;
    sub_2991C6CA8(v233, "AW");
    v234 = 111;
    sub_2991C6CA8(v235, "AQ");
    v236 = 112;
    sub_2991C6CA8(v237, "WS");
    v238 = 113;
    sub_2991C6CA8(v239, "ED");
    v240 = 114;
    sub_2991C6CA8(v241, "RD");
    v242 = 115;
    sub_2991C6CA8(v243, "RF");
    v244 = 116;
    sub_2991C6CA8(v245, "TF");
    v246 = 117;
    sub_2991C6CA8(v247, "TG");
    v248 = 118;
    sub_2991C6CA8(v249, "YG");
    v250 = 119;
    sub_2991C6CA8(v251, "YH");
    v252 = 120;
    sub_2991C6CA8(v253, "YU");
    v254 = 121;
    sub_2991C6CA8(v255, "UH");
    v256 = 122;
    sub_2991C6CA8(v257, "UJ");
    v258 = 123;
    sub_2991C6CA8(v259, "IU");
    v260 = 124;
    sub_2991C6CA8(v261, "IJ");
    v262 = 125;
    sub_2991C6CA8(v263, "IO");
    v264 = 126;
    sub_2991C6CA8(v265, "OI");
    v266 = 127;
    sub_2991C6CA8(v267, "IK");
    v268 = 128;
    sub_2991C6CA8(v269, "JU");
    v270 = 129;
    sub_2991C6CA8(v271, "HU");
    v272 = 130;
    sub_2991C6CA8(v273, "HY");
    v274 = 131;
    sub_2991C6CA8(v275, "GF");
    v276 = 132;
    sub_2991C6CA8(v277, "FD");
    v278 = 133;
    sub_2991C6CA8(v279, "DF");
    v280 = 134;
    sub_2991C6CA8(v281, "DS");
    v282 = 135;
    sub_2991C6CA8(v283, "ER");
    v284 = 136;
    sub_2991C6CA8(v285, "XC");
    v286 = 137;
    sub_2991C6CA8(v287, "TY");
    v288 = 138;
    sub_2991C6CA8(v289, "YT");
    v290 = 139;
    sub_2991C6CA8(v291, "UY");
    v292 = 140;
    sub_2991C6CA8(v293, "UI");
    v294 = 141;
    sub_2991C6CA8(v295, "TR");
    v296 = 142;
    sub_2991C6CA8(v297, "RT");
    v298 = 143;
    sub_2991C6CA8(v299, "RE");
    v300 = 144;
    sub_2991C6CA8(v301, "EW");
    v302 = 145;
    sub_2991C6CA8(v303, "ES");
    v304 = 146;
    sub_2991C6CA8(v305, "SD");
    v306 = 147;
    sub_2991C6CA8(v307, "XD");
    v308 = 148;
    sub_2991C6CA8(v309, "XZ");
    v310 = 149;
    sub_2991C6CA8(v311, "CX");
    v312 = 150;
    sub_2991C6CA8(v313, "CF");
    v314 = 151;
    sub_2991C6CA8(v315, "FC");
    v316 = 152;
    sub_2991C6CA8(v317, "GV");
    v318 = 153;
    sub_2991C6CA8(v319, "HG");
    v320 = 154;
    sub_2991C6CA8(v321, "HJ");
    v322 = 155;
    sub_2991C6CA8(v323, "JH");
    v324 = 156;
    sub_2991C6CA8(v325, "HB");
    v326 = 157;
    sub_2991C6CA8(v327, "BN");
    v328 = 158;
    sub_2991C6CA8(v329, "NB");
    v330 = 159;
    sub_2991C6CA8(v331, "BH");
    v332 = 160;
    sub_2991C6CA8(v333, "SA");
    v334 = 161;
    sub_2991C6CA8(v335, "AS");
    v336 = 162;
    sub_2991C6CA8(v337, "VG");
    v338 = 163;
    sub_2991C6CA8(v339, "VB");
    v340 = 164;
    sub_2991C6CA8(v341, "WE");
    v342 = 165;
    sub_2991C6CA8(v343, "SZ");
    v344 = 166;
    sub_2991C6CA8(v345, "ZS");
    v346 = 167;
    sub_2991C6CA8(v347, "CV");
    v348 = 168;
    sub_2991C6CA8(v349, "VC");
    v350 = 169;
    sub_2991C6CA8(v351, "BV");
    v352 = 170;
    sub_2991C6CA8(v353, "DX");
    v354 = 171;
    sub_2991C6CA8(v355, "OP");
    v356 = 172;
    sub_2991C6CA8(v357, "LO");
    v358 = 173;
    sub_2991C6CA8(v359, "LK");
    v360 = 174;
    sub_2991C6CA8(v361, "KL");
    v362 = 175;
    sub_2991C6CA8(v363, "KM");
    v364 = 176;
    sub_2991C6CA8(v365, "MN");
    v366 = 177;
    sub_2991C6CA8(v367, "NM");
    v368 = 178;
    sub_2991C6CA8(v369, "ZX");
    v370 = 179;
    sub_2991C6CA8(v371, "OK");
    v372 = 180;
    sub_2991C6CA8(v373, "KO");
    v374 = 181;
    sub_2991C6CA8(v375, "KJ");
    v376 = 182;
    sub_2991C6CA8(v377, "JK");
    v378 = 183;
    sub_2991C6CA8(v379, "JN");
    v380 = 184;
    sub_2991C6CA8(v381, "NJ");
    v382 = 185;
    sub_2991C6CA8(v383, "AZ");
    v384 = 186;
    sub_2991C6CA8(v385, "JI");
    v386 = 187;
    sub_2991C6CA8(v387, "PO");
    v388 = 188;
    sub_2991C6CA8(v389, "MK");
    v390 = 189;
    sub_2991C6CA8(v391, "WQ");
    v392 = 190;
    sub_2991C6CA8(v393, "QW");
    v394 = 191;
    sub_2991C6CA8(v395, "OL");
    v396 = 192;
    sub_2991C6CA8(v397, "QA");
    v398 = 193;
    sub_2991C6CA8(v399, "KI");
    v400 = 194;
    sub_2991C6CA8(v401, "WA");
    v402 = 195;
    sub_2991C6CA8(v403, "ZA");
    v404 = 196;
    sub_2991C6CA8(v405, "LP");
    v406 = 197;
    sub_2991C6CA8(v407, "ML");
    v408 = 198;
    sub_2991C6CA8(v409, "LM");
    v410 = 199;
    sub_2991C6CA8(&v411, "PL");
    *&v412[1] = 200;
    sub_2992B6CC4(qword_2A1460F00, __p, 200);
    v7 = v412;
    v8 = -6400;
    v9 = v412;
    do
    {
      v10 = *v9;
      v9 -= 32;
      if (v10 < 0)
      {
        operator delete(*(v7 - 23));
      }

      v7 = v9;
      v8 += 32;
    }

    while (v8);
    __cxa_atexit(sub_2992B66A4, qword_2A1460F00, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460EF8);
  }

  sub_2991C6CA8(__p, v2);
  v3 = sub_29921517C(qword_2A1460F00, __p);
  v4 = v3;
  if ((v13 & 0x80000000) == 0)
  {
    if (v3)
    {
      goto LABEL_4;
    }

    return -1;
  }

  operator delete(__p[0]);
  if (!v4)
  {
    return -1;
  }

LABEL_4:
  sub_2991C6CA8(__p, v2);
  v11 = __p;
  v5 = *(sub_2992B705C(qword_2A1460F00, __p, &unk_299400092, &v11) + 10);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_2993077F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v19 = (v17 + 6391);
  v20 = -6400;
  v21 = v19;
  while (1)
  {
    v22 = *v21;
    v21 -= 32;
    if (v22 < 0)
    {
      operator delete(*(v19 - 23));
    }

    v19 = v21;
    v20 += 32;
    if (!v20)
    {
      __cxa_guard_abort(&qword_2A1460EF8);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_299307BA4(uint64_t result, char *a2, uint64_t a3, int a4)
{
  *(result + 192) = a4;
  if (a3)
  {
    v4 = a3;
    do
    {
      result = __toupper(*a2);
      *a2++ = result;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_299307BE8(uint64_t a1)
{
  if (*(a1 + 144) != *(a1 + 152))
  {
    v2 = (a1 + 48);
    if (*(a1 + 48) != *(a1 + 56))
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        v4 = *(v3 + 32);
        if ((v4 - 10) >= 0xFFFFFFFFFFFFFFF8)
        {
          v54 = 0uLL;
          v55 = 0;
          sub_2993080E4(&v54);
          v54 = *(a1 + 48);
          v55 = *(a1 + 64);
          *v2 = 0u;
          v2[1] = 0u;
          v5 = *(a1 + 144);
          v43 = *(a1 + 152);
          if (v5 != v43)
          {
            v6 = v4 - 1;
            v42 = 1 - v4;
            do
            {
              v7 = *v5;
              v8 = v5[1];
              v9 = v8 - *v5;
              if (v9 >= v6)
              {
                if (v9 - v6 >= v9)
                {
                  v13 = 0;
                }

                else
                {
                  v14 = *(a1 + 168);
                  v15 = &v7[v9];
                  v16 = v42;
                  do
                  {
                    *v14++ = v15[v16] + 1000;
                    v17 = __CFADD__(v16++, 1);
                  }

                  while (!v17);
                  v13 = v6;
                }
              }

              else
              {
                v10 = *(a1 + 168);
                *v10 = 1;
                if (v7 == v8)
                {
                  v13 = 1;
                }

                else
                {
                  v11 = 1;
                  do
                  {
                    v12 = *v7++;
                    v13 = v11 + 1;
                    v10[v11++] = v12 + 1000;
                  }

                  while (v7 != v8);
                }
              }

              v45 = *(&v54 + 1);
              v18 = v54;
              if (v54 != *(&v54 + 1))
              {
                v44 = v5;
                do
                {
                  v19 = *(v5 + 3) + *(v18 + 24);
                  v20 = *(a1 + 56);
                  if ((v20 - *(a1 + 48)) < 0x140 || v19 > *(v20 - 8))
                  {
                    __dst[0] = 0;
                    __dst[1] = 0;
                    v53 = 0;
                    sub_299215EC0(__dst, *v5, v5[1], v5[1] - *v5);
                    sub_2992F87C8(__dst, __dst[1], *v18, *(v18 + 8), (*(v18 + 8) - *v18) >> 1);
                    sub_299250EF0(&__src, 1uLL);
                    v21 = 0;
                    do
                    {
                      if (v21 >= (*(v18 + 8) - *v18) >> 1)
                      {
                        break;
                      }

                      v22 = *(*v18 + 2 * v21) + 1000;
                      v23 = (*(**(a1 + 8) + 40))(*(a1 + 8), v22, *(a1 + 168), v13 + v21);
                      v24 = *(sub_299235724(1) + 8);
                      *(*(a1 + 168) + 4 * v13 + 4 * v21) = v22;
                      v25 = (*(**(a1 + 8) + 40))(*(a1 + 8), v22);
                      v26 = *(sub_299235724(1) + 8);
                      v27 = v50;
                      if (v50 >= v51)
                      {
                        v29 = __src;
                        v30 = v50 - __src;
                        v31 = (v50 - __src) >> 2;
                        v32 = v31 + 1;
                        if ((v31 + 1) >> 62)
                        {
                          sub_299212A8C();
                        }

                        v33 = v51 - __src;
                        if ((v51 - __src) >> 1 > v32)
                        {
                          v32 = v33 >> 1;
                        }

                        v17 = v33 >= 0x7FFFFFFFFFFFFFFCLL;
                        v34 = 0x3FFFFFFFFFFFFFFFLL;
                        if (!v17)
                        {
                          v34 = v32;
                        }

                        if (v34)
                        {
                          sub_2992F86B0(&__src, v34);
                        }

                        *(4 * v31) = v22;
                        v28 = 4 * v31 + 4;
                        memcpy(0, v29, v30);
                        v35 = __src;
                        __src = 0;
                        v50 = v28;
                        v51 = 0;
                        if (v35)
                        {
                          operator delete(v35);
                        }
                      }

                      else
                      {
                        *v50 = v22;
                        v28 = (v27 + 4);
                      }

                      v50 = v28;
                      v19 = v19 + v23 * v24 - v25 * v26;
                      ++v21;
                    }

                    while (v6 != v21);
                    *__p = *__dst;
                    v47 = v53;
                    __dst[0] = 0;
                    __dst[1] = 0;
                    v53 = 0;
                    v48 = v19;
                    sub_299221AB0(a1, __p, 0xAuLL);
                    v5 = v44;
                    if (__p[0])
                    {
                      __p[1] = __p[0];
                      operator delete(__p[0]);
                    }

                    if (__src)
                    {
                      v50 = __src;
                      operator delete(__src);
                    }

                    if (__dst[0])
                    {
                      __dst[1] = __dst[0];
                      operator delete(__dst[0]);
                    }
                  }

                  v18 += 32;
                }

                while (v18 != v45);
              }

              v5 += 4;
            }

            while (v5 != v43);
            v36 = *(a1 + 48);
            v37 = *(a1 + 56);
            if (v36 != v37)
            {
              v38 = *(a1 + 72);
              do
              {
                v40 = *v36;
                v39 = v36[1];
                v36 += 4;
                v41 = (v39 - v40) >> 1;
                if (v38 <= v41)
                {
                  v38 = v41;
                }
              }

              while (v36 != v37);
              *(a1 + 72) = v38;
            }
          }

          __p[0] = &v54;
          sub_2992B6C08(__p);
        }
      }
    }
  }
}

void sub_299308010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  __p = &a25;
  sub_2992B6C08(&__p);
  _Unwind_Resume(a1);
}

void sub_299308080(uint64_t a1)
{
  sub_299308124(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993080E4(uint64_t *a1)
{
  if (*a1)
  {
    sub_29921FB44(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_299308124(uint64_t a1)
{
  sub_2992D6CA8((a1 + 208), 0);
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 144);
  sub_2992B6C08(&v4);
  return sub_2992B51FC(a1);
}

uint64_t sub_299308180(uint64_t a1, const void *a2, CFTypeRef cf)
{
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *a1 = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    sub_299240D80(a1, a2);
  }

  if (cf)
  {
    sub_299229BC0(v5, cf);
  }

  sub_299308214(a1);
  return a1;
}

void sub_2993081E4(_Unwind_Exception *a1)
{
  sub_299274AE8(v1 + 2, 0);
  sub_299219AB4(v2, 0);
  sub_299229F00(v1, 0);
  _Unwind_Resume(a1);
}

void sub_299308214(const void **a1)
{
  v2 = sub_29930AF10();
  if (*v2 == 1 && (v2[9] & 4) != 0 && *a1)
  {
    v3 = *MEMORY[0x29EDB8ED8];
    v4 = MEMORY[0x29EDB9010];
    v5 = MEMORY[0x29EDB9020];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    sub_299274AE8(a1 + 2, Mutable);
    CFDictionarySetValue(a1[2], @"keys", *a1);
    v7 = CFDictionaryCreateMutable(v3, 0, v4, v5);
    CFDictionarySetValue(a1[2], @"log likelihoods", v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void sub_2993082F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299215B18(va, 0);
  _Unwind_Resume(a1);
}

const void **sub_29930830C(const void **a1)
{
  sub_29930835C(a1);
  sub_299274AE8(a1 + 2, 0);
  sub_299219AB4(a1 + 1, 0);
  sub_299229F00(a1, 0);
  return a1;
}

void sub_29930835C(const void **a1)
{
  v2 = a1 + 2;
  if (a1[2])
  {
    sub_2993083C0(a1);
  }

  sub_299274AE8(v2, 0);
  sub_299229F00(a1, 0);

  sub_299219AB4(a1 + 1, 0);
}

void sub_2993083C0(uint64_t a1)
{
  if (atomic_load_explicit(&qword_2A1460F30, memory_order_acquire) != -1)
  {
    error = &v13;
    p_error = &error;
    std::__call_once(&qword_2A1460F30, &p_error, sub_299308914);
  }

  v2 = *MEMORY[0x29EDB8ED8];
  v3 = qword_2A1460F28;
  Current = CFAbsoluteTimeGetCurrent();
  StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v2, v3, Current);
  v6 = CFStringCreateWithFormat(0, 0, @"/tmp/GeometryModel/%@-%@.plist", *(a1 + 8), StringWithAbsoluteTime);
  v7 = CFURLCreateWithFileSystemPath(0, v6, kCFURLPOSIXPathStyle, 0);
  error = 0;
  v8 = CFPropertyListCreateData(v2, *(a1 + 16), kCFPropertyListXMLFormat_v1_0, 0, &error);
  v9 = CFWriteStreamCreateWithFile(0, v7);
  if (v9)
  {
    v10 = v9;
    if (CFWriteStreamOpen(v9))
    {
      BytePtr = CFDataGetBytePtr(v8);
      Length = CFDataGetLength(v8);
      CFWriteStreamWrite(v10, BytePtr, Length);
      CFWriteStreamClose(v10);
    }

    CFRelease(v10);
  }

  CFRelease(StringWithAbsoluteTime);
  CFRelease(v6);
  CFRelease(v7);
  CFRelease(v8);
}

void sub_29930852C(const void **a1, const void *a2, const __CFString *a3)
{
  sub_29930835C(a1);
  if (a2)
  {
    if (a3)
    {
      v6 = CFGetTypeID(a2);
      if (v6 == CFArrayGetTypeID())
      {
        Length = CFStringGetLength(a3);
        if (Length == CFArrayGetCount(a2))
        {
          Mutable = CFArrayCreateMutable(0, Length, MEMORY[0x29EDB9000]);
          if (Length >= 1)
          {
            for (i = 0; i != Length; ++i)
            {
              CharacterAtIndex = CFStringGetCharacterAtIndex(a3, i);
              v11 = CharacterAtIndex;
              if ((CharacterAtIndex - 65) < 0x1A || (CharacterAtIndex - 12353) <= 0x52)
              {
                v13 = CFDataCreateMutable(0, 8);
                *bytes = v11;
                *&bytes[4] = 0;
                CFDataAppendBytes(v13, bytes, 8);
                CFArrayAppendValue(Mutable, v13);
                CFRelease(v13);
              }

              else
              {
                ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
                CFArrayAppendValue(Mutable, ValueAtIndex);
              }
            }
          }

          if (Mutable)
          {
            sub_299229F00(a1, Mutable);
            sub_299229BC0(a1 + 1, a3);
            sub_299308214(a1);
          }
        }
      }
    }
  }
}

const UInt8 *sub_299308694(CFArrayRef *a1, CFIndex a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v3 = *a1;
  if (!v3 || CFArrayGetCount(v3) <= a2)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*a1, a2);

  return CFDataGetBytePtr(ValueAtIndex);
}

const __CFArray *sub_2993086FC(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    if (result)
    {
      Count = CFArrayGetCount(v1);
      v3 = *MEMORY[0x29EDB8ED8];
      result = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
      if (Count >= 1)
      {
        theString = result;
        v19 = Count;
        v4 = 0;
        v20 = v1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
          if (ValueAtIndex)
          {
            v6 = ValueAtIndex;
            v7 = CFGetTypeID(ValueAtIndex);
            if (v7 == CFDataGetTypeID())
            {
              Length = CFDataGetLength(v6);
              if (Length)
              {
                v9 = Length;
                Mutable = CFStringCreateMutable(v3, 0);
                BytePtr = CFDataGetBytePtr(v6);
                if (v9 < 8)
                {
                  __assert_rtn("createStringFromGeometryData", "GeometryModel.cpp", 201, "numKeys > 0");
                }

                v12 = BytePtr;
                v13 = 0;
                v14 = v9 >> 3;
                do
                {
                  if (!*v12)
                  {
                    break;
                  }

                  if (v13)
                  {
                    v15 = @",";
                  }

                  else
                  {
                    v15 = @"{";
                  }

                  CFStringAppend(Mutable, v15);
                  v16 = CFStringCreateWithFormat(v3, 0, @"%C:%f", *v12, v12[1]);
                  CFStringAppend(Mutable, v16);
                  if (v16)
                  {
                    CFRelease(v16);
                  }

                  ++v13;
                  v12 += 2;
                }

                while (v14 != v13);
                if (CFStringGetLength(Mutable) <= 0)
                {
                  v17 = @"{0:0}";
                }

                else
                {
                  v17 = @"};";
                }

                CFStringAppend(Mutable, v17);
                Count = v19;
                v1 = v20;
                if (Mutable)
                {
                  CFStringAppend(theString, Mutable);
                  CFRelease(Mutable);
                }
              }
            }
          }

          ++v4;
        }

        while (v4 != Count);
        return theString;
      }
    }
  }

  return result;
}

void sub_2993088EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299308914()
{
  System = CFLocaleGetSystem();
  qword_2A1460F28 = CFDateFormatterCreate(0, System, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetFormat(qword_2A1460F28, @"yyyy-MM-dd@HHmm.ssSS");

  return mkdir("/tmp/GeometryModel", 0x1C0u);
}

void sub_2993089C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

const void **sub_2993089D8(const void **a1, const void *a2, int a3, const void *a4)
{
  valuePtr = a3;
  *a1 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57F0], a2);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57E8], *MEMORY[0x29EDB8F00]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57C8], v8);
  if (a4)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57C0], a4);
  }

  v9 = LXAnalyzerCreate();
  sub_2992916A4(a1, v9);
  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return a1;
}

void sub_299308B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_299274AE8(va, 0);
  sub_2992916A4(v5, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299308B58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (result)
  {
    return LXAnalyzerEnumerateCandidatesWithLattice();
  }

  return result;
}

void sub_299308BD8(uint64_t a1, const void *a2, _BYTE *a3)
{
  v7 = 0;
  v4 = *(a1 + 32);
  cf = 0;
  sub_299308E28(&cf, a2);
  v5 = *(v4 + 24);
  if (!v5)
  {
    sub_2991A2240();
  }

  (*(*v5 + 48))(v5, &cf, &v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7 == 1)
  {
    *a3 = v7;
  }
}

uint64_t sub_299308C88(void *a1, uint64_t a2)
{
  v2 = 0;
  if (a2 && *a1)
  {
    LXAnalyzerSetSupplementalLexicons();
    return 1;
  }

  return v2;
}

uint64_t *sub_299308CE0(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_299273DCC(result, a4);
  }

  return result;
}

void sub_299308D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_299212B90(&a9);
  _Unwind_Resume(a1);
}

char *sub_299308D68(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_29922C89C(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_299273ED8(v9);
  return v4;
}

void sub_299308E28(CFTypeRef *result, CFTypeRef cf)
{
  if (*result != cf)
  {
    CFRetain(cf);

    sub_299308E88(result, cf);
  }
}

void sub_299308E88(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_299308ED8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2A1F6F8C0;
  v5 = a1[39];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[46];
  a1[46] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[44];
  a1[44] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a1[43];
  a1[43] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a1[42];
  a1[42] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = a1[41];
  a1[41] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  sub_29929266C(a1 + 38, 0, a3, a4);

  return sub_299223F18(a1);
}

void sub_299309054(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_299308ED8(a1, a2, a3, a4);

  JUMPOUT(0x29C29BFB0);
}

void sub_29930908C(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (qword_2A1460F58 != -1)
  {
    dispatch_once(&qword_2A1460F58, &unk_2A1F6FA60);
  }

  sub_299223C68(a1, a3, a4, 1, qword_2A1460F50);
}

void sub_299309274(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v2, 0x10E1C407767CB23);
  v7 = v1[46];
  v1[46] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v1[44];
  v1[44] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = v1[43];
  v1[43] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = v1[42];
  v1[42] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *v3;
  *v3 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  sub_29929266C(v1 + 38, 0, v5, v6);
  sub_299223F18(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2993093DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v20 = *MEMORY[0x29EDCA608];
  if (a2 && a3)
  {
    v5 = sub_29930A8C8(*(a1 + 32), a3);
    v18 = v5;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v19, 16);
    if (v3)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (objc_msgSend_hasPrefix_(v11, v7, a2, v8))
          {
            v3 = objc_msgSend_copy(v11, v7, v12, v8);
            goto LABEL_13;
          }
        }

        v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v14, v19, 16);
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v3;
}

void sub_299309510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_299229F00(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299309540(uint64_t a1)
{
  v21[1] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 360);
  v3 = off_29EF10570;
  if (v2 != 1)
  {
    v3 = off_29EF10568;
  }

  if (v2 == 2)
  {
    v4 = &off_29EF10578;
  }

  else
  {
    v4 = v3;
  }

  v5 = *v4;
  v6 = MEMORY[0x29EDBA0F8];
  v7 = sub_2992774EC(*(a1 + 72));
  v10 = objc_msgSend_stringWithUTF8String_(v6, v8, v7, v9);
  v11 = MEMORY[0x29EDBA0F8];
  v12 = (*(*a1 + 232))(a1);
  v13 = sub_299277514(v12, 0);
  v16 = objc_msgSend_stringWithUTF8String_(v11, v14, v13, v15);
  v20 = @"wubixingStandard";
  v21[0] = v5;
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v17, v21, &v20, 1);
  return sub_2992BBD18(*(a1 + 368), v10, v16, v18);
}

id sub_29930966C()
{
  InputKeys = MecabraInputKeyPropertiesGetInputKeys(2);
  v3 = objc_msgSend_stringByAppendingString_(InputKeys, v1, @" ", v2);
  qword_2A1460F38 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x29EDB9F50], v4, v3, v5);
  result = objc_msgSend_invertedSet(qword_2A1460F38, v6, v7, v8);
  qword_2A1460F40 = result;
  return result;
}

void *sub_2993096C8(void *a1, __CFString *a2, int a3, uint64_t a4)
{
  v5 = a2;
  if (a3)
  {
    v7 = off_29EF0DEE0;
    v8 = 98306;
  }

  else
  {
    v9 = objc_msgSend_rangeOfString_(a2, a2, @"z", a4);
    v7 = off_29EF0DED8;
    v8 = 32770;
    if (v9 && v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v10, @"z", @"?");
      v7 = off_29EF0DEF0;
      v8 = 32770;
    }
  }

  v11 = *v7;
  v57[0] = 0;
  v57[1] = 0;
  v55[1] = 0;
  v56 = v57;
  v54 = v55;
  v55[0] = 0;
  sub_299224C3C(a1, &v54, v5, v11, &v56, v8);
  v52 = 0;
  v53 = 0;
  v51 = 0;
  if (v54 != v55)
  {
    v12 = 0;
    v13 = v54;
    do
    {
      v14 = v12;
      v15 = v13[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v13[2];
          v17 = *v16 == v13;
          v13 = v16;
        }

        while (!v17);
      }

      ++v12;
      v13 = v16;
    }

    while (v16 != v55);
    if (v14 < 0x1FFFFFFFFFFFFFFFLL)
    {
      sub_29920B86C(&v51, v12);
    }

    sub_299212A8C();
  }

  __p = sub_29921A768;
  sub_29921B920(0, 0, &__p, 0, 1);
  v21 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v18, v19, v20);
  v22 = v21;
  if (a3)
  {
    sub_29922A990(v21, v51, v52, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_42;
  }

  v23 = v51;
  v49 = 0;
  v50 = 0;
  v47 = v52;
  __p = 0;
  if (v51 != v52)
  {
    v46 = v21;
    do
    {
      v24 = *v23;
      v25 = v49;
      if (v49 >= v50)
      {
        v27 = (v49 - __p) >> 3;
        if ((v27 + 1) >> 61)
        {
          sub_299212A8C();
        }

        v28 = (v50 - __p) >> 2;
        if (v28 <= v27 + 1)
        {
          v28 = v27 + 1;
        }

        if (v50 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v28;
        }

        if (v29)
        {
          sub_29920B86C(&__p, v29);
        }

        v30 = (8 * v27);
        *v30 = v24;
        v26 = 8 * v27 + 8;
        v31 = v30 - (v49 - __p);
        memcpy(v31, __p, v49 - __p);
        v32 = __p;
        __p = v31;
        v49 = v26;
        v50 = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v49 = v24;
        v26 = (v25 + 8);
      }

      v49 = v26;
      v33 = (*(*v24 + 24))(v24);
      v34 = sub_2992F2800(10, 0, v33, 0);
      v57[2] = v34;
      if (v34)
      {
        v35 = (*(*v24 + 24))(v24);
        sub_2992F2F40(10, 0, v35);
        if (CFArrayGetCount(v34) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v34, 0);
          v37 = a1[2];
          v38 = (*(*v24 + 112))(v24);
          v39 = (*(*v24 + 80))(v24);
          sub_299223FD4(a1, 64, ValueAtIndex, v37, v38, v39);
        }

        CFRelease(v34);
      }

      ++v23;
    }

    while (v23 != v47);
    v40 = __p;
    v41 = v49;
    if (__p == v49)
    {
      v22 = v46;
      if (__p)
      {
LABEL_41:
        v49 = v40;
        operator delete(v40);
      }
    }

    else
    {
      v22 = v46;
      do
      {
        v42 = sub_29928A270(*v40);
        objc_msgSend_addObject_(v46, v43, v42, v44);

        v40 += 8;
      }

      while (v40 != v41);
      v40 = __p;
      if (__p)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_42:
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  sub_29921B8CC(&v54, v55[0]);
  sub_29921B8CC(&v56, v57[0]);
  return v22;
}

void sub_299309C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29921B8CC(&a18, a19);
  sub_29921B8CC(&a21, a22);
  _Unwind_Resume(a1);
}

void *sub_299309CC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  result = objc_msgSend_count(a2, a2, a3, a4);
  if (result > v5)
  {
    v11 = 0;
    do
    {
      v12 = objc_msgSend_objectAtIndexedSubscript_(a2, v9, v5, v10);
      if (!MecabraCandidateIsEmojiCandidate(v12, v13, v14, v15))
      {
        v19 = objc_msgSend_rawCandidate(v12, v16, v17, v18);
        if (!v19)
        {
          v11 = 0;
          if (v4)
          {
            goto LABEL_8;
          }

LABEL_7:
          objc_msgSend_addObject_(*(a1 + 40), v16, v12, v18);
          goto LABEL_8;
        }

        v11 = (*(*v19 + 80))(v19);
      }

      if (((v11 ^ v4) & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_8:
      ++v5;
      result = objc_msgSend_count(a2, v16, v17, v18);
    }

    while (v5 < result);
  }

  return result;
}

void *sub_299309D9C(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  v102 = *MEMORY[0x29EDCA608];
  v4 = *(result + 3);
  if (v4)
  {
    v5 = result;
    if (objc_msgSend_length(*(result + 3), a2, a3, a4))
    {
      v7 = v5[42];
      if (v7)
      {
        v8 = atomic_load((v7 + 97));
        if ((v8 & 1) == 0)
        {
          v9 = atomic_load((v7 + 96));
          if (v9)
          {
            v10 = v5[41];
            v5[41] = v5[42];
            v5[42] = 0;
            if (v10)
            {
              (*(*v10 + 8))(v10);
            }
          }
        }
      }

      sub_29930AA3C(v5, v5 + 41, v4, 32784, 0x7FFFLL);
    }

    v11 = sub_2993096C8(v5, v4, 0, v6);
    v12 = sub_299225130(v5, v4, 0);
    if (objc_msgSend_count(v11, v13, v14, v15))
    {
      v18 = 0;
      while (1)
      {
        v19 = objc_msgSend_objectAtIndexedSubscript_(v11, v16, v18, v17);
        Surface = MecabraCandidateGetSurface(v19, v20, v21, v22);
        if (CFStringGetLength(Surface) != 1 && !MecabraCandidateIsEmojiCandidate(v19, v16, v24, v25))
        {
          break;
        }

        v26 = objc_msgSend_rawCandidate(v19, v16, v24, v25);
        if (v26)
        {
          if ((*(*v26 + 80))(v26))
          {
            break;
          }
        }

        objc_msgSend_addObject_(v5[5], v16, v19, v27);
        if (++v18 >= objc_msgSend_count(v11, v28, v29, v30))
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v18 = 0;
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v16, &v95, v101, 16);
    if (v34)
    {
      v35 = *v96;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v96 != v35)
          {
            objc_enumerationMutation(v12);
          }

          v37 = *(*(&v95 + 1) + 8 * i);
          v38 = objc_msgSend_rawCandidate(v37, v31, v32, v33);
          if ((!v38 || ((*(*v38 + 80))(v38) & 1) == 0) && (MecabraCandidateGetWubixingType(v37, v31, v32, v33) & 2) == 0)
          {
            objc_msgSend_addObject_(v5[5], v31, v37, v33);
          }
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v31, &v95, v101, 16);
      }

      while (v34);
    }

    sub_299309CC8(v5, v11, v18, 0);
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v39, &v91, v100, 16);
    if (v43)
    {
      v44 = *v92;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v92 != v44)
          {
            objc_enumerationMutation(v12);
          }

          v46 = *(*(&v91 + 1) + 8 * j);
          v47 = objc_msgSend_rawCandidate(v46, v40, v41, v42);
          if (v47 && ((*(*v47 + 80))(v47) & 1) != 0 || (MecabraCandidateGetWubixingType(v46, v40, v48, v42) & 2) != 0)
          {
            objc_msgSend_addObject_(v5[5], v40, v46, v42);
          }
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v40, &v91, v100, 16);
      }

      while (v43);
    }

    if (objc_msgSend_length(v4, v40, v41, v42))
    {
      v49 = v5[44];
      if (v49)
      {
        v50 = atomic_load((v49 + 97));
        if ((v50 & 1) == 0)
        {
          v51 = atomic_load((v49 + 96));
          if (v51)
          {
            v52 = v5[43];
            v5[43] = v5[44];
            v5[44] = 0;
            if (v52)
            {
              (*(*v52 + 8))(v52);
            }
          }
        }
      }

      sub_29930AA3C(v5, v5 + 43, v4, 32776, 5);
    }

    sub_299309CC8(v5, v11, v18, 1);
    if ((v5[4] & 2) == 0)
    {
      v56 = v5[5];
      v57 = sub_299225130(v5, v4, 2u);
      objc_msgSend_addObjectsFromArray_(v56, v58, v57, v59);
    }

    if (!v5[38])
    {
      v60 = sub_299279384();
      v99 = CFRetain(v60);
      operator new();
    }

    v61 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v53, v54, v55);
    if (sub_29934C930(v5[38], v4, v5[4] & 0x40, v5[34]))
    {
      for (k = sub_29934E86C(v5[38]); k; k = sub_29934E86C(v5[38]))
      {
        if (qword_2A1460F48 != -1)
        {
          dispatch_once(&qword_2A1460F48, &unk_2A1F6FA28);
        }

        if (MecabraCandidateGetMatchedLengthType(k, v62, v64, v63) != 1)
        {
          v69 = MecabraCandidateGetSurface(k, v66, v67, v68);
          if ((objc_msgSend_rangeOfCharacterFromSet_(v69, v70, qword_2A1460F38, v71) == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_rangeOfCharacterFromSet_(v69, v72, qword_2A1460F40, v74) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_length(v69, v83, v84, v85) != 1) && (!MecabraCandidateIsEmojiCandidate(k, v72, v73, v74) || (v78 = objc_msgSend_rawCandidate(k, v75, v76, v77)) == 0 || ((*(*v78 + 80))(v78) & 1) == 0) && (MecabraCandidateIsAutocorrectionCandidate(k, v75, v76, v77) || MecabraCandidateIsBilingualCandidate(k, v79, v80, v81) || (sub_29928A14C(k, v79, v82, v81) & 1) == 0))
          {
            objc_msgSend_addObject_(v61, v79, k, v81);
          }
        }
      }
    }

    result = objc_msgSend_addObjectsFromArray_(v5[5], v62, v61, v63);
    if ((v5[4] & 2) == 0)
    {
      v87 = v5[5];
      v88 = sub_2993096C8(v5, v4, 1, v86);
      return objc_msgSend_addObjectsFromArray_(v87, v89, v88, v90);
    }
  }

  return result;
}

void sub_29930A398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29930A3E8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  result = 0;
  if (objc_msgSend_length(a2, a2, a3, a4) == 1)
  {
    isEqualToString = objc_msgSend_isEqualToString_(a3, v6, @"IDXPrefixMatch", v7);
    if (a4 >= 20 && (isEqualToString & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

void sub_29930A448(uint64_t a1, uint64_t a2)
{
  v2 = sub_29936C2B8();
  v3 = sub_29936C3FC(v2, 1, off_2A145F738[0], off_2A145F6E8[0], 0);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3[23];
  }

  else
  {
    v5 = *(v3 + 1);
  }

  if (v5)
  {
    if (v4 >= 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = *v3;
    }

    CFURLCreateFromFileSystemRepresentation(0, v6, v5, 1u);
  }

  operator new();
}

void sub_29930A528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x29C29BFB0](v3, 0x10E1C40215157BALL);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_29930A560(uint64_t *a1, uint64_t a2, CFArrayRef theArray)
{
  if (CFArrayGetCount(theArray) && (CFArrayGetCount(theArray) & 1) == 0)
  {
    operator new();
  }

  *a1 = 0;
}

void sub_29930A628(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29930A660(void *a1, CFArrayRef theArray)
{
  if (theArray && CFArrayGetCount(theArray))
  {
    sub_29930A560(&v6, a1, theArray);
    result = a1[42];
    a1[42] = v6;
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  else
  {

    return sub_29930A724(a1, 1);
  }

  return result;
}

uint64_t sub_29930A724(void *a1, int a2)
{
  if (a2 == 1)
  {
    v3 = a1[41];
    a1[41] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = a1[42];
    a1[42] = 0;
    if (result)
    {
LABEL_5:
      v5 = *(*result + 8);

      return v5();
    }
  }

  else
  {
    v6 = a1[43];
    a1[43] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    result = a1[44];
    a1[44] = 0;
    if (result)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t sub_29930A800(void *a1, CFArrayRef theArray)
{
  if (theArray && CFArrayGetCount(theArray))
  {
    sub_29930A560(&v6, a1, theArray);
    result = a1[44];
    a1[44] = v6;
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  else
  {

    return sub_29930A724(a1, 2);
  }

  return result;
}

uint64_t sub_29930A8C8(uint64_t a1, uint64_t a2)
{
  v4 = [MecabraWordProperties alloc];
  v6 = objc_msgSend_initWithString_language_(v4, v5, a2, 1);
  v9 = objc_msgSend_wubixingCodesForStandard_(v6, v7, *(a1 + 360), v8);

  return objc_msgSend_copy(v9, v10, v11, v12);
}

uint64_t sub_29930A92C(uint64_t result, int a2)
{
  if (*(result + 360) != a2)
  {
    v3 = result;
    *(result + 360) = a2;
    (*(**(result + 312) + 128))(*(result + 312));

    return sub_299309540(v3);
  }

  return result;
}

BOOL sub_29930A9A4(uint64_t a1, void *a2)
{
  v3 = sub_2992793F8();
  if (MecabraCandidateIsEmojiCandidate(a2, v4, v5, v6))
  {
    return 0;
  }

  Surface = MecabraCandidateGetSurface(a2, v7, v8, v9);
  return objc_msgSend_rangeOfCharacterFromSet_(Surface, v12, v3, v13) == 0x7FFFFFFFFFFFFFFFLL;
}

void *sub_29930A9FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 16);
  if (result)
  {
    return (objc_msgSend_rangeOfString_(result, a2, @"z", a4) == 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_29930AA3C(uint64_t a1, uint64_t *a2, const __CFString *a3, int a4, uint64_t a5)
{
  v10 = *(a1 + 272);
  if (!v10)
  {
    if (!*a2)
    {
      return;
    }

    goto LABEL_9;
  }

  if (sub_299225D3C(v10, kMecabraContextOptionPrivateMode) != *MEMORY[0x29EDB8F00] && *a2 != 0)
  {
LABEL_9:
    sub_299276BDC(a3, &v16);
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    v12 = *a2;
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = sub_29930AB94;
    v13[3] = &unk_29EF12B88;
    v14 = a4;
    v13[4] = a3;
    v13[5] = v15;
    v13[6] = a1;
    v13[7] = a5;
    sub_2992A2538(v12, v16, (v17 - v16) >> 1, v13);
    _Block_object_dispose(v15, 8);
    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }
  }
}

void sub_29930AB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  v19 = *(v17 - 72);
  if (v19)
  {
    *(v17 - 64) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_29930AB94(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *(a1 + 48);
    v6 = CFStringCreateWithCharacters(0, *(a2 + 16), v3);
    sub_299223FD4(v5, *(a1 + 64), v6, *(a1 + 32), 0, 0);
  }
}

void sub_29930AC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

void sub_29930AC88(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = *MEMORY[0x29EDCA608];
  v27 = 0;
  v28 = 0;
  sub_29924388C(*(a1 + 8), a4, a5, &v27, &v25);
  LODWORD(v12) = 0;
  if (v25 > 3u)
  {
    if (v25 == 4)
    {
      LODWORD(v12) = *v27;
    }

    else if (v25 == 8)
    {
      v12 = *v27;
    }
  }

  else if (v25 == 1)
  {
    LODWORD(v12) = *v27;
  }

  else if (v25 == 2)
  {
    LODWORD(v12) = *v27;
  }

  v13 = *(a1 + 360);
  if (v13 == 1)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 == 2)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  if ((v15 & v12) != 0)
  {
    v24 = sub_299223C04(v28, v26);
    if (!objc_msgSend_isEqualToString_(a3, v16, @"IDXPrefixMatch", v17) || objc_msgSend_length(a2, v18, v19, v20) > 2 || objc_msgSend_length(v24, v21, v22, v23) <= 1)
    {
      (*(a7 + 16))(a7, v24, v12 >> 4, v12 & 1, a6);
    }
  }
}

uint64_t sub_29930AE44(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    v3 = 65540;
  }

  else
  {
    v3 = 4;
  }

  return (v3 & 0xFFFF7FFF | (((sub_2992B8DA4(a2, off_2A145F3A0) >> 1) & 1) << 15)) ^ 0x8000;
}

CFArrayRef sub_29930AED8()
{
  result = CFArrayCreate(0, &off_2A145F4A8, 2, MEMORY[0x29EDB9000]);
  qword_2A1460F50 = result;
  return result;
}

char *sub_29930AF10()
{
  if ((atomic_load_explicit(&qword_2A1460F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460F60))
  {
    sub_29930B038();
    __cxa_atexit(sub_29930AFA0, &byte_2A1460F68, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460F60);
  }

  return &byte_2A1460F68;
}

uint64_t sub_29930AFA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 24) == 1)
  {
    fclose(*(a1 + 16));
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t sub_29930B038()
{
  byte_2A1460F68 = 0;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MecabraLogLevel", *MEMORY[0x29EDB8F88], &keyExistsAndHasValidFormat);
  if (AppIntegerValue > 7 || keyExistsAndHasValidFormat == 0)
  {
    v2 = 0x7FFFFFFF;
  }

  else
  {
    v2 = AppIntegerValue;
  }

  dword_2A1460F6C = v2;
  qword_2A1460F88 = 0;
  qword_2A1460F70 = 0;
  qword_2A1460F78 = 0;
  byte_2A1460F80 = 0;
  if (sub_299277A3C("DEBUG_PRINT_NODES"))
  {
    qword_2A1460F70 |= 2uLL;
  }

  if (sub_299277A3C("DEBUG_PRINT_WORD_GROUPS"))
  {
    qword_2A1460F70 |= 0x1000uLL;
  }

  if (sub_299277A3C("DEBUG_PRINT_SYLLABLE_LATTICE"))
  {
    qword_2A1460F70 |= 0x2000uLL;
  }

  if (sub_299277A3C("DEBUG_PRINT_SAMPLE_LATTICE"))
  {
    qword_2A1460F70 |= 0x2000000uLL;
  }

  if (sub_299277A3C("DEBUG_PRINT_CONNECTED_NODES"))
  {
    qword_2A1460F70 |= 4uLL;
  }

  if (sub_299277A3C("DEBUG_PRINT_HYPOTHESES"))
  {
    qword_2A1460F70 |= 0xCuLL;
  }

  if (sub_299277A3C("DEBUG_PRINT_HYPOTHESIS_SETS"))
  {
    qword_2A1460F70 |= 0x10uLL;
  }

  if (sub_299277A3C("DEBUG_PRINT_SYLLABLE_HYPOTHESIS"))
  {
    qword_2A1460F70 |= 0x1000000uLL;
  }

  if (sub_299277A3C("DEBUG_HOMOPHONE_PHRASES"))
  {
    qword_2A1460F70 |= 0x40uLL;
  }

  if (sub_299277A3C("DEBUG_NGRAM_SCORE"))
  {
    qword_2A1460F70 |= 0x80uLL;
  }

  if (sub_299277A3C("DEBUG_NGRAM_QUANTIZATION"))
  {
    qword_2A1460F70 |= 0x100uLL;
  }

  if (sub_299277A3C("DEBUG_PINYIN_TEXT_CHECKING"))
  {
    qword_2A1460F70 |= 0x200uLL;
  }

  if (sub_299277A3C("MECABRA_LOG_TIMING"))
  {
    qword_2A1460F70 |= 0x20uLL;
  }

  if (sub_299277A3C("MECABRA_LOG_STATISTICS"))
  {
    qword_2A1460F70 |= 0x800uLL;
  }

  if (sub_299277A3C("DEBUG_PRINT_CHARACTER_LATTICE"))
  {
    qword_2A1460F70 |= 0x80000uLL;
  }

  if (sub_299277A3C("DEBUG_PRINT_BEST_BACKTRACE"))
  {
    qword_2A1460F70 |= 0x4000uLL;
  }

  if (sub_299277A3C("DEBUG_RERANKING"))
  {
    qword_2A1460F70 |= 0x8000uLL;
  }

  if (sub_299277A3C("DEBUG_LEARNING"))
  {
    qword_2A1460F70 |= 0x10000uLL;
  }

  if (sub_299277A3C("DEBUG_DYNAMIC_CANDIDATES"))
  {
    qword_2A1460F70 |= 0x20000uLL;
  }

  if (sub_299277A3C("DEBUG_ENGINE"))
  {
    qword_2A1460F70 |= 0x40000uLL;
  }

  if (sub_299277A3C("DEBUG_PREDICTION"))
  {
    qword_2A1460F70 |= 0x100000uLL;
  }

  if (sub_299277A3C("DEBUG_PRINT_ADAPTATION"))
  {
    qword_2A1460F70 |= 0x200000uLL;
  }

  if (sub_299277A3C("DEBUG_PRUNING"))
  {
    qword_2A1460F70 |= 0x400000uLL;
  }

  result = sub_299277A3C("DEBUG_LIVE_CONVERSION");
  if (result)
  {
    qword_2A1460F70 |= 0x800000uLL;
  }

  else if (!qword_2A1460F70)
  {
    goto LABEL_62;
  }

  byte_2A1460F68 = 1;
  v7 = getenv("MECABRA_LOG_DESTINATION");
  if (v7 || (result = sub_2992EEE28("MECABRA_LOG_DESTINATION", v4, v5, v6), (v7 = result) != 0))
  {
    result = fopen(v7, "a+");
    qword_2A1460F78 = result;
    if (result)
    {
      byte_2A1460F80 = 1;
    }

    else
    {
      result = fprintf(*MEMORY[0x29EDCA610], "Cannot open specified log file %s.\nAll logging is turned off.\n", v7);
      byte_2A1460F68 = 0;
    }
  }

  else
  {
    qword_2A1460F78 = *MEMORY[0x29EDCA610];
  }

LABEL_62:
  if (byte_2A1460F68 == 1)
  {
    if (sub_299277A3C("MECABRA_LOG_BUFFERED"))
    {
      operator new();
    }

    operator new();
  }

  return result;
}

void sub_29930B4D0(_Unwind_Exception *exception_object)
{
  v2 = qword_2A1460F88;
  qword_2A1460F88 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29930B514(uint64_t result, unsigned int a2, const char *a3, ...)
{
  va_start(va, a3);
  if (*result == 1 && (*(result + 8) & a2) != 0)
  {
    return (*(**(result + 32) + 16))(*(result + 32), a3, va);
  }

  return result;
}

uint64_t sub_29930B58C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*result == 1 && (*(result + 8) & a2) != 0)
  {
    return (*(**(result + 32) + 16))(*(result + 32), a3, &a9, a4, a5, a6, a7, a8);
  }

  return result;
}

void sub_29930B600(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v5 = *MEMORY[0x29EDCA608];
  vsprintf(cStr, a2, va);
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v2)
  {
    v3 = v2;
    CFLog();
    CFRelease(v3);
  }
}

uint64_t sub_29930B6C4(uint64_t a1, char *__format, va_list a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = vsnprintf(__str, 0x400uLL, __format, a3);
  if ((v4 & 0x80000000) != 0)
  {
    v7 = "Log message exceeded the 1024-byte length limit.";
    v6 = (a1 + 16);
    v5 = 48;
  }

  else
  {
    v5 = strlen(__str);
    v6 = (a1 + 16);
    v7 = __str;
  }

  std::string::append(v6, v7, v5);
  return v4;
}

uint64_t sub_29930B76C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v3 = *v3;
  }

  fputs(v3, v2);
  result = fflush(*(a1 + 8));
  if (*(a1 + 39) < 0)
  {
    **(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 39) = 0;
  }

  return result;
}

uint64_t sub_29930B7CC(uint64_t a1)
{
  *a1 = &unk_2A1F6FAE8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_29930B81C(uint64_t a1)
{
  *a1 = &unk_2A1F6FAE8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29930B88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2A1F6FB30;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_29930F298((a1 + 32), 256);
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 152) = a2;
  sub_2992FF104(a1 + 160, a3);
  return a1;
}

void sub_29930B928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29930C588((v3 + 136), 0);
  sub_29921EA18(v4);
  sub_29930F2E8(v3 + 32);
  sub_29930F0F0(va);
  _Unwind_Resume(a1);
}

void sub_29930B964(void *a1)
{
  v3 = a1[1];
  for (i = a1[2]; i != v3; sub_29930C588(i, 0))
  {
    --i;
  }

  a1[2] = v3;
  sub_29930B9C8((a1 + 4));
  a1[12] = a1[11];
  a1[15] = a1[14];
}

void sub_29930B9C8(uint64_t a1)
{
  v2 = *a1;
  if (*a1 < *(a1 + 8))
  {
    do
    {
      v3 = *v2++;
      free(v3);
    }

    while (v2 < *(a1 + 8));
    v2 = *a1;
  }

  *(a1 + 8) = v2;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

BOOL sub_29930BA18(uint64_t *a1, uint64_t a2, int a3)
{
  v46[19] = *MEMORY[0x29EDCA608];
  v4 = a1[11];
  v5 = a1[12];
  v3 = a1 + 11;
  v6 = v5 - v4;
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3);
  v8 = v7 + 2;
  v9 = a1[2] - a1[1];
  if (v7 + 2 >= v9 >> 3)
  {
    v13 = *(a2 + 8);
    if (v13 == *(a2 + 16))
    {
      v14 = 0;
    }

    else
    {
      v14 = *v13;
    }

    v34 = a1[2] - a1[1];
    v35 = v7 + 2;
    if (sub_29922D1C4((a1 + 20), v14))
    {
      v15 = v7 + 1;
      v16 = *(a2 + 8);
      if (v16 == *(a2 + 16))
      {
        v17 = 0;
      }

      else
      {
        v17 = *v16;
      }

      sub_2993C3BE8(v3, a2, v17);
      if (v5 == v4 || *(*v3 + v6 - 4) == 2 && *(*v3 + 8 * ((v5 - v4) >> 3) + 36) != 2)
      {
        sub_29930C588(a1 + 17, 0);
      }

      sub_29930C5F8(a1, a2, v7 + 1, 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3), 1);
      sub_29930CC28(a1, v7 + 1);
      v18 = a1[2];
      v21 = *(v18 - 8);
      v20 = (v18 - 8);
      v19 = v21;
      if (*v21 == v21[1] && v19[3] == v19[4] || v5 != v4 && (*(*v3 + v6 - 4) != 2 || *(*v3 + 8 * ((v5 - v4) >> 3) + 36) == 2) && !v19[8] && *(*(a1[1] + 0x6666666666666668 * ((v5 - v4) >> 3)) + 64))
      {
        sub_29930C588(v20, 0);
        a1[2] = v20;
        sub_29930C5F8(a1, a2, v7 + 1, 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3), 0);
        sub_29930CC28(a1, v7 + 1);
      }

      v22 = sub_29930AF10();
      if (*v22 == 1 && (v22[11] & 2) != 0)
      {
        v23 = sub_29930AF10();
        sub_2991D7954(&v41);
        if (v15 < v35)
        {
          v24 = *(*(a1[1] + 8 * v15) + 72);
          v25 = sub_2991C0E9C(&v42, "ColumnIndex = ", 14);
          v26 = MEMORY[0x29C29BD50](v25, v15);
          v27 = sub_2991C0E9C(v26, ", sampleIndex = ", 16);
          v28 = MEMORY[0x29C29BD60](v27, v24);
          std::ios_base::getloc((v28 + *(*v28 - 24)));
          v29 = std::locale::use_facet(&v38, MEMORY[0x29EDC93D0]);
          (v29->__vftable[2].~facet_0)(v29, 10);
          std::locale::~locale(&v38);
          std::ostream::put();
          std::ostream::flush();
          sub_2992C0198(*(a1[1] + 8 * v15), &v38);
          v30 = (v40 & 0x80u) == 0 ? &v38 : v38.__locale_;
          if ((v40 & 0x80u) == 0)
          {
            sub_2991C0E9C(&v42, v30, v40);
          }

          else
          {
            sub_2991C0E9C(&v42, v30, v39);
          }

          if (v40 < 0)
          {
            operator delete(v38.__locale_);
          }
        }

        sub_29927989C(&v41, v36);
        v41 = *MEMORY[0x29EDC9528];
        v31 = *(MEMORY[0x29EDC9528] + 72);
        *(&v41 + *(v41 - 24)) = *(MEMORY[0x29EDC9528] + 64);
        v42 = v31;
        v43 = MEMORY[0x29EDC9570] + 16;
        if (v45 < 0)
        {
          operator delete(v44[7].__locale_);
        }

        v43 = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(v44);
        std::iostream::~basic_iostream();
        MEMORY[0x29C29BF00](v46);
        if (v37 >= 0)
        {
          sub_29930B514(v23, 0x2000000u, v36);
        }

        else
        {
          sub_29930B514(v23, 0x2000000u, v36[0]);
        }

        if (v37 < 0)
        {
          operator delete(v36[0]);
        }
      }

      v32 = sub_29930AF10();
      v9 = v34;
      v8 = v35;
      if (*v32 == 1 && (v32[9] & 0x40) != 0)
      {
        sub_29930CD18(a1, ((a1[2] - a1[1]) >> 3) - 1, 80, 0);
      }
    }

    if (a3)
    {
      operator new();
    }
  }

  return v8 >= v9 >> 3;
}

void sub_29930C4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::locale a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29930C588(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29921B8CC(v2 + 48, *(v2 + 56));
    v3 = (v2 + 24);
    sub_29930F340(&v3);
    v3 = v2;
    sub_29930F340(&v3);
    return MEMORY[0x29C29BFB0](v2, 0x1020C409D1DDB13);
  }

  return result;
}

void *sub_29930C5F8(void *result, uint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v30[4] = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    return result;
  }

  v5 = a5;
  v9 = result;
  v10 = result[1];
  v11 = result[2];
  if (v11 == v10)
  {
    operator new();
  }

  if (a3 == (v11 - v10) >> 3)
  {
    operator new();
  }

  memset(v28, 0, sizeof(v28));
  LODWORD(v29) = 1065353216;
  if (!a4)
  {
    v13 = 0;
LABEL_13:
    v14 = result[11];
    v15 = result[12] - v14;
    v16 = 0xCCCCCCCCCCCCCCCDLL * (v15 >> 3);
    if (v15)
    {
      v17 = *(v14 + 34);
    }

    else
    {
      v17 = 0;
    }

    if (v16 <= a4)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v14 + 40 * a4 + 34);
    }

    v18 = v17 == v19;
    goto LABEL_21;
  }

  v12 = result[11];
  v13 = *(v12 + 40 * a4 - 4) != 2 || *(v12 + 40 * a4 + 36) == 2 || *(*(result[1] + 8 * a3 - 8) + 64) == 0;
  if (a4 <= 2)
  {
    goto LABEL_13;
  }

  v18 = 0;
LABEL_21:
  v30[0] = &unk_2A1F6FCD8;
  v30[1] = result;
  v30[3] = v30;
  v20 = -2.0;
  if (!a5)
  {
    v20 = -5.0;
  }

  v21 = 0.8;
  if (a5)
  {
    v22 = 2;
  }

  else
  {
    v21 = 5.0;
    v22 = 5;
  }

  sub_2992FE8DC(a2, v22, v30, &__p, v21, v20);
  v23 = v11 - 8;
  sub_2992E55A4(v30);
  if (v13)
  {
    operator new();
  }

  v24 = __p;
  v25 = v27;
  while (v24 != v25)
  {
    (*(*v9 + 48))(v9, v23, a4, *v24, v18, v24[1]);
    v24 += 2;
  }

  if (!a4 && (v5 & 1) == 0 && **v23 == *(*v23 + 8) && *(*v23 + 24) == *(*v23 + 32))
  {
    sub_29930CE08(v9, a3);
  }

  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  return sub_29921ED28(v28);
}

void sub_29930CBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29921ED28(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_29930CC28(uint64_t result, unint64_t a2)
{
  v3 = *MEMORY[0x29EDCA608];
  v2 = *(result + 8);
  if (a2 <= (*(result + 16) - v2) >> 3 && **(v2 + 8 * a2) != *(*(v2 + 8 * a2) + 8))
  {
    operator new();
  }

  return result;
}

void sub_29930CD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992C07E4(va);
  _Unwind_Resume(a1);
}

void sub_29930CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = sub_29930AF10();
  sub_29930B514(v5, 0x4000u, "Nbest for column %lu\n", a2);
  operator new();
}

void sub_29930CDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299223AD0(va);
  _Unwind_Resume(a1);
}

void sub_29930CE08(void *a1, unint64_t a2)
{
  v4 = (*(*a1 + 24))(a1, *(a1[1] + 8 * a2));
  if (v4)
  {

    sub_29930CE88(a1, a2, v4, 0, 0);
  }
}

void sub_29930CE88(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  if (a2 > (a1[2] - v5) >> 3)
  {
    return;
  }

  v11 = *(v5 + 8 * a2);
  v12 = v11[9];
  v13 = a1[11];
  v14 = *(v13 + 40 * v12 + 24);
  if (a5)
  {
    v15 = *(a5 + 32);
    v16 = v11[8];
    if (v16 < 0x50)
    {
      goto LABEL_35;
    }

    v17 = v11 + 7;
    v18 = v11[7];
    if (v18)
    {
      do
      {
        v19 = v18;
        v18 = v18[1];
      }

      while (v18);
    }

    else
    {
      do
      {
        v19 = v17[2];
        v20 = *v19 == v17;
        v17 = v19;
      }

      while (v20);
    }

    if (*(v19[4] + 56) < v15)
    {
LABEL_35:
      v21 = (v13 + 40 * *(*a5 + 16));
      v22 = hypot(*(v13 + 40 * v12) - *v21, *(v13 + 40 * v12 + 8) - v21[1]);
      v23 = *(a5 + 16);
      v24 = *(a5 + 24) + v14 - v21[3] - v22;
      v25 = v24 / (v22 + v23);
      v26 = -(pow(v14 * 0.00666666667, 0.6) * fmin(v25 / 0.3, 1.0));
      if (a4)
      {
        v27 = *(a4 + 48);
      }

      else
      {
        v27 = 0.0;
      }

      v29 = v27 + *(a3 + 24) * 0.8;
      v32 = *(a3 + 64) + *(a4 + 72);
      v40 = *(a1[14] + 8 * v12);
      v41 = (v40 - v32);
      if (v40 <= v32)
      {
        v41 = -0.0;
      }

      v34 = v15 + v26 + v29 - v41;
      if (v16 < 0x50)
      {
        goto LABEL_36;
      }

      v44 = v11[7];
      v43 = v11 + 7;
      v42 = v44;
      if (v44)
      {
        do
        {
          v45 = v42;
          v42 = v42[1];
        }

        while (v42);
      }

      else
      {
        do
        {
          v45 = v43[2];
          v20 = *v45 == v43;
          v43 = v45;
        }

        while (v20);
      }

      if (*(v45[4] + 56) < v34)
      {
LABEL_36:
        v39 = *(a5 + 64);
        goto LABEL_37;
      }
    }

    return;
  }

  if (a2 && a4)
  {
    v23 = (*(*a1 + 56))(a1, a3, a4) + 0.0;
    v24 = vabdd_f64(v14, v23);
    v15 = (*(*a1 + 64))(a1, a3, a4, 0.3);
    v26 = -(pow(*(a1[11] + 40 * v12 + 24) * 0.00666666667, 0.6) * fmin(v24 / v23 / 0.3, 1.0));
    v28 = *(a3 + 24);
    v11 = *(v5 + 8 * a2);
LABEL_17:
    v29 = *(a4 + 48) + v28 * 0.8;
    v30 = *(a4 + 72);
    goto LABEL_18;
  }

  v28 = *(a3 + 24);
  v26 = 0.0;
  if (a4)
  {
    v23 = 0.0;
    v24 = 0.0;
    v15 = 0.0;
    goto LABEL_17;
  }

  v30 = 0;
  v15 = 0.0;
  v29 = v28 * 0.8 + 0.0;
  v24 = 0.0;
  v23 = 0.0;
LABEL_18:
  v31 = *(a1[14] + 8 * v12);
  v32 = *(a3 + 64) + v30;
  v33 = (v31 - v32);
  if (v31 <= v32)
  {
    v33 = -0.0;
  }

  v34 = v29 + v15 + v26 - v33;
  if (v11[8] < 0x50uLL)
  {
    goto LABEL_26;
  }

  v37 = v11[7];
  v36 = v11 + 7;
  v35 = v37;
  if (v37)
  {
    do
    {
      v38 = v35;
      v35 = v35[1];
    }

    while (v35);
  }

  else
  {
    do
    {
      v38 = v36[2];
      v20 = *v38 == v36;
      v36 = v38;
    }

    while (v20);
  }

  if (*(v38[4] + 56) < v34)
  {
LABEL_26:
    v39 = (*(*a1 + 72))(a1, a3, a4);
LABEL_37:
    v46 = sub_29930D2A0((a1 + 4));
    *v46 = a3;
    *(v46 + 1) = a4;
    *(v46 + 2) = v23;
    *(v46 + 3) = v24;
    *(v46 + 4) = v15;
    *(v46 + 5) = v26;
    *(v46 + 6) = v29;
    *(v46 + 7) = v34;
    *(v46 + 8) = v39;
    *(v46 + 9) = v32;
    v47 = *(v5 + 8 * a2);

    sub_2992BFDD8(v47, v46);
  }
}

char *sub_29930D2A0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = &v4[-v2];
    if (0xCCCCCCCCCCCCCCCDLL * (&v4[-v2] >> 4) != v3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = 80 * *(a1 + 40);
  }

  v6 = malloc_type_malloc(v5, 0x106004000061B68uLL);
  v4 = v6;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = (v8 - *a1) >> 3;
    if ((v10 + 1) >> 61)
    {
      sub_299212A8C();
    }

    v11 = v7 - *a1;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      sub_29920B86C(a1, v13);
    }

    *(8 * v10) = v6;
    v9 = 8 * v10 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = (8 * v10 - v14);
    memcpy(v15, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(a1 + 8) = v9;
  *(a1 + 24) = v4;
LABEL_18:
  ++*(a1 + 48);
  *(a1 + 32) = v4 + 80;
  return v4;
}

void sub_29930D3DC(void *a1, uint64_t *a2, unint64_t a3)
{
  if (a3 == 1)
  {
    return;
  }

  v6 = (a1[1] + 8 * a3);
  v7 = (*(**a2 + 32))();
  v8 = (*(*a1 + 88))(a1, v6, a2, v7);
  if (!v8)
  {
    v15 = sub_2992BFA30(*v6, a2);
    if (!v7)
    {
      return;
    }

    v16 = v15;
    v17 = *(*a2 + 32);
    v18 = *(*a2 + 40);
    while (v17 != v18)
    {
      v19 = *v17++;
      sub_29930CE88(a1, a3, v16, *(v19 + 8), v19);
    }

    v20 = (v16 + 56);
    goto LABEL_22;
  }

  v9 = v8;
  v10 = *a2;
  v11 = *(v10 + 64);
  v12 = *(v8 + 64);
  if (v11 <= v12)
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = *(v10 + 64);
  }

  v14 = *(v10 + 24);
  if (v14 > *(v8 + 24))
  {
    *(v8 + 16) = *(v10 + 16);
    *(v8 + 24) = v14;
LABEL_13:
    *(v8 + 64) = v13;
    goto LABEL_14;
  }

  if (v12 < v11)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (v7)
  {
    v20 = (v8 + 56);
    v21 = *(v10 + 32);
    if ((*(v8 + 56) & 1) == 0)
    {
      v22 = *(v10 + 40);
      if (v21 != v22)
      {
        do
        {
          v23 = *v21++;
          sub_29930CE88(a1, a3, v9, *(v23 + 8), v23);
        }

        while (v21 != v22);
        v21 = *(v10 + 32);
      }
    }

    if (v21 != *(v10 + 40))
    {
LABEL_22:
      *v20 = 1;
    }
  }
}

void sub_29930D578(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v6 = (a1 + 136);
  }

  else
  {
    v6 = (*(a1 + 16) - 8);
  }

  v7 = *v6;
  v8 = *(v7 + 48);
  v9 = (v7 + 56);
  if (v8 != (v7 + 56))
  {
    v10 = 0;
    do
    {
      v11 = v8[4];
      v12 = sub_299261150(v11);
      if (v12)
      {
        v13 = v12;
        sub_299221A4C(a3, v11, v12, *(v11 + 56));
        CFRelease(v13);
        if (++v10 >= a2)
        {
          break;
        }
      }

      v14 = v8[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v8[2];
          v16 = *v15 == v8;
          v8 = v15;
        }

        while (!v16);
      }

      v8 = v15;
    }

    while (v15 != v9);
  }
}

void sub_29930D660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29930D67C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v14 = *MEMORY[0x29EDCA608];
  sub_2992FF104(v13, a6);
  sub_29930B88C(a1, a5, v13);
  sub_2992E55A4(v13);
  *a1 = &unk_2A1F6FBA8;
  *(a1 + 192) = a2;
  *(a1 + 200) = a3;
  if (a3)
  {
    v11 = *(a3 + 32);
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 208) = v11;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = a4;
  return a1;
}

void sub_29930D754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992E55A4(va);
  _Unwind_Resume(a1);
}

void *sub_29930D770(void *a1)
{
  *a1 = &unk_2A1F6FB30;
  sub_2992E55A4((a1 + 20));
  sub_29930C588(a1 + 17, 0);
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  sub_29930F2E8((a1 + 4));
  v5 = (a1 + 1);
  sub_29930F0F0(&v5);
  return a1;
}

void sub_29930D80C(void *a1, void *a2)
{
  (*(*a1 + 16))(a1);
  v4 = a2[1] - *a2;
  v5 = (v4 >> 1) + 1;
  v6 = a1[26];
  v7 = v5 - v6;
  if (v5 < v6)
  {
    v7 = 0;
  }

  if (v7 < v4 >> 1)
  {
    if (v6 < v5)
    {
      v5 = a1[26];
    }

    v8 = a1[28];
    v9 = v5 - 1;
    v10 = 2 * v7;
    do
    {
      v11 = *(*a2 + v10) + 1000;
      v12 = a1[29];
      if (v8 >= v12)
      {
        v13 = a1[27];
        v14 = v8 - v13;
        v15 = (v8 - v13) >> 2;
        v16 = v15 + 1;
        if ((v15 + 1) >> 62)
        {
          sub_299212A8C();
        }

        v17 = v12 - v13;
        if (v17 >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v18 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          sub_2992F86B0((a1 + 27), v18);
        }

        v19 = (v8 - v13) >> 2;
        v20 = (4 * v15);
        v21 = (4 * v15 - 4 * v19);
        *v20 = v11;
        v8 = v20 + 1;
        memcpy(v21, v13, v14);
        v22 = a1[27];
        a1[27] = v21;
        a1[28] = v8;
        a1[29] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v8++ = v11;
      }

      a1[28] = v8;
      v10 += 2;
      --v9;
    }

    while (v9);
  }
}